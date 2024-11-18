
read_libs ./LIB/sky130_tt_1.8_25_nldm.lib
read_hdl gpio.v
elaborate GPIO

# set and read SDC files
#set sdc_dir "./SDC"

#set sdc_files {
#	"cbx_1__0_.sdc"
#	"cbx_1__1_.sdc"
#	"cby_0__1_.sdc"
#	"cby_1__1_.sdc"
#	"disable_configurable_memory_outputs.sdc"
#	"disable_configure_ports.sdc"
#	"disable_routing_multiplexer_outputs.sdc"
#	"disable_sb_outputs.sdc"
#	"logical_tile_clb_mode_clb_.sdc"
#	"logical_tile_clb_mode_default__fle_mode_physical__fabric.sdc"
#	"logical_tile_io_mode_io_.sdc"
#	"sb_0__0_.sdc"
#	"sb_0__1_.sdc"
#	"sb_1__0_.sdc"
#	"sb_1__1_.sdc"
#}

#foreach sdc_file $sdc_files {
#	read_sdc [file join $sdc_dir $sdc_file]
#}

set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium


syn_generic
syn_map
syn_opt


#reports
report_timing > reports/report_timing.rpt
report_power  > reports/report_power.rpt
report_area   > reports/report_area.rpt
report_qor    > reports/report_qor.rpt

#Outputs
write_hdl > outputs/post_synth_GPIO_netlist.v
write_sdc > outputs/post_synth_GPIO_sdc.sdc
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge  -setuphold split > outputs/delays.sdf

