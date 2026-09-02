library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity ControlUnit is 
	port(
		clk: in std_logic;
		-- OPERATION PIPELINE
		OPCODE: in std_logic_vector(3 downto 0); -- The operation that is fetched
		OPFUNC: in std_logic_vector(2 downto 0);
		--DECO_OP: in std_logic_vector(3 downto 0); -- The operation that is to be decoded here
		--EXEC_OP: in std_logic_vector(3 downto 0); -- The operation that is executing currently
		--STOR_OP: in std_logic_vector(3 downto 0);
		
		--To have enough information on whether to 
		--DECO_OP1: in std_logic_vector(3 downto 0); -- Operand 1 of instruction in decode
		--DECO_OP2: in std_logic_vector(3 downto 0); -- Operand 2 of instruction in decode
		--EXEC_OP3: in std_logic_vector(3 downto 0); -- The register that will be written to
		
		
		-- FLAGS from ALU
		carry: in std_logic;
		negative: in std_logic;
		zero: in std_logic;
		
		--RAM. 
		WE: out std_logic; -- Write enable
		ERR: out std_logic; -- Enable Read ROM
		RRO: out std_logic; -- ROM Read OUT. Not sure why theres two...
		
		-- PROGRAM COUNTER
		CE: out std_logic; -- Count Enable increments the count on next rising edge
		CO: out std_logic; -- Count Out allows count on bus
		J: out std_logic;  -- Sets the count to what is on its data bus. J Potential optimization: maybe we could put a register for data in. could save data bus utilization
		CLRC: out std_logic; -- count to Clear (straight away) -> no rising edge needed
		
		-- INSTRUCTION REGISTER - could have multiple for a pipelined system, or atleast some registers with opcodes
		II: out std_logic; -- Load instruction into register
		IO: out std_logic; -- Instruction Out into a bus.
		
		--REGISTERS
		EN: out std_logic; --Allow write to register
		REGO: out std_logic; --Allow Register value out to bus. Register Out
		CLRR: out std_logic;-- Clears all
		
		--ALU
		AO: out std_logic; -- Arithemtic out
		LDA: out std_logic; -- Load A register from bus
		CLRA: out std_logic;
		LDB: out std_logic; -- Load B register from bus
		CLRB: out std_logic;
		
		
		
		-- BUS CONTROL. More bits Will be needed for pipelining 
		SEL: out std_logic_vector(1 downto 0); -- Select which operand is Addresses the Registers.
		
		-- SSD. (Seven Segment Display)
		SSI: out std_logic; -- Seven Segment enable in
		CLRSS: out std_logic -- Clear Seven Segment
	);
end ControlUnit;

-- Since registers open on rising edge then bits must change on falling edge.
architecture orchestration of ControlUnit is

	type Pipline_State is (PIPE, STALL, EMPTY); -- Modes required for pipline either Halt on memory dependencies or empty pipline when branch arises.
	-- STALL: simply waits one microinstruction cycle for any memory dependencies to clear. 
	-- This allows an instruction on the execute stage to clean-up before a dependent instruction
	-- accesses memory (I say one because if memory is accessed on EXEC, however if it is accessed on DECODE then two!)
	
	-- EMPTY: As soon as a branch is detected on the FETH Cycle we dont allow anymore FETCHES to proceed until the branch has executed.
	
	-- PIPE: Proceed normal operation
	
	
	--pipline: process(clk, reset)
begin
		--  Which state will get priority need to make sure that stall goes first then empty or have two seperate states
		--if falling_edge(clk) then
		
			--if (FETCH_OP = '1010' or FETCH_OP = '1011') then -- If instruction is a jump instruction.
				
			--else then
				
				-- write PC to ROM for read
			--	CO <= '1' -- Count Out
				
				-- Read from rom
			--	ERR <= '1'
			--	RRO <= '1'
				
				
				
			--	CE <= '1'; -- Increment
			
		
		--elsif (EXEC_OP3 = DECO_OP2 or EXEC_OP3 = DECO_OP1) then -- Memory Dependency
		--	curr_state <= STALL;
		--end if;
	
		--if (not STORE_OP ='0000') then --make sure operands are coming through
		--	if falling_edge(clk) then
				
				-- Clean up
		--		if(STORE_OP(3 downto 2) = '01' or STORE_OP(3 downto 2) = '00' ) -- Will be a 3 operand write instruction.
			--		ENI <= '1'
	
	
	--programCounter: process(clk, CE, J, CLRC) 
	--begin

	--	if (OPCODE = '0111') or (OPCODE = '0110') then -- if JMP or BR 
	--		if (OPCODE = '0111') then -- if JMP then
	--			CE <= '0' -- stop counting
	--			
	--			STALL <= '1' -- Or perhaps 'flush'
	--		else then 
	--			
	--	else then 
	--		CE <= '1'
	
	--begin 
end orchestration;
