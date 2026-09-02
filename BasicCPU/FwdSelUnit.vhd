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
		dr: in std_logic_vector(2 downto 0);  -- curr destination register address
		na: in std_logic_vector(2 downto 0);  -- next A register address
		nb: in std_logic_vector(2 downto 0);  -- next B register address

		sela: out std_logic;  -- sel forward into A mux input
		selb: out std_logic   -- sel forward into B mux input
	);
end FwdSelUnit;

architecture fwdCtrl of FwdSelUnit is
begin
	sela <= '1' when dr = na else '0';
	selb <= '1' when dr = nb else '0';
end fwdCtrl;