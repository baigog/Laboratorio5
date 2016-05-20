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

-- DATE "05/19/2016 18:24:51"

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

ENTITY 	LCD_CONTR IS
    PORT (
	CLK : IN std_logic;
	DATAIN : IN std_logic_vector(7 DOWNTO 0);
	INIT : IN std_logic;
	SMODE : IN std_logic;
	DCTRL : IN std_logic;
	CLR : IN std_logic;
	DATAWR : IN std_logic;
	RST : IN std_logic;
	EN : BUFFER std_logic;
	RWOUT : BUFFER std_logic;
	RS : BUFFER std_logic;
	LCD_ON : BUFFER std_logic;
	BL_ON : BUFFER std_logic;
	BUSY : BUFFER std_logic;
	DATA : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END LCD_CONTR;

-- Design Ports Information
-- EN	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RWOUT	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_ON	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BL_ON	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUSY	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[1]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[3]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[4]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[5]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[6]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[7]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATAWR	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SMODE	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INIT	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DCTRL	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATAIN[0]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATAIN[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATAIN[2]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATAIN[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATAIN[4]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATAIN[5]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATAIN[6]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATAIN[7]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LCD_CONTR IS
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
SIGNAL ww_DATAIN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_INIT : std_logic;
SIGNAL ww_SMODE : std_logic;
SIGNAL ww_DCTRL : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_DATAWR : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_RWOUT : std_logic;
SIGNAL ww_RS : std_logic;
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_BL_ON : std_logic;
SIGNAL ww_BUSY : std_logic;
SIGNAL ww_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATA[0]~input_o\ : std_logic;
SIGNAL \DATA[1]~input_o\ : std_logic;
SIGNAL \DATA[2]~input_o\ : std_logic;
SIGNAL \DATA[3]~input_o\ : std_logic;
SIGNAL \DATA[4]~input_o\ : std_logic;
SIGNAL \DATA[5]~input_o\ : std_logic;
SIGNAL \DATA[6]~input_o\ : std_logic;
SIGNAL \DATA[0]~output_o\ : std_logic;
SIGNAL \DATA[1]~output_o\ : std_logic;
SIGNAL \DATA[2]~output_o\ : std_logic;
SIGNAL \DATA[3]~output_o\ : std_logic;
SIGNAL \DATA[4]~output_o\ : std_logic;
SIGNAL \DATA[5]~output_o\ : std_logic;
SIGNAL \DATA[6]~output_o\ : std_logic;
SIGNAL \DATA[7]~output_o\ : std_logic;
SIGNAL \EN~output_o\ : std_logic;
SIGNAL \RWOUT~output_o\ : std_logic;
SIGNAL \RS~output_o\ : std_logic;
SIGNAL \LCD_ON~output_o\ : std_logic;
SIGNAL \BL_ON~output_o\ : std_logic;
SIGNAL \BUSY~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DATAIN[0]~input_o\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \DCTRL~input_o\ : std_logic;
SIGNAL \DATAWR~input_o\ : std_logic;
SIGNAL \INIT~input_o\ : std_logic;
SIGNAL \DATA[7]~input_o\ : std_logic;
SIGNAL \NS.DISPLAYCTRL~1_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \CS.DISPLAYCTRL~q\ : std_logic;
SIGNAL \SMODE~input_o\ : std_logic;
SIGNAL \NS.SETMODE~0_combout\ : std_logic;
SIGNAL \CS.SETMODE~q\ : std_logic;
SIGNAL \NS.DATAWRITE~0_combout\ : std_logic;
SIGNAL \CS.DATAWRITE~q\ : std_logic;
SIGNAL \DATAOUT[4]~0_combout\ : std_logic;
SIGNAL \NS.INITI~0_combout\ : std_logic;
SIGNAL \CS.INITI~feeder_combout\ : std_logic;
SIGNAL \CS.INITI~q\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \CS.ENHIGHWR~q\ : std_logic;
SIGNAL \CS.ENLOWWR~q\ : std_logic;
SIGNAL \CS.DATAREAD~0_combout\ : std_logic;
SIGNAL \CS.DATAREAD~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \CS.ENHIGHRD~q\ : std_logic;
SIGNAL \CS.ENLOWRD~feeder_combout\ : std_logic;
SIGNAL \CS.ENLOWRD~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \CS.IDLE~q\ : std_logic;
SIGNAL \NS.DISPLAYCTRL~0_combout\ : std_logic;
SIGNAL \NS.CLEAR~0_combout\ : std_logic;
SIGNAL \CS.CLEAR~q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \RW~q\ : std_logic;
SIGNAL \DATAIN[1]~input_o\ : std_logic;
SIGNAL \DATAOUT[1]~1_combout\ : std_logic;
SIGNAL \DATAOUT[2]~2_combout\ : std_logic;
SIGNAL \DATAIN[2]~input_o\ : std_logic;
SIGNAL \DATAOUT[2]~3_combout\ : std_logic;
SIGNAL \DATAIN[3]~input_o\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \DATAIN[4]~input_o\ : std_logic;
SIGNAL \DATAOUT[4]~4_combout\ : std_logic;
SIGNAL \DATAIN[5]~input_o\ : std_logic;
SIGNAL \DATAOUT[5]~5_combout\ : std_logic;
SIGNAL \DATAIN[6]~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \DATAIN[7]~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \EN~0_combout\ : std_logic;
SIGNAL \EN~reg0_q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \RS~reg0_q\ : std_logic;
SIGNAL \BUSY~0_combout\ : std_logic;
SIGNAL \BUSY~reg0_q\ : std_logic;
SIGNAL DATAOUT : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_RST~input_o\ : std_logic;
SIGNAL \ALT_INV_RW~q\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_DATAIN <= DATAIN;
ww_INIT <= INIT;
ww_SMODE <= SMODE;
ww_DCTRL <= DCTRL;
ww_CLR <= CLR;
ww_DATAWR <= DATAWR;
ww_RST <= RST;
EN <= ww_EN;
RWOUT <= ww_RWOUT;
RS <= ww_RS;
LCD_ON <= ww_LCD_ON;
BL_ON <= ww_BL_ON;
BUSY <= ww_BUSY;
DATA <= ww_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;
\ALT_INV_RW~q\ <= NOT \RW~q\;

-- Location: IOOBUF_X0_Y55_N16
\DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DATAOUT(0),
	oe => \RW~q\,
	devoe => ww_devoe,
	o => \DATA[0]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DATAOUT(1),
	oe => \RW~q\,
	devoe => ww_devoe,
	o => \DATA[1]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DATAOUT(2),
	oe => \RW~q\,
	devoe => ww_devoe,
	o => \DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DATAOUT(3),
	oe => \RW~q\,
	devoe => ww_devoe,
	o => \DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DATAOUT(4),
	oe => \RW~q\,
	devoe => ww_devoe,
	o => \DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DATAOUT(5),
	oe => \RW~q\,
	devoe => ww_devoe,
	o => \DATA[5]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DATAOUT(6),
	oe => \RW~q\,
	devoe => ww_devoe,
	o => \DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DATAOUT(7),
	oe => \RW~q\,
	devoe => ww_devoe,
	o => \DATA[7]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EN~reg0_q\,
	devoe => ww_devoe,
	o => \EN~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\RWOUT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_RW~q\,
	devoe => ww_devoe,
	o => \RWOUT~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RS~reg0_q\,
	devoe => ww_devoe,
	o => \RS~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\LCD_ON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_ON~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\BL_ON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \BL_ON~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\BUSY~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUSY~reg0_q\,
	devoe => ww_devoe,
	o => \BUSY~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: IOIBUF_X0_Y50_N22
\DATAIN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(0),
	o => \DATAIN[0]~input_o\);

-- Location: IOIBUF_X0_Y48_N1
\CLR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\DCTRL~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DCTRL,
	o => \DCTRL~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\DATAWR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAWR,
	o => \DATAWR~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\INIT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INIT,
	o => \INIT~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(7),
	o => \DATA[7]~input_o\);

-- Location: LCCOMB_X1_Y51_N22
\NS.DISPLAYCTRL~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS.DISPLAYCTRL~1_combout\ = (\DCTRL~input_o\ & \NS.DISPLAYCTRL~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DCTRL~input_o\,
	datad => \NS.DISPLAYCTRL~0_combout\,
	combout => \NS.DISPLAYCTRL~1_combout\);

-- Location: IOIBUF_X0_Y36_N15
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G4
\RST~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: FF_X1_Y51_N23
\CS.DISPLAYCTRL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \NS.DISPLAYCTRL~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CS.DISPLAYCTRL~q\);

-- Location: IOIBUF_X0_Y57_N15
\SMODE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SMODE,
	o => \SMODE~input_o\);

-- Location: LCCOMB_X1_Y51_N16
\NS.SETMODE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS.SETMODE~0_combout\ = (!\DATAWR~input_o\ & (!\INIT~input_o\ & (\CS.IDLE~q\ & \SMODE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAWR~input_o\,
	datab => \INIT~input_o\,
	datac => \CS.IDLE~q\,
	datad => \SMODE~input_o\,
	combout => \NS.SETMODE~0_combout\);

-- Location: FF_X1_Y51_N17
\CS.SETMODE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \NS.SETMODE~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CS.SETMODE~q\);

-- Location: LCCOMB_X1_Y51_N28
\NS.DATAWRITE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS.DATAWRITE~0_combout\ = (\CS.IDLE~q\ & \DATAWR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CS.IDLE~q\,
	datac => \DATAWR~input_o\,
	combout => \NS.DATAWRITE~0_combout\);

-- Location: FF_X1_Y51_N29
\CS.DATAWRITE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \NS.DATAWRITE~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CS.DATAWRITE~q\);

-- Location: LCCOMB_X1_Y51_N14
\DATAOUT[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAOUT[4]~0_combout\ = (!\CS.DISPLAYCTRL~q\ & (!\CS.SETMODE~q\ & (!\CS.CLEAR~q\ & !\CS.DATAWRITE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CS.DISPLAYCTRL~q\,
	datab => \CS.SETMODE~q\,
	datac => \CS.CLEAR~q\,
	datad => \CS.DATAWRITE~q\,
	combout => \DATAOUT[4]~0_combout\);

-- Location: LCCOMB_X1_Y51_N24
\NS.INITI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS.INITI~0_combout\ = (!\DATAWR~input_o\ & (\INIT~input_o\ & \CS.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAWR~input_o\,
	datab => \INIT~input_o\,
	datac => \CS.IDLE~q\,
	combout => \NS.INITI~0_combout\);

-- Location: LCCOMB_X2_Y51_N6
\CS.INITI~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CS.INITI~feeder_combout\ = \NS.INITI~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \NS.INITI~0_combout\,
	combout => \CS.INITI~feeder_combout\);

-- Location: FF_X2_Y51_N7
\CS.INITI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CS.INITI~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CS.INITI~q\);

-- Location: LCCOMB_X1_Y51_N4
WideOr1 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (\CS.INITI~q\) # (!\DATAOUT[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAOUT[4]~0_combout\,
	datad => \CS.INITI~q\,
	combout => \WideOr1~combout\);

-- Location: FF_X1_Y51_N7
\CS.ENHIGHWR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WideOr1~combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CS.ENHIGHWR~q\);

-- Location: FF_X2_Y51_N9
\CS.ENLOWWR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \CS.ENHIGHWR~q\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CS.ENLOWWR~q\);

-- Location: LCCOMB_X2_Y51_N10
\CS.DATAREAD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CS.DATAREAD~0_combout\ = !\CS.ENLOWWR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CS.ENLOWWR~q\,
	combout => \CS.DATAREAD~0_combout\);

-- Location: FF_X2_Y51_N11
\CS.DATAREAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CS.DATAREAD~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CS.DATAREAD~q\);

-- Location: LCCOMB_X2_Y51_N22
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ((\CS.ENLOWRD~q\ & \DATA[7]~input_o\)) # (!\CS.DATAREAD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CS.ENLOWRD~q\,
	datac => \DATA[7]~input_o\,
	datad => \CS.DATAREAD~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X2_Y51_N23
\CS.ENHIGHRD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CS.ENHIGHRD~q\);

-- Location: LCCOMB_X2_Y51_N12
\CS.ENLOWRD~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CS.ENLOWRD~feeder_combout\ = \CS.ENHIGHRD~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CS.ENHIGHRD~q\,
	combout => \CS.ENLOWRD~feeder_combout\);

-- Location: FF_X2_Y51_N13
\CS.ENLOWRD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CS.ENLOWRD~feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CS.ENLOWRD~q\);

-- Location: LCCOMB_X2_Y51_N4
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\DATA[7]~input_o\ & \CS.ENLOWRD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATA[7]~input_o\,
	datad => \CS.ENLOWRD~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X1_Y51_N26
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\) # ((!\CLR~input_o\ & (\NS.DISPLAYCTRL~0_combout\ & !\DCTRL~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datab => \NS.DISPLAYCTRL~0_combout\,
	datac => \DCTRL~input_o\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X1_Y51_N27
\CS.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CS.IDLE~q\);

-- Location: LCCOMB_X1_Y51_N2
\NS.DISPLAYCTRL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS.DISPLAYCTRL~0_combout\ = (!\DATAWR~input_o\ & (!\INIT~input_o\ & (\CS.IDLE~q\ & !\SMODE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAWR~input_o\,
	datab => \INIT~input_o\,
	datac => \CS.IDLE~q\,
	datad => \SMODE~input_o\,
	combout => \NS.DISPLAYCTRL~0_combout\);

-- Location: LCCOMB_X1_Y51_N8
\NS.CLEAR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS.CLEAR~0_combout\ = (\CLR~input_o\ & (!\DCTRL~input_o\ & \NS.DISPLAYCTRL~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datac => \DCTRL~input_o\,
	datad => \NS.DISPLAYCTRL~0_combout\,
	combout => \NS.CLEAR~0_combout\);

-- Location: FF_X1_Y51_N9
\CS.CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \NS.CLEAR~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CS.CLEAR~q\);

-- Location: LCCOMB_X1_Y51_N6
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\CS.CLEAR~q\) # ((\DATAIN[0]~input_o\ & \CS.DATAWRITE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAIN[0]~input_o\,
	datab => \CS.CLEAR~q\,
	datad => \CS.DATAWRITE~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X1_Y51_N12
\Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\Selector10~0_combout\) # ((\DATAOUT[4]~0_combout\ & (DATAOUT(0) & !\CS.INITI~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => \DATAOUT[4]~0_combout\,
	datac => DATAOUT(0),
	datad => \CS.INITI~q\,
	combout => \Selector10~1_combout\);

-- Location: FF_X1_Y51_N13
\DATAOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector10~1_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATAOUT(0));

-- Location: LCCOMB_X2_Y51_N30
\WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = (!\CS.ENLOWRD~q\ & (!\CS.ENHIGHRD~q\ & \CS.DATAREAD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CS.ENLOWRD~q\,
	datac => \CS.ENHIGHRD~q\,
	datad => \CS.DATAREAD~q\,
	combout => \WideOr9~0_combout\);

-- Location: FF_X2_Y51_N31
RW : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \WideOr9~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~q\);

-- Location: IOIBUF_X0_Y44_N15
\DATAIN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(1),
	o => \DATAIN[1]~input_o\);

-- Location: LCCOMB_X2_Y51_N18
\DATAOUT[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAOUT[1]~1_combout\ = (\CS.DATAWRITE~q\ & (((\DATAIN[1]~input_o\)))) # (!\CS.DATAWRITE~q\ & ((\CS.SETMODE~q\) # ((\CS.DISPLAYCTRL~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CS.SETMODE~q\,
	datab => \DATAIN[1]~input_o\,
	datac => \CS.DATAWRITE~q\,
	datad => \CS.DISPLAYCTRL~q\,
	combout => \DATAOUT[1]~1_combout\);

-- Location: LCCOMB_X2_Y51_N2
\DATAOUT[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAOUT[2]~2_combout\ = (!\RST~input_o\ & ((\CS.INITI~q\) # (!\DATAOUT[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CS.INITI~q\,
	datac => \RST~input_o\,
	datad => \DATAOUT[4]~0_combout\,
	combout => \DATAOUT[2]~2_combout\);

-- Location: FF_X2_Y51_N19
\DATAOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DATAOUT[1]~1_combout\,
	ena => \DATAOUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATAOUT(1));

-- Location: IOIBUF_X0_Y58_N15
\DATAIN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(2),
	o => \DATAIN[2]~input_o\);

-- Location: LCCOMB_X2_Y51_N0
\DATAOUT[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAOUT[2]~3_combout\ = (\CS.DATAWRITE~q\ & (((\DATAIN[2]~input_o\)))) # (!\CS.DATAWRITE~q\ & ((\CS.SETMODE~q\) # ((\CS.DISPLAYCTRL~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CS.SETMODE~q\,
	datab => \DATAIN[2]~input_o\,
	datac => \CS.DATAWRITE~q\,
	datad => \CS.DISPLAYCTRL~q\,
	combout => \DATAOUT[2]~3_combout\);

-- Location: FF_X2_Y51_N1
\DATAOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DATAOUT[2]~3_combout\,
	ena => \DATAOUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATAOUT(2));

-- Location: IOIBUF_X0_Y48_N8
\DATAIN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(3),
	o => \DATAIN[3]~input_o\);

-- Location: LCCOMB_X1_Y51_N18
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\CS.DISPLAYCTRL~q\) # ((\CS.INITI~q\) # ((\CS.DATAWRITE~q\ & \DATAIN[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CS.DISPLAYCTRL~q\,
	datab => \CS.DATAWRITE~q\,
	datac => \DATAIN[3]~input_o\,
	datad => \CS.INITI~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X1_Y51_N10
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector7~0_combout\) # ((!\CS.INITI~q\ & (\DATAOUT[4]~0_combout\ & DATAOUT(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CS.INITI~q\,
	datab => \DATAOUT[4]~0_combout\,
	datac => DATAOUT(3),
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: FF_X1_Y51_N11
\DATAOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector7~1_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATAOUT(3));

-- Location: IOIBUF_X0_Y49_N1
\DATAIN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(4),
	o => \DATAIN[4]~input_o\);

-- Location: LCCOMB_X2_Y51_N14
\DATAOUT[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAOUT[4]~4_combout\ = (\DATAOUT[4]~0_combout\) # ((\DATAIN[4]~input_o\ & \CS.DATAWRITE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAIN[4]~input_o\,
	datac => \CS.DATAWRITE~q\,
	datad => \DATAOUT[4]~0_combout\,
	combout => \DATAOUT[4]~4_combout\);

-- Location: FF_X2_Y51_N15
\DATAOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DATAOUT[4]~4_combout\,
	ena => \DATAOUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATAOUT(4));

-- Location: IOIBUF_X0_Y46_N15
\DATAIN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(5),
	o => \DATAIN[5]~input_o\);

-- Location: LCCOMB_X2_Y51_N16
\DATAOUT[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAOUT[5]~5_combout\ = (\DATAOUT[4]~0_combout\) # ((\DATAIN[5]~input_o\ & \CS.DATAWRITE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAIN[5]~input_o\,
	datac => \CS.DATAWRITE~q\,
	datad => \DATAOUT[4]~0_combout\,
	combout => \DATAOUT[5]~5_combout\);

-- Location: FF_X2_Y51_N17
\DATAOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DATAOUT[5]~5_combout\,
	ena => \DATAOUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATAOUT(5));

-- Location: IOIBUF_X0_Y50_N15
\DATAIN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(6),
	o => \DATAIN[6]~input_o\);

-- Location: LCCOMB_X1_Y51_N0
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\DATAIN[6]~input_o\ & ((\CS.DATAWRITE~q\) # ((!\WideOr1~combout\ & DATAOUT(6))))) # (!\DATAIN[6]~input_o\ & (!\WideOr1~combout\ & (DATAOUT(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAIN[6]~input_o\,
	datab => \WideOr1~combout\,
	datac => DATAOUT(6),
	datad => \CS.DATAWRITE~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X1_Y51_N1
\DATAOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATAOUT(6));

-- Location: IOIBUF_X0_Y49_N8
\DATAIN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATAIN(7),
	o => \DATAIN[7]~input_o\);

-- Location: LCCOMB_X1_Y51_N30
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\DATAIN[7]~input_o\ & ((\CS.DATAWRITE~q\) # ((!\WideOr1~combout\ & DATAOUT(7))))) # (!\DATAIN[7]~input_o\ & (!\WideOr1~combout\ & (DATAOUT(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAIN[7]~input_o\,
	datab => \WideOr1~combout\,
	datac => DATAOUT(7),
	datad => \CS.DATAWRITE~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X1_Y51_N31
\DATAOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATAOUT(7));

-- Location: LCCOMB_X2_Y51_N20
\EN~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \EN~0_combout\ = (\CS.ENHIGHRD~q\) # (\CS.ENHIGHWR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CS.ENHIGHRD~q\,
	datac => \CS.ENHIGHWR~q\,
	combout => \EN~0_combout\);

-- Location: FF_X2_Y51_N21
\EN~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \EN~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EN~reg0_q\);

-- Location: LCCOMB_X2_Y51_N8
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\CS.ENLOWWR~q\) # (\CS.ENLOWRD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CS.ENLOWWR~q\,
	datad => \CS.ENLOWRD~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X2_Y51_N28
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\CS.DATAWRITE~q\) # ((\RS~reg0_q\ & ((\Selector2~0_combout\) # (\EN~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CS.DATAWRITE~q\,
	datab => \Selector2~0_combout\,
	datac => \RS~reg0_q\,
	datad => \EN~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X2_Y51_N29
\RS~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RS~reg0_q\);

-- Location: LCCOMB_X1_Y51_N20
\BUSY~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUSY~0_combout\ = !\CS.IDLE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CS.IDLE~q\,
	combout => \BUSY~0_combout\);

-- Location: FF_X1_Y51_N21
\BUSY~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \BUSY~0_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUSY~reg0_q\);

-- Location: IOIBUF_X0_Y55_N15
\DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(0),
	o => \DATA[0]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(1),
	o => \DATA[1]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(2),
	o => \DATA[2]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(3),
	o => \DATA[3]~input_o\);

-- Location: IOIBUF_X0_Y53_N1
\DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(4),
	o => \DATA[4]~input_o\);

-- Location: IOIBUF_X0_Y52_N1
\DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(5),
	o => \DATA[5]~input_o\);

-- Location: IOIBUF_X0_Y55_N8
\DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA(6),
	o => \DATA[6]~input_o\);

ww_EN <= \EN~output_o\;

ww_RWOUT <= \RWOUT~output_o\;

ww_RS <= \RS~output_o\;

ww_LCD_ON <= \LCD_ON~output_o\;

ww_BL_ON <= \BL_ON~output_o\;

ww_BUSY <= \BUSY~output_o\;

DATA(0) <= \DATA[0]~output_o\;

DATA(1) <= \DATA[1]~output_o\;

DATA(2) <= \DATA[2]~output_o\;

DATA(3) <= \DATA[3]~output_o\;

DATA(4) <= \DATA[4]~output_o\;

DATA(5) <= \DATA[5]~output_o\;

DATA(6) <= \DATA[6]~output_o\;

DATA(7) <= \DATA[7]~output_o\;
END structure;


