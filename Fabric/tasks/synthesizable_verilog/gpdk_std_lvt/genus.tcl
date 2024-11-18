read_hdl gpio.v
read_libs fast_vdd1v0_basicCells_lvt.lib slow_vdd1v0_basicCells_lvt.lib 
elaborate GPIO
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium
syn_generic
syn_map
syn_opt
write_hdl > GPIO.v
exit
