//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Multiplexers
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Fri Nov  8 15:44:44 2024
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


wire [0:0] INVX1HVT_0_Y;
wire [0:0] INVX1HVT_1_Y;
wire [0:0] INVX1HVT_2_Y;
wire [0:0] INVX1HVT_3_Y;
wire [0:0] MUX2_0_Y;
wire [0:0] MUX2_1_Y;
wire [0:0] MUX2_2_Y;
wire [0:0] MUX2_3_Y;
wire [0:0] const1_0_const1;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

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

	const1 const1_0_ (
		.const1(const1_0_const1));

	tap_buf4 tap_buf4_0_ (
		.in(MUX2_3_Y),
		.out(out));

	MUX2 mux_l1_in_0_ (
		.B(INVX1HVT_0_Y),
		.A(INVX1HVT_1_Y),
		.S0(sram[0]),
		.Y(MUX2_0_Y));

	MUX2 mux_l2_in_0_ (
		.B(MUX2_0_Y),
		.A(INVX1HVT_2_Y),
		.S0(sram[1]),
		.Y(MUX2_1_Y));

	MUX2 mux_l2_in_1_ (
		.B(INVX1HVT_3_Y),
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


wire [0:0] INVX1HVT_0_Y;
wire [0:0] INVX1HVT_1_Y;
wire [0:0] MUX2_0_Y;
wire [0:0] MUX2_1_Y;
wire [0:0] const1_0_const1;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	INVX1HVT INVX1HVT_0_ (
		.A(in[0]),
		.Y(INVX1HVT_0_Y));

	INVX1HVT INVX1HVT_1_ (
		.A(in[1]),
		.Y(INVX1HVT_1_Y));

	const1 const1_0_ (
		.const1(const1_0_const1));

	tap_buf4 tap_buf4_0_ (
		.in(MUX2_1_Y),
		.out(out));

	MUX2 mux_l1_in_0_ (
		.B(INVX1HVT_0_Y),
		.A(INVX1HVT_1_Y),
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


wire [0:0] INVX1HVT_0_Y;
wire [0:0] INVX1HVT_1_Y;
wire [0:0] INVX1HVT_2_Y;
wire [0:0] MUX2_0_Y;
wire [0:0] MUX2_1_Y;
wire [0:0] MUX2_2_Y;
wire [0:0] const1_0_const1;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	INVX1HVT INVX1HVT_0_ (
		.A(in[0]),
		.Y(INVX1HVT_0_Y));

	INVX1HVT INVX1HVT_1_ (
		.A(in[1]),
		.Y(INVX1HVT_1_Y));

	INVX1HVT INVX1HVT_2_ (
		.A(in[2]),
		.Y(INVX1HVT_2_Y));

	const1 const1_0_ (
		.const1(const1_0_const1));

	tap_buf4 tap_buf4_0_ (
		.in(MUX2_2_Y),
		.out(out));

	MUX2 mux_l1_in_0_ (
		.B(INVX1HVT_0_Y),
		.A(INVX1HVT_1_Y),
		.S0(sram[0]),
		.Y(MUX2_0_Y));

	MUX2 mux_l1_in_1_ (
		.B(INVX1HVT_2_Y),
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


wire [0:0] INVX1HVT_0_Y;
wire [0:0] INVX1HVT_10_Y;
wire [0:0] INVX1HVT_11_Y;
wire [0:0] INVX1HVT_12_Y;
wire [0:0] INVX1HVT_13_Y;
wire [0:0] INVX1HVT_14_Y;
wire [0:0] INVX1HVT_15_Y;
wire [0:0] INVX1HVT_16_Y;
wire [0:0] INVX1HVT_17_Y;
wire [0:0] INVX1HVT_18_Y;
wire [0:0] INVX1HVT_19_Y;
wire [0:0] INVX1HVT_1_Y;
wire [0:0] INVX1HVT_20_Y;
wire [0:0] INVX1HVT_21_Y;
wire [0:0] INVX1HVT_22_Y;
wire [0:0] INVX1HVT_23_Y;
wire [0:0] INVX1HVT_24_Y;
wire [0:0] INVX1HVT_25_Y;
wire [0:0] INVX1HVT_26_Y;
wire [0:0] INVX1HVT_27_Y;
wire [0:0] INVX1HVT_28_Y;
wire [0:0] INVX1HVT_29_Y;
wire [0:0] INVX1HVT_2_Y;
wire [0:0] INVX1HVT_30_Y;
wire [0:0] INVX1HVT_31_Y;
wire [0:0] INVX1HVT_32_Y;
wire [0:0] INVX1HVT_33_Y;
wire [0:0] INVX1HVT_34_Y;
wire [0:0] INVX1HVT_35_Y;
wire [0:0] INVX1HVT_36_Y;
wire [0:0] INVX1HVT_37_Y;
wire [0:0] INVX1HVT_38_Y;
wire [0:0] INVX1HVT_39_Y;
wire [0:0] INVX1HVT_3_Y;
wire [0:0] INVX1HVT_40_Y;
wire [0:0] INVX1HVT_41_Y;
wire [0:0] INVX1HVT_42_Y;
wire [0:0] INVX1HVT_43_Y;
wire [0:0] INVX1HVT_44_Y;
wire [0:0] INVX1HVT_45_Y;
wire [0:0] INVX1HVT_46_Y;
wire [0:0] INVX1HVT_47_Y;
wire [0:0] INVX1HVT_48_Y;
wire [0:0] INVX1HVT_49_Y;
wire [0:0] INVX1HVT_4_Y;
wire [0:0] INVX1HVT_50_Y;
wire [0:0] INVX1HVT_51_Y;
wire [0:0] INVX1HVT_52_Y;
wire [0:0] INVX1HVT_53_Y;
wire [0:0] INVX1HVT_54_Y;
wire [0:0] INVX1HVT_55_Y;
wire [0:0] INVX1HVT_56_Y;
wire [0:0] INVX1HVT_57_Y;
wire [0:0] INVX1HVT_58_Y;
wire [0:0] INVX1HVT_59_Y;
wire [0:0] INVX1HVT_5_Y;
wire [0:0] INVX1HVT_6_Y;
wire [0:0] INVX1HVT_7_Y;
wire [0:0] INVX1HVT_8_Y;
wire [0:0] INVX1HVT_9_Y;
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
		.A(in[5]),
		.Y(INVX1HVT_5_Y));

	INVX1HVT INVX1HVT_6_ (
		.A(in[6]),
		.Y(INVX1HVT_6_Y));

	INVX1HVT INVX1HVT_7_ (
		.A(in[7]),
		.Y(INVX1HVT_7_Y));

	INVX1HVT INVX1HVT_8_ (
		.A(in[8]),
		.Y(INVX1HVT_8_Y));

	INVX1HVT INVX1HVT_9_ (
		.A(in[9]),
		.Y(INVX1HVT_9_Y));

	INVX1HVT INVX1HVT_10_ (
		.A(in[10]),
		.Y(INVX1HVT_10_Y));

	INVX1HVT INVX1HVT_11_ (
		.A(in[11]),
		.Y(INVX1HVT_11_Y));

	INVX1HVT INVX1HVT_12_ (
		.A(in[12]),
		.Y(INVX1HVT_12_Y));

	INVX1HVT INVX1HVT_13_ (
		.A(in[13]),
		.Y(INVX1HVT_13_Y));

	INVX1HVT INVX1HVT_14_ (
		.A(in[14]),
		.Y(INVX1HVT_14_Y));

	INVX1HVT INVX1HVT_15_ (
		.A(in[15]),
		.Y(INVX1HVT_15_Y));

	INVX1HVT INVX1HVT_16_ (
		.A(in[16]),
		.Y(INVX1HVT_16_Y));

	INVX1HVT INVX1HVT_17_ (
		.A(in[17]),
		.Y(INVX1HVT_17_Y));

	INVX1HVT INVX1HVT_18_ (
		.A(in[18]),
		.Y(INVX1HVT_18_Y));

	INVX1HVT INVX1HVT_19_ (
		.A(in[19]),
		.Y(INVX1HVT_19_Y));

	INVX1HVT INVX1HVT_20_ (
		.A(in[20]),
		.Y(INVX1HVT_20_Y));

	INVX1HVT INVX1HVT_21_ (
		.A(in[21]),
		.Y(INVX1HVT_21_Y));

	INVX1HVT INVX1HVT_22_ (
		.A(in[22]),
		.Y(INVX1HVT_22_Y));

	INVX1HVT INVX1HVT_23_ (
		.A(in[23]),
		.Y(INVX1HVT_23_Y));

	INVX1HVT INVX1HVT_24_ (
		.A(in[24]),
		.Y(INVX1HVT_24_Y));

	INVX1HVT INVX1HVT_25_ (
		.A(in[25]),
		.Y(INVX1HVT_25_Y));

	INVX1HVT INVX1HVT_26_ (
		.A(in[26]),
		.Y(INVX1HVT_26_Y));

	INVX1HVT INVX1HVT_27_ (
		.A(in[27]),
		.Y(INVX1HVT_27_Y));

	INVX1HVT INVX1HVT_28_ (
		.A(in[28]),
		.Y(INVX1HVT_28_Y));

	INVX1HVT INVX1HVT_29_ (
		.A(in[29]),
		.Y(INVX1HVT_29_Y));

	INVX1HVT INVX1HVT_30_ (
		.A(in[30]),
		.Y(INVX1HVT_30_Y));

	INVX1HVT INVX1HVT_31_ (
		.A(in[31]),
		.Y(INVX1HVT_31_Y));

	INVX1HVT INVX1HVT_32_ (
		.A(in[32]),
		.Y(INVX1HVT_32_Y));

	INVX1HVT INVX1HVT_33_ (
		.A(in[33]),
		.Y(INVX1HVT_33_Y));

	INVX1HVT INVX1HVT_34_ (
		.A(in[34]),
		.Y(INVX1HVT_34_Y));

	INVX1HVT INVX1HVT_35_ (
		.A(in[35]),
		.Y(INVX1HVT_35_Y));

	INVX1HVT INVX1HVT_36_ (
		.A(in[36]),
		.Y(INVX1HVT_36_Y));

	INVX1HVT INVX1HVT_37_ (
		.A(in[37]),
		.Y(INVX1HVT_37_Y));

	INVX1HVT INVX1HVT_38_ (
		.A(in[38]),
		.Y(INVX1HVT_38_Y));

	INVX1HVT INVX1HVT_39_ (
		.A(in[39]),
		.Y(INVX1HVT_39_Y));

	INVX1HVT INVX1HVT_40_ (
		.A(in[40]),
		.Y(INVX1HVT_40_Y));

	INVX1HVT INVX1HVT_41_ (
		.A(in[41]),
		.Y(INVX1HVT_41_Y));

	INVX1HVT INVX1HVT_42_ (
		.A(in[42]),
		.Y(INVX1HVT_42_Y));

	INVX1HVT INVX1HVT_43_ (
		.A(in[43]),
		.Y(INVX1HVT_43_Y));

	INVX1HVT INVX1HVT_44_ (
		.A(in[44]),
		.Y(INVX1HVT_44_Y));

	INVX1HVT INVX1HVT_45_ (
		.A(in[45]),
		.Y(INVX1HVT_45_Y));

	INVX1HVT INVX1HVT_46_ (
		.A(in[46]),
		.Y(INVX1HVT_46_Y));

	INVX1HVT INVX1HVT_47_ (
		.A(in[47]),
		.Y(INVX1HVT_47_Y));

	INVX1HVT INVX1HVT_48_ (
		.A(in[48]),
		.Y(INVX1HVT_48_Y));

	INVX1HVT INVX1HVT_49_ (
		.A(in[49]),
		.Y(INVX1HVT_49_Y));

	INVX1HVT INVX1HVT_50_ (
		.A(in[50]),
		.Y(INVX1HVT_50_Y));

	INVX1HVT INVX1HVT_51_ (
		.A(in[51]),
		.Y(INVX1HVT_51_Y));

	INVX1HVT INVX1HVT_52_ (
		.A(in[52]),
		.Y(INVX1HVT_52_Y));

	INVX1HVT INVX1HVT_53_ (
		.A(in[53]),
		.Y(INVX1HVT_53_Y));

	INVX1HVT INVX1HVT_54_ (
		.A(in[54]),
		.Y(INVX1HVT_54_Y));

	INVX1HVT INVX1HVT_55_ (
		.A(in[55]),
		.Y(INVX1HVT_55_Y));

	INVX1HVT INVX1HVT_56_ (
		.A(in[56]),
		.Y(INVX1HVT_56_Y));

	INVX1HVT INVX1HVT_57_ (
		.A(in[57]),
		.Y(INVX1HVT_57_Y));

	INVX1HVT INVX1HVT_58_ (
		.A(in[58]),
		.Y(INVX1HVT_58_Y));

	INVX1HVT INVX1HVT_59_ (
		.A(in[59]),
		.Y(INVX1HVT_59_Y));

	INVX1HVT INVX1HVT_60_ (
		.A(MUX2_59_Y),
		.Y(out));

	const1 const1_0_ (
		.const1(const1_0_const1));

	MUX2 mux_l1_in_0_ (
		.B(INVX1HVT_0_Y),
		.A(INVX1HVT_1_Y),
		.S0(sram[0]),
		.Y(MUX2_0_Y));

	MUX2 mux_l1_in_1_ (
		.B(INVX1HVT_2_Y),
		.A(INVX1HVT_3_Y),
		.S0(sram[0]),
		.Y(MUX2_1_Y));

	MUX2 mux_l1_in_2_ (
		.B(INVX1HVT_4_Y),
		.A(INVX1HVT_5_Y),
		.S0(sram[0]),
		.Y(MUX2_2_Y));

	MUX2 mux_l1_in_3_ (
		.B(INVX1HVT_6_Y),
		.A(INVX1HVT_7_Y),
		.S0(sram[0]),
		.Y(MUX2_3_Y));

	MUX2 mux_l1_in_4_ (
		.B(INVX1HVT_8_Y),
		.A(INVX1HVT_9_Y),
		.S0(sram[0]),
		.Y(MUX2_4_Y));

	MUX2 mux_l1_in_5_ (
		.B(INVX1HVT_10_Y),
		.A(INVX1HVT_11_Y),
		.S0(sram[0]),
		.Y(MUX2_5_Y));

	MUX2 mux_l1_in_6_ (
		.B(INVX1HVT_12_Y),
		.A(INVX1HVT_13_Y),
		.S0(sram[0]),
		.Y(MUX2_6_Y));

	MUX2 mux_l1_in_7_ (
		.B(INVX1HVT_14_Y),
		.A(INVX1HVT_15_Y),
		.S0(sram[0]),
		.Y(MUX2_7_Y));

	MUX2 mux_l1_in_8_ (
		.B(INVX1HVT_16_Y),
		.A(INVX1HVT_17_Y),
		.S0(sram[0]),
		.Y(MUX2_8_Y));

	MUX2 mux_l1_in_9_ (
		.B(INVX1HVT_18_Y),
		.A(INVX1HVT_19_Y),
		.S0(sram[0]),
		.Y(MUX2_9_Y));

	MUX2 mux_l1_in_10_ (
		.B(INVX1HVT_20_Y),
		.A(INVX1HVT_21_Y),
		.S0(sram[0]),
		.Y(MUX2_10_Y));

	MUX2 mux_l1_in_11_ (
		.B(INVX1HVT_22_Y),
		.A(INVX1HVT_23_Y),
		.S0(sram[0]),
		.Y(MUX2_11_Y));

	MUX2 mux_l1_in_12_ (
		.B(INVX1HVT_24_Y),
		.A(INVX1HVT_25_Y),
		.S0(sram[0]),
		.Y(MUX2_12_Y));

	MUX2 mux_l1_in_13_ (
		.B(INVX1HVT_26_Y),
		.A(INVX1HVT_27_Y),
		.S0(sram[0]),
		.Y(MUX2_13_Y));

	MUX2 mux_l1_in_14_ (
		.B(INVX1HVT_28_Y),
		.A(INVX1HVT_29_Y),
		.S0(sram[0]),
		.Y(MUX2_14_Y));

	MUX2 mux_l1_in_15_ (
		.B(INVX1HVT_30_Y),
		.A(INVX1HVT_31_Y),
		.S0(sram[0]),
		.Y(MUX2_15_Y));

	MUX2 mux_l1_in_16_ (
		.B(INVX1HVT_32_Y),
		.A(INVX1HVT_33_Y),
		.S0(sram[0]),
		.Y(MUX2_16_Y));

	MUX2 mux_l1_in_17_ (
		.B(INVX1HVT_34_Y),
		.A(INVX1HVT_35_Y),
		.S0(sram[0]),
		.Y(MUX2_17_Y));

	MUX2 mux_l1_in_18_ (
		.B(INVX1HVT_36_Y),
		.A(INVX1HVT_37_Y),
		.S0(sram[0]),
		.Y(MUX2_18_Y));

	MUX2 mux_l1_in_19_ (
		.B(INVX1HVT_38_Y),
		.A(INVX1HVT_39_Y),
		.S0(sram[0]),
		.Y(MUX2_19_Y));

	MUX2 mux_l1_in_20_ (
		.B(INVX1HVT_40_Y),
		.A(INVX1HVT_41_Y),
		.S0(sram[0]),
		.Y(MUX2_20_Y));

	MUX2 mux_l1_in_21_ (
		.B(INVX1HVT_42_Y),
		.A(INVX1HVT_43_Y),
		.S0(sram[0]),
		.Y(MUX2_21_Y));

	MUX2 mux_l1_in_22_ (
		.B(INVX1HVT_44_Y),
		.A(INVX1HVT_45_Y),
		.S0(sram[0]),
		.Y(MUX2_22_Y));

	MUX2 mux_l1_in_23_ (
		.B(INVX1HVT_46_Y),
		.A(INVX1HVT_47_Y),
		.S0(sram[0]),
		.Y(MUX2_23_Y));

	MUX2 mux_l1_in_24_ (
		.B(INVX1HVT_48_Y),
		.A(INVX1HVT_49_Y),
		.S0(sram[0]),
		.Y(MUX2_24_Y));

	MUX2 mux_l1_in_25_ (
		.B(INVX1HVT_50_Y),
		.A(INVX1HVT_51_Y),
		.S0(sram[0]),
		.Y(MUX2_25_Y));

	MUX2 mux_l1_in_26_ (
		.B(INVX1HVT_52_Y),
		.A(INVX1HVT_53_Y),
		.S0(sram[0]),
		.Y(MUX2_26_Y));

	MUX2 mux_l1_in_27_ (
		.B(INVX1HVT_54_Y),
		.A(INVX1HVT_55_Y),
		.S0(sram[0]),
		.Y(MUX2_27_Y));

	MUX2 mux_l1_in_28_ (
		.B(INVX1HVT_56_Y),
		.A(INVX1HVT_57_Y),
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
		.A(INVX1HVT_58_Y),
		.S0(sram[1]),
		.Y(MUX2_43_Y));

	MUX2 mux_l2_in_15_ (
		.B(INVX1HVT_59_Y),
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


wire [0:0] INVX1HVT_0_Y;
wire [0:0] INVX1HVT_1_Y;
wire [0:0] MUX2_0_Y;
wire [0:0] MUX2_1_Y;
wire [0:0] const1_0_const1;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	INVX1HVT INVX1HVT_0_ (
		.A(in[0]),
		.Y(INVX1HVT_0_Y));

	INVX1HVT INVX1HVT_1_ (
		.A(in[1]),
		.Y(INVX1HVT_1_Y));

	INVX1HVT INVX1HVT_2_ (
		.A(MUX2_1_Y),
		.Y(out));

	const1 const1_0_ (
		.const1(const1_0_const1));

	MUX2 mux_l1_in_0_ (
		.B(INVX1HVT_0_Y),
		.A(INVX1HVT_1_Y),
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


wire [0:0] INVX1HVT_0_Y;
wire [0:0] INVX1HVT_10_Y;
wire [0:0] INVX1HVT_11_Y;
wire [0:0] INVX1HVT_12_Y;
wire [0:0] INVX1HVT_13_Y;
wire [0:0] INVX1HVT_14_Y;
wire [0:0] INVX1HVT_15_Y;
wire [0:0] INVX1HVT_16_Y;
wire [0:0] INVX1HVT_17_Y;
wire [0:0] INVX1HVT_18_Y;
wire [0:0] INVX1HVT_19_Y;
wire [0:0] INVX1HVT_1_Y;
wire [0:0] INVX1HVT_20_Y;
wire [0:0] INVX1HVT_21_Y;
wire [0:0] INVX1HVT_22_Y;
wire [0:0] INVX1HVT_23_Y;
wire [0:0] INVX1HVT_24_Y;
wire [0:0] INVX1HVT_25_Y;
wire [0:0] INVX1HVT_26_Y;
wire [0:0] INVX1HVT_27_Y;
wire [0:0] INVX1HVT_28_Y;
wire [0:0] INVX1HVT_29_Y;
wire [0:0] INVX1HVT_2_Y;
wire [0:0] INVX1HVT_30_Y;
wire [0:0] INVX1HVT_31_Y;
wire [0:0] INVX1HVT_32_Y;
wire [0:0] INVX1HVT_33_Y;
wire [0:0] INVX1HVT_34_Y;
wire [0:0] INVX1HVT_35_Y;
wire [0:0] INVX1HVT_36_Y;
wire [0:0] INVX1HVT_37_Y;
wire [0:0] INVX1HVT_38_Y;
wire [0:0] INVX1HVT_39_Y;
wire [0:0] INVX1HVT_3_Y;
wire [0:0] INVX1HVT_40_Y;
wire [0:0] INVX1HVT_41_Y;
wire [0:0] INVX1HVT_42_Y;
wire [0:0] INVX1HVT_43_Y;
wire [0:0] INVX1HVT_44_Y;
wire [0:0] INVX1HVT_45_Y;
wire [0:0] INVX1HVT_46_Y;
wire [0:0] INVX1HVT_47_Y;
wire [0:0] INVX1HVT_48_Y;
wire [0:0] INVX1HVT_49_Y;
wire [0:0] INVX1HVT_4_Y;
wire [0:0] INVX1HVT_50_Y;
wire [0:0] INVX1HVT_51_Y;
wire [0:0] INVX1HVT_52_Y;
wire [0:0] INVX1HVT_53_Y;
wire [0:0] INVX1HVT_54_Y;
wire [0:0] INVX1HVT_55_Y;
wire [0:0] INVX1HVT_56_Y;
wire [0:0] INVX1HVT_57_Y;
wire [0:0] INVX1HVT_58_Y;
wire [0:0] INVX1HVT_59_Y;
wire [0:0] INVX1HVT_5_Y;
wire [0:0] INVX1HVT_60_Y;
wire [0:0] INVX1HVT_61_Y;
wire [0:0] INVX1HVT_62_Y;
wire [0:0] INVX1HVT_63_Y;
wire [0:0] INVX1HVT_6_Y;
wire [0:0] INVX1HVT_7_Y;
wire [0:0] INVX1HVT_8_Y;
wire [0:0] INVX1HVT_9_Y;
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
wire [0:0] buf4_0_out;
wire [0:0] buf4_10_out;
wire [0:0] buf4_11_out;
wire [0:0] buf4_12_out;
wire [0:0] buf4_13_out;
wire [0:0] buf4_14_out;
wire [0:0] buf4_15_out;
wire [0:0] buf4_16_out;
wire [0:0] buf4_17_out;
wire [0:0] buf4_18_out;
wire [0:0] buf4_19_out;
wire [0:0] buf4_1_out;
wire [0:0] buf4_2_out;
wire [0:0] buf4_3_out;
wire [0:0] buf4_4_out;
wire [0:0] buf4_5_out;
wire [0:0] buf4_6_out;
wire [0:0] buf4_7_out;
wire [0:0] buf4_8_out;
wire [0:0] buf4_9_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

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
		.A(in[5]),
		.Y(INVX1HVT_5_Y));

	INVX1HVT INVX1HVT_6_ (
		.A(in[6]),
		.Y(INVX1HVT_6_Y));

	INVX1HVT INVX1HVT_7_ (
		.A(in[7]),
		.Y(INVX1HVT_7_Y));

	INVX1HVT INVX1HVT_8_ (
		.A(in[8]),
		.Y(INVX1HVT_8_Y));

	INVX1HVT INVX1HVT_9_ (
		.A(in[9]),
		.Y(INVX1HVT_9_Y));

	INVX1HVT INVX1HVT_10_ (
		.A(in[10]),
		.Y(INVX1HVT_10_Y));

	INVX1HVT INVX1HVT_11_ (
		.A(in[11]),
		.Y(INVX1HVT_11_Y));

	INVX1HVT INVX1HVT_12_ (
		.A(in[12]),
		.Y(INVX1HVT_12_Y));

	INVX1HVT INVX1HVT_13_ (
		.A(in[13]),
		.Y(INVX1HVT_13_Y));

	INVX1HVT INVX1HVT_14_ (
		.A(in[14]),
		.Y(INVX1HVT_14_Y));

	INVX1HVT INVX1HVT_15_ (
		.A(in[15]),
		.Y(INVX1HVT_15_Y));

	INVX1HVT INVX1HVT_16_ (
		.A(in[16]),
		.Y(INVX1HVT_16_Y));

	INVX1HVT INVX1HVT_17_ (
		.A(in[17]),
		.Y(INVX1HVT_17_Y));

	INVX1HVT INVX1HVT_18_ (
		.A(in[18]),
		.Y(INVX1HVT_18_Y));

	INVX1HVT INVX1HVT_19_ (
		.A(in[19]),
		.Y(INVX1HVT_19_Y));

	INVX1HVT INVX1HVT_20_ (
		.A(in[20]),
		.Y(INVX1HVT_20_Y));

	INVX1HVT INVX1HVT_21_ (
		.A(in[21]),
		.Y(INVX1HVT_21_Y));

	INVX1HVT INVX1HVT_22_ (
		.A(in[22]),
		.Y(INVX1HVT_22_Y));

	INVX1HVT INVX1HVT_23_ (
		.A(in[23]),
		.Y(INVX1HVT_23_Y));

	INVX1HVT INVX1HVT_24_ (
		.A(in[24]),
		.Y(INVX1HVT_24_Y));

	INVX1HVT INVX1HVT_25_ (
		.A(in[25]),
		.Y(INVX1HVT_25_Y));

	INVX1HVT INVX1HVT_26_ (
		.A(in[26]),
		.Y(INVX1HVT_26_Y));

	INVX1HVT INVX1HVT_27_ (
		.A(in[27]),
		.Y(INVX1HVT_27_Y));

	INVX1HVT INVX1HVT_28_ (
		.A(in[28]),
		.Y(INVX1HVT_28_Y));

	INVX1HVT INVX1HVT_29_ (
		.A(in[29]),
		.Y(INVX1HVT_29_Y));

	INVX1HVT INVX1HVT_30_ (
		.A(in[30]),
		.Y(INVX1HVT_30_Y));

	INVX1HVT INVX1HVT_31_ (
		.A(in[31]),
		.Y(INVX1HVT_31_Y));

	INVX1HVT INVX1HVT_32_ (
		.A(in[32]),
		.Y(INVX1HVT_32_Y));

	INVX1HVT INVX1HVT_33_ (
		.A(in[33]),
		.Y(INVX1HVT_33_Y));

	INVX1HVT INVX1HVT_34_ (
		.A(in[34]),
		.Y(INVX1HVT_34_Y));

	INVX1HVT INVX1HVT_35_ (
		.A(in[35]),
		.Y(INVX1HVT_35_Y));

	INVX1HVT INVX1HVT_36_ (
		.A(in[36]),
		.Y(INVX1HVT_36_Y));

	INVX1HVT INVX1HVT_37_ (
		.A(in[37]),
		.Y(INVX1HVT_37_Y));

	INVX1HVT INVX1HVT_38_ (
		.A(in[38]),
		.Y(INVX1HVT_38_Y));

	INVX1HVT INVX1HVT_39_ (
		.A(in[39]),
		.Y(INVX1HVT_39_Y));

	INVX1HVT INVX1HVT_40_ (
		.A(in[40]),
		.Y(INVX1HVT_40_Y));

	INVX1HVT INVX1HVT_41_ (
		.A(in[41]),
		.Y(INVX1HVT_41_Y));

	INVX1HVT INVX1HVT_42_ (
		.A(in[42]),
		.Y(INVX1HVT_42_Y));

	INVX1HVT INVX1HVT_43_ (
		.A(in[43]),
		.Y(INVX1HVT_43_Y));

	INVX1HVT INVX1HVT_44_ (
		.A(in[44]),
		.Y(INVX1HVT_44_Y));

	INVX1HVT INVX1HVT_45_ (
		.A(in[45]),
		.Y(INVX1HVT_45_Y));

	INVX1HVT INVX1HVT_46_ (
		.A(in[46]),
		.Y(INVX1HVT_46_Y));

	INVX1HVT INVX1HVT_47_ (
		.A(in[47]),
		.Y(INVX1HVT_47_Y));

	INVX1HVT INVX1HVT_48_ (
		.A(in[48]),
		.Y(INVX1HVT_48_Y));

	INVX1HVT INVX1HVT_49_ (
		.A(in[49]),
		.Y(INVX1HVT_49_Y));

	INVX1HVT INVX1HVT_50_ (
		.A(in[50]),
		.Y(INVX1HVT_50_Y));

	INVX1HVT INVX1HVT_51_ (
		.A(in[51]),
		.Y(INVX1HVT_51_Y));

	INVX1HVT INVX1HVT_52_ (
		.A(in[52]),
		.Y(INVX1HVT_52_Y));

	INVX1HVT INVX1HVT_53_ (
		.A(in[53]),
		.Y(INVX1HVT_53_Y));

	INVX1HVT INVX1HVT_54_ (
		.A(in[54]),
		.Y(INVX1HVT_54_Y));

	INVX1HVT INVX1HVT_55_ (
		.A(in[55]),
		.Y(INVX1HVT_55_Y));

	INVX1HVT INVX1HVT_56_ (
		.A(in[56]),
		.Y(INVX1HVT_56_Y));

	INVX1HVT INVX1HVT_57_ (
		.A(in[57]),
		.Y(INVX1HVT_57_Y));

	INVX1HVT INVX1HVT_58_ (
		.A(in[58]),
		.Y(INVX1HVT_58_Y));

	INVX1HVT INVX1HVT_59_ (
		.A(in[59]),
		.Y(INVX1HVT_59_Y));

	INVX1HVT INVX1HVT_60_ (
		.A(in[60]),
		.Y(INVX1HVT_60_Y));

	INVX1HVT INVX1HVT_61_ (
		.A(in[61]),
		.Y(INVX1HVT_61_Y));

	INVX1HVT INVX1HVT_62_ (
		.A(in[62]),
		.Y(INVX1HVT_62_Y));

	INVX1HVT INVX1HVT_63_ (
		.A(in[63]),
		.Y(INVX1HVT_63_Y));

	INVX1HVT INVX1HVT_64_ (
		.A(MUX2_60_Y),
		.Y(lut5_out[0]));

	INVX1HVT INVX1HVT_65_ (
		.A(MUX2_61_Y),
		.Y(lut5_out[1]));

	INVX1HVT INVX1HVT_66_ (
		.A(MUX2_62_Y),
		.Y(lut6_out));

	MUX2 mux_l1_in_0_ (
		.B(INVX1HVT_0_Y),
		.A(INVX1HVT_1_Y),
		.S0(sram[0]),
		.Y(MUX2_0_Y));

	MUX2 mux_l1_in_1_ (
		.B(INVX1HVT_2_Y),
		.A(INVX1HVT_3_Y),
		.S0(sram[0]),
		.Y(MUX2_1_Y));

	MUX2 mux_l1_in_2_ (
		.B(INVX1HVT_4_Y),
		.A(INVX1HVT_5_Y),
		.S0(sram[0]),
		.Y(MUX2_2_Y));

	MUX2 mux_l1_in_3_ (
		.B(INVX1HVT_6_Y),
		.A(INVX1HVT_7_Y),
		.S0(sram[0]),
		.Y(MUX2_3_Y));

	MUX2 mux_l1_in_4_ (
		.B(INVX1HVT_8_Y),
		.A(INVX1HVT_9_Y),
		.S0(sram[0]),
		.Y(MUX2_4_Y));

	MUX2 mux_l1_in_5_ (
		.B(INVX1HVT_10_Y),
		.A(INVX1HVT_11_Y),
		.S0(sram[0]),
		.Y(MUX2_5_Y));

	MUX2 mux_l1_in_6_ (
		.B(INVX1HVT_12_Y),
		.A(INVX1HVT_13_Y),
		.S0(sram[0]),
		.Y(MUX2_6_Y));

	MUX2 mux_l1_in_7_ (
		.B(INVX1HVT_14_Y),
		.A(INVX1HVT_15_Y),
		.S0(sram[0]),
		.Y(MUX2_7_Y));

	MUX2 mux_l1_in_8_ (
		.B(INVX1HVT_16_Y),
		.A(INVX1HVT_17_Y),
		.S0(sram[0]),
		.Y(MUX2_8_Y));

	MUX2 mux_l1_in_9_ (
		.B(INVX1HVT_18_Y),
		.A(INVX1HVT_19_Y),
		.S0(sram[0]),
		.Y(MUX2_9_Y));

	MUX2 mux_l1_in_10_ (
		.B(INVX1HVT_20_Y),
		.A(INVX1HVT_21_Y),
		.S0(sram[0]),
		.Y(MUX2_10_Y));

	MUX2 mux_l1_in_11_ (
		.B(INVX1HVT_22_Y),
		.A(INVX1HVT_23_Y),
		.S0(sram[0]),
		.Y(MUX2_11_Y));

	MUX2 mux_l1_in_12_ (
		.B(INVX1HVT_24_Y),
		.A(INVX1HVT_25_Y),
		.S0(sram[0]),
		.Y(MUX2_12_Y));

	MUX2 mux_l1_in_13_ (
		.B(INVX1HVT_26_Y),
		.A(INVX1HVT_27_Y),
		.S0(sram[0]),
		.Y(MUX2_13_Y));

	MUX2 mux_l1_in_14_ (
		.B(INVX1HVT_28_Y),
		.A(INVX1HVT_29_Y),
		.S0(sram[0]),
		.Y(MUX2_14_Y));

	MUX2 mux_l1_in_15_ (
		.B(INVX1HVT_30_Y),
		.A(INVX1HVT_31_Y),
		.S0(sram[0]),
		.Y(MUX2_15_Y));

	MUX2 mux_l1_in_16_ (
		.B(INVX1HVT_32_Y),
		.A(INVX1HVT_33_Y),
		.S0(sram[0]),
		.Y(MUX2_16_Y));

	MUX2 mux_l1_in_17_ (
		.B(INVX1HVT_34_Y),
		.A(INVX1HVT_35_Y),
		.S0(sram[0]),
		.Y(MUX2_17_Y));

	MUX2 mux_l1_in_18_ (
		.B(INVX1HVT_36_Y),
		.A(INVX1HVT_37_Y),
		.S0(sram[0]),
		.Y(MUX2_18_Y));

	MUX2 mux_l1_in_19_ (
		.B(INVX1HVT_38_Y),
		.A(INVX1HVT_39_Y),
		.S0(sram[0]),
		.Y(MUX2_19_Y));

	MUX2 mux_l1_in_20_ (
		.B(INVX1HVT_40_Y),
		.A(INVX1HVT_41_Y),
		.S0(sram[0]),
		.Y(MUX2_20_Y));

	MUX2 mux_l1_in_21_ (
		.B(INVX1HVT_42_Y),
		.A(INVX1HVT_43_Y),
		.S0(sram[0]),
		.Y(MUX2_21_Y));

	MUX2 mux_l1_in_22_ (
		.B(INVX1HVT_44_Y),
		.A(INVX1HVT_45_Y),
		.S0(sram[0]),
		.Y(MUX2_22_Y));

	MUX2 mux_l1_in_23_ (
		.B(INVX1HVT_46_Y),
		.A(INVX1HVT_47_Y),
		.S0(sram[0]),
		.Y(MUX2_23_Y));

	MUX2 mux_l1_in_24_ (
		.B(INVX1HVT_48_Y),
		.A(INVX1HVT_49_Y),
		.S0(sram[0]),
		.Y(MUX2_24_Y));

	MUX2 mux_l1_in_25_ (
		.B(INVX1HVT_50_Y),
		.A(INVX1HVT_51_Y),
		.S0(sram[0]),
		.Y(MUX2_25_Y));

	MUX2 mux_l1_in_26_ (
		.B(INVX1HVT_52_Y),
		.A(INVX1HVT_53_Y),
		.S0(sram[0]),
		.Y(MUX2_26_Y));

	MUX2 mux_l1_in_27_ (
		.B(INVX1HVT_54_Y),
		.A(INVX1HVT_55_Y),
		.S0(sram[0]),
		.Y(MUX2_27_Y));

	MUX2 mux_l1_in_28_ (
		.B(INVX1HVT_56_Y),
		.A(INVX1HVT_57_Y),
		.S0(sram[0]),
		.Y(MUX2_28_Y));

	MUX2 mux_l1_in_29_ (
		.B(INVX1HVT_58_Y),
		.A(INVX1HVT_59_Y),
		.S0(sram[0]),
		.Y(MUX2_29_Y));

	MUX2 mux_l1_in_30_ (
		.B(INVX1HVT_60_Y),
		.A(INVX1HVT_61_Y),
		.S0(sram[0]),
		.Y(MUX2_30_Y));

	MUX2 mux_l1_in_31_ (
		.B(INVX1HVT_62_Y),
		.A(INVX1HVT_63_Y),
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
		.B(buf4_0_out),
		.A(buf4_1_out),
		.S0(sram[2]),
		.Y(MUX2_48_Y));

	MUX2 mux_l3_in_1_ (
		.B(buf4_2_out),
		.A(buf4_3_out),
		.S0(sram[2]),
		.Y(MUX2_49_Y));

	MUX2 mux_l3_in_2_ (
		.B(buf4_4_out),
		.A(buf4_5_out),
		.S0(sram[2]),
		.Y(MUX2_50_Y));

	MUX2 mux_l3_in_3_ (
		.B(buf4_6_out),
		.A(buf4_7_out),
		.S0(sram[2]),
		.Y(MUX2_51_Y));

	MUX2 mux_l3_in_4_ (
		.B(buf4_8_out),
		.A(buf4_9_out),
		.S0(sram[2]),
		.Y(MUX2_52_Y));

	MUX2 mux_l3_in_5_ (
		.B(buf4_10_out),
		.A(buf4_11_out),
		.S0(sram[2]),
		.Y(MUX2_53_Y));

	MUX2 mux_l3_in_6_ (
		.B(buf4_12_out),
		.A(buf4_13_out),
		.S0(sram[2]),
		.Y(MUX2_54_Y));

	MUX2 mux_l3_in_7_ (
		.B(buf4_14_out),
		.A(buf4_15_out),
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
		.B(buf4_16_out),
		.A(buf4_17_out),
		.S0(sram[4]),
		.Y(MUX2_60_Y));

	MUX2 mux_l5_in_1_ (
		.B(buf4_18_out),
		.A(buf4_19_out),
		.S0(sram[4]),
		.Y(MUX2_61_Y));

	MUX2 mux_l6_in_0_ (
		.B(MUX2_60_Y),
		.A(MUX2_61_Y),
		.S0(sram[5]),
		.Y(MUX2_62_Y));

	buf4 buf4_0_ (
		.in(MUX2_32_Y),
		.out(buf4_0_out));

	buf4 buf4_1_ (
		.in(MUX2_33_Y),
		.out(buf4_1_out));

	buf4 buf4_2_ (
		.in(MUX2_34_Y),
		.out(buf4_2_out));

	buf4 buf4_3_ (
		.in(MUX2_35_Y),
		.out(buf4_3_out));

	buf4 buf4_4_ (
		.in(MUX2_36_Y),
		.out(buf4_4_out));

	buf4 buf4_5_ (
		.in(MUX2_37_Y),
		.out(buf4_5_out));

	buf4 buf4_6_ (
		.in(MUX2_38_Y),
		.out(buf4_6_out));

	buf4 buf4_7_ (
		.in(MUX2_39_Y),
		.out(buf4_7_out));

	buf4 buf4_8_ (
		.in(MUX2_40_Y),
		.out(buf4_8_out));

	buf4 buf4_9_ (
		.in(MUX2_41_Y),
		.out(buf4_9_out));

	buf4 buf4_10_ (
		.in(MUX2_42_Y),
		.out(buf4_10_out));

	buf4 buf4_11_ (
		.in(MUX2_43_Y),
		.out(buf4_11_out));

	buf4 buf4_12_ (
		.in(MUX2_44_Y),
		.out(buf4_12_out));

	buf4 buf4_13_ (
		.in(MUX2_45_Y),
		.out(buf4_13_out));

	buf4 buf4_14_ (
		.in(MUX2_46_Y),
		.out(buf4_14_out));

	buf4 buf4_15_ (
		.in(MUX2_47_Y),
		.out(buf4_15_out));

	buf4 buf4_16_ (
		.in(MUX2_56_Y),
		.out(buf4_16_out));

	buf4 buf4_17_ (
		.in(MUX2_57_Y),
		.out(buf4_17_out));

	buf4 buf4_18_ (
		.in(MUX2_58_Y),
		.out(buf4_18_out));

	buf4 buf4_19_ (
		.in(MUX2_59_Y),
		.out(buf4_19_out));

endmodule
// ----- END Verilog module for frac_lut6_mux -----

//----- Default net type -----
`default_nettype wire




