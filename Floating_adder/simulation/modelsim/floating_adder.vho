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

-- DATE "11/11/2020 22:12:45"

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

ENTITY 	FPadder IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	b : IN std_logic_vector(15 DOWNTO 0);
	op : IN std_logic;
	result : OUT std_logic_vector(15 DOWNTO 0)
	);
END FPadder;

-- Design Ports Information
-- result[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FPadder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_op : std_logic;
SIGNAL ww_result : std_logic_vector(15 DOWNTO 0);
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \result[12]~output_o\ : std_logic;
SIGNAL \result[13]~output_o\ : std_logic;
SIGNAL \result[14]~output_o\ : std_logic;
SIGNAL \result[15]~output_o\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \op~input_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \Komponen_CompS|OPS~combout\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \AlbhB~2_combout\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \AlbhB~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \AlbhB~0_combout\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~15_cout\ : std_logic;
SIGNAL \LessThan1~17_cout\ : std_logic;
SIGNAL \LessThan1~18_combout\ : std_logic;
SIGNAL \AlbhB~1_combout\ : std_logic;
SIGNAL \AlbhB~4_combout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~1_combout\ : std_logic;
SIGNAL \Komponen_Subse|Add0~8_combout\ : std_logic;
SIGNAL \Komponen_Subse|Add0~9_combout\ : std_logic;
SIGNAL \Komponen_Subse|Add0~10_combout\ : std_logic;
SIGNAL \Komponen_Subse|Add0~0_combout\ : std_logic;
SIGNAL \Komponen_Subse|Add0~1_combout\ : std_logic;
SIGNAL \Komponen_Subse|Add0~3_combout\ : std_logic;
SIGNAL \Komponen_Subse|Add0~2_combout\ : std_logic;
SIGNAL \Komponen_Subse|Add0~4_combout\ : std_logic;
SIGNAL \Komponen_Subse|Add0~5_combout\ : std_logic;
SIGNAL \Komponen_Subse|Add0~7_combout\ : std_logic;
SIGNAL \Komponen_Subse|Add0~6_combout\ : std_logic;
SIGNAL \Komponen_Subse|Add0~11\ : std_logic;
SIGNAL \Komponen_Subse|Add0~13\ : std_logic;
SIGNAL \Komponen_Subse|Add0~15\ : std_logic;
SIGNAL \Komponen_Subse|Add0~17\ : std_logic;
SIGNAL \Komponen_Subse|Add0~18_combout\ : std_logic;
SIGNAL \Komponen_Subse|Add0~12_combout\ : std_logic;
SIGNAL \Komponen_Subse|Add0~16_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~10_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~11_combout\ : std_logic;
SIGNAL \Komponen_Subse|Add0~14_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux0~0_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~5_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~9_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~8_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~12_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~29_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~16_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux11~0_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux11~1_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux11~2_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~14_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~19_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~20_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~13_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~21_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~28_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~6_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~7_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~22_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux11~3_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~17_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~18_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux10~0_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux10~1_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Add0~0_combout\ : std_logic;
SIGNAL \komponen_ConvB|Bconv~combout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~3_cout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~4_combout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~0_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux9~0_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~15_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux9~1_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux9~2_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Add0~1\ : std_logic;
SIGNAL \Komponen_ShiftR|Add0~2_combout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~5\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~6_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux0~1_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux0~2_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~25_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~23_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~24_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux2~0_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux2~1_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux2~2_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux3~1_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux5~0_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux3~0_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux4~1_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~4_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~26_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux4~2_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux4~0_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux5~2_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux5~3_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux5~4_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux1~27_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux7~0_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux5~1_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux6~1_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux6~2_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux6~0_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux7~1_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux7~2_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux8~0_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux8~1_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Mux8~2_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Add0~3\ : std_logic;
SIGNAL \Komponen_ShiftR|Add0~5\ : std_logic;
SIGNAL \Komponen_ShiftR|Add0~7\ : std_logic;
SIGNAL \Komponen_ShiftR|Add0~9\ : std_logic;
SIGNAL \Komponen_ShiftR|Add0~11\ : std_logic;
SIGNAL \Komponen_ShiftR|Add0~13\ : std_logic;
SIGNAL \Komponen_ShiftR|Add0~15\ : std_logic;
SIGNAL \Komponen_ShiftR|Add0~17\ : std_logic;
SIGNAL \Komponen_ShiftR|Add0~19\ : std_logic;
SIGNAL \Komponen_ShiftR|Add0~20_combout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~8_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Add0~18_combout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~9_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Add0~16_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Add0~14_combout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~10_combout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~11_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Add0~12_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Add0~10_combout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~12_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Add0~8_combout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~13_combout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~14_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Add0~6_combout\ : std_logic;
SIGNAL \Komponen_ShiftR|Add0~4_combout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~15_combout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~7\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~17\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~19\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~21\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~23\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~25\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~27\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~29\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~31\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~33\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~34_combout\ : std_logic;
SIGNAL \Komponen_combine|ResultME[0]~0_combout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~16_combout\ : std_logic;
SIGNAL \Komponen_combine|ResultME[1]~1_combout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~18_combout\ : std_logic;
SIGNAL \Komponen_combine|ResultME[2]~2_combout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~20_combout\ : std_logic;
SIGNAL \Komponen_combine|ResultME[3]~3_combout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~22_combout\ : std_logic;
SIGNAL \Komponen_combine|ResultME[4]~4_combout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~24_combout\ : std_logic;
SIGNAL \Komponen_combine|ResultME[5]~5_combout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~26_combout\ : std_logic;
SIGNAL \Komponen_combine|ResultME[6]~6_combout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~28_combout\ : std_logic;
SIGNAL \Komponen_combine|ResultME[7]~7_combout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~30_combout\ : std_logic;
SIGNAL \Komponen_combine|ResultME[8]~8_combout\ : std_logic;
SIGNAL \Komponen_Adder11|Add0~32_combout\ : std_logic;
SIGNAL \Komponen_combine|ResultME[9]~9_combout\ : std_logic;
SIGNAL \Komponen_Subse|BiggerE[0]~0_combout\ : std_logic;
SIGNAL \Komponen_combine|Add1~0_combout\ : std_logic;
SIGNAL \Komponen_combine|Add1~2_combout\ : std_logic;
SIGNAL \Komponen_Subse|BiggerE[1]~1_combout\ : std_logic;
SIGNAL \Komponen_combine|Exponent~2_combout\ : std_logic;
SIGNAL \Komponen_combine|Add1~1\ : std_logic;
SIGNAL \Komponen_combine|Add1~3_combout\ : std_logic;
SIGNAL \Komponen_combine|Add1~5_combout\ : std_logic;
SIGNAL \Komponen_Subse|BiggerE[2]~2_combout\ : std_logic;
SIGNAL \Komponen_combine|Add1~4\ : std_logic;
SIGNAL \Komponen_combine|Add1~6_combout\ : std_logic;
SIGNAL \Komponen_combine|Add1~8_combout\ : std_logic;
SIGNAL \Komponen_Subse|BiggerE[3]~3_combout\ : std_logic;
SIGNAL \Komponen_combine|Add1~7\ : std_logic;
SIGNAL \Komponen_combine|Add1~9_combout\ : std_logic;
SIGNAL \Komponen_combine|Add1~11_combout\ : std_logic;
SIGNAL \Komponen_Subse|BiggerE[4]~4_combout\ : std_logic;
SIGNAL \Komponen_combine|Add1~10\ : std_logic;
SIGNAL \Komponen_combine|Add1~12_combout\ : std_logic;
SIGNAL \Komponen_combine|Add1~14_combout\ : std_logic;
SIGNAL \Komponen_CompS|FixS~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_b <= b;
ww_op <= op;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y24_N23
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Komponen_combine|ResultME[0]~0_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Komponen_combine|ResultME[1]~1_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Komponen_combine|ResultME[2]~2_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Komponen_combine|ResultME[3]~3_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Komponen_combine|ResultME[4]~4_combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Komponen_combine|ResultME[5]~5_combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Komponen_combine|ResultME[6]~6_combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Komponen_combine|ResultME[7]~7_combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Komponen_combine|ResultME[8]~8_combout\,
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Komponen_combine|ResultME[9]~9_combout\,
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\result[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Komponen_combine|Add1~2_combout\,
	devoe => ww_devoe,
	o => \result[10]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\result[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Komponen_combine|Add1~5_combout\,
	devoe => ww_devoe,
	o => \result[11]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\result[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Komponen_combine|Add1~8_combout\,
	devoe => ww_devoe,
	o => \result[12]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\result[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Komponen_combine|Add1~11_combout\,
	devoe => ww_devoe,
	o => \result[13]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\result[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Komponen_combine|Add1~14_combout\,
	devoe => ww_devoe,
	o => \result[14]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\result[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Komponen_CompS|FixS~2_combout\,
	devoe => ww_devoe,
	o => \result[15]~output_o\);

-- Location: IOIBUF_X16_Y24_N15
\b[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\op~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op,
	o => \op~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\a[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: LCCOMB_X23_Y16_N24
\Komponen_CompS|OPS\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_CompS|OPS~combout\ = \b[15]~input_o\ $ (\op~input_o\ $ (\a[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[15]~input_o\,
	datac => \op~input_o\,
	datad => \a[15]~input_o\,
	combout => \Komponen_CompS|OPS~combout\);

-- Location: IOIBUF_X7_Y24_N1
\b[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\a[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\b[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\a[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: LCCOMB_X22_Y14_N28
\AlbhB~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AlbhB~2_combout\ = (\b[14]~input_o\ & (\a[14]~input_o\ & (!\b[13]~input_o\ & \a[13]~input_o\))) # (!\b[14]~input_o\ & ((\a[14]~input_o\) # ((!\b[13]~input_o\ & \a[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[14]~input_o\,
	datab => \a[14]~input_o\,
	datac => \b[13]~input_o\,
	datad => \a[13]~input_o\,
	combout => \AlbhB~2_combout\);

-- Location: IOIBUF_X34_Y10_N8
\b[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\a[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: LCCOMB_X19_Y14_N10
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\b[11]~input_o\ & \a[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[11]~input_o\,
	datad => \a[11]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: IOIBUF_X23_Y0_N15
\a[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\b[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: LCCOMB_X21_Y14_N8
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\b[13]~input_o\ & (\a[13]~input_o\ & (\b[14]~input_o\ $ (!\a[14]~input_o\)))) # (!\b[13]~input_o\ & (!\a[13]~input_o\ & (\b[14]~input_o\ $ (!\a[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[13]~input_o\,
	datab => \a[13]~input_o\,
	datac => \b[14]~input_o\,
	datad => \a[14]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y14_N30
\AlbhB~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \AlbhB~3_combout\ = (\LessThan0~0_combout\ & ((\LessThan0~1_combout\ & ((\a[12]~input_o\) # (!\b[12]~input_o\))) # (!\LessThan0~1_combout\ & (\a[12]~input_o\ & !\b[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \a[12]~input_o\,
	datac => \b[12]~input_o\,
	datad => \LessThan0~0_combout\,
	combout => \AlbhB~3_combout\);

-- Location: LCCOMB_X19_Y14_N0
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = \b[11]~input_o\ $ (\a[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[11]~input_o\,
	datad => \a[11]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X22_Y14_N8
\AlbhB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AlbhB~0_combout\ = (\LessThan0~0_combout\ & (!\Equal0~0_combout\ & (\a[12]~input_o\ $ (!\b[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \a[12]~input_o\,
	datac => \b[12]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \AlbhB~0_combout\);

-- Location: IOIBUF_X23_Y0_N8
\b[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\a[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\b[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\b[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X34_Y9_N8
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X26_Y16_N4
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!\b[0]~input_o\ & \a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X26_Y16_N6
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\b[1]~input_o\ & ((!\LessThan1~1_cout\) # (!\a[1]~input_o\))) # (!\b[1]~input_o\ & (!\a[1]~input_o\ & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[1]~input_o\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X26_Y16_N8
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\b[2]~input_o\ & (\a[2]~input_o\ & !\LessThan1~3_cout\)) # (!\b[2]~input_o\ & ((\a[2]~input_o\) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X26_Y16_N10
\LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\b[3]~input_o\ & ((!\LessThan1~5_cout\) # (!\a[3]~input_o\))) # (!\b[3]~input_o\ & (!\a[3]~input_o\ & !\LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[3]~input_o\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X26_Y16_N12
\LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\b[4]~input_o\ & (\a[4]~input_o\ & !\LessThan1~7_cout\)) # (!\b[4]~input_o\ & ((\a[4]~input_o\) # (!\LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \a[4]~input_o\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X26_Y16_N14
\LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\b[5]~input_o\ & ((!\LessThan1~9_cout\) # (!\a[5]~input_o\))) # (!\b[5]~input_o\ & (!\a[5]~input_o\ & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \a[5]~input_o\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X26_Y16_N16
\LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\b[6]~input_o\ & (\a[6]~input_o\ & !\LessThan1~11_cout\)) # (!\b[6]~input_o\ & ((\a[6]~input_o\) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datab => \a[6]~input_o\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X26_Y16_N18
\LessThan1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~15_cout\ = CARRY((\b[7]~input_o\ & ((!\LessThan1~13_cout\) # (!\a[7]~input_o\))) # (!\b[7]~input_o\ & (!\a[7]~input_o\ & !\LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \a[7]~input_o\,
	datad => VCC,
	cin => \LessThan1~13_cout\,
	cout => \LessThan1~15_cout\);

-- Location: LCCOMB_X26_Y16_N20
\LessThan1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~17_cout\ = CARRY((\a[8]~input_o\ & ((!\LessThan1~15_cout\) # (!\b[8]~input_o\))) # (!\a[8]~input_o\ & (!\b[8]~input_o\ & !\LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \b[8]~input_o\,
	datad => VCC,
	cin => \LessThan1~15_cout\,
	cout => \LessThan1~17_cout\);

-- Location: LCCOMB_X26_Y16_N22
\LessThan1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~18_combout\ = (\a[9]~input_o\ & ((\LessThan1~17_cout\) # (!\b[9]~input_o\))) # (!\a[9]~input_o\ & (\LessThan1~17_cout\ & !\b[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[9]~input_o\,
	datad => \b[9]~input_o\,
	cin => \LessThan1~17_cout\,
	combout => \LessThan1~18_combout\);

-- Location: LCCOMB_X22_Y14_N10
\AlbhB~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AlbhB~1_combout\ = (\AlbhB~0_combout\ & ((\b[10]~input_o\ & (\a[10]~input_o\ & \LessThan1~18_combout\)) # (!\b[10]~input_o\ & ((\a[10]~input_o\) # (\LessThan1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AlbhB~0_combout\,
	datab => \b[10]~input_o\,
	datac => \a[10]~input_o\,
	datad => \LessThan1~18_combout\,
	combout => \AlbhB~1_combout\);

-- Location: LCCOMB_X22_Y14_N24
\AlbhB~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AlbhB~4_combout\ = (\AlbhB~2_combout\) # ((\AlbhB~3_combout\) # (\AlbhB~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AlbhB~2_combout\,
	datac => \AlbhB~3_combout\,
	datad => \AlbhB~1_combout\,
	combout => \AlbhB~4_combout\);

-- Location: LCCOMB_X26_Y16_N26
\Komponen_Adder11|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~1_combout\ = \Komponen_CompS|OPS~combout\ $ (((\AlbhB~4_combout\ & ((\a[0]~input_o\))) # (!\AlbhB~4_combout\ & (\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_CompS|OPS~combout\,
	datab => \AlbhB~4_combout\,
	datac => \b[0]~input_o\,
	datad => \a[0]~input_o\,
	combout => \Komponen_Adder11|Add0~1_combout\);

-- Location: LCCOMB_X22_Y14_N2
\Komponen_Subse|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Subse|Add0~8_combout\ = \b[10]~input_o\ $ (((\AlbhB~3_combout\) # ((\AlbhB~2_combout\) # (\AlbhB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AlbhB~3_combout\,
	datab => \AlbhB~2_combout\,
	datac => \b[10]~input_o\,
	datad => \AlbhB~1_combout\,
	combout => \Komponen_Subse|Add0~8_combout\);

-- Location: LCCOMB_X22_Y14_N4
\Komponen_Subse|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Subse|Add0~9_combout\ = \a[10]~input_o\ $ (((\AlbhB~3_combout\) # ((\AlbhB~2_combout\) # (\AlbhB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AlbhB~3_combout\,
	datab => \AlbhB~2_combout\,
	datac => \a[10]~input_o\,
	datad => \AlbhB~1_combout\,
	combout => \Komponen_Subse|Add0~9_combout\);

-- Location: LCCOMB_X23_Y14_N14
\Komponen_Subse|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Subse|Add0~10_combout\ = (\Komponen_Subse|Add0~8_combout\ & ((GND) # (!\Komponen_Subse|Add0~9_combout\))) # (!\Komponen_Subse|Add0~8_combout\ & (\Komponen_Subse|Add0~9_combout\ $ (GND)))
-- \Komponen_Subse|Add0~11\ = CARRY((\Komponen_Subse|Add0~8_combout\) # (!\Komponen_Subse|Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~8_combout\,
	datab => \Komponen_Subse|Add0~9_combout\,
	datad => VCC,
	combout => \Komponen_Subse|Add0~10_combout\,
	cout => \Komponen_Subse|Add0~11\);

-- Location: LCCOMB_X22_Y14_N18
\Komponen_Subse|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Subse|Add0~0_combout\ = \b[14]~input_o\ $ (((\AlbhB~2_combout\) # ((\AlbhB~3_combout\) # (\AlbhB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[14]~input_o\,
	datab => \AlbhB~2_combout\,
	datac => \AlbhB~3_combout\,
	datad => \AlbhB~1_combout\,
	combout => \Komponen_Subse|Add0~0_combout\);

-- Location: LCCOMB_X22_Y14_N20
\Komponen_Subse|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Subse|Add0~1_combout\ = \a[14]~input_o\ $ (((\AlbhB~1_combout\) # ((\AlbhB~3_combout\) # (\AlbhB~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AlbhB~1_combout\,
	datab => \a[14]~input_o\,
	datac => \AlbhB~3_combout\,
	datad => \AlbhB~2_combout\,
	combout => \Komponen_Subse|Add0~1_combout\);

-- Location: LCCOMB_X22_Y14_N0
\Komponen_Subse|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Subse|Add0~3_combout\ = \a[13]~input_o\ $ (((\AlbhB~2_combout\) # ((\AlbhB~3_combout\) # (\AlbhB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datab => \AlbhB~2_combout\,
	datac => \AlbhB~3_combout\,
	datad => \AlbhB~1_combout\,
	combout => \Komponen_Subse|Add0~3_combout\);

-- Location: LCCOMB_X22_Y14_N6
\Komponen_Subse|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Subse|Add0~2_combout\ = \b[13]~input_o\ $ (((\AlbhB~3_combout\) # ((\AlbhB~2_combout\) # (\AlbhB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AlbhB~3_combout\,
	datab => \AlbhB~2_combout\,
	datac => \b[13]~input_o\,
	datad => \AlbhB~1_combout\,
	combout => \Komponen_Subse|Add0~2_combout\);

-- Location: LCCOMB_X22_Y14_N26
\Komponen_Subse|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Subse|Add0~4_combout\ = \b[12]~input_o\ $ (((\AlbhB~3_combout\) # ((\AlbhB~2_combout\) # (\AlbhB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AlbhB~3_combout\,
	datab => \AlbhB~2_combout\,
	datac => \b[12]~input_o\,
	datad => \AlbhB~1_combout\,
	combout => \Komponen_Subse|Add0~4_combout\);

-- Location: LCCOMB_X22_Y14_N12
\Komponen_Subse|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Subse|Add0~5_combout\ = \a[12]~input_o\ $ (((\AlbhB~1_combout\) # ((\AlbhB~2_combout\) # (\AlbhB~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AlbhB~1_combout\,
	datab => \AlbhB~2_combout\,
	datac => \AlbhB~3_combout\,
	datad => \a[12]~input_o\,
	combout => \Komponen_Subse|Add0~5_combout\);

-- Location: LCCOMB_X22_Y14_N16
\Komponen_Subse|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Subse|Add0~7_combout\ = \a[11]~input_o\ $ (((\AlbhB~1_combout\) # ((\AlbhB~3_combout\) # (\AlbhB~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AlbhB~1_combout\,
	datab => \a[11]~input_o\,
	datac => \AlbhB~3_combout\,
	datad => \AlbhB~2_combout\,
	combout => \Komponen_Subse|Add0~7_combout\);

-- Location: LCCOMB_X22_Y14_N22
\Komponen_Subse|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Subse|Add0~6_combout\ = \b[11]~input_o\ $ (((\AlbhB~3_combout\) # ((\AlbhB~2_combout\) # (\AlbhB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AlbhB~3_combout\,
	datab => \AlbhB~2_combout\,
	datac => \b[11]~input_o\,
	datad => \AlbhB~1_combout\,
	combout => \Komponen_Subse|Add0~6_combout\);

-- Location: LCCOMB_X23_Y14_N16
\Komponen_Subse|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Subse|Add0~12_combout\ = (\Komponen_Subse|Add0~7_combout\ & ((\Komponen_Subse|Add0~6_combout\ & (!\Komponen_Subse|Add0~11\)) # (!\Komponen_Subse|Add0~6_combout\ & ((\Komponen_Subse|Add0~11\) # (GND))))) # (!\Komponen_Subse|Add0~7_combout\ & 
-- ((\Komponen_Subse|Add0~6_combout\ & (\Komponen_Subse|Add0~11\ & VCC)) # (!\Komponen_Subse|Add0~6_combout\ & (!\Komponen_Subse|Add0~11\))))
-- \Komponen_Subse|Add0~13\ = CARRY((\Komponen_Subse|Add0~7_combout\ & ((!\Komponen_Subse|Add0~11\) # (!\Komponen_Subse|Add0~6_combout\))) # (!\Komponen_Subse|Add0~7_combout\ & (!\Komponen_Subse|Add0~6_combout\ & !\Komponen_Subse|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~7_combout\,
	datab => \Komponen_Subse|Add0~6_combout\,
	datad => VCC,
	cin => \Komponen_Subse|Add0~11\,
	combout => \Komponen_Subse|Add0~12_combout\,
	cout => \Komponen_Subse|Add0~13\);

-- Location: LCCOMB_X23_Y14_N18
\Komponen_Subse|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Subse|Add0~14_combout\ = ((\Komponen_Subse|Add0~4_combout\ $ (\Komponen_Subse|Add0~5_combout\ $ (\Komponen_Subse|Add0~13\)))) # (GND)
-- \Komponen_Subse|Add0~15\ = CARRY((\Komponen_Subse|Add0~4_combout\ & ((!\Komponen_Subse|Add0~13\) # (!\Komponen_Subse|Add0~5_combout\))) # (!\Komponen_Subse|Add0~4_combout\ & (!\Komponen_Subse|Add0~5_combout\ & !\Komponen_Subse|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~4_combout\,
	datab => \Komponen_Subse|Add0~5_combout\,
	datad => VCC,
	cin => \Komponen_Subse|Add0~13\,
	combout => \Komponen_Subse|Add0~14_combout\,
	cout => \Komponen_Subse|Add0~15\);

-- Location: LCCOMB_X23_Y14_N20
\Komponen_Subse|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Subse|Add0~16_combout\ = (\Komponen_Subse|Add0~3_combout\ & ((\Komponen_Subse|Add0~2_combout\ & (!\Komponen_Subse|Add0~15\)) # (!\Komponen_Subse|Add0~2_combout\ & ((\Komponen_Subse|Add0~15\) # (GND))))) # (!\Komponen_Subse|Add0~3_combout\ & 
-- ((\Komponen_Subse|Add0~2_combout\ & (\Komponen_Subse|Add0~15\ & VCC)) # (!\Komponen_Subse|Add0~2_combout\ & (!\Komponen_Subse|Add0~15\))))
-- \Komponen_Subse|Add0~17\ = CARRY((\Komponen_Subse|Add0~3_combout\ & ((!\Komponen_Subse|Add0~15\) # (!\Komponen_Subse|Add0~2_combout\))) # (!\Komponen_Subse|Add0~3_combout\ & (!\Komponen_Subse|Add0~2_combout\ & !\Komponen_Subse|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~3_combout\,
	datab => \Komponen_Subse|Add0~2_combout\,
	datad => VCC,
	cin => \Komponen_Subse|Add0~15\,
	combout => \Komponen_Subse|Add0~16_combout\,
	cout => \Komponen_Subse|Add0~17\);

-- Location: LCCOMB_X23_Y14_N22
\Komponen_Subse|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Subse|Add0~18_combout\ = \Komponen_Subse|Add0~0_combout\ $ (\Komponen_Subse|Add0~17\ $ (\Komponen_Subse|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Komponen_Subse|Add0~0_combout\,
	datad => \Komponen_Subse|Add0~1_combout\,
	cin => \Komponen_Subse|Add0~17\,
	combout => \Komponen_Subse|Add0~18_combout\);

-- Location: LCCOMB_X25_Y16_N30
\Komponen_ShiftR|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~10_combout\ = (\AlbhB~4_combout\ & ((\b[5]~input_o\))) # (!\AlbhB~4_combout\ & (\a[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AlbhB~4_combout\,
	datab => \a[5]~input_o\,
	datac => \b[5]~input_o\,
	combout => \Komponen_ShiftR|Mux1~10_combout\);

-- Location: LCCOMB_X25_Y16_N16
\Komponen_ShiftR|Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~11_combout\ = (!\Komponen_Subse|Add0~16_combout\ & (!\Komponen_Subse|Add0~18_combout\ & \Komponen_ShiftR|Mux1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~16_combout\,
	datab => \Komponen_Subse|Add0~18_combout\,
	datac => \Komponen_ShiftR|Mux1~10_combout\,
	combout => \Komponen_ShiftR|Mux1~11_combout\);

-- Location: LCCOMB_X24_Y15_N24
\Komponen_ShiftR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux0~0_combout\ = (!\Komponen_Subse|Add0~16_combout\ & !\Komponen_Subse|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Komponen_Subse|Add0~16_combout\,
	datac => \Komponen_Subse|Add0~14_combout\,
	combout => \Komponen_ShiftR|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y16_N4
\Komponen_ShiftR|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~5_combout\ = (\Komponen_Subse|Add0~14_combout\) # ((!\AlbhB~4_combout\ & !\Komponen_Subse|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AlbhB~4_combout\,
	datac => \Komponen_Subse|Add0~14_combout\,
	datad => \Komponen_Subse|Add0~16_combout\,
	combout => \Komponen_ShiftR|Mux1~5_combout\);

-- Location: LCCOMB_X25_Y16_N20
\Komponen_ShiftR|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~9_combout\ = (\Komponen_ShiftR|Mux0~0_combout\ & ((\Komponen_ShiftR|Mux1~5_combout\ & (\a[1]~input_o\)) # (!\Komponen_ShiftR|Mux1~5_combout\ & ((\b[1]~input_o\))))) # (!\Komponen_ShiftR|Mux0~0_combout\ & 
-- (\Komponen_ShiftR|Mux1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux0~0_combout\,
	datab => \Komponen_ShiftR|Mux1~5_combout\,
	datac => \a[1]~input_o\,
	datad => \b[1]~input_o\,
	combout => \Komponen_ShiftR|Mux1~9_combout\);

-- Location: LCCOMB_X25_Y16_N2
\Komponen_ShiftR|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~8_combout\ = (!\Komponen_Subse|Add0~18_combout\ & ((\AlbhB~4_combout\ & (\b[9]~input_o\)) # (!\AlbhB~4_combout\ & ((\a[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AlbhB~4_combout\,
	datab => \Komponen_Subse|Add0~18_combout\,
	datac => \b[9]~input_o\,
	datad => \a[9]~input_o\,
	combout => \Komponen_ShiftR|Mux1~8_combout\);

-- Location: LCCOMB_X25_Y16_N10
\Komponen_ShiftR|Mux1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~12_combout\ = (\Komponen_ShiftR|Mux1~9_combout\ & ((\Komponen_ShiftR|Mux1~11_combout\) # ((\Komponen_ShiftR|Mux0~0_combout\)))) # (!\Komponen_ShiftR|Mux1~9_combout\ & (((!\Komponen_ShiftR|Mux0~0_combout\ & 
-- \Komponen_ShiftR|Mux1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux1~11_combout\,
	datab => \Komponen_ShiftR|Mux1~9_combout\,
	datac => \Komponen_ShiftR|Mux0~0_combout\,
	datad => \Komponen_ShiftR|Mux1~8_combout\,
	combout => \Komponen_ShiftR|Mux1~12_combout\);

-- Location: LCCOMB_X24_Y15_N30
\Komponen_ShiftR|Mux1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~29_combout\ = (\Komponen_ShiftR|Mux1~12_combout\ & ((\Komponen_Subse|Add0~16_combout\) # ((\Komponen_Subse|Add0~14_combout\) # (!\Komponen_Subse|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux1~12_combout\,
	datab => \Komponen_Subse|Add0~16_combout\,
	datac => \Komponen_Subse|Add0~14_combout\,
	datad => \Komponen_Subse|Add0~18_combout\,
	combout => \Komponen_ShiftR|Mux1~29_combout\);

-- Location: LCCOMB_X23_Y16_N26
\Komponen_ShiftR|Mux1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~16_combout\ = (\AlbhB~4_combout\ & ((\b[7]~input_o\))) # (!\AlbhB~4_combout\ & (\a[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AlbhB~4_combout\,
	datac => \a[7]~input_o\,
	datad => \b[7]~input_o\,
	combout => \Komponen_ShiftR|Mux1~16_combout\);

-- Location: LCCOMB_X26_Y16_N2
\Komponen_ShiftR|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux11~0_combout\ = (\AlbhB~4_combout\ & ((\b[3]~input_o\))) # (!\AlbhB~4_combout\ & (\a[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datac => \AlbhB~4_combout\,
	datad => \b[3]~input_o\,
	combout => \Komponen_ShiftR|Mux11~0_combout\);

-- Location: LCCOMB_X24_Y15_N6
\Komponen_ShiftR|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux11~1_combout\ = (\Komponen_Subse|Add0~14_combout\ & (((!\Komponen_Subse|Add0~16_combout\ & \Komponen_ShiftR|Mux11~0_combout\)))) # (!\Komponen_Subse|Add0~14_combout\ & (\Komponen_ShiftR|Mux1~16_combout\ & 
-- (\Komponen_Subse|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux1~16_combout\,
	datab => \Komponen_Subse|Add0~14_combout\,
	datac => \Komponen_Subse|Add0~16_combout\,
	datad => \Komponen_ShiftR|Mux11~0_combout\,
	combout => \Komponen_ShiftR|Mux11~1_combout\);

-- Location: LCCOMB_X24_Y15_N16
\Komponen_ShiftR|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux11~2_combout\ = (\Komponen_Subse|Add0~12_combout\ & (((\Komponen_ShiftR|Mux1~29_combout\)))) # (!\Komponen_Subse|Add0~12_combout\ & (!\Komponen_Subse|Add0~18_combout\ & ((\Komponen_ShiftR|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~18_combout\,
	datab => \Komponen_Subse|Add0~12_combout\,
	datac => \Komponen_ShiftR|Mux1~29_combout\,
	datad => \Komponen_ShiftR|Mux11~1_combout\,
	combout => \Komponen_ShiftR|Mux11~2_combout\);

-- Location: LCCOMB_X26_Y16_N0
\Komponen_ShiftR|Mux1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~14_combout\ = (\AlbhB~4_combout\ & ((\b[4]~input_o\))) # (!\AlbhB~4_combout\ & (\a[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AlbhB~4_combout\,
	datac => \a[4]~input_o\,
	datad => \b[4]~input_o\,
	combout => \Komponen_ShiftR|Mux1~14_combout\);

-- Location: LCCOMB_X26_Y16_N24
\Komponen_ShiftR|Mux1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~19_combout\ = (\AlbhB~4_combout\ & (\b[0]~input_o\)) # (!\AlbhB~4_combout\ & ((\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AlbhB~4_combout\,
	datac => \b[0]~input_o\,
	datad => \a[0]~input_o\,
	combout => \Komponen_ShiftR|Mux1~19_combout\);

-- Location: LCCOMB_X25_Y15_N20
\Komponen_ShiftR|Mux1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~20_combout\ = (!\Komponen_Subse|Add0~16_combout\ & ((\Komponen_Subse|Add0~14_combout\ & (\Komponen_ShiftR|Mux1~14_combout\)) # (!\Komponen_Subse|Add0~14_combout\ & ((\Komponen_ShiftR|Mux1~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~16_combout\,
	datab => \Komponen_ShiftR|Mux1~14_combout\,
	datac => \Komponen_Subse|Add0~14_combout\,
	datad => \Komponen_ShiftR|Mux1~19_combout\,
	combout => \Komponen_ShiftR|Mux1~20_combout\);

-- Location: LCCOMB_X25_Y15_N8
\Komponen_ShiftR|Mux1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~13_combout\ = (\AlbhB~4_combout\ & (\b[8]~input_o\)) # (!\AlbhB~4_combout\ & ((\a[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[8]~input_o\,
	datab => \AlbhB~4_combout\,
	datad => \a[8]~input_o\,
	combout => \Komponen_ShiftR|Mux1~13_combout\);

-- Location: LCCOMB_X25_Y15_N22
\Komponen_ShiftR|Mux1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~21_combout\ = (\Komponen_ShiftR|Mux1~20_combout\) # ((\Komponen_Subse|Add0~16_combout\ & (\Komponen_ShiftR|Mux1~13_combout\ & !\Komponen_Subse|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~16_combout\,
	datab => \Komponen_ShiftR|Mux1~20_combout\,
	datac => \Komponen_ShiftR|Mux1~13_combout\,
	datad => \Komponen_Subse|Add0~14_combout\,
	combout => \Komponen_ShiftR|Mux1~21_combout\);

-- Location: LCCOMB_X25_Y16_N14
\Komponen_ShiftR|Mux1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~28_combout\ = (!\Komponen_Subse|Add0~16_combout\ & ((\AlbhB~4_combout\ & (\b[6]~input_o\)) # (!\AlbhB~4_combout\ & ((\a[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~16_combout\,
	datab => \b[6]~input_o\,
	datac => \a[6]~input_o\,
	datad => \AlbhB~4_combout\,
	combout => \Komponen_ShiftR|Mux1~28_combout\);

-- Location: LCCOMB_X25_Y16_N6
\Komponen_ShiftR|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~6_combout\ = (\Komponen_ShiftR|Mux1~5_combout\ & (((\a[2]~input_o\) # (!\Komponen_ShiftR|Mux0~0_combout\)))) # (!\Komponen_ShiftR|Mux1~5_combout\ & (\b[2]~input_o\ & (\Komponen_ShiftR|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \Komponen_ShiftR|Mux1~5_combout\,
	datac => \Komponen_ShiftR|Mux0~0_combout\,
	datad => \a[2]~input_o\,
	combout => \Komponen_ShiftR|Mux1~6_combout\);

-- Location: LCCOMB_X25_Y16_N24
\Komponen_ShiftR|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~7_combout\ = (!\Komponen_Subse|Add0~18_combout\ & ((\Komponen_ShiftR|Mux0~0_combout\ & ((\Komponen_ShiftR|Mux1~6_combout\))) # (!\Komponen_ShiftR|Mux0~0_combout\ & ((\Komponen_ShiftR|Mux1~28_combout\) # 
-- (!\Komponen_ShiftR|Mux1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux0~0_combout\,
	datab => \Komponen_Subse|Add0~18_combout\,
	datac => \Komponen_ShiftR|Mux1~28_combout\,
	datad => \Komponen_ShiftR|Mux1~6_combout\,
	combout => \Komponen_ShiftR|Mux1~7_combout\);

-- Location: LCCOMB_X24_Y15_N12
\Komponen_ShiftR|Mux1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~22_combout\ = (\Komponen_Subse|Add0~12_combout\ & (((\Komponen_ShiftR|Mux1~7_combout\)))) # (!\Komponen_Subse|Add0~12_combout\ & (!\Komponen_Subse|Add0~18_combout\ & (\Komponen_ShiftR|Mux1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~18_combout\,
	datab => \Komponen_ShiftR|Mux1~21_combout\,
	datac => \Komponen_Subse|Add0~12_combout\,
	datad => \Komponen_ShiftR|Mux1~7_combout\,
	combout => \Komponen_ShiftR|Mux1~22_combout\);

-- Location: LCCOMB_X24_Y15_N2
\Komponen_ShiftR|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux11~3_combout\ = (\Komponen_Subse|Add0~10_combout\ & ((\Komponen_ShiftR|Mux1~22_combout\))) # (!\Komponen_Subse|Add0~10_combout\ & (\Komponen_ShiftR|Mux11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~10_combout\,
	datab => \Komponen_ShiftR|Mux11~2_combout\,
	datad => \Komponen_ShiftR|Mux1~22_combout\,
	combout => \Komponen_ShiftR|Mux11~3_combout\);

-- Location: LCCOMB_X24_Y15_N4
\Komponen_ShiftR|Mux1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~17_combout\ = (\Komponen_Subse|Add0~14_combout\ & (\Komponen_ShiftR|Mux1~16_combout\)) # (!\Komponen_Subse|Add0~14_combout\ & ((\Komponen_ShiftR|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux1~16_combout\,
	datab => \Komponen_Subse|Add0~14_combout\,
	datad => \Komponen_ShiftR|Mux11~0_combout\,
	combout => \Komponen_ShiftR|Mux1~17_combout\);

-- Location: LCCOMB_X24_Y15_N8
\Komponen_ShiftR|Mux1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~18_combout\ = (\Komponen_Subse|Add0~16_combout\) # (\Komponen_Subse|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Komponen_Subse|Add0~16_combout\,
	datac => \Komponen_Subse|Add0~18_combout\,
	combout => \Komponen_ShiftR|Mux1~18_combout\);

-- Location: LCCOMB_X24_Y15_N28
\Komponen_ShiftR|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux10~0_combout\ = (\Komponen_Subse|Add0~12_combout\ & (((\Komponen_ShiftR|Mux1~17_combout\ & !\Komponen_ShiftR|Mux1~18_combout\)))) # (!\Komponen_Subse|Add0~12_combout\ & (\Komponen_ShiftR|Mux1~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux1~29_combout\,
	datab => \Komponen_ShiftR|Mux1~17_combout\,
	datac => \Komponen_ShiftR|Mux1~18_combout\,
	datad => \Komponen_Subse|Add0~12_combout\,
	combout => \Komponen_ShiftR|Mux10~0_combout\);

-- Location: LCCOMB_X24_Y15_N14
\Komponen_ShiftR|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux10~1_combout\ = (\Komponen_Subse|Add0~10_combout\ & (\Komponen_ShiftR|Mux10~0_combout\)) # (!\Komponen_Subse|Add0~10_combout\ & ((\Komponen_ShiftR|Mux1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~10_combout\,
	datab => \Komponen_ShiftR|Mux10~0_combout\,
	datad => \Komponen_ShiftR|Mux1~22_combout\,
	combout => \Komponen_ShiftR|Mux10~1_combout\);

-- Location: LCCOMB_X23_Y15_N2
\Komponen_ShiftR|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Add0~0_combout\ = (\Komponen_ShiftR|Mux11~3_combout\ & (\Komponen_ShiftR|Mux10~1_combout\ $ (VCC))) # (!\Komponen_ShiftR|Mux11~3_combout\ & (\Komponen_ShiftR|Mux10~1_combout\ & VCC))
-- \Komponen_ShiftR|Add0~1\ = CARRY((\Komponen_ShiftR|Mux11~3_combout\ & \Komponen_ShiftR|Mux10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux11~3_combout\,
	datab => \Komponen_ShiftR|Mux10~1_combout\,
	datad => VCC,
	combout => \Komponen_ShiftR|Add0~0_combout\,
	cout => \Komponen_ShiftR|Add0~1\);

-- Location: LCCOMB_X23_Y16_N4
\komponen_ConvB|Bconv\ : cycloneive_lcell_comb
-- Equation(s):
-- \komponen_ConvB|Bconv~combout\ = \b[15]~input_o\ $ (\op~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[15]~input_o\,
	datac => \op~input_o\,
	combout => \komponen_ConvB|Bconv~combout\);

-- Location: LCCOMB_X22_Y16_N4
\Komponen_Adder11|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~3_cout\ = CARRY(\a[15]~input_o\ $ (\komponen_ConvB|Bconv~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \komponen_ConvB|Bconv~combout\,
	datad => VCC,
	cout => \Komponen_Adder11|Add0~3_cout\);

-- Location: LCCOMB_X22_Y16_N6
\Komponen_Adder11|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~4_combout\ = (\Komponen_Adder11|Add0~1_combout\ & ((\Komponen_ShiftR|Add0~0_combout\ & (\Komponen_Adder11|Add0~3_cout\ & VCC)) # (!\Komponen_ShiftR|Add0~0_combout\ & (!\Komponen_Adder11|Add0~3_cout\)))) # 
-- (!\Komponen_Adder11|Add0~1_combout\ & ((\Komponen_ShiftR|Add0~0_combout\ & (!\Komponen_Adder11|Add0~3_cout\)) # (!\Komponen_ShiftR|Add0~0_combout\ & ((\Komponen_Adder11|Add0~3_cout\) # (GND)))))
-- \Komponen_Adder11|Add0~5\ = CARRY((\Komponen_Adder11|Add0~1_combout\ & (!\Komponen_ShiftR|Add0~0_combout\ & !\Komponen_Adder11|Add0~3_cout\)) # (!\Komponen_Adder11|Add0~1_combout\ & ((!\Komponen_Adder11|Add0~3_cout\) # 
-- (!\Komponen_ShiftR|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Adder11|Add0~1_combout\,
	datab => \Komponen_ShiftR|Add0~0_combout\,
	datad => VCC,
	cin => \Komponen_Adder11|Add0~3_cout\,
	combout => \Komponen_Adder11|Add0~4_combout\,
	cout => \Komponen_Adder11|Add0~5\);

-- Location: LCCOMB_X25_Y16_N8
\Komponen_Adder11|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~0_combout\ = \Komponen_CompS|OPS~combout\ $ (((\AlbhB~4_combout\ & (\a[1]~input_o\)) # (!\AlbhB~4_combout\ & ((\b[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AlbhB~4_combout\,
	datab => \Komponen_CompS|OPS~combout\,
	datac => \a[1]~input_o\,
	datad => \b[1]~input_o\,
	combout => \Komponen_Adder11|Add0~0_combout\);

-- Location: LCCOMB_X24_Y15_N10
\Komponen_ShiftR|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux9~0_combout\ = (!\Komponen_Subse|Add0~12_combout\ & ((\Komponen_Subse|Add0~10_combout\ & ((\Komponen_ShiftR|Mux1~7_combout\))) # (!\Komponen_Subse|Add0~10_combout\ & (\Komponen_ShiftR|Mux1~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~10_combout\,
	datab => \Komponen_Subse|Add0~12_combout\,
	datac => \Komponen_ShiftR|Mux1~29_combout\,
	datad => \Komponen_ShiftR|Mux1~7_combout\,
	combout => \Komponen_ShiftR|Mux9~0_combout\);

-- Location: LCCOMB_X25_Y15_N18
\Komponen_ShiftR|Mux1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~15_combout\ = (\Komponen_Subse|Add0~14_combout\ & (\Komponen_ShiftR|Mux1~13_combout\)) # (!\Komponen_Subse|Add0~14_combout\ & ((\Komponen_ShiftR|Mux1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~14_combout\,
	datac => \Komponen_ShiftR|Mux1~13_combout\,
	datad => \Komponen_ShiftR|Mux1~14_combout\,
	combout => \Komponen_ShiftR|Mux1~15_combout\);

-- Location: LCCOMB_X24_Y15_N22
\Komponen_ShiftR|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux9~1_combout\ = (\Komponen_Subse|Add0~10_combout\ & ((\Komponen_ShiftR|Mux1~15_combout\))) # (!\Komponen_Subse|Add0~10_combout\ & (\Komponen_ShiftR|Mux1~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~10_combout\,
	datab => \Komponen_ShiftR|Mux1~17_combout\,
	datad => \Komponen_ShiftR|Mux1~15_combout\,
	combout => \Komponen_ShiftR|Mux9~1_combout\);

-- Location: LCCOMB_X24_Y15_N26
\Komponen_ShiftR|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux9~2_combout\ = (\Komponen_ShiftR|Mux9~0_combout\) # ((!\Komponen_ShiftR|Mux1~18_combout\ & (\Komponen_Subse|Add0~12_combout\ & \Komponen_ShiftR|Mux9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux9~0_combout\,
	datab => \Komponen_ShiftR|Mux1~18_combout\,
	datac => \Komponen_Subse|Add0~12_combout\,
	datad => \Komponen_ShiftR|Mux9~1_combout\,
	combout => \Komponen_ShiftR|Mux9~2_combout\);

-- Location: LCCOMB_X23_Y15_N4
\Komponen_ShiftR|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Add0~2_combout\ = (\Komponen_ShiftR|Mux9~2_combout\ & (!\Komponen_ShiftR|Add0~1\)) # (!\Komponen_ShiftR|Mux9~2_combout\ & ((\Komponen_ShiftR|Add0~1\) # (GND)))
-- \Komponen_ShiftR|Add0~3\ = CARRY((!\Komponen_ShiftR|Add0~1\) # (!\Komponen_ShiftR|Mux9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Komponen_ShiftR|Mux9~2_combout\,
	datad => VCC,
	cin => \Komponen_ShiftR|Add0~1\,
	combout => \Komponen_ShiftR|Add0~2_combout\,
	cout => \Komponen_ShiftR|Add0~3\);

-- Location: LCCOMB_X22_Y16_N8
\Komponen_Adder11|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~6_combout\ = ((\Komponen_Adder11|Add0~0_combout\ $ (\Komponen_ShiftR|Add0~2_combout\ $ (!\Komponen_Adder11|Add0~5\)))) # (GND)
-- \Komponen_Adder11|Add0~7\ = CARRY((\Komponen_Adder11|Add0~0_combout\ & ((\Komponen_ShiftR|Add0~2_combout\) # (!\Komponen_Adder11|Add0~5\))) # (!\Komponen_Adder11|Add0~0_combout\ & (\Komponen_ShiftR|Add0~2_combout\ & !\Komponen_Adder11|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Adder11|Add0~0_combout\,
	datab => \Komponen_ShiftR|Add0~2_combout\,
	datad => VCC,
	cin => \Komponen_Adder11|Add0~5\,
	combout => \Komponen_Adder11|Add0~6_combout\,
	cout => \Komponen_Adder11|Add0~7\);

-- Location: LCCOMB_X23_Y14_N8
\Komponen_ShiftR|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux0~1_combout\ = (!\Komponen_Subse|Add0~10_combout\ & !\Komponen_Subse|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Komponen_Subse|Add0~10_combout\,
	datad => \Komponen_Subse|Add0~12_combout\,
	combout => \Komponen_ShiftR|Mux0~1_combout\);

-- Location: LCCOMB_X23_Y14_N2
\Komponen_ShiftR|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux0~2_combout\ = (!\Komponen_Subse|Add0~14_combout\ & (\Komponen_ShiftR|Mux0~1_combout\ & (!\Komponen_Subse|Add0~18_combout\ & !\Komponen_Subse|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~14_combout\,
	datab => \Komponen_ShiftR|Mux0~1_combout\,
	datac => \Komponen_Subse|Add0~18_combout\,
	datad => \Komponen_Subse|Add0~16_combout\,
	combout => \Komponen_ShiftR|Mux0~2_combout\);

-- Location: LCCOMB_X23_Y14_N4
\Komponen_ShiftR|Mux1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~25_combout\ = (\Komponen_Subse|Add0~12_combout\) # (((\Komponen_Subse|Add0~18_combout\ & !\Komponen_Subse|Add0~10_combout\)) # (!\Komponen_ShiftR|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~18_combout\,
	datab => \Komponen_Subse|Add0~12_combout\,
	datac => \Komponen_Subse|Add0~10_combout\,
	datad => \Komponen_ShiftR|Mux0~0_combout\,
	combout => \Komponen_ShiftR|Mux1~25_combout\);

-- Location: LCCOMB_X25_Y16_N12
\Komponen_ShiftR|Mux1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~23_combout\ = (\AlbhB~4_combout\ & ((\b[9]~input_o\))) # (!\AlbhB~4_combout\ & (\a[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AlbhB~4_combout\,
	datab => \a[9]~input_o\,
	datac => \b[9]~input_o\,
	combout => \Komponen_ShiftR|Mux1~23_combout\);

-- Location: LCCOMB_X23_Y15_N24
\Komponen_ShiftR|Mux1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~24_combout\ = (\Komponen_Subse|Add0~10_combout\ & ((!\Komponen_Subse|Add0~18_combout\))) # (!\Komponen_Subse|Add0~10_combout\ & (\Komponen_ShiftR|Mux1~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~10_combout\,
	datab => \Komponen_ShiftR|Mux1~23_combout\,
	datac => \Komponen_Subse|Add0~18_combout\,
	combout => \Komponen_ShiftR|Mux1~24_combout\);

-- Location: LCCOMB_X23_Y14_N30
\Komponen_ShiftR|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux2~0_combout\ = ((\Komponen_Subse|Add0~12_combout\ & ((\Komponen_Subse|Add0~10_combout\))) # (!\Komponen_Subse|Add0~12_combout\ & (\Komponen_Subse|Add0~18_combout\))) # (!\Komponen_ShiftR|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~18_combout\,
	datab => \Komponen_Subse|Add0~12_combout\,
	datac => \Komponen_Subse|Add0~10_combout\,
	datad => \Komponen_ShiftR|Mux0~0_combout\,
	combout => \Komponen_ShiftR|Mux2~0_combout\);

-- Location: LCCOMB_X25_Y15_N16
\Komponen_ShiftR|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux2~1_combout\ = (!\Komponen_Subse|Add0~10_combout\ & ((\Komponen_Subse|Add0~12_combout\ & (!\Komponen_Subse|Add0~18_combout\)) # (!\Komponen_Subse|Add0~12_combout\ & ((\Komponen_ShiftR|Mux1~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~10_combout\,
	datab => \Komponen_Subse|Add0~18_combout\,
	datac => \Komponen_ShiftR|Mux1~13_combout\,
	datad => \Komponen_Subse|Add0~12_combout\,
	combout => \Komponen_ShiftR|Mux2~1_combout\);

-- Location: LCCOMB_X24_Y15_N0
\Komponen_ShiftR|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux2~2_combout\ = (\Komponen_ShiftR|Mux2~1_combout\) # ((\Komponen_Subse|Add0~10_combout\ & \Komponen_ShiftR|Mux1~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~10_combout\,
	datab => \Komponen_ShiftR|Mux2~1_combout\,
	datad => \Komponen_ShiftR|Mux1~23_combout\,
	combout => \Komponen_ShiftR|Mux2~2_combout\);

-- Location: LCCOMB_X23_Y15_N26
\Komponen_ShiftR|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux3~1_combout\ = ((\Komponen_Subse|Add0~18_combout\ & ((!\Komponen_Subse|Add0~12_combout\) # (!\Komponen_Subse|Add0~10_combout\)))) # (!\Komponen_ShiftR|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~10_combout\,
	datab => \Komponen_Subse|Add0~12_combout\,
	datac => \Komponen_Subse|Add0~18_combout\,
	datad => \Komponen_ShiftR|Mux0~0_combout\,
	combout => \Komponen_ShiftR|Mux3~1_combout\);

-- Location: LCCOMB_X25_Y15_N2
\Komponen_ShiftR|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux5~0_combout\ = (\Komponen_Subse|Add0~10_combout\ & (\Komponen_ShiftR|Mux1~13_combout\)) # (!\Komponen_Subse|Add0~10_combout\ & ((\Komponen_ShiftR|Mux1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~10_combout\,
	datab => \Komponen_ShiftR|Mux1~13_combout\,
	datac => \Komponen_ShiftR|Mux1~16_combout\,
	combout => \Komponen_ShiftR|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y15_N0
\Komponen_ShiftR|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux3~0_combout\ = (\Komponen_Subse|Add0~12_combout\ & ((\Komponen_ShiftR|Mux1~24_combout\))) # (!\Komponen_Subse|Add0~12_combout\ & (\Komponen_ShiftR|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux5~0_combout\,
	datab => \Komponen_Subse|Add0~12_combout\,
	datad => \Komponen_ShiftR|Mux1~24_combout\,
	combout => \Komponen_ShiftR|Mux3~0_combout\);

-- Location: LCCOMB_X25_Y15_N30
\Komponen_ShiftR|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux4~1_combout\ = (\Komponen_Subse|Add0~10_combout\ & ((\Komponen_Subse|Add0~12_combout\ & ((\Komponen_ShiftR|Mux1~23_combout\))) # (!\Komponen_Subse|Add0~12_combout\ & (\Komponen_ShiftR|Mux1~16_combout\)))) # 
-- (!\Komponen_Subse|Add0~10_combout\ & (((\Komponen_Subse|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~10_combout\,
	datab => \Komponen_ShiftR|Mux1~16_combout\,
	datac => \Komponen_ShiftR|Mux1~23_combout\,
	datad => \Komponen_Subse|Add0~12_combout\,
	combout => \Komponen_ShiftR|Mux4~1_combout\);

-- Location: LCCOMB_X25_Y16_N26
\Komponen_ShiftR|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~4_combout\ = (\AlbhB~4_combout\ & (\b[6]~input_o\)) # (!\AlbhB~4_combout\ & ((\a[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AlbhB~4_combout\,
	datab => \b[6]~input_o\,
	datac => \a[6]~input_o\,
	combout => \Komponen_ShiftR|Mux1~4_combout\);

-- Location: LCCOMB_X25_Y15_N28
\Komponen_ShiftR|Mux1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~26_combout\ = (\Komponen_Subse|Add0~14_combout\ & ((!\Komponen_Subse|Add0~18_combout\))) # (!\Komponen_Subse|Add0~14_combout\ & (\Komponen_ShiftR|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~14_combout\,
	datab => \Komponen_ShiftR|Mux1~4_combout\,
	datac => \Komponen_Subse|Add0~18_combout\,
	combout => \Komponen_ShiftR|Mux1~26_combout\);

-- Location: LCCOMB_X25_Y15_N0
\Komponen_ShiftR|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux4~2_combout\ = (\Komponen_ShiftR|Mux4~1_combout\ & (((\Komponen_ShiftR|Mux1~13_combout\) # (\Komponen_Subse|Add0~10_combout\)))) # (!\Komponen_ShiftR|Mux4~1_combout\ & (\Komponen_ShiftR|Mux1~26_combout\ & 
-- ((!\Komponen_Subse|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux4~1_combout\,
	datab => \Komponen_ShiftR|Mux1~26_combout\,
	datac => \Komponen_ShiftR|Mux1~13_combout\,
	datad => \Komponen_Subse|Add0~10_combout\,
	combout => \Komponen_ShiftR|Mux4~2_combout\);

-- Location: LCCOMB_X23_Y14_N0
\Komponen_ShiftR|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux4~0_combout\ = (\Komponen_Subse|Add0~16_combout\) # ((\Komponen_Subse|Add0~14_combout\ & (!\Komponen_ShiftR|Mux0~1_combout\)) # (!\Komponen_Subse|Add0~14_combout\ & ((\Komponen_Subse|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~14_combout\,
	datab => \Komponen_ShiftR|Mux0~1_combout\,
	datac => \Komponen_Subse|Add0~18_combout\,
	datad => \Komponen_Subse|Add0~16_combout\,
	combout => \Komponen_ShiftR|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y14_N10
\Komponen_ShiftR|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux5~2_combout\ = (\Komponen_Subse|Add0~12_combout\ & \Komponen_Subse|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Komponen_Subse|Add0~12_combout\,
	datad => \Komponen_Subse|Add0~14_combout\,
	combout => \Komponen_ShiftR|Mux5~2_combout\);

-- Location: LCCOMB_X23_Y14_N28
\Komponen_ShiftR|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux5~3_combout\ = (!\Komponen_Subse|Add0~14_combout\) # (!\Komponen_Subse|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Komponen_Subse|Add0~10_combout\,
	datad => \Komponen_Subse|Add0~14_combout\,
	combout => \Komponen_ShiftR|Mux5~3_combout\);

-- Location: LCCOMB_X23_Y14_N24
\Komponen_ShiftR|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux5~4_combout\ = (\Komponen_ShiftR|Mux5~2_combout\) # ((\Komponen_Subse|Add0~16_combout\) # ((\Komponen_ShiftR|Mux5~3_combout\ & \Komponen_Subse|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux5~2_combout\,
	datab => \Komponen_ShiftR|Mux5~3_combout\,
	datac => \Komponen_Subse|Add0~18_combout\,
	datad => \Komponen_Subse|Add0~16_combout\,
	combout => \Komponen_ShiftR|Mux5~4_combout\);

-- Location: LCCOMB_X25_Y15_N26
\Komponen_ShiftR|Mux1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux1~27_combout\ = (\Komponen_Subse|Add0~14_combout\ & (\Komponen_ShiftR|Mux1~23_combout\)) # (!\Komponen_Subse|Add0~14_combout\ & ((\Komponen_ShiftR|Mux1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~14_combout\,
	datab => \Komponen_ShiftR|Mux1~23_combout\,
	datac => \Komponen_ShiftR|Mux1~10_combout\,
	combout => \Komponen_ShiftR|Mux1~27_combout\);

-- Location: LCCOMB_X25_Y15_N4
\Komponen_ShiftR|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux7~0_combout\ = (\Komponen_Subse|Add0~10_combout\ & ((\Komponen_ShiftR|Mux1~26_combout\))) # (!\Komponen_Subse|Add0~10_combout\ & (\Komponen_ShiftR|Mux1~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~10_combout\,
	datac => \Komponen_ShiftR|Mux1~27_combout\,
	datad => \Komponen_ShiftR|Mux1~26_combout\,
	combout => \Komponen_ShiftR|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y15_N28
\Komponen_ShiftR|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux5~1_combout\ = (\Komponen_Subse|Add0~12_combout\ & ((\Komponen_ShiftR|Mux5~0_combout\))) # (!\Komponen_Subse|Add0~12_combout\ & (\Komponen_ShiftR|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Komponen_Subse|Add0~12_combout\,
	datac => \Komponen_ShiftR|Mux7~0_combout\,
	datad => \Komponen_ShiftR|Mux5~0_combout\,
	combout => \Komponen_ShiftR|Mux5~1_combout\);

-- Location: LCCOMB_X25_Y15_N6
\Komponen_ShiftR|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux6~1_combout\ = (\Komponen_Subse|Add0~10_combout\ & (((\Komponen_ShiftR|Mux1~16_combout\)) # (!\Komponen_Subse|Add0~12_combout\))) # (!\Komponen_Subse|Add0~10_combout\ & (\Komponen_Subse|Add0~12_combout\ & 
-- ((\Komponen_ShiftR|Mux1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~10_combout\,
	datab => \Komponen_Subse|Add0~12_combout\,
	datac => \Komponen_ShiftR|Mux1~16_combout\,
	datad => \Komponen_ShiftR|Mux1~26_combout\,
	combout => \Komponen_ShiftR|Mux6~1_combout\);

-- Location: LCCOMB_X25_Y15_N24
\Komponen_ShiftR|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux6~2_combout\ = (\Komponen_ShiftR|Mux6~1_combout\ & ((\Komponen_Subse|Add0~12_combout\) # ((\Komponen_ShiftR|Mux1~27_combout\)))) # (!\Komponen_ShiftR|Mux6~1_combout\ & (!\Komponen_Subse|Add0~12_combout\ & 
-- ((\Komponen_ShiftR|Mux1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux6~1_combout\,
	datab => \Komponen_Subse|Add0~12_combout\,
	datac => \Komponen_ShiftR|Mux1~27_combout\,
	datad => \Komponen_ShiftR|Mux1~15_combout\,
	combout => \Komponen_ShiftR|Mux6~2_combout\);

-- Location: LCCOMB_X23_Y14_N26
\Komponen_ShiftR|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux6~0_combout\ = (\Komponen_Subse|Add0~16_combout\) # ((\Komponen_ShiftR|Mux5~2_combout\ & (\Komponen_Subse|Add0~10_combout\)) # (!\Komponen_ShiftR|Mux5~2_combout\ & ((\Komponen_Subse|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux5~2_combout\,
	datab => \Komponen_Subse|Add0~10_combout\,
	datac => \Komponen_Subse|Add0~18_combout\,
	datad => \Komponen_Subse|Add0~16_combout\,
	combout => \Komponen_ShiftR|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y15_N30
\Komponen_ShiftR|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux7~1_combout\ = (\Komponen_Subse|Add0~12_combout\ & (\Komponen_ShiftR|Mux7~0_combout\)) # (!\Komponen_Subse|Add0~12_combout\ & ((\Komponen_ShiftR|Mux9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Komponen_Subse|Add0~12_combout\,
	datac => \Komponen_ShiftR|Mux7~0_combout\,
	datad => \Komponen_ShiftR|Mux9~1_combout\,
	combout => \Komponen_ShiftR|Mux7~1_combout\);

-- Location: LCCOMB_X23_Y14_N12
\Komponen_ShiftR|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux7~2_combout\ = (\Komponen_Subse|Add0~16_combout\) # ((\Komponen_Subse|Add0~18_combout\ & ((!\Komponen_Subse|Add0~10_combout\) # (!\Komponen_ShiftR|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux5~2_combout\,
	datab => \Komponen_Subse|Add0~10_combout\,
	datac => \Komponen_Subse|Add0~18_combout\,
	datad => \Komponen_Subse|Add0~16_combout\,
	combout => \Komponen_ShiftR|Mux7~2_combout\);

-- Location: LCCOMB_X25_Y15_N10
\Komponen_ShiftR|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux8~0_combout\ = (\Komponen_Subse|Add0~12_combout\ & ((\Komponen_Subse|Add0~10_combout\ & (\Komponen_ShiftR|Mux1~27_combout\)) # (!\Komponen_Subse|Add0~10_combout\ & ((\Komponen_ShiftR|Mux1~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~10_combout\,
	datab => \Komponen_Subse|Add0~12_combout\,
	datac => \Komponen_ShiftR|Mux1~27_combout\,
	datad => \Komponen_ShiftR|Mux1~15_combout\,
	combout => \Komponen_ShiftR|Mux8~0_combout\);

-- Location: LCCOMB_X24_Y15_N18
\Komponen_ShiftR|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux8~1_combout\ = (\Komponen_ShiftR|Mux8~0_combout\) # ((!\Komponen_Subse|Add0~12_combout\ & (\Komponen_ShiftR|Mux1~17_combout\ & \Komponen_Subse|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|Add0~12_combout\,
	datab => \Komponen_ShiftR|Mux8~0_combout\,
	datac => \Komponen_ShiftR|Mux1~17_combout\,
	datad => \Komponen_Subse|Add0~10_combout\,
	combout => \Komponen_ShiftR|Mux8~1_combout\);

-- Location: LCCOMB_X24_Y15_N20
\Komponen_ShiftR|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Mux8~2_combout\ = (\Komponen_ShiftR|Mux0~1_combout\ & ((\Komponen_ShiftR|Mux1~7_combout\) # ((\Komponen_ShiftR|Mux8~1_combout\ & !\Komponen_ShiftR|Mux1~18_combout\)))) # (!\Komponen_ShiftR|Mux0~1_combout\ & 
-- (\Komponen_ShiftR|Mux8~1_combout\ & (!\Komponen_ShiftR|Mux1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux0~1_combout\,
	datab => \Komponen_ShiftR|Mux8~1_combout\,
	datac => \Komponen_ShiftR|Mux1~18_combout\,
	datad => \Komponen_ShiftR|Mux1~7_combout\,
	combout => \Komponen_ShiftR|Mux8~2_combout\);

-- Location: LCCOMB_X23_Y15_N6
\Komponen_ShiftR|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Add0~4_combout\ = (\Komponen_ShiftR|Mux8~2_combout\ & (\Komponen_ShiftR|Add0~3\ $ (GND))) # (!\Komponen_ShiftR|Mux8~2_combout\ & (!\Komponen_ShiftR|Add0~3\ & VCC))
-- \Komponen_ShiftR|Add0~5\ = CARRY((\Komponen_ShiftR|Mux8~2_combout\ & !\Komponen_ShiftR|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux8~2_combout\,
	datad => VCC,
	cin => \Komponen_ShiftR|Add0~3\,
	combout => \Komponen_ShiftR|Add0~4_combout\,
	cout => \Komponen_ShiftR|Add0~5\);

-- Location: LCCOMB_X23_Y15_N8
\Komponen_ShiftR|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Add0~6_combout\ = (\Komponen_ShiftR|Add0~5\ & (((\Komponen_ShiftR|Mux7~2_combout\)) # (!\Komponen_ShiftR|Mux7~1_combout\))) # (!\Komponen_ShiftR|Add0~5\ & (((\Komponen_ShiftR|Mux7~1_combout\ & !\Komponen_ShiftR|Mux7~2_combout\)) # (GND)))
-- \Komponen_ShiftR|Add0~7\ = CARRY(((\Komponen_ShiftR|Mux7~2_combout\) # (!\Komponen_ShiftR|Add0~5\)) # (!\Komponen_ShiftR|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux7~1_combout\,
	datab => \Komponen_ShiftR|Mux7~2_combout\,
	datad => VCC,
	cin => \Komponen_ShiftR|Add0~5\,
	combout => \Komponen_ShiftR|Add0~6_combout\,
	cout => \Komponen_ShiftR|Add0~7\);

-- Location: LCCOMB_X23_Y15_N10
\Komponen_ShiftR|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Add0~8_combout\ = (\Komponen_ShiftR|Add0~7\ & (\Komponen_ShiftR|Mux6~2_combout\ & (!\Komponen_ShiftR|Mux6~0_combout\ & VCC))) # (!\Komponen_ShiftR|Add0~7\ & ((((\Komponen_ShiftR|Mux6~2_combout\ & !\Komponen_ShiftR|Mux6~0_combout\)))))
-- \Komponen_ShiftR|Add0~9\ = CARRY((\Komponen_ShiftR|Mux6~2_combout\ & (!\Komponen_ShiftR|Mux6~0_combout\ & !\Komponen_ShiftR|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux6~2_combout\,
	datab => \Komponen_ShiftR|Mux6~0_combout\,
	datad => VCC,
	cin => \Komponen_ShiftR|Add0~7\,
	combout => \Komponen_ShiftR|Add0~8_combout\,
	cout => \Komponen_ShiftR|Add0~9\);

-- Location: LCCOMB_X23_Y15_N12
\Komponen_ShiftR|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Add0~10_combout\ = (\Komponen_ShiftR|Add0~9\ & ((\Komponen_ShiftR|Mux5~4_combout\) # ((!\Komponen_ShiftR|Mux5~1_combout\)))) # (!\Komponen_ShiftR|Add0~9\ & (((!\Komponen_ShiftR|Mux5~4_combout\ & \Komponen_ShiftR|Mux5~1_combout\)) # 
-- (GND)))
-- \Komponen_ShiftR|Add0~11\ = CARRY((\Komponen_ShiftR|Mux5~4_combout\) # ((!\Komponen_ShiftR|Add0~9\) # (!\Komponen_ShiftR|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux5~4_combout\,
	datab => \Komponen_ShiftR|Mux5~1_combout\,
	datad => VCC,
	cin => \Komponen_ShiftR|Add0~9\,
	combout => \Komponen_ShiftR|Add0~10_combout\,
	cout => \Komponen_ShiftR|Add0~11\);

-- Location: LCCOMB_X23_Y15_N14
\Komponen_ShiftR|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Add0~12_combout\ = (\Komponen_ShiftR|Add0~11\ & (\Komponen_ShiftR|Mux4~2_combout\ & (!\Komponen_ShiftR|Mux4~0_combout\ & VCC))) # (!\Komponen_ShiftR|Add0~11\ & ((((\Komponen_ShiftR|Mux4~2_combout\ & !\Komponen_ShiftR|Mux4~0_combout\)))))
-- \Komponen_ShiftR|Add0~13\ = CARRY((\Komponen_ShiftR|Mux4~2_combout\ & (!\Komponen_ShiftR|Mux4~0_combout\ & !\Komponen_ShiftR|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux4~2_combout\,
	datab => \Komponen_ShiftR|Mux4~0_combout\,
	datad => VCC,
	cin => \Komponen_ShiftR|Add0~11\,
	combout => \Komponen_ShiftR|Add0~12_combout\,
	cout => \Komponen_ShiftR|Add0~13\);

-- Location: LCCOMB_X23_Y15_N16
\Komponen_ShiftR|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Add0~14_combout\ = (\Komponen_ShiftR|Add0~13\ & ((\Komponen_ShiftR|Mux3~1_combout\) # ((!\Komponen_ShiftR|Mux3~0_combout\)))) # (!\Komponen_ShiftR|Add0~13\ & (((!\Komponen_ShiftR|Mux3~1_combout\ & \Komponen_ShiftR|Mux3~0_combout\)) # 
-- (GND)))
-- \Komponen_ShiftR|Add0~15\ = CARRY((\Komponen_ShiftR|Mux3~1_combout\) # ((!\Komponen_ShiftR|Add0~13\) # (!\Komponen_ShiftR|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux3~1_combout\,
	datab => \Komponen_ShiftR|Mux3~0_combout\,
	datad => VCC,
	cin => \Komponen_ShiftR|Add0~13\,
	combout => \Komponen_ShiftR|Add0~14_combout\,
	cout => \Komponen_ShiftR|Add0~15\);

-- Location: LCCOMB_X23_Y15_N18
\Komponen_ShiftR|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Add0~16_combout\ = (\Komponen_ShiftR|Add0~15\ & (!\Komponen_ShiftR|Mux2~0_combout\ & (\Komponen_ShiftR|Mux2~2_combout\ & VCC))) # (!\Komponen_ShiftR|Add0~15\ & ((((!\Komponen_ShiftR|Mux2~0_combout\ & \Komponen_ShiftR|Mux2~2_combout\)))))
-- \Komponen_ShiftR|Add0~17\ = CARRY((!\Komponen_ShiftR|Mux2~0_combout\ & (\Komponen_ShiftR|Mux2~2_combout\ & !\Komponen_ShiftR|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux2~0_combout\,
	datab => \Komponen_ShiftR|Mux2~2_combout\,
	datad => VCC,
	cin => \Komponen_ShiftR|Add0~15\,
	combout => \Komponen_ShiftR|Add0~16_combout\,
	cout => \Komponen_ShiftR|Add0~17\);

-- Location: LCCOMB_X23_Y15_N20
\Komponen_ShiftR|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Add0~18_combout\ = (\Komponen_ShiftR|Add0~17\ & ((\Komponen_ShiftR|Mux1~25_combout\) # ((!\Komponen_ShiftR|Mux1~24_combout\)))) # (!\Komponen_ShiftR|Add0~17\ & (((!\Komponen_ShiftR|Mux1~25_combout\ & \Komponen_ShiftR|Mux1~24_combout\)) # 
-- (GND)))
-- \Komponen_ShiftR|Add0~19\ = CARRY((\Komponen_ShiftR|Mux1~25_combout\) # ((!\Komponen_ShiftR|Add0~17\) # (!\Komponen_ShiftR|Mux1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Mux1~25_combout\,
	datab => \Komponen_ShiftR|Mux1~24_combout\,
	datad => VCC,
	cin => \Komponen_ShiftR|Add0~17\,
	combout => \Komponen_ShiftR|Add0~18_combout\,
	cout => \Komponen_ShiftR|Add0~19\);

-- Location: LCCOMB_X23_Y15_N22
\Komponen_ShiftR|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_ShiftR|Add0~20_combout\ = \Komponen_ShiftR|Add0~19\ $ (!\Komponen_ShiftR|Mux0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Komponen_ShiftR|Mux0~2_combout\,
	cin => \Komponen_ShiftR|Add0~19\,
	combout => \Komponen_ShiftR|Add0~20_combout\);

-- Location: LCCOMB_X25_Y16_N22
\Komponen_Adder11|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~8_combout\ = \Komponen_CompS|OPS~combout\ $ (((\AlbhB~4_combout\ & ((\a[9]~input_o\))) # (!\AlbhB~4_combout\ & (\b[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AlbhB~4_combout\,
	datab => \Komponen_CompS|OPS~combout\,
	datac => \b[9]~input_o\,
	datad => \a[9]~input_o\,
	combout => \Komponen_Adder11|Add0~8_combout\);

-- Location: LCCOMB_X23_Y16_N6
\Komponen_Adder11|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~9_combout\ = \Komponen_CompS|OPS~combout\ $ (((\AlbhB~4_combout\ & ((\a[8]~input_o\))) # (!\AlbhB~4_combout\ & (\b[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[8]~input_o\,
	datab => \AlbhB~4_combout\,
	datac => \Komponen_CompS|OPS~combout\,
	datad => \a[8]~input_o\,
	combout => \Komponen_Adder11|Add0~9_combout\);

-- Location: LCCOMB_X23_Y16_N0
\Komponen_Adder11|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~10_combout\ = \Komponen_CompS|OPS~combout\ $ (((\AlbhB~4_combout\ & (\a[7]~input_o\)) # (!\AlbhB~4_combout\ & ((\b[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_CompS|OPS~combout\,
	datab => \AlbhB~4_combout\,
	datac => \a[7]~input_o\,
	datad => \b[7]~input_o\,
	combout => \Komponen_Adder11|Add0~10_combout\);

-- Location: LCCOMB_X25_Y16_N0
\Komponen_Adder11|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~11_combout\ = \Komponen_CompS|OPS~combout\ $ (((\AlbhB~4_combout\ & (\a[6]~input_o\)) # (!\AlbhB~4_combout\ & ((\b[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AlbhB~4_combout\,
	datab => \Komponen_CompS|OPS~combout\,
	datac => \a[6]~input_o\,
	datad => \b[6]~input_o\,
	combout => \Komponen_Adder11|Add0~11_combout\);

-- Location: LCCOMB_X25_Y16_N18
\Komponen_Adder11|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~12_combout\ = \Komponen_CompS|OPS~combout\ $ (((\AlbhB~4_combout\ & ((\a[5]~input_o\))) # (!\AlbhB~4_combout\ & (\b[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AlbhB~4_combout\,
	datab => \Komponen_CompS|OPS~combout\,
	datac => \b[5]~input_o\,
	datad => \a[5]~input_o\,
	combout => \Komponen_Adder11|Add0~12_combout\);

-- Location: LCCOMB_X26_Y16_N28
\Komponen_Adder11|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~13_combout\ = \Komponen_CompS|OPS~combout\ $ (((\AlbhB~4_combout\ & (\a[4]~input_o\)) # (!\AlbhB~4_combout\ & ((\b[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_CompS|OPS~combout\,
	datab => \AlbhB~4_combout\,
	datac => \a[4]~input_o\,
	datad => \b[4]~input_o\,
	combout => \Komponen_Adder11|Add0~13_combout\);

-- Location: LCCOMB_X26_Y16_N30
\Komponen_Adder11|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~14_combout\ = \Komponen_CompS|OPS~combout\ $ (((\AlbhB~4_combout\ & (\a[3]~input_o\)) # (!\AlbhB~4_combout\ & ((\b[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \Komponen_CompS|OPS~combout\,
	datac => \AlbhB~4_combout\,
	datad => \b[3]~input_o\,
	combout => \Komponen_Adder11|Add0~14_combout\);

-- Location: LCCOMB_X25_Y16_N28
\Komponen_Adder11|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~15_combout\ = \Komponen_CompS|OPS~combout\ $ (((\AlbhB~4_combout\ & ((\a[2]~input_o\))) # (!\AlbhB~4_combout\ & (\b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AlbhB~4_combout\,
	datab => \Komponen_CompS|OPS~combout\,
	datac => \b[2]~input_o\,
	datad => \a[2]~input_o\,
	combout => \Komponen_Adder11|Add0~15_combout\);

-- Location: LCCOMB_X22_Y16_N10
\Komponen_Adder11|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~16_combout\ = (\Komponen_ShiftR|Add0~4_combout\ & ((\Komponen_Adder11|Add0~15_combout\ & (\Komponen_Adder11|Add0~7\ & VCC)) # (!\Komponen_Adder11|Add0~15_combout\ & (!\Komponen_Adder11|Add0~7\)))) # 
-- (!\Komponen_ShiftR|Add0~4_combout\ & ((\Komponen_Adder11|Add0~15_combout\ & (!\Komponen_Adder11|Add0~7\)) # (!\Komponen_Adder11|Add0~15_combout\ & ((\Komponen_Adder11|Add0~7\) # (GND)))))
-- \Komponen_Adder11|Add0~17\ = CARRY((\Komponen_ShiftR|Add0~4_combout\ & (!\Komponen_Adder11|Add0~15_combout\ & !\Komponen_Adder11|Add0~7\)) # (!\Komponen_ShiftR|Add0~4_combout\ & ((!\Komponen_Adder11|Add0~7\) # (!\Komponen_Adder11|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Add0~4_combout\,
	datab => \Komponen_Adder11|Add0~15_combout\,
	datad => VCC,
	cin => \Komponen_Adder11|Add0~7\,
	combout => \Komponen_Adder11|Add0~16_combout\,
	cout => \Komponen_Adder11|Add0~17\);

-- Location: LCCOMB_X22_Y16_N12
\Komponen_Adder11|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~18_combout\ = ((\Komponen_Adder11|Add0~14_combout\ $ (\Komponen_ShiftR|Add0~6_combout\ $ (!\Komponen_Adder11|Add0~17\)))) # (GND)
-- \Komponen_Adder11|Add0~19\ = CARRY((\Komponen_Adder11|Add0~14_combout\ & ((\Komponen_ShiftR|Add0~6_combout\) # (!\Komponen_Adder11|Add0~17\))) # (!\Komponen_Adder11|Add0~14_combout\ & (\Komponen_ShiftR|Add0~6_combout\ & !\Komponen_Adder11|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Adder11|Add0~14_combout\,
	datab => \Komponen_ShiftR|Add0~6_combout\,
	datad => VCC,
	cin => \Komponen_Adder11|Add0~17\,
	combout => \Komponen_Adder11|Add0~18_combout\,
	cout => \Komponen_Adder11|Add0~19\);

-- Location: LCCOMB_X22_Y16_N14
\Komponen_Adder11|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~20_combout\ = (\Komponen_ShiftR|Add0~8_combout\ & ((\Komponen_Adder11|Add0~13_combout\ & (\Komponen_Adder11|Add0~19\ & VCC)) # (!\Komponen_Adder11|Add0~13_combout\ & (!\Komponen_Adder11|Add0~19\)))) # 
-- (!\Komponen_ShiftR|Add0~8_combout\ & ((\Komponen_Adder11|Add0~13_combout\ & (!\Komponen_Adder11|Add0~19\)) # (!\Komponen_Adder11|Add0~13_combout\ & ((\Komponen_Adder11|Add0~19\) # (GND)))))
-- \Komponen_Adder11|Add0~21\ = CARRY((\Komponen_ShiftR|Add0~8_combout\ & (!\Komponen_Adder11|Add0~13_combout\ & !\Komponen_Adder11|Add0~19\)) # (!\Komponen_ShiftR|Add0~8_combout\ & ((!\Komponen_Adder11|Add0~19\) # (!\Komponen_Adder11|Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Add0~8_combout\,
	datab => \Komponen_Adder11|Add0~13_combout\,
	datad => VCC,
	cin => \Komponen_Adder11|Add0~19\,
	combout => \Komponen_Adder11|Add0~20_combout\,
	cout => \Komponen_Adder11|Add0~21\);

-- Location: LCCOMB_X22_Y16_N16
\Komponen_Adder11|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~22_combout\ = ((\Komponen_ShiftR|Add0~10_combout\ $ (\Komponen_Adder11|Add0~12_combout\ $ (!\Komponen_Adder11|Add0~21\)))) # (GND)
-- \Komponen_Adder11|Add0~23\ = CARRY((\Komponen_ShiftR|Add0~10_combout\ & ((\Komponen_Adder11|Add0~12_combout\) # (!\Komponen_Adder11|Add0~21\))) # (!\Komponen_ShiftR|Add0~10_combout\ & (\Komponen_Adder11|Add0~12_combout\ & !\Komponen_Adder11|Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Add0~10_combout\,
	datab => \Komponen_Adder11|Add0~12_combout\,
	datad => VCC,
	cin => \Komponen_Adder11|Add0~21\,
	combout => \Komponen_Adder11|Add0~22_combout\,
	cout => \Komponen_Adder11|Add0~23\);

-- Location: LCCOMB_X22_Y16_N18
\Komponen_Adder11|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~24_combout\ = (\Komponen_Adder11|Add0~11_combout\ & ((\Komponen_ShiftR|Add0~12_combout\ & (\Komponen_Adder11|Add0~23\ & VCC)) # (!\Komponen_ShiftR|Add0~12_combout\ & (!\Komponen_Adder11|Add0~23\)))) # 
-- (!\Komponen_Adder11|Add0~11_combout\ & ((\Komponen_ShiftR|Add0~12_combout\ & (!\Komponen_Adder11|Add0~23\)) # (!\Komponen_ShiftR|Add0~12_combout\ & ((\Komponen_Adder11|Add0~23\) # (GND)))))
-- \Komponen_Adder11|Add0~25\ = CARRY((\Komponen_Adder11|Add0~11_combout\ & (!\Komponen_ShiftR|Add0~12_combout\ & !\Komponen_Adder11|Add0~23\)) # (!\Komponen_Adder11|Add0~11_combout\ & ((!\Komponen_Adder11|Add0~23\) # (!\Komponen_ShiftR|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Adder11|Add0~11_combout\,
	datab => \Komponen_ShiftR|Add0~12_combout\,
	datad => VCC,
	cin => \Komponen_Adder11|Add0~23\,
	combout => \Komponen_Adder11|Add0~24_combout\,
	cout => \Komponen_Adder11|Add0~25\);

-- Location: LCCOMB_X22_Y16_N20
\Komponen_Adder11|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~26_combout\ = ((\Komponen_ShiftR|Add0~14_combout\ $ (\Komponen_Adder11|Add0~10_combout\ $ (!\Komponen_Adder11|Add0~25\)))) # (GND)
-- \Komponen_Adder11|Add0~27\ = CARRY((\Komponen_ShiftR|Add0~14_combout\ & ((\Komponen_Adder11|Add0~10_combout\) # (!\Komponen_Adder11|Add0~25\))) # (!\Komponen_ShiftR|Add0~14_combout\ & (\Komponen_Adder11|Add0~10_combout\ & !\Komponen_Adder11|Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_ShiftR|Add0~14_combout\,
	datab => \Komponen_Adder11|Add0~10_combout\,
	datad => VCC,
	cin => \Komponen_Adder11|Add0~25\,
	combout => \Komponen_Adder11|Add0~26_combout\,
	cout => \Komponen_Adder11|Add0~27\);

-- Location: LCCOMB_X22_Y16_N22
\Komponen_Adder11|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~28_combout\ = (\Komponen_Adder11|Add0~9_combout\ & ((\Komponen_ShiftR|Add0~16_combout\ & (\Komponen_Adder11|Add0~27\ & VCC)) # (!\Komponen_ShiftR|Add0~16_combout\ & (!\Komponen_Adder11|Add0~27\)))) # 
-- (!\Komponen_Adder11|Add0~9_combout\ & ((\Komponen_ShiftR|Add0~16_combout\ & (!\Komponen_Adder11|Add0~27\)) # (!\Komponen_ShiftR|Add0~16_combout\ & ((\Komponen_Adder11|Add0~27\) # (GND)))))
-- \Komponen_Adder11|Add0~29\ = CARRY((\Komponen_Adder11|Add0~9_combout\ & (!\Komponen_ShiftR|Add0~16_combout\ & !\Komponen_Adder11|Add0~27\)) # (!\Komponen_Adder11|Add0~9_combout\ & ((!\Komponen_Adder11|Add0~27\) # (!\Komponen_ShiftR|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Adder11|Add0~9_combout\,
	datab => \Komponen_ShiftR|Add0~16_combout\,
	datad => VCC,
	cin => \Komponen_Adder11|Add0~27\,
	combout => \Komponen_Adder11|Add0~28_combout\,
	cout => \Komponen_Adder11|Add0~29\);

-- Location: LCCOMB_X22_Y16_N24
\Komponen_Adder11|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~30_combout\ = ((\Komponen_Adder11|Add0~8_combout\ $ (\Komponen_ShiftR|Add0~18_combout\ $ (!\Komponen_Adder11|Add0~29\)))) # (GND)
-- \Komponen_Adder11|Add0~31\ = CARRY((\Komponen_Adder11|Add0~8_combout\ & ((\Komponen_ShiftR|Add0~18_combout\) # (!\Komponen_Adder11|Add0~29\))) # (!\Komponen_Adder11|Add0~8_combout\ & (\Komponen_ShiftR|Add0~18_combout\ & !\Komponen_Adder11|Add0~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Adder11|Add0~8_combout\,
	datab => \Komponen_ShiftR|Add0~18_combout\,
	datad => VCC,
	cin => \Komponen_Adder11|Add0~29\,
	combout => \Komponen_Adder11|Add0~30_combout\,
	cout => \Komponen_Adder11|Add0~31\);

-- Location: LCCOMB_X22_Y16_N26
\Komponen_Adder11|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~32_combout\ = (\Komponen_CompS|OPS~combout\ & ((\Komponen_ShiftR|Add0~20_combout\ & (!\Komponen_Adder11|Add0~31\)) # (!\Komponen_ShiftR|Add0~20_combout\ & ((\Komponen_Adder11|Add0~31\) # (GND))))) # (!\Komponen_CompS|OPS~combout\ & 
-- ((\Komponen_ShiftR|Add0~20_combout\ & (\Komponen_Adder11|Add0~31\ & VCC)) # (!\Komponen_ShiftR|Add0~20_combout\ & (!\Komponen_Adder11|Add0~31\))))
-- \Komponen_Adder11|Add0~33\ = CARRY((\Komponen_CompS|OPS~combout\ & ((!\Komponen_Adder11|Add0~31\) # (!\Komponen_ShiftR|Add0~20_combout\))) # (!\Komponen_CompS|OPS~combout\ & (!\Komponen_ShiftR|Add0~20_combout\ & !\Komponen_Adder11|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_CompS|OPS~combout\,
	datab => \Komponen_ShiftR|Add0~20_combout\,
	datad => VCC,
	cin => \Komponen_Adder11|Add0~31\,
	combout => \Komponen_Adder11|Add0~32_combout\,
	cout => \Komponen_Adder11|Add0~33\);

-- Location: LCCOMB_X22_Y16_N28
\Komponen_Adder11|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Adder11|Add0~34_combout\ = \a[15]~input_o\ $ (\komponen_ConvB|Bconv~combout\ $ (!\Komponen_Adder11|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \komponen_ConvB|Bconv~combout\,
	cin => \Komponen_Adder11|Add0~33\,
	combout => \Komponen_Adder11|Add0~34_combout\);

-- Location: LCCOMB_X18_Y16_N0
\Komponen_combine|ResultME[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_combine|ResultME[0]~0_combout\ = (\Komponen_Adder11|Add0~34_combout\ & ((\Komponen_Adder11|Add0~6_combout\))) # (!\Komponen_Adder11|Add0~34_combout\ & (\Komponen_Adder11|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Adder11|Add0~4_combout\,
	datac => \Komponen_Adder11|Add0~6_combout\,
	datad => \Komponen_Adder11|Add0~34_combout\,
	combout => \Komponen_combine|ResultME[0]~0_combout\);

-- Location: LCCOMB_X18_Y16_N26
\Komponen_combine|ResultME[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_combine|ResultME[1]~1_combout\ = (\Komponen_Adder11|Add0~34_combout\ & (\Komponen_Adder11|Add0~16_combout\)) # (!\Komponen_Adder11|Add0~34_combout\ & ((\Komponen_Adder11|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Adder11|Add0~16_combout\,
	datac => \Komponen_Adder11|Add0~6_combout\,
	datad => \Komponen_Adder11|Add0~34_combout\,
	combout => \Komponen_combine|ResultME[1]~1_combout\);

-- Location: LCCOMB_X18_Y16_N12
\Komponen_combine|ResultME[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_combine|ResultME[2]~2_combout\ = (\Komponen_Adder11|Add0~34_combout\ & ((\Komponen_Adder11|Add0~18_combout\))) # (!\Komponen_Adder11|Add0~34_combout\ & (\Komponen_Adder11|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Adder11|Add0~16_combout\,
	datab => \Komponen_Adder11|Add0~34_combout\,
	datad => \Komponen_Adder11|Add0~18_combout\,
	combout => \Komponen_combine|ResultME[2]~2_combout\);

-- Location: LCCOMB_X18_Y16_N22
\Komponen_combine|ResultME[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_combine|ResultME[3]~3_combout\ = (\Komponen_Adder11|Add0~34_combout\ & (\Komponen_Adder11|Add0~20_combout\)) # (!\Komponen_Adder11|Add0~34_combout\ & ((\Komponen_Adder11|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Komponen_Adder11|Add0~34_combout\,
	datac => \Komponen_Adder11|Add0~20_combout\,
	datad => \Komponen_Adder11|Add0~18_combout\,
	combout => \Komponen_combine|ResultME[3]~3_combout\);

-- Location: LCCOMB_X18_Y16_N24
\Komponen_combine|ResultME[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_combine|ResultME[4]~4_combout\ = (\Komponen_Adder11|Add0~34_combout\ & (\Komponen_Adder11|Add0~22_combout\)) # (!\Komponen_Adder11|Add0~34_combout\ & ((\Komponen_Adder11|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Adder11|Add0~22_combout\,
	datac => \Komponen_Adder11|Add0~20_combout\,
	datad => \Komponen_Adder11|Add0~34_combout\,
	combout => \Komponen_combine|ResultME[4]~4_combout\);

-- Location: LCCOMB_X18_Y16_N2
\Komponen_combine|ResultME[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_combine|ResultME[5]~5_combout\ = (\Komponen_Adder11|Add0~34_combout\ & ((\Komponen_Adder11|Add0~24_combout\))) # (!\Komponen_Adder11|Add0~34_combout\ & (\Komponen_Adder11|Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Adder11|Add0~22_combout\,
	datab => \Komponen_Adder11|Add0~24_combout\,
	datad => \Komponen_Adder11|Add0~34_combout\,
	combout => \Komponen_combine|ResultME[5]~5_combout\);

-- Location: LCCOMB_X18_Y16_N4
\Komponen_combine|ResultME[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_combine|ResultME[6]~6_combout\ = (\Komponen_Adder11|Add0~34_combout\ & ((\Komponen_Adder11|Add0~26_combout\))) # (!\Komponen_Adder11|Add0~34_combout\ & (\Komponen_Adder11|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Komponen_Adder11|Add0~24_combout\,
	datac => \Komponen_Adder11|Add0~26_combout\,
	datad => \Komponen_Adder11|Add0~34_combout\,
	combout => \Komponen_combine|ResultME[6]~6_combout\);

-- Location: LCCOMB_X22_Y16_N0
\Komponen_combine|ResultME[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_combine|ResultME[7]~7_combout\ = (\Komponen_Adder11|Add0~34_combout\ & ((\Komponen_Adder11|Add0~28_combout\))) # (!\Komponen_Adder11|Add0~34_combout\ & (\Komponen_Adder11|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Komponen_Adder11|Add0~26_combout\,
	datac => \Komponen_Adder11|Add0~28_combout\,
	datad => \Komponen_Adder11|Add0~34_combout\,
	combout => \Komponen_combine|ResultME[7]~7_combout\);

-- Location: LCCOMB_X22_Y16_N2
\Komponen_combine|ResultME[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_combine|ResultME[8]~8_combout\ = (\Komponen_Adder11|Add0~34_combout\ & (\Komponen_Adder11|Add0~30_combout\)) # (!\Komponen_Adder11|Add0~34_combout\ & ((\Komponen_Adder11|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Komponen_Adder11|Add0~30_combout\,
	datac => \Komponen_Adder11|Add0~28_combout\,
	datad => \Komponen_Adder11|Add0~34_combout\,
	combout => \Komponen_combine|ResultME[8]~8_combout\);

-- Location: LCCOMB_X22_Y16_N30
\Komponen_combine|ResultME[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_combine|ResultME[9]~9_combout\ = (\Komponen_Adder11|Add0~34_combout\ & ((\Komponen_Adder11|Add0~32_combout\))) # (!\Komponen_Adder11|Add0~34_combout\ & (\Komponen_Adder11|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Komponen_Adder11|Add0~30_combout\,
	datac => \Komponen_Adder11|Add0~32_combout\,
	datad => \Komponen_Adder11|Add0~34_combout\,
	combout => \Komponen_combine|ResultME[9]~9_combout\);

-- Location: LCCOMB_X22_Y14_N14
\Komponen_Subse|BiggerE[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Subse|BiggerE[0]~0_combout\ = (\AlbhB~4_combout\ & ((\a[10]~input_o\))) # (!\AlbhB~4_combout\ & (\b[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[10]~input_o\,
	datac => \a[10]~input_o\,
	datad => \AlbhB~4_combout\,
	combout => \Komponen_Subse|BiggerE[0]~0_combout\);

-- Location: LCCOMB_X21_Y14_N16
\Komponen_combine|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_combine|Add1~0_combout\ = \Komponen_Subse|BiggerE[0]~0_combout\ $ (VCC)
-- \Komponen_combine|Add1~1\ = CARRY(\Komponen_Subse|BiggerE[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Komponen_Subse|BiggerE[0]~0_combout\,
	datad => VCC,
	combout => \Komponen_combine|Add1~0_combout\,
	cout => \Komponen_combine|Add1~1\);

-- Location: LCCOMB_X21_Y14_N2
\Komponen_combine|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_combine|Add1~2_combout\ = (\Komponen_Adder11|Add0~34_combout\ & (\Komponen_combine|Add1~0_combout\)) # (!\Komponen_Adder11|Add0~34_combout\ & ((\Komponen_Subse|BiggerE[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Adder11|Add0~34_combout\,
	datab => \Komponen_combine|Add1~0_combout\,
	datac => \Komponen_Subse|BiggerE[0]~0_combout\,
	combout => \Komponen_combine|Add1~2_combout\);

-- Location: LCCOMB_X21_Y14_N4
\Komponen_Subse|BiggerE[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Subse|BiggerE[1]~1_combout\ = (\AlbhB~4_combout\ & (\a[11]~input_o\)) # (!\AlbhB~4_combout\ & ((\b[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[11]~input_o\,
	datac => \b[11]~input_o\,
	datad => \AlbhB~4_combout\,
	combout => \Komponen_Subse|BiggerE[1]~1_combout\);

-- Location: LCCOMB_X21_Y14_N14
\Komponen_combine|Exponent~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_combine|Exponent~2_combout\ = (\Komponen_Adder11|Add0~34_combout\ & (\b[15]~input_o\ $ (\op~input_o\ $ (!\a[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[15]~input_o\,
	datab => \op~input_o\,
	datac => \Komponen_Adder11|Add0~34_combout\,
	datad => \a[15]~input_o\,
	combout => \Komponen_combine|Exponent~2_combout\);

-- Location: LCCOMB_X21_Y14_N18
\Komponen_combine|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_combine|Add1~3_combout\ = (\Komponen_Subse|BiggerE[1]~1_combout\ & ((\Komponen_combine|Exponent~2_combout\ & (!\Komponen_combine|Add1~1\)) # (!\Komponen_combine|Exponent~2_combout\ & (\Komponen_combine|Add1~1\ & VCC)))) # 
-- (!\Komponen_Subse|BiggerE[1]~1_combout\ & ((\Komponen_combine|Exponent~2_combout\ & ((\Komponen_combine|Add1~1\) # (GND))) # (!\Komponen_combine|Exponent~2_combout\ & (!\Komponen_combine|Add1~1\))))
-- \Komponen_combine|Add1~4\ = CARRY((\Komponen_Subse|BiggerE[1]~1_combout\ & (\Komponen_combine|Exponent~2_combout\ & !\Komponen_combine|Add1~1\)) # (!\Komponen_Subse|BiggerE[1]~1_combout\ & ((\Komponen_combine|Exponent~2_combout\) # 
-- (!\Komponen_combine|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|BiggerE[1]~1_combout\,
	datab => \Komponen_combine|Exponent~2_combout\,
	datad => VCC,
	cin => \Komponen_combine|Add1~1\,
	combout => \Komponen_combine|Add1~3_combout\,
	cout => \Komponen_combine|Add1~4\);

-- Location: LCCOMB_X21_Y14_N6
\Komponen_combine|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_combine|Add1~5_combout\ = (\Komponen_Adder11|Add0~34_combout\ & (\Komponen_combine|Add1~3_combout\)) # (!\Komponen_Adder11|Add0~34_combout\ & ((\Komponen_Subse|BiggerE[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Adder11|Add0~34_combout\,
	datab => \Komponen_combine|Add1~3_combout\,
	datac => \Komponen_Subse|BiggerE[1]~1_combout\,
	combout => \Komponen_combine|Add1~5_combout\);

-- Location: LCCOMB_X21_Y14_N0
\Komponen_Subse|BiggerE[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Subse|BiggerE[2]~2_combout\ = (\AlbhB~4_combout\ & ((\a[12]~input_o\))) # (!\AlbhB~4_combout\ & (\b[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AlbhB~4_combout\,
	datac => \b[12]~input_o\,
	datad => \a[12]~input_o\,
	combout => \Komponen_Subse|BiggerE[2]~2_combout\);

-- Location: LCCOMB_X21_Y14_N20
\Komponen_combine|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_combine|Add1~6_combout\ = ((\Komponen_Subse|BiggerE[2]~2_combout\ $ (\Komponen_combine|Exponent~2_combout\ $ (\Komponen_combine|Add1~4\)))) # (GND)
-- \Komponen_combine|Add1~7\ = CARRY((\Komponen_Subse|BiggerE[2]~2_combout\ & ((!\Komponen_combine|Add1~4\) # (!\Komponen_combine|Exponent~2_combout\))) # (!\Komponen_Subse|BiggerE[2]~2_combout\ & (!\Komponen_combine|Exponent~2_combout\ & 
-- !\Komponen_combine|Add1~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|BiggerE[2]~2_combout\,
	datab => \Komponen_combine|Exponent~2_combout\,
	datad => VCC,
	cin => \Komponen_combine|Add1~4\,
	combout => \Komponen_combine|Add1~6_combout\,
	cout => \Komponen_combine|Add1~7\);

-- Location: LCCOMB_X21_Y14_N26
\Komponen_combine|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_combine|Add1~8_combout\ = (\Komponen_Adder11|Add0~34_combout\ & ((\Komponen_combine|Add1~6_combout\))) # (!\Komponen_Adder11|Add0~34_combout\ & (\Komponen_Subse|BiggerE[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Komponen_Subse|BiggerE[2]~2_combout\,
	datac => \Komponen_Adder11|Add0~34_combout\,
	datad => \Komponen_combine|Add1~6_combout\,
	combout => \Komponen_combine|Add1~8_combout\);

-- Location: LCCOMB_X21_Y14_N12
\Komponen_Subse|BiggerE[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Subse|BiggerE[3]~3_combout\ = (\AlbhB~4_combout\ & (\a[13]~input_o\)) # (!\AlbhB~4_combout\ & ((\b[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[13]~input_o\,
	datac => \b[13]~input_o\,
	datad => \AlbhB~4_combout\,
	combout => \Komponen_Subse|BiggerE[3]~3_combout\);

-- Location: LCCOMB_X21_Y14_N22
\Komponen_combine|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_combine|Add1~9_combout\ = (\Komponen_Subse|BiggerE[3]~3_combout\ & ((\Komponen_combine|Exponent~2_combout\ & (!\Komponen_combine|Add1~7\)) # (!\Komponen_combine|Exponent~2_combout\ & (\Komponen_combine|Add1~7\ & VCC)))) # 
-- (!\Komponen_Subse|BiggerE[3]~3_combout\ & ((\Komponen_combine|Exponent~2_combout\ & ((\Komponen_combine|Add1~7\) # (GND))) # (!\Komponen_combine|Exponent~2_combout\ & (!\Komponen_combine|Add1~7\))))
-- \Komponen_combine|Add1~10\ = CARRY((\Komponen_Subse|BiggerE[3]~3_combout\ & (\Komponen_combine|Exponent~2_combout\ & !\Komponen_combine|Add1~7\)) # (!\Komponen_Subse|BiggerE[3]~3_combout\ & ((\Komponen_combine|Exponent~2_combout\) # 
-- (!\Komponen_combine|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|BiggerE[3]~3_combout\,
	datab => \Komponen_combine|Exponent~2_combout\,
	datad => VCC,
	cin => \Komponen_combine|Add1~7\,
	combout => \Komponen_combine|Add1~9_combout\,
	cout => \Komponen_combine|Add1~10\);

-- Location: LCCOMB_X21_Y14_N30
\Komponen_combine|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_combine|Add1~11_combout\ = (\Komponen_Adder11|Add0~34_combout\ & (\Komponen_combine|Add1~9_combout\)) # (!\Komponen_Adder11|Add0~34_combout\ & ((\Komponen_Subse|BiggerE[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_combine|Add1~9_combout\,
	datac => \Komponen_Adder11|Add0~34_combout\,
	datad => \Komponen_Subse|BiggerE[3]~3_combout\,
	combout => \Komponen_combine|Add1~11_combout\);

-- Location: LCCOMB_X21_Y14_N10
\Komponen_Subse|BiggerE[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_Subse|BiggerE[4]~4_combout\ = (\AlbhB~4_combout\ & (\a[14]~input_o\)) # (!\AlbhB~4_combout\ & ((\b[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[14]~input_o\,
	datac => \b[14]~input_o\,
	datad => \AlbhB~4_combout\,
	combout => \Komponen_Subse|BiggerE[4]~4_combout\);

-- Location: LCCOMB_X21_Y14_N24
\Komponen_combine|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_combine|Add1~12_combout\ = \Komponen_Subse|BiggerE[4]~4_combout\ $ (\Komponen_combine|Exponent~2_combout\ $ (\Komponen_combine|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Komponen_Subse|BiggerE[4]~4_combout\,
	datab => \Komponen_combine|Exponent~2_combout\,
	cin => \Komponen_combine|Add1~10\,
	combout => \Komponen_combine|Add1~12_combout\);

-- Location: LCCOMB_X21_Y14_N28
\Komponen_combine|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_combine|Add1~14_combout\ = (\Komponen_Adder11|Add0~34_combout\ & (\Komponen_combine|Add1~12_combout\)) # (!\Komponen_Adder11|Add0~34_combout\ & ((\Komponen_Subse|BiggerE[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Komponen_combine|Add1~12_combout\,
	datac => \Komponen_Adder11|Add0~34_combout\,
	datad => \Komponen_Subse|BiggerE[4]~4_combout\,
	combout => \Komponen_combine|Add1~14_combout\);

-- Location: LCCOMB_X23_Y16_N2
\Komponen_CompS|FixS~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Komponen_CompS|FixS~2_combout\ = (\AlbhB~4_combout\ & (((\a[15]~input_o\)))) # (!\AlbhB~4_combout\ & (\b[15]~input_o\ $ ((\op~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[15]~input_o\,
	datab => \AlbhB~4_combout\,
	datac => \op~input_o\,
	datad => \a[15]~input_o\,
	combout => \Komponen_CompS|FixS~2_combout\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_result(10) <= \result[10]~output_o\;

ww_result(11) <= \result[11]~output_o\;

ww_result(12) <= \result[12]~output_o\;

ww_result(13) <= \result[13]~output_o\;

ww_result(14) <= \result[14]~output_o\;

ww_result(15) <= \result[15]~output_o\;
END structure;


