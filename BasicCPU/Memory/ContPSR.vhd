

-- PSR (Pipeline Stall Register)
entity FlagPSR is
	port(
		--
		BR: in std_logic; -- branch instruction
		-- Decode
		EXO: in std_logic; -- select ALU bypass
		FI: in std_logic; -- enable flag register write
		IMB:  in std_logic; -- enable immediate into B input
		
		
		--WriteBack
		IMW:  in std_logic; -- enable immediate into B input
		REG_EW: in std_logic; -- register enable write
		SSD_WE: in std_logic; -- Seven Segment Display enable write
		MEM_WE: in std_logic; -- Memory enable write
		SEL1: in std_logic; -- select bus 1
		
		clk: in std_logic; -- clock -> only on rising edge change is allowed
		STALL: in std_logic; -- Stall pipeline buffer signal
		O: out std_logic_vector(WIDTH-1 downto 0)
	);
end FlagPSR;


architecture stall of FlagPSR is

	
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