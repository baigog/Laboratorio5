library ieee; 
use ieee.std_logic_1164.all;
use work.Lab5_Pack.all;

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

SIGNAL CLK115,CLK384,CLK96,CLK48,CLKBAUD	:	STD_LOGIC;
SIGNAL MEM_EN										:	STD_LOGIC;
SIGNAL ADDR_BUS									:	STD_LOGIC_VECTOR(addr_width-1 DOWNTO 0);
SIGNAL DATA_BUS									:	STD_LOGIC_VECTOR(data_width-1 DOWNTO 0);
SIGNAL BIT_PAR										:	STD_LOGIC;
SIGNAL BUSY_RS, DATA_READY, STARTSTOP		:	STD_LOGIC;
SIGNAL SR_READY, SHIFT, DATAOUT				:	STD_LOGIC;
SIGNAL SR_OP,OUTSEL								:	STD_LOGIC_VECTOR(1 DOWNTO 0);

BEGIN
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
										data_out	=>	DATA_BUS);

PARIDAD:	PARITY	PORT MAP(	data			=>	DATA_BUS,
										Rst			=>	RESET,
										bit_parity	=>	BIT_PAR);

FSM:	MEM_RS232 PORT MAP(		CLK			=>	CLKBAUD,
										botones		=>	BOTONES,
										switch		=>	SWITCH,
										Rst			=>	RESET,
										ADDR_OUT		=> ADDR_BUS,
										busy			=>	OPEN,
										SR_READY		=>	SR_READY,
										SHIFT_LOAD	=>	SR_OP,
										SS				=>	STARTSTOP,
										SEL			=>	OUTSEL);

								
SR:	SHIFT_REGISTER	PORT MAP(	CLK			=>	CLKBAUD,
											RST			=>	RESET,
											DATAIN		=>	DATA_BUS,
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
