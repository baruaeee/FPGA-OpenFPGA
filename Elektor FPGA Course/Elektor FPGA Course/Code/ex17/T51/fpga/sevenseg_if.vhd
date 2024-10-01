-- -----------------------------------------------
-- Title:    320 x 240 BW LCD Controller
-- file:     lcd_if.vhd
-- language: VHDL 93
-- author:       HSSE / Andreas Voggeneder
-- comments: 
-- history: 
--   1.2005 creation
-- -----------------------------------------------


library IEEE;
library Work;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity sevenseg_if is
  port(clk_i          : in std_logic;
       reset_n_i      : in std_logic;
       -- Interface to SFR's
       sevseg_con_sel	: in  std_logic; -- SevenSeg Control Register Enable
       sevseg_con_wr	: in  std_logic; -- SevenSeg Control Register Write Enable
       sevseg_data_sel: in  std_logic_vector(3 downto 0); -- SevenSeg Data Register 0-3 Enable
       sevseg_data_wr	: in  std_logic_vector(3 downto 0); -- SevenSeg Data Register 0-3 Write Enable
       SevSeg_En_Sel  : in  std_logic;
		   SevSeg_En_Wr   : in  std_logic;
       SFR_Data_i		  : in  std_logic_vector(7 downto 0);
		   SFR_Data_o	    : out std_logic_vector(7 downto 0);
       -- Interface to SevenSeg Display
       SevenSeg_D_o   : out std_logic_vector(7 downto 0);
       SevenSegEn_o   : out std_logic_vector(4 downto 0)
       );
end entity sevenseg_if;

architecture RTL of sevenseg_if is

  signal Counter     : unsigned(15 downto 0);   -- 16 bit counter for ~400Hz = 100Hz Mux frequency
  subtype Byte_t is std_logic_vector(7 downto 0);
  type LedReg_t is array (0 to 3) of Byte_t ;

  -- SFR's
  signal LedReg      : LedReg_t;
  signal CtrlReg     : std_logic_vector(7 downto 0);
  signal EnableReg   : std_logic_vector(3 downto 0);
  signal SevenSegVal : std_logic_vector(3 downto 0);
  signal SevenSegMux : unsigned(1 downto 0);
  
  signal SevSegLine      : std_logic_vector(7 downto 0);
  signal SevenSegEn      : std_logic;
  signal SevenSegDP      : std_logic;
  signal Mode_s          : std_logic_vector(1 downto 0);
  
begin
  -- SFR read multiplexer 
   SFR_Data_o  <= LedReg(0) when sevseg_data_sel(0)='1' else 
                  LedReg(1) when sevseg_data_sel(1)='1' else
                  LedReg(2) when sevseg_data_sel(2)='1' else
                  LedReg(3) when sevseg_data_sel(3)='1' else 
                  CtrlReg(7 downto 4)&"00"&CtrlReg(1 downto 0) when sevseg_con_sel='1' else  
                  "0000"&EnableReg                             when SevSeg_En_Sel='1' else
                  (others =>'-'); 

  -- Control Register:                                                                                       
  -- bit 0,1: Mode (00 = IO, 01 = HEX, 02 = RAW)
  -- bit 4:   DP 1 (HEX Mode)
  -- bit 5:   DP 2 (HEX Mode)
  -- bit 6:   DP 3 (HEX Mode)
  -- bit 7:   DP 4 (HEX Mode)

  Mode_s <= CtrlReg(1 downto 0);
  
  process (reset_n_i, clk_i)
	begin
		if reset_n_i = '0' then
			CtrlReg   <= (others => '0');
			EnableReg <= (others => '0');
      LedReg    <= (others => (others =>'0'));
		elsif clk_i'event and clk_i = '1' then
      if sevseg_con_wr = '1' then
        CtrlReg <= SFR_Data_i(CtrlReg'range);
      end if;
      if SevSeg_En_Wr='1' then
        EnableReg <= SFR_Data_i(EnableReg'range);
      end if;
      for i in sevseg_data_wr'range loop
        if sevseg_data_wr(i)='1' then
          LedReg(i) <= SFR_Data_i;
        end if;
      end loop;
    end if;
  end process;
 
   -- 7 Segmentdecoder
  SevSeg : process (SevenSegVal,SevenSegEn,Mode_s,SevenSegDP) is
    variable tmp_v : std_logic_vector(6 downto 0);
  begin
    tmp_v := (others =>'0');
    if SevenSegEn='1' then
      if Mode_s = "01" then
        -- HEX Mode
        case SevenSegVal(3 downto 0) is
          when "0000" => tmp_v := "1111110";
          when "0001" => tmp_v := "0110000";
          when "0010" => tmp_v := "1101101";
          when "0011" => tmp_v := "1111001";
          when "0100" => tmp_v := "0110011";
          when "0101" => tmp_v := "1011011";
          when "0110" => tmp_v := "1011111";
          when "0111" => tmp_v := "1110000";
          when "1000" => tmp_v := "1111111";
          when "1001" => tmp_v := "1111011";
          when "1010" => tmp_v := "1110111";
          when "1011" => tmp_v := "0011111";
          when "1100" => tmp_v := "1001110";
          when "1101" => tmp_v := "0111101";
          when "1110" => tmp_v := "1001111";
          when "1111" => tmp_v := "1000111";
          when others => null;
        end case;
      end if;
    end if;
    SevSegLine <= (SevenSegDP & tmp_v(6 downto 0));
  end process SevSeg;
  
  -- generate a 100 Hz counter for multiplexing the display
  mux : process(clk_i, reset_n_i)
    variable ones : unsigned(Counter'range):=(others =>'1');
  begin
    if reset_n_i = '0' then
      Counter     <=(others=>'0');
      SevenSegMux <=(others=>'0');
    elsif clk_i'event and clk_i = '1' then
      Counter <= Counter+1;
      -- counter overflow ?
      if Counter=ones then
        -- yes, switch to next display
        SevenSegMux <= SevenSegMux +1;
      end if;  
    end if;
  end process mux;
  
  -- multiplexer
  process(LedReg,SevenSegMux)
    variable tmp : std_logic_vector(7 downto 0);
  begin
    -- bit 0 of SevenSegMux selects between low and high nibble,
    -- bit 1 of SevenSegMux selects between byte 0 and 1
    -- get selected byte
    if SevenSegMux(1)='1' then
      tmp := LedReg(1);
    else
      tmp := LedReg(0);
    end if;
    -- get selected nibble
    if(SevenSegMux(0)='1') then
      SevenSegVal <= tmp(3 downto 0);
    else
      SevenSegVal <= tmp(7 downto 4);
    end if;
  end process;
  
  SevenSegEn  <= EnableReg(to_integer(SevenSegMux));
  SevenSegDP  <= CtrlReg(4+to_integer(SevenSegMux));
  
  SevenSeg_D_o <= SevSegLine                      when Mode_s = "01" else
                  LedReg(to_integer(SevenSegMux)) when Mode_s = "10" else
                  LedReg(0);
                  
  
  process(SevenSegMux, Mode_s, LedReg)
  begin
    -- default assignement to prevent latches
    SevenSegEn_o <= (others => '0');
    if Mode_s ="00" then
      -- IO-Mode, use LedReg(1) to select one display (software multiplexing)
      SevenSegEn_o <= LedReg(1)(SevenSegEn_o'range);
    else
      -- automatic multiplexing of displays
      SevenSegEn_o(to_integer(SevenSegMux)) <= '1';
    end if;
  end process;
end RTL;
