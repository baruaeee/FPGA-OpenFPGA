//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Netlist Summary
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Nov 21 16:42:28 2024
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

`include "/home/cae1/Desktop/FPGA-OpenFPGA/Fabric/tasks/synthesizable_verilog/sky130_scl_9T.v"

// ------ Include fabric top-level netlists -----
//`include "./SRC/fabric_netlists.v"
`include "fpga_top.v"

`include "and2_output_verilog.v"

`include "and2_autocheck_top_tb.v"