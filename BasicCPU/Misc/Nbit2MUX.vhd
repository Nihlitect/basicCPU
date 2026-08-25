library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Nbit2MUX is 
	generic(
		WIDTH: integer := 16
	);
	port(
		V1: in std_logic_vector(WIDTH-1 downto 0); -- Nbit vector 1
		V2: in std_logic_vector(WIDTH-1 downto 0); -- Nbit Vector 2
		S: in std_logic; -- Selector
		
		O: out std_logic_vector(WIDTH-1 downto 0) -- output vector
		);
end Nbit2MUX;

architecture busmux of Nbit2MUX is 

	component bit2_1MUX is 
		port(
			I1: in std_logic;
			I2: in std_logic;
			S: in std_logic;
			O: out std_logic
		);
	end component;
	
begin

	gen: for i in 0 to WIDTH-1 generate
	begin
		muxi: bit2_1MUX
		port map(
			I1 => V1(i),
			I2 => V2(i),
			S => S,
			O => O(i));
	end generate;
	
end busmux;