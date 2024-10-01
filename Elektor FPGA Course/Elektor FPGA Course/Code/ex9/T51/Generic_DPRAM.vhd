

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Generic_DPRam is
	generic(
		RAMAddressWidth : integer := 11;
		RAMDataWidth    : integer := 8
	);
	port (
    CLK       : in  std_logic;
    A0        : in  std_logic_vector(RAMAddressWidth-1 downto 0);
    A1        : in  std_logic_vector(RAMAddressWidth-1 downto 0);
    DI0       : in  std_logic_vector(RAMDataWidth-1 downto 0);
    DI1       : in  std_logic_vector(RAMDataWidth-1 downto 0);
    WE0       : in  std_logic;
    WE1       : in  std_logic;
    CE0       : in  std_logic;
    CE1       : in  std_logic;
    DO0       : out std_logic_vector(RAMDataWidth-1 downto 0);
    DO1       : out std_logic_vector(RAMDataWidth-1 downto 0)
	);
end Generic_DPRam;

architecture rtl of Generic_DPRam is

--  attribute altera_attribute : string;
--  attribute altera_attribute of rtl : signal is "lpm_hint=""ENABLE_RUNTIME_MOD=YES, INSTANCE_NAME=XRAM"" ";

	type RAM_Image is array (2**RAMAddressWidth - 1 downto 0) of std_logic_vector(RAMDataWidth-1 downto 0);
	signal	IRAM	: RAM_Image;
begin

	process (Clk)
	begin
		if Clk'event and Clk = '1' then
-- pragma translate_off
			if not is_x(A0) then
-- pragma translate_on
				if CE0 = '1' then
					DO0 <= IRAM(to_integer(unsigned(A0)));
				end if;
-- pragma translate_off
      else
        DO0 <= (others =>'-');
			end if;
-- pragma translate_on
			if (CE0 and WE0) = '1' then
				IRAM(to_integer(unsigned(A0))) <= DI0;
			end if;
			
-- pragma translate_off
			if not is_x(A1) then
-- pragma translate_on
				if CE1 = '1' then
					DO1 <= IRAM(to_integer(unsigned(A1)));
				end if;
-- pragma translate_off
      else
        DO1 <= (others =>'-');
			end if;
-- pragma translate_on
			if (CE1 and WE1) = '1' then
				IRAM(to_integer(unsigned(A1))) <= DI1;
			end if;
		end if;
	end process;
	
--	-- write ports
--  process (CLK) begin
--    if CLK = '1' and CLK'event then
--      if WE0 = '1' and CE0 = '1' then
--        IRAM(TO_INTEGER(UNSIGNED(A0))) <= DI0;
--      end if;
--      if WE1 = '1' and CE1 = '1' then
--        IRAM(TO_INTEGER(UNSIGNED(A1))) <= DI1;
--      end if;
--    end if;
--  end process;
--  
--  -- read port 0
--  process (CLK) begin
--    if CLK = '1' and CLK'event then
--      -- read port 0
--      if CE0 = '1' then
--        DO0 <= IRAM(TO_INTEGER(UNSIGNED(A0)));
--      end if;
--    end if;
--  end process;
--
--  -- read port 1
--  process (CLK) begin
--    if CLK = '1' and CLK'event then
--      -- read port 1
--      if CE1 = '1' then
--        DO1 <= IRAM(TO_INTEGER(UNSIGNED(A1)));
--      end if;
--    end if;
--  end process;

end;
