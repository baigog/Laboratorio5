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

-- DATE "05/22/2016 15:52:02"

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

ENTITY 	RS232_FSM IS
    PORT (
	DATA_READY : IN std_logic;
	SR_DONE : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	BUSY : BUFFER std_logic;
	SHIFT : BUFFER std_logic;
	SS : BUFFER std_logic;
	SEL : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END RS232_FSM;

-- Design Ports Information
-- BUSY	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHIFT	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SS	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_READY	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SR_DONE	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RS232_FSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DATA_READY : std_logic;
SIGNAL ww_SR_DONE : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_BUSY : std_logic;
SIGNAL ww_SHIFT : std_logic;
SIGNAL ww_SS : std_logic;
SIGNAL ww_SEL : std_logic_vector(1 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BUSY~output_o\ : std_logic;
SIGNAL \SHIFT~output_o\ : std_logic;
SIGNAL \SS~output_o\ : std_logic;
SIGNAL \SEL[0]~output_o\ : std_logic;
SIGNAL \SEL[1]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DATA_READY~input_o\ : std_logic;
SIGNAL \SR_DONE~input_o\ : std_logic;
SIGNAL \NS.START~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \CS.START~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \CS.DATA~q\ : std_logic;
SIGNAL \NS.PARITY~0_combout\ : std_logic;
SIGNAL \CS.PARITY~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \CS.IDLE~q\ : std_logic;
SIGNAL \BUSY~reg0feeder_combout\ : std_logic;
SIGNAL \BUSY~reg0_q\ : std_logic;
SIGNAL \SHIFT~reg0feeder_combout\ : std_logic;
SIGNAL \SHIFT~reg0_q\ : std_logic;
SIGNAL \SS~reg0feeder_combout\ : std_logic;
SIGNAL \SS~reg0_q\ : std_logic;
SIGNAL \SEL~0_combout\ : std_logic;
SIGNAL \SEL[0]~reg0_q\ : std_logic;
SIGNAL \SEL[1]~reg0feeder_combout\ : std_logic;
SIGNAL \SEL[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_SS~reg0_q\ : std_logic;

BEGIN

ww_DATA_READY <= DATA_READY;
ww_SR_DONE <= SR_DONE;
ww_CLK <= CLK;
ww_RST <= RST;
BUSY <= ww_BUSY;
SHIFT <= ww_SHIFT;
SS <= ww_SS;
SEL <= ww_SEL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;
\ALT_INV_SS~reg0_q\ <= NOT \SS~reg0_q\;

-- Location: IOOBUF_X9_Y73_N2
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

-- Location: IOOBUF_X9_Y73_N9
\SHIFT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SHIFT~reg0_q\,
	devoe => ww_devoe,
	o => \SHIFT~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\SS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SS~reg0_q\,
	devoe => ww_devoe,
	o => \SS~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\SEL[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEL[0]~reg0_q\,
	devoe => ww_devoe,
	o => \SEL[0]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\SEL[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEL[1]~reg0_q\,
	devoe => ww_devoe,
	o => \SEL[1]~output_o\);

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

-- Location: IOIBUF_X11_Y73_N8
\DATA_READY~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_READY,
	o => \DATA_READY~input_o\);

-- Location: IOIBUF_X11_Y73_N1
\SR_DONE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SR_DONE,
	o => \SR_DONE~input_o\);

-- Location: LCCOMB_X11_Y72_N18
\NS.START~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS.START~0_combout\ = (\DATA_READY~input_o\ & !\CS.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATA_READY~input_o\,
	datad => \CS.IDLE~q\,
	combout => \NS.START~0_combout\);

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

-- Location: FF_X11_Y72_N19
\CS.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \NS.START~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CS.START~q\);

-- Location: LCCOMB_X11_Y72_N12
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\CS.START~q\) # ((!\SR_DONE~input_o\ & \CS.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SR_DONE~input_o\,
	datac => \CS.DATA~q\,
	datad => \CS.START~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X11_Y72_N13
\CS.DATA\ : dffeas
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
	q => \CS.DATA~q\);

-- Location: LCCOMB_X11_Y72_N24
\NS.PARITY~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS.PARITY~0_combout\ = (\SR_DONE~input_o\ & \CS.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SR_DONE~input_o\,
	datad => \CS.DATA~q\,
	combout => \NS.PARITY~0_combout\);

-- Location: FF_X11_Y72_N25
\CS.PARITY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \NS.PARITY~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CS.PARITY~q\);

-- Location: LCCOMB_X11_Y72_N10
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\CS.PARITY~q\ & ((\DATA_READY~input_o\) # (\CS.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_READY~input_o\,
	datac => \CS.IDLE~q\,
	datad => \CS.PARITY~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X11_Y72_N11
\CS.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CS.IDLE~q\);

-- Location: LCCOMB_X11_Y72_N16
\BUSY~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUSY~reg0feeder_combout\ = \CS.IDLE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CS.IDLE~q\,
	combout => \BUSY~reg0feeder_combout\);

-- Location: FF_X11_Y72_N17
\BUSY~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \BUSY~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUSY~reg0_q\);

-- Location: LCCOMB_X11_Y72_N30
\SHIFT~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SHIFT~reg0feeder_combout\ = \CS.DATA~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CS.DATA~q\,
	combout => \SHIFT~reg0feeder_combout\);

-- Location: FF_X11_Y72_N31
\SHIFT~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SHIFT~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SHIFT~reg0_q\);

-- Location: LCCOMB_X11_Y72_N8
\SS~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SS~reg0feeder_combout\ = \CS.START~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CS.START~q\,
	combout => \SS~reg0feeder_combout\);

-- Location: FF_X11_Y72_N9
\SS~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SS~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SS~reg0_q\);

-- Location: LCCOMB_X11_Y72_N6
\SEL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEL~0_combout\ = (\CS.PARITY~q\) # (\CS.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CS.PARITY~q\,
	datad => \CS.DATA~q\,
	combout => \SEL~0_combout\);

-- Location: FF_X11_Y72_N7
\SEL[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SEL~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEL[0]~reg0_q\);

-- Location: LCCOMB_X11_Y72_N28
\SEL[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEL[1]~reg0feeder_combout\ = \CS.PARITY~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CS.PARITY~q\,
	combout => \SEL[1]~reg0feeder_combout\);

-- Location: FF_X11_Y72_N29
\SEL[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SEL[1]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEL[1]~reg0_q\);

ww_BUSY <= \BUSY~output_o\;

ww_SHIFT <= \SHIFT~output_o\;

ww_SS <= \SS~output_o\;

ww_SEL(0) <= \SEL[0]~output_o\;

ww_SEL(1) <= \SEL[1]~output_o\;
END structure;


