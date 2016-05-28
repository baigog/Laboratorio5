library ieee; 
use ieee.std_logic_1164.all;
use work.PAKETE.all;

entity Laboratorio5_TB is
end Laboratorio5_TB;

architecture tb of Laboratorio5_TB is
	
	component LABORATORIO5 is
	port(
		CLK			:	IN	STD_LOGIC;
		RESET			:	IN	STD_LOGIC;
		SWITCH		:	IN	STD_LOGIC;
		BOTONES		:	IN	STD_LOGIC_VECTOR(3 DOWNTO 0);
		FSEL			:	IN	STD_LOGIC_VECTOR(1 DOWNTO 0);
		
		RX_OUT		:	OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
	end component;
	
signal Clk, Switch	:	std_logic := '0';
signal Reset : std_logic := '1';
signal Botones : std_logic_vector(3 downto 0) := (others=> '0');
signal Fsel : std_logic_vector(1 downto 0) := (others=> '0');
signal Rx_out : std_logic_vector(7 downto 0);

begin
	
LAB5 : Laboratorio5 port map(Clk=>Clk,
											Reset=>Reset,
											Switch=>Switch,
											Botones=>Botones,
											Fsel=>Fsel,
											RX_Out=>RX_Out);

																
clk	<=	not(clk) after 10ns;

aplica_botones: process
begin
	wait until rising_edge(clk);
	Reset <= '0';
	wait until rising_edge(clk);
	Botones <= "1000";
	wait for 10us;
	Botones <= "0000";
	wait for 1000us;
	assert(false) report "FIN" severity failure;
end process;
end tb;