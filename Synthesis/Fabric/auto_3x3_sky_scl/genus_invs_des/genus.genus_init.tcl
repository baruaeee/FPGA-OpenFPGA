################################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 12/17/2024 21:09:05
#
################################################################################
if { ![is_common_ui_mode] } { error "ERROR: This script requires common_ui to be active."}

read_netlist genus_invs_des/genus.v

init_design
