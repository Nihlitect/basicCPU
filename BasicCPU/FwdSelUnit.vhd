library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Detects data hazards for the next A/B register reads against the
-- current destination register, and drives the forwarding mux selects.
-- e.g.
-- R1 = R3 + R2
-- R4 = R1 + R2   <- R1 hazard on A, forward ALU result into A input

entity FwdSelUnit is
	port(
		exdr: in std_logic_vector(2 downto 0);  -- curr destination register address in Execute stage
		wbdr: in std_logic_vector(2 downto 0); -- Current destination register address in Writeback stage (yet to be written)
		
		na: in std_logic_vector(2 downto 0);  -- next A register address
		nb: in std_logic_vector(2 downto 0);  -- next B register address
		
		selexa: out std_logic;--select a value from execute or writeback stage
		sela: out std_logic;  -- sel forward into A mux input
		
		selexb: out std_logic; --select b value from execute or writeback stage
		selb: out std_logic   -- sel forward into B mux input
	);
end FwdSelUnit;

architecture fwdCtrl of FwdSelUnit is
begin
	process(exdr,wbdr,na, nb )
	begin
		sela <= '0'; --default: no dependencies dont do anything
		selb <= '0';
		
		if wbdr = na then-- then this assumes writeback value is the default path
			sela <= '1'; 
			selexa <= '0';
		end if;
		
		if exdr = na then --overwrites the previous if
			sela <= '1';
			selexa <= '1';
		end if;
		
		if wbdr = nb then-- then this assumes writeback value is the default path
			selb <= '1'; 
			selexb <= '0';
		end if;
		
		if exdr = nb then --overwrites the previous if
			selb <= '1';
			selexb <= '1';
		end if;
	end process;
end fwdCtrl;