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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"
-- CREATED		"Fri Oct  9 17:47:31 2026"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY \16bit4_1MUX\ IS 
	PORT
	(
		S :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		V1 :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		V2 :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		V3 :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		V4 :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		OUT :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END \16bit4_1MUX\;

ARCHITECTURE bdf_type OF \16bit4_1MUX\ IS 

COMPONENT nbit2mux
GENERIC (WIDTH : INTEGER
			);
	PORT(S : IN STD_LOGIC;
		 V1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 V2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 O : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(15 DOWNTO 0);


BEGIN 



b2v_inst : nbit2mux
GENERIC MAP(WIDTH => 16
			)
PORT MAP(S => S(1),
		 V1 => V1,
		 V2 => V2,
		 O => SYNTHESIZED_WIRE_0);


b2v_inst1 : nbit2mux
GENERIC MAP(WIDTH => 16
			)
PORT MAP(S => S(1),
		 V1 => V3,
		 V2 => V4,
		 O => SYNTHESIZED_WIRE_1);


b2v_inst2 : nbit2mux
GENERIC MAP(WIDTH => 16
			)
PORT MAP(S => S(0),
		 V1 => SYNTHESIZED_WIRE_0,
		 V2 => SYNTHESIZED_WIRE_1,
		 O => OUT);


END bdf_type;