//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Memories used in FPGA
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Wed Oct 23 21:24:52 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_tree_tapbuf_size4_mem -----
module mux_tree_tapbuf_size4_mem(pReset,
                                 prog_clk,
                                 ccff_head,
                                 ccff_tail,
                                 mem_out,
                                 mem_outb);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:2] mem_out;
//----- OUTPUT PORTS -----
output [0:2] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign ccff_tail[0] = mem_out[2];
// ----- END Local output short connections -----

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_0_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(ccff_head),
		.Q(mem_out[0]),
		.Q_N(mem_outb[0]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_1_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.Q_N(mem_outb[1]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_2_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.Q_N(mem_outb[2]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_size4_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_tree_tapbuf_size2_mem -----
module mux_tree_tapbuf_size2_mem(pReset,
                                 prog_clk,
                                 ccff_head,
                                 ccff_tail,
                                 mem_out,
                                 mem_outb);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:1] mem_out;
//----- OUTPUT PORTS -----
output [0:1] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign ccff_tail[0] = mem_out[1];
// ----- END Local output short connections -----

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_0_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(ccff_head),
		.Q(mem_out[0]),
		.Q_N(mem_outb[0]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_1_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.Q_N(mem_outb[1]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_size2_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_tree_tapbuf_size3_mem -----
module mux_tree_tapbuf_size3_mem(pReset,
                                 prog_clk,
                                 ccff_head,
                                 ccff_tail,
                                 mem_out,
                                 mem_outb);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:1] mem_out;
//----- OUTPUT PORTS -----
output [0:1] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign ccff_tail[0] = mem_out[1];
// ----- END Local output short connections -----

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_0_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(ccff_head),
		.Q(mem_out[0]),
		.Q_N(mem_outb[0]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_1_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.Q_N(mem_outb[1]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_size3_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_tree_size60_mem -----
module mux_tree_size60_mem(pReset,
                           prog_clk,
                           ccff_head,
                           ccff_tail,
                           mem_out,
                           mem_outb);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:5] mem_out;
//----- OUTPUT PORTS -----
output [0:5] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign ccff_tail[0] = mem_out[5];
// ----- END Local output short connections -----

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_0_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(ccff_head),
		.Q(mem_out[0]),
		.Q_N(mem_outb[0]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_1_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.Q_N(mem_outb[1]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_2_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.Q_N(mem_outb[2]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_3_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[2]),
		.Q(mem_out[3]),
		.Q_N(mem_outb[3]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_4_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[3]),
		.Q(mem_out[4]),
		.Q_N(mem_outb[4]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_5_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[4]),
		.Q(mem_out[5]),
		.Q_N(mem_outb[5]));

endmodule
// ----- END Verilog module for mux_tree_size60_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_tree_size2_mem -----
module mux_tree_size2_mem(pReset,
                          prog_clk,
                          ccff_head,
                          ccff_tail,
                          mem_out,
                          mem_outb);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:1] mem_out;
//----- OUTPUT PORTS -----
output [0:1] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign ccff_tail[0] = mem_out[1];
// ----- END Local output short connections -----

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_0_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(ccff_head),
		.Q(mem_out[0]),
		.Q_N(mem_outb[0]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_1_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.Q_N(mem_outb[1]));

endmodule
// ----- END Verilog module for mux_tree_size2_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for frac_lut6_sky130_fd_sc_hd__dfrbp_1_mem -----
module frac_lut6_sky130_fd_sc_hd__dfrbp_1_mem(pReset,
                                              prog_clk,
                                              ccff_head,
                                              ccff_tail,
                                              mem_out,
                                              mem_outb);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:64] mem_out;
//----- OUTPUT PORTS -----
output [0:64] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign ccff_tail[0] = mem_out[64];
// ----- END Local output short connections -----

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_0_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(ccff_head),
		.Q(mem_out[0]),
		.Q_N(mem_outb[0]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_1_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.Q_N(mem_outb[1]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_2_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.Q_N(mem_outb[2]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_3_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[2]),
		.Q(mem_out[3]),
		.Q_N(mem_outb[3]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_4_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[3]),
		.Q(mem_out[4]),
		.Q_N(mem_outb[4]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_5_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[4]),
		.Q(mem_out[5]),
		.Q_N(mem_outb[5]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_6_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[5]),
		.Q(mem_out[6]),
		.Q_N(mem_outb[6]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_7_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[6]),
		.Q(mem_out[7]),
		.Q_N(mem_outb[7]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_8_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[7]),
		.Q(mem_out[8]),
		.Q_N(mem_outb[8]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_9_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[8]),
		.Q(mem_out[9]),
		.Q_N(mem_outb[9]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_10_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[9]),
		.Q(mem_out[10]),
		.Q_N(mem_outb[10]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_11_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[10]),
		.Q(mem_out[11]),
		.Q_N(mem_outb[11]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_12_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[11]),
		.Q(mem_out[12]),
		.Q_N(mem_outb[12]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_13_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[12]),
		.Q(mem_out[13]),
		.Q_N(mem_outb[13]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_14_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[13]),
		.Q(mem_out[14]),
		.Q_N(mem_outb[14]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_15_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[14]),
		.Q(mem_out[15]),
		.Q_N(mem_outb[15]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_16_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[15]),
		.Q(mem_out[16]),
		.Q_N(mem_outb[16]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_17_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[16]),
		.Q(mem_out[17]),
		.Q_N(mem_outb[17]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_18_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[17]),
		.Q(mem_out[18]),
		.Q_N(mem_outb[18]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_19_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[18]),
		.Q(mem_out[19]),
		.Q_N(mem_outb[19]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_20_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[19]),
		.Q(mem_out[20]),
		.Q_N(mem_outb[20]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_21_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[20]),
		.Q(mem_out[21]),
		.Q_N(mem_outb[21]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_22_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[21]),
		.Q(mem_out[22]),
		.Q_N(mem_outb[22]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_23_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[22]),
		.Q(mem_out[23]),
		.Q_N(mem_outb[23]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_24_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[23]),
		.Q(mem_out[24]),
		.Q_N(mem_outb[24]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_25_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[24]),
		.Q(mem_out[25]),
		.Q_N(mem_outb[25]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_26_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[25]),
		.Q(mem_out[26]),
		.Q_N(mem_outb[26]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_27_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[26]),
		.Q(mem_out[27]),
		.Q_N(mem_outb[27]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_28_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[27]),
		.Q(mem_out[28]),
		.Q_N(mem_outb[28]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_29_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[28]),
		.Q(mem_out[29]),
		.Q_N(mem_outb[29]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_30_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[29]),
		.Q(mem_out[30]),
		.Q_N(mem_outb[30]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_31_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[30]),
		.Q(mem_out[31]),
		.Q_N(mem_outb[31]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_32_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[31]),
		.Q(mem_out[32]),
		.Q_N(mem_outb[32]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_33_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[32]),
		.Q(mem_out[33]),
		.Q_N(mem_outb[33]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_34_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[33]),
		.Q(mem_out[34]),
		.Q_N(mem_outb[34]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_35_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[34]),
		.Q(mem_out[35]),
		.Q_N(mem_outb[35]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_36_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[35]),
		.Q(mem_out[36]),
		.Q_N(mem_outb[36]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_37_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[36]),
		.Q(mem_out[37]),
		.Q_N(mem_outb[37]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_38_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[37]),
		.Q(mem_out[38]),
		.Q_N(mem_outb[38]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_39_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[38]),
		.Q(mem_out[39]),
		.Q_N(mem_outb[39]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_40_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[39]),
		.Q(mem_out[40]),
		.Q_N(mem_outb[40]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_41_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[40]),
		.Q(mem_out[41]),
		.Q_N(mem_outb[41]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_42_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[41]),
		.Q(mem_out[42]),
		.Q_N(mem_outb[42]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_43_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[42]),
		.Q(mem_out[43]),
		.Q_N(mem_outb[43]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_44_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[43]),
		.Q(mem_out[44]),
		.Q_N(mem_outb[44]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_45_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[44]),
		.Q(mem_out[45]),
		.Q_N(mem_outb[45]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_46_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[45]),
		.Q(mem_out[46]),
		.Q_N(mem_outb[46]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_47_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[46]),
		.Q(mem_out[47]),
		.Q_N(mem_outb[47]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_48_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[47]),
		.Q(mem_out[48]),
		.Q_N(mem_outb[48]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_49_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[48]),
		.Q(mem_out[49]),
		.Q_N(mem_outb[49]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_50_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[49]),
		.Q(mem_out[50]),
		.Q_N(mem_outb[50]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_51_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[50]),
		.Q(mem_out[51]),
		.Q_N(mem_outb[51]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_52_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[51]),
		.Q(mem_out[52]),
		.Q_N(mem_outb[52]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_53_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[52]),
		.Q(mem_out[53]),
		.Q_N(mem_outb[53]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_54_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[53]),
		.Q(mem_out[54]),
		.Q_N(mem_outb[54]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_55_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[54]),
		.Q(mem_out[55]),
		.Q_N(mem_outb[55]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_56_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[55]),
		.Q(mem_out[56]),
		.Q_N(mem_outb[56]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_57_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[56]),
		.Q(mem_out[57]),
		.Q_N(mem_outb[57]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_58_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[57]),
		.Q(mem_out[58]),
		.Q_N(mem_outb[58]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_59_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[58]),
		.Q(mem_out[59]),
		.Q_N(mem_outb[59]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_60_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[59]),
		.Q(mem_out[60]),
		.Q_N(mem_outb[60]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_61_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[60]),
		.Q(mem_out[61]),
		.Q_N(mem_outb[61]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_62_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[61]),
		.Q(mem_out[62]),
		.Q_N(mem_outb[62]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_63_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[62]),
		.Q(mem_out[63]),
		.Q_N(mem_outb[63]));

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_64_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(mem_out[63]),
		.Q(mem_out[64]),
		.Q_N(mem_outb[64]));

endmodule
// ----- END Verilog module for frac_lut6_sky130_fd_sc_hd__dfrbp_1_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for GPIO_sky130_fd_sc_hd__dfrbp_1_mem -----
module GPIO_sky130_fd_sc_hd__dfrbp_1_mem(pReset,
                                         prog_clk,
                                         ccff_head,
                                         ccff_tail,
                                         mem_out,
                                         mem_outb);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:0] mem_out;
//----- OUTPUT PORTS -----
output [0:0] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign ccff_tail[0] = mem_out[0];
// ----- END Local output short connections -----

	sky130_fd_sc_hd__dfrbp_1 sky130_fd_sc_hd__dfrbp_1_0_ (
		.RESET_B(pReset),
		.CLK(prog_clk),
		.D(ccff_head),
		.Q(mem_out),
		.Q_N(mem_outb));

endmodule
// ----- END Verilog module for GPIO_sky130_fd_sc_hd__dfrbp_1_mem -----

//----- Default net type -----
`default_nettype wire



