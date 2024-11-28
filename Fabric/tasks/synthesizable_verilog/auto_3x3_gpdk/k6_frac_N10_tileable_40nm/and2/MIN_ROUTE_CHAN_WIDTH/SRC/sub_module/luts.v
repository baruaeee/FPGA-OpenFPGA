//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Look-Up Tables
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Wed Nov 27 19:26:12 2024
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


wire [0:0] BUFX4LVT_0_Y;
wire [0:0] BUFX4LVT_1_Y;
wire [0:0] BUFX4LVT_2_Y;
wire [0:0] BUFX4LVT_3_Y;
wire [0:0] BUFX4LVT_4_Y;
wire [0:0] BUFX4LVT_5_Y;
wire [0:0] INVX1LVT_0_Y;
wire [0:0] INVX1LVT_1_Y;
wire [0:0] INVX1LVT_2_Y;
wire [0:0] INVX1LVT_3_Y;
wire [0:0] INVX1LVT_4_Y;
wire [0:0] INVX1LVT_5_Y;
wire [0:0] OR2X1LVT_0_Y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	OR2X1LVT OR2X1LVT_0_ (
		.A(mode),
		.B(in[5]),
		.Y(OR2X1LVT_0_Y));

	INVX1LVT INVX1LVT_0_ (
		.A(in[0]),
		.Y(INVX1LVT_0_Y));

	INVX1LVT INVX1LVT_1_ (
		.A(in[1]),
		.Y(INVX1LVT_1_Y));

	INVX1LVT INVX1LVT_2_ (
		.A(in[2]),
		.Y(INVX1LVT_2_Y));

	INVX1LVT INVX1LVT_3_ (
		.A(in[3]),
		.Y(INVX1LVT_3_Y));

	INVX1LVT INVX1LVT_4_ (
		.A(in[4]),
		.Y(INVX1LVT_4_Y));

	INVX1LVT INVX1LVT_5_ (
		.A(OR2X1LVT_0_Y),
		.Y(INVX1LVT_5_Y));

	BUFX4LVT BUFX4LVT_0_ (
		.A(in[0]),
		.Y(BUFX4LVT_0_Y));

	BUFX4LVT BUFX4LVT_1_ (
		.A(in[1]),
		.Y(BUFX4LVT_1_Y));

	BUFX4LVT BUFX4LVT_2_ (
		.A(in[2]),
		.Y(BUFX4LVT_2_Y));

	BUFX4LVT BUFX4LVT_3_ (
		.A(in[3]),
		.Y(BUFX4LVT_3_Y));

	BUFX4LVT BUFX4LVT_4_ (
		.A(in[4]),
		.Y(BUFX4LVT_4_Y));

	BUFX4LVT BUFX4LVT_5_ (
		.A(OR2X1LVT_0_Y),
		.Y(BUFX4LVT_5_Y));

	frac_lut6_mux frac_lut6_mux_0_ (
		.in(sram[0:63]),
		.sram({BUFX4LVT_0_Y, BUFX4LVT_1_Y, BUFX4LVT_2_Y, BUFX4LVT_3_Y, BUFX4LVT_4_Y, BUFX4LVT_5_Y}),
		.sram_inv({INVX1LVT_0_Y, INVX1LVT_1_Y, INVX1LVT_2_Y, INVX1LVT_3_Y, INVX1LVT_4_Y, INVX1LVT_5_Y}),
		.lut5_out(lut5_out[0:1]),
		.lut6_out(lut6_out));

endmodule
// ----- END Verilog module for frac_lut6 -----

//----- Default net type -----
`default_nettype wire



