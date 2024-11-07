//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Look-Up Tables
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Nov  7 16:30:06 2024
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


wire [0:0] BUFx4_ASAP7_75t_SL_0_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_1_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_2_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_3_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_4_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_5_Y;
wire [0:0] INVx1_ASAP7_75t_SL_0_Y;
wire [0:0] INVx1_ASAP7_75t_SL_1_Y;
wire [0:0] INVx1_ASAP7_75t_SL_2_Y;
wire [0:0] INVx1_ASAP7_75t_SL_3_Y;
wire [0:0] INVx1_ASAP7_75t_SL_4_Y;
wire [0:0] INVx1_ASAP7_75t_SL_5_Y;
wire [0:0] OR2x2_ASAP7_75t_SL_0_Y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	OR2x2_ASAP7_75t_SL OR2x2_ASAP7_75t_SL_0_ (
		.A(mode),
		.B(in[5]),
		.Y(OR2x2_ASAP7_75t_SL_0_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_0_ (
		.A(in[0]),
		.Y(INVx1_ASAP7_75t_SL_0_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_1_ (
		.A(in[1]),
		.Y(INVx1_ASAP7_75t_SL_1_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_2_ (
		.A(in[2]),
		.Y(INVx1_ASAP7_75t_SL_2_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_3_ (
		.A(in[3]),
		.Y(INVx1_ASAP7_75t_SL_3_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_4_ (
		.A(in[4]),
		.Y(INVx1_ASAP7_75t_SL_4_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_5_ (
		.A(OR2x2_ASAP7_75t_SL_0_Y),
		.Y(INVx1_ASAP7_75t_SL_5_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_0_ (
		.A(in[0]),
		.Y(BUFx4_ASAP7_75t_SL_0_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_1_ (
		.A(in[1]),
		.Y(BUFx4_ASAP7_75t_SL_1_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_2_ (
		.A(in[2]),
		.Y(BUFx4_ASAP7_75t_SL_2_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_3_ (
		.A(in[3]),
		.Y(BUFx4_ASAP7_75t_SL_3_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_4_ (
		.A(in[4]),
		.Y(BUFx4_ASAP7_75t_SL_4_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_5_ (
		.A(OR2x2_ASAP7_75t_SL_0_Y),
		.Y(BUFx4_ASAP7_75t_SL_5_Y));

	frac_lut6_mux frac_lut6_mux_0_ (
		.in(sram[0:63]),
		.sram({BUFx4_ASAP7_75t_SL_0_Y, BUFx4_ASAP7_75t_SL_1_Y, BUFx4_ASAP7_75t_SL_2_Y, BUFx4_ASAP7_75t_SL_3_Y, BUFx4_ASAP7_75t_SL_4_Y, BUFx4_ASAP7_75t_SL_5_Y}),
		.sram_inv({INVx1_ASAP7_75t_SL_0_Y, INVx1_ASAP7_75t_SL_1_Y, INVx1_ASAP7_75t_SL_2_Y, INVx1_ASAP7_75t_SL_3_Y, INVx1_ASAP7_75t_SL_4_Y, INVx1_ASAP7_75t_SL_5_Y}),
		.lut5_out(lut5_out[0:1]),
		.lut6_out(lut6_out));

endmodule
// ----- END Verilog module for frac_lut6 -----

//----- Default net type -----
`default_nettype wire



