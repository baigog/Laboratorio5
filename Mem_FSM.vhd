library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Lab5_Pack.all;

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

constant Inicial0 : std_logic_vector(7 downto 0) := x"00";
constant Inicial1 : std_logic_vector(7 downto 0):= x"2F";
constant Inicial2 : std_logic_vector(7 downto 0) := x"45";
constant Inicial3 : std_logic_vector(7 downto 0) := x"5A";
constant Final3	: std_logic_vector(7 downto 0) := x"65";
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
			case botones is
				when "0001" =>
					next_state <= INIT0;
				when "0010" =>
					next_state <= INIT1;
				when "0100" =>
					next_state <= INIT2;
				when "1000" =>
					next_state <= INIT3;
				when others =>
					if (switch = '1') then
						next_state <= iniT4; 
					else next_state <= IDLE;
					end if;
			end case;
		when INIT0		=> null;
		when INIT1		=> null;
		when INIT2		=> null;
		when INIT3		=> null;
		when INIT4		=> null;
		when ACTUAL		=> next_state <= NEXT_DATA;
		when NEXT_DATA	=> next_state <= ESPERA;
		when ESPERA		=> 
			if (RS_READY = '1') then
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

Output: process(Rst,Current_state)
begin
	if (Rst='1') then
		data_ready <= '0';
		RE <= '0';
		busy<='0';
	else
		data_ready <= '0';
		RE <= '0';
		busy <= '1';		
		case current_state is
			when IDLE =>
				busy <= '0';
			when INIT0 =>
				RE <= '1';
			when INIT1 =>
				RE <= '1';
			when INIT2 =>
				RE <= '1';
			when INIT3 =>
				RE <= '1';
			when INIT4 =>
				RE <= '1';
			when ACTUAL =>
				RE <= '1';
				data_ready <= '1';
			when NEXT_DATA =>
				RE <= '1';
			when ESPERA =>
				RE <= '1';
			when others => NULL;
			end case;
	end if;
end process;

synch_outputs: process(clk,current_state,rst)
begin
	if(rst='1') then
		direccion <=	X"00";
	elsif rising_edge(clk) then
		CASE current_state IS
			WHEN IDLE	=> NULL;
			when INIT0 =>
				direccion <= Inicial0;
				ultimo <= Inicial1;
			when INIT1 =>
				direccion <= Inicial1;
				ultimo <= Inicial2;
			when INIT2 =>
				direccion <= Inicial2;
				ultimo <= Inicial3;
			when INIT3 =>
				direccion <= Inicial3;
				ultimo <= Final3;
			when INIT4 =>
				direccion <= Inicial0;
				ultimo <= Final3;
			WHEN ACTUAL	=> null;
			WHEN NEXt_DATA	=> direccion <= std_logic_vector(unsigned(direccion)+1);
			WHEN ESPERA	=>	NULL;
			WHEN OTHERS	=>	NULL;
		END CASE;
	end if;
end process;

end beh;