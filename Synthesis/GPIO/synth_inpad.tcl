
read_libs LIB/sky130_scl_9T_0_0_5/sky130_ff_1.98_0_nldm.lib \
	LIB/sky130_scl_9T_0_0_5/sky130_ss_1.62_125_nldm.lib \
	LIB/sky130_scl_9T_0_0_5/sky130_tt_1.8_25_nldm.lib

read_hdl gpio_inpad_sky130.v

elaborate GPIO_IN

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
write_hdl > outputs/gpio_netlist.v
#write_sdc > outputs/post_synth_fabric_sdc.sdc
#write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge  -setuphold split > outputs/delays.sdf
exit
