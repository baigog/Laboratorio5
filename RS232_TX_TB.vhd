library ieee; 
use ieee.std_logic_1164.all;
--use work.Lab5_Pack.all;

entity RS232_TX_TB is
end RS232_TX_TB;

architecture tb of RS232_TX_TB is
	
	component RS232_TX is
	port(
		CLK			:	IN	STD_LOGIC;
		RESET			:	IN	STD_LOGIC;
		SWITCH		:	IN	STD_LOGIC;
		BOTONES		:	IN	STD_LOGIC_VECTOR(3 DOWNTO 0);
		FSEL			:	IN	STD_LOGIC_VECTOR(1 DOWNTO 0);
		
		TX_OUT		:	OUT STD_LOGIC
	);
	end component;
	
signal Clk, Switch	:	std_logic 							:= '0';
signal Reset 			:	std_logic 							:= '1';
signal Botones 		:	std_logic_vector(3 downto 0)	:= (others=> '0');
signal Fsel 			:	std_logic_vector(1 downto 0)	:= (others=> '0');
signal Tx_out 			:	std_logic;

begin
	
Practica_TX : RS232_TX port map(Clk=>Clk,
											Reset=>Reset,
											Switch=>Switch,
											Botones=>Botones,
											Fsel=>Fsel,
											TX_Out=>TX_Out);

																
clk	<=	not(clk) after 10ns;

aplica_botones: process
begin
	wait until rising_edge(clk);
	Reset <= '0';
	wait until rising_edge(clk);
	Botones <= "1000";
	wait until falling_edge(Tx_Out);
	Botones <= "0000";
	assert(false) report "COMIENZA ENVIO DE DATOS" severity note;
	wait for 500us;
	assert(false) report "FIN" severity failure;
end process;
end tb;