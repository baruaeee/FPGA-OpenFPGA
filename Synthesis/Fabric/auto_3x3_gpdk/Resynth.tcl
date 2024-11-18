read_libs ./LIB/fast_vdd1v0_basicCells_lvt.lib ./LIB/fast_vdd1v2_basicCells_lvt.lib \
./LIB/slow_vdd1v0_basicCells_lvt.lib ./LIB/slow_vdd1v2_basicCells_lvt.lib

read_hdl flat.v
elaborate

# set and read SDC files
read_sdc ./SDC/fabric.sdc

## not necessary as already synthesized
# set_db syn_generic_effort medium

## not necessary as already synthesized
# set_db syn_map_effort medium

set_db syn_opt_effort medium

## not necessary as already synthesized
# syn_generic

## not necessary as already synthesized
# syn_map

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


#exit
