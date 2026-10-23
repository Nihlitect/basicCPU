library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Combinational logic that outputs a branch signal based on whether the condition is true, for given input flags. 
-- The branch is gated by the BR signal from the CPU, this is not shown here, 
-- this is more like "if conditions are right Ill let CPU know it should branch. 
-- So to use: {branch signal to PC} = BR (from CPU) and BR (from Branch unit).
entity BranchUnit is
    port(
        flags: in std_logic_vector(3 downto 0);
        cond : in  std_logic_vector(2 downto 0);
        BR   : out std_logic
    );
end BranchUnit;


architecture compareTheBranches of BranchUnit is
	signal Z : std_logic; --flags[0] - carry
	signal N : std_logic; --flags[1] - negative
	signal O : std_logic; --flags[2] - zero
	signal C : std_logic; --flags[2] - zero
	
begin
	O <= flags(0);-- signed overflow
	N <= flags(1);-- Negative flag
	Z <= flags(2);-- Zero condition
	C <= flags(3); -- Carry 

	-- BRANCH
   process(Z, N, O,C, cond)
   begin
		case cond is
			when "000" => BR <= Z; 					-- BEQ
			when "001" =>  BR <= not Z;			-- BNE
			when "010" => BR <= N xor O;			-- BLT (signed)
			when "011" => BR <= not (N xor O);	-- BGE (signed)
			when "100" => BR <= Z or (N xor O);	-- BLE (signed)
			when "101" => 								-- BGT (signed)
				BR <= (not Z) and not (N xor O);
			when "110" => BR <= not C;				-- BLTU (unsigned)
			when "111" => BR <= C;					-- BGEU (unsigned)
			when others =>
				BR <= '0';
		end case;
	end process;
end compareTheBranches;