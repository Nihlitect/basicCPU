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
		0 => X"1000",
		1 => X"1111", -- Write instuctions here
		2 => X"1222",
		3 => X"1333",
		4 => X"1444",
		5 => X"1555",
		6 => X"1666",
		7 => X"1777",
		8 => X"1888",
		9 => X"1999",
		10 => X"1AAA",
		11 => X"1BBB",
		12 => X"1CCC",
		13 => X"1DDD",
		14 => X"1EEE",
		15 => X"1FFF",
		16 => X"2000",
		17 => X"2111",
		18 => X"2222",
		19 => X"2333",
		20 => X"2444",
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