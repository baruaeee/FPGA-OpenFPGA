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
       
       VgaRd0   : out std_ulogic;
       VgaRd1   : out std_ulogic;
       VgaGr0   : out std_ulogic;
       VgaGr1   : out std_ulogic;
       VgaBl0   : out std_ulogic;
       VgaBl1   : out std_ulogic;
       VgaHsync : out std_ulogic;
       VgaVsync : out std_ulogic;
       ----------------------------------------------
       -- Ethernet
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
       SRAM1_nBE    : out std_logic_vector(1 downto 0);
       SRAM2_nCS    : out std_logic;
       SRAM2_ADR    : out std_logic_vector(17 downto 0);
       SRAM2_DB     : inout std_logic_vector(7 downto 0);
       SRAM2_nWR    : out std_logic;
       SRAM2_nOE    : out std_logic;
       SRAM2_nBE    : out std_logic_vector(1 downto 0);
       FLASH_nCE   : out std_logic;
       FLASH_nWR   : out std_logic;
       FLASH_nOE   : out std_logic
       );
end entity T8052_Toplevel;

architecture RTL of T8052_Toplevel is
  -- 150 ns Read, 200 ns Write access time
  -- for 25 MHz
  constant FLASH_WAITSTATES_c : natural := 4;

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
  component Graphiccard
  generic(async_read_g : in natural :=0);
  port (
    clr_n_i      : in  std_ulogic;
    clk_i        : in  std_ulogic;
    VgaRd0_o     : out std_ulogic;
    VgaRd1_o     : out std_ulogic;
    VgaGr0_o     : out std_ulogic;
    VgaGr1_o     : out std_ulogic;
    VgaBl0_o     : out std_ulogic;
    VgaBl1_o     : out std_ulogic;
    VgaHsync_o   : out std_ulogic;
    VgaVsync_o   : out std_ulogic;
    CPU_Adr_i     : in  std_ulogic_vector(13 downto 0);
    CPU_CS_i      : in  std_ulogic;
    CPU_DataIn_i  : in  std_ulogic_vector(7 downto 0);
    CPU_Rd_i      : in  std_ulogic;
    CPU_Wr_i      : in  std_ulogic;
    CPU_DataOut_o : out std_ulogic_vector(7 downto 0);
    CPU_Irq_o     : out std_ulogic_vector(1 downto 0));
  end component;
  
  constant ext_rom_c          : natural := 1;
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
  signal XRAM_ADR_s           : std_logic_vector(18 downto 0);
  signal VGA_DOUT_s           : std_ulogic_vector(7 downto 0);
  signal vga_cs               : std_logic;
  signal xram_ack_s           : std_logic;
  signal flash_en             : std_logic;
  signal vga_en               : std_logic;
  signal ws_cnt               : natural range 0 to FLASH_WAITSTATES_c;
  signal max_ws_cnt           : natural;
  signal ExDI,ExDI_r          : std_logic_vector(7 downto 0);
  signal FLASH_WRData_Reg     : std_logic_vector(7 downto 0);  
  signal FLASH_WREN           : std_logic;
  signal ROM_ADR_s            : std_logic_vector(15 downto 0);
  signal ROM_Dat_s            : std_logic_vector(7 downto 0);
  signal rom_ram_en_s         : std_logic;
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
      ext_rom => ext_rom_c,
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
      ROM_ADR_O    => ROM_ADR_s,   
      ROM_DAT_I    => ROM_DAT_s,   
      ROM_RAM_EN_O => ROM_RAM_EN_s,
      XRAM_WE_O    => XRAM_WE_s,
      XRAM_RD_O    => XRAM_RD_s,
      XRAM_STB_O   => XRAM_STB_s,
      XRAM_CYC_O   => XRAM_CYC_s,
      XRAM_ACK_I   => XRAM_ACK_s,
      XRAM_DAT_O   => XRAM_DATO_s,
      XRAM_ADR_O   => XRAM_ADR_s,
      XRAM_DAT_I   => ExDI_r, --std_logic_vector(XRAM_DATI_s),
      FLASH_EN_O   => Flash_en,
      VGA_EN_O     => vga_en
     );

  md_io       <= md_pad_os when md_padoe_s = '1' else 'Z';
  ETH_Reset_o <= Reset_n;

  -- 150 ns Read, 200 ns Write access time
  max_ws_cnt <= FLASH_WAITSTATES_c when (XRAM_WE_s and Flash_en)='1' else
                FLASH_WAITSTATES_c-1;

    process (Reset_n,Clk)
    begin
      if Reset_n='0' then
        ws_cnt <= 0;
        ExDI_r <= (others =>'0');
      elsif clk'event and clk = '1' then
        if XRAM_STB_s='1' then
          if XRAM_ACK_s ='1' then
            ExDI_r <= ExDI;
          end if;
          if ws_cnt/=max_ws_cnt then
            ws_cnt <= ws_cnt+1;
          end if;
        else
          ws_cnt <=0;
        end if;
      end if;
    end process;
    
  XRAM_ACK_s <= '0' when (Flash_en and XRAM_STB_s)='1' and ws_cnt/=max_ws_cnt else
                XRAM_STB_s;

  SRAM2_nBE <= "10" after 1 ns when (XRAM_STB_s and not Flash_en)='1' else 
--              "01" when (XRAM_STB_s and not Flash_en and     XRAM_ADR_s(0))='1' else
              "11";
              
--  SRAM_ADR <= XRAM_ADR_s(XRAM_ADR_s'high downto 1)   after 1 ns when (not Flash_en and XRAM_STB_s)='1' else
--              XRAM_ADR_s(XRAM_ADR_s'high-1 downto 0) after 1 ns when (Flash_en and XRAM_STB_s)='1' else
--              (others =>'0');
    SRAM2_ADR <= XRAM_ADR_s(SRAM2_ADR'range) when (XRAM_STB_s)='1' else
                (others =>'0') after 1 ns;
                               
    SRAM2_DB  <= FLASH_WRData_Reg when FLASH_WREN='1' else
                 XRAM_DATO_s  when (XRAM_STB_s and XRAM_WE_s)= '1' else 
                 (others => 'Z') after 1 ns;
    SRAM2_nWR <= '0' after 1 ns when (XRAM_STB_s and XRAM_WE_s and not Flash_en)='1' else
                 '1';
    SRAM2_nOE <= '0' after 1 ns when (XRAM_STB_s and XRAM_RD_s and not Flash_en)='1' else
                 '1';

    SRAM2_nCS <= '0' when (XRAM_STB_s and not Flash_en and 
                           not(XRAM_ADR_s(15) and ROM_RAM_EN_s))='1' else
                 '1';
              
    FLASH_nCE   <= '0' when (XRAM_STB_s and Flash_en)='1' else
                   '1';
    FLASH_nWR   <= '0' when (XRAM_STB_s and XRAM_WE_s and Flash_en)='1' else
                   '1';
    FLASH_nOE   <= '0' when (XRAM_STB_s and XRAM_RD_s and Flash_en)='1' else
                   '1';
                
    ExDI     <= std_logic_vector(VGA_DOUT_s) when (not ROM_RAM_EN_s and vga_en)='1' else
                SRAM2_DB(7 downto 0) when (XRAM_ADR_s(15) and ROM_RAM_EN_s)='0' or
                                          (ROM_RAM_EN_s and Flash_en)='1' else
                SRAM1_DB(7 downto 0) when ROM_RAM_EN_s='1' and XRAM_ADR_s(0)='0' else
                SRAM1_DB(15 downto 8);
                
    SRAM1_ADR <=  "000" & XRAM_ADR_s(16) & XRAM_ADR_s(14 downto 1) when ROM_RAM_EN_s='1' else
                  "000" & ROM_ADR_s(15 downto 1);

    SRAM1_DB  <= XRAM_DATO_s & XRAM_DATO_s  when (ROM_RAM_EN_s and XRAM_STB_s and XRAM_WE_s and not Flash_en)= '1' else 
                 (others => 'Z') after 1 ns;
                 
    SRAM1_nBE <= "10" after 1 ns when (ROM_RAM_EN_s and XRAM_STB_s and not Flash_en and not XRAM_ADR_s(0))='1' else 
                 "01" after 1 ns when (ROM_RAM_EN_s and XRAM_STB_s and not Flash_en and     XRAM_ADR_s(0))='1' else
                 "00" after 1 ns when ROM_RAM_EN_s='0' else
                 "11";
    SRAM1_nWR <= '0' after 1 ns when (ROM_RAM_EN_s and XRAM_STB_s and XRAM_WE_s and not Flash_en)='1' else
                 '1';
    SRAM1_nOE <= '0' after 1 ns when ROM_RAM_EN_s='0' or 
                                    (ROM_RAM_EN_s and XRAM_STB_s and XRAM_RD_s and not Flash_en)='1' else
                 '1';

    SRAM1_nCS <= '0' when ROM_RAM_EN_s='0' or 
                         (ROM_RAM_EN_s and XRAM_ADR_s(15) and XRAM_STB_s and not Flash_en)='1' else
                 '1';    
                  
    ROM_DAT_s <= SRAM1_DB(7 downto 0) when ROM_ADR_s(0)='0' else
                 SRAM1_DB(15 downto 8);

    
  -- data hold for FLASH
  process(Reset_n,Clk)
  begin
    if Reset_n='0' then
      FLASH_WRData_Reg <= (others => '0');
      FLASH_WREN       <= '0';
    elsif clk'event and clk = '0' then
      if (XRAM_STB_s and XRAM_WE_s and Flash_en)='1' then
        FLASH_WRData_Reg <= XRAM_DATO_s;
        FLASH_WREN       <= '1';
      else
        FLASH_WREN <= '0';
      end if;
    end if;
  end process;

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

  use_cg: if use_VGA_c generate
    vga_cs    <= '1' when (not ROM_RAM_EN_s and vga_en and XRAM_STB_s) ='1' else
                 '0';
    GC : Graphiccard
      generic map(async_read_g => 1)
      port map (
        clr_n_i    => Reset_n,
        clk_i      => clk,
        VgaRd0_o   => VgaRd0,
        VgaRd1_o   => VgaRd1,
        VgaGr0_o   => VgaGr0,
        VgaGr1_o   => VgaGr1,
        VgaBl0_o   => VgaBl0,
        VgaBl1_o   => VgaBl1,
        VgaHsync_o => VgaHsync,
        VgaVsync_o => VgaVsync,
  
        CPU_Adr_i     => std_ulogic_vector(XRAM_ADR_s(13 downto 0)),
        CPU_CS_i      => vga_cs,
        CPU_DataIn_i  => std_ulogic_vector(XRAM_DATO_s),
        CPU_Rd_i      => XRAM_RD_s,
        CPU_Wr_i      => XRAM_WE_s,
        CPU_DataOut_o => VGA_DOUT_s,
        CPU_Irq_o     => open);
    end generate;
    no_cg: if not use_VGA_c generate
      VgaRd0   <= '0';
      VgaRd1   <= '0';
      VgaGr0   <= '0';
      VgaGr1   <= '0';
      VgaBl0   <= '0';
      VgaBl1   <= '0';
      VgaHsync <= '0';
      VgaVsync <= '0';
    end generate;

end RTL;





