library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

-- This implementation is taken from lecture slides in week 1 - VHDL code examples
entity ROM is
	generic(
		DW: integer := 16; -- The width of the data bus -> 16bit
		AW: integer := 16; -- The address length --> Can be 16 bit but we leave as 7 for 128 instructions
		SIZE: integer := 128
	);
	port(
		ADDR: in std_logic_vector(AW-1 downto 0); -- Address 2
		clk : in std_logic; -- clock signal
		EN: in std_logic; -- Enable
		
		Dout: out std_logic_vector(DW-1 downto 0); -- Data out
		DoutI: out std_logic_vector(DW-1 downto 0) -- Data out +1
	);
end ROM;

architecture rame of ROM is 

	-- Create memory array of size 'SIZE' and width 'WIDTH'
	type ramdef is array (0 to SIZE-1) of std_logic_vector(DW-1 downto 0);
	
	signal CODE: ramdef := (
		0 => x"5C00", -- LDI,R6,0
		1 => x"0000", -- (immediate)
		2 => x"4DF0", -- SW,R6,0x1F0
		3 => x"E201", -- SWI,R1
		4 => x"2644", -- AND,R3,R1,0x0F
		5 => x"000F", -- (immediate)
		6 => x"5400", -- LDI,R2,4
		7 => x"0004", -- (immediate)
		8 => x"9036", -- JAL,SHR
		9 => x"2844", -- AND,R4,R1,0x0F
		10 => x"000F", -- (immediate)
		11 => x"5400", -- LDI,R2,4
		12 => x"0004", -- (immediate)
		13 => x"9036", -- JAL,SHR
		14 => x"2A44", -- AND,R5,R1,0x03
		15 => x"0003", -- (immediate)
		16 => x"C177", -- CMP,R0,R5,R6
		17 => x"701B", -- BEQ,DO_ADD
		18 => x"5400", -- LDI,R2,1
		19 => x"0001", -- (immediate)
		20 => x"C157", -- CMP,R0,R5,R2
		21 => x"701D", -- BEQ,DO_SUB
		22 => x"5400", -- LDI,R2,2
		23 => x"0002", -- (immediate)
		24 => x"C157", -- CMP,R0,R5,R2
		25 => x"701F", -- BEQ,DO_MUL
		26 => x"802B", -- JMP,DO_PEAK
		27 => x"12E0", -- ADD,R1,R3,R4
		28 => x"8031", -- JMP,UPDATE
		29 => x"12E1", -- SUB,R1,R3,R4
		30 => x"8031", -- JMP,UPDATE
		31 => x"5200", -- LDI,R1,0
		32 => x"0000", -- (immediate)
		33 => x"C137", -- CMP,R0,R4,R6
		34 => x"7031", -- BEQ,UPDATE
		35 => x"2504", -- AND,R2,R4,1
		36 => x"0001", -- (immediate)
		37 => x"C0B7", -- CMP,R0,R2,R6
		38 => x"7028", -- BEQ,MUL_SKIP
		39 => x"1258", -- ADD,R1,R1,R3
		40 => x"B6C0", -- SL,R3,R3
		41 => x"B903", -- SLR,R4,R4
		42 => x"8021", -- JMP,MUL_LOOP
		43 => x"14E5", -- OR,R2,R3,R4
		44 => x"C0B7", -- CMP,R0,R2,R6
		45 => x"722F", -- BNE,PEAK_SHOW
		46 => x"4DF0", -- SW,R6,0x1F0
		47 => x"33F0", -- LW,R1,0x1F0
		48 => x"8034", -- JMP,SHOW
		49 => x"35F0", -- LW,R2,0x1F0
		50 => x"C489", -- MAX,R2,R2,R1
		51 => x"45F0", -- SW,R2,0x1F0
		52 => x"E200", -- SSD,R1
		53 => x"8003", -- JMP,MAIN
		54 => x"B243", -- SLR,R1,R1
		55 => x"1493", -- DEC,R2,R2,R2
		56 => x"C0B7", -- CMP,R0,R2,R6
		57 => x"7236", -- BNE,SHR
		58 => x"A000", -- JR
		others => X"0000"); -- Ex. Will set 20 to SIZE 

		-- With this definition the synthesizer uses onboard memory ?.

begin 
	process(clk, EN, ADDR)
	begin
		if rising_edge(clk) then -- Write
			if (EN = '1') then
				-- PORT B - READ
				Dout <= CODE(to_integer(unsigned(ADDR))); -- Data out 
				DoutI <= CODE(to_integer(unsigned(ADDR))+1); -- Data out 
			end if; -- end ENABLED
		end if; -- End rising edge
	end process;
end rame;