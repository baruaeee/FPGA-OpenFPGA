################################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 12/16/2024 23:52:07
#
################################################################################
if { ![is_common_ui_mode] } { error "ERROR: This script requires common_ui to be active."}

read_netlist genus_invs_des/genus.v

init_design
