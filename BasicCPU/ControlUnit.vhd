library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity ControlUnit is 
	port(
		clk: in std_logic;
		OPCODE: in std_logic_vector(3 downto 0); -- The operation that is fetched
		
	-- IF/DECODE STAGE
		Halt: out std_logic; -- if Halt set flush=true and CE=false
		Flush: out std_logic;
		
		-- PROGRAM COUNTER
		CE: out std_logic; -- Count Enable increments the count on next rising edge
		JMP: out std_logic;  -- Sets the count to what is on its data bus. J Potential optimization: maybe we could put a register for data in. could save data bus utilization
		JAL: out std_logic; -- Jump and link
		JR: out std_logic; -- Jump to jump register
		BR: out std_logic; -- Branch Instruction
		CLRC: out std_logic; -- count to Clear (straight away) -> no rising edge needed
		
		--Control pipeline from decode stage
		
		RDIN: out std_logic; -- enable rd as register read into A
		
		
	 --FW: out std_logic; -- enable forwarding for the instruction *Depricated: Can just use REN bit
	--1. EXECUTE STAGE
		IO: out std_logic; -- is IO operation
		IMMO: out std_logic; -- Selects Immediate value into bus
		EXO: out std_logic; -- select A passthrough in Execute
		IMMBO: out std_logic; --select immediate into B of ALU
		SHFTO: out std_logic; -- Slect shift unit output to out bus
		MEMO: out std_logic; -- load instruction, memory out
		ALU2: out std_logic;
	--2. WRITEBACK STAGE
	--2.1. INPUT SELECTION
		-- *Depricated
	--2.2. DEVICE SELECTION
		-- REGISTERS
		REN: out std_logic; --Allow write to register
		CLRR: out std_logic;-- Clears the all contents
		-- RAM. 
		MEN: out std_logic -- Memory Write enable
		
	);
end ControlUnit;

-- Since registers open on rising edge then bits must change on falling edge.
architecture orchestration of ControlUnit is
begin

	process(OPCODE)
	begin
		-- Safe defaults for every output, every time.
		-- Prevents inferred latches and means each branch
		CLRC  <= '0';
		CLRR  <= '0';
		
		Flush <= '0';
		
		CE    <= '1';
		JMP   <= '0';
		JAL   <= '0';
		JR    <= '0';
		BR		<= '0';
		
		RDIN  <= '0';
		
		IO		<= '0';
		ALU2 	<= '0';
		EXO   <= '0';
		IMMBO <= '0';
		SHFTO <= '0';
		IMMO  <= '0';
		MEMO  <= '0';
		
		MEN   <= '0';
		REN   <= '0';
	 --SSEN  <= '0'; * Depricated: moved to EX

		-- below only needs to override what's different.
		case OPCODE is
			when "0000" =>  -- NOP
				null;       -- defaults already cover it. Will do nothing in pipeline

			when "0001" =>  -- ALU: rd <= rs, rt
				REN   <= '1'; --Enable Register IN Write 
				
			when "0010" =>  -- ALUI: rd = rs, imm16
				REN   <= '1'; --Enable Register IN Write 
				IMMBO <= '1'; -- enable immediate operand passthrough

			when "0011" =>  -- LW: rd <= [addr]
				REN   <= '1';
				MEMO 	<= '1'; --select load instruction passthrough to bus
			when "0100" =>  -- SW: [addr] <= rd
				MEN   <= '1'; -- Memory write enable
				EXO 	<= '1'; -- enable A passthrough 
				RDIN 	<= '1';
				
			when "0101" => -- LDI: rd <= imm16
				REN	<= '1';
				IMMO 	<= '1'; --select imm16 passthrough on bus
			
			when "0110" => --CMP
				null; -- * Depricated
				
			when "0111" => -- BR
				BR 	<= '1';
			when "1000" => -- JMP: IR <= [11..0]
				JMP   <= '1';
			when "1001" =>  -- JAL: push[IR], IR <= [11..0]
				JAL   <= '1';
			when "1010" =>  -- JR: IR <= pop[IR]
				JR   	<= '1';
			
			when "1010" =>  -- SHIFT: rd<= rs<<amt
				REN 	<= '1';
				SHFTO <= '1';
			when "1100" => -- ALU2: 
				REN  	<= '1';
				ALU2  <= '1';
				
			when "1110" => -- IO: Instruction register
				IO <= '1'; 
				
			when "1111" =>
				Halt <= '1'; -- feeds op '1111' into instruction register (endless inescapable feedback)
				CE   <= '0';
			when others =>
				null;-- undefined opcode: hold safe defaults
		end case;
		
		--Not needed
		-- OPFUNC-dependent tweaks nested inside a branch, if needed:
		-- case OPCODE is
		--     when "0001" =>
		--         if OPFUNC = "000" then ... elsif ... end if;
		-- end case;
		
		--if (BR = '1' or JMP = '1' or JAL = '1' or JR = '1') then-- flush IF/DE, wrong instr already fetched
		--	Flush = '1';
		--end if;
		
	end process;

end orchestration;
