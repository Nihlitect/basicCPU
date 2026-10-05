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
-- CREATED		"Sun Oct  4 23:11:18 2026"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ProgramCounter IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		CLR :  IN  STD_LOGIC;
		CE :  IN  STD_LOGIC;
		JAL :  IN  STD_LOGIC;
		JMP :  IN  STD_LOGIC;
		JR :  IN  STD_LOGIC;
		BUS_IN :  IN  STD_LOGIC_VECTOR(8 DOWNTO 0);
		CO :  OUT  STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END ProgramCounter;

ARCHITECTURE bdf_type OF ProgramCounter IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT busmux_0
	PORT(sel : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(8 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF busmux_0: COMPONENT IS true;
ATTRIBUTE noopt OF busmux_0: COMPONENT IS true;

COMPONENT busmux_1
	PORT(sel : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(8 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF busmux_1: COMPONENT IS true;
ATTRIBUTE noopt OF busmux_1: COMPONENT IS true;

COMPONENT busmux_2
	PORT(sel : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(8 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF busmux_2: COMPONENT IS true;
ATTRIBUTE noopt OF busmux_2: COMPONENT IS true;

COMPONENT nbitdff
GENERIC (WIDTH : INTEGER
			);
	PORT(CLR : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 Din : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 Dout : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;

COMPONENT nbitcounter
GENERIC (WIDTH : INTEGER
			);
	PORT(CE : IN STD_LOGIC;
		 Cin : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 Cout : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;

COMPONENT nbitregister
GENERIC (WIDTH : INTEGER
			);
	PORT(clk : IN STD_LOGIC;
		 EN : IN STD_LOGIC;
		 CLR : IN STD_LOGIC;
		 Din : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 Dout : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_10 <= '0';



b2v_dafdf : nbitdff
GENERIC MAP(WIDTH => 9
			)
PORT MAP(CLR => CLR,
		 clk => clk,
		 Din => SYNTHESIZED_WIRE_0,
		 Dout => SYNTHESIZED_WIRE_12);


SYNTHESIZED_WIRE_2 <= JAL OR JMP;


b2v_inst1 : nbitcounter
GENERIC MAP(WIDTH => 9
			)
PORT MAP(CE => CE,
		 Cin => SYNTHESIZED_WIRE_12,
		 Cout => SYNTHESIZED_WIRE_5);


SYNTHESIZED_WIRE_13 <= JAL OR JR OR JMP;



b2v_inst4 : busmux_0
PORT MAP(sel => SYNTHESIZED_WIRE_2,
		 dataa => SYNTHESIZED_WIRE_3,
		 datab => BUS_IN,
		 result => SYNTHESIZED_WIRE_14);


b2v_inst45 : busmux_1
PORT MAP(sel => SYNTHESIZED_WIRE_13,
		 dataa => SYNTHESIZED_WIRE_5,
		 datab => SYNTHESIZED_WIRE_14,
		 result => SYNTHESIZED_WIRE_0);


b2v_inst5 : busmux_2
PORT MAP(sel => SYNTHESIZED_WIRE_13,
		 dataa => SYNTHESIZED_WIRE_12,
		 datab => SYNTHESIZED_WIRE_14,
		 result => CO);


b2v_LINK_REGISTER : nbitregister
GENERIC MAP(WIDTH => 9
			)
PORT MAP(clk => clk,
		 EN => JAL,
		 CLR => SYNTHESIZED_WIRE_10,
		 Din => SYNTHESIZED_WIRE_12,
		 Dout => SYNTHESIZED_WIRE_3);


END bdf_type;