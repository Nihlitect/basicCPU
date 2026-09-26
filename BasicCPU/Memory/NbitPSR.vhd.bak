library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- PSR (Pipeline Stall Register)
entity NbitPSR is
	generic( -- Generic Definition
		WIDTH : integer :=16);
	port(
		I: in std_logic_vector(WIDTH-1 downto 0);
		clk: in std_logic; -- clock -> only on rising edge change is allowed
		STALL: in std_logic; -- Stall pipeline buffer signal
		O: out std_logic_vector(WIDTH-1 downto 0)
	);
end NbitPSR;


architecture stall of NbitPSR is

	
	component NbitRegister is
		--generic( -- Generic Definition
			--WIDTH : integer :=16);
		port(
			Din: in std_logic_vector(WIDTH-1 downto 0);
			clk: in std_logic; -- clock -> only on rising edge change is allowed
			EN: in std_logic; -- Enable write
			CLR: in std_logic; -- Clear Register
			Dout: out std_logic_vector(WIDTH-1 downto 0)
		);
	end component;
	
begin -- Begin behaviour
	

	ffi : NbitRegister
		port map(
			EN => not STALL,
			CLR => '0',
			clk => clk, 
         Din   => I,
         Dout   => O
		);
end stall;



