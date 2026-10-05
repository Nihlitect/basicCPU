library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.all;

entity ALU2 is
	generic( W: integer := 16 );
	port(
		F:	in  std_logic_vector(2 downto 0);
		A:      	in  std_logic_vector(W-1 downto 0);
		B:       in  std_logic_vector(W-1 downto 0);

		O:        out std_logic_vector(W-1 downto 0)
	);
end ALU2;


architecture alu of ALU2 is
	signal final: std_logic_vector(W-1 downto 0);
	signal arith: std_logic_vector(W downto 0);
	signal logic: std_logic_vector(W-1 downto 0);

begin
	Process(F, A, B)
	begin	
		arith   <= (others => '0');
		logic <= (others => '0');
		
		case F is -- Both Arithmetic and Logic defined here
			when "000" => arith <= ('0' & A) + ('0' & B);				-- ADD: A + B
			when "001" => arith <= ('0' & A) + ('0' & not B) + 1; 	-- SUB: A - B
			when "010" => arith <= ('0' & A) + 1;						-- INC: A + 1
			when "011" => arith <= ('0' & A) - 1; 						-- DEC: A-1 Maybe something else is better we can explore later
			when "100" => logic <= A and B;	-- Bitwise AND         
			when "101" => logic <= A or B; 	-- Bitwise OR
			when "110" => logic <= A xor B;	-- Bitwise XOR
			when "111" => logic <= not A;  	-- NOT A
			when others => arith <=(others => '0'); logic <=(others => '0');
		end case;
	end process;
	-- Select arithmetic or logic result
   final <= arith(W-1 downto 0) when F(2) = '0' else logic;

	O<= final;

end alu;