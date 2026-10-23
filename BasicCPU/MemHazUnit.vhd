library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Detects data hazards for the SW and LW Writes and reads 
-- In the specific scenario where you SW X then follow it with LW X or even seperated by an instruction
entity MemHazUnit is
	generic(
		W: integer := 16;
		AW: integer := 9
	);
	port(
		clk: in std_logic;
		MRE: in std_logic;
		deaddr: in std_logic_vector(AW-1 downto 0);  -- next read address
		exaddr: in std_logic_vector(AW-1  downto 0);  --  address in Execute stage
		wbaddr: in std_logic_vector(AW-1 downto 0); -- Current address in Writeback stage (yet to be written)
		-- Determine if the Memory is to be forwarded i.e. instr writes to a register
		MENEX: in std_logic; -- Forward execute stage
		MENWB: in std_logic; -- Forward writebeack stage
		
		EXO: in std_logic_vector(W-1 downto 0);
		WBO: in std_logic_vector(W-1 downto 0);
		
		fwded: out std_logic; -- Holds the state, if in the previous clock cycle forwarding occured then hold the value for another
		O: out std_logic_vector(W-1 downto 0)
	);
end MemHazUnit;

architecture fwdCtrl of MemHazUnit is
	signal route : std_logic_vector(W-1 downto 0) := (others => '0'); 
	signal forwarding: std_logic := '0';
	
	signal fwded_reg: std_logic :='0';
	signal O_reg: std_logic_vector(W-1 downto 0) := (others => '0');
begin
	process(MRE, MENEX, MENWB, deaddr, exaddr, wbaddr, EXO, WBO)
	begin
		route <= (others => '0'); -- By default if no dependency output from the RAM.
		forwarding <= '0';
		
		if (MRE = '1') then -- Only when we are reading do we really care about dependencies
			if (MENEX= '1') and (deaddr = exaddr) then --- Latest dependency
				route <= EXO; 
				forwarding <= '1';
			elsif (MENWB='1') and (deaddr = wbaddr ) then -- lower priority dependency
				route <= WBO;
				forwarding <= '1';
			end if;
		end if;
	end process;
	
	process(clk)-- Register the forwarding decision and data together
	begin
		if rising_edge(clk) then
			fwded_reg <= forwarding;
			O_reg     <= route;
		end if;
	end process;

	fwded <= fwded_reg;
	O <= O_reg;
end fwdCtrl;