library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lookAheadAdder is
	generic(
		width: integer := 16
	);
		
	port(
		Cin: in std_logic;
		A: in std_logic_vector(width-1 downto 0);
		B: in std_logic_vector(width-1 downto 0);
		S: out std_logic_vector(width-1 downto 0);
		Cout: out std_logic);
end lookAheadAdder;


--attempted... probably doesnt work as intended. This is more so just a generic NbitAdder thusfar
-- apparently synthesizer will optimise the logic itself for some uknown criteria
architecture lookAhead of lookAheadAdder is

signal Gn : std_logic_vector(width-1 downto 0);
signal Pn : std_logic_vector(width-1 downto 0);
signal Cn : std_logic_vector(width downto 0);

begin
	
	Cn(0) <= Cin;
	
	gen: for i in 0 to width-1 generate
	begin
		Gn(i) <= A(i) and B(i); -- generate
		Pn(i) <= A(i) xor B(i); -- propogate
		
		Cn(i+1) <= Gn(i) or ( Pn(i) and Cn(i)); -- carry recursion
		
		S(i) <= Pn(i) xor Cn(i); -- Typical section from full adder
		
	end generate gen;
	
	Cout <= Cn(width);
	
end lookAhead;

		
		