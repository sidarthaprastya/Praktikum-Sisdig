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

-- DATE "10/11/2020 22:04:06"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	adder_substractor IS
    PORT (
	OP : IN std_logic;
	x_sub : IN std_logic_vector(15 DOWNTO 0);
	y_sub : IN std_logic_vector(15 DOWNTO 0);
	result_sub : OUT std_logic_vector(15 DOWNTO 0);
	cout_sub : OUT std_logic
	);
END adder_substractor;

-- Design Ports Information
-- result_sub[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_sub[1]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_sub[2]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_sub[3]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_sub[4]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_sub[5]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_sub[6]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_sub[7]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_sub[8]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_sub[9]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_sub[10]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_sub[11]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_sub[12]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_sub[13]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_sub[14]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_sub[15]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout_sub	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_sub[0]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_sub[0]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_sub[1]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_sub[1]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_sub[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_sub[2]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_sub[3]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_sub[3]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_sub[4]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_sub[4]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_sub[5]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_sub[5]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_sub[6]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_sub[6]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_sub[7]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_sub[7]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_sub[8]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_sub[8]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_sub[9]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_sub[9]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_sub[10]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_sub[10]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_sub[11]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_sub[11]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_sub[12]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_sub[12]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_sub[13]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_sub[13]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_sub[14]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_sub[14]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_sub[15]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_sub[15]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF adder_substractor IS
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
SIGNAL ww_x_sub : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_y_sub : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_result_sub : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_cout_sub : std_logic;
SIGNAL \result_sub[0]~output_o\ : std_logic;
SIGNAL \result_sub[1]~output_o\ : std_logic;
SIGNAL \result_sub[2]~output_o\ : std_logic;
SIGNAL \result_sub[3]~output_o\ : std_logic;
SIGNAL \result_sub[4]~output_o\ : std_logic;
SIGNAL \result_sub[5]~output_o\ : std_logic;
SIGNAL \result_sub[6]~output_o\ : std_logic;
SIGNAL \result_sub[7]~output_o\ : std_logic;
SIGNAL \result_sub[8]~output_o\ : std_logic;
SIGNAL \result_sub[9]~output_o\ : std_logic;
SIGNAL \result_sub[10]~output_o\ : std_logic;
SIGNAL \result_sub[11]~output_o\ : std_logic;
SIGNAL \result_sub[12]~output_o\ : std_logic;
SIGNAL \result_sub[13]~output_o\ : std_logic;
SIGNAL \result_sub[14]~output_o\ : std_logic;
SIGNAL \result_sub[15]~output_o\ : std_logic;
SIGNAL \cout_sub~output_o\ : std_logic;
SIGNAL \y_sub[0]~input_o\ : std_logic;
SIGNAL \x_sub[0]~input_o\ : std_logic;
SIGNAL \adder|Adder_0|sum~0_combout\ : std_logic;
SIGNAL \OP~input_o\ : std_logic;
SIGNAL \adder|Adder_0|cout~1_combout\ : std_logic;
SIGNAL \adder|Adder_0|cout~0_combout\ : std_logic;
SIGNAL \y_sub[1]~input_o\ : std_logic;
SIGNAL \x_sub[1]~input_o\ : std_logic;
SIGNAL \adder|Adders:1:Adder|sum~combout\ : std_logic;
SIGNAL \adder|Adders:1:Adder|cout~0_combout\ : std_logic;
SIGNAL \x_sub[2]~input_o\ : std_logic;
SIGNAL \y_sub[2]~input_o\ : std_logic;
SIGNAL \adder|Adders:2:Adder|sum~0_combout\ : std_logic;
SIGNAL \y_sub[3]~input_o\ : std_logic;
SIGNAL \adder|Adders:2:Adder|cout~0_combout\ : std_logic;
SIGNAL \x_sub[3]~input_o\ : std_logic;
SIGNAL \adder|Adders:3:Adder|sum~0_combout\ : std_logic;
SIGNAL \x_sub[4]~input_o\ : std_logic;
SIGNAL \adder|Adders:3:Adder|cout~0_combout\ : std_logic;
SIGNAL \y_sub[4]~input_o\ : std_logic;
SIGNAL \adder|Adders:4:Adder|sum~0_combout\ : std_logic;
SIGNAL \adder|Adders:4:Adder|cout~0_combout\ : std_logic;
SIGNAL \y_sub[5]~input_o\ : std_logic;
SIGNAL \x_sub[5]~input_o\ : std_logic;
SIGNAL \adder|Adders:5:Adder|sum~0_combout\ : std_logic;
SIGNAL \x_sub[6]~input_o\ : std_logic;
SIGNAL \adder|Adders:5:Adder|cout~0_combout\ : std_logic;
SIGNAL \y_sub[6]~input_o\ : std_logic;
SIGNAL \adder|Adders:6:Adder|sum~0_combout\ : std_logic;
SIGNAL \y_sub[7]~input_o\ : std_logic;
SIGNAL \x_sub[7]~input_o\ : std_logic;
SIGNAL \adder|Adders:6:Adder|cout~0_combout\ : std_logic;
SIGNAL \adder|Adders:7:Adder|sum~0_combout\ : std_logic;
SIGNAL \adder|Adders:7:Adder|cout~0_combout\ : std_logic;
SIGNAL \x_sub[8]~input_o\ : std_logic;
SIGNAL \y_sub[8]~input_o\ : std_logic;
SIGNAL \adder|Adders:8:Adder|sum~0_combout\ : std_logic;
SIGNAL \x_sub[9]~input_o\ : std_logic;
SIGNAL \y_sub[9]~input_o\ : std_logic;
SIGNAL \adder|Adders:8:Adder|cout~0_combout\ : std_logic;
SIGNAL \adder|Adders:9:Adder|sum~0_combout\ : std_logic;
SIGNAL \x_sub[10]~input_o\ : std_logic;
SIGNAL \adder|Adders:9:Adder|cout~0_combout\ : std_logic;
SIGNAL \y_sub[10]~input_o\ : std_logic;
SIGNAL \adder|Adders:10:Adder|sum~0_combout\ : std_logic;
SIGNAL \adder|Adders:10:Adder|cout~0_combout\ : std_logic;
SIGNAL \x_sub[11]~input_o\ : std_logic;
SIGNAL \y_sub[11]~input_o\ : std_logic;
SIGNAL \adder|Adders:11:Adder|sum~0_combout\ : std_logic;
SIGNAL \y_sub[12]~input_o\ : std_logic;
SIGNAL \x_sub[12]~input_o\ : std_logic;
SIGNAL \adder|Adders:11:Adder|cout~0_combout\ : std_logic;
SIGNAL \adder|Adders:12:Adder|sum~0_combout\ : std_logic;
SIGNAL \adder|Adders:12:Adder|cout~0_combout\ : std_logic;
SIGNAL \y_sub[13]~input_o\ : std_logic;
SIGNAL \x_sub[13]~input_o\ : std_logic;
SIGNAL \adder|Adders:13:Adder|sum~0_combout\ : std_logic;
SIGNAL \adder|Adders:13:Adder|cout~0_combout\ : std_logic;
SIGNAL \y_sub[14]~input_o\ : std_logic;
SIGNAL \x_sub[14]~input_o\ : std_logic;
SIGNAL \adder|Adders:14:Adder|sum~0_combout\ : std_logic;
SIGNAL \y_sub[15]~input_o\ : std_logic;
SIGNAL \x_sub[15]~input_o\ : std_logic;
SIGNAL \adder|Adders:14:Adder|cout~0_combout\ : std_logic;
SIGNAL \adder|Adders:15:Adder|sum~0_combout\ : std_logic;
SIGNAL \adder|Adders:15:Adder|cout~0_combout\ : std_logic;
SIGNAL truey : std_logic_vector(15 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_OP <= OP;
ww_x_sub <= x_sub;
ww_y_sub <= y_sub;
result_sub <= ww_result_sub;
cout_sub <= ww_cout_sub;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y0_N2
\result_sub[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|Adder_0|sum~0_combout\,
	devoe => ww_devoe,
	o => \result_sub[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\result_sub[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|Adders:1:Adder|sum~combout\,
	devoe => ww_devoe,
	o => \result_sub[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\result_sub[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|Adders:2:Adder|sum~0_combout\,
	devoe => ww_devoe,
	o => \result_sub[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\result_sub[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|Adders:3:Adder|sum~0_combout\,
	devoe => ww_devoe,
	o => \result_sub[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\result_sub[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|Adders:4:Adder|sum~0_combout\,
	devoe => ww_devoe,
	o => \result_sub[4]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\result_sub[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|Adders:5:Adder|sum~0_combout\,
	devoe => ww_devoe,
	o => \result_sub[5]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\result_sub[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|Adders:6:Adder|sum~0_combout\,
	devoe => ww_devoe,
	o => \result_sub[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\result_sub[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|Adders:7:Adder|sum~0_combout\,
	devoe => ww_devoe,
	o => \result_sub[7]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\result_sub[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|Adders:8:Adder|sum~0_combout\,
	devoe => ww_devoe,
	o => \result_sub[8]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\result_sub[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|Adders:9:Adder|sum~0_combout\,
	devoe => ww_devoe,
	o => \result_sub[9]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\result_sub[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|Adders:10:Adder|sum~0_combout\,
	devoe => ww_devoe,
	o => \result_sub[10]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\result_sub[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|Adders:11:Adder|sum~0_combout\,
	devoe => ww_devoe,
	o => \result_sub[11]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\result_sub[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|Adders:12:Adder|sum~0_combout\,
	devoe => ww_devoe,
	o => \result_sub[12]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\result_sub[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|Adders:13:Adder|sum~0_combout\,
	devoe => ww_devoe,
	o => \result_sub[13]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\result_sub[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|Adders:14:Adder|sum~0_combout\,
	devoe => ww_devoe,
	o => \result_sub[14]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\result_sub[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|Adders:15:Adder|sum~0_combout\,
	devoe => ww_devoe,
	o => \result_sub[15]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\cout_sub~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|Adders:15:Adder|cout~0_combout\,
	devoe => ww_devoe,
	o => \cout_sub~output_o\);

-- Location: IOIBUF_X16_Y0_N1
\y_sub[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_sub(0),
	o => \y_sub[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\x_sub[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_sub(0),
	o => \x_sub[0]~input_o\);

-- Location: LCCOMB_X19_Y4_N8
\adder|Adder_0|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adder_0|sum~0_combout\ = \y_sub[0]~input_o\ $ (\x_sub[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_sub[0]~input_o\,
	datad => \x_sub[0]~input_o\,
	combout => \adder|Adder_0|sum~0_combout\);

-- Location: IOIBUF_X34_Y10_N8
\OP~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP,
	o => \OP~input_o\);

-- Location: LCCOMB_X19_Y4_N22
\adder|Adder_0|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adder_0|cout~1_combout\ = (\x_sub[0]~input_o\ & ((\y_sub[0]~input_o\) # (\OP~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_sub[0]~input_o\,
	datac => \y_sub[0]~input_o\,
	datad => \OP~input_o\,
	combout => \adder|Adder_0|cout~1_combout\);

-- Location: LCCOMB_X19_Y4_N28
\adder|Adder_0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adder_0|cout~0_combout\ = (!\y_sub[0]~input_o\ & \OP~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_sub[0]~input_o\,
	datad => \OP~input_o\,
	combout => \adder|Adder_0|cout~0_combout\);

-- Location: IOIBUF_X5_Y0_N22
\y_sub[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_sub(1),
	o => \y_sub[1]~input_o\);

-- Location: LCCOMB_X19_Y4_N26
\truey[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- truey(1) = \y_sub[1]~input_o\ $ (\OP~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_sub[1]~input_o\,
	datad => \OP~input_o\,
	combout => truey(1));

-- Location: IOIBUF_X23_Y0_N8
\x_sub[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_sub(1),
	o => \x_sub[1]~input_o\);

-- Location: LCCOMB_X19_Y4_N24
\adder|Adders:1:Adder|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:1:Adder|sum~combout\ = truey(1) $ (\x_sub[1]~input_o\ $ (((\adder|Adder_0|cout~1_combout\) # (\adder|Adder_0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|Adder_0|cout~1_combout\,
	datab => \adder|Adder_0|cout~0_combout\,
	datac => truey(1),
	datad => \x_sub[1]~input_o\,
	combout => \adder|Adders:1:Adder|sum~combout\);

-- Location: LCCOMB_X19_Y4_N10
\adder|Adders:1:Adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:1:Adder|cout~0_combout\ = (truey(1) & ((\adder|Adder_0|cout~1_combout\) # ((\adder|Adder_0|cout~0_combout\) # (\x_sub[1]~input_o\)))) # (!truey(1) & (\x_sub[1]~input_o\ & ((\adder|Adder_0|cout~1_combout\) # 
-- (\adder|Adder_0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|Adder_0|cout~1_combout\,
	datab => \adder|Adder_0|cout~0_combout\,
	datac => truey(1),
	datad => \x_sub[1]~input_o\,
	combout => \adder|Adders:1:Adder|cout~0_combout\);

-- Location: IOIBUF_X18_Y0_N22
\x_sub[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_sub(2),
	o => \x_sub[2]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\y_sub[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_sub(2),
	o => \y_sub[2]~input_o\);

-- Location: LCCOMB_X19_Y4_N20
\adder|Adders:2:Adder|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:2:Adder|sum~0_combout\ = \adder|Adders:1:Adder|cout~0_combout\ $ (\x_sub[2]~input_o\ $ (\y_sub[2]~input_o\ $ (\OP~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|Adders:1:Adder|cout~0_combout\,
	datab => \x_sub[2]~input_o\,
	datac => \y_sub[2]~input_o\,
	datad => \OP~input_o\,
	combout => \adder|Adders:2:Adder|sum~0_combout\);

-- Location: IOIBUF_X5_Y0_N15
\y_sub[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_sub(3),
	o => \y_sub[3]~input_o\);

-- Location: LCCOMB_X19_Y4_N14
\adder|Adders:2:Adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:2:Adder|cout~0_combout\ = (\adder|Adders:1:Adder|cout~0_combout\ & ((\x_sub[2]~input_o\) # (\y_sub[2]~input_o\ $ (\OP~input_o\)))) # (!\adder|Adders:1:Adder|cout~0_combout\ & (\x_sub[2]~input_o\ & (\y_sub[2]~input_o\ $ (\OP~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|Adders:1:Adder|cout~0_combout\,
	datab => \x_sub[2]~input_o\,
	datac => \y_sub[2]~input_o\,
	datad => \OP~input_o\,
	combout => \adder|Adders:2:Adder|cout~0_combout\);

-- Location: IOIBUF_X28_Y0_N1
\x_sub[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_sub(3),
	o => \x_sub[3]~input_o\);

-- Location: LCCOMB_X19_Y4_N0
\adder|Adders:3:Adder|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:3:Adder|sum~0_combout\ = \y_sub[3]~input_o\ $ (\adder|Adders:2:Adder|cout~0_combout\ $ (\x_sub[3]~input_o\ $ (\OP~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_sub[3]~input_o\,
	datab => \adder|Adders:2:Adder|cout~0_combout\,
	datac => \x_sub[3]~input_o\,
	datad => \OP~input_o\,
	combout => \adder|Adders:3:Adder|sum~0_combout\);

-- Location: IOIBUF_X18_Y24_N15
\x_sub[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_sub(4),
	o => \x_sub[4]~input_o\);

-- Location: LCCOMB_X19_Y4_N18
\adder|Adders:3:Adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:3:Adder|cout~0_combout\ = (\adder|Adders:2:Adder|cout~0_combout\ & ((\x_sub[3]~input_o\) # (\y_sub[3]~input_o\ $ (\OP~input_o\)))) # (!\adder|Adders:2:Adder|cout~0_combout\ & (\x_sub[3]~input_o\ & (\y_sub[3]~input_o\ $ (\OP~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_sub[3]~input_o\,
	datab => \adder|Adders:2:Adder|cout~0_combout\,
	datac => \x_sub[3]~input_o\,
	datad => \OP~input_o\,
	combout => \adder|Adders:3:Adder|cout~0_combout\);

-- Location: IOIBUF_X28_Y0_N22
\y_sub[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_sub(4),
	o => \y_sub[4]~input_o\);

-- Location: LCCOMB_X19_Y4_N4
\adder|Adders:4:Adder|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:4:Adder|sum~0_combout\ = \x_sub[4]~input_o\ $ (\adder|Adders:3:Adder|cout~0_combout\ $ (\y_sub[4]~input_o\ $ (\OP~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_sub[4]~input_o\,
	datab => \adder|Adders:3:Adder|cout~0_combout\,
	datac => \y_sub[4]~input_o\,
	datad => \OP~input_o\,
	combout => \adder|Adders:4:Adder|sum~0_combout\);

-- Location: LCCOMB_X19_Y4_N30
\adder|Adders:4:Adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:4:Adder|cout~0_combout\ = (\x_sub[4]~input_o\ & ((\adder|Adders:3:Adder|cout~0_combout\) # (\y_sub[4]~input_o\ $ (\OP~input_o\)))) # (!\x_sub[4]~input_o\ & (\adder|Adders:3:Adder|cout~0_combout\ & (\y_sub[4]~input_o\ $ (\OP~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_sub[4]~input_o\,
	datab => \adder|Adders:3:Adder|cout~0_combout\,
	datac => \y_sub[4]~input_o\,
	datad => \OP~input_o\,
	combout => \adder|Adders:4:Adder|cout~0_combout\);

-- Location: IOIBUF_X25_Y0_N1
\y_sub[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_sub(5),
	o => \y_sub[5]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\x_sub[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_sub(5),
	o => \x_sub[5]~input_o\);

-- Location: LCCOMB_X19_Y4_N16
\adder|Adders:5:Adder|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:5:Adder|sum~0_combout\ = \adder|Adders:4:Adder|cout~0_combout\ $ (\y_sub[5]~input_o\ $ (\x_sub[5]~input_o\ $ (\OP~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|Adders:4:Adder|cout~0_combout\,
	datab => \y_sub[5]~input_o\,
	datac => \x_sub[5]~input_o\,
	datad => \OP~input_o\,
	combout => \adder|Adders:5:Adder|sum~0_combout\);

-- Location: IOIBUF_X32_Y0_N22
\x_sub[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_sub(6),
	o => \x_sub[6]~input_o\);

-- Location: LCCOMB_X19_Y4_N2
\adder|Adders:5:Adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:5:Adder|cout~0_combout\ = (\adder|Adders:4:Adder|cout~0_combout\ & ((\x_sub[5]~input_o\) # (\y_sub[5]~input_o\ $ (\OP~input_o\)))) # (!\adder|Adders:4:Adder|cout~0_combout\ & (\x_sub[5]~input_o\ & (\y_sub[5]~input_o\ $ (\OP~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|Adders:4:Adder|cout~0_combout\,
	datab => \y_sub[5]~input_o\,
	datac => \x_sub[5]~input_o\,
	datad => \OP~input_o\,
	combout => \adder|Adders:5:Adder|cout~0_combout\);

-- Location: IOIBUF_X21_Y0_N8
\y_sub[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_sub(6),
	o => \y_sub[6]~input_o\);

-- Location: LCCOMB_X19_Y4_N12
\adder|Adders:6:Adder|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:6:Adder|sum~0_combout\ = \x_sub[6]~input_o\ $ (\adder|Adders:5:Adder|cout~0_combout\ $ (\y_sub[6]~input_o\ $ (\OP~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_sub[6]~input_o\,
	datab => \adder|Adders:5:Adder|cout~0_combout\,
	datac => \y_sub[6]~input_o\,
	datad => \OP~input_o\,
	combout => \adder|Adders:6:Adder|sum~0_combout\);

-- Location: IOIBUF_X34_Y19_N15
\y_sub[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_sub(7),
	o => \y_sub[7]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\x_sub[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_sub(7),
	o => \x_sub[7]~input_o\);

-- Location: LCCOMB_X19_Y4_N6
\adder|Adders:6:Adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:6:Adder|cout~0_combout\ = (\x_sub[6]~input_o\ & ((\adder|Adders:5:Adder|cout~0_combout\) # (\y_sub[6]~input_o\ $ (\OP~input_o\)))) # (!\x_sub[6]~input_o\ & (\adder|Adders:5:Adder|cout~0_combout\ & (\y_sub[6]~input_o\ $ (\OP~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_sub[6]~input_o\,
	datab => \adder|Adders:5:Adder|cout~0_combout\,
	datac => \y_sub[6]~input_o\,
	datad => \OP~input_o\,
	combout => \adder|Adders:6:Adder|cout~0_combout\);

-- Location: LCCOMB_X31_Y16_N8
\adder|Adders:7:Adder|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:7:Adder|sum~0_combout\ = \y_sub[7]~input_o\ $ (\x_sub[7]~input_o\ $ (\adder|Adders:6:Adder|cout~0_combout\ $ (\OP~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_sub[7]~input_o\,
	datab => \x_sub[7]~input_o\,
	datac => \adder|Adders:6:Adder|cout~0_combout\,
	datad => \OP~input_o\,
	combout => \adder|Adders:7:Adder|sum~0_combout\);

-- Location: LCCOMB_X31_Y16_N26
\adder|Adders:7:Adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:7:Adder|cout~0_combout\ = (\x_sub[7]~input_o\ & ((\adder|Adders:6:Adder|cout~0_combout\) # (\y_sub[7]~input_o\ $ (\OP~input_o\)))) # (!\x_sub[7]~input_o\ & (\adder|Adders:6:Adder|cout~0_combout\ & (\y_sub[7]~input_o\ $ (\OP~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_sub[7]~input_o\,
	datab => \x_sub[7]~input_o\,
	datac => \adder|Adders:6:Adder|cout~0_combout\,
	datad => \OP~input_o\,
	combout => \adder|Adders:7:Adder|cout~0_combout\);

-- Location: IOIBUF_X34_Y17_N15
\x_sub[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_sub(8),
	o => \x_sub[8]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\y_sub[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_sub(8),
	o => \y_sub[8]~input_o\);

-- Location: LCCOMB_X31_Y16_N28
\adder|Adders:8:Adder|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:8:Adder|sum~0_combout\ = \adder|Adders:7:Adder|cout~0_combout\ $ (\OP~input_o\ $ (\x_sub[8]~input_o\ $ (\y_sub[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|Adders:7:Adder|cout~0_combout\,
	datab => \OP~input_o\,
	datac => \x_sub[8]~input_o\,
	datad => \y_sub[8]~input_o\,
	combout => \adder|Adders:8:Adder|sum~0_combout\);

-- Location: IOIBUF_X28_Y24_N1
\x_sub[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_sub(9),
	o => \x_sub[9]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\y_sub[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_sub(9),
	o => \y_sub[9]~input_o\);

-- Location: LCCOMB_X31_Y16_N14
\adder|Adders:8:Adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:8:Adder|cout~0_combout\ = (\adder|Adders:7:Adder|cout~0_combout\ & ((\x_sub[8]~input_o\) # (\OP~input_o\ $ (\y_sub[8]~input_o\)))) # (!\adder|Adders:7:Adder|cout~0_combout\ & (\x_sub[8]~input_o\ & (\OP~input_o\ $ (\y_sub[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|Adders:7:Adder|cout~0_combout\,
	datab => \OP~input_o\,
	datac => \x_sub[8]~input_o\,
	datad => \y_sub[8]~input_o\,
	combout => \adder|Adders:8:Adder|cout~0_combout\);

-- Location: LCCOMB_X31_Y16_N24
\adder|Adders:9:Adder|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:9:Adder|sum~0_combout\ = \x_sub[9]~input_o\ $ (\y_sub[9]~input_o\ $ (\adder|Adders:8:Adder|cout~0_combout\ $ (\OP~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_sub[9]~input_o\,
	datab => \y_sub[9]~input_o\,
	datac => \adder|Adders:8:Adder|cout~0_combout\,
	datad => \OP~input_o\,
	combout => \adder|Adders:9:Adder|sum~0_combout\);

-- Location: IOIBUF_X34_Y17_N22
\x_sub[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_sub(10),
	o => \x_sub[10]~input_o\);

-- Location: LCCOMB_X31_Y16_N2
\adder|Adders:9:Adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:9:Adder|cout~0_combout\ = (\x_sub[9]~input_o\ & ((\adder|Adders:8:Adder|cout~0_combout\) # (\y_sub[9]~input_o\ $ (\OP~input_o\)))) # (!\x_sub[9]~input_o\ & (\adder|Adders:8:Adder|cout~0_combout\ & (\y_sub[9]~input_o\ $ (\OP~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_sub[9]~input_o\,
	datab => \y_sub[9]~input_o\,
	datac => \adder|Adders:8:Adder|cout~0_combout\,
	datad => \OP~input_o\,
	combout => \adder|Adders:9:Adder|cout~0_combout\);

-- Location: IOIBUF_X34_Y18_N15
\y_sub[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_sub(10),
	o => \y_sub[10]~input_o\);

-- Location: LCCOMB_X31_Y16_N4
\adder|Adders:10:Adder|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:10:Adder|sum~0_combout\ = \x_sub[10]~input_o\ $ (\adder|Adders:9:Adder|cout~0_combout\ $ (\y_sub[10]~input_o\ $ (\OP~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_sub[10]~input_o\,
	datab => \adder|Adders:9:Adder|cout~0_combout\,
	datac => \y_sub[10]~input_o\,
	datad => \OP~input_o\,
	combout => \adder|Adders:10:Adder|sum~0_combout\);

-- Location: LCCOMB_X31_Y16_N6
\adder|Adders:10:Adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:10:Adder|cout~0_combout\ = (\x_sub[10]~input_o\ & ((\adder|Adders:9:Adder|cout~0_combout\) # (\y_sub[10]~input_o\ $ (\OP~input_o\)))) # (!\x_sub[10]~input_o\ & (\adder|Adders:9:Adder|cout~0_combout\ & (\y_sub[10]~input_o\ $ (\OP~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_sub[10]~input_o\,
	datab => \adder|Adders:9:Adder|cout~0_combout\,
	datac => \y_sub[10]~input_o\,
	datad => \OP~input_o\,
	combout => \adder|Adders:10:Adder|cout~0_combout\);

-- Location: IOIBUF_X18_Y24_N22
\x_sub[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_sub(11),
	o => \x_sub[11]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\y_sub[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_sub(11),
	o => \y_sub[11]~input_o\);

-- Location: LCCOMB_X31_Y16_N0
\adder|Adders:11:Adder|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:11:Adder|sum~0_combout\ = \adder|Adders:10:Adder|cout~0_combout\ $ (\OP~input_o\ $ (\x_sub[11]~input_o\ $ (\y_sub[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|Adders:10:Adder|cout~0_combout\,
	datab => \OP~input_o\,
	datac => \x_sub[11]~input_o\,
	datad => \y_sub[11]~input_o\,
	combout => \adder|Adders:11:Adder|sum~0_combout\);

-- Location: IOIBUF_X34_Y17_N1
\y_sub[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_sub(12),
	o => \y_sub[12]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\x_sub[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_sub(12),
	o => \x_sub[12]~input_o\);

-- Location: LCCOMB_X31_Y16_N18
\adder|Adders:11:Adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:11:Adder|cout~0_combout\ = (\adder|Adders:10:Adder|cout~0_combout\ & ((\x_sub[11]~input_o\) # (\OP~input_o\ $ (\y_sub[11]~input_o\)))) # (!\adder|Adders:10:Adder|cout~0_combout\ & (\x_sub[11]~input_o\ & (\OP~input_o\ $ 
-- (\y_sub[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|Adders:10:Adder|cout~0_combout\,
	datab => \OP~input_o\,
	datac => \x_sub[11]~input_o\,
	datad => \y_sub[11]~input_o\,
	combout => \adder|Adders:11:Adder|cout~0_combout\);

-- Location: LCCOMB_X31_Y16_N20
\adder|Adders:12:Adder|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:12:Adder|sum~0_combout\ = \y_sub[12]~input_o\ $ (\OP~input_o\ $ (\x_sub[12]~input_o\ $ (\adder|Adders:11:Adder|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_sub[12]~input_o\,
	datab => \OP~input_o\,
	datac => \x_sub[12]~input_o\,
	datad => \adder|Adders:11:Adder|cout~0_combout\,
	combout => \adder|Adders:12:Adder|sum~0_combout\);

-- Location: LCCOMB_X31_Y16_N22
\adder|Adders:12:Adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:12:Adder|cout~0_combout\ = (\x_sub[12]~input_o\ & ((\adder|Adders:11:Adder|cout~0_combout\) # (\y_sub[12]~input_o\ $ (\OP~input_o\)))) # (!\x_sub[12]~input_o\ & (\adder|Adders:11:Adder|cout~0_combout\ & (\y_sub[12]~input_o\ $ 
-- (\OP~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_sub[12]~input_o\,
	datab => \OP~input_o\,
	datac => \x_sub[12]~input_o\,
	datad => \adder|Adders:11:Adder|cout~0_combout\,
	combout => \adder|Adders:12:Adder|cout~0_combout\);

-- Location: IOIBUF_X34_Y12_N1
\y_sub[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_sub(13),
	o => \y_sub[13]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\x_sub[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_sub(13),
	o => \x_sub[13]~input_o\);

-- Location: LCCOMB_X31_Y16_N16
\adder|Adders:13:Adder|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:13:Adder|sum~0_combout\ = \adder|Adders:12:Adder|cout~0_combout\ $ (\OP~input_o\ $ (\y_sub[13]~input_o\ $ (\x_sub[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|Adders:12:Adder|cout~0_combout\,
	datab => \OP~input_o\,
	datac => \y_sub[13]~input_o\,
	datad => \x_sub[13]~input_o\,
	combout => \adder|Adders:13:Adder|sum~0_combout\);

-- Location: LCCOMB_X31_Y16_N10
\adder|Adders:13:Adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:13:Adder|cout~0_combout\ = (\adder|Adders:12:Adder|cout~0_combout\ & ((\x_sub[13]~input_o\) # (\OP~input_o\ $ (\y_sub[13]~input_o\)))) # (!\adder|Adders:12:Adder|cout~0_combout\ & (\x_sub[13]~input_o\ & (\OP~input_o\ $ 
-- (\y_sub[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|Adders:12:Adder|cout~0_combout\,
	datab => \OP~input_o\,
	datac => \y_sub[13]~input_o\,
	datad => \x_sub[13]~input_o\,
	combout => \adder|Adders:13:Adder|cout~0_combout\);

-- Location: IOIBUF_X23_Y24_N15
\y_sub[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_sub(14),
	o => \y_sub[14]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\x_sub[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_sub(14),
	o => \x_sub[14]~input_o\);

-- Location: LCCOMB_X31_Y16_N12
\adder|Adders:14:Adder|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:14:Adder|sum~0_combout\ = \adder|Adders:13:Adder|cout~0_combout\ $ (\y_sub[14]~input_o\ $ (\x_sub[14]~input_o\ $ (\OP~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|Adders:13:Adder|cout~0_combout\,
	datab => \y_sub[14]~input_o\,
	datac => \x_sub[14]~input_o\,
	datad => \OP~input_o\,
	combout => \adder|Adders:14:Adder|sum~0_combout\);

-- Location: IOIBUF_X34_Y7_N8
\y_sub[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_sub(15),
	o => \y_sub[15]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\x_sub[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_sub(15),
	o => \x_sub[15]~input_o\);

-- Location: LCCOMB_X31_Y16_N30
\adder|Adders:14:Adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:14:Adder|cout~0_combout\ = (\adder|Adders:13:Adder|cout~0_combout\ & ((\x_sub[14]~input_o\) # (\y_sub[14]~input_o\ $ (\OP~input_o\)))) # (!\adder|Adders:13:Adder|cout~0_combout\ & (\x_sub[14]~input_o\ & (\y_sub[14]~input_o\ $ 
-- (\OP~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder|Adders:13:Adder|cout~0_combout\,
	datab => \y_sub[14]~input_o\,
	datac => \x_sub[14]~input_o\,
	datad => \OP~input_o\,
	combout => \adder|Adders:14:Adder|cout~0_combout\);

-- Location: LCCOMB_X33_Y7_N8
\adder|Adders:15:Adder|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:15:Adder|sum~0_combout\ = \y_sub[15]~input_o\ $ (\x_sub[15]~input_o\ $ (\adder|Adders:14:Adder|cout~0_combout\ $ (\OP~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_sub[15]~input_o\,
	datab => \x_sub[15]~input_o\,
	datac => \adder|Adders:14:Adder|cout~0_combout\,
	datad => \OP~input_o\,
	combout => \adder|Adders:15:Adder|sum~0_combout\);

-- Location: LCCOMB_X33_Y7_N18
\adder|Adders:15:Adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder|Adders:15:Adder|cout~0_combout\ = (\x_sub[15]~input_o\ & ((\adder|Adders:14:Adder|cout~0_combout\) # (\y_sub[15]~input_o\ $ (\OP~input_o\)))) # (!\x_sub[15]~input_o\ & (\adder|Adders:14:Adder|cout~0_combout\ & (\y_sub[15]~input_o\ $ 
-- (\OP~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_sub[15]~input_o\,
	datab => \x_sub[15]~input_o\,
	datac => \adder|Adders:14:Adder|cout~0_combout\,
	datad => \OP~input_o\,
	combout => \adder|Adders:15:Adder|cout~0_combout\);

ww_result_sub(0) <= \result_sub[0]~output_o\;

ww_result_sub(1) <= \result_sub[1]~output_o\;

ww_result_sub(2) <= \result_sub[2]~output_o\;

ww_result_sub(3) <= \result_sub[3]~output_o\;

ww_result_sub(4) <= \result_sub[4]~output_o\;

ww_result_sub(5) <= \result_sub[5]~output_o\;

ww_result_sub(6) <= \result_sub[6]~output_o\;

ww_result_sub(7) <= \result_sub[7]~output_o\;

ww_result_sub(8) <= \result_sub[8]~output_o\;

ww_result_sub(9) <= \result_sub[9]~output_o\;

ww_result_sub(10) <= \result_sub[10]~output_o\;

ww_result_sub(11) <= \result_sub[11]~output_o\;

ww_result_sub(12) <= \result_sub[12]~output_o\;

ww_result_sub(13) <= \result_sub[13]~output_o\;

ww_result_sub(14) <= \result_sub[14]~output_o\;

ww_result_sub(15) <= \result_sub[15]~output_o\;

ww_cout_sub <= \cout_sub~output_o\;
END structure;


