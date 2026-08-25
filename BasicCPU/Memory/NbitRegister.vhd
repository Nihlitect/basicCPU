library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- This is a N-bit register
entity NbitRegister is
	generic( -- Generic Definition
		WIDTH : integer :=16);
	port(
		Din: in std_logic_vector(WIDTH-1 downto 0);
		clk: in std_logic; -- clock -> only on rising edge change is allowed
		EN: in std_logic; -- Enable write
		CLR: in std_logic; -- Clear Register
		Dout: out std_logic_vector(WIDTH-1 downto 0)
	);
end NbitRegister;

	
-- The architecture of the 16 bit register
architecture reg of NbitRegister is

	-- Define the D - flip flop shematic to be use here
	component BitRegister2 is 
		port(
			EN: in std_logic;
			CLR: in std_logic;
			D: in std_logic; -- Data in
			clk: in std_logic; -- Enable or Clock
			Q: out std_logic -- value of Data Bit stored
		);
	end component;
	
begin -- Begin behaviour
	
	ffmap : for i in 0 to WIDTH-1 generate
	begin
		-- flip flop map to output using for 
		ffi : BitRegister2
        port map(
				EN => EN,
				CLR => CLR,
            clk => clk, 
            D   => Din(i),
            Q   => Dout(i));
	end generate;
end reg;
-- Alternitevly if acceptable in the unit
-- apparently this leaves the 'compiler' or 'synthesizer' 
-- to optimise the hardware involved. fascinating.
--
--architecture reg of NbitRegister is
--
--begin

--	process(clk)
--	begin
--		if rising_edge(clk) then
--			Dout <= Din;
--		end if;
--	end process;
--end reg; 
