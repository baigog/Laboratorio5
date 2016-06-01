library ieee; 
use ieee.std_logic_1164.all;
use work.Lab5_Pack.all;

ENTITY LABORATORIO5 IS
	PORT(
		CLK			:	IN	STD_LOGIC;
		RESET			:	IN	STD_LOGIC;
		SWITCH		:	IN	STD_LOGIC;
		BOTONES		:	IN	STD_LOGIC_VECTOR(3 DOWNTO 0);
		FSEL			:	IN	STD_LOGIC_VECTOR(1 DOWNTO 0);
		
		RX_OUT		:	OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END LABORATORIO5;

ARCHITECTURE BEH OF LABORATORIO5 IS

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
	
	COMPONENT RS232_RX IS
	PORT(
		CLK:			IN	STD_LOGIC;
		RST:			IN	STD_LOGIC;
		TX:			IN	STD_LOGIC;
		FSEL:			IN	STD_LOGIC_VECTOR(1 DOWNTO 0);
		
		DATAOUT:		OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
END COMPONENT;

SIGNAL CANAL:	STD_LOGIC;
begin
	
Practica_TX : RS232_TX port map(Clk=>Clk,
											Reset=>Reset,
											Switch=>Switch,
											Botones=>Botones,
											Fsel=>Fsel,
											TX_Out=>CANAL);

Practica_RX	:	RS232_RX 	PORT MAP(	CLK=>CLK,
											RST=>Reset,
											TX=>CANAL,
											FSEL=>Fsel,
											DATAOUT=>Rx_out);


END BEH;
