library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity ControlUnit is 
	port(
		clk: in std_logic;
		OPCODE: in std_logic_vector(3 downto 0); -- The operation that is fetched
		
	-- IF/DECODE STAGE
		-- PROGRAM COUNTER
		CE: out std_logic; -- Count Enable increments the count on next rising edge
		JMP: out std_logic;  -- Sets the count to what is on its data bus. J Potential optimization: maybe we could put a register for data in. could save data bus utilization
		JAL: out std_logic; -- Jump and link
		JR: out std_logic; -- Jump to jump register
		BR: out std_logic; -- Branch Instruction
		CLRC: out std_logic; -- count to Clear (straight away) -> no rising edge needed
		
		--Control pipeline from decode stage
		Halt: out std_logic; -- if Halt set flush=true and CE=false
		Flush: out std_logic;
		
		
	--1. EXECUTE STAGE
		FWEX: out std_logic; --enable forwarding for execute
		EXO: out std_logic; -- select A passthrough in Execute
		IMMBO: out std_logic; --select immediate into B of ALU
		SHFTO: out std_logic; -- Slect shift unit output to out bus
		
	--2. WRITEBACK STAGE
		FWWB: out std_logic; --enable forwarding for writeback
	--2.1. INPUT SELECTION
		IMO: out std_logic; -- Selects Immediate value into bus
		SWO: out std_logic; -- select switch into bus
		LIO: out std_logic; -- load instruction out
		
	--2.2. DEVICE SELECTION
		-- SSD 
		SSEN: out std_logic; -- Seven Segment enable in
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

		Flush <= '0';
		CE    <= '0';
		JMP   <= '0';
		JAL   <= '0';
		JR    <= '0';
		CLRC  <= '0';
		CLRR  <= '0';

		--Forwarding Defaults
		FWEX <= '0'; -- most instructions store to register thus have an rd which would need to be forwarded.
		FWWB <='0';

		--select EX output
		EXO   <= '0';
		IMMBO <= '0';
		SHFTO <= '0';

		--select WB input
		IMO   <= '0';
		SWO   <= '0';
		LIO   <= '0';
		--select WB device
		MEN   <= '0';
		REN   <= '0';
		SSEN  <= '0';

		-- below only needs to override what's different.
		case OPCODE is
			when "0000" =>  -- NOP
				null;       -- defaults already cover it. Will do nothing in pipeline

			when "0001" =>  -- ALU: rd <= rs, rt
				REN   <= '1'; --Enable Register IN Write 
				-- Dont need to do anything else for this
				FWEX <='1';
				FWWB <='1';
			when "0010" =>  -- ALUI: rd = rs, imm16
				REN   <= '1'; --Enable Register IN Write 
				IMMBO <= '1'; -- enable immediate operand passthrough

			when "0011" =>  -- LW: rd <= Mem(8..0)
				REN   <= '1';
				IMO  <= '1';

			when "0100" =>  -- SW: Mem(8..0) <= rd
				MEN   <= '1'; -- Memory write enable
				EXO <= '1'; -- enable A passthrough 

			when "0101" => -- LDI: rd <= imm16
				IMO <= '1'; --select imm16 passthrough on bus
				LIO <= '1'; --select load instruction passthrough to bus

			when "0110" => --CMP

			when "0111" => -- BR

			when "1000" => -- JMP: IR <= [11..0]
				JMP   <= '1';
				Flush <= '1'; -- flush IF/DE, wrong instr already fetched

			when "1001" =>  -- JAL: push[IR], IR <= [11..0]
				JMP   <= '1';
				JAL   <= '1';
				Flush <= '1';
			when "1010" =>  -- JR: IR <= pop[IR]
				JMP   <= '1';
				JAL   <= '1';
				Flush <= '1';

			when "1010" =>  -- SHIFT: IR <= pop[IR]
				REN <= '1';
				SHFTO <= '1';

			when "1111" =>
				Halt <= '1'; -- feeds op '1111' into instruction register (feedback)
			when others =>
				null;-- undefined opcode: hold safe defaults
		end case;

		-- OPFUNC-dependent tweaks nested inside a branch, if needed:
		-- case OPCODE is
		--     when "0001" =>
		--         if OPFUNC = "000" then ... elsif ... end if;
		-- end case;

	end process;

end orchestration;
