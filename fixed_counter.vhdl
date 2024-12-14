```vhdl
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fixed_counter is
  port (
    clk : in std_logic;
    rst : in std_logic;
    count : out unsigned(3 downto 0);
    overflow : out std_logic  --Added overflow signal
  );
end entity fixed_counter;

architecture behavioral of fixed_counter is
  signal internal_count : unsigned(3 downto 0) := (others => '0');
begin
  process (clk, rst)
  begin
    if rst = '1' then
      internal_count <= (others => '0');
      overflow <= '0';
    elsif rising_edge(clk) then
      if internal_count = 15 then
        overflow <= '1';
        internal_count <= to_unsigned(15, 4); --Saturates at 15
      else
        internal_count <= internal_count + 1;
        overflow <= '0';
      end if;
    end if;
  end process;
  count <= internal_count;
end architecture behavioral;
```