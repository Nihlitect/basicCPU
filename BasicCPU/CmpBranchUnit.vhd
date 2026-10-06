library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CmpBranchUnit is
    generic(
        WIDTH : integer := 16
    );
    port(
        flags: in std_logic_vector(2 downto 0);
        cond : in  std_logic_vector(2 downto 0);
        BR   : out std_logic
    );
end CmpBranchUnit;


architecture compareTheBranchoes of CmpBranchUnit is

    signal Z : std_logic; --flags[0] - carry
    signal N : std_logic; --flags[1] - negative
    signal O : std_logic; --flags[2] - zero

begin
	 O <= flags(0);-- signed overflow
	 N <= flags(1);-- Negative flag
    Z <= flags(2);-- Zero condition
    
    
	
	-- BRANCH
   process(Z, N, O, cond)
   begin
		case cond is
			when "000" => BR <= Z; 				-- BEQ
			when "001" =>  BR <= not Z;		-- BNE
			when "010" => BR <= N xor O;			-- BLT (signed)
			when "011" => BR <= not (N xor O);	-- BGE (signed)
			when "100" => BR <= Z or (N xor O);	-- BLE (signed)
			when "101" => 								-- BGT (signed)
				BR <= (not Z) and not (N xor O);
				 
			when "110" => 								-- BLTU (unsigned)
				if unsigned(A) < unsigned(B) then
					BR <= '1'; else BR <= '0';
				end if;
			when "111" => 								-- BGEU (unsigned)
				if unsigned(A) >= unsigned(B) then
					BR <= '1'; else BR <= '0';
				end if;
			when others =>
				BR <= '0';
		end case;
	end process;
	 
end compareTheBranchoes;