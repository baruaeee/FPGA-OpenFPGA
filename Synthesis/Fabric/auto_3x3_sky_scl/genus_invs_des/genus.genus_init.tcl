################################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 11/21/2024 03:28:29
#
################################################################################
if { ![is_common_ui_mode] } { error "ERROR: This script requires common_ui to be active."}

read_netlist genus_invs_des/genus.v

init_design
