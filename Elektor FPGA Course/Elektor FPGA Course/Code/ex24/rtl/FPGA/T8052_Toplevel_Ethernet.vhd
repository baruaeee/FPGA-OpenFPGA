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
use work.T51_Pack.all;

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
       LED        : out   std_logic_vector(7 downto 1);
       DIPSW      : in    std_logic_vector(7 downto 0);
       SWITCH2    : in    std_logic;
       SWITCH3    : in    std_logic;
       SWITCH4    : in    std_logic;
       -- RS232 Signals
       Txd232     : out   std_logic;
       RxD232     : in    std_logic;
       -- I2C
       SCL        : inout std_logic;
       SDA        : inout std_logic;
       
       -- Interface to SevenSeg Display
       SevenSeg_D_o: out std_logic_vector(7 downto 0);
       SevenSegEn_o: out std_logic_vector(4 downto 0);
       -- PS/2 Keyboard connector
       Ps2Clk_io   : inout std_logic;
       -- PS/2 data line. Bidirectional for reading and writing data.
       Ps2Dat_io   : inout std_logic;
       ----------------------------------------------
       -- Ethernet MII
       ----------------------------------------------
       ETH_Reset_o  : out std_logic;
       -- TX
       mtx_clk_pad_i : in  std_logic;
       mtxd_pad_o    : out std_logic_vector(3 downto 0);
       mtxen_pad_o   : out std_logic;
       mtxerr_pad_o  : out std_logic;
       -- RX
       mrx_clk_pad_i : in std_logic;
       mrxd_pad_i    : in std_logic_vector(3 downto 0);
       mrxdv_pad_i   : in std_logic;
       mrxerr_pad_i  : in std_logic;
       mcoll_pad_i   : in std_logic;
       mcrs_pad_i    : in std_logic;
       -- MII
       mdc_o         : out std_logic;
       md_io         : inout std_logic;
       ----------------------------------------------
       -- External SRAM & FLASH
       ----------------------------------------------
       SRAM1_nCS    : out std_logic;
       SRAM1_ADR    : out std_logic_vector(17 downto 0);
       SRAM1_DB     : inout std_logic_vector(15 downto 0);
       SRAM1_nWR    : out std_logic;
       SRAM1_nOE    : out std_logic;
       SRAM1_nBE    : out std_logic_vector(1 downto 0)
       );
end entity T8052_Toplevel;

architecture RTL of T8052_Toplevel is

  component InputSync
    port (
      Input : in  std_ulogic;
      clk   : in  std_ulogic;
      clr_n : in  std_ulogic;
      q     : out std_ulogic);
  end component;
  component altpll0
  	PORT
  	(
  		inclk0		: IN STD_LOGIC  := '0';
  		c0		    : OUT STD_LOGIC ;
  		locked		: OUT STD_LOGIC 
  	);
  end component;

  
  signal Reset_n              : std_logic;
  signal clk                  : std_logic;
  signal locked               : std_logic;
  signal p0,p3                : std_logic_vector(7 downto 0);
  signal p0_out,p1_in,p1_out,P2_out,p3_out : std_logic_vector(7 downto 0);
  signal Txd232_s,RxD232_s    : std_logic;
  signal md_pad_os,md_padoe_s : std_logic;
  signal XRAM_STB_s           : std_logic;
  signal XRAM_WE_s            : std_logic;
  signal XRAM_RD_s            : std_logic;
  signal XRAM_CYC_s           : std_logic;
  signal XRAM_DATO_s          : std_logic_vector(7 downto 0);
  signal XRAM_ADR_s           : std_logic_vector(15 downto 0);
  signal xram_ack_s           : std_logic;
  signal flash_en             : std_logic;

  signal ExDI,ExDI_r          : std_logic_vector(7 downto 0);

  signal DIPSW_sync           : std_logic_vector(7 downto 0);
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
      simenv  => simenv)
    port map(
      Clk        => Clk,
      Rst_n      => Reset_n,
      P0_in      => P0,
      P1_in      => P1_in,
      P2_in      => P2_out,
      P3_in      => P3,
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
      RXD        => RxD232_s,
      RXD_IsO    => open,
      RXD_O      => open,
      TXD        => Txd232_s,
      SevenSeg_D_o => SevenSeg_D_o,
      SevenSegEn_o => SevenSegEn_o,
      Ps2Clk_io    => Ps2Clk_io,   
      Ps2Dat_io    => Ps2Dat_io,
      -- Interface to Ethernet Phy
      -- TX
      mtx_clk_pad_i => mtx_clk_pad_i,
      mtxd_pad_o    => mtxd_pad_o,
      mtxen_pad_o   => mtxen_pad_o,
      mtxerr_pad_o  => mtxerr_pad_o,
      -- RX            -- RX
      mrx_clk_pad_i => mrx_clk_pad_i,
      mrxd_pad_i    => mrxd_pad_i,
      mrxdv_pad_i   => mrxdv_pad_i,
      mrxerr_pad_i  => mrxerr_pad_i,
      mcoll_pad_i   => mcoll_pad_i,
      mcrs_pad_i    => mcrs_pad_i,
      -- MIIM       =>
      mdc_pad_o     => mdc_o,
      md_pad_i      => md_io,
      md_pad_o      => md_pad_os,
      md_padoe_o    => md_padoe_s,
      --
      XRAM_WE_O    => XRAM_WE_s,
      XRAM_STB_O   => XRAM_STB_s,
      XRAM_CYC_O   => XRAM_CYC_s,
      XRAM_ACK_I   => XRAM_ACK_s,
      XRAM_DAT_O   => XRAM_DATO_s,
      XRAM_ADR_O   => XRAM_ADR_s,
      XRAM_DAT_I   => ExDI_r
     );

    process (Reset_n,Clk)
    begin
      if Reset_n='0' then
        ExDI_r <= (others =>'0');
      elsif clk'event and clk = '1' then
        if (XRAM_STB_s and XRAM_ACK_s)='1' then
          ExDI_r <= ExDI;
        end if;
      end if;
    end process;

  md_io       <= md_pad_os when md_padoe_s = '1' else 'Z';
  ETH_Reset_o <= Reset_n;
   
  XRAM_ACK_s <= XRAM_STB_s;
               
  ExDI <= SRAM1_DB(7 downto 0) when XRAM_ADR_s(0)='0' else
          SRAM1_DB(15 downto 8);
              
  SRAM1_ADR <=  "000" & XRAM_ADR_s(15 downto 1);

  SRAM1_DB  <= XRAM_DATO_s & XRAM_DATO_s  when (XRAM_STB_s and XRAM_WE_s)= '1' else 
               (others => 'Z') after 1 ns;
               
  SRAM1_nBE <= "10" after 1 ns when (XRAM_STB_s and not XRAM_ADR_s(0))='1' else 
               "01" after 1 ns when (XRAM_STB_s and     XRAM_ADR_s(0))='1' else
               "11";
  SRAM1_nWR <= '0' after 1 ns when (XRAM_STB_s and XRAM_WE_s)='1' else
               '1';
  SRAM1_nOE <= '0' after 1 ns when (XRAM_STB_s and not XRAM_WE_s)='1' else
               '1';

  SRAM1_nCS <= not XRAM_STB_s;

  TxD232 <= Txd232_s;
  -- Synchronize RS232 Input (RxD)
  ISRxd : InputSync
  port map (
      Input => RxD232,
      clk   => Clk,
      clr_n => Reset_n,
      q     => RxD232_s);

  -- P0: used for I2C bus and Keys
  ISSDA : InputSync
    port map (
      Input => SDA,
      clk   => Clk,
      clr_n => Reset_n,
      q     => p0(0));

  ISSCL : InputSync
    port map (
      Input => SCL,
      clk   => Clk,
      clr_n => Reset_n,
      q     => p0(1));

  SCL  <= '0' when p0_out(1) = '0' else 'Z';
  SDA  <= '0' when p0_out(0) = '0' else 'Z';
        
  ISSw2 : InputSync
  port map (
      Input => SWITCH2,
      clk   => Clk,
      clr_n => Reset_n,
      q     => p0(3));
  ISSw3 : InputSync
  port map (
      Input => SWITCH3,
      clk   => Clk,
      clr_n => Reset_n,
      q     => p0(4));
  ISSw4 : InputSync
  port map (
      Input => SWITCH4,
      clk   => Clk,
      clr_n => Reset_n,
      q     => p0(5));
  
  sync_dp: for i in DIPSW'range generate
    ISDIP : InputSync
    port map (
        Input => DIPSW(i),
        clk   => Clk,
        clr_n => Reset_n,
        q     => DIPSW_sync(i));
  end generate;
  
  -- Also connect SCL and SDA to P0.7 & P0.6
  p0(7 downto 6) <= p0(1 downto 0); 
  p0(2)          <= p0_out(2);
  -- P1: used for LEDs  
  LED <= p1_out(LED'range);
  p1_in <= DIPSW_sync when P3_out(1)='0' else
           p1_out;
  -- P2: not used, because it's internally used as xram-high-byte at some addressing modes (see Intel's 8051 datasheet)

  -- P3: used as control port
  -- Feed back P3 to input
  p3(7 downto 1) <= P3_out(7 downto 1);
  -- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  -- !!!! The connection of P3.0 to Rxd is required for some 8051 programms !!!!
  -- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  P3(0) <= Rxd232_s;

end RTL;





