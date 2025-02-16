create_constraint_mode -name default_emulate_constraint_mode -sdc_files [list /dev/null]
create_rc_corner -name default_emulate_rc_corner 
create_rc_corner -name default_emulate_early_rc_corner 
create_rc_corner -name default_emulate_late_rc_corner 
create_library_set -name default_emulate_libset_max -timing [list ../../../../../../../PNR/auto_3x3_sky_scl/lib/sky130_ss_1.62_125_nldm.lib ../../../../../../../PNR/auto_3x3_sky_scl/lib/sky130_tt_1.8_25_nldm.lib]
create_library_set -name default_emulate_libset_min -timing [list ../../../../../../../PNR/auto_3x3_sky_scl/lib/sky130_ff_1.98_0_nldm.lib ../../../../../../../PNR/auto_3x3_sky_scl/lib/sky130_tt_1.8_25_nldm.lib]
create_delay_corner -name default_emulate_delay_corner -early_library_set default_emulate_libset_min -late_library_set default_emulate_libset_max -rc_corner default_emulate_rc_corner
create_delay_corner -name default_emulate_delay_corner_max -library_set default_emulate_libset_max -rc_corner default_emulate_rc_corner
create_delay_corner -name default_emulate_delay_corner_min -library_set default_emulate_libset_min -rc_corner default_emulate_rc_corner
create_analysis_view -name default_emulate_view -constraint_mode default_emulate_constraint_mode -delay_corner default_emulate_delay_corner
set_analysis_view -setup default_emulate_view -hold default_emulate_view
