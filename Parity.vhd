library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.PAKETE.all;

entity Parity is
	port(
		data	:	in std_logic_vector(7 downto 0);
		Rst	:	in std_logic;
		
		bit_parity	:	out	std_logic
	);
end entity;

architecture beh of Parity is

begin	
	Proceso: process(data,Rst)
	begin
		if(Rst='1') then
			bit_parity <= '0';
		else
			bit_parity <= Paridad(data);
		end if;
	end process;	

end beh;