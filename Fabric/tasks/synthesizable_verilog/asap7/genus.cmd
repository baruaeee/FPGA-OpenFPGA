# Cadence Genus(TM) Synthesis Solution, Version 22.13-s093_1, built Sep  5 2023 17:56:02

# Date: Thu Nov 07 03:41:58 2024
# Host: cae-europractice1.othr.de (x86_64 w/Linux 5.15.0-210.163.7.el8uek.x86_64) (1core*16cpus*16physical cpus*AMD Ryzen Threadripper PRO 5975WX 32-Cores 512KB)
# OS:   Red Hat Enterprise Linux release 8.10 (Ootpa)

read_hdl mux2.v
read_libs asap7sc7p5t_SIMPLE_SLVT_TT_nldm_211120.lib asap7sc7p5t_INVBUF_SLVT_TT_nldm_220122.lib
elaborate MUX2
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium
syn_generic
syn_map
syn_opt
write_hdl > mux21.v
