################################################################################
#
# Genus(TM) Synthesis Solution setup file
# Created by Genus(TM) Synthesis Solution 22.13-s093_1
#   on 11/20/2024 03:33:30
#
# This file can only be run in Genus Common UI mode.
#
################################################################################


# This script is intended for use with Genus(TM) Synthesis Solution version 22.13-s093_1


# Remove Existing Design
################################################################################
if {[::legacy::find -design design:logical_tile_clb_mode_default__fle] ne ""} {
  puts "** A design with the same name is already loaded. It will be removed. **"
  delete_obj design:logical_tile_clb_mode_default__fle
}


# To allow user-readonly attributes
################################################################################
::legacy::set_attribute -quiet force_tui_is_remote 1 /


# Libraries
################################################################################
::legacy::set_attribute library {/home/cae1/Desktop/FPGA-OpenFPGA/Synthesis/Fabric/auto_3x3_sky_scl/logical_tile_clb_mode_default__fle/LIB/sky130_ff_1.98_0_nldm.lib /home/cae1/Desktop/FPGA-OpenFPGA/Synthesis/Fabric/auto_3x3_sky_scl/logical_tile_clb_mode_default__fle/LIB/sky130_ss_1.62_125_nldm.lib /home/cae1/Desktop/FPGA-OpenFPGA/Synthesis/Fabric/auto_3x3_sky_scl/logical_tile_clb_mode_default__fle/LIB/sky130_tt_1.8_25_nldm.lib} /


# Design
################################################################################
read_netlist -top logical_tile_clb_mode_default__fle genus_invs_des/genus.v
read_metric -id current genus_invs_des/genus.metrics.json

phys::read_script genus_invs_des/genus.g

phys::read_lec_taf genus_invs_des/genus.lec.taf.gz
puts "\n** Restoration Completed **\n"


# Data Integrity Check
################################################################################
# program version
if {"[string_representation [::legacy::get_attribute program_version /]]" != "22.13-s093_1"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-91] "golden program_version: 22.13-s093_1  current program_version: [string_representation [::legacy::get_attribute program_version /]]"
}
# license
if {"[string_representation [::legacy::get_attribute startup_license /]]" != "Genus_Synthesis"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-91] "golden license: Genus_Synthesis  current license: [string_representation [::legacy::get_attribute startup_license /]]"
}
# slack
set _slk_ [::legacy::get_attribute slack design:logical_tile_clb_mode_default__fle]
if {[regexp {^-?[0-9.]+$} $_slk_]} {
  set _slk_ [format %.1f $_slk_]
}
if {$_slk_ != "inf"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden slack: inf,  current slack: $_slk_"
}
unset _slk_
# multi-mode slack
# tns
set _tns_ [::legacy::get_attribute tns design:logical_tile_clb_mode_default__fle]
if {[regexp {^-?[0-9.]+$} $_tns_]} {
  set _tns_ [format %.0f $_tns_]
}
if {$_tns_ != "0"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden tns: 0,  current tns: $_tns_"
}
unset _tns_
# cell area
set _cell_area_ [::legacy::get_attribute cell_area design:logical_tile_clb_mode_default__fle]
if {[regexp {^-?[0-9.]+$} $_cell_area_]} {
  set _cell_area_ [format %.0f $_cell_area_]
}
if {$_cell_area_ != "3843"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden cell area: 3843,  current cell area: $_cell_area_"
}
unset _cell_area_
# net area
set _net_area_ [::legacy::get_attribute net_area design:logical_tile_clb_mode_default__fle]
if {[regexp {^-?[0-9.]+$} $_net_area_]} {
  set _net_area_ [format %.0f $_net_area_]
}
if {$_net_area_ != "0"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden net area: 0,  current net area: $_net_area_"
}
unset _net_area_
