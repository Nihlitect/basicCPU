-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "10/10/2026 01:10:22"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BasicCPU IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	PB : IN std_logic_vector(1 DOWNTO 0);
	LED : OUT std_logic_vector(9 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	MAX10_CLK2_50 : IN std_logic;
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END BasicCPU;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAX10_CLK2_50	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF BasicCPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_PB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LED : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_MAX10_CLK2_50 : std_logic;
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|clk_reg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MAX10_CLK2_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \LED[9]~output_o\ : std_logic;
SIGNAL \LED[8]~output_o\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \MAX10_CLK2_50~input_o\ : std_logic;
SIGNAL \MAX10_CLK2_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|counter~11_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|counter~10_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|counter~9_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|counter~8_combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|counter~7_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|counter~6_combout\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|counter~5_combout\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|counter~4_combout\ : std_logic;
SIGNAL \inst|Add0~39\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|counter~3_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Add0~41\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|counter~2_combout\ : std_logic;
SIGNAL \inst|Add0~43\ : std_logic;
SIGNAL \inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|counter~1_combout\ : std_logic;
SIGNAL \inst|Add0~45\ : std_logic;
SIGNAL \inst|Add0~46_combout\ : std_logic;
SIGNAL \inst|Add0~47\ : std_logic;
SIGNAL \inst|Add0~48_combout\ : std_logic;
SIGNAL \inst|counter~0_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|clk_reg~0_combout\ : std_logic;
SIGNAL \inst|clk_reg~q\ : std_logic;
SIGNAL \inst|clk_reg~clkctrl_outclk\ : std_logic;
SIGNAL \inst25|dafdf|ffmap:3:ffi~q\ : std_logic;
SIGNAL \inst25|inst12~0_combout\ : std_logic;
SIGNAL \inst25|dafdf|ffmap:1:ffi~q\ : std_logic;
SIGNAL \inst25|inst2|Add0~1\ : std_logic;
SIGNAL \inst25|inst2|Add0~3_combout\ : std_logic;
SIGNAL \inst25|dafdf|ffmap:0:ffi~q\ : std_logic;
SIGNAL \inst25|inst2|Add1~1\ : std_logic;
SIGNAL \inst25|inst2|Add1~3\ : std_logic;
SIGNAL \inst25|inst2|Add1~4_combout\ : std_logic;
SIGNAL \inst25|inst2|Add0~5_combout\ : std_logic;
SIGNAL \inst25|dafdf|ffmap:2:ffi~q\ : std_logic;
SIGNAL \inst25|inst2|Add0~4\ : std_logic;
SIGNAL \inst25|inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst25|inst2|Add1~5\ : std_logic;
SIGNAL \inst25|inst2|Add1~6_combout\ : std_logic;
SIGNAL \inst25|inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst45|CODE~8195_combout\ : std_logic;
SIGNAL \inst25|dafdf|ffmap:6:ffi~q\ : std_logic;
SIGNAL \inst25|inst2|Add0~7\ : std_logic;
SIGNAL \inst25|inst2|Add0~9_combout\ : std_logic;
SIGNAL \inst25|inst2|Add1~7\ : std_logic;
SIGNAL \inst25|inst2|Add1~8_combout\ : std_logic;
SIGNAL \inst25|inst2|Add0~11_combout\ : std_logic;
SIGNAL \inst25|dafdf|ffmap:4:ffi~q\ : std_logic;
SIGNAL \inst25|inst2|Add0~10\ : std_logic;
SIGNAL \inst25|inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst25|inst2|Add1~9\ : std_logic;
SIGNAL \inst25|inst2|Add1~10_combout\ : std_logic;
SIGNAL \inst25|inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst25|dafdf|ffmap:5:ffi~q\ : std_logic;
SIGNAL \inst25|inst2|Add0~13\ : std_logic;
SIGNAL \inst25|inst2|Add0~15_combout\ : std_logic;
SIGNAL \inst25|inst2|Add1~11\ : std_logic;
SIGNAL \inst25|inst2|Add1~12_combout\ : std_logic;
SIGNAL \inst25|inst2|Add0~17_combout\ : std_logic;
SIGNAL \inst25|dafdf|ffmap:7:ffi~q\ : std_logic;
SIGNAL \inst25|inst2|Add1~13\ : std_logic;
SIGNAL \inst25|inst2|Add1~14_combout\ : std_logic;
SIGNAL \inst25|inst2|Add0~16\ : std_logic;
SIGNAL \inst25|inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst25|inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst45|CODE~8192_combout\ : std_logic;
SIGNAL \inst25|dafdf|ffmap:8:ffi~q\ : std_logic;
SIGNAL \inst25|inst2|Add1~15\ : std_logic;
SIGNAL \inst25|inst2|Add1~16_combout\ : std_logic;
SIGNAL \inst25|inst2|Add0~19\ : std_logic;
SIGNAL \inst25|inst2|Add0~21_combout\ : std_logic;
SIGNAL \inst25|inst2|Add0~23_combout\ : std_logic;
SIGNAL \inst45|CODE~8196_combout\ : std_logic;
SIGNAL \checkInstructionLength|CTE~0_combout\ : std_logic;
SIGNAL \inst25|inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst25|inst2|Add1~2_combout\ : std_logic;
SIGNAL \inst25|inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst45|CODE~8193_combout\ : std_logic;
SIGNAL \inst45|CODE~8194_combout\ : std_logic;
SIGNAL \inst25|inst2|Add1~0_combout\ : std_logic;
SIGNAL \inst25|inst5|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst25|inst5|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst45|CODE~8197_combout\ : std_logic;
SIGNAL \inst24|Mux8~0_combout\ : std_logic;
SIGNAL \inst24|Mux8~2_combout\ : std_logic;
SIGNAL \inst24|Mux8~1_combout\ : std_logic;
SIGNAL \DeviceSelRegister|Q[1]~feeder_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst24|Mux0~0_combout\ : std_logic;
SIGNAL \inst21|sela~0_combout\ : std_logic;
SIGNAL \SelA9|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst21|sela~1_combout\ : std_logic;
SIGNAL \inst21|selexa~combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[1]~46_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst21|selb~1_combout\ : std_logic;
SIGNAL \registerFile|registe:0:regi|ffmap:1:ffi|Q~q\ : std_logic;
SIGNAL \registerFile|write_dmux|EN_out[1]~0_combout\ : std_logic;
SIGNAL \registerFile|registe:1:regi|ffmap:1:ffi|Q~q\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[1]~47_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[1]~48_combout\ : std_logic;
SIGNAL \inst21|selb~2_combout\ : std_logic;
SIGNAL \inst21|selb~0_combout\ : std_logic;
SIGNAL \inst21|selexb~combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[1]~45_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[1]~59_combout\ : std_logic;
SIGNAL \inst29|Add0~5_combout\ : std_logic;
SIGNAL \registerFile|registe:0:regi|ffmap:0:ffi|Q~q\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[0]~28_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[0]~46_combout\ : std_logic;
SIGNAL \inst45|Add0~1\ : std_logic;
SIGNAL \inst45|Add0~3\ : std_logic;
SIGNAL \inst45|Add0~5\ : std_logic;
SIGNAL \inst45|Add0~7\ : std_logic;
SIGNAL \inst45|Add0~9\ : std_logic;
SIGNAL \inst45|Add0~11\ : std_logic;
SIGNAL \inst45|Add0~13\ : std_logic;
SIGNAL \inst45|Add0~14_combout\ : std_logic;
SIGNAL \inst45|Add0~6_combout\ : std_logic;
SIGNAL \inst45|Add0~10_combout\ : std_logic;
SIGNAL \inst45|Add0~8_combout\ : std_logic;
SIGNAL \inst45|Add0~12_combout\ : std_logic;
SIGNAL \inst45|CODE~8198_combout\ : std_logic;
SIGNAL \inst45|Add0~0_combout\ : std_logic;
SIGNAL \inst45|Add0~2_combout\ : std_logic;
SIGNAL \inst45|Add0~4_combout\ : std_logic;
SIGNAL \inst45|CODE~8199_combout\ : std_logic;
SIGNAL \inst45|CODE~8200_combout\ : std_logic;
SIGNAL \inst29|Add0~0_combout\ : std_logic;
SIGNAL \inst29|Add0~2_cout\ : std_logic;
SIGNAL \inst29|Add0~3_combout\ : std_logic;
SIGNAL \inst32~combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[15]~4_combout\ : std_logic;
SIGNAL \registerFile|registe:0:regi|ffmap:15:ffi|Q~q\ : std_logic;
SIGNAL \registerFile|registe:1:regi|ffmap:15:ffi|Q~q\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[15]~5_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[15]~6_combout\ : std_logic;
SIGNAL \inst45|CODE~8202_combout\ : std_logic;
SIGNAL \inst45|CODE~8203_combout\ : std_logic;
SIGNAL \ImmeRegister|Q[15]~feeder_combout\ : std_logic;
SIGNAL \immBMux|$00000|auto_generated|result_node[15]~2_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[15]~51_combout\ : std_logic;
SIGNAL \inst29|Add0~47_combout\ : std_logic;
SIGNAL \registerFile|registe:0:regi|ffmap:14:ffi|Q~q\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[14]~30_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[14]~48_combout\ : std_logic;
SIGNAL \inst45|CODE~8201_combout\ : std_logic;
SIGNAL \inst29|Add0~44_combout\ : std_logic;
SIGNAL \registerFile|registe:0:regi|ffmap:13:ffi|Q~q\ : std_logic;
SIGNAL \registerFile|registe:1:regi|ffmap:13:ffi|Q~q\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[13]~11_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[13]~10_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[13]~12_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[12]~41_combout\ : std_logic;
SIGNAL \registerFile|registe:0:regi|ffmap:12:ffi|Q~q\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[12]~32_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[12]~33_combout\ : std_logic;
SIGNAL \inst29|Add0~38_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[11]~16_combout\ : std_logic;
SIGNAL \registerFile|registe:0:regi|ffmap:11:ffi|Q~q\ : std_logic;
SIGNAL \registerFile|registe:1:regi|ffmap:11:ffi|Q~q\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[11]~17_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[11]~18_combout\ : std_logic;
SIGNAL \PB[1]~input_o\ : std_logic;
SIGNAL \inst2|SWO~0_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[10]~35_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[10]~51_combout\ : std_logic;
SIGNAL \inst29|Add0~32_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[9]~22_combout\ : std_logic;
SIGNAL \registerFile|registe:1:regi|ffmap:9:ffi|Q~q\ : std_logic;
SIGNAL \registerFile|registe:0:regi|ffmap:9:ffi|Q~q\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[9]~23_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[9]~24_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[8]~37_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[8]~53_combout\ : std_logic;
SIGNAL \inst29|Add0~26_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \registerFile|registe:0:regi|ffmap:7:ffi|Q~q\ : std_logic;
SIGNAL \registerFile|registe:1:regi|ffmap:7:ffi|Q~q\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[7]~29_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[7]~28_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[7]~30_combout\ : std_logic;
SIGNAL \registerFile|registe:0:regi|ffmap:6:ffi|Q~q\ : std_logic;
SIGNAL \registerFile|registe:1:regi|ffmap:6:ffi|Q~q\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[6]~32_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[6]~31_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[6]~33_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \registerFile|registe:0:regi|ffmap:5:ffi|Q~q\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[5]~40_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[5]~56_combout\ : std_logic;
SIGNAL \inst39|O[5]~7_combout\ : std_logic;
SIGNAL \inst39|O[5]~8_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[5]~21_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[5]~22_combout\ : std_logic;
SIGNAL \inst29|Add0~17_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \registerFile|registe:0:regi|ffmap:4:ffi|Q~q\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[4]~41_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[4]~57_combout\ : std_logic;
SIGNAL \inst39|O[4]~5_combout\ : std_logic;
SIGNAL \inst39|O[4]~6_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[4]~18_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[4]~19_combout\ : std_logic;
SIGNAL \inst29|Add0~14_combout\ : std_logic;
SIGNAL \registerFile|registe:1:regi|ffmap:3:ffi|Q~q\ : std_logic;
SIGNAL \registerFile|registe:0:regi|ffmap:3:ffi|Q~q\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[3]~41_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[3]~40_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[3]~42_combout\ : std_logic;
SIGNAL \registerFile|registe:0:regi|ffmap:2:ffi|Q~q\ : std_logic;
SIGNAL \registerFile|registe:1:regi|ffmap:2:ffi|Q~q\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[2]~44_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[2]~43_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[2]~45_combout\ : std_logic;
SIGNAL \inst29|Add0~7\ : std_logic;
SIGNAL \inst29|Add0~9_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst39|O[2]~4_combout\ : std_logic;
SIGNAL \inst39|O[2]~3_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[2]~12_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[2]~14_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[2]~44_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[2]~58_combout\ : std_logic;
SIGNAL \inst29|Add0~8_combout\ : std_logic;
SIGNAL \inst29|Add0~10\ : std_logic;
SIGNAL \inst29|Add0~12_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[3]~15_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[3]~16_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[3]~17_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[3]~42_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[3]~43_combout\ : std_logic;
SIGNAL \inst29|Add0~11_combout\ : std_logic;
SIGNAL \inst29|Add0~13\ : std_logic;
SIGNAL \inst29|Add0~15_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[4]~20_combout\ : std_logic;
SIGNAL \registerFile|registe:1:regi|ffmap:4:ffi|Q~q\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[4]~38_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[4]~37_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[4]~39_combout\ : std_logic;
SIGNAL \inst29|Add0~16\ : std_logic;
SIGNAL \inst29|Add0~18_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[5]~23_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[5]~34_combout\ : std_logic;
SIGNAL \registerFile|registe:1:regi|ffmap:5:ffi|Q~q\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[5]~35_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[5]~36_combout\ : std_logic;
SIGNAL \inst29|Add0~19\ : std_logic;
SIGNAL \inst29|Add0~21_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst39|O[6]~9_combout\ : std_logic;
SIGNAL \inst39|O[6]~10_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[6]~24_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[6]~25_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[6]~26_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[6]~39_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[6]~55_combout\ : std_logic;
SIGNAL \inst29|Add0~20_combout\ : std_logic;
SIGNAL \inst29|Add0~22\ : std_logic;
SIGNAL \inst29|Add0~24_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[7]~27_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[7]~28_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[7]~54_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[7]~38_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[7]~54_combout\ : std_logic;
SIGNAL \inst29|Add0~23_combout\ : std_logic;
SIGNAL \inst29|Add0~25\ : std_logic;
SIGNAL \inst29|Add0~27_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[8]~29_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[8]~30_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[8]~55_combout\ : std_logic;
SIGNAL \registerFile|registe:0:regi|ffmap:8:ffi|Q~q\ : std_logic;
SIGNAL \registerFile|registe:1:regi|ffmap:8:ffi|Q~q\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[8]~26_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[8]~25_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[8]~27_combout\ : std_logic;
SIGNAL \inst29|Add0~28\ : std_logic;
SIGNAL \inst29|Add0~30_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[9]~31_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[9]~32_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[9]~33_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[9]~34_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[9]~36_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[9]~52_combout\ : std_logic;
SIGNAL \inst45|DoutI[9]~feeder_combout\ : std_logic;
SIGNAL \inst29|Add0~29_combout\ : std_logic;
SIGNAL \inst29|Add0~31\ : std_logic;
SIGNAL \inst29|Add0~33_combout\ : std_logic;
SIGNAL \PB[0]~input_o\ : std_logic;
SIGNAL \inst39|O[10]~11_combout\ : std_logic;
SIGNAL \inst39|O[10]~12_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[10]~35_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[10]~36_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[10]~37_combout\ : std_logic;
SIGNAL \registerFile|registe:0:regi|ffmap:10:ffi|Q~q\ : std_logic;
SIGNAL \registerFile|registe:1:regi|ffmap:10:ffi|Q~q\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[10]~20_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[10]~19_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[10]~21_combout\ : std_logic;
SIGNAL \inst39|LessThan0~1_cout\ : std_logic;
SIGNAL \inst39|LessThan0~3_cout\ : std_logic;
SIGNAL \inst39|LessThan0~5_cout\ : std_logic;
SIGNAL \inst39|LessThan0~7_cout\ : std_logic;
SIGNAL \inst39|LessThan0~9_cout\ : std_logic;
SIGNAL \inst39|LessThan0~11_cout\ : std_logic;
SIGNAL \inst39|LessThan0~13_cout\ : std_logic;
SIGNAL \inst39|LessThan0~15_cout\ : std_logic;
SIGNAL \inst39|LessThan0~17_cout\ : std_logic;
SIGNAL \inst39|LessThan0~19_cout\ : std_logic;
SIGNAL \inst39|LessThan0~21_cout\ : std_logic;
SIGNAL \inst39|LessThan0~23_cout\ : std_logic;
SIGNAL \inst39|LessThan0~25_cout\ : std_logic;
SIGNAL \inst39|LessThan0~27_cout\ : std_logic;
SIGNAL \inst39|LessThan0~29_cout\ : std_logic;
SIGNAL \inst39|LessThan0~30_combout\ : std_logic;
SIGNAL \inst39|O[11]~13_combout\ : std_logic;
SIGNAL \inst39|O[11]~14_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[11]~38_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[11]~39_combout\ : std_logic;
SIGNAL \inst29|Add0~34\ : std_logic;
SIGNAL \inst29|Add0~36_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[11]~40_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[11]~34_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[11]~50_combout\ : std_logic;
SIGNAL \inst29|Add0~35_combout\ : std_logic;
SIGNAL \inst29|Add0~37\ : std_logic;
SIGNAL \inst29|Add0~39_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[12]~42_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[12]~43_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[12]~44_combout\ : std_logic;
SIGNAL \registerFile|registe:1:regi|ffmap:12:ffi|Q~q\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[12]~14_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[12]~13_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[12]~15_combout\ : std_logic;
SIGNAL \inst29|Add0~40\ : std_logic;
SIGNAL \inst29|Add0~42_combout\ : std_logic;
SIGNAL \inst45|DoutI[13]~feeder_combout\ : std_logic;
SIGNAL \immBMux|$00000|auto_generated|result_node[13]~0_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[13]~45_combout\ : std_logic;
SIGNAL \inst35|$00000|auto_generated|result_node[13]~0_combout\ : std_logic;
SIGNAL \inst39|O[13]~15_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[13]~46_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[13]~47_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[13]~31_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[13]~49_combout\ : std_logic;
SIGNAL \inst29|Add0~41_combout\ : std_logic;
SIGNAL \inst29|Add0~43\ : std_logic;
SIGNAL \inst29|Add0~45_combout\ : std_logic;
SIGNAL \immBMux|$00000|auto_generated|result_node[14]~1_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[14]~48_combout\ : std_logic;
SIGNAL \inst35|$00000|auto_generated|result_node[14]~1_combout\ : std_logic;
SIGNAL \inst39|O[14]~16_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[14]~49_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[14]~50_combout\ : std_logic;
SIGNAL \registerFile|registe:1:regi|ffmap:14:ffi|Q~q\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[14]~8_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[14]~7_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[14]~9_combout\ : std_logic;
SIGNAL \inst29|Add0~46\ : std_logic;
SIGNAL \inst29|Add0~48_combout\ : std_logic;
SIGNAL \inst35|$00000|auto_generated|result_node[15]~2_combout\ : std_logic;
SIGNAL \inst39|N~0_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[15]~52_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[15]~53_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[15]~29_combout\ : std_logic;
SIGNAL \SelB|$00000|auto_generated|result_node[15]~47_combout\ : std_logic;
SIGNAL \inst39|LessThan2~1_cout\ : std_logic;
SIGNAL \inst39|LessThan2~3_cout\ : std_logic;
SIGNAL \inst39|LessThan2~5_cout\ : std_logic;
SIGNAL \inst39|LessThan2~7_cout\ : std_logic;
SIGNAL \inst39|LessThan2~9_cout\ : std_logic;
SIGNAL \inst39|LessThan2~11_cout\ : std_logic;
SIGNAL \inst39|LessThan2~13_cout\ : std_logic;
SIGNAL \inst39|LessThan2~15_cout\ : std_logic;
SIGNAL \inst39|LessThan2~17_cout\ : std_logic;
SIGNAL \inst39|LessThan2~19_cout\ : std_logic;
SIGNAL \inst39|LessThan2~21_cout\ : std_logic;
SIGNAL \inst39|LessThan2~23_cout\ : std_logic;
SIGNAL \inst39|LessThan2~25_cout\ : std_logic;
SIGNAL \inst39|LessThan2~27_cout\ : std_logic;
SIGNAL \inst39|LessThan2~29_cout\ : std_logic;
SIGNAL \inst39|LessThan2~30_combout\ : std_logic;
SIGNAL \inst39|O[11]~0_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[0]~6_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[0]~8_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \registerFile|registe:1:regi|ffmap:0:ffi|Q~q\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \SelA|$00000|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst29|Add0~4\ : std_logic;
SIGNAL \inst29|Add0~6_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst39|O[1]~1_combout\ : std_logic;
SIGNAL \inst39|O[1]~2_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[1]~9_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[1]~10_combout\ : std_logic;
SIGNAL \inst34|$00000|auto_generated|result_node[1]~11_combout\ : std_logic;
SIGNAL \inst2|SSEN~0_combout\ : std_logic;
SIGNAL \SevenSegmentRegister|ffmap:1:ffi|Q~q\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \SevenSegmentRegister|ffmap:3:ffi|Q~q\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \SevenSegmentRegister|ffmap:2:ffi|Q~q\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \SevenSegmentRegister|ffmap:0:ffi|Q~q\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst6|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst6|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst6|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst6|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst6|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst6|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst6|Mux6~0_combout\ : std_logic;
SIGNAL \inst25|inst1|process_0~2_combout\ : std_logic;
SIGNAL \inst25|inst1|sp[0]~1_combout\ : std_logic;
SIGNAL \inst25|inst1|sp[1]~2_combout\ : std_logic;
SIGNAL \inst25|inst1|sp[2]~0_combout\ : std_logic;
SIGNAL \inst25|inst1|Equal1~0_combout\ : std_logic;
SIGNAL \SevenSegmentRegister|ffmap:6:ffi|Q~q\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|result_node[6]~6_combout\ : std_logic;
SIGNAL \SevenSegmentRegister|ffmap:7:ffi|Q~q\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|result_node[7]~7_combout\ : std_logic;
SIGNAL \SevenSegmentRegister|ffmap:4:ffi|Q~q\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \SevenSegmentRegister|ffmap:5:ffi|Q~q\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \inst1|inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst5|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst5|Mux6~0_combout\ : std_logic;
SIGNAL \SevenSegmentRegister|ffmap:10:ffi|Q~q\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|result_node[10]~10_combout\ : std_logic;
SIGNAL \SevenSegmentRegister|ffmap:8:ffi|Q~q\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|result_node[8]~8_combout\ : std_logic;
SIGNAL \SevenSegmentRegister|ffmap:9:ffi|Q~q\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|result_node[9]~9_combout\ : std_logic;
SIGNAL \SevenSegmentRegister|ffmap:11:ffi|Q~q\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|result_node[11]~11_combout\ : std_logic;
SIGNAL \inst1|inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux6~0_combout\ : std_logic;
SIGNAL \SevenSegmentRegister|ffmap:13:ffi|Q~q\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|result_node[13]~13_combout\ : std_logic;
SIGNAL \SevenSegmentRegister|ffmap:15:ffi|Q~q\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|result_node[15]~15_combout\ : std_logic;
SIGNAL \SevenSegmentRegister|ffmap:14:ffi|Q~q\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|result_node[14]~14_combout\ : std_logic;
SIGNAL \SevenSegmentRegister|ffmap:12:ffi|Q~q\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|result_node[12]~12_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux6~0_combout\ : std_logic;
SIGNAL \inst66|b2v_inst2|gen:1:muxi|inst4~0_combout\ : std_logic;
SIGNAL \inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\ : std_logic;
SIGNAL \inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\ : std_logic;
SIGNAL \inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\ : std_logic;
SIGNAL \inst66|b2v_inst2|gen:0:muxi|inst4~0_combout\ : std_logic;
SIGNAL \inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\ : std_logic;
SIGNAL \inst13|Mux0~0_combout\ : std_logic;
SIGNAL \inst13|Mux1~0_combout\ : std_logic;
SIGNAL \inst13|Mux2~0_combout\ : std_logic;
SIGNAL \inst13|Mux3~0_combout\ : std_logic;
SIGNAL \inst13|Mux4~0_combout\ : std_logic;
SIGNAL \inst13|Mux5~0_combout\ : std_logic;
SIGNAL \inst13|Mux6~0_combout\ : std_logic;
SIGNAL \inst66|b2v_inst2|gen:4:muxi|inst4~0_combout\ : std_logic;
SIGNAL \inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\ : std_logic;
SIGNAL \inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\ : std_logic;
SIGNAL \inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\ : std_logic;
SIGNAL \inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\ : std_logic;
SIGNAL \inst15|Mux0~0_combout\ : std_logic;
SIGNAL \inst15|Mux1~0_combout\ : std_logic;
SIGNAL \inst15|Mux2~0_combout\ : std_logic;
SIGNAL \inst15|Mux3~0_combout\ : std_logic;
SIGNAL \inst15|Mux4~0_combout\ : std_logic;
SIGNAL \inst15|Mux5~0_combout\ : std_logic;
SIGNAL \inst15|Mux6~0_combout\ : std_logic;
SIGNAL \ImmeRegister|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \OUTPUTSELECT|Q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \BBuffer|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DEVICESELECT|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ExecuteOperands|Q\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ABuffer|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst25|inst1|sp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DeviceSelRegister|Q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst45|Dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ExecuteOutput|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \WritebackOperands|Q\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst45|DoutI\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst15|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst13|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_PB <= PB;
LED <= ww_LED;
ww_SW <= SW;
ww_MAX10_CLK2_50 <= MAX10_CLK2_50;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst|clk_reg~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|clk_reg~q\);

\MAX10_CLK2_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MAX10_CLK2_50~input_o\);
\inst15|ALT_INV_Mux0~0_combout\ <= NOT \inst15|Mux0~0_combout\;
\inst1|inst4|ALT_INV_Mux0~0_combout\ <= NOT \inst1|inst4|Mux0~0_combout\;
\inst13|ALT_INV_Mux0~0_combout\ <= NOT \inst13|Mux0~0_combout\;
\inst1|inst6|ALT_INV_Mux0~0_combout\ <= NOT \inst1|inst6|Mux0~0_combout\;
\inst1|inst5|ALT_INV_Mux0~0_combout\ <= NOT \inst1|inst5|Mux0~0_combout\;
\inst1|inst|ALT_INV_Mux0~0_combout\ <= NOT \inst1|inst|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\LED[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[9]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\LED[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|clk_reg~q\,
	devoe => ww_devoe,
	o => \LED[8]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LED[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LED[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LED[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LED[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DEVICESELECT|Q\(0),
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LED[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|SWO~0_combout\,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\LED[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DEVICESELECT|Q\(2),
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LED[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|inst1|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\LED[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOIBUF_X78_Y29_N22
\MAX10_CLK2_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAX10_CLK2_50,
	o => \MAX10_CLK2_50~input_o\);

-- Location: CLKCTRL_G9
\MAX10_CLK2_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MAX10_CLK2_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MAX10_CLK2_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X58_Y40_N8
\inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|counter\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: FF_X58_Y40_N9
\inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(0));

-- Location: LCCOMB_X58_Y40_N10
\inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|counter\(1) & (!\inst|Add0~1\)) # (!\inst|counter\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: FF_X58_Y40_N11
\inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(1));

-- Location: LCCOMB_X58_Y40_N12
\inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|counter\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|counter\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|counter\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: FF_X58_Y40_N13
\inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(2));

-- Location: LCCOMB_X58_Y40_N14
\inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|counter\(3) & (!\inst|Add0~5\)) # (!\inst|counter\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: FF_X58_Y40_N15
\inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(3));

-- Location: LCCOMB_X58_Y40_N16
\inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|counter\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|counter\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|counter\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: FF_X58_Y40_N17
\inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(4));

-- Location: LCCOMB_X58_Y40_N6
\inst|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (\inst|counter\(1) & (\inst|counter\(4) & (\inst|counter\(3) & \inst|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(4),
	datac => \inst|counter\(3),
	datad => \inst|counter\(2),
	combout => \inst|Equal0~6_combout\);

-- Location: LCCOMB_X58_Y40_N18
\inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|counter\(5) & (!\inst|Add0~9\)) # (!\inst|counter\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: FF_X58_Y40_N19
\inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(5));

-- Location: LCCOMB_X58_Y40_N20
\inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|counter\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|counter\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|counter\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X58_Y40_N2
\inst|counter~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~11_combout\ = (!\inst|Equal0~7_combout\ & \inst|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~7_combout\,
	datad => \inst|Add0~12_combout\,
	combout => \inst|counter~11_combout\);

-- Location: FF_X58_Y40_N3
\inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(6));

-- Location: LCCOMB_X58_Y40_N22
\inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|counter\(7) & (!\inst|Add0~13\)) # (!\inst|counter\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: FF_X58_Y40_N23
\inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(7));

-- Location: LCCOMB_X58_Y40_N24
\inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|counter\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|counter\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|counter\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: FF_X58_Y40_N25
\inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(8));

-- Location: LCCOMB_X58_Y40_N4
\inst|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (!\inst|counter\(7) & (\inst|counter\(5) & (!\inst|counter\(6) & !\inst|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(7),
	datab => \inst|counter\(5),
	datac => \inst|counter\(6),
	datad => \inst|counter\(8),
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X58_Y40_N26
\inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|counter\(9) & (!\inst|Add0~17\)) # (!\inst|counter\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: FF_X58_Y40_N27
\inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(9));

-- Location: LCCOMB_X58_Y40_N28
\inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|counter\(10) & (\inst|Add0~19\ $ (GND))) # (!\inst|counter\(10) & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|counter\(10) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: FF_X58_Y40_N29
\inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(10));

-- Location: LCCOMB_X58_Y40_N30
\inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|counter\(11) & (!\inst|Add0~21\)) # (!\inst|counter\(11) & ((\inst|Add0~21\) # (GND)))
-- \inst|Add0~23\ = CARRY((!\inst|Add0~21\) # (!\inst|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: LCCOMB_X58_Y40_N0
\inst|counter~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~10_combout\ = (\inst|Add0~22_combout\ & !\inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~22_combout\,
	datac => \inst|Equal0~7_combout\,
	combout => \inst|counter~10_combout\);

-- Location: FF_X58_Y40_N1
\inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(11));

-- Location: LCCOMB_X58_Y39_N0
\inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|counter\(12) & (\inst|Add0~23\ $ (GND))) # (!\inst|counter\(12) & (!\inst|Add0~23\ & VCC))
-- \inst|Add0~25\ = CARRY((\inst|counter\(12) & !\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X57_Y39_N14
\inst|counter~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~9_combout\ = (!\inst|Equal0~7_combout\ & \inst|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~7_combout\,
	datad => \inst|Add0~24_combout\,
	combout => \inst|counter~9_combout\);

-- Location: FF_X57_Y39_N15
\inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(12));

-- Location: LCCOMB_X58_Y39_N2
\inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|counter\(13) & (!\inst|Add0~25\)) # (!\inst|counter\(13) & ((\inst|Add0~25\) # (GND)))
-- \inst|Add0~27\ = CARRY((!\inst|Add0~25\) # (!\inst|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(13),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: LCCOMB_X58_Y39_N26
\inst|counter~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~8_combout\ = (!\inst|Equal0~7_combout\ & \inst|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~7_combout\,
	datad => \inst|Add0~26_combout\,
	combout => \inst|counter~8_combout\);

-- Location: FF_X58_Y39_N27
\inst|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(13));

-- Location: LCCOMB_X58_Y39_N4
\inst|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|counter\(14) & (\inst|Add0~27\ $ (GND))) # (!\inst|counter\(14) & (!\inst|Add0~27\ & VCC))
-- \inst|Add0~29\ = CARRY((\inst|counter\(14) & !\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(14),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X58_Y39_N28
\inst|counter~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~7_combout\ = (\inst|Add0~28_combout\ & !\inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~28_combout\,
	datad => \inst|Equal0~7_combout\,
	combout => \inst|counter~7_combout\);

-- Location: FF_X58_Y39_N29
\inst|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(14));

-- Location: LCCOMB_X58_Y39_N6
\inst|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|counter\(15) & (!\inst|Add0~29\)) # (!\inst|counter\(15) & ((\inst|Add0~29\) # (GND)))
-- \inst|Add0~31\ = CARRY((!\inst|Add0~29\) # (!\inst|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(15),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: FF_X58_Y39_N7
\inst|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(15));

-- Location: LCCOMB_X58_Y39_N8
\inst|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|counter\(16) & (\inst|Add0~31\ $ (GND))) # (!\inst|counter\(16) & (!\inst|Add0~31\ & VCC))
-- \inst|Add0~33\ = CARRY((\inst|counter\(16) & !\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(16),
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: LCCOMB_X57_Y39_N6
\inst|counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~6_combout\ = (!\inst|Equal0~7_combout\ & \inst|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~7_combout\,
	datac => \inst|Add0~32_combout\,
	combout => \inst|counter~6_combout\);

-- Location: FF_X57_Y39_N7
\inst|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(16));

-- Location: LCCOMB_X58_Y39_N10
\inst|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|counter\(17) & (!\inst|Add0~33\)) # (!\inst|counter\(17) & ((\inst|Add0~33\) # (GND)))
-- \inst|Add0~35\ = CARRY((!\inst|Add0~33\) # (!\inst|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(17),
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: FF_X58_Y39_N11
\inst|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(17));

-- Location: LCCOMB_X58_Y39_N12
\inst|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|counter\(18) & (\inst|Add0~35\ $ (GND))) # (!\inst|counter\(18) & (!\inst|Add0~35\ & VCC))
-- \inst|Add0~37\ = CARRY((\inst|counter\(18) & !\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(18),
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: LCCOMB_X57_Y39_N26
\inst|counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~5_combout\ = (!\inst|Equal0~7_combout\ & \inst|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~7_combout\,
	datac => \inst|Add0~36_combout\,
	combout => \inst|counter~5_combout\);

-- Location: FF_X57_Y39_N27
\inst|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(18));

-- Location: LCCOMB_X58_Y39_N14
\inst|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\inst|counter\(19) & (!\inst|Add0~37\)) # (!\inst|counter\(19) & ((\inst|Add0~37\) # (GND)))
-- \inst|Add0~39\ = CARRY((!\inst|Add0~37\) # (!\inst|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(19),
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\,
	cout => \inst|Add0~39\);

-- Location: LCCOMB_X57_Y39_N24
\inst|counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~4_combout\ = (!\inst|Equal0~7_combout\ & \inst|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~7_combout\,
	datac => \inst|Add0~38_combout\,
	combout => \inst|counter~4_combout\);

-- Location: FF_X57_Y39_N25
\inst|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(19));

-- Location: LCCOMB_X58_Y39_N16
\inst|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\inst|counter\(20) & (\inst|Add0~39\ $ (GND))) # (!\inst|counter\(20) & (!\inst|Add0~39\ & VCC))
-- \inst|Add0~41\ = CARRY((\inst|counter\(20) & !\inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(20),
	datad => VCC,
	cin => \inst|Add0~39\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: LCCOMB_X57_Y39_N28
\inst|counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~3_combout\ = (!\inst|Equal0~7_combout\ & \inst|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~7_combout\,
	datad => \inst|Add0~40_combout\,
	combout => \inst|counter~3_combout\);

-- Location: FF_X57_Y39_N29
\inst|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(20));

-- Location: LCCOMB_X57_Y39_N30
\inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|counter\(18) & (\inst|counter\(19) & (!\inst|counter\(17) & \inst|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(18),
	datab => \inst|counter\(19),
	datac => \inst|counter\(17),
	datad => \inst|counter\(20),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X58_Y39_N18
\inst|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\inst|counter\(21) & (!\inst|Add0~41\)) # (!\inst|counter\(21) & ((\inst|Add0~41\) # (GND)))
-- \inst|Add0~43\ = CARRY((!\inst|Add0~41\) # (!\inst|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(21),
	datad => VCC,
	cin => \inst|Add0~41\,
	combout => \inst|Add0~42_combout\,
	cout => \inst|Add0~43\);

-- Location: LCCOMB_X58_Y39_N30
\inst|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~2_combout\ = (!\inst|Equal0~7_combout\ & \inst|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~7_combout\,
	datad => \inst|Add0~42_combout\,
	combout => \inst|counter~2_combout\);

-- Location: FF_X58_Y39_N31
\inst|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(21));

-- Location: LCCOMB_X58_Y39_N20
\inst|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = (\inst|counter\(22) & (\inst|Add0~43\ $ (GND))) # (!\inst|counter\(22) & (!\inst|Add0~43\ & VCC))
-- \inst|Add0~45\ = CARRY((\inst|counter\(22) & !\inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(22),
	datad => VCC,
	cin => \inst|Add0~43\,
	combout => \inst|Add0~44_combout\,
	cout => \inst|Add0~45\);

-- Location: LCCOMB_X57_Y39_N12
\inst|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~1_combout\ = (!\inst|Equal0~7_combout\ & \inst|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~7_combout\,
	datac => \inst|Add0~44_combout\,
	combout => \inst|counter~1_combout\);

-- Location: FF_X57_Y39_N13
\inst|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(22));

-- Location: LCCOMB_X58_Y39_N22
\inst|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~46_combout\ = (\inst|counter\(23) & (!\inst|Add0~45\)) # (!\inst|counter\(23) & ((\inst|Add0~45\) # (GND)))
-- \inst|Add0~47\ = CARRY((!\inst|Add0~45\) # (!\inst|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(23),
	datad => VCC,
	cin => \inst|Add0~45\,
	combout => \inst|Add0~46_combout\,
	cout => \inst|Add0~47\);

-- Location: FF_X58_Y39_N23
\inst|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(23));

-- Location: LCCOMB_X58_Y39_N24
\inst|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~48_combout\ = \inst|Add0~47\ $ (!\inst|counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|counter\(24),
	cin => \inst|Add0~47\,
	combout => \inst|Add0~48_combout\);

-- Location: LCCOMB_X57_Y39_N16
\inst|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|counter~0_combout\ = (!\inst|Equal0~7_combout\ & \inst|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~7_combout\,
	datad => \inst|Add0~48_combout\,
	combout => \inst|counter~0_combout\);

-- Location: FF_X57_Y39_N17
\inst|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	d => \inst|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(24));

-- Location: LCCOMB_X57_Y39_N20
\inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|counter\(22) & (\inst|counter\(24) & (\inst|counter\(21) & !\inst|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(22),
	datab => \inst|counter\(24),
	datac => \inst|counter\(21),
	datad => \inst|counter\(23),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y39_N8
\inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|counter\(15) & (\inst|counter\(16) & (\inst|counter\(14) & \inst|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(15),
	datab => \inst|counter\(16),
	datac => \inst|counter\(14),
	datad => \inst|counter\(13),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X57_Y39_N18
\inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\inst|counter\(12) & (\inst|counter\(11) & (!\inst|counter\(9) & !\inst|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(12),
	datab => \inst|counter\(11),
	datac => \inst|counter\(9),
	datad => \inst|counter\(10),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X57_Y39_N0
\inst|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|Equal0~1_combout\ & (\inst|Equal0~0_combout\ & (\inst|Equal0~2_combout\ & \inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Equal0~3_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X57_Y39_N10
\inst|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~7_combout\ = (\inst|counter\(0) & (\inst|Equal0~6_combout\ & (\inst|Equal0~5_combout\ & \inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|Equal0~6_combout\,
	datac => \inst|Equal0~5_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|Equal0~7_combout\);

-- Location: LCCOMB_X57_Y39_N2
\inst|clk_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|clk_reg~0_combout\ = \inst|clk_reg~q\ $ (\inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_reg~q\,
	datad => \inst|Equal0~7_combout\,
	combout => \inst|clk_reg~0_combout\);

-- Location: FF_X57_Y39_N23
\inst|clk_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK2_50~inputclkctrl_outclk\,
	asdata => \inst|clk_reg~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_reg~q\);

-- Location: CLKCTRL_G5
\inst|clk_reg~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|clk_reg~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|clk_reg~clkctrl_outclk\);

-- Location: FF_X56_Y45_N19
\inst25|dafdf|ffmap:3:ffi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \inst25|inst2|Add0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|dafdf|ffmap:3:ffi~q\);

-- Location: FF_X58_Y45_N25
\inst45|Dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~q\,
	asdata => \inst45|CODE~8194_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|Dout\(14));

-- Location: LCCOMB_X58_Y45_N6
\inst25|inst12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst12~0_combout\ = (\inst45|Dout\(15) & !\inst45|Dout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|Dout\(15),
	datad => \inst45|Dout\(14),
	combout => \inst25|inst12~0_combout\);

-- Location: FF_X56_Y45_N5
\inst25|dafdf|ffmap:1:ffi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \inst25|inst2|Add0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|dafdf|ffmap:1:ffi~q\);

-- Location: LCCOMB_X57_Y45_N12
\inst25|inst2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add0~0_combout\ = \inst25|dafdf|ffmap:1:ffi~q\ $ (VCC)
-- \inst25|inst2|Add0~1\ = CARRY(\inst25|dafdf|ffmap:1:ffi~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|dafdf|ffmap:1:ffi~q\,
	datad => VCC,
	combout => \inst25|inst2|Add0~0_combout\,
	cout => \inst25|inst2|Add0~1\);

-- Location: LCCOMB_X57_Y45_N14
\inst25|inst2|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add0~3_combout\ = (\inst25|dafdf|ffmap:2:ffi~q\ & (!\inst25|inst2|Add0~1\)) # (!\inst25|dafdf|ffmap:2:ffi~q\ & ((\inst25|inst2|Add0~1\) # (GND)))
-- \inst25|inst2|Add0~4\ = CARRY((!\inst25|inst2|Add0~1\) # (!\inst25|dafdf|ffmap:2:ffi~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|dafdf|ffmap:2:ffi~q\,
	datad => VCC,
	cin => \inst25|inst2|Add0~1\,
	combout => \inst25|inst2|Add0~3_combout\,
	cout => \inst25|inst2|Add0~4\);

-- Location: FF_X56_Y45_N31
\inst25|dafdf|ffmap:0:ffi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \inst25|inst5|$00000|auto_generated|result_node[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|dafdf|ffmap:0:ffi~q\);

-- Location: LCCOMB_X56_Y45_N12
\inst25|inst2|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add1~0_combout\ = \inst25|dafdf|ffmap:0:ffi~q\ $ (VCC)
-- \inst25|inst2|Add1~1\ = CARRY(\inst25|dafdf|ffmap:0:ffi~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|dafdf|ffmap:0:ffi~q\,
	datad => VCC,
	combout => \inst25|inst2|Add1~0_combout\,
	cout => \inst25|inst2|Add1~1\);

-- Location: LCCOMB_X56_Y45_N14
\inst25|inst2|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add1~2_combout\ = (\inst25|dafdf|ffmap:1:ffi~q\ & (!\inst25|inst2|Add1~1\)) # (!\inst25|dafdf|ffmap:1:ffi~q\ & ((\inst25|inst2|Add1~1\) # (GND)))
-- \inst25|inst2|Add1~3\ = CARRY((!\inst25|inst2|Add1~1\) # (!\inst25|dafdf|ffmap:1:ffi~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|dafdf|ffmap:1:ffi~q\,
	datad => VCC,
	cin => \inst25|inst2|Add1~1\,
	combout => \inst25|inst2|Add1~2_combout\,
	cout => \inst25|inst2|Add1~3\);

-- Location: LCCOMB_X56_Y45_N16
\inst25|inst2|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add1~4_combout\ = (\inst25|dafdf|ffmap:2:ffi~q\ & (\inst25|inst2|Add1~3\ $ (GND))) # (!\inst25|dafdf|ffmap:2:ffi~q\ & (!\inst25|inst2|Add1~3\ & VCC))
-- \inst25|inst2|Add1~5\ = CARRY((\inst25|dafdf|ffmap:2:ffi~q\ & !\inst25|inst2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|dafdf|ffmap:2:ffi~q\,
	datad => VCC,
	cin => \inst25|inst2|Add1~3\,
	combout => \inst25|inst2|Add1~4_combout\,
	cout => \inst25|inst2|Add1~5\);

-- Location: LCCOMB_X56_Y45_N0
\inst25|inst2|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add0~5_combout\ = (!\inst25|inst12~0_combout\ & ((\checkInstructionLength|CTE~0_combout\ & (\inst25|inst2|Add0~3_combout\)) # (!\checkInstructionLength|CTE~0_combout\ & ((\inst25|inst2|Add1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \checkInstructionLength|CTE~0_combout\,
	datab => \inst25|inst12~0_combout\,
	datac => \inst25|inst2|Add0~3_combout\,
	datad => \inst25|inst2|Add1~4_combout\,
	combout => \inst25|inst2|Add0~5_combout\);

-- Location: FF_X57_Y45_N5
\inst25|dafdf|ffmap:2:ffi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \inst25|inst2|Add0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|dafdf|ffmap:2:ffi~q\);

-- Location: LCCOMB_X57_Y45_N16
\inst25|inst2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add0~6_combout\ = (\inst25|dafdf|ffmap:3:ffi~q\ & (\inst25|inst2|Add0~4\ $ (GND))) # (!\inst25|dafdf|ffmap:3:ffi~q\ & (!\inst25|inst2|Add0~4\ & VCC))
-- \inst25|inst2|Add0~7\ = CARRY((\inst25|dafdf|ffmap:3:ffi~q\ & !\inst25|inst2|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|dafdf|ffmap:3:ffi~q\,
	datad => VCC,
	cin => \inst25|inst2|Add0~4\,
	combout => \inst25|inst2|Add0~6_combout\,
	cout => \inst25|inst2|Add0~7\);

-- Location: LCCOMB_X56_Y45_N18
\inst25|inst2|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add1~6_combout\ = (\inst25|dafdf|ffmap:3:ffi~q\ & (!\inst25|inst2|Add1~5\)) # (!\inst25|dafdf|ffmap:3:ffi~q\ & ((\inst25|inst2|Add1~5\) # (GND)))
-- \inst25|inst2|Add1~7\ = CARRY((!\inst25|inst2|Add1~5\) # (!\inst25|dafdf|ffmap:3:ffi~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|dafdf|ffmap:3:ffi~q\,
	datad => VCC,
	cin => \inst25|inst2|Add1~5\,
	combout => \inst25|inst2|Add1~6_combout\,
	cout => \inst25|inst2|Add1~7\);

-- Location: LCCOMB_X57_Y45_N8
\inst25|inst2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add0~8_combout\ = (!\inst25|inst12~0_combout\ & ((\checkInstructionLength|CTE~0_combout\ & (\inst25|inst2|Add0~6_combout\)) # (!\checkInstructionLength|CTE~0_combout\ & ((\inst25|inst2|Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \checkInstructionLength|CTE~0_combout\,
	datab => \inst25|inst2|Add0~6_combout\,
	datac => \inst25|inst12~0_combout\,
	datad => \inst25|inst2|Add1~6_combout\,
	combout => \inst25|inst2|Add0~8_combout\);

-- Location: LCCOMB_X56_Y45_N4
\inst45|CODE~8195\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|CODE~8195_combout\ = (\inst25|inst2|Add0~8_combout\) # ((\inst25|inst2|Add0~5_combout\) # ((\inst25|inst2|Add0~2_combout\ & \inst25|inst5|$00000|auto_generated|result_node[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst2|Add0~8_combout\,
	datab => \inst25|inst2|Add0~5_combout\,
	datac => \inst25|inst2|Add0~2_combout\,
	datad => \inst25|inst5|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \inst45|CODE~8195_combout\);

-- Location: FF_X57_Y45_N7
\inst25|dafdf|ffmap:6:ffi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \inst25|inst2|Add0~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|dafdf|ffmap:6:ffi~q\);

-- Location: LCCOMB_X57_Y45_N18
\inst25|inst2|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add0~9_combout\ = (\inst25|dafdf|ffmap:4:ffi~q\ & (!\inst25|inst2|Add0~7\)) # (!\inst25|dafdf|ffmap:4:ffi~q\ & ((\inst25|inst2|Add0~7\) # (GND)))
-- \inst25|inst2|Add0~10\ = CARRY((!\inst25|inst2|Add0~7\) # (!\inst25|dafdf|ffmap:4:ffi~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|dafdf|ffmap:4:ffi~q\,
	datad => VCC,
	cin => \inst25|inst2|Add0~7\,
	combout => \inst25|inst2|Add0~9_combout\,
	cout => \inst25|inst2|Add0~10\);

-- Location: LCCOMB_X56_Y45_N20
\inst25|inst2|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add1~8_combout\ = (\inst25|dafdf|ffmap:4:ffi~q\ & (\inst25|inst2|Add1~7\ $ (GND))) # (!\inst25|dafdf|ffmap:4:ffi~q\ & (!\inst25|inst2|Add1~7\ & VCC))
-- \inst25|inst2|Add1~9\ = CARRY((\inst25|dafdf|ffmap:4:ffi~q\ & !\inst25|inst2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|dafdf|ffmap:4:ffi~q\,
	datad => VCC,
	cin => \inst25|inst2|Add1~7\,
	combout => \inst25|inst2|Add1~8_combout\,
	cout => \inst25|inst2|Add1~9\);

-- Location: LCCOMB_X57_Y45_N10
\inst25|inst2|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add0~11_combout\ = (!\inst25|inst12~0_combout\ & ((\checkInstructionLength|CTE~0_combout\ & (\inst25|inst2|Add0~9_combout\)) # (!\checkInstructionLength|CTE~0_combout\ & ((\inst25|inst2|Add1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst12~0_combout\,
	datab => \checkInstructionLength|CTE~0_combout\,
	datac => \inst25|inst2|Add0~9_combout\,
	datad => \inst25|inst2|Add1~8_combout\,
	combout => \inst25|inst2|Add0~11_combout\);

-- Location: FF_X57_Y45_N3
\inst25|dafdf|ffmap:4:ffi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \inst25|inst2|Add0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|dafdf|ffmap:4:ffi~q\);

-- Location: LCCOMB_X57_Y45_N20
\inst25|inst2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add0~12_combout\ = (\inst25|dafdf|ffmap:5:ffi~q\ & (\inst25|inst2|Add0~10\ $ (GND))) # (!\inst25|dafdf|ffmap:5:ffi~q\ & (!\inst25|inst2|Add0~10\ & VCC))
-- \inst25|inst2|Add0~13\ = CARRY((\inst25|dafdf|ffmap:5:ffi~q\ & !\inst25|inst2|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|dafdf|ffmap:5:ffi~q\,
	datad => VCC,
	cin => \inst25|inst2|Add0~10\,
	combout => \inst25|inst2|Add0~12_combout\,
	cout => \inst25|inst2|Add0~13\);

-- Location: LCCOMB_X56_Y45_N22
\inst25|inst2|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add1~10_combout\ = (\inst25|dafdf|ffmap:5:ffi~q\ & (!\inst25|inst2|Add1~9\)) # (!\inst25|dafdf|ffmap:5:ffi~q\ & ((\inst25|inst2|Add1~9\) # (GND)))
-- \inst25|inst2|Add1~11\ = CARRY((!\inst25|inst2|Add1~9\) # (!\inst25|dafdf|ffmap:5:ffi~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|dafdf|ffmap:5:ffi~q\,
	datad => VCC,
	cin => \inst25|inst2|Add1~9\,
	combout => \inst25|inst2|Add1~10_combout\,
	cout => \inst25|inst2|Add1~11\);

-- Location: LCCOMB_X57_Y45_N28
\inst25|inst2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add0~14_combout\ = (!\inst25|inst12~0_combout\ & ((\checkInstructionLength|CTE~0_combout\ & (\inst25|inst2|Add0~12_combout\)) # (!\checkInstructionLength|CTE~0_combout\ & ((\inst25|inst2|Add1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst12~0_combout\,
	datab => \inst25|inst2|Add0~12_combout\,
	datac => \checkInstructionLength|CTE~0_combout\,
	datad => \inst25|inst2|Add1~10_combout\,
	combout => \inst25|inst2|Add0~14_combout\);

-- Location: FF_X56_Y45_N23
\inst25|dafdf|ffmap:5:ffi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \inst25|inst2|Add0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|dafdf|ffmap:5:ffi~q\);

-- Location: LCCOMB_X57_Y45_N22
\inst25|inst2|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add0~15_combout\ = (\inst25|dafdf|ffmap:6:ffi~q\ & (!\inst25|inst2|Add0~13\)) # (!\inst25|dafdf|ffmap:6:ffi~q\ & ((\inst25|inst2|Add0~13\) # (GND)))
-- \inst25|inst2|Add0~16\ = CARRY((!\inst25|inst2|Add0~13\) # (!\inst25|dafdf|ffmap:6:ffi~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|dafdf|ffmap:6:ffi~q\,
	datad => VCC,
	cin => \inst25|inst2|Add0~13\,
	combout => \inst25|inst2|Add0~15_combout\,
	cout => \inst25|inst2|Add0~16\);

-- Location: LCCOMB_X56_Y45_N24
\inst25|inst2|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add1~12_combout\ = (\inst25|dafdf|ffmap:6:ffi~q\ & (\inst25|inst2|Add1~11\ $ (GND))) # (!\inst25|dafdf|ffmap:6:ffi~q\ & (!\inst25|inst2|Add1~11\ & VCC))
-- \inst25|inst2|Add1~13\ = CARRY((\inst25|dafdf|ffmap:6:ffi~q\ & !\inst25|inst2|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|dafdf|ffmap:6:ffi~q\,
	datad => VCC,
	cin => \inst25|inst2|Add1~11\,
	combout => \inst25|inst2|Add1~12_combout\,
	cout => \inst25|inst2|Add1~13\);

-- Location: LCCOMB_X57_Y45_N30
\inst25|inst2|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add0~17_combout\ = (!\inst25|inst12~0_combout\ & ((\checkInstructionLength|CTE~0_combout\ & (\inst25|inst2|Add0~15_combout\)) # (!\checkInstructionLength|CTE~0_combout\ & ((\inst25|inst2|Add1~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst12~0_combout\,
	datab => \checkInstructionLength|CTE~0_combout\,
	datac => \inst25|inst2|Add0~15_combout\,
	datad => \inst25|inst2|Add1~12_combout\,
	combout => \inst25|inst2|Add0~17_combout\);

-- Location: FF_X56_Y45_N27
\inst25|dafdf|ffmap:7:ffi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \inst25|inst2|Add0~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|dafdf|ffmap:7:ffi~q\);

-- Location: LCCOMB_X56_Y45_N26
\inst25|inst2|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add1~14_combout\ = (\inst25|dafdf|ffmap:7:ffi~q\ & (!\inst25|inst2|Add1~13\)) # (!\inst25|dafdf|ffmap:7:ffi~q\ & ((\inst25|inst2|Add1~13\) # (GND)))
-- \inst25|inst2|Add1~15\ = CARRY((!\inst25|inst2|Add1~13\) # (!\inst25|dafdf|ffmap:7:ffi~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|dafdf|ffmap:7:ffi~q\,
	datad => VCC,
	cin => \inst25|inst2|Add1~13\,
	combout => \inst25|inst2|Add1~14_combout\,
	cout => \inst25|inst2|Add1~15\);

-- Location: LCCOMB_X57_Y45_N24
\inst25|inst2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add0~18_combout\ = (\inst25|dafdf|ffmap:7:ffi~q\ & (\inst25|inst2|Add0~16\ $ (GND))) # (!\inst25|dafdf|ffmap:7:ffi~q\ & (!\inst25|inst2|Add0~16\ & VCC))
-- \inst25|inst2|Add0~19\ = CARRY((\inst25|dafdf|ffmap:7:ffi~q\ & !\inst25|inst2|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|dafdf|ffmap:7:ffi~q\,
	datad => VCC,
	cin => \inst25|inst2|Add0~16\,
	combout => \inst25|inst2|Add0~18_combout\,
	cout => \inst25|inst2|Add0~19\);

-- Location: LCCOMB_X57_Y45_N0
\inst25|inst2|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add0~20_combout\ = (!\inst25|inst12~0_combout\ & ((\checkInstructionLength|CTE~0_combout\ & ((\inst25|inst2|Add0~18_combout\))) # (!\checkInstructionLength|CTE~0_combout\ & (\inst25|inst2|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst12~0_combout\,
	datab => \checkInstructionLength|CTE~0_combout\,
	datac => \inst25|inst2|Add1~14_combout\,
	datad => \inst25|inst2|Add0~18_combout\,
	combout => \inst25|inst2|Add0~20_combout\);

-- Location: LCCOMB_X57_Y45_N2
\inst45|CODE~8192\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|CODE~8192_combout\ = (!\inst25|inst2|Add0~17_combout\ & (!\inst25|inst2|Add0~14_combout\ & (!\inst25|inst2|Add0~11_combout\ & !\inst25|inst2|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst2|Add0~17_combout\,
	datab => \inst25|inst2|Add0~14_combout\,
	datac => \inst25|inst2|Add0~11_combout\,
	datad => \inst25|inst2|Add0~20_combout\,
	combout => \inst45|CODE~8192_combout\);

-- Location: FF_X56_Y45_N29
\inst25|dafdf|ffmap:8:ffi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \inst25|inst2|Add0~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|dafdf|ffmap:8:ffi~q\);

-- Location: LCCOMB_X56_Y45_N28
\inst25|inst2|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add1~16_combout\ = \inst25|inst2|Add1~15\ $ (!\inst25|dafdf|ffmap:8:ffi~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst25|dafdf|ffmap:8:ffi~q\,
	cin => \inst25|inst2|Add1~15\,
	combout => \inst25|inst2|Add1~16_combout\);

-- Location: LCCOMB_X57_Y45_N26
\inst25|inst2|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add0~21_combout\ = \inst25|inst2|Add0~19\ $ (\inst25|dafdf|ffmap:8:ffi~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst25|dafdf|ffmap:8:ffi~q\,
	cin => \inst25|inst2|Add0~19\,
	combout => \inst25|inst2|Add0~21_combout\);

-- Location: LCCOMB_X56_Y45_N6
\inst25|inst2|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add0~23_combout\ = (!\inst25|inst12~0_combout\ & ((\checkInstructionLength|CTE~0_combout\ & ((\inst25|inst2|Add0~21_combout\))) # (!\checkInstructionLength|CTE~0_combout\ & (\inst25|inst2|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \checkInstructionLength|CTE~0_combout\,
	datab => \inst25|inst2|Add1~16_combout\,
	datac => \inst25|inst12~0_combout\,
	datad => \inst25|inst2|Add0~21_combout\,
	combout => \inst25|inst2|Add0~23_combout\);

-- Location: LCCOMB_X56_Y45_N2
\inst45|CODE~8196\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|CODE~8196_combout\ = (!\inst45|CODE~8195_combout\ & (\inst45|CODE~8192_combout\ & !\inst25|inst2|Add0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|CODE~8195_combout\,
	datac => \inst45|CODE~8192_combout\,
	datad => \inst25|inst2|Add0~23_combout\,
	combout => \inst45|CODE~8196_combout\);

-- Location: FF_X56_Y45_N3
\inst45|Dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~q\,
	d => \inst45|CODE~8196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|Dout\(15));

-- Location: LCCOMB_X58_Y45_N30
\checkInstructionLength|CTE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \checkInstructionLength|CTE~0_combout\ = (!\inst45|Dout\(15) & (\inst45|Dout\(13) & !\inst45|Dout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|Dout\(15),
	datab => \inst45|Dout\(13),
	datad => \inst45|Dout\(14),
	combout => \checkInstructionLength|CTE~0_combout\);

-- Location: LCCOMB_X56_Y45_N8
\inst25|inst2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst2|Add0~2_combout\ = (!\inst25|inst12~0_combout\ & ((\checkInstructionLength|CTE~0_combout\ & (\inst25|inst2|Add0~0_combout\)) # (!\checkInstructionLength|CTE~0_combout\ & ((\inst25|inst2|Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \checkInstructionLength|CTE~0_combout\,
	datab => \inst25|inst2|Add0~0_combout\,
	datac => \inst25|inst2|Add1~2_combout\,
	datad => \inst25|inst12~0_combout\,
	combout => \inst25|inst2|Add0~2_combout\);

-- Location: LCCOMB_X57_Y45_N6
\inst45|CODE~8193\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|CODE~8193_combout\ = (!\inst25|inst2|Add0~23_combout\ & \inst45|CODE~8192_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst2|Add0~23_combout\,
	datad => \inst45|CODE~8192_combout\,
	combout => \inst45|CODE~8193_combout\);

-- Location: LCCOMB_X57_Y45_N4
\inst45|CODE~8194\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|CODE~8194_combout\ = (!\inst25|inst2|Add0~2_combout\ & (!\inst25|inst2|Add0~8_combout\ & (!\inst25|inst2|Add0~5_combout\ & \inst45|CODE~8193_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst2|Add0~2_combout\,
	datab => \inst25|inst2|Add0~8_combout\,
	datac => \inst25|inst2|Add0~5_combout\,
	datad => \inst45|CODE~8193_combout\,
	combout => \inst45|CODE~8194_combout\);

-- Location: FF_X58_Y45_N27
\inst45|Dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~q\,
	asdata => \inst45|CODE~8194_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|Dout\(13));

-- Location: LCCOMB_X56_Y45_N30
\inst25|inst5|$00000|auto_generated|result_node[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst5|$00000|auto_generated|result_node[0]~0_combout\ = (!\inst25|inst12~0_combout\ & ((\checkInstructionLength|CTE~0_combout\ & (\inst25|dafdf|ffmap:0:ffi~q\)) # (!\checkInstructionLength|CTE~0_combout\ & ((\inst25|inst2|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \checkInstructionLength|CTE~0_combout\,
	datab => \inst25|inst12~0_combout\,
	datac => \inst25|dafdf|ffmap:0:ffi~q\,
	datad => \inst25|inst2|Add1~0_combout\,
	combout => \inst25|inst5|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X56_Y45_N10
\inst25|inst5|$00000|auto_generated|result_node[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst5|$00000|auto_generated|result_node[0]~1_combout\ = (\inst25|inst5|$00000|auto_generated|result_node[0]~0_combout\) # ((\inst45|Dout\(0) & (!\inst45|Dout\(13) & \inst25|inst12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|Dout\(0),
	datab => \inst45|Dout\(13),
	datac => \inst25|inst12~0_combout\,
	datad => \inst25|inst5|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst25|inst5|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X58_Y45_N18
\inst45|CODE~8197\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|CODE~8197_combout\ = (!\inst25|inst5|$00000|auto_generated|result_node[0]~1_combout\ & \inst45|CODE~8194_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst5|$00000|auto_generated|result_node[0]~1_combout\,
	datac => \inst45|CODE~8194_combout\,
	combout => \inst45|CODE~8197_combout\);

-- Location: FF_X58_Y45_N19
\inst45|Dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst45|CODE~8197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|Dout\(0));

-- Location: FF_X58_Y48_N9
\ExecuteOperands|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \inst45|Dout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ExecuteOperands|Q\(0));

-- Location: LCCOMB_X62_Y45_N8
\inst24|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux8~0_combout\ = (\inst45|Dout\(13) & (\inst45|Dout\(15) & \inst45|Dout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|Dout\(13),
	datac => \inst45|Dout\(15),
	datad => \inst45|Dout\(14),
	combout => \inst24|Mux8~0_combout\);

-- Location: FF_X60_Y47_N29
\OUTPUTSELECT|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \inst24|Mux8~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTPUTSELECT|Q\(0));

-- Location: LCCOMB_X58_Y45_N22
\inst24|Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux8~2_combout\ = (!\inst45|Dout\(13) & (\inst45|Dout\(14) & \inst45|Dout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|Dout\(13),
	datab => \inst45|Dout\(14),
	datad => \inst45|Dout\(15),
	combout => \inst24|Mux8~2_combout\);

-- Location: FF_X59_Y47_N3
\OUTPUTSELECT|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \inst24|Mux8~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTPUTSELECT|Q\(4));

-- Location: LCCOMB_X58_Y45_N10
\inst24|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux8~1_combout\ = (!\inst45|Dout\(15) & (!\inst45|Dout\(13) & \inst45|Dout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|Dout\(15),
	datac => \inst45|Dout\(13),
	datad => \inst45|Dout\(14),
	combout => \inst24|Mux8~1_combout\);

-- Location: LCCOMB_X59_Y47_N28
\DeviceSelRegister|Q[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DeviceSelRegister|Q[1]~feeder_combout\ = \inst24|Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|Mux8~1_combout\,
	combout => \DeviceSelRegister|Q[1]~feeder_combout\);

-- Location: FF_X59_Y47_N29
\DeviceSelRegister|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \DeviceSelRegister|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DeviceSelRegister|Q\(1));

-- Location: LCCOMB_X59_Y47_N16
\inst34|$00000|auto_generated|result_node[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[1]~4_combout\ = (\OUTPUTSELECT|Q\(4)) # ((\DeviceSelRegister|Q\(1)) # ((\ExecuteOperands|Q\(0) & \OUTPUTSELECT|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datab => \OUTPUTSELECT|Q\(0),
	datac => \OUTPUTSELECT|Q\(4),
	datad => \DeviceSelRegister|Q\(1),
	combout => \inst34|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: FF_X61_Y49_N7
\ExecuteOutput|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst34|$00000|auto_generated|result_node[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ExecuteOutput|Q\(1));

-- Location: LCCOMB_X58_Y45_N4
\inst24|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|Mux0~0_combout\ = (\inst45|Dout\(13) & (!\inst45|Dout\(14) & !\inst45|Dout\(15))) # (!\inst45|Dout\(13) & (\inst45|Dout\(14) & \inst45|Dout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|Dout\(13),
	datab => \inst45|Dout\(14),
	datac => \inst45|Dout\(15),
	combout => \inst24|Mux0~0_combout\);

-- Location: FF_X58_Y45_N5
\DeviceSelRegister|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~q\,
	d => \inst24|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DeviceSelRegister|Q\(0));

-- Location: FF_X58_Y45_N23
\DEVICESELECT|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \DeviceSelRegister|Q\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEVICESELECT|Q\(0));

-- Location: FF_X57_Y45_N15
\inst45|Dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~q\,
	asdata => \inst45|CODE~8194_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|Dout\(9));

-- Location: FF_X58_Y45_N31
\ExecuteOperands|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~q\,
	asdata => \inst45|Dout\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ExecuteOperands|Q\(9));

-- Location: LCCOMB_X58_Y45_N28
\inst21|sela~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|sela~0_combout\ = (\DeviceSelRegister|Q\(0) & (\ExecuteOperands|Q\(9) $ (((!\inst24|Mux8~1_combout\) # (!\inst45|Dout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|Dout\(9),
	datab => \DeviceSelRegister|Q\(0),
	datac => \ExecuteOperands|Q\(9),
	datad => \inst24|Mux8~1_combout\,
	combout => \inst21|sela~0_combout\);

-- Location: FF_X58_Y45_N9
\WritebackOperands|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~q\,
	asdata => \ExecuteOperands|Q\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WritebackOperands|Q\(9));

-- Location: LCCOMB_X58_Y45_N20
\SelA9|$00000|auto_generated|result_node[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA9|$00000|auto_generated|result_node[0]~0_combout\ = (\inst45|Dout\(9) & (!\inst45|Dout\(15) & (!\inst45|Dout\(13) & \inst45|Dout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|Dout\(9),
	datab => \inst45|Dout\(15),
	datac => \inst45|Dout\(13),
	datad => \inst45|Dout\(14),
	combout => \SelA9|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X58_Y45_N14
\inst21|sela~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|sela~1_combout\ = (\inst21|sela~0_combout\) # ((\DEVICESELECT|Q\(0) & (\WritebackOperands|Q\(9) $ (!\SelA9|$00000|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEVICESELECT|Q\(0),
	datab => \inst21|sela~0_combout\,
	datac => \WritebackOperands|Q\(9),
	datad => \SelA9|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst21|sela~1_combout\);

-- Location: LCCOMB_X58_Y45_N0
\inst21|selexa\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|selexa~combout\ = (\inst21|sela~1_combout\ & ((\inst21|sela~0_combout\))) # (!\inst21|sela~1_combout\ & (\inst21|selexa~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|selexa~combout\,
	datac => \inst21|sela~1_combout\,
	datad => \inst21|sela~0_combout\,
	combout => \inst21|selexa~combout\);

-- Location: LCCOMB_X60_Y50_N16
\SelA|$00000|auto_generated|result_node[1]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[1]~46_combout\ = (\ExecuteOutput|Q\(1) & (\inst21|sela~1_combout\ & !\inst21|selexa~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOutput|Q\(1),
	datac => \inst21|sela~1_combout\,
	datad => \inst21|selexa~combout\,
	combout => \SelA|$00000|auto_generated|result_node[1]~46_combout\);

-- Location: LCCOMB_X60_Y47_N30
\SelA|$00000|auto_generated|result_node[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[0]~2_combout\ = (\inst21|sela~1_combout\ & \inst21|selexa~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|sela~1_combout\,
	datad => \inst21|selexa~combout\,
	combout => \SelA|$00000|auto_generated|result_node[0]~2_combout\);

-- Location: LCCOMB_X59_Y46_N12
\inst21|selb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|selb~1_combout\ = (\DEVICESELECT|Q\(0) & !\WritebackOperands|Q\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEVICESELECT|Q\(0),
	datad => \WritebackOperands|Q\(9),
	combout => \inst21|selb~1_combout\);

-- Location: FF_X60_Y50_N11
\registerFile|registe:0:regi|ffmap:1:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(1),
	sload => VCC,
	ena => \inst21|selb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:0:regi|ffmap:1:ffi|Q~q\);

-- Location: LCCOMB_X58_Y45_N8
\registerFile|write_dmux|EN_out[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registerFile|write_dmux|EN_out[1]~0_combout\ = (\WritebackOperands|Q\(9) & \DEVICESELECT|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WritebackOperands|Q\(9),
	datad => \DEVICESELECT|Q\(0),
	combout => \registerFile|write_dmux|EN_out[1]~0_combout\);

-- Location: FF_X60_Y50_N19
\registerFile|registe:1:regi|ffmap:1:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(1),
	sload => VCC,
	ena => \registerFile|write_dmux|EN_out[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:1:regi|ffmap:1:ffi|Q~q\);

-- Location: LCCOMB_X60_Y50_N18
\SelA|$00000|auto_generated|result_node[1]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[1]~47_combout\ = (!\inst21|sela~1_combout\ & ((\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & ((\registerFile|registe:1:regi|ffmap:1:ffi|Q~q\))) # (!\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & 
-- (\registerFile|registe:0:regi|ffmap:1:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelA9|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \registerFile|registe:0:regi|ffmap:1:ffi|Q~q\,
	datac => \registerFile|registe:1:regi|ffmap:1:ffi|Q~q\,
	datad => \inst21|sela~1_combout\,
	combout => \SelA|$00000|auto_generated|result_node[1]~47_combout\);

-- Location: LCCOMB_X61_Y49_N20
\SelA|$00000|auto_generated|result_node[1]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[1]~48_combout\ = (\SelA|$00000|auto_generated|result_node[1]~46_combout\) # ((\SelA|$00000|auto_generated|result_node[1]~47_combout\) # ((\SelA|$00000|auto_generated|result_node[0]~2_combout\ & 
-- \inst34|$00000|auto_generated|result_node[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelA|$00000|auto_generated|result_node[1]~46_combout\,
	datab => \SelA|$00000|auto_generated|result_node[0]~2_combout\,
	datac => \SelA|$00000|auto_generated|result_node[1]~47_combout\,
	datad => \inst34|$00000|auto_generated|result_node[1]~11_combout\,
	combout => \SelA|$00000|auto_generated|result_node[1]~48_combout\);

-- Location: FF_X61_Y49_N21
\ABuffer|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelA|$00000|auto_generated|result_node[1]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ABuffer|Q\(1));

-- Location: FF_X58_Y48_N13
\OUTPUTSELECT|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \checkInstructionLength|CTE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTPUTSELECT|Q\(6));

-- Location: LCCOMB_X58_Y45_N16
\inst21|selb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|selb~2_combout\ = (!\ExecuteOperands|Q\(9) & \DeviceSelRegister|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ExecuteOperands|Q\(9),
	datad => \DeviceSelRegister|Q\(0),
	combout => \inst21|selb~2_combout\);

-- Location: LCCOMB_X59_Y46_N6
\inst21|selb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|selb~0_combout\ = (\ExecuteOperands|Q\(9) & (((\DEVICESELECT|Q\(0) & !\WritebackOperands|Q\(9))))) # (!\ExecuteOperands|Q\(9) & ((\DeviceSelRegister|Q\(0)) # ((\DEVICESELECT|Q\(0) & !\WritebackOperands|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(9),
	datab => \DeviceSelRegister|Q\(0),
	datac => \DEVICESELECT|Q\(0),
	datad => \WritebackOperands|Q\(9),
	combout => \inst21|selb~0_combout\);

-- Location: LCCOMB_X59_Y46_N14
\inst21|selexb\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|selexb~combout\ = (\inst21|selb~0_combout\ & ((\inst21|selb~2_combout\))) # (!\inst21|selb~0_combout\ & (\inst21|selexb~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|selexb~combout\,
	datac => \inst21|selb~2_combout\,
	datad => \inst21|selb~0_combout\,
	combout => \inst21|selexb~combout\);

-- Location: LCCOMB_X60_Y50_N10
\SelB|$00000|auto_generated|result_node[1]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[1]~45_combout\ = (\inst21|selb~0_combout\ & (!\inst21|selexb~combout\ & (\ExecuteOutput|Q\(1)))) # (!\inst21|selb~0_combout\ & (((\registerFile|registe:0:regi|ffmap:1:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|selexb~combout\,
	datab => \ExecuteOutput|Q\(1),
	datac => \registerFile|registe:0:regi|ffmap:1:ffi|Q~q\,
	datad => \inst21|selb~0_combout\,
	combout => \SelB|$00000|auto_generated|result_node[1]~45_combout\);

-- Location: LCCOMB_X61_Y49_N26
\SelB|$00000|auto_generated|result_node[1]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[1]~59_combout\ = (\SelB|$00000|auto_generated|result_node[1]~45_combout\) # ((\inst34|$00000|auto_generated|result_node[1]~11_combout\ & (\inst21|selb~0_combout\ & \inst21|selexb~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|$00000|auto_generated|result_node[1]~11_combout\,
	datab => \SelB|$00000|auto_generated|result_node[1]~45_combout\,
	datac => \inst21|selb~0_combout\,
	datad => \inst21|selexb~combout\,
	combout => \SelB|$00000|auto_generated|result_node[1]~59_combout\);

-- Location: FF_X61_Y49_N27
\BBuffer|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelB|$00000|auto_generated|result_node[1]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BBuffer|Q\(1));

-- Location: LCCOMB_X58_Y48_N12
\inst29|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~5_combout\ = \ExecuteOperands|Q\(0) $ (((!\OUTPUTSELECT|Q\(6) & \BBuffer|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datac => \OUTPUTSELECT|Q\(6),
	datad => \BBuffer|Q\(1),
	combout => \inst29|Add0~5_combout\);

-- Location: FF_X59_Y48_N31
\ExecuteOutput|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst34|$00000|auto_generated|result_node[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ExecuteOutput|Q\(0));

-- Location: FF_X59_Y46_N29
\registerFile|registe:0:regi|ffmap:0:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(0),
	sload => VCC,
	ena => \inst21|selb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:0:regi|ffmap:0:ffi|Q~q\);

-- Location: LCCOMB_X59_Y46_N28
\SelB|$00000|auto_generated|result_node[0]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[0]~28_combout\ = (\inst21|selb~0_combout\ & (!\inst21|selexb~combout\ & (\ExecuteOutput|Q\(0)))) # (!\inst21|selb~0_combout\ & (((\registerFile|registe:0:regi|ffmap:0:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|selexb~combout\,
	datab => \ExecuteOutput|Q\(0),
	datac => \registerFile|registe:0:regi|ffmap:0:ffi|Q~q\,
	datad => \inst21|selb~0_combout\,
	combout => \SelB|$00000|auto_generated|result_node[0]~28_combout\);

-- Location: LCCOMB_X59_Y48_N0
\SelB|$00000|auto_generated|result_node[0]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[0]~46_combout\ = (\SelB|$00000|auto_generated|result_node[0]~28_combout\) # ((\inst21|selexb~combout\ & (\inst34|$00000|auto_generated|result_node[0]~8_combout\ & \inst21|selb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|selexb~combout\,
	datab => \SelB|$00000|auto_generated|result_node[0]~28_combout\,
	datac => \inst34|$00000|auto_generated|result_node[0]~8_combout\,
	datad => \inst21|selb~0_combout\,
	combout => \SelB|$00000|auto_generated|result_node[0]~46_combout\);

-- Location: FF_X59_Y48_N1
\BBuffer|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelB|$00000|auto_generated|result_node[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BBuffer|Q\(0));

-- Location: LCCOMB_X59_Y45_N6
\inst45|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|Add0~0_combout\ = (\inst25|inst5|$00000|auto_generated|result_node[0]~1_combout\ & (\inst25|inst2|Add0~2_combout\ $ (VCC))) # (!\inst25|inst5|$00000|auto_generated|result_node[0]~1_combout\ & (\inst25|inst2|Add0~2_combout\ & VCC))
-- \inst45|Add0~1\ = CARRY((\inst25|inst5|$00000|auto_generated|result_node[0]~1_combout\ & \inst25|inst2|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst5|$00000|auto_generated|result_node[0]~1_combout\,
	datab => \inst25|inst2|Add0~2_combout\,
	datad => VCC,
	combout => \inst45|Add0~0_combout\,
	cout => \inst45|Add0~1\);

-- Location: LCCOMB_X59_Y45_N8
\inst45|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|Add0~2_combout\ = (\inst25|inst2|Add0~5_combout\ & (!\inst45|Add0~1\)) # (!\inst25|inst2|Add0~5_combout\ & ((\inst45|Add0~1\) # (GND)))
-- \inst45|Add0~3\ = CARRY((!\inst45|Add0~1\) # (!\inst25|inst2|Add0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst2|Add0~5_combout\,
	datad => VCC,
	cin => \inst45|Add0~1\,
	combout => \inst45|Add0~2_combout\,
	cout => \inst45|Add0~3\);

-- Location: LCCOMB_X59_Y45_N10
\inst45|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|Add0~4_combout\ = (\inst25|inst2|Add0~8_combout\ & (\inst45|Add0~3\ $ (GND))) # (!\inst25|inst2|Add0~8_combout\ & (!\inst45|Add0~3\ & VCC))
-- \inst45|Add0~5\ = CARRY((\inst25|inst2|Add0~8_combout\ & !\inst45|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst2|Add0~8_combout\,
	datad => VCC,
	cin => \inst45|Add0~3\,
	combout => \inst45|Add0~4_combout\,
	cout => \inst45|Add0~5\);

-- Location: LCCOMB_X59_Y45_N12
\inst45|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|Add0~6_combout\ = (\inst25|inst2|Add0~11_combout\ & (!\inst45|Add0~5\)) # (!\inst25|inst2|Add0~11_combout\ & ((\inst45|Add0~5\) # (GND)))
-- \inst45|Add0~7\ = CARRY((!\inst45|Add0~5\) # (!\inst25|inst2|Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst2|Add0~11_combout\,
	datad => VCC,
	cin => \inst45|Add0~5\,
	combout => \inst45|Add0~6_combout\,
	cout => \inst45|Add0~7\);

-- Location: LCCOMB_X59_Y45_N14
\inst45|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|Add0~8_combout\ = (\inst25|inst2|Add0~14_combout\ & (\inst45|Add0~7\ $ (GND))) # (!\inst25|inst2|Add0~14_combout\ & (!\inst45|Add0~7\ & VCC))
-- \inst45|Add0~9\ = CARRY((\inst25|inst2|Add0~14_combout\ & !\inst45|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst2|Add0~14_combout\,
	datad => VCC,
	cin => \inst45|Add0~7\,
	combout => \inst45|Add0~8_combout\,
	cout => \inst45|Add0~9\);

-- Location: LCCOMB_X59_Y45_N16
\inst45|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|Add0~10_combout\ = (\inst25|inst2|Add0~17_combout\ & (!\inst45|Add0~9\)) # (!\inst25|inst2|Add0~17_combout\ & ((\inst45|Add0~9\) # (GND)))
-- \inst45|Add0~11\ = CARRY((!\inst45|Add0~9\) # (!\inst25|inst2|Add0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst2|Add0~17_combout\,
	datad => VCC,
	cin => \inst45|Add0~9\,
	combout => \inst45|Add0~10_combout\,
	cout => \inst45|Add0~11\);

-- Location: LCCOMB_X59_Y45_N18
\inst45|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|Add0~12_combout\ = (\inst25|inst2|Add0~20_combout\ & (\inst45|Add0~11\ $ (GND))) # (!\inst25|inst2|Add0~20_combout\ & (!\inst45|Add0~11\ & VCC))
-- \inst45|Add0~13\ = CARRY((\inst25|inst2|Add0~20_combout\ & !\inst45|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst2|Add0~20_combout\,
	datad => VCC,
	cin => \inst45|Add0~11\,
	combout => \inst45|Add0~12_combout\,
	cout => \inst45|Add0~13\);

-- Location: LCCOMB_X59_Y45_N20
\inst45|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|Add0~14_combout\ = \inst45|Add0~13\ $ (\inst25|inst2|Add0~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst25|inst2|Add0~23_combout\,
	cin => \inst45|Add0~13\,
	combout => \inst45|Add0~14_combout\);

-- Location: LCCOMB_X59_Y45_N22
\inst45|CODE~8198\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|CODE~8198_combout\ = (!\inst45|Add0~6_combout\ & (!\inst45|Add0~10_combout\ & (!\inst45|Add0~8_combout\ & !\inst45|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|Add0~6_combout\,
	datab => \inst45|Add0~10_combout\,
	datac => \inst45|Add0~8_combout\,
	datad => \inst45|Add0~12_combout\,
	combout => \inst45|CODE~8198_combout\);

-- Location: LCCOMB_X59_Y45_N24
\inst45|CODE~8199\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|CODE~8199_combout\ = (!\inst45|Add0~0_combout\ & (!\inst45|Add0~2_combout\ & !\inst45|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|Add0~0_combout\,
	datac => \inst45|Add0~2_combout\,
	datad => \inst45|Add0~4_combout\,
	combout => \inst45|CODE~8199_combout\);

-- Location: LCCOMB_X59_Y45_N0
\inst45|CODE~8200\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|CODE~8200_combout\ = (\inst25|inst5|$00000|auto_generated|result_node[0]~1_combout\ & (!\inst45|Add0~14_combout\ & (\inst45|CODE~8198_combout\ & \inst45|CODE~8199_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst5|$00000|auto_generated|result_node[0]~1_combout\,
	datab => \inst45|Add0~14_combout\,
	datac => \inst45|CODE~8198_combout\,
	datad => \inst45|CODE~8199_combout\,
	combout => \inst45|CODE~8200_combout\);

-- Location: FF_X59_Y45_N1
\inst45|DoutI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst45|CODE~8200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|DoutI\(0));

-- Location: FF_X58_Y48_N11
\ImmeRegister|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \inst45|DoutI\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ImmeRegister|Q\(0));

-- Location: LCCOMB_X58_Y48_N10
\inst29|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~0_combout\ = \ExecuteOperands|Q\(0) $ (((\OUTPUTSELECT|Q\(6) & ((\ImmeRegister|Q\(0)))) # (!\OUTPUTSELECT|Q\(6) & (\BBuffer|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUTPUTSELECT|Q\(6),
	datab => \BBuffer|Q\(0),
	datac => \ImmeRegister|Q\(0),
	datad => \ExecuteOperands|Q\(0),
	combout => \inst29|Add0~0_combout\);

-- Location: LCCOMB_X58_Y48_N16
\inst29|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~2_cout\ = CARRY(\ExecuteOperands|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datad => VCC,
	cout => \inst29|Add0~2_cout\);

-- Location: LCCOMB_X58_Y48_N18
\inst29|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~3_combout\ = (\ABuffer|Q\(0) & ((\inst29|Add0~0_combout\ & (\inst29|Add0~2_cout\ & VCC)) # (!\inst29|Add0~0_combout\ & (!\inst29|Add0~2_cout\)))) # (!\ABuffer|Q\(0) & ((\inst29|Add0~0_combout\ & (!\inst29|Add0~2_cout\)) # 
-- (!\inst29|Add0~0_combout\ & ((\inst29|Add0~2_cout\) # (GND)))))
-- \inst29|Add0~4\ = CARRY((\ABuffer|Q\(0) & (!\inst29|Add0~0_combout\ & !\inst29|Add0~2_cout\)) # (!\ABuffer|Q\(0) & ((!\inst29|Add0~2_cout\) # (!\inst29|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(0),
	datab => \inst29|Add0~0_combout\,
	datad => VCC,
	cin => \inst29|Add0~2_cout\,
	combout => \inst29|Add0~3_combout\,
	cout => \inst29|Add0~4\);

-- Location: LCCOMB_X59_Y47_N2
inst32 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst32~combout\ = (\DeviceSelRegister|Q\(1)) # ((\ExecuteOperands|Q\(0) & \OUTPUTSELECT|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datab => \OUTPUTSELECT|Q\(0),
	datad => \DeviceSelRegister|Q\(1),
	combout => \inst32~combout\);

-- Location: LCCOMB_X60_Y50_N0
\SelA|$00000|auto_generated|result_node[15]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[15]~4_combout\ = (\ExecuteOutput|Q\(15) & (\inst21|sela~1_combout\ & !\inst21|selexa~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOutput|Q\(15),
	datac => \inst21|sela~1_combout\,
	datad => \inst21|selexa~combout\,
	combout => \SelA|$00000|auto_generated|result_node[15]~4_combout\);

-- Location: FF_X58_Y50_N15
\registerFile|registe:0:regi|ffmap:15:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(15),
	sload => VCC,
	ena => \inst21|selb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:0:regi|ffmap:15:ffi|Q~q\);

-- Location: FF_X60_Y50_N23
\registerFile|registe:1:regi|ffmap:15:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(15),
	sload => VCC,
	ena => \registerFile|write_dmux|EN_out[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:1:regi|ffmap:15:ffi|Q~q\);

-- Location: LCCOMB_X60_Y50_N22
\SelA|$00000|auto_generated|result_node[15]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[15]~5_combout\ = (!\inst21|sela~1_combout\ & ((\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & ((\registerFile|registe:1:regi|ffmap:15:ffi|Q~q\))) # (!\SelA9|$00000|auto_generated|result_node[0]~0_combout\ 
-- & (\registerFile|registe:0:regi|ffmap:15:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelA9|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \registerFile|registe:0:regi|ffmap:15:ffi|Q~q\,
	datac => \registerFile|registe:1:regi|ffmap:15:ffi|Q~q\,
	datad => \inst21|sela~1_combout\,
	combout => \SelA|$00000|auto_generated|result_node[15]~5_combout\);

-- Location: LCCOMB_X58_Y50_N8
\SelA|$00000|auto_generated|result_node[15]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[15]~6_combout\ = (\SelA|$00000|auto_generated|result_node[15]~4_combout\) # ((\SelA|$00000|auto_generated|result_node[15]~5_combout\) # ((\SelA|$00000|auto_generated|result_node[0]~2_combout\ & 
-- \inst34|$00000|auto_generated|result_node[15]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelA|$00000|auto_generated|result_node[0]~2_combout\,
	datab => \SelA|$00000|auto_generated|result_node[15]~4_combout\,
	datac => \SelA|$00000|auto_generated|result_node[15]~5_combout\,
	datad => \inst34|$00000|auto_generated|result_node[15]~53_combout\,
	combout => \SelA|$00000|auto_generated|result_node[15]~6_combout\);

-- Location: FF_X58_Y50_N9
\ABuffer|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelA|$00000|auto_generated|result_node[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ABuffer|Q\(15));

-- Location: LCCOMB_X59_Y45_N26
\inst45|CODE~8202\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|CODE~8202_combout\ = (\inst45|Add0~2_combout\) # ((\inst45|Add0~4_combout\) # ((\inst45|Add0~0_combout\ & !\inst25|inst5|$00000|auto_generated|result_node[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|Add0~0_combout\,
	datab => \inst25|inst5|$00000|auto_generated|result_node[0]~1_combout\,
	datac => \inst45|Add0~2_combout\,
	datad => \inst45|Add0~4_combout\,
	combout => \inst45|CODE~8202_combout\);

-- Location: LCCOMB_X59_Y45_N4
\inst45|CODE~8203\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|CODE~8203_combout\ = (\inst45|CODE~8198_combout\ & (!\inst45|CODE~8202_combout\ & !\inst45|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|CODE~8198_combout\,
	datac => \inst45|CODE~8202_combout\,
	datad => \inst45|Add0~14_combout\,
	combout => \inst45|CODE~8203_combout\);

-- Location: FF_X59_Y45_N5
\inst45|DoutI[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst45|CODE~8203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|DoutI\(15));

-- Location: LCCOMB_X59_Y47_N22
\ImmeRegister|Q[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ImmeRegister|Q[15]~feeder_combout\ = \inst45|DoutI\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst45|DoutI\(15),
	combout => \ImmeRegister|Q[15]~feeder_combout\);

-- Location: FF_X59_Y47_N23
\ImmeRegister|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \ImmeRegister|Q[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ImmeRegister|Q\(15));

-- Location: LCCOMB_X58_Y50_N16
\immBMux|$00000|auto_generated|result_node[15]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \immBMux|$00000|auto_generated|result_node[15]~2_combout\ = (\OUTPUTSELECT|Q\(6) & ((\ImmeRegister|Q\(15)))) # (!\OUTPUTSELECT|Q\(6) & (\BBuffer|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(15),
	datab => \ImmeRegister|Q\(15),
	datac => \OUTPUTSELECT|Q\(6),
	combout => \immBMux|$00000|auto_generated|result_node[15]~2_combout\);

-- Location: LCCOMB_X58_Y50_N26
\inst34|$00000|auto_generated|result_node[15]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[15]~51_combout\ = (\ABuffer|Q\(15) & ((\immBMux|$00000|auto_generated|result_node[15]~2_combout\) # (\ExecuteOperands|Q\(0)))) # (!\ABuffer|Q\(15) & (\immBMux|$00000|auto_generated|result_node[15]~2_combout\ & 
-- \ExecuteOperands|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(15),
	datab => \immBMux|$00000|auto_generated|result_node[15]~2_combout\,
	datac => \ExecuteOperands|Q\(0),
	combout => \inst34|$00000|auto_generated|result_node[15]~51_combout\);

-- Location: LCCOMB_X58_Y50_N20
\inst29|Add0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~47_combout\ = \ExecuteOperands|Q\(0) $ (((\OUTPUTSELECT|Q\(6) & (\ImmeRegister|Q\(15))) # (!\OUTPUTSELECT|Q\(6) & ((\BBuffer|Q\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUTPUTSELECT|Q\(6),
	datab => \ImmeRegister|Q\(15),
	datac => \ExecuteOperands|Q\(0),
	datad => \BBuffer|Q\(15),
	combout => \inst29|Add0~47_combout\);

-- Location: FF_X59_Y48_N23
\ExecuteOutput|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst34|$00000|auto_generated|result_node[14]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ExecuteOutput|Q\(14));

-- Location: FF_X59_Y46_N21
\registerFile|registe:0:regi|ffmap:14:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(14),
	sload => VCC,
	ena => \inst21|selb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:0:regi|ffmap:14:ffi|Q~q\);

-- Location: LCCOMB_X59_Y46_N20
\SelB|$00000|auto_generated|result_node[14]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[14]~30_combout\ = (\inst21|selb~0_combout\ & (\ExecuteOutput|Q\(14) & (!\inst21|selexb~combout\))) # (!\inst21|selb~0_combout\ & (((\registerFile|registe:0:regi|ffmap:14:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOutput|Q\(14),
	datab => \inst21|selexb~combout\,
	datac => \registerFile|registe:0:regi|ffmap:14:ffi|Q~q\,
	datad => \inst21|selb~0_combout\,
	combout => \SelB|$00000|auto_generated|result_node[14]~30_combout\);

-- Location: LCCOMB_X59_Y48_N10
\SelB|$00000|auto_generated|result_node[14]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[14]~48_combout\ = (\SelB|$00000|auto_generated|result_node[14]~30_combout\) # ((\inst34|$00000|auto_generated|result_node[14]~50_combout\ & (\inst21|selexb~combout\ & \inst21|selb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|$00000|auto_generated|result_node[14]~50_combout\,
	datab => \inst21|selexb~combout\,
	datac => \SelB|$00000|auto_generated|result_node[14]~30_combout\,
	datad => \inst21|selb~0_combout\,
	combout => \SelB|$00000|auto_generated|result_node[14]~48_combout\);

-- Location: FF_X59_Y48_N11
\BBuffer|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelB|$00000|auto_generated|result_node[14]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BBuffer|Q\(14));

-- Location: LCCOMB_X59_Y45_N30
\inst45|CODE~8201\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|CODE~8201_combout\ = (!\inst45|Add0~14_combout\ & (\inst45|CODE~8198_combout\ & \inst45|CODE~8199_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst45|Add0~14_combout\,
	datac => \inst45|CODE~8198_combout\,
	datad => \inst45|CODE~8199_combout\,
	combout => \inst45|CODE~8201_combout\);

-- Location: FF_X59_Y45_N31
\inst45|DoutI[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst45|CODE~8201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|DoutI\(14));

-- Location: FF_X58_Y48_N15
\ImmeRegister|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \inst45|DoutI\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ImmeRegister|Q\(14));

-- Location: LCCOMB_X58_Y48_N8
\inst29|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~44_combout\ = \ExecuteOperands|Q\(0) $ (((\OUTPUTSELECT|Q\(6) & ((\ImmeRegister|Q\(14)))) # (!\OUTPUTSELECT|Q\(6) & (\BBuffer|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(14),
	datab => \ImmeRegister|Q\(14),
	datac => \ExecuteOperands|Q\(0),
	datad => \OUTPUTSELECT|Q\(6),
	combout => \inst29|Add0~44_combout\);

-- Location: FF_X58_Y46_N1
\registerFile|registe:0:regi|ffmap:13:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(13),
	sload => VCC,
	ena => \inst21|selb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:0:regi|ffmap:13:ffi|Q~q\);

-- Location: FF_X58_Y46_N27
\registerFile|registe:1:regi|ffmap:13:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(13),
	sload => VCC,
	ena => \registerFile|write_dmux|EN_out[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:1:regi|ffmap:13:ffi|Q~q\);

-- Location: LCCOMB_X58_Y46_N26
\SelA|$00000|auto_generated|result_node[13]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[13]~11_combout\ = (!\inst21|sela~1_combout\ & ((\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & ((\registerFile|registe:1:regi|ffmap:13:ffi|Q~q\))) # (!\SelA9|$00000|auto_generated|result_node[0]~0_combout\ 
-- & (\registerFile|registe:0:regi|ffmap:13:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|sela~1_combout\,
	datab => \registerFile|registe:0:regi|ffmap:13:ffi|Q~q\,
	datac => \registerFile|registe:1:regi|ffmap:13:ffi|Q~q\,
	datad => \SelA9|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \SelA|$00000|auto_generated|result_node[13]~11_combout\);

-- Location: LCCOMB_X60_Y47_N0
\SelA|$00000|auto_generated|result_node[13]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[13]~10_combout\ = (\inst21|sela~1_combout\ & (\ExecuteOutput|Q\(13) & !\inst21|selexa~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|sela~1_combout\,
	datab => \ExecuteOutput|Q\(13),
	datad => \inst21|selexa~combout\,
	combout => \SelA|$00000|auto_generated|result_node[13]~10_combout\);

-- Location: LCCOMB_X61_Y49_N16
\SelA|$00000|auto_generated|result_node[13]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[13]~12_combout\ = (\SelA|$00000|auto_generated|result_node[13]~11_combout\) # ((\SelA|$00000|auto_generated|result_node[13]~10_combout\) # ((\SelA|$00000|auto_generated|result_node[0]~2_combout\ & 
-- \inst34|$00000|auto_generated|result_node[13]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelA|$00000|auto_generated|result_node[13]~11_combout\,
	datab => \SelA|$00000|auto_generated|result_node[0]~2_combout\,
	datac => \SelA|$00000|auto_generated|result_node[13]~10_combout\,
	datad => \inst34|$00000|auto_generated|result_node[13]~47_combout\,
	combout => \SelA|$00000|auto_generated|result_node[13]~12_combout\);

-- Location: FF_X61_Y49_N17
\ABuffer|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelA|$00000|auto_generated|result_node[13]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ABuffer|Q\(13));

-- Location: LCCOMB_X60_Y47_N16
\inst34|$00000|auto_generated|result_node[12]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[12]~41_combout\ = (\DeviceSelRegister|Q\(1) & (\ABuffer|Q\(12) & ((!\ExecuteOperands|Q\(0)) # (!\OUTPUTSELECT|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DeviceSelRegister|Q\(1),
	datab => \OUTPUTSELECT|Q\(0),
	datac => \ABuffer|Q\(12),
	datad => \ExecuteOperands|Q\(0),
	combout => \inst34|$00000|auto_generated|result_node[12]~41_combout\);

-- Location: FF_X58_Y46_N29
\registerFile|registe:0:regi|ffmap:12:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(12),
	sload => VCC,
	ena => \inst21|selb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:0:regi|ffmap:12:ffi|Q~q\);

-- Location: LCCOMB_X58_Y46_N28
\SelB|$00000|auto_generated|result_node[12]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[12]~32_combout\ = (\inst21|selb~0_combout\ & (\ExecuteOutput|Q\(12))) # (!\inst21|selb~0_combout\ & ((\registerFile|registe:0:regi|ffmap:12:ffi|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOutput|Q\(12),
	datab => \inst21|selb~0_combout\,
	datac => \registerFile|registe:0:regi|ffmap:12:ffi|Q~q\,
	combout => \SelB|$00000|auto_generated|result_node[12]~32_combout\);

-- Location: LCCOMB_X59_Y47_N10
\SelB|$00000|auto_generated|result_node[12]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[12]~33_combout\ = (\inst21|selexb~combout\ & ((\inst21|selb~0_combout\ & ((\inst34|$00000|auto_generated|result_node[12]~44_combout\))) # (!\inst21|selb~0_combout\ & 
-- (\SelB|$00000|auto_generated|result_node[12]~32_combout\)))) # (!\inst21|selexb~combout\ & (\SelB|$00000|auto_generated|result_node[12]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|selexb~combout\,
	datab => \SelB|$00000|auto_generated|result_node[12]~32_combout\,
	datac => \inst21|selb~0_combout\,
	datad => \inst34|$00000|auto_generated|result_node[12]~44_combout\,
	combout => \SelB|$00000|auto_generated|result_node[12]~33_combout\);

-- Location: FF_X59_Y47_N11
\BBuffer|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelB|$00000|auto_generated|result_node[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BBuffer|Q\(12));

-- Location: LCCOMB_X58_Y47_N20
\inst29|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~38_combout\ = \ExecuteOperands|Q\(0) $ (((\BBuffer|Q\(12) & !\OUTPUTSELECT|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExecuteOperands|Q\(0),
	datac => \BBuffer|Q\(12),
	datad => \OUTPUTSELECT|Q\(6),
	combout => \inst29|Add0~38_combout\);

-- Location: LCCOMB_X59_Y50_N10
\SelA|$00000|auto_generated|result_node[11]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[11]~16_combout\ = (\inst21|sela~1_combout\ & (\ExecuteOutput|Q\(11) & !\inst21|selexa~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|sela~1_combout\,
	datac => \ExecuteOutput|Q\(11),
	datad => \inst21|selexa~combout\,
	combout => \SelA|$00000|auto_generated|result_node[11]~16_combout\);

-- Location: FF_X58_Y50_N29
\registerFile|registe:0:regi|ffmap:11:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(11),
	sload => VCC,
	ena => \inst21|selb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:0:regi|ffmap:11:ffi|Q~q\);

-- Location: FF_X59_Y50_N3
\registerFile|registe:1:regi|ffmap:11:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(11),
	sload => VCC,
	ena => \registerFile|write_dmux|EN_out[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:1:regi|ffmap:11:ffi|Q~q\);

-- Location: LCCOMB_X59_Y50_N2
\SelA|$00000|auto_generated|result_node[11]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[11]~17_combout\ = (!\inst21|sela~1_combout\ & ((\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & ((\registerFile|registe:1:regi|ffmap:11:ffi|Q~q\))) # (!\SelA9|$00000|auto_generated|result_node[0]~0_combout\ 
-- & (\registerFile|registe:0:regi|ffmap:11:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelA9|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \registerFile|registe:0:regi|ffmap:11:ffi|Q~q\,
	datac => \registerFile|registe:1:regi|ffmap:11:ffi|Q~q\,
	datad => \inst21|sela~1_combout\,
	combout => \SelA|$00000|auto_generated|result_node[11]~17_combout\);

-- Location: LCCOMB_X59_Y50_N0
\SelA|$00000|auto_generated|result_node[11]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[11]~18_combout\ = (\SelA|$00000|auto_generated|result_node[11]~16_combout\) # ((\SelA|$00000|auto_generated|result_node[11]~17_combout\) # ((\SelA|$00000|auto_generated|result_node[0]~2_combout\ & 
-- \inst34|$00000|auto_generated|result_node[11]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelA|$00000|auto_generated|result_node[0]~2_combout\,
	datab => \SelA|$00000|auto_generated|result_node[11]~16_combout\,
	datac => \inst34|$00000|auto_generated|result_node[11]~40_combout\,
	datad => \SelA|$00000|auto_generated|result_node[11]~17_combout\,
	combout => \SelA|$00000|auto_generated|result_node[11]~18_combout\);

-- Location: FF_X59_Y50_N1
\ABuffer|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelA|$00000|auto_generated|result_node[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ABuffer|Q\(11));

-- Location: IOIBUF_X49_Y54_N29
\PB[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(1),
	o => \PB[1]~input_o\);

-- Location: LCCOMB_X60_Y47_N18
\inst2|SWO~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|SWO~0_combout\ = (\OUTPUTSELECT|Q\(0) & \ExecuteOperands|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OUTPUTSELECT|Q\(0),
	datad => \ExecuteOperands|Q\(0),
	combout => \inst2|SWO~0_combout\);

-- Location: LCCOMB_X60_Y50_N24
\SelB|$00000|auto_generated|result_node[10]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[10]~35_combout\ = (\inst21|selb~0_combout\ & (!\inst21|selexb~combout\ & (\ExecuteOutput|Q\(10)))) # (!\inst21|selb~0_combout\ & (((\registerFile|registe:0:regi|ffmap:10:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|selexb~combout\,
	datab => \ExecuteOutput|Q\(10),
	datac => \registerFile|registe:0:regi|ffmap:10:ffi|Q~q\,
	datad => \inst21|selb~0_combout\,
	combout => \SelB|$00000|auto_generated|result_node[10]~35_combout\);

-- Location: LCCOMB_X59_Y50_N14
\SelB|$00000|auto_generated|result_node[10]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[10]~51_combout\ = (\SelB|$00000|auto_generated|result_node[10]~35_combout\) # ((\inst21|selexb~combout\ & (\inst21|selb~0_combout\ & \inst34|$00000|auto_generated|result_node[10]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelB|$00000|auto_generated|result_node[10]~35_combout\,
	datab => \inst21|selexb~combout\,
	datac => \inst21|selb~0_combout\,
	datad => \inst34|$00000|auto_generated|result_node[10]~37_combout\,
	combout => \SelB|$00000|auto_generated|result_node[10]~51_combout\);

-- Location: FF_X59_Y50_N15
\BBuffer|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelB|$00000|auto_generated|result_node[10]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BBuffer|Q\(10));

-- Location: LCCOMB_X58_Y47_N24
\inst29|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~32_combout\ = \ExecuteOperands|Q\(0) $ (((\BBuffer|Q\(10) & !\OUTPUTSELECT|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExecuteOperands|Q\(0),
	datac => \BBuffer|Q\(10),
	datad => \OUTPUTSELECT|Q\(6),
	combout => \inst29|Add0~32_combout\);

-- Location: FF_X62_Y49_N31
\ExecuteOutput|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst34|$00000|auto_generated|result_node[9]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ExecuteOutput|Q\(9));

-- Location: LCCOMB_X62_Y49_N2
\SelA|$00000|auto_generated|result_node[9]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[9]~22_combout\ = (!\inst21|selexa~combout\ & (\ExecuteOutput|Q\(9) & \inst21|sela~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|selexa~combout\,
	datac => \ExecuteOutput|Q\(9),
	datad => \inst21|sela~1_combout\,
	combout => \SelA|$00000|auto_generated|result_node[9]~22_combout\);

-- Location: FF_X62_Y49_N13
\registerFile|registe:1:regi|ffmap:9:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(9),
	sload => VCC,
	ena => \registerFile|write_dmux|EN_out[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:1:regi|ffmap:9:ffi|Q~q\);

-- Location: FF_X59_Y46_N9
\registerFile|registe:0:regi|ffmap:9:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(9),
	sload => VCC,
	ena => \inst21|selb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:0:regi|ffmap:9:ffi|Q~q\);

-- Location: LCCOMB_X62_Y49_N12
\SelA|$00000|auto_generated|result_node[9]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[9]~23_combout\ = (!\inst21|sela~1_combout\ & ((\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & (\registerFile|registe:1:regi|ffmap:9:ffi|Q~q\)) # (!\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & 
-- ((\registerFile|registe:0:regi|ffmap:9:ffi|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelA9|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst21|sela~1_combout\,
	datac => \registerFile|registe:1:regi|ffmap:9:ffi|Q~q\,
	datad => \registerFile|registe:0:regi|ffmap:9:ffi|Q~q\,
	combout => \SelA|$00000|auto_generated|result_node[9]~23_combout\);

-- Location: LCCOMB_X62_Y49_N26
\SelA|$00000|auto_generated|result_node[9]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[9]~24_combout\ = (\SelA|$00000|auto_generated|result_node[9]~22_combout\) # ((\SelA|$00000|auto_generated|result_node[9]~23_combout\) # ((\SelA|$00000|auto_generated|result_node[0]~2_combout\ & 
-- \inst34|$00000|auto_generated|result_node[9]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelA|$00000|auto_generated|result_node[9]~22_combout\,
	datab => \SelA|$00000|auto_generated|result_node[0]~2_combout\,
	datac => \inst34|$00000|auto_generated|result_node[9]~34_combout\,
	datad => \SelA|$00000|auto_generated|result_node[9]~23_combout\,
	combout => \SelA|$00000|auto_generated|result_node[9]~24_combout\);

-- Location: FF_X62_Y49_N27
\ABuffer|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelA|$00000|auto_generated|result_node[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ABuffer|Q\(9));

-- Location: IOIBUF_X56_Y54_N1
\SW[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X59_Y46_N26
\SelB|$00000|auto_generated|result_node[8]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[8]~37_combout\ = (\inst21|selb~0_combout\ & (\ExecuteOutput|Q\(8) & ((!\inst21|selexb~combout\)))) # (!\inst21|selb~0_combout\ & (((\registerFile|registe:0:regi|ffmap:8:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|selb~0_combout\,
	datab => \ExecuteOutput|Q\(8),
	datac => \registerFile|registe:0:regi|ffmap:8:ffi|Q~q\,
	datad => \inst21|selexb~combout\,
	combout => \SelB|$00000|auto_generated|result_node[8]~37_combout\);

-- Location: LCCOMB_X60_Y47_N10
\SelB|$00000|auto_generated|result_node[8]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[8]~53_combout\ = (\SelB|$00000|auto_generated|result_node[8]~37_combout\) # ((\inst21|selb~0_combout\ & (\inst21|selexb~combout\ & \inst34|$00000|auto_generated|result_node[8]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|selb~0_combout\,
	datab => \inst21|selexb~combout\,
	datac => \SelB|$00000|auto_generated|result_node[8]~37_combout\,
	datad => \inst34|$00000|auto_generated|result_node[8]~55_combout\,
	combout => \SelB|$00000|auto_generated|result_node[8]~53_combout\);

-- Location: FF_X60_Y47_N11
\BBuffer|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelB|$00000|auto_generated|result_node[8]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BBuffer|Q\(8));

-- Location: LCCOMB_X58_Y47_N28
\inst29|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~26_combout\ = \ExecuteOperands|Q\(0) $ (((!\OUTPUTSELECT|Q\(6) & \BBuffer|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OUTPUTSELECT|Q\(6),
	datac => \BBuffer|Q\(8),
	datad => \ExecuteOperands|Q\(0),
	combout => \inst29|Add0~26_combout\);

-- Location: IOIBUF_X58_Y54_N29
\SW[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X62_Y49_N23
\ExecuteOutput|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst34|$00000|auto_generated|result_node[7]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ExecuteOutput|Q\(7));

-- Location: FF_X59_Y46_N23
\registerFile|registe:0:regi|ffmap:7:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(7),
	sload => VCC,
	ena => \inst21|selb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:0:regi|ffmap:7:ffi|Q~q\);

-- Location: FF_X62_Y49_N5
\registerFile|registe:1:regi|ffmap:7:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(7),
	sload => VCC,
	ena => \registerFile|write_dmux|EN_out[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:1:regi|ffmap:7:ffi|Q~q\);

-- Location: LCCOMB_X62_Y49_N4
\SelA|$00000|auto_generated|result_node[7]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[7]~29_combout\ = (!\inst21|sela~1_combout\ & ((\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & ((\registerFile|registe:1:regi|ffmap:7:ffi|Q~q\))) # (!\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & 
-- (\registerFile|registe:0:regi|ffmap:7:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerFile|registe:0:regi|ffmap:7:ffi|Q~q\,
	datab => \inst21|sela~1_combout\,
	datac => \registerFile|registe:1:regi|ffmap:7:ffi|Q~q\,
	datad => \SelA9|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \SelA|$00000|auto_generated|result_node[7]~29_combout\);

-- Location: LCCOMB_X62_Y49_N0
\SelA|$00000|auto_generated|result_node[7]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[7]~28_combout\ = (!\inst21|selexa~combout\ & (\ExecuteOutput|Q\(7) & \inst21|sela~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|selexa~combout\,
	datac => \ExecuteOutput|Q\(7),
	datad => \inst21|sela~1_combout\,
	combout => \SelA|$00000|auto_generated|result_node[7]~28_combout\);

-- Location: LCCOMB_X62_Y49_N8
\SelA|$00000|auto_generated|result_node[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[7]~30_combout\ = (\SelA|$00000|auto_generated|result_node[7]~29_combout\) # ((\SelA|$00000|auto_generated|result_node[7]~28_combout\) # ((\inst34|$00000|auto_generated|result_node[7]~54_combout\ & 
-- \SelA|$00000|auto_generated|result_node[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|$00000|auto_generated|result_node[7]~54_combout\,
	datab => \SelA|$00000|auto_generated|result_node[0]~2_combout\,
	datac => \SelA|$00000|auto_generated|result_node[7]~29_combout\,
	datad => \SelA|$00000|auto_generated|result_node[7]~28_combout\,
	combout => \SelA|$00000|auto_generated|result_node[7]~30_combout\);

-- Location: FF_X62_Y49_N9
\ABuffer|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelA|$00000|auto_generated|result_node[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ABuffer|Q\(7));

-- Location: FF_X59_Y46_N25
\registerFile|registe:0:regi|ffmap:6:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(6),
	sload => VCC,
	ena => \inst21|selb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:0:regi|ffmap:6:ffi|Q~q\);

-- Location: FF_X59_Y48_N5
\registerFile|registe:1:regi|ffmap:6:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(6),
	sload => VCC,
	ena => \registerFile|write_dmux|EN_out[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:1:regi|ffmap:6:ffi|Q~q\);

-- Location: LCCOMB_X59_Y48_N4
\SelA|$00000|auto_generated|result_node[6]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[6]~32_combout\ = (!\inst21|sela~1_combout\ & ((\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & ((\registerFile|registe:1:regi|ffmap:6:ffi|Q~q\))) # (!\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & 
-- (\registerFile|registe:0:regi|ffmap:6:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelA9|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \registerFile|registe:0:regi|ffmap:6:ffi|Q~q\,
	datac => \registerFile|registe:1:regi|ffmap:6:ffi|Q~q\,
	datad => \inst21|sela~1_combout\,
	combout => \SelA|$00000|auto_generated|result_node[6]~32_combout\);

-- Location: LCCOMB_X59_Y49_N26
\SelA|$00000|auto_generated|result_node[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[6]~31_combout\ = (\ExecuteOutput|Q\(6) & (\inst21|sela~1_combout\ & !\inst21|selexa~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOutput|Q\(6),
	datac => \inst21|sela~1_combout\,
	datad => \inst21|selexa~combout\,
	combout => \SelA|$00000|auto_generated|result_node[6]~31_combout\);

-- Location: LCCOMB_X59_Y49_N4
\SelA|$00000|auto_generated|result_node[6]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[6]~33_combout\ = (\SelA|$00000|auto_generated|result_node[6]~32_combout\) # ((\SelA|$00000|auto_generated|result_node[6]~31_combout\) # ((\inst34|$00000|auto_generated|result_node[6]~26_combout\ & 
-- \SelA|$00000|auto_generated|result_node[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelA|$00000|auto_generated|result_node[6]~32_combout\,
	datab => \inst34|$00000|auto_generated|result_node[6]~26_combout\,
	datac => \SelA|$00000|auto_generated|result_node[6]~31_combout\,
	datad => \SelA|$00000|auto_generated|result_node[0]~2_combout\,
	combout => \SelA|$00000|auto_generated|result_node[6]~33_combout\);

-- Location: FF_X59_Y49_N5
\ABuffer|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelA|$00000|auto_generated|result_node[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ABuffer|Q\(6));

-- Location: IOIBUF_X49_Y54_N1
\SW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X60_Y50_N3
\registerFile|registe:0:regi|ffmap:5:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(5),
	sload => VCC,
	ena => \inst21|selb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:0:regi|ffmap:5:ffi|Q~q\);

-- Location: LCCOMB_X60_Y50_N2
\SelB|$00000|auto_generated|result_node[5]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[5]~40_combout\ = (\inst21|selb~0_combout\ & (!\inst21|selexb~combout\ & (\ExecuteOutput|Q\(5)))) # (!\inst21|selb~0_combout\ & (((\registerFile|registe:0:regi|ffmap:5:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|selexb~combout\,
	datab => \ExecuteOutput|Q\(5),
	datac => \registerFile|registe:0:regi|ffmap:5:ffi|Q~q\,
	datad => \inst21|selb~0_combout\,
	combout => \SelB|$00000|auto_generated|result_node[5]~40_combout\);

-- Location: LCCOMB_X61_Y49_N30
\SelB|$00000|auto_generated|result_node[5]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[5]~56_combout\ = (\SelB|$00000|auto_generated|result_node[5]~40_combout\) # ((\inst34|$00000|auto_generated|result_node[5]~23_combout\ & (\inst21|selb~0_combout\ & \inst21|selexb~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelB|$00000|auto_generated|result_node[5]~40_combout\,
	datab => \inst34|$00000|auto_generated|result_node[5]~23_combout\,
	datac => \inst21|selb~0_combout\,
	datad => \inst21|selexb~combout\,
	combout => \SelB|$00000|auto_generated|result_node[5]~56_combout\);

-- Location: FF_X61_Y49_N31
\BBuffer|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelB|$00000|auto_generated|result_node[5]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BBuffer|Q\(5));

-- Location: LCCOMB_X61_Y49_N4
\inst39|O[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|O[5]~7_combout\ = (\BBuffer|Q\(5) & ((\ExecuteOperands|Q\(0) & ((!\inst39|LessThan2~30_combout\))) # (!\ExecuteOperands|Q\(0) & (!\inst39|LessThan0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datab => \BBuffer|Q\(5),
	datac => \inst39|LessThan0~30_combout\,
	datad => \inst39|LessThan2~30_combout\,
	combout => \inst39|O[5]~7_combout\);

-- Location: LCCOMB_X61_Y49_N18
\inst39|O[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|O[5]~8_combout\ = (\ABuffer|Q\(5) & ((\ExecuteOperands|Q\(0) & ((\inst39|LessThan2~30_combout\))) # (!\ExecuteOperands|Q\(0) & (\inst39|LessThan0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datab => \ABuffer|Q\(5),
	datac => \inst39|LessThan0~30_combout\,
	datad => \inst39|LessThan2~30_combout\,
	combout => \inst39|O[5]~8_combout\);

-- Location: LCCOMB_X61_Y49_N0
\inst34|$00000|auto_generated|result_node[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[5]~21_combout\ = (\inst2|SWO~0_combout\) # ((!\DeviceSelRegister|Q\(1) & ((\inst39|O[5]~7_combout\) # (\inst39|O[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SWO~0_combout\,
	datab => \DeviceSelRegister|Q\(1),
	datac => \inst39|O[5]~7_combout\,
	datad => \inst39|O[5]~8_combout\,
	combout => \inst34|$00000|auto_generated|result_node[5]~21_combout\);

-- Location: LCCOMB_X61_Y49_N14
\inst34|$00000|auto_generated|result_node[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[5]~22_combout\ = (\inst32~combout\ & ((\inst34|$00000|auto_generated|result_node[5]~21_combout\ & (\SW[5]~input_o\)) # (!\inst34|$00000|auto_generated|result_node[5]~21_combout\ & ((\ABuffer|Q\(5)))))) # 
-- (!\inst32~combout\ & (((\inst34|$00000|auto_generated|result_node[5]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \ABuffer|Q\(5),
	datac => \inst32~combout\,
	datad => \inst34|$00000|auto_generated|result_node[5]~21_combout\,
	combout => \inst34|$00000|auto_generated|result_node[5]~22_combout\);

-- Location: LCCOMB_X58_Y48_N0
\inst29|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~17_combout\ = \ExecuteOperands|Q\(0) $ (((!\OUTPUTSELECT|Q\(6) & \BBuffer|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUTPUTSELECT|Q\(6),
	datac => \BBuffer|Q\(5),
	datad => \ExecuteOperands|Q\(0),
	combout => \inst29|Add0~17_combout\);

-- Location: IOIBUF_X54_Y54_N22
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X57_Y49_N7
\ExecuteOutput|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst34|$00000|auto_generated|result_node[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ExecuteOutput|Q\(4));

-- Location: FF_X58_Y46_N17
\registerFile|registe:0:regi|ffmap:4:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(4),
	sload => VCC,
	ena => \inst21|selb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:0:regi|ffmap:4:ffi|Q~q\);

-- Location: LCCOMB_X58_Y46_N16
\SelB|$00000|auto_generated|result_node[4]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[4]~41_combout\ = (\inst21|selb~0_combout\ & (\ExecuteOutput|Q\(4) & ((!\inst21|selexb~combout\)))) # (!\inst21|selb~0_combout\ & (((\registerFile|registe:0:regi|ffmap:4:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|selb~0_combout\,
	datab => \ExecuteOutput|Q\(4),
	datac => \registerFile|registe:0:regi|ffmap:4:ffi|Q~q\,
	datad => \inst21|selexb~combout\,
	combout => \SelB|$00000|auto_generated|result_node[4]~41_combout\);

-- Location: LCCOMB_X57_Y49_N24
\SelB|$00000|auto_generated|result_node[4]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[4]~57_combout\ = (\SelB|$00000|auto_generated|result_node[4]~41_combout\) # ((\inst21|selexb~combout\ & (\inst21|selb~0_combout\ & \inst34|$00000|auto_generated|result_node[4]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|selexb~combout\,
	datab => \SelB|$00000|auto_generated|result_node[4]~41_combout\,
	datac => \inst21|selb~0_combout\,
	datad => \inst34|$00000|auto_generated|result_node[4]~20_combout\,
	combout => \SelB|$00000|auto_generated|result_node[4]~57_combout\);

-- Location: FF_X57_Y49_N25
\BBuffer|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelB|$00000|auto_generated|result_node[4]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BBuffer|Q\(4));

-- Location: LCCOMB_X57_Y49_N22
\inst39|O[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|O[4]~5_combout\ = (\BBuffer|Q\(4) & ((\ExecuteOperands|Q\(0) & ((!\inst39|LessThan2~30_combout\))) # (!\ExecuteOperands|Q\(0) & (!\inst39|LessThan0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datab => \BBuffer|Q\(4),
	datac => \inst39|LessThan0~30_combout\,
	datad => \inst39|LessThan2~30_combout\,
	combout => \inst39|O[4]~5_combout\);

-- Location: LCCOMB_X57_Y49_N16
\inst39|O[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|O[4]~6_combout\ = (\ABuffer|Q\(4) & ((\ExecuteOperands|Q\(0) & ((\inst39|LessThan2~30_combout\))) # (!\ExecuteOperands|Q\(0) & (\inst39|LessThan0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datab => \ABuffer|Q\(4),
	datac => \inst39|LessThan0~30_combout\,
	datad => \inst39|LessThan2~30_combout\,
	combout => \inst39|O[4]~6_combout\);

-- Location: LCCOMB_X57_Y49_N2
\inst34|$00000|auto_generated|result_node[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[4]~18_combout\ = (\inst2|SWO~0_combout\) # ((!\DeviceSelRegister|Q\(1) & ((\inst39|O[4]~5_combout\) # (\inst39|O[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DeviceSelRegister|Q\(1),
	datab => \inst2|SWO~0_combout\,
	datac => \inst39|O[4]~5_combout\,
	datad => \inst39|O[4]~6_combout\,
	combout => \inst34|$00000|auto_generated|result_node[4]~18_combout\);

-- Location: LCCOMB_X57_Y49_N8
\inst34|$00000|auto_generated|result_node[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[4]~19_combout\ = (\inst32~combout\ & ((\inst34|$00000|auto_generated|result_node[4]~18_combout\ & (\SW[4]~input_o\)) # (!\inst34|$00000|auto_generated|result_node[4]~18_combout\ & ((\ABuffer|Q\(4)))))) # 
-- (!\inst32~combout\ & (((\inst34|$00000|auto_generated|result_node[4]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32~combout\,
	datab => \SW[4]~input_o\,
	datac => \ABuffer|Q\(4),
	datad => \inst34|$00000|auto_generated|result_node[4]~18_combout\,
	combout => \inst34|$00000|auto_generated|result_node[4]~19_combout\);

-- Location: LCCOMB_X58_Y48_N2
\inst29|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~14_combout\ = \ExecuteOperands|Q\(0) $ (((\BBuffer|Q\(4) & !\OUTPUTSELECT|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datac => \BBuffer|Q\(4),
	datad => \OUTPUTSELECT|Q\(6),
	combout => \inst29|Add0~14_combout\);

-- Location: FF_X58_Y46_N21
\registerFile|registe:1:regi|ffmap:3:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(3),
	sload => VCC,
	ena => \registerFile|write_dmux|EN_out[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:1:regi|ffmap:3:ffi|Q~q\);

-- Location: FF_X59_Y46_N31
\registerFile|registe:0:regi|ffmap:3:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(3),
	sload => VCC,
	ena => \inst21|selb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:0:regi|ffmap:3:ffi|Q~q\);

-- Location: LCCOMB_X58_Y46_N20
\SelA|$00000|auto_generated|result_node[3]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[3]~41_combout\ = (\inst45|Dout\(9) & ((\inst24|Mux8~1_combout\ & (\registerFile|registe:1:regi|ffmap:3:ffi|Q~q\)) # (!\inst24|Mux8~1_combout\ & ((\registerFile|registe:0:regi|ffmap:3:ffi|Q~q\))))) # 
-- (!\inst45|Dout\(9) & (((\registerFile|registe:0:regi|ffmap:3:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|Dout\(9),
	datab => \inst24|Mux8~1_combout\,
	datac => \registerFile|registe:1:regi|ffmap:3:ffi|Q~q\,
	datad => \registerFile|registe:0:regi|ffmap:3:ffi|Q~q\,
	combout => \SelA|$00000|auto_generated|result_node[3]~41_combout\);

-- Location: LCCOMB_X59_Y47_N26
\SelA|$00000|auto_generated|result_node[3]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[3]~40_combout\ = (\inst21|sela~1_combout\ & ((\inst21|selexa~combout\ & ((\inst34|$00000|auto_generated|result_node[3]~17_combout\))) # (!\inst21|selexa~combout\ & (\ExecuteOutput|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOutput|Q\(3),
	datab => \inst21|selexa~combout\,
	datac => \inst21|sela~1_combout\,
	datad => \inst34|$00000|auto_generated|result_node[3]~17_combout\,
	combout => \SelA|$00000|auto_generated|result_node[3]~40_combout\);

-- Location: LCCOMB_X59_Y47_N14
\SelA|$00000|auto_generated|result_node[3]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[3]~42_combout\ = (\SelA|$00000|auto_generated|result_node[3]~40_combout\) # ((\SelA|$00000|auto_generated|result_node[3]~41_combout\ & !\inst21|sela~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelA|$00000|auto_generated|result_node[3]~41_combout\,
	datac => \inst21|sela~1_combout\,
	datad => \SelA|$00000|auto_generated|result_node[3]~40_combout\,
	combout => \SelA|$00000|auto_generated|result_node[3]~42_combout\);

-- Location: FF_X59_Y47_N15
\ABuffer|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelA|$00000|auto_generated|result_node[3]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ABuffer|Q\(3));

-- Location: FF_X58_Y46_N31
\registerFile|registe:0:regi|ffmap:2:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(2),
	sload => VCC,
	ena => \inst21|selb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:0:regi|ffmap:2:ffi|Q~q\);

-- Location: FF_X58_Y46_N13
\registerFile|registe:1:regi|ffmap:2:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(2),
	sload => VCC,
	ena => \registerFile|write_dmux|EN_out[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:1:regi|ffmap:2:ffi|Q~q\);

-- Location: LCCOMB_X58_Y46_N12
\SelA|$00000|auto_generated|result_node[2]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[2]~44_combout\ = (!\inst21|sela~1_combout\ & ((\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & ((\registerFile|registe:1:regi|ffmap:2:ffi|Q~q\))) # (!\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & 
-- (\registerFile|registe:0:regi|ffmap:2:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerFile|registe:0:regi|ffmap:2:ffi|Q~q\,
	datab => \SelA9|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \registerFile|registe:1:regi|ffmap:2:ffi|Q~q\,
	datad => \inst21|sela~1_combout\,
	combout => \SelA|$00000|auto_generated|result_node[2]~44_combout\);

-- Location: LCCOMB_X57_Y49_N30
\SelA|$00000|auto_generated|result_node[2]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[2]~43_combout\ = (\ExecuteOutput|Q\(2) & (\inst21|sela~1_combout\ & !\inst21|selexa~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExecuteOutput|Q\(2),
	datac => \inst21|sela~1_combout\,
	datad => \inst21|selexa~combout\,
	combout => \SelA|$00000|auto_generated|result_node[2]~43_combout\);

-- Location: LCCOMB_X57_Y49_N10
\SelA|$00000|auto_generated|result_node[2]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[2]~45_combout\ = (\SelA|$00000|auto_generated|result_node[2]~44_combout\) # ((\SelA|$00000|auto_generated|result_node[2]~43_combout\) # ((\inst34|$00000|auto_generated|result_node[2]~14_combout\ & 
-- \SelA|$00000|auto_generated|result_node[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|$00000|auto_generated|result_node[2]~14_combout\,
	datab => \SelA|$00000|auto_generated|result_node[2]~44_combout\,
	datac => \SelA|$00000|auto_generated|result_node[2]~43_combout\,
	datad => \SelA|$00000|auto_generated|result_node[0]~2_combout\,
	combout => \SelA|$00000|auto_generated|result_node[2]~45_combout\);

-- Location: FF_X57_Y49_N11
\ABuffer|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelA|$00000|auto_generated|result_node[2]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ABuffer|Q\(2));

-- Location: LCCOMB_X58_Y48_N20
\inst29|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~6_combout\ = ((\ABuffer|Q\(1) $ (\inst29|Add0~5_combout\ $ (!\inst29|Add0~4\)))) # (GND)
-- \inst29|Add0~7\ = CARRY((\ABuffer|Q\(1) & ((\inst29|Add0~5_combout\) # (!\inst29|Add0~4\))) # (!\ABuffer|Q\(1) & (\inst29|Add0~5_combout\ & !\inst29|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(1),
	datab => \inst29|Add0~5_combout\,
	datad => VCC,
	cin => \inst29|Add0~4\,
	combout => \inst29|Add0~6_combout\,
	cout => \inst29|Add0~7\);

-- Location: LCCOMB_X58_Y48_N22
\inst29|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~9_combout\ = (\inst29|Add0~8_combout\ & ((\ABuffer|Q\(2) & (\inst29|Add0~7\ & VCC)) # (!\ABuffer|Q\(2) & (!\inst29|Add0~7\)))) # (!\inst29|Add0~8_combout\ & ((\ABuffer|Q\(2) & (!\inst29|Add0~7\)) # (!\ABuffer|Q\(2) & ((\inst29|Add0~7\) # 
-- (GND)))))
-- \inst29|Add0~10\ = CARRY((\inst29|Add0~8_combout\ & (!\ABuffer|Q\(2) & !\inst29|Add0~7\)) # (!\inst29|Add0~8_combout\ & ((!\inst29|Add0~7\) # (!\ABuffer|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Add0~8_combout\,
	datab => \ABuffer|Q\(2),
	datad => VCC,
	cin => \inst29|Add0~7\,
	combout => \inst29|Add0~9_combout\,
	cout => \inst29|Add0~10\);

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X57_Y49_N26
\inst39|O[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|O[2]~4_combout\ = (\ABuffer|Q\(2) & ((\ExecuteOperands|Q\(0) & ((\inst39|LessThan2~30_combout\))) # (!\ExecuteOperands|Q\(0) & (\inst39|LessThan0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datab => \ABuffer|Q\(2),
	datac => \inst39|LessThan0~30_combout\,
	datad => \inst39|LessThan2~30_combout\,
	combout => \inst39|O[2]~4_combout\);

-- Location: LCCOMB_X57_Y49_N0
\inst39|O[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|O[2]~3_combout\ = (\BBuffer|Q\(2) & ((\ExecuteOperands|Q\(0) & ((!\inst39|LessThan2~30_combout\))) # (!\ExecuteOperands|Q\(0) & (!\inst39|LessThan0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datab => \BBuffer|Q\(2),
	datac => \inst39|LessThan0~30_combout\,
	datad => \inst39|LessThan2~30_combout\,
	combout => \inst39|O[2]~3_combout\);

-- Location: LCCOMB_X57_Y49_N20
\inst34|$00000|auto_generated|result_node[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[2]~12_combout\ = (\inst2|SWO~0_combout\) # ((!\DeviceSelRegister|Q\(1) & ((\inst39|O[2]~4_combout\) # (\inst39|O[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DeviceSelRegister|Q\(1),
	datab => \inst2|SWO~0_combout\,
	datac => \inst39|O[2]~4_combout\,
	datad => \inst39|O[2]~3_combout\,
	combout => \inst34|$00000|auto_generated|result_node[2]~12_combout\);

-- Location: LCCOMB_X57_Y49_N18
\inst34|$00000|auto_generated|result_node[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[2]~13_combout\ = (\inst32~combout\ & ((\inst34|$00000|auto_generated|result_node[2]~12_combout\ & (\SW[2]~input_o\)) # (!\inst34|$00000|auto_generated|result_node[2]~12_combout\ & ((\ABuffer|Q\(2)))))) # 
-- (!\inst32~combout\ & (((\inst34|$00000|auto_generated|result_node[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32~combout\,
	datab => \SW[2]~input_o\,
	datac => \ABuffer|Q\(2),
	datad => \inst34|$00000|auto_generated|result_node[2]~12_combout\,
	combout => \inst34|$00000|auto_generated|result_node[2]~13_combout\);

-- Location: LCCOMB_X57_Y49_N12
\inst34|$00000|auto_generated|result_node[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[2]~14_combout\ = (\inst34|$00000|auto_generated|result_node[1]~4_combout\ & ((\inst34|$00000|auto_generated|result_node[2]~13_combout\))) # (!\inst34|$00000|auto_generated|result_node[1]~4_combout\ & 
-- (\inst29|Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|$00000|auto_generated|result_node[1]~4_combout\,
	datac => \inst29|Add0~9_combout\,
	datad => \inst34|$00000|auto_generated|result_node[2]~13_combout\,
	combout => \inst34|$00000|auto_generated|result_node[2]~14_combout\);

-- Location: FF_X57_Y49_N13
\ExecuteOutput|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst34|$00000|auto_generated|result_node[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ExecuteOutput|Q\(2));

-- Location: LCCOMB_X58_Y46_N30
\SelB|$00000|auto_generated|result_node[2]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[2]~44_combout\ = (\inst21|selb~0_combout\ & (\ExecuteOutput|Q\(2) & ((!\inst21|selexb~combout\)))) # (!\inst21|selb~0_combout\ & (((\registerFile|registe:0:regi|ffmap:2:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|selb~0_combout\,
	datab => \ExecuteOutput|Q\(2),
	datac => \registerFile|registe:0:regi|ffmap:2:ffi|Q~q\,
	datad => \inst21|selexb~combout\,
	combout => \SelB|$00000|auto_generated|result_node[2]~44_combout\);

-- Location: LCCOMB_X57_Y49_N28
\SelB|$00000|auto_generated|result_node[2]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[2]~58_combout\ = (\SelB|$00000|auto_generated|result_node[2]~44_combout\) # ((\inst21|selexb~combout\ & (\inst21|selb~0_combout\ & \inst34|$00000|auto_generated|result_node[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|selexb~combout\,
	datab => \SelB|$00000|auto_generated|result_node[2]~44_combout\,
	datac => \inst21|selb~0_combout\,
	datad => \inst34|$00000|auto_generated|result_node[2]~14_combout\,
	combout => \SelB|$00000|auto_generated|result_node[2]~58_combout\);

-- Location: FF_X57_Y49_N29
\BBuffer|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelB|$00000|auto_generated|result_node[2]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BBuffer|Q\(2));

-- Location: LCCOMB_X58_Y48_N14
\inst29|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~8_combout\ = \ExecuteOperands|Q\(0) $ (((!\OUTPUTSELECT|Q\(6) & \BBuffer|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUTPUTSELECT|Q\(6),
	datab => \BBuffer|Q\(2),
	datad => \ExecuteOperands|Q\(0),
	combout => \inst29|Add0~8_combout\);

-- Location: LCCOMB_X58_Y48_N24
\inst29|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~12_combout\ = ((\inst29|Add0~11_combout\ $ (\ABuffer|Q\(3) $ (!\inst29|Add0~10\)))) # (GND)
-- \inst29|Add0~13\ = CARRY((\inst29|Add0~11_combout\ & ((\ABuffer|Q\(3)) # (!\inst29|Add0~10\))) # (!\inst29|Add0~11_combout\ & (\ABuffer|Q\(3) & !\inst29|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Add0~11_combout\,
	datab => \ABuffer|Q\(3),
	datad => VCC,
	cin => \inst29|Add0~10\,
	combout => \inst29|Add0~12_combout\,
	cout => \inst29|Add0~13\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X59_Y47_N8
\inst34|$00000|auto_generated|result_node[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[3]~15_combout\ = (\inst32~combout\ & ((\inst2|SWO~0_combout\ & ((\SW[3]~input_o\))) # (!\inst2|SWO~0_combout\ & (\ABuffer|Q\(3))))) # (!\inst32~combout\ & (\ABuffer|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(3),
	datab => \inst32~combout\,
	datac => \SW[3]~input_o\,
	datad => \inst2|SWO~0_combout\,
	combout => \inst34|$00000|auto_generated|result_node[3]~15_combout\);

-- Location: LCCOMB_X59_Y47_N18
\inst34|$00000|auto_generated|result_node[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[3]~16_combout\ = (\inst32~combout\ & (((\inst34|$00000|auto_generated|result_node[3]~15_combout\)))) # (!\inst32~combout\ & ((\inst39|O[11]~0_combout\ & 
-- ((\inst34|$00000|auto_generated|result_node[3]~15_combout\))) # (!\inst39|O[11]~0_combout\ & (\BBuffer|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(3),
	datab => \inst32~combout\,
	datac => \inst34|$00000|auto_generated|result_node[3]~15_combout\,
	datad => \inst39|O[11]~0_combout\,
	combout => \inst34|$00000|auto_generated|result_node[3]~16_combout\);

-- Location: LCCOMB_X59_Y47_N20
\inst34|$00000|auto_generated|result_node[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[3]~17_combout\ = (\inst32~combout\ & (((\inst34|$00000|auto_generated|result_node[3]~16_combout\)))) # (!\inst32~combout\ & ((\OUTPUTSELECT|Q\(4) & ((\inst34|$00000|auto_generated|result_node[3]~16_combout\))) # 
-- (!\OUTPUTSELECT|Q\(4) & (\inst29|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32~combout\,
	datab => \OUTPUTSELECT|Q\(4),
	datac => \inst29|Add0~12_combout\,
	datad => \inst34|$00000|auto_generated|result_node[3]~16_combout\,
	combout => \inst34|$00000|auto_generated|result_node[3]~17_combout\);

-- Location: FF_X59_Y47_N21
\ExecuteOutput|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst34|$00000|auto_generated|result_node[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ExecuteOutput|Q\(3));

-- Location: LCCOMB_X59_Y46_N30
\SelB|$00000|auto_generated|result_node[3]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[3]~42_combout\ = (\inst21|selb~0_combout\ & ((\inst34|$00000|auto_generated|result_node[3]~17_combout\))) # (!\inst21|selb~0_combout\ & (\registerFile|registe:0:regi|ffmap:3:ffi|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|selb~0_combout\,
	datac => \registerFile|registe:0:regi|ffmap:3:ffi|Q~q\,
	datad => \inst34|$00000|auto_generated|result_node[3]~17_combout\,
	combout => \SelB|$00000|auto_generated|result_node[3]~42_combout\);

-- Location: LCCOMB_X59_Y46_N16
\SelB|$00000|auto_generated|result_node[3]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[3]~43_combout\ = (\inst21|selexb~combout\ & (((\SelB|$00000|auto_generated|result_node[3]~42_combout\)))) # (!\inst21|selexb~combout\ & ((\inst21|selb~0_combout\ & (\ExecuteOutput|Q\(3))) # (!\inst21|selb~0_combout\ 
-- & ((\SelB|$00000|auto_generated|result_node[3]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOutput|Q\(3),
	datab => \SelB|$00000|auto_generated|result_node[3]~42_combout\,
	datac => \inst21|selexb~combout\,
	datad => \inst21|selb~0_combout\,
	combout => \SelB|$00000|auto_generated|result_node[3]~43_combout\);

-- Location: FF_X59_Y46_N17
\BBuffer|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelB|$00000|auto_generated|result_node[3]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BBuffer|Q\(3));

-- Location: LCCOMB_X58_Y48_N4
\inst29|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~11_combout\ = \ExecuteOperands|Q\(0) $ (((\BBuffer|Q\(3) & !\OUTPUTSELECT|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datab => \BBuffer|Q\(3),
	datad => \OUTPUTSELECT|Q\(6),
	combout => \inst29|Add0~11_combout\);

-- Location: LCCOMB_X58_Y48_N26
\inst29|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~15_combout\ = (\ABuffer|Q\(4) & ((\inst29|Add0~14_combout\ & (\inst29|Add0~13\ & VCC)) # (!\inst29|Add0~14_combout\ & (!\inst29|Add0~13\)))) # (!\ABuffer|Q\(4) & ((\inst29|Add0~14_combout\ & (!\inst29|Add0~13\)) # (!\inst29|Add0~14_combout\ & 
-- ((\inst29|Add0~13\) # (GND)))))
-- \inst29|Add0~16\ = CARRY((\ABuffer|Q\(4) & (!\inst29|Add0~14_combout\ & !\inst29|Add0~13\)) # (!\ABuffer|Q\(4) & ((!\inst29|Add0~13\) # (!\inst29|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(4),
	datab => \inst29|Add0~14_combout\,
	datad => VCC,
	cin => \inst29|Add0~13\,
	combout => \inst29|Add0~15_combout\,
	cout => \inst29|Add0~16\);

-- Location: LCCOMB_X57_Y49_N6
\inst34|$00000|auto_generated|result_node[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[4]~20_combout\ = (\inst34|$00000|auto_generated|result_node[1]~4_combout\ & (\inst34|$00000|auto_generated|result_node[4]~19_combout\)) # (!\inst34|$00000|auto_generated|result_node[1]~4_combout\ & 
-- ((\inst29|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|$00000|auto_generated|result_node[1]~4_combout\,
	datac => \inst34|$00000|auto_generated|result_node[4]~19_combout\,
	datad => \inst29|Add0~15_combout\,
	combout => \inst34|$00000|auto_generated|result_node[4]~20_combout\);

-- Location: FF_X58_Y46_N3
\registerFile|registe:1:regi|ffmap:4:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(4),
	sload => VCC,
	ena => \registerFile|write_dmux|EN_out[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:1:regi|ffmap:4:ffi|Q~q\);

-- Location: LCCOMB_X58_Y46_N2
\SelA|$00000|auto_generated|result_node[4]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[4]~38_combout\ = (!\inst21|sela~1_combout\ & ((\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & ((\registerFile|registe:1:regi|ffmap:4:ffi|Q~q\))) # (!\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & 
-- (\registerFile|registe:0:regi|ffmap:4:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelA9|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \registerFile|registe:0:regi|ffmap:4:ffi|Q~q\,
	datac => \registerFile|registe:1:regi|ffmap:4:ffi|Q~q\,
	datad => \inst21|sela~1_combout\,
	combout => \SelA|$00000|auto_generated|result_node[4]~38_combout\);

-- Location: LCCOMB_X57_Y49_N4
\SelA|$00000|auto_generated|result_node[4]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[4]~37_combout\ = (!\inst21|selexa~combout\ & (\inst21|sela~1_combout\ & \ExecuteOutput|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|selexa~combout\,
	datac => \inst21|sela~1_combout\,
	datad => \ExecuteOutput|Q\(4),
	combout => \SelA|$00000|auto_generated|result_node[4]~37_combout\);

-- Location: LCCOMB_X57_Y49_N14
\SelA|$00000|auto_generated|result_node[4]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[4]~39_combout\ = (\SelA|$00000|auto_generated|result_node[4]~38_combout\) # ((\SelA|$00000|auto_generated|result_node[4]~37_combout\) # ((\inst34|$00000|auto_generated|result_node[4]~20_combout\ & 
-- \SelA|$00000|auto_generated|result_node[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|$00000|auto_generated|result_node[4]~20_combout\,
	datab => \SelA|$00000|auto_generated|result_node[4]~38_combout\,
	datac => \SelA|$00000|auto_generated|result_node[4]~37_combout\,
	datad => \SelA|$00000|auto_generated|result_node[0]~2_combout\,
	combout => \SelA|$00000|auto_generated|result_node[4]~39_combout\);

-- Location: FF_X57_Y49_N15
\ABuffer|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelA|$00000|auto_generated|result_node[4]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ABuffer|Q\(4));

-- Location: LCCOMB_X58_Y48_N28
\inst29|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~18_combout\ = ((\ABuffer|Q\(5) $ (\inst29|Add0~17_combout\ $ (!\inst29|Add0~16\)))) # (GND)
-- \inst29|Add0~19\ = CARRY((\ABuffer|Q\(5) & ((\inst29|Add0~17_combout\) # (!\inst29|Add0~16\))) # (!\ABuffer|Q\(5) & (\inst29|Add0~17_combout\ & !\inst29|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(5),
	datab => \inst29|Add0~17_combout\,
	datad => VCC,
	cin => \inst29|Add0~16\,
	combout => \inst29|Add0~18_combout\,
	cout => \inst29|Add0~19\);

-- Location: LCCOMB_X61_Y49_N28
\inst34|$00000|auto_generated|result_node[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[5]~23_combout\ = (\inst34|$00000|auto_generated|result_node[1]~4_combout\ & (\inst34|$00000|auto_generated|result_node[5]~22_combout\)) # (!\inst34|$00000|auto_generated|result_node[1]~4_combout\ & 
-- ((\inst29|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|$00000|auto_generated|result_node[1]~4_combout\,
	datac => \inst34|$00000|auto_generated|result_node[5]~22_combout\,
	datad => \inst29|Add0~18_combout\,
	combout => \inst34|$00000|auto_generated|result_node[5]~23_combout\);

-- Location: FF_X61_Y49_N29
\ExecuteOutput|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst34|$00000|auto_generated|result_node[5]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ExecuteOutput|Q\(5));

-- Location: LCCOMB_X61_Y49_N10
\SelA|$00000|auto_generated|result_node[5]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[5]~34_combout\ = (!\inst21|selexa~combout\ & (\ExecuteOutput|Q\(5) & \inst21|sela~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|selexa~combout\,
	datab => \ExecuteOutput|Q\(5),
	datad => \inst21|sela~1_combout\,
	combout => \SelA|$00000|auto_generated|result_node[5]~34_combout\);

-- Location: FF_X60_Y50_N5
\registerFile|registe:1:regi|ffmap:5:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(5),
	sload => VCC,
	ena => \registerFile|write_dmux|EN_out[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:1:regi|ffmap:5:ffi|Q~q\);

-- Location: LCCOMB_X60_Y50_N4
\SelA|$00000|auto_generated|result_node[5]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[5]~35_combout\ = (!\inst21|sela~1_combout\ & ((\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & ((\registerFile|registe:1:regi|ffmap:5:ffi|Q~q\))) # (!\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & 
-- (\registerFile|registe:0:regi|ffmap:5:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelA9|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \registerFile|registe:0:regi|ffmap:5:ffi|Q~q\,
	datac => \registerFile|registe:1:regi|ffmap:5:ffi|Q~q\,
	datad => \inst21|sela~1_combout\,
	combout => \SelA|$00000|auto_generated|result_node[5]~35_combout\);

-- Location: LCCOMB_X61_Y49_N8
\SelA|$00000|auto_generated|result_node[5]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[5]~36_combout\ = (\SelA|$00000|auto_generated|result_node[5]~34_combout\) # ((\SelA|$00000|auto_generated|result_node[5]~35_combout\) # ((\SelA|$00000|auto_generated|result_node[0]~2_combout\ & 
-- \inst34|$00000|auto_generated|result_node[5]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelA|$00000|auto_generated|result_node[5]~34_combout\,
	datab => \SelA|$00000|auto_generated|result_node[0]~2_combout\,
	datac => \SelA|$00000|auto_generated|result_node[5]~35_combout\,
	datad => \inst34|$00000|auto_generated|result_node[5]~23_combout\,
	combout => \SelA|$00000|auto_generated|result_node[5]~36_combout\);

-- Location: FF_X61_Y49_N9
\ABuffer|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelA|$00000|auto_generated|result_node[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ABuffer|Q\(5));

-- Location: LCCOMB_X58_Y48_N30
\inst29|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~21_combout\ = (\inst29|Add0~20_combout\ & ((\ABuffer|Q\(6) & (\inst29|Add0~19\ & VCC)) # (!\ABuffer|Q\(6) & (!\inst29|Add0~19\)))) # (!\inst29|Add0~20_combout\ & ((\ABuffer|Q\(6) & (!\inst29|Add0~19\)) # (!\ABuffer|Q\(6) & ((\inst29|Add0~19\) 
-- # (GND)))))
-- \inst29|Add0~22\ = CARRY((\inst29|Add0~20_combout\ & (!\ABuffer|Q\(6) & !\inst29|Add0~19\)) # (!\inst29|Add0~20_combout\ & ((!\inst29|Add0~19\) # (!\ABuffer|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Add0~20_combout\,
	datab => \ABuffer|Q\(6),
	datad => VCC,
	cin => \inst29|Add0~19\,
	combout => \inst29|Add0~21_combout\,
	cout => \inst29|Add0~22\);

-- Location: IOIBUF_X54_Y54_N15
\SW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X59_Y49_N8
\inst39|O[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|O[6]~9_combout\ = (\BBuffer|Q\(6) & ((\ExecuteOperands|Q\(0) & (!\inst39|LessThan2~30_combout\)) # (!\ExecuteOperands|Q\(0) & ((!\inst39|LessThan0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datab => \BBuffer|Q\(6),
	datac => \inst39|LessThan2~30_combout\,
	datad => \inst39|LessThan0~30_combout\,
	combout => \inst39|O[6]~9_combout\);

-- Location: LCCOMB_X59_Y49_N22
\inst39|O[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|O[6]~10_combout\ = (\ABuffer|Q\(6) & ((\ExecuteOperands|Q\(0) & (\inst39|LessThan2~30_combout\)) # (!\ExecuteOperands|Q\(0) & ((\inst39|LessThan0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datab => \ABuffer|Q\(6),
	datac => \inst39|LessThan2~30_combout\,
	datad => \inst39|LessThan0~30_combout\,
	combout => \inst39|O[6]~10_combout\);

-- Location: LCCOMB_X59_Y49_N28
\inst34|$00000|auto_generated|result_node[6]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[6]~24_combout\ = (\inst2|SWO~0_combout\) # ((!\DeviceSelRegister|Q\(1) & ((\inst39|O[6]~9_combout\) # (\inst39|O[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SWO~0_combout\,
	datab => \inst39|O[6]~9_combout\,
	datac => \inst39|O[6]~10_combout\,
	datad => \DeviceSelRegister|Q\(1),
	combout => \inst34|$00000|auto_generated|result_node[6]~24_combout\);

-- Location: LCCOMB_X59_Y49_N2
\inst34|$00000|auto_generated|result_node[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[6]~25_combout\ = (\inst32~combout\ & ((\inst34|$00000|auto_generated|result_node[6]~24_combout\ & (\SW[6]~input_o\)) # (!\inst34|$00000|auto_generated|result_node[6]~24_combout\ & ((\ABuffer|Q\(6)))))) # 
-- (!\inst32~combout\ & (((\inst34|$00000|auto_generated|result_node[6]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \ABuffer|Q\(6),
	datac => \inst32~combout\,
	datad => \inst34|$00000|auto_generated|result_node[6]~24_combout\,
	combout => \inst34|$00000|auto_generated|result_node[6]~25_combout\);

-- Location: LCCOMB_X59_Y49_N24
\inst34|$00000|auto_generated|result_node[6]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[6]~26_combout\ = (\inst34|$00000|auto_generated|result_node[1]~4_combout\ & ((\inst34|$00000|auto_generated|result_node[6]~25_combout\))) # (!\inst34|$00000|auto_generated|result_node[1]~4_combout\ & 
-- (\inst29|Add0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|Add0~21_combout\,
	datac => \inst34|$00000|auto_generated|result_node[1]~4_combout\,
	datad => \inst34|$00000|auto_generated|result_node[6]~25_combout\,
	combout => \inst34|$00000|auto_generated|result_node[6]~26_combout\);

-- Location: FF_X59_Y49_N25
\ExecuteOutput|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst34|$00000|auto_generated|result_node[6]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ExecuteOutput|Q\(6));

-- Location: LCCOMB_X59_Y46_N24
\SelB|$00000|auto_generated|result_node[6]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[6]~39_combout\ = (\inst21|selb~0_combout\ & (\ExecuteOutput|Q\(6) & (!\inst21|selexb~combout\))) # (!\inst21|selb~0_combout\ & (((\registerFile|registe:0:regi|ffmap:6:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOutput|Q\(6),
	datab => \inst21|selexb~combout\,
	datac => \registerFile|registe:0:regi|ffmap:6:ffi|Q~q\,
	datad => \inst21|selb~0_combout\,
	combout => \SelB|$00000|auto_generated|result_node[6]~39_combout\);

-- Location: LCCOMB_X59_Y49_N14
\SelB|$00000|auto_generated|result_node[6]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[6]~55_combout\ = (\SelB|$00000|auto_generated|result_node[6]~39_combout\) # ((\inst21|selexb~combout\ & (\inst21|selb~0_combout\ & \inst34|$00000|auto_generated|result_node[6]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|selexb~combout\,
	datab => \inst21|selb~0_combout\,
	datac => \SelB|$00000|auto_generated|result_node[6]~39_combout\,
	datad => \inst34|$00000|auto_generated|result_node[6]~26_combout\,
	combout => \SelB|$00000|auto_generated|result_node[6]~55_combout\);

-- Location: FF_X59_Y49_N15
\BBuffer|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelB|$00000|auto_generated|result_node[6]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BBuffer|Q\(6));

-- Location: LCCOMB_X58_Y48_N6
\inst29|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~20_combout\ = \ExecuteOperands|Q\(0) $ (((\BBuffer|Q\(6) & !\OUTPUTSELECT|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datac => \BBuffer|Q\(6),
	datad => \OUTPUTSELECT|Q\(6),
	combout => \inst29|Add0~20_combout\);

-- Location: LCCOMB_X58_Y47_N0
\inst29|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~24_combout\ = ((\inst29|Add0~23_combout\ $ (\ABuffer|Q\(7) $ (!\inst29|Add0~22\)))) # (GND)
-- \inst29|Add0~25\ = CARRY((\inst29|Add0~23_combout\ & ((\ABuffer|Q\(7)) # (!\inst29|Add0~22\))) # (!\inst29|Add0~23_combout\ & (\ABuffer|Q\(7) & !\inst29|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Add0~23_combout\,
	datab => \ABuffer|Q\(7),
	datad => VCC,
	cin => \inst29|Add0~22\,
	combout => \inst29|Add0~24_combout\,
	cout => \inst29|Add0~25\);

-- Location: LCCOMB_X62_Y49_N24
\inst34|$00000|auto_generated|result_node[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[7]~27_combout\ = (\inst32~combout\ & (((\ABuffer|Q\(7))))) # (!\inst32~combout\ & ((\inst39|O[11]~0_combout\ & ((\ABuffer|Q\(7)))) # (!\inst39|O[11]~0_combout\ & (\BBuffer|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32~combout\,
	datab => \BBuffer|Q\(7),
	datac => \ABuffer|Q\(7),
	datad => \inst39|O[11]~0_combout\,
	combout => \inst34|$00000|auto_generated|result_node[7]~27_combout\);

-- Location: LCCOMB_X62_Y49_N28
\inst34|$00000|auto_generated|result_node[7]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[7]~28_combout\ = (\inst32~combout\ & (((\inst34|$00000|auto_generated|result_node[7]~27_combout\)))) # (!\inst32~combout\ & ((\OUTPUTSELECT|Q\(4) & ((\inst34|$00000|auto_generated|result_node[7]~27_combout\))) # 
-- (!\OUTPUTSELECT|Q\(4) & (\inst29|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32~combout\,
	datab => \OUTPUTSELECT|Q\(4),
	datac => \inst29|Add0~24_combout\,
	datad => \inst34|$00000|auto_generated|result_node[7]~27_combout\,
	combout => \inst34|$00000|auto_generated|result_node[7]~28_combout\);

-- Location: LCCOMB_X62_Y49_N22
\inst34|$00000|auto_generated|result_node[7]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[7]~54_combout\ = (\ExecuteOperands|Q\(0) & ((\OUTPUTSELECT|Q\(0) & (\SW[7]~input_o\)) # (!\OUTPUTSELECT|Q\(0) & ((\inst34|$00000|auto_generated|result_node[7]~28_combout\))))) # (!\ExecuteOperands|Q\(0) & 
-- (((\inst34|$00000|auto_generated|result_node[7]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \ExecuteOperands|Q\(0),
	datac => \OUTPUTSELECT|Q\(0),
	datad => \inst34|$00000|auto_generated|result_node[7]~28_combout\,
	combout => \inst34|$00000|auto_generated|result_node[7]~54_combout\);

-- Location: LCCOMB_X59_Y46_N22
\SelB|$00000|auto_generated|result_node[7]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[7]~38_combout\ = (\inst21|selb~0_combout\ & (\ExecuteOutput|Q\(7) & ((!\inst21|selexb~combout\)))) # (!\inst21|selb~0_combout\ & (((\registerFile|registe:0:regi|ffmap:7:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOutput|Q\(7),
	datab => \inst21|selb~0_combout\,
	datac => \registerFile|registe:0:regi|ffmap:7:ffi|Q~q\,
	datad => \inst21|selexb~combout\,
	combout => \SelB|$00000|auto_generated|result_node[7]~38_combout\);

-- Location: LCCOMB_X62_Y49_N18
\SelB|$00000|auto_generated|result_node[7]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[7]~54_combout\ = (\SelB|$00000|auto_generated|result_node[7]~38_combout\) # ((\inst21|selexb~combout\ & (\inst21|selb~0_combout\ & \inst34|$00000|auto_generated|result_node[7]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|selexb~combout\,
	datab => \inst21|selb~0_combout\,
	datac => \inst34|$00000|auto_generated|result_node[7]~54_combout\,
	datad => \SelB|$00000|auto_generated|result_node[7]~38_combout\,
	combout => \SelB|$00000|auto_generated|result_node[7]~54_combout\);

-- Location: FF_X62_Y49_N19
\BBuffer|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelB|$00000|auto_generated|result_node[7]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BBuffer|Q\(7));

-- Location: LCCOMB_X58_Y47_N26
\inst29|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~23_combout\ = \ExecuteOperands|Q\(0) $ (((!\OUTPUTSELECT|Q\(6) & \BBuffer|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OUTPUTSELECT|Q\(6),
	datac => \BBuffer|Q\(7),
	datad => \ExecuteOperands|Q\(0),
	combout => \inst29|Add0~23_combout\);

-- Location: LCCOMB_X58_Y47_N2
\inst29|Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~27_combout\ = (\ABuffer|Q\(8) & ((\inst29|Add0~26_combout\ & (\inst29|Add0~25\ & VCC)) # (!\inst29|Add0~26_combout\ & (!\inst29|Add0~25\)))) # (!\ABuffer|Q\(8) & ((\inst29|Add0~26_combout\ & (!\inst29|Add0~25\)) # (!\inst29|Add0~26_combout\ & 
-- ((\inst29|Add0~25\) # (GND)))))
-- \inst29|Add0~28\ = CARRY((\ABuffer|Q\(8) & (!\inst29|Add0~26_combout\ & !\inst29|Add0~25\)) # (!\ABuffer|Q\(8) & ((!\inst29|Add0~25\) # (!\inst29|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(8),
	datab => \inst29|Add0~26_combout\,
	datad => VCC,
	cin => \inst29|Add0~25\,
	combout => \inst29|Add0~27_combout\,
	cout => \inst29|Add0~28\);

-- Location: LCCOMB_X60_Y47_N20
\inst34|$00000|auto_generated|result_node[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[8]~29_combout\ = (\inst32~combout\ & (\ABuffer|Q\(8))) # (!\inst32~combout\ & ((\inst39|O[11]~0_combout\ & (\ABuffer|Q\(8))) # (!\inst39|O[11]~0_combout\ & ((\BBuffer|Q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(8),
	datab => \inst32~combout\,
	datac => \inst39|O[11]~0_combout\,
	datad => \BBuffer|Q\(8),
	combout => \inst34|$00000|auto_generated|result_node[8]~29_combout\);

-- Location: LCCOMB_X60_Y47_N2
\inst34|$00000|auto_generated|result_node[8]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[8]~30_combout\ = (\OUTPUTSELECT|Q\(4) & (((\inst34|$00000|auto_generated|result_node[8]~29_combout\)))) # (!\OUTPUTSELECT|Q\(4) & ((\inst32~combout\ & ((\inst34|$00000|auto_generated|result_node[8]~29_combout\))) 
-- # (!\inst32~combout\ & (\inst29|Add0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUTPUTSELECT|Q\(4),
	datab => \inst29|Add0~27_combout\,
	datac => \inst32~combout\,
	datad => \inst34|$00000|auto_generated|result_node[8]~29_combout\,
	combout => \inst34|$00000|auto_generated|result_node[8]~30_combout\);

-- Location: LCCOMB_X60_Y47_N6
\inst34|$00000|auto_generated|result_node[8]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[8]~55_combout\ = (\ExecuteOperands|Q\(0) & ((\OUTPUTSELECT|Q\(0) & (\SW[8]~input_o\)) # (!\OUTPUTSELECT|Q\(0) & ((\inst34|$00000|auto_generated|result_node[8]~30_combout\))))) # (!\ExecuteOperands|Q\(0) & 
-- (((\inst34|$00000|auto_generated|result_node[8]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datab => \OUTPUTSELECT|Q\(0),
	datac => \SW[8]~input_o\,
	datad => \inst34|$00000|auto_generated|result_node[8]~30_combout\,
	combout => \inst34|$00000|auto_generated|result_node[8]~55_combout\);

-- Location: FF_X60_Y47_N7
\ExecuteOutput|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst34|$00000|auto_generated|result_node[8]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ExecuteOutput|Q\(8));

-- Location: FF_X59_Y46_N27
\registerFile|registe:0:regi|ffmap:8:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(8),
	sload => VCC,
	ena => \inst21|selb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:0:regi|ffmap:8:ffi|Q~q\);

-- Location: FF_X60_Y47_N5
\registerFile|registe:1:regi|ffmap:8:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(8),
	sload => VCC,
	ena => \registerFile|write_dmux|EN_out[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:1:regi|ffmap:8:ffi|Q~q\);

-- Location: LCCOMB_X60_Y47_N4
\SelA|$00000|auto_generated|result_node[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[8]~26_combout\ = (!\inst21|sela~1_combout\ & ((\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & ((\registerFile|registe:1:regi|ffmap:8:ffi|Q~q\))) # (!\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & 
-- (\registerFile|registe:0:regi|ffmap:8:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerFile|registe:0:regi|ffmap:8:ffi|Q~q\,
	datab => \SelA9|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \registerFile|registe:1:regi|ffmap:8:ffi|Q~q\,
	datad => \inst21|sela~1_combout\,
	combout => \SelA|$00000|auto_generated|result_node[8]~26_combout\);

-- Location: LCCOMB_X60_Y47_N28
\SelA|$00000|auto_generated|result_node[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[8]~25_combout\ = (!\inst21|selexa~combout\ & (\ExecuteOutput|Q\(8) & \inst21|sela~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|selexa~combout\,
	datab => \ExecuteOutput|Q\(8),
	datad => \inst21|sela~1_combout\,
	combout => \SelA|$00000|auto_generated|result_node[8]~25_combout\);

-- Location: LCCOMB_X60_Y47_N12
\SelA|$00000|auto_generated|result_node[8]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[8]~27_combout\ = (\SelA|$00000|auto_generated|result_node[8]~26_combout\) # ((\SelA|$00000|auto_generated|result_node[8]~25_combout\) # ((\SelA|$00000|auto_generated|result_node[0]~2_combout\ & 
-- \inst34|$00000|auto_generated|result_node[8]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelA|$00000|auto_generated|result_node[8]~26_combout\,
	datab => \SelA|$00000|auto_generated|result_node[0]~2_combout\,
	datac => \SelA|$00000|auto_generated|result_node[8]~25_combout\,
	datad => \inst34|$00000|auto_generated|result_node[8]~55_combout\,
	combout => \SelA|$00000|auto_generated|result_node[8]~27_combout\);

-- Location: FF_X60_Y47_N13
\ABuffer|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelA|$00000|auto_generated|result_node[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ABuffer|Q\(8));

-- Location: LCCOMB_X58_Y47_N4
\inst29|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~30_combout\ = ((\inst29|Add0~29_combout\ $ (\ABuffer|Q\(9) $ (!\inst29|Add0~28\)))) # (GND)
-- \inst29|Add0~31\ = CARRY((\inst29|Add0~29_combout\ & ((\ABuffer|Q\(9)) # (!\inst29|Add0~28\))) # (!\inst29|Add0~29_combout\ & (\ABuffer|Q\(9) & !\inst29|Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Add0~29_combout\,
	datab => \ABuffer|Q\(9),
	datad => VCC,
	cin => \inst29|Add0~28\,
	combout => \inst29|Add0~30_combout\,
	cout => \inst29|Add0~31\);

-- Location: IOIBUF_X69_Y54_N1
\SW[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X62_Y49_N16
\inst34|$00000|auto_generated|result_node[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[9]~31_combout\ = (!\DeviceSelRegister|Q\(1) & ((\inst39|O[11]~0_combout\ & ((\ABuffer|Q\(9)))) # (!\inst39|O[11]~0_combout\ & (\BBuffer|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(9),
	datab => \DeviceSelRegister|Q\(1),
	datac => \ABuffer|Q\(9),
	datad => \inst39|O[11]~0_combout\,
	combout => \inst34|$00000|auto_generated|result_node[9]~31_combout\);

-- Location: LCCOMB_X62_Y49_N20
\inst34|$00000|auto_generated|result_node[9]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[9]~32_combout\ = (\inst34|$00000|auto_generated|result_node[9]~31_combout\) # ((\ExecuteOperands|Q\(0) & \OUTPUTSELECT|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExecuteOperands|Q\(0),
	datac => \OUTPUTSELECT|Q\(0),
	datad => \inst34|$00000|auto_generated|result_node[9]~31_combout\,
	combout => \inst34|$00000|auto_generated|result_node[9]~32_combout\);

-- Location: LCCOMB_X62_Y49_N6
\inst34|$00000|auto_generated|result_node[9]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[9]~33_combout\ = (\inst32~combout\ & ((\inst34|$00000|auto_generated|result_node[9]~32_combout\ & (\SW[9]~input_o\)) # (!\inst34|$00000|auto_generated|result_node[9]~32_combout\ & ((\ABuffer|Q\(9)))))) # 
-- (!\inst32~combout\ & (((\inst34|$00000|auto_generated|result_node[9]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32~combout\,
	datab => \SW[9]~input_o\,
	datac => \ABuffer|Q\(9),
	datad => \inst34|$00000|auto_generated|result_node[9]~32_combout\,
	combout => \inst34|$00000|auto_generated|result_node[9]~33_combout\);

-- Location: LCCOMB_X62_Y49_N30
\inst34|$00000|auto_generated|result_node[9]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[9]~34_combout\ = (\inst34|$00000|auto_generated|result_node[1]~4_combout\ & ((\inst34|$00000|auto_generated|result_node[9]~33_combout\))) # (!\inst34|$00000|auto_generated|result_node[1]~4_combout\ & 
-- (\inst29|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|$00000|auto_generated|result_node[1]~4_combout\,
	datac => \inst29|Add0~30_combout\,
	datad => \inst34|$00000|auto_generated|result_node[9]~33_combout\,
	combout => \inst34|$00000|auto_generated|result_node[9]~34_combout\);

-- Location: LCCOMB_X59_Y46_N8
\SelB|$00000|auto_generated|result_node[9]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[9]~36_combout\ = (\inst21|selb~0_combout\ & (\ExecuteOutput|Q\(9) & ((!\inst21|selexb~combout\)))) # (!\inst21|selb~0_combout\ & (((\registerFile|registe:0:regi|ffmap:9:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOutput|Q\(9),
	datab => \inst21|selb~0_combout\,
	datac => \registerFile|registe:0:regi|ffmap:9:ffi|Q~q\,
	datad => \inst21|selexb~combout\,
	combout => \SelB|$00000|auto_generated|result_node[9]~36_combout\);

-- Location: LCCOMB_X62_Y49_N10
\SelB|$00000|auto_generated|result_node[9]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[9]~52_combout\ = (\SelB|$00000|auto_generated|result_node[9]~36_combout\) # ((\inst21|selexb~combout\ & (\inst21|selb~0_combout\ & \inst34|$00000|auto_generated|result_node[9]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|selexb~combout\,
	datab => \inst21|selb~0_combout\,
	datac => \inst34|$00000|auto_generated|result_node[9]~34_combout\,
	datad => \SelB|$00000|auto_generated|result_node[9]~36_combout\,
	combout => \SelB|$00000|auto_generated|result_node[9]~52_combout\);

-- Location: FF_X62_Y49_N11
\BBuffer|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelB|$00000|auto_generated|result_node[9]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BBuffer|Q\(9));

-- Location: LCCOMB_X59_Y45_N2
\inst45|DoutI[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|DoutI[9]~feeder_combout\ = \inst45|CODE~8201_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|CODE~8201_combout\,
	combout => \inst45|DoutI[9]~feeder_combout\);

-- Location: FF_X59_Y45_N3
\inst45|DoutI[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst45|DoutI[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|DoutI\(9));

-- Location: FF_X58_Y47_N23
\ImmeRegister|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \inst45|DoutI\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ImmeRegister|Q\(9));

-- Location: LCCOMB_X58_Y47_N22
\inst29|Add0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~29_combout\ = \ExecuteOperands|Q\(0) $ (((\OUTPUTSELECT|Q\(6) & ((\ImmeRegister|Q\(9)))) # (!\OUTPUTSELECT|Q\(6) & (\BBuffer|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(9),
	datab => \ExecuteOperands|Q\(0),
	datac => \ImmeRegister|Q\(9),
	datad => \OUTPUTSELECT|Q\(6),
	combout => \inst29|Add0~29_combout\);

-- Location: LCCOMB_X58_Y47_N6
\inst29|Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~33_combout\ = (\ABuffer|Q\(10) & ((\inst29|Add0~32_combout\ & (\inst29|Add0~31\ & VCC)) # (!\inst29|Add0~32_combout\ & (!\inst29|Add0~31\)))) # (!\ABuffer|Q\(10) & ((\inst29|Add0~32_combout\ & (!\inst29|Add0~31\)) # (!\inst29|Add0~32_combout\ 
-- & ((\inst29|Add0~31\) # (GND)))))
-- \inst29|Add0~34\ = CARRY((\ABuffer|Q\(10) & (!\inst29|Add0~32_combout\ & !\inst29|Add0~31\)) # (!\ABuffer|Q\(10) & ((!\inst29|Add0~31\) # (!\inst29|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(10),
	datab => \inst29|Add0~32_combout\,
	datad => VCC,
	cin => \inst29|Add0~31\,
	combout => \inst29|Add0~33_combout\,
	cout => \inst29|Add0~34\);

-- Location: IOIBUF_X46_Y54_N29
\PB[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(0),
	o => \PB[0]~input_o\);

-- Location: LCCOMB_X59_Y50_N26
\inst39|O[10]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|O[10]~11_combout\ = (\BBuffer|Q\(10) & ((\ExecuteOperands|Q\(0) & (!\inst39|LessThan2~30_combout\)) # (!\ExecuteOperands|Q\(0) & ((!\inst39|LessThan0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datab => \BBuffer|Q\(10),
	datac => \inst39|LessThan2~30_combout\,
	datad => \inst39|LessThan0~30_combout\,
	combout => \inst39|O[10]~11_combout\);

-- Location: LCCOMB_X59_Y50_N18
\inst39|O[10]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|O[10]~12_combout\ = (\ABuffer|Q\(10) & ((\ExecuteOperands|Q\(0) & ((\inst39|LessThan2~30_combout\))) # (!\ExecuteOperands|Q\(0) & (\inst39|LessThan0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datab => \inst39|LessThan0~30_combout\,
	datac => \inst39|LessThan2~30_combout\,
	datad => \ABuffer|Q\(10),
	combout => \inst39|O[10]~12_combout\);

-- Location: LCCOMB_X59_Y50_N20
\inst34|$00000|auto_generated|result_node[10]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[10]~35_combout\ = (\inst2|SWO~0_combout\) # ((!\DeviceSelRegister|Q\(1) & ((\inst39|O[10]~11_combout\) # (\inst39|O[10]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DeviceSelRegister|Q\(1),
	datab => \inst2|SWO~0_combout\,
	datac => \inst39|O[10]~11_combout\,
	datad => \inst39|O[10]~12_combout\,
	combout => \inst34|$00000|auto_generated|result_node[10]~35_combout\);

-- Location: LCCOMB_X59_Y50_N24
\inst34|$00000|auto_generated|result_node[10]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[10]~36_combout\ = (\inst32~combout\ & ((\inst34|$00000|auto_generated|result_node[10]~35_combout\ & (!\PB[0]~input_o\)) # (!\inst34|$00000|auto_generated|result_node[10]~35_combout\ & ((\ABuffer|Q\(10)))))) # 
-- (!\inst32~combout\ & (((\inst34|$00000|auto_generated|result_node[10]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32~combout\,
	datab => \PB[0]~input_o\,
	datac => \ABuffer|Q\(10),
	datad => \inst34|$00000|auto_generated|result_node[10]~35_combout\,
	combout => \inst34|$00000|auto_generated|result_node[10]~36_combout\);

-- Location: LCCOMB_X59_Y50_N12
\inst34|$00000|auto_generated|result_node[10]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[10]~37_combout\ = (\inst34|$00000|auto_generated|result_node[1]~4_combout\ & ((\inst34|$00000|auto_generated|result_node[10]~36_combout\))) # (!\inst34|$00000|auto_generated|result_node[1]~4_combout\ & 
-- (\inst29|Add0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|$00000|auto_generated|result_node[1]~4_combout\,
	datac => \inst29|Add0~33_combout\,
	datad => \inst34|$00000|auto_generated|result_node[10]~36_combout\,
	combout => \inst34|$00000|auto_generated|result_node[10]~37_combout\);

-- Location: FF_X59_Y50_N13
\ExecuteOutput|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst34|$00000|auto_generated|result_node[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ExecuteOutput|Q\(10));

-- Location: FF_X60_Y50_N25
\registerFile|registe:0:regi|ffmap:10:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(10),
	sload => VCC,
	ena => \inst21|selb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:0:regi|ffmap:10:ffi|Q~q\);

-- Location: FF_X60_Y50_N29
\registerFile|registe:1:regi|ffmap:10:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(10),
	sload => VCC,
	ena => \registerFile|write_dmux|EN_out[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:1:regi|ffmap:10:ffi|Q~q\);

-- Location: LCCOMB_X60_Y50_N28
\SelA|$00000|auto_generated|result_node[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[10]~20_combout\ = (!\inst21|sela~1_combout\ & ((\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & ((\registerFile|registe:1:regi|ffmap:10:ffi|Q~q\))) # (!\SelA9|$00000|auto_generated|result_node[0]~0_combout\ 
-- & (\registerFile|registe:0:regi|ffmap:10:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|sela~1_combout\,
	datab => \registerFile|registe:0:regi|ffmap:10:ffi|Q~q\,
	datac => \registerFile|registe:1:regi|ffmap:10:ffi|Q~q\,
	datad => \SelA9|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \SelA|$00000|auto_generated|result_node[10]~20_combout\);

-- Location: LCCOMB_X60_Y50_N14
\SelA|$00000|auto_generated|result_node[10]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[10]~19_combout\ = (\ExecuteOutput|Q\(10) & (\inst21|sela~1_combout\ & !\inst21|selexa~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExecuteOutput|Q\(10),
	datac => \inst21|sela~1_combout\,
	datad => \inst21|selexa~combout\,
	combout => \SelA|$00000|auto_generated|result_node[10]~19_combout\);

-- Location: LCCOMB_X59_Y50_N30
\SelA|$00000|auto_generated|result_node[10]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[10]~21_combout\ = (\SelA|$00000|auto_generated|result_node[10]~20_combout\) # ((\SelA|$00000|auto_generated|result_node[10]~19_combout\) # ((\SelA|$00000|auto_generated|result_node[0]~2_combout\ & 
-- \inst34|$00000|auto_generated|result_node[10]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelA|$00000|auto_generated|result_node[0]~2_combout\,
	datab => \SelA|$00000|auto_generated|result_node[10]~20_combout\,
	datac => \SelA|$00000|auto_generated|result_node[10]~19_combout\,
	datad => \inst34|$00000|auto_generated|result_node[10]~37_combout\,
	combout => \SelA|$00000|auto_generated|result_node[10]~21_combout\);

-- Location: FF_X59_Y50_N31
\ABuffer|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelA|$00000|auto_generated|result_node[10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ABuffer|Q\(10));

-- Location: LCCOMB_X58_Y49_N0
\inst39|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~1_cout\ = CARRY((!\ABuffer|Q\(0) & \BBuffer|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(0),
	datab => \BBuffer|Q\(0),
	datad => VCC,
	cout => \inst39|LessThan0~1_cout\);

-- Location: LCCOMB_X58_Y49_N2
\inst39|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~3_cout\ = CARRY((\ABuffer|Q\(1) & ((!\inst39|LessThan0~1_cout\) # (!\BBuffer|Q\(1)))) # (!\ABuffer|Q\(1) & (!\BBuffer|Q\(1) & !\inst39|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(1),
	datab => \BBuffer|Q\(1),
	datad => VCC,
	cin => \inst39|LessThan0~1_cout\,
	cout => \inst39|LessThan0~3_cout\);

-- Location: LCCOMB_X58_Y49_N4
\inst39|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~5_cout\ = CARRY((\BBuffer|Q\(2) & ((!\inst39|LessThan0~3_cout\) # (!\ABuffer|Q\(2)))) # (!\BBuffer|Q\(2) & (!\ABuffer|Q\(2) & !\inst39|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(2),
	datab => \ABuffer|Q\(2),
	datad => VCC,
	cin => \inst39|LessThan0~3_cout\,
	cout => \inst39|LessThan0~5_cout\);

-- Location: LCCOMB_X58_Y49_N6
\inst39|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~7_cout\ = CARRY((\BBuffer|Q\(3) & (\ABuffer|Q\(3) & !\inst39|LessThan0~5_cout\)) # (!\BBuffer|Q\(3) & ((\ABuffer|Q\(3)) # (!\inst39|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(3),
	datab => \ABuffer|Q\(3),
	datad => VCC,
	cin => \inst39|LessThan0~5_cout\,
	cout => \inst39|LessThan0~7_cout\);

-- Location: LCCOMB_X58_Y49_N8
\inst39|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~9_cout\ = CARRY((\ABuffer|Q\(4) & (\BBuffer|Q\(4) & !\inst39|LessThan0~7_cout\)) # (!\ABuffer|Q\(4) & ((\BBuffer|Q\(4)) # (!\inst39|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(4),
	datab => \BBuffer|Q\(4),
	datad => VCC,
	cin => \inst39|LessThan0~7_cout\,
	cout => \inst39|LessThan0~9_cout\);

-- Location: LCCOMB_X58_Y49_N10
\inst39|LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~11_cout\ = CARRY((\ABuffer|Q\(5) & ((!\inst39|LessThan0~9_cout\) # (!\BBuffer|Q\(5)))) # (!\ABuffer|Q\(5) & (!\BBuffer|Q\(5) & !\inst39|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(5),
	datab => \BBuffer|Q\(5),
	datad => VCC,
	cin => \inst39|LessThan0~9_cout\,
	cout => \inst39|LessThan0~11_cout\);

-- Location: LCCOMB_X58_Y49_N12
\inst39|LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~13_cout\ = CARRY((\ABuffer|Q\(6) & (\BBuffer|Q\(6) & !\inst39|LessThan0~11_cout\)) # (!\ABuffer|Q\(6) & ((\BBuffer|Q\(6)) # (!\inst39|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(6),
	datab => \BBuffer|Q\(6),
	datad => VCC,
	cin => \inst39|LessThan0~11_cout\,
	cout => \inst39|LessThan0~13_cout\);

-- Location: LCCOMB_X58_Y49_N14
\inst39|LessThan0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~15_cout\ = CARRY((\ABuffer|Q\(7) & ((!\inst39|LessThan0~13_cout\) # (!\BBuffer|Q\(7)))) # (!\ABuffer|Q\(7) & (!\BBuffer|Q\(7) & !\inst39|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(7),
	datab => \BBuffer|Q\(7),
	datad => VCC,
	cin => \inst39|LessThan0~13_cout\,
	cout => \inst39|LessThan0~15_cout\);

-- Location: LCCOMB_X58_Y49_N16
\inst39|LessThan0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~17_cout\ = CARRY((\ABuffer|Q\(8) & (\BBuffer|Q\(8) & !\inst39|LessThan0~15_cout\)) # (!\ABuffer|Q\(8) & ((\BBuffer|Q\(8)) # (!\inst39|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(8),
	datab => \BBuffer|Q\(8),
	datad => VCC,
	cin => \inst39|LessThan0~15_cout\,
	cout => \inst39|LessThan0~17_cout\);

-- Location: LCCOMB_X58_Y49_N18
\inst39|LessThan0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~19_cout\ = CARRY((\ABuffer|Q\(9) & ((!\inst39|LessThan0~17_cout\) # (!\BBuffer|Q\(9)))) # (!\ABuffer|Q\(9) & (!\BBuffer|Q\(9) & !\inst39|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(9),
	datab => \BBuffer|Q\(9),
	datad => VCC,
	cin => \inst39|LessThan0~17_cout\,
	cout => \inst39|LessThan0~19_cout\);

-- Location: LCCOMB_X58_Y49_N20
\inst39|LessThan0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~21_cout\ = CARRY((\ABuffer|Q\(10) & (\BBuffer|Q\(10) & !\inst39|LessThan0~19_cout\)) # (!\ABuffer|Q\(10) & ((\BBuffer|Q\(10)) # (!\inst39|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(10),
	datab => \BBuffer|Q\(10),
	datad => VCC,
	cin => \inst39|LessThan0~19_cout\,
	cout => \inst39|LessThan0~21_cout\);

-- Location: LCCOMB_X58_Y49_N22
\inst39|LessThan0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~23_cout\ = CARRY((\ABuffer|Q\(11) & ((!\inst39|LessThan0~21_cout\) # (!\BBuffer|Q\(11)))) # (!\ABuffer|Q\(11) & (!\BBuffer|Q\(11) & !\inst39|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(11),
	datab => \BBuffer|Q\(11),
	datad => VCC,
	cin => \inst39|LessThan0~21_cout\,
	cout => \inst39|LessThan0~23_cout\);

-- Location: LCCOMB_X58_Y49_N24
\inst39|LessThan0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~25_cout\ = CARRY((\BBuffer|Q\(12) & ((!\inst39|LessThan0~23_cout\) # (!\ABuffer|Q\(12)))) # (!\BBuffer|Q\(12) & (!\ABuffer|Q\(12) & !\inst39|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(12),
	datab => \ABuffer|Q\(12),
	datad => VCC,
	cin => \inst39|LessThan0~23_cout\,
	cout => \inst39|LessThan0~25_cout\);

-- Location: LCCOMB_X58_Y49_N26
\inst39|LessThan0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~27_cout\ = CARRY((\ABuffer|Q\(13) & ((!\inst39|LessThan0~25_cout\) # (!\BBuffer|Q\(13)))) # (!\ABuffer|Q\(13) & (!\BBuffer|Q\(13) & !\inst39|LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(13),
	datab => \BBuffer|Q\(13),
	datad => VCC,
	cin => \inst39|LessThan0~25_cout\,
	cout => \inst39|LessThan0~27_cout\);

-- Location: LCCOMB_X58_Y49_N28
\inst39|LessThan0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~29_cout\ = CARRY((\ABuffer|Q\(14) & (\BBuffer|Q\(14) & !\inst39|LessThan0~27_cout\)) # (!\ABuffer|Q\(14) & ((\BBuffer|Q\(14)) # (!\inst39|LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(14),
	datab => \BBuffer|Q\(14),
	datad => VCC,
	cin => \inst39|LessThan0~27_cout\,
	cout => \inst39|LessThan0~29_cout\);

-- Location: LCCOMB_X58_Y49_N30
\inst39|LessThan0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan0~30_combout\ = (\BBuffer|Q\(15) & (\inst39|LessThan0~29_cout\ & \ABuffer|Q\(15))) # (!\BBuffer|Q\(15) & ((\inst39|LessThan0~29_cout\) # (\ABuffer|Q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(15),
	datad => \ABuffer|Q\(15),
	cin => \inst39|LessThan0~29_cout\,
	combout => \inst39|LessThan0~30_combout\);

-- Location: LCCOMB_X59_Y50_N4
\inst39|O[11]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|O[11]~13_combout\ = (\BBuffer|Q\(11) & ((\ExecuteOperands|Q\(0) & ((!\inst39|LessThan2~30_combout\))) # (!\ExecuteOperands|Q\(0) & (!\inst39|LessThan0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datab => \inst39|LessThan0~30_combout\,
	datac => \inst39|LessThan2~30_combout\,
	datad => \BBuffer|Q\(11),
	combout => \inst39|O[11]~13_combout\);

-- Location: LCCOMB_X59_Y50_N16
\inst39|O[11]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|O[11]~14_combout\ = (\ABuffer|Q\(11) & ((\ExecuteOperands|Q\(0) & (\inst39|LessThan2~30_combout\)) # (!\ExecuteOperands|Q\(0) & ((\inst39|LessThan0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datab => \ABuffer|Q\(11),
	datac => \inst39|LessThan2~30_combout\,
	datad => \inst39|LessThan0~30_combout\,
	combout => \inst39|O[11]~14_combout\);

-- Location: LCCOMB_X59_Y50_N28
\inst34|$00000|auto_generated|result_node[11]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[11]~38_combout\ = (\inst2|SWO~0_combout\) # ((!\DeviceSelRegister|Q\(1) & ((\inst39|O[11]~13_combout\) # (\inst39|O[11]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DeviceSelRegister|Q\(1),
	datab => \inst2|SWO~0_combout\,
	datac => \inst39|O[11]~13_combout\,
	datad => \inst39|O[11]~14_combout\,
	combout => \inst34|$00000|auto_generated|result_node[11]~38_combout\);

-- Location: LCCOMB_X59_Y50_N22
\inst34|$00000|auto_generated|result_node[11]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[11]~39_combout\ = (\inst32~combout\ & ((\inst34|$00000|auto_generated|result_node[11]~38_combout\ & ((!\PB[1]~input_o\))) # (!\inst34|$00000|auto_generated|result_node[11]~38_combout\ & (\ABuffer|Q\(11))))) # 
-- (!\inst32~combout\ & (((\inst34|$00000|auto_generated|result_node[11]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32~combout\,
	datab => \ABuffer|Q\(11),
	datac => \PB[1]~input_o\,
	datad => \inst34|$00000|auto_generated|result_node[11]~38_combout\,
	combout => \inst34|$00000|auto_generated|result_node[11]~39_combout\);

-- Location: LCCOMB_X58_Y47_N8
\inst29|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~36_combout\ = ((\inst29|Add0~35_combout\ $ (\ABuffer|Q\(11) $ (!\inst29|Add0~34\)))) # (GND)
-- \inst29|Add0~37\ = CARRY((\inst29|Add0~35_combout\ & ((\ABuffer|Q\(11)) # (!\inst29|Add0~34\))) # (!\inst29|Add0~35_combout\ & (\ABuffer|Q\(11) & !\inst29|Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Add0~35_combout\,
	datab => \ABuffer|Q\(11),
	datad => VCC,
	cin => \inst29|Add0~34\,
	combout => \inst29|Add0~36_combout\,
	cout => \inst29|Add0~37\);

-- Location: LCCOMB_X59_Y50_N8
\inst34|$00000|auto_generated|result_node[11]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[11]~40_combout\ = (\inst34|$00000|auto_generated|result_node[1]~4_combout\ & (\inst34|$00000|auto_generated|result_node[11]~39_combout\)) # (!\inst34|$00000|auto_generated|result_node[1]~4_combout\ & 
-- ((\inst29|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|$00000|auto_generated|result_node[1]~4_combout\,
	datac => \inst34|$00000|auto_generated|result_node[11]~39_combout\,
	datad => \inst29|Add0~36_combout\,
	combout => \inst34|$00000|auto_generated|result_node[11]~40_combout\);

-- Location: FF_X59_Y50_N9
\ExecuteOutput|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst34|$00000|auto_generated|result_node[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ExecuteOutput|Q\(11));

-- Location: LCCOMB_X58_Y50_N28
\SelB|$00000|auto_generated|result_node[11]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[11]~34_combout\ = (\inst21|selb~0_combout\ & (\ExecuteOutput|Q\(11) & ((!\inst21|selexb~combout\)))) # (!\inst21|selb~0_combout\ & (((\registerFile|registe:0:regi|ffmap:11:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|selb~0_combout\,
	datab => \ExecuteOutput|Q\(11),
	datac => \registerFile|registe:0:regi|ffmap:11:ffi|Q~q\,
	datad => \inst21|selexb~combout\,
	combout => \SelB|$00000|auto_generated|result_node[11]~34_combout\);

-- Location: LCCOMB_X59_Y50_N6
\SelB|$00000|auto_generated|result_node[11]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[11]~50_combout\ = (\SelB|$00000|auto_generated|result_node[11]~34_combout\) # ((\inst21|selexb~combout\ & (\inst34|$00000|auto_generated|result_node[11]~40_combout\ & \inst21|selb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelB|$00000|auto_generated|result_node[11]~34_combout\,
	datab => \inst21|selexb~combout\,
	datac => \inst34|$00000|auto_generated|result_node[11]~40_combout\,
	datad => \inst21|selb~0_combout\,
	combout => \SelB|$00000|auto_generated|result_node[11]~50_combout\);

-- Location: FF_X59_Y50_N7
\BBuffer|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelB|$00000|auto_generated|result_node[11]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BBuffer|Q\(11));

-- Location: LCCOMB_X58_Y47_N18
\inst29|Add0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~35_combout\ = \ExecuteOperands|Q\(0) $ (((\BBuffer|Q\(11) & !\OUTPUTSELECT|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(11),
	datab => \ExecuteOperands|Q\(0),
	datad => \OUTPUTSELECT|Q\(6),
	combout => \inst29|Add0~35_combout\);

-- Location: LCCOMB_X58_Y47_N10
\inst29|Add0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~39_combout\ = (\ABuffer|Q\(12) & ((\inst29|Add0~38_combout\ & (\inst29|Add0~37\ & VCC)) # (!\inst29|Add0~38_combout\ & (!\inst29|Add0~37\)))) # (!\ABuffer|Q\(12) & ((\inst29|Add0~38_combout\ & (!\inst29|Add0~37\)) # (!\inst29|Add0~38_combout\ 
-- & ((\inst29|Add0~37\) # (GND)))))
-- \inst29|Add0~40\ = CARRY((\ABuffer|Q\(12) & (!\inst29|Add0~38_combout\ & !\inst29|Add0~37\)) # (!\ABuffer|Q\(12) & ((!\inst29|Add0~37\) # (!\inst29|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(12),
	datab => \inst29|Add0~38_combout\,
	datad => VCC,
	cin => \inst29|Add0~37\,
	combout => \inst29|Add0~39_combout\,
	cout => \inst29|Add0~40\);

-- Location: LCCOMB_X59_Y47_N30
\inst34|$00000|auto_generated|result_node[12]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[12]~42_combout\ = (!\OUTPUTSELECT|Q\(4) & \inst29|Add0~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OUTPUTSELECT|Q\(4),
	datad => \inst29|Add0~39_combout\,
	combout => \inst34|$00000|auto_generated|result_node[12]~42_combout\);

-- Location: LCCOMB_X59_Y47_N24
\inst34|$00000|auto_generated|result_node[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[12]~43_combout\ = (\OUTPUTSELECT|Q\(4) & ((\inst39|O[11]~0_combout\ & ((\ABuffer|Q\(12)))) # (!\inst39|O[11]~0_combout\ & (\BBuffer|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(12),
	datab => \OUTPUTSELECT|Q\(4),
	datac => \ABuffer|Q\(12),
	datad => \inst39|O[11]~0_combout\,
	combout => \inst34|$00000|auto_generated|result_node[12]~43_combout\);

-- Location: LCCOMB_X59_Y47_N6
\inst34|$00000|auto_generated|result_node[12]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[12]~44_combout\ = (\inst34|$00000|auto_generated|result_node[12]~41_combout\) # ((!\inst32~combout\ & ((\inst34|$00000|auto_generated|result_node[12]~42_combout\) # 
-- (\inst34|$00000|auto_generated|result_node[12]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32~combout\,
	datab => \inst34|$00000|auto_generated|result_node[12]~41_combout\,
	datac => \inst34|$00000|auto_generated|result_node[12]~42_combout\,
	datad => \inst34|$00000|auto_generated|result_node[12]~43_combout\,
	combout => \inst34|$00000|auto_generated|result_node[12]~44_combout\);

-- Location: FF_X59_Y47_N7
\ExecuteOutput|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst34|$00000|auto_generated|result_node[12]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ExecuteOutput|Q\(12));

-- Location: FF_X58_Y46_N15
\registerFile|registe:1:regi|ffmap:12:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(12),
	sload => VCC,
	ena => \registerFile|write_dmux|EN_out[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:1:regi|ffmap:12:ffi|Q~q\);

-- Location: LCCOMB_X58_Y46_N14
\SelA|$00000|auto_generated|result_node[12]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[12]~14_combout\ = (\inst45|Dout\(9) & ((\inst24|Mux8~1_combout\ & (\registerFile|registe:1:regi|ffmap:12:ffi|Q~q\)) # (!\inst24|Mux8~1_combout\ & ((\registerFile|registe:0:regi|ffmap:12:ffi|Q~q\))))) # 
-- (!\inst45|Dout\(9) & (((\registerFile|registe:0:regi|ffmap:12:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|Dout\(9),
	datab => \inst24|Mux8~1_combout\,
	datac => \registerFile|registe:1:regi|ffmap:12:ffi|Q~q\,
	datad => \registerFile|registe:0:regi|ffmap:12:ffi|Q~q\,
	combout => \SelA|$00000|auto_generated|result_node[12]~14_combout\);

-- Location: LCCOMB_X59_Y47_N4
\SelA|$00000|auto_generated|result_node[12]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[12]~13_combout\ = (\inst21|sela~1_combout\ & ((\inst21|selexa~combout\ & ((\inst34|$00000|auto_generated|result_node[12]~44_combout\))) # (!\inst21|selexa~combout\ & (\ExecuteOutput|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOutput|Q\(12),
	datab => \inst21|selexa~combout\,
	datac => \inst21|sela~1_combout\,
	datad => \inst34|$00000|auto_generated|result_node[12]~44_combout\,
	combout => \SelA|$00000|auto_generated|result_node[12]~13_combout\);

-- Location: LCCOMB_X59_Y47_N0
\SelA|$00000|auto_generated|result_node[12]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[12]~15_combout\ = (\SelA|$00000|auto_generated|result_node[12]~13_combout\) # ((\SelA|$00000|auto_generated|result_node[12]~14_combout\ & !\inst21|sela~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelA|$00000|auto_generated|result_node[12]~14_combout\,
	datac => \inst21|sela~1_combout\,
	datad => \SelA|$00000|auto_generated|result_node[12]~13_combout\,
	combout => \SelA|$00000|auto_generated|result_node[12]~15_combout\);

-- Location: FF_X59_Y47_N1
\ABuffer|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelA|$00000|auto_generated|result_node[12]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ABuffer|Q\(12));

-- Location: LCCOMB_X58_Y47_N12
\inst29|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~42_combout\ = ((\inst29|Add0~41_combout\ $ (\ABuffer|Q\(13) $ (!\inst29|Add0~40\)))) # (GND)
-- \inst29|Add0~43\ = CARRY((\inst29|Add0~41_combout\ & ((\ABuffer|Q\(13)) # (!\inst29|Add0~40\))) # (!\inst29|Add0~41_combout\ & (\ABuffer|Q\(13) & !\inst29|Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Add0~41_combout\,
	datab => \ABuffer|Q\(13),
	datad => VCC,
	cin => \inst29|Add0~40\,
	combout => \inst29|Add0~42_combout\,
	cout => \inst29|Add0~43\);

-- Location: LCCOMB_X59_Y45_N28
\inst45|DoutI[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45|DoutI[13]~feeder_combout\ = \inst45|CODE~8201_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst45|CODE~8201_combout\,
	combout => \inst45|DoutI[13]~feeder_combout\);

-- Location: FF_X59_Y45_N29
\inst45|DoutI[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst45|DoutI[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45|DoutI\(13));

-- Location: FF_X58_Y47_N31
\ImmeRegister|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \inst45|DoutI\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ImmeRegister|Q\(13));

-- Location: LCCOMB_X57_Y47_N28
\immBMux|$00000|auto_generated|result_node[13]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \immBMux|$00000|auto_generated|result_node[13]~0_combout\ = (\OUTPUTSELECT|Q\(6) & (\ImmeRegister|Q\(13))) # (!\OUTPUTSELECT|Q\(6) & ((\BBuffer|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ImmeRegister|Q\(13),
	datac => \BBuffer|Q\(13),
	datad => \OUTPUTSELECT|Q\(6),
	combout => \immBMux|$00000|auto_generated|result_node[13]~0_combout\);

-- Location: LCCOMB_X57_Y47_N26
\inst34|$00000|auto_generated|result_node[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[13]~45_combout\ = (\ABuffer|Q\(13) & ((\ExecuteOperands|Q\(0)) # (\immBMux|$00000|auto_generated|result_node[13]~0_combout\))) # (!\ABuffer|Q\(13) & (\ExecuteOperands|Q\(0) & 
-- \immBMux|$00000|auto_generated|result_node[13]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(13),
	datab => \ExecuteOperands|Q\(0),
	datad => \immBMux|$00000|auto_generated|result_node[13]~0_combout\,
	combout => \inst34|$00000|auto_generated|result_node[13]~45_combout\);

-- Location: LCCOMB_X59_Y47_N12
\inst35|$00000|auto_generated|result_node[13]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst35|$00000|auto_generated|result_node[13]~0_combout\ = (!\inst2|SWO~0_combout\ & ((\DeviceSelRegister|Q\(1) & (\ABuffer|Q\(13))) # (!\DeviceSelRegister|Q\(1) & ((\ImmeRegister|Q\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(13),
	datab => \DeviceSelRegister|Q\(1),
	datac => \ImmeRegister|Q\(13),
	datad => \inst2|SWO~0_combout\,
	combout => \inst35|$00000|auto_generated|result_node[13]~0_combout\);

-- Location: LCCOMB_X59_Y49_N10
\inst39|O[13]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|O[13]~15_combout\ = (\inst39|O[11]~0_combout\ & ((\ABuffer|Q\(13)))) # (!\inst39|O[11]~0_combout\ & (\BBuffer|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(13),
	datac => \ABuffer|Q\(13),
	datad => \inst39|O[11]~0_combout\,
	combout => \inst39|O[13]~15_combout\);

-- Location: LCCOMB_X59_Y49_N16
\inst34|$00000|auto_generated|result_node[13]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[13]~46_combout\ = (\inst32~combout\ & (((\inst35|$00000|auto_generated|result_node[13]~0_combout\)))) # (!\inst32~combout\ & (((\inst39|O[13]~15_combout\)) # (!\OUTPUTSELECT|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUTPUTSELECT|Q\(4),
	datab => \inst35|$00000|auto_generated|result_node[13]~0_combout\,
	datac => \inst32~combout\,
	datad => \inst39|O[13]~15_combout\,
	combout => \inst34|$00000|auto_generated|result_node[13]~46_combout\);

-- Location: LCCOMB_X59_Y49_N18
\inst34|$00000|auto_generated|result_node[13]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[13]~47_combout\ = (\inst34|$00000|auto_generated|result_node[1]~4_combout\ & (((\inst34|$00000|auto_generated|result_node[13]~46_combout\)))) # (!\inst34|$00000|auto_generated|result_node[1]~4_combout\ & 
-- ((\inst34|$00000|auto_generated|result_node[13]~46_combout\ & (\inst29|Add0~42_combout\)) # (!\inst34|$00000|auto_generated|result_node[13]~46_combout\ & ((\inst34|$00000|auto_generated|result_node[13]~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Add0~42_combout\,
	datab => \inst34|$00000|auto_generated|result_node[1]~4_combout\,
	datac => \inst34|$00000|auto_generated|result_node[13]~45_combout\,
	datad => \inst34|$00000|auto_generated|result_node[13]~46_combout\,
	combout => \inst34|$00000|auto_generated|result_node[13]~47_combout\);

-- Location: FF_X59_Y49_N19
\ExecuteOutput|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst34|$00000|auto_generated|result_node[13]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ExecuteOutput|Q\(13));

-- Location: LCCOMB_X58_Y46_N0
\SelB|$00000|auto_generated|result_node[13]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[13]~31_combout\ = (\inst21|selb~0_combout\ & (\ExecuteOutput|Q\(13) & ((!\inst21|selexb~combout\)))) # (!\inst21|selb~0_combout\ & (((\registerFile|registe:0:regi|ffmap:13:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOutput|Q\(13),
	datab => \inst21|selb~0_combout\,
	datac => \registerFile|registe:0:regi|ffmap:13:ffi|Q~q\,
	datad => \inst21|selexb~combout\,
	combout => \SelB|$00000|auto_generated|result_node[13]~31_combout\);

-- Location: LCCOMB_X59_Y49_N12
\SelB|$00000|auto_generated|result_node[13]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[13]~49_combout\ = (\SelB|$00000|auto_generated|result_node[13]~31_combout\) # ((\inst21|selexb~combout\ & (\inst21|selb~0_combout\ & \inst34|$00000|auto_generated|result_node[13]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|selexb~combout\,
	datab => \SelB|$00000|auto_generated|result_node[13]~31_combout\,
	datac => \inst21|selb~0_combout\,
	datad => \inst34|$00000|auto_generated|result_node[13]~47_combout\,
	combout => \SelB|$00000|auto_generated|result_node[13]~49_combout\);

-- Location: FF_X59_Y49_N13
\BBuffer|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelB|$00000|auto_generated|result_node[13]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BBuffer|Q\(13));

-- Location: LCCOMB_X58_Y47_N30
\inst29|Add0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~41_combout\ = \ExecuteOperands|Q\(0) $ (((\OUTPUTSELECT|Q\(6) & ((\ImmeRegister|Q\(13)))) # (!\OUTPUTSELECT|Q\(6) & (\BBuffer|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(13),
	datab => \ExecuteOperands|Q\(0),
	datac => \ImmeRegister|Q\(13),
	datad => \OUTPUTSELECT|Q\(6),
	combout => \inst29|Add0~41_combout\);

-- Location: LCCOMB_X58_Y47_N14
\inst29|Add0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~45_combout\ = (\ABuffer|Q\(14) & ((\inst29|Add0~44_combout\ & (\inst29|Add0~43\ & VCC)) # (!\inst29|Add0~44_combout\ & (!\inst29|Add0~43\)))) # (!\ABuffer|Q\(14) & ((\inst29|Add0~44_combout\ & (!\inst29|Add0~43\)) # (!\inst29|Add0~44_combout\ 
-- & ((\inst29|Add0~43\) # (GND)))))
-- \inst29|Add0~46\ = CARRY((\ABuffer|Q\(14) & (!\inst29|Add0~44_combout\ & !\inst29|Add0~43\)) # (!\ABuffer|Q\(14) & ((!\inst29|Add0~43\) # (!\inst29|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(14),
	datab => \inst29|Add0~44_combout\,
	datad => VCC,
	cin => \inst29|Add0~43\,
	combout => \inst29|Add0~45_combout\,
	cout => \inst29|Add0~46\);

-- Location: LCCOMB_X59_Y48_N28
\immBMux|$00000|auto_generated|result_node[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \immBMux|$00000|auto_generated|result_node[14]~1_combout\ = (\OUTPUTSELECT|Q\(6) & (\ImmeRegister|Q\(14))) # (!\OUTPUTSELECT|Q\(6) & ((\BBuffer|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ImmeRegister|Q\(14),
	datab => \OUTPUTSELECT|Q\(6),
	datad => \BBuffer|Q\(14),
	combout => \immBMux|$00000|auto_generated|result_node[14]~1_combout\);

-- Location: LCCOMB_X59_Y48_N18
\inst34|$00000|auto_generated|result_node[14]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[14]~48_combout\ = (\ExecuteOperands|Q\(0) & ((\ABuffer|Q\(14)) # (\immBMux|$00000|auto_generated|result_node[14]~1_combout\))) # (!\ExecuteOperands|Q\(0) & (\ABuffer|Q\(14) & 
-- \immBMux|$00000|auto_generated|result_node[14]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datab => \ABuffer|Q\(14),
	datad => \immBMux|$00000|auto_generated|result_node[14]~1_combout\,
	combout => \inst34|$00000|auto_generated|result_node[14]~48_combout\);

-- Location: LCCOMB_X59_Y48_N26
\inst35|$00000|auto_generated|result_node[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst35|$00000|auto_generated|result_node[14]~1_combout\ = (!\inst2|SWO~0_combout\ & ((\DeviceSelRegister|Q\(1) & ((\ABuffer|Q\(14)))) # (!\DeviceSelRegister|Q\(1) & (\ImmeRegister|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ImmeRegister|Q\(14),
	datab => \ABuffer|Q\(14),
	datac => \inst2|SWO~0_combout\,
	datad => \DeviceSelRegister|Q\(1),
	combout => \inst35|$00000|auto_generated|result_node[14]~1_combout\);

-- Location: LCCOMB_X59_Y49_N0
\inst39|O[14]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|O[14]~16_combout\ = (\inst39|O[11]~0_combout\ & ((\ABuffer|Q\(14)))) # (!\inst39|O[11]~0_combout\ & (\BBuffer|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BBuffer|Q\(14),
	datac => \ABuffer|Q\(14),
	datad => \inst39|O[11]~0_combout\,
	combout => \inst39|O[14]~16_combout\);

-- Location: LCCOMB_X59_Y48_N6
\inst34|$00000|auto_generated|result_node[14]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[14]~49_combout\ = (\inst32~combout\ & (((\inst35|$00000|auto_generated|result_node[14]~1_combout\)))) # (!\inst32~combout\ & (((\inst39|O[14]~16_combout\)) # (!\OUTPUTSELECT|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32~combout\,
	datab => \OUTPUTSELECT|Q\(4),
	datac => \inst35|$00000|auto_generated|result_node[14]~1_combout\,
	datad => \inst39|O[14]~16_combout\,
	combout => \inst34|$00000|auto_generated|result_node[14]~49_combout\);

-- Location: LCCOMB_X59_Y48_N22
\inst34|$00000|auto_generated|result_node[14]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[14]~50_combout\ = (\inst34|$00000|auto_generated|result_node[1]~4_combout\ & (((\inst34|$00000|auto_generated|result_node[14]~49_combout\)))) # (!\inst34|$00000|auto_generated|result_node[1]~4_combout\ & 
-- ((\inst34|$00000|auto_generated|result_node[14]~49_combout\ & (\inst29|Add0~45_combout\)) # (!\inst34|$00000|auto_generated|result_node[14]~49_combout\ & ((\inst34|$00000|auto_generated|result_node[14]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|Add0~45_combout\,
	datab => \inst34|$00000|auto_generated|result_node[14]~48_combout\,
	datac => \inst34|$00000|auto_generated|result_node[1]~4_combout\,
	datad => \inst34|$00000|auto_generated|result_node[14]~49_combout\,
	combout => \inst34|$00000|auto_generated|result_node[14]~50_combout\);

-- Location: FF_X59_Y48_N9
\registerFile|registe:1:regi|ffmap:14:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(14),
	sload => VCC,
	ena => \registerFile|write_dmux|EN_out[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:1:regi|ffmap:14:ffi|Q~q\);

-- Location: LCCOMB_X59_Y48_N8
\SelA|$00000|auto_generated|result_node[14]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[14]~8_combout\ = (!\inst21|sela~1_combout\ & ((\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & ((\registerFile|registe:1:regi|ffmap:14:ffi|Q~q\))) # (!\SelA9|$00000|auto_generated|result_node[0]~0_combout\ 
-- & (\registerFile|registe:0:regi|ffmap:14:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerFile|registe:0:regi|ffmap:14:ffi|Q~q\,
	datab => \inst21|sela~1_combout\,
	datac => \registerFile|registe:1:regi|ffmap:14:ffi|Q~q\,
	datad => \SelA9|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \SelA|$00000|auto_generated|result_node[14]~8_combout\);

-- Location: LCCOMB_X59_Y48_N16
\SelA|$00000|auto_generated|result_node[14]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[14]~7_combout\ = (\ExecuteOutput|Q\(14) & (\inst21|sela~1_combout\ & !\inst21|selexa~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOutput|Q\(14),
	datab => \inst21|sela~1_combout\,
	datad => \inst21|selexa~combout\,
	combout => \SelA|$00000|auto_generated|result_node[14]~7_combout\);

-- Location: LCCOMB_X59_Y48_N20
\SelA|$00000|auto_generated|result_node[14]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[14]~9_combout\ = (\SelA|$00000|auto_generated|result_node[14]~8_combout\) # ((\SelA|$00000|auto_generated|result_node[14]~7_combout\) # ((\inst34|$00000|auto_generated|result_node[14]~50_combout\ & 
-- \SelA|$00000|auto_generated|result_node[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|$00000|auto_generated|result_node[14]~50_combout\,
	datab => \SelA|$00000|auto_generated|result_node[14]~8_combout\,
	datac => \SelA|$00000|auto_generated|result_node[0]~2_combout\,
	datad => \SelA|$00000|auto_generated|result_node[14]~7_combout\,
	combout => \SelA|$00000|auto_generated|result_node[14]~9_combout\);

-- Location: FF_X59_Y48_N21
\ABuffer|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelA|$00000|auto_generated|result_node[14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ABuffer|Q\(14));

-- Location: LCCOMB_X58_Y47_N16
\inst29|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|Add0~48_combout\ = \ABuffer|Q\(15) $ (\inst29|Add0~46\ $ (!\inst29|Add0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ABuffer|Q\(15),
	datad => \inst29|Add0~47_combout\,
	cin => \inst29|Add0~46\,
	combout => \inst29|Add0~48_combout\);

-- Location: LCCOMB_X58_Y50_N18
\inst35|$00000|auto_generated|result_node[15]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst35|$00000|auto_generated|result_node[15]~2_combout\ = (!\inst2|SWO~0_combout\ & ((\DeviceSelRegister|Q\(1) & (\ABuffer|Q\(15))) # (!\DeviceSelRegister|Q\(1) & ((\ImmeRegister|Q\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SWO~0_combout\,
	datab => \DeviceSelRegister|Q\(1),
	datac => \ABuffer|Q\(15),
	datad => \ImmeRegister|Q\(15),
	combout => \inst35|$00000|auto_generated|result_node[15]~2_combout\);

-- Location: LCCOMB_X58_Y50_N12
\inst39|N~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|N~0_combout\ = (\inst39|O[11]~0_combout\ & (\ABuffer|Q\(15))) # (!\inst39|O[11]~0_combout\ & ((\BBuffer|Q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(15),
	datac => \BBuffer|Q\(15),
	datad => \inst39|O[11]~0_combout\,
	combout => \inst39|N~0_combout\);

-- Location: LCCOMB_X58_Y50_N6
\inst34|$00000|auto_generated|result_node[15]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[15]~52_combout\ = (\inst32~combout\ & (\inst35|$00000|auto_generated|result_node[15]~2_combout\)) # (!\inst32~combout\ & (((\inst39|N~0_combout\) # (!\OUTPUTSELECT|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32~combout\,
	datab => \inst35|$00000|auto_generated|result_node[15]~2_combout\,
	datac => \OUTPUTSELECT|Q\(4),
	datad => \inst39|N~0_combout\,
	combout => \inst34|$00000|auto_generated|result_node[15]~52_combout\);

-- Location: LCCOMB_X58_Y50_N24
\inst34|$00000|auto_generated|result_node[15]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[15]~53_combout\ = (\inst34|$00000|auto_generated|result_node[1]~4_combout\ & (((\inst34|$00000|auto_generated|result_node[15]~52_combout\)))) # (!\inst34|$00000|auto_generated|result_node[1]~4_combout\ & 
-- ((\inst34|$00000|auto_generated|result_node[15]~52_combout\ & ((\inst29|Add0~48_combout\))) # (!\inst34|$00000|auto_generated|result_node[15]~52_combout\ & (\inst34|$00000|auto_generated|result_node[15]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|$00000|auto_generated|result_node[15]~51_combout\,
	datab => \inst34|$00000|auto_generated|result_node[1]~4_combout\,
	datac => \inst29|Add0~48_combout\,
	datad => \inst34|$00000|auto_generated|result_node[15]~52_combout\,
	combout => \inst34|$00000|auto_generated|result_node[15]~53_combout\);

-- Location: FF_X58_Y50_N25
\ExecuteOutput|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst34|$00000|auto_generated|result_node[15]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ExecuteOutput|Q\(15));

-- Location: LCCOMB_X58_Y50_N14
\SelB|$00000|auto_generated|result_node[15]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[15]~29_combout\ = (\inst21|selb~0_combout\ & (\ExecuteOutput|Q\(15) & ((!\inst21|selexb~combout\)))) # (!\inst21|selb~0_combout\ & (((\registerFile|registe:0:regi|ffmap:15:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOutput|Q\(15),
	datab => \inst21|selb~0_combout\,
	datac => \registerFile|registe:0:regi|ffmap:15:ffi|Q~q\,
	datad => \inst21|selexb~combout\,
	combout => \SelB|$00000|auto_generated|result_node[15]~29_combout\);

-- Location: LCCOMB_X58_Y50_N30
\SelB|$00000|auto_generated|result_node[15]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelB|$00000|auto_generated|result_node[15]~47_combout\ = (\SelB|$00000|auto_generated|result_node[15]~29_combout\) # ((\inst21|selexb~combout\ & (\inst21|selb~0_combout\ & \inst34|$00000|auto_generated|result_node[15]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelB|$00000|auto_generated|result_node[15]~29_combout\,
	datab => \inst21|selexb~combout\,
	datac => \inst21|selb~0_combout\,
	datad => \inst34|$00000|auto_generated|result_node[15]~53_combout\,
	combout => \SelB|$00000|auto_generated|result_node[15]~47_combout\);

-- Location: FF_X58_Y50_N31
\BBuffer|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelB|$00000|auto_generated|result_node[15]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BBuffer|Q\(15));

-- Location: LCCOMB_X60_Y49_N0
\inst39|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan2~1_cout\ = CARRY((\ABuffer|Q\(0) & !\BBuffer|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(0),
	datab => \BBuffer|Q\(0),
	datad => VCC,
	cout => \inst39|LessThan2~1_cout\);

-- Location: LCCOMB_X60_Y49_N2
\inst39|LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan2~3_cout\ = CARRY((\ABuffer|Q\(1) & (\BBuffer|Q\(1) & !\inst39|LessThan2~1_cout\)) # (!\ABuffer|Q\(1) & ((\BBuffer|Q\(1)) # (!\inst39|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(1),
	datab => \BBuffer|Q\(1),
	datad => VCC,
	cin => \inst39|LessThan2~1_cout\,
	cout => \inst39|LessThan2~3_cout\);

-- Location: LCCOMB_X60_Y49_N4
\inst39|LessThan2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan2~5_cout\ = CARRY((\ABuffer|Q\(2) & ((!\inst39|LessThan2~3_cout\) # (!\BBuffer|Q\(2)))) # (!\ABuffer|Q\(2) & (!\BBuffer|Q\(2) & !\inst39|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(2),
	datab => \BBuffer|Q\(2),
	datad => VCC,
	cin => \inst39|LessThan2~3_cout\,
	cout => \inst39|LessThan2~5_cout\);

-- Location: LCCOMB_X60_Y49_N6
\inst39|LessThan2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan2~7_cout\ = CARRY((\BBuffer|Q\(3) & ((!\inst39|LessThan2~5_cout\) # (!\ABuffer|Q\(3)))) # (!\BBuffer|Q\(3) & (!\ABuffer|Q\(3) & !\inst39|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(3),
	datab => \ABuffer|Q\(3),
	datad => VCC,
	cin => \inst39|LessThan2~5_cout\,
	cout => \inst39|LessThan2~7_cout\);

-- Location: LCCOMB_X60_Y49_N8
\inst39|LessThan2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan2~9_cout\ = CARRY((\BBuffer|Q\(4) & (\ABuffer|Q\(4) & !\inst39|LessThan2~7_cout\)) # (!\BBuffer|Q\(4) & ((\ABuffer|Q\(4)) # (!\inst39|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(4),
	datab => \ABuffer|Q\(4),
	datad => VCC,
	cin => \inst39|LessThan2~7_cout\,
	cout => \inst39|LessThan2~9_cout\);

-- Location: LCCOMB_X60_Y49_N10
\inst39|LessThan2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan2~11_cout\ = CARRY((\BBuffer|Q\(5) & ((!\inst39|LessThan2~9_cout\) # (!\ABuffer|Q\(5)))) # (!\BBuffer|Q\(5) & (!\ABuffer|Q\(5) & !\inst39|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(5),
	datab => \ABuffer|Q\(5),
	datad => VCC,
	cin => \inst39|LessThan2~9_cout\,
	cout => \inst39|LessThan2~11_cout\);

-- Location: LCCOMB_X60_Y49_N12
\inst39|LessThan2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan2~13_cout\ = CARRY((\BBuffer|Q\(6) & (\ABuffer|Q\(6) & !\inst39|LessThan2~11_cout\)) # (!\BBuffer|Q\(6) & ((\ABuffer|Q\(6)) # (!\inst39|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(6),
	datab => \ABuffer|Q\(6),
	datad => VCC,
	cin => \inst39|LessThan2~11_cout\,
	cout => \inst39|LessThan2~13_cout\);

-- Location: LCCOMB_X60_Y49_N14
\inst39|LessThan2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan2~15_cout\ = CARRY((\BBuffer|Q\(7) & ((!\inst39|LessThan2~13_cout\) # (!\ABuffer|Q\(7)))) # (!\BBuffer|Q\(7) & (!\ABuffer|Q\(7) & !\inst39|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(7),
	datab => \ABuffer|Q\(7),
	datad => VCC,
	cin => \inst39|LessThan2~13_cout\,
	cout => \inst39|LessThan2~15_cout\);

-- Location: LCCOMB_X60_Y49_N16
\inst39|LessThan2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan2~17_cout\ = CARRY((\BBuffer|Q\(8) & (\ABuffer|Q\(8) & !\inst39|LessThan2~15_cout\)) # (!\BBuffer|Q\(8) & ((\ABuffer|Q\(8)) # (!\inst39|LessThan2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(8),
	datab => \ABuffer|Q\(8),
	datad => VCC,
	cin => \inst39|LessThan2~15_cout\,
	cout => \inst39|LessThan2~17_cout\);

-- Location: LCCOMB_X60_Y49_N18
\inst39|LessThan2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan2~19_cout\ = CARRY((\ABuffer|Q\(9) & (\BBuffer|Q\(9) & !\inst39|LessThan2~17_cout\)) # (!\ABuffer|Q\(9) & ((\BBuffer|Q\(9)) # (!\inst39|LessThan2~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(9),
	datab => \BBuffer|Q\(9),
	datad => VCC,
	cin => \inst39|LessThan2~17_cout\,
	cout => \inst39|LessThan2~19_cout\);

-- Location: LCCOMB_X60_Y49_N20
\inst39|LessThan2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan2~21_cout\ = CARRY((\ABuffer|Q\(10) & ((!\inst39|LessThan2~19_cout\) # (!\BBuffer|Q\(10)))) # (!\ABuffer|Q\(10) & (!\BBuffer|Q\(10) & !\inst39|LessThan2~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(10),
	datab => \BBuffer|Q\(10),
	datad => VCC,
	cin => \inst39|LessThan2~19_cout\,
	cout => \inst39|LessThan2~21_cout\);

-- Location: LCCOMB_X60_Y49_N22
\inst39|LessThan2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan2~23_cout\ = CARRY((\BBuffer|Q\(11) & ((!\inst39|LessThan2~21_cout\) # (!\ABuffer|Q\(11)))) # (!\BBuffer|Q\(11) & (!\ABuffer|Q\(11) & !\inst39|LessThan2~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(11),
	datab => \ABuffer|Q\(11),
	datad => VCC,
	cin => \inst39|LessThan2~21_cout\,
	cout => \inst39|LessThan2~23_cout\);

-- Location: LCCOMB_X60_Y49_N24
\inst39|LessThan2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan2~25_cout\ = CARRY((\BBuffer|Q\(12) & (\ABuffer|Q\(12) & !\inst39|LessThan2~23_cout\)) # (!\BBuffer|Q\(12) & ((\ABuffer|Q\(12)) # (!\inst39|LessThan2~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(12),
	datab => \ABuffer|Q\(12),
	datad => VCC,
	cin => \inst39|LessThan2~23_cout\,
	cout => \inst39|LessThan2~25_cout\);

-- Location: LCCOMB_X60_Y49_N26
\inst39|LessThan2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan2~27_cout\ = CARRY((\BBuffer|Q\(13) & ((!\inst39|LessThan2~25_cout\) # (!\ABuffer|Q\(13)))) # (!\BBuffer|Q\(13) & (!\ABuffer|Q\(13) & !\inst39|LessThan2~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(13),
	datab => \ABuffer|Q\(13),
	datad => VCC,
	cin => \inst39|LessThan2~25_cout\,
	cout => \inst39|LessThan2~27_cout\);

-- Location: LCCOMB_X60_Y49_N28
\inst39|LessThan2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan2~29_cout\ = CARRY((\BBuffer|Q\(14) & (\ABuffer|Q\(14) & !\inst39|LessThan2~27_cout\)) # (!\BBuffer|Q\(14) & ((\ABuffer|Q\(14)) # (!\inst39|LessThan2~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(14),
	datab => \ABuffer|Q\(14),
	datad => VCC,
	cin => \inst39|LessThan2~27_cout\,
	cout => \inst39|LessThan2~29_cout\);

-- Location: LCCOMB_X60_Y49_N30
\inst39|LessThan2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|LessThan2~30_combout\ = (\BBuffer|Q\(15) & ((\inst39|LessThan2~29_cout\) # (!\ABuffer|Q\(15)))) # (!\BBuffer|Q\(15) & (\inst39|LessThan2~29_cout\ & !\ABuffer|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BBuffer|Q\(15),
	datad => \ABuffer|Q\(15),
	cin => \inst39|LessThan2~29_cout\,
	combout => \inst39|LessThan2~30_combout\);

-- Location: LCCOMB_X59_Y49_N6
\inst39|O[11]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|O[11]~0_combout\ = (\ExecuteOperands|Q\(0) & (\inst39|LessThan2~30_combout\)) # (!\ExecuteOperands|Q\(0) & ((\inst39|LessThan0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datac => \inst39|LessThan2~30_combout\,
	datad => \inst39|LessThan0~30_combout\,
	combout => \inst39|O[11]~0_combout\);

-- Location: LCCOMB_X59_Y49_N20
\inst34|$00000|auto_generated|result_node[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[0]~5_combout\ = (!\DeviceSelRegister|Q\(1) & ((\inst39|O[11]~0_combout\ & (\ABuffer|Q\(0))) # (!\inst39|O[11]~0_combout\ & ((\BBuffer|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABuffer|Q\(0),
	datab => \BBuffer|Q\(0),
	datac => \DeviceSelRegister|Q\(1),
	datad => \inst39|O[11]~0_combout\,
	combout => \inst34|$00000|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X59_Y49_N30
\inst34|$00000|auto_generated|result_node[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[0]~6_combout\ = (\inst34|$00000|auto_generated|result_node[0]~5_combout\) # ((\ExecuteOperands|Q\(0) & \OUTPUTSELECT|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datac => \OUTPUTSELECT|Q\(0),
	datad => \inst34|$00000|auto_generated|result_node[0]~5_combout\,
	combout => \inst34|$00000|auto_generated|result_node[0]~6_combout\);

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X59_Y48_N12
\inst34|$00000|auto_generated|result_node[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[0]~7_combout\ = (\inst32~combout\ & ((\inst34|$00000|auto_generated|result_node[0]~6_combout\ & ((\SW[0]~input_o\))) # (!\inst34|$00000|auto_generated|result_node[0]~6_combout\ & (\ABuffer|Q\(0))))) # 
-- (!\inst32~combout\ & (((\inst34|$00000|auto_generated|result_node[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32~combout\,
	datab => \ABuffer|Q\(0),
	datac => \inst34|$00000|auto_generated|result_node[0]~6_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst34|$00000|auto_generated|result_node[0]~7_combout\);

-- Location: LCCOMB_X59_Y48_N30
\inst34|$00000|auto_generated|result_node[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[0]~8_combout\ = (\inst34|$00000|auto_generated|result_node[1]~4_combout\ & ((\inst34|$00000|auto_generated|result_node[0]~7_combout\))) # (!\inst34|$00000|auto_generated|result_node[1]~4_combout\ & 
-- (\inst29|Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst29|Add0~3_combout\,
	datac => \inst34|$00000|auto_generated|result_node[1]~4_combout\,
	datad => \inst34|$00000|auto_generated|result_node[0]~7_combout\,
	combout => \inst34|$00000|auto_generated|result_node[0]~8_combout\);

-- Location: LCCOMB_X59_Y48_N14
\SelA|$00000|auto_generated|result_node[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[0]~0_combout\ = (\inst21|sela~1_combout\ & (\ExecuteOutput|Q\(0) & !\inst21|selexa~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|sela~1_combout\,
	datac => \ExecuteOutput|Q\(0),
	datad => \inst21|selexa~combout\,
	combout => \SelA|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: FF_X59_Y48_N25
\registerFile|registe:1:regi|ffmap:0:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(0),
	sload => VCC,
	ena => \registerFile|write_dmux|EN_out[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registerFile|registe:1:regi|ffmap:0:ffi|Q~q\);

-- Location: LCCOMB_X59_Y48_N24
\SelA|$00000|auto_generated|result_node[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[0]~1_combout\ = (!\inst21|sela~1_combout\ & ((\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & ((\registerFile|registe:1:regi|ffmap:0:ffi|Q~q\))) # (!\SelA9|$00000|auto_generated|result_node[0]~0_combout\ & 
-- (\registerFile|registe:0:regi|ffmap:0:ffi|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerFile|registe:0:regi|ffmap:0:ffi|Q~q\,
	datab => \inst21|sela~1_combout\,
	datac => \registerFile|registe:1:regi|ffmap:0:ffi|Q~q\,
	datad => \SelA9|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \SelA|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X59_Y48_N2
\SelA|$00000|auto_generated|result_node[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelA|$00000|auto_generated|result_node[0]~3_combout\ = (\SelA|$00000|auto_generated|result_node[0]~0_combout\) # ((\SelA|$00000|auto_generated|result_node[0]~1_combout\) # ((\inst34|$00000|auto_generated|result_node[0]~8_combout\ & 
-- \SelA|$00000|auto_generated|result_node[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|$00000|auto_generated|result_node[0]~8_combout\,
	datab => \SelA|$00000|auto_generated|result_node[0]~2_combout\,
	datac => \SelA|$00000|auto_generated|result_node[0]~0_combout\,
	datad => \SelA|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \SelA|$00000|auto_generated|result_node[0]~3_combout\);

-- Location: FF_X59_Y48_N3
\ABuffer|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \SelA|$00000|auto_generated|result_node[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ABuffer|Q\(0));

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X61_Y49_N22
\inst39|O[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|O[1]~1_combout\ = (\BBuffer|Q\(1) & ((\ExecuteOperands|Q\(0) & (!\inst39|LessThan2~30_combout\)) # (!\ExecuteOperands|Q\(0) & ((!\inst39|LessThan0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BBuffer|Q\(1),
	datab => \inst39|LessThan2~30_combout\,
	datac => \inst39|LessThan0~30_combout\,
	datad => \ExecuteOperands|Q\(0),
	combout => \inst39|O[1]~1_combout\);

-- Location: LCCOMB_X61_Y49_N12
\inst39|O[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|O[1]~2_combout\ = (\ABuffer|Q\(1) & ((\ExecuteOperands|Q\(0) & (\inst39|LessThan2~30_combout\)) # (!\ExecuteOperands|Q\(0) & ((\inst39|LessThan0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExecuteOperands|Q\(0),
	datab => \inst39|LessThan2~30_combout\,
	datac => \inst39|LessThan0~30_combout\,
	datad => \ABuffer|Q\(1),
	combout => \inst39|O[1]~2_combout\);

-- Location: LCCOMB_X61_Y49_N2
\inst34|$00000|auto_generated|result_node[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[1]~9_combout\ = (\inst2|SWO~0_combout\) # ((!\DeviceSelRegister|Q\(1) & ((\inst39|O[1]~1_combout\) # (\inst39|O[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SWO~0_combout\,
	datab => \DeviceSelRegister|Q\(1),
	datac => \inst39|O[1]~1_combout\,
	datad => \inst39|O[1]~2_combout\,
	combout => \inst34|$00000|auto_generated|result_node[1]~9_combout\);

-- Location: LCCOMB_X61_Y49_N24
\inst34|$00000|auto_generated|result_node[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[1]~10_combout\ = (\inst32~combout\ & ((\inst34|$00000|auto_generated|result_node[1]~9_combout\ & (\SW[1]~input_o\)) # (!\inst34|$00000|auto_generated|result_node[1]~9_combout\ & ((\ABuffer|Q\(1)))))) # 
-- (!\inst32~combout\ & (((\inst34|$00000|auto_generated|result_node[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \ABuffer|Q\(1),
	datac => \inst32~combout\,
	datad => \inst34|$00000|auto_generated|result_node[1]~9_combout\,
	combout => \inst34|$00000|auto_generated|result_node[1]~10_combout\);

-- Location: LCCOMB_X61_Y49_N6
\inst34|$00000|auto_generated|result_node[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|$00000|auto_generated|result_node[1]~11_combout\ = (\inst34|$00000|auto_generated|result_node[1]~4_combout\ & ((\inst34|$00000|auto_generated|result_node[1]~10_combout\))) # (!\inst34|$00000|auto_generated|result_node[1]~4_combout\ & 
-- (\inst29|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|$00000|auto_generated|result_node[1]~4_combout\,
	datac => \inst29|Add0~6_combout\,
	datad => \inst34|$00000|auto_generated|result_node[1]~10_combout\,
	combout => \inst34|$00000|auto_generated|result_node[1]~11_combout\);

-- Location: LCCOMB_X62_Y49_N14
\inst2|SSEN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|SSEN~0_combout\ = (\OUTPUTSELECT|Q\(0) & !\ExecuteOperands|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OUTPUTSELECT|Q\(0),
	datad => \ExecuteOperands|Q\(0),
	combout => \inst2|SSEN~0_combout\);

-- Location: FF_X62_Y49_N15
\DEVICESELECT|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst2|SSEN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEVICESELECT|Q\(2));

-- Location: FF_X64_Y49_N29
\SevenSegmentRegister|ffmap:1:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(1),
	sload => VCC,
	ena => \DEVICESELECT|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SevenSegmentRegister|ffmap:1:ffi|Q~q\);

-- Location: LCCOMB_X64_Y49_N28
\inst40|$00000|auto_generated|result_node[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|$00000|auto_generated|result_node[1]~1_combout\ = (\PB[1]~input_o\ & ((\SevenSegmentRegister|ffmap:1:ffi|Q~q\))) # (!\PB[1]~input_o\ & (\inst34|$00000|auto_generated|result_node[1]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|$00000|auto_generated|result_node[1]~11_combout\,
	datac => \SevenSegmentRegister|ffmap:1:ffi|Q~q\,
	datad => \PB[1]~input_o\,
	combout => \inst40|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: FF_X66_Y49_N27
\SevenSegmentRegister|ffmap:3:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(3),
	sload => VCC,
	ena => \DEVICESELECT|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SevenSegmentRegister|ffmap:3:ffi|Q~q\);

-- Location: LCCOMB_X66_Y49_N26
\inst40|$00000|auto_generated|result_node[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|$00000|auto_generated|result_node[3]~3_combout\ = (\PB[1]~input_o\ & ((\SevenSegmentRegister|ffmap:3:ffi|Q~q\))) # (!\PB[1]~input_o\ & (\inst34|$00000|auto_generated|result_node[3]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|$00000|auto_generated|result_node[3]~17_combout\,
	datac => \SevenSegmentRegister|ffmap:3:ffi|Q~q\,
	datad => \PB[1]~input_o\,
	combout => \inst40|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: FF_X64_Y49_N15
\SevenSegmentRegister|ffmap:2:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(2),
	sload => VCC,
	ena => \DEVICESELECT|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SevenSegmentRegister|ffmap:2:ffi|Q~q\);

-- Location: LCCOMB_X64_Y49_N14
\inst40|$00000|auto_generated|result_node[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|$00000|auto_generated|result_node[2]~2_combout\ = (\PB[1]~input_o\ & ((\SevenSegmentRegister|ffmap:2:ffi|Q~q\))) # (!\PB[1]~input_o\ & (\inst34|$00000|auto_generated|result_node[2]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|$00000|auto_generated|result_node[2]~14_combout\,
	datac => \SevenSegmentRegister|ffmap:2:ffi|Q~q\,
	datad => \PB[1]~input_o\,
	combout => \inst40|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: FF_X66_Y49_N21
\SevenSegmentRegister|ffmap:0:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(0),
	sload => VCC,
	ena => \DEVICESELECT|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SevenSegmentRegister|ffmap:0:ffi|Q~q\);

-- Location: LCCOMB_X66_Y49_N20
\inst40|$00000|auto_generated|result_node[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|$00000|auto_generated|result_node[0]~0_combout\ = (\PB[1]~input_o\ & ((\SevenSegmentRegister|ffmap:0:ffi|Q~q\))) # (!\PB[1]~input_o\ & (\inst34|$00000|auto_generated|result_node[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|$00000|auto_generated|result_node[0]~8_combout\,
	datac => \SevenSegmentRegister|ffmap:0:ffi|Q~q\,
	datad => \PB[1]~input_o\,
	combout => \inst40|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X66_Y53_N20
\inst1|inst6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux0~0_combout\ = (\inst40|$00000|auto_generated|result_node[0]~0_combout\ & ((\inst40|$00000|auto_generated|result_node[3]~3_combout\) # (\inst40|$00000|auto_generated|result_node[1]~1_combout\ $ 
-- (\inst40|$00000|auto_generated|result_node[2]~2_combout\)))) # (!\inst40|$00000|auto_generated|result_node[0]~0_combout\ & ((\inst40|$00000|auto_generated|result_node[1]~1_combout\) # (\inst40|$00000|auto_generated|result_node[3]~3_combout\ $ 
-- (\inst40|$00000|auto_generated|result_node[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst40|$00000|auto_generated|result_node[3]~3_combout\,
	datac => \inst40|$00000|auto_generated|result_node[2]~2_combout\,
	datad => \inst40|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst1|inst6|Mux0~0_combout\);

-- Location: LCCOMB_X66_Y53_N6
\inst1|inst6|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux1~0_combout\ = (\inst40|$00000|auto_generated|result_node[1]~1_combout\ & (!\inst40|$00000|auto_generated|result_node[3]~3_combout\ & ((\inst40|$00000|auto_generated|result_node[0]~0_combout\) # 
-- (!\inst40|$00000|auto_generated|result_node[2]~2_combout\)))) # (!\inst40|$00000|auto_generated|result_node[1]~1_combout\ & (\inst40|$00000|auto_generated|result_node[0]~0_combout\ & (\inst40|$00000|auto_generated|result_node[3]~3_combout\ $ 
-- (!\inst40|$00000|auto_generated|result_node[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst40|$00000|auto_generated|result_node[3]~3_combout\,
	datac => \inst40|$00000|auto_generated|result_node[2]~2_combout\,
	datad => \inst40|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst1|inst6|Mux1~0_combout\);

-- Location: LCCOMB_X66_Y53_N12
\inst1|inst6|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux2~0_combout\ = (\inst40|$00000|auto_generated|result_node[1]~1_combout\ & (!\inst40|$00000|auto_generated|result_node[3]~3_combout\ & ((\inst40|$00000|auto_generated|result_node[0]~0_combout\)))) # 
-- (!\inst40|$00000|auto_generated|result_node[1]~1_combout\ & ((\inst40|$00000|auto_generated|result_node[2]~2_combout\ & (!\inst40|$00000|auto_generated|result_node[3]~3_combout\)) # (!\inst40|$00000|auto_generated|result_node[2]~2_combout\ & 
-- ((\inst40|$00000|auto_generated|result_node[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst40|$00000|auto_generated|result_node[3]~3_combout\,
	datac => \inst40|$00000|auto_generated|result_node[2]~2_combout\,
	datad => \inst40|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst1|inst6|Mux2~0_combout\);

-- Location: LCCOMB_X66_Y53_N14
\inst1|inst6|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux3~0_combout\ = (\inst40|$00000|auto_generated|result_node[1]~1_combout\ & ((\inst40|$00000|auto_generated|result_node[2]~2_combout\ & ((\inst40|$00000|auto_generated|result_node[0]~0_combout\))) # 
-- (!\inst40|$00000|auto_generated|result_node[2]~2_combout\ & (\inst40|$00000|auto_generated|result_node[3]~3_combout\ & !\inst40|$00000|auto_generated|result_node[0]~0_combout\)))) # (!\inst40|$00000|auto_generated|result_node[1]~1_combout\ & 
-- (!\inst40|$00000|auto_generated|result_node[3]~3_combout\ & (\inst40|$00000|auto_generated|result_node[2]~2_combout\ $ (\inst40|$00000|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst40|$00000|auto_generated|result_node[3]~3_combout\,
	datac => \inst40|$00000|auto_generated|result_node[2]~2_combout\,
	datad => \inst40|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst1|inst6|Mux3~0_combout\);

-- Location: LCCOMB_X66_Y53_N28
\inst1|inst6|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux4~0_combout\ = (\inst40|$00000|auto_generated|result_node[3]~3_combout\ & (\inst40|$00000|auto_generated|result_node[2]~2_combout\ & ((\inst40|$00000|auto_generated|result_node[1]~1_combout\) # 
-- (!\inst40|$00000|auto_generated|result_node[0]~0_combout\)))) # (!\inst40|$00000|auto_generated|result_node[3]~3_combout\ & (\inst40|$00000|auto_generated|result_node[1]~1_combout\ & (!\inst40|$00000|auto_generated|result_node[2]~2_combout\ & 
-- !\inst40|$00000|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst40|$00000|auto_generated|result_node[3]~3_combout\,
	datac => \inst40|$00000|auto_generated|result_node[2]~2_combout\,
	datad => \inst40|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst1|inst6|Mux4~0_combout\);

-- Location: LCCOMB_X66_Y53_N26
\inst1|inst6|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux5~0_combout\ = (\inst40|$00000|auto_generated|result_node[1]~1_combout\ & ((\inst40|$00000|auto_generated|result_node[0]~0_combout\ & (\inst40|$00000|auto_generated|result_node[3]~3_combout\)) # 
-- (!\inst40|$00000|auto_generated|result_node[0]~0_combout\ & ((\inst40|$00000|auto_generated|result_node[2]~2_combout\))))) # (!\inst40|$00000|auto_generated|result_node[1]~1_combout\ & (\inst40|$00000|auto_generated|result_node[2]~2_combout\ & 
-- (\inst40|$00000|auto_generated|result_node[3]~3_combout\ $ (\inst40|$00000|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst40|$00000|auto_generated|result_node[3]~3_combout\,
	datac => \inst40|$00000|auto_generated|result_node[2]~2_combout\,
	datad => \inst40|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst1|inst6|Mux5~0_combout\);

-- Location: LCCOMB_X66_Y53_N24
\inst1|inst6|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst6|Mux6~0_combout\ = (\inst40|$00000|auto_generated|result_node[3]~3_combout\ & (\inst40|$00000|auto_generated|result_node[0]~0_combout\ & (\inst40|$00000|auto_generated|result_node[1]~1_combout\ $ 
-- (\inst40|$00000|auto_generated|result_node[2]~2_combout\)))) # (!\inst40|$00000|auto_generated|result_node[3]~3_combout\ & (!\inst40|$00000|auto_generated|result_node[1]~1_combout\ & (\inst40|$00000|auto_generated|result_node[2]~2_combout\ $ 
-- (\inst40|$00000|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[1]~1_combout\,
	datab => \inst40|$00000|auto_generated|result_node[3]~3_combout\,
	datac => \inst40|$00000|auto_generated|result_node[2]~2_combout\,
	datad => \inst40|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst1|inst6|Mux6~0_combout\);

-- Location: LCCOMB_X62_Y45_N18
\inst25|inst1|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst1|process_0~2_combout\ = (\inst45|Dout\(15) & (!\inst45|Dout\(14) & (\inst45|Dout\(13) & !\inst25|inst1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|Dout\(15),
	datab => \inst45|Dout\(14),
	datac => \inst45|Dout\(13),
	datad => \inst25|inst1|Equal1~0_combout\,
	combout => \inst25|inst1|process_0~2_combout\);

-- Location: LCCOMB_X62_Y45_N14
\inst25|inst1|sp[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst1|sp[0]~1_combout\ = \inst25|inst1|sp\(0) $ (((\inst45|Dout\(13) & (\inst25|inst12~0_combout\ & !\inst25|inst1|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|Dout\(13),
	datab => \inst25|inst12~0_combout\,
	datac => \inst25|inst1|sp\(0),
	datad => \inst25|inst1|Equal1~0_combout\,
	combout => \inst25|inst1|sp[0]~1_combout\);

-- Location: FF_X62_Y45_N15
\inst25|inst1|sp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst25|inst1|sp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst1|sp\(0));

-- Location: LCCOMB_X62_Y45_N28
\inst25|inst1|sp[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst1|sp[1]~2_combout\ = \inst25|inst1|sp\(1) $ (((\inst25|inst1|process_0~2_combout\ & !\inst25|inst1|sp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst1|process_0~2_combout\,
	datab => \inst25|inst1|sp\(0),
	datac => \inst25|inst1|sp\(1),
	combout => \inst25|inst1|sp[1]~2_combout\);

-- Location: FF_X62_Y45_N29
\inst25|inst1|sp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst25|inst1|sp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst1|sp\(1));

-- Location: LCCOMB_X62_Y45_N24
\inst25|inst1|sp[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst1|sp[2]~0_combout\ = \inst25|inst1|sp\(2) $ (((\inst25|inst1|process_0~2_combout\ & (!\inst25|inst1|sp\(0) & !\inst25|inst1|sp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst1|process_0~2_combout\,
	datab => \inst25|inst1|sp\(0),
	datac => \inst25|inst1|sp\(2),
	datad => \inst25|inst1|sp\(1),
	combout => \inst25|inst1|sp[2]~0_combout\);

-- Location: FF_X62_Y45_N25
\inst25|inst1|sp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	d => \inst25|inst1|sp[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst1|sp\(2));

-- Location: LCCOMB_X62_Y45_N2
\inst25|inst1|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst1|Equal1~0_combout\ = (!\inst25|inst1|sp\(1) & (!\inst25|inst1|sp\(0) & !\inst25|inst1|sp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst1|sp\(1),
	datac => \inst25|inst1|sp\(0),
	datad => \inst25|inst1|sp\(2),
	combout => \inst25|inst1|Equal1~0_combout\);

-- Location: FF_X64_Y49_N3
\SevenSegmentRegister|ffmap:6:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(6),
	sload => VCC,
	ena => \DEVICESELECT|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SevenSegmentRegister|ffmap:6:ffi|Q~q\);

-- Location: LCCOMB_X64_Y49_N2
\inst40|$00000|auto_generated|result_node[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|$00000|auto_generated|result_node[6]~6_combout\ = (\PB[1]~input_o\ & ((\SevenSegmentRegister|ffmap:6:ffi|Q~q\))) # (!\PB[1]~input_o\ & (\inst34|$00000|auto_generated|result_node[6]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|$00000|auto_generated|result_node[6]~26_combout\,
	datac => \SevenSegmentRegister|ffmap:6:ffi|Q~q\,
	datad => \PB[1]~input_o\,
	combout => \inst40|$00000|auto_generated|result_node[6]~6_combout\);

-- Location: FF_X64_Y49_N25
\SevenSegmentRegister|ffmap:7:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(7),
	sload => VCC,
	ena => \DEVICESELECT|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SevenSegmentRegister|ffmap:7:ffi|Q~q\);

-- Location: LCCOMB_X64_Y49_N24
\inst40|$00000|auto_generated|result_node[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|$00000|auto_generated|result_node[7]~7_combout\ = (\PB[1]~input_o\ & ((\SevenSegmentRegister|ffmap:7:ffi|Q~q\))) # (!\PB[1]~input_o\ & (\inst34|$00000|auto_generated|result_node[7]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|$00000|auto_generated|result_node[7]~54_combout\,
	datac => \SevenSegmentRegister|ffmap:7:ffi|Q~q\,
	datad => \PB[1]~input_o\,
	combout => \inst40|$00000|auto_generated|result_node[7]~7_combout\);

-- Location: FF_X64_Y49_N5
\SevenSegmentRegister|ffmap:4:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(4),
	sload => VCC,
	ena => \DEVICESELECT|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SevenSegmentRegister|ffmap:4:ffi|Q~q\);

-- Location: LCCOMB_X64_Y49_N4
\inst40|$00000|auto_generated|result_node[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|$00000|auto_generated|result_node[4]~4_combout\ = (\PB[1]~input_o\ & ((\SevenSegmentRegister|ffmap:4:ffi|Q~q\))) # (!\PB[1]~input_o\ & (\inst34|$00000|auto_generated|result_node[4]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|$00000|auto_generated|result_node[4]~20_combout\,
	datac => \SevenSegmentRegister|ffmap:4:ffi|Q~q\,
	datad => \PB[1]~input_o\,
	combout => \inst40|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: FF_X66_Y49_N29
\SevenSegmentRegister|ffmap:5:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(5),
	sload => VCC,
	ena => \DEVICESELECT|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SevenSegmentRegister|ffmap:5:ffi|Q~q\);

-- Location: LCCOMB_X66_Y49_N28
\inst40|$00000|auto_generated|result_node[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|$00000|auto_generated|result_node[5]~5_combout\ = (\PB[1]~input_o\ & ((\SevenSegmentRegister|ffmap:5:ffi|Q~q\))) # (!\PB[1]~input_o\ & (\inst34|$00000|auto_generated|result_node[5]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|$00000|auto_generated|result_node[5]~23_combout\,
	datac => \SevenSegmentRegister|ffmap:5:ffi|Q~q\,
	datad => \PB[1]~input_o\,
	combout => \inst40|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X65_Y49_N0
\inst1|inst5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux0~0_combout\ = (\inst40|$00000|auto_generated|result_node[4]~4_combout\ & ((\inst40|$00000|auto_generated|result_node[7]~7_combout\) # (\inst40|$00000|auto_generated|result_node[6]~6_combout\ $ 
-- (\inst40|$00000|auto_generated|result_node[5]~5_combout\)))) # (!\inst40|$00000|auto_generated|result_node[4]~4_combout\ & ((\inst40|$00000|auto_generated|result_node[5]~5_combout\) # (\inst40|$00000|auto_generated|result_node[6]~6_combout\ $ 
-- (\inst40|$00000|auto_generated|result_node[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[6]~6_combout\,
	datab => \inst40|$00000|auto_generated|result_node[7]~7_combout\,
	datac => \inst40|$00000|auto_generated|result_node[4]~4_combout\,
	datad => \inst40|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \inst1|inst5|Mux0~0_combout\);

-- Location: LCCOMB_X65_Y49_N2
\inst1|inst5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux1~0_combout\ = (\inst40|$00000|auto_generated|result_node[6]~6_combout\ & (\inst40|$00000|auto_generated|result_node[4]~4_combout\ & (\inst40|$00000|auto_generated|result_node[7]~7_combout\ $ 
-- (\inst40|$00000|auto_generated|result_node[5]~5_combout\)))) # (!\inst40|$00000|auto_generated|result_node[6]~6_combout\ & (!\inst40|$00000|auto_generated|result_node[7]~7_combout\ & ((\inst40|$00000|auto_generated|result_node[4]~4_combout\) # 
-- (\inst40|$00000|auto_generated|result_node[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[6]~6_combout\,
	datab => \inst40|$00000|auto_generated|result_node[7]~7_combout\,
	datac => \inst40|$00000|auto_generated|result_node[4]~4_combout\,
	datad => \inst40|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \inst1|inst5|Mux1~0_combout\);

-- Location: LCCOMB_X65_Y49_N8
\inst1|inst5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux2~0_combout\ = (\inst40|$00000|auto_generated|result_node[5]~5_combout\ & (((!\inst40|$00000|auto_generated|result_node[7]~7_combout\ & \inst40|$00000|auto_generated|result_node[4]~4_combout\)))) # 
-- (!\inst40|$00000|auto_generated|result_node[5]~5_combout\ & ((\inst40|$00000|auto_generated|result_node[6]~6_combout\ & (!\inst40|$00000|auto_generated|result_node[7]~7_combout\)) # (!\inst40|$00000|auto_generated|result_node[6]~6_combout\ & 
-- ((\inst40|$00000|auto_generated|result_node[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[6]~6_combout\,
	datab => \inst40|$00000|auto_generated|result_node[7]~7_combout\,
	datac => \inst40|$00000|auto_generated|result_node[4]~4_combout\,
	datad => \inst40|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \inst1|inst5|Mux2~0_combout\);

-- Location: LCCOMB_X65_Y49_N22
\inst1|inst5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux3~0_combout\ = (\inst40|$00000|auto_generated|result_node[5]~5_combout\ & ((\inst40|$00000|auto_generated|result_node[6]~6_combout\ & ((\inst40|$00000|auto_generated|result_node[4]~4_combout\))) # 
-- (!\inst40|$00000|auto_generated|result_node[6]~6_combout\ & (\inst40|$00000|auto_generated|result_node[7]~7_combout\ & !\inst40|$00000|auto_generated|result_node[4]~4_combout\)))) # (!\inst40|$00000|auto_generated|result_node[5]~5_combout\ & 
-- (!\inst40|$00000|auto_generated|result_node[7]~7_combout\ & (\inst40|$00000|auto_generated|result_node[6]~6_combout\ $ (\inst40|$00000|auto_generated|result_node[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[6]~6_combout\,
	datab => \inst40|$00000|auto_generated|result_node[7]~7_combout\,
	datac => \inst40|$00000|auto_generated|result_node[4]~4_combout\,
	datad => \inst40|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \inst1|inst5|Mux3~0_combout\);

-- Location: LCCOMB_X65_Y49_N12
\inst1|inst5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux4~0_combout\ = (\inst40|$00000|auto_generated|result_node[6]~6_combout\ & (\inst40|$00000|auto_generated|result_node[7]~7_combout\ & ((\inst40|$00000|auto_generated|result_node[5]~5_combout\) # 
-- (!\inst40|$00000|auto_generated|result_node[4]~4_combout\)))) # (!\inst40|$00000|auto_generated|result_node[6]~6_combout\ & (!\inst40|$00000|auto_generated|result_node[7]~7_combout\ & (!\inst40|$00000|auto_generated|result_node[4]~4_combout\ & 
-- \inst40|$00000|auto_generated|result_node[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[6]~6_combout\,
	datab => \inst40|$00000|auto_generated|result_node[7]~7_combout\,
	datac => \inst40|$00000|auto_generated|result_node[4]~4_combout\,
	datad => \inst40|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \inst1|inst5|Mux4~0_combout\);

-- Location: LCCOMB_X65_Y49_N10
\inst1|inst5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux5~0_combout\ = (\inst40|$00000|auto_generated|result_node[7]~7_combout\ & ((\inst40|$00000|auto_generated|result_node[4]~4_combout\ & ((\inst40|$00000|auto_generated|result_node[5]~5_combout\))) # 
-- (!\inst40|$00000|auto_generated|result_node[4]~4_combout\ & (\inst40|$00000|auto_generated|result_node[6]~6_combout\)))) # (!\inst40|$00000|auto_generated|result_node[7]~7_combout\ & (\inst40|$00000|auto_generated|result_node[6]~6_combout\ & 
-- (\inst40|$00000|auto_generated|result_node[4]~4_combout\ $ (\inst40|$00000|auto_generated|result_node[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[6]~6_combout\,
	datab => \inst40|$00000|auto_generated|result_node[7]~7_combout\,
	datac => \inst40|$00000|auto_generated|result_node[4]~4_combout\,
	datad => \inst40|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \inst1|inst5|Mux5~0_combout\);

-- Location: LCCOMB_X65_Y49_N20
\inst1|inst5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst5|Mux6~0_combout\ = (\inst40|$00000|auto_generated|result_node[6]~6_combout\ & (!\inst40|$00000|auto_generated|result_node[5]~5_combout\ & (\inst40|$00000|auto_generated|result_node[7]~7_combout\ $ 
-- (!\inst40|$00000|auto_generated|result_node[4]~4_combout\)))) # (!\inst40|$00000|auto_generated|result_node[6]~6_combout\ & (\inst40|$00000|auto_generated|result_node[4]~4_combout\ & (\inst40|$00000|auto_generated|result_node[7]~7_combout\ $ 
-- (!\inst40|$00000|auto_generated|result_node[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[6]~6_combout\,
	datab => \inst40|$00000|auto_generated|result_node[7]~7_combout\,
	datac => \inst40|$00000|auto_generated|result_node[4]~4_combout\,
	datad => \inst40|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \inst1|inst5|Mux6~0_combout\);

-- Location: FF_X64_Y49_N27
\SevenSegmentRegister|ffmap:10:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(10),
	sload => VCC,
	ena => \DEVICESELECT|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SevenSegmentRegister|ffmap:10:ffi|Q~q\);

-- Location: LCCOMB_X64_Y49_N26
\inst40|$00000|auto_generated|result_node[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|$00000|auto_generated|result_node[10]~10_combout\ = (\PB[1]~input_o\ & ((\SevenSegmentRegister|ffmap:10:ffi|Q~q\))) # (!\PB[1]~input_o\ & (\inst34|$00000|auto_generated|result_node[10]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|$00000|auto_generated|result_node[10]~37_combout\,
	datac => \SevenSegmentRegister|ffmap:10:ffi|Q~q\,
	datad => \PB[1]~input_o\,
	combout => \inst40|$00000|auto_generated|result_node[10]~10_combout\);

-- Location: FF_X64_Y49_N19
\SevenSegmentRegister|ffmap:8:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(8),
	sload => VCC,
	ena => \DEVICESELECT|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SevenSegmentRegister|ffmap:8:ffi|Q~q\);

-- Location: LCCOMB_X64_Y49_N18
\inst40|$00000|auto_generated|result_node[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|$00000|auto_generated|result_node[8]~8_combout\ = (\PB[1]~input_o\ & ((\SevenSegmentRegister|ffmap:8:ffi|Q~q\))) # (!\PB[1]~input_o\ & (\inst34|$00000|auto_generated|result_node[8]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|$00000|auto_generated|result_node[8]~55_combout\,
	datac => \SevenSegmentRegister|ffmap:8:ffi|Q~q\,
	datad => \PB[1]~input_o\,
	combout => \inst40|$00000|auto_generated|result_node[8]~8_combout\);

-- Location: FF_X64_Y49_N9
\SevenSegmentRegister|ffmap:9:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(9),
	sload => VCC,
	ena => \DEVICESELECT|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SevenSegmentRegister|ffmap:9:ffi|Q~q\);

-- Location: LCCOMB_X64_Y49_N8
\inst40|$00000|auto_generated|result_node[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|$00000|auto_generated|result_node[9]~9_combout\ = (\PB[1]~input_o\ & ((\SevenSegmentRegister|ffmap:9:ffi|Q~q\))) # (!\PB[1]~input_o\ & (\inst34|$00000|auto_generated|result_node[9]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|$00000|auto_generated|result_node[9]~34_combout\,
	datac => \SevenSegmentRegister|ffmap:9:ffi|Q~q\,
	datad => \PB[1]~input_o\,
	combout => \inst40|$00000|auto_generated|result_node[9]~9_combout\);

-- Location: FF_X63_Y50_N29
\SevenSegmentRegister|ffmap:11:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(11),
	sload => VCC,
	ena => \DEVICESELECT|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SevenSegmentRegister|ffmap:11:ffi|Q~q\);

-- Location: LCCOMB_X63_Y50_N28
\inst40|$00000|auto_generated|result_node[11]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|$00000|auto_generated|result_node[11]~11_combout\ = (\PB[1]~input_o\ & ((\SevenSegmentRegister|ffmap:11:ffi|Q~q\))) # (!\PB[1]~input_o\ & (\inst34|$00000|auto_generated|result_node[11]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|$00000|auto_generated|result_node[11]~40_combout\,
	datac => \SevenSegmentRegister|ffmap:11:ffi|Q~q\,
	datad => \PB[1]~input_o\,
	combout => \inst40|$00000|auto_generated|result_node[11]~11_combout\);

-- Location: LCCOMB_X64_Y49_N16
\inst1|inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux0~0_combout\ = (\inst40|$00000|auto_generated|result_node[8]~8_combout\ & ((\inst40|$00000|auto_generated|result_node[11]~11_combout\) # (\inst40|$00000|auto_generated|result_node[10]~10_combout\ $ 
-- (\inst40|$00000|auto_generated|result_node[9]~9_combout\)))) # (!\inst40|$00000|auto_generated|result_node[8]~8_combout\ & ((\inst40|$00000|auto_generated|result_node[9]~9_combout\) # (\inst40|$00000|auto_generated|result_node[10]~10_combout\ $ 
-- (\inst40|$00000|auto_generated|result_node[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[10]~10_combout\,
	datab => \inst40|$00000|auto_generated|result_node[8]~8_combout\,
	datac => \inst40|$00000|auto_generated|result_node[9]~9_combout\,
	datad => \inst40|$00000|auto_generated|result_node[11]~11_combout\,
	combout => \inst1|inst|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y49_N6
\inst1|inst|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux1~0_combout\ = (\inst40|$00000|auto_generated|result_node[10]~10_combout\ & (\inst40|$00000|auto_generated|result_node[8]~8_combout\ & (\inst40|$00000|auto_generated|result_node[9]~9_combout\ $ 
-- (\inst40|$00000|auto_generated|result_node[11]~11_combout\)))) # (!\inst40|$00000|auto_generated|result_node[10]~10_combout\ & (!\inst40|$00000|auto_generated|result_node[11]~11_combout\ & ((\inst40|$00000|auto_generated|result_node[8]~8_combout\) # 
-- (\inst40|$00000|auto_generated|result_node[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[10]~10_combout\,
	datab => \inst40|$00000|auto_generated|result_node[8]~8_combout\,
	datac => \inst40|$00000|auto_generated|result_node[9]~9_combout\,
	datad => \inst40|$00000|auto_generated|result_node[11]~11_combout\,
	combout => \inst1|inst|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y49_N0
\inst1|inst|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux2~0_combout\ = (\inst40|$00000|auto_generated|result_node[9]~9_combout\ & (((\inst40|$00000|auto_generated|result_node[8]~8_combout\ & !\inst40|$00000|auto_generated|result_node[11]~11_combout\)))) # 
-- (!\inst40|$00000|auto_generated|result_node[9]~9_combout\ & ((\inst40|$00000|auto_generated|result_node[10]~10_combout\ & ((!\inst40|$00000|auto_generated|result_node[11]~11_combout\))) # (!\inst40|$00000|auto_generated|result_node[10]~10_combout\ & 
-- (\inst40|$00000|auto_generated|result_node[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[10]~10_combout\,
	datab => \inst40|$00000|auto_generated|result_node[8]~8_combout\,
	datac => \inst40|$00000|auto_generated|result_node[9]~9_combout\,
	datad => \inst40|$00000|auto_generated|result_node[11]~11_combout\,
	combout => \inst1|inst|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y49_N10
\inst1|inst|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux3~0_combout\ = (\inst40|$00000|auto_generated|result_node[9]~9_combout\ & ((\inst40|$00000|auto_generated|result_node[10]~10_combout\ & (\inst40|$00000|auto_generated|result_node[8]~8_combout\)) # 
-- (!\inst40|$00000|auto_generated|result_node[10]~10_combout\ & (!\inst40|$00000|auto_generated|result_node[8]~8_combout\ & \inst40|$00000|auto_generated|result_node[11]~11_combout\)))) # (!\inst40|$00000|auto_generated|result_node[9]~9_combout\ & 
-- (!\inst40|$00000|auto_generated|result_node[11]~11_combout\ & (\inst40|$00000|auto_generated|result_node[10]~10_combout\ $ (\inst40|$00000|auto_generated|result_node[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[10]~10_combout\,
	datab => \inst40|$00000|auto_generated|result_node[8]~8_combout\,
	datac => \inst40|$00000|auto_generated|result_node[9]~9_combout\,
	datad => \inst40|$00000|auto_generated|result_node[11]~11_combout\,
	combout => \inst1|inst|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y49_N12
\inst1|inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux4~0_combout\ = (\inst40|$00000|auto_generated|result_node[10]~10_combout\ & (\inst40|$00000|auto_generated|result_node[11]~11_combout\ & ((\inst40|$00000|auto_generated|result_node[9]~9_combout\) # 
-- (!\inst40|$00000|auto_generated|result_node[8]~8_combout\)))) # (!\inst40|$00000|auto_generated|result_node[10]~10_combout\ & (!\inst40|$00000|auto_generated|result_node[8]~8_combout\ & (\inst40|$00000|auto_generated|result_node[9]~9_combout\ & 
-- !\inst40|$00000|auto_generated|result_node[11]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[10]~10_combout\,
	datab => \inst40|$00000|auto_generated|result_node[8]~8_combout\,
	datac => \inst40|$00000|auto_generated|result_node[9]~9_combout\,
	datad => \inst40|$00000|auto_generated|result_node[11]~11_combout\,
	combout => \inst1|inst|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y49_N30
\inst1|inst|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux5~0_combout\ = (\inst40|$00000|auto_generated|result_node[9]~9_combout\ & ((\inst40|$00000|auto_generated|result_node[8]~8_combout\ & ((\inst40|$00000|auto_generated|result_node[11]~11_combout\))) # 
-- (!\inst40|$00000|auto_generated|result_node[8]~8_combout\ & (\inst40|$00000|auto_generated|result_node[10]~10_combout\)))) # (!\inst40|$00000|auto_generated|result_node[9]~9_combout\ & (\inst40|$00000|auto_generated|result_node[10]~10_combout\ & 
-- (\inst40|$00000|auto_generated|result_node[8]~8_combout\ $ (\inst40|$00000|auto_generated|result_node[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[10]~10_combout\,
	datab => \inst40|$00000|auto_generated|result_node[8]~8_combout\,
	datac => \inst40|$00000|auto_generated|result_node[9]~9_combout\,
	datad => \inst40|$00000|auto_generated|result_node[11]~11_combout\,
	combout => \inst1|inst|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y49_N20
\inst1|inst|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux6~0_combout\ = (\inst40|$00000|auto_generated|result_node[10]~10_combout\ & (!\inst40|$00000|auto_generated|result_node[9]~9_combout\ & (\inst40|$00000|auto_generated|result_node[8]~8_combout\ $ 
-- (!\inst40|$00000|auto_generated|result_node[11]~11_combout\)))) # (!\inst40|$00000|auto_generated|result_node[10]~10_combout\ & (\inst40|$00000|auto_generated|result_node[8]~8_combout\ & (\inst40|$00000|auto_generated|result_node[9]~9_combout\ $ 
-- (!\inst40|$00000|auto_generated|result_node[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[10]~10_combout\,
	datab => \inst40|$00000|auto_generated|result_node[8]~8_combout\,
	datac => \inst40|$00000|auto_generated|result_node[9]~9_combout\,
	datad => \inst40|$00000|auto_generated|result_node[11]~11_combout\,
	combout => \inst1|inst|Mux6~0_combout\);

-- Location: FF_X66_Y49_N13
\SevenSegmentRegister|ffmap:13:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(13),
	sload => VCC,
	ena => \DEVICESELECT|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SevenSegmentRegister|ffmap:13:ffi|Q~q\);

-- Location: LCCOMB_X66_Y49_N12
\inst40|$00000|auto_generated|result_node[13]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|$00000|auto_generated|result_node[13]~13_combout\ = (\PB[1]~input_o\ & ((\SevenSegmentRegister|ffmap:13:ffi|Q~q\))) # (!\PB[1]~input_o\ & (\inst34|$00000|auto_generated|result_node[13]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|$00000|auto_generated|result_node[13]~47_combout\,
	datac => \SevenSegmentRegister|ffmap:13:ffi|Q~q\,
	datad => \PB[1]~input_o\,
	combout => \inst40|$00000|auto_generated|result_node[13]~13_combout\);

-- Location: FF_X65_Y50_N13
\SevenSegmentRegister|ffmap:15:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(15),
	sload => VCC,
	ena => \DEVICESELECT|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SevenSegmentRegister|ffmap:15:ffi|Q~q\);

-- Location: LCCOMB_X65_Y50_N12
\inst40|$00000|auto_generated|result_node[15]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|$00000|auto_generated|result_node[15]~15_combout\ = (\PB[1]~input_o\ & ((\SevenSegmentRegister|ffmap:15:ffi|Q~q\))) # (!\PB[1]~input_o\ & (\inst34|$00000|auto_generated|result_node[15]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|$00000|auto_generated|result_node[15]~53_combout\,
	datac => \SevenSegmentRegister|ffmap:15:ffi|Q~q\,
	datad => \PB[1]~input_o\,
	combout => \inst40|$00000|auto_generated|result_node[15]~15_combout\);

-- Location: FF_X66_Y49_N23
\SevenSegmentRegister|ffmap:14:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(14),
	sload => VCC,
	ena => \DEVICESELECT|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SevenSegmentRegister|ffmap:14:ffi|Q~q\);

-- Location: LCCOMB_X66_Y49_N22
\inst40|$00000|auto_generated|result_node[14]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|$00000|auto_generated|result_node[14]~14_combout\ = (\PB[1]~input_o\ & ((\SevenSegmentRegister|ffmap:14:ffi|Q~q\))) # (!\PB[1]~input_o\ & (\inst34|$00000|auto_generated|result_node[14]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|$00000|auto_generated|result_node[14]~50_combout\,
	datac => \SevenSegmentRegister|ffmap:14:ffi|Q~q\,
	datad => \PB[1]~input_o\,
	combout => \inst40|$00000|auto_generated|result_node[14]~14_combout\);

-- Location: FF_X66_Y49_N11
\SevenSegmentRegister|ffmap:12:ffi|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_reg~clkctrl_outclk\,
	asdata => \ExecuteOutput|Q\(12),
	sload => VCC,
	ena => \DEVICESELECT|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SevenSegmentRegister|ffmap:12:ffi|Q~q\);

-- Location: LCCOMB_X66_Y49_N10
\inst40|$00000|auto_generated|result_node[12]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|$00000|auto_generated|result_node[12]~12_combout\ = (\PB[1]~input_o\ & ((\SevenSegmentRegister|ffmap:12:ffi|Q~q\))) # (!\PB[1]~input_o\ & (\inst34|$00000|auto_generated|result_node[12]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|$00000|auto_generated|result_node[12]~44_combout\,
	datac => \SevenSegmentRegister|ffmap:12:ffi|Q~q\,
	datad => \PB[1]~input_o\,
	combout => \inst40|$00000|auto_generated|result_node[12]~12_combout\);

-- Location: LCCOMB_X66_Y49_N0
\inst1|inst4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux0~0_combout\ = (\inst40|$00000|auto_generated|result_node[12]~12_combout\ & ((\inst40|$00000|auto_generated|result_node[15]~15_combout\) # (\inst40|$00000|auto_generated|result_node[13]~13_combout\ $ 
-- (\inst40|$00000|auto_generated|result_node[14]~14_combout\)))) # (!\inst40|$00000|auto_generated|result_node[12]~12_combout\ & ((\inst40|$00000|auto_generated|result_node[13]~13_combout\) # (\inst40|$00000|auto_generated|result_node[15]~15_combout\ $ 
-- (\inst40|$00000|auto_generated|result_node[14]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[13]~13_combout\,
	datab => \inst40|$00000|auto_generated|result_node[15]~15_combout\,
	datac => \inst40|$00000|auto_generated|result_node[14]~14_combout\,
	datad => \inst40|$00000|auto_generated|result_node[12]~12_combout\,
	combout => \inst1|inst4|Mux0~0_combout\);

-- Location: LCCOMB_X66_Y49_N14
\inst1|inst4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux1~0_combout\ = (\inst40|$00000|auto_generated|result_node[13]~13_combout\ & (!\inst40|$00000|auto_generated|result_node[15]~15_combout\ & ((\inst40|$00000|auto_generated|result_node[12]~12_combout\) # 
-- (!\inst40|$00000|auto_generated|result_node[14]~14_combout\)))) # (!\inst40|$00000|auto_generated|result_node[13]~13_combout\ & (\inst40|$00000|auto_generated|result_node[12]~12_combout\ & (\inst40|$00000|auto_generated|result_node[15]~15_combout\ $ 
-- (!\inst40|$00000|auto_generated|result_node[14]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[13]~13_combout\,
	datab => \inst40|$00000|auto_generated|result_node[15]~15_combout\,
	datac => \inst40|$00000|auto_generated|result_node[14]~14_combout\,
	datad => \inst40|$00000|auto_generated|result_node[12]~12_combout\,
	combout => \inst1|inst4|Mux1~0_combout\);

-- Location: LCCOMB_X66_Y49_N24
\inst1|inst4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux2~0_combout\ = (\inst40|$00000|auto_generated|result_node[13]~13_combout\ & (!\inst40|$00000|auto_generated|result_node[15]~15_combout\ & ((\inst40|$00000|auto_generated|result_node[12]~12_combout\)))) # 
-- (!\inst40|$00000|auto_generated|result_node[13]~13_combout\ & ((\inst40|$00000|auto_generated|result_node[14]~14_combout\ & (!\inst40|$00000|auto_generated|result_node[15]~15_combout\)) # (!\inst40|$00000|auto_generated|result_node[14]~14_combout\ & 
-- ((\inst40|$00000|auto_generated|result_node[12]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[13]~13_combout\,
	datab => \inst40|$00000|auto_generated|result_node[15]~15_combout\,
	datac => \inst40|$00000|auto_generated|result_node[14]~14_combout\,
	datad => \inst40|$00000|auto_generated|result_node[12]~12_combout\,
	combout => \inst1|inst4|Mux2~0_combout\);

-- Location: LCCOMB_X66_Y49_N30
\inst1|inst4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux3~0_combout\ = (\inst40|$00000|auto_generated|result_node[13]~13_combout\ & ((\inst40|$00000|auto_generated|result_node[14]~14_combout\ & ((\inst40|$00000|auto_generated|result_node[12]~12_combout\))) # 
-- (!\inst40|$00000|auto_generated|result_node[14]~14_combout\ & (\inst40|$00000|auto_generated|result_node[15]~15_combout\ & !\inst40|$00000|auto_generated|result_node[12]~12_combout\)))) # (!\inst40|$00000|auto_generated|result_node[13]~13_combout\ & 
-- (!\inst40|$00000|auto_generated|result_node[15]~15_combout\ & (\inst40|$00000|auto_generated|result_node[14]~14_combout\ $ (\inst40|$00000|auto_generated|result_node[12]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[13]~13_combout\,
	datab => \inst40|$00000|auto_generated|result_node[15]~15_combout\,
	datac => \inst40|$00000|auto_generated|result_node[14]~14_combout\,
	datad => \inst40|$00000|auto_generated|result_node[12]~12_combout\,
	combout => \inst1|inst4|Mux3~0_combout\);

-- Location: LCCOMB_X66_Y49_N4
\inst1|inst4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux4~0_combout\ = (\inst40|$00000|auto_generated|result_node[15]~15_combout\ & (\inst40|$00000|auto_generated|result_node[14]~14_combout\ & ((\inst40|$00000|auto_generated|result_node[13]~13_combout\) # 
-- (!\inst40|$00000|auto_generated|result_node[12]~12_combout\)))) # (!\inst40|$00000|auto_generated|result_node[15]~15_combout\ & (\inst40|$00000|auto_generated|result_node[13]~13_combout\ & (!\inst40|$00000|auto_generated|result_node[14]~14_combout\ & 
-- !\inst40|$00000|auto_generated|result_node[12]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[13]~13_combout\,
	datab => \inst40|$00000|auto_generated|result_node[15]~15_combout\,
	datac => \inst40|$00000|auto_generated|result_node[14]~14_combout\,
	datad => \inst40|$00000|auto_generated|result_node[12]~12_combout\,
	combout => \inst1|inst4|Mux4~0_combout\);

-- Location: LCCOMB_X66_Y49_N18
\inst1|inst4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux5~0_combout\ = (\inst40|$00000|auto_generated|result_node[13]~13_combout\ & ((\inst40|$00000|auto_generated|result_node[12]~12_combout\ & (\inst40|$00000|auto_generated|result_node[15]~15_combout\)) # 
-- (!\inst40|$00000|auto_generated|result_node[12]~12_combout\ & ((\inst40|$00000|auto_generated|result_node[14]~14_combout\))))) # (!\inst40|$00000|auto_generated|result_node[13]~13_combout\ & (\inst40|$00000|auto_generated|result_node[14]~14_combout\ & 
-- (\inst40|$00000|auto_generated|result_node[15]~15_combout\ $ (\inst40|$00000|auto_generated|result_node[12]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[13]~13_combout\,
	datab => \inst40|$00000|auto_generated|result_node[15]~15_combout\,
	datac => \inst40|$00000|auto_generated|result_node[14]~14_combout\,
	datad => \inst40|$00000|auto_generated|result_node[12]~12_combout\,
	combout => \inst1|inst4|Mux5~0_combout\);

-- Location: LCCOMB_X66_Y49_N16
\inst1|inst4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux6~0_combout\ = (\inst40|$00000|auto_generated|result_node[15]~15_combout\ & (\inst40|$00000|auto_generated|result_node[12]~12_combout\ & (\inst40|$00000|auto_generated|result_node[13]~13_combout\ $ 
-- (\inst40|$00000|auto_generated|result_node[14]~14_combout\)))) # (!\inst40|$00000|auto_generated|result_node[15]~15_combout\ & (!\inst40|$00000|auto_generated|result_node[13]~13_combout\ & (\inst40|$00000|auto_generated|result_node[14]~14_combout\ $ 
-- (\inst40|$00000|auto_generated|result_node[12]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[13]~13_combout\,
	datab => \inst40|$00000|auto_generated|result_node[15]~15_combout\,
	datac => \inst40|$00000|auto_generated|result_node[14]~14_combout\,
	datad => \inst40|$00000|auto_generated|result_node[12]~12_combout\,
	combout => \inst1|inst4|Mux6~0_combout\);

-- Location: LCCOMB_X63_Y45_N12
\inst66|b2v_inst2|gen:1:muxi|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst66|b2v_inst2|gen:1:muxi|inst4~0_combout\ = (\PB[0]~input_o\ & (((\PB[1]~input_o\)))) # (!\PB[0]~input_o\ & ((\PB[1]~input_o\ & ((\inst25|inst2|Add0~2_combout\))) # (!\PB[1]~input_o\ & (\inst24|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Mux8~1_combout\,
	datab => \PB[0]~input_o\,
	datac => \inst25|inst2|Add0~2_combout\,
	datad => \PB[1]~input_o\,
	combout => \inst66|b2v_inst2|gen:1:muxi|inst4~0_combout\);

-- Location: LCCOMB_X63_Y45_N26
\inst66|b2v_inst2|gen:1:muxi|inst4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\ = (\inst66|b2v_inst2|gen:1:muxi|inst4~0_combout\ & ((\inst25|inst1|sp\(1)) # ((!\PB[0]~input_o\)))) # (!\inst66|b2v_inst2|gen:1:muxi|inst4~0_combout\ & (((\PB[0]~input_o\ & \DeviceSelRegister|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|b2v_inst2|gen:1:muxi|inst4~0_combout\,
	datab => \inst25|inst1|sp\(1),
	datac => \PB[0]~input_o\,
	datad => \DeviceSelRegister|Q\(1),
	combout => \inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\);

-- Location: LCCOMB_X63_Y45_N18
\inst66|b2v_inst2|gen:3:muxi|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\ = (!\PB[0]~input_o\ & (\inst25|inst2|Add0~8_combout\ & \PB[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PB[0]~input_o\,
	datac => \inst25|inst2|Add0~8_combout\,
	datad => \PB[1]~input_o\,
	combout => \inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\);

-- Location: LCCOMB_X63_Y45_N8
\inst66|b2v_inst2|gen:2:muxi|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\ = (\PB[1]~input_o\ & ((\PB[0]~input_o\ & ((\inst25|inst1|sp\(2)))) # (!\PB[0]~input_o\ & (\inst25|inst2|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst2|Add0~5_combout\,
	datab => \PB[1]~input_o\,
	datac => \PB[0]~input_o\,
	datad => \inst25|inst1|sp\(2),
	combout => \inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\);

-- Location: LCCOMB_X63_Y45_N16
\inst66|b2v_inst2|gen:0:muxi|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst66|b2v_inst2|gen:0:muxi|inst4~0_combout\ = (\PB[0]~input_o\ & (((\PB[1]~input_o\)))) # (!\PB[0]~input_o\ & ((\PB[1]~input_o\ & ((\inst25|inst5|$00000|auto_generated|result_node[0]~1_combout\))) # (!\PB[1]~input_o\ & (\inst24|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Mux8~0_combout\,
	datab => \PB[0]~input_o\,
	datac => \inst25|inst5|$00000|auto_generated|result_node[0]~1_combout\,
	datad => \PB[1]~input_o\,
	combout => \inst66|b2v_inst2|gen:0:muxi|inst4~0_combout\);

-- Location: LCCOMB_X63_Y45_N10
\inst66|b2v_inst2|gen:0:muxi|inst4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\ = (\PB[0]~input_o\ & ((\inst66|b2v_inst2|gen:0:muxi|inst4~0_combout\ & (\inst25|inst1|sp\(0))) # (!\inst66|b2v_inst2|gen:0:muxi|inst4~0_combout\ & ((\OUTPUTSELECT|Q\(0)))))) # (!\PB[0]~input_o\ & 
-- (((\inst66|b2v_inst2|gen:0:muxi|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst1|sp\(0),
	datab => \OUTPUTSELECT|Q\(0),
	datac => \PB[0]~input_o\,
	datad => \inst66|b2v_inst2|gen:0:muxi|inst4~0_combout\,
	combout => \inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\);

-- Location: LCCOMB_X63_Y45_N0
\inst13|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Mux0~0_combout\ = (\inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\ & ((\inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\) # (\inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\ $ (\inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\)))) # 
-- (!\inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\ & ((\inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\) # (\inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\ $ (\inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\,
	datab => \inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\,
	datac => \inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\,
	datad => \inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\,
	combout => \inst13|Mux0~0_combout\);

-- Location: LCCOMB_X63_Y45_N22
\inst13|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Mux1~0_combout\ = (\inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\ & (!\inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\ & ((\inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\) # (!\inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\)))) # 
-- (!\inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\ & (\inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\ & (\inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\ $ (!\inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\,
	datab => \inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\,
	datac => \inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\,
	datad => \inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\,
	combout => \inst13|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y45_N24
\inst13|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Mux2~0_combout\ = (\inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\ & (!\inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\ & ((\inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\)))) # (!\inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\ & 
-- ((\inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\ & (!\inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\)) # (!\inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\ & ((\inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\,
	datab => \inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\,
	datac => \inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\,
	datad => \inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\,
	combout => \inst13|Mux2~0_combout\);

-- Location: LCCOMB_X63_Y45_N2
\inst13|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Mux3~0_combout\ = (\inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\ & ((\inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\ & ((\inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\))) # (!\inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\ & 
-- (\inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\ & !\inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\)))) # (!\inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\ & (!\inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\ & (\inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\ $ 
-- (\inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\,
	datab => \inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\,
	datac => \inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\,
	datad => \inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\,
	combout => \inst13|Mux3~0_combout\);

-- Location: LCCOMB_X63_Y45_N20
\inst13|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Mux4~0_combout\ = (\inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\ & (\inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\ & ((\inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\) # (!\inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\)))) # 
-- (!\inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\ & (\inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\ & (!\inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\ & !\inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\,
	datab => \inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\,
	datac => \inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\,
	datad => \inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\,
	combout => \inst13|Mux4~0_combout\);

-- Location: LCCOMB_X63_Y45_N30
\inst13|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Mux5~0_combout\ = (\inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\ & ((\inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\ & (\inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\)) # (!\inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\ & 
-- ((\inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\))))) # (!\inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\ & (\inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\ & (\inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\ $ (\inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\,
	datab => \inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\,
	datac => \inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\,
	datad => \inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\,
	combout => \inst13|Mux5~0_combout\);

-- Location: LCCOMB_X63_Y45_N28
\inst13|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Mux6~0_combout\ = (\inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\ & (\inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\ & (\inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\ $ (\inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\)))) # 
-- (!\inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\ & (!\inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\ & (\inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\ $ (\inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|b2v_inst2|gen:1:muxi|inst4~1_combout\,
	datab => \inst66|b2v_inst2|gen:3:muxi|inst4~0_combout\,
	datac => \inst66|b2v_inst2|gen:2:muxi|inst4~0_combout\,
	datad => \inst66|b2v_inst2|gen:0:muxi|inst4~1_combout\,
	combout => \inst13|Mux6~0_combout\);

-- Location: LCCOMB_X58_Y45_N2
\inst66|b2v_inst2|gen:4:muxi|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst66|b2v_inst2|gen:4:muxi|inst4~0_combout\ = (!\PB[1]~input_o\ & ((\PB[0]~input_o\ & ((\OUTPUTSELECT|Q\(4)))) # (!\PB[0]~input_o\ & (\inst24|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB[0]~input_o\,
	datab => \inst24|Mux8~2_combout\,
	datac => \OUTPUTSELECT|Q\(4),
	datad => \PB[1]~input_o\,
	combout => \inst66|b2v_inst2|gen:4:muxi|inst4~0_combout\);

-- Location: LCCOMB_X58_Y44_N8
\inst66|b2v_inst2|gen:4:muxi|inst4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\ = (\inst66|b2v_inst2|gen:4:muxi|inst4~0_combout\) # ((\inst25|inst2|Add0~11_combout\ & (\PB[1]~input_o\ & !\PB[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst2|Add0~11_combout\,
	datab => \PB[1]~input_o\,
	datac => \inst66|b2v_inst2|gen:4:muxi|inst4~0_combout\,
	datad => \PB[0]~input_o\,
	combout => \inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\);

-- Location: LCCOMB_X58_Y45_N24
\inst66|b2v_inst2|gen:6:muxi|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\ = (\PB[1]~input_o\ & ((\PB[0]~input_o\ & ((\inst45|Dout\(14)))) # (!\PB[0]~input_o\ & (\inst25|inst2|Add0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB[0]~input_o\,
	datab => \inst25|inst2|Add0~17_combout\,
	datac => \inst45|Dout\(14),
	datad => \PB[1]~input_o\,
	combout => \inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\);

-- Location: LCCOMB_X58_Y45_N12
\inst66|b2v_inst2|gen:7:muxi|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\ = (\PB[1]~input_o\ & ((\PB[0]~input_o\ & ((\inst45|Dout\(15)))) # (!\PB[0]~input_o\ & (\inst25|inst2|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB[0]~input_o\,
	datab => \inst25|inst2|Add0~20_combout\,
	datac => \inst45|Dout\(15),
	datad => \PB[1]~input_o\,
	combout => \inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\);

-- Location: LCCOMB_X58_Y45_N26
\inst66|b2v_inst2|gen:5:muxi|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\ = (\PB[1]~input_o\ & ((\PB[0]~input_o\ & ((\inst45|Dout\(13)))) # (!\PB[0]~input_o\ & (\inst25|inst2|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst2|Add0~14_combout\,
	datab => \PB[1]~input_o\,
	datac => \inst45|Dout\(13),
	datad => \PB[0]~input_o\,
	combout => \inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\);

-- Location: LCCOMB_X62_Y42_N24
\inst15|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|Mux0~0_combout\ = (\inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\ & ((\inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\) # (\inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\ $ (\inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\)))) # 
-- (!\inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\ & ((\inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\) # (\inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\ $ (\inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\,
	datab => \inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\,
	datac => \inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\,
	datad => \inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\,
	combout => \inst15|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y42_N22
\inst15|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|Mux1~0_combout\ = (\inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\ & (\inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\ $ (((\inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\) # (!\inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\))))) # 
-- (!\inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\ & (!\inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\ & (!\inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\ & \inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\,
	datab => \inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\,
	datac => \inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\,
	datad => \inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\,
	combout => \inst15|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y42_N12
\inst15|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|Mux2~0_combout\ = (\inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\ & (\inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\ & ((!\inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\)))) # (!\inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\ & 
-- ((\inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\ & ((!\inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\))) # (!\inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\ & (\inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\,
	datab => \inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\,
	datac => \inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\,
	datad => \inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\,
	combout => \inst15|Mux2~0_combout\);

-- Location: LCCOMB_X62_Y42_N26
\inst15|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|Mux3~0_combout\ = (\inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\ & ((\inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\ & (\inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\)) # (!\inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\ & 
-- (!\inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\ & \inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\)))) # (!\inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\ & (!\inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\ & (\inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\ $ 
-- (\inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\,
	datab => \inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\,
	datac => \inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\,
	datad => \inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\,
	combout => \inst15|Mux3~0_combout\);

-- Location: LCCOMB_X62_Y42_N8
\inst15|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|Mux4~0_combout\ = (\inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\ & (\inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\ & ((\inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\) # (!\inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\)))) # 
-- (!\inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\ & (!\inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\ & (!\inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\ & \inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\,
	datab => \inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\,
	datac => \inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\,
	datad => \inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\,
	combout => \inst15|Mux4~0_combout\);

-- Location: LCCOMB_X62_Y42_N10
\inst15|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|Mux5~0_combout\ = (\inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\ & ((\inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\ & ((\inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\))) # (!\inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\ & 
-- (\inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\)))) # (!\inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\ & (\inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\ & (\inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\ $ (\inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\,
	datab => \inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\,
	datac => \inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\,
	datad => \inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\,
	combout => \inst15|Mux5~0_combout\);

-- Location: LCCOMB_X62_Y42_N16
\inst15|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|Mux6~0_combout\ = (\inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\ & (!\inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\ & (\inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\ $ (!\inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\)))) # 
-- (!\inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\ & (\inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\ & (\inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\ $ (!\inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|b2v_inst2|gen:4:muxi|inst4~1_combout\,
	datab => \inst66|b2v_inst2|gen:6:muxi|inst4~0_combout\,
	datac => \inst66|b2v_inst2|gen:7:muxi|inst4~0_combout\,
	datad => \inst66|b2v_inst2|gen:5:muxi|inst4~0_combout\,
	combout => \inst15|Mux6~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_LED(9) <= \LED[9]~output_o\;

ww_LED(8) <= \LED[8]~output_o\;

ww_LED(7) <= \LED[7]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(0) <= \LED[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;
END structure;


