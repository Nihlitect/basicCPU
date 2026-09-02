library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- This is just code to split function based on type so that it is easier to read in block diagram form
entity R is 
	Port(
		r: in std_logic_vector(11 downto 0);
		func: out std_logic_vector(2 downto 0);
		rd: out std_logic_vector(2 downto 0);
		ra: out std_logic_vector(2 downto 0);
		rb: out std_logic_vector(2 downto 0)
	);
end R;

architecture rtype of R is

begin

	rd <= r(11 downto 9);
	ra <= r(8 downto 6);
	rb <= r(5 downto 3);
	func <= r(2 downto 0);

end rtype;