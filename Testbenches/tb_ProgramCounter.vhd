library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_ProgramCounter is
end entity;

architecture programCount of tb_ProgramCounter is
    signal clk    : std_logic := '0';
    signal CLR    : std_logic := '0';
    signal CE     : std_logic := '1';
    signal JAL    : std_logic := '0';
    signal JMP    : std_logic := '0';
    signal JR     : std_logic := '0';
    signal BUS_IN : std_logic_vector(8 downto 0) := "000011110"; -- 30
    signal CO     : std_logic_vector(8 downto 0);

begin
    pc : entity work.ProgramCounter
        port map (
            clk    => clk,
            CLR    => CLR,
            CE     => CE,
            JAL    => JAL,
            JMP    => JMP,
            JR     => JR,
            BUS_IN => BUS_IN,
            CO     => CO
        );

    clk <= not clk after 10 ns; -- 20ns period

    procession : process
    begin
        CE <= '1';

        -- CLR should reset instantly, regardless of CE
        CLR <= '1';
        wait for 10 ns;
        assert to_integer(unsigned(CO)) = 0
            report "CLR of ProgramCounter failed"
            severity error;
        wait for 10 ns;
        CLR <= '0';

        -- CE: counting, CO should be 0 as of now
        wait for 80 ns; -- 4 cycles
        assert to_integer(unsigned(CO)) = 4
            report "CE failed, expected 4 got " & integer'image(to_integer(unsigned(CO)))
            severity error;

        -- JMP: CO should load BUS_IN directly, not count
        BUS_IN <= std_logic_vector(to_unsigned(200, 9));
        JMP    <= '1';
        wait until rising_edge(clk);
        wait for 1 ns; -- let signal settle post-edge
        assert to_integer(unsigned(CO)) = 200
            report "JMP failed, expected 200 got " & integer'image(to_integer(unsigned(CO)))
            severity error;
        JMP <= '0';

        -- JAL: jump to 77, should internally push current CO (say it was 4) onto the stack
        BUS_IN <= std_logic_vector(to_unsigned(77, 9));
        JAL    <= '1';
        wait until rising_edge(clk);
        wait for 1 ns;
        assert to_integer(unsigned(CO)) = 77
            report "JAL failed, expected 77 got " & integer'image(to_integer(unsigned(CO)))
            severity error;
        JAL <= '0';

        -- let it run a couple cycles so CO != the return address, proving JR doesn't just coincidentally match
        wait for 40 ns; -- 2 cycles, CO should be 79 now

        -- JR: deliberately drive BUS_IN to garbage to prove it's ignored
        BUS_IN <= std_logic_vector(to_unsigned(999 mod 512, 9));
        JR     <= '1';
        wait until rising_edge(clk);
        wait for 1 ns;
        assert to_integer(unsigned(CO)) = 4
            report "JR failed, expected return address 4 got " & integer'image(to_integer(unsigned(CO)))
            severity error;
        JR <= '0';
        -- Priority: CE and JMP both high -> JMP wins, CO = BUS_IN, not BUS_IN+1
        BUS_IN <= std_logic_vector(to_unsigned(50, 9));
        CE     <= '1';
        JMP    <= '1';
        wait until rising_edge(clk);
        wait for 1 ns;
        assert to_integer(unsigned(CO)) = 50
            report "CE/JMP priority failed, expected 50 got " & integer'image(to_integer(unsigned(CO)))
            severity error;
        JMP <= '0';

        report "All ProgramCounter tests completed";
        std.env.stop; -- VHDL-2008
        wait;
    end process;

end architecture;