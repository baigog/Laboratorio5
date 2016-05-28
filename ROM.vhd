library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.PAKETE.all;

entity ROM is
	port (
		clk 		:in std_logic;
		--oe 		:in std_logic;
		address 	:in std_logic_vector(7 downto 0);
		data_out	:out std_logic_vector(7 downto 0)
	);
end ROM;
architecture beh of ROM is

	constant data_length : natural := 8;
	constant addr_length : natural := 8;
	constant mem_size : natural := 2**addr_length;
	subtype rom_word is std_logic_vector(data_length-1 downto 0);
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

begin
	
	
	rom_proc : process (clk)
	begin
		if (rising_edge(clk)) then
			data_out <= mem(to_integer(unsigned(address)));
		end if;
	end process rom_proc;

end architecture beh;