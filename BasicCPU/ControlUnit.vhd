library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity ControlUnit is 
	port(
		--IF/DE
		Halt: out std_logic; -- if Halt set flush=true and CE=false
		Flush: out std_logic;
		
		clk: in std_logic;
		-- OPERATION IN PIPELINE
		OPCODE: in std_logic_vector(3 downto 0); -- The operation that is fetched
		OPFUNC: in std_logic_vector(2 downto 0);
		
		-- FLAGS from ALU
		--carry: in std_logic;
		--negative: in std_logic;
		--zero: in std_logic;
		
		--RAM. 
		WE: out std_logic; -- Write enable
		--ERR: out std_logic; -- Enable Read ROM
		--RRO: out std_logic; -- ROM Read OUT. Not sure why theres two...
		
		-- PROGRAM COUNTER
		CE: out std_logic; -- Count Enable increments the count on next rising edge
		
		--CO: out std_logic; -- Count Out allows count on bus
		JMP: out std_logic;  -- Sets the count to what is on its data bus. J Potential optimization: maybe we could put a register for data in. could save data bus utilization
		JAL: out std_logic; -- Jump and link
		JR: out std_logic; -- Jump to jump register
		
		CLRC: out std_logic; -- count to Clear (straight away) -> no rising edge needed
		
		-- INSTRUCTION REGISTER - could have multiple for a pipelined system, or atleast some registers with opcodes
		
		--REGISTERS
		EN: out std_logic; --Allow write to register
		--REGO: out std_logic; --Allow Register value out to bus. Register Out *Depricated: It is piplined bus isnt shared.
		CLRR: out std_logic;-- Clears all
		
		
		
		--ALU
		--AO: out std_logic; -- Arithemtic out
		EXO: out std_logic;
		IMMB: out std_logic;
		IMO: out std_logic;
		
		-- BUS CONTROL. More bits Will be needed for pipelining 
		-- SEL: out std_logic_vector(1 downto 0); -- Select which operand is Addresses the Registers.
		
		--SWITCHES
		SWSel: out std_logic; -- select switch into bus
		
		-- SSD. (Seven Segment Display)
		SSI: out std_logic -- Seven Segment enable in
		--CLRSS: out std_logic -- Clear Seven Segment
	);
end ControlUnit;

-- Since registers open on rising edge then bits must change on falling edge.
architecture orchestration of ControlUnit is
begin

    process(OPCODE, OPFUNC)
    begin
        -- Safe defaults for every output, every time.
        -- Prevents inferred latches and means each branch
        -- below only needs to override what's different.
        WE    <= '0';
        EN    <= '0';
        Flush <= '0';
        CE    <= '0';
        JMP   <= '0';
        JAL   <= '0';
        JR    <= '0';
        CLRC  <= '0';
        CLRR  <= '0';
        EXO   <= '0';
        IMMB  <= '0';
        IMO   <= '0';
        SWSel <= '0';
        SSI   <= '0';
      
        case OPCODE is
            when "0000" =>  -- NOP
                null;       -- defaults already cover it. Will do nothing in pipeline

            when "0001" =>  -- ALU: rd <= rs, rt
                EN   <= '1';
                EXO  <= '1';
                IMMB <= '0'; -- register operand, not immediate

            when "0010" =>  -- ALUI: rd = rs, imm16
                EN   <= '1';
                EXO  <= '1'; -- enable ALU out
                IMMB <= '1'; -- enable immediate operand passthrough

            when "0011" =>  -- LW: rd <= Mem(8..0)
                WE   <= '0';
                EN   <= '1';
                IMO  <= '1';

            when "0100" =>  -- SW: Mem(8..0) <= rd
                EXO <= '0';
					 WE   <= '1';
				when "0101" => -- LDI: rd <= imm16
				
				when "0110" => --CMP
				
				when "0111" => -- BR
				
            when "1000" => -- JMP: IR <= [11..0]
                JMP   <= '1';
                Flush <= '1'; -- flush IF/DE, wrong instr already fetched

            when "1001" =>  -- JAL: push[IR], IR <= [11..0]
                JMP   <= '1';
                JAL   <= '1';
                Flush <= '1';
				when "1001" =>  -- JR: IR <= pop[IR]
                JMP   <= '1';
                JAL   <= '1';
                Flush <= '1';
				when "1111" =>
					Halt <= '1'; -- feeds op '1111' into instruction register (feedback)
            when others =>
                -- undefined opcode: hold safe defaults
                null;
        end case;

        -- OPFUNC-dependent tweaks nested inside a branch, if needed:
        -- case OPCODE is
        --     when "0001" =>
        --         if OPFUNC = "000" then ... elsif ... end if;
        -- end case;

    end process;

end orchestration;
