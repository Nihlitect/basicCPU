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
		--MAIN
		2 => x"4DF0", -- SW,R6,0x1F0
		3 => x"E201", -- SWI,R1
		4 => x"2644", -- AND,R3,R1,0x0F
		5 => x"000F", -- (immediate)
		6 => x"B263", -- SLR,R1,R1,4
		7 => x"2844", -- AND,R4,R1,0x0F
		8 => x"000F", -- (immediate)
		9 => x"B263", -- SLR,R1,R1,4
		10 => x"2A44", -- AND,R5,R1,0x03
		11 => x"0003", -- (immediate)
		12 => x"C177", -- CMP,R5,R6
		13 => x"7017", -- BEQ,DO_ADD
		14 => x"5400", -- LDI,R2,1
		15 => x"0001", -- (immediate)
		16 => x"C157", -- CMP,R5,R2
		17 => x"7019", -- BEQ,DO_SUB
		18 => x"5400", -- LDI,R2,2
		19 => x"0002", -- (immediate)
		20 => x"C157", -- CMP,R5,R2
		21 => x"701B", -- BEQ,DO_MUL
		22 => x"801D", -- JMP,DO_PEAK
		
		-- DO_ADD
		23 => x"12E0", -- ADD,R1,R3,R4
		24 => x"8023", -- JMP,UPDATE
		-- DO_SUB
		25 => x"12E1", -- SUB,R1,R3,R4
		26 => x"8023", -- JMP,UPDATE
		--DO_MUL
		27 => x"9028", -- JAL,MULTIPLY
		28 => x"8023", -- JMP,UPDATE
		
		29 => x"14E5", -- OR,R2,R3,R4
		30 => x"C0B7", -- CMP,R2,R6
		31 => x"7221", -- BNE,PEAK_SHOW
		32 => x"4DF0", -- SW,R6,0x1F0
		33 => x"33F0", -- LW,R1,0x1F0
		34 => x"8026", -- JMP,SHOW
		
		-- UPDATE
		35 => x"35F0", -- LW,R2,0x1F0
		36 => x"C489", -- MAX,R2,R2,R1
		37 => x"45F0", -- SW,R2,0x1F0
		
		--SHOW
		38 => x"E200", -- SSD,R1
		39 => x"8003", -- JMP,MAIN
		-- DO_PEAK
		40 => x"5200", -- LDI,R1,0
		41 => x"0000", -- (immediate)
		-- MUL_LOOP
		42 => x"C137", -- CMP,R4,R6
		43 => x"7034", -- BEQ,MUL_DONE
		44 => x"2504", -- AND,R2,R4,1
		45 => x"0001", -- (immediate)
		46 => x"C0B7", -- CMP,R2,R6
		47 => x"7031", -- BEQ,MUL_SKIP
		48 => x"1258", -- ADD,R1,R1,R3
		--MUL_SKIP
		49 => x"B6C8", -- SL,R3,R3,1
		50 => x"B90B", -- SLR,R4,R4,1
		51 => x"802A", -- JMP,MUL_LOOP
		--MUL_DONE
		52 => x"A000", -- JR
		others => X"0000"); -- Ex. Will set 20 to SIZE 

		-- With this definition the synthesizer uses onboard memory ?.

begin 
	process(clk, EN, ADDR)
	begin
		if rising_edge(clk) then
			if (EN = '1') then
				-- PORT B - READ
				Dout <= CODE(to_integer(unsigned(ADDR))); -- Data out 
				DoutI <= CODE(to_integer(unsigned(ADDR))+1); -- Data out 
			end if; -- end ENABLED
		end if; -- End rising edge
	end process;
end rame;