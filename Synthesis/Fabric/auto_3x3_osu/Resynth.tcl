
read_libs LIB/sky130_osu_sc_18T_hs_TT_1P8_25C.ccs.lib LIB/sky130_fd_io__top_gpiov2_tt_tt_025C_1v80_3v30.lib
#read_hdl flat.v
read_hdl SRC/fabric_netlists.v
elaborate fpga_top

# set and read SDC files
set sdc_dir "./SDC"

#set sdc_files {
#	"fabric.sdc"
#}

set sdc_files {
	"dont_touch.sdc"
	"global_ports.sdc"
	"cbx_1__0_.sdc"
	"cbx_1__1_.sdc"
	"cby_0__1_.sdc"
	"cby_1__1_.sdc"
	"disable_configurable_memory_outputs.sdc"
	"disable_configure_ports.sdc"
	"disable_routing_multiplexer_outputs.sdc"
	"disable_sb_outputs.sdc"
	"logical_tile_clb_mode_clb_.sdc"
	"logical_tile_clb_mode_default__fle_mode_physical__fabric.sdc"
	"logical_tile_io_mode_io_.sdc"
	"sb_0__0_.sdc"
	"sb_0__1_.sdc"
	"sb_1__0_.sdc"
	"sb_1__1_.sdc"
}

foreach sdc_file $sdc_files {
	read_sdc [file join $sdc_dir $sdc_file]
}

# set_db syn_generic_effort medium	## not necessary as already synthesized
# set_db syn_map_effort medium		## not necessary as already synthesized
set_db syn_opt_effort medium


# syn_generic				## not necessary as already synthesized
# syn_map				## not necessary as already synthesized
syn_opt



#reports
report_timing > reports/report_timing.rpt
report_power  > reports/report_power.rpt
report_area   > reports/report_area.rpt
report_qor    > reports/report_qor.rpt

remove_cdn_loop_breaker

#Outputs
write_hdl > outputs/post_synth_fabric_netlist.v
write_sdc > outputs/post_synth_fabric_sdc.sdc
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge  -setuphold split > outputs/delays.sdf
write_design
#exit
