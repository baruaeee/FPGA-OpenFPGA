# ####################################################################

#  Created by Genus(TM) Synthesis Solution 22.13-s093_1 on Sat Oct 26 03:20:27 CEST 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design GPIO

set_clock_gating_check -setup 0.0 
set_wire_load_mode "top"
