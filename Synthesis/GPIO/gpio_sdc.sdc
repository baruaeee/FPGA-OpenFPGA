set_units -time s

create_clock -name clk[0] -period 1.57834712e-09 -waveform {0 7.891735598e-10} [get_ports "clk[0]"]



set_input_delay -clock clk[0] -max 1.57834712e-09 [get_ports "A"]
set_input_delay -clock clk[0] -max 1.57834712e-09 [get_ports "DIR"]


set_output_delay -clock clk[0] -max 1.57834712e-09 [get_ports "Y"]


set_input_delay -clock clk[0] -max 1.57834712e-09 [get_ports "PAD"]
set_output_delay -clock clk[0] -max 1.57834712e-09 [get_ports "PAD"]
