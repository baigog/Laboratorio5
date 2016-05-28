library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use work.PAKETE.all;

ENTITY RS232_FSM_TB IS
END RS232_FSM_TB;

ARCHITECTURE TB OF RS232_FSM_TB IS

SIGNAL DATA_READY:	STD_LOGIC:='0';
SIGNAL SR_DONE:	STD_LOGIC:='0';
SIGNAL CLK:	STD_LOGIC:='0';
SIGNAL RST:	STD_LOGIC:='1';
SIGNAL CONT:	INTEGER:=0;
SIGNAL SHIFT:	STD_LOGIC;
SIGNAL BUSY:	STD_LOGIC;
SIGNAL SS:	STD_LOGIC;
SIGNAL SEL:	STD_LOGIC_VECTOR(1 DOWNTO 0);

COMPONENT RS232_FSM IS
	PORT(
	DATA_READY: IN STD_LOGIC;
	SR_DONE:		IN	STD_LOGIC;
	CLK:			IN STD_LOGIC;
	RST:			IN	STD_LOGIC;
	
	BUSY:			OUT	STD_LOGIC;
	
	SHIFT:		OUT	STD_LOGIC;
	SS:			OUT	STD_LOGIC;
	SEL:			OUT	STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

BEGIN
RS1:	RS232_FSM PORT MAP(DATA_READY=>DATA_READY, SR_DONE=>SR_DONE, CLK=>CLK, RST=> RST, SHIFT=>SHIFT, SS=>SS, SEL=>SEL,BUSY=>BUSY);
CLK <= NOT(CLK) AFTER 10ns;
APLICA_ENTRADAS: PROCESS
	BEGIN
	WAIT UNTIL (FALLING_EDGE(CLK));
	RST<='0';
	DATA_READY<='1';
	WAIT UNTIL (FALLING_EDGE(CLK));
	DATA_READY<='0';
	WAIT UNTIL FALLING_EDGE(BUSY);
	WAIT UNTIL (FALLING_EDGE(CLK));
	assert(false) report "FIN" severity failure;
END PROCESS;

CUENTA_BITS: PROCESS (CLK,SHIFT,CONT)
BEGIN
	IF(RISING_EDGE(CLK) AND SHIFT='1') THEN
		CONT<=CONT+1;
		IF(CONT=7) THEN
			CONT<=0;
		END IF;
	END IF;
	IF(CONT=6) THEN 
			SR_DONE<='1';
	ELSE
			SR_DONE<='0';
	END IF;
END PROCESS;
	
END TB;