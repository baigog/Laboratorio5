-- -------------------------------------------------------------------------------------
--
--                         Controlador de LCD
--
-- Autores: Gabriel Baigorri
--				Gabriel Fernadez
-- -------------------------------------------------------------------------------------
--
-- Descripcion:
-- --Controlador de Display LCD con interfaz HD44780.
--
--// WR		=> Envia al display un dato a ser impreso.
--// RWOUT, RS, LCD_ON,	=>	A conectar a RW de HD44780.
--// EN		=>	A conectar a Enable de HD44780.
--// CLR		=> Limpia el display.
--// DATAIN => BUS DE DATOS (8 BITS)
--// RST 	=> Reset
--
--EL SISTEMA DEBE SER RESETADO, LO QUE GENERA LA RUTINA DE INICIALIACIÓN AUTOMÁTICAMENTE
--CUANDO SE LLEGA AL ESTADO IDLE2, EL DISPOSITOVO ESTÁ LISTO PARA ESCRIBIR DATOS EN EL DISPLAY
--
--CHEQUEA BUSY FLAG (BF) ANTES DE MANDAR ESCRITURA DE COMANDOS Y DE DATOS
--RS	RW
--0	0	ESCRIBIR COMANDOS
--0	1	LEER COMANDOS	(LEER BF)
--1	0	ESCRIBIR EN DDRAM
--1	1	LEER EN DDRAM
--COMANDOS
--SETEO (0X38)
--ENTRY MODE (0X06)
--DISPLAY CTRL (0X0E)
--CLEAR (0X01

-- ---------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-------------------------------------------------------------------------------
-- Entity
-------------------------------------------------------------------------------

ENTITY LCD_CONTR IS
  PORT(
	CLK : 	IN STD_LOGIC;   
	DATAIN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	CLR : 	IN STD_LOGIC; 
	WR : 		IN STD_LOGIC;
	RST : 	IN STD_LOGIC;

	EN : 		OUT STD_LOGIC;  							--ENABLE 3.3V PIN_L4
	RWOUT : 	OUT STD_LOGIC;  						--WRITE=0, READ=1. 3.3V PIN_M1
	RS : 		OUT STD_LOGIC;  							--CMD=0, DATA=1. 3.3V PIN_M2
	LCD_ON : OUT STD_LOGIC;  						--3.3V PIN_L5
	--BL_ON : OUT STD_LOGIC;  						--BACKLIGHT 3.3V PIN_L6 (DE-115 NO TIENE BACKLIGHT)
	BUSY : 	OUT STD_LOGIC;  							--BUSY FLAG. PARA COMUNICACION CON OTROS MODULOS
	DATA : 	INOUT STD_LOGIC_VECTOR(7 DOWNTO 0)	--PINES: M5, M3, K2, K1, K7, L2, L1, L3
    );
END LCD_CONTR;


-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------

ARCHITECTURE BEH OF LCD_CONTR IS
  SIGNAL DATAOUT :	STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL RW : 			STD_LOGIC;
  SIGNAL CONT :		UNSIGNED(2 DOWNTO 0);

  TYPE FSM_STATES is (RESET, IDLE1, IDLE2, INITI, SETMODE, DISPLAYCTRL, CLEAR, DATAWRITE, DATAREAD, ENHIGHWR, ENLOWWR, ENHIGHRD, ENLOWRD);
  SIGNAL CS, NS : FSM_STATES;


BEGIN
  DATA <= DATAOUT WHEN (RW = '0') ELSE (OTHERS => 'Z');  --MANEJO DE
                                                         --TRI-STATE

  RWOUT <= RW;
  NEXT_STATE : PROCESS (CS, CLK, WR, CLR, DATA, CONT)
  BEGIN
    NS <= ENHIGHWR;
    CASE CS IS
      WHEN RESET => NS <= IDLE1;
      WHEN IDLE1 =>
        IF(CONT = "000") THEN  	--PRIMER PASO DE INICIALIZACION => CONT=000
          NS <= INITI;
        ELSIF(CONT = "001") THEN --SEGUNDO PASO => CONT = 001
          NS <= SETMODE;
        ELSIF(CONT = "010") THEN
          NS <= DISPLAYCTRL;  	--TERCER PASO	=> CONT = 010
        ELSE
          NS <= CLEAR;				--CUARTO PASO	=> CONT = 011
        END IF;
      WHEN INITI => NULL;
      WHEN SETMODE => NULL;
      WHEN DISPLAYCTRL => NULL;
      WHEN CLEAR => NULL;
      WHEN DATAWRITE => NULL;
      WHEN ENHIGHWR => NS <= ENLOWWR;
      WHEN ENLOWWR => NS <= DATAREAD;
      WHEN DATAREAD => NS <= ENHIGHRD;
      WHEN ENHIGHRD => NS <= ENLOWRD;
      WHEN ENLOWRD =>
        IF(DATA(7) = '1') THEN  --BUSY FLAG (BF). SI BF1 = 1 EL COMANDO AÚN ESTÁ PROCESANDOSE
          NS <= ENHIGHRD;
        ELSIF(CONT = "100") THEN
          NS <= IDLE2;  			--TERMINO INICIALIZACION. CONT<100
        ELSE
          NS <= IDLE1;  			--CONTINUA INICIALIZACION. CONT = 100
        END IF;
      WHEN IDLE2 => 					-- ESTADO INACTIVO LUEGO DE LA INICIALIZACIÓN
        IF (WR = '1') THEN
          NS <= DATAWRITE;
        ELSIF (CLR = '1') THEN
          NS <= CLEAR;
        ELSE
          NS <= IDLE2;
        END IF;
      WHEN OTHERS => NS <= RESET;
    END CASE;
  END PROCESS;
  
-------------------------------------------------------------------------------
  
  CURRENT_SATATE : PROCESS(CLK, RST)
  BEGIN
    IF(RST = '1') THEN
      CS <= RESET;
    ELSIF(RISING_EDGE(CLK)) THEN
      CS <= NS;
    END IF;
  END PROCESS;
  
-------------------------------------------------------------------------------
  
  OUTPUT : PROCESS(CLK, RST)
  BEGIN
    IF(RST = '1') THEN
      RW <= '0';
      EN <= '0';
      RS <= '0';
      RW <= '0';
      BUSY <= '1';
    ELSIF(RISING_EDGE(CLK)) THEN
      LCD_ON <= '1';
      BUSY <= '1';
      --BL_ON <= '0';	--NO SE IMPLEMENTÓ
      RW <= '0';
      EN <= '0';
      CASE CS IS
        WHEN RESET =>
          LCD_ON <= '0';
          CONT <= "000";
        WHEN IDLE1 =>
          RS <= '0';
        WHEN INITI =>
          DATAOUT <= X"38";		--2 DISPLAY LINES. 8 BIT INTERFACE. 5X7 FONT
          RS <= '0';
        WHEN SETMODE =>
          DATAOUT <= X"06";		--ENTRY MODE. INCREMENT AUTOMATICALLY. NO SHIFT
          RS <= '0';
        WHEN DISPLAYCTRL =>
          DATAOUT <= X"0E";		--TURN DISPLAY ON, CURSOR ON, NO BLINKING.
          RS <= '0';
        WHEN CLEAR =>
          DATAOUT <= X"01";		--CLEAR DISPLAY, SET CURSOR POSITION TO ZERO.
          RS <= '0';
        WHEN DATAWRITE =>			--DATA WRITE
          DATAOUT <= DATAIN;
          RS <= '1';
        WHEN DATAREAD =>			--SOLO PARA CHEKEAR BUSY FLAG.
          RW <= '1';
          RS <= '0';
        WHEN ENHIGHWR =>			--DATAOUT VARIA DEPENDIENDO 
          EN <= '1';					--DE LA OPERACION EN ESTOS
        WHEN ENLOWWR => NULL;		--ESTADOS
        WHEN ENHIGHRD =>			
          EN <= '1';
          RW <= '1';
        WHEN ENLOWRD =>
          RW <= '1';
          IF(CONT < "100") THEN
            CONT <= CONT+1;
          END IF;
        WHEN IDLE2 =>
          BUSY <= '0';
        WHEN OTHERS => NULL;
      END CASE;
    END IF;
  END PROCESS;
END BEH;

-------------------------------------------------------------------------------
