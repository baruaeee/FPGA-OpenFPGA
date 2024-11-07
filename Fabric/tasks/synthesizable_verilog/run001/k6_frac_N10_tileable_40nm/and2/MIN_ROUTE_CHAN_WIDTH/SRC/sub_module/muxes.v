//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Multiplexers
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Nov  7 16:30:06 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_tree_tapbuf_size4 -----
module mux_tree_tapbuf_size4(in,
                             sram,
                             sram_inv,
                             out);
//----- INPUT PORTS -----
input [0:3] in;
//----- INPUT PORTS -----
input [0:2] sram;
//----- INPUT PORTS -----
input [0:2] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] INVx1_ASAP7_75t_SL_0_Y;
wire [0:0] INVx1_ASAP7_75t_SL_1_Y;
wire [0:0] INVx1_ASAP7_75t_SL_2_Y;
wire [0:0] INVx1_ASAP7_75t_SL_3_Y;
wire [0:0] MUX2_0_Y;
wire [0:0] MUX2_1_Y;
wire [0:0] MUX2_2_Y;
wire [0:0] MUX2_3_Y;
wire [0:0] const1_0_const1;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

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

	const1 const1_0_ (
		.const1(const1_0_const1));

	INVx4_ASAP7_75t_SL INVx4_ASAP7_75t_SL_0_ (
		.A(MUX2_3_Y),
		.Y(out));

	MUX2 mux_l1_in_0_ (
		.B(INVx1_ASAP7_75t_SL_0_Y),
		.A(INVx1_ASAP7_75t_SL_1_Y),
		.S0(sram[0]),
		.Y(MUX2_0_Y));

	MUX2 mux_l2_in_0_ (
		.B(MUX2_0_Y),
		.A(INVx1_ASAP7_75t_SL_2_Y),
		.S0(sram[1]),
		.Y(MUX2_1_Y));

	MUX2 mux_l2_in_1_ (
		.B(INVx1_ASAP7_75t_SL_3_Y),
		.A(const1_0_const1),
		.S0(sram[1]),
		.Y(MUX2_2_Y));

	MUX2 mux_l3_in_0_ (
		.B(MUX2_1_Y),
		.A(MUX2_2_Y),
		.S0(sram[2]),
		.Y(MUX2_3_Y));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_size4 -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_tree_tapbuf_size2 -----
module mux_tree_tapbuf_size2(in,
                             sram,
                             sram_inv,
                             out);
//----- INPUT PORTS -----
input [0:1] in;
//----- INPUT PORTS -----
input [0:1] sram;
//----- INPUT PORTS -----
input [0:1] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] INVx1_ASAP7_75t_SL_0_Y;
wire [0:0] INVx1_ASAP7_75t_SL_1_Y;
wire [0:0] MUX2_0_Y;
wire [0:0] MUX2_1_Y;
wire [0:0] const1_0_const1;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_0_ (
		.A(in[0]),
		.Y(INVx1_ASAP7_75t_SL_0_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_1_ (
		.A(in[1]),
		.Y(INVx1_ASAP7_75t_SL_1_Y));

	const1 const1_0_ (
		.const1(const1_0_const1));

	INVx4_ASAP7_75t_SL INVx4_ASAP7_75t_SL_0_ (
		.A(MUX2_1_Y),
		.Y(out));

	MUX2 mux_l1_in_0_ (
		.B(INVx1_ASAP7_75t_SL_0_Y),
		.A(INVx1_ASAP7_75t_SL_1_Y),
		.S0(sram[0]),
		.Y(MUX2_0_Y));

	MUX2 mux_l2_in_0_ (
		.B(MUX2_0_Y),
		.A(const1_0_const1),
		.S0(sram[1]),
		.Y(MUX2_1_Y));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_size2 -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_tree_tapbuf_size3 -----
module mux_tree_tapbuf_size3(in,
                             sram,
                             sram_inv,
                             out);
//----- INPUT PORTS -----
input [0:2] in;
//----- INPUT PORTS -----
input [0:1] sram;
//----- INPUT PORTS -----
input [0:1] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] INVx1_ASAP7_75t_SL_0_Y;
wire [0:0] INVx1_ASAP7_75t_SL_1_Y;
wire [0:0] INVx1_ASAP7_75t_SL_2_Y;
wire [0:0] MUX2_0_Y;
wire [0:0] MUX2_1_Y;
wire [0:0] MUX2_2_Y;
wire [0:0] const1_0_const1;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_0_ (
		.A(in[0]),
		.Y(INVx1_ASAP7_75t_SL_0_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_1_ (
		.A(in[1]),
		.Y(INVx1_ASAP7_75t_SL_1_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_2_ (
		.A(in[2]),
		.Y(INVx1_ASAP7_75t_SL_2_Y));

	const1 const1_0_ (
		.const1(const1_0_const1));

	INVx4_ASAP7_75t_SL INVx4_ASAP7_75t_SL_0_ (
		.A(MUX2_2_Y),
		.Y(out));

	MUX2 mux_l1_in_0_ (
		.B(INVx1_ASAP7_75t_SL_0_Y),
		.A(INVx1_ASAP7_75t_SL_1_Y),
		.S0(sram[0]),
		.Y(MUX2_0_Y));

	MUX2 mux_l1_in_1_ (
		.B(INVx1_ASAP7_75t_SL_2_Y),
		.A(const1_0_const1),
		.S0(sram[0]),
		.Y(MUX2_1_Y));

	MUX2 mux_l2_in_0_ (
		.B(MUX2_0_Y),
		.A(MUX2_1_Y),
		.S0(sram[1]),
		.Y(MUX2_2_Y));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_size3 -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_tree_size60 -----
module mux_tree_size60(in,
                       sram,
                       sram_inv,
                       out);
//----- INPUT PORTS -----
input [0:59] in;
//----- INPUT PORTS -----
input [0:5] sram;
//----- INPUT PORTS -----
input [0:5] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] INVx1_ASAP7_75t_SL_0_Y;
wire [0:0] INVx1_ASAP7_75t_SL_10_Y;
wire [0:0] INVx1_ASAP7_75t_SL_11_Y;
wire [0:0] INVx1_ASAP7_75t_SL_12_Y;
wire [0:0] INVx1_ASAP7_75t_SL_13_Y;
wire [0:0] INVx1_ASAP7_75t_SL_14_Y;
wire [0:0] INVx1_ASAP7_75t_SL_15_Y;
wire [0:0] INVx1_ASAP7_75t_SL_16_Y;
wire [0:0] INVx1_ASAP7_75t_SL_17_Y;
wire [0:0] INVx1_ASAP7_75t_SL_18_Y;
wire [0:0] INVx1_ASAP7_75t_SL_19_Y;
wire [0:0] INVx1_ASAP7_75t_SL_1_Y;
wire [0:0] INVx1_ASAP7_75t_SL_20_Y;
wire [0:0] INVx1_ASAP7_75t_SL_21_Y;
wire [0:0] INVx1_ASAP7_75t_SL_22_Y;
wire [0:0] INVx1_ASAP7_75t_SL_23_Y;
wire [0:0] INVx1_ASAP7_75t_SL_24_Y;
wire [0:0] INVx1_ASAP7_75t_SL_25_Y;
wire [0:0] INVx1_ASAP7_75t_SL_26_Y;
wire [0:0] INVx1_ASAP7_75t_SL_27_Y;
wire [0:0] INVx1_ASAP7_75t_SL_28_Y;
wire [0:0] INVx1_ASAP7_75t_SL_29_Y;
wire [0:0] INVx1_ASAP7_75t_SL_2_Y;
wire [0:0] INVx1_ASAP7_75t_SL_30_Y;
wire [0:0] INVx1_ASAP7_75t_SL_31_Y;
wire [0:0] INVx1_ASAP7_75t_SL_32_Y;
wire [0:0] INVx1_ASAP7_75t_SL_33_Y;
wire [0:0] INVx1_ASAP7_75t_SL_34_Y;
wire [0:0] INVx1_ASAP7_75t_SL_35_Y;
wire [0:0] INVx1_ASAP7_75t_SL_36_Y;
wire [0:0] INVx1_ASAP7_75t_SL_37_Y;
wire [0:0] INVx1_ASAP7_75t_SL_38_Y;
wire [0:0] INVx1_ASAP7_75t_SL_39_Y;
wire [0:0] INVx1_ASAP7_75t_SL_3_Y;
wire [0:0] INVx1_ASAP7_75t_SL_40_Y;
wire [0:0] INVx1_ASAP7_75t_SL_41_Y;
wire [0:0] INVx1_ASAP7_75t_SL_42_Y;
wire [0:0] INVx1_ASAP7_75t_SL_43_Y;
wire [0:0] INVx1_ASAP7_75t_SL_44_Y;
wire [0:0] INVx1_ASAP7_75t_SL_45_Y;
wire [0:0] INVx1_ASAP7_75t_SL_46_Y;
wire [0:0] INVx1_ASAP7_75t_SL_47_Y;
wire [0:0] INVx1_ASAP7_75t_SL_48_Y;
wire [0:0] INVx1_ASAP7_75t_SL_49_Y;
wire [0:0] INVx1_ASAP7_75t_SL_4_Y;
wire [0:0] INVx1_ASAP7_75t_SL_50_Y;
wire [0:0] INVx1_ASAP7_75t_SL_51_Y;
wire [0:0] INVx1_ASAP7_75t_SL_52_Y;
wire [0:0] INVx1_ASAP7_75t_SL_53_Y;
wire [0:0] INVx1_ASAP7_75t_SL_54_Y;
wire [0:0] INVx1_ASAP7_75t_SL_55_Y;
wire [0:0] INVx1_ASAP7_75t_SL_56_Y;
wire [0:0] INVx1_ASAP7_75t_SL_57_Y;
wire [0:0] INVx1_ASAP7_75t_SL_58_Y;
wire [0:0] INVx1_ASAP7_75t_SL_59_Y;
wire [0:0] INVx1_ASAP7_75t_SL_5_Y;
wire [0:0] INVx1_ASAP7_75t_SL_6_Y;
wire [0:0] INVx1_ASAP7_75t_SL_7_Y;
wire [0:0] INVx1_ASAP7_75t_SL_8_Y;
wire [0:0] INVx1_ASAP7_75t_SL_9_Y;
wire [0:0] MUX2_0_Y;
wire [0:0] MUX2_10_Y;
wire [0:0] MUX2_11_Y;
wire [0:0] MUX2_12_Y;
wire [0:0] MUX2_13_Y;
wire [0:0] MUX2_14_Y;
wire [0:0] MUX2_15_Y;
wire [0:0] MUX2_16_Y;
wire [0:0] MUX2_17_Y;
wire [0:0] MUX2_18_Y;
wire [0:0] MUX2_19_Y;
wire [0:0] MUX2_1_Y;
wire [0:0] MUX2_20_Y;
wire [0:0] MUX2_21_Y;
wire [0:0] MUX2_22_Y;
wire [0:0] MUX2_23_Y;
wire [0:0] MUX2_24_Y;
wire [0:0] MUX2_25_Y;
wire [0:0] MUX2_26_Y;
wire [0:0] MUX2_27_Y;
wire [0:0] MUX2_28_Y;
wire [0:0] MUX2_29_Y;
wire [0:0] MUX2_2_Y;
wire [0:0] MUX2_30_Y;
wire [0:0] MUX2_31_Y;
wire [0:0] MUX2_32_Y;
wire [0:0] MUX2_33_Y;
wire [0:0] MUX2_34_Y;
wire [0:0] MUX2_35_Y;
wire [0:0] MUX2_36_Y;
wire [0:0] MUX2_37_Y;
wire [0:0] MUX2_38_Y;
wire [0:0] MUX2_39_Y;
wire [0:0] MUX2_3_Y;
wire [0:0] MUX2_40_Y;
wire [0:0] MUX2_41_Y;
wire [0:0] MUX2_42_Y;
wire [0:0] MUX2_43_Y;
wire [0:0] MUX2_44_Y;
wire [0:0] MUX2_45_Y;
wire [0:0] MUX2_46_Y;
wire [0:0] MUX2_47_Y;
wire [0:0] MUX2_48_Y;
wire [0:0] MUX2_49_Y;
wire [0:0] MUX2_4_Y;
wire [0:0] MUX2_50_Y;
wire [0:0] MUX2_51_Y;
wire [0:0] MUX2_52_Y;
wire [0:0] MUX2_53_Y;
wire [0:0] MUX2_54_Y;
wire [0:0] MUX2_55_Y;
wire [0:0] MUX2_56_Y;
wire [0:0] MUX2_57_Y;
wire [0:0] MUX2_58_Y;
wire [0:0] MUX2_59_Y;
wire [0:0] MUX2_5_Y;
wire [0:0] MUX2_6_Y;
wire [0:0] MUX2_7_Y;
wire [0:0] MUX2_8_Y;
wire [0:0] MUX2_9_Y;
wire [0:0] const1_0_const1;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

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
		.A(in[5]),
		.Y(INVx1_ASAP7_75t_SL_5_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_6_ (
		.A(in[6]),
		.Y(INVx1_ASAP7_75t_SL_6_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_7_ (
		.A(in[7]),
		.Y(INVx1_ASAP7_75t_SL_7_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_8_ (
		.A(in[8]),
		.Y(INVx1_ASAP7_75t_SL_8_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_9_ (
		.A(in[9]),
		.Y(INVx1_ASAP7_75t_SL_9_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_10_ (
		.A(in[10]),
		.Y(INVx1_ASAP7_75t_SL_10_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_11_ (
		.A(in[11]),
		.Y(INVx1_ASAP7_75t_SL_11_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_12_ (
		.A(in[12]),
		.Y(INVx1_ASAP7_75t_SL_12_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_13_ (
		.A(in[13]),
		.Y(INVx1_ASAP7_75t_SL_13_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_14_ (
		.A(in[14]),
		.Y(INVx1_ASAP7_75t_SL_14_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_15_ (
		.A(in[15]),
		.Y(INVx1_ASAP7_75t_SL_15_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_16_ (
		.A(in[16]),
		.Y(INVx1_ASAP7_75t_SL_16_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_17_ (
		.A(in[17]),
		.Y(INVx1_ASAP7_75t_SL_17_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_18_ (
		.A(in[18]),
		.Y(INVx1_ASAP7_75t_SL_18_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_19_ (
		.A(in[19]),
		.Y(INVx1_ASAP7_75t_SL_19_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_20_ (
		.A(in[20]),
		.Y(INVx1_ASAP7_75t_SL_20_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_21_ (
		.A(in[21]),
		.Y(INVx1_ASAP7_75t_SL_21_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_22_ (
		.A(in[22]),
		.Y(INVx1_ASAP7_75t_SL_22_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_23_ (
		.A(in[23]),
		.Y(INVx1_ASAP7_75t_SL_23_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_24_ (
		.A(in[24]),
		.Y(INVx1_ASAP7_75t_SL_24_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_25_ (
		.A(in[25]),
		.Y(INVx1_ASAP7_75t_SL_25_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_26_ (
		.A(in[26]),
		.Y(INVx1_ASAP7_75t_SL_26_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_27_ (
		.A(in[27]),
		.Y(INVx1_ASAP7_75t_SL_27_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_28_ (
		.A(in[28]),
		.Y(INVx1_ASAP7_75t_SL_28_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_29_ (
		.A(in[29]),
		.Y(INVx1_ASAP7_75t_SL_29_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_30_ (
		.A(in[30]),
		.Y(INVx1_ASAP7_75t_SL_30_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_31_ (
		.A(in[31]),
		.Y(INVx1_ASAP7_75t_SL_31_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_32_ (
		.A(in[32]),
		.Y(INVx1_ASAP7_75t_SL_32_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_33_ (
		.A(in[33]),
		.Y(INVx1_ASAP7_75t_SL_33_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_34_ (
		.A(in[34]),
		.Y(INVx1_ASAP7_75t_SL_34_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_35_ (
		.A(in[35]),
		.Y(INVx1_ASAP7_75t_SL_35_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_36_ (
		.A(in[36]),
		.Y(INVx1_ASAP7_75t_SL_36_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_37_ (
		.A(in[37]),
		.Y(INVx1_ASAP7_75t_SL_37_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_38_ (
		.A(in[38]),
		.Y(INVx1_ASAP7_75t_SL_38_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_39_ (
		.A(in[39]),
		.Y(INVx1_ASAP7_75t_SL_39_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_40_ (
		.A(in[40]),
		.Y(INVx1_ASAP7_75t_SL_40_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_41_ (
		.A(in[41]),
		.Y(INVx1_ASAP7_75t_SL_41_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_42_ (
		.A(in[42]),
		.Y(INVx1_ASAP7_75t_SL_42_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_43_ (
		.A(in[43]),
		.Y(INVx1_ASAP7_75t_SL_43_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_44_ (
		.A(in[44]),
		.Y(INVx1_ASAP7_75t_SL_44_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_45_ (
		.A(in[45]),
		.Y(INVx1_ASAP7_75t_SL_45_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_46_ (
		.A(in[46]),
		.Y(INVx1_ASAP7_75t_SL_46_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_47_ (
		.A(in[47]),
		.Y(INVx1_ASAP7_75t_SL_47_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_48_ (
		.A(in[48]),
		.Y(INVx1_ASAP7_75t_SL_48_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_49_ (
		.A(in[49]),
		.Y(INVx1_ASAP7_75t_SL_49_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_50_ (
		.A(in[50]),
		.Y(INVx1_ASAP7_75t_SL_50_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_51_ (
		.A(in[51]),
		.Y(INVx1_ASAP7_75t_SL_51_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_52_ (
		.A(in[52]),
		.Y(INVx1_ASAP7_75t_SL_52_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_53_ (
		.A(in[53]),
		.Y(INVx1_ASAP7_75t_SL_53_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_54_ (
		.A(in[54]),
		.Y(INVx1_ASAP7_75t_SL_54_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_55_ (
		.A(in[55]),
		.Y(INVx1_ASAP7_75t_SL_55_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_56_ (
		.A(in[56]),
		.Y(INVx1_ASAP7_75t_SL_56_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_57_ (
		.A(in[57]),
		.Y(INVx1_ASAP7_75t_SL_57_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_58_ (
		.A(in[58]),
		.Y(INVx1_ASAP7_75t_SL_58_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_59_ (
		.A(in[59]),
		.Y(INVx1_ASAP7_75t_SL_59_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_60_ (
		.A(MUX2_59_Y),
		.Y(out));

	const1 const1_0_ (
		.const1(const1_0_const1));

	MUX2 mux_l1_in_0_ (
		.B(INVx1_ASAP7_75t_SL_0_Y),
		.A(INVx1_ASAP7_75t_SL_1_Y),
		.S0(sram[0]),
		.Y(MUX2_0_Y));

	MUX2 mux_l1_in_1_ (
		.B(INVx1_ASAP7_75t_SL_2_Y),
		.A(INVx1_ASAP7_75t_SL_3_Y),
		.S0(sram[0]),
		.Y(MUX2_1_Y));

	MUX2 mux_l1_in_2_ (
		.B(INVx1_ASAP7_75t_SL_4_Y),
		.A(INVx1_ASAP7_75t_SL_5_Y),
		.S0(sram[0]),
		.Y(MUX2_2_Y));

	MUX2 mux_l1_in_3_ (
		.B(INVx1_ASAP7_75t_SL_6_Y),
		.A(INVx1_ASAP7_75t_SL_7_Y),
		.S0(sram[0]),
		.Y(MUX2_3_Y));

	MUX2 mux_l1_in_4_ (
		.B(INVx1_ASAP7_75t_SL_8_Y),
		.A(INVx1_ASAP7_75t_SL_9_Y),
		.S0(sram[0]),
		.Y(MUX2_4_Y));

	MUX2 mux_l1_in_5_ (
		.B(INVx1_ASAP7_75t_SL_10_Y),
		.A(INVx1_ASAP7_75t_SL_11_Y),
		.S0(sram[0]),
		.Y(MUX2_5_Y));

	MUX2 mux_l1_in_6_ (
		.B(INVx1_ASAP7_75t_SL_12_Y),
		.A(INVx1_ASAP7_75t_SL_13_Y),
		.S0(sram[0]),
		.Y(MUX2_6_Y));

	MUX2 mux_l1_in_7_ (
		.B(INVx1_ASAP7_75t_SL_14_Y),
		.A(INVx1_ASAP7_75t_SL_15_Y),
		.S0(sram[0]),
		.Y(MUX2_7_Y));

	MUX2 mux_l1_in_8_ (
		.B(INVx1_ASAP7_75t_SL_16_Y),
		.A(INVx1_ASAP7_75t_SL_17_Y),
		.S0(sram[0]),
		.Y(MUX2_8_Y));

	MUX2 mux_l1_in_9_ (
		.B(INVx1_ASAP7_75t_SL_18_Y),
		.A(INVx1_ASAP7_75t_SL_19_Y),
		.S0(sram[0]),
		.Y(MUX2_9_Y));

	MUX2 mux_l1_in_10_ (
		.B(INVx1_ASAP7_75t_SL_20_Y),
		.A(INVx1_ASAP7_75t_SL_21_Y),
		.S0(sram[0]),
		.Y(MUX2_10_Y));

	MUX2 mux_l1_in_11_ (
		.B(INVx1_ASAP7_75t_SL_22_Y),
		.A(INVx1_ASAP7_75t_SL_23_Y),
		.S0(sram[0]),
		.Y(MUX2_11_Y));

	MUX2 mux_l1_in_12_ (
		.B(INVx1_ASAP7_75t_SL_24_Y),
		.A(INVx1_ASAP7_75t_SL_25_Y),
		.S0(sram[0]),
		.Y(MUX2_12_Y));

	MUX2 mux_l1_in_13_ (
		.B(INVx1_ASAP7_75t_SL_26_Y),
		.A(INVx1_ASAP7_75t_SL_27_Y),
		.S0(sram[0]),
		.Y(MUX2_13_Y));

	MUX2 mux_l1_in_14_ (
		.B(INVx1_ASAP7_75t_SL_28_Y),
		.A(INVx1_ASAP7_75t_SL_29_Y),
		.S0(sram[0]),
		.Y(MUX2_14_Y));

	MUX2 mux_l1_in_15_ (
		.B(INVx1_ASAP7_75t_SL_30_Y),
		.A(INVx1_ASAP7_75t_SL_31_Y),
		.S0(sram[0]),
		.Y(MUX2_15_Y));

	MUX2 mux_l1_in_16_ (
		.B(INVx1_ASAP7_75t_SL_32_Y),
		.A(INVx1_ASAP7_75t_SL_33_Y),
		.S0(sram[0]),
		.Y(MUX2_16_Y));

	MUX2 mux_l1_in_17_ (
		.B(INVx1_ASAP7_75t_SL_34_Y),
		.A(INVx1_ASAP7_75t_SL_35_Y),
		.S0(sram[0]),
		.Y(MUX2_17_Y));

	MUX2 mux_l1_in_18_ (
		.B(INVx1_ASAP7_75t_SL_36_Y),
		.A(INVx1_ASAP7_75t_SL_37_Y),
		.S0(sram[0]),
		.Y(MUX2_18_Y));

	MUX2 mux_l1_in_19_ (
		.B(INVx1_ASAP7_75t_SL_38_Y),
		.A(INVx1_ASAP7_75t_SL_39_Y),
		.S0(sram[0]),
		.Y(MUX2_19_Y));

	MUX2 mux_l1_in_20_ (
		.B(INVx1_ASAP7_75t_SL_40_Y),
		.A(INVx1_ASAP7_75t_SL_41_Y),
		.S0(sram[0]),
		.Y(MUX2_20_Y));

	MUX2 mux_l1_in_21_ (
		.B(INVx1_ASAP7_75t_SL_42_Y),
		.A(INVx1_ASAP7_75t_SL_43_Y),
		.S0(sram[0]),
		.Y(MUX2_21_Y));

	MUX2 mux_l1_in_22_ (
		.B(INVx1_ASAP7_75t_SL_44_Y),
		.A(INVx1_ASAP7_75t_SL_45_Y),
		.S0(sram[0]),
		.Y(MUX2_22_Y));

	MUX2 mux_l1_in_23_ (
		.B(INVx1_ASAP7_75t_SL_46_Y),
		.A(INVx1_ASAP7_75t_SL_47_Y),
		.S0(sram[0]),
		.Y(MUX2_23_Y));

	MUX2 mux_l1_in_24_ (
		.B(INVx1_ASAP7_75t_SL_48_Y),
		.A(INVx1_ASAP7_75t_SL_49_Y),
		.S0(sram[0]),
		.Y(MUX2_24_Y));

	MUX2 mux_l1_in_25_ (
		.B(INVx1_ASAP7_75t_SL_50_Y),
		.A(INVx1_ASAP7_75t_SL_51_Y),
		.S0(sram[0]),
		.Y(MUX2_25_Y));

	MUX2 mux_l1_in_26_ (
		.B(INVx1_ASAP7_75t_SL_52_Y),
		.A(INVx1_ASAP7_75t_SL_53_Y),
		.S0(sram[0]),
		.Y(MUX2_26_Y));

	MUX2 mux_l1_in_27_ (
		.B(INVx1_ASAP7_75t_SL_54_Y),
		.A(INVx1_ASAP7_75t_SL_55_Y),
		.S0(sram[0]),
		.Y(MUX2_27_Y));

	MUX2 mux_l1_in_28_ (
		.B(INVx1_ASAP7_75t_SL_56_Y),
		.A(INVx1_ASAP7_75t_SL_57_Y),
		.S0(sram[0]),
		.Y(MUX2_28_Y));

	MUX2 mux_l2_in_0_ (
		.B(MUX2_0_Y),
		.A(MUX2_1_Y),
		.S0(sram[1]),
		.Y(MUX2_29_Y));

	MUX2 mux_l2_in_1_ (
		.B(MUX2_2_Y),
		.A(MUX2_3_Y),
		.S0(sram[1]),
		.Y(MUX2_30_Y));

	MUX2 mux_l2_in_2_ (
		.B(MUX2_4_Y),
		.A(MUX2_5_Y),
		.S0(sram[1]),
		.Y(MUX2_31_Y));

	MUX2 mux_l2_in_3_ (
		.B(MUX2_6_Y),
		.A(MUX2_7_Y),
		.S0(sram[1]),
		.Y(MUX2_32_Y));

	MUX2 mux_l2_in_4_ (
		.B(MUX2_8_Y),
		.A(MUX2_9_Y),
		.S0(sram[1]),
		.Y(MUX2_33_Y));

	MUX2 mux_l2_in_5_ (
		.B(MUX2_10_Y),
		.A(MUX2_11_Y),
		.S0(sram[1]),
		.Y(MUX2_34_Y));

	MUX2 mux_l2_in_6_ (
		.B(MUX2_12_Y),
		.A(MUX2_13_Y),
		.S0(sram[1]),
		.Y(MUX2_35_Y));

	MUX2 mux_l2_in_7_ (
		.B(MUX2_14_Y),
		.A(MUX2_15_Y),
		.S0(sram[1]),
		.Y(MUX2_36_Y));

	MUX2 mux_l2_in_8_ (
		.B(MUX2_16_Y),
		.A(MUX2_17_Y),
		.S0(sram[1]),
		.Y(MUX2_37_Y));

	MUX2 mux_l2_in_9_ (
		.B(MUX2_18_Y),
		.A(MUX2_19_Y),
		.S0(sram[1]),
		.Y(MUX2_38_Y));

	MUX2 mux_l2_in_10_ (
		.B(MUX2_20_Y),
		.A(MUX2_21_Y),
		.S0(sram[1]),
		.Y(MUX2_39_Y));

	MUX2 mux_l2_in_11_ (
		.B(MUX2_22_Y),
		.A(MUX2_23_Y),
		.S0(sram[1]),
		.Y(MUX2_40_Y));

	MUX2 mux_l2_in_12_ (
		.B(MUX2_24_Y),
		.A(MUX2_25_Y),
		.S0(sram[1]),
		.Y(MUX2_41_Y));

	MUX2 mux_l2_in_13_ (
		.B(MUX2_26_Y),
		.A(MUX2_27_Y),
		.S0(sram[1]),
		.Y(MUX2_42_Y));

	MUX2 mux_l2_in_14_ (
		.B(MUX2_28_Y),
		.A(INVx1_ASAP7_75t_SL_58_Y),
		.S0(sram[1]),
		.Y(MUX2_43_Y));

	MUX2 mux_l2_in_15_ (
		.B(INVx1_ASAP7_75t_SL_59_Y),
		.A(const1_0_const1),
		.S0(sram[1]),
		.Y(MUX2_44_Y));

	MUX2 mux_l3_in_0_ (
		.B(MUX2_29_Y),
		.A(MUX2_30_Y),
		.S0(sram[2]),
		.Y(MUX2_45_Y));

	MUX2 mux_l3_in_1_ (
		.B(MUX2_31_Y),
		.A(MUX2_32_Y),
		.S0(sram[2]),
		.Y(MUX2_46_Y));

	MUX2 mux_l3_in_2_ (
		.B(MUX2_33_Y),
		.A(MUX2_34_Y),
		.S0(sram[2]),
		.Y(MUX2_47_Y));

	MUX2 mux_l3_in_3_ (
		.B(MUX2_35_Y),
		.A(MUX2_36_Y),
		.S0(sram[2]),
		.Y(MUX2_48_Y));

	MUX2 mux_l3_in_4_ (
		.B(MUX2_37_Y),
		.A(MUX2_38_Y),
		.S0(sram[2]),
		.Y(MUX2_49_Y));

	MUX2 mux_l3_in_5_ (
		.B(MUX2_39_Y),
		.A(MUX2_40_Y),
		.S0(sram[2]),
		.Y(MUX2_50_Y));

	MUX2 mux_l3_in_6_ (
		.B(MUX2_41_Y),
		.A(MUX2_42_Y),
		.S0(sram[2]),
		.Y(MUX2_51_Y));

	MUX2 mux_l3_in_7_ (
		.B(MUX2_43_Y),
		.A(MUX2_44_Y),
		.S0(sram[2]),
		.Y(MUX2_52_Y));

	MUX2 mux_l4_in_0_ (
		.B(MUX2_45_Y),
		.A(MUX2_46_Y),
		.S0(sram[3]),
		.Y(MUX2_53_Y));

	MUX2 mux_l4_in_1_ (
		.B(MUX2_47_Y),
		.A(MUX2_48_Y),
		.S0(sram[3]),
		.Y(MUX2_54_Y));

	MUX2 mux_l4_in_2_ (
		.B(MUX2_49_Y),
		.A(MUX2_50_Y),
		.S0(sram[3]),
		.Y(MUX2_55_Y));

	MUX2 mux_l4_in_3_ (
		.B(MUX2_51_Y),
		.A(MUX2_52_Y),
		.S0(sram[3]),
		.Y(MUX2_56_Y));

	MUX2 mux_l5_in_0_ (
		.B(MUX2_53_Y),
		.A(MUX2_54_Y),
		.S0(sram[4]),
		.Y(MUX2_57_Y));

	MUX2 mux_l5_in_1_ (
		.B(MUX2_55_Y),
		.A(MUX2_56_Y),
		.S0(sram[4]),
		.Y(MUX2_58_Y));

	MUX2 mux_l6_in_0_ (
		.B(MUX2_57_Y),
		.A(MUX2_58_Y),
		.S0(sram[5]),
		.Y(MUX2_59_Y));

endmodule
// ----- END Verilog module for mux_tree_size60 -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_tree_size2 -----
module mux_tree_size2(in,
                      sram,
                      sram_inv,
                      out);
//----- INPUT PORTS -----
input [0:1] in;
//----- INPUT PORTS -----
input [0:1] sram;
//----- INPUT PORTS -----
input [0:1] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] INVx1_ASAP7_75t_SL_0_Y;
wire [0:0] INVx1_ASAP7_75t_SL_1_Y;
wire [0:0] MUX2_0_Y;
wire [0:0] MUX2_1_Y;
wire [0:0] const1_0_const1;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_0_ (
		.A(in[0]),
		.Y(INVx1_ASAP7_75t_SL_0_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_1_ (
		.A(in[1]),
		.Y(INVx1_ASAP7_75t_SL_1_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_2_ (
		.A(MUX2_1_Y),
		.Y(out));

	const1 const1_0_ (
		.const1(const1_0_const1));

	MUX2 mux_l1_in_0_ (
		.B(INVx1_ASAP7_75t_SL_0_Y),
		.A(INVx1_ASAP7_75t_SL_1_Y),
		.S0(sram[0]),
		.Y(MUX2_0_Y));

	MUX2 mux_l2_in_0_ (
		.B(MUX2_0_Y),
		.A(const1_0_const1),
		.S0(sram[1]),
		.Y(MUX2_1_Y));

endmodule
// ----- END Verilog module for mux_tree_size2 -----

//----- Default net type -----
`default_nettype wire




//----- Default net type -----
`default_nettype none

// ----- Verilog module for frac_lut6_mux -----
module frac_lut6_mux(in,
                     sram,
                     sram_inv,
                     lut5_out,
                     lut6_out);
//----- INPUT PORTS -----
input [0:63] in;
//----- INPUT PORTS -----
input [0:5] sram;
//----- INPUT PORTS -----
input [0:5] sram_inv;
//----- OUTPUT PORTS -----
output [0:1] lut5_out;
//----- OUTPUT PORTS -----
output [0:0] lut6_out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] BUFx4_ASAP7_75t_SL_0_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_10_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_11_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_12_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_13_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_14_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_15_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_16_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_17_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_18_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_19_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_1_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_2_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_3_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_4_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_5_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_6_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_7_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_8_Y;
wire [0:0] BUFx4_ASAP7_75t_SL_9_Y;
wire [0:0] INVx1_ASAP7_75t_SL_0_Y;
wire [0:0] INVx1_ASAP7_75t_SL_10_Y;
wire [0:0] INVx1_ASAP7_75t_SL_11_Y;
wire [0:0] INVx1_ASAP7_75t_SL_12_Y;
wire [0:0] INVx1_ASAP7_75t_SL_13_Y;
wire [0:0] INVx1_ASAP7_75t_SL_14_Y;
wire [0:0] INVx1_ASAP7_75t_SL_15_Y;
wire [0:0] INVx1_ASAP7_75t_SL_16_Y;
wire [0:0] INVx1_ASAP7_75t_SL_17_Y;
wire [0:0] INVx1_ASAP7_75t_SL_18_Y;
wire [0:0] INVx1_ASAP7_75t_SL_19_Y;
wire [0:0] INVx1_ASAP7_75t_SL_1_Y;
wire [0:0] INVx1_ASAP7_75t_SL_20_Y;
wire [0:0] INVx1_ASAP7_75t_SL_21_Y;
wire [0:0] INVx1_ASAP7_75t_SL_22_Y;
wire [0:0] INVx1_ASAP7_75t_SL_23_Y;
wire [0:0] INVx1_ASAP7_75t_SL_24_Y;
wire [0:0] INVx1_ASAP7_75t_SL_25_Y;
wire [0:0] INVx1_ASAP7_75t_SL_26_Y;
wire [0:0] INVx1_ASAP7_75t_SL_27_Y;
wire [0:0] INVx1_ASAP7_75t_SL_28_Y;
wire [0:0] INVx1_ASAP7_75t_SL_29_Y;
wire [0:0] INVx1_ASAP7_75t_SL_2_Y;
wire [0:0] INVx1_ASAP7_75t_SL_30_Y;
wire [0:0] INVx1_ASAP7_75t_SL_31_Y;
wire [0:0] INVx1_ASAP7_75t_SL_32_Y;
wire [0:0] INVx1_ASAP7_75t_SL_33_Y;
wire [0:0] INVx1_ASAP7_75t_SL_34_Y;
wire [0:0] INVx1_ASAP7_75t_SL_35_Y;
wire [0:0] INVx1_ASAP7_75t_SL_36_Y;
wire [0:0] INVx1_ASAP7_75t_SL_37_Y;
wire [0:0] INVx1_ASAP7_75t_SL_38_Y;
wire [0:0] INVx1_ASAP7_75t_SL_39_Y;
wire [0:0] INVx1_ASAP7_75t_SL_3_Y;
wire [0:0] INVx1_ASAP7_75t_SL_40_Y;
wire [0:0] INVx1_ASAP7_75t_SL_41_Y;
wire [0:0] INVx1_ASAP7_75t_SL_42_Y;
wire [0:0] INVx1_ASAP7_75t_SL_43_Y;
wire [0:0] INVx1_ASAP7_75t_SL_44_Y;
wire [0:0] INVx1_ASAP7_75t_SL_45_Y;
wire [0:0] INVx1_ASAP7_75t_SL_46_Y;
wire [0:0] INVx1_ASAP7_75t_SL_47_Y;
wire [0:0] INVx1_ASAP7_75t_SL_48_Y;
wire [0:0] INVx1_ASAP7_75t_SL_49_Y;
wire [0:0] INVx1_ASAP7_75t_SL_4_Y;
wire [0:0] INVx1_ASAP7_75t_SL_50_Y;
wire [0:0] INVx1_ASAP7_75t_SL_51_Y;
wire [0:0] INVx1_ASAP7_75t_SL_52_Y;
wire [0:0] INVx1_ASAP7_75t_SL_53_Y;
wire [0:0] INVx1_ASAP7_75t_SL_54_Y;
wire [0:0] INVx1_ASAP7_75t_SL_55_Y;
wire [0:0] INVx1_ASAP7_75t_SL_56_Y;
wire [0:0] INVx1_ASAP7_75t_SL_57_Y;
wire [0:0] INVx1_ASAP7_75t_SL_58_Y;
wire [0:0] INVx1_ASAP7_75t_SL_59_Y;
wire [0:0] INVx1_ASAP7_75t_SL_5_Y;
wire [0:0] INVx1_ASAP7_75t_SL_60_Y;
wire [0:0] INVx1_ASAP7_75t_SL_61_Y;
wire [0:0] INVx1_ASAP7_75t_SL_62_Y;
wire [0:0] INVx1_ASAP7_75t_SL_63_Y;
wire [0:0] INVx1_ASAP7_75t_SL_6_Y;
wire [0:0] INVx1_ASAP7_75t_SL_7_Y;
wire [0:0] INVx1_ASAP7_75t_SL_8_Y;
wire [0:0] INVx1_ASAP7_75t_SL_9_Y;
wire [0:0] MUX2_0_Y;
wire [0:0] MUX2_10_Y;
wire [0:0] MUX2_11_Y;
wire [0:0] MUX2_12_Y;
wire [0:0] MUX2_13_Y;
wire [0:0] MUX2_14_Y;
wire [0:0] MUX2_15_Y;
wire [0:0] MUX2_16_Y;
wire [0:0] MUX2_17_Y;
wire [0:0] MUX2_18_Y;
wire [0:0] MUX2_19_Y;
wire [0:0] MUX2_1_Y;
wire [0:0] MUX2_20_Y;
wire [0:0] MUX2_21_Y;
wire [0:0] MUX2_22_Y;
wire [0:0] MUX2_23_Y;
wire [0:0] MUX2_24_Y;
wire [0:0] MUX2_25_Y;
wire [0:0] MUX2_26_Y;
wire [0:0] MUX2_27_Y;
wire [0:0] MUX2_28_Y;
wire [0:0] MUX2_29_Y;
wire [0:0] MUX2_2_Y;
wire [0:0] MUX2_30_Y;
wire [0:0] MUX2_31_Y;
wire [0:0] MUX2_32_Y;
wire [0:0] MUX2_33_Y;
wire [0:0] MUX2_34_Y;
wire [0:0] MUX2_35_Y;
wire [0:0] MUX2_36_Y;
wire [0:0] MUX2_37_Y;
wire [0:0] MUX2_38_Y;
wire [0:0] MUX2_39_Y;
wire [0:0] MUX2_3_Y;
wire [0:0] MUX2_40_Y;
wire [0:0] MUX2_41_Y;
wire [0:0] MUX2_42_Y;
wire [0:0] MUX2_43_Y;
wire [0:0] MUX2_44_Y;
wire [0:0] MUX2_45_Y;
wire [0:0] MUX2_46_Y;
wire [0:0] MUX2_47_Y;
wire [0:0] MUX2_48_Y;
wire [0:0] MUX2_49_Y;
wire [0:0] MUX2_4_Y;
wire [0:0] MUX2_50_Y;
wire [0:0] MUX2_51_Y;
wire [0:0] MUX2_52_Y;
wire [0:0] MUX2_53_Y;
wire [0:0] MUX2_54_Y;
wire [0:0] MUX2_55_Y;
wire [0:0] MUX2_56_Y;
wire [0:0] MUX2_57_Y;
wire [0:0] MUX2_58_Y;
wire [0:0] MUX2_59_Y;
wire [0:0] MUX2_5_Y;
wire [0:0] MUX2_60_Y;
wire [0:0] MUX2_61_Y;
wire [0:0] MUX2_62_Y;
wire [0:0] MUX2_6_Y;
wire [0:0] MUX2_7_Y;
wire [0:0] MUX2_8_Y;
wire [0:0] MUX2_9_Y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

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
		.A(in[5]),
		.Y(INVx1_ASAP7_75t_SL_5_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_6_ (
		.A(in[6]),
		.Y(INVx1_ASAP7_75t_SL_6_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_7_ (
		.A(in[7]),
		.Y(INVx1_ASAP7_75t_SL_7_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_8_ (
		.A(in[8]),
		.Y(INVx1_ASAP7_75t_SL_8_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_9_ (
		.A(in[9]),
		.Y(INVx1_ASAP7_75t_SL_9_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_10_ (
		.A(in[10]),
		.Y(INVx1_ASAP7_75t_SL_10_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_11_ (
		.A(in[11]),
		.Y(INVx1_ASAP7_75t_SL_11_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_12_ (
		.A(in[12]),
		.Y(INVx1_ASAP7_75t_SL_12_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_13_ (
		.A(in[13]),
		.Y(INVx1_ASAP7_75t_SL_13_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_14_ (
		.A(in[14]),
		.Y(INVx1_ASAP7_75t_SL_14_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_15_ (
		.A(in[15]),
		.Y(INVx1_ASAP7_75t_SL_15_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_16_ (
		.A(in[16]),
		.Y(INVx1_ASAP7_75t_SL_16_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_17_ (
		.A(in[17]),
		.Y(INVx1_ASAP7_75t_SL_17_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_18_ (
		.A(in[18]),
		.Y(INVx1_ASAP7_75t_SL_18_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_19_ (
		.A(in[19]),
		.Y(INVx1_ASAP7_75t_SL_19_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_20_ (
		.A(in[20]),
		.Y(INVx1_ASAP7_75t_SL_20_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_21_ (
		.A(in[21]),
		.Y(INVx1_ASAP7_75t_SL_21_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_22_ (
		.A(in[22]),
		.Y(INVx1_ASAP7_75t_SL_22_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_23_ (
		.A(in[23]),
		.Y(INVx1_ASAP7_75t_SL_23_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_24_ (
		.A(in[24]),
		.Y(INVx1_ASAP7_75t_SL_24_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_25_ (
		.A(in[25]),
		.Y(INVx1_ASAP7_75t_SL_25_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_26_ (
		.A(in[26]),
		.Y(INVx1_ASAP7_75t_SL_26_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_27_ (
		.A(in[27]),
		.Y(INVx1_ASAP7_75t_SL_27_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_28_ (
		.A(in[28]),
		.Y(INVx1_ASAP7_75t_SL_28_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_29_ (
		.A(in[29]),
		.Y(INVx1_ASAP7_75t_SL_29_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_30_ (
		.A(in[30]),
		.Y(INVx1_ASAP7_75t_SL_30_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_31_ (
		.A(in[31]),
		.Y(INVx1_ASAP7_75t_SL_31_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_32_ (
		.A(in[32]),
		.Y(INVx1_ASAP7_75t_SL_32_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_33_ (
		.A(in[33]),
		.Y(INVx1_ASAP7_75t_SL_33_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_34_ (
		.A(in[34]),
		.Y(INVx1_ASAP7_75t_SL_34_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_35_ (
		.A(in[35]),
		.Y(INVx1_ASAP7_75t_SL_35_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_36_ (
		.A(in[36]),
		.Y(INVx1_ASAP7_75t_SL_36_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_37_ (
		.A(in[37]),
		.Y(INVx1_ASAP7_75t_SL_37_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_38_ (
		.A(in[38]),
		.Y(INVx1_ASAP7_75t_SL_38_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_39_ (
		.A(in[39]),
		.Y(INVx1_ASAP7_75t_SL_39_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_40_ (
		.A(in[40]),
		.Y(INVx1_ASAP7_75t_SL_40_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_41_ (
		.A(in[41]),
		.Y(INVx1_ASAP7_75t_SL_41_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_42_ (
		.A(in[42]),
		.Y(INVx1_ASAP7_75t_SL_42_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_43_ (
		.A(in[43]),
		.Y(INVx1_ASAP7_75t_SL_43_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_44_ (
		.A(in[44]),
		.Y(INVx1_ASAP7_75t_SL_44_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_45_ (
		.A(in[45]),
		.Y(INVx1_ASAP7_75t_SL_45_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_46_ (
		.A(in[46]),
		.Y(INVx1_ASAP7_75t_SL_46_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_47_ (
		.A(in[47]),
		.Y(INVx1_ASAP7_75t_SL_47_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_48_ (
		.A(in[48]),
		.Y(INVx1_ASAP7_75t_SL_48_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_49_ (
		.A(in[49]),
		.Y(INVx1_ASAP7_75t_SL_49_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_50_ (
		.A(in[50]),
		.Y(INVx1_ASAP7_75t_SL_50_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_51_ (
		.A(in[51]),
		.Y(INVx1_ASAP7_75t_SL_51_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_52_ (
		.A(in[52]),
		.Y(INVx1_ASAP7_75t_SL_52_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_53_ (
		.A(in[53]),
		.Y(INVx1_ASAP7_75t_SL_53_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_54_ (
		.A(in[54]),
		.Y(INVx1_ASAP7_75t_SL_54_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_55_ (
		.A(in[55]),
		.Y(INVx1_ASAP7_75t_SL_55_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_56_ (
		.A(in[56]),
		.Y(INVx1_ASAP7_75t_SL_56_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_57_ (
		.A(in[57]),
		.Y(INVx1_ASAP7_75t_SL_57_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_58_ (
		.A(in[58]),
		.Y(INVx1_ASAP7_75t_SL_58_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_59_ (
		.A(in[59]),
		.Y(INVx1_ASAP7_75t_SL_59_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_60_ (
		.A(in[60]),
		.Y(INVx1_ASAP7_75t_SL_60_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_61_ (
		.A(in[61]),
		.Y(INVx1_ASAP7_75t_SL_61_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_62_ (
		.A(in[62]),
		.Y(INVx1_ASAP7_75t_SL_62_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_63_ (
		.A(in[63]),
		.Y(INVx1_ASAP7_75t_SL_63_Y));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_64_ (
		.A(MUX2_60_Y),
		.Y(lut5_out[0]));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_65_ (
		.A(MUX2_61_Y),
		.Y(lut5_out[1]));

	INVx1_ASAP7_75t_SL INVx1_ASAP7_75t_SL_66_ (
		.A(MUX2_62_Y),
		.Y(lut6_out));

	MUX2 mux_l1_in_0_ (
		.B(INVx1_ASAP7_75t_SL_0_Y),
		.A(INVx1_ASAP7_75t_SL_1_Y),
		.S0(sram[0]),
		.Y(MUX2_0_Y));

	MUX2 mux_l1_in_1_ (
		.B(INVx1_ASAP7_75t_SL_2_Y),
		.A(INVx1_ASAP7_75t_SL_3_Y),
		.S0(sram[0]),
		.Y(MUX2_1_Y));

	MUX2 mux_l1_in_2_ (
		.B(INVx1_ASAP7_75t_SL_4_Y),
		.A(INVx1_ASAP7_75t_SL_5_Y),
		.S0(sram[0]),
		.Y(MUX2_2_Y));

	MUX2 mux_l1_in_3_ (
		.B(INVx1_ASAP7_75t_SL_6_Y),
		.A(INVx1_ASAP7_75t_SL_7_Y),
		.S0(sram[0]),
		.Y(MUX2_3_Y));

	MUX2 mux_l1_in_4_ (
		.B(INVx1_ASAP7_75t_SL_8_Y),
		.A(INVx1_ASAP7_75t_SL_9_Y),
		.S0(sram[0]),
		.Y(MUX2_4_Y));

	MUX2 mux_l1_in_5_ (
		.B(INVx1_ASAP7_75t_SL_10_Y),
		.A(INVx1_ASAP7_75t_SL_11_Y),
		.S0(sram[0]),
		.Y(MUX2_5_Y));

	MUX2 mux_l1_in_6_ (
		.B(INVx1_ASAP7_75t_SL_12_Y),
		.A(INVx1_ASAP7_75t_SL_13_Y),
		.S0(sram[0]),
		.Y(MUX2_6_Y));

	MUX2 mux_l1_in_7_ (
		.B(INVx1_ASAP7_75t_SL_14_Y),
		.A(INVx1_ASAP7_75t_SL_15_Y),
		.S0(sram[0]),
		.Y(MUX2_7_Y));

	MUX2 mux_l1_in_8_ (
		.B(INVx1_ASAP7_75t_SL_16_Y),
		.A(INVx1_ASAP7_75t_SL_17_Y),
		.S0(sram[0]),
		.Y(MUX2_8_Y));

	MUX2 mux_l1_in_9_ (
		.B(INVx1_ASAP7_75t_SL_18_Y),
		.A(INVx1_ASAP7_75t_SL_19_Y),
		.S0(sram[0]),
		.Y(MUX2_9_Y));

	MUX2 mux_l1_in_10_ (
		.B(INVx1_ASAP7_75t_SL_20_Y),
		.A(INVx1_ASAP7_75t_SL_21_Y),
		.S0(sram[0]),
		.Y(MUX2_10_Y));

	MUX2 mux_l1_in_11_ (
		.B(INVx1_ASAP7_75t_SL_22_Y),
		.A(INVx1_ASAP7_75t_SL_23_Y),
		.S0(sram[0]),
		.Y(MUX2_11_Y));

	MUX2 mux_l1_in_12_ (
		.B(INVx1_ASAP7_75t_SL_24_Y),
		.A(INVx1_ASAP7_75t_SL_25_Y),
		.S0(sram[0]),
		.Y(MUX2_12_Y));

	MUX2 mux_l1_in_13_ (
		.B(INVx1_ASAP7_75t_SL_26_Y),
		.A(INVx1_ASAP7_75t_SL_27_Y),
		.S0(sram[0]),
		.Y(MUX2_13_Y));

	MUX2 mux_l1_in_14_ (
		.B(INVx1_ASAP7_75t_SL_28_Y),
		.A(INVx1_ASAP7_75t_SL_29_Y),
		.S0(sram[0]),
		.Y(MUX2_14_Y));

	MUX2 mux_l1_in_15_ (
		.B(INVx1_ASAP7_75t_SL_30_Y),
		.A(INVx1_ASAP7_75t_SL_31_Y),
		.S0(sram[0]),
		.Y(MUX2_15_Y));

	MUX2 mux_l1_in_16_ (
		.B(INVx1_ASAP7_75t_SL_32_Y),
		.A(INVx1_ASAP7_75t_SL_33_Y),
		.S0(sram[0]),
		.Y(MUX2_16_Y));

	MUX2 mux_l1_in_17_ (
		.B(INVx1_ASAP7_75t_SL_34_Y),
		.A(INVx1_ASAP7_75t_SL_35_Y),
		.S0(sram[0]),
		.Y(MUX2_17_Y));

	MUX2 mux_l1_in_18_ (
		.B(INVx1_ASAP7_75t_SL_36_Y),
		.A(INVx1_ASAP7_75t_SL_37_Y),
		.S0(sram[0]),
		.Y(MUX2_18_Y));

	MUX2 mux_l1_in_19_ (
		.B(INVx1_ASAP7_75t_SL_38_Y),
		.A(INVx1_ASAP7_75t_SL_39_Y),
		.S0(sram[0]),
		.Y(MUX2_19_Y));

	MUX2 mux_l1_in_20_ (
		.B(INVx1_ASAP7_75t_SL_40_Y),
		.A(INVx1_ASAP7_75t_SL_41_Y),
		.S0(sram[0]),
		.Y(MUX2_20_Y));

	MUX2 mux_l1_in_21_ (
		.B(INVx1_ASAP7_75t_SL_42_Y),
		.A(INVx1_ASAP7_75t_SL_43_Y),
		.S0(sram[0]),
		.Y(MUX2_21_Y));

	MUX2 mux_l1_in_22_ (
		.B(INVx1_ASAP7_75t_SL_44_Y),
		.A(INVx1_ASAP7_75t_SL_45_Y),
		.S0(sram[0]),
		.Y(MUX2_22_Y));

	MUX2 mux_l1_in_23_ (
		.B(INVx1_ASAP7_75t_SL_46_Y),
		.A(INVx1_ASAP7_75t_SL_47_Y),
		.S0(sram[0]),
		.Y(MUX2_23_Y));

	MUX2 mux_l1_in_24_ (
		.B(INVx1_ASAP7_75t_SL_48_Y),
		.A(INVx1_ASAP7_75t_SL_49_Y),
		.S0(sram[0]),
		.Y(MUX2_24_Y));

	MUX2 mux_l1_in_25_ (
		.B(INVx1_ASAP7_75t_SL_50_Y),
		.A(INVx1_ASAP7_75t_SL_51_Y),
		.S0(sram[0]),
		.Y(MUX2_25_Y));

	MUX2 mux_l1_in_26_ (
		.B(INVx1_ASAP7_75t_SL_52_Y),
		.A(INVx1_ASAP7_75t_SL_53_Y),
		.S0(sram[0]),
		.Y(MUX2_26_Y));

	MUX2 mux_l1_in_27_ (
		.B(INVx1_ASAP7_75t_SL_54_Y),
		.A(INVx1_ASAP7_75t_SL_55_Y),
		.S0(sram[0]),
		.Y(MUX2_27_Y));

	MUX2 mux_l1_in_28_ (
		.B(INVx1_ASAP7_75t_SL_56_Y),
		.A(INVx1_ASAP7_75t_SL_57_Y),
		.S0(sram[0]),
		.Y(MUX2_28_Y));

	MUX2 mux_l1_in_29_ (
		.B(INVx1_ASAP7_75t_SL_58_Y),
		.A(INVx1_ASAP7_75t_SL_59_Y),
		.S0(sram[0]),
		.Y(MUX2_29_Y));

	MUX2 mux_l1_in_30_ (
		.B(INVx1_ASAP7_75t_SL_60_Y),
		.A(INVx1_ASAP7_75t_SL_61_Y),
		.S0(sram[0]),
		.Y(MUX2_30_Y));

	MUX2 mux_l1_in_31_ (
		.B(INVx1_ASAP7_75t_SL_62_Y),
		.A(INVx1_ASAP7_75t_SL_63_Y),
		.S0(sram[0]),
		.Y(MUX2_31_Y));

	MUX2 mux_l2_in_0_ (
		.B(MUX2_0_Y),
		.A(MUX2_1_Y),
		.S0(sram[1]),
		.Y(MUX2_32_Y));

	MUX2 mux_l2_in_1_ (
		.B(MUX2_2_Y),
		.A(MUX2_3_Y),
		.S0(sram[1]),
		.Y(MUX2_33_Y));

	MUX2 mux_l2_in_2_ (
		.B(MUX2_4_Y),
		.A(MUX2_5_Y),
		.S0(sram[1]),
		.Y(MUX2_34_Y));

	MUX2 mux_l2_in_3_ (
		.B(MUX2_6_Y),
		.A(MUX2_7_Y),
		.S0(sram[1]),
		.Y(MUX2_35_Y));

	MUX2 mux_l2_in_4_ (
		.B(MUX2_8_Y),
		.A(MUX2_9_Y),
		.S0(sram[1]),
		.Y(MUX2_36_Y));

	MUX2 mux_l2_in_5_ (
		.B(MUX2_10_Y),
		.A(MUX2_11_Y),
		.S0(sram[1]),
		.Y(MUX2_37_Y));

	MUX2 mux_l2_in_6_ (
		.B(MUX2_12_Y),
		.A(MUX2_13_Y),
		.S0(sram[1]),
		.Y(MUX2_38_Y));

	MUX2 mux_l2_in_7_ (
		.B(MUX2_14_Y),
		.A(MUX2_15_Y),
		.S0(sram[1]),
		.Y(MUX2_39_Y));

	MUX2 mux_l2_in_8_ (
		.B(MUX2_16_Y),
		.A(MUX2_17_Y),
		.S0(sram[1]),
		.Y(MUX2_40_Y));

	MUX2 mux_l2_in_9_ (
		.B(MUX2_18_Y),
		.A(MUX2_19_Y),
		.S0(sram[1]),
		.Y(MUX2_41_Y));

	MUX2 mux_l2_in_10_ (
		.B(MUX2_20_Y),
		.A(MUX2_21_Y),
		.S0(sram[1]),
		.Y(MUX2_42_Y));

	MUX2 mux_l2_in_11_ (
		.B(MUX2_22_Y),
		.A(MUX2_23_Y),
		.S0(sram[1]),
		.Y(MUX2_43_Y));

	MUX2 mux_l2_in_12_ (
		.B(MUX2_24_Y),
		.A(MUX2_25_Y),
		.S0(sram[1]),
		.Y(MUX2_44_Y));

	MUX2 mux_l2_in_13_ (
		.B(MUX2_26_Y),
		.A(MUX2_27_Y),
		.S0(sram[1]),
		.Y(MUX2_45_Y));

	MUX2 mux_l2_in_14_ (
		.B(MUX2_28_Y),
		.A(MUX2_29_Y),
		.S0(sram[1]),
		.Y(MUX2_46_Y));

	MUX2 mux_l2_in_15_ (
		.B(MUX2_30_Y),
		.A(MUX2_31_Y),
		.S0(sram[1]),
		.Y(MUX2_47_Y));

	MUX2 mux_l3_in_0_ (
		.B(BUFx4_ASAP7_75t_SL_0_Y),
		.A(BUFx4_ASAP7_75t_SL_1_Y),
		.S0(sram[2]),
		.Y(MUX2_48_Y));

	MUX2 mux_l3_in_1_ (
		.B(BUFx4_ASAP7_75t_SL_2_Y),
		.A(BUFx4_ASAP7_75t_SL_3_Y),
		.S0(sram[2]),
		.Y(MUX2_49_Y));

	MUX2 mux_l3_in_2_ (
		.B(BUFx4_ASAP7_75t_SL_4_Y),
		.A(BUFx4_ASAP7_75t_SL_5_Y),
		.S0(sram[2]),
		.Y(MUX2_50_Y));

	MUX2 mux_l3_in_3_ (
		.B(BUFx4_ASAP7_75t_SL_6_Y),
		.A(BUFx4_ASAP7_75t_SL_7_Y),
		.S0(sram[2]),
		.Y(MUX2_51_Y));

	MUX2 mux_l3_in_4_ (
		.B(BUFx4_ASAP7_75t_SL_8_Y),
		.A(BUFx4_ASAP7_75t_SL_9_Y),
		.S0(sram[2]),
		.Y(MUX2_52_Y));

	MUX2 mux_l3_in_5_ (
		.B(BUFx4_ASAP7_75t_SL_10_Y),
		.A(BUFx4_ASAP7_75t_SL_11_Y),
		.S0(sram[2]),
		.Y(MUX2_53_Y));

	MUX2 mux_l3_in_6_ (
		.B(BUFx4_ASAP7_75t_SL_12_Y),
		.A(BUFx4_ASAP7_75t_SL_13_Y),
		.S0(sram[2]),
		.Y(MUX2_54_Y));

	MUX2 mux_l3_in_7_ (
		.B(BUFx4_ASAP7_75t_SL_14_Y),
		.A(BUFx4_ASAP7_75t_SL_15_Y),
		.S0(sram[2]),
		.Y(MUX2_55_Y));

	MUX2 mux_l4_in_0_ (
		.B(MUX2_48_Y),
		.A(MUX2_49_Y),
		.S0(sram[3]),
		.Y(MUX2_56_Y));

	MUX2 mux_l4_in_1_ (
		.B(MUX2_50_Y),
		.A(MUX2_51_Y),
		.S0(sram[3]),
		.Y(MUX2_57_Y));

	MUX2 mux_l4_in_2_ (
		.B(MUX2_52_Y),
		.A(MUX2_53_Y),
		.S0(sram[3]),
		.Y(MUX2_58_Y));

	MUX2 mux_l4_in_3_ (
		.B(MUX2_54_Y),
		.A(MUX2_55_Y),
		.S0(sram[3]),
		.Y(MUX2_59_Y));

	MUX2 mux_l5_in_0_ (
		.B(BUFx4_ASAP7_75t_SL_16_Y),
		.A(BUFx4_ASAP7_75t_SL_17_Y),
		.S0(sram[4]),
		.Y(MUX2_60_Y));

	MUX2 mux_l5_in_1_ (
		.B(BUFx4_ASAP7_75t_SL_18_Y),
		.A(BUFx4_ASAP7_75t_SL_19_Y),
		.S0(sram[4]),
		.Y(MUX2_61_Y));

	MUX2 mux_l6_in_0_ (
		.B(MUX2_60_Y),
		.A(MUX2_61_Y),
		.S0(sram[5]),
		.Y(MUX2_62_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_0_ (
		.A(MUX2_32_Y),
		.Y(BUFx4_ASAP7_75t_SL_0_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_1_ (
		.A(MUX2_33_Y),
		.Y(BUFx4_ASAP7_75t_SL_1_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_2_ (
		.A(MUX2_34_Y),
		.Y(BUFx4_ASAP7_75t_SL_2_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_3_ (
		.A(MUX2_35_Y),
		.Y(BUFx4_ASAP7_75t_SL_3_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_4_ (
		.A(MUX2_36_Y),
		.Y(BUFx4_ASAP7_75t_SL_4_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_5_ (
		.A(MUX2_37_Y),
		.Y(BUFx4_ASAP7_75t_SL_5_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_6_ (
		.A(MUX2_38_Y),
		.Y(BUFx4_ASAP7_75t_SL_6_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_7_ (
		.A(MUX2_39_Y),
		.Y(BUFx4_ASAP7_75t_SL_7_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_8_ (
		.A(MUX2_40_Y),
		.Y(BUFx4_ASAP7_75t_SL_8_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_9_ (
		.A(MUX2_41_Y),
		.Y(BUFx4_ASAP7_75t_SL_9_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_10_ (
		.A(MUX2_42_Y),
		.Y(BUFx4_ASAP7_75t_SL_10_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_11_ (
		.A(MUX2_43_Y),
		.Y(BUFx4_ASAP7_75t_SL_11_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_12_ (
		.A(MUX2_44_Y),
		.Y(BUFx4_ASAP7_75t_SL_12_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_13_ (
		.A(MUX2_45_Y),
		.Y(BUFx4_ASAP7_75t_SL_13_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_14_ (
		.A(MUX2_46_Y),
		.Y(BUFx4_ASAP7_75t_SL_14_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_15_ (
		.A(MUX2_47_Y),
		.Y(BUFx4_ASAP7_75t_SL_15_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_16_ (
		.A(MUX2_56_Y),
		.Y(BUFx4_ASAP7_75t_SL_16_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_17_ (
		.A(MUX2_57_Y),
		.Y(BUFx4_ASAP7_75t_SL_17_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_18_ (
		.A(MUX2_58_Y),
		.Y(BUFx4_ASAP7_75t_SL_18_Y));

	BUFx4_ASAP7_75t_SL BUFx4_ASAP7_75t_SL_19_ (
		.A(MUX2_59_Y),
		.Y(BUFx4_ASAP7_75t_SL_19_Y));

endmodule
// ----- END Verilog module for frac_lut6_mux -----

//----- Default net type -----
`default_nettype wire




