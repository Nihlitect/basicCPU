library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Stack is
	generic (
		DW: integer := 16;  -- Width of each stack element
		DEPTH: integer := 10  -- Maximum number of elements in the stack
		);
	port (
		Clk: in  std_logic;
		RESET: in  std_logic;  -- Active-high synchronous reset
		EN: in  std_logic;  -- Operation enable line
		PUSH: in  std_logic;  -- Assert high to push data
		POP: in  std_logic;  -- Assert high to pop data
		
		D: in  std_logic_vector(DW-1 downto 0); -- data in
		O: out std_logic_vector(DW-1 downto 0); -- output of top of stack
		
		FULL: out std_logic;
		EMPTY: out std_logic;
		AMT: out std_logic_vector(3 downto 0)  
    );
end entity Stack;

architecture stacker of Stack is
	-- Define the memory array representing the internal stack storage
	type stack_mem_def is array (0 to DEPTH-1) of std_logic_vector(DW-1 downto 0);
	
	signal stack_mem : stack_mem_def := (others => (others => '0'));

	-- Stack pointer points to the *next available empty slot* (Empty Descending approach)
	signal sp        : integer range 0 to DEPTH := 0;

	-- Internal status signals
	signal is_full   : std_logic;
	signal is_empty  : std_logic;
begin
-- Drive status flags dynamically based on the Stack Pointer position
	is_full  <= '1' when (sp = DEPTH) else '0';
	is_empty <= '1' when (sp = 0)     else '0';

	FULL  <= is_full;
	EMPTY <= is_empty;

	-- Core Stack Synchronous Logic Process
	process(Clk)
	begin
		if falling_edge(Clk) then
			if RESET = '1' then
				sp <= 0;
				O  <= (others => '0');
			elsif EN = '1' then
				-- Priority 1: PUSH operation (Only if stack is not full)
				if PUSH = '1' and is_full = '0' then
					stack_mem(sp) <= D;
					sp <= sp + 1;

				-- Priority 2: POP operation (Only if stack is not empty)
				-- If pushing and popping occur simultaneously, Push takes precedence here
				elsif POP = '1' and is_empty = '0' then
					O <= stack_mem(sp - 1);
					sp <= sp - 1;
				end if;
			end if;
		end if;
	end process;

	AMT <= std_logic_vector(to_unsigned(sp, 4)); -- The amount of items in stack
end stacker;
