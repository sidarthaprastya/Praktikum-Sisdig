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

-- DATE "11/29/2020 15:06:02"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	count_up IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	a : BUFFER std_logic;
	b : BUFFER std_logic;
	c : BUFFER std_logic;
	d : BUFFER std_logic;
	e : BUFFER std_logic;
	f : BUFFER std_logic;
	g : BUFFER std_logic;
	a1 : BUFFER std_logic;
	b1 : BUFFER std_logic;
	c1 : BUFFER std_logic;
	d1 : BUFFER std_logic;
	e1 : BUFFER std_logic;
	f1 : BUFFER std_logic;
	g1 : BUFFER std_logic;
	carry1 : BUFFER std_logic
	);
END count_up;

-- Design Ports Information
-- a	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c1	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e1	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g1	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carry1	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF count_up IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_c1 : std_logic;
SIGNAL ww_d1 : std_logic;
SIGNAL ww_e1 : std_logic;
SIGNAL ww_f1 : std_logic;
SIGNAL ww_g1 : std_logic;
SIGNAL ww_carry1 : std_logic;
SIGNAL \clockdiv|pulse~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \countsatu|carry~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a~output_o\ : std_logic;
SIGNAL \b~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \f~output_o\ : std_logic;
SIGNAL \g~output_o\ : std_logic;
SIGNAL \a1~output_o\ : std_logic;
SIGNAL \b1~output_o\ : std_logic;
SIGNAL \c1~output_o\ : std_logic;
SIGNAL \d1~output_o\ : std_logic;
SIGNAL \e1~output_o\ : std_logic;
SIGNAL \f1~output_o\ : std_logic;
SIGNAL \g1~output_o\ : std_logic;
SIGNAL \carry1~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \clockdiv|Add0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \clockdiv|Add0~1\ : std_logic;
SIGNAL \clockdiv|Add0~2_combout\ : std_logic;
SIGNAL \clockdiv|Add0~3\ : std_logic;
SIGNAL \clockdiv|Add0~4_combout\ : std_logic;
SIGNAL \clockdiv|Add0~5\ : std_logic;
SIGNAL \clockdiv|Add0~6_combout\ : std_logic;
SIGNAL \clockdiv|Add0~7\ : std_logic;
SIGNAL \clockdiv|Add0~8_combout\ : std_logic;
SIGNAL \clockdiv|Add0~9\ : std_logic;
SIGNAL \clockdiv|Add0~10_combout\ : std_logic;
SIGNAL \clockdiv|Add0~11\ : std_logic;
SIGNAL \clockdiv|Add0~12_combout\ : std_logic;
SIGNAL \clockdiv|counter~11_combout\ : std_logic;
SIGNAL \clockdiv|Add0~13\ : std_logic;
SIGNAL \clockdiv|Add0~14_combout\ : std_logic;
SIGNAL \clockdiv|Add0~15\ : std_logic;
SIGNAL \clockdiv|Add0~16_combout\ : std_logic;
SIGNAL \clockdiv|Add0~17\ : std_logic;
SIGNAL \clockdiv|Add0~18_combout\ : std_logic;
SIGNAL \clockdiv|Equal0~5_combout\ : std_logic;
SIGNAL \clockdiv|Add0~19\ : std_logic;
SIGNAL \clockdiv|Add0~20_combout\ : std_logic;
SIGNAL \clockdiv|Add0~21\ : std_logic;
SIGNAL \clockdiv|Add0~22_combout\ : std_logic;
SIGNAL \clockdiv|counter~10_combout\ : std_logic;
SIGNAL \clockdiv|Add0~23\ : std_logic;
SIGNAL \clockdiv|Add0~24_combout\ : std_logic;
SIGNAL \clockdiv|counter~9_combout\ : std_logic;
SIGNAL \clockdiv|Add0~25\ : std_logic;
SIGNAL \clockdiv|Add0~26_combout\ : std_logic;
SIGNAL \clockdiv|counter~8_combout\ : std_logic;
SIGNAL \clockdiv|Add0~27\ : std_logic;
SIGNAL \clockdiv|Add0~28_combout\ : std_logic;
SIGNAL \clockdiv|counter~7_combout\ : std_logic;
SIGNAL \clockdiv|Add0~29\ : std_logic;
SIGNAL \clockdiv|Add0~30_combout\ : std_logic;
SIGNAL \clockdiv|Add0~31\ : std_logic;
SIGNAL \clockdiv|Add0~32_combout\ : std_logic;
SIGNAL \clockdiv|counter~6_combout\ : std_logic;
SIGNAL \clockdiv|Add0~33\ : std_logic;
SIGNAL \clockdiv|Add0~34_combout\ : std_logic;
SIGNAL \clockdiv|Add0~35\ : std_logic;
SIGNAL \clockdiv|Add0~36_combout\ : std_logic;
SIGNAL \clockdiv|counter~5_combout\ : std_logic;
SIGNAL \clockdiv|Add0~37\ : std_logic;
SIGNAL \clockdiv|Add0~38_combout\ : std_logic;
SIGNAL \clockdiv|counter~4_combout\ : std_logic;
SIGNAL \clockdiv|Add0~39\ : std_logic;
SIGNAL \clockdiv|Add0~40_combout\ : std_logic;
SIGNAL \clockdiv|counter~3_combout\ : std_logic;
SIGNAL \clockdiv|Add0~41\ : std_logic;
SIGNAL \clockdiv|Add0~42_combout\ : std_logic;
SIGNAL \clockdiv|counter~2_combout\ : std_logic;
SIGNAL \clockdiv|Equal0~1_combout\ : std_logic;
SIGNAL \clockdiv|Equal0~2_combout\ : std_logic;
SIGNAL \clockdiv|Equal0~3_combout\ : std_logic;
SIGNAL \clockdiv|Add0~43\ : std_logic;
SIGNAL \clockdiv|Add0~44_combout\ : std_logic;
SIGNAL \clockdiv|counter~1_combout\ : std_logic;
SIGNAL \clockdiv|Add0~45\ : std_logic;
SIGNAL \clockdiv|Add0~46_combout\ : std_logic;
SIGNAL \clockdiv|Add0~47\ : std_logic;
SIGNAL \clockdiv|Add0~48_combout\ : std_logic;
SIGNAL \clockdiv|counter~0_combout\ : std_logic;
SIGNAL \clockdiv|Equal0~0_combout\ : std_logic;
SIGNAL \clockdiv|Equal0~4_combout\ : std_logic;
SIGNAL \clockdiv|Equal0~6_combout\ : std_logic;
SIGNAL \clockdiv|Equal0~7_combout\ : std_logic;
SIGNAL \clockdiv|pulse~0_combout\ : std_logic;
SIGNAL \clockdiv|pulse~feeder_combout\ : std_logic;
SIGNAL \clockdiv|pulse~q\ : std_logic;
SIGNAL \clockdiv|pulse~clkctrl_outclk\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \countsatu|angka~0_combout\ : std_logic;
SIGNAL \countsatu|Add0~0_combout\ : std_logic;
SIGNAL \countsatu|angka~4_combout\ : std_logic;
SIGNAL \countsatu|angka~2_combout\ : std_logic;
SIGNAL \countsatu|angka~3_combout\ : std_logic;
SIGNAL \countsatu|LessThan0~0_combout\ : std_logic;
SIGNAL \countsatu|angka~1_combout\ : std_logic;
SIGNAL \bcdsatu|Mux0~0_combout\ : std_logic;
SIGNAL \bcdsatu|Mux1~0_combout\ : std_logic;
SIGNAL \bcdsatu|Mux2~0_combout\ : std_logic;
SIGNAL \bcdsatu|Mux3~0_combout\ : std_logic;
SIGNAL \bcdsatu|Mux4~0_combout\ : std_logic;
SIGNAL \bcdsatu|Mux5~0_combout\ : std_logic;
SIGNAL \bcdsatu|Mux6~0_combout\ : std_logic;
SIGNAL \countsatu|process_0~0_combout\ : std_logic;
SIGNAL \countsatu|process_0~1_combout\ : std_logic;
SIGNAL \countsatu|carry~q\ : std_logic;
SIGNAL \countsatu|carry~clkctrl_outclk\ : std_logic;
SIGNAL \countpuluh|angka~0_combout\ : std_logic;
SIGNAL \countpuluh|angka~2_combout\ : std_logic;
SIGNAL \countpuluh|angka~3_combout\ : std_logic;
SIGNAL \countpuluh|Add0~0_combout\ : std_logic;
SIGNAL \countpuluh|angka~4_combout\ : std_logic;
SIGNAL \countpuluh|LessThan0~0_combout\ : std_logic;
SIGNAL \countpuluh|angka~1_combout\ : std_logic;
SIGNAL \bcdpuluh|Mux0~0_combout\ : std_logic;
SIGNAL \bcdpuluh|Mux1~0_combout\ : std_logic;
SIGNAL \bcdpuluh|Mux2~0_combout\ : std_logic;
SIGNAL \bcdpuluh|Mux3~0_combout\ : std_logic;
SIGNAL \bcdpuluh|Mux4~0_combout\ : std_logic;
SIGNAL \bcdpuluh|Mux5~0_combout\ : std_logic;
SIGNAL \bcdpuluh|Mux6~0_combout\ : std_logic;
SIGNAL \countpuluh|process_0~0_combout\ : std_logic;
SIGNAL \countpuluh|process_0~1_combout\ : std_logic;
SIGNAL \countpuluh|carry1~q\ : std_logic;
SIGNAL \countsatu|angka\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \countpuluh|angka\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clockdiv|counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \bcdpuluh|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \bcdsatu|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_enable <= enable;
a <= ww_a;
b <= ww_b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
a1 <= ww_a1;
b1 <= ww_b1;
c1 <= ww_c1;
d1 <= ww_d1;
e1 <= ww_e1;
f1 <= ww_f1;
g1 <= ww_g1;
carry1 <= ww_carry1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clockdiv|pulse~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clockdiv|pulse~q\);

\countsatu|carry~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \countsatu|carry~q\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\bcdpuluh|ALT_INV_Mux6~0_combout\ <= NOT \bcdpuluh|Mux6~0_combout\;
\bcdsatu|ALT_INV_Mux6~0_combout\ <= NOT \bcdsatu|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y24_N16
\a~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcdsatu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \a~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\b~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcdsatu|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \b~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\c~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcdsatu|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\d~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcdsatu|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \d~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcdsatu|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\f~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcdsatu|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \f~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\g~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcdsatu|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \g~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\a1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcdpuluh|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \a1~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\b1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcdpuluh|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \b1~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\c1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcdpuluh|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \c1~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\d1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcdpuluh|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \d1~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\e1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcdpuluh|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \e1~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\f1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcdpuluh|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \f1~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\g1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcdpuluh|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \g1~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\carry1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \countpuluh|carry1~q\,
	devoe => ww_devoe,
	o => \carry1~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X25_Y21_N8
\clockdiv|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~0_combout\ = \clockdiv|counter\(0) $ (VCC)
-- \clockdiv|Add0~1\ = CARRY(\clockdiv|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clockdiv|counter\(0),
	datad => VCC,
	combout => \clockdiv|Add0~0_combout\,
	cout => \clockdiv|Add0~1\);

-- Location: IOIBUF_X34_Y12_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G8
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X25_Y21_N9
\clockdiv|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|Add0~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(0));

-- Location: LCCOMB_X25_Y21_N10
\clockdiv|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~2_combout\ = (\clockdiv|counter\(1) & (!\clockdiv|Add0~1\)) # (!\clockdiv|counter\(1) & ((\clockdiv|Add0~1\) # (GND)))
-- \clockdiv|Add0~3\ = CARRY((!\clockdiv|Add0~1\) # (!\clockdiv|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|counter\(1),
	datad => VCC,
	cin => \clockdiv|Add0~1\,
	combout => \clockdiv|Add0~2_combout\,
	cout => \clockdiv|Add0~3\);

-- Location: FF_X25_Y21_N11
\clockdiv|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|Add0~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(1));

-- Location: LCCOMB_X25_Y21_N12
\clockdiv|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~4_combout\ = (\clockdiv|counter\(2) & (\clockdiv|Add0~3\ $ (GND))) # (!\clockdiv|counter\(2) & (!\clockdiv|Add0~3\ & VCC))
-- \clockdiv|Add0~5\ = CARRY((\clockdiv|counter\(2) & !\clockdiv|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|counter\(2),
	datad => VCC,
	cin => \clockdiv|Add0~3\,
	combout => \clockdiv|Add0~4_combout\,
	cout => \clockdiv|Add0~5\);

-- Location: FF_X25_Y21_N13
\clockdiv|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|Add0~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(2));

-- Location: LCCOMB_X25_Y21_N14
\clockdiv|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~6_combout\ = (\clockdiv|counter\(3) & (!\clockdiv|Add0~5\)) # (!\clockdiv|counter\(3) & ((\clockdiv|Add0~5\) # (GND)))
-- \clockdiv|Add0~7\ = CARRY((!\clockdiv|Add0~5\) # (!\clockdiv|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockdiv|counter\(3),
	datad => VCC,
	cin => \clockdiv|Add0~5\,
	combout => \clockdiv|Add0~6_combout\,
	cout => \clockdiv|Add0~7\);

-- Location: FF_X25_Y21_N15
\clockdiv|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|Add0~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(3));

-- Location: LCCOMB_X25_Y21_N16
\clockdiv|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~8_combout\ = (\clockdiv|counter\(4) & (\clockdiv|Add0~7\ $ (GND))) # (!\clockdiv|counter\(4) & (!\clockdiv|Add0~7\ & VCC))
-- \clockdiv|Add0~9\ = CARRY((\clockdiv|counter\(4) & !\clockdiv|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockdiv|counter\(4),
	datad => VCC,
	cin => \clockdiv|Add0~7\,
	combout => \clockdiv|Add0~8_combout\,
	cout => \clockdiv|Add0~9\);

-- Location: FF_X25_Y21_N17
\clockdiv|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|Add0~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(4));

-- Location: LCCOMB_X25_Y21_N18
\clockdiv|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~10_combout\ = (\clockdiv|counter\(5) & (!\clockdiv|Add0~9\)) # (!\clockdiv|counter\(5) & ((\clockdiv|Add0~9\) # (GND)))
-- \clockdiv|Add0~11\ = CARRY((!\clockdiv|Add0~9\) # (!\clockdiv|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockdiv|counter\(5),
	datad => VCC,
	cin => \clockdiv|Add0~9\,
	combout => \clockdiv|Add0~10_combout\,
	cout => \clockdiv|Add0~11\);

-- Location: FF_X25_Y21_N19
\clockdiv|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|Add0~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(5));

-- Location: LCCOMB_X25_Y21_N20
\clockdiv|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~12_combout\ = (\clockdiv|counter\(6) & (\clockdiv|Add0~11\ $ (GND))) # (!\clockdiv|counter\(6) & (!\clockdiv|Add0~11\ & VCC))
-- \clockdiv|Add0~13\ = CARRY((\clockdiv|counter\(6) & !\clockdiv|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockdiv|counter\(6),
	datad => VCC,
	cin => \clockdiv|Add0~11\,
	combout => \clockdiv|Add0~12_combout\,
	cout => \clockdiv|Add0~13\);

-- Location: LCCOMB_X25_Y21_N0
\clockdiv|counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|counter~11_combout\ = (!\clockdiv|Equal0~7_combout\ & \clockdiv|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockdiv|Equal0~7_combout\,
	datad => \clockdiv|Add0~12_combout\,
	combout => \clockdiv|counter~11_combout\);

-- Location: FF_X25_Y21_N1
\clockdiv|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|counter~11_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(6));

-- Location: LCCOMB_X25_Y21_N22
\clockdiv|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~14_combout\ = (\clockdiv|counter\(7) & (!\clockdiv|Add0~13\)) # (!\clockdiv|counter\(7) & ((\clockdiv|Add0~13\) # (GND)))
-- \clockdiv|Add0~15\ = CARRY((!\clockdiv|Add0~13\) # (!\clockdiv|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|counter\(7),
	datad => VCC,
	cin => \clockdiv|Add0~13\,
	combout => \clockdiv|Add0~14_combout\,
	cout => \clockdiv|Add0~15\);

-- Location: FF_X25_Y21_N23
\clockdiv|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|Add0~14_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(7));

-- Location: LCCOMB_X25_Y21_N24
\clockdiv|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~16_combout\ = (\clockdiv|counter\(8) & (\clockdiv|Add0~15\ $ (GND))) # (!\clockdiv|counter\(8) & (!\clockdiv|Add0~15\ & VCC))
-- \clockdiv|Add0~17\ = CARRY((\clockdiv|counter\(8) & !\clockdiv|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockdiv|counter\(8),
	datad => VCC,
	cin => \clockdiv|Add0~15\,
	combout => \clockdiv|Add0~16_combout\,
	cout => \clockdiv|Add0~17\);

-- Location: FF_X25_Y21_N25
\clockdiv|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|Add0~16_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(8));

-- Location: LCCOMB_X25_Y21_N26
\clockdiv|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~18_combout\ = (\clockdiv|counter\(9) & (!\clockdiv|Add0~17\)) # (!\clockdiv|counter\(9) & ((\clockdiv|Add0~17\) # (GND)))
-- \clockdiv|Add0~19\ = CARRY((!\clockdiv|Add0~17\) # (!\clockdiv|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|counter\(9),
	datad => VCC,
	cin => \clockdiv|Add0~17\,
	combout => \clockdiv|Add0~18_combout\,
	cout => \clockdiv|Add0~19\);

-- Location: FF_X25_Y21_N27
\clockdiv|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|Add0~18_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(9));

-- Location: LCCOMB_X25_Y21_N6
\clockdiv|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Equal0~5_combout\ = (!\clockdiv|counter\(7) & (!\clockdiv|counter\(8) & (!\clockdiv|counter\(9) & !\clockdiv|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|counter\(7),
	datab => \clockdiv|counter\(8),
	datac => \clockdiv|counter\(9),
	datad => \clockdiv|counter\(6),
	combout => \clockdiv|Equal0~5_combout\);

-- Location: LCCOMB_X25_Y21_N28
\clockdiv|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~20_combout\ = (\clockdiv|counter\(10) & (\clockdiv|Add0~19\ $ (GND))) # (!\clockdiv|counter\(10) & (!\clockdiv|Add0~19\ & VCC))
-- \clockdiv|Add0~21\ = CARRY((\clockdiv|counter\(10) & !\clockdiv|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockdiv|counter\(10),
	datad => VCC,
	cin => \clockdiv|Add0~19\,
	combout => \clockdiv|Add0~20_combout\,
	cout => \clockdiv|Add0~21\);

-- Location: FF_X25_Y21_N29
\clockdiv|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|Add0~20_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(10));

-- Location: LCCOMB_X25_Y21_N30
\clockdiv|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~22_combout\ = (\clockdiv|counter\(11) & (!\clockdiv|Add0~21\)) # (!\clockdiv|counter\(11) & ((\clockdiv|Add0~21\) # (GND)))
-- \clockdiv|Add0~23\ = CARRY((!\clockdiv|Add0~21\) # (!\clockdiv|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockdiv|counter\(11),
	datad => VCC,
	cin => \clockdiv|Add0~21\,
	combout => \clockdiv|Add0~22_combout\,
	cout => \clockdiv|Add0~23\);

-- Location: LCCOMB_X26_Y20_N0
\clockdiv|counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|counter~10_combout\ = (\clockdiv|Add0~22_combout\ & !\clockdiv|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockdiv|Add0~22_combout\,
	datad => \clockdiv|Equal0~7_combout\,
	combout => \clockdiv|counter~10_combout\);

-- Location: FF_X26_Y20_N1
\clockdiv|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|counter~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(11));

-- Location: LCCOMB_X25_Y20_N0
\clockdiv|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~24_combout\ = (\clockdiv|counter\(12) & (\clockdiv|Add0~23\ $ (GND))) # (!\clockdiv|counter\(12) & (!\clockdiv|Add0~23\ & VCC))
-- \clockdiv|Add0~25\ = CARRY((\clockdiv|counter\(12) & !\clockdiv|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|counter\(12),
	datad => VCC,
	cin => \clockdiv|Add0~23\,
	combout => \clockdiv|Add0~24_combout\,
	cout => \clockdiv|Add0~25\);

-- Location: LCCOMB_X26_Y20_N20
\clockdiv|counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|counter~9_combout\ = (\clockdiv|Add0~24_combout\ & !\clockdiv|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockdiv|Add0~24_combout\,
	datad => \clockdiv|Equal0~7_combout\,
	combout => \clockdiv|counter~9_combout\);

-- Location: FF_X26_Y20_N21
\clockdiv|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|counter~9_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(12));

-- Location: LCCOMB_X25_Y20_N2
\clockdiv|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~26_combout\ = (\clockdiv|counter\(13) & (!\clockdiv|Add0~25\)) # (!\clockdiv|counter\(13) & ((\clockdiv|Add0~25\) # (GND)))
-- \clockdiv|Add0~27\ = CARRY((!\clockdiv|Add0~25\) # (!\clockdiv|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockdiv|counter\(13),
	datad => VCC,
	cin => \clockdiv|Add0~25\,
	combout => \clockdiv|Add0~26_combout\,
	cout => \clockdiv|Add0~27\);

-- Location: LCCOMB_X26_Y20_N12
\clockdiv|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|counter~8_combout\ = (!\clockdiv|Equal0~7_combout\ & \clockdiv|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|Equal0~7_combout\,
	datad => \clockdiv|Add0~26_combout\,
	combout => \clockdiv|counter~8_combout\);

-- Location: FF_X26_Y20_N13
\clockdiv|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|counter~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(13));

-- Location: LCCOMB_X25_Y20_N4
\clockdiv|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~28_combout\ = (\clockdiv|counter\(14) & (\clockdiv|Add0~27\ $ (GND))) # (!\clockdiv|counter\(14) & (!\clockdiv|Add0~27\ & VCC))
-- \clockdiv|Add0~29\ = CARRY((\clockdiv|counter\(14) & !\clockdiv|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|counter\(14),
	datad => VCC,
	cin => \clockdiv|Add0~27\,
	combout => \clockdiv|Add0~28_combout\,
	cout => \clockdiv|Add0~29\);

-- Location: LCCOMB_X26_Y20_N30
\clockdiv|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|counter~7_combout\ = (\clockdiv|Add0~28_combout\ & !\clockdiv|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockdiv|Add0~28_combout\,
	datad => \clockdiv|Equal0~7_combout\,
	combout => \clockdiv|counter~7_combout\);

-- Location: FF_X26_Y20_N31
\clockdiv|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|counter~7_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(14));

-- Location: LCCOMB_X25_Y20_N6
\clockdiv|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~30_combout\ = (\clockdiv|counter\(15) & (!\clockdiv|Add0~29\)) # (!\clockdiv|counter\(15) & ((\clockdiv|Add0~29\) # (GND)))
-- \clockdiv|Add0~31\ = CARRY((!\clockdiv|Add0~29\) # (!\clockdiv|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|counter\(15),
	datad => VCC,
	cin => \clockdiv|Add0~29\,
	combout => \clockdiv|Add0~30_combout\,
	cout => \clockdiv|Add0~31\);

-- Location: FF_X25_Y20_N7
\clockdiv|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|Add0~30_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(15));

-- Location: LCCOMB_X25_Y20_N8
\clockdiv|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~32_combout\ = (\clockdiv|counter\(16) & (\clockdiv|Add0~31\ $ (GND))) # (!\clockdiv|counter\(16) & (!\clockdiv|Add0~31\ & VCC))
-- \clockdiv|Add0~33\ = CARRY((\clockdiv|counter\(16) & !\clockdiv|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockdiv|counter\(16),
	datad => VCC,
	cin => \clockdiv|Add0~31\,
	combout => \clockdiv|Add0~32_combout\,
	cout => \clockdiv|Add0~33\);

-- Location: LCCOMB_X26_Y20_N26
\clockdiv|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|counter~6_combout\ = (!\clockdiv|Equal0~7_combout\ & \clockdiv|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|Equal0~7_combout\,
	datad => \clockdiv|Add0~32_combout\,
	combout => \clockdiv|counter~6_combout\);

-- Location: FF_X26_Y20_N27
\clockdiv|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|counter~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(16));

-- Location: LCCOMB_X25_Y20_N10
\clockdiv|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~34_combout\ = (\clockdiv|counter\(17) & (!\clockdiv|Add0~33\)) # (!\clockdiv|counter\(17) & ((\clockdiv|Add0~33\) # (GND)))
-- \clockdiv|Add0~35\ = CARRY((!\clockdiv|Add0~33\) # (!\clockdiv|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|counter\(17),
	datad => VCC,
	cin => \clockdiv|Add0~33\,
	combout => \clockdiv|Add0~34_combout\,
	cout => \clockdiv|Add0~35\);

-- Location: FF_X25_Y20_N11
\clockdiv|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|Add0~34_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(17));

-- Location: LCCOMB_X25_Y20_N12
\clockdiv|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~36_combout\ = (\clockdiv|counter\(18) & (\clockdiv|Add0~35\ $ (GND))) # (!\clockdiv|counter\(18) & (!\clockdiv|Add0~35\ & VCC))
-- \clockdiv|Add0~37\ = CARRY((\clockdiv|counter\(18) & !\clockdiv|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|counter\(18),
	datad => VCC,
	cin => \clockdiv|Add0~35\,
	combout => \clockdiv|Add0~36_combout\,
	cout => \clockdiv|Add0~37\);

-- Location: LCCOMB_X25_Y20_N30
\clockdiv|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|counter~5_combout\ = (!\clockdiv|Equal0~7_combout\ & \clockdiv|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|Equal0~7_combout\,
	datad => \clockdiv|Add0~36_combout\,
	combout => \clockdiv|counter~5_combout\);

-- Location: FF_X25_Y20_N31
\clockdiv|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|counter~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(18));

-- Location: LCCOMB_X25_Y20_N14
\clockdiv|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~38_combout\ = (\clockdiv|counter\(19) & (!\clockdiv|Add0~37\)) # (!\clockdiv|counter\(19) & ((\clockdiv|Add0~37\) # (GND)))
-- \clockdiv|Add0~39\ = CARRY((!\clockdiv|Add0~37\) # (!\clockdiv|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|counter\(19),
	datad => VCC,
	cin => \clockdiv|Add0~37\,
	combout => \clockdiv|Add0~38_combout\,
	cout => \clockdiv|Add0~39\);

-- Location: LCCOMB_X26_Y20_N2
\clockdiv|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|counter~4_combout\ = (!\clockdiv|Equal0~7_combout\ & \clockdiv|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|Equal0~7_combout\,
	datad => \clockdiv|Add0~38_combout\,
	combout => \clockdiv|counter~4_combout\);

-- Location: FF_X26_Y20_N3
\clockdiv|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|counter~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(19));

-- Location: LCCOMB_X25_Y20_N16
\clockdiv|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~40_combout\ = (\clockdiv|counter\(20) & (\clockdiv|Add0~39\ $ (GND))) # (!\clockdiv|counter\(20) & (!\clockdiv|Add0~39\ & VCC))
-- \clockdiv|Add0~41\ = CARRY((\clockdiv|counter\(20) & !\clockdiv|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockdiv|counter\(20),
	datad => VCC,
	cin => \clockdiv|Add0~39\,
	combout => \clockdiv|Add0~40_combout\,
	cout => \clockdiv|Add0~41\);

-- Location: LCCOMB_X25_Y20_N28
\clockdiv|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|counter~3_combout\ = (!\clockdiv|Equal0~7_combout\ & \clockdiv|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|Equal0~7_combout\,
	datad => \clockdiv|Add0~40_combout\,
	combout => \clockdiv|counter~3_combout\);

-- Location: FF_X25_Y20_N29
\clockdiv|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|counter~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(20));

-- Location: LCCOMB_X25_Y20_N18
\clockdiv|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~42_combout\ = (\clockdiv|counter\(21) & (!\clockdiv|Add0~41\)) # (!\clockdiv|counter\(21) & ((\clockdiv|Add0~41\) # (GND)))
-- \clockdiv|Add0~43\ = CARRY((!\clockdiv|Add0~41\) # (!\clockdiv|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|counter\(21),
	datad => VCC,
	cin => \clockdiv|Add0~41\,
	combout => \clockdiv|Add0~42_combout\,
	cout => \clockdiv|Add0~43\);

-- Location: LCCOMB_X25_Y20_N26
\clockdiv|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|counter~2_combout\ = (!\clockdiv|Equal0~7_combout\ & \clockdiv|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|Equal0~7_combout\,
	datad => \clockdiv|Add0~42_combout\,
	combout => \clockdiv|counter~2_combout\);

-- Location: FF_X25_Y20_N27
\clockdiv|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|counter~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(21));

-- Location: LCCOMB_X26_Y20_N10
\clockdiv|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Equal0~1_combout\ = (\clockdiv|counter\(21) & (\clockdiv|counter\(19) & (\clockdiv|counter\(18) & \clockdiv|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|counter\(21),
	datab => \clockdiv|counter\(19),
	datac => \clockdiv|counter\(18),
	datad => \clockdiv|counter\(20),
	combout => \clockdiv|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y20_N8
\clockdiv|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Equal0~2_combout\ = (\clockdiv|counter\(14) & (!\clockdiv|counter\(15) & (\clockdiv|counter\(16) & !\clockdiv|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|counter\(14),
	datab => \clockdiv|counter\(15),
	datac => \clockdiv|counter\(16),
	datad => \clockdiv|counter\(17),
	combout => \clockdiv|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y20_N14
\clockdiv|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Equal0~3_combout\ = (\clockdiv|counter\(13) & (\clockdiv|counter\(11) & (!\clockdiv|counter\(10) & \clockdiv|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|counter\(13),
	datab => \clockdiv|counter\(11),
	datac => \clockdiv|counter\(10),
	datad => \clockdiv|counter\(12),
	combout => \clockdiv|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y20_N20
\clockdiv|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~44_combout\ = (\clockdiv|counter\(22) & (\clockdiv|Add0~43\ $ (GND))) # (!\clockdiv|counter\(22) & (!\clockdiv|Add0~43\ & VCC))
-- \clockdiv|Add0~45\ = CARRY((\clockdiv|counter\(22) & !\clockdiv|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockdiv|counter\(22),
	datad => VCC,
	cin => \clockdiv|Add0~43\,
	combout => \clockdiv|Add0~44_combout\,
	cout => \clockdiv|Add0~45\);

-- Location: LCCOMB_X26_Y20_N22
\clockdiv|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|counter~1_combout\ = (!\clockdiv|Equal0~7_combout\ & \clockdiv|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|Equal0~7_combout\,
	datad => \clockdiv|Add0~44_combout\,
	combout => \clockdiv|counter~1_combout\);

-- Location: FF_X26_Y20_N23
\clockdiv|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|counter~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(22));

-- Location: LCCOMB_X25_Y20_N22
\clockdiv|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~46_combout\ = (\clockdiv|counter\(23) & (!\clockdiv|Add0~45\)) # (!\clockdiv|counter\(23) & ((\clockdiv|Add0~45\) # (GND)))
-- \clockdiv|Add0~47\ = CARRY((!\clockdiv|Add0~45\) # (!\clockdiv|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|counter\(23),
	datad => VCC,
	cin => \clockdiv|Add0~45\,
	combout => \clockdiv|Add0~46_combout\,
	cout => \clockdiv|Add0~47\);

-- Location: FF_X25_Y20_N23
\clockdiv|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|Add0~46_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(23));

-- Location: LCCOMB_X25_Y20_N24
\clockdiv|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Add0~48_combout\ = \clockdiv|Add0~47\ $ (!\clockdiv|counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clockdiv|counter\(24),
	cin => \clockdiv|Add0~47\,
	combout => \clockdiv|Add0~48_combout\);

-- Location: LCCOMB_X26_Y20_N28
\clockdiv|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|counter~0_combout\ = (!\clockdiv|Equal0~7_combout\ & \clockdiv|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|Equal0~7_combout\,
	datad => \clockdiv|Add0~48_combout\,
	combout => \clockdiv|counter~0_combout\);

-- Location: FF_X26_Y20_N29
\clockdiv|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|counter~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|counter\(24));

-- Location: LCCOMB_X26_Y20_N18
\clockdiv|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Equal0~0_combout\ = (\clockdiv|counter\(22) & (\clockdiv|counter\(24) & (\clockdiv|counter\(0) & !\clockdiv|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|counter\(22),
	datab => \clockdiv|counter\(24),
	datac => \clockdiv|counter\(0),
	datad => \clockdiv|counter\(23),
	combout => \clockdiv|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y20_N4
\clockdiv|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Equal0~4_combout\ = (\clockdiv|Equal0~1_combout\ & (\clockdiv|Equal0~2_combout\ & (\clockdiv|Equal0~3_combout\ & \clockdiv|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|Equal0~1_combout\,
	datab => \clockdiv|Equal0~2_combout\,
	datac => \clockdiv|Equal0~3_combout\,
	datad => \clockdiv|Equal0~0_combout\,
	combout => \clockdiv|Equal0~4_combout\);

-- Location: LCCOMB_X25_Y21_N4
\clockdiv|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Equal0~6_combout\ = (\clockdiv|counter\(2) & (\clockdiv|counter\(5) & (\clockdiv|counter\(3) & \clockdiv|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|counter\(2),
	datab => \clockdiv|counter\(5),
	datac => \clockdiv|counter\(3),
	datad => \clockdiv|counter\(4),
	combout => \clockdiv|Equal0~6_combout\);

-- Location: LCCOMB_X26_Y20_N6
\clockdiv|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|Equal0~7_combout\ = (\clockdiv|counter\(1) & (\clockdiv|Equal0~5_combout\ & (\clockdiv|Equal0~4_combout\ & \clockdiv|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockdiv|counter\(1),
	datab => \clockdiv|Equal0~5_combout\,
	datac => \clockdiv|Equal0~4_combout\,
	datad => \clockdiv|Equal0~6_combout\,
	combout => \clockdiv|Equal0~7_combout\);

-- Location: LCCOMB_X26_Y20_N24
\clockdiv|pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|pulse~0_combout\ = \clockdiv|pulse~q\ $ (\clockdiv|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockdiv|pulse~q\,
	datad => \clockdiv|Equal0~7_combout\,
	combout => \clockdiv|pulse~0_combout\);

-- Location: LCCOMB_X26_Y20_N16
\clockdiv|pulse~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clockdiv|pulse~feeder_combout\ = \clockdiv|pulse~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockdiv|pulse~0_combout\,
	combout => \clockdiv|pulse~feeder_combout\);

-- Location: FF_X26_Y20_N17
\clockdiv|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clockdiv|pulse~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockdiv|pulse~q\);

-- Location: CLKCTRL_G5
\clockdiv|pulse~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clockdiv|pulse~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clockdiv|pulse~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N15
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X22_Y20_N12
\countsatu|angka~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \countsatu|angka~0_combout\ = (\enable~input_o\ & (!\countsatu|angka\(0) & \countsatu|LessThan0~0_combout\)) # (!\enable~input_o\ & (\countsatu|angka\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \countsatu|angka\(0),
	datad => \countsatu|LessThan0~0_combout\,
	combout => \countsatu|angka~0_combout\);

-- Location: FF_X22_Y20_N13
\countsatu|angka[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockdiv|pulse~clkctrl_outclk\,
	d => \countsatu|angka~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countsatu|angka\(0));

-- Location: LCCOMB_X22_Y20_N18
\countsatu|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \countsatu|Add0~0_combout\ = \countsatu|angka\(3) $ (((\countsatu|angka\(0) & (\countsatu|angka\(2) & \countsatu|angka\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countsatu|angka\(3),
	datab => \countsatu|angka\(0),
	datac => \countsatu|angka\(2),
	datad => \countsatu|angka\(1),
	combout => \countsatu|Add0~0_combout\);

-- Location: LCCOMB_X22_Y20_N26
\countsatu|angka~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \countsatu|angka~4_combout\ = (\enable~input_o\ & (((\countsatu|LessThan0~0_combout\ & \countsatu|Add0~0_combout\)))) # (!\enable~input_o\ & (\countsatu|angka\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countsatu|angka\(3),
	datab => \enable~input_o\,
	datac => \countsatu|LessThan0~0_combout\,
	datad => \countsatu|Add0~0_combout\,
	combout => \countsatu|angka~4_combout\);

-- Location: FF_X22_Y20_N11
\countsatu|angka[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockdiv|pulse~clkctrl_outclk\,
	asdata => \countsatu|angka~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countsatu|angka\(3));

-- Location: LCCOMB_X22_Y20_N0
\countsatu|angka~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \countsatu|angka~2_combout\ = (!\countsatu|angka\(1)) # (!\countsatu|angka\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countsatu|angka\(0),
	datad => \countsatu|angka\(1),
	combout => \countsatu|angka~2_combout\);

-- Location: LCCOMB_X22_Y20_N30
\countsatu|angka~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \countsatu|angka~3_combout\ = (\enable~input_o\ & (!\countsatu|angka\(3) & (\countsatu|angka\(2) $ (!\countsatu|angka~2_combout\)))) # (!\enable~input_o\ & (((\countsatu|angka\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countsatu|angka\(3),
	datab => \enable~input_o\,
	datac => \countsatu|angka\(2),
	datad => \countsatu|angka~2_combout\,
	combout => \countsatu|angka~3_combout\);

-- Location: FF_X22_Y20_N5
\countsatu|angka[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockdiv|pulse~clkctrl_outclk\,
	asdata => \countsatu|angka~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countsatu|angka\(2));

-- Location: LCCOMB_X22_Y20_N14
\countsatu|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \countsatu|LessThan0~0_combout\ = ((!\countsatu|angka\(0) & (!\countsatu|angka\(2) & !\countsatu|angka\(1)))) # (!\countsatu|angka\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countsatu|angka\(0),
	datab => \countsatu|angka\(2),
	datac => \countsatu|angka\(3),
	datad => \countsatu|angka\(1),
	combout => \countsatu|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y20_N20
\countsatu|angka~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \countsatu|angka~1_combout\ = (\enable~input_o\ & (\countsatu|LessThan0~0_combout\ & (\countsatu|angka\(0) $ (\countsatu|angka\(1))))) # (!\enable~input_o\ & (((\countsatu|angka\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countsatu|LessThan0~0_combout\,
	datab => \countsatu|angka\(0),
	datac => \countsatu|angka\(1),
	datad => \enable~input_o\,
	combout => \countsatu|angka~1_combout\);

-- Location: FF_X22_Y20_N21
\countsatu|angka[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockdiv|pulse~clkctrl_outclk\,
	d => \countsatu|angka~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countsatu|angka\(1));

-- Location: LCCOMB_X22_Y20_N10
\bcdsatu|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcdsatu|Mux0~0_combout\ = (!\countsatu|angka\(1) & (!\countsatu|angka\(3) & (\countsatu|angka\(2) $ (\countsatu|angka\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countsatu|angka\(1),
	datab => \countsatu|angka\(2),
	datac => \countsatu|angka\(3),
	datad => \countsatu|angka\(0),
	combout => \bcdsatu|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y20_N4
\bcdsatu|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcdsatu|Mux1~0_combout\ = (\countsatu|angka\(2) & (\countsatu|angka\(1) $ (\countsatu|angka\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countsatu|angka\(1),
	datab => \countsatu|angka\(0),
	datac => \countsatu|angka\(2),
	combout => \bcdsatu|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y20_N2
\bcdsatu|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcdsatu|Mux2~0_combout\ = (\countsatu|angka\(1) & (!\countsatu|angka\(0) & !\countsatu|angka\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countsatu|angka\(1),
	datab => \countsatu|angka\(0),
	datac => \countsatu|angka\(2),
	combout => \bcdsatu|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y20_N8
\bcdsatu|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcdsatu|Mux3~0_combout\ = (!\countsatu|angka\(3) & ((\countsatu|angka\(2) & (\countsatu|angka\(1) $ (!\countsatu|angka\(0)))) # (!\countsatu|angka\(2) & (!\countsatu|angka\(1) & \countsatu|angka\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countsatu|angka\(3),
	datab => \countsatu|angka\(2),
	datac => \countsatu|angka\(1),
	datad => \countsatu|angka\(0),
	combout => \bcdsatu|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y20_N6
\bcdsatu|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcdsatu|Mux4~0_combout\ = (\countsatu|angka\(0)) # ((!\countsatu|angka\(1) & \countsatu|angka\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countsatu|angka\(1),
	datab => \countsatu|angka\(0),
	datac => \countsatu|angka\(2),
	combout => \bcdsatu|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y20_N16
\bcdsatu|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcdsatu|Mux5~0_combout\ = (!\countsatu|angka\(3) & ((\countsatu|angka\(2) & (\countsatu|angka\(1) & \countsatu|angka\(0))) # (!\countsatu|angka\(2) & ((\countsatu|angka\(1)) # (\countsatu|angka\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countsatu|angka\(3),
	datab => \countsatu|angka\(2),
	datac => \countsatu|angka\(1),
	datad => \countsatu|angka\(0),
	combout => \bcdsatu|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y20_N28
\bcdsatu|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcdsatu|Mux6~0_combout\ = (\countsatu|angka\(3)) # ((\countsatu|angka\(2) & ((!\countsatu|angka\(0)) # (!\countsatu|angka\(1)))) # (!\countsatu|angka\(2) & (\countsatu|angka\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countsatu|angka\(3),
	datab => \countsatu|angka\(2),
	datac => \countsatu|angka\(1),
	datad => \countsatu|angka\(0),
	combout => \bcdsatu|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y20_N22
\countsatu|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \countsatu|process_0~0_combout\ = (\enable~input_o\ & (((\countsatu|angka\(1) & \countsatu|angka\(0))) # (!\countsatu|LessThan0~0_combout\))) # (!\enable~input_o\ & (!\countsatu|angka\(1) & ((!\countsatu|angka\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countsatu|angka\(1),
	datab => \enable~input_o\,
	datac => \countsatu|LessThan0~0_combout\,
	datad => \countsatu|angka\(0),
	combout => \countsatu|process_0~0_combout\);

-- Location: LCCOMB_X22_Y20_N24
\countsatu|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \countsatu|process_0~1_combout\ = (!\countsatu|angka~3_combout\ & (\enable~input_o\ & (\countsatu|process_0~0_combout\ & !\countsatu|angka~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countsatu|angka~3_combout\,
	datab => \enable~input_o\,
	datac => \countsatu|process_0~0_combout\,
	datad => \countsatu|angka~4_combout\,
	combout => \countsatu|process_0~1_combout\);

-- Location: FF_X22_Y20_N25
\countsatu|carry\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockdiv|pulse~clkctrl_outclk\,
	d => \countsatu|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countsatu|carry~q\);

-- Location: CLKCTRL_G7
\countsatu|carry~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \countsatu|carry~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \countsatu|carry~clkctrl_outclk\);

-- Location: LCCOMB_X12_Y23_N28
\countpuluh|angka~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \countpuluh|angka~0_combout\ = (\enable~input_o\ & (!\countpuluh|angka\(0) & \countpuluh|LessThan0~0_combout\)) # (!\enable~input_o\ & (\countpuluh|angka\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datac => \countpuluh|angka\(0),
	datad => \countpuluh|LessThan0~0_combout\,
	combout => \countpuluh|angka~0_combout\);

-- Location: FF_X12_Y23_N29
\countpuluh|angka[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \countsatu|carry~clkctrl_outclk\,
	d => \countpuluh|angka~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countpuluh|angka\(0));

-- Location: LCCOMB_X12_Y23_N18
\countpuluh|angka~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \countpuluh|angka~2_combout\ = (!\countpuluh|angka\(0)) # (!\countpuluh|angka\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \countpuluh|angka\(1),
	datad => \countpuluh|angka\(0),
	combout => \countpuluh|angka~2_combout\);

-- Location: LCCOMB_X12_Y23_N8
\countpuluh|angka~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \countpuluh|angka~3_combout\ = (\enable~input_o\ & (!\countpuluh|angka\(3) & (\countpuluh|angka\(2) $ (!\countpuluh|angka~2_combout\)))) # (!\enable~input_o\ & (\countpuluh|angka\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countpuluh|angka\(2),
	datab => \enable~input_o\,
	datac => \countpuluh|angka\(3),
	datad => \countpuluh|angka~2_combout\,
	combout => \countpuluh|angka~3_combout\);

-- Location: FF_X12_Y23_N13
\countpuluh|angka[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \countsatu|carry~clkctrl_outclk\,
	asdata => \countpuluh|angka~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countpuluh|angka\(2));

-- Location: LCCOMB_X12_Y23_N26
\countpuluh|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \countpuluh|Add0~0_combout\ = \countpuluh|angka\(3) $ (((\countpuluh|angka\(0) & (\countpuluh|angka\(1) & \countpuluh|angka\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countpuluh|angka\(3),
	datab => \countpuluh|angka\(0),
	datac => \countpuluh|angka\(1),
	datad => \countpuluh|angka\(2),
	combout => \countpuluh|Add0~0_combout\);

-- Location: LCCOMB_X12_Y23_N4
\countpuluh|angka~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \countpuluh|angka~4_combout\ = (\enable~input_o\ & (((\countpuluh|Add0~0_combout\ & \countpuluh|LessThan0~0_combout\)))) # (!\enable~input_o\ & (\countpuluh|angka\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countpuluh|angka\(3),
	datab => \enable~input_o\,
	datac => \countpuluh|Add0~0_combout\,
	datad => \countpuluh|LessThan0~0_combout\,
	combout => \countpuluh|angka~4_combout\);

-- Location: FF_X12_Y23_N31
\countpuluh|angka[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \countsatu|carry~clkctrl_outclk\,
	asdata => \countpuluh|angka~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countpuluh|angka\(3));

-- Location: LCCOMB_X12_Y23_N0
\countpuluh|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \countpuluh|LessThan0~0_combout\ = ((!\countpuluh|angka\(0) & (!\countpuluh|angka\(1) & !\countpuluh|angka\(2)))) # (!\countpuluh|angka\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countpuluh|angka\(3),
	datab => \countpuluh|angka\(0),
	datac => \countpuluh|angka\(1),
	datad => \countpuluh|angka\(2),
	combout => \countpuluh|LessThan0~0_combout\);

-- Location: LCCOMB_X12_Y23_N14
\countpuluh|angka~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \countpuluh|angka~1_combout\ = (\enable~input_o\ & (\countpuluh|LessThan0~0_combout\ & (\countpuluh|angka\(1) $ (\countpuluh|angka\(0))))) # (!\enable~input_o\ & (((\countpuluh|angka\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \countpuluh|LessThan0~0_combout\,
	datac => \countpuluh|angka\(1),
	datad => \countpuluh|angka\(0),
	combout => \countpuluh|angka~1_combout\);

-- Location: FF_X12_Y23_N15
\countpuluh|angka[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \countsatu|carry~clkctrl_outclk\,
	d => \countpuluh|angka~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countpuluh|angka\(1));

-- Location: LCCOMB_X12_Y23_N30
\bcdpuluh|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcdpuluh|Mux0~0_combout\ = (!\countpuluh|angka\(1) & (!\countpuluh|angka\(3) & (\countpuluh|angka\(2) $ (\countpuluh|angka\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countpuluh|angka\(1),
	datab => \countpuluh|angka\(2),
	datac => \countpuluh|angka\(3),
	datad => \countpuluh|angka\(0),
	combout => \bcdpuluh|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y23_N12
\bcdpuluh|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcdpuluh|Mux1~0_combout\ = (\countpuluh|angka\(2) & (\countpuluh|angka\(1) $ (\countpuluh|angka\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countpuluh|angka\(1),
	datac => \countpuluh|angka\(2),
	datad => \countpuluh|angka\(0),
	combout => \bcdpuluh|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y23_N24
\bcdpuluh|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcdpuluh|Mux2~0_combout\ = (\countpuluh|angka\(1) & (!\countpuluh|angka\(2) & !\countpuluh|angka\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countpuluh|angka\(1),
	datac => \countpuluh|angka\(2),
	datad => \countpuluh|angka\(0),
	combout => \bcdpuluh|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y23_N6
\bcdpuluh|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcdpuluh|Mux3~0_combout\ = (!\countpuluh|angka\(3) & ((\countpuluh|angka\(1) & (\countpuluh|angka\(2) & \countpuluh|angka\(0))) # (!\countpuluh|angka\(1) & (\countpuluh|angka\(2) $ (\countpuluh|angka\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countpuluh|angka\(1),
	datab => \countpuluh|angka\(2),
	datac => \countpuluh|angka\(3),
	datad => \countpuluh|angka\(0),
	combout => \bcdpuluh|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y23_N20
\bcdpuluh|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcdpuluh|Mux4~0_combout\ = (\countpuluh|angka\(0)) # ((!\countpuluh|angka\(1) & \countpuluh|angka\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countpuluh|angka\(1),
	datac => \countpuluh|angka\(2),
	datad => \countpuluh|angka\(0),
	combout => \bcdpuluh|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y23_N2
\bcdpuluh|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcdpuluh|Mux5~0_combout\ = (!\countpuluh|angka\(3) & ((\countpuluh|angka\(1) & ((\countpuluh|angka\(0)) # (!\countpuluh|angka\(2)))) # (!\countpuluh|angka\(1) & (!\countpuluh|angka\(2) & \countpuluh|angka\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countpuluh|angka\(1),
	datab => \countpuluh|angka\(2),
	datac => \countpuluh|angka\(3),
	datad => \countpuluh|angka\(0),
	combout => \bcdpuluh|Mux5~0_combout\);

-- Location: LCCOMB_X12_Y23_N16
\bcdpuluh|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcdpuluh|Mux6~0_combout\ = (\countpuluh|angka\(3)) # ((\countpuluh|angka\(1) & ((!\countpuluh|angka\(0)) # (!\countpuluh|angka\(2)))) # (!\countpuluh|angka\(1) & (\countpuluh|angka\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countpuluh|angka\(1),
	datab => \countpuluh|angka\(2),
	datac => \countpuluh|angka\(3),
	datad => \countpuluh|angka\(0),
	combout => \bcdpuluh|Mux6~0_combout\);

-- Location: LCCOMB_X12_Y23_N10
\countpuluh|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \countpuluh|process_0~0_combout\ = (\enable~input_o\ & (((\countpuluh|angka\(0) & \countpuluh|angka\(1))) # (!\countpuluh|LessThan0~0_combout\))) # (!\enable~input_o\ & (!\countpuluh|angka\(0) & (!\countpuluh|angka\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \countpuluh|angka\(0),
	datac => \countpuluh|angka\(1),
	datad => \countpuluh|LessThan0~0_combout\,
	combout => \countpuluh|process_0~0_combout\);

-- Location: LCCOMB_X12_Y23_N22
\countpuluh|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \countpuluh|process_0~1_combout\ = (\enable~input_o\ & (!\countpuluh|angka~3_combout\ & (!\countpuluh|angka~4_combout\ & \countpuluh|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \countpuluh|angka~3_combout\,
	datac => \countpuluh|angka~4_combout\,
	datad => \countpuluh|process_0~0_combout\,
	combout => \countpuluh|process_0~1_combout\);

-- Location: FF_X12_Y23_N23
\countpuluh|carry1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \countsatu|carry~clkctrl_outclk\,
	d => \countpuluh|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countpuluh|carry1~q\);

ww_a <= \a~output_o\;

ww_b <= \b~output_o\;

ww_c <= \c~output_o\;

ww_d <= \d~output_o\;

ww_e <= \e~output_o\;

ww_f <= \f~output_o\;

ww_g <= \g~output_o\;

ww_a1 <= \a1~output_o\;

ww_b1 <= \b1~output_o\;

ww_c1 <= \c1~output_o\;

ww_d1 <= \d1~output_o\;

ww_e1 <= \e1~output_o\;

ww_f1 <= \f1~output_o\;

ww_g1 <= \g1~output_o\;

ww_carry1 <= \carry1~output_o\;
END structure;


