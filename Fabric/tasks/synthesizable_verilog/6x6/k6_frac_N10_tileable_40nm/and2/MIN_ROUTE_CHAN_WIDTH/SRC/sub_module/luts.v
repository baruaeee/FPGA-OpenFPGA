//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Look-Up Tables
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Wed Oct 23 22:37:03 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for frac_lut6 -----
module frac_lut6(in,
                 sram,
                 sram_inv,
                 mode,
                 mode_inv,
                 lut5_out,
                 lut6_out);
//----- INPUT PORTS -----
input [0:5] in;
//----- INPUT PORTS -----
input [0:63] sram;
//----- INPUT PORTS -----
input [0:63] sram_inv;
//----- INPUT PORTS -----
input [0:0] mode;
//----- INPUT PORTS -----
input [0:0] mode_inv;
//----- OUTPUT PORTS -----
output [0:1] lut5_out;
//----- OUTPUT PORTS -----
output [0:0] lut6_out;

//----- BEGIN wire-connection ports -----
wire [0:5] in;
wire [0:1] lut5_out;
wire [0:0] lut6_out;
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] sky130_fd_sc_hd__buf_4_0_X;
wire [0:0] sky130_fd_sc_hd__buf_4_1_X;
wire [0:0] sky130_fd_sc_hd__buf_4_2_X;
wire [0:0] sky130_fd_sc_hd__buf_4_3_X;
wire [0:0] sky130_fd_sc_hd__buf_4_4_X;
wire [0:0] sky130_fd_sc_hd__buf_4_5_X;
wire [0:0] sky130_fd_sc_hd__inv_1_0_Y;
wire [0:0] sky130_fd_sc_hd__inv_1_1_Y;
wire [0:0] sky130_fd_sc_hd__inv_1_2_Y;
wire [0:0] sky130_fd_sc_hd__inv_1_3_Y;
wire [0:0] sky130_fd_sc_hd__inv_1_4_Y;
wire [0:0] sky130_fd_sc_hd__inv_1_5_Y;
wire [0:0] sky130_fd_sc_hd__or2_1_0_X;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	sky130_fd_sc_hd__or2_1 sky130_fd_sc_hd__or2_1_0_ (
		.A(mode),
		.B(in[5]),
		.X(sky130_fd_sc_hd__or2_1_0_X));

	sky130_fd_sc_hd__inv_1 sky130_fd_sc_hd__inv_1_0_ (
		.A(in[0]),
		.Y(sky130_fd_sc_hd__inv_1_0_Y));

	sky130_fd_sc_hd__inv_1 sky130_fd_sc_hd__inv_1_1_ (
		.A(in[1]),
		.Y(sky130_fd_sc_hd__inv_1_1_Y));

	sky130_fd_sc_hd__inv_1 sky130_fd_sc_hd__inv_1_2_ (
		.A(in[2]),
		.Y(sky130_fd_sc_hd__inv_1_2_Y));

	sky130_fd_sc_hd__inv_1 sky130_fd_sc_hd__inv_1_3_ (
		.A(in[3]),
		.Y(sky130_fd_sc_hd__inv_1_3_Y));

	sky130_fd_sc_hd__inv_1 sky130_fd_sc_hd__inv_1_4_ (
		.A(in[4]),
		.Y(sky130_fd_sc_hd__inv_1_4_Y));

	sky130_fd_sc_hd__inv_1 sky130_fd_sc_hd__inv_1_5_ (
		.A(sky130_fd_sc_hd__or2_1_0_X),
		.Y(sky130_fd_sc_hd__inv_1_5_Y));

	sky130_fd_sc_hd__buf_4 sky130_fd_sc_hd__buf_4_0_ (
		.A(in[0]),
		.X(sky130_fd_sc_hd__buf_4_0_X));

	sky130_fd_sc_hd__buf_4 sky130_fd_sc_hd__buf_4_1_ (
		.A(in[1]),
		.X(sky130_fd_sc_hd__buf_4_1_X));

	sky130_fd_sc_hd__buf_4 sky130_fd_sc_hd__buf_4_2_ (
		.A(in[2]),
		.X(sky130_fd_sc_hd__buf_4_2_X));

	sky130_fd_sc_hd__buf_4 sky130_fd_sc_hd__buf_4_3_ (
		.A(in[3]),
		.X(sky130_fd_sc_hd__buf_4_3_X));

	sky130_fd_sc_hd__buf_4 sky130_fd_sc_hd__buf_4_4_ (
		.A(in[4]),
		.X(sky130_fd_sc_hd__buf_4_4_X));

	sky130_fd_sc_hd__buf_4 sky130_fd_sc_hd__buf_4_5_ (
		.A(sky130_fd_sc_hd__or2_1_0_X),
		.X(sky130_fd_sc_hd__buf_4_5_X));

	frac_lut6_mux frac_lut6_mux_0_ (
		.in(sram[0:63]),
		.sram({sky130_fd_sc_hd__buf_4_0_X, sky130_fd_sc_hd__buf_4_1_X, sky130_fd_sc_hd__buf_4_2_X, sky130_fd_sc_hd__buf_4_3_X, sky130_fd_sc_hd__buf_4_4_X, sky130_fd_sc_hd__buf_4_5_X}),
		.sram_inv({sky130_fd_sc_hd__inv_1_0_Y, sky130_fd_sc_hd__inv_1_1_Y, sky130_fd_sc_hd__inv_1_2_Y, sky130_fd_sc_hd__inv_1_3_Y, sky130_fd_sc_hd__inv_1_4_Y, sky130_fd_sc_hd__inv_1_5_Y}),
		.lut5_out(lut5_out[0:1]),
		.lut6_out(lut6_out));

endmodule
// ----- END Verilog module for frac_lut6 -----

//----- Default net type -----
`default_nettype wire



