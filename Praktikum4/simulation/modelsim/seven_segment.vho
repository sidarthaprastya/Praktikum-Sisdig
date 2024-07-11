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

-- DATE "11/15/2020 18:22:07"

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

ENTITY 	seven_segment IS
    PORT (
	i1 : IN std_logic;
	i2 : IN std_logic;
	i3 : IN std_logic;
	i4 : IN std_logic;
	dig : OUT std_logic;
	a : OUT std_logic;
	b : OUT std_logic;
	c : OUT std_logic;
	d : OUT std_logic;
	e : OUT std_logic;
	f : OUT std_logic;
	g : OUT std_logic
	);
END seven_segment;

-- Design Ports Information
-- dig	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i4	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i1	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i3	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF seven_segment IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i1 : std_logic;
SIGNAL ww_i2 : std_logic;
SIGNAL ww_i3 : std_logic;
SIGNAL ww_i4 : std_logic;
SIGNAL ww_dig : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL \dig~output_o\ : std_logic;
SIGNAL \a~output_o\ : std_logic;
SIGNAL \b~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \f~output_o\ : std_logic;
SIGNAL \g~output_o\ : std_logic;
SIGNAL \i3~input_o\ : std_logic;
SIGNAL \i2~input_o\ : std_logic;
SIGNAL \i4~input_o\ : std_logic;
SIGNAL \i1~input_o\ : std_logic;
SIGNAL \a~0_combout\ : std_logic;
SIGNAL \b~0_combout\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \d~0_combout\ : std_logic;
SIGNAL \d~1_combout\ : std_logic;
SIGNAL \f~0_combout\ : std_logic;
SIGNAL \g~0_combout\ : std_logic;
SIGNAL \ALT_INV_g~0_combout\ : std_logic;
SIGNAL \ALT_INV_f~0_combout\ : std_logic;
SIGNAL \ALT_INV_d~1_combout\ : std_logic;
SIGNAL \ALT_INV_d~0_combout\ : std_logic;
SIGNAL \ALT_INV_c~0_combout\ : std_logic;
SIGNAL \ALT_INV_b~0_combout\ : std_logic;
SIGNAL \ALT_INV_a~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i1 <= i1;
ww_i2 <= i2;
ww_i3 <= i3;
ww_i4 <= i4;
dig <= ww_dig;
a <= ww_a;
b <= ww_b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_g~0_combout\ <= NOT \g~0_combout\;
\ALT_INV_f~0_combout\ <= NOT \f~0_combout\;
\ALT_INV_d~1_combout\ <= NOT \d~1_combout\;
\ALT_INV_d~0_combout\ <= NOT \d~0_combout\;
\ALT_INV_c~0_combout\ <= NOT \c~0_combout\;
\ALT_INV_b~0_combout\ <= NOT \b~0_combout\;
\ALT_INV_a~0_combout\ <= NOT \a~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y24_N23
\dig~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dig~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\a~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_a~0_combout\,
	devoe => ww_devoe,
	o => \a~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\b~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_b~0_combout\,
	devoe => ww_devoe,
	o => \b~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\c~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_c~0_combout\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\d~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_d~0_combout\,
	devoe => ww_devoe,
	o => \d~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_d~1_combout\,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\f~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_f~0_combout\,
	devoe => ww_devoe,
	o => \f~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\g~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_g~0_combout\,
	devoe => ww_devoe,
	o => \g~output_o\);

-- Location: IOIBUF_X34_Y12_N8
\i3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i3,
	o => \i3~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\i2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i2,
	o => \i2~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\i4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i4,
	o => \i4~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\i1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i1,
	o => \i1~input_o\);

-- Location: LCCOMB_X17_Y20_N0
\a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a~0_combout\ = ((\i2~input_o\ $ (!\i4~input_o\)) # (!\i1~input_o\)) # (!\i3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3~input_o\,
	datab => \i2~input_o\,
	datac => \i4~input_o\,
	datad => \i1~input_o\,
	combout => \a~0_combout\);

-- Location: LCCOMB_X17_Y20_N18
\b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b~0_combout\ = (\i2~input_o\) # (\i3~input_o\ $ (!\i4~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3~input_o\,
	datab => \i4~input_o\,
	datad => \i2~input_o\,
	combout => \b~0_combout\);

-- Location: LCCOMB_X17_Y20_N12
\c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~0_combout\ = (\i3~input_o\) # ((!\i2~input_o\) # (!\i4~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3~input_o\,
	datab => \i4~input_o\,
	datad => \i2~input_o\,
	combout => \c~0_combout\);

-- Location: LCCOMB_X17_Y20_N14
\d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d~0_combout\ = ((\i3~input_o\ & (\i2~input_o\ $ (!\i4~input_o\))) # (!\i3~input_o\ & ((\i2~input_o\) # (\i4~input_o\)))) # (!\i1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3~input_o\,
	datab => \i2~input_o\,
	datac => \i4~input_o\,
	datad => \i1~input_o\,
	combout => \d~0_combout\);

-- Location: LCCOMB_X17_Y20_N24
\d~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d~1_combout\ = (\i4~input_o\ & ((\i2~input_o\) # (!\i3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3~input_o\,
	datab => \i4~input_o\,
	datad => \i2~input_o\,
	combout => \d~1_combout\);

-- Location: LCCOMB_X17_Y20_N2
\f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f~0_combout\ = ((\i3~input_o\ & ((\i4~input_o\) # (!\i2~input_o\))) # (!\i3~input_o\ & (!\i2~input_o\ & \i4~input_o\))) # (!\i1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3~input_o\,
	datab => \i2~input_o\,
	datac => \i4~input_o\,
	datad => \i1~input_o\,
	combout => \f~0_combout\);

-- Location: LCCOMB_X17_Y20_N4
\g~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g~0_combout\ = ((\i3~input_o\ & (!\i2~input_o\)) # (!\i3~input_o\ & ((\i2~input_o\) # (\i4~input_o\)))) # (!\i1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3~input_o\,
	datab => \i2~input_o\,
	datac => \i4~input_o\,
	datad => \i1~input_o\,
	combout => \g~0_combout\);

ww_dig <= \dig~output_o\;

ww_a <= \a~output_o\;

ww_b <= \b~output_o\;

ww_c <= \c~output_o\;

ww_d <= \d~output_o\;

ww_e <= \e~output_o\;

ww_f <= \f~output_o\;

ww_g <= \g~output_o\;
END structure;


