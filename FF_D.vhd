library ieee; 
use ieee.std_logic_1164.all;
--Modelo de Flip Flop D

entity FF_D is
	port
	(
		-- Input ports
		D		: in  std_logic;
		Clk	: in  std_logic;		--Reloj
		Set	: in	std_logic;		--Seteo asincrónico

		-- Output ports
		Q	: out std_logic
	);
end FF_D;

architecture flow of FF_D is
begin
	ff_d_clk: process (Clk, Set)
	begin
		if (Set='1') then				
				Q<='1';
			elsif (rising_edge(Clk)) then
				Q<=D;
		end if;
	end process;
end flow;
