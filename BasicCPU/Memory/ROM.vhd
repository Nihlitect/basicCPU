library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

-- This implementation is taken from lecture slides in week 1 - VHDL code examples
entity ROM is
	generic(
		D_WIDTH: integer := 16; -- The width of the data bus -> 16bit
		A_WIDTH: integer := 16; -- The address length --> Can be 16 bit but we leave as 7 for 128 instructions
		SIZE: integer := 128
	);
	port(
		ADDRESS: in std_logic_vector(A_WIDTH-1 downto 0); -- Address
		clk : in std_logic; -- clock signal
		EN: in std_logic; -- Enable
		RE: in std_logic; -- Read
		
		DATA: out std_logic_vector(D_WIDTH-1 downto 0) -- Data out
	);
end ROM;

architecture rome of ROM is 

	-- Create memory array of size 'SIZE' and width 'WIDTH'
	type ROMA is array (0 to SIZE-1) of std_logic_vector(D_WIDTH-1 downto 0);
	
	constant CODE: ROMA := (
		0 => X"1000",
		1 => X"1111", -- Write instuctions here i guess?
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
	process(clk, RE, ADDRESS)
	begin
		if rising_edge(clk) then 
			if (EN = '1') then
				if (RE = '1') then
					DATA <= CODE(to_integer(unsigned(ADDRESS))); -- 
				end if;
			end if;
		end if;
	end process;
end rome;