library IEEE;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- interface : 16 bits
-- internal : 20 bits

entity cordic_core is port(
  clk : in STD_LOGIC;
  reset : in STD_LOGIC;
  load : in STD_LOGIC;
  phase : in STD_LOGIC_VECTOR (15 downto 0);
  magnitude : in STD_LOGIC_VECTOR (15 downto 0);
  ready : out STD_LOGIC;
  cos : out STD_LOGIC_VECTOR (15 downto 0);
  sin : out STD_LOGIC_VECTOR (15 downto 0)
  );
  end cordic_core;


architecture descr of cordic_core is
  type TState is (Idle,FirstStage,Processing);
  signal state : TState;
  signal pass_count : natural range 0 to 15;

  signal cur_cos, new_cos, shift_cos : SIGNED (19 downto 0);
  signal cur_sin, new_sin, shift_sin : SIGNED (19 downto 0);
  signal des_phase,cur_phase,new_phase,proc_phase : SIGNED (19 downto 0);
  signal greater : STD_LOGIC;

  --signal t_cur_sin, t_cur_cos,t_proc_phase,t_cur_phase,t_des_phase : integer;

  type t_phasetable is array (0 to 15) of integer;

  constant phase_table : t_phasetable:=(65536,32768,19344,
  10221,5188,2604,1303,652,326,163,81,41,20,10,5,3);

begin

-- defining state and pass_count;
  MACHINE : process (clk)
  begin
    if (clk'event and clk='1') then
      if (reset = '1') then
        state <= Idle;
      else
        state <= Idle;
        case state is
          when Idle => if (load = '1') then
            state <= FirstStage;
            cur_phase <= TO_SIGNED(0,20);
            des_phase <= (TO_SIGNED (TO_INTEGER(SIGNED(phase))*4,20));
            cur_cos <= TO_SIGNED(TO_INTEGER(SIGNED(magnitude))*16,20);
            cur_sin <= TO_SIGNED (0,20);
            ready <= '0';
            pass_count <= 0;
          end if;
          when FirstStage =>
            state <= Processing;
            cur_phase <=new_phase;
            cur_cos <= new_cos;
            cur_sin <=new_sin;

          when Processing => if (pass_count = 14) then
              state <=Idle;
              cur_phase <=new_phase;
              cos <= STD_LOGIC_VECTOR(new_cos(19 downto 4));
              sin <= STD_LOGIC_VECTOR(new_sin(19 downto 4));
              ready <='1';
            else
              cur_phase <=new_phase;
              cur_cos <= new_cos;
              cur_sin <=new_sin;
              state <=Processing;
              pass_count <= pass_count +1;
              state <= Processing;
            end if; -- pass_count = 14
          when others => state <=Idle;
        end case;
      end if;	-- reset = '1'
    end if;  	-- posedge_clk
  end process;

  greater <= '1'when des_phase >= cur_phase else '0';

  proc_phase <= TO_SIGNED (phase_table (0),20) when state=FirstStage else TO_SIGNED(phase_table(pass_count+1),20);

  shift_cos <= SHIFT_RIGHT (cur_cos,pass_count);
  shift_sin <= SHIFT_RIGHT (cur_sin,pass_count);

  PROC_NEWSIN : process (greater, cur_sin,shift_cos)
  begin
    if (greater = '1') then
      new_sin <= cur_sin + shift_cos;
    else
      new_sin <= cur_sin - shift_cos;
    end if;
  end process;

  PROC_NEWCOS : process (greater, cur_cos, shift_sin,state)
  begin
    if (state = FirstStage) then
      new_cos <= TO_SIGNED (0,20);
    else
      if (greater = '1') then
        new_cos <= cur_cos - shift_sin;
      else
        new_cos <= cur_cos + shift_sin;
      end if;
    end if;
  end process;

  PROC_NEWPHASE: process (cur_phase,proc_phase,greater)
  begin
    if (greater = '1') then
      new_phase <= cur_phase + proc_phase;
    else
      new_phase <=cur_phase - proc_phase;
    end if;
  end process;

--  t_cur_sin <= TO_INTEGER (cur_sin);
--  t_cur_cos <= TO_INTEGER (cur_cos);
--  t_proc_phase <= phase_table(pass_count);
--  t_cur_phase <= TO_INTEGER (cur_phase*90/65536);
--  t_des_phase <= TO_INTEGER (des_phase*90/65536);
end descr;

