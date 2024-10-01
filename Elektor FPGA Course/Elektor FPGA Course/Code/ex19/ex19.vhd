-- -----------------------------------------------
-- Title:    VGA Steuerung
-- file:     VGA.vhd
-- language: VHDL 93
-- author:       HSSE / Andreas Voggeneder
-- comments: 
-- history: 
--   03.2003 creation
-- -----------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ex19 is
  generic (Stages : integer := 10);     -- Number of bits to count. Default 10
  port(clr      : in  std_ulogic;
       clk      : in  std_ulogic;
       VgaRd0   : out std_ulogic;
       VgaRd1   : out std_ulogic;
       VgaGr0   : out std_ulogic;
       VgaGr1   : out std_ulogic;
       VgaBl0   : out std_ulogic;
       VgaBl1   : out std_ulogic;
       VgaHsync : out std_ulogic;
       VgaVsync : out std_ulogic);
end ex19;

architecture rtl of ex19 is
  constant HFRONT_PORCH_c    : natural := 16;
  constant HBACK_PORCH_c     : natural := 48;
  constant HSYNC_c           : natural := 96;
  constant HMAX_c            : natural := HFRONT_PORCH_c+HSYNC_c+HBACK_PORCH_c+640;
  constant VFRONT_PORCH_c    : natural := 10;
  constant VBACK_PORCH_c     : natural := 33;
  constant VSYNC_c           : natural := 2;
  constant VMAX_c            : natural := VFRONT_PORCH_c+VSYNC_c+VBACK_PORCH_c+480;
  
  signal q, Col              : unsigned(Stages-1 downto 0);
  signal Line                : unsigned(Stages-1 downto 0);
  signal HSYNC, VSYNC, VidEn : std_ulogic;
  signal Red, Green, Blue    : std_ulogic_vector(1 downto 0);
--  signal tmp               : std_ulogic_vector(1 downto 0);


  signal sum, rowdist, coldist : unsigned(Stages-1 downto 0);
  signal nrowdist, ncoldist    : unsigned(Stages-1 downto 0);
  signal qen : std_ulogic;
  
begin

  -- http://info.electronicwerkstatt.de/bereiche/monitortechnik/vga/Standard-Timing/
  --
  -- Activ Videobereich (640 x 480)
  -- Horizontal information:
  -- Frontporch : 16 Clk
  -- HSYNC      : 96 Clk
  -- Backporch  : 48 Clk
  --
  -- Vertical information:
  -- Frontporch : 10 Lines
  -- VSYNC      : 2 Lines
  -- Backporch  : 33 Lines
  
  VidEn <= '1' when q >= to_unsigned(HSYNC_c+HBACK_PORCH_c, Stages) and 
                    q < to_unsigned(HSYNC_c+HBACK_PORCH_c+640 , Stages)
           and Line >= to_unsigned(VBACK_PORCH_c, Stages) and 
               Line < to_unsigned(VBACK_PORCH_c+480, Stages)
           else '0';
  -- Calculate Col (0 ... 640)
  -- is only valid when VidEn='1' !
  Col    <= q-to_unsigned(HSYNC_c+HBACK_PORCH_c, Stages);

  vid : process(clk, clr)
  begin
    if clr = '1' then
      HSYNC <= '1';                     -- Reset Condition
      Line <= (others => '0');
      VSYNC <= '1';
      q     <= (others => '0');
      qen   <= '0';
    elsif clk'event and clk = '1' then
      qen <= not qen;
      if qen='1' then
        q <= q+1;
        if q = to_unsigned(HMAX_c-1, Stages) then
          q     <= (others => '0');
          HSYNC <= '0';
          Line <= Line + 1;
          if Line = to_unsigned(VMAX_c-VSYNC_c-1, Stages) then
            VSYNC <= '0';
          elsif Line = to_unsigned(VMAX_c-1, Stages) then
            Line <= (others => '0');
            VSYNC <= '1';
          end if;
        elsif q = to_unsigned(HSYNC_c-1, Stages) then
          HSYNC <= '1';
        end if;
      end if;
    end if;
  end process vid;

  graph : process (clk, clr)
  begin
    if clr = '1' then
      rowdist  <= (others => '0');
      nrowdist <= (others => '0');
      coldist  <= (others => '0');
      ncoldist <= (others => '0');
      sum      <= (others => '0');
    elsif (clk'event) and (clk = '1') then
      if qen = '1' then
        if VidEn = '1' then
          if Line > 240 then
            rowdist <= Line -240;
          else
            rowdist <= 240 - Line;
          end if;
          if rowdist > 120 then
            nrowdist <= rowdist -120;
          else
            nrowdist <= 120 - rowdist;
          end if;
          if Col > 320 then
            coldist <= Col -320;
          else
            coldist <= 320 - Col;
          end if;
          if coldist > 160 then
            ncoldist <= coldist -160;
          else
            ncoldist <= 160 - coldist;
          end if;
          sum <= nrowdist + ncoldist;
    
        else
          rowdist  <= (others => '0');
          nrowdist <= (others => '0');
          coldist  <= (others => '0');
          ncoldist <= (others => '0');
          sum      <= (others => '0');
        end if;
      end if;
    end if;
  end process graph;

  Red   <= sum(3)&sum(2);
  Green <= sum(5)&sum(4);
  Blue  <= sum(7)&sum(6);

  VgaRd0   <= Red(1) and VidEn;
  VgaRd1   <= Red(0) and VidEn;
  VgaGr0   <= Green(1) and VidEn;
  VgaGr1   <= Green(0) and VidEn;
  VgaBl0   <= Blue(1) and VidEn;
  VgaBl1   <= Blue(0) and VidEn;
  VgaHsync <= HSYNC;
  VgaVsync <= VSYNC;

end rtl;




