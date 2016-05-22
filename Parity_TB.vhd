library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Parity_TB is
end Parity_TB;

architecture tb of Parity_TB is

	component Parity is
		port(
		data	:	in std_logic_vector(7 downto 0);
		Rst	:	in std_logic;
		
		bit_parity	:	out	std_logic
		);
	end component;
	
	signal Rst	:	std_logic := '0';
	signal data	:	std_logic_vector (7 downto 0) := (others=>'0');
	signal bit_parity	:	std_logic;
	
begin
	paridad: Parity port map(data=>data,Rst=>Rst,bit_parity=>bit_parity);
	
	Calcular_Paridad : process
	begin
	
		Rst	<= '1';
		wait for 10ns;
		Rst	<= '0';
		data	<= "00000001";
		wait for 10ns;
		Rst	<= '1';
		wait for 10ns;
		Rst	<= '0';
		wait for 10ns;
		data	<= "00000000";
		wait for 10ns;
		data	<= "00010000";
		wait for 10ns;
		data	<= "01010000";
		wait for 10ns;
		assert(false) report "FIN" severity failure;
		
	end process;
	

end tb;