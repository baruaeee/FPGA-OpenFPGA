-- -----------------------------------------------
-- Title:    Wrapper for OpenCores Ethernet MAC
-- file:     Ethernet.vhd
-- language: VHDL 93
-- author:       HSSE / Andreas Voggeneder
-- comments: Toplevel Entity für VGA Ansteuerung
-- history: 
--   03.2005 creation
-- -----------------------------------------------


library IEEE;
library Work;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

entity Ethernet is
  port (
    CLK_i     : in std_logic;
    Reset_n_i : in std_logic;

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
    -- MIIM
    mdc_pad_o     : out std_logic;
    md_pad_i      : in  std_logic;
    md_pad_o      : out std_logic;
    md_padoe_o    : out std_logic;
      
    ------------------------------
    -- Synchronized Data Bus (8051)
    ------------------------------
    CPUAdr_i     : in  std_logic_vector(15 downto 0);
    Enable_i     : in  std_logic;
    CPUDataIn_i  : in  std_logic_vector(7 downto 0);
    CPURd_i      : in  std_logic;
    CPUWr_i      : in  std_logic;
    Wait_o       : out std_logic;
    CPUDataOut_o : out std_logic_vector(7 downto 0);
    CPUIrq_o     : out std_logic
    );

end Ethernet ;

architecture rtl of Ethernet is

  component eth_top is
    port (
      -- Wishbone Common
      wb_clk_i   : in  std_logic;
      wb_rst_i   : in  std_logic;
      wb_dat_i   : in  std_logic_vector(31 downto 0);
      wb_dat_o   : out std_logic_vector(31 downto 0);
      -- Wishbone Slave
      wb_adr_i   : in  std_logic_vector(11 downto 2);
      wb_sel_i   : in  std_logic_vector(3 downto 0);
      wb_we_i    : in  std_logic;
      wb_cyc_i   : in  std_logic;
      wb_stb_i   : in  std_logic;
      wb_ack_o   : out std_logic;
      wb_err_o   : out std_logic;
      -- Wishbone Master
      m_wb_adr_o   : out std_logic_vector(31 downto 0);
      m_wb_sel_o   : out std_logic_vector(3 downto 0);
      m_wb_we_o    : out std_logic;
      m_wb_dat_i   : in  std_logic_vector(31 downto 0);
      m_wb_dat_o   : out std_logic_vector(31 downto 0);
      m_wb_cyc_o   : out std_logic;
      m_wb_stb_o   : out std_logic;
      m_wb_ack_i   : in  std_logic;
      m_wb_err_i   : in  std_logic;
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
      -- MIIM
      mdc_pad_o     : out std_logic;
      md_pad_i      : in  std_logic;
      md_pad_o      : out std_logic;
      md_padoe_o    : out std_logic;
      --
      int_o         : out std_logic
    );
  end component;
  
  component Ethernet_RAM IS
  PORT
	(
		data_a		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		wren_a		: IN STD_LOGIC  := '1';
		address_a	: IN STD_LOGIC_VECTOR (10 DOWNTO 0);
		data_b		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		address_b	: IN STD_LOGIC_VECTOR (10 DOWNTO 0);
		wren_b		: IN STD_LOGIC  := '1';
		byteena_a	: IN STD_LOGIC_VECTOR (3 DOWNTO 0) :=  (OTHERS => '1');
		byteena_b	: IN STD_LOGIC_VECTOR (3 DOWNTO 0) :=  (OTHERS => '1');
		clock		  : IN STD_LOGIC ;
		enable		: IN STD_LOGIC  := '1';
		q_a		    : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		q_b		    : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
  END component;
  

   
  signal Reset_inv                            : std_logic;
  signal wb_dat_is,wb_dat_os                  : std_logic_vector(31 downto 0);
  signal wb_we_s,wb_stb_s,wb_cyc_s,wb_ack_os  : std_logic;
  signal wb_sel_s                             : std_logic_vector(3 downto 0); 
  signal wb_err_os                            : std_logic;
  
  signal Eth_RAM_wr                           : std_logic;
  signal Eth_RAM_Data_os,Eth_Ram_din          : std_logic_vector(31 downto 0);
  signal Eth_Ram_En                           : std_logic;
  signal Eth_Regs_En                          : std_logic;
  signal Wait_s                               : std_logic;
  signal ack_ds                               : std_logic;
  
  signal mux_sel,mux_sel_r, CPUAdr_rs         : std_logic_vector(1 downto 0);
--  signal CPURd_rs                             : std_logic;
  
  -- WB Master Signals
  signal m_wb_adr_s   : std_logic_vector(31 downto 0);
  signal m_wb_sel_s   : std_logic_vector(3 downto 0);
  signal m_wb_we_s    : std_logic;
  signal m_wb_dat_os  : std_logic_vector(31 downto 0);
  signal m_wb_dat_is  : std_logic_vector(31 downto 0);
  signal m_wb_cyc_s   : std_logic;
  signal m_wb_stb_s   : std_logic;
  signal m_wb_ack_s   : std_logic;
  signal m_wb_err_s   : std_logic;

  signal m_wb_adr_rs  : std_logic_vector(15 downto 2);
  signal m_we_s       : std_logic;
  signal ETHIrq_s     : std_logic;
    
begin
  
  Reset_inv <= not Reset_n_i;
  
  eth1 : eth_top
      port map (
        wb_clk_i    => CLK_i,
        wb_rst_i    => Reset_inv,
        wb_dat_i    => wb_dat_is,
        wb_dat_o    => wb_dat_os,
        wb_adr_i(11 downto 2)    => CPUAdr_i(11 downto 2),
        wb_sel_i    => wb_sel_s,
        wb_we_i     => wb_we_s,
        wb_stb_i    => wb_stb_s,
        wb_cyc_i    => wb_cyc_s,
        wb_ack_o    => wb_ack_os,
        wb_err_o    => wb_err_os,
        --  Master
        m_wb_adr_o  => m_wb_adr_s,
        m_wb_sel_o  => m_wb_sel_s,
        m_wb_we_o   => m_wb_we_s, 
        m_wb_dat_i  => m_wb_dat_is,
        m_wb_dat_o  => m_wb_dat_os,
        m_wb_cyc_o  => m_wb_cyc_s,
        m_wb_stb_o  => m_wb_stb_s,
        m_wb_ack_i  => m_wb_ack_s,
        m_wb_err_i  => m_wb_err_s,
        -- TX               
        mtx_clk_pad_i=> mtx_clk_pad_i,
        mtxd_pad_o   => mtxd_pad_o,   
        mtxen_pad_o  => mtxen_pad_o,  
        mtxerr_pad_o => mtxerr_pad_o, 
        -- RX             
        mrx_clk_pad_i=> mrx_clk_pad_i,
        mrxd_pad_i   => mrxd_pad_i,   
        mrxdv_pad_i  => mrxdv_pad_i,  
        mrxerr_pad_i => mrxerr_pad_i, 
        mcoll_pad_i  => mcoll_pad_i,  
        mcrs_pad_i   => mcrs_pad_i,   
        -- MIIM          
        mdc_pad_o    => mdc_pad_o,    
        md_pad_i     => md_pad_i,     
        md_pad_o     => md_pad_o,     
        md_padoe_o   => md_padoe_o,

        int_o        => ETHIrq_s
        );
        CPUIrq_o <= ETHIrq_s;


  

  
  m_wb_err_s <= '0';

-- 8051 is BIG ENDIAN !
-- 00 => highest byte

  wb_sel_s<= "1000" when CPUAdr_i(1 downto 0)="00" else
             "0100" when CPUAdr_i(1 downto 0)="01" else
             "0010" when CPUAdr_i(1 downto 0)="10" else
             "0001" when CPUAdr_i(1 downto 0)="11" else
             (others =>'-');
             
  wb_stb_s <= Eth_Regs_En;
  wb_cyc_s <= Eth_Regs_En;
  wb_we_s  <= CPUWr_i;
  
  wb_dat_is(31 downto 16) <= CPUDataIn_i&CPUDataIn_i;
  wb_dat_is(15 downto 0)  <= CPUDataIn_i&CPUDataIn_i;

               
  	CPUDataOut_o <= wb_dat_os(31 downto 24)  when mux_sel_r="00" and CPUAdr_rs="00" else
	              	wb_dat_os(23 downto 16)  when mux_sel_r="00" and CPUAdr_rs="01" else
        					wb_dat_os(15 downto 8)   when mux_sel_r="00" and CPUAdr_rs="10" else
        					wb_dat_os(7 downto 0)    when mux_sel_r="00" and CPUAdr_rs="11" else
        					       					
        					Eth_RAM_Data_os(31 downto 24) when mux_sel_r="11" and CPUAdr_rs="00" else
	              	Eth_RAM_Data_os(23 downto 16) when mux_sel_r="11" and CPUAdr_rs="01" else
        					Eth_RAM_Data_os(15 downto 8)  when mux_sel_r="11" and CPUAdr_rs="10" else
        					Eth_RAM_Data_os(7 downto 0)   when mux_sel_r="11" and CPUAdr_rs="11" else
        					(others => '-');

  Wait_o <= Wait_s;

  mux_sel <= "00" when Eth_Regs_En='1' else
             "11" when Eth_Ram_En='1' else
             "--";

  process(CLK_i,Reset_n_i)
  begin
    if Reset_n_i='0' then
      mux_sel_r <= (others => '0');
      CPUAdr_rs <= (others => '0');
    elsif CLK_i'event and CLK_i='1' then
      mux_sel_r <= mux_sel;
      CPUAdr_rs <= CPUAdr_i(1 downto 0);
    end if;
  end process;

Eth_Ram_din <= CPUDataIn_i&CPUDataIn_i&CPUDataIn_i&CPUDataIn_i;

Eth_RAM : Ethernet_RAM 
	PORT MAP
	(
    clock	      => CLK_i,
		data_b	    => Eth_Ram_din,	
		wren_b		  => Eth_RAM_wr,
		byteena_b   => wb_sel_s,
		address_b	  => CPUAdr_i(12 DOWNTO 2),
		data_a		  => m_wb_dat_os,
		address_a	  => m_wb_adr_s(12 DOWNTO 2),
		wren_a		  => m_we_s,
		byteena_a   => m_wb_sel_s,
		enable      => '1',
		q_b		      => Eth_RAM_Data_os,
		q_a		      => m_wb_dat_is
	);
  
  m_we_s <= m_wb_we_s and m_wb_cyc_s and m_wb_ack_s;
  Eth_RAM_wr <= Eth_Ram_En and CPUWr_i;
--  -- 0x8000 - 0x9FFF ETH_RAM
--  -- 0xA000          Register
--  Eth_Ram_En <= '1' when (Enable_i and (CPURd_i or CPUWr_i))='1' and 
--                         CPUAdr_i(15 downto 13) = "100" and
--                         ack_ds='0' else
--                '0';
--                  
--  Eth_Regs_En <= '1' when (Enable_i and (CPURd_i or CPUWr_i))='1' and 
--                          CPUAdr_i(15 downto 12) = "1010" and
--                          ack_ds='0' else
--                 '0';
  
  -- 0xE000 - 0xFFFF ETH_RAM
  -- 0xD000 - 0xDFFF Register
  Eth_Ram_En <= '1' when (Enable_i and (CPURd_i or CPUWr_i))='1' and 
                         CPUAdr_i(15 downto 13) = "111" and
                         ack_ds='0' else
                '0';
                  
  Eth_Regs_En <= '1' when (Enable_i and (CPURd_i or CPUWr_i))='1' and 
                          CPUAdr_i(15 downto 12) = "1101" and
                          ack_ds='0' else
                 '0';
                 
  
  Wait_s <= (Eth_Regs_En and not wb_ack_os and not wb_err_os);
  
  process(CLK_i,Reset_n_i)
  begin
    if Reset_n_i='0' then
      m_wb_adr_rs   <= (others => '1');
      ack_ds        <= '0';
    elsif CLK_i'event and CLK_i='1' then   
      -- Ethernet Master-if related stuff
      if m_wb_stb_s='1' then
        m_wb_adr_rs <= m_wb_adr_s(m_wb_adr_rs'range);
      else
        m_wb_adr_rs <= (others =>'1');
      end if;
      ack_ds <= (wb_ack_os);
    end if;
  end process;

  m_wb_ack_s <= '1' when m_wb_stb_s='1' and m_wb_adr_rs = m_wb_adr_s(m_wb_adr_rs'range) else 
                '0';

end rtl;