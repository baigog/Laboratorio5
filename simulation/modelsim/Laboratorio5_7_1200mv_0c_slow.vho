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

<<<<<<< HEAD
-- DATE "05/21/2016 11:47:22"
=======
-- DATE "05/22/2016 15:52:02"
>>>>>>> Mochi

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

<<<<<<< HEAD
ENTITY 	Mem_fsm IS
    PORT (
	Clk : IN std_logic;
	BT3 : IN std_logic;
	BT2 : IN std_logic;
	BT1 : IN std_logic;
	BT0 : IN std_logic;
	switch : IN std_logic;
	Rst : IN std_logic;
	RS_READY : IN std_logic;
	address : BUFFER std_logic_vector(7 DOWNTO 0);
	data_ready : BUFFER std_logic;
	RE : BUFFER std_logic
	);
END Mem_fsm;

-- Design Ports Information
-- address[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_ready	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RE	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BT1	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BT0	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BT2	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_READY	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BT3	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Mem_fsm IS
=======
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
>>>>>>> Mochi
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
<<<<<<< HEAD
SIGNAL ww_Clk : std_logic;
SIGNAL ww_BT3 : std_logic;
SIGNAL ww_BT2 : std_logic;
SIGNAL ww_BT1 : std_logic;
SIGNAL ww_BT0 : std_logic;
SIGNAL ww_switch : std_logic;
SIGNAL ww_Rst : std_logic;
SIGNAL ww_RS_READY : std_logic;
SIGNAL ww_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_ready : std_logic;
SIGNAL ww_RE : std_logic;
SIGNAL \Rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \BT0~input_o\ : std_logic;
SIGNAL \BT2~input_o\ : std_logic;
SIGNAL \BT1~input_o\ : std_logic;
SIGNAL \switch~input_o\ : std_logic;
SIGNAL \RS_READY~input_o\ : std_logic;
SIGNAL \next_state.INIT1~0_combout\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \Rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.INIT1~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \BT3~input_o\ : std_logic;
SIGNAL \next_state.INIT3~0_combout\ : std_logic;
SIGNAL \next_state.INIT4~0_combout\ : std_logic;
SIGNAL \current_state.INIT4~q\ : std_logic;
SIGNAL \next_state.INIT0~0_combout\ : std_logic;
SIGNAL \current_state.INIT0~q\ : std_logic;
SIGNAL \next_state.INIT3~1_combout\ : std_logic;
SIGNAL \current_state.INIT3~q\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \direccion~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \WideOr16~combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \current_state.ACTUAL~q\ : std_logic;
SIGNAL \current_state.NEXT_DATA~feeder_combout\ : std_logic;
SIGNAL \current_state.NEXT_DATA~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \current_state.ESPERA~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \current_state.LLAVE~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \current_state.IDLE~q\ : std_logic;
SIGNAL \next_state.INIT2~0_combout\ : std_logic;
SIGNAL \current_state.INIT2~q\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \data_ready~reg0_q\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \RE~reg0_q\ : std_logic;
SIGNAL direccion : std_logic_vector(7 DOWNTO 0);
SIGNAL ultimo : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Rst~input_o\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_BT3 <= BT3;
ww_BT2 <= BT2;
ww_BT1 <= BT1;
ww_BT0 <= BT0;
ww_switch <= switch;
ww_Rst <= Rst;
ww_RS_READY <= RS_READY;
address <= ww_address;
data_ready <= ww_data_ready;
RE <= ww_RE;
=======
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
>>>>>>> Mochi
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

<<<<<<< HEAD
\Rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Rst~input_o\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\ALT_INV_Rst~inputclkctrl_outclk\ <= NOT \Rst~inputclkctrl_outclk\;
\ALT_INV_Rst~input_o\ <= NOT \Rst~input_o\;

-- Location: IOOBUF_X0_Y50_N16
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

-- Location: IOOBUF_X0_Y48_N2
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

-- Location: IOOBUF_X0_Y50_N23
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

-- Location: IOOBUF_X0_Y47_N23
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

-- Location: IOOBUF_X0_Y49_N2
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

-- Location: IOOBUF_X0_Y48_N9
\address[5]~output\ : cycloneive_io_obuf
=======
\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;
\ALT_INV_SS~reg0_q\ <= NOT \SS~reg0_q\;

-- Location: IOOBUF_X9_Y73_N2
\BUSY~output\ : cycloneive_io_obuf
>>>>>>> Mochi
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => direccion(5),
	devoe => ww_devoe,
	o => \address[5]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\address[6]~output\ : cycloneive_io_obuf
=======
	i => \BUSY~reg0_q\,
	devoe => ww_devoe,
	o => \BUSY~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\SHIFT~output\ : cycloneive_io_obuf
>>>>>>> Mochi
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => direccion(6),
	devoe => ww_devoe,
	o => \address[6]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\address[7]~output\ : cycloneive_io_obuf
=======
	i => \SHIFT~reg0_q\,
	devoe => ww_devoe,
	o => \SHIFT~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\SS~output\ : cycloneive_io_obuf
>>>>>>> Mochi
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => direccion(7),
	devoe => ww_devoe,
	o => \address[7]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\data_ready~output\ : cycloneive_io_obuf
=======
	i => \ALT_INV_SS~reg0_q\,
	devoe => ww_devoe,
	o => \SS~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\SEL[0]~output\ : cycloneive_io_obuf
>>>>>>> Mochi
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \data_ready~reg0_q\,
	devoe => ww_devoe,
	o => \data_ready~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\RE~output\ : cycloneive_io_obuf
=======
	i => \SEL[0]~reg0_q\,
	devoe => ww_devoe,
	o => \SEL[0]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\SEL[1]~output\ : cycloneive_io_obuf
>>>>>>> Mochi
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \RE~reg0_q\,
	devoe => ww_devoe,
	o => \RE~output_o\);
=======
	i => \SEL[1]~reg0_q\,
	devoe => ww_devoe,
	o => \SEL[1]~output_o\);
>>>>>>> Mochi

-- Location: IOIBUF_X0_Y36_N8
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G2
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

<<<<<<< HEAD
-- Location: IOIBUF_X0_Y44_N22
\BT0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BT0,
	o => \BT0~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\BT2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BT2,
	o => \BT2~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\BT1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BT1,
	o => \BT1~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\switch~input\ : cycloneive_io_ibuf
=======
-- Location: IOIBUF_X11_Y73_N8
\DATA_READY~input\ : cycloneive_io_ibuf
>>>>>>> Mochi
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => ww_switch,
	o => \switch~input_o\);

-- Location: IOIBUF_X0_Y45_N22
\RS_READY~input\ : cycloneive_io_ibuf
=======
	i => ww_DATA_READY,
	o => \DATA_READY~input_o\);

-- Location: IOIBUF_X11_Y73_N1
\SR_DONE~input\ : cycloneive_io_ibuf
>>>>>>> Mochi
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => ww_RS_READY,
	o => \RS_READY~input_o\);

-- Location: LCCOMB_X4_Y48_N2
\next_state.INIT1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.INIT1~0_combout\ = (!\BT0~input_o\ & (\BT1~input_o\ & !\current_state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BT0~input_o\,
	datac => \BT1~input_o\,
	datad => \current_state.IDLE~q\,
	combout => \next_state.INIT1~0_combout\);
=======
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
>>>>>>> Mochi

-- Location: IOIBUF_X0_Y36_N15
\Rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst,
	o => \Rst~input_o\);

-- Location: CLKCTRL_G4
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

<<<<<<< HEAD
-- Location: FF_X4_Y48_N3
\current_state.INIT1\ : dffeas
=======
-- Location: FF_X11_Y72_N19
\CS.START\ : dffeas
>>>>>>> Mochi
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	clk => \Clk~inputclkctrl_outclk\,
	d => \next_state.INIT1~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.INIT1~q\);

-- Location: LCCOMB_X4_Y48_N30
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (!\current_state.INIT2~q\ & !\current_state.INIT1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.INIT2~q\,
	datad => \current_state.INIT1~q\,
	combout => \Selector12~0_combout\);

-- Location: IOIBUF_X0_Y44_N8
\BT3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BT3,
	o => \BT3~input_o\);

-- Location: LCCOMB_X4_Y48_N10
\next_state.INIT3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.INIT3~0_combout\ = (!\BT0~input_o\ & (!\BT2~input_o\ & (!\BT1~input_o\ & !\current_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BT0~input_o\,
	datab => \BT2~input_o\,
	datac => \BT1~input_o\,
	datad => \current_state.IDLE~q\,
	combout => \next_state.INIT3~0_combout\);

-- Location: LCCOMB_X4_Y48_N28
\next_state.INIT4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.INIT4~0_combout\ = (\switch~input_o\ & (!\BT3~input_o\ & \next_state.INIT3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~input_o\,
	datac => \BT3~input_o\,
	datad => \next_state.INIT3~0_combout\,
	combout => \next_state.INIT4~0_combout\);

-- Location: FF_X4_Y48_N29
\current_state.INIT4\ : dffeas
=======
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
>>>>>>> Mochi
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	clk => \Clk~inputclkctrl_outclk\,
	d => \next_state.INIT4~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.INIT4~q\);

-- Location: LCCOMB_X4_Y48_N14
\next_state.INIT0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.INIT0~0_combout\ = (\BT0~input_o\ & !\current_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BT0~input_o\,
	datad => \current_state.IDLE~q\,
	combout => \next_state.INIT0~0_combout\);

-- Location: FF_X4_Y48_N15
\current_state.INIT0\ : dffeas
=======
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
>>>>>>> Mochi
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	clk => \Clk~inputclkctrl_outclk\,
	d => \next_state.INIT0~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.INIT0~q\);

-- Location: LCCOMB_X4_Y48_N16
\next_state.INIT3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.INIT3~1_combout\ = (\BT3~input_o\ & \next_state.INIT3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BT3~input_o\,
	datad => \next_state.INIT3~0_combout\,
	combout => \next_state.INIT3~1_combout\);

-- Location: FF_X4_Y48_N17
\current_state.INIT3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \next_state.INIT3~1_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.INIT3~q\);

-- Location: LCCOMB_X4_Y48_N18
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (!\current_state.INIT4~q\ & (!\current_state.INIT0~q\ & !\current_state.INIT3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.INIT4~q\,
	datac => \current_state.INIT0~q\,
	datad => \current_state.INIT3~q\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X2_Y48_N12
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = direccion(0) $ (VCC)
-- \Add0~5\ = CARRY(direccion(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => direccion(0),
	datad => VCC,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X2_Y48_N14
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (direccion(1) & (!\Add0~5\)) # (!direccion(1) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!direccion(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => direccion(1),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X2_Y48_N10
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\current_state.NEXT_DATA~q\ & (((\Add0~6_combout\)))) # (!\current_state.NEXT_DATA~q\ & ((\current_state.INIT3~q\) # ((\current_state.INIT1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.INIT3~q\,
	datab => \Add0~6_combout\,
	datac => \current_state.NEXT_DATA~q\,
	datad => \current_state.INIT1~q\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X3_Y48_N12
\direccion~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \direccion~0_combout\ = (!\current_state.ACTUAL~q\ & !\current_state.ESPERA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.ACTUAL~q\,
	datad => \current_state.ESPERA~q\,
	combout => \direccion~0_combout\);

-- Location: FF_X2_Y48_N11
\direccion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \direccion~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => direccion(1));

-- Location: LCCOMB_X2_Y48_N16
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (direccion(2) & (\Add0~7\ $ (GND))) # (!direccion(2) & (!\Add0~7\ & VCC))
-- \Add0~10\ = CARRY((direccion(2) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => direccion(2),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X2_Y48_N8
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\current_state.NEXT_DATA~q\ & (((\Add0~9_combout\)))) # (!\current_state.NEXT_DATA~q\ & ((\current_state.INIT2~q\) # ((\current_state.INIT1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.INIT2~q\,
	datab => \current_state.INIT1~q\,
	datac => \current_state.NEXT_DATA~q\,
	datad => \Add0~9_combout\,
	combout => \Add0~23_combout\);

-- Location: FF_X2_Y48_N9
\direccion[2]\ : dffeas
=======
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
>>>>>>> Mochi
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~23_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \direccion~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => direccion(2));

-- Location: LCCOMB_X3_Y48_N22
WideOr16 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr16~combout\ = ((\current_state.LLAVE~q\) # ((\current_state.NEXT_DATA~q\) # (!\current_state.IDLE~q\))) # (!\direccion~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direccion~0_combout\,
	datab => \current_state.LLAVE~q\,
	datac => \current_state.NEXT_DATA~q\,
	datad => \current_state.IDLE~q\,
	combout => \WideOr16~combout\);

-- Location: LCCOMB_X3_Y48_N20
\Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = ((\current_state.INIT1~q\) # ((\WideOr16~combout\ & ultimo(0)))) # (!\Selector18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr16~combout\,
	datab => \Selector18~0_combout\,
	datac => ultimo(0),
	datad => \current_state.INIT1~q\,
	combout => \Selector18~1_combout\);

-- Location: FF_X3_Y48_N21
\ultimo[0]\ : dffeas
=======
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
>>>>>>> Mochi
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector18~1_combout\,
	ena => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ultimo(0));

-- Location: LCCOMB_X4_Y48_N4
\Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\current_state.INIT1~q\) # ((\current_state.INIT3~q\) # ((\current_state.INIT2~q\) # (\current_state.INIT4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.INIT1~q\,
	datab => \current_state.INIT3~q\,
	datac => \current_state.INIT2~q\,
	datad => \current_state.INIT4~q\,
	combout => \Selector12~1_combout\);

-- Location: LCCOMB_X3_Y48_N30
\Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = (\Selector12~1_combout\) # ((\WideOr16~combout\ & ultimo(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr16~combout\,
	datac => ultimo(6),
	datad => \Selector12~1_combout\,
	combout => \Selector12~2_combout\);

-- Location: FF_X3_Y48_N31
\ultimo[6]\ : dffeas
=======
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
>>>>>>> Mochi
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector12~2_combout\,
	ena => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ultimo(6));

-- Location: LCCOMB_X3_Y48_N2
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\current_state.INIT2~q\) # ((direccion(6) & ((\current_state.ACTUAL~q\) # (\current_state.ESPERA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => direccion(6),
	datab => \current_state.ACTUAL~q\,
	datac => \current_state.ESPERA~q\,
	datad => \current_state.INIT2~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X3_Y48_N10
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\current_state.INIT3~q\) # ((direccion(4) & ((\current_state.ESPERA~q\) # (\current_state.ACTUAL~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => direccion(4),
	datab => \current_state.ESPERA~q\,
	datac => \current_state.ACTUAL~q\,
	datad => \current_state.INIT3~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X2_Y48_N18
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (direccion(3) & (!\Add0~10\)) # (!direccion(3) & ((\Add0~10\) # (GND)))
-- \Add0~12\ = CARRY((!\Add0~10\) # (!direccion(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => direccion(3),
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X2_Y48_N30
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\current_state.NEXT_DATA~q\ & (((\Add0~11_combout\)))) # (!\current_state.NEXT_DATA~q\ & ((\current_state.INIT1~q\) # ((\current_state.INIT3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.INIT1~q\,
	datab => \Add0~11_combout\,
	datac => \current_state.NEXT_DATA~q\,
	datad => \current_state.INIT3~q\,
	combout => \Add0~13_combout\);

-- Location: FF_X2_Y48_N31
\direccion[3]\ : dffeas
=======
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
>>>>>>> Mochi
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~13_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \direccion~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => direccion(3));

-- Location: LCCOMB_X2_Y48_N20
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (direccion(4) & (\Add0~12\ $ (GND))) # (!direccion(4) & (!\Add0~12\ & VCC))
-- \Add0~15\ = CARRY((direccion(4) & !\Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => direccion(4),
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X2_Y48_N0
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector7~0_combout\) # ((\current_state.NEXT_DATA~q\ & \Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.NEXT_DATA~q\,
	datac => \Selector7~0_combout\,
	datad => \Add0~14_combout\,
	combout => \Selector7~1_combout\);

-- Location: FF_X2_Y48_N1
\direccion[4]\ : dffeas
=======
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
>>>>>>> Mochi
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector7~1_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => direccion(4));

-- Location: LCCOMB_X2_Y48_N22
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (direccion(5) & (!\Add0~15\)) # (!direccion(5) & ((\Add0~15\) # (GND)))
-- \Add0~17\ = CARRY((!\Add0~15\) # (!direccion(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => direccion(5),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X3_Y48_N24
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\current_state.INIT1~q\) # ((direccion(5) & ((\current_state.ESPERA~q\) # (\current_state.ACTUAL~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => direccion(5),
	datab => \current_state.ESPERA~q\,
	datac => \current_state.ACTUAL~q\,
	datad => \current_state.INIT1~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X2_Y48_N2
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector6~0_combout\) # ((\current_state.NEXT_DATA~q\ & \Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.NEXT_DATA~q\,
	datac => \Add0~16_combout\,
	datad => \Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: FF_X2_Y48_N3
\direccion[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector6~1_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => direccion(5));

-- Location: LCCOMB_X2_Y48_N24
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (direccion(6) & (\Add0~17\ $ (GND))) # (!direccion(6) & (!\Add0~17\ & VCC))
-- \Add0~19\ = CARRY((direccion(6) & !\Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => direccion(6),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X2_Y48_N28
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\current_state.INIT3~q\) # ((\Selector5~0_combout\) # ((\current_state.NEXT_DATA~q\ & \Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.INIT3~q\,
	datab => \Selector5~0_combout\,
	datac => \current_state.NEXT_DATA~q\,
	datad => \Add0~18_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X2_Y48_N29
\direccion[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector5~1_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => direccion(6));

-- Location: LCCOMB_X3_Y48_N26
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\current_state.INIT0~q\) # ((\current_state.INIT2~q\) # ((\WideOr16~combout\ & ultimo(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr16~combout\,
	datab => \current_state.INIT0~q\,
	datac => ultimo(1),
	datad => \current_state.INIT2~q\,
	combout => \Selector17~0_combout\);

-- Location: FF_X3_Y48_N27
\ultimo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	ena => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ultimo(1));

-- Location: LCCOMB_X2_Y48_N26
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \Add0~19\ $ (direccion(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => direccion(7),
	cin => \Add0~19\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X2_Y48_N6
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\current_state.NEXT_DATA~q\ & ((\Add0~20_combout\) # ((!\direccion~0_combout\ & direccion(7))))) # (!\current_state.NEXT_DATA~q\ & (!\direccion~0_combout\ & (direccion(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.NEXT_DATA~q\,
	datab => \direccion~0_combout\,
	datac => direccion(7),
	datad => \Add0~20_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X2_Y48_N7
\direccion[7]\ : dffeas
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
	q => direccion(7));

-- Location: LCCOMB_X3_Y48_N8
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (direccion(7)) # ((ultimo(1) & ((!direccion(3)) # (!direccion(1)))) # (!ultimo(1) & ((direccion(1)) # (direccion(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ultimo(1),
	datab => direccion(7),
	datac => direccion(1),
	datad => direccion(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X3_Y48_N6
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\current_state.INIT2~q\) # ((\WideOr16~combout\ & ultimo(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr16~combout\,
	datac => ultimo(4),
	datad => \current_state.INIT2~q\,
	combout => \Selector14~0_combout\);

-- Location: FF_X3_Y48_N7
\ultimo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	ena => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ultimo(4));

-- Location: LCCOMB_X3_Y48_N16
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ((\WideOr16~combout\ & ultimo(5))) # (!\Selector18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr16~combout\,
	datac => ultimo(5),
	datad => \Selector18~0_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X3_Y48_N17
\ultimo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	ena => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ultimo(5));

-- Location: LCCOMB_X3_Y48_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (ultimo(4) & (direccion(4) & (ultimo(5) $ (!direccion(5))))) # (!ultimo(4) & (!direccion(4) & (ultimo(5) $ (!direccion(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ultimo(4),
	datab => ultimo(5),
	datac => direccion(4),
	datad => direccion(5),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X3_Y48_N18
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Equal0~1_combout\ & (\Equal0~0_combout\ & (ultimo(6) $ (!direccion(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ultimo(6),
	datab => direccion(6),
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X3_Y48_N0
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

-- Location: LCCOMB_X3_Y48_N4
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (((\Selector3~0_combout\ & !\Equal0~3_combout\)) # (!\Selector18~0_combout\)) # (!\Selector12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datab => \Selector18~0_combout\,
	datac => \Selector3~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X3_Y48_N5
\current_state.ACTUAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.ACTUAL~q\);

-- Location: LCCOMB_X4_Y48_N12
\current_state.NEXT_DATA~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state.NEXT_DATA~feeder_combout\ = \current_state.ACTUAL~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.ACTUAL~q\,
	combout => \current_state.NEXT_DATA~feeder_combout\);

-- Location: FF_X4_Y48_N13
\current_state.NEXT_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \current_state.NEXT_DATA~feeder_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.NEXT_DATA~q\);

-- Location: LCCOMB_X4_Y48_N20
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\current_state.NEXT_DATA~q\) # ((!\RS_READY~input_o\ & \current_state.ESPERA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.NEXT_DATA~q\,
	datac => \RS_READY~input_o\,
	datad => \current_state.ESPERA~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X3_Y48_N3
\current_state.ESPERA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Selector2~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.ESPERA~q\);

-- Location: LCCOMB_X4_Y48_N8
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\RS_READY~input_o\ & \current_state.ESPERA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RS_READY~input_o\,
	datad => \current_state.ESPERA~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X3_Y48_N14
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\switch~input_o\ & ((\current_state.LLAVE~q\) # ((\Selector3~0_combout\ & \Equal0~3_combout\)))) # (!\switch~input_o\ & (\Selector3~0_combout\ & ((\Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~input_o\,
	datab => \Selector3~0_combout\,
	datac => \current_state.LLAVE~q\,
	datad => \Equal0~3_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X3_Y48_N15
\current_state.LLAVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.LLAVE~q\);

-- Location: LCCOMB_X4_Y48_N6
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\switch~input_o\) # ((!\current_state.LLAVE~q\ & ((\BT3~input_o\) # (!\next_state.INIT3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.LLAVE~q\,
	datab => \switch~input_o\,
	datac => \BT3~input_o\,
	datad => \next_state.INIT3~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X4_Y48_N7
\current_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.IDLE~q\);

-- Location: LCCOMB_X4_Y48_N24
\next_state.INIT2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.INIT2~0_combout\ = (!\BT0~input_o\ & (\BT2~input_o\ & (!\BT1~input_o\ & !\current_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BT0~input_o\,
	datab => \BT2~input_o\,
	datac => \BT1~input_o\,
	datad => \current_state.IDLE~q\,
	combout => \next_state.INIT2~0_combout\);

-- Location: FF_X4_Y48_N25
\current_state.INIT2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \next_state.INIT2~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.INIT2~q\);

-- Location: LCCOMB_X2_Y48_N4
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\current_state.NEXT_DATA~q\ & (((\Add0~4_combout\)))) # (!\current_state.NEXT_DATA~q\ & ((\current_state.INIT2~q\) # ((\current_state.INIT1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.INIT2~q\,
	datab => \current_state.INIT1~q\,
	datac => \current_state.NEXT_DATA~q\,
	datad => \Add0~4_combout\,
	combout => \Add0~22_combout\);

-- Location: FF_X2_Y48_N5
\direccion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	ena => \direccion~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => direccion(0));

-- Location: LCCOMB_X4_Y48_N0
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\current_state.ACTUAL~q\) # ((\current_state.IDLE~q\ & (\data_ready~reg0_q\ & !\current_state.LLAVE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.IDLE~q\,
	datab => \current_state.ACTUAL~q\,
	datac => \data_ready~reg0_q\,
	datad => \current_state.LLAVE~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X4_Y48_N1
\data_ready~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ready~reg0_q\);

-- Location: LCCOMB_X4_Y48_N22
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\current_state.NEXT_DATA~q\ & (((\RE~reg0_q\)))) # (!\current_state.NEXT_DATA~q\ & (\current_state.IDLE~q\ & ((!\current_state.LLAVE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.NEXT_DATA~q\,
	datab => \current_state.IDLE~q\,
	datac => \RE~reg0_q\,
	datad => \current_state.LLAVE~q\,
	combout => \Selector19~0_combout\);

-- Location: FF_X4_Y48_N23
\RE~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	clrn => \ALT_INV_Rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RE~reg0_q\);

ww_address(0) <= \address[0]~output_o\;
=======
	clk => \CLK~inputclkctrl_outclk\,
	d => \SEL[1]~reg0feeder_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEL[1]~reg0_q\);
>>>>>>> Mochi

ww_address(1) <= \address[1]~output_o\;

<<<<<<< HEAD
ww_address(2) <= \address[2]~output_o\;

ww_address(3) <= \address[3]~output_o\;

ww_address(4) <= \address[4]~output_o\;

ww_address(5) <= \address[5]~output_o\;

ww_address(6) <= \address[6]~output_o\;

ww_address(7) <= \address[7]~output_o\;

ww_data_ready <= \data_ready~output_o\;

ww_RE <= \RE~output_o\;
=======
ww_SHIFT <= \SHIFT~output_o\;

ww_SS <= \SS~output_o\;

ww_SEL(0) <= \SEL[0]~output_o\;

ww_SEL(1) <= \SEL[1]~output_o\;
>>>>>>> Mochi
END structure;


