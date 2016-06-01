library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.PAKETE.all;

ENTITY MEM_RS232 IS
	port(
		Clk			:	in std_logic;
		botones		:	in	std_logic_vector(3 downto 0);
		switch		:	in std_logic;  -- Llave que envia todos los mensajes
		Rst			:	in std_logic;
		
		ADDR_OUT		:	out	std_logic_vector(7 downto 0) ;-- direccion de memoria apuntada
		busy			:	out	std_logic;	-- Salida que indica si se esta en estado inicial
		SR_READY		:	IN		STD_LOGIC;
		SHIFT_LOAD	:	OUT	STD_LOGIC_VECTOR(1 DOWNTO 0);
		SS				:	OUT	STD_LOGIC;
		SEL			:	OUT	STD_LOGIC_VECTOR(1 DOWNTO 0)
		);
END ENTITY;

ARCHITECTURE BEH OF MEM_RS232 IS

constant Inicial0 : unsigned(7 downto 0) := x"00";
constant Inicial1 : unsigned(7 downto 0) := x"2F";
constant Inicial2 : unsigned(7 downto 0) := x"45";
constant Inicial3 : unsigned(7 downto 0) := x"5A";
constant Final3	: unsigned(7 downto 0) := x"65";

TYPE STATES IS (IDLE, INIT0, INIT1, INIT2, INIT3, INIT4, START, DATA, PARITY, STOP, LLAVE);
SIGNAL CS, NS: STATES;
SIGNAL ADDRESS, ULTIMO: UNSIGNED(7 downto 0);
SIGNAL FF_SET: STD_LOGIC;
SIGNAL BT:	STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN

FD: FOR I IN 0 TO 3 GENERATE
	FFD:	FF_D PORT MAP(D=>'0',CLK=>botones(i),SET=>FF_SET,Q=>BT(i));
END GENERATE FD; 

ADDR_OUT<=STD_LOGIC_VECTOR(ADDRESS);
NEXT_STATE: PROCESS (CS,botones, SR_READY, ADDRESS, switch)
BEGIN
	NS <= START;
	CASE CS IS
		WHEN IDLE	=>
			case BT is
					when "1110" =>	NS <= INIT0;
					when "1101" =>	NS <= INIT1;
					when "1011" =>	NS <= INIT2;
					when "0111" =>	NS <= INIT3;
					when others =>
						if (switch = '1') then
							NS <= INIT4; 
						else NS <= IDLE;
						end if;
				end case;
		when INIT0		=> null;
		when INIT1		=> null;
		when INIT2		=> null;
		when INIT3		=> null;
		when INIT4		=> null;
		WHEN START	=> NS	<=	DATA;
		WHEN DATA	=>
			IF	(SR_READY='1')	THEN
				NS	<=	PARITY;
			ELSE
				NS <=	DATA;
			END IF;
		WHEN PARITY	=>	NS	<=	STOP;
		WHEN STOP =>
			IF(ADDRESS=ULTIMO) THEN
				NS <=	LLAVE;
			ELSE
				NS <= START;
			END IF;
		when LLAVE =>
			if (switch='1') then
				NS <= LLAVE;
			else
				NS <= IDLE;
			end if;
		WHEN OTHERS	=>	NS	<=	IDLE;
	END CASE;
END PROCESS;

CURRENT_STATE: process(clk,rst)
begin
	if(Rst='1') then
		CS<=IDLE;
	elsif(rising_edge(Clk)) then
		CS<=NS;
	end if;
end process;

ASYNCH_OUTPUTS: PROCESS(CS, rst)
BEGIN
	IF (rst='1') then
	SEL<="00";
	SS <= '1';
	BUSY <= '0';
	SHIFT_LOAD <= "00";
	FF_SET<='1';
	else
	SEL<="00";
	SS <= '1';
	SHIFT_LOAD <= "00";
	BUSY <= '1';
	FF_SET<='0';
	CASE CS IS
		WHEN IDLE	=> BUSY <= '0';
		when INIT0 => FF_SET<='1';
		when INIT1 => FF_SET<='1';
		when INIT2 => FF_SET<='1';
		when INIT3 => FF_SET<='1';
		when INIT4 => FF_SET<='1';
		WHEN START	=> 
			SS <='0';
			SHIFT_LOAD <= "10";
		WHEN DATA	=>
			SEL <= "01";
			SHIFT_LOAD <= "01";
		WHEN PARITY	=>	
			SEL <="11";
		WHEN STOP => NULL;
		when LLAVE => null;
		WHEN OTHERS	=>	NULL;
	END CASE;
	end if;
end process;

synch_outputs: process(clk,CS)
begin
	if(rst='1') then
		ADDRESS <=	X"00";
	elsif rising_edge(clk) then
		CASE CS IS
			WHEN IDLE	=> NULL;
			when INIT0 =>
				ADDRESS <= Inicial0;
				ultimo <= Inicial1;
			when INIT1 =>
				ADDRESS <= Inicial1;
				ultimo <= Inicial2;
			when INIT2 =>
				ADDRESS <= Inicial2;
				ultimo <= Inicial3;
			when INIT3 =>
				ADDRESS <= Inicial3;
				ultimo <= Final3;
			when INIT4 =>
				ADDRESS <= Inicial0;
				ultimo <= Final3;
			WHEN START	=> null;
			WHEN DATA	=> null;
			WHEN PARITY	=>	address <= address + 1;
			WHEN STOP => NULL;
			when LLAVE => null;
			WHEN OTHERS	=>	NULL;
		END CASE;
	end if;
end process;

end beh;