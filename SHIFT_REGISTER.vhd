ENTITY SHIFT_REGISTER IS
PORT(
	CLK:				IN		STD_LOGIC;
	DATAIN:			IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
	SHIFT_LOAD:		IN		STD_LOGIC;	--1: SHIFT	0: LOAD
	DATAOUT:			OUT	STD_LOGIC
);
END SHIFT_REGISTER

ARCHITECTURE BEH OF SHIFT_REGISTER IS
	

	
END BEH;