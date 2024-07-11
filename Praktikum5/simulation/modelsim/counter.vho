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

-- DATE "11/30/2020 15:00:37"

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

ENTITY 	counter IS
    PORT (
	clk : IN std_logic;
	up_down : IN std_logic;
	reset : IN std_logic;
	stop : IN std_logic;
	a : BUFFER std_logic;
	b : BUFFER std_logic;
	c : BUFFER std_logic;
	d : BUFFER std_logic;
	e : BUFFER std_logic;
	f : BUFFER std_logic;
	g : BUFFER std_logic;
	s1 : BUFFER std_logic;
	s2 : BUFFER std_logic
	);
END counter;

-- Design Ports Information
-- a	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- up_down	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stop	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_up_down : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_stop : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL \divclk|pulsekhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divclk|pulsehz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a~output_o\ : std_logic;
SIGNAL \b~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \f~output_o\ : std_logic;
SIGNAL \g~output_o\ : std_logic;
SIGNAL \s1~output_o\ : std_logic;
SIGNAL \s2~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \divclk|Add1~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \divclk|Add1~1\ : std_logic;
SIGNAL \divclk|Add1~2_combout\ : std_logic;
SIGNAL \divclk|Add1~3\ : std_logic;
SIGNAL \divclk|Add1~4_combout\ : std_logic;
SIGNAL \divclk|Add1~5\ : std_logic;
SIGNAL \divclk|Add1~6_combout\ : std_logic;
SIGNAL \divclk|counterkhz~5_combout\ : std_logic;
SIGNAL \divclk|Add1~7\ : std_logic;
SIGNAL \divclk|Add1~8_combout\ : std_logic;
SIGNAL \divclk|Add1~9\ : std_logic;
SIGNAL \divclk|Add1~10_combout\ : std_logic;
SIGNAL \divclk|counterkhz~4_combout\ : std_logic;
SIGNAL \divclk|Add1~11\ : std_logic;
SIGNAL \divclk|Add1~12_combout\ : std_logic;
SIGNAL \divclk|Add1~13\ : std_logic;
SIGNAL \divclk|Add1~15\ : std_logic;
SIGNAL \divclk|Add1~17\ : std_logic;
SIGNAL \divclk|Add1~18_combout\ : std_logic;
SIGNAL \divclk|Add1~19\ : std_logic;
SIGNAL \divclk|Add1~20_combout\ : std_logic;
SIGNAL \divclk|Add1~21\ : std_logic;
SIGNAL \divclk|Add1~22_combout\ : std_logic;
SIGNAL \divclk|Add1~23\ : std_logic;
SIGNAL \divclk|Add1~24_combout\ : std_logic;
SIGNAL \divclk|Add1~25\ : std_logic;
SIGNAL \divclk|Add1~26_combout\ : std_logic;
SIGNAL \divclk|counterkhz~1_combout\ : std_logic;
SIGNAL \divclk|Add1~27\ : std_logic;
SIGNAL \divclk|Add1~28_combout\ : std_logic;
SIGNAL \divclk|counterkhz~0_combout\ : std_logic;
SIGNAL \divclk|Equal1~0_combout\ : std_logic;
SIGNAL \divclk|Add1~14_combout\ : std_logic;
SIGNAL \divclk|counterkhz~3_combout\ : std_logic;
SIGNAL \divclk|Equal1~2_combout\ : std_logic;
SIGNAL \divclk|Equal1~3_combout\ : std_logic;
SIGNAL \divclk|Add1~16_combout\ : std_logic;
SIGNAL \divclk|counterkhz~2_combout\ : std_logic;
SIGNAL \divclk|Equal1~1_combout\ : std_logic;
SIGNAL \divclk|pulsekhz~0_combout\ : std_logic;
SIGNAL \divclk|pulsekhz~feeder_combout\ : std_logic;
SIGNAL \divclk|pulsekhz~q\ : std_logic;
SIGNAL \divclk|pulsekhz~clkctrl_outclk\ : std_logic;
SIGNAL \divclk|Add0~0_combout\ : std_logic;
SIGNAL \divclk|Add0~1\ : std_logic;
SIGNAL \divclk|Add0~2_combout\ : std_logic;
SIGNAL \divclk|Add0~3\ : std_logic;
SIGNAL \divclk|Add0~4_combout\ : std_logic;
SIGNAL \divclk|Add0~5\ : std_logic;
SIGNAL \divclk|Add0~6_combout\ : std_logic;
SIGNAL \divclk|Add0~7\ : std_logic;
SIGNAL \divclk|Add0~8_combout\ : std_logic;
SIGNAL \divclk|Add0~9\ : std_logic;
SIGNAL \divclk|Add0~10_combout\ : std_logic;
SIGNAL \divclk|counterhz~11_combout\ : std_logic;
SIGNAL \divclk|Add0~11\ : std_logic;
SIGNAL \divclk|Add0~12_combout\ : std_logic;
SIGNAL \divclk|Add0~13\ : std_logic;
SIGNAL \divclk|Add0~14_combout\ : std_logic;
SIGNAL \divclk|Add0~15\ : std_logic;
SIGNAL \divclk|Add0~16_combout\ : std_logic;
SIGNAL \divclk|Equal0~5_combout\ : std_logic;
SIGNAL \divclk|Equal0~6_combout\ : std_logic;
SIGNAL \divclk|Add0~17\ : std_logic;
SIGNAL \divclk|Add0~18_combout\ : std_logic;
SIGNAL \divclk|Add0~19\ : std_logic;
SIGNAL \divclk|Add0~20_combout\ : std_logic;
SIGNAL \divclk|counterhz~10_combout\ : std_logic;
SIGNAL \divclk|Add0~21\ : std_logic;
SIGNAL \divclk|Add0~22_combout\ : std_logic;
SIGNAL \divclk|counterhz~9_combout\ : std_logic;
SIGNAL \divclk|Add0~23\ : std_logic;
SIGNAL \divclk|Add0~24_combout\ : std_logic;
SIGNAL \divclk|counterhz~8_combout\ : std_logic;
SIGNAL \divclk|Add0~25\ : std_logic;
SIGNAL \divclk|Add0~26_combout\ : std_logic;
SIGNAL \divclk|counterhz~7_combout\ : std_logic;
SIGNAL \divclk|Add0~27\ : std_logic;
SIGNAL \divclk|Add0~28_combout\ : std_logic;
SIGNAL \divclk|Add0~29\ : std_logic;
SIGNAL \divclk|Add0~30_combout\ : std_logic;
SIGNAL \divclk|counterhz~6_combout\ : std_logic;
SIGNAL \divclk|Add0~31\ : std_logic;
SIGNAL \divclk|Add0~32_combout\ : std_logic;
SIGNAL \divclk|Add0~33\ : std_logic;
SIGNAL \divclk|Add0~34_combout\ : std_logic;
SIGNAL \divclk|counterhz~5_combout\ : std_logic;
SIGNAL \divclk|Add0~35\ : std_logic;
SIGNAL \divclk|Add0~36_combout\ : std_logic;
SIGNAL \divclk|counterhz~4_combout\ : std_logic;
SIGNAL \divclk|Add0~37\ : std_logic;
SIGNAL \divclk|Add0~38_combout\ : std_logic;
SIGNAL \divclk|counterhz~3_combout\ : std_logic;
SIGNAL \divclk|Add0~39\ : std_logic;
SIGNAL \divclk|Add0~40_combout\ : std_logic;
SIGNAL \divclk|counterhz~2_combout\ : std_logic;
SIGNAL \divclk|Equal0~1_combout\ : std_logic;
SIGNAL \divclk|Add0~41\ : std_logic;
SIGNAL \divclk|Add0~42_combout\ : std_logic;
SIGNAL \divclk|counterhz~1_combout\ : std_logic;
SIGNAL \divclk|Add0~43\ : std_logic;
SIGNAL \divclk|Add0~44_combout\ : std_logic;
SIGNAL \divclk|Add0~45\ : std_logic;
SIGNAL \divclk|Add0~46_combout\ : std_logic;
SIGNAL \divclk|counterhz~0_combout\ : std_logic;
SIGNAL \divclk|Equal0~0_combout\ : std_logic;
SIGNAL \divclk|Equal0~3_combout\ : std_logic;
SIGNAL \divclk|Equal0~2_combout\ : std_logic;
SIGNAL \divclk|Equal0~4_combout\ : std_logic;
SIGNAL \divclk|Equal0~7_combout\ : std_logic;
SIGNAL \divclk|pulsehz~0_combout\ : std_logic;
SIGNAL \divclk|pulsehz~feeder_combout\ : std_logic;
SIGNAL \divclk|pulsehz~q\ : std_logic;
SIGNAL \divclk|pulsehz~clkctrl_outclk\ : std_logic;
SIGNAL \stop~input_o\ : std_logic;
SIGNAL \up_down~input_o\ : std_logic;
SIGNAL \count|process_0~0_combout\ : std_logic;
SIGNAL \count|pulse2~3_combout\ : std_logic;
SIGNAL \count|pulse1[3]~15_combout\ : std_logic;
SIGNAL \count|pulse1[0]~16_combout\ : std_logic;
SIGNAL \count|pulse1[1]~8_cout\ : std_logic;
SIGNAL \count|pulse1[1]~9_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \count|pulse1[1]~10\ : std_logic;
SIGNAL \count|pulse1[2]~11_combout\ : std_logic;
SIGNAL \count|pulse1[2]~12\ : std_logic;
SIGNAL \count|pulse1[3]~13_combout\ : std_logic;
SIGNAL \count|pulse2~5_combout\ : std_logic;
SIGNAL \count|pulse2[1]~8_cout\ : std_logic;
SIGNAL \count|pulse2[1]~9_combout\ : std_logic;
SIGNAL \count|pulse2[2]~14\ : std_logic;
SIGNAL \count|pulse2[3]~15_combout\ : std_logic;
SIGNAL \count|pulse2[3]~12_combout\ : std_logic;
SIGNAL \segment|c~1_combout\ : std_logic;
SIGNAL \count|pulse2[3]~11_combout\ : std_logic;
SIGNAL \count|pulse2[1]~10\ : std_logic;
SIGNAL \count|pulse2[2]~13_combout\ : std_logic;
SIGNAL \count|pulse2[0]~4_combout\ : std_logic;
SIGNAL \count|pulse2[0]~6_combout\ : std_logic;
SIGNAL \segment|Mux0~0_combout\ : std_logic;
SIGNAL \segment|switch~0_combout\ : std_logic;
SIGNAL \segment|switch~q\ : std_logic;
SIGNAL \segment|Mux7~0_combout\ : std_logic;
SIGNAL \segment|a~0_combout\ : std_logic;
SIGNAL \segment|a~q\ : std_logic;
SIGNAL \segment|b~0_combout\ : std_logic;
SIGNAL \segment|b~1_combout\ : std_logic;
SIGNAL \segment|b~2_combout\ : std_logic;
SIGNAL \segment|b~q\ : std_logic;
SIGNAL \segment|c~0_combout\ : std_logic;
SIGNAL \segment|c~2_combout\ : std_logic;
SIGNAL \segment|c~q\ : std_logic;
SIGNAL \segment|Mux3~0_combout\ : std_logic;
SIGNAL \segment|Mux10~0_combout\ : std_logic;
SIGNAL \segment|d~0_combout\ : std_logic;
SIGNAL \segment|d~q\ : std_logic;
SIGNAL \segment|e~0_combout\ : std_logic;
SIGNAL \segment|e~1_combout\ : std_logic;
SIGNAL \segment|e~2_combout\ : std_logic;
SIGNAL \segment|e~q\ : std_logic;
SIGNAL \segment|Mux12~0_combout\ : std_logic;
SIGNAL \segment|Mux5~0_combout\ : std_logic;
SIGNAL \segment|f~0_combout\ : std_logic;
SIGNAL \segment|f~q\ : std_logic;
SIGNAL \segment|Mux6~0_combout\ : std_logic;
SIGNAL \segment|Mux13~0_combout\ : std_logic;
SIGNAL \segment|g~0_combout\ : std_logic;
SIGNAL \segment|g~q\ : std_logic;
SIGNAL \segment|s1~feeder_combout\ : std_logic;
SIGNAL \segment|s1~q\ : std_logic;
SIGNAL \segment|s2~0_combout\ : std_logic;
SIGNAL \segment|s2~q\ : std_logic;
SIGNAL \count|pulse1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count|pulse2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divclk|counterkhz\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \divclk|counterhz\ : std_logic_vector(24 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_up_down <= up_down;
ww_reset <= reset;
ww_stop <= stop;
a <= ww_a;
b <= ww_b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
s1 <= ww_s1;
s2 <= ww_s2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\divclk|pulsekhz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divclk|pulsekhz~q\);

\divclk|pulsehz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divclk|pulsehz~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N16
\a~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment|a~q\,
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
	i => \segment|b~q\,
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
	i => \segment|c~q\,
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
	i => \segment|d~q\,
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
	i => \segment|e~q\,
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
	i => \segment|f~q\,
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
	i => \segment|g~q\,
	devoe => ww_devoe,
	o => \g~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\s1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment|s1~q\,
	devoe => ww_devoe,
	o => \s1~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\s2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segment|s2~q\,
	devoe => ww_devoe,
	o => \s2~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N0
\divclk|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add1~0_combout\ = \divclk|counterkhz\(0) $ (VCC)
-- \divclk|Add1~1\ = CARRY(\divclk|counterkhz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterkhz\(0),
	datad => VCC,
	combout => \divclk|Add1~0_combout\,
	cout => \divclk|Add1~1\);

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

-- Location: FF_X1_Y11_N1
\divclk|counterkhz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|Add1~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterkhz\(0));

-- Location: LCCOMB_X1_Y11_N2
\divclk|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add1~2_combout\ = (\divclk|counterkhz\(1) & (!\divclk|Add1~1\)) # (!\divclk|counterkhz\(1) & ((\divclk|Add1~1\) # (GND)))
-- \divclk|Add1~3\ = CARRY((!\divclk|Add1~1\) # (!\divclk|counterkhz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterkhz\(1),
	datad => VCC,
	cin => \divclk|Add1~1\,
	combout => \divclk|Add1~2_combout\,
	cout => \divclk|Add1~3\);

-- Location: FF_X1_Y11_N3
\divclk|counterkhz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|Add1~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterkhz\(1));

-- Location: LCCOMB_X1_Y11_N4
\divclk|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add1~4_combout\ = (\divclk|counterkhz\(2) & (\divclk|Add1~3\ $ (GND))) # (!\divclk|counterkhz\(2) & (!\divclk|Add1~3\ & VCC))
-- \divclk|Add1~5\ = CARRY((\divclk|counterkhz\(2) & !\divclk|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterkhz\(2),
	datad => VCC,
	cin => \divclk|Add1~3\,
	combout => \divclk|Add1~4_combout\,
	cout => \divclk|Add1~5\);

-- Location: FF_X1_Y11_N5
\divclk|counterkhz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|Add1~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterkhz\(2));

-- Location: LCCOMB_X1_Y11_N6
\divclk|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add1~6_combout\ = (\divclk|counterkhz\(3) & (!\divclk|Add1~5\)) # (!\divclk|counterkhz\(3) & ((\divclk|Add1~5\) # (GND)))
-- \divclk|Add1~7\ = CARRY((!\divclk|Add1~5\) # (!\divclk|counterkhz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterkhz\(3),
	datad => VCC,
	cin => \divclk|Add1~5\,
	combout => \divclk|Add1~6_combout\,
	cout => \divclk|Add1~7\);

-- Location: LCCOMB_X1_Y9_N26
\divclk|counterkhz~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|counterkhz~5_combout\ = (\divclk|Add1~6_combout\ & (((!\divclk|Equal1~3_combout\) # (!\divclk|Equal1~1_combout\)) # (!\divclk|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|Add1~6_combout\,
	datab => \divclk|Equal1~0_combout\,
	datac => \divclk|Equal1~1_combout\,
	datad => \divclk|Equal1~3_combout\,
	combout => \divclk|counterkhz~5_combout\);

-- Location: FF_X1_Y9_N27
\divclk|counterkhz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|counterkhz~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterkhz\(3));

-- Location: LCCOMB_X1_Y11_N8
\divclk|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add1~8_combout\ = (\divclk|counterkhz\(4) & (\divclk|Add1~7\ $ (GND))) # (!\divclk|counterkhz\(4) & (!\divclk|Add1~7\ & VCC))
-- \divclk|Add1~9\ = CARRY((\divclk|counterkhz\(4) & !\divclk|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterkhz\(4),
	datad => VCC,
	cin => \divclk|Add1~7\,
	combout => \divclk|Add1~8_combout\,
	cout => \divclk|Add1~9\);

-- Location: FF_X1_Y11_N9
\divclk|counterkhz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|Add1~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterkhz\(4));

-- Location: LCCOMB_X1_Y11_N10
\divclk|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add1~10_combout\ = (\divclk|counterkhz\(5) & (!\divclk|Add1~9\)) # (!\divclk|counterkhz\(5) & ((\divclk|Add1~9\) # (GND)))
-- \divclk|Add1~11\ = CARRY((!\divclk|Add1~9\) # (!\divclk|counterkhz\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterkhz\(5),
	datad => VCC,
	cin => \divclk|Add1~9\,
	combout => \divclk|Add1~10_combout\,
	cout => \divclk|Add1~11\);

-- Location: LCCOMB_X1_Y9_N8
\divclk|counterkhz~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|counterkhz~4_combout\ = (\divclk|Add1~10_combout\ & (((!\divclk|Equal1~1_combout\) # (!\divclk|Equal1~0_combout\)) # (!\divclk|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|Equal1~3_combout\,
	datab => \divclk|Equal1~0_combout\,
	datac => \divclk|Equal1~1_combout\,
	datad => \divclk|Add1~10_combout\,
	combout => \divclk|counterkhz~4_combout\);

-- Location: FF_X1_Y9_N9
\divclk|counterkhz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|counterkhz~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterkhz\(5));

-- Location: LCCOMB_X1_Y11_N12
\divclk|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add1~12_combout\ = (\divclk|counterkhz\(6) & (\divclk|Add1~11\ $ (GND))) # (!\divclk|counterkhz\(6) & (!\divclk|Add1~11\ & VCC))
-- \divclk|Add1~13\ = CARRY((\divclk|counterkhz\(6) & !\divclk|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterkhz\(6),
	datad => VCC,
	cin => \divclk|Add1~11\,
	combout => \divclk|Add1~12_combout\,
	cout => \divclk|Add1~13\);

-- Location: FF_X1_Y11_N13
\divclk|counterkhz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|Add1~12_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterkhz\(6));

-- Location: LCCOMB_X1_Y11_N14
\divclk|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add1~14_combout\ = (\divclk|counterkhz\(7) & (!\divclk|Add1~13\)) # (!\divclk|counterkhz\(7) & ((\divclk|Add1~13\) # (GND)))
-- \divclk|Add1~15\ = CARRY((!\divclk|Add1~13\) # (!\divclk|counterkhz\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterkhz\(7),
	datad => VCC,
	cin => \divclk|Add1~13\,
	combout => \divclk|Add1~14_combout\,
	cout => \divclk|Add1~15\);

-- Location: LCCOMB_X1_Y11_N16
\divclk|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add1~16_combout\ = (\divclk|counterkhz\(8) & (\divclk|Add1~15\ $ (GND))) # (!\divclk|counterkhz\(8) & (!\divclk|Add1~15\ & VCC))
-- \divclk|Add1~17\ = CARRY((\divclk|counterkhz\(8) & !\divclk|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterkhz\(8),
	datad => VCC,
	cin => \divclk|Add1~15\,
	combout => \divclk|Add1~16_combout\,
	cout => \divclk|Add1~17\);

-- Location: LCCOMB_X1_Y11_N18
\divclk|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add1~18_combout\ = (\divclk|counterkhz\(9) & (!\divclk|Add1~17\)) # (!\divclk|counterkhz\(9) & ((\divclk|Add1~17\) # (GND)))
-- \divclk|Add1~19\ = CARRY((!\divclk|Add1~17\) # (!\divclk|counterkhz\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterkhz\(9),
	datad => VCC,
	cin => \divclk|Add1~17\,
	combout => \divclk|Add1~18_combout\,
	cout => \divclk|Add1~19\);

-- Location: FF_X1_Y11_N19
\divclk|counterkhz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|Add1~18_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterkhz\(9));

-- Location: LCCOMB_X1_Y11_N20
\divclk|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add1~20_combout\ = (\divclk|counterkhz\(10) & (\divclk|Add1~19\ $ (GND))) # (!\divclk|counterkhz\(10) & (!\divclk|Add1~19\ & VCC))
-- \divclk|Add1~21\ = CARRY((\divclk|counterkhz\(10) & !\divclk|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterkhz\(10),
	datad => VCC,
	cin => \divclk|Add1~19\,
	combout => \divclk|Add1~20_combout\,
	cout => \divclk|Add1~21\);

-- Location: FF_X1_Y11_N21
\divclk|counterkhz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|Add1~20_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterkhz\(10));

-- Location: LCCOMB_X1_Y11_N22
\divclk|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add1~22_combout\ = (\divclk|counterkhz\(11) & (!\divclk|Add1~21\)) # (!\divclk|counterkhz\(11) & ((\divclk|Add1~21\) # (GND)))
-- \divclk|Add1~23\ = CARRY((!\divclk|Add1~21\) # (!\divclk|counterkhz\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterkhz\(11),
	datad => VCC,
	cin => \divclk|Add1~21\,
	combout => \divclk|Add1~22_combout\,
	cout => \divclk|Add1~23\);

-- Location: FF_X1_Y11_N23
\divclk|counterkhz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|Add1~22_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterkhz\(11));

-- Location: LCCOMB_X1_Y11_N24
\divclk|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add1~24_combout\ = (\divclk|counterkhz\(12) & (\divclk|Add1~23\ $ (GND))) # (!\divclk|counterkhz\(12) & (!\divclk|Add1~23\ & VCC))
-- \divclk|Add1~25\ = CARRY((\divclk|counterkhz\(12) & !\divclk|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterkhz\(12),
	datad => VCC,
	cin => \divclk|Add1~23\,
	combout => \divclk|Add1~24_combout\,
	cout => \divclk|Add1~25\);

-- Location: FF_X1_Y11_N25
\divclk|counterkhz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|Add1~24_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterkhz\(12));

-- Location: LCCOMB_X1_Y11_N26
\divclk|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add1~26_combout\ = (\divclk|counterkhz\(13) & (!\divclk|Add1~25\)) # (!\divclk|counterkhz\(13) & ((\divclk|Add1~25\) # (GND)))
-- \divclk|Add1~27\ = CARRY((!\divclk|Add1~25\) # (!\divclk|counterkhz\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterkhz\(13),
	datad => VCC,
	cin => \divclk|Add1~25\,
	combout => \divclk|Add1~26_combout\,
	cout => \divclk|Add1~27\);

-- Location: LCCOMB_X1_Y9_N22
\divclk|counterkhz~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|counterkhz~1_combout\ = (\divclk|Add1~26_combout\ & (((!\divclk|Equal1~1_combout\) # (!\divclk|Equal1~0_combout\)) # (!\divclk|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|Equal1~3_combout\,
	datab => \divclk|Equal1~0_combout\,
	datac => \divclk|Equal1~1_combout\,
	datad => \divclk|Add1~26_combout\,
	combout => \divclk|counterkhz~1_combout\);

-- Location: FF_X1_Y9_N23
\divclk|counterkhz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|counterkhz~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterkhz\(13));

-- Location: LCCOMB_X1_Y11_N28
\divclk|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add1~28_combout\ = \divclk|counterkhz\(14) $ (!\divclk|Add1~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterkhz\(14),
	cin => \divclk|Add1~27\,
	combout => \divclk|Add1~28_combout\);

-- Location: LCCOMB_X1_Y11_N30
\divclk|counterkhz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|counterkhz~0_combout\ = (\divclk|Add1~28_combout\ & (((!\divclk|Equal1~0_combout\) # (!\divclk|Equal1~3_combout\)) # (!\divclk|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|Equal1~1_combout\,
	datab => \divclk|Equal1~3_combout\,
	datac => \divclk|Equal1~0_combout\,
	datad => \divclk|Add1~28_combout\,
	combout => \divclk|counterkhz~0_combout\);

-- Location: FF_X1_Y11_N31
\divclk|counterkhz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|counterkhz~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterkhz\(14));

-- Location: LCCOMB_X1_Y9_N2
\divclk|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Equal1~0_combout\ = (\divclk|counterkhz\(14) & (\divclk|counterkhz\(13) & (!\divclk|counterkhz\(12) & \divclk|counterkhz\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterkhz\(14),
	datab => \divclk|counterkhz\(13),
	datac => \divclk|counterkhz\(12),
	datad => \divclk|counterkhz\(0),
	combout => \divclk|Equal1~0_combout\);

-- Location: LCCOMB_X1_Y9_N30
\divclk|counterkhz~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|counterkhz~3_combout\ = (\divclk|Add1~14_combout\ & (((!\divclk|Equal1~1_combout\) # (!\divclk|Equal1~0_combout\)) # (!\divclk|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|Equal1~3_combout\,
	datab => \divclk|Equal1~0_combout\,
	datac => \divclk|Equal1~1_combout\,
	datad => \divclk|Add1~14_combout\,
	combout => \divclk|counterkhz~3_combout\);

-- Location: FF_X1_Y9_N31
\divclk|counterkhz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|counterkhz~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterkhz\(7));

-- Location: LCCOMB_X1_Y9_N10
\divclk|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Equal1~2_combout\ = (\divclk|counterkhz\(7) & (\divclk|counterkhz\(5) & (!\divclk|counterkhz\(4) & !\divclk|counterkhz\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterkhz\(7),
	datab => \divclk|counterkhz\(5),
	datac => \divclk|counterkhz\(4),
	datad => \divclk|counterkhz\(6),
	combout => \divclk|Equal1~2_combout\);

-- Location: LCCOMB_X1_Y9_N18
\divclk|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Equal1~3_combout\ = (\divclk|Equal1~2_combout\ & (\divclk|counterkhz\(1) & (!\divclk|counterkhz\(3) & \divclk|counterkhz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|Equal1~2_combout\,
	datab => \divclk|counterkhz\(1),
	datac => \divclk|counterkhz\(3),
	datad => \divclk|counterkhz\(2),
	combout => \divclk|Equal1~3_combout\);

-- Location: LCCOMB_X1_Y9_N24
\divclk|counterkhz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|counterkhz~2_combout\ = (\divclk|Add1~16_combout\ & (((!\divclk|Equal1~1_combout\) # (!\divclk|Equal1~0_combout\)) # (!\divclk|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|Equal1~3_combout\,
	datab => \divclk|Equal1~0_combout\,
	datac => \divclk|Equal1~1_combout\,
	datad => \divclk|Add1~16_combout\,
	combout => \divclk|counterkhz~2_combout\);

-- Location: FF_X1_Y9_N25
\divclk|counterkhz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|counterkhz~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterkhz\(8));

-- Location: LCCOMB_X1_Y10_N28
\divclk|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Equal1~1_combout\ = (\divclk|counterkhz\(8) & (!\divclk|counterkhz\(11) & (!\divclk|counterkhz\(10) & !\divclk|counterkhz\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterkhz\(8),
	datab => \divclk|counterkhz\(11),
	datac => \divclk|counterkhz\(10),
	datad => \divclk|counterkhz\(9),
	combout => \divclk|Equal1~1_combout\);

-- Location: LCCOMB_X1_Y9_N4
\divclk|pulsekhz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|pulsekhz~0_combout\ = \divclk|pulsekhz~q\ $ (((\divclk|Equal1~1_combout\ & (\divclk|Equal1~0_combout\ & \divclk|Equal1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|Equal1~1_combout\,
	datab => \divclk|Equal1~0_combout\,
	datac => \divclk|pulsekhz~q\,
	datad => \divclk|Equal1~3_combout\,
	combout => \divclk|pulsekhz~0_combout\);

-- Location: LCCOMB_X1_Y9_N6
\divclk|pulsekhz~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|pulsekhz~feeder_combout\ = \divclk|pulsekhz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \divclk|pulsekhz~0_combout\,
	combout => \divclk|pulsekhz~feeder_combout\);

-- Location: FF_X1_Y9_N7
\divclk|pulsekhz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|pulsekhz~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|pulsekhz~q\);

-- Location: CLKCTRL_G1
\divclk|pulsekhz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divclk|pulsekhz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divclk|pulsekhz~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y11_N8
\divclk|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~0_combout\ = (\divclk|counterkhz\(0) & (\divclk|counterhz\(1) $ (VCC))) # (!\divclk|counterkhz\(0) & (\divclk|counterhz\(1) & VCC))
-- \divclk|Add0~1\ = CARRY((\divclk|counterkhz\(0) & \divclk|counterhz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterkhz\(0),
	datab => \divclk|counterhz\(1),
	datad => VCC,
	combout => \divclk|Add0~0_combout\,
	cout => \divclk|Add0~1\);

-- Location: FF_X2_Y11_N9
\divclk|counterhz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|Add0~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(1));

-- Location: LCCOMB_X2_Y11_N10
\divclk|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~2_combout\ = (\divclk|counterhz\(2) & (!\divclk|Add0~1\)) # (!\divclk|counterhz\(2) & ((\divclk|Add0~1\) # (GND)))
-- \divclk|Add0~3\ = CARRY((!\divclk|Add0~1\) # (!\divclk|counterhz\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterhz\(2),
	datad => VCC,
	cin => \divclk|Add0~1\,
	combout => \divclk|Add0~2_combout\,
	cout => \divclk|Add0~3\);

-- Location: FF_X2_Y11_N11
\divclk|counterhz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|Add0~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(2));

-- Location: LCCOMB_X2_Y11_N12
\divclk|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~4_combout\ = (\divclk|counterhz\(3) & (\divclk|Add0~3\ $ (GND))) # (!\divclk|counterhz\(3) & (!\divclk|Add0~3\ & VCC))
-- \divclk|Add0~5\ = CARRY((\divclk|counterhz\(3) & !\divclk|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterhz\(3),
	datad => VCC,
	cin => \divclk|Add0~3\,
	combout => \divclk|Add0~4_combout\,
	cout => \divclk|Add0~5\);

-- Location: FF_X2_Y11_N13
\divclk|counterhz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|Add0~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(3));

-- Location: LCCOMB_X2_Y11_N14
\divclk|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~6_combout\ = (\divclk|counterhz\(4) & (!\divclk|Add0~5\)) # (!\divclk|counterhz\(4) & ((\divclk|Add0~5\) # (GND)))
-- \divclk|Add0~7\ = CARRY((!\divclk|Add0~5\) # (!\divclk|counterhz\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterhz\(4),
	datad => VCC,
	cin => \divclk|Add0~5\,
	combout => \divclk|Add0~6_combout\,
	cout => \divclk|Add0~7\);

-- Location: FF_X2_Y11_N15
\divclk|counterhz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|Add0~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(4));

-- Location: LCCOMB_X2_Y11_N16
\divclk|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~8_combout\ = (\divclk|counterhz\(5) & (\divclk|Add0~7\ $ (GND))) # (!\divclk|counterhz\(5) & (!\divclk|Add0~7\ & VCC))
-- \divclk|Add0~9\ = CARRY((\divclk|counterhz\(5) & !\divclk|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterhz\(5),
	datad => VCC,
	cin => \divclk|Add0~7\,
	combout => \divclk|Add0~8_combout\,
	cout => \divclk|Add0~9\);

-- Location: FF_X2_Y11_N17
\divclk|counterhz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|Add0~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(5));

-- Location: LCCOMB_X2_Y11_N18
\divclk|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~10_combout\ = (\divclk|counterhz\(6) & (!\divclk|Add0~9\)) # (!\divclk|counterhz\(6) & ((\divclk|Add0~9\) # (GND)))
-- \divclk|Add0~11\ = CARRY((!\divclk|Add0~9\) # (!\divclk|counterhz\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterhz\(6),
	datad => VCC,
	cin => \divclk|Add0~9\,
	combout => \divclk|Add0~10_combout\,
	cout => \divclk|Add0~11\);

-- Location: LCCOMB_X2_Y11_N6
\divclk|counterhz~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|counterhz~11_combout\ = (\divclk|Add0~10_combout\ & !\divclk|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divclk|Add0~10_combout\,
	datac => \divclk|Equal0~7_combout\,
	combout => \divclk|counterhz~11_combout\);

-- Location: FF_X2_Y11_N7
\divclk|counterhz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|counterhz~11_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(6));

-- Location: LCCOMB_X2_Y11_N20
\divclk|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~12_combout\ = (\divclk|counterhz\(7) & (\divclk|Add0~11\ $ (GND))) # (!\divclk|counterhz\(7) & (!\divclk|Add0~11\ & VCC))
-- \divclk|Add0~13\ = CARRY((\divclk|counterhz\(7) & !\divclk|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterhz\(7),
	datad => VCC,
	cin => \divclk|Add0~11\,
	combout => \divclk|Add0~12_combout\,
	cout => \divclk|Add0~13\);

-- Location: FF_X2_Y11_N21
\divclk|counterhz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|Add0~12_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(7));

-- Location: LCCOMB_X2_Y11_N22
\divclk|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~14_combout\ = (\divclk|counterhz\(8) & (!\divclk|Add0~13\)) # (!\divclk|counterhz\(8) & ((\divclk|Add0~13\) # (GND)))
-- \divclk|Add0~15\ = CARRY((!\divclk|Add0~13\) # (!\divclk|counterhz\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterhz\(8),
	datad => VCC,
	cin => \divclk|Add0~13\,
	combout => \divclk|Add0~14_combout\,
	cout => \divclk|Add0~15\);

-- Location: FF_X2_Y11_N23
\divclk|counterhz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|Add0~14_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(8));

-- Location: LCCOMB_X2_Y11_N24
\divclk|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~16_combout\ = (\divclk|counterhz\(9) & (\divclk|Add0~15\ $ (GND))) # (!\divclk|counterhz\(9) & (!\divclk|Add0~15\ & VCC))
-- \divclk|Add0~17\ = CARRY((\divclk|counterhz\(9) & !\divclk|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterhz\(9),
	datad => VCC,
	cin => \divclk|Add0~15\,
	combout => \divclk|Add0~16_combout\,
	cout => \divclk|Add0~17\);

-- Location: FF_X2_Y11_N25
\divclk|counterhz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|Add0~16_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(9));

-- Location: LCCOMB_X2_Y11_N0
\divclk|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Equal0~5_combout\ = (!\divclk|counterhz\(6) & (!\divclk|counterhz\(7) & (!\divclk|counterhz\(8) & !\divclk|counterhz\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterhz\(6),
	datab => \divclk|counterhz\(7),
	datac => \divclk|counterhz\(8),
	datad => \divclk|counterhz\(9),
	combout => \divclk|Equal0~5_combout\);

-- Location: LCCOMB_X2_Y11_N2
\divclk|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Equal0~6_combout\ = (\divclk|counterhz\(3) & (\divclk|counterhz\(5) & (\divclk|counterhz\(4) & \divclk|counterhz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterhz\(3),
	datab => \divclk|counterhz\(5),
	datac => \divclk|counterhz\(4),
	datad => \divclk|counterhz\(2),
	combout => \divclk|Equal0~6_combout\);

-- Location: LCCOMB_X2_Y11_N26
\divclk|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~18_combout\ = (\divclk|counterhz\(10) & (!\divclk|Add0~17\)) # (!\divclk|counterhz\(10) & ((\divclk|Add0~17\) # (GND)))
-- \divclk|Add0~19\ = CARRY((!\divclk|Add0~17\) # (!\divclk|counterhz\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterhz\(10),
	datad => VCC,
	cin => \divclk|Add0~17\,
	combout => \divclk|Add0~18_combout\,
	cout => \divclk|Add0~19\);

-- Location: FF_X2_Y11_N27
\divclk|counterhz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|Add0~18_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(10));

-- Location: LCCOMB_X2_Y11_N28
\divclk|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~20_combout\ = (\divclk|counterhz\(11) & (\divclk|Add0~19\ $ (GND))) # (!\divclk|counterhz\(11) & (!\divclk|Add0~19\ & VCC))
-- \divclk|Add0~21\ = CARRY((\divclk|counterhz\(11) & !\divclk|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterhz\(11),
	datad => VCC,
	cin => \divclk|Add0~19\,
	combout => \divclk|Add0~20_combout\,
	cout => \divclk|Add0~21\);

-- Location: LCCOMB_X1_Y9_N16
\divclk|counterhz~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|counterhz~10_combout\ = (\divclk|Add0~20_combout\ & !\divclk|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divclk|Add0~20_combout\,
	datad => \divclk|Equal0~7_combout\,
	combout => \divclk|counterhz~10_combout\);

-- Location: FF_X1_Y9_N17
\divclk|counterhz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|counterhz~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(11));

-- Location: LCCOMB_X2_Y11_N30
\divclk|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~22_combout\ = (\divclk|counterhz\(12) & (!\divclk|Add0~21\)) # (!\divclk|counterhz\(12) & ((\divclk|Add0~21\) # (GND)))
-- \divclk|Add0~23\ = CARRY((!\divclk|Add0~21\) # (!\divclk|counterhz\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterhz\(12),
	datad => VCC,
	cin => \divclk|Add0~21\,
	combout => \divclk|Add0~22_combout\,
	cout => \divclk|Add0~23\);

-- Location: LCCOMB_X2_Y11_N4
\divclk|counterhz~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|counterhz~9_combout\ = (!\divclk|Equal0~7_combout\ & \divclk|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|Equal0~7_combout\,
	datac => \divclk|Add0~22_combout\,
	combout => \divclk|counterhz~9_combout\);

-- Location: FF_X2_Y11_N5
\divclk|counterhz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|counterhz~9_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(12));

-- Location: LCCOMB_X2_Y10_N0
\divclk|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~24_combout\ = (\divclk|counterhz\(13) & (\divclk|Add0~23\ $ (GND))) # (!\divclk|counterhz\(13) & (!\divclk|Add0~23\ & VCC))
-- \divclk|Add0~25\ = CARRY((\divclk|counterhz\(13) & !\divclk|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterhz\(13),
	datad => VCC,
	cin => \divclk|Add0~23\,
	combout => \divclk|Add0~24_combout\,
	cout => \divclk|Add0~25\);

-- Location: LCCOMB_X1_Y10_N16
\divclk|counterhz~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|counterhz~8_combout\ = (\divclk|Add0~24_combout\ & !\divclk|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divclk|Add0~24_combout\,
	datad => \divclk|Equal0~7_combout\,
	combout => \divclk|counterhz~8_combout\);

-- Location: FF_X1_Y10_N17
\divclk|counterhz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|counterhz~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(13));

-- Location: LCCOMB_X2_Y10_N2
\divclk|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~26_combout\ = (\divclk|counterhz\(14) & (!\divclk|Add0~25\)) # (!\divclk|counterhz\(14) & ((\divclk|Add0~25\) # (GND)))
-- \divclk|Add0~27\ = CARRY((!\divclk|Add0~25\) # (!\divclk|counterhz\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterhz\(14),
	datad => VCC,
	cin => \divclk|Add0~25\,
	combout => \divclk|Add0~26_combout\,
	cout => \divclk|Add0~27\);

-- Location: LCCOMB_X2_Y10_N30
\divclk|counterhz~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|counterhz~7_combout\ = (!\divclk|Equal0~7_combout\ & \divclk|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divclk|Equal0~7_combout\,
	datad => \divclk|Add0~26_combout\,
	combout => \divclk|counterhz~7_combout\);

-- Location: FF_X2_Y10_N31
\divclk|counterhz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|counterhz~7_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(14));

-- Location: LCCOMB_X2_Y10_N4
\divclk|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~28_combout\ = (\divclk|counterhz\(15) & (\divclk|Add0~27\ $ (GND))) # (!\divclk|counterhz\(15) & (!\divclk|Add0~27\ & VCC))
-- \divclk|Add0~29\ = CARRY((\divclk|counterhz\(15) & !\divclk|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterhz\(15),
	datad => VCC,
	cin => \divclk|Add0~27\,
	combout => \divclk|Add0~28_combout\,
	cout => \divclk|Add0~29\);

-- Location: FF_X2_Y10_N5
\divclk|counterhz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|Add0~28_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(15));

-- Location: LCCOMB_X2_Y10_N6
\divclk|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~30_combout\ = (\divclk|counterhz\(16) & (!\divclk|Add0~29\)) # (!\divclk|counterhz\(16) & ((\divclk|Add0~29\) # (GND)))
-- \divclk|Add0~31\ = CARRY((!\divclk|Add0~29\) # (!\divclk|counterhz\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterhz\(16),
	datad => VCC,
	cin => \divclk|Add0~29\,
	combout => \divclk|Add0~30_combout\,
	cout => \divclk|Add0~31\);

-- Location: LCCOMB_X1_Y10_N24
\divclk|counterhz~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|counterhz~6_combout\ = (!\divclk|Equal0~7_combout\ & \divclk|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divclk|Equal0~7_combout\,
	datad => \divclk|Add0~30_combout\,
	combout => \divclk|counterhz~6_combout\);

-- Location: FF_X1_Y10_N25
\divclk|counterhz[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|counterhz~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(16));

-- Location: LCCOMB_X2_Y10_N8
\divclk|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~32_combout\ = (\divclk|counterhz\(17) & (\divclk|Add0~31\ $ (GND))) # (!\divclk|counterhz\(17) & (!\divclk|Add0~31\ & VCC))
-- \divclk|Add0~33\ = CARRY((\divclk|counterhz\(17) & !\divclk|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterhz\(17),
	datad => VCC,
	cin => \divclk|Add0~31\,
	combout => \divclk|Add0~32_combout\,
	cout => \divclk|Add0~33\);

-- Location: FF_X2_Y10_N9
\divclk|counterhz[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|Add0~32_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(17));

-- Location: LCCOMB_X2_Y10_N10
\divclk|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~34_combout\ = (\divclk|counterhz\(18) & (!\divclk|Add0~33\)) # (!\divclk|counterhz\(18) & ((\divclk|Add0~33\) # (GND)))
-- \divclk|Add0~35\ = CARRY((!\divclk|Add0~33\) # (!\divclk|counterhz\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterhz\(18),
	datad => VCC,
	cin => \divclk|Add0~33\,
	combout => \divclk|Add0~34_combout\,
	cout => \divclk|Add0~35\);

-- Location: LCCOMB_X1_Y10_N26
\divclk|counterhz~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|counterhz~5_combout\ = (\divclk|Add0~34_combout\ & !\divclk|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divclk|Add0~34_combout\,
	datad => \divclk|Equal0~7_combout\,
	combout => \divclk|counterhz~5_combout\);

-- Location: FF_X1_Y10_N27
\divclk|counterhz[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|counterhz~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(18));

-- Location: LCCOMB_X2_Y10_N12
\divclk|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~36_combout\ = (\divclk|counterhz\(19) & (\divclk|Add0~35\ $ (GND))) # (!\divclk|counterhz\(19) & (!\divclk|Add0~35\ & VCC))
-- \divclk|Add0~37\ = CARRY((\divclk|counterhz\(19) & !\divclk|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterhz\(19),
	datad => VCC,
	cin => \divclk|Add0~35\,
	combout => \divclk|Add0~36_combout\,
	cout => \divclk|Add0~37\);

-- Location: LCCOMB_X2_Y10_N24
\divclk|counterhz~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|counterhz~4_combout\ = (!\divclk|Equal0~7_combout\ & \divclk|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divclk|Equal0~7_combout\,
	datad => \divclk|Add0~36_combout\,
	combout => \divclk|counterhz~4_combout\);

-- Location: FF_X2_Y10_N25
\divclk|counterhz[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|counterhz~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(19));

-- Location: LCCOMB_X2_Y10_N14
\divclk|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~38_combout\ = (\divclk|counterhz\(20) & (!\divclk|Add0~37\)) # (!\divclk|counterhz\(20) & ((\divclk|Add0~37\) # (GND)))
-- \divclk|Add0~39\ = CARRY((!\divclk|Add0~37\) # (!\divclk|counterhz\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterhz\(20),
	datad => VCC,
	cin => \divclk|Add0~37\,
	combout => \divclk|Add0~38_combout\,
	cout => \divclk|Add0~39\);

-- Location: LCCOMB_X1_Y10_N22
\divclk|counterhz~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|counterhz~3_combout\ = (\divclk|Add0~38_combout\ & !\divclk|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divclk|Add0~38_combout\,
	datad => \divclk|Equal0~7_combout\,
	combout => \divclk|counterhz~3_combout\);

-- Location: FF_X1_Y10_N23
\divclk|counterhz[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|counterhz~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(20));

-- Location: LCCOMB_X2_Y10_N16
\divclk|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~40_combout\ = (\divclk|counterhz\(21) & (\divclk|Add0~39\ $ (GND))) # (!\divclk|counterhz\(21) & (!\divclk|Add0~39\ & VCC))
-- \divclk|Add0~41\ = CARRY((\divclk|counterhz\(21) & !\divclk|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterhz\(21),
	datad => VCC,
	cin => \divclk|Add0~39\,
	combout => \divclk|Add0~40_combout\,
	cout => \divclk|Add0~41\);

-- Location: LCCOMB_X2_Y10_N26
\divclk|counterhz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|counterhz~2_combout\ = (!\divclk|Equal0~7_combout\ & \divclk|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divclk|Equal0~7_combout\,
	datad => \divclk|Add0~40_combout\,
	combout => \divclk|counterhz~2_combout\);

-- Location: FF_X2_Y10_N27
\divclk|counterhz[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|counterhz~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(21));

-- Location: LCCOMB_X1_Y10_N30
\divclk|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Equal0~1_combout\ = (\divclk|counterhz\(18) & (\divclk|counterhz\(20) & (\divclk|counterhz\(21) & \divclk|counterhz\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterhz\(18),
	datab => \divclk|counterhz\(20),
	datac => \divclk|counterhz\(21),
	datad => \divclk|counterhz\(19),
	combout => \divclk|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y10_N18
\divclk|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~42_combout\ = (\divclk|counterhz\(22) & (!\divclk|Add0~41\)) # (!\divclk|counterhz\(22) & ((\divclk|Add0~41\) # (GND)))
-- \divclk|Add0~43\ = CARRY((!\divclk|Add0~41\) # (!\divclk|counterhz\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterhz\(22),
	datad => VCC,
	cin => \divclk|Add0~41\,
	combout => \divclk|Add0~42_combout\,
	cout => \divclk|Add0~43\);

-- Location: LCCOMB_X1_Y10_N18
\divclk|counterhz~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|counterhz~1_combout\ = (!\divclk|Equal0~7_combout\ & \divclk|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divclk|Equal0~7_combout\,
	datad => \divclk|Add0~42_combout\,
	combout => \divclk|counterhz~1_combout\);

-- Location: FF_X1_Y10_N19
\divclk|counterhz[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|counterhz~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(22));

-- Location: LCCOMB_X2_Y10_N20
\divclk|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~44_combout\ = (\divclk|counterhz\(23) & (\divclk|Add0~43\ $ (GND))) # (!\divclk|counterhz\(23) & (!\divclk|Add0~43\ & VCC))
-- \divclk|Add0~45\ = CARRY((\divclk|counterhz\(23) & !\divclk|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divclk|counterhz\(23),
	datad => VCC,
	cin => \divclk|Add0~43\,
	combout => \divclk|Add0~44_combout\,
	cout => \divclk|Add0~45\);

-- Location: FF_X2_Y10_N21
\divclk|counterhz[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|Add0~44_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(23));

-- Location: LCCOMB_X2_Y10_N22
\divclk|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Add0~46_combout\ = \divclk|Add0~45\ $ (\divclk|counterhz\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \divclk|counterhz\(24),
	cin => \divclk|Add0~45\,
	combout => \divclk|Add0~46_combout\);

-- Location: LCCOMB_X2_Y10_N28
\divclk|counterhz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|counterhz~0_combout\ = (!\divclk|Equal0~7_combout\ & \divclk|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|Equal0~7_combout\,
	datac => \divclk|Add0~46_combout\,
	combout => \divclk|counterhz~0_combout\);

-- Location: FF_X2_Y10_N29
\divclk|counterhz[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|counterhz~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|counterhz\(24));

-- Location: LCCOMB_X1_Y9_N28
\divclk|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Equal0~0_combout\ = (\divclk|counterhz\(22) & (\divclk|counterkhz\(0) & (\divclk|counterhz\(24) & !\divclk|counterhz\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterhz\(22),
	datab => \divclk|counterkhz\(0),
	datac => \divclk|counterhz\(24),
	datad => \divclk|counterhz\(23),
	combout => \divclk|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y9_N14
\divclk|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Equal0~3_combout\ = (\divclk|counterhz\(12) & (\divclk|counterhz\(11) & (\divclk|counterhz\(13) & !\divclk|counterhz\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterhz\(12),
	datab => \divclk|counterhz\(11),
	datac => \divclk|counterhz\(13),
	datad => \divclk|counterhz\(10),
	combout => \divclk|Equal0~3_combout\);

-- Location: LCCOMB_X1_Y9_N20
\divclk|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Equal0~2_combout\ = (!\divclk|counterhz\(15) & (\divclk|counterhz\(16) & (\divclk|counterhz\(14) & !\divclk|counterhz\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|counterhz\(15),
	datab => \divclk|counterhz\(16),
	datac => \divclk|counterhz\(14),
	datad => \divclk|counterhz\(17),
	combout => \divclk|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y9_N12
\divclk|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Equal0~4_combout\ = (\divclk|Equal0~1_combout\ & (\divclk|Equal0~0_combout\ & (\divclk|Equal0~3_combout\ & \divclk|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|Equal0~1_combout\,
	datab => \divclk|Equal0~0_combout\,
	datac => \divclk|Equal0~3_combout\,
	datad => \divclk|Equal0~2_combout\,
	combout => \divclk|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y9_N0
\divclk|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|Equal0~7_combout\ = (\divclk|Equal0~5_combout\ & (\divclk|counterhz\(1) & (\divclk|Equal0~6_combout\ & \divclk|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divclk|Equal0~5_combout\,
	datab => \divclk|counterhz\(1),
	datac => \divclk|Equal0~6_combout\,
	datad => \divclk|Equal0~4_combout\,
	combout => \divclk|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y10_N20
\divclk|pulsehz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|pulsehz~0_combout\ = \divclk|pulsehz~q\ $ (\divclk|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divclk|pulsehz~q\,
	datad => \divclk|Equal0~7_combout\,
	combout => \divclk|pulsehz~0_combout\);

-- Location: LCCOMB_X1_Y10_N10
\divclk|pulsehz~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \divclk|pulsehz~feeder_combout\ = \divclk|pulsehz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divclk|pulsehz~0_combout\,
	combout => \divclk|pulsehz~feeder_combout\);

-- Location: FF_X1_Y10_N11
\divclk|pulsehz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \divclk|pulsehz~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divclk|pulsehz~q\);

-- Location: CLKCTRL_G3
\divclk|pulsehz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divclk|pulsehz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divclk|pulsehz~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N15
\stop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stop,
	o => \stop~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\up_down~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_up_down,
	o => \up_down~input_o\);

-- Location: LCCOMB_X14_Y21_N10
\count|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|process_0~0_combout\ = (!\stop~input_o\) # (!\up_down~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \up_down~input_o\,
	datad => \stop~input_o\,
	combout => \count|process_0~0_combout\);

-- Location: LCCOMB_X17_Y21_N18
\count|pulse2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|pulse2~3_combout\ = (!\count|pulse1\(1) & (!\count|pulse1\(0) & !\count|pulse1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|pulse1\(1),
	datac => \count|pulse1\(0),
	datad => \count|pulse1\(2),
	combout => \count|pulse2~3_combout\);

-- Location: LCCOMB_X17_Y21_N10
\count|pulse1[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|pulse1[3]~15_combout\ = (\count|pulse1\(3) & (\stop~input_o\ & (\up_down~input_o\ & !\count|pulse2~3_combout\))) # (!\count|pulse1\(3) & (\count|pulse2~3_combout\ & ((!\up_down~input_o\) # (!\stop~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~input_o\,
	datab => \count|pulse1\(3),
	datac => \up_down~input_o\,
	datad => \count|pulse2~3_combout\,
	combout => \count|pulse1[3]~15_combout\);

-- Location: LCCOMB_X17_Y21_N8
\count|pulse1[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|pulse1[0]~16_combout\ = (\stop~input_o\ & ((\count|pulse1[3]~15_combout\ & (!\up_down~input_o\)) # (!\count|pulse1[3]~15_combout\ & ((!\count|pulse1\(0)))))) # (!\stop~input_o\ & (((\count|pulse1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~input_o\,
	datab => \up_down~input_o\,
	datac => \count|pulse1\(0),
	datad => \count|pulse1[3]~15_combout\,
	combout => \count|pulse1[0]~16_combout\);

-- Location: FF_X17_Y21_N9
\count|pulse1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclk|pulsehz~clkctrl_outclk\,
	d => \count|pulse1[0]~16_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|pulse1\(0));

-- Location: LCCOMB_X16_Y21_N18
\count|pulse1[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|pulse1[1]~8_cout\ = CARRY(\count|pulse1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|pulse1\(0),
	datad => VCC,
	cout => \count|pulse1[1]~8_cout\);

-- Location: LCCOMB_X16_Y21_N20
\count|pulse1[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|pulse1[1]~9_combout\ = (\count|process_0~0_combout\ & ((\count|pulse1\(1) & (\count|pulse1[1]~8_cout\ & VCC)) # (!\count|pulse1\(1) & (!\count|pulse1[1]~8_cout\)))) # (!\count|process_0~0_combout\ & ((\count|pulse1\(1) & 
-- (!\count|pulse1[1]~8_cout\)) # (!\count|pulse1\(1) & ((\count|pulse1[1]~8_cout\) # (GND)))))
-- \count|pulse1[1]~10\ = CARRY((\count|process_0~0_combout\ & (!\count|pulse1\(1) & !\count|pulse1[1]~8_cout\)) # (!\count|process_0~0_combout\ & ((!\count|pulse1[1]~8_cout\) # (!\count|pulse1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|process_0~0_combout\,
	datab => \count|pulse1\(1),
	datad => VCC,
	cin => \count|pulse1[1]~8_cout\,
	combout => \count|pulse1[1]~9_combout\,
	cout => \count|pulse1[1]~10\);

-- Location: LCCOMB_X16_Y20_N24
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X16_Y21_N21
\count|pulse1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclk|pulsehz~clkctrl_outclk\,
	d => \count|pulse1[1]~9_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \count|pulse1[3]~15_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|pulse1\(1));

-- Location: LCCOMB_X16_Y21_N22
\count|pulse1[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|pulse1[2]~11_combout\ = ((\count|pulse1\(2) $ (\count|process_0~0_combout\ $ (!\count|pulse1[1]~10\)))) # (GND)
-- \count|pulse1[2]~12\ = CARRY((\count|pulse1\(2) & ((\count|process_0~0_combout\) # (!\count|pulse1[1]~10\))) # (!\count|pulse1\(2) & (\count|process_0~0_combout\ & !\count|pulse1[1]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|pulse1\(2),
	datab => \count|process_0~0_combout\,
	datad => VCC,
	cin => \count|pulse1[1]~10\,
	combout => \count|pulse1[2]~11_combout\,
	cout => \count|pulse1[2]~12\);

-- Location: FF_X16_Y21_N23
\count|pulse1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclk|pulsehz~clkctrl_outclk\,
	d => \count|pulse1[2]~11_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \count|pulse1[3]~15_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|pulse1\(2));

-- Location: LCCOMB_X16_Y21_N24
\count|pulse1[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|pulse1[3]~13_combout\ = \count|process_0~0_combout\ $ (\count|pulse1[2]~12\ $ (\count|pulse1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|process_0~0_combout\,
	datad => \count|pulse1\(3),
	cin => \count|pulse1[2]~12\,
	combout => \count|pulse1[3]~13_combout\);

-- Location: FF_X16_Y21_N25
\count|pulse1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclk|pulsehz~clkctrl_outclk\,
	d => \count|pulse1[3]~13_combout\,
	asdata => \count|process_0~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \count|pulse1[3]~15_combout\,
	ena => \stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|pulse1\(3));

-- Location: LCCOMB_X17_Y21_N24
\count|pulse2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|pulse2~5_combout\ = (\stop~input_o\ & ((\count|pulse1\(3) & (\up_down~input_o\ & !\count|pulse2~3_combout\)) # (!\count|pulse1\(3) & (!\up_down~input_o\ & \count|pulse2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~input_o\,
	datab => \count|pulse1\(3),
	datac => \up_down~input_o\,
	datad => \count|pulse2~3_combout\,
	combout => \count|pulse2~5_combout\);

-- Location: LCCOMB_X17_Y21_N0
\count|pulse2[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|pulse2[1]~8_cout\ = CARRY(\count|pulse2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|pulse2\(0),
	datad => VCC,
	cout => \count|pulse2[1]~8_cout\);

-- Location: LCCOMB_X17_Y21_N2
\count|pulse2[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|pulse2[1]~9_combout\ = (\count|pulse2\(1) & ((\count|process_0~0_combout\ & (\count|pulse2[1]~8_cout\ & VCC)) # (!\count|process_0~0_combout\ & (!\count|pulse2[1]~8_cout\)))) # (!\count|pulse2\(1) & ((\count|process_0~0_combout\ & 
-- (!\count|pulse2[1]~8_cout\)) # (!\count|process_0~0_combout\ & ((\count|pulse2[1]~8_cout\) # (GND)))))
-- \count|pulse2[1]~10\ = CARRY((\count|pulse2\(1) & (!\count|process_0~0_combout\ & !\count|pulse2[1]~8_cout\)) # (!\count|pulse2\(1) & ((!\count|pulse2[1]~8_cout\) # (!\count|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|pulse2\(1),
	datab => \count|process_0~0_combout\,
	datad => VCC,
	cin => \count|pulse2[1]~8_cout\,
	combout => \count|pulse2[1]~9_combout\,
	cout => \count|pulse2[1]~10\);

-- Location: LCCOMB_X17_Y21_N4
\count|pulse2[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|pulse2[2]~13_combout\ = ((\count|process_0~0_combout\ $ (\count|pulse2\(2) $ (!\count|pulse2[1]~10\)))) # (GND)
-- \count|pulse2[2]~14\ = CARRY((\count|process_0~0_combout\ & ((\count|pulse2\(2)) # (!\count|pulse2[1]~10\))) # (!\count|process_0~0_combout\ & (\count|pulse2\(2) & !\count|pulse2[1]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count|process_0~0_combout\,
	datab => \count|pulse2\(2),
	datad => VCC,
	cin => \count|pulse2[1]~10\,
	combout => \count|pulse2[2]~13_combout\,
	cout => \count|pulse2[2]~14\);

-- Location: LCCOMB_X17_Y21_N6
\count|pulse2[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|pulse2[3]~15_combout\ = \count|process_0~0_combout\ $ (\count|pulse2[2]~14\ $ (\count|pulse2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count|process_0~0_combout\,
	datad => \count|pulse2\(3),
	cin => \count|pulse2[2]~14\,
	combout => \count|pulse2[3]~15_combout\);

-- Location: LCCOMB_X17_Y21_N20
\count|pulse2[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|pulse2[3]~12_combout\ = (\stop~input_o\ & ((\count|pulse1\(3) & (\up_down~input_o\ & !\count|pulse2~3_combout\)) # (!\count|pulse1\(3) & (!\up_down~input_o\ & \count|pulse2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~input_o\,
	datab => \count|pulse1\(3),
	datac => \up_down~input_o\,
	datad => \count|pulse2~3_combout\,
	combout => \count|pulse2[3]~12_combout\);

-- Location: FF_X17_Y21_N7
\count|pulse2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclk|pulsehz~clkctrl_outclk\,
	d => \count|pulse2[3]~15_combout\,
	asdata => \count|process_0~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \count|pulse2[3]~11_combout\,
	ena => \count|pulse2[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|pulse2\(3));

-- Location: LCCOMB_X17_Y21_N22
\segment|c~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|c~1_combout\ = (!\count|pulse2\(2) & !\count|pulse2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count|pulse2\(2),
	datad => \count|pulse2\(0),
	combout => \segment|c~1_combout\);

-- Location: LCCOMB_X17_Y21_N14
\count|pulse2[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|pulse2[3]~11_combout\ = (\count|pulse2\(3) & (!\count|process_0~0_combout\ & ((\count|pulse2\(1)) # (!\segment|c~1_combout\)))) # (!\count|pulse2\(3) & (\count|process_0~0_combout\ & (\segment|c~1_combout\ & !\count|pulse2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|pulse2\(3),
	datab => \count|process_0~0_combout\,
	datac => \segment|c~1_combout\,
	datad => \count|pulse2\(1),
	combout => \count|pulse2[3]~11_combout\);

-- Location: FF_X17_Y21_N3
\count|pulse2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclk|pulsehz~clkctrl_outclk\,
	d => \count|pulse2[1]~9_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \count|pulse2[3]~11_combout\,
	ena => \count|pulse2[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|pulse2\(1));

-- Location: FF_X17_Y21_N5
\count|pulse2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclk|pulsehz~clkctrl_outclk\,
	d => \count|pulse2[2]~13_combout\,
	asdata => \~GND~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \count|pulse2[3]~11_combout\,
	ena => \count|pulse2[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|pulse2\(2));

-- Location: LCCOMB_X18_Y21_N16
\count|pulse2[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|pulse2[0]~4_combout\ = (\count|process_0~0_combout\) # (((!\count|pulse2\(2) & !\count|pulse2\(1))) # (!\count|pulse2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|process_0~0_combout\,
	datab => \count|pulse2\(2),
	datac => \count|pulse2\(3),
	datad => \count|pulse2\(1),
	combout => \count|pulse2[0]~4_combout\);

-- Location: LCCOMB_X17_Y21_N16
\count|pulse2[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \count|pulse2[0]~6_combout\ = (\count|pulse2~5_combout\ & (!\count|pulse2\(0) & \count|pulse2[0]~4_combout\)) # (!\count|pulse2~5_combout\ & (\count|pulse2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count|pulse2~5_combout\,
	datac => \count|pulse2\(0),
	datad => \count|pulse2[0]~4_combout\,
	combout => \count|pulse2[0]~6_combout\);

-- Location: FF_X17_Y21_N17
\count|pulse2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclk|pulsehz~clkctrl_outclk\,
	d => \count|pulse2[0]~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count|pulse2\(0));

-- Location: LCCOMB_X18_Y21_N30
\segment|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|Mux0~0_combout\ = (!\count|pulse2\(3) & (!\count|pulse2\(1) & (\count|pulse2\(0) $ (\count|pulse2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|pulse2\(0),
	datab => \count|pulse2\(3),
	datac => \count|pulse2\(2),
	datad => \count|pulse2\(1),
	combout => \segment|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y21_N10
\segment|switch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|switch~0_combout\ = !\segment|switch~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment|switch~q\,
	combout => \segment|switch~0_combout\);

-- Location: FF_X16_Y21_N11
\segment|switch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclk|pulsekhz~clkctrl_outclk\,
	d => \segment|switch~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment|switch~q\);

-- Location: LCCOMB_X17_Y21_N30
\segment|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|Mux7~0_combout\ = (!\count|pulse1\(1) & (!\count|pulse1\(3) & (\count|pulse1\(0) $ (\count|pulse1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|pulse1\(0),
	datab => \count|pulse1\(1),
	datac => \count|pulse1\(3),
	datad => \count|pulse1\(2),
	combout => \segment|Mux7~0_combout\);

-- Location: LCCOMB_X18_Y21_N12
\segment|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|a~0_combout\ = (\segment|switch~q\ & ((\segment|Mux7~0_combout\))) # (!\segment|switch~q\ & (\segment|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment|Mux0~0_combout\,
	datac => \segment|switch~q\,
	datad => \segment|Mux7~0_combout\,
	combout => \segment|a~0_combout\);

-- Location: FF_X18_Y21_N13
\segment|a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclk|pulsekhz~clkctrl_outclk\,
	d => \segment|a~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment|a~q\);

-- Location: LCCOMB_X16_Y21_N8
\segment|b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|b~0_combout\ = (\count|pulse1\(2) & (\segment|switch~q\ & (\count|pulse1\(1) $ (\count|pulse1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|pulse1\(2),
	datab => \count|pulse1\(1),
	datac => \count|pulse1\(0),
	datad => \segment|switch~q\,
	combout => \segment|b~0_combout\);

-- Location: LCCOMB_X16_Y21_N2
\segment|b~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|b~1_combout\ = (\count|pulse2\(2) & (!\segment|switch~q\ & (\count|pulse2\(0) $ (\count|pulse2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|pulse2\(2),
	datab => \count|pulse2\(0),
	datac => \segment|switch~q\,
	datad => \count|pulse2\(1),
	combout => \segment|b~1_combout\);

-- Location: LCCOMB_X16_Y21_N12
\segment|b~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|b~2_combout\ = (\segment|b~0_combout\) # (\segment|b~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment|b~0_combout\,
	datad => \segment|b~1_combout\,
	combout => \segment|b~2_combout\);

-- Location: FF_X16_Y21_N13
\segment|b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclk|pulsekhz~clkctrl_outclk\,
	d => \segment|b~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment|b~q\);

-- Location: LCCOMB_X16_Y21_N4
\segment|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|c~0_combout\ = (!\count|pulse1\(2) & (\count|pulse1\(1) & (!\count|pulse1\(0) & \segment|switch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|pulse1\(2),
	datab => \count|pulse1\(1),
	datac => \count|pulse1\(0),
	datad => \segment|switch~q\,
	combout => \segment|c~0_combout\);

-- Location: LCCOMB_X16_Y21_N14
\segment|c~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|c~2_combout\ = (\segment|c~0_combout\) # ((\count|pulse2\(1) & (!\segment|switch~q\ & \segment|c~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|pulse2\(1),
	datab => \segment|switch~q\,
	datac => \segment|c~0_combout\,
	datad => \segment|c~1_combout\,
	combout => \segment|c~2_combout\);

-- Location: FF_X16_Y21_N15
\segment|c\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclk|pulsekhz~clkctrl_outclk\,
	d => \segment|c~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment|c~q\);

-- Location: LCCOMB_X18_Y21_N8
\segment|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|Mux3~0_combout\ = (!\count|pulse2\(3) & ((\count|pulse2\(0) & (\count|pulse2\(2) $ (!\count|pulse2\(1)))) # (!\count|pulse2\(0) & (\count|pulse2\(2) & !\count|pulse2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|pulse2\(0),
	datab => \count|pulse2\(3),
	datac => \count|pulse2\(2),
	datad => \count|pulse2\(1),
	combout => \segment|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y21_N12
\segment|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|Mux10~0_combout\ = (!\count|pulse1\(3) & ((\count|pulse1\(0) & (\count|pulse1\(1) $ (!\count|pulse1\(2)))) # (!\count|pulse1\(0) & (!\count|pulse1\(1) & \count|pulse1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|pulse1\(0),
	datab => \count|pulse1\(1),
	datac => \count|pulse1\(3),
	datad => \count|pulse1\(2),
	combout => \segment|Mux10~0_combout\);

-- Location: LCCOMB_X18_Y21_N26
\segment|d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|d~0_combout\ = (\segment|switch~q\ & ((\segment|Mux10~0_combout\))) # (!\segment|switch~q\ & (\segment|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \segment|Mux3~0_combout\,
	datac => \segment|switch~q\,
	datad => \segment|Mux10~0_combout\,
	combout => \segment|d~0_combout\);

-- Location: FF_X18_Y21_N27
\segment|d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclk|pulsekhz~clkctrl_outclk\,
	d => \segment|d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment|d~q\);

-- Location: LCCOMB_X16_Y21_N26
\segment|e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|e~0_combout\ = (!\segment|switch~q\ & ((\count|pulse2\(0)) # ((!\count|pulse2\(1) & \count|pulse2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|pulse2\(1),
	datab => \count|pulse2\(0),
	datac => \segment|switch~q\,
	datad => \count|pulse2\(2),
	combout => \segment|e~0_combout\);

-- Location: LCCOMB_X16_Y21_N28
\segment|e~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|e~1_combout\ = (\segment|switch~q\ & ((\count|pulse1\(0)) # ((\count|pulse1\(2) & !\count|pulse1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|pulse1\(2),
	datab => \count|pulse1\(1),
	datac => \count|pulse1\(0),
	datad => \segment|switch~q\,
	combout => \segment|e~1_combout\);

-- Location: LCCOMB_X16_Y21_N0
\segment|e~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|e~2_combout\ = (\segment|e~0_combout\) # (\segment|e~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \segment|e~0_combout\,
	datad => \segment|e~1_combout\,
	combout => \segment|e~2_combout\);

-- Location: FF_X16_Y21_N1
\segment|e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclk|pulsekhz~clkctrl_outclk\,
	d => \segment|e~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment|e~q\);

-- Location: LCCOMB_X16_Y21_N30
\segment|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|Mux12~0_combout\ = (!\count|pulse1\(3) & ((\count|pulse1\(2) & (\count|pulse1\(1) & \count|pulse1\(0))) # (!\count|pulse1\(2) & ((\count|pulse1\(1)) # (\count|pulse1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|pulse1\(2),
	datab => \count|pulse1\(1),
	datac => \count|pulse1\(0),
	datad => \count|pulse1\(3),
	combout => \segment|Mux12~0_combout\);

-- Location: LCCOMB_X17_Y21_N26
\segment|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|Mux5~0_combout\ = (!\count|pulse2\(3) & ((\count|pulse2\(1) & ((\count|pulse2\(0)) # (!\count|pulse2\(2)))) # (!\count|pulse2\(1) & (!\count|pulse2\(2) & \count|pulse2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|pulse2\(3),
	datab => \count|pulse2\(1),
	datac => \count|pulse2\(2),
	datad => \count|pulse2\(0),
	combout => \segment|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y21_N6
\segment|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|f~0_combout\ = (\segment|switch~q\ & (\segment|Mux12~0_combout\)) # (!\segment|switch~q\ & ((\segment|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment|switch~q\,
	datac => \segment|Mux12~0_combout\,
	datad => \segment|Mux5~0_combout\,
	combout => \segment|f~0_combout\);

-- Location: FF_X16_Y21_N7
\segment|f\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclk|pulsekhz~clkctrl_outclk\,
	d => \segment|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment|f~q\);

-- Location: LCCOMB_X18_Y21_N22
\segment|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|Mux6~0_combout\ = (\count|pulse2\(3)) # ((\count|pulse2\(2) & ((!\count|pulse2\(1)) # (!\count|pulse2\(0)))) # (!\count|pulse2\(2) & ((\count|pulse2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|pulse2\(0),
	datab => \count|pulse2\(3),
	datac => \count|pulse2\(2),
	datad => \count|pulse2\(1),
	combout => \segment|Mux6~0_combout\);

-- Location: LCCOMB_X17_Y21_N28
\segment|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|Mux13~0_combout\ = (\count|pulse1\(3)) # ((\count|pulse1\(2) & ((!\count|pulse1\(1)) # (!\count|pulse1\(0)))) # (!\count|pulse1\(2) & ((\count|pulse1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count|pulse1\(0),
	datab => \count|pulse1\(2),
	datac => \count|pulse1\(1),
	datad => \count|pulse1\(3),
	combout => \segment|Mux13~0_combout\);

-- Location: LCCOMB_X18_Y21_N0
\segment|g~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|g~0_combout\ = (\segment|switch~q\ & ((!\segment|Mux13~0_combout\))) # (!\segment|switch~q\ & (!\segment|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segment|Mux6~0_combout\,
	datac => \segment|switch~q\,
	datad => \segment|Mux13~0_combout\,
	combout => \segment|g~0_combout\);

-- Location: FF_X18_Y21_N1
\segment|g\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclk|pulsekhz~clkctrl_outclk\,
	d => \segment|g~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment|g~q\);

-- Location: LCCOMB_X14_Y21_N28
\segment|s1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|s1~feeder_combout\ = \segment|switch~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \segment|switch~q\,
	combout => \segment|s1~feeder_combout\);

-- Location: FF_X14_Y21_N29
\segment|s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclk|pulsekhz~clkctrl_outclk\,
	d => \segment|s1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment|s1~q\);

-- Location: LCCOMB_X16_Y21_N16
\segment|s2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segment|s2~0_combout\ = !\segment|switch~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \segment|switch~q\,
	combout => \segment|s2~0_combout\);

-- Location: FF_X16_Y21_N17
\segment|s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divclk|pulsekhz~clkctrl_outclk\,
	d => \segment|s2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \segment|s2~q\);

ww_a <= \a~output_o\;

ww_b <= \b~output_o\;

ww_c <= \c~output_o\;

ww_d <= \d~output_o\;

ww_e <= \e~output_o\;

ww_f <= \f~output_o\;

ww_g <= \g~output_o\;

ww_s1 <= \s1~output_o\;

ww_s2 <= \s2~output_o\;
END structure;


