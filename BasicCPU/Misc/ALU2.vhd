library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.all;

entity ALU2 is
	generic( W: integer := 16 );
	port(
		F:	in  std_logic_vector(2 downto 0);
		A: in  std_logic_vector(W-1 downto 0);
		B: in  std_logic_vector(W-1 downto 0);

		O: out std_logic_vector(W-1 downto 0); -- Output
		V: out std_logic; -- Overflow
		N: out std_logic; -- Negative flag
		Z: out std_logic;  -- Zero flag
		C: out std_logic -- Carry flag
	);
end ALU2;


architecture alyou2 of ALU2 is
	signal final: std_logic_vector(W-1 downto 0);
	signal arith: std_logic_vector(W downto 0);
	signal logic: std_logic_vector(W-1 downto 0);

begin
	Process(F, A, B)
	begin	
		arith   <= (others => '0');
		logic <= (others => '0');
		
		case F is -- Both Arithmetic and Logic defined here
			when "000" => 											-- MIN: signed minimum
				if signed(A) < signed(B) then logic <= A;
				else logic <= B;
				end if;
			when "001" => 											-- MAX: signed maximum
				if signed(A) > signed(B) then logic <= A;
				else logic <= B;
				end if;
			when "010" => 											-- MINU: unsigned minimum
				if unsigned(A) < unsigned(B) then logic <= A;
				else logic <= B;
				end if;
			when "011" => 											-- MAXU: unsigned maximum
				if signed(A) > signed(B) then logic <= A;
				else logic <= B;
				end if;
			when "100" => arith <= ('0' & not A) + 1;		-- NEG: -A
			
			when "101" => logic <= not (A and B);			-- NAND:
			when "110" => logic <= not (A xor B);			-- XNOR:
			
			when "111" => arith <= ('0' & A) + ('0' & not B) + 1; 	-- SUB: A - B (disable destination register, enable flag set)
			
			when others => arith <=(others => '0'); logic <=(others => '0');
		end case;
	end process;
	-- Select arithmetic or logic result
	final <= arith(W-1 downto 0) when (F = "100" or F = "111") else logic;

	O <= final;

	V <= (A(W-1) xor B(W-1)) and -- Signed overflow
		(A(W-1) xor final(W-1));
	
	C <= arith(W) when (F = "100" or F = "111") else '0';
	
	-- Flags
	N <= final(W-1);
	Z <= '1' when final = (final'range => '0') else '0';
	
end alyou2;


