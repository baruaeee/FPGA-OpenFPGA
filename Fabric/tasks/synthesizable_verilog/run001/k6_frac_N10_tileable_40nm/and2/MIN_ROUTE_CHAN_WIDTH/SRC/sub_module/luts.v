//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Look-Up Tables
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Fri Nov  8 15:44:44 2024
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


wire [0:0] INVX1HVT_0_Y;
wire [0:0] INVX1HVT_1_Y;
wire [0:0] INVX1HVT_2_Y;
wire [0:0] INVX1HVT_3_Y;
wire [0:0] INVX1HVT_4_Y;
wire [0:0] INVX1HVT_5_Y;
wire [0:0] OR2_0_out;
wire [0:0] buf4_0_out;
wire [0:0] buf4_1_out;
wire [0:0] buf4_2_out;
wire [0:0] buf4_3_out;
wire [0:0] buf4_4_out;
wire [0:0] buf4_5_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	OR2 OR2_0_ (
		.a(mode),
		.b(in[5]),
		.out(OR2_0_out));

	INVX1HVT INVX1HVT_0_ (
		.A(in[0]),
		.Y(INVX1HVT_0_Y));

	INVX1HVT INVX1HVT_1_ (
		.A(in[1]),
		.Y(INVX1HVT_1_Y));

	INVX1HVT INVX1HVT_2_ (
		.A(in[2]),
		.Y(INVX1HVT_2_Y));

	INVX1HVT INVX1HVT_3_ (
		.A(in[3]),
		.Y(INVX1HVT_3_Y));

	INVX1HVT INVX1HVT_4_ (
		.A(in[4]),
		.Y(INVX1HVT_4_Y));

	INVX1HVT INVX1HVT_5_ (
		.A(OR2_0_out),
		.Y(INVX1HVT_5_Y));

	buf4 buf4_0_ (
		.in(in[0]),
		.out(buf4_0_out));

	buf4 buf4_1_ (
		.in(in[1]),
		.out(buf4_1_out));

	buf4 buf4_2_ (
		.in(in[2]),
		.out(buf4_2_out));

	buf4 buf4_3_ (
		.in(in[3]),
		.out(buf4_3_out));

	buf4 buf4_4_ (
		.in(in[4]),
		.out(buf4_4_out));

	buf4 buf4_5_ (
		.in(OR2_0_out),
		.out(buf4_5_out));

	frac_lut6_mux frac_lut6_mux_0_ (
		.in(sram[0:63]),
		.sram({buf4_0_out, buf4_1_out, buf4_2_out, buf4_3_out, buf4_4_out, buf4_5_out}),
		.sram_inv({INVX1HVT_0_Y, INVX1HVT_1_Y, INVX1HVT_2_Y, INVX1HVT_3_Y, INVX1HVT_4_Y, INVX1HVT_5_Y}),
		.lut5_out(lut5_out[0:1]),
		.lut6_out(lut6_out));

endmodule
// ----- END Verilog module for frac_lut6 -----

//----- Default net type -----
`default_nettype wire



