library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BasicCPU_tb is
end entity;

architecture sim of BasicCPU_tb is

  -- DUT ports
  signal ADC_CLK_10    : std_logic := '0';
  signal MAX10_CLK2_50 : std_logic := '0';
  signal PB            : std_logic_vector(1 downto 0) := "11";  -- active low, idle
  signal SW            : std_logic_vector(9 downto 0) := (others => '0');
  signal HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : std_logic_vector(6 downto 0);
  signal LED           : std_logic_vector(9 downto 0);

  constant CLK50_PERIOD : time := 20 ns;   -- 50 MHz
  constant CLK10_PERIOD : time := 100 ns;  -- 10 MHz

  signal sim_done : boolean := false;

begin

  ---------------------------------------------------------------
  -- Device under test
  ---------------------------------------------------------------
  dut : entity work.BasicCPU
    port map (
      ADC_CLK_10    => ADC_CLK_10,
      MAX10_CLK2_50 => MAX10_CLK2_50,
      PB            => PB,
      SW            => SW,
      HEX0          => HEX0,
      HEX1          => HEX1,
      HEX2          => HEX2,
      HEX3          => HEX3,
      HEX4          => HEX4,
      HEX5          => HEX5,
      LED           => LED
    );

  ---------------------------------------------------------------
  -- Clocks
  ---------------------------------------------------------------
  clk50_gen : process
  begin
    while not sim_done loop
      MAX10_CLK2_50 <= '0'; wait for CLK50_PERIOD/2;
      MAX10_CLK2_50 <= '1'; wait for CLK50_PERIOD/2;
    end loop;
    wait;
  end process;

  clk10_gen : process
  begin
    while not sim_done loop
      ADC_CLK_10 <= '0'; wait for CLK10_PERIOD/2;
      ADC_CLK_10 <= '1'; wait for CLK10_PERIOD/2;
    end loop;
    wait;
  end process;

  ---------------------------------------------------------------
  -- Stimulus
  ---------------------------------------------------------------
  stim : process
  begin
    -- Hold reset button (PB(1) active low => '0' = pressed)
    PB <= "10";                 -- PB(1)=1? see note below
    PB <= "01";                 -- PB(1)=0 (reset pressed), PB(0)=1 (fast clock)
    wait for 10 * CLK50_PERIOD;

    -- Release reset; startupreset will keep RESET asserted for 256 cycles
    PB <= "11";
    wait for 300 * CLK50_PERIOD;

    -- Run program from ROM
    SW <= (others => '0');
    wait for 2000 * CLK50_PERIOD;

    -- Exercise debug displays: SW11/SW10 come from PB, so use PB to
    -- change the debug mux. PB(0) pressed would switch to the 1 Hz clock,
    -- so only press PB(1) here (it also resets, so release quickly).

    -- Check that something happened
    assert LED(8) /= 'U' report "clk LED is undefined" severity warning;

    report "Simulation finished" severity note;
    sim_done <= true;
    wait;
  end process;

  ---------------------------------------------------------------
  -- Simple monitor
  ---------------------------------------------------------------
  monitor : process
  begin
    wait until LED(9) = '1';    -- Halt asserted by control unit
    report "CPU halted. HEX3..0 = " &
           to_string(HEX3) & " " & to_string(HEX2) & " " &
           to_string(HEX1) & " " & to_string(HEX0)
           severity note;
    sim_done <= true;
    wait;
  end process;

end architecture;