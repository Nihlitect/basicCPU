library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

-- This implementation is taken from lecture slides in week 1 - VHDL code examples
entity RAM2 is
	generic(
		D_WIDTH: integer := 16; -- The width of the data bus -> 16bit
		A_WIDTH: integer := 16; -- The address length --> Can be 16 bit but we leave as 7 for 128 instructions
		SIZE: integer := 128
	);
	port(
		DIN: in std_logic_vector(D_WIDTH-1 downto 0); -- Data in
		ADDR_IN: in std_logic_vector(A_WIDTH-1 downto 0); -- Address 1
		ADDR_OUT: in std_logic_vector(A_WIDTH-1 downto 0); -- Address 2
		
		clk : in std_logic; -- clock signal
		EN: in std_logic; -- Enable
		WE: in std_logic; -- write enable
		
		DOUT: out std_logic_vector(D_WIDTH-1 downto 0); -- Data out  bus 1 [ADDR_IN1]
		DOUT_I: out std_logic_vector(D_WIDTH-1 downto 0)-- Data out bus 1 [ADDR_IN1+1]
		
		--DOUT2: out std_logic_vector(D_WIDTH-1 downto 0) -- Data out bus 2 [ADDR_IN2]
	);
end RAM2;

architecture rame of RAM2 is 

	-- Create memory array of size 'SIZE' and width 'WIDTH'
	type ramdef is array (0 to SIZE-1) of std_logic_vector(D_WIDTH-1 downto 0);
	
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
	process(clk, EN, WE, ADDR_IN, ADDR_OUT, DIN)
	begin
		if rising_edge(clk) then 
			if (EN = '1') then
				-- PORT A - WRITE
				if (WE = '1') then -- If write enabled
					CODE(to_integer(unsigned(ADDR_IN))) <= DIN; -- data in is set
				end if;
				
				-- PORT B - READ
				DOUT <= CODE(to_integer(unsigned(ADDR_OUT))); -- Data out 
				-- PORT B+1 - READ (for immediate instructions)
				DOUT_I <= CODE(to_integer(unsigned(ADDR_OUT))+1); -- Data out 
				
			end if; -- end ENABLED
		end if; -- End rising edge
	end process;
end rame;