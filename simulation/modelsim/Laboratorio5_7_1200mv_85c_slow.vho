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

-- DATE "05/27/2016 11:17:48"

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

ENTITY 	Mem_fsm IS
    PORT (
	Clk : IN std_logic;
	botones : IN std_logic_vector(3 DOWNTO 0);
	switch : IN std_logic;
	Rst : IN std_logic;
	RS_READY : IN std_logic;
	address : BUFFER std_logic_vector(7 DOWNTO 0);
	data_ready : BUFFER std_logic;
	RE : BUFFER std_logic;
	busy : BUFFER std_logic
	);
END Mem_fsm;

-- Design Ports Information
-- address[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_ready	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RE	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busy	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_READY	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Mem_fsm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_botones : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_switch : std_logic;
SIGNAL ww_Rst : std_logic;
SIGNAL ww_RS_READY : std_logic;
SIGNAL ww_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_ready : std_logic;
SIGNAL ww_RE : std_logic;
SIGNAL ww_busy : std_logic;
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr5~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ultimo[6]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \address[0]~output_o\ : std_logic;
SIGNAL \address[1]~output_o\ : std_logic;
SIGNAL \address[2]~output_o\ : std_logic;
SIGNAL \address[3]~output_o\ : std_logic;
SIGNAL \address[4]~output_o\ : std_logic;
SIGNAL \address[5]~output_o\ : std_logic;
SIGNAL \address[6]~output_o\ : std_logic;
SIGNAL \address[7]~output_o\ : std_logic;
SIGNAL \data_ready~output_o\ : std_logic;
SIGNAL \RE~output_o\ : std_logic;
SIGNAL \busy~output_o\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \botones[2]~input_o\ : std_logic;
SIGNAL \botones[3]~input_o\ : std_logic;
SIGNAL \botones[1]~input_o\ : std_logic;
SIGNAL \botones[0]~input_o\ : std_logic;
SIGNAL \switch~input_o\ : std_logic;
SIGNAL \RS_READY~input_o\ : std_logic;
SIGNAL \next_state.INIT0~0_combout\ : std_logic;
SIGNAL \next_state.INIT0~1_combout\ : std_logic;
SIGNAL \Rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.INIT0~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \next_state.INIT4~0_combout\ : std_logic;
SIGNAL \current_state.INIT4~q\ : std_logic;
SIGNAL \next_state.INIT3~1_combout\ : std_logic;
SIGNAL \current_state.INIT3~q\ : std_logic;
SIGNAL \next_state.INIT1~0_combout\ : std_logic;
SIGNAL \next_state.INIT1~1_combout\ : std_logic;
SIGNAL \current_state.INIT1~feeder_combout\ : std_logic;
SIGNAL \current_state.INIT1~q\ : std_logic;
SIGNAL \WideOr12~0_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr5~0clkctrl_outclk\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \ultimo[6]~0_combout\ : std_logic;
SIGNAL \ultimo[6]~1_combout\ : std_logic;
SIGNAL \ultimo[6]~1clkctrl_outclk\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \direccion~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \WideOr12~1_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \current_state.ACTUAL~q\ : std_logic;
SIGNAL \current_state.NEXT_DATA~feeder_combout\ : std_logic;
SIGNAL \current_state.NEXT_DATA~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \current_state.ESPERA~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \current_state.LLAVE~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \current_state.IDLE~q\ : std_logic;
SIGNAL \next_state.INIT3~0_combout\ : std_logic;
SIGNAL \next_state.INIT2~0_combout\ : std_logic;
SIGNAL \current_state.INIT2~q\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \data_ready~0_combout\ : std_logic;
SIGNAL \busy~0_combout\ : std_logic;
SIGNAL direccion : std_logic_vector(7 DOWNTO 0);
SIGNAL ultimo : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_botones <= botones;
ww_switch <= switch;
ww_Rst <= Rst;
ww_RS_READY <= RS_READY;
address <= ww_address;
data_ready <= ww_data_ready;
RE <= ww_RE;
busy <= ww_busy;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);

\WideOr5~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \WideOr5~0_combout\);

\ultimo[6]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ultimo[6]~1_combout\);

\Rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Rst~input_o\);
\ALT_INV_Rst~inputclkctrl_outclk\ <= NOT \Rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X115_Y36_N16
\address[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => direccion(0),
	devoe => ww_devoe,
	o => \address[0]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\address[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => direccion(1),
	devoe => ww_devoe,
	o => \address[1]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\address[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => direccion(2),
	devoe => ww_devoe,
	o => \address[2]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\address[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => direccion(3),
	devoe => ww_devoe,
	o => \address[3]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\address[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => direccion(4),
	devoe => ww_devoe,
	o => \address[4]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\address[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => direccion(5),
	devoe => ww_devoe,
	o => \address[5]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\address[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => direccion(6),
	devoe => ww_devoe,
	o => \address[6]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\address[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => direccion(7),
	devoe => ww_devoe,
	o => \address[7]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\data_ready~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_ready~0_combout\,
	devoe => ww_devoe,
	o => \data_ready~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\RE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ultimo[6]~0_combout\,
	devoe => ww_devoe,
	o => \RE~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\busy~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \busy~0_combout\,
	devoe => ww_devoe,
	o => \busy~output_o\);

-- Location: IOIBUF_X115_Y37_N15
\Rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst,
	o => \Rst~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G4
\Clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y42_N15
\botones[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones(2),
	o => \botones[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\botones[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones(3),
	o => \botones[3]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\botones[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones(1),
	o => \botones[1]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\botones[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones(0),
	o => \botones[0]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\switch~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch,
	o => \switch~input_o\);

-- Location: IOIBUF_X115_Y33_N1
\RS_READY~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_READY,
	o => \RS_READY~input_o\);

-- Location: LCCOMB_X114_Y37_N18
\next_state.INIT0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.INIT0~0_combout\ = (!\botones[2]~input_o\ & (!\botones[3]~input_o\ & !\current_state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones[2]~input_o\,
	datab => \botones[3]~input_o\,
	datad => \current_state.IDLE~q\,
	combout => \next_state.INIT0~0_combout\);

-- Location: LCCOMB_X114_Y37_N30
\next_state.INIT0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.INIT0~1_combout\ = (!\botones[1]~input_o\ & (\botones[0]~input_o\ & \next_state.INIT0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones[1]~input_o\,
	datac => \botones[0]~input_o\,
	datad => \next_state.INIT0~0_combout\,
	combout => \next_state.INIT0~1_combout\);

-- Location: CLKCTRL_G9
\Rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Rst~inputclkctrl_outclk\);

-- Location: FF_X114_Y37_N27
\current_state.INIT0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \next_state.INIT0~1_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.INIT0~q\);

-- Location: LCCOMB_X114_Y37_N2
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\botones[2]~input_o\ & (!\botones[0]~input_o\ & (!\botones[3]~input_o\ & !\botones[1]~input_o\))) # (!\botones[2]~input_o\ & ((\botones[0]~input_o\ & (!\botones[3]~input_o\ & !\botones[1]~input_o\)) # (!\botones[0]~input_o\ & 
-- (\botones[3]~input_o\ $ (\botones[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones[2]~input_o\,
	datab => \botones[0]~input_o\,
	datac => \botones[3]~input_o\,
	datad => \botones[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X114_Y37_N4
\next_state.INIT4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.INIT4~0_combout\ = (!\Mux0~0_combout\ & (\switch~input_o\ & !\current_state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datac => \switch~input_o\,
	datad => \current_state.IDLE~q\,
	combout => \next_state.INIT4~0_combout\);

-- Location: FF_X114_Y37_N19
\current_state.INIT4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \next_state.INIT4~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.INIT4~q\);

-- Location: LCCOMB_X114_Y37_N14
\next_state.INIT3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.INIT3~1_combout\ = (!\botones[2]~input_o\ & (\botones[3]~input_o\ & \next_state.INIT3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones[2]~input_o\,
	datac => \botones[3]~input_o\,
	datad => \next_state.INIT3~0_combout\,
	combout => \next_state.INIT3~1_combout\);

-- Location: FF_X114_Y37_N9
\current_state.INIT3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \next_state.INIT3~1_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.INIT3~q\);

-- Location: LCCOMB_X114_Y37_N10
\next_state.INIT1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.INIT1~0_combout\ = (!\botones[2]~input_o\ & !\botones[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones[2]~input_o\,
	datac => \botones[3]~input_o\,
	combout => \next_state.INIT1~0_combout\);

-- Location: LCCOMB_X114_Y37_N16
\next_state.INIT1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.INIT1~1_combout\ = (\botones[1]~input_o\ & (\next_state.INIT1~0_combout\ & (!\botones[0]~input_o\ & !\current_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones[1]~input_o\,
	datab => \next_state.INIT1~0_combout\,
	datac => \botones[0]~input_o\,
	datad => \current_state.IDLE~q\,
	combout => \next_state.INIT1~1_combout\);

-- Location: LCCOMB_X114_Y37_N22
\current_state.INIT1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state.INIT1~feeder_combout\ = \next_state.INIT1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \next_state.INIT1~1_combout\,
	combout => \current_state.INIT1~feeder_combout\);

-- Location: FF_X114_Y37_N23
\current_state.INIT1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \current_state.INIT1~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.INIT1~q\);

-- Location: LCCOMB_X114_Y37_N20
\WideOr12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr12~0_combout\ = (!\current_state.INIT4~q\ & (!\current_state.INIT3~q\ & (!\current_state.INIT2~q\ & !\current_state.INIT1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.INIT4~q\,
	datab => \current_state.INIT3~q\,
	datac => \current_state.INIT2~q\,
	datad => \current_state.INIT1~q\,
	combout => \WideOr12~0_combout\);

-- Location: LCCOMB_X114_Y37_N12
\WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (!\current_state.ACTUAL~q\ & (\current_state.IDLE~q\ & !\current_state.ESPERA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.ACTUAL~q\,
	datac => \current_state.IDLE~q\,
	datad => \current_state.ESPERA~q\,
	combout => \WideOr5~0_combout\);

-- Location: CLKCTRL_G8
\WideOr5~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr5~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr5~0clkctrl_outclk\);

-- Location: LCCOMB_X111_Y37_N8
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = direccion(0) $ (VCC)
-- \Add0~3\ = CARRY(direccion(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => direccion(0),
	datad => VCC,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X111_Y37_N10
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (direccion(1) & (!\Add0~3\)) # (!direccion(1) & ((\Add0~3\) # (GND)))
-- \Add0~5\ = CARRY((!\Add0~3\) # (!direccion(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => direccion(1),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X112_Y37_N30
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\current_state.NEXT_DATA~q\ & (\Add0~4_combout\)) # (!\current_state.NEXT_DATA~q\ & (((\current_state.INIT1~q\) # (\current_state.INIT3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \current_state.INIT1~q\,
	datac => \current_state.INIT3~q\,
	datad => \current_state.NEXT_DATA~q\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X112_Y37_N16
\direccion[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- direccion(1) = (!\Rst~input_o\ & ((GLOBAL(\WideOr5~0clkctrl_outclk\) & ((\Add0~6_combout\))) # (!GLOBAL(\WideOr5~0clkctrl_outclk\) & (direccion(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => direccion(1),
	datac => \Add0~6_combout\,
	datad => \WideOr5~0clkctrl_outclk\,
	combout => direccion(1));

-- Location: LCCOMB_X111_Y37_N12
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (direccion(2) & (\Add0~5\ $ (GND))) # (!direccion(2) & (!\Add0~5\ & VCC))
-- \Add0~8\ = CARRY((direccion(2) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => direccion(2),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X111_Y37_N28
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\current_state.NEXT_DATA~q\ & (\Add0~7_combout\)) # (!\current_state.NEXT_DATA~q\ & (((\current_state.INIT2~q\) # (\current_state.INIT1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \current_state.INIT2~q\,
	datac => \current_state.INIT1~q\,
	datad => \current_state.NEXT_DATA~q\,
	combout => \Add0~9_combout\);

-- Location: LCCOMB_X111_Y37_N30
\direccion[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- direccion(2) = (!\Rst~input_o\ & ((GLOBAL(\WideOr5~0clkctrl_outclk\) & ((\Add0~9_combout\))) # (!GLOBAL(\WideOr5~0clkctrl_outclk\) & (direccion(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => direccion(2),
	datab => \Rst~input_o\,
	datac => \WideOr5~0clkctrl_outclk\,
	datad => \Add0~9_combout\,
	combout => direccion(2));

-- Location: LCCOMB_X113_Y37_N16
\ultimo[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ultimo[6]~0_combout\ = (!\Rst~input_o\ & (\current_state.IDLE~q\ & !\current_state.LLAVE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datac => \current_state.IDLE~q\,
	datad => \current_state.LLAVE~q\,
	combout => \ultimo[6]~0_combout\);

-- Location: LCCOMB_X113_Y37_N24
\ultimo[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ultimo[6]~1_combout\ = (\current_state.ACTUAL~q\) # ((\current_state.NEXT_DATA~q\) # ((\current_state.ESPERA~q\) # (!\ultimo[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.ACTUAL~q\,
	datab => \current_state.NEXT_DATA~q\,
	datac => \current_state.ESPERA~q\,
	datad => \ultimo[6]~0_combout\,
	combout => \ultimo[6]~1_combout\);

-- Location: CLKCTRL_G7
\ultimo[6]~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ultimo[6]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ultimo[6]~1clkctrl_outclk\);

-- Location: LCCOMB_X113_Y37_N10
\ultimo[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- ultimo(0) = (GLOBAL(\ultimo[6]~1clkctrl_outclk\) & (ultimo(0))) # (!GLOBAL(\ultimo[6]~1clkctrl_outclk\) & ((!\current_state.INIT2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ultimo(0),
	datac => \current_state.INIT2~q\,
	datad => \ultimo[6]~1clkctrl_outclk\,
	combout => ultimo(0));

-- Location: LCCOMB_X111_Y37_N14
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (direccion(3) & (!\Add0~8\)) # (!direccion(3) & ((\Add0~8\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~8\) # (!direccion(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => direccion(3),
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X111_Y37_N2
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\current_state.NEXT_DATA~q\ & (((\Add0~10_combout\)))) # (!\current_state.NEXT_DATA~q\ & ((\current_state.INIT1~q\) # ((\current_state.INIT3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.INIT1~q\,
	datab => \current_state.INIT3~q\,
	datac => \Add0~10_combout\,
	datad => \current_state.NEXT_DATA~q\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X111_Y37_N24
\direccion[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- direccion(3) = (!\Rst~input_o\ & ((GLOBAL(\WideOr5~0clkctrl_outclk\) & ((\Add0~12_combout\))) # (!GLOBAL(\WideOr5~0clkctrl_outclk\) & (direccion(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => direccion(3),
	datac => \WideOr5~0clkctrl_outclk\,
	datad => \Add0~12_combout\,
	combout => direccion(3));

-- Location: LCCOMB_X111_Y37_N16
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (direccion(4) & (\Add0~11\ $ (GND))) # (!direccion(4) & (!\Add0~11\ & VCC))
-- \Add0~14\ = CARRY((direccion(4) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => direccion(4),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X112_Y37_N12
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\current_state.INIT3~q\) # ((\Add0~13_combout\ & \current_state.NEXT_DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.INIT3~q\,
	datac => \Add0~13_combout\,
	datad => \current_state.NEXT_DATA~q\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X112_Y37_N2
\direccion[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- direccion(4) = (!\Rst~input_o\ & ((GLOBAL(\WideOr5~0clkctrl_outclk\) & ((\Selector12~0_combout\))) # (!GLOBAL(\WideOr5~0clkctrl_outclk\) & (direccion(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => direccion(4),
	datab => \Rst~input_o\,
	datac => \WideOr5~0clkctrl_outclk\,
	datad => \Selector12~0_combout\,
	combout => direccion(4));

-- Location: LCCOMB_X111_Y37_N18
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (direccion(5) & (!\Add0~14\)) # (!direccion(5) & ((\Add0~14\) # (GND)))
-- \Add0~16\ = CARRY((!\Add0~14\) # (!direccion(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => direccion(5),
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X112_Y37_N18
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\current_state.INIT1~q\) # ((\current_state.NEXT_DATA~q\ & \Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.NEXT_DATA~q\,
	datac => \current_state.INIT1~q\,
	datad => \Add0~15_combout\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X112_Y37_N4
\direccion[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- direccion(5) = (!\Rst~input_o\ & ((GLOBAL(\WideOr5~0clkctrl_outclk\) & ((\Selector11~0_combout\))) # (!GLOBAL(\WideOr5~0clkctrl_outclk\) & (direccion(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => direccion(5),
	datac => \WideOr5~0clkctrl_outclk\,
	datad => \Selector11~0_combout\,
	combout => direccion(5));

-- Location: LCCOMB_X111_Y37_N20
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (direccion(6) & (\Add0~16\ $ (GND))) # (!direccion(6) & (!\Add0~16\ & VCC))
-- \Add0~18\ = CARRY((direccion(6) & !\Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => direccion(6),
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~17_combout\,
	cout => \Add0~18\);

-- Location: LCCOMB_X112_Y37_N28
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\current_state.INIT2~q\) # ((\current_state.INIT3~q\) # ((\current_state.NEXT_DATA~q\ & \Add0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.INIT2~q\,
	datab => \current_state.NEXT_DATA~q\,
	datac => \current_state.INIT3~q\,
	datad => \Add0~17_combout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X112_Y37_N26
\direccion[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- direccion(6) = (!\Rst~input_o\ & ((GLOBAL(\WideOr5~0clkctrl_outclk\) & ((\Selector10~0_combout\))) # (!GLOBAL(\WideOr5~0clkctrl_outclk\) & (direccion(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => direccion(6),
	datab => \Rst~input_o\,
	datac => \WideOr5~0clkctrl_outclk\,
	datad => \Selector10~0_combout\,
	combout => direccion(6));

-- Location: LCCOMB_X113_Y37_N18
\ultimo[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- ultimo(6) = (GLOBAL(\ultimo[6]~1clkctrl_outclk\) & (ultimo(6))) # (!GLOBAL(\ultimo[6]~1clkctrl_outclk\) & ((!\WideOr12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ultimo(6),
	datac => \WideOr12~0_combout\,
	datad => \ultimo[6]~1clkctrl_outclk\,
	combout => ultimo(6));

-- Location: LCCOMB_X112_Y37_N20
\direccion~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \direccion~0_combout\ = (\current_state.INIT2~q\) # (\current_state.INIT1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.INIT2~q\,
	datad => \current_state.INIT1~q\,
	combout => \direccion~0_combout\);

-- Location: LCCOMB_X112_Y37_N24
\ultimo[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- ultimo(5) = (GLOBAL(\ultimo[6]~1clkctrl_outclk\) & ((ultimo(5)))) # (!GLOBAL(\ultimo[6]~1clkctrl_outclk\) & (!\direccion~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \direccion~0_combout\,
	datac => ultimo(5),
	datad => \ultimo[6]~1clkctrl_outclk\,
	combout => ultimo(5));

-- Location: LCCOMB_X112_Y37_N22
\ultimo[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- ultimo(4) = (GLOBAL(\ultimo[6]~1clkctrl_outclk\) & (ultimo(4))) # (!GLOBAL(\ultimo[6]~1clkctrl_outclk\) & ((\current_state.INIT2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ultimo(4),
	datac => \current_state.INIT2~q\,
	datad => \ultimo[6]~1clkctrl_outclk\,
	combout => ultimo(4));

-- Location: LCCOMB_X112_Y37_N6
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (ultimo(5) & (direccion(5) & (ultimo(4) $ (!direccion(4))))) # (!ultimo(5) & (!direccion(5) & (ultimo(4) $ (!direccion(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ultimo(5),
	datab => direccion(5),
	datac => ultimo(4),
	datad => direccion(4),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X111_Y37_N22
\Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = \Add0~18\ $ (direccion(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => direccion(7),
	cin => \Add0~18\,
	combout => \Add0~19_combout\);

-- Location: LCCOMB_X111_Y37_N0
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\Add0~19_combout\ & \current_state.NEXT_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~19_combout\,
	datad => \current_state.NEXT_DATA~q\,
	combout => \Add0~21_combout\);

-- Location: LCCOMB_X111_Y37_N6
\direccion[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- direccion(7) = (!\Rst~input_o\ & ((GLOBAL(\WideOr5~0clkctrl_outclk\) & ((\Add0~21_combout\))) # (!GLOBAL(\WideOr5~0clkctrl_outclk\) & (direccion(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => direccion(7),
	datab => \Rst~input_o\,
	datac => \WideOr5~0clkctrl_outclk\,
	datad => \Add0~21_combout\,
	combout => direccion(7));

-- Location: LCCOMB_X114_Y37_N8
\WideOr12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr12~1_combout\ = (!\current_state.INIT4~q\ & (!\current_state.INIT3~q\ & !\current_state.INIT1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.INIT4~q\,
	datac => \current_state.INIT3~q\,
	datad => \current_state.INIT1~q\,
	combout => \WideOr12~1_combout\);

-- Location: LCCOMB_X113_Y37_N8
\ultimo[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- ultimo(1) = (GLOBAL(\ultimo[6]~1clkctrl_outclk\) & ((ultimo(1)))) # (!GLOBAL(\ultimo[6]~1clkctrl_outclk\) & (\WideOr12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr12~1_combout\,
	datac => ultimo(1),
	datad => \ultimo[6]~1clkctrl_outclk\,
	combout => ultimo(1));

-- Location: LCCOMB_X113_Y37_N12
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (direccion(7)) # ((ultimo(1) & ((!direccion(3)) # (!direccion(1)))) # (!ultimo(1) & ((direccion(1)) # (direccion(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => direccion(7),
	datab => ultimo(1),
	datac => direccion(1),
	datad => direccion(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X113_Y37_N28
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & (!\Equal0~1_combout\ & (direccion(6) $ (!ultimo(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => direccion(6),
	datab => ultimo(6),
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X113_Y37_N20
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~2_combout\ & ((direccion(2) & (ultimo(0) & direccion(0))) # (!direccion(2) & (!ultimo(0) & !direccion(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => direccion(2),
	datab => ultimo(0),
	datac => direccion(0),
	datad => \Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X113_Y37_N6
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\current_state.INIT0~q\) # (((\Selector7~0_combout\ & !\Equal0~3_combout\)) # (!\WideOr12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \current_state.INIT0~q\,
	datac => \WideOr12~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X113_Y37_N7
\current_state.ACTUAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.ACTUAL~q\);

-- Location: LCCOMB_X113_Y37_N22
\current_state.NEXT_DATA~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state.NEXT_DATA~feeder_combout\ = \current_state.ACTUAL~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.ACTUAL~q\,
	combout => \current_state.NEXT_DATA~feeder_combout\);

-- Location: FF_X113_Y37_N23
\current_state.NEXT_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \current_state.NEXT_DATA~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.NEXT_DATA~q\);

-- Location: LCCOMB_X113_Y37_N14
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\current_state.NEXT_DATA~q\) # ((\RS_READY~input_o\ & \current_state.ESPERA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RS_READY~input_o\,
	datac => \current_state.ESPERA~q\,
	datad => \current_state.NEXT_DATA~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X113_Y37_N15
\current_state.ESPERA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \Selector6~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.ESPERA~q\);

-- Location: LCCOMB_X113_Y37_N30
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\current_state.ESPERA~q\ & !\RS_READY~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.ESPERA~q\,
	datad => \RS_READY~input_o\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X113_Y37_N2
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector7~0_combout\ & ((\Equal0~3_combout\) # ((\current_state.LLAVE~q\ & \switch~input_o\)))) # (!\Selector7~0_combout\ & (((\current_state.LLAVE~q\ & \switch~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \Equal0~3_combout\,
	datac => \current_state.LLAVE~q\,
	datad => \switch~input_o\,
	combout => \Selector7~1_combout\);

-- Location: FF_X113_Y37_N3
\current_state.LLAVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \Selector7~1_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.LLAVE~q\);

-- Location: LCCOMB_X114_Y37_N24
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\switch~input_o\) # ((!\current_state.LLAVE~q\ & ((\current_state.IDLE~q\) # (\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~input_o\,
	datab => \current_state.LLAVE~q\,
	datac => \current_state.IDLE~q\,
	datad => \Mux0~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X114_Y37_N25
\current_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.IDLE~q\);

-- Location: LCCOMB_X114_Y37_N6
\next_state.INIT3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.INIT3~0_combout\ = (!\botones[1]~input_o\ & (!\botones[0]~input_o\ & !\current_state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones[1]~input_o\,
	datab => \botones[0]~input_o\,
	datad => \current_state.IDLE~q\,
	combout => \next_state.INIT3~0_combout\);

-- Location: LCCOMB_X114_Y37_N26
\next_state.INIT2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.INIT2~0_combout\ = (\botones[2]~input_o\ & (!\botones[3]~input_o\ & \next_state.INIT3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones[2]~input_o\,
	datab => \botones[3]~input_o\,
	datad => \next_state.INIT3~0_combout\,
	combout => \next_state.INIT2~0_combout\);

-- Location: FF_X114_Y37_N21
\current_state.INIT2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \next_state.INIT2~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.INIT2~q\);

-- Location: LCCOMB_X113_Y37_N26
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\current_state.NEXT_DATA~q\ & (((\Add0~2_combout\)))) # (!\current_state.NEXT_DATA~q\ & ((\current_state.INIT2~q\) # ((\current_state.INIT1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.INIT2~q\,
	datab => \current_state.INIT1~q\,
	datac => \current_state.NEXT_DATA~q\,
	datad => \Add0~2_combout\,
	combout => \Add0~22_combout\);

-- Location: LCCOMB_X113_Y37_N4
\direccion[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- direccion(0) = (!\Rst~input_o\ & ((GLOBAL(\WideOr5~0clkctrl_outclk\) & ((\Add0~22_combout\))) # (!GLOBAL(\WideOr5~0clkctrl_outclk\) & (direccion(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst~input_o\,
	datab => direccion(0),
	datac => \Add0~22_combout\,
	datad => \WideOr5~0clkctrl_outclk\,
	combout => direccion(0));

-- Location: LCCOMB_X114_Y37_N0
\data_ready~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_ready~0_combout\ = (\current_state.ACTUAL~q\ & !\Rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.ACTUAL~q\,
	datad => \Rst~input_o\,
	combout => \data_ready~0_combout\);

-- Location: LCCOMB_X114_Y37_N28
\busy~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \busy~0_combout\ = (\current_state.IDLE~q\ & !\Rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.IDLE~q\,
	datad => \Rst~input_o\,
	combout => \busy~0_combout\);

ww_address(0) <= \address[0]~output_o\;

ww_address(1) <= \address[1]~output_o\;

ww_address(2) <= \address[2]~output_o\;

ww_address(3) <= \address[3]~output_o\;

ww_address(4) <= \address[4]~output_o\;

ww_address(5) <= \address[5]~output_o\;

ww_address(6) <= \address[6]~output_o\;

ww_address(7) <= \address[7]~output_o\;

ww_data_ready <= \data_ready~output_o\;

ww_RE <= \RE~output_o\;

ww_busy <= \busy~output_o\;
END structure;


