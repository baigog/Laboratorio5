library ieee; 
use ieee.std_logic_1164.all;
use work.PAKETE.all;

entity Mem_FSM_TB is
end Mem_FSM_TB;

architecture tb of Mem_FSM_TB is

component Mem_FSM is
	port(
		Clk			:	in std_logic;
		BT3			:	in	std_logic;	-- boton que envia mensaje 4
		BT2			:	in std_logic;  -- boton que envia mensaje 3
		BT1			:	in std_logic;  -- boton que envia mensaje 2
		BT0			:	in	std_logic;  -- boton que envia mensaje 1
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
signal address : std_logic_vector(7 downto 0);

begin

memo: Mem_FSM port map(clk=>clk,BT3=>BT3,BT2=>BT2,BT1=>BT1,BT0=>BT0,switch=>switch,Rst=>Rst,
								RS_READY=>RS_READY,address=>address,data_ready=>data_ready,RE=>RE,busy=>busy);

clk	<=	not(clk) after 10ns;

Aplica_entradas: process
begin
	RST<='1';
	wait until rising_edge(clk);
	RST<='0';
	wait until rising_edge(clk);
	BT3<='1';
	wait until rising_edge(clk);
	RS_READY<='1';
	BT3<='0';
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