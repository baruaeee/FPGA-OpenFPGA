
read_libs LIB/fast_vdd1v0_basicCells_lvt.lib \
	LIB/fast_vdd1v2_basicCells_lvt.lib \
	LIB/slow_vdd1v0_basicCells_lvt.lib \
	LIB/slow_vdd1v2_basicCells_lvt.lib


read_hdl flat.v
#read_hdl SRC/fabric_netlists.v

#elaborate
elaborate fpga_top
#flat

# set and read SDC files
set sdc_dir "./SDC"

set sdc_files {
	"fabric.sdc"
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

#Outputs
write_hdl > outputs/post_synth_fabric_netlist.v
write_sdc > outputs/post_synth_fabric_sdc.sdc
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge  -setuphold split > outputs/delays.sdf
write_design
exit
