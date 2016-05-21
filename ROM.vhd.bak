library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.PAKETE.all;

entity ROM is
	port (
		clk :in std_logic;
		oe :in std_logic;
		address :in std_logic_vector(addr_length-1 downto 0);
		data_out:out std_logic_vector(data_length-1 downto 0)
	);
end ROM;
architecture beh of ROM is
	begin
	rom_proc : process (clk)
	begin
		if rising_edge(clk) then
		data_out <= mem(to_integer(unsigned(address)));
	end if;
	end process rom_proc;

end architecture beh;