library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity BranchUnit is
	port(
		cond: in std_logic_vector(2 downto 0);
		Z: in std_logic;
		C: in std_logic;
		N: in std_logic;
		O: in std_logic;  -- overflow flag
		BR: out std_logic);
end BranchUnit;

architecture branches of BranchUnit is
begin
	process(Z, C, N, O, cond)
	begin
		case cond is
			when "000" => if Z = '1' then BR <= '1'; else BR <= '0'; end if; -- BEQ
			when "001" => if Z = '0' then BR <= '1'; else BR <= '0'; end if; -- BNE
			when "010" => if N /= O then BR <= '1'; else BR <= '0'; end if; -- BLT
			when "011" => if N = O  then BR <= '1'; else BR <= '0'; end if; -- BGE
			when "100" => if (Z = '1') or (N /= O) then BR <= '1'; else BR <= '0'; end if; -- BLE
			when "101" => if (Z = '0') and (N = O) then BR <= '1'; else BR <= '0'; end if; -- BGT
			when "110" => if C = '0' then BR <= '1'; else BR <= '0'; end if; -- BLTU
			when "111" => if C = '1' then BR <= '1'; else BR <= '0'; end if; -- BGEU
			when others => BR <= '0'; -- Default
		end case;
	end process;
end branches;