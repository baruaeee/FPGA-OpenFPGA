# ####################################################################

#  Created by Genus(TM) Synthesis Solution 22.13-s093_1 on Wed Nov 20 02:50:37 CET 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design logical_tile_clb_mode_default__fle

create_clock -name "clk[0]" -period 1.77717 -waveform {0.0 0.8885858} [get_ports {clk[0]}]
create_clock -name "prog_clk[0]" -period 10.0 -waveform {0.0 5.0} [get_ports {prog_clk[0]}]
set_max_delay 0.045 -from [get_pins {logical_tile_clb_mode_default__fle_mode_physical__fabric_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_0/ff_Q[0]}] -to [get_pins {logical_tile_clb_mode_default__fle_mode_physical__fabric_0/fabric_out[0]}]
set_max_delay 0.025 -from [get_pins {logical_tile_clb_mode_default__fle_mode_physical__fabric_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0/frac_logic_out[0]}] -to [get_pins {logical_tile_clb_mode_default__fle_mode_physical__fabric_0/fabric_out[0]}]
set_max_delay 0.045 -from [get_pins {logical_tile_clb_mode_default__fle_mode_physical__fabric_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_1/ff_Q[0]}] -to [get_pins {logical_tile_clb_mode_default__fle_mode_physical__fabric_0/fabric_out[1]}]
set_max_delay 0.025 -from [get_pins {logical_tile_clb_mode_default__fle_mode_physical__fabric_0/logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0/frac_logic_out[1]}] -to [get_pins {logical_tile_clb_mode_default__fle_mode_physical__fabric_0/fabric_out[1]}]
