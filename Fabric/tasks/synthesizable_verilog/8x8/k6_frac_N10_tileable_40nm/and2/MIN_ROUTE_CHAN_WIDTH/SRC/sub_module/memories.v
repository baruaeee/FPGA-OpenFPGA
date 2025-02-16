//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Memories used in FPGA
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Sun Nov  3 16:14:39 2024
//-------------------------------------------
//----- Default net type -----
// `default_nettype none

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

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_0_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(ccff_head),
		.Q(mem_out[0]),
		.QN(mem_outb[0]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_1_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.QN(mem_outb[1]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_2_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.QN(mem_outb[2]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_size4_mem -----

//----- Default net type -----
// `default_nettype wire




//----- Default net type -----
// `default_nettype none

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

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_0_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(ccff_head),
		.Q(mem_out[0]),
		.QN(mem_outb[0]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_1_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.QN(mem_outb[1]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_size2_mem -----

//----- Default net type -----
// `default_nettype wire




//----- Default net type -----
// `default_nettype none

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

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_0_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(ccff_head),
		.Q(mem_out[0]),
		.QN(mem_outb[0]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_1_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.QN(mem_outb[1]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_size3_mem -----

//----- Default net type -----
// `default_nettype wire




//----- Default net type -----
// `default_nettype none

// ----- Verilog module for mux_tree_tapbuf_size9_mem -----
module mux_tree_tapbuf_size9_mem(pReset,
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
output [0:3] mem_out;
//----- OUTPUT PORTS -----
output [0:3] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign ccff_tail[0] = mem_out[3];
// ----- END Local output short connections -----

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_0_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(ccff_head),
		.Q(mem_out[0]),
		.QN(mem_outb[0]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_1_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.QN(mem_outb[1]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_2_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.QN(mem_outb[2]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_3_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[2]),
		.Q(mem_out[3]),
		.QN(mem_outb[3]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_size9_mem -----

//----- Default net type -----
// `default_nettype wire




//----- Default net type -----
// `default_nettype none

// ----- Verilog module for mux_tree_tapbuf_size7_mem -----
module mux_tree_tapbuf_size7_mem(pReset,
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

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_0_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(ccff_head),
		.Q(mem_out[0]),
		.QN(mem_outb[0]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_1_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.QN(mem_outb[1]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_2_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.QN(mem_outb[2]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_size7_mem -----

//----- Default net type -----
// `default_nettype wire




//----- Default net type -----
// `default_nettype none

// ----- Verilog module for mux_tree_tapbuf_size8_mem -----
module mux_tree_tapbuf_size8_mem(pReset,
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
output [0:3] mem_out;
//----- OUTPUT PORTS -----
output [0:3] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign ccff_tail[0] = mem_out[3];
// ----- END Local output short connections -----

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_0_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(ccff_head),
		.Q(mem_out[0]),
		.QN(mem_outb[0]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_1_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.QN(mem_outb[1]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_2_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.QN(mem_outb[2]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_3_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[2]),
		.Q(mem_out[3]),
		.QN(mem_outb[3]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_size8_mem -----

//----- Default net type -----
// `default_nettype wire




//----- Default net type -----
// `default_nettype none

// ----- Verilog module for mux_tree_tapbuf_size12_mem -----
module mux_tree_tapbuf_size12_mem(pReset,
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
output [0:3] mem_out;
//----- OUTPUT PORTS -----
output [0:3] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign ccff_tail[0] = mem_out[3];
// ----- END Local output short connections -----

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_0_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(ccff_head),
		.Q(mem_out[0]),
		.QN(mem_outb[0]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_1_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.QN(mem_outb[1]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_2_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.QN(mem_outb[2]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_3_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[2]),
		.Q(mem_out[3]),
		.QN(mem_outb[3]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_size12_mem -----

//----- Default net type -----
// `default_nettype wire




//----- Default net type -----
// `default_nettype none

// ----- Verilog module for mux_tree_tapbuf_size5_mem -----
module mux_tree_tapbuf_size5_mem(pReset,
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

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_0_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(ccff_head),
		.Q(mem_out[0]),
		.QN(mem_outb[0]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_1_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.QN(mem_outb[1]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_2_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.QN(mem_outb[2]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_size5_mem -----

//----- Default net type -----
// `default_nettype wire




//----- Default net type -----
// `default_nettype none

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

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_0_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(ccff_head),
		.Q(mem_out[0]),
		.QN(mem_outb[0]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_1_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.QN(mem_outb[1]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_2_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.QN(mem_outb[2]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_3_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[2]),
		.Q(mem_out[3]),
		.QN(mem_outb[3]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_4_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[3]),
		.Q(mem_out[4]),
		.QN(mem_outb[4]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_5_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[4]),
		.Q(mem_out[5]),
		.QN(mem_outb[5]));

endmodule
// ----- END Verilog module for mux_tree_size60_mem -----

//----- Default net type -----
// `default_nettype wire




//----- Default net type -----
// `default_nettype none

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

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_0_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(ccff_head),
		.Q(mem_out[0]),
		.QN(mem_outb[0]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_1_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.QN(mem_outb[1]));

endmodule
// ----- END Verilog module for mux_tree_size2_mem -----

//----- Default net type -----
// `default_nettype wire




//----- Default net type -----
// `default_nettype none

// ----- Verilog module for frac_lut6_sky130_osu_sc_18T_hs__dffr_1_mem -----
module frac_lut6_sky130_osu_sc_18T_hs__dffr_1_mem(pReset,
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

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_0_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(ccff_head),
		.Q(mem_out[0]),
		.QN(mem_outb[0]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_1_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[0]),
		.Q(mem_out[1]),
		.QN(mem_outb[1]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_2_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[1]),
		.Q(mem_out[2]),
		.QN(mem_outb[2]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_3_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[2]),
		.Q(mem_out[3]),
		.QN(mem_outb[3]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_4_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[3]),
		.Q(mem_out[4]),
		.QN(mem_outb[4]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_5_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[4]),
		.Q(mem_out[5]),
		.QN(mem_outb[5]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_6_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[5]),
		.Q(mem_out[6]),
		.QN(mem_outb[6]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_7_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[6]),
		.Q(mem_out[7]),
		.QN(mem_outb[7]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_8_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[7]),
		.Q(mem_out[8]),
		.QN(mem_outb[8]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_9_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[8]),
		.Q(mem_out[9]),
		.QN(mem_outb[9]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_10_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[9]),
		.Q(mem_out[10]),
		.QN(mem_outb[10]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_11_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[10]),
		.Q(mem_out[11]),
		.QN(mem_outb[11]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_12_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[11]),
		.Q(mem_out[12]),
		.QN(mem_outb[12]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_13_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[12]),
		.Q(mem_out[13]),
		.QN(mem_outb[13]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_14_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[13]),
		.Q(mem_out[14]),
		.QN(mem_outb[14]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_15_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[14]),
		.Q(mem_out[15]),
		.QN(mem_outb[15]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_16_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[15]),
		.Q(mem_out[16]),
		.QN(mem_outb[16]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_17_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[16]),
		.Q(mem_out[17]),
		.QN(mem_outb[17]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_18_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[17]),
		.Q(mem_out[18]),
		.QN(mem_outb[18]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_19_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[18]),
		.Q(mem_out[19]),
		.QN(mem_outb[19]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_20_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[19]),
		.Q(mem_out[20]),
		.QN(mem_outb[20]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_21_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[20]),
		.Q(mem_out[21]),
		.QN(mem_outb[21]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_22_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[21]),
		.Q(mem_out[22]),
		.QN(mem_outb[22]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_23_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[22]),
		.Q(mem_out[23]),
		.QN(mem_outb[23]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_24_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[23]),
		.Q(mem_out[24]),
		.QN(mem_outb[24]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_25_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[24]),
		.Q(mem_out[25]),
		.QN(mem_outb[25]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_26_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[25]),
		.Q(mem_out[26]),
		.QN(mem_outb[26]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_27_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[26]),
		.Q(mem_out[27]),
		.QN(mem_outb[27]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_28_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[27]),
		.Q(mem_out[28]),
		.QN(mem_outb[28]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_29_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[28]),
		.Q(mem_out[29]),
		.QN(mem_outb[29]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_30_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[29]),
		.Q(mem_out[30]),
		.QN(mem_outb[30]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_31_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[30]),
		.Q(mem_out[31]),
		.QN(mem_outb[31]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_32_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[31]),
		.Q(mem_out[32]),
		.QN(mem_outb[32]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_33_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[32]),
		.Q(mem_out[33]),
		.QN(mem_outb[33]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_34_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[33]),
		.Q(mem_out[34]),
		.QN(mem_outb[34]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_35_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[34]),
		.Q(mem_out[35]),
		.QN(mem_outb[35]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_36_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[35]),
		.Q(mem_out[36]),
		.QN(mem_outb[36]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_37_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[36]),
		.Q(mem_out[37]),
		.QN(mem_outb[37]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_38_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[37]),
		.Q(mem_out[38]),
		.QN(mem_outb[38]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_39_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[38]),
		.Q(mem_out[39]),
		.QN(mem_outb[39]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_40_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[39]),
		.Q(mem_out[40]),
		.QN(mem_outb[40]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_41_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[40]),
		.Q(mem_out[41]),
		.QN(mem_outb[41]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_42_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[41]),
		.Q(mem_out[42]),
		.QN(mem_outb[42]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_43_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[42]),
		.Q(mem_out[43]),
		.QN(mem_outb[43]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_44_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[43]),
		.Q(mem_out[44]),
		.QN(mem_outb[44]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_45_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[44]),
		.Q(mem_out[45]),
		.QN(mem_outb[45]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_46_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[45]),
		.Q(mem_out[46]),
		.QN(mem_outb[46]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_47_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[46]),
		.Q(mem_out[47]),
		.QN(mem_outb[47]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_48_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[47]),
		.Q(mem_out[48]),
		.QN(mem_outb[48]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_49_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[48]),
		.Q(mem_out[49]),
		.QN(mem_outb[49]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_50_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[49]),
		.Q(mem_out[50]),
		.QN(mem_outb[50]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_51_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[50]),
		.Q(mem_out[51]),
		.QN(mem_outb[51]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_52_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[51]),
		.Q(mem_out[52]),
		.QN(mem_outb[52]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_53_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[52]),
		.Q(mem_out[53]),
		.QN(mem_outb[53]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_54_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[53]),
		.Q(mem_out[54]),
		.QN(mem_outb[54]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_55_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[54]),
		.Q(mem_out[55]),
		.QN(mem_outb[55]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_56_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[55]),
		.Q(mem_out[56]),
		.QN(mem_outb[56]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_57_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[56]),
		.Q(mem_out[57]),
		.QN(mem_outb[57]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_58_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[57]),
		.Q(mem_out[58]),
		.QN(mem_outb[58]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_59_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[58]),
		.Q(mem_out[59]),
		.QN(mem_outb[59]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_60_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[59]),
		.Q(mem_out[60]),
		.QN(mem_outb[60]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_61_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[60]),
		.Q(mem_out[61]),
		.QN(mem_outb[61]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_62_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[61]),
		.Q(mem_out[62]),
		.QN(mem_outb[62]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_63_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[62]),
		.Q(mem_out[63]),
		.QN(mem_outb[63]));

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_64_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(mem_out[63]),
		.Q(mem_out[64]),
		.QN(mem_outb[64]));

endmodule
// ----- END Verilog module for frac_lut6_sky130_osu_sc_18T_hs__dffr_1_mem -----

//----- Default net type -----
// `default_nettype wire




//----- Default net type -----
// `default_nettype none

// ----- Verilog module for GPIO_sky130_osu_sc_18T_hs__dffr_1_mem -----
module GPIO_sky130_osu_sc_18T_hs__dffr_1_mem(pReset,
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

	sky130_osu_sc_18T_hs__dffr_1 sky130_osu_sc_18T_hs__dffr_1_0_ (
		.RN(pReset),
		.CK(prog_clk),
		.D(ccff_head),
		.Q(mem_out),
		.QN(mem_outb));

endmodule
// ----- END Verilog module for GPIO_sky130_osu_sc_18T_hs__dffr_1_mem -----

//----- Default net type -----
// `default_nettype wire




