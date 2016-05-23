library ieee; 
use ieee.std_logic_1164.all;
use work.PAKETE.all;

ENTITY LABORATORIO5 IS
	PORT(
		CLK			:	IN	STD_LOGIC;
		SWITCH		:	IN	STD_LOGIC;
		BOTONES		:	IN	STD_LOGIC_VECTOR(3 DOWNTO 0);
		FSEL			:	IN	STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END LABORATORIO5;

ARCHITECTURE BEH OF LABORATORIO5 IS

BEGIN

PLL_115_38: PLL1(	areset	=>	,
						inclk0	=>	,
						c0			=>	,
						c1			=>	,
						locked	=>	);
PLL96_48: PLL2(	areset	=>	,
						inclk0	=>	,
						c0			=>	,
						c1			=>	,
						locked	=>	);
FREQ_SEL: MUX_4_1(in0		=>	,
						in1		=>	,
						in2		=>	,
						in3		=>	,
						sel		=>	,
						out1		=>	);
MEMORIA:	ROM(		clk		=>	,
						oe			=>	,
						address	=>	,
						data_out	=>	);

PARIDAD:	PARITY(	data			=>	,
						Rst			=>	,
						bit_parity	=>	);

MEM_SM:	MEM_FSM(	CLK			=>	,
						botones		=>	,
						switch		=>	,
						Rst			=>	,
						RS_READY		=>	,
						address		=>	,
						data_ready	=>	,
						RE				=>	,
						busy)			=>	);
						
RS_232:	RS232_FSM(	DATA_READY,
							SR_DONE	=>	,
							CLK		=>	,
							RST		=>	,
							BUSY		=>	,
							SHIFT		=>	,
							SS			=>	,
							SEL		=>	);
DBUFFER:	DATA_BUFFER(	DATAIN	=>	,
								EN			=>	,
								CLK		=>	,
								DATAOUT	=>	);
								
SR:	SHIFT_REGISTER(	CLK			=>	,
								RST			=>	,
								DATAIN		=>	,
								SHIFT_LOAD	=>	,
								DATAOUT		=>	,
								READY			=>	);


OUT_MUX:	MUX_4_1(in0		=>	,
						in1		=>	,
						in2		=>	,
						in3		=>	,
						sel		=>	,
						out1		=>	);

END BEH;
