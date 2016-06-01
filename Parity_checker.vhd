library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Lab5_Pack.all;

entity Parity_checker is
	port(
		data:			in		std_logic_vector(7 downto 0);
		checkbit:	in		std_logic;
		Rst:			in		std_logic;
		
		err:			out	std_logic
	);
end entity;

architecture beh of Parity_checker is

begin	
	
	Proceso: process(data,checkbit,Rst)
	begin
		if(Rst='1') then
			err<='1';
		else
			err <= not(Paridad_check(data,checkbit));
		end if;
	end process;	

end beh;