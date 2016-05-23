library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.PAKETE.all;

entity Mem_fsm is
	port(
		Clk			:	in std_logic;
		botones		:	in	std_logic_vector(3 downto 0);
		switch		:	in std_logic;  -- Llave que envia todos los mensajes
		Rst			:	in std_logic;
		RS_READY		:	in std_logic;	-- Entrada que indica que el RS esta disponible
		
		address		:	out	std_logic_vector(7 downto 0) ;-- direccion de memoria apuntada
		data_ready	:	out	std_logic;	-- Salida que indica que el dato esta listo
		RE				:	out	std_logic;	-- Read Enable
		busy			:	out	std_logic	-- Salida que indica si se esta en estado inicial
	);
end Mem_fsm;

architecture beh of Mem_fsm is
signal direccion: std_logic_vector(7 downto 0);
signal ultimo: std_logic_vector(7 downto 0);

type FSM_states is (IDLE, INIT0, INIT1, INIT2, INIT3, INIT4, ACTUAL, NEXT_DATA, ESPERA, LLAVE);
signal current_state,next_state:FSM_states;

begin
address <= direccion;
PROXIMO_ESTADO: process(current_state, botones, switch, direccion, ultimo, RS_READY)
begin
next_state <= ACTUAL;
	case current_state is
		when IDLE		=> 
			if (botones(0)='1') then
				next_state <= INIT0;
			elsif (botones(1)='1') then
				next_state <= INIT1;
			elsif (botones(2)='1') then
				next_state <= INIT2;
			elsif (botones(3)='1') then
				next_state <= INIT3;
			elsif (switch = '1') then
				next_state <= iniT4; 
			else next_state <= IDLE;
			end if;
		when INIT0		=> null;
		when INIT1		=> null;
		when INIT2		=> null;
		when INIT3		=> null;
		when INIT4		=> null;
		when ACTUAL		=> next_state <= NEXT_DATA;
		when NEXT_DATA	=> next_state <= ESPERA;
		when ESPERA		=> 
			if (RS_READY = '0') then
				next_state <= ESPERA;
			elsif (direccion/=ultimo) then
				next_state <= ACTUAL;
			else next_state <= LLAVE;
			end if;
		when LLAVE		=>
			if (switch='1') then
				next_state <= LLAVE;
			else next_state <=IDLE;
			end if;
		when others => next_state <= IDLE;
		end case;
end process;

ESTADO_ACTUAL: process(clk,rst)
begin
	if(Rst='1') then
		current_state<=IDLE;
	elsif(rising_edge(Clk)) then
		current_state<=next_state;
	end if;
end process;

Output: process(Clk, Rst)
begin
	if (Rst='1') then
		direccion <= Inicial0;
		data_ready <= '0';
		RE <= '0';
	elsif(rising_edge(Clk)) then
		case current_state is
			when IDLE =>
				direccion <= Inicial0;
				data_ready <= '0';
				RE <= '0';
				busy <= '0';
			when INIT0 =>
				direccion <= Inicial0;
				ultimo <= Inicial1;
				RE <= '1';
				busy <= '1';
			when INIT1 =>
				direccion <= Inicial1;
				ultimo <= Inicial2;
				RE <= '1';
				busy <= '1';
			when INIT2 =>
				direccion <= Inicial2;
				ultimo <= Inicial3;
				RE <= '1';
				busy <= '1';
			when INIT3 =>
				direccion <= Inicial3;
				ultimo <= Final3;
				RE <= '1';
				busy <= '1';
			when INIT4 =>
				direccion <= Inicial0;
				ultimo <= Final3;
				RE <= '1';
				busy <= '1';
			when ACTUAL =>
				RE <= '1';
				data_ready <= '1';
				busy <= '1';
			when NEXT_DATA =>
				direccion <= std_logic_vector(unsigned(direccion)+1);
				RE <= '1';
				busy <= '1';
			when ESPERA =>
				RE <= '1';
				busy <= '1';
			when others =>
				direccion <= Inicial0;
				data_ready <= '0';
				RE <= '0';
				busy <= '1';
			end case;
	end if;
end process;

end beh;