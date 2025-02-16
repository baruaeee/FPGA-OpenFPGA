set_units -time s

create_clock -name CLK -period 1.290801355e-09 -waveform {0 6.454006773e-10} [get_ports CK]
set_input_delay -clock CLK -max 1.454006773e-10 [get_ports D]
set_input_delay -clock CLK -min 1e-10 [get_ports D]
set_input_delay -clock CLK -max 1e-10 [get_ports {SET RST}]
set_input_delay -clock CLK -min 0 [get_ports {SET RST}]
set_false_path -from [get_ports SET]
set_false_path -from [get_ports RST]
set_output_delay -clock CLK -max 1.454006773e-10 [get_ports Q]
set_output_delay -clock CLK -min 1e-10 [get_ports Q]
