library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.PAKETE.all;

ENTITY RS232_RX IS
	PORT(
		CLK:			IN	STD_LOGIC;
		RST:			IN	STD_LOGIC;
		TX:			IN	STD_LOGIC;
		FSEL:			IN	STD_LOGIC_VECTOR(1 DOWNTO 0);
		
		DATAOUT:		OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
END RS232_RX;

ARCHITECTURE BEH OF RS232_RX IS
SIGNAL PERR, SHIFT, DOK, PCHECK:	STD_LOGIC;
SIGNAL PBIT:	STD_LOGIC;
SIGNAL DATA_BUFF:	STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CLK115,CLK384,CLK96,CLK48,CLKBAUD:	STD_LOGIC;
BEGIN

PLL_115_384: PLL1	PORT MAP(	areset	=>	RST,
										inclk0	=>	CLK,
										c0			=>	CLK115,
										c1			=>	CLK384,
										locked	=>	OPEN);
PLL96_48: PLL2	PORT MAP(	areset	=>	RST,
									inclk0	=>	CLK,
									c0			=>	CLK96,
									c1			=>	CLK48,
									locked	=>	OPEN);

FREQ_SEL: MUX_4_1	PORT MAP(
									in0		=>	CLK115,
									in1		=>	CLK384,
									in2		=>	CLK96,
									in3		=>	CLK48,
									sel		=>	FSEL,
									out1		=>	CLKBAUD);
RX_FSM1: RS232_RX_FSM PORT MAP(	CLK=>CLKBAUD,
											RST=>RST,
											TX=>TX,
											PARITY_ERR=>PERR,
											SHIFT=>SHIFT,
											DATA_OK=>DOK);
					
SR1:	SHIFT_REGISTER_RX PORT MAP(	CLK=>CLKBAUD,
												RST=>RST,
												DATAIN=>TX,
												SHIFT=>SHIFT,
												PARITY_OUT=>PBIT,
												DATAOUT=>DATA_BUFF);
												

PCHECKER1:	Parity_checker PORT MAP(	data=>DATA_BUFF,
													checkbit=>PBIT,
													Rst=>RST,
													err=>PERR);
													
DBUFFER:	DATA_BUFFER	PORT MAP(	DATAIN	=>	DATA_BUFF,
											EN			=>	DOK,
											CLK		=>	CLKBAUD,
											DATAOUT	=>	DATAOUT);
				
END BEH;