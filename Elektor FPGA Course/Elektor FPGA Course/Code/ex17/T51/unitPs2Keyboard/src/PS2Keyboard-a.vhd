--------------------------------------------------------------------------------
-- Project     : Sandbox AVR Library
-- Module      : PS/2 Keyboard
-- File        : PS2Keyboard-a.vhd
-- Description : Architecture for attaching a PS/2 Keyboard to AVR Databus.
--------------------------------------------------------------------------------
-- Author       : Andreas Voggeneder
-- Organisation : FH-Hagenberg
-- Department   : Hardware/Software Systems Engineering
-- Language     : VHDL'87
--------------------------------------------------------------------------------
-- Copyright (c) 2003 by Andreas Voggeneder
--------------------------------------------------------------------------------


--Command transmission to the keyboard is initiated by bringing the keyboard CLOCK line LOW
--for at least 60 uS. After the 60 uS delay, the DATA line should be brought LOW and the CLOCK 
--line released (HIGH). Make sure to bring the DATA line LOW before releasing the CLOCK line. 
--Some time later (up to 10 milliseconds) the keyboard will start to generate clock signals. 
--At each HIGH to LOW clock transition the keyboard will clock in a new bit.

architecture rtl of PS2Keyboard is

  component InputSync
    generic(levels_g     : natural :=2;
            ResetValue_g : std_ulogic := '0');
    port (
      Input : in  std_ulogic;
      clk   : in  std_ulogic;
      clr_n : in  std_ulogic;
      q     : out std_ulogic);
  end component;


  constant transInit_c  : natural :=1500; --2880;    -- 60 uS Time to hold CLK low (to initiate a Transmission)
  constant transStart_c : natural :=1550; --2976;    -- 2 uS additonal Time where Data and Clockline are both LOW
  type   Ps2Direction_t is (FromKbd, ToKbd);
  type   state_t        is (IDLE, DELAY,START, DATA, STOP);
  type   clkEdge_t      is (NONE, RISING, FALLING);
  
  signal Ps2Direction,NextPs2Direction     : Ps2Direction_t;
  signal state, nextState                  : state_t;
  signal ps2ClkEdge                        : clkEdge_t;
  signal q                                 : std_logic_vector(3 downto 0);
  signal Ps2ClkOld                         : std_logic;
  signal sReg                              : std_logic_vector(8 downto 0);
--  signal Parity                            : std_ulogic;
  signal delayCnt                          : unsigned (10 downto 0);
  signal Ps2Clk,Ps2ClockHtranslate1        : std_logic;
  signal Ps2DataOut, Ps2ClockOut           : std_logic;
  signal CmdReg,DataReg                    : std_logic_vector(8 downto 0);
  signal Status                            : std_logic_vector(6 downto 0);
  signal ackReceived,RcvOv                 : std_logic;
  signal rxirq,txirq                       : std_logic;


  Function CalcParity(Data : in std_logic_vector) return std_logic is
    variable p: std_ulogic:='1';
  begin
    for i in Data'range loop
      p:=p xor Data(i);
    end loop;
    return p;
  end;
begin
  
  -- Needed for simulation with 'H' value instead of '1'.
  Ps2ClockHtranslate1 <= To_X01Z(Ps2Clk_io);
  
  IS1 : InputSync
   generic map (
     levels_g => 2,
     ResetValue_g => '1')
   port map (
     Input => Ps2ClockHtranslate1,
     clk   => Clk_i,
     clr_n => clr_n_i,
     q     => Ps2Clk);


  Ps2Dat_io <= '0' when Ps2DataOut = '0' else
               'Z';
  Ps2Clk_io <= '0' when Ps2ClockOut = '0' else
               'Z';

  ps2ClkEdge <= RISING  when ((Ps2Clk xor Ps2ClkOld) and Ps2Clk)='1' else
                FALLING when ((Ps2Clk xor Ps2ClkOld) and Ps2ClkOld)='1' else
                NONE;

  Comb : process (state, ps2ClkEdge, q, Ps2Direction, CmdReg, delayCnt)
  begin  -- process Comb
    nextstate <= state;
    NextPs2Direction <= Ps2Direction;
    case state is
      when IDLE =>
        case Ps2Direction is
          when ToKbd =>
            nextstate <= DELAY;
          when FromKbd =>
            if ps2ClkEdge = RISING then
              nextstate <= DATA;
            elsif CmdReg(8) = '1' then
              NextPs2Direction <= ToKbd;
            end if;
         end case;
      when DELAY =>
        if delayCnt = transInit_c then
            nextstate <= START;
        end if;
      when START =>
        if delayCnt = transStart_c then
          nextstate <= DATA;
        end if;
      when DATA =>
        case Ps2Direction is
          when ToKbd =>
            if q = std_logic_vector(to_unsigned(11, q'length)) then
              nextstate <= STOP;
            end if;
          when FromKbd =>
            if q = std_logic_vector(to_unsigned(9, q'length)) then
              nextstate <= STOP;
            end if;
         end case;
      when STOP =>
        if ps2ClkEdge = RISING then
          nextstate        <= IDLE;
          NextPs2Direction <= FromKbd;
        end if;
      end case;
  end process Comb;

  -- Sequential Process
  seq: process (Clk_i, Clr_n_i) is
  begin  -- process
    if Clr_n_i = '0' then
      state        <= IDLE;
      Ps2Direction <= FromKbd;
      
      sReg        <= (others => '0');
      q           <= (others => '0');
      delayCnt    <= (others => '0');
      Ps2ClkOld   <= '1';
      Ps2ClockOut <= '1';
      Ps2DataOut  <= '1';
      CmdReg      <= (others => '0');
      DataReg     <= (others => '0');
--      rxirq       <= '0';
      txirq       <= '0';
      RcvOv       <= '0';
      ackReceived <= '0';
--      SFR_Data_o  <= (others => '0');
    elsif Clk_i'event and Clk_i='1' then
      Ps2ClkOld    <= Ps2Clk;
      state        <= nextstate;
      Ps2Direction <=NextPs2Direction;

      case state is
        when IDLE =>
          Ps2ClockOut <= '1';
          Ps2DataOut  <= '1';
          q           <= (others =>'0');
          delayCnt    <= (others =>'0');
          case Ps2Direction is
            when ToKbd =>
              sReg      <= CalcParity(CmdReg(7 downto 0))& CmdReg(7 downto 0);
              CmdReg(8) <= '0';
            when FromKbd =>
          end case;
        when DELAY =>
          Ps2ClockOut <= '0';           -- initiate Transmitt by holding clockline LOW for 60uS
          Ps2DataOut  <= '1';
          delayCnt    <= delayCnt + 1;
        when START =>
          delayCnt    <= delayCnt + 1;
          Ps2ClockOut <= '0';
          Ps2DataOut  <= '0';           -- Delay is over. Bring Dataline low now.
        when DATA =>
          Ps2ClockOut <= '1';           -- bring clock line to HIGH (switch to input mode) 
          case Ps2Direction is
            when ToKbd =>
              if ps2ClkEdge = FALLING then
                Ps2DataOut <= sReg(0);
                sReg       <= '1' & sReg(8 downto 1);  -- shift in the stopbit
                q          <= std_logic_vector(unsigned(q) + 1);
              end if;
            when FromKbd =>
              Ps2DataOut <= '1';
              if ps2ClkEdge = RISING then
                sReg <= Ps2Dat_io & sReg(8 downto 1);
                q    <= std_logic_vector(unsigned(q) + 1);
              end if;
            end case;
        when STOP => 
            Ps2DataOut <= '1';
            case Ps2Direction is
            when ToKbd =>
              if ps2ClkEdge = RISING then    
                ackReceived <= not Ps2Dat_io;
              end if;
              txirq <= '1';   -- Signalize an TX interrupt
            when FromKbd =>
              if ps2ClkEdge = RISING then
                if DataReg(8)='1' then
                  RcvOv<='1';
                end if;
                DataReg<="0" & sReg(7 downto 0);
                if CalcParity(sReg)='0' then
                  DataReg(8) <= '1';
--                  rxirq      <= '1';   -- Signalize an RX interrupt
                end if;
              end if;
            end case;
        when others => null;
      end case;
      
-- Businterface
      if data_wr_i = '1' then
        CmdReg <= "1"&SFR_Data_i;
      end if;
      if ctrl_stat_wr_i = '1' then
        if SFR_Data_i(7)='1' then
          state        <= IDLE;
          Ps2Direction <= FromKbd;
        end if;
        DataReg(8)  <= SFR_Data_i(0);
        RcvOv       <= SFR_Data_i(1);
        ackReceived <= SFR_Data_i(4);
        txirq       <= SFR_Data_i(4);
      end if;
    end if;
  end process seq;
  
  rxirq <= DataReg(8);

  SFR_Data_o <= DataReg(7 downto 0) when data_sel_i='1' else 
                "0"&Status;
  
  Status(6) <= Ps2Dat_io;
  Status(5) <= Ps2Clk;
  Status(4) <= ackReceived;
  Status(3) <= '1' when (state /=IDLE and Ps2Direction = ToKbd) or CmdReg(8)='1' else '0';
  Status(2) <= '1' when (state /=IDLE and Ps2Direction = FromKbd) else '0';
  Status(1) <= RcvOv;
  Status(0) <= DataReg(8);

  Irq_o <= rxirq or txirq;

end rtl;




