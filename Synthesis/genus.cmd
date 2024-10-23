# Cadence Genus(TM) Synthesis Solution, Version 22.13-s093_1, built Sep  5 2023 17:56:02

# Date: Wed Oct 23 03:10:10 2024
# Host: cae-europractice1.othr.de (x86_64 w/Linux 5.15.0-210.163.7.el8uek.x86_64) (1core*16cpus*16physical cpus*AMD Ryzen Threadripper PRO 5975WX 32-Cores 512KB)
# OS:   Red Hat Enterprise Linux release 8.10 (Ootpa)

read_libs sky130_fd_sc_hd__tt_025C_1v80.lib
read_hdl dff.v
elaborate DFFR
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium
syn_generic
syn_map
syn_opt
write_hdl dffr.v
write -generic
write -generic dffr.v
write -generic > dffr.v
write > dffr.v
exit
