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

-- DATE "10/20/2020 19:20:11"

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

ENTITY 	Half_precision_adder IS
    PORT (
	x_input : IN std_logic_vector(15 DOWNTO 0);
	y_input : IN std_logic_vector(15 DOWNTO 0);
	output : OUT std_logic_vector(15 DOWNTO 0)
	);
END Half_precision_adder;

-- Design Ports Information
-- output[0]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[8]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[9]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[10]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[11]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[12]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[13]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[14]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[15]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_input[0]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_input[15]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_input[15]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_input[14]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_input[10]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_input[11]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_input[12]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_input[13]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_input[14]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_input[10]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_input[11]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_input[12]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_input[13]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_input[8]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_input[9]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_input[1]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_input[2]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_input[3]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_input[4]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_input[5]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_input[6]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_input[7]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_input[0]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_input[1]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_input[2]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_input[3]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_input[4]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_input[5]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_input[6]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_input[7]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_input[8]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_input[9]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Half_precision_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x_input : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_y_input : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(15 DOWNTO 0);
SIGNAL \process_0~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \norm~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SS~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x_man_up[9]~32clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SS~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \output[8]~output_o\ : std_logic;
SIGNAL \output[9]~output_o\ : std_logic;
SIGNAL \output[10]~output_o\ : std_logic;
SIGNAL \output[11]~output_o\ : std_logic;
SIGNAL \output[12]~output_o\ : std_logic;
SIGNAL \output[13]~output_o\ : std_logic;
SIGNAL \output[14]~output_o\ : std_logic;
SIGNAL \output[15]~output_o\ : std_logic;
SIGNAL \x_input[13]~input_o\ : std_logic;
SIGNAL \x_input[12]~input_o\ : std_logic;
SIGNAL \x_input[11]~input_o\ : std_logic;
SIGNAL \x_input[10]~input_o\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \x_input[14]~input_o\ : std_logic;
SIGNAL \y_input[14]~input_o\ : std_logic;
SIGNAL \y_input[12]~input_o\ : std_logic;
SIGNAL \y_input[13]~input_o\ : std_logic;
SIGNAL \y_input[10]~input_o\ : std_logic;
SIGNAL \y_input[11]~input_o\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \y_input[0]~input_o\ : std_logic;
SIGNAL \y_input[3]~input_o\ : std_logic;
SIGNAL \y_input[2]~input_o\ : std_logic;
SIGNAL \y_input[1]~input_o\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \y_input[4]~input_o\ : std_logic;
SIGNAL \y_input[7]~input_o\ : std_logic;
SIGNAL \y_input[5]~input_o\ : std_logic;
SIGNAL \y_input[6]~input_o\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \y_input[8]~input_o\ : std_logic;
SIGNAL \y_input[9]~input_o\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \out_y[0]~1_combout\ : std_logic;
SIGNAL \x_input[9]~input_o\ : std_logic;
SIGNAL \x_input[2]~input_o\ : std_logic;
SIGNAL \x_input[1]~input_o\ : std_logic;
SIGNAL \x_input[6]~input_o\ : std_logic;
SIGNAL \x_input[7]~input_o\ : std_logic;
SIGNAL \x_input[4]~input_o\ : std_logic;
SIGNAL \x_input[5]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \x_input[3]~input_o\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \x_input[8]~input_o\ : std_logic;
SIGNAL \x_input[0]~input_o\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \out_y[2]~0_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \out_y[1]~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \out_x[1]~2_combout\ : std_logic;
SIGNAL \out_x[0]~1_combout\ : std_logic;
SIGNAL \Equal10~4_combout\ : std_logic;
SIGNAL \Equal10~5_combout\ : std_logic;
SIGNAL \SS~1_combout\ : std_logic;
SIGNAL \SS~2_combout\ : std_logic;
SIGNAL \out_x[2]~0_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \SS~0_combout\ : std_logic;
SIGNAL \SS~3_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \norm~combout\ : std_logic;
SIGNAL \norm~clkctrl_outclk\ : std_logic;
SIGNAL \x_input[15]~input_o\ : std_logic;
SIGNAL \y_input[15]~input_o\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan6~2_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \LessThan6~3_combout\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \LessThan7~3_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \LessThan7~4_combout\ : std_logic;
SIGNAL \SS~5_combout\ : std_logic;
SIGNAL \SS~5clkctrl_outclk\ : std_logic;
SIGNAL \process_0~8clkctrl_outclk\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~4\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~15_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add3~17_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add3~16\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~21_combout\ : std_logic;
SIGNAL \Add3~23_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Equal13~1_combout\ : std_logic;
SIGNAL \Add3~3_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~11_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \Decoder1~1_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Decoder1~3_combout\ : std_logic;
SIGNAL \Decoder1~2_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Decoder1~5_combout\ : std_logic;
SIGNAL \Decoder1~4_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Decoder1~7_combout\ : std_logic;
SIGNAL \Decoder1~6_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Decoder1~9_combout\ : std_logic;
SIGNAL \Decoder1~8_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \Selector7~5_combout\ : std_logic;
SIGNAL \x_man_up~28_combout\ : std_logic;
SIGNAL \x_man_up~70_combout\ : std_logic;
SIGNAL \y_man_up[0]~0_combout\ : std_logic;
SIGNAL \x_man_up[9]~29_combout\ : std_logic;
SIGNAL \x_man_up[9]~30_combout\ : std_logic;
SIGNAL \x_man_up[9]~31_combout\ : std_logic;
SIGNAL \x_man_up[9]~32_combout\ : std_logic;
SIGNAL \x_man_up[9]~32clkctrl_outclk\ : std_logic;
SIGNAL \x_man_up[0]~71_combout\ : std_logic;
SIGNAL \y_op[0]~0_combout\ : std_logic;
SIGNAL \x_op[0]~0_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \ES[0]~7_combout\ : std_logic;
SIGNAL \MS[0]~0_combout\ : std_logic;
SIGNAL \SS~3clkctrl_outclk\ : std_logic;
SIGNAL \output~0_combout\ : std_logic;
SIGNAL \operator~combout\ : std_logic;
SIGNAL \comp|adder|adder_0|add_cout~1_combout\ : std_logic;
SIGNAL \x_man_up~33_combout\ : std_logic;
SIGNAL \Equal13~2_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~4_combout\ : std_logic;
SIGNAL \x_man_up~34_combout\ : std_logic;
SIGNAL \x_man_up~35_combout\ : std_logic;
SIGNAL \x_man_up[1]~72_combout\ : std_logic;
SIGNAL \y_man_up[1]~1_combout\ : std_logic;
SIGNAL \y_op[1]~1_combout\ : std_logic;
SIGNAL \x_op[1]~1_combout\ : std_logic;
SIGNAL \comp|adder|adder_0|add_cout~0_combout\ : std_logic;
SIGNAL \comp|adder|adder_i:1:adder|add_sum~combout\ : std_logic;
SIGNAL \MS[9]~1_combout\ : std_logic;
SIGNAL \MS[1]~2_combout\ : std_logic;
SIGNAL \output~1_combout\ : std_logic;
SIGNAL \MS[2]~3_combout\ : std_logic;
SIGNAL \x_man_up~36_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~4_combout\ : std_logic;
SIGNAL \x_man_up~37_combout\ : std_logic;
SIGNAL \x_man_up~73_combout\ : std_logic;
SIGNAL \x_man_up[2]~74_combout\ : std_logic;
SIGNAL \y_man_up[2]~2_combout\ : std_logic;
SIGNAL \y_op[2]~2_combout\ : std_logic;
SIGNAL \comp|adder|adder_i:1:adder|add_cout~0_combout\ : std_logic;
SIGNAL \x_op[2]~2_combout\ : std_logic;
SIGNAL \comp|adder|adder_i:2:adder|add_sum~0_combout\ : std_logic;
SIGNAL \output~2_combout\ : std_logic;
SIGNAL \x_man_up~38_combout\ : std_logic;
SIGNAL \x_man_up~40_combout\ : std_logic;
SIGNAL \x_man_up~39_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \x_man_up~41_combout\ : std_logic;
SIGNAL \x_man_up~42_combout\ : std_logic;
SIGNAL \x_man_up~43_combout\ : std_logic;
SIGNAL \y_man_up[3]~3_combout\ : std_logic;
SIGNAL \x_man_up[3]~75_combout\ : std_logic;
SIGNAL \y_man_up[3]~4_combout\ : std_logic;
SIGNAL \y_op[3]~3_combout\ : std_logic;
SIGNAL \comp|adder|adder_i:2:adder|add_cout~0_combout\ : std_logic;
SIGNAL \x_op[3]~3_combout\ : std_logic;
SIGNAL \comp|adder|adder_i:3:adder|add_sum~0_combout\ : std_logic;
SIGNAL \MS[3]~4_combout\ : std_logic;
SIGNAL \output~3_combout\ : std_logic;
SIGNAL \MS[4]~5_combout\ : std_logic;
SIGNAL \x_man_up~45_combout\ : std_logic;
SIGNAL \x_man_up~44_combout\ : std_logic;
SIGNAL \x_man_up~46_combout\ : std_logic;
SIGNAL \x_man_up~47_combout\ : std_logic;
SIGNAL \x_man_up~48_combout\ : std_logic;
SIGNAL \x_man_up~49_combout\ : std_logic;
SIGNAL \x_man_up~76_combout\ : std_logic;
SIGNAL \y_man_up[4]~5_combout\ : std_logic;
SIGNAL \x_man_up[4]~77_combout\ : std_logic;
SIGNAL \y_op[4]~4_combout\ : std_logic;
SIGNAL \x_op[4]~4_combout\ : std_logic;
SIGNAL \comp|adder|adder_i:3:adder|add_cout~0_combout\ : std_logic;
SIGNAL \comp|adder|adder_i:4:adder|add_sum~0_combout\ : std_logic;
SIGNAL \output~4_combout\ : std_logic;
SIGNAL \MS[5]~6_combout\ : std_logic;
SIGNAL \comp|adder|adder_i:4:adder|add_cout~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \x_man_up~53_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \x_man_up~50_combout\ : std_logic;
SIGNAL \x_man_up~51_combout\ : std_logic;
SIGNAL \x_man_up~52_combout\ : std_logic;
SIGNAL \x_man_up~54_combout\ : std_logic;
SIGNAL \x_man_up[5]~78_combout\ : std_logic;
SIGNAL \y_man_up[5]~6_combout\ : std_logic;
SIGNAL \x_op[5]~5_combout\ : std_logic;
SIGNAL \y_op[5]~5_combout\ : std_logic;
SIGNAL \comp|adder|adder_i:5:adder|add_sum~0_combout\ : std_logic;
SIGNAL \output~5_combout\ : std_logic;
SIGNAL \MS[6]~7_combout\ : std_logic;
SIGNAL \x_man_up~55_combout\ : std_logic;
SIGNAL \x_man_up~56_combout\ : std_logic;
SIGNAL \x_man_up~57_combout\ : std_logic;
SIGNAL \x_man_up~58_combout\ : std_logic;
SIGNAL \x_man_up~59_combout\ : std_logic;
SIGNAL \x_man_up~79_combout\ : std_logic;
SIGNAL \y_man_up[6]~7_combout\ : std_logic;
SIGNAL \x_man_up[6]~80_combout\ : std_logic;
SIGNAL \x_op[6]~6_combout\ : std_logic;
SIGNAL \y_op[6]~6_combout\ : std_logic;
SIGNAL \comp|adder|adder_i:5:adder|add_cout~0_combout\ : std_logic;
SIGNAL \comp|adder|adder_i:6:adder|add_sum~0_combout\ : std_logic;
SIGNAL \output~6_combout\ : std_logic;
SIGNAL \MS[7]~8_combout\ : std_logic;
SIGNAL \x_man_up~81_combout\ : std_logic;
SIGNAL \x_man_up~60_combout\ : std_logic;
SIGNAL \x_man_up~61_combout\ : std_logic;
SIGNAL \x_man_up~62_combout\ : std_logic;
SIGNAL \x_man_up~63_combout\ : std_logic;
SIGNAL \x_man_up[7]~82_combout\ : std_logic;
SIGNAL \y_man_up[7]~8_combout\ : std_logic;
SIGNAL \y_op[7]~7_combout\ : std_logic;
SIGNAL \x_op[7]~7_combout\ : std_logic;
SIGNAL \comp|adder|adder_i:6:adder|add_cout~0_combout\ : std_logic;
SIGNAL \comp|adder|adder_i:7:adder|add_sum~0_combout\ : std_logic;
SIGNAL \output~7_combout\ : std_logic;
SIGNAL \MS[8]~9_combout\ : std_logic;
SIGNAL \comp|adder|adder_i:7:adder|add_cout~0_combout\ : std_logic;
SIGNAL \x_man_up~64_combout\ : std_logic;
SIGNAL \x_man_up~65_combout\ : std_logic;
SIGNAL \x_man_up~83_combout\ : std_logic;
SIGNAL \x_man_up~66_combout\ : std_logic;
SIGNAL \y_man_up[8]~9_combout\ : std_logic;
SIGNAL \x_man_up[8]~67_combout\ : std_logic;
SIGNAL \y_op[8]~8_combout\ : std_logic;
SIGNAL \x_op[8]~8_combout\ : std_logic;
SIGNAL \comp|adder|adder_i:8:adder|add_sum~0_combout\ : std_logic;
SIGNAL \output~8_combout\ : std_logic;
SIGNAL \MS[9]~10_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \x_man_up[9]~68_combout\ : std_logic;
SIGNAL \x_man_up[9]~69_combout\ : std_logic;
SIGNAL \y_man_up[9]~10_combout\ : std_logic;
SIGNAL \x_op[9]~9_combout\ : std_logic;
SIGNAL \comp|adder|adder_i:8:adder|add_cout~0_combout\ : std_logic;
SIGNAL \y_op[9]~9_combout\ : std_logic;
SIGNAL \comp|adder|adder_i:9:adder|add_sum~0_combout\ : std_logic;
SIGNAL \output~9_combout\ : std_logic;
SIGNAL \ES[0]~2_combout\ : std_logic;
SIGNAL \ES[1]~3_combout\ : std_logic;
SIGNAL \ES[2]~4_combout\ : std_logic;
SIGNAL \ES[3]~5_combout\ : std_logic;
SIGNAL \ES[4]~6_combout\ : std_logic;
SIGNAL \SS~4_combout\ : std_logic;
SIGNAL \SS~8_combout\ : std_logic;
SIGNAL \SS~9_combout\ : std_logic;
SIGNAL \SS~6_combout\ : std_logic;
SIGNAL \SS~7_combout\ : std_logic;
SIGNAL \SS~combout\ : std_logic;
SIGNAL \comp|truey\ : std_logic_vector(9 DOWNTO 0);
SIGNAL y_man_up : std_logic_vector(9 DOWNTO 0);
SIGNAL MS : std_logic_vector(9 DOWNTO 0);
SIGNAL ES : std_logic_vector(4 DOWNTO 0);
SIGNAL x_op : std_logic_vector(9 DOWNTO 0);
SIGNAL dif_exp : std_logic_vector(31 DOWNTO 0);
SIGNAL y_op : std_logic_vector(9 DOWNTO 0);
SIGNAL x_man_up : std_logic_vector(9 DOWNTO 0);
SIGNAL num_x_exp : std_logic_vector(31 DOWNTO 0);
SIGNAL num_y_exp : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_x_input <= x_input;
ww_y_input <= y_input;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\process_0~8clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \process_0~8_combout\);

\norm~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \norm~combout\);

\SS~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SS~3_combout\);

\x_man_up[9]~32clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \x_man_up[9]~32_combout\);

\SS~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SS~5_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y17_N16
\output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~0_combout\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~1_combout\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~2_combout\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~3_combout\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~4_combout\,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~5_combout\,
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~6_combout\,
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~7_combout\,
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\output[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~8_combout\,
	devoe => ww_devoe,
	o => \output[8]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\output[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~9_combout\,
	devoe => ww_devoe,
	o => \output[9]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\output[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ES(0),
	devoe => ww_devoe,
	o => \output[10]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\output[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ES(1),
	devoe => ww_devoe,
	o => \output[11]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\output[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ES(2),
	devoe => ww_devoe,
	o => \output[12]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\output[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ES(3),
	devoe => ww_devoe,
	o => \output[13]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\output[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ES(4),
	devoe => ww_devoe,
	o => \output[14]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\output[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SS~combout\,
	devoe => ww_devoe,
	o => \output[15]~output_o\);

-- Location: IOIBUF_X18_Y0_N22
\x_input[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_input(13),
	o => \x_input[13]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\x_input[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_input(12),
	o => \x_input[12]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\x_input[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_input(11),
	o => \x_input[11]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\x_input[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_input(10),
	o => \x_input[10]~input_o\);

-- Location: LCCOMB_X21_Y21_N28
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (((!\x_input[10]~input_o\) # (!\x_input[11]~input_o\)) # (!\x_input[12]~input_o\)) # (!\x_input[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[13]~input_o\,
	datab => \x_input[12]~input_o\,
	datac => \x_input[11]~input_o\,
	datad => \x_input[10]~input_o\,
	combout => \LessThan2~0_combout\);

-- Location: IOIBUF_X34_Y9_N1
\x_input[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_input(14),
	o => \x_input[14]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\y_input[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_input(14),
	o => \y_input[14]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\y_input[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_input(12),
	o => \y_input[12]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\y_input[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_input(13),
	o => \y_input[13]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\y_input[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_input(10),
	o => \y_input[10]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\y_input[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_input(11),
	o => \y_input[11]~input_o\);

-- Location: LCCOMB_X21_Y21_N2
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (((!\y_input[11]~input_o\) # (!\y_input[10]~input_o\)) # (!\y_input[13]~input_o\)) # (!\y_input[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[12]~input_o\,
	datab => \y_input[13]~input_o\,
	datac => \y_input[10]~input_o\,
	datad => \y_input[11]~input_o\,
	combout => \LessThan4~0_combout\);

-- Location: IOIBUF_X34_Y18_N1
\y_input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_input(0),
	o => \y_input[0]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\y_input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_input(3),
	o => \y_input[3]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\y_input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_input(2),
	o => \y_input[2]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\y_input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_input(1),
	o => \y_input[1]~input_o\);

-- Location: LCCOMB_X19_Y18_N6
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\y_input[0]~input_o\ & (!\y_input[3]~input_o\ & (!\y_input[2]~input_o\ & !\y_input[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[0]~input_o\,
	datab => \y_input[3]~input_o\,
	datac => \y_input[2]~input_o\,
	datad => \y_input[1]~input_o\,
	combout => \Equal5~0_combout\);

-- Location: IOIBUF_X34_Y12_N8
\y_input[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_input(4),
	o => \y_input[4]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\y_input[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_input(7),
	o => \y_input[7]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\y_input[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_input(5),
	o => \y_input[5]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\y_input[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_input(6),
	o => \y_input[6]~input_o\);

-- Location: LCCOMB_X19_Y19_N6
\Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (!\y_input[4]~input_o\ & (!\y_input[7]~input_o\ & (!\y_input[5]~input_o\ & !\y_input[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[4]~input_o\,
	datab => \y_input[7]~input_o\,
	datac => \y_input[5]~input_o\,
	datad => \y_input[6]~input_o\,
	combout => \Equal5~1_combout\);

-- Location: IOIBUF_X23_Y24_N15
\y_input[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_input(8),
	o => \y_input[8]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\y_input[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_input(9),
	o => \y_input[9]~input_o\);

-- Location: LCCOMB_X21_Y20_N2
\Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (\Equal5~0_combout\ & (\Equal5~1_combout\ & (!\y_input[8]~input_o\ & !\y_input[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Equal5~1_combout\,
	datac => \y_input[8]~input_o\,
	datad => \y_input[9]~input_o\,
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X21_Y20_N12
\out_y[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_y[0]~1_combout\ = (!\Equal5~2_combout\ & ((\LessThan4~0_combout\) # (!\y_input[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_input[14]~input_o\,
	datac => \LessThan4~0_combout\,
	datad => \Equal5~2_combout\,
	combout => \out_y[0]~1_combout\);

-- Location: IOIBUF_X28_Y24_N22
\x_input[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_input(9),
	o => \x_input[9]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\x_input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_input(2),
	o => \x_input[2]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\x_input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_input(1),
	o => \x_input[1]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\x_input[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_input(6),
	o => \x_input[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\x_input[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_input(7),
	o => \x_input[7]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\x_input[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_input(4),
	o => \x_input[4]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\x_input[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_input(5),
	o => \x_input[5]~input_o\);

-- Location: LCCOMB_X19_Y19_N4
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\x_input[6]~input_o\ & (!\x_input[7]~input_o\ & (!\x_input[4]~input_o\ & !\x_input[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[6]~input_o\,
	datab => \x_input[7]~input_o\,
	datac => \x_input[4]~input_o\,
	datad => \x_input[5]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X34_Y18_N15
\x_input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_input(3),
	o => \x_input[3]~input_o\);

-- Location: LCCOMB_X19_Y18_N16
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\x_input[2]~input_o\ & (!\x_input[1]~input_o\ & (\Equal1~0_combout\ & !\x_input[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[2]~input_o\,
	datab => \x_input[1]~input_o\,
	datac => \Equal1~0_combout\,
	datad => \x_input[3]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: IOIBUF_X30_Y24_N22
\x_input[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_input(8),
	o => \x_input[8]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\x_input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_input(0),
	o => \x_input[0]~input_o\);

-- Location: LCCOMB_X19_Y20_N2
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\x_input[9]~input_o\ & (\Equal1~1_combout\ & (!\x_input[8]~input_o\ & !\x_input[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[9]~input_o\,
	datab => \Equal1~1_combout\,
	datac => \x_input[8]~input_o\,
	datad => \x_input[0]~input_o\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X18_Y20_N24
\process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (\out_y[0]~1_combout\ & (!\Equal1~2_combout\ & ((\LessThan2~0_combout\) # (!\x_input[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \x_input[14]~input_o\,
	datac => \out_y[0]~1_combout\,
	datad => \Equal1~2_combout\,
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X21_Y21_N0
\out_y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_y[2]~0_combout\ = (\y_input[14]~input_o\ & !\LessThan4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[14]~input_o\,
	datad => \LessThan4~0_combout\,
	combout => \out_y[2]~0_combout\);

-- Location: LCCOMB_X21_Y21_N8
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\y_input[12]~input_o\ & (!\y_input[13]~input_o\ & (!\y_input[10]~input_o\ & !\y_input[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[12]~input_o\,
	datab => \y_input[13]~input_o\,
	datac => \y_input[10]~input_o\,
	datad => \y_input[11]~input_o\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X23_Y21_N24
\out_y[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_y[1]~2_combout\ = (!\Equal5~2_combout\ & ((\y_input[14]~input_o\) # (!\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~2_combout\,
	datac => \y_input[14]~input_o\,
	datad => \Equal4~0_combout\,
	combout => \out_y[1]~2_combout\);

-- Location: LCCOMB_X21_Y21_N26
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\x_input[13]~input_o\ & (!\x_input[12]~input_o\ & (!\x_input[11]~input_o\ & !\x_input[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[13]~input_o\,
	datab => \x_input[12]~input_o\,
	datac => \x_input[11]~input_o\,
	datad => \x_input[10]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X19_Y20_N26
\out_x[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_x[1]~2_combout\ = (!\Equal1~2_combout\ & ((\x_input[14]~input_o\) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[14]~input_o\,
	datab => \Equal2~0_combout\,
	datad => \Equal1~2_combout\,
	combout => \out_x[1]~2_combout\);

-- Location: LCCOMB_X19_Y20_N12
\out_x[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_x[0]~1_combout\ = (!\Equal1~2_combout\ & ((\LessThan2~0_combout\) # (!\x_input[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[14]~input_o\,
	datac => \LessThan2~0_combout\,
	datad => \Equal1~2_combout\,
	combout => \out_x[0]~1_combout\);

-- Location: LCCOMB_X19_Y20_N0
\Equal10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~4_combout\ = (\out_y[0]~1_combout\ & (!\out_x[0]~1_combout\ & ((!\out_x[1]~2_combout\) # (!\out_y[1]~2_combout\)))) # (!\out_y[0]~1_combout\ & (((!\out_x[1]~2_combout\)) # (!\out_y[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_y[0]~1_combout\,
	datab => \out_y[1]~2_combout\,
	datac => \out_x[1]~2_combout\,
	datad => \out_x[0]~1_combout\,
	combout => \Equal10~4_combout\);

-- Location: LCCOMB_X19_Y20_N30
\Equal10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~5_combout\ = (\out_y[2]~0_combout\ & (!\LessThan2~0_combout\ & (\x_input[14]~input_o\ & \Equal10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_y[2]~0_combout\,
	datab => \LessThan2~0_combout\,
	datac => \x_input[14]~input_o\,
	datad => \Equal10~4_combout\,
	combout => \Equal10~5_combout\);

-- Location: LCCOMB_X21_Y20_N4
\SS~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SS~1_combout\ = (\Equal5~2_combout\ & ((\LessThan4~0_combout\) # (!\y_input[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_input[14]~input_o\,
	datac => \LessThan4~0_combout\,
	datad => \Equal5~2_combout\,
	combout => \SS~1_combout\);

-- Location: LCCOMB_X18_Y20_N30
\SS~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SS~2_combout\ = (!\LessThan2~0_combout\ & (\x_input[14]~input_o\ & (\out_y[0]~1_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \x_input[14]~input_o\,
	datac => \out_y[0]~1_combout\,
	datad => \Equal1~2_combout\,
	combout => \SS~2_combout\);

-- Location: LCCOMB_X21_Y20_N28
\out_x[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_x[2]~0_combout\ = (\x_input[14]~input_o\ & !\LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[14]~input_o\,
	datad => \LessThan2~0_combout\,
	combout => \out_x[2]~0_combout\);

-- Location: LCCOMB_X22_Y20_N28
\process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (\Equal5~2_combout\ & (\y_input[14]~input_o\ & !\LessThan4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~2_combout\,
	datac => \y_input[14]~input_o\,
	datad => \LessThan4~0_combout\,
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X19_Y20_N28
\SS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SS~0_combout\ = (\out_x[0]~1_combout\ & (((!\process_0~5_combout\)))) # (!\out_x[0]~1_combout\ & ((\out_x[2]~0_combout\) # ((\out_x[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_x[2]~0_combout\,
	datab => \process_0~5_combout\,
	datac => \out_x[1]~2_combout\,
	datad => \out_x[0]~1_combout\,
	combout => \SS~0_combout\);

-- Location: LCCOMB_X18_Y20_N16
\SS~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SS~3_combout\ = (\Equal10~5_combout\) # ((\SS~1_combout\) # ((\SS~2_combout\) # (!\SS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~5_combout\,
	datab => \SS~1_combout\,
	datac => \SS~2_combout\,
	datad => \SS~0_combout\,
	combout => \SS~3_combout\);

-- Location: LCCOMB_X19_Y20_N20
\Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (\x_input[14]~input_o\ & (!\LessThan2~0_combout\ & !\Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[14]~input_o\,
	datac => \LessThan2~0_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X19_Y20_N22
\process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (\Equal11~0_combout\) # ((\out_y[2]~0_combout\ & (!\out_y[0]~1_combout\ & \out_y[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_y[2]~0_combout\,
	datab => \out_y[0]~1_combout\,
	datac => \out_y[1]~2_combout\,
	datad => \Equal11~0_combout\,
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X33_Y12_N26
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (!\process_0~8_combout\ & ((\SS~3_combout\) # (\process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS~3_combout\,
	datac => \process_0~7_combout\,
	datad => \process_0~8_combout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X33_Y12_N24
norm : cycloneive_lcell_comb
-- Equation(s):
-- \norm~combout\ = (!\comb~0_combout\ & ((\process_0~8_combout\) # (\norm~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~8_combout\,
	datac => \comb~0_combout\,
	datad => \norm~combout\,
	combout => \norm~combout\);

-- Location: CLKCTRL_G9
\norm~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \norm~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \norm~clkctrl_outclk\);

-- Location: IOIBUF_X16_Y24_N8
\x_input[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_input(15),
	o => \x_input[15]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\y_input[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_input(15),
	o => \y_input[15]~input_o\);

-- Location: LCCOMB_X21_Y21_N22
\LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = (\x_input[11]~input_o\ & (((!\y_input[10]~input_o\ & \x_input[10]~input_o\)) # (!\y_input[11]~input_o\))) # (!\x_input[11]~input_o\ & (!\y_input[10]~input_o\ & (\x_input[10]~input_o\ & !\y_input[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[10]~input_o\,
	datab => \x_input[10]~input_o\,
	datac => \x_input[11]~input_o\,
	datad => \y_input[11]~input_o\,
	combout => \LessThan6~1_combout\);

-- Location: LCCOMB_X21_Y21_N16
\LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = \x_input[13]~input_o\ $ (\y_input[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[13]~input_o\,
	datad => \y_input[13]~input_o\,
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X21_Y21_N30
\LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~2_combout\ = (!\LessThan7~0_combout\ & ((\y_input[12]~input_o\ & (\x_input[12]~input_o\ & \LessThan6~1_combout\)) # (!\y_input[12]~input_o\ & ((\x_input[12]~input_o\) # (\LessThan6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[12]~input_o\,
	datab => \x_input[12]~input_o\,
	datac => \LessThan6~1_combout\,
	datad => \LessThan7~0_combout\,
	combout => \LessThan6~2_combout\);

-- Location: LCCOMB_X21_Y20_N16
\LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (\x_input[13]~input_o\ & !\y_input[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_input[13]~input_o\,
	datad => \y_input[13]~input_o\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X21_Y20_N14
\LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~3_combout\ = (\y_input[14]~input_o\ & (\x_input[14]~input_o\ & ((\LessThan6~2_combout\) # (\LessThan6~0_combout\)))) # (!\y_input[14]~input_o\ & ((\LessThan6~2_combout\) # ((\LessThan6~0_combout\) # (\x_input[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~2_combout\,
	datab => \LessThan6~0_combout\,
	datac => \y_input[14]~input_o\,
	datad => \x_input[14]~input_o\,
	combout => \LessThan6~3_combout\);

-- Location: LCCOMB_X21_Y21_N4
\LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~2_combout\ = (\x_input[11]~input_o\ & (\y_input[10]~input_o\ & (!\x_input[10]~input_o\ & \y_input[11]~input_o\))) # (!\x_input[11]~input_o\ & ((\y_input[11]~input_o\) # ((\y_input[10]~input_o\ & !\x_input[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[10]~input_o\,
	datab => \x_input[10]~input_o\,
	datac => \x_input[11]~input_o\,
	datad => \y_input[11]~input_o\,
	combout => \LessThan7~2_combout\);

-- Location: LCCOMB_X21_Y21_N18
\LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~3_combout\ = (!\LessThan7~0_combout\ & ((\y_input[12]~input_o\ & ((\LessThan7~2_combout\) # (!\x_input[12]~input_o\))) # (!\y_input[12]~input_o\ & (\LessThan7~2_combout\ & !\x_input[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[12]~input_o\,
	datab => \LessThan7~0_combout\,
	datac => \LessThan7~2_combout\,
	datad => \x_input[12]~input_o\,
	combout => \LessThan7~3_combout\);

-- Location: LCCOMB_X21_Y20_N24
\LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = (!\x_input[13]~input_o\ & \y_input[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_input[13]~input_o\,
	datad => \y_input[13]~input_o\,
	combout => \LessThan7~1_combout\);

-- Location: LCCOMB_X21_Y20_N18
\LessThan7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~4_combout\ = (\y_input[14]~input_o\ & ((\LessThan7~3_combout\) # ((\LessThan7~1_combout\) # (!\x_input[14]~input_o\)))) # (!\y_input[14]~input_o\ & (!\x_input[14]~input_o\ & ((\LessThan7~3_combout\) # (\LessThan7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~3_combout\,
	datab => \LessThan7~1_combout\,
	datac => \y_input[14]~input_o\,
	datad => \x_input[14]~input_o\,
	combout => \LessThan7~4_combout\);

-- Location: LCCOMB_X19_Y20_N10
\SS~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SS~5_combout\ = (\out_y[0]~1_combout\ & (\out_x[0]~1_combout\ & ((\LessThan7~4_combout\) # (\LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~4_combout\,
	datab => \LessThan6~3_combout\,
	datac => \out_y[0]~1_combout\,
	datad => \out_x[0]~1_combout\,
	combout => \SS~5_combout\);

-- Location: CLKCTRL_G8
\SS~5clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SS~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SS~5clkctrl_outclk\);

-- Location: CLKCTRL_G7
\process_0~8clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \process_0~8clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \process_0~8clkctrl_outclk\);

-- Location: LCCOMB_X22_Y20_N4
\num_y_exp[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- num_y_exp(4) = (GLOBAL(\process_0~8clkctrl_outclk\) & (\y_input[14]~input_o\)) # (!GLOBAL(\process_0~8clkctrl_outclk\) & ((num_y_exp(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_input[14]~input_o\,
	datac => num_y_exp(4),
	datad => \process_0~8clkctrl_outclk\,
	combout => num_y_exp(4));

-- Location: LCCOMB_X22_Y20_N30
\num_x_exp[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- num_x_exp(4) = (GLOBAL(\process_0~8clkctrl_outclk\) & (\x_input[14]~input_o\)) # (!GLOBAL(\process_0~8clkctrl_outclk\) & ((num_x_exp(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[14]~input_o\,
	datac => num_x_exp(4),
	datad => \process_0~8clkctrl_outclk\,
	combout => num_x_exp(4));

-- Location: LCCOMB_X22_Y20_N12
\num_x_exp[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- num_x_exp(3) = (GLOBAL(\process_0~8clkctrl_outclk\) & ((\x_input[13]~input_o\))) # (!GLOBAL(\process_0~8clkctrl_outclk\) & (num_x_exp(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_x_exp(3),
	datac => \x_input[13]~input_o\,
	datad => \process_0~8clkctrl_outclk\,
	combout => num_x_exp(3));

-- Location: LCCOMB_X22_Y20_N22
\num_y_exp[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- num_y_exp(3) = (GLOBAL(\process_0~8clkctrl_outclk\) & (\y_input[13]~input_o\)) # (!GLOBAL(\process_0~8clkctrl_outclk\) & ((num_y_exp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_input[13]~input_o\,
	datac => num_y_exp(3),
	datad => \process_0~8clkctrl_outclk\,
	combout => num_y_exp(3));

-- Location: LCCOMB_X22_Y20_N8
\num_x_exp[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- num_x_exp(2) = (GLOBAL(\process_0~8clkctrl_outclk\) & (\x_input[12]~input_o\)) # (!GLOBAL(\process_0~8clkctrl_outclk\) & ((num_x_exp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[12]~input_o\,
	datac => num_x_exp(2),
	datad => \process_0~8clkctrl_outclk\,
	combout => num_x_exp(2));

-- Location: LCCOMB_X25_Y20_N26
\num_y_exp[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- num_y_exp(2) = (GLOBAL(\process_0~8clkctrl_outclk\) & (\y_input[12]~input_o\)) # (!GLOBAL(\process_0~8clkctrl_outclk\) & ((num_y_exp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_input[12]~input_o\,
	datac => num_y_exp(2),
	datad => \process_0~8clkctrl_outclk\,
	combout => num_y_exp(2));

-- Location: LCCOMB_X23_Y17_N16
\num_x_exp[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- num_x_exp(1) = (GLOBAL(\process_0~8clkctrl_outclk\) & (\x_input[11]~input_o\)) # (!GLOBAL(\process_0~8clkctrl_outclk\) & ((num_x_exp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_input[11]~input_o\,
	datac => \process_0~8clkctrl_outclk\,
	datad => num_x_exp(1),
	combout => num_x_exp(1));

-- Location: LCCOMB_X24_Y20_N14
\num_y_exp[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- num_y_exp(1) = (GLOBAL(\process_0~8clkctrl_outclk\) & (\y_input[11]~input_o\)) # (!GLOBAL(\process_0~8clkctrl_outclk\) & ((num_y_exp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_input[11]~input_o\,
	datac => num_y_exp(1),
	datad => \process_0~8clkctrl_outclk\,
	combout => num_y_exp(1));

-- Location: LCCOMB_X22_Y20_N6
\num_y_exp[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- num_y_exp(0) = (GLOBAL(\process_0~8clkctrl_outclk\) & ((\y_input[10]~input_o\))) # (!GLOBAL(\process_0~8clkctrl_outclk\) & (num_y_exp(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_y_exp(0),
	datac => \y_input[10]~input_o\,
	datad => \process_0~8clkctrl_outclk\,
	combout => num_y_exp(0));

-- Location: LCCOMB_X23_Y20_N30
\num_x_exp[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- num_x_exp(0) = (GLOBAL(\process_0~8clkctrl_outclk\) & (\x_input[10]~input_o\)) # (!GLOBAL(\process_0~8clkctrl_outclk\) & ((num_x_exp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[10]~input_o\,
	datac => num_x_exp(0),
	datad => \process_0~8clkctrl_outclk\,
	combout => num_x_exp(0));

-- Location: LCCOMB_X24_Y20_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (num_y_exp(0) & ((GND) # (!num_x_exp(0)))) # (!num_y_exp(0) & (num_x_exp(0) $ (GND)))
-- \Add2~1\ = CARRY((num_y_exp(0)) # (!num_x_exp(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_y_exp(0),
	datab => num_x_exp(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X24_Y20_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (num_x_exp(1) & ((num_y_exp(1) & (!\Add2~1\)) # (!num_y_exp(1) & ((\Add2~1\) # (GND))))) # (!num_x_exp(1) & ((num_y_exp(1) & (\Add2~1\ & VCC)) # (!num_y_exp(1) & (!\Add2~1\))))
-- \Add2~3\ = CARRY((num_x_exp(1) & ((!\Add2~1\) # (!num_y_exp(1)))) # (!num_x_exp(1) & (!num_y_exp(1) & !\Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_x_exp(1),
	datab => num_y_exp(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X24_Y20_N4
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((num_x_exp(2) $ (num_y_exp(2) $ (\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((num_x_exp(2) & (num_y_exp(2) & !\Add2~3\)) # (!num_x_exp(2) & ((num_y_exp(2)) # (!\Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_x_exp(2),
	datab => num_y_exp(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X24_Y20_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (num_x_exp(3) & ((num_y_exp(3) & (!\Add2~5\)) # (!num_y_exp(3) & ((\Add2~5\) # (GND))))) # (!num_x_exp(3) & ((num_y_exp(3) & (\Add2~5\ & VCC)) # (!num_y_exp(3) & (!\Add2~5\))))
-- \Add2~7\ = CARRY((num_x_exp(3) & ((!\Add2~5\) # (!num_y_exp(3)))) # (!num_x_exp(3) & (!num_y_exp(3) & !\Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_x_exp(3),
	datab => num_y_exp(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X24_Y20_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((num_y_exp(4) $ (num_x_exp(4) $ (\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((num_y_exp(4) & ((!\Add2~7\) # (!num_x_exp(4)))) # (!num_y_exp(4) & (!num_x_exp(4) & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_y_exp(4),
	datab => num_x_exp(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X24_Y20_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = !\Add2~9\
-- \Add2~11\ = CARRY(!\Add2~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X24_Y20_N16
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = \Add2~0_combout\ $ (VCC)
-- \Add3~1\ = CARRY(\Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~0_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X24_Y20_N18
\Add3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~3_combout\ = (\Add2~2_combout\ & (\Add3~1\ & VCC)) # (!\Add2~2_combout\ & (!\Add3~1\))
-- \Add3~4\ = CARRY((!\Add2~2_combout\ & !\Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~2_combout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~3_combout\,
	cout => \Add3~4\);

-- Location: LCCOMB_X24_Y20_N20
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\Add2~4_combout\ & ((GND) # (!\Add3~4\))) # (!\Add2~4_combout\ & (\Add3~4\ $ (GND)))
-- \Add3~7\ = CARRY((\Add2~4_combout\) # (!\Add3~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~4_combout\,
	datad => VCC,
	cin => \Add3~4\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X24_Y20_N22
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\Add2~6_combout\ & (\Add3~7\ & VCC)) # (!\Add2~6_combout\ & (!\Add3~7\))
-- \Add3~9\ = CARRY((!\Add2~6_combout\ & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X24_Y20_N24
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\Add2~8_combout\ & ((GND) # (!\Add3~9\))) # (!\Add2~8_combout\ & (\Add3~9\ $ (GND)))
-- \Add3~13\ = CARRY((\Add2~8_combout\) # (!\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~8_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X24_Y20_N26
\Add3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~15_combout\ = (\Add2~10_combout\ & (\Add3~13\ & VCC)) # (!\Add2~10_combout\ & (!\Add3~13\))
-- \Add3~16\ = CARRY((!\Add2~10_combout\ & !\Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~15_combout\,
	cout => \Add3~16\);

-- Location: LCCOMB_X23_Y20_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (num_x_exp(0) & ((GND) # (!num_y_exp(0)))) # (!num_x_exp(0) & (num_y_exp(0) $ (GND)))
-- \Add0~1\ = CARRY((num_x_exp(0)) # (!num_y_exp(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_x_exp(0),
	datab => num_y_exp(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X23_Y20_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (num_x_exp(1) & ((num_y_exp(1) & (!\Add0~1\)) # (!num_y_exp(1) & (\Add0~1\ & VCC)))) # (!num_x_exp(1) & ((num_y_exp(1) & ((\Add0~1\) # (GND))) # (!num_y_exp(1) & (!\Add0~1\))))
-- \Add0~3\ = CARRY((num_x_exp(1) & (num_y_exp(1) & !\Add0~1\)) # (!num_x_exp(1) & ((num_y_exp(1)) # (!\Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_x_exp(1),
	datab => num_y_exp(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X23_Y20_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((num_y_exp(2) $ (num_x_exp(2) $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((num_y_exp(2) & (num_x_exp(2) & !\Add0~3\)) # (!num_y_exp(2) & ((num_x_exp(2)) # (!\Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_y_exp(2),
	datab => num_x_exp(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X23_Y20_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (num_x_exp(3) & ((num_y_exp(3) & (!\Add0~5\)) # (!num_y_exp(3) & (\Add0~5\ & VCC)))) # (!num_x_exp(3) & ((num_y_exp(3) & ((\Add0~5\) # (GND))) # (!num_y_exp(3) & (!\Add0~5\))))
-- \Add0~7\ = CARRY((num_x_exp(3) & (num_y_exp(3) & !\Add0~5\)) # (!num_x_exp(3) & ((num_y_exp(3)) # (!\Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_x_exp(3),
	datab => num_y_exp(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X23_Y20_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((num_y_exp(4) $ (num_x_exp(4) $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((num_y_exp(4) & (num_x_exp(4) & !\Add0~7\)) # (!num_y_exp(4) & ((num_x_exp(4)) # (!\Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_y_exp(4),
	datab => num_x_exp(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X23_Y20_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = !\Add0~9\
-- \Add0~11\ = CARRY(!\Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X23_Y20_N14
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \Add0~0_combout\ $ (VCC)
-- \Add1~1\ = CARRY(\Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X23_Y20_N16
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add0~2_combout\ & (\Add1~1\ & VCC)) # (!\Add0~2_combout\ & (!\Add1~1\))
-- \Add1~3\ = CARRY((!\Add0~2_combout\ & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X23_Y20_N18
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\Add0~4_combout\ & ((GND) # (!\Add1~3\))) # (!\Add0~4_combout\ & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((\Add0~4_combout\) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X23_Y20_N20
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add0~6_combout\ & (\Add1~5\ & VCC)) # (!\Add0~6_combout\ & (!\Add1~5\))
-- \Add1~7\ = CARRY((!\Add0~6_combout\ & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X23_Y20_N22
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Add0~8_combout\ & ((GND) # (!\Add1~7\))) # (!\Add0~8_combout\ & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((\Add0~8_combout\) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X23_Y20_N24
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Add0~10_combout\ & (\Add1~9\ & VCC)) # (!\Add0~10_combout\ & (!\Add1~9\))
-- \Add1~11\ = CARRY((!\Add0~10_combout\ & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X25_Y20_N20
\Add3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~17_combout\ = (\LessThan6~3_combout\ & ((\Add1~10_combout\))) # (!\LessThan6~3_combout\ & (\Add3~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~3_combout\,
	datac => \Add3~15_combout\,
	datad => \Add1~10_combout\,
	combout => \Add3~17_combout\);

-- Location: LCCOMB_X25_Y20_N12
\dif_exp[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- dif_exp(5) = (GLOBAL(\SS~5clkctrl_outclk\) & ((\Add3~17_combout\))) # (!GLOBAL(\SS~5clkctrl_outclk\) & (dif_exp(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(5),
	datac => \SS~5clkctrl_outclk\,
	datad => \Add3~17_combout\,
	combout => dif_exp(5));

-- Location: LCCOMB_X23_Y20_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = \Add0~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~11\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X23_Y20_N26
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\Add0~12_combout\ & ((GND) # (!\Add1~11\))) # (!\Add0~12_combout\ & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((\Add0~12_combout\) # (!\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X24_Y20_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = \Add2~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add2~11\,
	combout => \Add2~12_combout\);

-- Location: LCCOMB_X24_Y20_N28
\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (\Add2~12_combout\ & ((GND) # (!\Add3~16\))) # (!\Add2~12_combout\ & (\Add3~16\ $ (GND)))
-- \Add3~19\ = CARRY((\Add2~12_combout\) # (!\Add3~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datad => VCC,
	cin => \Add3~16\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X25_Y20_N30
\Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (\LessThan6~3_combout\ & (\Add1~12_combout\)) # (!\LessThan6~3_combout\ & ((\Add3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~3_combout\,
	datac => \Add1~12_combout\,
	datad => \Add3~18_combout\,
	combout => \Add3~20_combout\);

-- Location: LCCOMB_X25_Y20_N18
\dif_exp[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- dif_exp(6) = (GLOBAL(\SS~5clkctrl_outclk\) & (\Add3~20_combout\)) # (!GLOBAL(\SS~5clkctrl_outclk\) & ((dif_exp(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~20_combout\,
	datac => \SS~5clkctrl_outclk\,
	datad => dif_exp(6),
	combout => dif_exp(6));

-- Location: LCCOMB_X23_Y20_N28
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Add1~13\ $ (!\Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add0~12_combout\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X24_Y20_N30
\Add3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~21_combout\ = \Add3~19\ $ (!\Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add2~12_combout\,
	cin => \Add3~19\,
	combout => \Add3~21_combout\);

-- Location: LCCOMB_X25_Y20_N24
\Add3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~23_combout\ = (\LessThan6~3_combout\ & (\Add1~14_combout\)) # (!\LessThan6~3_combout\ & ((\Add3~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~3_combout\,
	datac => \Add1~14_combout\,
	datad => \Add3~21_combout\,
	combout => \Add3~23_combout\);

-- Location: LCCOMB_X25_Y20_N8
\dif_exp[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- dif_exp(7) = (GLOBAL(\SS~5clkctrl_outclk\) & ((\Add3~23_combout\))) # (!GLOBAL(\SS~5clkctrl_outclk\) & (dif_exp(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dif_exp(7),
	datac => \SS~5clkctrl_outclk\,
	datad => \Add3~23_combout\,
	combout => dif_exp(7));

-- Location: LCCOMB_X24_Y19_N8
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\LessThan6~3_combout\ & (\Add1~0_combout\)) # (!\LessThan6~3_combout\ & ((\Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~3_combout\,
	datac => \Add1~0_combout\,
	datad => \Add3~0_combout\,
	combout => \Add3~2_combout\);

-- Location: LCCOMB_X24_Y19_N6
\dif_exp[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- dif_exp(0) = (GLOBAL(\SS~5clkctrl_outclk\) & ((\Add3~2_combout\))) # (!GLOBAL(\SS~5clkctrl_outclk\) & (dif_exp(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(0),
	datac => \Add3~2_combout\,
	datad => \SS~5clkctrl_outclk\,
	combout => dif_exp(0));

-- Location: LCCOMB_X25_Y20_N28
\Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~1_combout\ = (!dif_exp(5) & (!dif_exp(6) & (!dif_exp(7) & !dif_exp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(5),
	datab => dif_exp(6),
	datac => dif_exp(7),
	datad => dif_exp(0),
	combout => \Equal13~1_combout\);

-- Location: LCCOMB_X24_Y19_N22
\Add3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~5_combout\ = (\LessThan6~3_combout\ & ((\Add1~2_combout\))) # (!\LessThan6~3_combout\ & (\Add3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~3_combout\,
	datac => \Add3~3_combout\,
	datad => \Add1~2_combout\,
	combout => \Add3~5_combout\);

-- Location: LCCOMB_X24_Y19_N28
\dif_exp[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- dif_exp(1) = (GLOBAL(\SS~5clkctrl_outclk\) & ((\Add3~5_combout\))) # (!GLOBAL(\SS~5clkctrl_outclk\) & (dif_exp(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dif_exp(1),
	datac => \Add3~5_combout\,
	datad => \SS~5clkctrl_outclk\,
	combout => dif_exp(1));

-- Location: LCCOMB_X24_Y19_N2
\Add3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~11_combout\ = (\LessThan6~3_combout\ & (\Add1~4_combout\)) # (!\LessThan6~3_combout\ & ((\Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~3_combout\,
	datac => \Add1~4_combout\,
	datad => \Add3~6_combout\,
	combout => \Add3~11_combout\);

-- Location: LCCOMB_X24_Y19_N20
\dif_exp[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- dif_exp(2) = (GLOBAL(\SS~5clkctrl_outclk\) & ((\Add3~11_combout\))) # (!GLOBAL(\SS~5clkctrl_outclk\) & (dif_exp(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dif_exp(2),
	datac => \SS~5clkctrl_outclk\,
	datad => \Add3~11_combout\,
	combout => dif_exp(2));

-- Location: LCCOMB_X24_Y19_N12
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\LessThan6~3_combout\ & (\Add1~6_combout\)) # (!\LessThan6~3_combout\ & ((\Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~3_combout\,
	datac => \Add1~6_combout\,
	datad => \Add3~8_combout\,
	combout => \Add3~10_combout\);

-- Location: LCCOMB_X24_Y19_N14
\dif_exp[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- dif_exp(3) = (GLOBAL(\SS~5clkctrl_outclk\) & ((\Add3~10_combout\))) # (!GLOBAL(\SS~5clkctrl_outclk\) & (dif_exp(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dif_exp(3),
	datac => \SS~5clkctrl_outclk\,
	datad => \Add3~10_combout\,
	combout => dif_exp(3));

-- Location: LCCOMB_X24_Y19_N4
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\LessThan6~3_combout\ & ((\Add1~8_combout\))) # (!\LessThan6~3_combout\ & (\Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~3_combout\,
	datac => \Add3~12_combout\,
	datad => \Add1~8_combout\,
	combout => \Add3~14_combout\);

-- Location: LCCOMB_X24_Y19_N18
\dif_exp[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- dif_exp(4) = (GLOBAL(\SS~5clkctrl_outclk\) & ((\Add3~14_combout\))) # (!GLOBAL(\SS~5clkctrl_outclk\) & (dif_exp(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(4),
	datac => \Add3~14_combout\,
	datad => \SS~5clkctrl_outclk\,
	combout => dif_exp(4));

-- Location: LCCOMB_X24_Y19_N0
\Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (!dif_exp(1) & (!dif_exp(2) & (!dif_exp(3) & !dif_exp(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(1),
	datab => dif_exp(2),
	datac => dif_exp(3),
	datad => dif_exp(4),
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X24_Y18_N8
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!dif_exp(1) & (dif_exp(3) & (!dif_exp(2) & dif_exp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(1),
	datab => dif_exp(3),
	datac => dif_exp(2),
	datad => dif_exp(0),
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X24_Y18_N12
\WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (dif_exp(3) & ((dif_exp(1) & ((!dif_exp(2)) # (!dif_exp(0)))) # (!dif_exp(1) & ((dif_exp(0)) # (dif_exp(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(1),
	datab => dif_exp(0),
	datac => dif_exp(2),
	datad => dif_exp(3),
	combout => \WideOr7~0_combout\);

-- Location: LCCOMB_X24_Y19_N24
\Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~0_combout\ = (!dif_exp(0) & (!dif_exp(1) & (!dif_exp(3) & !dif_exp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(0),
	datab => dif_exp(1),
	datac => dif_exp(3),
	datad => dif_exp(2),
	combout => \Decoder1~0_combout\);

-- Location: LCCOMB_X25_Y19_N24
\Decoder1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~1_combout\ = (dif_exp(3) & (dif_exp(1) & (dif_exp(0) & dif_exp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(3),
	datab => dif_exp(1),
	datac => dif_exp(0),
	datad => dif_exp(2),
	combout => \Decoder1~1_combout\);

-- Location: LCCOMB_X23_Y18_N4
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\y_input[0]~input_o\ & ((\Decoder1~1_combout\) # ((\y_input[1]~input_o\ & \Decoder1~0_combout\)))) # (!\y_input[0]~input_o\ & (\y_input[1]~input_o\ & (\Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[0]~input_o\,
	datab => \y_input[1]~input_o\,
	datac => \Decoder1~0_combout\,
	datad => \Decoder1~1_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X24_Y18_N30
\Decoder1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~3_combout\ = (dif_exp(1) & (dif_exp(2) & (dif_exp(0) & !dif_exp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(1),
	datab => dif_exp(2),
	datac => dif_exp(0),
	datad => dif_exp(3),
	combout => \Decoder1~3_combout\);

-- Location: LCCOMB_X24_Y19_N26
\Decoder1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~2_combout\ = (!dif_exp(0) & (!dif_exp(1) & (dif_exp(3) & !dif_exp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(0),
	datab => dif_exp(1),
	datac => dif_exp(3),
	datad => dif_exp(2),
	combout => \Decoder1~2_combout\);

-- Location: LCCOMB_X24_Y18_N20
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\y_input[9]~input_o\ & ((\Decoder1~2_combout\) # ((\y_input[8]~input_o\ & \Decoder1~3_combout\)))) # (!\y_input[9]~input_o\ & (\y_input[8]~input_o\ & (\Decoder1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[9]~input_o\,
	datab => \y_input[8]~input_o\,
	datac => \Decoder1~3_combout\,
	datad => \Decoder1~2_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X24_Y19_N16
\Decoder1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~5_combout\ = (dif_exp(0) & (dif_exp(2) & (!dif_exp(3) & !dif_exp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(0),
	datab => dif_exp(2),
	datac => dif_exp(3),
	datad => dif_exp(1),
	combout => \Decoder1~5_combout\);

-- Location: LCCOMB_X24_Y18_N2
\Decoder1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~4_combout\ = (!dif_exp(0) & (dif_exp(1) & (dif_exp(2) & !dif_exp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(0),
	datab => dif_exp(1),
	datac => dif_exp(2),
	datad => dif_exp(3),
	combout => \Decoder1~4_combout\);

-- Location: LCCOMB_X23_Y18_N2
\Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\Decoder1~5_combout\ & ((\y_input[6]~input_o\) # ((\y_input[7]~input_o\ & \Decoder1~4_combout\)))) # (!\Decoder1~5_combout\ & (\y_input[7]~input_o\ & ((\Decoder1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~5_combout\,
	datab => \y_input[7]~input_o\,
	datac => \y_input[6]~input_o\,
	datad => \Decoder1~4_combout\,
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X23_Y19_N30
\Decoder1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~7_combout\ = (!dif_exp(2) & (dif_exp(0) & (!dif_exp(3) & dif_exp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(2),
	datab => dif_exp(0),
	datac => dif_exp(3),
	datad => dif_exp(1),
	combout => \Decoder1~7_combout\);

-- Location: LCCOMB_X23_Y19_N0
\Decoder1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~6_combout\ = (dif_exp(2) & (!dif_exp(0) & (!dif_exp(3) & !dif_exp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(2),
	datab => dif_exp(0),
	datac => dif_exp(3),
	datad => dif_exp(1),
	combout => \Decoder1~6_combout\);

-- Location: LCCOMB_X22_Y18_N6
\Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (\y_input[5]~input_o\ & ((\Decoder1~6_combout\) # ((\y_input[4]~input_o\ & \Decoder1~7_combout\)))) # (!\y_input[5]~input_o\ & (\y_input[4]~input_o\ & (\Decoder1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[5]~input_o\,
	datab => \y_input[4]~input_o\,
	datac => \Decoder1~7_combout\,
	datad => \Decoder1~6_combout\,
	combout => \Selector7~3_combout\);

-- Location: LCCOMB_X24_Y19_N10
\Decoder1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~9_combout\ = (dif_exp(0) & (!dif_exp(2) & (!dif_exp(3) & !dif_exp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(0),
	datab => dif_exp(2),
	datac => dif_exp(3),
	datad => dif_exp(1),
	combout => \Decoder1~9_combout\);

-- Location: LCCOMB_X23_Y19_N24
\Decoder1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~8_combout\ = (!dif_exp(2) & (dif_exp(1) & (!dif_exp(3) & !dif_exp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(2),
	datab => dif_exp(1),
	datac => dif_exp(3),
	datad => dif_exp(0),
	combout => \Decoder1~8_combout\);

-- Location: LCCOMB_X23_Y18_N0
\Selector7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = (\y_input[2]~input_o\ & ((\Decoder1~9_combout\) # ((\y_input[3]~input_o\ & \Decoder1~8_combout\)))) # (!\y_input[2]~input_o\ & (((\y_input[3]~input_o\ & \Decoder1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[2]~input_o\,
	datab => \Decoder1~9_combout\,
	datac => \y_input[3]~input_o\,
	datad => \Decoder1~8_combout\,
	combout => \Selector7~4_combout\);

-- Location: LCCOMB_X23_Y18_N18
\Selector7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~5_combout\ = (\Selector7~1_combout\) # ((\Selector7~2_combout\) # ((\Selector7~3_combout\) # (\Selector7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~1_combout\,
	datab => \Selector7~2_combout\,
	datac => \Selector7~3_combout\,
	datad => \Selector7~4_combout\,
	combout => \Selector7~5_combout\);

-- Location: LCCOMB_X23_Y18_N28
\x_man_up~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~28_combout\ = (\WideOr7~0_combout\ & (\Decoder0~0_combout\)) # (!\WideOr7~0_combout\ & (((\Selector7~0_combout\) # (\Selector7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~0_combout\,
	datab => \WideOr7~0_combout\,
	datac => \Selector7~0_combout\,
	datad => \Selector7~5_combout\,
	combout => \x_man_up~28_combout\);

-- Location: LCCOMB_X23_Y18_N24
\x_man_up~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~70_combout\ = (\Equal13~1_combout\ & ((\Equal13~0_combout\ & (\y_input[1]~input_o\)) # (!\Equal13~0_combout\ & ((\x_man_up~28_combout\))))) # (!\Equal13~1_combout\ & (((\x_man_up~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~1_combout\,
	datab => \y_input[1]~input_o\,
	datac => \Equal13~0_combout\,
	datad => \x_man_up~28_combout\,
	combout => \x_man_up~70_combout\);

-- Location: LCCOMB_X23_Y18_N6
\y_man_up[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_man_up[0]~0_combout\ = (\LessThan6~3_combout\ & ((\x_man_up~70_combout\))) # (!\LessThan6~3_combout\ & (\y_input[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~3_combout\,
	datac => \y_input[0]~input_o\,
	datad => \x_man_up~70_combout\,
	combout => \y_man_up[0]~0_combout\);

-- Location: LCCOMB_X21_Y21_N20
\x_man_up[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up[9]~29_combout\ = (\y_input[12]~input_o\ & (\x_input[12]~input_o\ & (\x_input[11]~input_o\ $ (!\y_input[11]~input_o\)))) # (!\y_input[12]~input_o\ & (!\x_input[12]~input_o\ & (\x_input[11]~input_o\ $ (!\y_input[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[12]~input_o\,
	datab => \x_input[12]~input_o\,
	datac => \x_input[11]~input_o\,
	datad => \y_input[11]~input_o\,
	combout => \x_man_up[9]~29_combout\);

-- Location: LCCOMB_X21_Y20_N20
\x_man_up[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up[9]~30_combout\ = (\y_input[13]~input_o\ & (\x_input[13]~input_o\ & (\y_input[14]~input_o\ $ (!\x_input[14]~input_o\)))) # (!\y_input[13]~input_o\ & (!\x_input[13]~input_o\ & (\y_input[14]~input_o\ $ (!\x_input[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[13]~input_o\,
	datab => \y_input[14]~input_o\,
	datac => \x_input[13]~input_o\,
	datad => \x_input[14]~input_o\,
	combout => \x_man_up[9]~30_combout\);

-- Location: LCCOMB_X18_Y20_N20
\x_man_up[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up[9]~31_combout\ = (\x_man_up[9]~29_combout\ & (\x_man_up[9]~30_combout\ & (\x_input[10]~input_o\ $ (!\y_input[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_man_up[9]~29_combout\,
	datab => \x_man_up[9]~30_combout\,
	datac => \x_input[10]~input_o\,
	datad => \y_input[10]~input_o\,
	combout => \x_man_up[9]~31_combout\);

-- Location: LCCOMB_X18_Y20_N14
\x_man_up[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up[9]~32_combout\ = (\process_0~8_combout\ & ((\x_man_up[9]~31_combout\) # ((\LessThan7~4_combout\) # (\LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_man_up[9]~31_combout\,
	datab => \LessThan7~4_combout\,
	datac => \LessThan6~3_combout\,
	datad => \process_0~8_combout\,
	combout => \x_man_up[9]~32_combout\);

-- Location: CLKCTRL_G5
\x_man_up[9]~32clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \x_man_up[9]~32clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \x_man_up[9]~32clkctrl_outclk\);

-- Location: LCCOMB_X23_Y18_N22
\y_man_up[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- y_man_up(0) = (GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & (\y_man_up[0]~0_combout\)) # (!GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & ((y_man_up(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_man_up[0]~0_combout\,
	datac => y_man_up(0),
	datad => \x_man_up[9]~32clkctrl_outclk\,
	combout => y_man_up(0));

-- Location: LCCOMB_X23_Y18_N30
\x_man_up[0]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up[0]~71_combout\ = (\LessThan6~3_combout\ & (((\x_input[0]~input_o\)))) # (!\LessThan6~3_combout\ & ((\LessThan7~4_combout\ & ((\x_man_up~70_combout\))) # (!\LessThan7~4_combout\ & (\x_input[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~3_combout\,
	datab => \LessThan7~4_combout\,
	datac => \x_input[0]~input_o\,
	datad => \x_man_up~70_combout\,
	combout => \x_man_up[0]~71_combout\);

-- Location: LCCOMB_X23_Y18_N12
\x_man_up[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- x_man_up(0) = (GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & ((\x_man_up[0]~71_combout\))) # (!GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & (x_man_up(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_man_up(0),
	datac => \x_man_up[0]~71_combout\,
	datad => \x_man_up[9]~32clkctrl_outclk\,
	combout => x_man_up(0));

-- Location: LCCOMB_X23_Y18_N10
\y_op[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_op[0]~0_combout\ = (\x_input[15]~input_o\ & ((\y_input[15]~input_o\ & (y_man_up(0))) # (!\y_input[15]~input_o\ & ((x_man_up(0)))))) # (!\x_input[15]~input_o\ & (((y_man_up(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[15]~input_o\,
	datab => \y_input[15]~input_o\,
	datac => y_man_up(0),
	datad => x_man_up(0),
	combout => \y_op[0]~0_combout\);

-- Location: LCCOMB_X23_Y18_N26
\y_op[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- y_op(0) = (GLOBAL(\norm~clkctrl_outclk\) & ((\y_op[0]~0_combout\))) # (!GLOBAL(\norm~clkctrl_outclk\) & (y_op(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_op(0),
	datac => \norm~clkctrl_outclk\,
	datad => \y_op[0]~0_combout\,
	combout => y_op(0));

-- Location: LCCOMB_X23_Y18_N16
\x_op[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_op[0]~0_combout\ = (\y_input[15]~input_o\ & (((x_man_up(0))))) # (!\y_input[15]~input_o\ & ((\x_input[15]~input_o\ & (y_man_up(0))) # (!\x_input[15]~input_o\ & ((x_man_up(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_man_up(0),
	datab => \y_input[15]~input_o\,
	datac => \x_input[15]~input_o\,
	datad => x_man_up(0),
	combout => \x_op[0]~0_combout\);

-- Location: LCCOMB_X23_Y18_N8
\x_op[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- x_op(0) = (GLOBAL(\norm~clkctrl_outclk\) & ((\x_op[0]~0_combout\))) # (!GLOBAL(\norm~clkctrl_outclk\) & (x_op(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_op(0),
	datac => \norm~clkctrl_outclk\,
	datad => \x_op[0]~0_combout\,
	combout => x_op(0));

-- Location: LCCOMB_X21_Y19_N16
\process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = \y_input[15]~input_o\ $ (\x_input[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_input[15]~input_o\,
	datad => \x_input[15]~input_o\,
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X21_Y20_N30
\process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (\out_y[2]~0_combout\ & (\process_0~4_combout\ & (\Equal10~4_combout\ & \out_x[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_y[2]~0_combout\,
	datab => \process_0~4_combout\,
	datac => \Equal10~4_combout\,
	datad => \out_x[2]~0_combout\,
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X19_Y20_N24
\ES[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ES[0]~7_combout\ = (\Equal10~5_combout\ & ((\y_input[15]~input_o\ $ (\x_input[15]~input_o\)))) # (!\Equal10~5_combout\ & (!\SS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS~0_combout\,
	datab => \y_input[15]~input_o\,
	datac => \x_input[15]~input_o\,
	datad => \Equal10~5_combout\,
	combout => \ES[0]~7_combout\);

-- Location: LCCOMB_X19_Y18_N24
\MS[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MS[0]~0_combout\ = (\ES[0]~7_combout\ & ((\y_input[0]~input_o\) # ((\process_0~6_combout\)))) # (!\ES[0]~7_combout\ & (((\x_input[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[0]~input_o\,
	datab => \process_0~6_combout\,
	datac => \x_input[0]~input_o\,
	datad => \ES[0]~7_combout\,
	combout => \MS[0]~0_combout\);

-- Location: CLKCTRL_G6
\SS~3clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SS~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SS~3clkctrl_outclk\);

-- Location: LCCOMB_X19_Y18_N22
\MS[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- MS(0) = (\process_0~7_combout\) # ((GLOBAL(\SS~3clkctrl_outclk\) & ((\MS[0]~0_combout\))) # (!GLOBAL(\SS~3clkctrl_outclk\) & (MS(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MS(0),
	datab => \MS[0]~0_combout\,
	datac => \process_0~7_combout\,
	datad => \SS~3clkctrl_outclk\,
	combout => MS(0));

-- Location: LCCOMB_X25_Y18_N16
\output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~0_combout\ = (\norm~combout\ & (y_op(0) $ ((x_op(0))))) # (!\norm~combout\ & (((MS(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_op(0),
	datab => x_op(0),
	datac => MS(0),
	datad => \norm~combout\,
	combout => \output~0_combout\);

-- Location: LCCOMB_X21_Y19_N18
operator : cycloneive_lcell_comb
-- Equation(s):
-- \operator~combout\ = (GLOBAL(\norm~clkctrl_outclk\) & (\process_0~4_combout\)) # (!GLOBAL(\norm~clkctrl_outclk\) & ((\operator~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~4_combout\,
	datac => \norm~clkctrl_outclk\,
	datad => \operator~combout\,
	combout => \operator~combout\);

-- Location: LCCOMB_X25_Y18_N28
\comp|adder|adder_0|add_cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp|adder|adder_0|add_cout~1_combout\ = (\operator~combout\ & ((x_op(0)) # (!y_op(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_op(0),
	datab => x_op(0),
	datad => \operator~combout\,
	combout => \comp|adder|adder_0|add_cout~1_combout\);

-- Location: LCCOMB_X23_Y21_N6
\x_man_up~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~33_combout\ = (!dif_exp(1) & (!dif_exp(2) & (!dif_exp(0) & dif_exp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(1),
	datab => dif_exp(2),
	datac => dif_exp(0),
	datad => dif_exp(3),
	combout => \x_man_up~33_combout\);

-- Location: LCCOMB_X24_Y19_N30
\Equal13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~2_combout\ = (\Equal13~0_combout\ & \Equal13~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal13~0_combout\,
	datad => \Equal13~1_combout\,
	combout => \Equal13~2_combout\);

-- Location: LCCOMB_X25_Y19_N30
\WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (dif_exp(3) & (((!dif_exp(2)) # (!dif_exp(0))) # (!dif_exp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(3),
	datab => dif_exp(1),
	datac => dif_exp(0),
	datad => dif_exp(2),
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X22_Y18_N26
\Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\y_input[5]~input_o\ & ((\Decoder1~7_combout\) # ((\y_input[4]~input_o\ & \Decoder1~8_combout\)))) # (!\y_input[5]~input_o\ & (\y_input[4]~input_o\ & ((\Decoder1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[5]~input_o\,
	datab => \y_input[4]~input_o\,
	datac => \Decoder1~7_combout\,
	datad => \Decoder1~8_combout\,
	combout => \Selector6~2_combout\);

-- Location: LCCOMB_X22_Y18_N28
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\y_input[6]~input_o\ & ((\Decoder1~6_combout\) # ((\y_input[7]~input_o\ & \Decoder1~5_combout\)))) # (!\y_input[6]~input_o\ & (\y_input[7]~input_o\ & (\Decoder1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[6]~input_o\,
	datab => \y_input[7]~input_o\,
	datac => \Decoder1~5_combout\,
	datad => \Decoder1~6_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X23_Y18_N20
\Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~3_combout\ = (\y_input[2]~input_o\ & ((\Decoder1~0_combout\) # ((\y_input[3]~input_o\ & \Decoder1~9_combout\)))) # (!\y_input[2]~input_o\ & (\y_input[3]~input_o\ & ((\Decoder1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[2]~input_o\,
	datab => \y_input[3]~input_o\,
	datac => \Decoder1~0_combout\,
	datad => \Decoder1~9_combout\,
	combout => \Selector6~3_combout\);

-- Location: LCCOMB_X24_Y18_N26
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\y_input[9]~input_o\ & ((\Decoder1~3_combout\) # ((\y_input[8]~input_o\ & \Decoder1~4_combout\)))) # (!\y_input[9]~input_o\ & (\y_input[8]~input_o\ & ((\Decoder1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[9]~input_o\,
	datab => \y_input[8]~input_o\,
	datac => \Decoder1~3_combout\,
	datad => \Decoder1~4_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X22_Y18_N0
\Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~4_combout\ = (\Selector6~2_combout\) # ((\Selector6~1_combout\) # ((\Selector6~3_combout\) # (\Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~2_combout\,
	datab => \Selector6~1_combout\,
	datac => \Selector6~3_combout\,
	datad => \Selector6~0_combout\,
	combout => \Selector6~4_combout\);

-- Location: LCCOMB_X22_Y18_N10
\x_man_up~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~34_combout\ = (!\WideOr6~0_combout\ & ((\Selector6~4_combout\) # ((\y_input[1]~input_o\ & \Decoder1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[1]~input_o\,
	datab => \WideOr6~0_combout\,
	datac => \Decoder1~1_combout\,
	datad => \Selector6~4_combout\,
	combout => \x_man_up~34_combout\);

-- Location: LCCOMB_X22_Y18_N16
\x_man_up~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~35_combout\ = (\Equal13~2_combout\ & (((\y_input[2]~input_o\)))) # (!\Equal13~2_combout\ & ((\x_man_up~33_combout\) # ((\x_man_up~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_man_up~33_combout\,
	datab => \y_input[2]~input_o\,
	datac => \Equal13~2_combout\,
	datad => \x_man_up~34_combout\,
	combout => \x_man_up~35_combout\);

-- Location: LCCOMB_X22_Y18_N8
\x_man_up[1]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up[1]~72_combout\ = (\LessThan7~4_combout\ & ((\LessThan6~3_combout\ & (\x_input[1]~input_o\)) # (!\LessThan6~3_combout\ & ((\x_man_up~35_combout\))))) # (!\LessThan7~4_combout\ & (\x_input[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[1]~input_o\,
	datab => \LessThan7~4_combout\,
	datac => \LessThan6~3_combout\,
	datad => \x_man_up~35_combout\,
	combout => \x_man_up[1]~72_combout\);

-- Location: LCCOMB_X22_Y18_N22
\x_man_up[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- x_man_up(1) = (GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & ((\x_man_up[1]~72_combout\))) # (!GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & (x_man_up(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_man_up(1),
	datac => \x_man_up[1]~72_combout\,
	datad => \x_man_up[9]~32clkctrl_outclk\,
	combout => x_man_up(1));

-- Location: LCCOMB_X22_Y18_N30
\y_man_up[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_man_up[1]~1_combout\ = (\LessThan6~3_combout\ & ((\x_man_up~35_combout\))) # (!\LessThan6~3_combout\ & (\y_input[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[1]~input_o\,
	datac => \LessThan6~3_combout\,
	datad => \x_man_up~35_combout\,
	combout => \y_man_up[1]~1_combout\);

-- Location: LCCOMB_X22_Y18_N24
\y_man_up[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- y_man_up(1) = (GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & ((\y_man_up[1]~1_combout\))) # (!GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & (y_man_up(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_man_up(1),
	datac => \y_man_up[1]~1_combout\,
	datad => \x_man_up[9]~32clkctrl_outclk\,
	combout => y_man_up(1));

-- Location: LCCOMB_X22_Y18_N12
\y_op[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_op[1]~1_combout\ = (\y_input[15]~input_o\ & (((y_man_up(1))))) # (!\y_input[15]~input_o\ & ((\x_input[15]~input_o\ & (x_man_up(1))) # (!\x_input[15]~input_o\ & ((y_man_up(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[15]~input_o\,
	datab => \x_input[15]~input_o\,
	datac => x_man_up(1),
	datad => y_man_up(1),
	combout => \y_op[1]~1_combout\);

-- Location: LCCOMB_X22_Y18_N20
\y_op[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- y_op(1) = (GLOBAL(\norm~clkctrl_outclk\) & ((\y_op[1]~1_combout\))) # (!GLOBAL(\norm~clkctrl_outclk\) & (y_op(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_op(1),
	datac => \norm~clkctrl_outclk\,
	datad => \y_op[1]~1_combout\,
	combout => y_op(1));

-- Location: LCCOMB_X22_Y18_N4
\comp|truey[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp|truey\(1) = \operator~combout\ $ (y_op(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operator~combout\,
	datad => y_op(1),
	combout => \comp|truey\(1));

-- Location: LCCOMB_X22_Y18_N2
\x_op[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_op[1]~1_combout\ = (\y_input[15]~input_o\ & (((x_man_up(1))))) # (!\y_input[15]~input_o\ & ((\x_input[15]~input_o\ & ((y_man_up(1)))) # (!\x_input[15]~input_o\ & (x_man_up(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[15]~input_o\,
	datab => \x_input[15]~input_o\,
	datac => x_man_up(1),
	datad => y_man_up(1),
	combout => \x_op[1]~1_combout\);

-- Location: LCCOMB_X22_Y18_N18
\x_op[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- x_op(1) = (GLOBAL(\norm~clkctrl_outclk\) & ((\x_op[1]~1_combout\))) # (!GLOBAL(\norm~clkctrl_outclk\) & (x_op(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_op(1),
	datac => \norm~clkctrl_outclk\,
	datad => \x_op[1]~1_combout\,
	combout => x_op(1));

-- Location: LCCOMB_X25_Y18_N2
\comp|adder|adder_0|add_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp|adder|adder_0|add_cout~0_combout\ = (x_op(0) & (y_op(0) $ (\operator~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_op(0),
	datab => x_op(0),
	datad => \operator~combout\,
	combout => \comp|adder|adder_0|add_cout~0_combout\);

-- Location: LCCOMB_X25_Y18_N18
\comp|adder|adder_i:1:adder|add_sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp|adder|adder_i:1:adder|add_sum~combout\ = \comp|truey\(1) $ (x_op(1) $ (((\comp|adder|adder_0|add_cout~1_combout\) # (\comp|adder|adder_0|add_cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|adder|adder_0|add_cout~1_combout\,
	datab => \comp|truey\(1),
	datac => x_op(1),
	datad => \comp|adder|adder_0|add_cout~0_combout\,
	combout => \comp|adder|adder_i:1:adder|add_sum~combout\);

-- Location: LCCOMB_X19_Y20_N18
\MS[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MS[9]~1_combout\ = (!\SS~0_combout\ & !\Equal10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS~0_combout\,
	datad => \Equal10~5_combout\,
	combout => \MS[9]~1_combout\);

-- Location: LCCOMB_X18_Y20_N8
\MS[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MS[1]~2_combout\ = (\x_input[1]~input_o\ & (((\y_input[1]~input_o\ & \MS[9]~1_combout\)) # (!\ES[0]~7_combout\))) # (!\x_input[1]~input_o\ & (\y_input[1]~input_o\ & ((\MS[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[1]~input_o\,
	datab => \y_input[1]~input_o\,
	datac => \ES[0]~7_combout\,
	datad => \MS[9]~1_combout\,
	combout => \MS[1]~2_combout\);

-- Location: LCCOMB_X19_Y20_N4
\MS[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- MS(1) = (!\process_0~7_combout\ & ((GLOBAL(\SS~3clkctrl_outclk\) & (\MS[1]~2_combout\)) # (!GLOBAL(\SS~3clkctrl_outclk\) & ((MS(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MS[1]~2_combout\,
	datab => MS(1),
	datac => \process_0~7_combout\,
	datad => \SS~3clkctrl_outclk\,
	combout => MS(1));

-- Location: LCCOMB_X25_Y18_N0
\output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~1_combout\ = (\norm~combout\ & (\comp|adder|adder_i:1:adder|add_sum~combout\)) # (!\norm~combout\ & ((MS(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \norm~combout\,
	datac => \comp|adder|adder_i:1:adder|add_sum~combout\,
	datad => MS(1),
	combout => \output~1_combout\);

-- Location: LCCOMB_X19_Y18_N26
\MS[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MS[2]~3_combout\ = (\x_input[2]~input_o\ & (((\y_input[2]~input_o\ & \MS[9]~1_combout\)) # (!\ES[0]~7_combout\))) # (!\x_input[2]~input_o\ & (\y_input[2]~input_o\ & (\MS[9]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[2]~input_o\,
	datab => \y_input[2]~input_o\,
	datac => \MS[9]~1_combout\,
	datad => \ES[0]~7_combout\,
	combout => \MS[2]~3_combout\);

-- Location: LCCOMB_X19_Y18_N12
\MS[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- MS(2) = (!\process_0~7_combout\ & ((GLOBAL(\SS~3clkctrl_outclk\) & ((\MS[2]~3_combout\))) # (!GLOBAL(\SS~3clkctrl_outclk\) & (MS(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MS(2),
	datab => \MS[2]~3_combout\,
	datac => \process_0~7_combout\,
	datad => \SS~3clkctrl_outclk\,
	combout => MS(2));

-- Location: LCCOMB_X25_Y19_N8
\x_man_up~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~36_combout\ = (dif_exp(1) & (dif_exp(0) & dif_exp(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dif_exp(1),
	datac => dif_exp(0),
	datad => dif_exp(2),
	combout => \x_man_up~36_combout\);

-- Location: LCCOMB_X24_Y18_N4
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\y_input[9]~input_o\ & ((\Decoder1~4_combout\) # ((\y_input[8]~input_o\ & \Decoder1~5_combout\)))) # (!\y_input[9]~input_o\ & (((\y_input[8]~input_o\ & \Decoder1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[9]~input_o\,
	datab => \Decoder1~4_combout\,
	datac => \y_input[8]~input_o\,
	datad => \Decoder1~5_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X26_Y18_N4
\Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = (\y_input[2]~input_o\ & ((\Decoder1~1_combout\) # ((\y_input[3]~input_o\ & \Decoder1~0_combout\)))) # (!\y_input[2]~input_o\ & (\y_input[3]~input_o\ & (\Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[2]~input_o\,
	datab => \y_input[3]~input_o\,
	datac => \Decoder1~0_combout\,
	datad => \Decoder1~1_combout\,
	combout => \Selector5~3_combout\);

-- Location: LCCOMB_X26_Y18_N26
\Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\y_input[4]~input_o\ & ((\Decoder1~9_combout\) # ((\y_input[5]~input_o\ & \Decoder1~8_combout\)))) # (!\y_input[4]~input_o\ & (\y_input[5]~input_o\ & (\Decoder1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[4]~input_o\,
	datab => \y_input[5]~input_o\,
	datac => \Decoder1~8_combout\,
	datad => \Decoder1~9_combout\,
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X26_Y18_N24
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\y_input[6]~input_o\ & ((\Decoder1~7_combout\) # ((\y_input[7]~input_o\ & \Decoder1~6_combout\)))) # (!\y_input[6]~input_o\ & (\y_input[7]~input_o\ & ((\Decoder1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[6]~input_o\,
	datab => \y_input[7]~input_o\,
	datac => \Decoder1~7_combout\,
	datad => \Decoder1~6_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X26_Y18_N22
\Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~4_combout\ = (\Selector5~0_combout\) # ((\Selector5~3_combout\) # ((\Selector5~2_combout\) # (\Selector5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => \Selector5~3_combout\,
	datac => \Selector5~2_combout\,
	datad => \Selector5~1_combout\,
	combout => \Selector5~4_combout\);

-- Location: LCCOMB_X26_Y18_N12
\x_man_up~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~37_combout\ = (!\Equal13~2_combout\ & ((\x_man_up~36_combout\ & ((\Selector5~4_combout\) # (!dif_exp(3)))) # (!\x_man_up~36_combout\ & (!dif_exp(3) & \Selector5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_man_up~36_combout\,
	datab => dif_exp(3),
	datac => \Equal13~2_combout\,
	datad => \Selector5~4_combout\,
	combout => \x_man_up~37_combout\);

-- Location: LCCOMB_X26_Y18_N28
\x_man_up~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~73_combout\ = (\x_man_up~37_combout\) # ((\Equal13~0_combout\ & (\Equal13~1_combout\ & \y_input[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => \Equal13~1_combout\,
	datac => \y_input[3]~input_o\,
	datad => \x_man_up~37_combout\,
	combout => \x_man_up~73_combout\);

-- Location: LCCOMB_X26_Y18_N30
\x_man_up[2]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up[2]~74_combout\ = (\LessThan7~4_combout\ & ((\LessThan6~3_combout\ & (\x_input[2]~input_o\)) # (!\LessThan6~3_combout\ & ((\x_man_up~73_combout\))))) # (!\LessThan7~4_combout\ & (((\x_input[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~4_combout\,
	datab => \LessThan6~3_combout\,
	datac => \x_input[2]~input_o\,
	datad => \x_man_up~73_combout\,
	combout => \x_man_up[2]~74_combout\);

-- Location: LCCOMB_X26_Y18_N20
\x_man_up[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- x_man_up(2) = (GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & ((\x_man_up[2]~74_combout\))) # (!GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & (x_man_up(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_man_up(2),
	datac => \x_man_up[2]~74_combout\,
	datad => \x_man_up[9]~32clkctrl_outclk\,
	combout => x_man_up(2));

-- Location: LCCOMB_X26_Y18_N14
\y_man_up[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_man_up[2]~2_combout\ = (\LessThan6~3_combout\ & ((\x_man_up~73_combout\))) # (!\LessThan6~3_combout\ & (\y_input[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[2]~input_o\,
	datab => \LessThan6~3_combout\,
	datad => \x_man_up~73_combout\,
	combout => \y_man_up[2]~2_combout\);

-- Location: LCCOMB_X26_Y18_N10
\y_man_up[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- y_man_up(2) = (GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & ((\y_man_up[2]~2_combout\))) # (!GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & (y_man_up(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_man_up(2),
	datac => \y_man_up[2]~2_combout\,
	datad => \x_man_up[9]~32clkctrl_outclk\,
	combout => y_man_up(2));

-- Location: LCCOMB_X26_Y18_N18
\y_op[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_op[2]~2_combout\ = (\y_input[15]~input_o\ & (((y_man_up(2))))) # (!\y_input[15]~input_o\ & ((\x_input[15]~input_o\ & (x_man_up(2))) # (!\x_input[15]~input_o\ & ((y_man_up(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[15]~input_o\,
	datab => x_man_up(2),
	datac => \x_input[15]~input_o\,
	datad => y_man_up(2),
	combout => \y_op[2]~2_combout\);

-- Location: LCCOMB_X26_Y18_N6
\y_op[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- y_op(2) = (GLOBAL(\norm~clkctrl_outclk\) & ((\y_op[2]~2_combout\))) # (!GLOBAL(\norm~clkctrl_outclk\) & (y_op(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_op(2),
	datac => \norm~clkctrl_outclk\,
	datad => \y_op[2]~2_combout\,
	combout => y_op(2));

-- Location: LCCOMB_X25_Y18_N22
\comp|adder|adder_i:1:adder|add_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp|adder|adder_i:1:adder|add_cout~0_combout\ = (\comp|truey\(1) & ((\comp|adder|adder_0|add_cout~1_combout\) # ((x_op(1)) # (\comp|adder|adder_0|add_cout~0_combout\)))) # (!\comp|truey\(1) & (x_op(1) & ((\comp|adder|adder_0|add_cout~1_combout\) # 
-- (\comp|adder|adder_0|add_cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|adder|adder_0|add_cout~1_combout\,
	datab => \comp|truey\(1),
	datac => x_op(1),
	datad => \comp|adder|adder_0|add_cout~0_combout\,
	combout => \comp|adder|adder_i:1:adder|add_cout~0_combout\);

-- Location: LCCOMB_X26_Y18_N16
\x_op[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_op[2]~2_combout\ = (\x_input[15]~input_o\ & ((\y_input[15]~input_o\ & ((x_man_up(2)))) # (!\y_input[15]~input_o\ & (y_man_up(2))))) # (!\x_input[15]~input_o\ & (((x_man_up(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_man_up(2),
	datab => \x_input[15]~input_o\,
	datac => \y_input[15]~input_o\,
	datad => x_man_up(2),
	combout => \x_op[2]~2_combout\);

-- Location: LCCOMB_X26_Y18_N8
\x_op[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- x_op(2) = (GLOBAL(\norm~clkctrl_outclk\) & ((\x_op[2]~2_combout\))) # (!GLOBAL(\norm~clkctrl_outclk\) & (x_op(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_op(2),
	datac => \norm~clkctrl_outclk\,
	datad => \x_op[2]~2_combout\,
	combout => x_op(2));

-- Location: LCCOMB_X25_Y18_N4
\comp|adder|adder_i:2:adder|add_sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp|adder|adder_i:2:adder|add_sum~0_combout\ = \operator~combout\ $ (y_op(2) $ (\comp|adder|adder_i:1:adder|add_cout~0_combout\ $ (x_op(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operator~combout\,
	datab => y_op(2),
	datac => \comp|adder|adder_i:1:adder|add_cout~0_combout\,
	datad => x_op(2),
	combout => \comp|adder|adder_i:2:adder|add_sum~0_combout\);

-- Location: LCCOMB_X19_Y18_N4
\output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~2_combout\ = (\norm~combout\ & ((\comp|adder|adder_i:2:adder|add_sum~0_combout\))) # (!\norm~combout\ & (MS(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MS(2),
	datab => \norm~combout\,
	datad => \comp|adder|adder_i:2:adder|add_sum~0_combout\,
	combout => \output~2_combout\);

-- Location: LCCOMB_X24_Y18_N6
\x_man_up~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~38_combout\ = (dif_exp(2) & (!dif_exp(0) & (dif_exp(1) & !dif_exp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(2),
	datab => dif_exp(0),
	datac => dif_exp(1),
	datad => dif_exp(3),
	combout => \x_man_up~38_combout\);

-- Location: LCCOMB_X23_Y18_N14
\x_man_up~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~40_combout\ = (\y_input[6]~input_o\ & ((\Decoder1~8_combout\) # ((\y_input[7]~input_o\ & \Decoder1~7_combout\)))) # (!\y_input[6]~input_o\ & (\y_input[7]~input_o\ & (\Decoder1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[6]~input_o\,
	datab => \y_input[7]~input_o\,
	datac => \Decoder1~7_combout\,
	datad => \Decoder1~8_combout\,
	combout => \x_man_up~40_combout\);

-- Location: LCCOMB_X24_Y18_N24
\x_man_up~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~39_combout\ = (\y_input[9]~input_o\ & ((\Decoder1~5_combout\) # ((\y_input[8]~input_o\ & \Decoder1~6_combout\)))) # (!\y_input[9]~input_o\ & (\y_input[8]~input_o\ & (\Decoder1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[9]~input_o\,
	datab => \y_input[8]~input_o\,
	datac => \Decoder1~6_combout\,
	datad => \Decoder1~5_combout\,
	combout => \x_man_up~39_combout\);

-- Location: LCCOMB_X24_Y18_N22
\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (dif_exp(1) & ((dif_exp(3) & ((!dif_exp(0)) # (!dif_exp(2)))) # (!dif_exp(3) & (dif_exp(2))))) # (!dif_exp(1) & (dif_exp(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(1),
	datab => dif_exp(3),
	datac => dif_exp(2),
	datad => dif_exp(0),
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X24_Y18_N18
\x_man_up~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~41_combout\ = (\y_input[5]~input_o\ & ((\Decoder1~9_combout\) # ((\y_input[4]~input_o\ & \Decoder1~0_combout\)))) # (!\y_input[5]~input_o\ & (\y_input[4]~input_o\ & (\Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[5]~input_o\,
	datab => \y_input[4]~input_o\,
	datac => \Decoder1~0_combout\,
	datad => \Decoder1~9_combout\,
	combout => \x_man_up~41_combout\);

-- Location: LCCOMB_X24_Y18_N28
\x_man_up~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~42_combout\ = (\x_man_up~41_combout\) # ((\y_input[3]~input_o\ & \Decoder1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_input[3]~input_o\,
	datac => \Decoder1~1_combout\,
	datad => \x_man_up~41_combout\,
	combout => \x_man_up~42_combout\);

-- Location: LCCOMB_X24_Y18_N16
\x_man_up~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~43_combout\ = (!\WideOr4~0_combout\ & ((\x_man_up~40_combout\) # ((\x_man_up~39_combout\) # (\x_man_up~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_man_up~40_combout\,
	datab => \x_man_up~39_combout\,
	datac => \WideOr4~0_combout\,
	datad => \x_man_up~42_combout\,
	combout => \x_man_up~43_combout\);

-- Location: LCCOMB_X24_Y18_N10
\y_man_up[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_man_up[3]~3_combout\ = (\Equal13~2_combout\ & (((\y_input[4]~input_o\)))) # (!\Equal13~2_combout\ & ((\x_man_up~38_combout\) # ((\x_man_up~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_man_up~38_combout\,
	datab => \y_input[4]~input_o\,
	datac => \Equal13~2_combout\,
	datad => \x_man_up~43_combout\,
	combout => \y_man_up[3]~3_combout\);

-- Location: LCCOMB_X24_Y18_N14
\x_man_up[3]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up[3]~75_combout\ = (\LessThan7~4_combout\ & ((\LessThan6~3_combout\ & (\x_input[3]~input_o\)) # (!\LessThan6~3_combout\ & ((\y_man_up[3]~3_combout\))))) # (!\LessThan7~4_combout\ & (\x_input[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[3]~input_o\,
	datab => \LessThan7~4_combout\,
	datac => \LessThan6~3_combout\,
	datad => \y_man_up[3]~3_combout\,
	combout => \x_man_up[3]~75_combout\);

-- Location: LCCOMB_X25_Y18_N8
\x_man_up[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- x_man_up(3) = (GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & (\x_man_up[3]~75_combout\)) # (!GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & ((x_man_up(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_man_up[3]~75_combout\,
	datac => x_man_up(3),
	datad => \x_man_up[9]~32clkctrl_outclk\,
	combout => x_man_up(3));

-- Location: LCCOMB_X24_Y18_N0
\y_man_up[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_man_up[3]~4_combout\ = (\LessThan6~3_combout\ & ((\y_man_up[3]~3_combout\))) # (!\LessThan6~3_combout\ & (\y_input[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_input[3]~input_o\,
	datac => \LessThan6~3_combout\,
	datad => \y_man_up[3]~3_combout\,
	combout => \y_man_up[3]~4_combout\);

-- Location: LCCOMB_X25_Y18_N6
\y_man_up[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- y_man_up(3) = (GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & ((\y_man_up[3]~4_combout\))) # (!GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & (y_man_up(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_man_up(3),
	datac => \y_man_up[3]~4_combout\,
	datad => \x_man_up[9]~32clkctrl_outclk\,
	combout => y_man_up(3));

-- Location: LCCOMB_X25_Y18_N10
\y_op[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_op[3]~3_combout\ = (\y_input[15]~input_o\ & (((y_man_up(3))))) # (!\y_input[15]~input_o\ & ((\x_input[15]~input_o\ & (x_man_up(3))) # (!\x_input[15]~input_o\ & ((y_man_up(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[15]~input_o\,
	datab => \x_input[15]~input_o\,
	datac => x_man_up(3),
	datad => y_man_up(3),
	combout => \y_op[3]~3_combout\);

-- Location: LCCOMB_X25_Y18_N26
\y_op[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- y_op(3) = (GLOBAL(\norm~clkctrl_outclk\) & ((\y_op[3]~3_combout\))) # (!GLOBAL(\norm~clkctrl_outclk\) & (y_op(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_op(3),
	datac => \norm~clkctrl_outclk\,
	datad => \y_op[3]~3_combout\,
	combout => y_op(3));

-- Location: LCCOMB_X25_Y18_N30
\comp|adder|adder_i:2:adder|add_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp|adder|adder_i:2:adder|add_cout~0_combout\ = (\comp|adder|adder_i:1:adder|add_cout~0_combout\ & ((x_op(2)) # (\operator~combout\ $ (y_op(2))))) # (!\comp|adder|adder_i:1:adder|add_cout~0_combout\ & (x_op(2) & (\operator~combout\ $ (y_op(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operator~combout\,
	datab => y_op(2),
	datac => \comp|adder|adder_i:1:adder|add_cout~0_combout\,
	datad => x_op(2),
	combout => \comp|adder|adder_i:2:adder|add_cout~0_combout\);

-- Location: LCCOMB_X25_Y18_N20
\x_op[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_op[3]~3_combout\ = (\y_input[15]~input_o\ & (((x_man_up(3))))) # (!\y_input[15]~input_o\ & ((\x_input[15]~input_o\ & ((y_man_up(3)))) # (!\x_input[15]~input_o\ & (x_man_up(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[15]~input_o\,
	datab => \x_input[15]~input_o\,
	datac => x_man_up(3),
	datad => y_man_up(3),
	combout => \x_op[3]~3_combout\);

-- Location: LCCOMB_X25_Y18_N12
\x_op[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- x_op(3) = (GLOBAL(\norm~clkctrl_outclk\) & ((\x_op[3]~3_combout\))) # (!GLOBAL(\norm~clkctrl_outclk\) & (x_op(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_op(3),
	datac => \norm~clkctrl_outclk\,
	datad => \x_op[3]~3_combout\,
	combout => x_op(3));

-- Location: LCCOMB_X25_Y18_N24
\comp|adder|adder_i:3:adder|add_sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp|adder|adder_i:3:adder|add_sum~0_combout\ = y_op(3) $ (\operator~combout\ $ (\comp|adder|adder_i:2:adder|add_cout~0_combout\ $ (x_op(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_op(3),
	datab => \operator~combout\,
	datac => \comp|adder|adder_i:2:adder|add_cout~0_combout\,
	datad => x_op(3),
	combout => \comp|adder|adder_i:3:adder|add_sum~0_combout\);

-- Location: LCCOMB_X19_Y18_N8
\MS[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MS[3]~4_combout\ = (\y_input[3]~input_o\ & ((\MS[9]~1_combout\) # ((\x_input[3]~input_o\ & !\ES[0]~7_combout\)))) # (!\y_input[3]~input_o\ & (\x_input[3]~input_o\ & ((!\ES[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[3]~input_o\,
	datab => \x_input[3]~input_o\,
	datac => \MS[9]~1_combout\,
	datad => \ES[0]~7_combout\,
	combout => \MS[3]~4_combout\);

-- Location: LCCOMB_X19_Y18_N18
\MS[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- MS(3) = (!\process_0~7_combout\ & ((GLOBAL(\SS~3clkctrl_outclk\) & (\MS[3]~4_combout\)) # (!GLOBAL(\SS~3clkctrl_outclk\) & ((MS(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MS[3]~4_combout\,
	datab => MS(3),
	datac => \process_0~7_combout\,
	datad => \SS~3clkctrl_outclk\,
	combout => MS(3));

-- Location: LCCOMB_X19_Y18_N30
\output~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~3_combout\ = (\norm~combout\ & (\comp|adder|adder_i:3:adder|add_sum~0_combout\)) # (!\norm~combout\ & ((MS(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|adder|adder_i:3:adder|add_sum~0_combout\,
	datab => \norm~combout\,
	datad => MS(3),
	combout => \output~3_combout\);

-- Location: LCCOMB_X19_Y19_N28
\MS[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MS[4]~5_combout\ = (\y_input[4]~input_o\ & ((\MS[9]~1_combout\) # ((!\ES[0]~7_combout\ & \x_input[4]~input_o\)))) # (!\y_input[4]~input_o\ & (!\ES[0]~7_combout\ & (\x_input[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[4]~input_o\,
	datab => \ES[0]~7_combout\,
	datac => \x_input[4]~input_o\,
	datad => \MS[9]~1_combout\,
	combout => \MS[4]~5_combout\);

-- Location: LCCOMB_X19_Y19_N16
\MS[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- MS(4) = (!\process_0~7_combout\ & ((GLOBAL(\SS~3clkctrl_outclk\) & ((\MS[4]~5_combout\))) # (!GLOBAL(\SS~3clkctrl_outclk\) & (MS(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS~3clkctrl_outclk\,
	datab => MS(4),
	datac => \process_0~7_combout\,
	datad => \MS[4]~5_combout\,
	combout => MS(4));

-- Location: LCCOMB_X23_Y19_N8
\x_man_up~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~45_combout\ = (\y_input[6]~input_o\ & ((\Decoder1~9_combout\) # ((\y_input[7]~input_o\ & \Decoder1~8_combout\)))) # (!\y_input[6]~input_o\ & (\y_input[7]~input_o\ & ((\Decoder1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[6]~input_o\,
	datab => \y_input[7]~input_o\,
	datac => \Decoder1~9_combout\,
	datad => \Decoder1~8_combout\,
	combout => \x_man_up~45_combout\);

-- Location: LCCOMB_X23_Y19_N6
\x_man_up~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~44_combout\ = (\y_input[8]~input_o\ & ((\Decoder1~7_combout\) # ((\y_input[9]~input_o\ & \Decoder1~6_combout\)))) # (!\y_input[8]~input_o\ & (\y_input[9]~input_o\ & ((\Decoder1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[8]~input_o\,
	datab => \y_input[9]~input_o\,
	datac => \Decoder1~7_combout\,
	datad => \Decoder1~6_combout\,
	combout => \x_man_up~44_combout\);

-- Location: LCCOMB_X23_Y19_N2
\x_man_up~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~46_combout\ = (\x_man_up~45_combout\) # ((\x_man_up~44_combout\) # ((\Decoder1~1_combout\ & \y_input[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~1_combout\,
	datab => \y_input[4]~input_o\,
	datac => \x_man_up~45_combout\,
	datad => \x_man_up~44_combout\,
	combout => \x_man_up~46_combout\);

-- Location: LCCOMB_X23_Y19_N4
\x_man_up~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~47_combout\ = (\Equal13~2_combout\ & (\y_input[5]~input_o\)) # (!\Equal13~2_combout\ & ((\x_man_up~46_combout\) # ((\y_input[5]~input_o\ & \Decoder1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[5]~input_o\,
	datab => \Decoder1~0_combout\,
	datac => \Equal13~2_combout\,
	datad => \x_man_up~46_combout\,
	combout => \x_man_up~47_combout\);

-- Location: LCCOMB_X23_Y19_N18
\x_man_up~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~48_combout\ = (dif_exp(2) & (dif_exp(1) $ (!\x_man_up~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(2),
	datab => dif_exp(1),
	datac => \x_man_up~47_combout\,
	combout => \x_man_up~48_combout\);

-- Location: LCCOMB_X23_Y19_N28
\x_man_up~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~49_combout\ = (\x_man_up~48_combout\ & ((dif_exp(0) & (!dif_exp(3))) # (!dif_exp(0) & ((\x_man_up~47_combout\))))) # (!\x_man_up~48_combout\ & (((dif_exp(3) & \x_man_up~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(0),
	datab => dif_exp(3),
	datac => \x_man_up~47_combout\,
	datad => \x_man_up~48_combout\,
	combout => \x_man_up~49_combout\);

-- Location: LCCOMB_X23_Y19_N20
\x_man_up~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~76_combout\ = \x_man_up~47_combout\ $ (((\x_man_up~49_combout\ & ((!\Equal13~1_combout\) # (!\Equal13~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => \Equal13~1_combout\,
	datac => \x_man_up~47_combout\,
	datad => \x_man_up~49_combout\,
	combout => \x_man_up~76_combout\);

-- Location: LCCOMB_X23_Y19_N10
\y_man_up[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_man_up[4]~5_combout\ = (\LessThan6~3_combout\ & ((\x_man_up~76_combout\))) # (!\LessThan6~3_combout\ & (\y_input[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~3_combout\,
	datab => \y_input[4]~input_o\,
	datad => \x_man_up~76_combout\,
	combout => \y_man_up[4]~5_combout\);

-- Location: LCCOMB_X22_Y19_N20
\y_man_up[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- y_man_up(4) = (GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & ((\y_man_up[4]~5_combout\))) # (!GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & (y_man_up(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_man_up(4),
	datac => \y_man_up[4]~5_combout\,
	datad => \x_man_up[9]~32clkctrl_outclk\,
	combout => y_man_up(4));

-- Location: LCCOMB_X23_Y19_N22
\x_man_up[4]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up[4]~77_combout\ = (\LessThan6~3_combout\ & (\x_input[4]~input_o\)) # (!\LessThan6~3_combout\ & ((\LessThan7~4_combout\ & ((\x_man_up~76_combout\))) # (!\LessThan7~4_combout\ & (\x_input[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~3_combout\,
	datab => \x_input[4]~input_o\,
	datac => \LessThan7~4_combout\,
	datad => \x_man_up~76_combout\,
	combout => \x_man_up[4]~77_combout\);

-- Location: LCCOMB_X23_Y19_N26
\x_man_up[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- x_man_up(4) = (GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & ((\x_man_up[4]~77_combout\))) # (!GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & (x_man_up(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_man_up(4),
	datac => \x_man_up[4]~77_combout\,
	datad => \x_man_up[9]~32clkctrl_outclk\,
	combout => x_man_up(4));

-- Location: LCCOMB_X22_Y19_N10
\y_op[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_op[4]~4_combout\ = (\x_input[15]~input_o\ & ((\y_input[15]~input_o\ & (y_man_up(4))) # (!\y_input[15]~input_o\ & ((x_man_up(4)))))) # (!\x_input[15]~input_o\ & (((y_man_up(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[15]~input_o\,
	datab => \y_input[15]~input_o\,
	datac => y_man_up(4),
	datad => x_man_up(4),
	combout => \y_op[4]~4_combout\);

-- Location: LCCOMB_X22_Y19_N30
\y_op[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- y_op(4) = (GLOBAL(\norm~clkctrl_outclk\) & ((\y_op[4]~4_combout\))) # (!GLOBAL(\norm~clkctrl_outclk\) & (y_op(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_op(4),
	datac => \norm~clkctrl_outclk\,
	datad => \y_op[4]~4_combout\,
	combout => y_op(4));

-- Location: LCCOMB_X22_Y19_N12
\x_op[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_op[4]~4_combout\ = (\x_input[15]~input_o\ & ((\y_input[15]~input_o\ & ((x_man_up(4)))) # (!\y_input[15]~input_o\ & (y_man_up(4))))) # (!\x_input[15]~input_o\ & (((x_man_up(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[15]~input_o\,
	datab => \y_input[15]~input_o\,
	datac => y_man_up(4),
	datad => x_man_up(4),
	combout => \x_op[4]~4_combout\);

-- Location: LCCOMB_X22_Y19_N4
\x_op[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- x_op(4) = (GLOBAL(\norm~clkctrl_outclk\) & ((\x_op[4]~4_combout\))) # (!GLOBAL(\norm~clkctrl_outclk\) & (x_op(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_op(4),
	datac => \norm~clkctrl_outclk\,
	datad => \x_op[4]~4_combout\,
	combout => x_op(4));

-- Location: LCCOMB_X25_Y18_N14
\comp|adder|adder_i:3:adder|add_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp|adder|adder_i:3:adder|add_cout~0_combout\ = (\comp|adder|adder_i:2:adder|add_cout~0_combout\ & ((x_op(3)) # (y_op(3) $ (\operator~combout\)))) # (!\comp|adder|adder_i:2:adder|add_cout~0_combout\ & (x_op(3) & (y_op(3) $ (\operator~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_op(3),
	datab => \operator~combout\,
	datac => \comp|adder|adder_i:2:adder|add_cout~0_combout\,
	datad => x_op(3),
	combout => \comp|adder|adder_i:3:adder|add_cout~0_combout\);

-- Location: LCCOMB_X22_Y19_N28
\comp|adder|adder_i:4:adder|add_sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp|adder|adder_i:4:adder|add_sum~0_combout\ = y_op(4) $ (\operator~combout\ $ (x_op(4) $ (\comp|adder|adder_i:3:adder|add_cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_op(4),
	datab => \operator~combout\,
	datac => x_op(4),
	datad => \comp|adder|adder_i:3:adder|add_cout~0_combout\,
	combout => \comp|adder|adder_i:4:adder|add_sum~0_combout\);

-- Location: LCCOMB_X19_Y19_N12
\output~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~4_combout\ = (\norm~combout\ & ((\comp|adder|adder_i:4:adder|add_sum~0_combout\))) # (!\norm~combout\ & (MS(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => MS(4),
	datac => \norm~combout\,
	datad => \comp|adder|adder_i:4:adder|add_sum~0_combout\,
	combout => \output~4_combout\);

-- Location: LCCOMB_X19_Y19_N22
\MS[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MS[5]~6_combout\ = (\ES[0]~7_combout\ & (\y_input[5]~input_o\ & ((\MS[9]~1_combout\)))) # (!\ES[0]~7_combout\ & ((\x_input[5]~input_o\) # ((\y_input[5]~input_o\ & \MS[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ES[0]~7_combout\,
	datab => \y_input[5]~input_o\,
	datac => \x_input[5]~input_o\,
	datad => \MS[9]~1_combout\,
	combout => \MS[5]~6_combout\);

-- Location: LCCOMB_X19_Y19_N18
\MS[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- MS(5) = (!\process_0~7_combout\ & ((GLOBAL(\SS~3clkctrl_outclk\) & ((\MS[5]~6_combout\))) # (!GLOBAL(\SS~3clkctrl_outclk\) & (MS(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MS(5),
	datab => \MS[5]~6_combout\,
	datac => \process_0~7_combout\,
	datad => \SS~3clkctrl_outclk\,
	combout => MS(5));

-- Location: LCCOMB_X22_Y19_N18
\comp|adder|adder_i:4:adder|add_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp|adder|adder_i:4:adder|add_cout~0_combout\ = (x_op(4) & ((\comp|adder|adder_i:3:adder|add_cout~0_combout\) # (y_op(4) $ (\operator~combout\)))) # (!x_op(4) & (\comp|adder|adder_i:3:adder|add_cout~0_combout\ & (y_op(4) $ (\operator~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_op(4),
	datab => \operator~combout\,
	datac => x_op(4),
	datad => \comp|adder|adder_i:3:adder|add_cout~0_combout\,
	combout => \comp|adder|adder_i:4:adder|add_cout~0_combout\);

-- Location: LCCOMB_X23_Y21_N10
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (dif_exp(3) & (((!dif_exp(1)) # (!dif_exp(2))) # (!dif_exp(0)))) # (!dif_exp(3) & (((dif_exp(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(3),
	datab => dif_exp(0),
	datac => dif_exp(2),
	datad => dif_exp(1),
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X23_Y21_N18
\x_man_up~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~53_combout\ = (!\WideOr2~0_combout\ & \Decoder1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datad => \Decoder1~0_combout\,
	combout => \x_man_up~53_combout\);

-- Location: LCCOMB_X23_Y21_N8
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!dif_exp(3) & (!dif_exp(0) & (dif_exp(2) & !dif_exp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(3),
	datab => dif_exp(0),
	datac => dif_exp(2),
	datad => dif_exp(1),
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X23_Y21_N30
\x_man_up~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~50_combout\ = (\y_input[9]~input_o\ & ((\Decoder1~7_combout\) # ((\y_input[8]~input_o\ & \Decoder1~8_combout\)))) # (!\y_input[9]~input_o\ & (\y_input[8]~input_o\ & ((\Decoder1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[9]~input_o\,
	datab => \y_input[8]~input_o\,
	datac => \Decoder1~7_combout\,
	datad => \Decoder1~8_combout\,
	combout => \x_man_up~50_combout\);

-- Location: LCCOMB_X23_Y21_N28
\x_man_up~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~51_combout\ = (\y_input[5]~input_o\ & ((\Decoder1~1_combout\) # ((\y_input[7]~input_o\ & \Decoder1~9_combout\)))) # (!\y_input[5]~input_o\ & (\y_input[7]~input_o\ & ((\Decoder1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[5]~input_o\,
	datab => \y_input[7]~input_o\,
	datac => \Decoder1~1_combout\,
	datad => \Decoder1~9_combout\,
	combout => \x_man_up~51_combout\);

-- Location: LCCOMB_X23_Y21_N16
\x_man_up~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~52_combout\ = (\WideOr2~0_combout\ & (\Decoder0~1_combout\)) # (!\WideOr2~0_combout\ & (((\x_man_up~50_combout\) # (\x_man_up~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datab => \Decoder0~1_combout\,
	datac => \x_man_up~50_combout\,
	datad => \x_man_up~51_combout\,
	combout => \x_man_up~52_combout\);

-- Location: LCCOMB_X23_Y19_N16
\x_man_up~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~54_combout\ = (\Equal13~2_combout\ & (\y_input[6]~input_o\)) # (!\Equal13~2_combout\ & ((\x_man_up~52_combout\) # ((\y_input[6]~input_o\ & \x_man_up~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[6]~input_o\,
	datab => \x_man_up~53_combout\,
	datac => \Equal13~2_combout\,
	datad => \x_man_up~52_combout\,
	combout => \x_man_up~54_combout\);

-- Location: LCCOMB_X23_Y19_N12
\x_man_up[5]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up[5]~78_combout\ = (\LessThan6~3_combout\ & (\x_input[5]~input_o\)) # (!\LessThan6~3_combout\ & ((\LessThan7~4_combout\ & ((\x_man_up~54_combout\))) # (!\LessThan7~4_combout\ & (\x_input[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~3_combout\,
	datab => \x_input[5]~input_o\,
	datac => \LessThan7~4_combout\,
	datad => \x_man_up~54_combout\,
	combout => \x_man_up[5]~78_combout\);

-- Location: LCCOMB_X22_Y19_N22
\x_man_up[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- x_man_up(5) = (GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & ((\x_man_up[5]~78_combout\))) # (!GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & (x_man_up(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_man_up(5),
	datac => \x_man_up[5]~78_combout\,
	datad => \x_man_up[9]~32clkctrl_outclk\,
	combout => x_man_up(5));

-- Location: LCCOMB_X23_Y19_N14
\y_man_up[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_man_up[5]~6_combout\ = (\LessThan6~3_combout\ & ((\x_man_up~54_combout\))) # (!\LessThan6~3_combout\ & (\y_input[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[5]~input_o\,
	datab => \LessThan6~3_combout\,
	datad => \x_man_up~54_combout\,
	combout => \y_man_up[5]~6_combout\);

-- Location: LCCOMB_X22_Y19_N0
\y_man_up[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- y_man_up(5) = (GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & ((\y_man_up[5]~6_combout\))) # (!GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & (y_man_up(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_man_up(5),
	datac => \y_man_up[5]~6_combout\,
	datad => \x_man_up[9]~32clkctrl_outclk\,
	combout => y_man_up(5));

-- Location: LCCOMB_X22_Y19_N24
\x_op[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_op[5]~5_combout\ = (\x_input[15]~input_o\ & ((\y_input[15]~input_o\ & (x_man_up(5))) # (!\y_input[15]~input_o\ & ((y_man_up(5)))))) # (!\x_input[15]~input_o\ & (((x_man_up(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[15]~input_o\,
	datab => \y_input[15]~input_o\,
	datac => x_man_up(5),
	datad => y_man_up(5),
	combout => \x_op[5]~5_combout\);

-- Location: LCCOMB_X22_Y19_N16
\x_op[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- x_op(5) = (GLOBAL(\norm~clkctrl_outclk\) & ((\x_op[5]~5_combout\))) # (!GLOBAL(\norm~clkctrl_outclk\) & (x_op(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_op(5),
	datac => \norm~clkctrl_outclk\,
	datad => \x_op[5]~5_combout\,
	combout => x_op(5));

-- Location: LCCOMB_X22_Y19_N6
\y_op[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_op[5]~5_combout\ = (\x_input[15]~input_o\ & ((\y_input[15]~input_o\ & ((y_man_up(5)))) # (!\y_input[15]~input_o\ & (x_man_up(5))))) # (!\x_input[15]~input_o\ & (((y_man_up(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[15]~input_o\,
	datab => \y_input[15]~input_o\,
	datac => x_man_up(5),
	datad => y_man_up(5),
	combout => \y_op[5]~5_combout\);

-- Location: LCCOMB_X22_Y19_N14
\y_op[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- y_op(5) = (GLOBAL(\norm~clkctrl_outclk\) & ((\y_op[5]~5_combout\))) # (!GLOBAL(\norm~clkctrl_outclk\) & (y_op(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_op(5),
	datac => \norm~clkctrl_outclk\,
	datad => \y_op[5]~5_combout\,
	combout => y_op(5));

-- Location: LCCOMB_X22_Y19_N8
\comp|adder|adder_i:5:adder|add_sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp|adder|adder_i:5:adder|add_sum~0_combout\ = \comp|adder|adder_i:4:adder|add_cout~0_combout\ $ (x_op(5) $ (y_op(5) $ (\operator~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|adder|adder_i:4:adder|add_cout~0_combout\,
	datab => x_op(5),
	datac => y_op(5),
	datad => \operator~combout\,
	combout => \comp|adder|adder_i:5:adder|add_sum~0_combout\);

-- Location: LCCOMB_X19_Y19_N14
\output~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~5_combout\ = (\norm~combout\ & ((\comp|adder|adder_i:5:adder|add_sum~0_combout\))) # (!\norm~combout\ & (MS(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => MS(5),
	datac => \norm~combout\,
	datad => \comp|adder|adder_i:5:adder|add_sum~0_combout\,
	combout => \output~5_combout\);

-- Location: LCCOMB_X19_Y19_N20
\MS[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MS[6]~7_combout\ = (\y_input[6]~input_o\ & ((\MS[9]~1_combout\) # ((!\ES[0]~7_combout\ & \x_input[6]~input_o\)))) # (!\y_input[6]~input_o\ & (!\ES[0]~7_combout\ & (\x_input[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[6]~input_o\,
	datab => \ES[0]~7_combout\,
	datac => \x_input[6]~input_o\,
	datad => \MS[9]~1_combout\,
	combout => \MS[6]~7_combout\);

-- Location: LCCOMB_X19_Y19_N24
\MS[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- MS(6) = (!\process_0~7_combout\ & ((GLOBAL(\SS~3clkctrl_outclk\) & ((\MS[6]~7_combout\))) # (!GLOBAL(\SS~3clkctrl_outclk\) & (MS(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS~3clkctrl_outclk\,
	datab => MS(6),
	datac => \process_0~7_combout\,
	datad => \MS[6]~7_combout\,
	combout => MS(6));

-- Location: LCCOMB_X25_Y19_N18
\x_man_up~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~55_combout\ = (\y_input[9]~input_o\ & ((\Decoder1~8_combout\) # ((\y_input[8]~input_o\ & \Decoder1~9_combout\)))) # (!\y_input[9]~input_o\ & (\y_input[8]~input_o\ & ((\Decoder1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[9]~input_o\,
	datab => \y_input[8]~input_o\,
	datac => \Decoder1~8_combout\,
	datad => \Decoder1~9_combout\,
	combout => \x_man_up~55_combout\);

-- Location: LCCOMB_X25_Y19_N4
\x_man_up~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~56_combout\ = (\x_man_up~55_combout\) # ((\Decoder1~1_combout\ & \y_input[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder1~1_combout\,
	datac => \y_input[6]~input_o\,
	datad => \x_man_up~55_combout\,
	combout => \x_man_up~56_combout\);

-- Location: LCCOMB_X25_Y19_N6
\x_man_up~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~57_combout\ = (\Equal13~2_combout\ & (\y_input[7]~input_o\)) # (!\Equal13~2_combout\ & ((\x_man_up~56_combout\) # ((\y_input[7]~input_o\ & \Decoder1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[7]~input_o\,
	datab => \Decoder1~0_combout\,
	datac => \x_man_up~56_combout\,
	datad => \Equal13~2_combout\,
	combout => \x_man_up~57_combout\);

-- Location: LCCOMB_X25_Y19_N12
\x_man_up~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~58_combout\ = (dif_exp(0) & dif_exp(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dif_exp(0),
	datad => dif_exp(1),
	combout => \x_man_up~58_combout\);

-- Location: LCCOMB_X25_Y19_N10
\x_man_up~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~59_combout\ = (dif_exp(3) & (\x_man_up~57_combout\ & ((!\x_man_up~58_combout\) # (!dif_exp(2))))) # (!dif_exp(3) & ((dif_exp(2) & ((\x_man_up~57_combout\))) # (!dif_exp(2) & (\x_man_up~58_combout\ & !\x_man_up~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(3),
	datab => dif_exp(2),
	datac => \x_man_up~58_combout\,
	datad => \x_man_up~57_combout\,
	combout => \x_man_up~59_combout\);

-- Location: LCCOMB_X26_Y19_N26
\x_man_up~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~79_combout\ = \x_man_up~57_combout\ $ (((\x_man_up~59_combout\ & ((!\Equal13~0_combout\) # (!\Equal13~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~1_combout\,
	datab => \Equal13~0_combout\,
	datac => \x_man_up~57_combout\,
	datad => \x_man_up~59_combout\,
	combout => \x_man_up~79_combout\);

-- Location: LCCOMB_X26_Y19_N8
\y_man_up[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_man_up[6]~7_combout\ = (\LessThan6~3_combout\ & ((\x_man_up~79_combout\))) # (!\LessThan6~3_combout\ & (\y_input[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~3_combout\,
	datac => \y_input[6]~input_o\,
	datad => \x_man_up~79_combout\,
	combout => \y_man_up[6]~7_combout\);

-- Location: LCCOMB_X26_Y19_N4
\y_man_up[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- y_man_up(6) = (GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & ((\y_man_up[6]~7_combout\))) # (!GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & (y_man_up(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_man_up(6),
	datac => \y_man_up[6]~7_combout\,
	datad => \x_man_up[9]~32clkctrl_outclk\,
	combout => y_man_up(6));

-- Location: LCCOMB_X26_Y19_N24
\x_man_up[6]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up[6]~80_combout\ = (\LessThan6~3_combout\ & (\x_input[6]~input_o\)) # (!\LessThan6~3_combout\ & ((\LessThan7~4_combout\ & ((\x_man_up~79_combout\))) # (!\LessThan7~4_combout\ & (\x_input[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~3_combout\,
	datab => \x_input[6]~input_o\,
	datac => \LessThan7~4_combout\,
	datad => \x_man_up~79_combout\,
	combout => \x_man_up[6]~80_combout\);

-- Location: LCCOMB_X26_Y19_N6
\x_man_up[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- x_man_up(6) = (GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & ((\x_man_up[6]~80_combout\))) # (!GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & (x_man_up(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_man_up(6),
	datab => \x_man_up[6]~80_combout\,
	datad => \x_man_up[9]~32clkctrl_outclk\,
	combout => x_man_up(6));

-- Location: LCCOMB_X26_Y19_N20
\x_op[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_op[6]~6_combout\ = (\y_input[15]~input_o\ & (((x_man_up(6))))) # (!\y_input[15]~input_o\ & ((\x_input[15]~input_o\ & (y_man_up(6))) # (!\x_input[15]~input_o\ & ((x_man_up(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[15]~input_o\,
	datab => \x_input[15]~input_o\,
	datac => y_man_up(6),
	datad => x_man_up(6),
	combout => \x_op[6]~6_combout\);

-- Location: LCCOMB_X26_Y19_N22
\x_op[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- x_op(6) = (GLOBAL(\norm~clkctrl_outclk\) & ((\x_op[6]~6_combout\))) # (!GLOBAL(\norm~clkctrl_outclk\) & (x_op(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_op(6),
	datac => \norm~clkctrl_outclk\,
	datad => \x_op[6]~6_combout\,
	combout => x_op(6));

-- Location: LCCOMB_X26_Y19_N2
\y_op[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_op[6]~6_combout\ = (\y_input[15]~input_o\ & (((y_man_up(6))))) # (!\y_input[15]~input_o\ & ((\x_input[15]~input_o\ & ((x_man_up(6)))) # (!\x_input[15]~input_o\ & (y_man_up(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[15]~input_o\,
	datab => \x_input[15]~input_o\,
	datac => y_man_up(6),
	datad => x_man_up(6),
	combout => \y_op[6]~6_combout\);

-- Location: LCCOMB_X26_Y19_N16
\y_op[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- y_op(6) = (GLOBAL(\norm~clkctrl_outclk\) & ((\y_op[6]~6_combout\))) # (!GLOBAL(\norm~clkctrl_outclk\) & (y_op(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_op(6),
	datac => \norm~clkctrl_outclk\,
	datad => \y_op[6]~6_combout\,
	combout => y_op(6));

-- Location: LCCOMB_X22_Y19_N26
\comp|adder|adder_i:5:adder|add_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp|adder|adder_i:5:adder|add_cout~0_combout\ = (\comp|adder|adder_i:4:adder|add_cout~0_combout\ & ((x_op(5)) # (y_op(5) $ (\operator~combout\)))) # (!\comp|adder|adder_i:4:adder|add_cout~0_combout\ & (x_op(5) & (y_op(5) $ (\operator~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|adder|adder_i:4:adder|add_cout~0_combout\,
	datab => x_op(5),
	datac => y_op(5),
	datad => \operator~combout\,
	combout => \comp|adder|adder_i:5:adder|add_cout~0_combout\);

-- Location: LCCOMB_X26_Y19_N28
\comp|adder|adder_i:6:adder|add_sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp|adder|adder_i:6:adder|add_sum~0_combout\ = x_op(6) $ (y_op(6) $ (\comp|adder|adder_i:5:adder|add_cout~0_combout\ $ (\operator~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_op(6),
	datab => y_op(6),
	datac => \comp|adder|adder_i:5:adder|add_cout~0_combout\,
	datad => \operator~combout\,
	combout => \comp|adder|adder_i:6:adder|add_sum~0_combout\);

-- Location: LCCOMB_X19_Y19_N8
\output~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~6_combout\ = (\norm~combout\ & ((\comp|adder|adder_i:6:adder|add_sum~0_combout\))) # (!\norm~combout\ & (MS(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => MS(6),
	datac => \norm~combout\,
	datad => \comp|adder|adder_i:6:adder|add_sum~0_combout\,
	combout => \output~6_combout\);

-- Location: LCCOMB_X19_Y19_N30
\MS[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MS[7]~8_combout\ = (\ES[0]~7_combout\ & (((\y_input[7]~input_o\ & \MS[9]~1_combout\)))) # (!\ES[0]~7_combout\ & ((\x_input[7]~input_o\) # ((\y_input[7]~input_o\ & \MS[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ES[0]~7_combout\,
	datab => \x_input[7]~input_o\,
	datac => \y_input[7]~input_o\,
	datad => \MS[9]~1_combout\,
	combout => \MS[7]~8_combout\);

-- Location: LCCOMB_X19_Y19_N2
\MS[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- MS(7) = (!\process_0~7_combout\ & ((GLOBAL(\SS~3clkctrl_outclk\) & ((\MS[7]~8_combout\))) # (!GLOBAL(\SS~3clkctrl_outclk\) & (MS(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS~3clkctrl_outclk\,
	datab => MS(7),
	datac => \process_0~7_combout\,
	datad => \MS[7]~8_combout\,
	combout => MS(7));

-- Location: LCCOMB_X25_Y19_N14
\x_man_up~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~81_combout\ = (\Equal13~0_combout\ & ((\Equal13~1_combout\ & ((\y_input[8]~input_o\))) # (!\Equal13~1_combout\ & (dif_exp(3))))) # (!\Equal13~0_combout\ & (dif_exp(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(3),
	datab => \y_input[8]~input_o\,
	datac => \Equal13~0_combout\,
	datad => \Equal13~1_combout\,
	combout => \x_man_up~81_combout\);

-- Location: LCCOMB_X25_Y19_N20
\x_man_up~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~60_combout\ = (\Decoder1~1_combout\ & (\y_input[7]~input_o\)) # (!\Decoder1~1_combout\ & ((\Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder1~1_combout\,
	datac => \y_input[7]~input_o\,
	datad => \Decoder1~0_combout\,
	combout => \x_man_up~60_combout\);

-- Location: LCCOMB_X25_Y19_N2
\x_man_up~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~61_combout\ = (\Decoder1~1_combout\ & (((\x_man_up~60_combout\)))) # (!\Decoder1~1_combout\ & ((\x_man_up~60_combout\ & ((\y_input[8]~input_o\))) # (!\x_man_up~60_combout\ & (\y_input[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[9]~input_o\,
	datab => \Decoder1~1_combout\,
	datac => \y_input[8]~input_o\,
	datad => \x_man_up~60_combout\,
	combout => \x_man_up~61_combout\);

-- Location: LCCOMB_X25_Y19_N0
\x_man_up~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~62_combout\ = (dif_exp(1) & ((dif_exp(0) & (\x_man_up~81_combout\ & \x_man_up~61_combout\)) # (!dif_exp(0) & (!\x_man_up~81_combout\)))) # (!dif_exp(1) & (((!\x_man_up~81_combout\ & \x_man_up~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(1),
	datab => dif_exp(0),
	datac => \x_man_up~81_combout\,
	datad => \x_man_up~61_combout\,
	combout => \x_man_up~62_combout\);

-- Location: LCCOMB_X25_Y19_N22
\x_man_up~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~63_combout\ = (\Equal13~2_combout\ & (((\x_man_up~81_combout\)))) # (!\Equal13~2_combout\ & (\x_man_up~62_combout\ & (dif_exp(2) $ (!\x_man_up~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(2),
	datab => \Equal13~2_combout\,
	datac => \x_man_up~81_combout\,
	datad => \x_man_up~62_combout\,
	combout => \x_man_up~63_combout\);

-- Location: LCCOMB_X21_Y19_N12
\x_man_up[7]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up[7]~82_combout\ = (\LessThan6~3_combout\ & (\x_input[7]~input_o\)) # (!\LessThan6~3_combout\ & ((\LessThan7~4_combout\ & ((\x_man_up~63_combout\))) # (!\LessThan7~4_combout\ & (\x_input[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[7]~input_o\,
	datab => \LessThan6~3_combout\,
	datac => \LessThan7~4_combout\,
	datad => \x_man_up~63_combout\,
	combout => \x_man_up[7]~82_combout\);

-- Location: LCCOMB_X21_Y19_N4
\x_man_up[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- x_man_up(7) = (GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & (\x_man_up[7]~82_combout\)) # (!GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & ((x_man_up(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_man_up[7]~82_combout\,
	datac => x_man_up(7),
	datad => \x_man_up[9]~32clkctrl_outclk\,
	combout => x_man_up(7));

-- Location: LCCOMB_X21_Y19_N30
\y_man_up[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_man_up[7]~8_combout\ = (\LessThan6~3_combout\ & ((\x_man_up~63_combout\))) # (!\LessThan6~3_combout\ & (\y_input[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan6~3_combout\,
	datac => \y_input[7]~input_o\,
	datad => \x_man_up~63_combout\,
	combout => \y_man_up[7]~8_combout\);

-- Location: LCCOMB_X21_Y19_N10
\y_man_up[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- y_man_up(7) = (GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & ((\y_man_up[7]~8_combout\))) # (!GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & (y_man_up(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_man_up(7),
	datac => \y_man_up[7]~8_combout\,
	datad => \x_man_up[9]~32clkctrl_outclk\,
	combout => y_man_up(7));

-- Location: LCCOMB_X21_Y19_N20
\y_op[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_op[7]~7_combout\ = (\x_input[15]~input_o\ & ((\y_input[15]~input_o\ & ((y_man_up(7)))) # (!\y_input[15]~input_o\ & (x_man_up(7))))) # (!\x_input[15]~input_o\ & (((y_man_up(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[15]~input_o\,
	datab => \y_input[15]~input_o\,
	datac => x_man_up(7),
	datad => y_man_up(7),
	combout => \y_op[7]~7_combout\);

-- Location: LCCOMB_X21_Y19_N26
\y_op[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- y_op(7) = (GLOBAL(\norm~clkctrl_outclk\) & ((\y_op[7]~7_combout\))) # (!GLOBAL(\norm~clkctrl_outclk\) & (y_op(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_op(7),
	datac => \norm~clkctrl_outclk\,
	datad => \y_op[7]~7_combout\,
	combout => y_op(7));

-- Location: LCCOMB_X21_Y19_N6
\x_op[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_op[7]~7_combout\ = (\x_input[15]~input_o\ & ((\y_input[15]~input_o\ & (x_man_up(7))) # (!\y_input[15]~input_o\ & ((y_man_up(7)))))) # (!\x_input[15]~input_o\ & (((x_man_up(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[15]~input_o\,
	datab => \y_input[15]~input_o\,
	datac => x_man_up(7),
	datad => y_man_up(7),
	combout => \x_op[7]~7_combout\);

-- Location: LCCOMB_X21_Y19_N28
\x_op[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- x_op(7) = (GLOBAL(\norm~clkctrl_outclk\) & ((\x_op[7]~7_combout\))) # (!GLOBAL(\norm~clkctrl_outclk\) & (x_op(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_op(7),
	datac => \norm~clkctrl_outclk\,
	datad => \x_op[7]~7_combout\,
	combout => x_op(7));

-- Location: LCCOMB_X26_Y19_N30
\comp|adder|adder_i:6:adder|add_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp|adder|adder_i:6:adder|add_cout~0_combout\ = (x_op(6) & ((\comp|adder|adder_i:5:adder|add_cout~0_combout\) # (y_op(6) $ (\operator~combout\)))) # (!x_op(6) & (\comp|adder|adder_i:5:adder|add_cout~0_combout\ & (y_op(6) $ (\operator~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_op(6),
	datab => y_op(6),
	datac => \comp|adder|adder_i:5:adder|add_cout~0_combout\,
	datad => \operator~combout\,
	combout => \comp|adder|adder_i:6:adder|add_cout~0_combout\);

-- Location: LCCOMB_X21_Y19_N24
\comp|adder|adder_i:7:adder|add_sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp|adder|adder_i:7:adder|add_sum~0_combout\ = y_op(7) $ (x_op(7) $ (\comp|adder|adder_i:6:adder|add_cout~0_combout\ $ (\operator~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_op(7),
	datab => x_op(7),
	datac => \comp|adder|adder_i:6:adder|add_cout~0_combout\,
	datad => \operator~combout\,
	combout => \comp|adder|adder_i:7:adder|add_sum~0_combout\);

-- Location: LCCOMB_X19_Y19_N10
\output~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~7_combout\ = (\norm~combout\ & ((\comp|adder|adder_i:7:adder|add_sum~0_combout\))) # (!\norm~combout\ & (MS(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => MS(7),
	datac => \norm~combout\,
	datad => \comp|adder|adder_i:7:adder|add_sum~0_combout\,
	combout => \output~7_combout\);

-- Location: LCCOMB_X22_Y21_N28
\MS[8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MS[8]~9_combout\ = (\MS[9]~1_combout\ & ((\y_input[8]~input_o\) # ((!\ES[0]~7_combout\ & \x_input[8]~input_o\)))) # (!\MS[9]~1_combout\ & (((!\ES[0]~7_combout\ & \x_input[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MS[9]~1_combout\,
	datab => \y_input[8]~input_o\,
	datac => \ES[0]~7_combout\,
	datad => \x_input[8]~input_o\,
	combout => \MS[8]~9_combout\);

-- Location: LCCOMB_X22_Y21_N12
\MS[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- MS(8) = (!\process_0~7_combout\ & ((GLOBAL(\SS~3clkctrl_outclk\) & ((\MS[8]~9_combout\))) # (!GLOBAL(\SS~3clkctrl_outclk\) & (MS(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS~3clkctrl_outclk\,
	datab => MS(8),
	datac => \MS[8]~9_combout\,
	datad => \process_0~7_combout\,
	combout => MS(8));

-- Location: LCCOMB_X21_Y19_N22
\comp|adder|adder_i:7:adder|add_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp|adder|adder_i:7:adder|add_cout~0_combout\ = (x_op(7) & ((\comp|adder|adder_i:6:adder|add_cout~0_combout\) # (y_op(7) $ (\operator~combout\)))) # (!x_op(7) & (\comp|adder|adder_i:6:adder|add_cout~0_combout\ & (y_op(7) $ (\operator~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_op(7),
	datab => x_op(7),
	datac => \comp|adder|adder_i:6:adder|add_cout~0_combout\,
	datad => \operator~combout\,
	combout => \comp|adder|adder_i:7:adder|add_cout~0_combout\);

-- Location: LCCOMB_X25_Y20_N14
\x_man_up~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~64_combout\ = (dif_exp(2) & ((dif_exp(3)) # (!dif_exp(1)))) # (!dif_exp(2) & (!dif_exp(1) & dif_exp(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(2),
	datac => dif_exp(1),
	datad => dif_exp(3),
	combout => \x_man_up~64_combout\);

-- Location: LCCOMB_X25_Y20_N16
\x_man_up~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~65_combout\ = (dif_exp(1) & (\y_input[9]~input_o\ & ((!dif_exp(0)) # (!\x_man_up~64_combout\)))) # (!dif_exp(1) & ((\y_input[9]~input_o\ & (\x_man_up~64_combout\)) # (!\y_input[9]~input_o\ & (!\x_man_up~64_combout\ & dif_exp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(1),
	datab => \y_input[9]~input_o\,
	datac => \x_man_up~64_combout\,
	datad => dif_exp(0),
	combout => \x_man_up~65_combout\);

-- Location: LCCOMB_X25_Y20_N2
\x_man_up~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~83_combout\ = (\Decoder1~1_combout\ & (\Equal13~0_combout\ & (\Equal13~1_combout\))) # (!\Decoder1~1_combout\ & (\x_man_up~65_combout\ & ((!\Equal13~1_combout\) # (!\Equal13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => \Equal13~1_combout\,
	datac => \Decoder1~1_combout\,
	datad => \x_man_up~65_combout\,
	combout => \x_man_up~83_combout\);

-- Location: LCCOMB_X26_Y21_N8
\x_man_up~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up~66_combout\ = (\Decoder1~1_combout\ & ((\x_man_up~83_combout\ & ((\y_input[9]~input_o\))) # (!\x_man_up~83_combout\ & (\y_input[8]~input_o\)))) # (!\Decoder1~1_combout\ & ((\y_input[9]~input_o\ $ (\x_man_up~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[8]~input_o\,
	datab => \y_input[9]~input_o\,
	datac => \Decoder1~1_combout\,
	datad => \x_man_up~83_combout\,
	combout => \x_man_up~66_combout\);

-- Location: LCCOMB_X26_Y21_N20
\y_man_up[8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_man_up[8]~9_combout\ = (\LessThan6~3_combout\ & ((\x_man_up~66_combout\))) # (!\LessThan6~3_combout\ & (\y_input[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[8]~input_o\,
	datac => \LessThan6~3_combout\,
	datad => \x_man_up~66_combout\,
	combout => \y_man_up[8]~9_combout\);

-- Location: LCCOMB_X26_Y21_N4
\y_man_up[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- y_man_up(8) = (GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & (\y_man_up[8]~9_combout\)) # (!GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & ((y_man_up(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_man_up[8]~9_combout\,
	datac => y_man_up(8),
	datad => \x_man_up[9]~32clkctrl_outclk\,
	combout => y_man_up(8));

-- Location: LCCOMB_X26_Y21_N30
\x_man_up[8]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up[8]~67_combout\ = (\LessThan7~4_combout\ & ((\LessThan6~3_combout\ & (\x_input[8]~input_o\)) # (!\LessThan6~3_combout\ & ((\x_man_up~66_combout\))))) # (!\LessThan7~4_combout\ & (\x_input[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[8]~input_o\,
	datab => \LessThan7~4_combout\,
	datac => \LessThan6~3_combout\,
	datad => \x_man_up~66_combout\,
	combout => \x_man_up[8]~67_combout\);

-- Location: LCCOMB_X26_Y21_N18
\x_man_up[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- x_man_up(8) = (GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & ((\x_man_up[8]~67_combout\))) # (!GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & (x_man_up(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_man_up(8),
	datac => \x_man_up[8]~67_combout\,
	datad => \x_man_up[9]~32clkctrl_outclk\,
	combout => x_man_up(8));

-- Location: LCCOMB_X26_Y21_N10
\y_op[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_op[8]~8_combout\ = (\x_input[15]~input_o\ & ((\y_input[15]~input_o\ & (y_man_up(8))) # (!\y_input[15]~input_o\ & ((x_man_up(8)))))) # (!\x_input[15]~input_o\ & (((y_man_up(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[15]~input_o\,
	datab => \y_input[15]~input_o\,
	datac => y_man_up(8),
	datad => x_man_up(8),
	combout => \y_op[8]~8_combout\);

-- Location: LCCOMB_X26_Y21_N12
\y_op[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- y_op(8) = (GLOBAL(\norm~clkctrl_outclk\) & ((\y_op[8]~8_combout\))) # (!GLOBAL(\norm~clkctrl_outclk\) & (y_op(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_op(8),
	datac => \norm~clkctrl_outclk\,
	datad => \y_op[8]~8_combout\,
	combout => y_op(8));

-- Location: LCCOMB_X26_Y21_N16
\x_op[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_op[8]~8_combout\ = (\x_input[15]~input_o\ & ((\y_input[15]~input_o\ & ((x_man_up(8)))) # (!\y_input[15]~input_o\ & (y_man_up(8))))) # (!\x_input[15]~input_o\ & (((x_man_up(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[15]~input_o\,
	datab => \y_input[15]~input_o\,
	datac => y_man_up(8),
	datad => x_man_up(8),
	combout => \x_op[8]~8_combout\);

-- Location: LCCOMB_X26_Y21_N26
\x_op[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- x_op(8) = (GLOBAL(\norm~clkctrl_outclk\) & ((\x_op[8]~8_combout\))) # (!GLOBAL(\norm~clkctrl_outclk\) & (x_op(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_op(8),
	datac => \norm~clkctrl_outclk\,
	datad => \x_op[8]~8_combout\,
	combout => x_op(8));

-- Location: LCCOMB_X26_Y21_N24
\comp|adder|adder_i:8:adder|add_sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp|adder|adder_i:8:adder|add_sum~0_combout\ = \comp|adder|adder_i:7:adder|add_cout~0_combout\ $ (y_op(8) $ (x_op(8) $ (\operator~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|adder|adder_i:7:adder|add_cout~0_combout\,
	datab => y_op(8),
	datac => x_op(8),
	datad => \operator~combout\,
	combout => \comp|adder|adder_i:8:adder|add_sum~0_combout\);

-- Location: LCCOMB_X22_Y21_N24
\output~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~8_combout\ = (\norm~combout\ & ((\comp|adder|adder_i:8:adder|add_sum~0_combout\))) # (!\norm~combout\ & (MS(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MS(8),
	datac => \norm~combout\,
	datad => \comp|adder|adder_i:8:adder|add_sum~0_combout\,
	combout => \output~8_combout\);

-- Location: LCCOMB_X22_Y21_N14
\MS[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MS[9]~10_combout\ = (\MS[9]~1_combout\ & ((\y_input[9]~input_o\) # ((!\ES[0]~7_combout\ & \x_input[9]~input_o\)))) # (!\MS[9]~1_combout\ & (((!\ES[0]~7_combout\ & \x_input[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MS[9]~1_combout\,
	datab => \y_input[9]~input_o\,
	datac => \ES[0]~7_combout\,
	datad => \x_input[9]~input_o\,
	combout => \MS[9]~10_combout\);

-- Location: LCCOMB_X22_Y21_N18
\MS[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- MS(9) = (!\process_0~7_combout\ & ((GLOBAL(\SS~3clkctrl_outclk\) & ((\MS[9]~10_combout\))) # (!GLOBAL(\SS~3clkctrl_outclk\) & (MS(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS~3clkctrl_outclk\,
	datab => MS(9),
	datac => \MS[9]~10_combout\,
	datad => \process_0~7_combout\,
	combout => MS(9));

-- Location: LCCOMB_X25_Y19_N16
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!dif_exp(3) & (!dif_exp(1) & (!dif_exp(0) & !dif_exp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dif_exp(3),
	datab => dif_exp(1),
	datac => dif_exp(0),
	datad => dif_exp(2),
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X26_Y21_N22
\x_man_up[9]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up[9]~68_combout\ = (\Decoder1~1_combout\ & (\y_input[9]~input_o\)) # (!\Decoder1~1_combout\ & ((\Decoder0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_input[9]~input_o\,
	datac => \Decoder1~1_combout\,
	datad => \Decoder0~2_combout\,
	combout => \x_man_up[9]~68_combout\);

-- Location: LCCOMB_X26_Y21_N28
\x_man_up[9]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_man_up[9]~69_combout\ = (\LessThan7~4_combout\ & ((\LessThan6~3_combout\ & (\x_input[9]~input_o\)) # (!\LessThan6~3_combout\ & ((\x_man_up[9]~68_combout\))))) # (!\LessThan7~4_combout\ & (\x_input[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[9]~input_o\,
	datab => \LessThan7~4_combout\,
	datac => \LessThan6~3_combout\,
	datad => \x_man_up[9]~68_combout\,
	combout => \x_man_up[9]~69_combout\);

-- Location: LCCOMB_X18_Y20_N26
\x_man_up[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- x_man_up(9) = (GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & (\x_man_up[9]~69_combout\)) # (!GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & ((x_man_up(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x_man_up[9]~69_combout\,
	datac => x_man_up(9),
	datad => \x_man_up[9]~32clkctrl_outclk\,
	combout => x_man_up(9));

-- Location: LCCOMB_X25_Y20_N22
\y_man_up[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_man_up[9]~10_combout\ = (\Decoder1~1_combout\ & (\y_input[9]~input_o\)) # (!\Decoder1~1_combout\ & ((\LessThan6~3_combout\ & ((\Decoder0~2_combout\))) # (!\LessThan6~3_combout\ & (\y_input[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[9]~input_o\,
	datab => \Decoder1~1_combout\,
	datac => \Decoder0~2_combout\,
	datad => \LessThan6~3_combout\,
	combout => \y_man_up[9]~10_combout\);

-- Location: LCCOMB_X18_Y20_N12
\y_man_up[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- y_man_up(9) = (GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & ((\y_man_up[9]~10_combout\))) # (!GLOBAL(\x_man_up[9]~32clkctrl_outclk\) & (y_man_up(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_man_up(9),
	datac => \y_man_up[9]~10_combout\,
	datad => \x_man_up[9]~32clkctrl_outclk\,
	combout => y_man_up(9));

-- Location: LCCOMB_X18_Y20_N18
\x_op[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \x_op[9]~9_combout\ = (\y_input[15]~input_o\ & (((x_man_up(9))))) # (!\y_input[15]~input_o\ & ((\x_input[15]~input_o\ & ((y_man_up(9)))) # (!\x_input[15]~input_o\ & (x_man_up(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[15]~input_o\,
	datab => \x_input[15]~input_o\,
	datac => x_man_up(9),
	datad => y_man_up(9),
	combout => \x_op[9]~9_combout\);

-- Location: LCCOMB_X18_Y20_N2
\x_op[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- x_op(9) = (GLOBAL(\norm~clkctrl_outclk\) & ((\x_op[9]~9_combout\))) # (!GLOBAL(\norm~clkctrl_outclk\) & (x_op(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_op(9),
	datac => \norm~clkctrl_outclk\,
	datad => \x_op[9]~9_combout\,
	combout => x_op(9));

-- Location: LCCOMB_X26_Y21_N14
\comp|adder|adder_i:8:adder|add_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp|adder|adder_i:8:adder|add_cout~0_combout\ = (\comp|adder|adder_i:7:adder|add_cout~0_combout\ & ((x_op(8)) # (y_op(8) $ (\operator~combout\)))) # (!\comp|adder|adder_i:7:adder|add_cout~0_combout\ & (x_op(8) & (y_op(8) $ (\operator~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp|adder|adder_i:7:adder|add_cout~0_combout\,
	datab => y_op(8),
	datac => x_op(8),
	datad => \operator~combout\,
	combout => \comp|adder|adder_i:8:adder|add_cout~0_combout\);

-- Location: LCCOMB_X18_Y20_N6
\y_op[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \y_op[9]~9_combout\ = (\y_input[15]~input_o\ & (((y_man_up(9))))) # (!\y_input[15]~input_o\ & ((\x_input[15]~input_o\ & (x_man_up(9))) # (!\x_input[15]~input_o\ & ((y_man_up(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_input[15]~input_o\,
	datab => \x_input[15]~input_o\,
	datac => x_man_up(9),
	datad => y_man_up(9),
	combout => \y_op[9]~9_combout\);

-- Location: LCCOMB_X18_Y20_N28
\y_op[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- y_op(9) = (GLOBAL(\norm~clkctrl_outclk\) & ((\y_op[9]~9_combout\))) # (!GLOBAL(\norm~clkctrl_outclk\) & (y_op(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_op(9),
	datac => \norm~clkctrl_outclk\,
	datad => \y_op[9]~9_combout\,
	combout => y_op(9));

-- Location: LCCOMB_X18_Y20_N10
\comp|adder|adder_i:9:adder|add_sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp|adder|adder_i:9:adder|add_sum~0_combout\ = \operator~combout\ $ (x_op(9) $ (\comp|adder|adder_i:8:adder|add_cout~0_combout\ $ (y_op(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operator~combout\,
	datab => x_op(9),
	datac => \comp|adder|adder_i:8:adder|add_cout~0_combout\,
	datad => y_op(9),
	combout => \comp|adder|adder_i:9:adder|add_sum~0_combout\);

-- Location: LCCOMB_X22_Y21_N30
\output~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~9_combout\ = (\norm~combout\ & ((\comp|adder|adder_i:9:adder|add_sum~0_combout\))) # (!\norm~combout\ & (MS(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => MS(9),
	datac => \norm~combout\,
	datad => \comp|adder|adder_i:9:adder|add_sum~0_combout\,
	combout => \output~9_combout\);

-- Location: LCCOMB_X21_Y21_N6
\ES[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ES[0]~2_combout\ = (\ES[0]~7_combout\ & (((\y_input[10]~input_o\) # (\process_0~6_combout\)))) # (!\ES[0]~7_combout\ & (\x_input[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[10]~input_o\,
	datab => \ES[0]~7_combout\,
	datac => \y_input[10]~input_o\,
	datad => \process_0~6_combout\,
	combout => \ES[0]~2_combout\);

-- Location: LCCOMB_X21_Y21_N10
\ES[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- ES(0) = (\process_0~7_combout\) # ((GLOBAL(\SS~3clkctrl_outclk\) & ((\ES[0]~2_combout\))) # (!GLOBAL(\SS~3clkctrl_outclk\) & (ES(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS~3clkctrl_outclk\,
	datab => ES(0),
	datac => \ES[0]~2_combout\,
	datad => \process_0~7_combout\,
	combout => ES(0));

-- Location: LCCOMB_X21_Y20_N26
\ES[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ES[1]~3_combout\ = (\ES[0]~7_combout\ & ((\process_0~6_combout\) # ((\y_input[11]~input_o\)))) # (!\ES[0]~7_combout\ & (((\x_input[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~6_combout\,
	datab => \y_input[11]~input_o\,
	datac => \ES[0]~7_combout\,
	datad => \x_input[11]~input_o\,
	combout => \ES[1]~3_combout\);

-- Location: LCCOMB_X21_Y20_N22
\ES[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- ES(1) = (\process_0~7_combout\) # ((GLOBAL(\SS~3clkctrl_outclk\) & ((\ES[1]~3_combout\))) # (!GLOBAL(\SS~3clkctrl_outclk\) & (ES(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ES(1),
	datab => \process_0~7_combout\,
	datac => \SS~3clkctrl_outclk\,
	datad => \ES[1]~3_combout\,
	combout => ES(1));

-- Location: LCCOMB_X21_Y21_N24
\ES[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ES[2]~4_combout\ = (\ES[0]~7_combout\ & ((\y_input[12]~input_o\) # ((\process_0~6_combout\)))) # (!\ES[0]~7_combout\ & (((\x_input[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ES[0]~7_combout\,
	datab => \y_input[12]~input_o\,
	datac => \x_input[12]~input_o\,
	datad => \process_0~6_combout\,
	combout => \ES[2]~4_combout\);

-- Location: LCCOMB_X21_Y21_N12
\ES[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- ES(2) = (\process_0~7_combout\) # ((GLOBAL(\SS~3clkctrl_outclk\) & ((\ES[2]~4_combout\))) # (!GLOBAL(\SS~3clkctrl_outclk\) & (ES(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS~3clkctrl_outclk\,
	datab => ES(2),
	datac => \ES[2]~4_combout\,
	datad => \process_0~7_combout\,
	combout => ES(2));

-- Location: LCCOMB_X21_Y20_N0
\ES[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ES[3]~5_combout\ = (\ES[0]~7_combout\ & ((\process_0~6_combout\) # ((\y_input[13]~input_o\)))) # (!\ES[0]~7_combout\ & (((\x_input[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~6_combout\,
	datab => \x_input[13]~input_o\,
	datac => \ES[0]~7_combout\,
	datad => \y_input[13]~input_o\,
	combout => \ES[3]~5_combout\);

-- Location: LCCOMB_X21_Y20_N8
\ES[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- ES(3) = (\process_0~7_combout\) # ((GLOBAL(\SS~3clkctrl_outclk\) & ((\ES[3]~5_combout\))) # (!GLOBAL(\SS~3clkctrl_outclk\) & (ES(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ES(3),
	datab => \process_0~7_combout\,
	datac => \SS~3clkctrl_outclk\,
	datad => \ES[3]~5_combout\,
	combout => ES(3));

-- Location: LCCOMB_X21_Y20_N10
\ES[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ES[4]~6_combout\ = (\ES[0]~7_combout\ & ((\process_0~6_combout\) # ((\y_input[14]~input_o\)))) # (!\ES[0]~7_combout\ & (((\x_input[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~6_combout\,
	datab => \y_input[14]~input_o\,
	datac => \ES[0]~7_combout\,
	datad => \x_input[14]~input_o\,
	combout => \ES[4]~6_combout\);

-- Location: LCCOMB_X21_Y20_N6
\ES[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- ES(4) = (\process_0~7_combout\) # ((GLOBAL(\SS~3clkctrl_outclk\) & ((\ES[4]~6_combout\))) # (!GLOBAL(\SS~3clkctrl_outclk\) & (ES(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ES(4),
	datab => \process_0~7_combout\,
	datac => \ES[4]~6_combout\,
	datad => \SS~3clkctrl_outclk\,
	combout => ES(4));

-- Location: LCCOMB_X19_Y20_N16
\SS~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SS~4_combout\ = (\Equal10~5_combout\ & ((\x_input[15]~input_o\) # ((\y_input[15]~input_o\)))) # (!\Equal10~5_combout\ & ((\SS~0_combout\ & (\x_input[15]~input_o\)) # (!\SS~0_combout\ & ((\y_input[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_input[15]~input_o\,
	datab => \Equal10~5_combout\,
	datac => \y_input[15]~input_o\,
	datad => \SS~0_combout\,
	combout => \SS~4_combout\);

-- Location: LCCOMB_X18_Y20_N22
\SS~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SS~8_combout\ = (\process_0~8_combout\ & ((\LessThan6~3_combout\) # ((\y_input[15]~input_o\ & \LessThan7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => \y_input[15]~input_o\,
	datac => \LessThan6~3_combout\,
	datad => \LessThan7~4_combout\,
	combout => \SS~8_combout\);

-- Location: LCCOMB_X18_Y20_N4
\SS~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SS~9_combout\ = (\SS~8_combout\ & ((\LessThan6~3_combout\ & (\x_input[15]~input_o\)) # (!\LessThan6~3_combout\ & ((\LessThan7~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~3_combout\,
	datab => \SS~8_combout\,
	datac => \x_input[15]~input_o\,
	datad => \LessThan7~4_combout\,
	combout => \SS~9_combout\);

-- Location: LCCOMB_X19_Y20_N14
\SS~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SS~6_combout\ = (\SS~9_combout\) # ((!\SS~5_combout\ & ((\process_0~7_combout\) # (\SS~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~7_combout\,
	datab => \SS~4_combout\,
	datac => \SS~9_combout\,
	datad => \SS~5_combout\,
	combout => \SS~6_combout\);

-- Location: LCCOMB_X19_Y20_N6
\SS~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SS~7_combout\ = (\SS~5_combout\) # ((\SS~3_combout\) # (\process_0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS~5_combout\,
	datac => \SS~3_combout\,
	datad => \process_0~7_combout\,
	combout => \SS~7_combout\);

-- Location: LCCOMB_X19_Y20_N8
SS : cycloneive_lcell_comb
-- Equation(s):
-- \SS~combout\ = (\SS~7_combout\ & (\SS~6_combout\)) # (!\SS~7_combout\ & ((\SS~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SS~6_combout\,
	datac => \SS~combout\,
	datad => \SS~7_combout\,
	combout => \SS~combout\);

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;

ww_output(8) <= \output[8]~output_o\;

ww_output(9) <= \output[9]~output_o\;

ww_output(10) <= \output[10]~output_o\;

ww_output(11) <= \output[11]~output_o\;

ww_output(12) <= \output[12]~output_o\;

ww_output(13) <= \output[13]~output_o\;

ww_output(14) <= \output[14]~output_o\;

ww_output(15) <= \output[15]~output_o\;
END structure;


