//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Netlist Summary
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Sun Nov  3 02:43:15 2024
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

`include "/home/cae1/Desktop/FPGA-OpenFPGA/Fabric/tasks/synthesizable_verilog/sky130_osu_sc_18T_hs.v"
`include "/home/cae1/Desktop/FPGA-OpenFPGA/Fabric/tasks/synthesizable_verilog/GPIO/gpio_netlist_sky130_osu.v"

// ------ Include fabric top-level netlists -----
//`include "./SRC/fabric_netlists.v"
`include "/home/cae1/Desktop/FPGA-OpenFPGA/Synthesis/Fabric/auto_3x3_osu/outputs/post_synth_fabric_netlist.v"

`include "and2_output_verilog.v"

`include "./SRC/and2_autocheck_top_tb.v"
