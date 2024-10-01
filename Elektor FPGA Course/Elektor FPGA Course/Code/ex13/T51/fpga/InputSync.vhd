-- -----------------------------------------------
-- Title:    Synchronisierung eines async. Inputs, 2- Stufig
-- file:     inputsync.vhd
-- language: VHDL 93
-- author:       HSSE / Andreas Voggeneder
-- comments: 
-- history: 
--   11.2001 creation
-- -----------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
--use work.DffGlobal.all;

entity InputSync is
  generic(levels_g     : natural :=2;
          ResetValue_g : std_ulogic := '0');
  port(Input     : in  std_ulogic;
       clk   : in  std_ulogic;
       clr_n : in  std_ulogic;
       q     : out std_ulogic);
end InputSync;

architecture rtl of InputSync is
  signal q1 : std_ulogic_vector(levels_g-1 downto 0);
begin
  process (clk, clr_n)
  begin
    if clr_n = '0' then
      q1 <= (others => ResetValue_g);       -- Reset Condition
    elsif clk'event and clk = '1' then
      q1(0) <= Input;                       -- D Pegel latchen
      for i in 1 to levels_g-1 loop
        q1(i)<=q1(i-1);
      end loop;
    end if;
  end process;
  
  q<=q1(levels_g-1);
end rtl;



