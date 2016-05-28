library ieee; 
use ieee.std_logic_1164.all;
use work.PAKETE.all;

ENTITY RS232_TX IS
	PORT(
		CLK			:	IN	STD_LOGIC;
		RESET			:	IN	STD_LOGIC;
		SWITCH		:	IN	STD_LOGIC;
		BOTONES		:	IN	STD_LOGIC_VECTOR(3 DOWNTO 0);
		FSEL			:	IN	STD_LOGIC_VECTOR(1 DOWNTO 0);
		
		TX_OUT		:	OUT STD_LOGIC
	);
END RS232_TX;

ARCHITECTURE BEH OF RS232_TX IS

SIGNAL CLK115,CLK384,CLK96,CLK48,CLKBAUD:	STD_LOGIC;
SIGNAL MEM_EN:	STD_LOGIC;
SIGNAL ADDR_BUS, DATA_BUS1, DATA_BUS2:	STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL BIT_PAR:	STD_LOGIC;
SIGNAL BUSY_RS, DATA_READY, STARTSTOP:	STD_LOGIC;
SIGNAL SR_READY, SHIFT, DATAOUT: STD_LOGIC;
SIGNAL SR_OP,OUTSEL:	STD_LOGIC_VECTOR(1 DOWNTO 0);

BEGIN
SR_OP<=(DATA_READY, SHIFT);
PLL_115_384: PLL1	PORT MAP(	areset	=>	RESET,
										inclk0	=>	CLK,
										c0			=>	CLK115,
										c1			=>	CLK384,
										locked	=>	OPEN);
PLL96_48: PLL2	PORT MAP(	areset	=>	RESET,
									inclk0	=>	CLK,
									c0			=>	CLK96,
									c1			=>	CLK48,
									locked	=>	OPEN);
FREQ_SEL: MUX_4_1	PORT MAP(in0		=>	CLK115,
									in1		=>	CLK384,
									in2		=>	CLK96,
									in3		=>	CLK48,
									sel		=>	FSEL,
									out1		=>	CLKBAUD);
MEMORIA:	ROM	PORT MAP(		clk		=>	CLK,
										address	=>	ADDR_BUS,
										data_out	=>	DATA_BUS1);

PARIDAD:	PARITY	PORT MAP(	data			=>	DATA_BUS2,
										Rst			=>	RESET,
										bit_parity	=>	BIT_PAR);

MEM_SM:	MEM_FSM	PORT MAP(	CLK			=>	CLKBAUD,
										botones		=>	BOTONES,
										switch		=>	SWITCH,
										Rst			=>	RESET,
										RS_READY		=>	BUSY_RS,
										address		=>	ADDR_BUS,
										data_ready	=>	DATA_READY,
										RE				=>	MEM_EN,
										busy			=>	OPEN);
						
RS_232:	RS232_FSM	PORT MAP(	DATA_READY	=>	DATA_READY,
												SR_DONE	=>	SR_READY,
												CLK		=>	CLKBAUD,
												RST		=>	RESET,
												BUSY		=>	BUSY_RS,
												SHIFT		=>	SHIFT,
												SS			=>	STARTSTOP,
												SEL		=>	OUTSEL);
												
DBUFFER:	DATA_BUFFER	PORT MAP(	DATAIN	=>	DATA_BUS1,
											EN			=>	DATA_READY,
											CLK		=>	CLKBAUD,
											DATAOUT	=>	DATA_BUS2);
								
SR:	SHIFT_REGISTER	PORT MAP(	CLK			=>	CLKBAUD,
											RST			=>	RESET,
											DATAIN		=>	DATA_BUS1,
											SHIFT_LOAD	=>	SR_OP,
											DATAOUT		=>	DATAOUT,
											READY			=>	SR_READY);


OUT_MUX:	MUX_4_1	PORT MAP(in0		=>	STARTSTOP,
									in1		=>	DATAOUT,
									in2		=>	STARTSTOP,
									in3		=>	BIT_PAR,
									sel		=>	OUTSEL,
									out1		=>	TX_OUT);

END BEH;
