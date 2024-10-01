

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Generic_Ram is
	generic(
		RAMAddressWidth : integer := 8;
		RAMDataWidth    : integer := 8
	);
	port (
		Clk			: in std_logic;
		En			: in std_logic;
		Wr			: in std_logic;
		DIn			: in std_logic_vector(RAMDataWidth-1 downto 0);
		Addr	  : in std_logic_vector(RAMAddressWidth-1 downto 0);
		Dout		: out std_logic_vector(RAMDataWidth-1 downto 0)
	);
end Generic_Ram;

architecture rtl of Generic_Ram is

--  attribute altera_attribute : string;
--  attribute altera_attribute of rtl : signal is "lpm_hint=""ENABLE_RUNTIME_MOD=YES, INSTANCE_NAME=XRAM"" ";

	type RAM_Image is array (2**RAMAddressWidth - 1 downto 0) of std_logic_vector(RAMDataWidth-1 downto 0);
	signal	IRAM	: RAM_Image;
begin

	process (Clk)
	begin
		if Clk'event and Clk = '1' then
-- pragma translate_off
			if not is_x(Addr) then
-- pragma translate_on
				if En = '1' then
					Dout <= IRAM(to_integer(unsigned(Addr)));
				end if;
-- pragma translate_off
      else
        Dout <= (others =>'-');
			end if;
-- pragma translate_on
			if (En and Wr) = '1' then
				IRAM(to_integer(unsigned(Addr))) <= DIn;
--				if Int_Addr_r_i = Addr then
--					Dout <= DIn;
--				end if;
			end if;
		end if;
	end process;
end;
