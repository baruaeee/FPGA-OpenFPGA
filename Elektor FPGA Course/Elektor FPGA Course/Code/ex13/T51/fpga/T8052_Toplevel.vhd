-- -----------------------------------------------
-- Title:    Toplevel Entity of 8052 CPU
-- file:     T8052_Toplevel.vhd
-- language: VHDL 93
-- author:       HSSE / Andreas Voggeneder
-- comments:
-- history:
--   05.2006 creation
-- -----------------------------------------------


library IEEE;
library Work;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Hardware Schnittstelle für 8051
entity T8052_Toplevel is
  generic(
        -- excludes FPGA specific blocks (DLL, RAM_ALTERA)
        -- when set to 1 (speeds up simulation)
        -- HAVE TO SET to 0 for synthesis !
        simenv      : integer := 0);
  port(clk_50MHz  : in    std_logic;
       -- SW1 used as async. Reset (high active)
       SWITCH1    : in    std_logic;
       LED        : out   std_logic_vector(7 downto 1)
       );
end entity T8052_Toplevel;

architecture RTL of T8052_Toplevel is

  component altpll0
  	PORT
  	(
  		inclk0		: IN STD_LOGIC  := '0';
  		c0		: OUT STD_LOGIC ;
  		locked		: OUT STD_LOGIC 
  	);
  end component;


  signal RESET,Reset_n        : std_logic;
  signal clk                  : std_logic;
  signal locked               : std_logic;
  signal p0_out,p1_out,P2_out,p3_out : std_logic_vector(7 downto 0);
  signal XRAM_STB_s           : std_logic;
  signal XRAM_WE_s            : std_logic;
  signal XRAM_RD_s            : std_logic;
  signal XRAM_CYC_s           : std_logic;
  signal XRAM_ACK_s           : std_logic;
  signal XRAM_DATO_s          : std_logic_vector(7 downto 0);
  signal XRAM_ADR_s           : std_logic_vector(15 downto 0);
  signal XRAM_DATI_s          : std_logic_vector(7 downto 0);
  signal OUTPUT               : std_logic_vector(7 downto 0);

begin
  use_dll: if simenv=0 generate
    dll: altpll0
    	port map(
    		inclk0	=> clk_50MHz,
    		c0		  => clk,
    		locked  => locked
    	);
  
    Reset_n <= SWITCH1 nor not locked;
  end generate;
  
  no_dll:if simenv/=0 generate
    clk      <= clk_50MHz;
    Reset_n  <= not SWITCH1;
  end generate;

  u0 : entity work.T8052
    generic map(
      simenv => simenv)
    port map(
      Clk        => Clk,
      Rst_n      => Reset_n,
      P0_in      => P0_out,
      P1_in      => P1_out,
      P2_in      => P2_out,
      P3_in      => P3_out,
      P0_out     => P0_out,
      P1_out     => P1_out,
      P2_out     => P2_out,
      P3_out     => P3_out,
      INT0       => '1',
      INT1       => '1',
      T0         => '1',
      T1         => '1',
      T2         => '1',
      T2EX       => '1',
      RXD        => '1',
      RXD_IsO    => open,
      RXD_O      => open,
      TXD        => open,
      XRAM_WE_O  => XRAM_WE_s,
      XRAM_STB_O => XRAM_STB_s,
      XRAM_CYC_O => XRAM_CYC_s,
      XRAM_ACK_I => XRAM_ACK_s,
      XRAM_DAT_O => XRAM_DATO_s,
      XRAM_ADR_O => XRAM_ADR_s,
      XRAM_DAT_I => XRAM_DATI_s
      );

  RESET <= not Reset_n;

  u1: entity work.wish_output
    port map (
      CLK    => Clk,
      RESET  => RESET,
      WE_IN  => XRAM_WE_s,
      STB_IN => XRAM_STB_s,
      CYC_IN => XRAM_CYC_s,
      DAT_IN => XRAM_DATO_s,
      ADR_IN => XRAM_ADR_s,
      DAT_O  => XRAM_DATI_s,
      ACK_O  => XRAM_ACK_s,
      OUTPUT => OUTPUT);
    
    LED <= OUTPUT(7 downto 1);


end RTL;





