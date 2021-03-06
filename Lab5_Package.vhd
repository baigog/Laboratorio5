library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package Lab5_Pack is
-------------------------------------------------------------------------------------------------------------
------------------------------------------CONSTANTES AUXIIARES-----------------------------------------------
-------------------------------------------------------------------------------------------------------------
	
	constant data_width : natural := 8;
	constant addr_width : natural := 8;
	 		
	constant Inicial0 : unsigned(data_width-1 downto 0) := x"00";
	constant Inicial1 : unsigned(data_width-1 downto 0) := x"2F";
	constant Inicial2 : unsigned(data_width-1 downto 0) := x"45";
	constant Inicial3 : unsigned(data_width-1 downto 0) := x"5A";
	constant Final3	: unsigned(data_width-1 downto 0) := x"65";
	
	constant mem_size : natural := 2**addr_width;
	subtype rom_word is std_logic_vector(data_width-1 downto 0);
	type mem_type is array (mem_size-1 downto 0) of rom_word;
	constant mem : mem_type :=
		(000 => x"4C", 001 => x"61", 002 => x"62", 003 => x"6F", 004 => x"72", 005 => x"61", 006 => x"74", 007 => x"6F", 
		008 => x"72", 009 => x"69", 010 => x"6F", 011 => x"3A", 012 => x"20", 013 => x"63", 014 => x"6F", 015 => x"6D", 
		016 => x"70", 017 => x"6C", 018 => x"65", 019 => x"74", 020 => x"61", 021 => x"64", 022 => x"6F", 023 => x"20", 
		024 => x"70", 025 => x"6F", 026 => x"72", 027 => x"20", 028 => x"47", 029 => x"61", 030 => x"62", 031 => x"72", 
		032 => x"69", 033 => x"65", 034 => x"6C", 035 => x"20", 036 => x"79", 037 => x"20", 038 => x"47", 039 => x"61", 
		040 => x"62", 041 => x"72", 042 => x"69", 043 => x"65", 044 => x"6C", 045 => x"0A", 046 => x"0D", 047 => x"43", 
		048 => x"75", 049 => x"72", 050 => x"73", 051 => x"6F", 052 => x"20", 053 => x"31", 054 => x"65", 055 => x"72", 
		056 => x"20", 057 => x"45", 058 => x"73", 059 => x"63", 060 => x"75", 061 => x"65", 062 => x"6C", 063 => x"61", 
		064 => x"20", 065 => x"53", 066 => x"45", 067 => x"0A", 068 => x"0D", 069 => x"41", 070 => x"67", 071 => x"75", 
		072 => x"61", 073 => x"6E", 074 => x"74", 075 => x"65", 076 => x"20", 077 => x"50", 078 => x"69", 079 => x"63", 
		080 => x"6F", 081 => x"20", 082 => x"4D", 083 => x"6F", 084 => x"6E", 085 => x"61", 086 => x"63", 087 => x"6F", 
		088 => x"0A", 089 => x"0D", 090 => x"4C", 091 => x"65", 092 => x"74", 093 => x"20", 094 => x"69", 095 => x"74", 
		096 => x"20", 097 => x"62", 098 => x"65", 099 => x"0A", 100 => x"0D", others => x"00");
		
		
	attribute romstyle : string;
	attribute romstyle of mem: constant is "M512";
	
	function Paridad (input:std_logic_vector(data_width-1 downto 0)) return std_logic;
	function Paridad_Check (input:std_logic_vector(data_width-1 downto 0); checkbit: std_logic) return std_logic;
	
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
		address :in std_logic_vector(addr_width-1 downto 0);
		data_out:out std_logic_vector(data_width-1 downto 0)
	);
end component;

COMPONENT MEM_RS232 IS
	port(
		Clk			:	in std_logic;
		botones		:	in	std_logic_vector(3 downto 0);
		switch		:	in std_logic;  -- Llave que envia todos los mensajes
		Rst			:	in std_logic;
		
		ADDR_OUT		:	out	std_logic_vector(addr_width-1 downto 0) ;-- direccion de memoria apuntada
		busy			:	out	std_logic;	-- Salida que indica si se esta en estado inicial
		SR_READY		:	IN		STD_LOGIC;
		SHIFT_LOAD	:	OUT	STD_LOGIC_VECTOR(1 DOWNTO 0);
		SS				:	OUT	STD_LOGIC;
		SEL			:	OUT	STD_LOGIC_VECTOR(1 DOWNTO 0)
		);
END COMPONENT;

	component Parity is
		port(
		data	:	in std_logic_vector(data_width-1 downto 0);
		Rst	:	in std_logic;
		
		bit_parity	:	out	std_logic
		);
	end component;


COMPONENT DATA_BUFFER IS
PORT(
	DATAIN:	IN		STD_LOGIC_VECTOR(data_width-1 DOWNTO 0);
	EN:		IN		STD_LOGIC;
	CLK:		IN		STD_LOGIC;
	
	DATAOUT:	OUT	STD_LOGIC_VECTOR(data_width-1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT SHIFT_REGISTER IS
PORT(
	CLK:				IN		STD_LOGIC;
	RST:				IN		STD_LOGIC;
	DATAIN:			IN		STD_LOGIC_VECTOR(data_width-1 DOWNTO 0);
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
	DATAOUT:			OUT	STD_LOGIC_VECTOR(data_width-1 DOWNTO 0)
);
END COMPONENT;

component Parity_checker is
	port(
		data:			in std_logic_vector(data_width-1 downto 0);
		checkbit:	in std_logic;
		Rst:			in std_logic;
		
		err:			out	std_logic
	);
end component;

component FF_D is
	port
	(
		D		: in  std_logic;
		Clk	: in  std_logic;		--Reloj
		Set	: in	std_logic;		--Seteo asincrónico

		-- Output ports
		Q	: out std_logic
	);
end component;

-------------------------------------------------------------------------------------------------------------
end package Lab5_Pack;
-------------------------------------------------------------------------------------------------------------

package body Lab5_Pack is

	function Paridad (input:std_logic_vector(data_width-1 downto 0)) return std_logic is
		
		variable bit_paridad: std_logic;
		
		begin
			bit_paridad := input(7) xor input(6) xor input(5) xor input(4) xor input(3) xor input(2) xor input(1) xor input(0);
		return bit_paridad;
		
	end function;

		function Paridad_Check (input:std_logic_vector(data_width-1 downto 0); checkbit: std_logic) return std_logic is
		
		variable check: std_logic;
		
		begin
			if(Paridad(input)=checkbit) then
				check := '1';
			else
				check := '0';
			end if;
		return check;
		
	end function;
end Lab5_Pack;