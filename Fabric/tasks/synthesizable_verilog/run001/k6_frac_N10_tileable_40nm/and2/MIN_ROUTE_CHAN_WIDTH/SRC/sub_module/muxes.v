//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Multiplexers
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Tue Nov 19 16:11:14 2024
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


wire [0:0] INVX1_0_Y;
wire [0:0] INVX1_1_Y;
wire [0:0] INVX1_2_Y;
wire [0:0] INVX1_3_Y;
wire [0:0] MX2X1_0_Y;
wire [0:0] MX2X1_1_Y;
wire [0:0] MX2X1_2_Y;
wire [0:0] MX2X1_3_Y;
wire [0:0] const1_0_const1;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	INVX1 INVX1_0_ (
		.A(in[0]),
		.Y(INVX1_0_Y));

	INVX1 INVX1_1_ (
		.A(in[1]),
		.Y(INVX1_1_Y));

	INVX1 INVX1_2_ (
		.A(in[2]),
		.Y(INVX1_2_Y));

	INVX1 INVX1_3_ (
		.A(in[3]),
		.Y(INVX1_3_Y));

	const1 const1_0_ (
		.const1(const1_0_const1));

	INVX4 INVX4_0_ (
		.A(MX2X1_3_Y),
		.Y(out));

	MX2X1 mux_l1_in_0_ (
		.B(INVX1_0_Y),
		.A(INVX1_1_Y),
		.S0(sram[0]),
		.Y(MX2X1_0_Y));

	MX2X1 mux_l2_in_0_ (
		.B(MX2X1_0_Y),
		.A(INVX1_2_Y),
		.S0(sram[1]),
		.Y(MX2X1_1_Y));

	MX2X1 mux_l2_in_1_ (
		.B(INVX1_3_Y),
		.A(const1_0_const1),
		.S0(sram[1]),
		.Y(MX2X1_2_Y));

	MX2X1 mux_l3_in_0_ (
		.B(MX2X1_1_Y),
		.A(MX2X1_2_Y),
		.S0(sram[2]),
		.Y(MX2X1_3_Y));

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


wire [0:0] INVX1_0_Y;
wire [0:0] INVX1_1_Y;
wire [0:0] MX2X1_0_Y;
wire [0:0] MX2X1_1_Y;
wire [0:0] const1_0_const1;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	INVX1 INVX1_0_ (
		.A(in[0]),
		.Y(INVX1_0_Y));

	INVX1 INVX1_1_ (
		.A(in[1]),
		.Y(INVX1_1_Y));

	const1 const1_0_ (
		.const1(const1_0_const1));

	INVX4 INVX4_0_ (
		.A(MX2X1_1_Y),
		.Y(out));

	MX2X1 mux_l1_in_0_ (
		.B(INVX1_0_Y),
		.A(INVX1_1_Y),
		.S0(sram[0]),
		.Y(MX2X1_0_Y));

	MX2X1 mux_l2_in_0_ (
		.B(MX2X1_0_Y),
		.A(const1_0_const1),
		.S0(sram[1]),
		.Y(MX2X1_1_Y));

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


wire [0:0] INVX1_0_Y;
wire [0:0] INVX1_1_Y;
wire [0:0] INVX1_2_Y;
wire [0:0] MX2X1_0_Y;
wire [0:0] MX2X1_1_Y;
wire [0:0] MX2X1_2_Y;
wire [0:0] const1_0_const1;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	INVX1 INVX1_0_ (
		.A(in[0]),
		.Y(INVX1_0_Y));

	INVX1 INVX1_1_ (
		.A(in[1]),
		.Y(INVX1_1_Y));

	INVX1 INVX1_2_ (
		.A(in[2]),
		.Y(INVX1_2_Y));

	const1 const1_0_ (
		.const1(const1_0_const1));

	INVX4 INVX4_0_ (
		.A(MX2X1_2_Y),
		.Y(out));

	MX2X1 mux_l1_in_0_ (
		.B(INVX1_0_Y),
		.A(INVX1_1_Y),
		.S0(sram[0]),
		.Y(MX2X1_0_Y));

	MX2X1 mux_l1_in_1_ (
		.B(INVX1_2_Y),
		.A(const1_0_const1),
		.S0(sram[0]),
		.Y(MX2X1_1_Y));

	MX2X1 mux_l2_in_0_ (
		.B(MX2X1_0_Y),
		.A(MX2X1_1_Y),
		.S0(sram[1]),
		.Y(MX2X1_2_Y));

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


wire [0:0] INVX1_0_Y;
wire [0:0] INVX1_10_Y;
wire [0:0] INVX1_11_Y;
wire [0:0] INVX1_12_Y;
wire [0:0] INVX1_13_Y;
wire [0:0] INVX1_14_Y;
wire [0:0] INVX1_15_Y;
wire [0:0] INVX1_16_Y;
wire [0:0] INVX1_17_Y;
wire [0:0] INVX1_18_Y;
wire [0:0] INVX1_19_Y;
wire [0:0] INVX1_1_Y;
wire [0:0] INVX1_20_Y;
wire [0:0] INVX1_21_Y;
wire [0:0] INVX1_22_Y;
wire [0:0] INVX1_23_Y;
wire [0:0] INVX1_24_Y;
wire [0:0] INVX1_25_Y;
wire [0:0] INVX1_26_Y;
wire [0:0] INVX1_27_Y;
wire [0:0] INVX1_28_Y;
wire [0:0] INVX1_29_Y;
wire [0:0] INVX1_2_Y;
wire [0:0] INVX1_30_Y;
wire [0:0] INVX1_31_Y;
wire [0:0] INVX1_32_Y;
wire [0:0] INVX1_33_Y;
wire [0:0] INVX1_34_Y;
wire [0:0] INVX1_35_Y;
wire [0:0] INVX1_36_Y;
wire [0:0] INVX1_37_Y;
wire [0:0] INVX1_38_Y;
wire [0:0] INVX1_39_Y;
wire [0:0] INVX1_3_Y;
wire [0:0] INVX1_40_Y;
wire [0:0] INVX1_41_Y;
wire [0:0] INVX1_42_Y;
wire [0:0] INVX1_43_Y;
wire [0:0] INVX1_44_Y;
wire [0:0] INVX1_45_Y;
wire [0:0] INVX1_46_Y;
wire [0:0] INVX1_47_Y;
wire [0:0] INVX1_48_Y;
wire [0:0] INVX1_49_Y;
wire [0:0] INVX1_4_Y;
wire [0:0] INVX1_50_Y;
wire [0:0] INVX1_51_Y;
wire [0:0] INVX1_52_Y;
wire [0:0] INVX1_53_Y;
wire [0:0] INVX1_54_Y;
wire [0:0] INVX1_55_Y;
wire [0:0] INVX1_56_Y;
wire [0:0] INVX1_57_Y;
wire [0:0] INVX1_58_Y;
wire [0:0] INVX1_59_Y;
wire [0:0] INVX1_5_Y;
wire [0:0] INVX1_6_Y;
wire [0:0] INVX1_7_Y;
wire [0:0] INVX1_8_Y;
wire [0:0] INVX1_9_Y;
wire [0:0] MX2X1_0_Y;
wire [0:0] MX2X1_10_Y;
wire [0:0] MX2X1_11_Y;
wire [0:0] MX2X1_12_Y;
wire [0:0] MX2X1_13_Y;
wire [0:0] MX2X1_14_Y;
wire [0:0] MX2X1_15_Y;
wire [0:0] MX2X1_16_Y;
wire [0:0] MX2X1_17_Y;
wire [0:0] MX2X1_18_Y;
wire [0:0] MX2X1_19_Y;
wire [0:0] MX2X1_1_Y;
wire [0:0] MX2X1_20_Y;
wire [0:0] MX2X1_21_Y;
wire [0:0] MX2X1_22_Y;
wire [0:0] MX2X1_23_Y;
wire [0:0] MX2X1_24_Y;
wire [0:0] MX2X1_25_Y;
wire [0:0] MX2X1_26_Y;
wire [0:0] MX2X1_27_Y;
wire [0:0] MX2X1_28_Y;
wire [0:0] MX2X1_29_Y;
wire [0:0] MX2X1_2_Y;
wire [0:0] MX2X1_30_Y;
wire [0:0] MX2X1_31_Y;
wire [0:0] MX2X1_32_Y;
wire [0:0] MX2X1_33_Y;
wire [0:0] MX2X1_34_Y;
wire [0:0] MX2X1_35_Y;
wire [0:0] MX2X1_36_Y;
wire [0:0] MX2X1_37_Y;
wire [0:0] MX2X1_38_Y;
wire [0:0] MX2X1_39_Y;
wire [0:0] MX2X1_3_Y;
wire [0:0] MX2X1_40_Y;
wire [0:0] MX2X1_41_Y;
wire [0:0] MX2X1_42_Y;
wire [0:0] MX2X1_43_Y;
wire [0:0] MX2X1_44_Y;
wire [0:0] MX2X1_45_Y;
wire [0:0] MX2X1_46_Y;
wire [0:0] MX2X1_47_Y;
wire [0:0] MX2X1_48_Y;
wire [0:0] MX2X1_49_Y;
wire [0:0] MX2X1_4_Y;
wire [0:0] MX2X1_50_Y;
wire [0:0] MX2X1_51_Y;
wire [0:0] MX2X1_52_Y;
wire [0:0] MX2X1_53_Y;
wire [0:0] MX2X1_54_Y;
wire [0:0] MX2X1_55_Y;
wire [0:0] MX2X1_56_Y;
wire [0:0] MX2X1_57_Y;
wire [0:0] MX2X1_58_Y;
wire [0:0] MX2X1_59_Y;
wire [0:0] MX2X1_5_Y;
wire [0:0] MX2X1_6_Y;
wire [0:0] MX2X1_7_Y;
wire [0:0] MX2X1_8_Y;
wire [0:0] MX2X1_9_Y;
wire [0:0] const1_0_const1;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	INVX1 INVX1_0_ (
		.A(in[0]),
		.Y(INVX1_0_Y));

	INVX1 INVX1_1_ (
		.A(in[1]),
		.Y(INVX1_1_Y));

	INVX1 INVX1_2_ (
		.A(in[2]),
		.Y(INVX1_2_Y));

	INVX1 INVX1_3_ (
		.A(in[3]),
		.Y(INVX1_3_Y));

	INVX1 INVX1_4_ (
		.A(in[4]),
		.Y(INVX1_4_Y));

	INVX1 INVX1_5_ (
		.A(in[5]),
		.Y(INVX1_5_Y));

	INVX1 INVX1_6_ (
		.A(in[6]),
		.Y(INVX1_6_Y));

	INVX1 INVX1_7_ (
		.A(in[7]),
		.Y(INVX1_7_Y));

	INVX1 INVX1_8_ (
		.A(in[8]),
		.Y(INVX1_8_Y));

	INVX1 INVX1_9_ (
		.A(in[9]),
		.Y(INVX1_9_Y));

	INVX1 INVX1_10_ (
		.A(in[10]),
		.Y(INVX1_10_Y));

	INVX1 INVX1_11_ (
		.A(in[11]),
		.Y(INVX1_11_Y));

	INVX1 INVX1_12_ (
		.A(in[12]),
		.Y(INVX1_12_Y));

	INVX1 INVX1_13_ (
		.A(in[13]),
		.Y(INVX1_13_Y));

	INVX1 INVX1_14_ (
		.A(in[14]),
		.Y(INVX1_14_Y));

	INVX1 INVX1_15_ (
		.A(in[15]),
		.Y(INVX1_15_Y));

	INVX1 INVX1_16_ (
		.A(in[16]),
		.Y(INVX1_16_Y));

	INVX1 INVX1_17_ (
		.A(in[17]),
		.Y(INVX1_17_Y));

	INVX1 INVX1_18_ (
		.A(in[18]),
		.Y(INVX1_18_Y));

	INVX1 INVX1_19_ (
		.A(in[19]),
		.Y(INVX1_19_Y));

	INVX1 INVX1_20_ (
		.A(in[20]),
		.Y(INVX1_20_Y));

	INVX1 INVX1_21_ (
		.A(in[21]),
		.Y(INVX1_21_Y));

	INVX1 INVX1_22_ (
		.A(in[22]),
		.Y(INVX1_22_Y));

	INVX1 INVX1_23_ (
		.A(in[23]),
		.Y(INVX1_23_Y));

	INVX1 INVX1_24_ (
		.A(in[24]),
		.Y(INVX1_24_Y));

	INVX1 INVX1_25_ (
		.A(in[25]),
		.Y(INVX1_25_Y));

	INVX1 INVX1_26_ (
		.A(in[26]),
		.Y(INVX1_26_Y));

	INVX1 INVX1_27_ (
		.A(in[27]),
		.Y(INVX1_27_Y));

	INVX1 INVX1_28_ (
		.A(in[28]),
		.Y(INVX1_28_Y));

	INVX1 INVX1_29_ (
		.A(in[29]),
		.Y(INVX1_29_Y));

	INVX1 INVX1_30_ (
		.A(in[30]),
		.Y(INVX1_30_Y));

	INVX1 INVX1_31_ (
		.A(in[31]),
		.Y(INVX1_31_Y));

	INVX1 INVX1_32_ (
		.A(in[32]),
		.Y(INVX1_32_Y));

	INVX1 INVX1_33_ (
		.A(in[33]),
		.Y(INVX1_33_Y));

	INVX1 INVX1_34_ (
		.A(in[34]),
		.Y(INVX1_34_Y));

	INVX1 INVX1_35_ (
		.A(in[35]),
		.Y(INVX1_35_Y));

	INVX1 INVX1_36_ (
		.A(in[36]),
		.Y(INVX1_36_Y));

	INVX1 INVX1_37_ (
		.A(in[37]),
		.Y(INVX1_37_Y));

	INVX1 INVX1_38_ (
		.A(in[38]),
		.Y(INVX1_38_Y));

	INVX1 INVX1_39_ (
		.A(in[39]),
		.Y(INVX1_39_Y));

	INVX1 INVX1_40_ (
		.A(in[40]),
		.Y(INVX1_40_Y));

	INVX1 INVX1_41_ (
		.A(in[41]),
		.Y(INVX1_41_Y));

	INVX1 INVX1_42_ (
		.A(in[42]),
		.Y(INVX1_42_Y));

	INVX1 INVX1_43_ (
		.A(in[43]),
		.Y(INVX1_43_Y));

	INVX1 INVX1_44_ (
		.A(in[44]),
		.Y(INVX1_44_Y));

	INVX1 INVX1_45_ (
		.A(in[45]),
		.Y(INVX1_45_Y));

	INVX1 INVX1_46_ (
		.A(in[46]),
		.Y(INVX1_46_Y));

	INVX1 INVX1_47_ (
		.A(in[47]),
		.Y(INVX1_47_Y));

	INVX1 INVX1_48_ (
		.A(in[48]),
		.Y(INVX1_48_Y));

	INVX1 INVX1_49_ (
		.A(in[49]),
		.Y(INVX1_49_Y));

	INVX1 INVX1_50_ (
		.A(in[50]),
		.Y(INVX1_50_Y));

	INVX1 INVX1_51_ (
		.A(in[51]),
		.Y(INVX1_51_Y));

	INVX1 INVX1_52_ (
		.A(in[52]),
		.Y(INVX1_52_Y));

	INVX1 INVX1_53_ (
		.A(in[53]),
		.Y(INVX1_53_Y));

	INVX1 INVX1_54_ (
		.A(in[54]),
		.Y(INVX1_54_Y));

	INVX1 INVX1_55_ (
		.A(in[55]),
		.Y(INVX1_55_Y));

	INVX1 INVX1_56_ (
		.A(in[56]),
		.Y(INVX1_56_Y));

	INVX1 INVX1_57_ (
		.A(in[57]),
		.Y(INVX1_57_Y));

	INVX1 INVX1_58_ (
		.A(in[58]),
		.Y(INVX1_58_Y));

	INVX1 INVX1_59_ (
		.A(in[59]),
		.Y(INVX1_59_Y));

	INVX1 INVX1_60_ (
		.A(MX2X1_59_Y),
		.Y(out));

	const1 const1_0_ (
		.const1(const1_0_const1));

	MX2X1 mux_l1_in_0_ (
		.B(INVX1_0_Y),
		.A(INVX1_1_Y),
		.S0(sram[0]),
		.Y(MX2X1_0_Y));

	MX2X1 mux_l1_in_1_ (
		.B(INVX1_2_Y),
		.A(INVX1_3_Y),
		.S0(sram[0]),
		.Y(MX2X1_1_Y));

	MX2X1 mux_l1_in_2_ (
		.B(INVX1_4_Y),
		.A(INVX1_5_Y),
		.S0(sram[0]),
		.Y(MX2X1_2_Y));

	MX2X1 mux_l1_in_3_ (
		.B(INVX1_6_Y),
		.A(INVX1_7_Y),
		.S0(sram[0]),
		.Y(MX2X1_3_Y));

	MX2X1 mux_l1_in_4_ (
		.B(INVX1_8_Y),
		.A(INVX1_9_Y),
		.S0(sram[0]),
		.Y(MX2X1_4_Y));

	MX2X1 mux_l1_in_5_ (
		.B(INVX1_10_Y),
		.A(INVX1_11_Y),
		.S0(sram[0]),
		.Y(MX2X1_5_Y));

	MX2X1 mux_l1_in_6_ (
		.B(INVX1_12_Y),
		.A(INVX1_13_Y),
		.S0(sram[0]),
		.Y(MX2X1_6_Y));

	MX2X1 mux_l1_in_7_ (
		.B(INVX1_14_Y),
		.A(INVX1_15_Y),
		.S0(sram[0]),
		.Y(MX2X1_7_Y));

	MX2X1 mux_l1_in_8_ (
		.B(INVX1_16_Y),
		.A(INVX1_17_Y),
		.S0(sram[0]),
		.Y(MX2X1_8_Y));

	MX2X1 mux_l1_in_9_ (
		.B(INVX1_18_Y),
		.A(INVX1_19_Y),
		.S0(sram[0]),
		.Y(MX2X1_9_Y));

	MX2X1 mux_l1_in_10_ (
		.B(INVX1_20_Y),
		.A(INVX1_21_Y),
		.S0(sram[0]),
		.Y(MX2X1_10_Y));

	MX2X1 mux_l1_in_11_ (
		.B(INVX1_22_Y),
		.A(INVX1_23_Y),
		.S0(sram[0]),
		.Y(MX2X1_11_Y));

	MX2X1 mux_l1_in_12_ (
		.B(INVX1_24_Y),
		.A(INVX1_25_Y),
		.S0(sram[0]),
		.Y(MX2X1_12_Y));

	MX2X1 mux_l1_in_13_ (
		.B(INVX1_26_Y),
		.A(INVX1_27_Y),
		.S0(sram[0]),
		.Y(MX2X1_13_Y));

	MX2X1 mux_l1_in_14_ (
		.B(INVX1_28_Y),
		.A(INVX1_29_Y),
		.S0(sram[0]),
		.Y(MX2X1_14_Y));

	MX2X1 mux_l1_in_15_ (
		.B(INVX1_30_Y),
		.A(INVX1_31_Y),
		.S0(sram[0]),
		.Y(MX2X1_15_Y));

	MX2X1 mux_l1_in_16_ (
		.B(INVX1_32_Y),
		.A(INVX1_33_Y),
		.S0(sram[0]),
		.Y(MX2X1_16_Y));

	MX2X1 mux_l1_in_17_ (
		.B(INVX1_34_Y),
		.A(INVX1_35_Y),
		.S0(sram[0]),
		.Y(MX2X1_17_Y));

	MX2X1 mux_l1_in_18_ (
		.B(INVX1_36_Y),
		.A(INVX1_37_Y),
		.S0(sram[0]),
		.Y(MX2X1_18_Y));

	MX2X1 mux_l1_in_19_ (
		.B(INVX1_38_Y),
		.A(INVX1_39_Y),
		.S0(sram[0]),
		.Y(MX2X1_19_Y));

	MX2X1 mux_l1_in_20_ (
		.B(INVX1_40_Y),
		.A(INVX1_41_Y),
		.S0(sram[0]),
		.Y(MX2X1_20_Y));

	MX2X1 mux_l1_in_21_ (
		.B(INVX1_42_Y),
		.A(INVX1_43_Y),
		.S0(sram[0]),
		.Y(MX2X1_21_Y));

	MX2X1 mux_l1_in_22_ (
		.B(INVX1_44_Y),
		.A(INVX1_45_Y),
		.S0(sram[0]),
		.Y(MX2X1_22_Y));

	MX2X1 mux_l1_in_23_ (
		.B(INVX1_46_Y),
		.A(INVX1_47_Y),
		.S0(sram[0]),
		.Y(MX2X1_23_Y));

	MX2X1 mux_l1_in_24_ (
		.B(INVX1_48_Y),
		.A(INVX1_49_Y),
		.S0(sram[0]),
		.Y(MX2X1_24_Y));

	MX2X1 mux_l1_in_25_ (
		.B(INVX1_50_Y),
		.A(INVX1_51_Y),
		.S0(sram[0]),
		.Y(MX2X1_25_Y));

	MX2X1 mux_l1_in_26_ (
		.B(INVX1_52_Y),
		.A(INVX1_53_Y),
		.S0(sram[0]),
		.Y(MX2X1_26_Y));

	MX2X1 mux_l1_in_27_ (
		.B(INVX1_54_Y),
		.A(INVX1_55_Y),
		.S0(sram[0]),
		.Y(MX2X1_27_Y));

	MX2X1 mux_l1_in_28_ (
		.B(INVX1_56_Y),
		.A(INVX1_57_Y),
		.S0(sram[0]),
		.Y(MX2X1_28_Y));

	MX2X1 mux_l2_in_0_ (
		.B(MX2X1_0_Y),
		.A(MX2X1_1_Y),
		.S0(sram[1]),
		.Y(MX2X1_29_Y));

	MX2X1 mux_l2_in_1_ (
		.B(MX2X1_2_Y),
		.A(MX2X1_3_Y),
		.S0(sram[1]),
		.Y(MX2X1_30_Y));

	MX2X1 mux_l2_in_2_ (
		.B(MX2X1_4_Y),
		.A(MX2X1_5_Y),
		.S0(sram[1]),
		.Y(MX2X1_31_Y));

	MX2X1 mux_l2_in_3_ (
		.B(MX2X1_6_Y),
		.A(MX2X1_7_Y),
		.S0(sram[1]),
		.Y(MX2X1_32_Y));

	MX2X1 mux_l2_in_4_ (
		.B(MX2X1_8_Y),
		.A(MX2X1_9_Y),
		.S0(sram[1]),
		.Y(MX2X1_33_Y));

	MX2X1 mux_l2_in_5_ (
		.B(MX2X1_10_Y),
		.A(MX2X1_11_Y),
		.S0(sram[1]),
		.Y(MX2X1_34_Y));

	MX2X1 mux_l2_in_6_ (
		.B(MX2X1_12_Y),
		.A(MX2X1_13_Y),
		.S0(sram[1]),
		.Y(MX2X1_35_Y));

	MX2X1 mux_l2_in_7_ (
		.B(MX2X1_14_Y),
		.A(MX2X1_15_Y),
		.S0(sram[1]),
		.Y(MX2X1_36_Y));

	MX2X1 mux_l2_in_8_ (
		.B(MX2X1_16_Y),
		.A(MX2X1_17_Y),
		.S0(sram[1]),
		.Y(MX2X1_37_Y));

	MX2X1 mux_l2_in_9_ (
		.B(MX2X1_18_Y),
		.A(MX2X1_19_Y),
		.S0(sram[1]),
		.Y(MX2X1_38_Y));

	MX2X1 mux_l2_in_10_ (
		.B(MX2X1_20_Y),
		.A(MX2X1_21_Y),
		.S0(sram[1]),
		.Y(MX2X1_39_Y));

	MX2X1 mux_l2_in_11_ (
		.B(MX2X1_22_Y),
		.A(MX2X1_23_Y),
		.S0(sram[1]),
		.Y(MX2X1_40_Y));

	MX2X1 mux_l2_in_12_ (
		.B(MX2X1_24_Y),
		.A(MX2X1_25_Y),
		.S0(sram[1]),
		.Y(MX2X1_41_Y));

	MX2X1 mux_l2_in_13_ (
		.B(MX2X1_26_Y),
		.A(MX2X1_27_Y),
		.S0(sram[1]),
		.Y(MX2X1_42_Y));

	MX2X1 mux_l2_in_14_ (
		.B(MX2X1_28_Y),
		.A(INVX1_58_Y),
		.S0(sram[1]),
		.Y(MX2X1_43_Y));

	MX2X1 mux_l2_in_15_ (
		.B(INVX1_59_Y),
		.A(const1_0_const1),
		.S0(sram[1]),
		.Y(MX2X1_44_Y));

	MX2X1 mux_l3_in_0_ (
		.B(MX2X1_29_Y),
		.A(MX2X1_30_Y),
		.S0(sram[2]),
		.Y(MX2X1_45_Y));

	MX2X1 mux_l3_in_1_ (
		.B(MX2X1_31_Y),
		.A(MX2X1_32_Y),
		.S0(sram[2]),
		.Y(MX2X1_46_Y));

	MX2X1 mux_l3_in_2_ (
		.B(MX2X1_33_Y),
		.A(MX2X1_34_Y),
		.S0(sram[2]),
		.Y(MX2X1_47_Y));

	MX2X1 mux_l3_in_3_ (
		.B(MX2X1_35_Y),
		.A(MX2X1_36_Y),
		.S0(sram[2]),
		.Y(MX2X1_48_Y));

	MX2X1 mux_l3_in_4_ (
		.B(MX2X1_37_Y),
		.A(MX2X1_38_Y),
		.S0(sram[2]),
		.Y(MX2X1_49_Y));

	MX2X1 mux_l3_in_5_ (
		.B(MX2X1_39_Y),
		.A(MX2X1_40_Y),
		.S0(sram[2]),
		.Y(MX2X1_50_Y));

	MX2X1 mux_l3_in_6_ (
		.B(MX2X1_41_Y),
		.A(MX2X1_42_Y),
		.S0(sram[2]),
		.Y(MX2X1_51_Y));

	MX2X1 mux_l3_in_7_ (
		.B(MX2X1_43_Y),
		.A(MX2X1_44_Y),
		.S0(sram[2]),
		.Y(MX2X1_52_Y));

	MX2X1 mux_l4_in_0_ (
		.B(MX2X1_45_Y),
		.A(MX2X1_46_Y),
		.S0(sram[3]),
		.Y(MX2X1_53_Y));

	MX2X1 mux_l4_in_1_ (
		.B(MX2X1_47_Y),
		.A(MX2X1_48_Y),
		.S0(sram[3]),
		.Y(MX2X1_54_Y));

	MX2X1 mux_l4_in_2_ (
		.B(MX2X1_49_Y),
		.A(MX2X1_50_Y),
		.S0(sram[3]),
		.Y(MX2X1_55_Y));

	MX2X1 mux_l4_in_3_ (
		.B(MX2X1_51_Y),
		.A(MX2X1_52_Y),
		.S0(sram[3]),
		.Y(MX2X1_56_Y));

	MX2X1 mux_l5_in_0_ (
		.B(MX2X1_53_Y),
		.A(MX2X1_54_Y),
		.S0(sram[4]),
		.Y(MX2X1_57_Y));

	MX2X1 mux_l5_in_1_ (
		.B(MX2X1_55_Y),
		.A(MX2X1_56_Y),
		.S0(sram[4]),
		.Y(MX2X1_58_Y));

	MX2X1 mux_l6_in_0_ (
		.B(MX2X1_57_Y),
		.A(MX2X1_58_Y),
		.S0(sram[5]),
		.Y(MX2X1_59_Y));

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


wire [0:0] INVX1_0_Y;
wire [0:0] INVX1_1_Y;
wire [0:0] MX2X1_0_Y;
wire [0:0] MX2X1_1_Y;
wire [0:0] const1_0_const1;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	INVX1 INVX1_0_ (
		.A(in[0]),
		.Y(INVX1_0_Y));

	INVX1 INVX1_1_ (
		.A(in[1]),
		.Y(INVX1_1_Y));

	INVX1 INVX1_2_ (
		.A(MX2X1_1_Y),
		.Y(out));

	const1 const1_0_ (
		.const1(const1_0_const1));

	MX2X1 mux_l1_in_0_ (
		.B(INVX1_0_Y),
		.A(INVX1_1_Y),
		.S0(sram[0]),
		.Y(MX2X1_0_Y));

	MX2X1 mux_l2_in_0_ (
		.B(MX2X1_0_Y),
		.A(const1_0_const1),
		.S0(sram[1]),
		.Y(MX2X1_1_Y));

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


wire [0:0] BUFX4_0_Y;
wire [0:0] BUFX4_10_Y;
wire [0:0] BUFX4_11_Y;
wire [0:0] BUFX4_12_Y;
wire [0:0] BUFX4_13_Y;
wire [0:0] BUFX4_14_Y;
wire [0:0] BUFX4_15_Y;
wire [0:0] BUFX4_16_Y;
wire [0:0] BUFX4_17_Y;
wire [0:0] BUFX4_18_Y;
wire [0:0] BUFX4_19_Y;
wire [0:0] BUFX4_1_Y;
wire [0:0] BUFX4_2_Y;
wire [0:0] BUFX4_3_Y;
wire [0:0] BUFX4_4_Y;
wire [0:0] BUFX4_5_Y;
wire [0:0] BUFX4_6_Y;
wire [0:0] BUFX4_7_Y;
wire [0:0] BUFX4_8_Y;
wire [0:0] BUFX4_9_Y;
wire [0:0] INVX1_0_Y;
wire [0:0] INVX1_10_Y;
wire [0:0] INVX1_11_Y;
wire [0:0] INVX1_12_Y;
wire [0:0] INVX1_13_Y;
wire [0:0] INVX1_14_Y;
wire [0:0] INVX1_15_Y;
wire [0:0] INVX1_16_Y;
wire [0:0] INVX1_17_Y;
wire [0:0] INVX1_18_Y;
wire [0:0] INVX1_19_Y;
wire [0:0] INVX1_1_Y;
wire [0:0] INVX1_20_Y;
wire [0:0] INVX1_21_Y;
wire [0:0] INVX1_22_Y;
wire [0:0] INVX1_23_Y;
wire [0:0] INVX1_24_Y;
wire [0:0] INVX1_25_Y;
wire [0:0] INVX1_26_Y;
wire [0:0] INVX1_27_Y;
wire [0:0] INVX1_28_Y;
wire [0:0] INVX1_29_Y;
wire [0:0] INVX1_2_Y;
wire [0:0] INVX1_30_Y;
wire [0:0] INVX1_31_Y;
wire [0:0] INVX1_32_Y;
wire [0:0] INVX1_33_Y;
wire [0:0] INVX1_34_Y;
wire [0:0] INVX1_35_Y;
wire [0:0] INVX1_36_Y;
wire [0:0] INVX1_37_Y;
wire [0:0] INVX1_38_Y;
wire [0:0] INVX1_39_Y;
wire [0:0] INVX1_3_Y;
wire [0:0] INVX1_40_Y;
wire [0:0] INVX1_41_Y;
wire [0:0] INVX1_42_Y;
wire [0:0] INVX1_43_Y;
wire [0:0] INVX1_44_Y;
wire [0:0] INVX1_45_Y;
wire [0:0] INVX1_46_Y;
wire [0:0] INVX1_47_Y;
wire [0:0] INVX1_48_Y;
wire [0:0] INVX1_49_Y;
wire [0:0] INVX1_4_Y;
wire [0:0] INVX1_50_Y;
wire [0:0] INVX1_51_Y;
wire [0:0] INVX1_52_Y;
wire [0:0] INVX1_53_Y;
wire [0:0] INVX1_54_Y;
wire [0:0] INVX1_55_Y;
wire [0:0] INVX1_56_Y;
wire [0:0] INVX1_57_Y;
wire [0:0] INVX1_58_Y;
wire [0:0] INVX1_59_Y;
wire [0:0] INVX1_5_Y;
wire [0:0] INVX1_60_Y;
wire [0:0] INVX1_61_Y;
wire [0:0] INVX1_62_Y;
wire [0:0] INVX1_63_Y;
wire [0:0] INVX1_6_Y;
wire [0:0] INVX1_7_Y;
wire [0:0] INVX1_8_Y;
wire [0:0] INVX1_9_Y;
wire [0:0] MX2X1_0_Y;
wire [0:0] MX2X1_10_Y;
wire [0:0] MX2X1_11_Y;
wire [0:0] MX2X1_12_Y;
wire [0:0] MX2X1_13_Y;
wire [0:0] MX2X1_14_Y;
wire [0:0] MX2X1_15_Y;
wire [0:0] MX2X1_16_Y;
wire [0:0] MX2X1_17_Y;
wire [0:0] MX2X1_18_Y;
wire [0:0] MX2X1_19_Y;
wire [0:0] MX2X1_1_Y;
wire [0:0] MX2X1_20_Y;
wire [0:0] MX2X1_21_Y;
wire [0:0] MX2X1_22_Y;
wire [0:0] MX2X1_23_Y;
wire [0:0] MX2X1_24_Y;
wire [0:0] MX2X1_25_Y;
wire [0:0] MX2X1_26_Y;
wire [0:0] MX2X1_27_Y;
wire [0:0] MX2X1_28_Y;
wire [0:0] MX2X1_29_Y;
wire [0:0] MX2X1_2_Y;
wire [0:0] MX2X1_30_Y;
wire [0:0] MX2X1_31_Y;
wire [0:0] MX2X1_32_Y;
wire [0:0] MX2X1_33_Y;
wire [0:0] MX2X1_34_Y;
wire [0:0] MX2X1_35_Y;
wire [0:0] MX2X1_36_Y;
wire [0:0] MX2X1_37_Y;
wire [0:0] MX2X1_38_Y;
wire [0:0] MX2X1_39_Y;
wire [0:0] MX2X1_3_Y;
wire [0:0] MX2X1_40_Y;
wire [0:0] MX2X1_41_Y;
wire [0:0] MX2X1_42_Y;
wire [0:0] MX2X1_43_Y;
wire [0:0] MX2X1_44_Y;
wire [0:0] MX2X1_45_Y;
wire [0:0] MX2X1_46_Y;
wire [0:0] MX2X1_47_Y;
wire [0:0] MX2X1_48_Y;
wire [0:0] MX2X1_49_Y;
wire [0:0] MX2X1_4_Y;
wire [0:0] MX2X1_50_Y;
wire [0:0] MX2X1_51_Y;
wire [0:0] MX2X1_52_Y;
wire [0:0] MX2X1_53_Y;
wire [0:0] MX2X1_54_Y;
wire [0:0] MX2X1_55_Y;
wire [0:0] MX2X1_56_Y;
wire [0:0] MX2X1_57_Y;
wire [0:0] MX2X1_58_Y;
wire [0:0] MX2X1_59_Y;
wire [0:0] MX2X1_5_Y;
wire [0:0] MX2X1_60_Y;
wire [0:0] MX2X1_61_Y;
wire [0:0] MX2X1_62_Y;
wire [0:0] MX2X1_6_Y;
wire [0:0] MX2X1_7_Y;
wire [0:0] MX2X1_8_Y;
wire [0:0] MX2X1_9_Y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	INVX1 INVX1_0_ (
		.A(in[0]),
		.Y(INVX1_0_Y));

	INVX1 INVX1_1_ (
		.A(in[1]),
		.Y(INVX1_1_Y));

	INVX1 INVX1_2_ (
		.A(in[2]),
		.Y(INVX1_2_Y));

	INVX1 INVX1_3_ (
		.A(in[3]),
		.Y(INVX1_3_Y));

	INVX1 INVX1_4_ (
		.A(in[4]),
		.Y(INVX1_4_Y));

	INVX1 INVX1_5_ (
		.A(in[5]),
		.Y(INVX1_5_Y));

	INVX1 INVX1_6_ (
		.A(in[6]),
		.Y(INVX1_6_Y));

	INVX1 INVX1_7_ (
		.A(in[7]),
		.Y(INVX1_7_Y));

	INVX1 INVX1_8_ (
		.A(in[8]),
		.Y(INVX1_8_Y));

	INVX1 INVX1_9_ (
		.A(in[9]),
		.Y(INVX1_9_Y));

	INVX1 INVX1_10_ (
		.A(in[10]),
		.Y(INVX1_10_Y));

	INVX1 INVX1_11_ (
		.A(in[11]),
		.Y(INVX1_11_Y));

	INVX1 INVX1_12_ (
		.A(in[12]),
		.Y(INVX1_12_Y));

	INVX1 INVX1_13_ (
		.A(in[13]),
		.Y(INVX1_13_Y));

	INVX1 INVX1_14_ (
		.A(in[14]),
		.Y(INVX1_14_Y));

	INVX1 INVX1_15_ (
		.A(in[15]),
		.Y(INVX1_15_Y));

	INVX1 INVX1_16_ (
		.A(in[16]),
		.Y(INVX1_16_Y));

	INVX1 INVX1_17_ (
		.A(in[17]),
		.Y(INVX1_17_Y));

	INVX1 INVX1_18_ (
		.A(in[18]),
		.Y(INVX1_18_Y));

	INVX1 INVX1_19_ (
		.A(in[19]),
		.Y(INVX1_19_Y));

	INVX1 INVX1_20_ (
		.A(in[20]),
		.Y(INVX1_20_Y));

	INVX1 INVX1_21_ (
		.A(in[21]),
		.Y(INVX1_21_Y));

	INVX1 INVX1_22_ (
		.A(in[22]),
		.Y(INVX1_22_Y));

	INVX1 INVX1_23_ (
		.A(in[23]),
		.Y(INVX1_23_Y));

	INVX1 INVX1_24_ (
		.A(in[24]),
		.Y(INVX1_24_Y));

	INVX1 INVX1_25_ (
		.A(in[25]),
		.Y(INVX1_25_Y));

	INVX1 INVX1_26_ (
		.A(in[26]),
		.Y(INVX1_26_Y));

	INVX1 INVX1_27_ (
		.A(in[27]),
		.Y(INVX1_27_Y));

	INVX1 INVX1_28_ (
		.A(in[28]),
		.Y(INVX1_28_Y));

	INVX1 INVX1_29_ (
		.A(in[29]),
		.Y(INVX1_29_Y));

	INVX1 INVX1_30_ (
		.A(in[30]),
		.Y(INVX1_30_Y));

	INVX1 INVX1_31_ (
		.A(in[31]),
		.Y(INVX1_31_Y));

	INVX1 INVX1_32_ (
		.A(in[32]),
		.Y(INVX1_32_Y));

	INVX1 INVX1_33_ (
		.A(in[33]),
		.Y(INVX1_33_Y));

	INVX1 INVX1_34_ (
		.A(in[34]),
		.Y(INVX1_34_Y));

	INVX1 INVX1_35_ (
		.A(in[35]),
		.Y(INVX1_35_Y));

	INVX1 INVX1_36_ (
		.A(in[36]),
		.Y(INVX1_36_Y));

	INVX1 INVX1_37_ (
		.A(in[37]),
		.Y(INVX1_37_Y));

	INVX1 INVX1_38_ (
		.A(in[38]),
		.Y(INVX1_38_Y));

	INVX1 INVX1_39_ (
		.A(in[39]),
		.Y(INVX1_39_Y));

	INVX1 INVX1_40_ (
		.A(in[40]),
		.Y(INVX1_40_Y));

	INVX1 INVX1_41_ (
		.A(in[41]),
		.Y(INVX1_41_Y));

	INVX1 INVX1_42_ (
		.A(in[42]),
		.Y(INVX1_42_Y));

	INVX1 INVX1_43_ (
		.A(in[43]),
		.Y(INVX1_43_Y));

	INVX1 INVX1_44_ (
		.A(in[44]),
		.Y(INVX1_44_Y));

	INVX1 INVX1_45_ (
		.A(in[45]),
		.Y(INVX1_45_Y));

	INVX1 INVX1_46_ (
		.A(in[46]),
		.Y(INVX1_46_Y));

	INVX1 INVX1_47_ (
		.A(in[47]),
		.Y(INVX1_47_Y));

	INVX1 INVX1_48_ (
		.A(in[48]),
		.Y(INVX1_48_Y));

	INVX1 INVX1_49_ (
		.A(in[49]),
		.Y(INVX1_49_Y));

	INVX1 INVX1_50_ (
		.A(in[50]),
		.Y(INVX1_50_Y));

	INVX1 INVX1_51_ (
		.A(in[51]),
		.Y(INVX1_51_Y));

	INVX1 INVX1_52_ (
		.A(in[52]),
		.Y(INVX1_52_Y));

	INVX1 INVX1_53_ (
		.A(in[53]),
		.Y(INVX1_53_Y));

	INVX1 INVX1_54_ (
		.A(in[54]),
		.Y(INVX1_54_Y));

	INVX1 INVX1_55_ (
		.A(in[55]),
		.Y(INVX1_55_Y));

	INVX1 INVX1_56_ (
		.A(in[56]),
		.Y(INVX1_56_Y));

	INVX1 INVX1_57_ (
		.A(in[57]),
		.Y(INVX1_57_Y));

	INVX1 INVX1_58_ (
		.A(in[58]),
		.Y(INVX1_58_Y));

	INVX1 INVX1_59_ (
		.A(in[59]),
		.Y(INVX1_59_Y));

	INVX1 INVX1_60_ (
		.A(in[60]),
		.Y(INVX1_60_Y));

	INVX1 INVX1_61_ (
		.A(in[61]),
		.Y(INVX1_61_Y));

	INVX1 INVX1_62_ (
		.A(in[62]),
		.Y(INVX1_62_Y));

	INVX1 INVX1_63_ (
		.A(in[63]),
		.Y(INVX1_63_Y));

	INVX1 INVX1_64_ (
		.A(MX2X1_60_Y),
		.Y(lut5_out[0]));

	INVX1 INVX1_65_ (
		.A(MX2X1_61_Y),
		.Y(lut5_out[1]));

	INVX1 INVX1_66_ (
		.A(MX2X1_62_Y),
		.Y(lut6_out));

	MX2X1 mux_l1_in_0_ (
		.B(INVX1_0_Y),
		.A(INVX1_1_Y),
		.S0(sram[0]),
		.Y(MX2X1_0_Y));

	MX2X1 mux_l1_in_1_ (
		.B(INVX1_2_Y),
		.A(INVX1_3_Y),
		.S0(sram[0]),
		.Y(MX2X1_1_Y));

	MX2X1 mux_l1_in_2_ (
		.B(INVX1_4_Y),
		.A(INVX1_5_Y),
		.S0(sram[0]),
		.Y(MX2X1_2_Y));

	MX2X1 mux_l1_in_3_ (
		.B(INVX1_6_Y),
		.A(INVX1_7_Y),
		.S0(sram[0]),
		.Y(MX2X1_3_Y));

	MX2X1 mux_l1_in_4_ (
		.B(INVX1_8_Y),
		.A(INVX1_9_Y),
		.S0(sram[0]),
		.Y(MX2X1_4_Y));

	MX2X1 mux_l1_in_5_ (
		.B(INVX1_10_Y),
		.A(INVX1_11_Y),
		.S0(sram[0]),
		.Y(MX2X1_5_Y));

	MX2X1 mux_l1_in_6_ (
		.B(INVX1_12_Y),
		.A(INVX1_13_Y),
		.S0(sram[0]),
		.Y(MX2X1_6_Y));

	MX2X1 mux_l1_in_7_ (
		.B(INVX1_14_Y),
		.A(INVX1_15_Y),
		.S0(sram[0]),
		.Y(MX2X1_7_Y));

	MX2X1 mux_l1_in_8_ (
		.B(INVX1_16_Y),
		.A(INVX1_17_Y),
		.S0(sram[0]),
		.Y(MX2X1_8_Y));

	MX2X1 mux_l1_in_9_ (
		.B(INVX1_18_Y),
		.A(INVX1_19_Y),
		.S0(sram[0]),
		.Y(MX2X1_9_Y));

	MX2X1 mux_l1_in_10_ (
		.B(INVX1_20_Y),
		.A(INVX1_21_Y),
		.S0(sram[0]),
		.Y(MX2X1_10_Y));

	MX2X1 mux_l1_in_11_ (
		.B(INVX1_22_Y),
		.A(INVX1_23_Y),
		.S0(sram[0]),
		.Y(MX2X1_11_Y));

	MX2X1 mux_l1_in_12_ (
		.B(INVX1_24_Y),
		.A(INVX1_25_Y),
		.S0(sram[0]),
		.Y(MX2X1_12_Y));

	MX2X1 mux_l1_in_13_ (
		.B(INVX1_26_Y),
		.A(INVX1_27_Y),
		.S0(sram[0]),
		.Y(MX2X1_13_Y));

	MX2X1 mux_l1_in_14_ (
		.B(INVX1_28_Y),
		.A(INVX1_29_Y),
		.S0(sram[0]),
		.Y(MX2X1_14_Y));

	MX2X1 mux_l1_in_15_ (
		.B(INVX1_30_Y),
		.A(INVX1_31_Y),
		.S0(sram[0]),
		.Y(MX2X1_15_Y));

	MX2X1 mux_l1_in_16_ (
		.B(INVX1_32_Y),
		.A(INVX1_33_Y),
		.S0(sram[0]),
		.Y(MX2X1_16_Y));

	MX2X1 mux_l1_in_17_ (
		.B(INVX1_34_Y),
		.A(INVX1_35_Y),
		.S0(sram[0]),
		.Y(MX2X1_17_Y));

	MX2X1 mux_l1_in_18_ (
		.B(INVX1_36_Y),
		.A(INVX1_37_Y),
		.S0(sram[0]),
		.Y(MX2X1_18_Y));

	MX2X1 mux_l1_in_19_ (
		.B(INVX1_38_Y),
		.A(INVX1_39_Y),
		.S0(sram[0]),
		.Y(MX2X1_19_Y));

	MX2X1 mux_l1_in_20_ (
		.B(INVX1_40_Y),
		.A(INVX1_41_Y),
		.S0(sram[0]),
		.Y(MX2X1_20_Y));

	MX2X1 mux_l1_in_21_ (
		.B(INVX1_42_Y),
		.A(INVX1_43_Y),
		.S0(sram[0]),
		.Y(MX2X1_21_Y));

	MX2X1 mux_l1_in_22_ (
		.B(INVX1_44_Y),
		.A(INVX1_45_Y),
		.S0(sram[0]),
		.Y(MX2X1_22_Y));

	MX2X1 mux_l1_in_23_ (
		.B(INVX1_46_Y),
		.A(INVX1_47_Y),
		.S0(sram[0]),
		.Y(MX2X1_23_Y));

	MX2X1 mux_l1_in_24_ (
		.B(INVX1_48_Y),
		.A(INVX1_49_Y),
		.S0(sram[0]),
		.Y(MX2X1_24_Y));

	MX2X1 mux_l1_in_25_ (
		.B(INVX1_50_Y),
		.A(INVX1_51_Y),
		.S0(sram[0]),
		.Y(MX2X1_25_Y));

	MX2X1 mux_l1_in_26_ (
		.B(INVX1_52_Y),
		.A(INVX1_53_Y),
		.S0(sram[0]),
		.Y(MX2X1_26_Y));

	MX2X1 mux_l1_in_27_ (
		.B(INVX1_54_Y),
		.A(INVX1_55_Y),
		.S0(sram[0]),
		.Y(MX2X1_27_Y));

	MX2X1 mux_l1_in_28_ (
		.B(INVX1_56_Y),
		.A(INVX1_57_Y),
		.S0(sram[0]),
		.Y(MX2X1_28_Y));

	MX2X1 mux_l1_in_29_ (
		.B(INVX1_58_Y),
		.A(INVX1_59_Y),
		.S0(sram[0]),
		.Y(MX2X1_29_Y));

	MX2X1 mux_l1_in_30_ (
		.B(INVX1_60_Y),
		.A(INVX1_61_Y),
		.S0(sram[0]),
		.Y(MX2X1_30_Y));

	MX2X1 mux_l1_in_31_ (
		.B(INVX1_62_Y),
		.A(INVX1_63_Y),
		.S0(sram[0]),
		.Y(MX2X1_31_Y));

	MX2X1 mux_l2_in_0_ (
		.B(MX2X1_0_Y),
		.A(MX2X1_1_Y),
		.S0(sram[1]),
		.Y(MX2X1_32_Y));

	MX2X1 mux_l2_in_1_ (
		.B(MX2X1_2_Y),
		.A(MX2X1_3_Y),
		.S0(sram[1]),
		.Y(MX2X1_33_Y));

	MX2X1 mux_l2_in_2_ (
		.B(MX2X1_4_Y),
		.A(MX2X1_5_Y),
		.S0(sram[1]),
		.Y(MX2X1_34_Y));

	MX2X1 mux_l2_in_3_ (
		.B(MX2X1_6_Y),
		.A(MX2X1_7_Y),
		.S0(sram[1]),
		.Y(MX2X1_35_Y));

	MX2X1 mux_l2_in_4_ (
		.B(MX2X1_8_Y),
		.A(MX2X1_9_Y),
		.S0(sram[1]),
		.Y(MX2X1_36_Y));

	MX2X1 mux_l2_in_5_ (
		.B(MX2X1_10_Y),
		.A(MX2X1_11_Y),
		.S0(sram[1]),
		.Y(MX2X1_37_Y));

	MX2X1 mux_l2_in_6_ (
		.B(MX2X1_12_Y),
		.A(MX2X1_13_Y),
		.S0(sram[1]),
		.Y(MX2X1_38_Y));

	MX2X1 mux_l2_in_7_ (
		.B(MX2X1_14_Y),
		.A(MX2X1_15_Y),
		.S0(sram[1]),
		.Y(MX2X1_39_Y));

	MX2X1 mux_l2_in_8_ (
		.B(MX2X1_16_Y),
		.A(MX2X1_17_Y),
		.S0(sram[1]),
		.Y(MX2X1_40_Y));

	MX2X1 mux_l2_in_9_ (
		.B(MX2X1_18_Y),
		.A(MX2X1_19_Y),
		.S0(sram[1]),
		.Y(MX2X1_41_Y));

	MX2X1 mux_l2_in_10_ (
		.B(MX2X1_20_Y),
		.A(MX2X1_21_Y),
		.S0(sram[1]),
		.Y(MX2X1_42_Y));

	MX2X1 mux_l2_in_11_ (
		.B(MX2X1_22_Y),
		.A(MX2X1_23_Y),
		.S0(sram[1]),
		.Y(MX2X1_43_Y));

	MX2X1 mux_l2_in_12_ (
		.B(MX2X1_24_Y),
		.A(MX2X1_25_Y),
		.S0(sram[1]),
		.Y(MX2X1_44_Y));

	MX2X1 mux_l2_in_13_ (
		.B(MX2X1_26_Y),
		.A(MX2X1_27_Y),
		.S0(sram[1]),
		.Y(MX2X1_45_Y));

	MX2X1 mux_l2_in_14_ (
		.B(MX2X1_28_Y),
		.A(MX2X1_29_Y),
		.S0(sram[1]),
		.Y(MX2X1_46_Y));

	MX2X1 mux_l2_in_15_ (
		.B(MX2X1_30_Y),
		.A(MX2X1_31_Y),
		.S0(sram[1]),
		.Y(MX2X1_47_Y));

	MX2X1 mux_l3_in_0_ (
		.B(BUFX4_0_Y),
		.A(BUFX4_1_Y),
		.S0(sram[2]),
		.Y(MX2X1_48_Y));

	MX2X1 mux_l3_in_1_ (
		.B(BUFX4_2_Y),
		.A(BUFX4_3_Y),
		.S0(sram[2]),
		.Y(MX2X1_49_Y));

	MX2X1 mux_l3_in_2_ (
		.B(BUFX4_4_Y),
		.A(BUFX4_5_Y),
		.S0(sram[2]),
		.Y(MX2X1_50_Y));

	MX2X1 mux_l3_in_3_ (
		.B(BUFX4_6_Y),
		.A(BUFX4_7_Y),
		.S0(sram[2]),
		.Y(MX2X1_51_Y));

	MX2X1 mux_l3_in_4_ (
		.B(BUFX4_8_Y),
		.A(BUFX4_9_Y),
		.S0(sram[2]),
		.Y(MX2X1_52_Y));

	MX2X1 mux_l3_in_5_ (
		.B(BUFX4_10_Y),
		.A(BUFX4_11_Y),
		.S0(sram[2]),
		.Y(MX2X1_53_Y));

	MX2X1 mux_l3_in_6_ (
		.B(BUFX4_12_Y),
		.A(BUFX4_13_Y),
		.S0(sram[2]),
		.Y(MX2X1_54_Y));

	MX2X1 mux_l3_in_7_ (
		.B(BUFX4_14_Y),
		.A(BUFX4_15_Y),
		.S0(sram[2]),
		.Y(MX2X1_55_Y));

	MX2X1 mux_l4_in_0_ (
		.B(MX2X1_48_Y),
		.A(MX2X1_49_Y),
		.S0(sram[3]),
		.Y(MX2X1_56_Y));

	MX2X1 mux_l4_in_1_ (
		.B(MX2X1_50_Y),
		.A(MX2X1_51_Y),
		.S0(sram[3]),
		.Y(MX2X1_57_Y));

	MX2X1 mux_l4_in_2_ (
		.B(MX2X1_52_Y),
		.A(MX2X1_53_Y),
		.S0(sram[3]),
		.Y(MX2X1_58_Y));

	MX2X1 mux_l4_in_3_ (
		.B(MX2X1_54_Y),
		.A(MX2X1_55_Y),
		.S0(sram[3]),
		.Y(MX2X1_59_Y));

	MX2X1 mux_l5_in_0_ (
		.B(BUFX4_16_Y),
		.A(BUFX4_17_Y),
		.S0(sram[4]),
		.Y(MX2X1_60_Y));

	MX2X1 mux_l5_in_1_ (
		.B(BUFX4_18_Y),
		.A(BUFX4_19_Y),
		.S0(sram[4]),
		.Y(MX2X1_61_Y));

	MX2X1 mux_l6_in_0_ (
		.B(MX2X1_60_Y),
		.A(MX2X1_61_Y),
		.S0(sram[5]),
		.Y(MX2X1_62_Y));

	BUFX4 BUFX4_0_ (
		.A(MX2X1_32_Y),
		.Y(BUFX4_0_Y));

	BUFX4 BUFX4_1_ (
		.A(MX2X1_33_Y),
		.Y(BUFX4_1_Y));

	BUFX4 BUFX4_2_ (
		.A(MX2X1_34_Y),
		.Y(BUFX4_2_Y));

	BUFX4 BUFX4_3_ (
		.A(MX2X1_35_Y),
		.Y(BUFX4_3_Y));

	BUFX4 BUFX4_4_ (
		.A(MX2X1_36_Y),
		.Y(BUFX4_4_Y));

	BUFX4 BUFX4_5_ (
		.A(MX2X1_37_Y),
		.Y(BUFX4_5_Y));

	BUFX4 BUFX4_6_ (
		.A(MX2X1_38_Y),
		.Y(BUFX4_6_Y));

	BUFX4 BUFX4_7_ (
		.A(MX2X1_39_Y),
		.Y(BUFX4_7_Y));

	BUFX4 BUFX4_8_ (
		.A(MX2X1_40_Y),
		.Y(BUFX4_8_Y));

	BUFX4 BUFX4_9_ (
		.A(MX2X1_41_Y),
		.Y(BUFX4_9_Y));

	BUFX4 BUFX4_10_ (
		.A(MX2X1_42_Y),
		.Y(BUFX4_10_Y));

	BUFX4 BUFX4_11_ (
		.A(MX2X1_43_Y),
		.Y(BUFX4_11_Y));

	BUFX4 BUFX4_12_ (
		.A(MX2X1_44_Y),
		.Y(BUFX4_12_Y));

	BUFX4 BUFX4_13_ (
		.A(MX2X1_45_Y),
		.Y(BUFX4_13_Y));

	BUFX4 BUFX4_14_ (
		.A(MX2X1_46_Y),
		.Y(BUFX4_14_Y));

	BUFX4 BUFX4_15_ (
		.A(MX2X1_47_Y),
		.Y(BUFX4_15_Y));

	BUFX4 BUFX4_16_ (
		.A(MX2X1_56_Y),
		.Y(BUFX4_16_Y));

	BUFX4 BUFX4_17_ (
		.A(MX2X1_57_Y),
		.Y(BUFX4_17_Y));

	BUFX4 BUFX4_18_ (
		.A(MX2X1_58_Y),
		.Y(BUFX4_18_Y));

	BUFX4 BUFX4_19_ (
		.A(MX2X1_59_Y),
		.Y(BUFX4_19_Y));

endmodule
// ----- END Verilog module for frac_lut6_mux -----

//----- Default net type -----
`default_nettype wire




