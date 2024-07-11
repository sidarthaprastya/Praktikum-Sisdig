-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/11/2020 21:26:43"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	substractor_adder IS
    PORT (
	OP : IN std_logic;
	x_add : IN std_logic_vector(15 DOWNTO 0);
	y_add : IN std_logic_vector(15 DOWNTO 0);
	result_add : BUFFER std_logic_vector(15 DOWNTO 0);
	bout_add : BUFFER std_logic
	);
END substractor_adder;

-- Design Ports Information
-- result_add[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_add[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_add[2]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_add[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_add[4]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_add[5]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_add[6]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_add[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_add[8]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_add[9]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_add[10]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_add[11]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_add[12]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_add[13]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_add[14]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_add[15]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bout_add	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_add[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_add[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_add[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_add[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_add[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_add[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_add[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_add[3]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_add[4]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_add[4]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_add[5]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_add[5]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_add[6]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_add[6]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_add[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_add[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_add[8]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_add[8]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_add[9]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_add[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_add[10]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_add[10]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_add[11]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_add[11]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_add[12]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_add[12]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_add[13]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_add[13]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_add[14]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_add[14]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_add[15]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_add[15]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF substractor_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OP : std_logic;
SIGNAL ww_x_add : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_y_add : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_result_add : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_bout_add : std_logic;
SIGNAL \result_add[0]~output_o\ : std_logic;
SIGNAL \result_add[1]~output_o\ : std_logic;
SIGNAL \result_add[2]~output_o\ : std_logic;
SIGNAL \result_add[3]~output_o\ : std_logic;
SIGNAL \result_add[4]~output_o\ : std_logic;
SIGNAL \result_add[5]~output_o\ : std_logic;
SIGNAL \result_add[6]~output_o\ : std_logic;
SIGNAL \result_add[7]~output_o\ : std_logic;
SIGNAL \result_add[8]~output_o\ : std_logic;
SIGNAL \result_add[9]~output_o\ : std_logic;
SIGNAL \result_add[10]~output_o\ : std_logic;
SIGNAL \result_add[11]~output_o\ : std_logic;
SIGNAL \result_add[12]~output_o\ : std_logic;
SIGNAL \result_add[13]~output_o\ : std_logic;
SIGNAL \result_add[14]~output_o\ : std_logic;
SIGNAL \result_add[15]~output_o\ : std_logic;
SIGNAL \bout_add~output_o\ : std_logic;
SIGNAL \x_add[0]~input_o\ : std_logic;
SIGNAL \y_add[0]~input_o\ : std_logic;
SIGNAL \subs|Adder_0|subs~0_combout\ : std_logic;
SIGNAL \OP~input_o\ : std_logic;
SIGNAL \x_add[1]~input_o\ : std_logic;
SIGNAL \subs|Adder_0|bout~0_combout\ : std_logic;
SIGNAL \y_add[1]~input_o\ : std_logic;
SIGNAL \subs|Adders:1:Adder|subs~combout\ : std_logic;
SIGNAL \subs|Adders:1:Adder|bout~0_combout\ : std_logic;
SIGNAL \x_add[2]~input_o\ : std_logic;
SIGNAL \y_add[2]~input_o\ : std_logic;
SIGNAL \subs|Adders:2:Adder|subs~combout\ : std_logic;
SIGNAL \subs|Adders:2:Adder|bout~0_combout\ : std_logic;
SIGNAL \x_add[3]~input_o\ : std_logic;
SIGNAL \y_add[3]~input_o\ : std_logic;
SIGNAL \subs|Adders:3:Adder|subs~combout\ : std_logic;
SIGNAL \subs|Adders:3:Adder|bout~0_combout\ : std_logic;
SIGNAL \y_add[4]~input_o\ : std_logic;
SIGNAL \x_add[4]~input_o\ : std_logic;
SIGNAL \subs|Adders:4:Adder|subs~combout\ : std_logic;
SIGNAL \subs|Adders:4:Adder|bout~0_combout\ : std_logic;
SIGNAL \x_add[5]~input_o\ : std_logic;
SIGNAL \y_add[5]~input_o\ : std_logic;
SIGNAL \subs|Adders:5:Adder|subs~combout\ : std_logic;
SIGNAL \x_add[6]~input_o\ : std_logic;
SIGNAL \subs|Adders:5:Adder|bout~0_combout\ : std_logic;
SIGNAL \y_add[6]~input_o\ : std_logic;
SIGNAL \subs|Adders:6:Adder|subs~combout\ : std_logic;
SIGNAL \x_add[7]~input_o\ : std_logic;
SIGNAL \subs|Adders:6:Adder|bout~0_combout\ : std_logic;
SIGNAL \y_add[7]~input_o\ : std_logic;
SIGNAL \subs|Adders:7:Adder|subs~combout\ : std_logic;
SIGNAL \subs|Adders:7:Adder|bout~0_combout\ : std_logic;
SIGNAL \y_add[8]~input_o\ : std_logic;
SIGNAL \x_add[8]~input_o\ : std_logic;
SIGNAL \subs|Adders:8:Adder|subs~combout\ : std_logic;
SIGNAL \y_add[9]~input_o\ : std_logic;
SIGNAL \x_add[9]~input_o\ : std_logic;
SIGNAL \subs|Adders:8:Adder|bout~0_combout\ : std_logic;
SIGNAL \subs|Adders:9:Adder|subs~combout\ : std_logic;
SIGNAL \y_add[10]~input_o\ : std_logic;
SIGNAL \subs|Adders:9:Adder|bout~0_combout\ : std_logic;
SIGNAL \x_add[10]~input_o\ : std_logic;
SIGNAL \subs|Adders:10:Adder|subs~combout\ : std_logic;
SIGNAL \subs|Adders:10:Adder|bout~0_combout\ : std_logic;
SIGNAL \x_add[11]~input_o\ : std_logic;
SIGNAL \y_add[11]~input_o\ : std_logic;
SIGNAL \subs|Adders:11:Adder|subs~combout\ : std_logic;
SIGNAL \subs|Adders:11:Adder|bout~0_combout\ : std_logic;
SIGNAL \x_add[12]~input_o\ : std_logic;
SIGNAL \y_add[12]~input_o\ : std_logic;
SIGNAL \subs|Adders:12:Adder|subs~combout\ : std_logic;
SIGNAL \x_add[13]~input_o\ : std_logic;
SIGNAL \subs|Adders:12:Adder|bout~0_combout\ : std_logic;
SIGNAL \y_add[13]~input_o\ : std_logic;
SIGNAL \subs|Adders:13:Adder|subs~combout\ : std_logic;
SIGNAL \y_add[14]~input_o\ : std_logic;
SIGNAL \subs|Adders:13:Adder|bout~0_combout\ : std_logic;
SIGNAL \x_add[14]~input_o\ : std_logic;
SIGNAL \subs|Adders:14:Adder|subs~combout\ : std_logic;
SIGNAL \y_add[15]~input_o\ : std_logic;
SIGNAL \x_add[15]~input_o\ : std_logic;
SIGNAL \subs|Adders:14:Adder|bout~0_combout\ : std_logic;
SIGNAL \subs|Adders:15:Adder|subs~combout\ : std_logic;
SIGNAL \subs|Adders:15:Adder|bout~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_OP <= OP;
ww_x_add <= x_add;
ww_y_add <= y_add;
result_add <= ww_result_add;
bout_add <= ww_bout_add;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y0_N2
\result_add[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \subs|Adder_0|subs~0_combout\,
	devoe => ww_devoe,
	o => \result_add[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\result_add[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \subs|Adders:1:Adder|subs~combout\,
	devoe => ww_devoe,
	o => \result_add[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\result_add[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \subs|Adders:2:Adder|subs~combout\,
	devoe => ww_devoe,
	o => \result_add[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\result_add[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \subs|Adders:3:Adder|subs~combout\,
	devoe => ww_devoe,
	o => \result_add[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\result_add[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \subs|Adders:4:Adder|subs~combout\,
	devoe => ww_devoe,
	o => \result_add[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\result_add[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \subs|Adders:5:Adder|subs~combout\,
	devoe => ww_devoe,
	o => \result_add[5]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\result_add[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \subs|Adders:6:Adder|subs~combout\,
	devoe => ww_devoe,
	o => \result_add[6]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\result_add[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \subs|Adders:7:Adder|subs~combout\,
	devoe => ww_devoe,
	o => \result_add[7]~output_o\);

-- Location: IOOBUF_X13_Y24_N9
\result_add[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \subs|Adders:8:Adder|subs~combout\,
	devoe => ww_devoe,
	o => \result_add[8]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\result_add[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \subs|Adders:9:Adder|subs~combout\,
	devoe => ww_devoe,
	o => \result_add[9]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\result_add[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \subs|Adders:10:Adder|subs~combout\,
	devoe => ww_devoe,
	o => \result_add[10]~output_o\);

-- Location: IOOBUF_X23_Y24_N23
\result_add[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \subs|Adders:11:Adder|subs~combout\,
	devoe => ww_devoe,
	o => \result_add[11]~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\result_add[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \subs|Adders:12:Adder|subs~combout\,
	devoe => ww_devoe,
	o => \result_add[12]~output_o\);

-- Location: IOOBUF_X11_Y24_N2
\result_add[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \subs|Adders:13:Adder|subs~combout\,
	devoe => ww_devoe,
	o => \result_add[13]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\result_add[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \subs|Adders:14:Adder|subs~combout\,
	devoe => ww_devoe,
	o => \result_add[14]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\result_add[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \subs|Adders:15:Adder|subs~combout\,
	devoe => ww_devoe,
	o => \result_add[15]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\bout_add~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \subs|Adders:15:Adder|bout~0_combout\,
	devoe => ww_devoe,
	o => \bout_add~output_o\);

-- Location: IOIBUF_X16_Y0_N22
\x_add[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_add(0),
	o => \x_add[0]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\y_add[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_add(0),
	o => \y_add[0]~input_o\);

-- Location: LCCOMB_X17_Y1_N0
\subs|Adder_0|subs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adder_0|subs~0_combout\ = \x_add[0]~input_o\ $ (\y_add[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_add[0]~input_o\,
	datac => \y_add[0]~input_o\,
	combout => \subs|Adder_0|subs~0_combout\);

-- Location: IOIBUF_X18_Y0_N1
\OP~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP,
	o => \OP~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\x_add[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_add(1),
	o => \x_add[1]~input_o\);

-- Location: LCCOMB_X17_Y1_N26
\subs|Adder_0|bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adder_0|bout~0_combout\ = (\y_add[0]~input_o\ & ((!\x_add[0]~input_o\))) # (!\y_add[0]~input_o\ & (\OP~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~input_o\,
	datab => \x_add[0]~input_o\,
	datac => \y_add[0]~input_o\,
	combout => \subs|Adder_0|bout~0_combout\);

-- Location: IOIBUF_X21_Y0_N22
\y_add[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_add(1),
	o => \y_add[1]~input_o\);

-- Location: LCCOMB_X17_Y1_N28
\subs|Adders:1:Adder|subs\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:1:Adder|subs~combout\ = \OP~input_o\ $ (\x_add[1]~input_o\ $ (\subs|Adder_0|bout~0_combout\ $ (\y_add[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~input_o\,
	datab => \x_add[1]~input_o\,
	datac => \subs|Adder_0|bout~0_combout\,
	datad => \y_add[1]~input_o\,
	combout => \subs|Adders:1:Adder|subs~combout\);

-- Location: LCCOMB_X17_Y1_N14
\subs|Adders:1:Adder|bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:1:Adder|bout~0_combout\ = (\x_add[1]~input_o\ & (\subs|Adder_0|bout~0_combout\ & (\OP~input_o\ $ (\y_add[1]~input_o\)))) # (!\x_add[1]~input_o\ & ((\subs|Adder_0|bout~0_combout\) # (\OP~input_o\ $ (\y_add[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~input_o\,
	datab => \x_add[1]~input_o\,
	datac => \subs|Adder_0|bout~0_combout\,
	datad => \y_add[1]~input_o\,
	combout => \subs|Adders:1:Adder|bout~0_combout\);

-- Location: IOIBUF_X9_Y0_N22
\x_add[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_add(2),
	o => \x_add[2]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\y_add[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_add(2),
	o => \y_add[2]~input_o\);

-- Location: LCCOMB_X17_Y1_N8
\subs|Adders:2:Adder|subs\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:2:Adder|subs~combout\ = \OP~input_o\ $ (\subs|Adders:1:Adder|bout~0_combout\ $ (\x_add[2]~input_o\ $ (\y_add[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~input_o\,
	datab => \subs|Adders:1:Adder|bout~0_combout\,
	datac => \x_add[2]~input_o\,
	datad => \y_add[2]~input_o\,
	combout => \subs|Adders:2:Adder|subs~combout\);

-- Location: LCCOMB_X17_Y1_N18
\subs|Adders:2:Adder|bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:2:Adder|bout~0_combout\ = (\subs|Adders:1:Adder|bout~0_combout\ & ((\OP~input_o\ $ (\y_add[2]~input_o\)) # (!\x_add[2]~input_o\))) # (!\subs|Adders:1:Adder|bout~0_combout\ & (!\x_add[2]~input_o\ & (\OP~input_o\ $ (\y_add[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~input_o\,
	datab => \subs|Adders:1:Adder|bout~0_combout\,
	datac => \x_add[2]~input_o\,
	datad => \y_add[2]~input_o\,
	combout => \subs|Adders:2:Adder|bout~0_combout\);

-- Location: IOIBUF_X18_Y0_N15
\x_add[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_add(3),
	o => \x_add[3]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\y_add[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_add(3),
	o => \y_add[3]~input_o\);

-- Location: LCCOMB_X17_Y1_N12
\subs|Adders:3:Adder|subs\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:3:Adder|subs~combout\ = \OP~input_o\ $ (\subs|Adders:2:Adder|bout~0_combout\ $ (\x_add[3]~input_o\ $ (\y_add[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~input_o\,
	datab => \subs|Adders:2:Adder|bout~0_combout\,
	datac => \x_add[3]~input_o\,
	datad => \y_add[3]~input_o\,
	combout => \subs|Adders:3:Adder|subs~combout\);

-- Location: LCCOMB_X17_Y1_N30
\subs|Adders:3:Adder|bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:3:Adder|bout~0_combout\ = (\subs|Adders:2:Adder|bout~0_combout\ & ((\OP~input_o\ $ (\y_add[3]~input_o\)) # (!\x_add[3]~input_o\))) # (!\subs|Adders:2:Adder|bout~0_combout\ & (!\x_add[3]~input_o\ & (\OP~input_o\ $ (\y_add[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~input_o\,
	datab => \subs|Adders:2:Adder|bout~0_combout\,
	datac => \x_add[3]~input_o\,
	datad => \y_add[3]~input_o\,
	combout => \subs|Adders:3:Adder|bout~0_combout\);

-- Location: IOIBUF_X23_Y0_N1
\y_add[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_add(4),
	o => \y_add[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\x_add[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_add(4),
	o => \x_add[4]~input_o\);

-- Location: LCCOMB_X17_Y1_N16
\subs|Adders:4:Adder|subs\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:4:Adder|subs~combout\ = \subs|Adders:3:Adder|bout~0_combout\ $ (\y_add[4]~input_o\ $ (\OP~input_o\ $ (\x_add[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subs|Adders:3:Adder|bout~0_combout\,
	datab => \y_add[4]~input_o\,
	datac => \OP~input_o\,
	datad => \x_add[4]~input_o\,
	combout => \subs|Adders:4:Adder|subs~combout\);

-- Location: LCCOMB_X17_Y1_N10
\subs|Adders:4:Adder|bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:4:Adder|bout~0_combout\ = (\subs|Adders:3:Adder|bout~0_combout\ & ((\y_add[4]~input_o\ $ (\OP~input_o\)) # (!\x_add[4]~input_o\))) # (!\subs|Adders:3:Adder|bout~0_combout\ & (!\x_add[4]~input_o\ & (\y_add[4]~input_o\ $ (\OP~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subs|Adders:3:Adder|bout~0_combout\,
	datab => \y_add[4]~input_o\,
	datac => \OP~input_o\,
	datad => \x_add[4]~input_o\,
	combout => \subs|Adders:4:Adder|bout~0_combout\);

-- Location: IOIBUF_X9_Y0_N1
\x_add[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_add(5),
	o => \x_add[5]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\y_add[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_add(5),
	o => \y_add[5]~input_o\);

-- Location: LCCOMB_X17_Y1_N20
\subs|Adders:5:Adder|subs\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:5:Adder|subs~combout\ = \subs|Adders:4:Adder|bout~0_combout\ $ (\x_add[5]~input_o\ $ (\OP~input_o\ $ (\y_add[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subs|Adders:4:Adder|bout~0_combout\,
	datab => \x_add[5]~input_o\,
	datac => \OP~input_o\,
	datad => \y_add[5]~input_o\,
	combout => \subs|Adders:5:Adder|subs~combout\);

-- Location: IOIBUF_X11_Y0_N15
\x_add[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_add(6),
	o => \x_add[6]~input_o\);

-- Location: LCCOMB_X17_Y1_N22
\subs|Adders:5:Adder|bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:5:Adder|bout~0_combout\ = (\subs|Adders:4:Adder|bout~0_combout\ & ((\OP~input_o\ $ (\y_add[5]~input_o\)) # (!\x_add[5]~input_o\))) # (!\subs|Adders:4:Adder|bout~0_combout\ & (!\x_add[5]~input_o\ & (\OP~input_o\ $ (\y_add[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subs|Adders:4:Adder|bout~0_combout\,
	datab => \x_add[5]~input_o\,
	datac => \OP~input_o\,
	datad => \y_add[5]~input_o\,
	combout => \subs|Adders:5:Adder|bout~0_combout\);

-- Location: IOIBUF_X18_Y0_N22
\y_add[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_add(6),
	o => \y_add[6]~input_o\);

-- Location: LCCOMB_X17_Y1_N24
\subs|Adders:6:Adder|subs\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:6:Adder|subs~combout\ = \OP~input_o\ $ (\x_add[6]~input_o\ $ (\subs|Adders:5:Adder|bout~0_combout\ $ (\y_add[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~input_o\,
	datab => \x_add[6]~input_o\,
	datac => \subs|Adders:5:Adder|bout~0_combout\,
	datad => \y_add[6]~input_o\,
	combout => \subs|Adders:6:Adder|subs~combout\);

-- Location: IOIBUF_X21_Y0_N8
\x_add[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_add(7),
	o => \x_add[7]~input_o\);

-- Location: LCCOMB_X17_Y1_N2
\subs|Adders:6:Adder|bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:6:Adder|bout~0_combout\ = (\x_add[6]~input_o\ & (\subs|Adders:5:Adder|bout~0_combout\ & (\OP~input_o\ $ (\y_add[6]~input_o\)))) # (!\x_add[6]~input_o\ & ((\subs|Adders:5:Adder|bout~0_combout\) # (\OP~input_o\ $ (\y_add[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~input_o\,
	datab => \x_add[6]~input_o\,
	datac => \subs|Adders:5:Adder|bout~0_combout\,
	datad => \y_add[6]~input_o\,
	combout => \subs|Adders:6:Adder|bout~0_combout\);

-- Location: IOIBUF_X13_Y0_N22
\y_add[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_add(7),
	o => \y_add[7]~input_o\);

-- Location: LCCOMB_X17_Y1_N4
\subs|Adders:7:Adder|subs\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:7:Adder|subs~combout\ = \x_add[7]~input_o\ $ (\subs|Adders:6:Adder|bout~0_combout\ $ (\OP~input_o\ $ (\y_add[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_add[7]~input_o\,
	datab => \subs|Adders:6:Adder|bout~0_combout\,
	datac => \OP~input_o\,
	datad => \y_add[7]~input_o\,
	combout => \subs|Adders:7:Adder|subs~combout\);

-- Location: LCCOMB_X17_Y1_N6
\subs|Adders:7:Adder|bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:7:Adder|bout~0_combout\ = (\x_add[7]~input_o\ & (\subs|Adders:6:Adder|bout~0_combout\ & (\OP~input_o\ $ (\y_add[7]~input_o\)))) # (!\x_add[7]~input_o\ & ((\subs|Adders:6:Adder|bout~0_combout\) # (\OP~input_o\ $ (\y_add[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_add[7]~input_o\,
	datab => \subs|Adders:6:Adder|bout~0_combout\,
	datac => \OP~input_o\,
	datad => \y_add[7]~input_o\,
	combout => \subs|Adders:7:Adder|bout~0_combout\);

-- Location: IOIBUF_X21_Y24_N15
\y_add[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_add(8),
	o => \y_add[8]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\x_add[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_add(8),
	o => \x_add[8]~input_o\);

-- Location: LCCOMB_X18_Y20_N8
\subs|Adders:8:Adder|subs\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:8:Adder|subs~combout\ = \OP~input_o\ $ (\subs|Adders:7:Adder|bout~0_combout\ $ (\y_add[8]~input_o\ $ (\x_add[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~input_o\,
	datab => \subs|Adders:7:Adder|bout~0_combout\,
	datac => \y_add[8]~input_o\,
	datad => \x_add[8]~input_o\,
	combout => \subs|Adders:8:Adder|subs~combout\);

-- Location: IOIBUF_X13_Y24_N15
\y_add[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_add(9),
	o => \y_add[9]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\x_add[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_add(9),
	o => \x_add[9]~input_o\);

-- Location: LCCOMB_X18_Y20_N10
\subs|Adders:8:Adder|bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:8:Adder|bout~0_combout\ = (\subs|Adders:7:Adder|bout~0_combout\ & ((\OP~input_o\ $ (\y_add[8]~input_o\)) # (!\x_add[8]~input_o\))) # (!\subs|Adders:7:Adder|bout~0_combout\ & (!\x_add[8]~input_o\ & (\OP~input_o\ $ (\y_add[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~input_o\,
	datab => \subs|Adders:7:Adder|bout~0_combout\,
	datac => \y_add[8]~input_o\,
	datad => \x_add[8]~input_o\,
	combout => \subs|Adders:8:Adder|bout~0_combout\);

-- Location: LCCOMB_X18_Y20_N4
\subs|Adders:9:Adder|subs\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:9:Adder|subs~combout\ = \y_add[9]~input_o\ $ (\x_add[9]~input_o\ $ (\OP~input_o\ $ (\subs|Adders:8:Adder|bout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_add[9]~input_o\,
	datab => \x_add[9]~input_o\,
	datac => \OP~input_o\,
	datad => \subs|Adders:8:Adder|bout~0_combout\,
	combout => \subs|Adders:9:Adder|subs~combout\);

-- Location: IOIBUF_X21_Y24_N8
\y_add[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_add(10),
	o => \y_add[10]~input_o\);

-- Location: LCCOMB_X18_Y20_N22
\subs|Adders:9:Adder|bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:9:Adder|bout~0_combout\ = (\x_add[9]~input_o\ & (\subs|Adders:8:Adder|bout~0_combout\ & (\y_add[9]~input_o\ $ (\OP~input_o\)))) # (!\x_add[9]~input_o\ & ((\subs|Adders:8:Adder|bout~0_combout\) # (\y_add[9]~input_o\ $ (\OP~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_add[9]~input_o\,
	datab => \x_add[9]~input_o\,
	datac => \OP~input_o\,
	datad => \subs|Adders:8:Adder|bout~0_combout\,
	combout => \subs|Adders:9:Adder|bout~0_combout\);

-- Location: IOIBUF_X34_Y12_N22
\x_add[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_add(10),
	o => \x_add[10]~input_o\);

-- Location: LCCOMB_X18_Y20_N0
\subs|Adders:10:Adder|subs\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:10:Adder|subs~combout\ = \OP~input_o\ $ (\y_add[10]~input_o\ $ (\subs|Adders:9:Adder|bout~0_combout\ $ (\x_add[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~input_o\,
	datab => \y_add[10]~input_o\,
	datac => \subs|Adders:9:Adder|bout~0_combout\,
	datad => \x_add[10]~input_o\,
	combout => \subs|Adders:10:Adder|subs~combout\);

-- Location: LCCOMB_X18_Y20_N26
\subs|Adders:10:Adder|bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:10:Adder|bout~0_combout\ = (\subs|Adders:9:Adder|bout~0_combout\ & ((\OP~input_o\ $ (\y_add[10]~input_o\)) # (!\x_add[10]~input_o\))) # (!\subs|Adders:9:Adder|bout~0_combout\ & (!\x_add[10]~input_o\ & (\OP~input_o\ $ (\y_add[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~input_o\,
	datab => \y_add[10]~input_o\,
	datac => \subs|Adders:9:Adder|bout~0_combout\,
	datad => \x_add[10]~input_o\,
	combout => \subs|Adders:10:Adder|bout~0_combout\);

-- Location: IOIBUF_X18_Y24_N8
\x_add[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_add(11),
	o => \x_add[11]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\y_add[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_add(11),
	o => \y_add[11]~input_o\);

-- Location: LCCOMB_X18_Y20_N20
\subs|Adders:11:Adder|subs\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:11:Adder|subs~combout\ = \subs|Adders:10:Adder|bout~0_combout\ $ (\x_add[11]~input_o\ $ (\y_add[11]~input_o\ $ (\OP~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subs|Adders:10:Adder|bout~0_combout\,
	datab => \x_add[11]~input_o\,
	datac => \y_add[11]~input_o\,
	datad => \OP~input_o\,
	combout => \subs|Adders:11:Adder|subs~combout\);

-- Location: LCCOMB_X18_Y20_N30
\subs|Adders:11:Adder|bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:11:Adder|bout~0_combout\ = (\subs|Adders:10:Adder|bout~0_combout\ & ((\y_add[11]~input_o\ $ (\OP~input_o\)) # (!\x_add[11]~input_o\))) # (!\subs|Adders:10:Adder|bout~0_combout\ & (!\x_add[11]~input_o\ & (\y_add[11]~input_o\ $ 
-- (\OP~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subs|Adders:10:Adder|bout~0_combout\,
	datab => \x_add[11]~input_o\,
	datac => \y_add[11]~input_o\,
	datad => \OP~input_o\,
	combout => \subs|Adders:11:Adder|bout~0_combout\);

-- Location: IOIBUF_X34_Y12_N1
\x_add[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_add(12),
	o => \x_add[12]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\y_add[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_add(12),
	o => \y_add[12]~input_o\);

-- Location: LCCOMB_X18_Y20_N24
\subs|Adders:12:Adder|subs\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:12:Adder|subs~combout\ = \subs|Adders:11:Adder|bout~0_combout\ $ (\x_add[12]~input_o\ $ (\OP~input_o\ $ (\y_add[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subs|Adders:11:Adder|bout~0_combout\,
	datab => \x_add[12]~input_o\,
	datac => \OP~input_o\,
	datad => \y_add[12]~input_o\,
	combout => \subs|Adders:12:Adder|subs~combout\);

-- Location: IOIBUF_X18_Y24_N22
\x_add[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_add(13),
	o => \x_add[13]~input_o\);

-- Location: LCCOMB_X18_Y20_N2
\subs|Adders:12:Adder|bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:12:Adder|bout~0_combout\ = (\subs|Adders:11:Adder|bout~0_combout\ & ((\OP~input_o\ $ (\y_add[12]~input_o\)) # (!\x_add[12]~input_o\))) # (!\subs|Adders:11:Adder|bout~0_combout\ & (!\x_add[12]~input_o\ & (\OP~input_o\ $ 
-- (\y_add[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subs|Adders:11:Adder|bout~0_combout\,
	datab => \x_add[12]~input_o\,
	datac => \OP~input_o\,
	datad => \y_add[12]~input_o\,
	combout => \subs|Adders:12:Adder|bout~0_combout\);

-- Location: IOIBUF_X23_Y24_N8
\y_add[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_add(13),
	o => \y_add[13]~input_o\);

-- Location: LCCOMB_X18_Y20_N12
\subs|Adders:13:Adder|subs\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:13:Adder|subs~combout\ = \x_add[13]~input_o\ $ (\subs|Adders:12:Adder|bout~0_combout\ $ (\OP~input_o\ $ (\y_add[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_add[13]~input_o\,
	datab => \subs|Adders:12:Adder|bout~0_combout\,
	datac => \OP~input_o\,
	datad => \y_add[13]~input_o\,
	combout => \subs|Adders:13:Adder|subs~combout\);

-- Location: IOIBUF_X13_Y24_N1
\y_add[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_add(14),
	o => \y_add[14]~input_o\);

-- Location: LCCOMB_X18_Y20_N14
\subs|Adders:13:Adder|bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:13:Adder|bout~0_combout\ = (\x_add[13]~input_o\ & (\subs|Adders:12:Adder|bout~0_combout\ & (\OP~input_o\ $ (\y_add[13]~input_o\)))) # (!\x_add[13]~input_o\ & ((\subs|Adders:12:Adder|bout~0_combout\) # (\OP~input_o\ $ (\y_add[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_add[13]~input_o\,
	datab => \subs|Adders:12:Adder|bout~0_combout\,
	datac => \OP~input_o\,
	datad => \y_add[13]~input_o\,
	combout => \subs|Adders:13:Adder|bout~0_combout\);

-- Location: IOIBUF_X11_Y24_N8
\x_add[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_add(14),
	o => \x_add[14]~input_o\);

-- Location: LCCOMB_X18_Y20_N16
\subs|Adders:14:Adder|subs\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:14:Adder|subs~combout\ = \y_add[14]~input_o\ $ (\subs|Adders:13:Adder|bout~0_combout\ $ (\OP~input_o\ $ (\x_add[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_add[14]~input_o\,
	datab => \subs|Adders:13:Adder|bout~0_combout\,
	datac => \OP~input_o\,
	datad => \x_add[14]~input_o\,
	combout => \subs|Adders:14:Adder|subs~combout\);

-- Location: IOIBUF_X16_Y24_N22
\y_add[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_add(15),
	o => \y_add[15]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\x_add[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_add(15),
	o => \x_add[15]~input_o\);

-- Location: LCCOMB_X18_Y20_N18
\subs|Adders:14:Adder|bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:14:Adder|bout~0_combout\ = (\subs|Adders:13:Adder|bout~0_combout\ & ((\y_add[14]~input_o\ $ (\OP~input_o\)) # (!\x_add[14]~input_o\))) # (!\subs|Adders:13:Adder|bout~0_combout\ & (!\x_add[14]~input_o\ & (\y_add[14]~input_o\ $ 
-- (\OP~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_add[14]~input_o\,
	datab => \subs|Adders:13:Adder|bout~0_combout\,
	datac => \OP~input_o\,
	datad => \x_add[14]~input_o\,
	combout => \subs|Adders:14:Adder|bout~0_combout\);

-- Location: LCCOMB_X18_Y20_N28
\subs|Adders:15:Adder|subs\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:15:Adder|subs~combout\ = \OP~input_o\ $ (\y_add[15]~input_o\ $ (\x_add[15]~input_o\ $ (\subs|Adders:14:Adder|bout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~input_o\,
	datab => \y_add[15]~input_o\,
	datac => \x_add[15]~input_o\,
	datad => \subs|Adders:14:Adder|bout~0_combout\,
	combout => \subs|Adders:15:Adder|subs~combout\);

-- Location: LCCOMB_X18_Y20_N6
\subs|Adders:15:Adder|bout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \subs|Adders:15:Adder|bout~0_combout\ = (\x_add[15]~input_o\ & (\subs|Adders:14:Adder|bout~0_combout\ & (\OP~input_o\ $ (\y_add[15]~input_o\)))) # (!\x_add[15]~input_o\ & ((\subs|Adders:14:Adder|bout~0_combout\) # (\OP~input_o\ $ (\y_add[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~input_o\,
	datab => \y_add[15]~input_o\,
	datac => \x_add[15]~input_o\,
	datad => \subs|Adders:14:Adder|bout~0_combout\,
	combout => \subs|Adders:15:Adder|bout~0_combout\);

ww_result_add(0) <= \result_add[0]~output_o\;

ww_result_add(1) <= \result_add[1]~output_o\;

ww_result_add(2) <= \result_add[2]~output_o\;

ww_result_add(3) <= \result_add[3]~output_o\;

ww_result_add(4) <= \result_add[4]~output_o\;

ww_result_add(5) <= \result_add[5]~output_o\;

ww_result_add(6) <= \result_add[6]~output_o\;

ww_result_add(7) <= \result_add[7]~output_o\;

ww_result_add(8) <= \result_add[8]~output_o\;

ww_result_add(9) <= \result_add[9]~output_o\;

ww_result_add(10) <= \result_add[10]~output_o\;

ww_result_add(11) <= \result_add[11]~output_o\;

ww_result_add(12) <= \result_add[12]~output_o\;

ww_result_add(13) <= \result_add[13]~output_o\;

ww_result_add(14) <= \result_add[14]~output_o\;

ww_result_add(15) <= \result_add[15]~output_o\;

ww_bout_add <= \bout_add~output_o\;
END structure;


