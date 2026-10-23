library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.all;
-- Arithmetic Logic Unit 1 used in CPU design. 
-- Takes A and B bit vectors and combinationally executes an opereration based on the F bit vector.
entity ALU is 
	generic( W: integer := 16 );
	port(
		F:	in  std_logic_vector(2 downto 0);
		A: in  std_logic_vector(W-1 downto 0);
		B: in  std_logic_vector(W-1 downto 0);
		O: out std_logic_vector(W-1 downto 0));
end ALU;


architecture alu of ALU is
	signal final: std_logic_vector(W-1 downto 0); 
	signal arith: std_logic_vector(W downto 0);	--	17bit output for arithmetic functiond
	signal logic: std_logic_vector(W-1 downto 0);-- 16bit output for logic functions
begin
	Process(F, A, B)
	begin	
		arith   <= (others => '0');
		logic <= (others => '0');
		
		case F is -- Both Arithmetic and Logic defined here
			when "000" => arith <= ('0' & A) + ('0' & B);			-- ADD: A + B
			when "001" => arith <= ('0' & A) + ('0' & not B) + 1; -- SUB: A - B
			when "010" => arith <= ('0' & A) + 1;						-- INC: A + 1
			when "011" => arith <= ('0' & A) - 1; 						-- DEC: A - 1
			when "100" => logic <= A and B;								-- AND: A and B 	-- bitwise     
			when "101" => logic <= A or B; 								-- OR:  A or B 	-- bitwise
			when "110" => logic <= A xor B;								-- XOR: A xor B 	-- bitwise
			when "111" => logic <= not A;  								-- NOT ~A
			when others => arith <=(others => '0'); logic <=(others => '0');
		end case;
	end process;
	-- Select arithmetic or logic result
   final <= arith(W-1 downto 0) when F(2) = '0' else logic;
	O<= final;
	-- No flag output, flags are outputed only on CMP instruction in ALU2
end alu;