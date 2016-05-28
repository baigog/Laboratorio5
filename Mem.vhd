library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package PAKETE is
	
	function Paridad (input:std_logic_vector(7 downto 0)) return std_logic;
	function Paridad_Check (input:std_logic_vector(7 downto 0); checkbit: std_logic) return std_logic;
	

	
-------------------------------------------------------------------------------------------------------------
------------------------------------------DECLARACIONES DE COMPONENTES---------------------------------------
-------------------------------------------------------------------------------------------------------------
	
component MUX_4_1 is
port
	(
		in0,in1,in2,in3	: in  std_logic;
		sel	: in	std_logic_vector(1 downto 0);
		out1	: out	std_logic
	);
end component;

COMPONENT PLL1 IS
	PORT
	(
		areset		: IN STD_LOGIC  := '0';
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC ;
		c1		: OUT STD_LOGIC ;
		locked		: OUT STD_LOGIC 
	);
END COMPONENT;
	
COMPONENT PLL2 IS
	PORT
	(
		areset		: IN STD_LOGIC  := '0';
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC ;
		c1		: OUT STD_LOGIC ;
		locked		: OUT STD_LOGIC 
	);
END COMPONENT;
	
component ROM is
	port (
		clk :in std_logic;
		address :in std_logic_vector(7 downto 0);
		data_out:out std_logic_vector(7 downto 0)
	);
end component;

component Mem_FSM is
	port(
		Clk			:	in std_logic;
		botones		:	in	std_logic_vector(3 downto 0);
		switch		:	in std_logic;
		Rst			:	in std_logic;
		RS_READY		:	in std_logic;
		
		address		:	out	std_logic_vector(7 downto 0) ;
		data_ready	:	out	std_logic;
		RE				:	out	std_logic;
		busy			:	out	std_logic
	);
end component;

	component Parity is
		port(
		data	:	in std_logic_vector(7 downto 0);
		Rst	:	in std_logic;
		
		bit_parity	:	out	std_logic
		);
	end component;

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

COMPONENT DATA_BUFFER IS
PORT(
	DATAIN:	IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
	EN:		IN		STD_LOGIC;
	CLK:		IN		STD_LOGIC;
	
	DATAOUT:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT SHIFT_REGISTER IS
PORT(
	CLK:				IN		STD_LOGIC;
	RST:				IN		STD_LOGIC;
	DATAIN:			IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
	SHIFT_LOAD:		IN		STD_LOGIC_VECTOR(1 DOWNTO 0);	--01: SHIFT	1X: LOAD	00: DO NOTHING
	DATAOUT:			OUT	STD_LOGIC;
	READY:			OUT	STD_LOGIC
);
END COMPONENT;

COMPONENT RS232_RX_FSM IS
	PORT(
		CLK:			IN	STD_LOGIC;
		RST:			IN	STD_LOGIC;
		TX:			IN	STD_LOGIC;
		PARITY_ERR:	IN	STD_LOGIC;
		
		SHIFT:			OUT	STD_LOGIC;
		DATA_OK:			OUT	STD_LOGIC
		);
END COMPONENT;

COMPONENT SHIFT_REGISTER_RX IS
PORT(
	CLK:				IN		STD_LOGIC;
	RST:				IN		STD_LOGIC;
	DATAIN:			IN		STD_LOGIC;
	SHIFT:			IN		STD_LOGIC;
	PARITY_OUT:		OUT		STD_LOGIC;
	DATAOUT:			OUT	STD_LOGIC_VECTOR(7 DOWNTO 0)
);
END COMPONENT;

component Parity_checker is
	port(
		data:			in std_logic_vector(7 downto 0);
		checkbit:	in std_logic;
		Rst:			in std_logic;
		
		err:			out	std_logic
	);
end component;

end package PAKETE;
-------------------------------------------------------------------------------------------------------------

package body PAKETE is

	function Paridad (input:std_logic_vector(7 downto 0)) return std_logic is
		
		variable bit_paridad: std_logic;
		
		begin
			bit_paridad := input(7) xor input(6) xor input(5) xor input(4) xor input(3) xor input(2) xor input(1) xor input(0);
		return bit_paridad;
		
	end function;

		function Paridad_Check (input:std_logic_vector(7 downto 0); checkbit: std_logic) return std_logic is
		
		variable check: std_logic;
		
		begin
			if(Paridad(input)=checkbit) then
				check := '1';
			else
				check := '0';
			end if;
		return check;
		
	end function;
end PAKETE;