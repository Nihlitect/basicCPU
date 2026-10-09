library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity IO is
	generic(
		W: integer :=16
		);
	port(
		I: in std_logic_vector(W-1 downto 0);
		O: out std_logic_vector(W-1 downto 0)
	);
end IO;

architecture intoout of IO is

begin

	O <= I;

end intoout;
