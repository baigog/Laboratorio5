-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "05/31/2016 23:15:35"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LABORATORIO5 IS
    PORT (
	CLK : IN std_logic;
	RESET : IN std_logic;
	SWITCH : IN std_logic;
	BOTONES : IN std_logic_vector(3 DOWNTO 0);
	FSEL : IN std_logic_vector(1 DOWNTO 0);
	RX_OUT : OUT std_logic_vector(7 DOWNTO 0)
	);
END LABORATORIO5;

-- Design Ports Information
-- RX_OUT[0]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_OUT[1]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_OUT[2]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_OUT[3]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_OUT[4]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_OUT[5]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_OUT[6]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_OUT[7]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FSEL[0]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FSEL[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWITCH	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTONES[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTONES[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTONES[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTONES[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LABORATORIO5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_SWITCH : std_logic;
SIGNAL ww_BOTONES : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_FSEL : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_RX_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Practica_TX|PLL_115_384|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Practica_TX|PLL_115_384|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Practica_TX|PLL96_48|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Practica_TX|PLL96_48|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Practica_TX|FREQ_SEL|Mux0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Practica_RX|FREQ_SEL|Mux0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \FSEL[1]~input_o\ : std_logic;
SIGNAL \FSEL[0]~input_o\ : std_logic;
SIGNAL \Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \Practica_RX|FREQ_SEL|Mux0~0_combout\ : std_logic;
SIGNAL \Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \Practica_RX|FREQ_SEL|Mux0~combout\ : std_logic;
SIGNAL \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\ : std_logic;
SIGNAL \Practica_TX|FREQ_SEL|Mux0~0_combout\ : std_logic;
SIGNAL \Practica_TX|FREQ_SEL|Mux0~combout\ : std_logic;
SIGNAL \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\ : std_logic;
SIGNAL \BOTONES[2]~input_o\ : std_logic;
SIGNAL \Practica_TX|FSM|FD:2:FFD|Q~feeder_combout\ : std_logic;
SIGNAL \BOTONES[1]~input_o\ : std_logic;
SIGNAL \Practica_TX|FSM|FD:1:FFD|Q~feeder_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|FD:1:FFD|Q~q\ : std_logic;
SIGNAL \BOTONES[0]~input_o\ : std_logic;
SIGNAL \Practica_TX|FSM|FD:0:FFD|Q~feeder_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|FD:0:FFD|Q~q\ : std_logic;
SIGNAL \SWITCH~input_o\ : std_logic;
SIGNAL \BOTONES[3]~input_o\ : std_logic;
SIGNAL \Practica_TX|FSM|FD:3:FFD|Q~feeder_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|FD:3:FFD|Q~q\ : std_logic;
SIGNAL \Practica_TX|FSM|Mux0~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Add0~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Add0~2_combout\ : std_logic;
SIGNAL \Practica_TX|SR|Mux9~0_combout\ : std_logic;
SIGNAL \Practica_TX|SR|CONT[1]~feeder_combout\ : std_logic;
SIGNAL \Practica_TX|SR|DATA[0]~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Selector2~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Selector2~1_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|CS.DATA~q\ : std_logic;
SIGNAL \Practica_TX|FSM|CS.STOP~q\ : std_logic;
SIGNAL \Practica_TX|FSM|WideOr5~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|WideOr5~combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Add0~1\ : std_logic;
SIGNAL \Practica_TX|FSM|Add0~3_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|NS.INIT0~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|NS.INIT3~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|CS.INIT3~q\ : std_logic;
SIGNAL \Practica_TX|FSM|Add0~5_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Add0~4\ : std_logic;
SIGNAL \Practica_TX|FSM|Add0~6_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Add0~8_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|NS.INIT4~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|CS.INIT4~q\ : std_logic;
SIGNAL \Practica_TX|FSM|NS.INIT0~1_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|CS.INIT0~feeder_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|CS.INIT0~q\ : std_logic;
SIGNAL \Practica_TX|FSM|Selector13~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Selector18~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Selector6~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Selector7~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Add0~7\ : std_logic;
SIGNAL \Practica_TX|FSM|Add0~9_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Add0~11_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Add0~10\ : std_logic;
SIGNAL \Practica_TX|FSM|Add0~12_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Selector7~1_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Add0~13\ : std_logic;
SIGNAL \Practica_TX|FSM|Add0~14_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Selector6~1_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Add0~15\ : std_logic;
SIGNAL \Practica_TX|FSM|Add0~16_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Selector5~2_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Selector5~3_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Add0~17\ : std_logic;
SIGNAL \Practica_TX|FSM|Add0~18_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Selector4~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Selector17~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Equal0~1_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Selector12~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Selector12~1_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Selector13~1_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|ULTIMO[5]~feeder_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Selector14~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Equal0~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Equal0~2_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Equal0~3_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Selector3~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|CS.LLAVE~q\ : std_logic;
SIGNAL \Practica_TX|FSM|Selector0~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|CS.IDLE~q\ : std_logic;
SIGNAL \Practica_TX|FSM|NS.INIT1~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|NS.INIT1~1_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|CS.INIT1~q\ : std_logic;
SIGNAL \Practica_TX|FSM|FF_SET~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|FD:2:FFD|Q~q\ : std_logic;
SIGNAL \Practica_TX|FSM|NS.INIT2~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|CS.INIT2~q\ : std_logic;
SIGNAL \Practica_TX|FSM|WideOr4~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|Selector1~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|CS.START~q\ : std_logic;
SIGNAL \Practica_TX|SR|Mux10~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|SS~0_combout\ : std_logic;
SIGNAL \Practica_TX|SR|Mux8~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|NS.PARITY~0_combout\ : std_logic;
SIGNAL \Practica_TX|FSM|CS.PARITY~q\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Practica_TX|SR|Mux1~0_combout\ : std_logic;
SIGNAL \Practica_TX|SR|Mux2~0_combout\ : std_logic;
SIGNAL \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Practica_TX|SR|Mux3~0_combout\ : std_logic;
SIGNAL \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Practica_TX|SR|Mux4~0_combout\ : std_logic;
SIGNAL \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Practica_TX|SR|Mux5~0_combout\ : std_logic;
SIGNAL \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Practica_TX|SR|Mux6~0_combout\ : std_logic;
SIGNAL \Practica_TX|SR|Mux7~0_combout\ : std_logic;
SIGNAL \Practica_TX|OUT_MUX|Mux0~0_combout\ : std_logic;
SIGNAL \Practica_TX|PARIDAD|bit_paridad~0_combout\ : std_logic;
SIGNAL \Practica_TX|PARIDAD|bit_paridad~1_combout\ : std_logic;
SIGNAL \Practica_TX|OUT_MUX|Mux0~1_combout\ : std_logic;
SIGNAL \Practica_RX|SR1|DATA[8]~feeder_combout\ : std_logic;
SIGNAL \Practica_RX|RX_FSM1|CONT~3_combout\ : std_logic;
SIGNAL \Practica_RX|RX_FSM1|CONT[0]~feeder_combout\ : std_logic;
SIGNAL \Practica_RX|RX_FSM1|CONTCTRL[0]~0_combout\ : std_logic;
SIGNAL \Practica_RX|RX_FSM1|CONT~0_combout\ : std_logic;
SIGNAL \Practica_RX|RX_FSM1|CONT~2_combout\ : std_logic;
SIGNAL \Practica_RX|RX_FSM1|CONT~1_combout\ : std_logic;
SIGNAL \Practica_RX|RX_FSM1|CONT[2]~feeder_combout\ : std_logic;
SIGNAL \Practica_RX|RX_FSM1|NS.PARITY~0_combout\ : std_logic;
SIGNAL \Practica_RX|RX_FSM1|CS.PARITY~q\ : std_logic;
SIGNAL \Practica_RX|RX_FSM1|Selector1~0_combout\ : std_logic;
SIGNAL \Practica_RX|RX_FSM1|CS.STOP~q\ : std_logic;
SIGNAL \Practica_RX|RX_FSM1|NS.IDLE~0_combout\ : std_logic;
SIGNAL \Practica_RX|RX_FSM1|CS.IDLE~feeder_combout\ : std_logic;
SIGNAL \Practica_RX|RX_FSM1|CS.IDLE~q\ : std_logic;
SIGNAL \Practica_RX|RX_FSM1|Selector0~0_combout\ : std_logic;
SIGNAL \Practica_RX|RX_FSM1|Selector0~1_combout\ : std_logic;
SIGNAL \Practica_RX|RX_FSM1|CS.DATA~q\ : std_logic;
SIGNAL \Practica_RX|RX_FSM1|SHIFT~0_combout\ : std_logic;
SIGNAL \Practica_RX|SR1|DATA[7]~feeder_combout\ : std_logic;
SIGNAL \Practica_RX|SR1|DATA[6]~feeder_combout\ : std_logic;
SIGNAL \Practica_RX|SR1|DATA[5]~feeder_combout\ : std_logic;
SIGNAL \Practica_RX|SR1|DATA[4]~feeder_combout\ : std_logic;
SIGNAL \Practica_RX|SR1|DATA[3]~feeder_combout\ : std_logic;
SIGNAL \Practica_RX|SR1|DATA[2]~feeder_combout\ : std_logic;
SIGNAL \Practica_RX|SR1|DATA[1]~feeder_combout\ : std_logic;
SIGNAL \Practica_RX|DBUFFER|DATAOUT[0]~feeder_combout\ : std_logic;
SIGNAL \Practica_RX|PCHECKER1|Paridad_Check~0_combout\ : std_logic;
SIGNAL \Practica_RX|PCHECKER1|Paridad_Check~1_combout\ : std_logic;
SIGNAL \Practica_RX|PCHECKER1|Paridad_Check~2_combout\ : std_logic;
SIGNAL \Practica_RX|RX_FSM1|DATA_OK~0_combout\ : std_logic;
SIGNAL \Practica_RX|DBUFFER|DATAOUT[1]~feeder_combout\ : std_logic;
SIGNAL \Practica_RX|DBUFFER|DATAOUT[2]~feeder_combout\ : std_logic;
SIGNAL \Practica_RX|DBUFFER|DATAOUT[3]~feeder_combout\ : std_logic;
SIGNAL \Practica_RX|DBUFFER|DATAOUT[4]~feeder_combout\ : std_logic;
SIGNAL \Practica_RX|DBUFFER|DATAOUT[5]~feeder_combout\ : std_logic;
SIGNAL \Practica_RX|DBUFFER|DATAOUT[6]~feeder_combout\ : std_logic;
SIGNAL \Practica_RX|DBUFFER|DATAOUT[7]~feeder_combout\ : std_logic;
SIGNAL \Practica_RX|DBUFFER|DATAOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Practica_RX|SR1|DATA\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Practica_TX|SR|DATA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Practica_TX|FSM|ULTIMO\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Practica_TX|SR|CONT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Practica_RX|RX_FSM1|CONT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Practica_TX|FSM|ADDRESS\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_BOTONES[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_BOTONES[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_BOTONES[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_BOTONES[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;
SIGNAL \Practica_TX|FSM|ALT_INV_FF_SET~0_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RESET <= RESET;
ww_SWITCH <= SWITCH;
ww_BOTONES <= BOTONES;
ww_FSEL <= FSEL;
RX_OUT <= ww_RX_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Practica_TX|FSM|ADDRESS\(7) & \Practica_TX|FSM|ADDRESS\(6) & \Practica_TX|FSM|ADDRESS\(5) & \Practica_TX|FSM|ADDRESS\(4) & \Practica_TX|FSM|ADDRESS\(3) & 
\Practica_TX|FSM|ADDRESS\(2) & \Practica_TX|FSM|ADDRESS\(1) & \Practica_TX|FSM|ADDRESS\(0));

\Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a1\ <= \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a2\ <= \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a3\ <= \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a4\ <= \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a5\ <= \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a6\ <= \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);

\Practica_TX|PLL_115_384|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLK~input_o\);

\Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk\(0) <= \Practica_TX|PLL_115_384|altpll_component|auto_generated|pll1_CLK_bus\(0);
\Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk\(1) <= \Practica_TX|PLL_115_384|altpll_component|auto_generated|pll1_CLK_bus\(1);
\Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk\(2) <= \Practica_TX|PLL_115_384|altpll_component|auto_generated|pll1_CLK_bus\(2);
\Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk\(3) <= \Practica_TX|PLL_115_384|altpll_component|auto_generated|pll1_CLK_bus\(3);
\Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk\(4) <= \Practica_TX|PLL_115_384|altpll_component|auto_generated|pll1_CLK_bus\(4);

\Practica_TX|PLL96_48|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLK~input_o\);

\Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk\(0) <= \Practica_TX|PLL96_48|altpll_component|auto_generated|pll1_CLK_bus\(0);
\Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk\(1) <= \Practica_TX|PLL96_48|altpll_component|auto_generated|pll1_CLK_bus\(1);
\Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk\(2) <= \Practica_TX|PLL96_48|altpll_component|auto_generated|pll1_CLK_bus\(2);
\Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk\(3) <= \Practica_TX|PLL96_48|altpll_component|auto_generated|pll1_CLK_bus\(3);
\Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk\(4) <= \Practica_TX|PLL96_48|altpll_component|auto_generated|pll1_CLK_bus\(4);

\Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk\(0));

\Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk\(1));

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\Practica_TX|FREQ_SEL|Mux0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Practica_TX|FREQ_SEL|Mux0~combout\);

\Practica_RX|FREQ_SEL|Mux0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Practica_RX|FREQ_SEL|Mux0~combout\);

\Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk\(1));

\Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk\(0));
\ALT_INV_BOTONES[3]~input_o\ <= NOT \BOTONES[3]~input_o\;
\ALT_INV_BOTONES[1]~input_o\ <= NOT \BOTONES[1]~input_o\;
\ALT_INV_BOTONES[2]~input_o\ <= NOT \BOTONES[2]~input_o\;
\ALT_INV_BOTONES[0]~input_o\ <= NOT \BOTONES[0]~input_o\;
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;
\Practica_TX|FSM|ALT_INV_FF_SET~0_combout\ <= NOT \Practica_TX|FSM|FF_SET~0_combout\;

-- Location: IOOBUF_X62_Y0_N16
\RX_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Practica_RX|DBUFFER|DATAOUT\(0),
	devoe => ww_devoe,
	o => ww_RX_OUT(0));

-- Location: IOOBUF_X60_Y0_N9
\RX_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Practica_RX|DBUFFER|DATAOUT\(1),
	devoe => ww_devoe,
	o => ww_RX_OUT(1));

-- Location: IOOBUF_X60_Y0_N16
\RX_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Practica_RX|DBUFFER|DATAOUT\(2),
	devoe => ww_devoe,
	o => ww_RX_OUT(2));

-- Location: IOOBUF_X62_Y0_N23
\RX_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Practica_RX|DBUFFER|DATAOUT\(3),
	devoe => ww_devoe,
	o => ww_RX_OUT(3));

-- Location: IOOBUF_X65_Y0_N16
\RX_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Practica_RX|DBUFFER|DATAOUT\(4),
	devoe => ww_devoe,
	o => ww_RX_OUT(4));

-- Location: IOOBUF_X60_Y0_N2
\RX_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Practica_RX|DBUFFER|DATAOUT\(5),
	devoe => ww_devoe,
	o => ww_RX_OUT(5));

-- Location: IOOBUF_X65_Y0_N23
\RX_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Practica_RX|DBUFFER|DATAOUT\(6),
	devoe => ww_devoe,
	o => ww_RX_OUT(6));

-- Location: IOOBUF_X60_Y0_N23
\RX_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Practica_RX|DBUFFER|DATAOUT\(7),
	devoe => ww_devoe,
	o => ww_RX_OUT(7));

-- Location: IOIBUF_X115_Y13_N8
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: PLL_3
\Practica_TX|PLL96_48|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 62,
	c0_initial => 1,
	c0_low => 63,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 250,
	c1_initial => 1,
	c1_low => 250,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "on",
	c2_high => 125,
	c2_initial => 1,
	c2_low => 125,
	c2_mode => "even",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 250,
	c3_initial => 1,
	c3_low => 250,
	c3_mode => "even",
	c3_ph => 0,
	c3_use_casc_in => "on",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c1",
	clk0_divide_by => 15625,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 3,
	clk0_phase_shift => "0",
	clk1_counter => "c3",
	clk1_divide_by => 31250,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 3,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \RESET~input_o\,
	fbin => \Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \Practica_TX|PLL96_48|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \Practica_TX|PLL96_48|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G14
\Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y14_N1
\FSEL[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FSEL(1),
	o => \FSEL[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\FSEL[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FSEL(0),
	o => \FSEL[0]~input_o\);

-- Location: PLL_1
\Practica_TX|PLL_115_384|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 13,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 63,
	c1_initial => 1,
	c1_low => 62,
	c1_mode => "odd",
	c1_ph => 0,
	c1_use_casc_in => "on",
	c2_high => 12,
	c2_initial => 1,
	c2_low => 13,
	c2_mode => "odd",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 188,
	c3_initial => 1,
	c3_low => 187,
	c3_mode => "odd",
	c3_ph => 0,
	c3_use_casc_in => "on",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c1",
	clk0_divide_by => 15625,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 36,
	clk0_phase_shift => "0",
	clk1_counter => "c3",
	clk1_divide_by => 15625,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 12,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 24,
	m => 36,
	m_initial => 1,
	m_ph => 0,
	n => 5,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 347,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \RESET~input_o\,
	fbin => \Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \Practica_TX|PLL_115_384|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \Practica_TX|PLL_115_384|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G4
\Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: CLKCTRL_G3
\Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: LCCOMB_X113_Y37_N16
\Practica_RX|FREQ_SEL|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|FREQ_SEL|Mux0~0_combout\ = (\FSEL[1]~input_o\ & (\FSEL[0]~input_o\)) # (!\FSEL[1]~input_o\ & ((\FSEL[0]~input_o\ & ((GLOBAL(\Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\)))) # (!\FSEL[0]~input_o\ & 
-- (GLOBAL(\Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSEL[1]~input_o\,
	datab => \FSEL[0]~input_o\,
	datac => \Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	datad => \Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	combout => \Practica_RX|FREQ_SEL|Mux0~0_combout\);

-- Location: CLKCTRL_G13
\Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: LCCOMB_X114_Y37_N4
\Practica_RX|FREQ_SEL|Mux0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|FREQ_SEL|Mux0~combout\ = LCELL((\FSEL[1]~input_o\ & ((\Practica_RX|FREQ_SEL|Mux0~0_combout\ & ((GLOBAL(\Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\)))) # (!\Practica_RX|FREQ_SEL|Mux0~0_combout\ & 
-- (GLOBAL(\Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\))))) # (!\FSEL[1]~input_o\ & (((\Practica_RX|FREQ_SEL|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	datab => \FSEL[1]~input_o\,
	datac => \Practica_RX|FREQ_SEL|Mux0~0_combout\,
	datad => \Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	combout => \Practica_RX|FREQ_SEL|Mux0~combout\);

-- Location: CLKCTRL_G5
\Practica_RX|FREQ_SEL|Mux0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\);

-- Location: LCCOMB_X113_Y37_N6
\Practica_TX|FREQ_SEL|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FREQ_SEL|Mux0~0_combout\ = (\FSEL[1]~input_o\ & (\FSEL[0]~input_o\)) # (!\FSEL[1]~input_o\ & ((\FSEL[0]~input_o\ & ((GLOBAL(\Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\)))) # (!\FSEL[0]~input_o\ & 
-- (GLOBAL(\Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSEL[1]~input_o\,
	datab => \FSEL[0]~input_o\,
	datac => \Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	datad => \Practica_TX|PLL_115_384|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	combout => \Practica_TX|FREQ_SEL|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y37_N2
\Practica_TX|FREQ_SEL|Mux0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FREQ_SEL|Mux0~combout\ = LCELL((\FSEL[1]~input_o\ & ((\Practica_TX|FREQ_SEL|Mux0~0_combout\ & ((GLOBAL(\Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\)))) # (!\Practica_TX|FREQ_SEL|Mux0~0_combout\ & 
-- (GLOBAL(\Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\))))) # (!\FSEL[1]~input_o\ & (\Practica_TX|FREQ_SEL|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSEL[1]~input_o\,
	datab => \Practica_TX|FREQ_SEL|Mux0~0_combout\,
	datac => \Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	datad => \Practica_TX|PLL96_48|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	combout => \Practica_TX|FREQ_SEL|Mux0~combout\);

-- Location: CLKCTRL_G8
\Practica_TX|FREQ_SEL|Mux0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y42_N15
\BOTONES[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTONES(2),
	o => \BOTONES[2]~input_o\);

-- Location: LCCOMB_X113_Y38_N24
\Practica_TX|FSM|FD:2:FFD|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|FD:2:FFD|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Practica_TX|FSM|FD:2:FFD|Q~feeder_combout\);

-- Location: IOIBUF_X115_Y53_N15
\BOTONES[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTONES(1),
	o => \BOTONES[1]~input_o\);

-- Location: LCCOMB_X113_Y38_N30
\Practica_TX|FSM|FD:1:FFD|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|FD:1:FFD|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Practica_TX|FSM|FD:1:FFD|Q~feeder_combout\);

-- Location: FF_X113_Y38_N31
\Practica_TX|FSM|FD:1:FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_BOTONES[1]~input_o\,
	d => \Practica_TX|FSM|FD:1:FFD|Q~feeder_combout\,
	clrn => \Practica_TX|FSM|ALT_INV_FF_SET~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|FD:1:FFD|Q~q\);

-- Location: IOIBUF_X115_Y40_N8
\BOTONES[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTONES(0),
	o => \BOTONES[0]~input_o\);

-- Location: LCCOMB_X111_Y38_N6
\Practica_TX|FSM|FD:0:FFD|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|FD:0:FFD|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Practica_TX|FSM|FD:0:FFD|Q~feeder_combout\);

-- Location: FF_X111_Y38_N7
\Practica_TX|FSM|FD:0:FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_BOTONES[0]~input_o\,
	d => \Practica_TX|FSM|FD:0:FFD|Q~feeder_combout\,
	clrn => \Practica_TX|FSM|ALT_INV_FF_SET~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|FD:0:FFD|Q~q\);

-- Location: IOIBUF_X115_Y17_N1
\SWITCH~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWITCH,
	o => \SWITCH~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\BOTONES[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTONES(3),
	o => \BOTONES[3]~input_o\);

-- Location: LCCOMB_X112_Y38_N14
\Practica_TX|FSM|FD:3:FFD|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|FD:3:FFD|Q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Practica_TX|FSM|FD:3:FFD|Q~feeder_combout\);

-- Location: FF_X112_Y38_N15
\Practica_TX|FSM|FD:3:FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_BOTONES[3]~input_o\,
	d => \Practica_TX|FSM|FD:3:FFD|Q~feeder_combout\,
	clrn => \Practica_TX|FSM|ALT_INV_FF_SET~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|FD:3:FFD|Q~q\);

-- Location: LCCOMB_X112_Y38_N4
\Practica_TX|FSM|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Mux0~0_combout\ = (\Practica_TX|FSM|FD:1:FFD|Q~q\ & (!\Practica_TX|FSM|FD:3:FFD|Q~q\ & (!\Practica_TX|FSM|FD:0:FFD|Q~q\ & !\Practica_TX|FSM|FD:2:FFD|Q~q\))) # (!\Practica_TX|FSM|FD:1:FFD|Q~q\ & ((\Practica_TX|FSM|FD:3:FFD|Q~q\ & 
-- (!\Practica_TX|FSM|FD:0:FFD|Q~q\ & !\Practica_TX|FSM|FD:2:FFD|Q~q\)) # (!\Practica_TX|FSM|FD:3:FFD|Q~q\ & (\Practica_TX|FSM|FD:0:FFD|Q~q\ $ (\Practica_TX|FSM|FD:2:FFD|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|FD:1:FFD|Q~q\,
	datab => \Practica_TX|FSM|FD:3:FFD|Q~q\,
	datac => \Practica_TX|FSM|FD:0:FFD|Q~q\,
	datad => \Practica_TX|FSM|FD:2:FFD|Q~q\,
	combout => \Practica_TX|FSM|Mux0~0_combout\);

-- Location: LCCOMB_X65_Y7_N8
\Practica_TX|FSM|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Add0~0_combout\ = \Practica_TX|FSM|ADDRESS\(0) $ (VCC)
-- \Practica_TX|FSM|Add0~1\ = CARRY(\Practica_TX|FSM|ADDRESS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Practica_TX|FSM|ADDRESS\(0),
	datad => VCC,
	combout => \Practica_TX|FSM|Add0~0_combout\,
	cout => \Practica_TX|FSM|Add0~1\);

-- Location: LCCOMB_X65_Y7_N2
\Practica_TX|FSM|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Add0~2_combout\ = (\Practica_TX|FSM|CS.PARITY~q\ & (\Practica_TX|FSM|Add0~0_combout\)) # (!\Practica_TX|FSM|CS.PARITY~q\ & (((\Practica_TX|FSM|CS.INIT1~q\) # (\Practica_TX|FSM|CS.INIT2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|Add0~0_combout\,
	datab => \Practica_TX|FSM|CS.INIT1~q\,
	datac => \Practica_TX|FSM|CS.INIT2~q\,
	datad => \Practica_TX|FSM|CS.PARITY~q\,
	combout => \Practica_TX|FSM|Add0~2_combout\);

-- Location: LCCOMB_X67_Y7_N28
\Practica_TX|SR|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|SR|Mux9~0_combout\ = (\Practica_TX|FSM|CS.START~q\ & (\RESET~input_o\ & (\Practica_TX|SR|CONT\(0) $ (\Practica_TX|SR|CONT\(1))))) # (!\Practica_TX|FSM|CS.START~q\ & (\Practica_TX|SR|CONT\(0) $ ((\Practica_TX|SR|CONT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|CS.START~q\,
	datab => \Practica_TX|SR|CONT\(0),
	datac => \Practica_TX|SR|CONT\(1),
	datad => \RESET~input_o\,
	combout => \Practica_TX|SR|Mux9~0_combout\);

-- Location: LCCOMB_X67_Y7_N12
\Practica_TX|SR|CONT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|SR|CONT[1]~feeder_combout\ = \Practica_TX|SR|Mux9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Practica_TX|SR|Mux9~0_combout\,
	combout => \Practica_TX|SR|CONT[1]~feeder_combout\);

-- Location: LCCOMB_X67_Y7_N16
\Practica_TX|SR|DATA[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|SR|DATA[0]~0_combout\ = (!\RESET~input_o\ & ((\Practica_TX|FSM|CS.START~q\) # (\Practica_TX|FSM|CS.DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|CS.START~q\,
	datac => \Practica_TX|FSM|CS.DATA~q\,
	datad => \RESET~input_o\,
	combout => \Practica_TX|SR|DATA[0]~0_combout\);

-- Location: FF_X67_Y7_N13
\Practica_TX|SR|CONT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_TX|SR|CONT[1]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \Practica_TX|SR|DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|SR|CONT\(1));

-- Location: LCCOMB_X67_Y7_N4
\Practica_TX|FSM|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Selector2~0_combout\ = (\Practica_TX|FSM|CS.DATA~q\ & (((!\Practica_TX|SR|CONT\(1)) # (!\Practica_TX|SR|CONT\(0))) # (!\Practica_TX|SR|CONT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|SR|CONT\(2),
	datab => \Practica_TX|SR|CONT\(0),
	datac => \Practica_TX|FSM|CS.DATA~q\,
	datad => \Practica_TX|SR|CONT\(1),
	combout => \Practica_TX|FSM|Selector2~0_combout\);

-- Location: LCCOMB_X67_Y7_N6
\Practica_TX|FSM|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Selector2~1_combout\ = (\Practica_TX|FSM|CS.START~q\) # (\Practica_TX|FSM|Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|CS.START~q\,
	datad => \Practica_TX|FSM|Selector2~0_combout\,
	combout => \Practica_TX|FSM|Selector2~1_combout\);

-- Location: FF_X67_Y7_N5
\Practica_TX|FSM|CS.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|FSM|Selector2~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|CS.DATA~q\);

-- Location: FF_X66_Y7_N9
\Practica_TX|FSM|CS.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|FSM|CS.PARITY~q\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|CS.STOP~q\);

-- Location: LCCOMB_X66_Y7_N8
\Practica_TX|FSM|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|WideOr5~0_combout\ = (\Practica_TX|FSM|CS.DATA~q\) # ((\Practica_TX|FSM|CS.START~q\) # ((\Practica_TX|FSM|CS.STOP~q\) # (!\Practica_TX|FSM|CS.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|CS.DATA~q\,
	datab => \Practica_TX|FSM|CS.START~q\,
	datac => \Practica_TX|FSM|CS.STOP~q\,
	datad => \Practica_TX|FSM|CS.IDLE~q\,
	combout => \Practica_TX|FSM|WideOr5~0_combout\);

-- Location: LCCOMB_X66_Y7_N12
\Practica_TX|FSM|WideOr5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|WideOr5~combout\ = (!\Practica_TX|FSM|WideOr5~0_combout\ & !\Practica_TX|FSM|CS.LLAVE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Practica_TX|FSM|WideOr5~0_combout\,
	datac => \Practica_TX|FSM|CS.LLAVE~q\,
	combout => \Practica_TX|FSM|WideOr5~combout\);

-- Location: FF_X65_Y7_N29
\Practica_TX|FSM|ADDRESS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|FSM|Add0~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	ena => \Practica_TX|FSM|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|ADDRESS\(0));

-- Location: LCCOMB_X65_Y7_N10
\Practica_TX|FSM|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Add0~3_combout\ = (\Practica_TX|FSM|ADDRESS\(1) & (!\Practica_TX|FSM|Add0~1\)) # (!\Practica_TX|FSM|ADDRESS\(1) & ((\Practica_TX|FSM|Add0~1\) # (GND)))
-- \Practica_TX|FSM|Add0~4\ = CARRY((!\Practica_TX|FSM|Add0~1\) # (!\Practica_TX|FSM|ADDRESS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Practica_TX|FSM|ADDRESS\(1),
	datad => VCC,
	cin => \Practica_TX|FSM|Add0~1\,
	combout => \Practica_TX|FSM|Add0~3_combout\,
	cout => \Practica_TX|FSM|Add0~4\);

-- Location: LCCOMB_X112_Y38_N26
\Practica_TX|FSM|NS.INIT0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|NS.INIT0~0_combout\ = (!\Practica_TX|FSM|CS.IDLE~q\ & (!\Practica_TX|FSM|FD:2:FFD|Q~q\ & !\Practica_TX|FSM|FD:1:FFD|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|CS.IDLE~q\,
	datab => \Practica_TX|FSM|FD:2:FFD|Q~q\,
	datad => \Practica_TX|FSM|FD:1:FFD|Q~q\,
	combout => \Practica_TX|FSM|NS.INIT0~0_combout\);

-- Location: LCCOMB_X112_Y38_N18
\Practica_TX|FSM|NS.INIT3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|NS.INIT3~0_combout\ = (\Practica_TX|FSM|FD:3:FFD|Q~q\ & (!\Practica_TX|FSM|FD:0:FFD|Q~q\ & \Practica_TX|FSM|NS.INIT0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|FD:3:FFD|Q~q\,
	datab => \Practica_TX|FSM|FD:0:FFD|Q~q\,
	datac => \Practica_TX|FSM|NS.INIT0~0_combout\,
	combout => \Practica_TX|FSM|NS.INIT3~0_combout\);

-- Location: FF_X112_Y38_N23
\Practica_TX|FSM|CS.INIT3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|FSM|NS.INIT3~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|CS.INIT3~q\);

-- Location: LCCOMB_X65_Y7_N4
\Practica_TX|FSM|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Add0~5_combout\ = (\Practica_TX|FSM|CS.PARITY~q\ & (\Practica_TX|FSM|Add0~3_combout\)) # (!\Practica_TX|FSM|CS.PARITY~q\ & (((\Practica_TX|FSM|CS.INIT1~q\) # (\Practica_TX|FSM|CS.INIT3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|Add0~3_combout\,
	datab => \Practica_TX|FSM|CS.INIT1~q\,
	datac => \Practica_TX|FSM|CS.INIT3~q\,
	datad => \Practica_TX|FSM|CS.PARITY~q\,
	combout => \Practica_TX|FSM|Add0~5_combout\);

-- Location: FF_X65_Y7_N11
\Practica_TX|FSM|ADDRESS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|FSM|Add0~5_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	ena => \Practica_TX|FSM|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|ADDRESS\(1));

-- Location: LCCOMB_X65_Y7_N12
\Practica_TX|FSM|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Add0~6_combout\ = (\Practica_TX|FSM|ADDRESS\(2) & (\Practica_TX|FSM|Add0~4\ $ (GND))) # (!\Practica_TX|FSM|ADDRESS\(2) & (!\Practica_TX|FSM|Add0~4\ & VCC))
-- \Practica_TX|FSM|Add0~7\ = CARRY((\Practica_TX|FSM|ADDRESS\(2) & !\Practica_TX|FSM|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|ADDRESS\(2),
	datad => VCC,
	cin => \Practica_TX|FSM|Add0~4\,
	combout => \Practica_TX|FSM|Add0~6_combout\,
	cout => \Practica_TX|FSM|Add0~7\);

-- Location: LCCOMB_X65_Y7_N30
\Practica_TX|FSM|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Add0~8_combout\ = (\Practica_TX|FSM|CS.PARITY~q\ & (\Practica_TX|FSM|Add0~6_combout\)) # (!\Practica_TX|FSM|CS.PARITY~q\ & (((\Practica_TX|FSM|CS.INIT1~q\) # (\Practica_TX|FSM|CS.INIT2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|Add0~6_combout\,
	datab => \Practica_TX|FSM|CS.INIT1~q\,
	datac => \Practica_TX|FSM|CS.INIT2~q\,
	datad => \Practica_TX|FSM|CS.PARITY~q\,
	combout => \Practica_TX|FSM|Add0~8_combout\);

-- Location: FF_X65_Y7_N13
\Practica_TX|FSM|ADDRESS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|FSM|Add0~8_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	ena => \Practica_TX|FSM|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|ADDRESS\(2));

-- Location: LCCOMB_X112_Y38_N30
\Practica_TX|FSM|NS.INIT4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|NS.INIT4~0_combout\ = (!\Practica_TX|FSM|CS.IDLE~q\ & (!\Practica_TX|FSM|Mux0~0_combout\ & \SWITCH~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Practica_TX|FSM|CS.IDLE~q\,
	datac => \Practica_TX|FSM|Mux0~0_combout\,
	datad => \SWITCH~input_o\,
	combout => \Practica_TX|FSM|NS.INIT4~0_combout\);

-- Location: FF_X112_Y38_N9
\Practica_TX|FSM|CS.INIT4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|FSM|NS.INIT4~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|CS.INIT4~q\);

-- Location: LCCOMB_X112_Y38_N16
\Practica_TX|FSM|NS.INIT0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|NS.INIT0~1_combout\ = (!\Practica_TX|FSM|FD:3:FFD|Q~q\ & (\Practica_TX|FSM|NS.INIT0~0_combout\ & \Practica_TX|FSM|FD:0:FFD|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|FD:3:FFD|Q~q\,
	datac => \Practica_TX|FSM|NS.INIT0~0_combout\,
	datad => \Practica_TX|FSM|FD:0:FFD|Q~q\,
	combout => \Practica_TX|FSM|NS.INIT0~1_combout\);

-- Location: LCCOMB_X112_Y38_N0
\Practica_TX|FSM|CS.INIT0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|CS.INIT0~feeder_combout\ = \Practica_TX|FSM|NS.INIT0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Practica_TX|FSM|NS.INIT0~1_combout\,
	combout => \Practica_TX|FSM|CS.INIT0~feeder_combout\);

-- Location: FF_X112_Y38_N1
\Practica_TX|FSM|CS.INIT0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_TX|FSM|CS.INIT0~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|CS.INIT0~q\);

-- Location: LCCOMB_X112_Y38_N2
\Practica_TX|FSM|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Selector13~0_combout\ = (!\Practica_TX|FSM|CS.INIT3~q\ & (!\Practica_TX|FSM|CS.INIT4~q\ & !\Practica_TX|FSM|CS.INIT0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|CS.INIT3~q\,
	datac => \Practica_TX|FSM|CS.INIT4~q\,
	datad => \Practica_TX|FSM|CS.INIT0~q\,
	combout => \Practica_TX|FSM|Selector13~0_combout\);

-- Location: LCCOMB_X66_Y7_N0
\Practica_TX|FSM|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Selector18~0_combout\ = ((\Practica_TX|FSM|CS.INIT1~q\) # ((!\Practica_TX|FSM|CS.INIT2~q\ & \Practica_TX|FSM|ULTIMO\(0)))) # (!\Practica_TX|FSM|Selector13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|CS.INIT2~q\,
	datab => \Practica_TX|FSM|ULTIMO\(0),
	datac => \Practica_TX|FSM|Selector13~0_combout\,
	datad => \Practica_TX|FSM|CS.INIT1~q\,
	combout => \Practica_TX|FSM|Selector18~0_combout\);

-- Location: FF_X66_Y7_N23
\Practica_TX|FSM|ULTIMO[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|FSM|Selector18~0_combout\,
	sload => VCC,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|ULTIMO\(0));

-- Location: LCCOMB_X66_Y7_N6
\Practica_TX|FSM|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Selector6~0_combout\ = (\Practica_TX|FSM|ADDRESS\(5) & ((\Practica_TX|FSM|WideOr5~0_combout\) # (\Practica_TX|FSM|CS.LLAVE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Practica_TX|FSM|WideOr5~0_combout\,
	datac => \Practica_TX|FSM|ADDRESS\(5),
	datad => \Practica_TX|FSM|CS.LLAVE~q\,
	combout => \Practica_TX|FSM|Selector6~0_combout\);

-- Location: LCCOMB_X66_Y7_N4
\Practica_TX|FSM|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Selector7~0_combout\ = (\Practica_TX|FSM|ADDRESS\(4) & ((\Practica_TX|FSM|CS.LLAVE~q\) # (\Practica_TX|FSM|WideOr5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|CS.LLAVE~q\,
	datac => \Practica_TX|FSM|WideOr5~0_combout\,
	datad => \Practica_TX|FSM|ADDRESS\(4),
	combout => \Practica_TX|FSM|Selector7~0_combout\);

-- Location: LCCOMB_X65_Y7_N14
\Practica_TX|FSM|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Add0~9_combout\ = (\Practica_TX|FSM|ADDRESS\(3) & (!\Practica_TX|FSM|Add0~7\)) # (!\Practica_TX|FSM|ADDRESS\(3) & ((\Practica_TX|FSM|Add0~7\) # (GND)))
-- \Practica_TX|FSM|Add0~10\ = CARRY((!\Practica_TX|FSM|Add0~7\) # (!\Practica_TX|FSM|ADDRESS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|ADDRESS\(3),
	datad => VCC,
	cin => \Practica_TX|FSM|Add0~7\,
	combout => \Practica_TX|FSM|Add0~9_combout\,
	cout => \Practica_TX|FSM|Add0~10\);

-- Location: LCCOMB_X65_Y7_N24
\Practica_TX|FSM|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Add0~11_combout\ = (\Practica_TX|FSM|CS.PARITY~q\ & (\Practica_TX|FSM|Add0~9_combout\)) # (!\Practica_TX|FSM|CS.PARITY~q\ & (((\Practica_TX|FSM|CS.INIT3~q\) # (\Practica_TX|FSM|CS.INIT1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|CS.PARITY~q\,
	datab => \Practica_TX|FSM|Add0~9_combout\,
	datac => \Practica_TX|FSM|CS.INIT3~q\,
	datad => \Practica_TX|FSM|CS.INIT1~q\,
	combout => \Practica_TX|FSM|Add0~11_combout\);

-- Location: FF_X65_Y7_N15
\Practica_TX|FSM|ADDRESS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|FSM|Add0~11_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	ena => \Practica_TX|FSM|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|ADDRESS\(3));

-- Location: LCCOMB_X65_Y7_N16
\Practica_TX|FSM|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Add0~12_combout\ = (\Practica_TX|FSM|ADDRESS\(4) & (\Practica_TX|FSM|Add0~10\ $ (GND))) # (!\Practica_TX|FSM|ADDRESS\(4) & (!\Practica_TX|FSM|Add0~10\ & VCC))
-- \Practica_TX|FSM|Add0~13\ = CARRY((\Practica_TX|FSM|ADDRESS\(4) & !\Practica_TX|FSM|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|ADDRESS\(4),
	datad => VCC,
	cin => \Practica_TX|FSM|Add0~10\,
	combout => \Practica_TX|FSM|Add0~12_combout\,
	cout => \Practica_TX|FSM|Add0~13\);

-- Location: LCCOMB_X65_Y7_N6
\Practica_TX|FSM|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Selector7~1_combout\ = (\Practica_TX|FSM|Selector7~0_combout\) # ((\Practica_TX|FSM|CS.INIT3~q\) # ((\Practica_TX|FSM|Add0~12_combout\ & \Practica_TX|FSM|CS.PARITY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|Selector7~0_combout\,
	datab => \Practica_TX|FSM|Add0~12_combout\,
	datac => \Practica_TX|FSM|CS.INIT3~q\,
	datad => \Practica_TX|FSM|CS.PARITY~q\,
	combout => \Practica_TX|FSM|Selector7~1_combout\);

-- Location: FF_X65_Y7_N17
\Practica_TX|FSM|ADDRESS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|FSM|Selector7~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|ADDRESS\(4));

-- Location: LCCOMB_X65_Y7_N18
\Practica_TX|FSM|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Add0~14_combout\ = (\Practica_TX|FSM|ADDRESS\(5) & (!\Practica_TX|FSM|Add0~13\)) # (!\Practica_TX|FSM|ADDRESS\(5) & ((\Practica_TX|FSM|Add0~13\) # (GND)))
-- \Practica_TX|FSM|Add0~15\ = CARRY((!\Practica_TX|FSM|Add0~13\) # (!\Practica_TX|FSM|ADDRESS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Practica_TX|FSM|ADDRESS\(5),
	datad => VCC,
	cin => \Practica_TX|FSM|Add0~13\,
	combout => \Practica_TX|FSM|Add0~14_combout\,
	cout => \Practica_TX|FSM|Add0~15\);

-- Location: LCCOMB_X66_Y7_N20
\Practica_TX|FSM|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Selector6~1_combout\ = (\Practica_TX|FSM|Selector6~0_combout\) # ((\Practica_TX|FSM|CS.INIT1~q\) # ((\Practica_TX|FSM|Add0~14_combout\ & \Practica_TX|FSM|CS.PARITY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|Selector6~0_combout\,
	datab => \Practica_TX|FSM|Add0~14_combout\,
	datac => \Practica_TX|FSM|CS.PARITY~q\,
	datad => \Practica_TX|FSM|CS.INIT1~q\,
	combout => \Practica_TX|FSM|Selector6~1_combout\);

-- Location: FF_X65_Y7_N19
\Practica_TX|FSM|ADDRESS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|FSM|Selector6~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|ADDRESS\(5));

-- Location: LCCOMB_X65_Y7_N20
\Practica_TX|FSM|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Add0~16_combout\ = (\Practica_TX|FSM|ADDRESS\(6) & (\Practica_TX|FSM|Add0~15\ $ (GND))) # (!\Practica_TX|FSM|ADDRESS\(6) & (!\Practica_TX|FSM|Add0~15\ & VCC))
-- \Practica_TX|FSM|Add0~17\ = CARRY((\Practica_TX|FSM|ADDRESS\(6) & !\Practica_TX|FSM|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|ADDRESS\(6),
	datad => VCC,
	cin => \Practica_TX|FSM|Add0~15\,
	combout => \Practica_TX|FSM|Add0~16_combout\,
	cout => \Practica_TX|FSM|Add0~17\);

-- Location: LCCOMB_X65_Y7_N0
\Practica_TX|FSM|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Selector5~2_combout\ = (\Practica_TX|FSM|CS.INIT3~q\) # ((\Practica_TX|FSM|CS.INIT2~q\) # ((\Practica_TX|FSM|CS.PARITY~q\ & \Practica_TX|FSM|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|CS.INIT3~q\,
	datab => \Practica_TX|FSM|CS.PARITY~q\,
	datac => \Practica_TX|FSM|CS.INIT2~q\,
	datad => \Practica_TX|FSM|Add0~16_combout\,
	combout => \Practica_TX|FSM|Selector5~2_combout\);

-- Location: LCCOMB_X66_Y7_N14
\Practica_TX|FSM|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Selector5~3_combout\ = (\Practica_TX|FSM|Selector5~2_combout\) # ((\Practica_TX|FSM|ADDRESS\(6) & ((\Practica_TX|FSM|CS.LLAVE~q\) # (\Practica_TX|FSM|WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|CS.LLAVE~q\,
	datab => \Practica_TX|FSM|WideOr5~0_combout\,
	datac => \Practica_TX|FSM|Selector5~2_combout\,
	datad => \Practica_TX|FSM|ADDRESS\(6),
	combout => \Practica_TX|FSM|Selector5~3_combout\);

-- Location: FF_X65_Y7_N21
\Practica_TX|FSM|ADDRESS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|FSM|Selector5~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|ADDRESS\(6));

-- Location: LCCOMB_X65_Y7_N22
\Practica_TX|FSM|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Add0~18_combout\ = \Practica_TX|FSM|Add0~17\ $ (\Practica_TX|FSM|ADDRESS\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Practica_TX|FSM|ADDRESS\(7),
	cin => \Practica_TX|FSM|Add0~17\,
	combout => \Practica_TX|FSM|Add0~18_combout\);

-- Location: LCCOMB_X65_Y7_N26
\Practica_TX|FSM|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Selector4~0_combout\ = (\Practica_TX|FSM|Add0~18_combout\ & ((\Practica_TX|FSM|CS.PARITY~q\) # ((\Practica_TX|FSM|ADDRESS\(7) & !\Practica_TX|FSM|WideOr5~combout\)))) # (!\Practica_TX|FSM|Add0~18_combout\ & (\Practica_TX|FSM|ADDRESS\(7) & 
-- (!\Practica_TX|FSM|WideOr5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|Add0~18_combout\,
	datab => \Practica_TX|FSM|ADDRESS\(7),
	datac => \Practica_TX|FSM|WideOr5~combout\,
	datad => \Practica_TX|FSM|CS.PARITY~q\,
	combout => \Practica_TX|FSM|Selector4~0_combout\);

-- Location: FF_X65_Y7_N23
\Practica_TX|FSM|ADDRESS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|FSM|Selector4~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|ADDRESS\(7));

-- Location: LCCOMB_X66_Y7_N28
\Practica_TX|FSM|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Selector17~0_combout\ = (\Practica_TX|FSM|CS.INIT0~q\) # ((\Practica_TX|FSM|CS.INIT2~q\) # ((\Practica_TX|FSM|ULTIMO\(1) & \Practica_TX|FSM|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|CS.INIT0~q\,
	datab => \Practica_TX|FSM|ULTIMO\(1),
	datac => \Practica_TX|FSM|WideOr4~0_combout\,
	datad => \Practica_TX|FSM|CS.INIT2~q\,
	combout => \Practica_TX|FSM|Selector17~0_combout\);

-- Location: FF_X66_Y7_N27
\Practica_TX|FSM|ULTIMO[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|FSM|Selector17~0_combout\,
	sload => VCC,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|ULTIMO\(1));

-- Location: LCCOMB_X66_Y7_N26
\Practica_TX|FSM|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Equal0~1_combout\ = (\Practica_TX|FSM|ADDRESS\(7)) # ((\Practica_TX|FSM|ADDRESS\(3) & ((!\Practica_TX|FSM|ADDRESS\(1)) # (!\Practica_TX|FSM|ULTIMO\(1)))) # (!\Practica_TX|FSM|ADDRESS\(3) & ((\Practica_TX|FSM|ULTIMO\(1)) # 
-- (\Practica_TX|FSM|ADDRESS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|ADDRESS\(7),
	datab => \Practica_TX|FSM|ADDRESS\(3),
	datac => \Practica_TX|FSM|ULTIMO\(1),
	datad => \Practica_TX|FSM|ADDRESS\(1),
	combout => \Practica_TX|FSM|Equal0~1_combout\);

-- Location: LCCOMB_X112_Y38_N22
\Practica_TX|FSM|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Selector12~0_combout\ = (\Practica_TX|FSM|CS.INIT1~q\) # ((\Practica_TX|FSM|CS.INIT2~q\) # ((\Practica_TX|FSM|CS.INIT3~q\) # (\Practica_TX|FSM|CS.INIT4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|CS.INIT1~q\,
	datab => \Practica_TX|FSM|CS.INIT2~q\,
	datac => \Practica_TX|FSM|CS.INIT3~q\,
	datad => \Practica_TX|FSM|CS.INIT4~q\,
	combout => \Practica_TX|FSM|Selector12~0_combout\);

-- Location: LCCOMB_X66_Y7_N24
\Practica_TX|FSM|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Selector12~1_combout\ = (\Practica_TX|FSM|Selector12~0_combout\) # ((\Practica_TX|FSM|WideOr4~0_combout\ & \Practica_TX|FSM|ULTIMO\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|WideOr4~0_combout\,
	datab => \Practica_TX|FSM|ULTIMO\(6),
	datad => \Practica_TX|FSM|Selector12~0_combout\,
	combout => \Practica_TX|FSM|Selector12~1_combout\);

-- Location: FF_X66_Y7_N3
\Practica_TX|FSM|ULTIMO[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|FSM|Selector12~1_combout\,
	sload => VCC,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|ULTIMO\(6));

-- Location: LCCOMB_X112_Y38_N12
\Practica_TX|FSM|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Selector13~1_combout\ = ((\Practica_TX|FSM|ULTIMO\(5) & (!\Practica_TX|FSM|CS.INIT1~q\ & !\Practica_TX|FSM|CS.INIT2~q\))) # (!\Practica_TX|FSM|Selector13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|ULTIMO\(5),
	datab => \Practica_TX|FSM|CS.INIT1~q\,
	datac => \Practica_TX|FSM|CS.INIT2~q\,
	datad => \Practica_TX|FSM|Selector13~0_combout\,
	combout => \Practica_TX|FSM|Selector13~1_combout\);

-- Location: LCCOMB_X111_Y38_N28
\Practica_TX|FSM|ULTIMO[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|ULTIMO[5]~feeder_combout\ = \Practica_TX|FSM|Selector13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Practica_TX|FSM|Selector13~1_combout\,
	combout => \Practica_TX|FSM|ULTIMO[5]~feeder_combout\);

-- Location: FF_X111_Y38_N29
\Practica_TX|FSM|ULTIMO[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_TX|FSM|ULTIMO[5]~feeder_combout\,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|ULTIMO\(5));

-- Location: LCCOMB_X66_Y7_N18
\Practica_TX|FSM|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Selector14~0_combout\ = (\Practica_TX|FSM|CS.INIT2~q\) # ((\Practica_TX|FSM|ULTIMO\(4) & (!\Practica_TX|FSM|CS.INIT1~q\ & \Practica_TX|FSM|Selector13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|ULTIMO\(4),
	datab => \Practica_TX|FSM|CS.INIT1~q\,
	datac => \Practica_TX|FSM|Selector13~0_combout\,
	datad => \Practica_TX|FSM|CS.INIT2~q\,
	combout => \Practica_TX|FSM|Selector14~0_combout\);

-- Location: FF_X66_Y7_N11
\Practica_TX|FSM|ULTIMO[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|FSM|Selector14~0_combout\,
	sload => VCC,
	ena => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|ULTIMO\(4));

-- Location: LCCOMB_X66_Y7_N10
\Practica_TX|FSM|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Equal0~0_combout\ = (\Practica_TX|FSM|ADDRESS\(5) & (\Practica_TX|FSM|ULTIMO\(5) & (\Practica_TX|FSM|ULTIMO\(4) $ (!\Practica_TX|FSM|ADDRESS\(4))))) # (!\Practica_TX|FSM|ADDRESS\(5) & (!\Practica_TX|FSM|ULTIMO\(5) & 
-- (\Practica_TX|FSM|ULTIMO\(4) $ (!\Practica_TX|FSM|ADDRESS\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|ADDRESS\(5),
	datab => \Practica_TX|FSM|ULTIMO\(5),
	datac => \Practica_TX|FSM|ULTIMO\(4),
	datad => \Practica_TX|FSM|ADDRESS\(4),
	combout => \Practica_TX|FSM|Equal0~0_combout\);

-- Location: LCCOMB_X66_Y7_N2
\Practica_TX|FSM|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Equal0~2_combout\ = (!\Practica_TX|FSM|Equal0~1_combout\ & (\Practica_TX|FSM|Equal0~0_combout\ & (\Practica_TX|FSM|ADDRESS\(6) $ (!\Practica_TX|FSM|ULTIMO\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|Equal0~1_combout\,
	datab => \Practica_TX|FSM|ADDRESS\(6),
	datac => \Practica_TX|FSM|ULTIMO\(6),
	datad => \Practica_TX|FSM|Equal0~0_combout\,
	combout => \Practica_TX|FSM|Equal0~2_combout\);

-- Location: LCCOMB_X65_Y7_N28
\Practica_TX|FSM|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Equal0~3_combout\ = (\Practica_TX|FSM|Equal0~2_combout\ & ((\Practica_TX|FSM|ADDRESS\(2) & (\Practica_TX|FSM|ULTIMO\(0) & \Practica_TX|FSM|ADDRESS\(0))) # (!\Practica_TX|FSM|ADDRESS\(2) & (!\Practica_TX|FSM|ULTIMO\(0) & 
-- !\Practica_TX|FSM|ADDRESS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|ADDRESS\(2),
	datab => \Practica_TX|FSM|ULTIMO\(0),
	datac => \Practica_TX|FSM|ADDRESS\(0),
	datad => \Practica_TX|FSM|Equal0~2_combout\,
	combout => \Practica_TX|FSM|Equal0~3_combout\);

-- Location: LCCOMB_X66_Y8_N20
\Practica_TX|FSM|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Selector3~0_combout\ = (\Practica_TX|FSM|Equal0~3_combout\ & ((\Practica_TX|FSM|CS.STOP~q\) # ((\Practica_TX|FSM|CS.LLAVE~q\ & \SWITCH~input_o\)))) # (!\Practica_TX|FSM|Equal0~3_combout\ & (((\Practica_TX|FSM|CS.LLAVE~q\ & 
-- \SWITCH~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|Equal0~3_combout\,
	datab => \Practica_TX|FSM|CS.STOP~q\,
	datac => \Practica_TX|FSM|CS.LLAVE~q\,
	datad => \SWITCH~input_o\,
	combout => \Practica_TX|FSM|Selector3~0_combout\);

-- Location: FF_X66_Y7_N13
\Practica_TX|FSM|CS.LLAVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|FSM|Selector3~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|CS.LLAVE~q\);

-- Location: LCCOMB_X112_Y38_N24
\Practica_TX|FSM|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Selector0~0_combout\ = (\SWITCH~input_o\) # ((!\Practica_TX|FSM|CS.LLAVE~q\ & ((\Practica_TX|FSM|CS.IDLE~q\) # (\Practica_TX|FSM|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWITCH~input_o\,
	datab => \Practica_TX|FSM|CS.IDLE~q\,
	datac => \Practica_TX|FSM|Mux0~0_combout\,
	datad => \Practica_TX|FSM|CS.LLAVE~q\,
	combout => \Practica_TX|FSM|Selector0~0_combout\);

-- Location: FF_X112_Y38_N29
\Practica_TX|FSM|CS.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|FSM|Selector0~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|CS.IDLE~q\);

-- Location: LCCOMB_X112_Y38_N28
\Practica_TX|FSM|NS.INIT1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|NS.INIT1~0_combout\ = (!\Practica_TX|FSM|FD:0:FFD|Q~q\ & (!\Practica_TX|FSM|CS.IDLE~q\ & !\Practica_TX|FSM|FD:3:FFD|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Practica_TX|FSM|FD:0:FFD|Q~q\,
	datac => \Practica_TX|FSM|CS.IDLE~q\,
	datad => \Practica_TX|FSM|FD:3:FFD|Q~q\,
	combout => \Practica_TX|FSM|NS.INIT1~0_combout\);

-- Location: LCCOMB_X112_Y38_N10
\Practica_TX|FSM|NS.INIT1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|NS.INIT1~1_combout\ = (!\Practica_TX|FSM|FD:2:FFD|Q~q\ & (\Practica_TX|FSM|FD:1:FFD|Q~q\ & \Practica_TX|FSM|NS.INIT1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Practica_TX|FSM|FD:2:FFD|Q~q\,
	datac => \Practica_TX|FSM|FD:1:FFD|Q~q\,
	datad => \Practica_TX|FSM|NS.INIT1~0_combout\,
	combout => \Practica_TX|FSM|NS.INIT1~1_combout\);

-- Location: FF_X112_Y38_N27
\Practica_TX|FSM|CS.INIT1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|FSM|NS.INIT1~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|CS.INIT1~q\);

-- Location: LCCOMB_X112_Y38_N6
\Practica_TX|FSM|FF_SET~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|FF_SET~0_combout\ = (\RESET~input_o\) # ((\Practica_TX|FSM|CS.INIT1~q\) # ((\Practica_TX|FSM|CS.INIT2~q\) # (!\Practica_TX|FSM|Selector13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \Practica_TX|FSM|CS.INIT1~q\,
	datac => \Practica_TX|FSM|CS.INIT2~q\,
	datad => \Practica_TX|FSM|Selector13~0_combout\,
	combout => \Practica_TX|FSM|FF_SET~0_combout\);

-- Location: FF_X113_Y38_N25
\Practica_TX|FSM|FD:2:FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_BOTONES[2]~input_o\,
	d => \Practica_TX|FSM|FD:2:FFD|Q~feeder_combout\,
	clrn => \Practica_TX|FSM|ALT_INV_FF_SET~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|FD:2:FFD|Q~q\);

-- Location: LCCOMB_X112_Y38_N20
\Practica_TX|FSM|NS.INIT2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|NS.INIT2~0_combout\ = (\Practica_TX|FSM|FD:2:FFD|Q~q\ & (!\Practica_TX|FSM|FD:1:FFD|Q~q\ & \Practica_TX|FSM|NS.INIT1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Practica_TX|FSM|FD:2:FFD|Q~q\,
	datac => \Practica_TX|FSM|FD:1:FFD|Q~q\,
	datad => \Practica_TX|FSM|NS.INIT1~0_combout\,
	combout => \Practica_TX|FSM|NS.INIT2~0_combout\);

-- Location: FF_X112_Y38_N13
\Practica_TX|FSM|CS.INIT2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|FSM|NS.INIT2~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|CS.INIT2~q\);

-- Location: LCCOMB_X66_Y7_N22
\Practica_TX|FSM|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|WideOr4~0_combout\ = (!\Practica_TX|FSM|CS.INIT2~q\ & (\Practica_TX|FSM|Selector13~0_combout\ & !\Practica_TX|FSM|CS.INIT1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|CS.INIT2~q\,
	datab => \Practica_TX|FSM|Selector13~0_combout\,
	datad => \Practica_TX|FSM|CS.INIT1~q\,
	combout => \Practica_TX|FSM|WideOr4~0_combout\);

-- Location: LCCOMB_X66_Y7_N30
\Practica_TX|FSM|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|Selector1~0_combout\ = ((!\Practica_TX|FSM|Equal0~3_combout\ & \Practica_TX|FSM|CS.STOP~q\)) # (!\Practica_TX|FSM|WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|WideOr4~0_combout\,
	datab => \Practica_TX|FSM|Equal0~3_combout\,
	datad => \Practica_TX|FSM|CS.STOP~q\,
	combout => \Practica_TX|FSM|Selector1~0_combout\);

-- Location: FF_X66_Y7_N25
\Practica_TX|FSM|CS.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|FSM|Selector1~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|CS.START~q\);

-- Location: LCCOMB_X67_Y7_N22
\Practica_TX|SR|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|SR|Mux10~0_combout\ = (!\Practica_TX|SR|CONT\(0) & ((\RESET~input_o\) # (!\Practica_TX|FSM|CS.START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Practica_TX|SR|CONT\(0),
	datac => \Practica_TX|FSM|CS.START~q\,
	datad => \RESET~input_o\,
	combout => \Practica_TX|SR|Mux10~0_combout\);

-- Location: FF_X67_Y7_N7
\Practica_TX|SR|CONT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|SR|Mux10~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	ena => \Practica_TX|SR|DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|SR|CONT\(0));

-- Location: LCCOMB_X67_Y7_N18
\Practica_TX|FSM|SS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|SS~0_combout\ = (\RESET~input_o\) # (!\Practica_TX|FSM|CS.START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|CS.START~q\,
	datad => \RESET~input_o\,
	combout => \Practica_TX|FSM|SS~0_combout\);

-- Location: LCCOMB_X67_Y7_N30
\Practica_TX|SR|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|SR|Mux8~0_combout\ = (\Practica_TX|FSM|SS~0_combout\ & (\Practica_TX|SR|CONT\(2) $ (((\Practica_TX|SR|CONT\(0) & \Practica_TX|SR|CONT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|SR|CONT\(2),
	datab => \Practica_TX|SR|CONT\(0),
	datac => \Practica_TX|SR|CONT\(1),
	datad => \Practica_TX|FSM|SS~0_combout\,
	combout => \Practica_TX|SR|Mux8~0_combout\);

-- Location: FF_X67_Y7_N19
\Practica_TX|SR|CONT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|SR|Mux8~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	ena => \Practica_TX|SR|DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|SR|CONT\(2));

-- Location: LCCOMB_X67_Y7_N20
\Practica_TX|FSM|NS.PARITY~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|FSM|NS.PARITY~0_combout\ = (\Practica_TX|SR|CONT\(2) & (\Practica_TX|SR|CONT\(0) & (\Practica_TX|FSM|CS.DATA~q\ & \Practica_TX|SR|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|SR|CONT\(2),
	datab => \Practica_TX|SR|CONT\(0),
	datac => \Practica_TX|FSM|CS.DATA~q\,
	datad => \Practica_TX|SR|CONT\(1),
	combout => \Practica_TX|FSM|NS.PARITY~0_combout\);

-- Location: FF_X66_Y7_N31
\Practica_TX|FSM|CS.PARITY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_TX|FSM|NS.PARITY~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|FSM|CS.PARITY~q\);

-- Location: CLKCTRL_G1
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: M9K_X64_Y7_N0
\Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000D000280065001880020001D0006900080007400194004C00034000A001BC006300184006E001BC004D00080006F0018C0069001400020001940074001B80061001D4006700104000D0002800450014C002000184006C0019400750018C0073001140020001C80065000C40020001BC0073001C800750010C000D00028006C001940069001C8006200184004700080007900080006C001940069001C80062001840047000800072001BC007000080006F001900061001D00065001B00070001B4006F0018C0020000E8006F001A40072001BC0074001840072001BC006200184004C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Laboratorio5.LABORATORIO50.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RS232_TX:Practica_TX|ROM:MEMORIA|altsyncram:Mux6_rtl_0|altsyncram_sh01:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 7,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portaaddr => \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X66_Y7_N16
\Practica_TX|SR|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|SR|Mux1~0_combout\ = (!\Practica_TX|FSM|CS.DATA~q\ & ((\Practica_TX|FSM|SS~0_combout\ & (\Practica_TX|SR|DATA\(6))) # (!\Practica_TX|FSM|SS~0_combout\ & ((\Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|CS.DATA~q\,
	datab => \Practica_TX|FSM|SS~0_combout\,
	datac => \Practica_TX|SR|DATA\(6),
	datad => \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a6\,
	combout => \Practica_TX|SR|Mux1~0_combout\);

-- Location: FF_X66_Y7_N17
\Practica_TX|SR|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_TX|SR|Mux1~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|SR|DATA\(6));

-- Location: LCCOMB_X67_Y7_N14
\Practica_TX|SR|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|SR|Mux2~0_combout\ = (\Practica_TX|FSM|CS.START~q\ & ((\RESET~input_o\ & ((\Practica_TX|SR|DATA\(6)))) # (!\RESET~input_o\ & (\Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a5\)))) # (!\Practica_TX|FSM|CS.START~q\ & 
-- (((\Practica_TX|SR|DATA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a5\,
	datab => \Practica_TX|SR|DATA\(6),
	datac => \Practica_TX|FSM|CS.START~q\,
	datad => \RESET~input_o\,
	combout => \Practica_TX|SR|Mux2~0_combout\);

-- Location: FF_X67_Y7_N15
\Practica_TX|SR|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_TX|SR|Mux2~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \Practica_TX|SR|DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|SR|DATA\(5));

-- Location: LCCOMB_X67_Y7_N24
\Practica_TX|SR|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|SR|Mux3~0_combout\ = (\RESET~input_o\ & (\Practica_TX|SR|DATA\(5))) # (!\RESET~input_o\ & ((\Practica_TX|FSM|CS.START~q\ & ((\Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a4\))) # (!\Practica_TX|FSM|CS.START~q\ & 
-- (\Practica_TX|SR|DATA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|SR|DATA\(5),
	datab => \RESET~input_o\,
	datac => \Practica_TX|FSM|CS.START~q\,
	datad => \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a4\,
	combout => \Practica_TX|SR|Mux3~0_combout\);

-- Location: FF_X67_Y7_N25
\Practica_TX|SR|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_TX|SR|Mux3~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \Practica_TX|SR|DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|SR|DATA\(4));

-- Location: LCCOMB_X67_Y7_N26
\Practica_TX|SR|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|SR|Mux4~0_combout\ = (\Practica_TX|FSM|CS.START~q\ & ((\RESET~input_o\ & (\Practica_TX|SR|DATA\(4))) # (!\RESET~input_o\ & ((\Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a3\))))) # (!\Practica_TX|FSM|CS.START~q\ & 
-- (((\Practica_TX|SR|DATA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|CS.START~q\,
	datab => \RESET~input_o\,
	datac => \Practica_TX|SR|DATA\(4),
	datad => \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a3\,
	combout => \Practica_TX|SR|Mux4~0_combout\);

-- Location: FF_X67_Y7_N27
\Practica_TX|SR|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_TX|SR|Mux4~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \Practica_TX|SR|DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|SR|DATA\(3));

-- Location: LCCOMB_X67_Y7_N0
\Practica_TX|SR|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|SR|Mux5~0_combout\ = (\RESET~input_o\ & (\Practica_TX|SR|DATA\(3))) # (!\RESET~input_o\ & ((\Practica_TX|FSM|CS.START~q\ & ((\Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a2\))) # (!\Practica_TX|FSM|CS.START~q\ & 
-- (\Practica_TX|SR|DATA\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|SR|DATA\(3),
	datab => \RESET~input_o\,
	datac => \Practica_TX|FSM|CS.START~q\,
	datad => \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a2\,
	combout => \Practica_TX|SR|Mux5~0_combout\);

-- Location: FF_X67_Y7_N1
\Practica_TX|SR|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_TX|SR|Mux5~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \Practica_TX|SR|DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|SR|DATA\(2));

-- Location: LCCOMB_X67_Y7_N10
\Practica_TX|SR|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|SR|Mux6~0_combout\ = (\RESET~input_o\ & (\Practica_TX|SR|DATA\(2))) # (!\RESET~input_o\ & ((\Practica_TX|FSM|CS.START~q\ & ((\Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a1\))) # (!\Practica_TX|FSM|CS.START~q\ & 
-- (\Practica_TX|SR|DATA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|SR|DATA\(2),
	datab => \RESET~input_o\,
	datac => \Practica_TX|FSM|CS.START~q\,
	datad => \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a1\,
	combout => \Practica_TX|SR|Mux6~0_combout\);

-- Location: FF_X67_Y7_N11
\Practica_TX|SR|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_TX|SR|Mux6~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \Practica_TX|SR|DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|SR|DATA\(1));

-- Location: LCCOMB_X67_Y7_N2
\Practica_TX|SR|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|SR|Mux7~0_combout\ = (\Practica_TX|FSM|CS.START~q\ & ((\RESET~input_o\ & ((\Practica_TX|SR|DATA\(1)))) # (!\RESET~input_o\ & (\Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\)))) # (!\Practica_TX|FSM|CS.START~q\ & 
-- (((\Practica_TX|SR|DATA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \Practica_TX|SR|DATA\(1),
	datac => \Practica_TX|FSM|CS.START~q\,
	datad => \RESET~input_o\,
	combout => \Practica_TX|SR|Mux7~0_combout\);

-- Location: FF_X67_Y7_N3
\Practica_TX|SR|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_TX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_TX|SR|Mux7~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \Practica_TX|SR|DATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_TX|SR|DATA\(0));

-- Location: LCCOMB_X67_Y7_N8
\Practica_TX|OUT_MUX|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|OUT_MUX|Mux0~0_combout\ = (\Practica_TX|FSM|CS.DATA~q\ & ((!\Practica_TX|SR|DATA\(0)))) # (!\Practica_TX|FSM|CS.DATA~q\ & (\Practica_TX|FSM|CS.START~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|FSM|CS.START~q\,
	datab => \Practica_TX|SR|DATA\(0),
	datac => \Practica_TX|FSM|CS.DATA~q\,
	combout => \Practica_TX|OUT_MUX|Mux0~0_combout\);

-- Location: LCCOMB_X63_Y7_N0
\Practica_TX|PARIDAD|bit_paridad~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|PARIDAD|bit_paridad~0_combout\ = \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\ $ (\Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a1\ $ (\Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a2\ $ 
-- (\Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a1\,
	datac => \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a2\,
	datad => \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a3\,
	combout => \Practica_TX|PARIDAD|bit_paridad~0_combout\);

-- Location: LCCOMB_X63_Y7_N6
\Practica_TX|PARIDAD|bit_paridad~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|PARIDAD|bit_paridad~1_combout\ = \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a4\ $ (\Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a5\ $ (\Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a6\ $ 
-- (\Practica_TX|PARIDAD|bit_paridad~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a4\,
	datab => \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a5\,
	datac => \Practica_TX|MEMORIA|Mux6_rtl_0|auto_generated|ram_block1a6\,
	datad => \Practica_TX|PARIDAD|bit_paridad~0_combout\,
	combout => \Practica_TX|PARIDAD|bit_paridad~1_combout\);

-- Location: LCCOMB_X63_Y7_N16
\Practica_TX|OUT_MUX|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_TX|OUT_MUX|Mux0~1_combout\ = (\RESET~input_o\) # ((\Practica_TX|FSM|CS.PARITY~q\ & ((\Practica_TX|PARIDAD|bit_paridad~1_combout\))) # (!\Practica_TX|FSM|CS.PARITY~q\ & (!\Practica_TX|OUT_MUX|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \Practica_TX|FSM|CS.PARITY~q\,
	datac => \Practica_TX|OUT_MUX|Mux0~0_combout\,
	datad => \Practica_TX|PARIDAD|bit_paridad~1_combout\,
	combout => \Practica_TX|OUT_MUX|Mux0~1_combout\);

-- Location: LCCOMB_X62_Y7_N18
\Practica_RX|SR1|DATA[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|SR1|DATA[8]~feeder_combout\ = \Practica_TX|OUT_MUX|Mux0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Practica_TX|OUT_MUX|Mux0~1_combout\,
	combout => \Practica_RX|SR1|DATA[8]~feeder_combout\);

-- Location: LCCOMB_X63_Y8_N28
\Practica_RX|RX_FSM1|CONT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|RX_FSM1|CONT~3_combout\ = (\Practica_RX|RX_FSM1|CS.DATA~q\ & (!\Practica_RX|RX_FSM1|CONT\(0) & (!\RESET~input_o\ & \Practica_RX|RX_FSM1|CS.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_RX|RX_FSM1|CS.DATA~q\,
	datab => \Practica_RX|RX_FSM1|CONT\(0),
	datac => \RESET~input_o\,
	datad => \Practica_RX|RX_FSM1|CS.IDLE~q\,
	combout => \Practica_RX|RX_FSM1|CONT~3_combout\);

-- Location: LCCOMB_X63_Y8_N20
\Practica_RX|RX_FSM1|CONT[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|RX_FSM1|CONT[0]~feeder_combout\ = \Practica_RX|RX_FSM1|CONT~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Practica_RX|RX_FSM1|CONT~3_combout\,
	combout => \Practica_RX|RX_FSM1|CONT[0]~feeder_combout\);

-- Location: LCCOMB_X63_Y8_N24
\Practica_RX|RX_FSM1|CONTCTRL[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|RX_FSM1|CONTCTRL[0]~0_combout\ = (\Practica_RX|RX_FSM1|CS.DATA~q\) # ((\RESET~input_o\) # (!\Practica_RX|RX_FSM1|CS.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Practica_RX|RX_FSM1|CS.DATA~q\,
	datac => \RESET~input_o\,
	datad => \Practica_RX|RX_FSM1|CS.IDLE~q\,
	combout => \Practica_RX|RX_FSM1|CONTCTRL[0]~0_combout\);

-- Location: FF_X63_Y8_N21
\Practica_RX|RX_FSM1|CONT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_RX|RX_FSM1|CONT[0]~feeder_combout\,
	ena => \Practica_RX|RX_FSM1|CONTCTRL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|RX_FSM1|CONT\(0));

-- Location: LCCOMB_X63_Y8_N18
\Practica_RX|RX_FSM1|CONT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|RX_FSM1|CONT~0_combout\ = (\Practica_RX|RX_FSM1|CS.DATA~q\ & (!\RESET~input_o\ & \Practica_RX|RX_FSM1|CS.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_RX|RX_FSM1|CS.DATA~q\,
	datab => \RESET~input_o\,
	datad => \Practica_RX|RX_FSM1|CS.IDLE~q\,
	combout => \Practica_RX|RX_FSM1|CONT~0_combout\);

-- Location: LCCOMB_X63_Y8_N22
\Practica_RX|RX_FSM1|CONT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|RX_FSM1|CONT~2_combout\ = (\Practica_RX|RX_FSM1|CONT~0_combout\ & (\Practica_RX|RX_FSM1|CONT\(0) $ (\Practica_RX|RX_FSM1|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Practica_RX|RX_FSM1|CONT\(0),
	datac => \Practica_RX|RX_FSM1|CONT\(1),
	datad => \Practica_RX|RX_FSM1|CONT~0_combout\,
	combout => \Practica_RX|RX_FSM1|CONT~2_combout\);

-- Location: FF_X63_Y8_N19
\Practica_RX|RX_FSM1|CONT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_RX|RX_FSM1|CONT~2_combout\,
	sload => VCC,
	ena => \Practica_RX|RX_FSM1|CONTCTRL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|RX_FSM1|CONT\(1));

-- Location: LCCOMB_X63_Y8_N10
\Practica_RX|RX_FSM1|CONT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|RX_FSM1|CONT~1_combout\ = (\Practica_RX|RX_FSM1|CONT~0_combout\ & (\Practica_RX|RX_FSM1|CONT\(2) $ (((\Practica_RX|RX_FSM1|CONT\(1) & \Practica_RX|RX_FSM1|CONT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_RX|RX_FSM1|CONT\(1),
	datab => \Practica_RX|RX_FSM1|CONT\(0),
	datac => \Practica_RX|RX_FSM1|CONT\(2),
	datad => \Practica_RX|RX_FSM1|CONT~0_combout\,
	combout => \Practica_RX|RX_FSM1|CONT~1_combout\);

-- Location: LCCOMB_X63_Y8_N4
\Practica_RX|RX_FSM1|CONT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|RX_FSM1|CONT[2]~feeder_combout\ = \Practica_RX|RX_FSM1|CONT~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_RX|RX_FSM1|CONT~1_combout\,
	combout => \Practica_RX|RX_FSM1|CONT[2]~feeder_combout\);

-- Location: FF_X63_Y8_N5
\Practica_RX|RX_FSM1|CONT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_RX|RX_FSM1|CONT[2]~feeder_combout\,
	ena => \Practica_RX|RX_FSM1|CONTCTRL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|RX_FSM1|CONT\(2));

-- Location: LCCOMB_X63_Y8_N12
\Practica_RX|RX_FSM1|NS.PARITY~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|RX_FSM1|NS.PARITY~0_combout\ = (\Practica_RX|RX_FSM1|CONT\(1) & (\Practica_RX|RX_FSM1|CS.DATA~q\ & (\Practica_RX|RX_FSM1|CONT\(2) & \Practica_RX|RX_FSM1|CONT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_RX|RX_FSM1|CONT\(1),
	datab => \Practica_RX|RX_FSM1|CS.DATA~q\,
	datac => \Practica_RX|RX_FSM1|CONT\(2),
	datad => \Practica_RX|RX_FSM1|CONT\(0),
	combout => \Practica_RX|RX_FSM1|NS.PARITY~0_combout\);

-- Location: FF_X62_Y7_N23
\Practica_RX|RX_FSM1|CS.PARITY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_RX|RX_FSM1|NS.PARITY~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|RX_FSM1|CS.PARITY~q\);

-- Location: LCCOMB_X63_Y7_N14
\Practica_RX|RX_FSM1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|RX_FSM1|Selector1~0_combout\ = (\Practica_RX|RX_FSM1|CS.PARITY~q\) # ((\Practica_RX|RX_FSM1|CS.STOP~q\ & !\Practica_TX|OUT_MUX|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_RX|RX_FSM1|CS.PARITY~q\,
	datac => \Practica_RX|RX_FSM1|CS.STOP~q\,
	datad => \Practica_TX|OUT_MUX|Mux0~1_combout\,
	combout => \Practica_RX|RX_FSM1|Selector1~0_combout\);

-- Location: FF_X63_Y7_N15
\Practica_RX|RX_FSM1|CS.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_RX|RX_FSM1|Selector1~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|RX_FSM1|CS.STOP~q\);

-- Location: LCCOMB_X63_Y7_N2
\Practica_RX|RX_FSM1|NS.IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|RX_FSM1|NS.IDLE~0_combout\ = ((\Practica_RX|RX_FSM1|CS.IDLE~q\ & !\Practica_RX|RX_FSM1|CS.STOP~q\)) # (!\Practica_TX|OUT_MUX|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_RX|RX_FSM1|CS.IDLE~q\,
	datab => \Practica_RX|RX_FSM1|CS.STOP~q\,
	datad => \Practica_TX|OUT_MUX|Mux0~1_combout\,
	combout => \Practica_RX|RX_FSM1|NS.IDLE~0_combout\);

-- Location: LCCOMB_X63_Y7_N4
\Practica_RX|RX_FSM1|CS.IDLE~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|RX_FSM1|CS.IDLE~feeder_combout\ = \Practica_RX|RX_FSM1|NS.IDLE~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Practica_RX|RX_FSM1|NS.IDLE~0_combout\,
	combout => \Practica_RX|RX_FSM1|CS.IDLE~feeder_combout\);

-- Location: FF_X63_Y7_N5
\Practica_RX|RX_FSM1|CS.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_RX|RX_FSM1|CS.IDLE~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|RX_FSM1|CS.IDLE~q\);

-- Location: LCCOMB_X63_Y8_N30
\Practica_RX|RX_FSM1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|RX_FSM1|Selector0~0_combout\ = (\Practica_RX|RX_FSM1|CS.DATA~q\ & (((!\Practica_RX|RX_FSM1|CONT\(0)) # (!\Practica_RX|RX_FSM1|CONT\(2))) # (!\Practica_RX|RX_FSM1|CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_RX|RX_FSM1|CONT\(1),
	datab => \Practica_RX|RX_FSM1|CONT\(2),
	datac => \Practica_RX|RX_FSM1|CS.DATA~q\,
	datad => \Practica_RX|RX_FSM1|CONT\(0),
	combout => \Practica_RX|RX_FSM1|Selector0~0_combout\);

-- Location: LCCOMB_X63_Y7_N22
\Practica_RX|RX_FSM1|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|RX_FSM1|Selector0~1_combout\ = (\Practica_RX|RX_FSM1|Selector0~0_combout\) # ((!\Practica_RX|RX_FSM1|CS.IDLE~q\ & !\Practica_TX|OUT_MUX|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_RX|RX_FSM1|CS.IDLE~q\,
	datab => \Practica_RX|RX_FSM1|Selector0~0_combout\,
	datad => \Practica_TX|OUT_MUX|Mux0~1_combout\,
	combout => \Practica_RX|RX_FSM1|Selector0~1_combout\);

-- Location: FF_X63_Y7_N23
\Practica_RX|RX_FSM1|CS.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_RX|RX_FSM1|Selector0~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|RX_FSM1|CS.DATA~q\);

-- Location: LCCOMB_X62_Y7_N22
\Practica_RX|RX_FSM1|SHIFT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|RX_FSM1|SHIFT~0_combout\ = (!\RESET~input_o\ & ((\Practica_RX|RX_FSM1|CS.DATA~q\) # (\Practica_RX|RX_FSM1|CS.PARITY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Practica_RX|RX_FSM1|CS.DATA~q\,
	datac => \Practica_RX|RX_FSM1|CS.PARITY~q\,
	datad => \RESET~input_o\,
	combout => \Practica_RX|RX_FSM1|SHIFT~0_combout\);

-- Location: FF_X62_Y7_N19
\Practica_RX|SR1|DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_RX|SR1|DATA[8]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \Practica_RX|RX_FSM1|SHIFT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|SR1|DATA\(8));

-- Location: LCCOMB_X62_Y7_N4
\Practica_RX|SR1|DATA[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|SR1|DATA[7]~feeder_combout\ = \Practica_RX|SR1|DATA\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Practica_RX|SR1|DATA\(8),
	combout => \Practica_RX|SR1|DATA[7]~feeder_combout\);

-- Location: FF_X62_Y7_N5
\Practica_RX|SR1|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_RX|SR1|DATA[7]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \Practica_RX|RX_FSM1|SHIFT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|SR1|DATA\(7));

-- Location: LCCOMB_X62_Y7_N26
\Practica_RX|SR1|DATA[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|SR1|DATA[6]~feeder_combout\ = \Practica_RX|SR1|DATA\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Practica_RX|SR1|DATA\(7),
	combout => \Practica_RX|SR1|DATA[6]~feeder_combout\);

-- Location: FF_X62_Y7_N27
\Practica_RX|SR1|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_RX|SR1|DATA[6]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \Practica_RX|RX_FSM1|SHIFT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|SR1|DATA\(6));

-- Location: LCCOMB_X62_Y7_N28
\Practica_RX|SR1|DATA[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|SR1|DATA[5]~feeder_combout\ = \Practica_RX|SR1|DATA\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Practica_RX|SR1|DATA\(6),
	combout => \Practica_RX|SR1|DATA[5]~feeder_combout\);

-- Location: FF_X62_Y7_N29
\Practica_RX|SR1|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_RX|SR1|DATA[5]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \Practica_RX|RX_FSM1|SHIFT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|SR1|DATA\(5));

-- Location: LCCOMB_X62_Y7_N20
\Practica_RX|SR1|DATA[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|SR1|DATA[4]~feeder_combout\ = \Practica_RX|SR1|DATA\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Practica_RX|SR1|DATA\(5),
	combout => \Practica_RX|SR1|DATA[4]~feeder_combout\);

-- Location: FF_X62_Y7_N21
\Practica_RX|SR1|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_RX|SR1|DATA[4]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \Practica_RX|RX_FSM1|SHIFT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|SR1|DATA\(4));

-- Location: LCCOMB_X62_Y7_N10
\Practica_RX|SR1|DATA[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|SR1|DATA[3]~feeder_combout\ = \Practica_RX|SR1|DATA\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Practica_RX|SR1|DATA\(4),
	combout => \Practica_RX|SR1|DATA[3]~feeder_combout\);

-- Location: FF_X62_Y7_N11
\Practica_RX|SR1|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_RX|SR1|DATA[3]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \Practica_RX|RX_FSM1|SHIFT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|SR1|DATA\(3));

-- Location: LCCOMB_X62_Y7_N12
\Practica_RX|SR1|DATA[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|SR1|DATA[2]~feeder_combout\ = \Practica_RX|SR1|DATA\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_RX|SR1|DATA\(3),
	combout => \Practica_RX|SR1|DATA[2]~feeder_combout\);

-- Location: FF_X62_Y7_N13
\Practica_RX|SR1|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_RX|SR1|DATA[2]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \Practica_RX|RX_FSM1|SHIFT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|SR1|DATA\(2));

-- Location: LCCOMB_X62_Y7_N30
\Practica_RX|SR1|DATA[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|SR1|DATA[1]~feeder_combout\ = \Practica_RX|SR1|DATA\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Practica_RX|SR1|DATA\(2),
	combout => \Practica_RX|SR1|DATA[1]~feeder_combout\);

-- Location: FF_X62_Y7_N31
\Practica_RX|SR1|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_RX|SR1|DATA[1]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \Practica_RX|RX_FSM1|SHIFT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|SR1|DATA\(1));

-- Location: FF_X62_Y7_N17
\Practica_RX|SR1|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	asdata => \Practica_RX|SR1|DATA\(1),
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	ena => \Practica_RX|RX_FSM1|SHIFT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|SR1|DATA\(0));

-- Location: LCCOMB_X63_Y7_N24
\Practica_RX|DBUFFER|DATAOUT[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|DBUFFER|DATAOUT[0]~feeder_combout\ = \Practica_RX|SR1|DATA\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Practica_RX|SR1|DATA\(0),
	combout => \Practica_RX|DBUFFER|DATAOUT[0]~feeder_combout\);

-- Location: LCCOMB_X62_Y7_N14
\Practica_RX|PCHECKER1|Paridad_Check~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|PCHECKER1|Paridad_Check~0_combout\ = \Practica_RX|SR1|DATA\(7) $ (\Practica_RX|SR1|DATA\(5) $ (\Practica_RX|SR1|DATA\(6) $ (\Practica_RX|SR1|DATA\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_RX|SR1|DATA\(7),
	datab => \Practica_RX|SR1|DATA\(5),
	datac => \Practica_RX|SR1|DATA\(6),
	datad => \Practica_RX|SR1|DATA\(8),
	combout => \Practica_RX|PCHECKER1|Paridad_Check~0_combout\);

-- Location: LCCOMB_X62_Y7_N24
\Practica_RX|PCHECKER1|Paridad_Check~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|PCHECKER1|Paridad_Check~1_combout\ = \Practica_RX|SR1|DATA\(1) $ (\Practica_RX|SR1|DATA\(2) $ (\Practica_RX|SR1|DATA\(4) $ (\Practica_RX|SR1|DATA\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_RX|SR1|DATA\(1),
	datab => \Practica_RX|SR1|DATA\(2),
	datac => \Practica_RX|SR1|DATA\(4),
	datad => \Practica_RX|SR1|DATA\(3),
	combout => \Practica_RX|PCHECKER1|Paridad_Check~1_combout\);

-- Location: LCCOMB_X62_Y7_N16
\Practica_RX|PCHECKER1|Paridad_Check~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|PCHECKER1|Paridad_Check~2_combout\ = \Practica_RX|PCHECKER1|Paridad_Check~0_combout\ $ (\Practica_RX|SR1|DATA\(0) $ (\Practica_RX|PCHECKER1|Paridad_Check~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Practica_RX|PCHECKER1|Paridad_Check~0_combout\,
	datac => \Practica_RX|SR1|DATA\(0),
	datad => \Practica_RX|PCHECKER1|Paridad_Check~1_combout\,
	combout => \Practica_RX|PCHECKER1|Paridad_Check~2_combout\);

-- Location: LCCOMB_X63_Y7_N8
\Practica_RX|RX_FSM1|DATA_OK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|RX_FSM1|DATA_OK~0_combout\ = (\Practica_RX|RX_FSM1|CS.STOP~q\ & (!\RESET~input_o\ & (!\Practica_RX|PCHECKER1|Paridad_Check~2_combout\ & \Practica_TX|OUT_MUX|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_RX|RX_FSM1|CS.STOP~q\,
	datab => \RESET~input_o\,
	datac => \Practica_RX|PCHECKER1|Paridad_Check~2_combout\,
	datad => \Practica_TX|OUT_MUX|Mux0~1_combout\,
	combout => \Practica_RX|RX_FSM1|DATA_OK~0_combout\);

-- Location: FF_X63_Y7_N25
\Practica_RX|DBUFFER|DATAOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_RX|DBUFFER|DATAOUT[0]~feeder_combout\,
	ena => \Practica_RX|RX_FSM1|DATA_OK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|DBUFFER|DATAOUT\(0));

-- Location: LCCOMB_X63_Y7_N30
\Practica_RX|DBUFFER|DATAOUT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|DBUFFER|DATAOUT[1]~feeder_combout\ = \Practica_RX|SR1|DATA\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Practica_RX|SR1|DATA\(1),
	combout => \Practica_RX|DBUFFER|DATAOUT[1]~feeder_combout\);

-- Location: FF_X63_Y7_N31
\Practica_RX|DBUFFER|DATAOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_RX|DBUFFER|DATAOUT[1]~feeder_combout\,
	ena => \Practica_RX|RX_FSM1|DATA_OK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|DBUFFER|DATAOUT\(1));

-- Location: LCCOMB_X63_Y7_N28
\Practica_RX|DBUFFER|DATAOUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|DBUFFER|DATAOUT[2]~feeder_combout\ = \Practica_RX|SR1|DATA\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Practica_RX|SR1|DATA\(2),
	combout => \Practica_RX|DBUFFER|DATAOUT[2]~feeder_combout\);

-- Location: FF_X63_Y7_N29
\Practica_RX|DBUFFER|DATAOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_RX|DBUFFER|DATAOUT[2]~feeder_combout\,
	ena => \Practica_RX|RX_FSM1|DATA_OK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|DBUFFER|DATAOUT\(2));

-- Location: LCCOMB_X63_Y7_N26
\Practica_RX|DBUFFER|DATAOUT[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|DBUFFER|DATAOUT[3]~feeder_combout\ = \Practica_RX|SR1|DATA\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Practica_RX|SR1|DATA\(3),
	combout => \Practica_RX|DBUFFER|DATAOUT[3]~feeder_combout\);

-- Location: FF_X63_Y7_N27
\Practica_RX|DBUFFER|DATAOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_RX|DBUFFER|DATAOUT[3]~feeder_combout\,
	ena => \Practica_RX|RX_FSM1|DATA_OK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|DBUFFER|DATAOUT\(3));

-- Location: LCCOMB_X63_Y7_N12
\Practica_RX|DBUFFER|DATAOUT[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|DBUFFER|DATAOUT[4]~feeder_combout\ = \Practica_RX|SR1|DATA\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Practica_RX|SR1|DATA\(4),
	combout => \Practica_RX|DBUFFER|DATAOUT[4]~feeder_combout\);

-- Location: FF_X63_Y7_N13
\Practica_RX|DBUFFER|DATAOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_RX|DBUFFER|DATAOUT[4]~feeder_combout\,
	ena => \Practica_RX|RX_FSM1|DATA_OK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|DBUFFER|DATAOUT\(4));

-- Location: LCCOMB_X63_Y7_N10
\Practica_RX|DBUFFER|DATAOUT[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|DBUFFER|DATAOUT[5]~feeder_combout\ = \Practica_RX|SR1|DATA\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Practica_RX|SR1|DATA\(5),
	combout => \Practica_RX|DBUFFER|DATAOUT[5]~feeder_combout\);

-- Location: FF_X63_Y7_N11
\Practica_RX|DBUFFER|DATAOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_RX|DBUFFER|DATAOUT[5]~feeder_combout\,
	ena => \Practica_RX|RX_FSM1|DATA_OK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|DBUFFER|DATAOUT\(5));

-- Location: LCCOMB_X63_Y7_N20
\Practica_RX|DBUFFER|DATAOUT[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|DBUFFER|DATAOUT[6]~feeder_combout\ = \Practica_RX|SR1|DATA\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Practica_RX|SR1|DATA\(6),
	combout => \Practica_RX|DBUFFER|DATAOUT[6]~feeder_combout\);

-- Location: FF_X63_Y7_N21
\Practica_RX|DBUFFER|DATAOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_RX|DBUFFER|DATAOUT[6]~feeder_combout\,
	ena => \Practica_RX|RX_FSM1|DATA_OK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|DBUFFER|DATAOUT\(6));

-- Location: LCCOMB_X63_Y7_N18
\Practica_RX|DBUFFER|DATAOUT[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Practica_RX|DBUFFER|DATAOUT[7]~feeder_combout\ = \Practica_RX|SR1|DATA\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Practica_RX|SR1|DATA\(7),
	combout => \Practica_RX|DBUFFER|DATAOUT[7]~feeder_combout\);

-- Location: FF_X63_Y7_N19
\Practica_RX|DBUFFER|DATAOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Practica_RX|FREQ_SEL|Mux0~clkctrl_outclk\,
	d => \Practica_RX|DBUFFER|DATAOUT[7]~feeder_combout\,
	ena => \Practica_RX|RX_FSM1|DATA_OK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Practica_RX|DBUFFER|DATAOUT\(7));
END structure;


