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
		--MAIN:
		0 => x"E201", -- SWI R1
		1 => x"2644", -- AND R3 R1 0x0F
		2 => x"000F", -- (immediate)
		3 => x"B851", -- SRL R4 R1 4
		4 => x"2904", -- AND R4 R4 0x0F
		5 => x"000F", -- (immediate)
		6 => x"BA61", -- SRL R5 R1 8
		7 => x"2B44", -- AND R5 R5 0x03
		8 => x"0003", -- (immediate)
		9 => x"D147", -- CMP R5 0
		10 => x"0000", -- (immediate)
		11 => x"7013", -- BEQ DO_ADD
		12 => x"D147", -- CMP R5 1
		13 => x"0001", -- (immediate)
		14 => x"7015", -- BEQ DO_SUB
		15 => x"D147", -- CMP R5 2
		16 => x"0002", -- (immediate)
		17 => x"7017", -- BEQ DO_MUL
		18 => x"8019", -- JMP DO_DIV
		--DO_ADD:
		19 => x"12E0", -- ADD R1 R3 R4
		20 => x"801A", -- JMP SHOW
		--DO_SUB:
		21 => x"12E1", -- SUB R1 R3 R4
		22 => x"801A", -- JMP SHOW
		--DO_MUL:
		23 => x"9023", -- JAL MULTIPLY
		24 => x"801A", -- JMP SHOW
		--DO_DIV:
		25 => x"9034", -- JAL DIVIDE
		--SHOW:
		26 => x"D047", -- CMP R1 0xBADB
		27 => x"BADB", -- (immediate)
		28 => x"7021", -- BEQ SHOW_RAW
		29 => x"B260", -- SLL R1 R1 8
		30 => x"B4D0", -- SLL R2 R3 4
		31 => x"1255", -- OR  R1 R1 R2
		32 => x"1265", -- OR  R1 R1 R4
		--SHOW_RAW:
		33 => x"E200", -- SSD R1
		34 => x"8000", -- JMP MAIN
		--MULTIPLY:
		35 => x"5200", -- LDI R1 0
		36 => x"0000", -- (immediate)
		37 => x"1ADD", -- OR  R5 R3 R3
		38 => x"1D25", -- OR  R6 R4 R4
		--MUL_LOOP:
		39 => x"D187", -- CMP R6 0
		40 => x"0000", -- (immediate)
		41 => x"7033", -- BEQ MUL_DONE
		42 => x"2584", -- AND R2 R6 1
		43 => x"0001", -- (immediate)
		44 => x"D087", -- CMP R2 0
		45 => x"0000", -- (immediate)
		46 => x"7030", -- BEQ MUL_SKIP
		47 => x"1268", -- ADD R1 R1 R5
		--MUL_SKIP:
		48 => x"BB44", -- SLL R5 R5 1
		49 => x"BD85", -- SRL R6 R6 1
		50 => x"8027", -- JMP MUL_LOOP
		--MUL_DONE:
		51 => x"A000", -- JR
		--DIVIDE:
		52 => x"D107", -- CMP R4 0
		53 => x"0000", -- (immediate)
		54 => x"7042", -- BEQ DIV_ZERO
		55 => x"5200", -- LDI R1 0
		56 => x"0000", -- (immediate)
		57 => x"1CDD", -- OR  R6 R3 R3
		--DIV_LOOP:
		58 => x"C1A7", -- CMP R6 R4
		59 => x"7C3F", -- BLTU DIV_DONE
		60 => x"1DA1", -- SUB R6 R6 R4
		61 => x"1242", -- INC R1 R1
		62 => x"803A", -- JMP DIV_LOOP
		--DIV_DONE:
		63 => x"BD90", -- SLL R6 R6 4
		64 => x"1275", -- OR  R1 R1 R6
		65 => x"A000", -- JR
		--DIV_ZERO:
		66 => x"5200", -- LDI R1 0xBADB
		67 => x"BADB", -- (immediate)
		68 => x"A000", -- JR
		
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