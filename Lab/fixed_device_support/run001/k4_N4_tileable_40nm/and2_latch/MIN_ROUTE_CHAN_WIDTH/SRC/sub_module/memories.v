//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Memories used in FPGA
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Wed Oct  9 19:23:33 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_2level_tapbuf_size8_mem -----
module mux_2level_tapbuf_size8_mem(enable,
                                   address,
                                   data_in,
                                   mem_out,
                                   mem_outb);
//----- INPUT PORTS -----
input [0:0] enable;
//----- INPUT PORTS -----
input [0:2] address;
//----- INPUT PORTS -----
input [0:0] data_in;
//----- OUTPUT PORTS -----
output [0:5] mem_out;
//----- OUTPUT PORTS -----
output [0:5] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:5] decoder3to6_0_data_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	decoder3to6 decoder3to6_0_ (
		.enable(enable),
		.address(address[0:2]),
		.data_out(decoder3to6_0_data_out[0:5]));

	LATCH LATCH_0_ (
		.D(data_in),
		.WE(decoder3to6_0_data_out[0]),
		.Q(mem_out[0]),
		.QN(mem_outb[0]));

	LATCH LATCH_1_ (
		.D(data_in),
		.WE(decoder3to6_0_data_out[1]),
		.Q(mem_out[1]),
		.QN(mem_outb[1]));

	LATCH LATCH_2_ (
		.D(data_in),
		.WE(decoder3to6_0_data_out[2]),
		.Q(mem_out[2]),
		.QN(mem_outb[2]));

	LATCH LATCH_3_ (
		.D(data_in),
		.WE(decoder3to6_0_data_out[3]),
		.Q(mem_out[3]),
		.QN(mem_outb[3]));

	LATCH LATCH_4_ (
		.D(data_in),
		.WE(decoder3to6_0_data_out[4]),
		.Q(mem_out[4]),
		.QN(mem_outb[4]));

	LATCH LATCH_5_ (
		.D(data_in),
		.WE(decoder3to6_0_data_out[5]),
		.Q(mem_out[5]),
		.QN(mem_outb[5]));

endmodule
// ----- END Verilog module for mux_2level_tapbuf_size8_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_2level_tapbuf_size2_mem -----
module mux_2level_tapbuf_size2_mem(enable,
                                   address,
                                   data_in,
                                   mem_out,
                                   mem_outb);
//----- INPUT PORTS -----
input [0:0] enable;
//----- INPUT PORTS -----
input [0:0] address;
//----- INPUT PORTS -----
input [0:0] data_in;
//----- OUTPUT PORTS -----
output [0:1] mem_out;
//----- OUTPUT PORTS -----
output [0:1] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:1] decoder1to2_0_data_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	decoder1to2 decoder1to2_0_ (
		.enable(enable),
		.address(address),
		.data_out(decoder1to2_0_data_out[0:1]));

	LATCH LATCH_0_ (
		.D(data_in),
		.WE(decoder1to2_0_data_out[0]),
		.Q(mem_out[0]),
		.QN(mem_outb[0]));

	LATCH LATCH_1_ (
		.D(data_in),
		.WE(decoder1to2_0_data_out[1]),
		.Q(mem_out[1]),
		.QN(mem_outb[1]));

endmodule
// ----- END Verilog module for mux_2level_tapbuf_size2_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_2level_tapbuf_size9_mem -----
module mux_2level_tapbuf_size9_mem(enable,
                                   address,
                                   data_in,
                                   mem_out,
                                   mem_outb);
//----- INPUT PORTS -----
input [0:0] enable;
//----- INPUT PORTS -----
input [0:2] address;
//----- INPUT PORTS -----
input [0:0] data_in;
//----- OUTPUT PORTS -----
output [0:7] mem_out;
//----- OUTPUT PORTS -----
output [0:7] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:7] decoder3to8_0_data_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	decoder3to8 decoder3to8_0_ (
		.enable(enable),
		.address(address[0:2]),
		.data_out(decoder3to8_0_data_out[0:7]));

	LATCH LATCH_0_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[0]),
		.Q(mem_out[0]),
		.QN(mem_outb[0]));

	LATCH LATCH_1_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[1]),
		.Q(mem_out[1]),
		.QN(mem_outb[1]));

	LATCH LATCH_2_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[2]),
		.Q(mem_out[2]),
		.QN(mem_outb[2]));

	LATCH LATCH_3_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[3]),
		.Q(mem_out[3]),
		.QN(mem_outb[3]));

	LATCH LATCH_4_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[4]),
		.Q(mem_out[4]),
		.QN(mem_outb[4]));

	LATCH LATCH_5_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[5]),
		.Q(mem_out[5]),
		.QN(mem_outb[5]));

	LATCH LATCH_6_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[6]),
		.Q(mem_out[6]),
		.QN(mem_outb[6]));

	LATCH LATCH_7_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[7]),
		.Q(mem_out[7]),
		.QN(mem_outb[7]));

endmodule
// ----- END Verilog module for mux_2level_tapbuf_size9_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_2level_tapbuf_size12_mem -----
module mux_2level_tapbuf_size12_mem(enable,
                                    address,
                                    data_in,
                                    mem_out,
                                    mem_outb);
//----- INPUT PORTS -----
input [0:0] enable;
//----- INPUT PORTS -----
input [0:2] address;
//----- INPUT PORTS -----
input [0:0] data_in;
//----- OUTPUT PORTS -----
output [0:7] mem_out;
//----- OUTPUT PORTS -----
output [0:7] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:7] decoder3to8_0_data_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	decoder3to8 decoder3to8_0_ (
		.enable(enable),
		.address(address[0:2]),
		.data_out(decoder3to8_0_data_out[0:7]));

	LATCH LATCH_0_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[0]),
		.Q(mem_out[0]),
		.QN(mem_outb[0]));

	LATCH LATCH_1_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[1]),
		.Q(mem_out[1]),
		.QN(mem_outb[1]));

	LATCH LATCH_2_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[2]),
		.Q(mem_out[2]),
		.QN(mem_outb[2]));

	LATCH LATCH_3_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[3]),
		.Q(mem_out[3]),
		.QN(mem_outb[3]));

	LATCH LATCH_4_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[4]),
		.Q(mem_out[4]),
		.QN(mem_outb[4]));

	LATCH LATCH_5_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[5]),
		.Q(mem_out[5]),
		.QN(mem_outb[5]));

	LATCH LATCH_6_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[6]),
		.Q(mem_out[6]),
		.QN(mem_outb[6]));

	LATCH LATCH_7_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[7]),
		.Q(mem_out[7]),
		.QN(mem_outb[7]));

endmodule
// ----- END Verilog module for mux_2level_tapbuf_size12_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_2level_tapbuf_size3_mem -----
module mux_2level_tapbuf_size3_mem(enable,
                                   address,
                                   data_in,
                                   mem_out,
                                   mem_outb);
//----- INPUT PORTS -----
input [0:0] enable;
//----- INPUT PORTS -----
input [0:0] address;
//----- INPUT PORTS -----
input [0:0] data_in;
//----- OUTPUT PORTS -----
output [0:1] mem_out;
//----- OUTPUT PORTS -----
output [0:1] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:1] decoder1to2_0_data_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	decoder1to2 decoder1to2_0_ (
		.enable(enable),
		.address(address),
		.data_out(decoder1to2_0_data_out[0:1]));

	LATCH LATCH_0_ (
		.D(data_in),
		.WE(decoder1to2_0_data_out[0]),
		.Q(mem_out[0]),
		.QN(mem_outb[0]));

	LATCH LATCH_1_ (
		.D(data_in),
		.WE(decoder1to2_0_data_out[1]),
		.Q(mem_out[1]),
		.QN(mem_outb[1]));

endmodule
// ----- END Verilog module for mux_2level_tapbuf_size3_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_2level_tapbuf_size11_mem -----
module mux_2level_tapbuf_size11_mem(enable,
                                    address,
                                    data_in,
                                    mem_out,
                                    mem_outb);
//----- INPUT PORTS -----
input [0:0] enable;
//----- INPUT PORTS -----
input [0:2] address;
//----- INPUT PORTS -----
input [0:0] data_in;
//----- OUTPUT PORTS -----
output [0:7] mem_out;
//----- OUTPUT PORTS -----
output [0:7] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:7] decoder3to8_0_data_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	decoder3to8 decoder3to8_0_ (
		.enable(enable),
		.address(address[0:2]),
		.data_out(decoder3to8_0_data_out[0:7]));

	LATCH LATCH_0_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[0]),
		.Q(mem_out[0]),
		.QN(mem_outb[0]));

	LATCH LATCH_1_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[1]),
		.Q(mem_out[1]),
		.QN(mem_outb[1]));

	LATCH LATCH_2_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[2]),
		.Q(mem_out[2]),
		.QN(mem_outb[2]));

	LATCH LATCH_3_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[3]),
		.Q(mem_out[3]),
		.QN(mem_outb[3]));

	LATCH LATCH_4_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[4]),
		.Q(mem_out[4]),
		.QN(mem_outb[4]));

	LATCH LATCH_5_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[5]),
		.Q(mem_out[5]),
		.QN(mem_outb[5]));

	LATCH LATCH_6_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[6]),
		.Q(mem_out[6]),
		.QN(mem_outb[6]));

	LATCH LATCH_7_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[7]),
		.Q(mem_out[7]),
		.QN(mem_outb[7]));

endmodule
// ----- END Verilog module for mux_2level_tapbuf_size11_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_2level_tapbuf_size5_mem -----
module mux_2level_tapbuf_size5_mem(enable,
                                   address,
                                   data_in,
                                   mem_out,
                                   mem_outb);
//----- INPUT PORTS -----
input [0:0] enable;
//----- INPUT PORTS -----
input [0:2] address;
//----- INPUT PORTS -----
input [0:0] data_in;
//----- OUTPUT PORTS -----
output [0:5] mem_out;
//----- OUTPUT PORTS -----
output [0:5] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:5] decoder3to6_0_data_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	decoder3to6 decoder3to6_0_ (
		.enable(enable),
		.address(address[0:2]),
		.data_out(decoder3to6_0_data_out[0:5]));

	LATCH LATCH_0_ (
		.D(data_in),
		.WE(decoder3to6_0_data_out[0]),
		.Q(mem_out[0]),
		.QN(mem_outb[0]));

	LATCH LATCH_1_ (
		.D(data_in),
		.WE(decoder3to6_0_data_out[1]),
		.Q(mem_out[1]),
		.QN(mem_outb[1]));

	LATCH LATCH_2_ (
		.D(data_in),
		.WE(decoder3to6_0_data_out[2]),
		.Q(mem_out[2]),
		.QN(mem_outb[2]));

	LATCH LATCH_3_ (
		.D(data_in),
		.WE(decoder3to6_0_data_out[3]),
		.Q(mem_out[3]),
		.QN(mem_outb[3]));

	LATCH LATCH_4_ (
		.D(data_in),
		.WE(decoder3to6_0_data_out[4]),
		.Q(mem_out[4]),
		.QN(mem_outb[4]));

	LATCH LATCH_5_ (
		.D(data_in),
		.WE(decoder3to6_0_data_out[5]),
		.Q(mem_out[5]),
		.QN(mem_outb[5]));

endmodule
// ----- END Verilog module for mux_2level_tapbuf_size5_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_2level_tapbuf_size4_mem -----
module mux_2level_tapbuf_size4_mem(enable,
                                   address,
                                   data_in,
                                   mem_out,
                                   mem_outb);
//----- INPUT PORTS -----
input [0:0] enable;
//----- INPUT PORTS -----
input [0:2] address;
//----- INPUT PORTS -----
input [0:0] data_in;
//----- OUTPUT PORTS -----
output [0:5] mem_out;
//----- OUTPUT PORTS -----
output [0:5] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:5] decoder3to6_0_data_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	decoder3to6 decoder3to6_0_ (
		.enable(enable),
		.address(address[0:2]),
		.data_out(decoder3to6_0_data_out[0:5]));

	LATCH LATCH_0_ (
		.D(data_in),
		.WE(decoder3to6_0_data_out[0]),
		.Q(mem_out[0]),
		.QN(mem_outb[0]));

	LATCH LATCH_1_ (
		.D(data_in),
		.WE(decoder3to6_0_data_out[1]),
		.Q(mem_out[1]),
		.QN(mem_outb[1]));

	LATCH LATCH_2_ (
		.D(data_in),
		.WE(decoder3to6_0_data_out[2]),
		.Q(mem_out[2]),
		.QN(mem_outb[2]));

	LATCH LATCH_3_ (
		.D(data_in),
		.WE(decoder3to6_0_data_out[3]),
		.Q(mem_out[3]),
		.QN(mem_outb[3]));

	LATCH LATCH_4_ (
		.D(data_in),
		.WE(decoder3to6_0_data_out[4]),
		.Q(mem_out[4]),
		.QN(mem_outb[4]));

	LATCH LATCH_5_ (
		.D(data_in),
		.WE(decoder3to6_0_data_out[5]),
		.Q(mem_out[5]),
		.QN(mem_outb[5]));

endmodule
// ----- END Verilog module for mux_2level_tapbuf_size4_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_2level_size14_mem -----
module mux_2level_size14_mem(enable,
                             address,
                             data_in,
                             mem_out,
                             mem_outb);
//----- INPUT PORTS -----
input [0:0] enable;
//----- INPUT PORTS -----
input [0:2] address;
//----- INPUT PORTS -----
input [0:0] data_in;
//----- OUTPUT PORTS -----
output [0:7] mem_out;
//----- OUTPUT PORTS -----
output [0:7] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:7] decoder3to8_0_data_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	decoder3to8 decoder3to8_0_ (
		.enable(enable),
		.address(address[0:2]),
		.data_out(decoder3to8_0_data_out[0:7]));

	LATCH LATCH_0_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[0]),
		.Q(mem_out[0]),
		.QN(mem_outb[0]));

	LATCH LATCH_1_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[1]),
		.Q(mem_out[1]),
		.QN(mem_outb[1]));

	LATCH LATCH_2_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[2]),
		.Q(mem_out[2]),
		.QN(mem_outb[2]));

	LATCH LATCH_3_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[3]),
		.Q(mem_out[3]),
		.QN(mem_outb[3]));

	LATCH LATCH_4_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[4]),
		.Q(mem_out[4]),
		.QN(mem_outb[4]));

	LATCH LATCH_5_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[5]),
		.Q(mem_out[5]),
		.QN(mem_outb[5]));

	LATCH LATCH_6_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[6]),
		.Q(mem_out[6]),
		.QN(mem_outb[6]));

	LATCH LATCH_7_ (
		.D(data_in),
		.WE(decoder3to8_0_data_out[7]),
		.Q(mem_out[7]),
		.QN(mem_outb[7]));

endmodule
// ----- END Verilog module for mux_2level_size14_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_1level_tapbuf_size2_mem -----
module mux_1level_tapbuf_size2_mem(enable,
                                   address,
                                   data_in,
                                   mem_out,
                                   mem_outb);
//----- INPUT PORTS -----
input [0:0] enable;
//----- INPUT PORTS -----
input [0:1] address;
//----- INPUT PORTS -----
input [0:0] data_in;
//----- OUTPUT PORTS -----
output [0:2] mem_out;
//----- OUTPUT PORTS -----
output [0:2] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:2] decoder2to3_0_data_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	decoder2to3 decoder2to3_0_ (
		.enable(enable),
		.address(address[0:1]),
		.data_out(decoder2to3_0_data_out[0:2]));

	LATCH LATCH_0_ (
		.D(data_in),
		.WE(decoder2to3_0_data_out[0]),
		.Q(mem_out[0]),
		.QN(mem_outb[0]));

	LATCH LATCH_1_ (
		.D(data_in),
		.WE(decoder2to3_0_data_out[1]),
		.Q(mem_out[1]),
		.QN(mem_outb[1]));

	LATCH LATCH_2_ (
		.D(data_in),
		.WE(decoder2to3_0_data_out[2]),
		.Q(mem_out[2]),
		.QN(mem_outb[2]));

endmodule
// ----- END Verilog module for mux_1level_tapbuf_size2_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for lut4_LATCH_mem -----
module lut4_LATCH_mem(enable,
                      address,
                      data_in,
                      mem_out,
                      mem_outb);
//----- INPUT PORTS -----
input [0:0] enable;
//----- INPUT PORTS -----
input [0:3] address;
//----- INPUT PORTS -----
input [0:0] data_in;
//----- OUTPUT PORTS -----
output [0:15] mem_out;
//----- OUTPUT PORTS -----
output [0:15] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:15] decoder4to16_0_data_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	decoder4to16 decoder4to16_0_ (
		.enable(enable),
		.address(address[0:3]),
		.data_out(decoder4to16_0_data_out[0:15]));

	LATCH LATCH_0_ (
		.D(data_in),
		.WE(decoder4to16_0_data_out[0]),
		.Q(mem_out[0]),
		.QN(mem_outb[0]));

	LATCH LATCH_1_ (
		.D(data_in),
		.WE(decoder4to16_0_data_out[1]),
		.Q(mem_out[1]),
		.QN(mem_outb[1]));

	LATCH LATCH_2_ (
		.D(data_in),
		.WE(decoder4to16_0_data_out[2]),
		.Q(mem_out[2]),
		.QN(mem_outb[2]));

	LATCH LATCH_3_ (
		.D(data_in),
		.WE(decoder4to16_0_data_out[3]),
		.Q(mem_out[3]),
		.QN(mem_outb[3]));

	LATCH LATCH_4_ (
		.D(data_in),
		.WE(decoder4to16_0_data_out[4]),
		.Q(mem_out[4]),
		.QN(mem_outb[4]));

	LATCH LATCH_5_ (
		.D(data_in),
		.WE(decoder4to16_0_data_out[5]),
		.Q(mem_out[5]),
		.QN(mem_outb[5]));

	LATCH LATCH_6_ (
		.D(data_in),
		.WE(decoder4to16_0_data_out[6]),
		.Q(mem_out[6]),
		.QN(mem_outb[6]));

	LATCH LATCH_7_ (
		.D(data_in),
		.WE(decoder4to16_0_data_out[7]),
		.Q(mem_out[7]),
		.QN(mem_outb[7]));

	LATCH LATCH_8_ (
		.D(data_in),
		.WE(decoder4to16_0_data_out[8]),
		.Q(mem_out[8]),
		.QN(mem_outb[8]));

	LATCH LATCH_9_ (
		.D(data_in),
		.WE(decoder4to16_0_data_out[9]),
		.Q(mem_out[9]),
		.QN(mem_outb[9]));

	LATCH LATCH_10_ (
		.D(data_in),
		.WE(decoder4to16_0_data_out[10]),
		.Q(mem_out[10]),
		.QN(mem_outb[10]));

	LATCH LATCH_11_ (
		.D(data_in),
		.WE(decoder4to16_0_data_out[11]),
		.Q(mem_out[11]),
		.QN(mem_outb[11]));

	LATCH LATCH_12_ (
		.D(data_in),
		.WE(decoder4to16_0_data_out[12]),
		.Q(mem_out[12]),
		.QN(mem_outb[12]));

	LATCH LATCH_13_ (
		.D(data_in),
		.WE(decoder4to16_0_data_out[13]),
		.Q(mem_out[13]),
		.QN(mem_outb[13]));

	LATCH LATCH_14_ (
		.D(data_in),
		.WE(decoder4to16_0_data_out[14]),
		.Q(mem_out[14]),
		.QN(mem_outb[14]));

	LATCH LATCH_15_ (
		.D(data_in),
		.WE(decoder4to16_0_data_out[15]),
		.Q(mem_out[15]),
		.QN(mem_outb[15]));

endmodule
// ----- END Verilog module for lut4_LATCH_mem -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for GPIO_LATCH_mem -----
module GPIO_LATCH_mem(enable,
                      address,
                      data_in,
                      mem_out,
                      mem_outb);
//----- INPUT PORTS -----
input [0:0] enable;
//----- INPUT PORTS -----
input [0:0] address;
//----- INPUT PORTS -----
input [0:0] data_in;
//----- OUTPUT PORTS -----
output [0:0] mem_out;
//----- OUTPUT PORTS -----
output [0:0] mem_outb;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] decoder1to1_0_data_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	decoder1to1 decoder1to1_0_ (
		.enable(enable),
		.address(address),
		.data_out(decoder1to1_0_data_out));

	LATCH LATCH_0_ (
		.D(data_in),
		.WE(decoder1to1_0_data_out),
		.Q(mem_out),
		.QN(mem_outb));

endmodule
// ----- END Verilog module for GPIO_LATCH_mem -----

//----- Default net type -----
`default_nettype wire




