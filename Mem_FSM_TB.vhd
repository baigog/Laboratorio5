library ieee; 
use ieee.std_logic_1164.all;
use work.PAKETE.all;

entity Mem_FSM_TB is
end Mem_FSM_TB;

architecture tb of Mem_FSM_TB is

component Mem_FSM is
	port(
		Clk			:	in std_logic;
		botones		:	in	std_logic_vector(3 downto 0);
		switch		:	in std_logic;  -- Llave que envia todos los mensajes
		Rst			:	in std_logic;
		RS_READY		:	in std_logic;	-- Entrada que indica que el RS esta disponible
		
		address		:	out	std_logic_vector(7 downto 0) ;-- direccion de memoria apuntada
		data_ready	:	out	std_logic;	-- Salida que indica que el dato esta listo
		RE				:	out	std_logic;	-- Read Enable
		busy			:	out	std_logic
	);
end component;

signal clk,BT3,BT2,BT1,BT0,switch,Rst,RS_READY : std_logic :='0';
signal data_ready,RE,busy : std_logic;
signal address	: std_logic_vector(7 downto 0);
signal botones	:	std_logic_vector(3 downto 0);

constant Inicial0 : std_logic_vector(7 downto 0) := x"00";
constant Inicial1 : std_logic_vector(7 downto 0):= x"2F";
constant Inicial2 : std_logic_vector(7 downto 0) := x"45";
constant Inicial3 : std_logic_vector(7 downto 0) := x"5A";
constant Final3	: std_logic_vector(7 downto 0) := x"65";

begin

memo: Mem_FSM port map(clk=>clk,botones=>botones,switch=>switch,Rst=>Rst,
								RS_READY=>RS_READY,address=>address,data_ready=>data_ready,RE=>RE,busy=>busy);

clk	<=	not(clk) after 10ns;

Aplica_entradas: process
begin
	RST<='1';
	wait until rising_edge(clk);
	RST<='0';
	wait until rising_edge(clk);
	botones<="100";
	wait until rising_edge(clk);
	RS_READY<='1';
	botones<="000";
	wait until (address=Final3);
--	RS_READY<='0';
	wait until falling_edge(busy);
	switch<='1';
	wait until rising_edge(clk);
--	RS_READY<='1';
	wait until (address=Final3);
	assert(false) report "FIN" severity failure;
end process;
end tb;