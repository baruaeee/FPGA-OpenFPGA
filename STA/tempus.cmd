#######################################################
#                                                     
#  Tempus Timing Solution Command Logging File                     
#  Created on Sun Feb  2 22:31:03 2025                
#                                                     
#######################################################

#@(#)CDS: Tempus Timing Solution v23.11-s111_1 (64bit) 05/16/2024 09:07 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 23.11-s111_1 NR240401-0735/23_11-UB (database version 18.20.622) {superthreading v2.20}
#@(#)CDS: AAE 23.11-s031 (64bit) 05/16/2024 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 23.11-s025_1 () May 16 2024 01:47:36 ( )
#@(#)CDS: SYNTECH 23.11-s010_1 () Apr  5 2024 04:21:08 ( )
#@(#)CDS: CPE v23.11-s059

::stop_gui -keepDgui
read_lib -max ../PNR/auto_3x3_sky_scl/lib/sky130_ss_1.62_125_nldm.lib
read_lib -min ../PNR/auto_3x3_sky_scl/lib/sky130_ff_1.98_0_nldm.lib
read_lib ../PNR/auto_3x3_sky_scl/lib/sky130_tt_1.8_25_nldm.lib
read_verilog SRC/fabric_netlists.v
set_top_module fpga_top -ignore_undefined_cell
get_analysis_mode
get_capacitance_unit
all_setup_analysis_views
all_hold_analysis_views
all_setup_analysis_views
get_analysis_view $view -delay_corner
get_delay_corner $dcCorner -library_set
get_delay_corner $dcCorner -late_library_set
get_library_set $lateLibSetName -timing
get_library_set $lateLibSetName -si
get_delay_corner $dcCorner -early_library_set
get_library_set $earlyLibSetName -timing
get_library_set $earlyLibSetName -si
get_delay_corner $dcCorner -power_domain_list
get_analysis_view $view -constraint_mode
get_constraint_mode $conMode -sdc_files
all_setup_analysis_views
all_hold_analysis_views
get_analysis_view $view -delay_corner
get_delay_corner $dcCorner -power_domain_list
get_delay_corner $dcCorner -library_set
get_delay_corner $dcCorner -late_library_set
get_library_set $lateLibSetName -si
get_delay_corner $dcCorner -early_library_set
get_library_set $earlyLibSetName -si
report_slack_histogram
get_analysis_mode
setLayerPreference timingMap -isVisible 1
exit
