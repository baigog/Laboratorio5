library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--Divisor de frecuencias, permite salidas de (0.1Hz, 0.5Hz, 1Hz, 2Hz y 5Hz), con una entrada de reloj por defecto de 50MHz.
--Es posible especificar la frecuencia de entrada en caso contrario.

entity DF_HZ is
	generic
	(
		freq:	integer	:=	50000000
		
	);
	port(
		CLKin: 	in	std_logic;									--Reloj de entrada
		rst:		in	std_logic;									--Reset asincrónico
		SelFreq:	in	std_logic_vector(2 downto 0);			--Selector de frecuencia ("000" => 0.1Hz, "001" => 0.5Hz, "010" => 2Hz, "011" => 5Hz, "1xx" => 1Hz)
		
		CLKout: 		out std_logic;								--Reloj de salida
		LEDout: 		out std_logic;								--Salida para LED (puede ser utilizada como salida de reloj auxiliar)
		display1:	out std_logic_vector(6 downto 0);	--Salida 7 segmentos. Indicador de frecuencia de salida. Número más significativo
		display0:	out std_logic_vector(6 downto 0)		--Salida 7 segmentos. Indicador de frecuencia de salida. Número menos significativo
	
	);
end DF_HZ;

architecture beh of DF_HZ is

	function Log2( input:integer ) return integer is	--Función logaritmo base 2. Utilizada para determinar la cantidad mínima
																		--de bits para sintetizar todas las frecuencias.
		variable temp,log:integer;
	begin
		temp:=input;
		log:=0;
		while (temp /= 0) loop
		temp:=temp/2;
		log:=log+1;
   end loop;
   return log;
	end function log2;
	
	constant PS_01HZ: 	integer := freq*5-1;		--Constante prescaler de 0.1Hz
	constant PS_05HZ: 	integer := freq-1;			--Constante prescaler de 0.5Hz
	constant PS_1HZ: 		integer := freq/2-1;		--Constante prescaler de 1Hz
	constant PS_2HZ: 		integer := freq/4-1;		--Constante prescaler de 2Hz
	constant PS_5HZ: 		integer := freq/10-1;		--Constante prescaler de 5Hz
	constant PS_1MHZ: 	integer := freq/2000000-1;--Constante de 1MHz a fines de simulación
	constant PS_500KHZ: 	integer := freq/1000000-1;--Constante de 500KHz a fines de simulación
	constant PS_100KHZ: 	integer := freq/200000-1;	--Constante de 100KHz a fines de simulación
	constant PS_600HZ: 	integer := freq/600-1;		--Constante de 1KHz a fines de simulación
	constant PS_400HZ: 	integer := freq/400-1;		--Constante de 1KHz a fines de simulación
	constant PS_300HZ: 	integer := freq/300-1;		--Constante de 1KHz a fines de simulación
	constant nbits:		integer := Log2(PS_01HZ);
	signal prescaler,count:	unsigned(nbits downto 0);
	signal Clk_aux:		std_logic;
	
	component DEC_HEX_7SEG is
	port(
		in1	: in  std_logic_vector(3 downto 0);
		out1	: out std_logic_vector(6 downto 0)
		);
	end component;
	
	signal display: std_logic_vector(7 downto 0);
	
	
begin

freq_div: process (clkin,rst)
--Proceso de síntesis de clock de salida. Reset asincrónico y toggleo de salida.
begin
	if(rst='1') then
		Clk_aux <= '0';
		count <= (others => '0');
		elsif	rising_edge(Clkin) then
			if (count = prescaler) then
				count <= (others=>'0');
				Clk_aux <= not Clk_aux;
			else
				count <= count+"1";
			end if;
	end if;
end process freq_div;


sinc_entradas: process (SelFreq,clkin)
--Proceso de seteo de prescaler y actualización de 7 segmentos antes cambios de entrada.
begin
	if rising_edge(clkin) then
		case SelFreq is
			when "000" => 
				prescaler <= to_unsigned(PS_01HZ,nbits+1);
				display <= "00000001";
			when "001" =>
				prescaler <= to_unsigned(PS_05HZ,nbits+1);
				display <= "00000101";
			when "010" =>
				prescaler <= to_unsigned(PS_1HZ,nbits+1);
				display <= "00100000";
			when "011" =>
				prescaler <= to_unsigned(PS_2HZ,nbits+1);
				display <= "01010000";
			when others =>
				prescaler <= to_unsigned(PS_5HZ,nbits+1);
				display <= "00010000";
		end case;
	end if;
end process sinc_entradas;

clkout<=clk_aux;
LEDout<=clk_aux;

DEC1:DEC_HEX_7SEG port map(in1=>display(7 downto 4),out1=>display1);
DEC0:DEC_HEX_7SEG port map(in1=>display(3 downto 0),out1=>display0);

end beh;