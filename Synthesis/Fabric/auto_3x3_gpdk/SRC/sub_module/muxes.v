//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Multiplexers
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Fri Nov  8 19:01:05 2024
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


wire [0:0] INVX1LVT_0_Y;
wire [0:0] INVX1LVT_1_Y;
wire [0:0] INVX1LVT_2_Y;
wire [0:0] INVX1LVT_3_Y;
wire [0:0] MX2X1LVT_0_Y;
wire [0:0] MX2X1LVT_1_Y;
wire [0:0] MX2X1LVT_2_Y;
wire [0:0] MX2X1LVT_3_Y;
wire [0:0] const1_0_const1;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

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

	const1 const1_0_ (
		.const1(const1_0_const1));

	INVX4LVT INVX4LVT_0_ (
		.A(MX2X1LVT_3_Y),
		.Y(out));

	MX2X1LVT mux_l1_in_0_ (
		.B(INVX1LVT_0_Y),
		.A(INVX1LVT_1_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_0_Y));

	MX2X1LVT mux_l2_in_0_ (
		.B(MX2X1LVT_0_Y),
		.A(INVX1LVT_2_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_1_Y));

	MX2X1LVT mux_l2_in_1_ (
		.B(INVX1LVT_3_Y),
		.A(const1_0_const1),
		.S0(sram[1]),
		.Y(MX2X1LVT_2_Y));

	MX2X1LVT mux_l3_in_0_ (
		.B(MX2X1LVT_1_Y),
		.A(MX2X1LVT_2_Y),
		.S0(sram[2]),
		.Y(MX2X1LVT_3_Y));

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


wire [0:0] INVX1LVT_0_Y;
wire [0:0] INVX1LVT_1_Y;
wire [0:0] MX2X1LVT_0_Y;
wire [0:0] MX2X1LVT_1_Y;
wire [0:0] const1_0_const1;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	INVX1LVT INVX1LVT_0_ (
		.A(in[0]),
		.Y(INVX1LVT_0_Y));

	INVX1LVT INVX1LVT_1_ (
		.A(in[1]),
		.Y(INVX1LVT_1_Y));

	const1 const1_0_ (
		.const1(const1_0_const1));

	INVX4LVT INVX4LVT_0_ (
		.A(MX2X1LVT_1_Y),
		.Y(out));

	MX2X1LVT mux_l1_in_0_ (
		.B(INVX1LVT_0_Y),
		.A(INVX1LVT_1_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_0_Y));

	MX2X1LVT mux_l2_in_0_ (
		.B(MX2X1LVT_0_Y),
		.A(const1_0_const1),
		.S0(sram[1]),
		.Y(MX2X1LVT_1_Y));

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


wire [0:0] INVX1LVT_0_Y;
wire [0:0] INVX1LVT_1_Y;
wire [0:0] INVX1LVT_2_Y;
wire [0:0] MX2X1LVT_0_Y;
wire [0:0] MX2X1LVT_1_Y;
wire [0:0] MX2X1LVT_2_Y;
wire [0:0] const1_0_const1;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	INVX1LVT INVX1LVT_0_ (
		.A(in[0]),
		.Y(INVX1LVT_0_Y));

	INVX1LVT INVX1LVT_1_ (
		.A(in[1]),
		.Y(INVX1LVT_1_Y));

	INVX1LVT INVX1LVT_2_ (
		.A(in[2]),
		.Y(INVX1LVT_2_Y));

	const1 const1_0_ (
		.const1(const1_0_const1));

	INVX4LVT INVX4LVT_0_ (
		.A(MX2X1LVT_2_Y),
		.Y(out));

	MX2X1LVT mux_l1_in_0_ (
		.B(INVX1LVT_0_Y),
		.A(INVX1LVT_1_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_0_Y));

	MX2X1LVT mux_l1_in_1_ (
		.B(INVX1LVT_2_Y),
		.A(const1_0_const1),
		.S0(sram[0]),
		.Y(MX2X1LVT_1_Y));

	MX2X1LVT mux_l2_in_0_ (
		.B(MX2X1LVT_0_Y),
		.A(MX2X1LVT_1_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_2_Y));

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


wire [0:0] INVX1LVT_0_Y;
wire [0:0] INVX1LVT_10_Y;
wire [0:0] INVX1LVT_11_Y;
wire [0:0] INVX1LVT_12_Y;
wire [0:0] INVX1LVT_13_Y;
wire [0:0] INVX1LVT_14_Y;
wire [0:0] INVX1LVT_15_Y;
wire [0:0] INVX1LVT_16_Y;
wire [0:0] INVX1LVT_17_Y;
wire [0:0] INVX1LVT_18_Y;
wire [0:0] INVX1LVT_19_Y;
wire [0:0] INVX1LVT_1_Y;
wire [0:0] INVX1LVT_20_Y;
wire [0:0] INVX1LVT_21_Y;
wire [0:0] INVX1LVT_22_Y;
wire [0:0] INVX1LVT_23_Y;
wire [0:0] INVX1LVT_24_Y;
wire [0:0] INVX1LVT_25_Y;
wire [0:0] INVX1LVT_26_Y;
wire [0:0] INVX1LVT_27_Y;
wire [0:0] INVX1LVT_28_Y;
wire [0:0] INVX1LVT_29_Y;
wire [0:0] INVX1LVT_2_Y;
wire [0:0] INVX1LVT_30_Y;
wire [0:0] INVX1LVT_31_Y;
wire [0:0] INVX1LVT_32_Y;
wire [0:0] INVX1LVT_33_Y;
wire [0:0] INVX1LVT_34_Y;
wire [0:0] INVX1LVT_35_Y;
wire [0:0] INVX1LVT_36_Y;
wire [0:0] INVX1LVT_37_Y;
wire [0:0] INVX1LVT_38_Y;
wire [0:0] INVX1LVT_39_Y;
wire [0:0] INVX1LVT_3_Y;
wire [0:0] INVX1LVT_40_Y;
wire [0:0] INVX1LVT_41_Y;
wire [0:0] INVX1LVT_42_Y;
wire [0:0] INVX1LVT_43_Y;
wire [0:0] INVX1LVT_44_Y;
wire [0:0] INVX1LVT_45_Y;
wire [0:0] INVX1LVT_46_Y;
wire [0:0] INVX1LVT_47_Y;
wire [0:0] INVX1LVT_48_Y;
wire [0:0] INVX1LVT_49_Y;
wire [0:0] INVX1LVT_4_Y;
wire [0:0] INVX1LVT_50_Y;
wire [0:0] INVX1LVT_51_Y;
wire [0:0] INVX1LVT_52_Y;
wire [0:0] INVX1LVT_53_Y;
wire [0:0] INVX1LVT_54_Y;
wire [0:0] INVX1LVT_55_Y;
wire [0:0] INVX1LVT_56_Y;
wire [0:0] INVX1LVT_57_Y;
wire [0:0] INVX1LVT_58_Y;
wire [0:0] INVX1LVT_59_Y;
wire [0:0] INVX1LVT_5_Y;
wire [0:0] INVX1LVT_6_Y;
wire [0:0] INVX1LVT_7_Y;
wire [0:0] INVX1LVT_8_Y;
wire [0:0] INVX1LVT_9_Y;
wire [0:0] MX2X1LVT_0_Y;
wire [0:0] MX2X1LVT_10_Y;
wire [0:0] MX2X1LVT_11_Y;
wire [0:0] MX2X1LVT_12_Y;
wire [0:0] MX2X1LVT_13_Y;
wire [0:0] MX2X1LVT_14_Y;
wire [0:0] MX2X1LVT_15_Y;
wire [0:0] MX2X1LVT_16_Y;
wire [0:0] MX2X1LVT_17_Y;
wire [0:0] MX2X1LVT_18_Y;
wire [0:0] MX2X1LVT_19_Y;
wire [0:0] MX2X1LVT_1_Y;
wire [0:0] MX2X1LVT_20_Y;
wire [0:0] MX2X1LVT_21_Y;
wire [0:0] MX2X1LVT_22_Y;
wire [0:0] MX2X1LVT_23_Y;
wire [0:0] MX2X1LVT_24_Y;
wire [0:0] MX2X1LVT_25_Y;
wire [0:0] MX2X1LVT_26_Y;
wire [0:0] MX2X1LVT_27_Y;
wire [0:0] MX2X1LVT_28_Y;
wire [0:0] MX2X1LVT_29_Y;
wire [0:0] MX2X1LVT_2_Y;
wire [0:0] MX2X1LVT_30_Y;
wire [0:0] MX2X1LVT_31_Y;
wire [0:0] MX2X1LVT_32_Y;
wire [0:0] MX2X1LVT_33_Y;
wire [0:0] MX2X1LVT_34_Y;
wire [0:0] MX2X1LVT_35_Y;
wire [0:0] MX2X1LVT_36_Y;
wire [0:0] MX2X1LVT_37_Y;
wire [0:0] MX2X1LVT_38_Y;
wire [0:0] MX2X1LVT_39_Y;
wire [0:0] MX2X1LVT_3_Y;
wire [0:0] MX2X1LVT_40_Y;
wire [0:0] MX2X1LVT_41_Y;
wire [0:0] MX2X1LVT_42_Y;
wire [0:0] MX2X1LVT_43_Y;
wire [0:0] MX2X1LVT_44_Y;
wire [0:0] MX2X1LVT_45_Y;
wire [0:0] MX2X1LVT_46_Y;
wire [0:0] MX2X1LVT_47_Y;
wire [0:0] MX2X1LVT_48_Y;
wire [0:0] MX2X1LVT_49_Y;
wire [0:0] MX2X1LVT_4_Y;
wire [0:0] MX2X1LVT_50_Y;
wire [0:0] MX2X1LVT_51_Y;
wire [0:0] MX2X1LVT_52_Y;
wire [0:0] MX2X1LVT_53_Y;
wire [0:0] MX2X1LVT_54_Y;
wire [0:0] MX2X1LVT_55_Y;
wire [0:0] MX2X1LVT_56_Y;
wire [0:0] MX2X1LVT_57_Y;
wire [0:0] MX2X1LVT_58_Y;
wire [0:0] MX2X1LVT_59_Y;
wire [0:0] MX2X1LVT_5_Y;
wire [0:0] MX2X1LVT_6_Y;
wire [0:0] MX2X1LVT_7_Y;
wire [0:0] MX2X1LVT_8_Y;
wire [0:0] MX2X1LVT_9_Y;
wire [0:0] const1_0_const1;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

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
		.A(in[5]),
		.Y(INVX1LVT_5_Y));

	INVX1LVT INVX1LVT_6_ (
		.A(in[6]),
		.Y(INVX1LVT_6_Y));

	INVX1LVT INVX1LVT_7_ (
		.A(in[7]),
		.Y(INVX1LVT_7_Y));

	INVX1LVT INVX1LVT_8_ (
		.A(in[8]),
		.Y(INVX1LVT_8_Y));

	INVX1LVT INVX1LVT_9_ (
		.A(in[9]),
		.Y(INVX1LVT_9_Y));

	INVX1LVT INVX1LVT_10_ (
		.A(in[10]),
		.Y(INVX1LVT_10_Y));

	INVX1LVT INVX1LVT_11_ (
		.A(in[11]),
		.Y(INVX1LVT_11_Y));

	INVX1LVT INVX1LVT_12_ (
		.A(in[12]),
		.Y(INVX1LVT_12_Y));

	INVX1LVT INVX1LVT_13_ (
		.A(in[13]),
		.Y(INVX1LVT_13_Y));

	INVX1LVT INVX1LVT_14_ (
		.A(in[14]),
		.Y(INVX1LVT_14_Y));

	INVX1LVT INVX1LVT_15_ (
		.A(in[15]),
		.Y(INVX1LVT_15_Y));

	INVX1LVT INVX1LVT_16_ (
		.A(in[16]),
		.Y(INVX1LVT_16_Y));

	INVX1LVT INVX1LVT_17_ (
		.A(in[17]),
		.Y(INVX1LVT_17_Y));

	INVX1LVT INVX1LVT_18_ (
		.A(in[18]),
		.Y(INVX1LVT_18_Y));

	INVX1LVT INVX1LVT_19_ (
		.A(in[19]),
		.Y(INVX1LVT_19_Y));

	INVX1LVT INVX1LVT_20_ (
		.A(in[20]),
		.Y(INVX1LVT_20_Y));

	INVX1LVT INVX1LVT_21_ (
		.A(in[21]),
		.Y(INVX1LVT_21_Y));

	INVX1LVT INVX1LVT_22_ (
		.A(in[22]),
		.Y(INVX1LVT_22_Y));

	INVX1LVT INVX1LVT_23_ (
		.A(in[23]),
		.Y(INVX1LVT_23_Y));

	INVX1LVT INVX1LVT_24_ (
		.A(in[24]),
		.Y(INVX1LVT_24_Y));

	INVX1LVT INVX1LVT_25_ (
		.A(in[25]),
		.Y(INVX1LVT_25_Y));

	INVX1LVT INVX1LVT_26_ (
		.A(in[26]),
		.Y(INVX1LVT_26_Y));

	INVX1LVT INVX1LVT_27_ (
		.A(in[27]),
		.Y(INVX1LVT_27_Y));

	INVX1LVT INVX1LVT_28_ (
		.A(in[28]),
		.Y(INVX1LVT_28_Y));

	INVX1LVT INVX1LVT_29_ (
		.A(in[29]),
		.Y(INVX1LVT_29_Y));

	INVX1LVT INVX1LVT_30_ (
		.A(in[30]),
		.Y(INVX1LVT_30_Y));

	INVX1LVT INVX1LVT_31_ (
		.A(in[31]),
		.Y(INVX1LVT_31_Y));

	INVX1LVT INVX1LVT_32_ (
		.A(in[32]),
		.Y(INVX1LVT_32_Y));

	INVX1LVT INVX1LVT_33_ (
		.A(in[33]),
		.Y(INVX1LVT_33_Y));

	INVX1LVT INVX1LVT_34_ (
		.A(in[34]),
		.Y(INVX1LVT_34_Y));

	INVX1LVT INVX1LVT_35_ (
		.A(in[35]),
		.Y(INVX1LVT_35_Y));

	INVX1LVT INVX1LVT_36_ (
		.A(in[36]),
		.Y(INVX1LVT_36_Y));

	INVX1LVT INVX1LVT_37_ (
		.A(in[37]),
		.Y(INVX1LVT_37_Y));

	INVX1LVT INVX1LVT_38_ (
		.A(in[38]),
		.Y(INVX1LVT_38_Y));

	INVX1LVT INVX1LVT_39_ (
		.A(in[39]),
		.Y(INVX1LVT_39_Y));

	INVX1LVT INVX1LVT_40_ (
		.A(in[40]),
		.Y(INVX1LVT_40_Y));

	INVX1LVT INVX1LVT_41_ (
		.A(in[41]),
		.Y(INVX1LVT_41_Y));

	INVX1LVT INVX1LVT_42_ (
		.A(in[42]),
		.Y(INVX1LVT_42_Y));

	INVX1LVT INVX1LVT_43_ (
		.A(in[43]),
		.Y(INVX1LVT_43_Y));

	INVX1LVT INVX1LVT_44_ (
		.A(in[44]),
		.Y(INVX1LVT_44_Y));

	INVX1LVT INVX1LVT_45_ (
		.A(in[45]),
		.Y(INVX1LVT_45_Y));

	INVX1LVT INVX1LVT_46_ (
		.A(in[46]),
		.Y(INVX1LVT_46_Y));

	INVX1LVT INVX1LVT_47_ (
		.A(in[47]),
		.Y(INVX1LVT_47_Y));

	INVX1LVT INVX1LVT_48_ (
		.A(in[48]),
		.Y(INVX1LVT_48_Y));

	INVX1LVT INVX1LVT_49_ (
		.A(in[49]),
		.Y(INVX1LVT_49_Y));

	INVX1LVT INVX1LVT_50_ (
		.A(in[50]),
		.Y(INVX1LVT_50_Y));

	INVX1LVT INVX1LVT_51_ (
		.A(in[51]),
		.Y(INVX1LVT_51_Y));

	INVX1LVT INVX1LVT_52_ (
		.A(in[52]),
		.Y(INVX1LVT_52_Y));

	INVX1LVT INVX1LVT_53_ (
		.A(in[53]),
		.Y(INVX1LVT_53_Y));

	INVX1LVT INVX1LVT_54_ (
		.A(in[54]),
		.Y(INVX1LVT_54_Y));

	INVX1LVT INVX1LVT_55_ (
		.A(in[55]),
		.Y(INVX1LVT_55_Y));

	INVX1LVT INVX1LVT_56_ (
		.A(in[56]),
		.Y(INVX1LVT_56_Y));

	INVX1LVT INVX1LVT_57_ (
		.A(in[57]),
		.Y(INVX1LVT_57_Y));

	INVX1LVT INVX1LVT_58_ (
		.A(in[58]),
		.Y(INVX1LVT_58_Y));

	INVX1LVT INVX1LVT_59_ (
		.A(in[59]),
		.Y(INVX1LVT_59_Y));

	INVX1LVT INVX1LVT_60_ (
		.A(MX2X1LVT_59_Y),
		.Y(out));

	const1 const1_0_ (
		.const1(const1_0_const1));

	MX2X1LVT mux_l1_in_0_ (
		.B(INVX1LVT_0_Y),
		.A(INVX1LVT_1_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_0_Y));

	MX2X1LVT mux_l1_in_1_ (
		.B(INVX1LVT_2_Y),
		.A(INVX1LVT_3_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_1_Y));

	MX2X1LVT mux_l1_in_2_ (
		.B(INVX1LVT_4_Y),
		.A(INVX1LVT_5_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_2_Y));

	MX2X1LVT mux_l1_in_3_ (
		.B(INVX1LVT_6_Y),
		.A(INVX1LVT_7_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_3_Y));

	MX2X1LVT mux_l1_in_4_ (
		.B(INVX1LVT_8_Y),
		.A(INVX1LVT_9_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_4_Y));

	MX2X1LVT mux_l1_in_5_ (
		.B(INVX1LVT_10_Y),
		.A(INVX1LVT_11_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_5_Y));

	MX2X1LVT mux_l1_in_6_ (
		.B(INVX1LVT_12_Y),
		.A(INVX1LVT_13_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_6_Y));

	MX2X1LVT mux_l1_in_7_ (
		.B(INVX1LVT_14_Y),
		.A(INVX1LVT_15_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_7_Y));

	MX2X1LVT mux_l1_in_8_ (
		.B(INVX1LVT_16_Y),
		.A(INVX1LVT_17_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_8_Y));

	MX2X1LVT mux_l1_in_9_ (
		.B(INVX1LVT_18_Y),
		.A(INVX1LVT_19_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_9_Y));

	MX2X1LVT mux_l1_in_10_ (
		.B(INVX1LVT_20_Y),
		.A(INVX1LVT_21_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_10_Y));

	MX2X1LVT mux_l1_in_11_ (
		.B(INVX1LVT_22_Y),
		.A(INVX1LVT_23_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_11_Y));

	MX2X1LVT mux_l1_in_12_ (
		.B(INVX1LVT_24_Y),
		.A(INVX1LVT_25_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_12_Y));

	MX2X1LVT mux_l1_in_13_ (
		.B(INVX1LVT_26_Y),
		.A(INVX1LVT_27_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_13_Y));

	MX2X1LVT mux_l1_in_14_ (
		.B(INVX1LVT_28_Y),
		.A(INVX1LVT_29_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_14_Y));

	MX2X1LVT mux_l1_in_15_ (
		.B(INVX1LVT_30_Y),
		.A(INVX1LVT_31_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_15_Y));

	MX2X1LVT mux_l1_in_16_ (
		.B(INVX1LVT_32_Y),
		.A(INVX1LVT_33_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_16_Y));

	MX2X1LVT mux_l1_in_17_ (
		.B(INVX1LVT_34_Y),
		.A(INVX1LVT_35_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_17_Y));

	MX2X1LVT mux_l1_in_18_ (
		.B(INVX1LVT_36_Y),
		.A(INVX1LVT_37_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_18_Y));

	MX2X1LVT mux_l1_in_19_ (
		.B(INVX1LVT_38_Y),
		.A(INVX1LVT_39_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_19_Y));

	MX2X1LVT mux_l1_in_20_ (
		.B(INVX1LVT_40_Y),
		.A(INVX1LVT_41_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_20_Y));

	MX2X1LVT mux_l1_in_21_ (
		.B(INVX1LVT_42_Y),
		.A(INVX1LVT_43_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_21_Y));

	MX2X1LVT mux_l1_in_22_ (
		.B(INVX1LVT_44_Y),
		.A(INVX1LVT_45_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_22_Y));

	MX2X1LVT mux_l1_in_23_ (
		.B(INVX1LVT_46_Y),
		.A(INVX1LVT_47_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_23_Y));

	MX2X1LVT mux_l1_in_24_ (
		.B(INVX1LVT_48_Y),
		.A(INVX1LVT_49_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_24_Y));

	MX2X1LVT mux_l1_in_25_ (
		.B(INVX1LVT_50_Y),
		.A(INVX1LVT_51_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_25_Y));

	MX2X1LVT mux_l1_in_26_ (
		.B(INVX1LVT_52_Y),
		.A(INVX1LVT_53_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_26_Y));

	MX2X1LVT mux_l1_in_27_ (
		.B(INVX1LVT_54_Y),
		.A(INVX1LVT_55_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_27_Y));

	MX2X1LVT mux_l1_in_28_ (
		.B(INVX1LVT_56_Y),
		.A(INVX1LVT_57_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_28_Y));

	MX2X1LVT mux_l2_in_0_ (
		.B(MX2X1LVT_0_Y),
		.A(MX2X1LVT_1_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_29_Y));

	MX2X1LVT mux_l2_in_1_ (
		.B(MX2X1LVT_2_Y),
		.A(MX2X1LVT_3_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_30_Y));

	MX2X1LVT mux_l2_in_2_ (
		.B(MX2X1LVT_4_Y),
		.A(MX2X1LVT_5_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_31_Y));

	MX2X1LVT mux_l2_in_3_ (
		.B(MX2X1LVT_6_Y),
		.A(MX2X1LVT_7_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_32_Y));

	MX2X1LVT mux_l2_in_4_ (
		.B(MX2X1LVT_8_Y),
		.A(MX2X1LVT_9_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_33_Y));

	MX2X1LVT mux_l2_in_5_ (
		.B(MX2X1LVT_10_Y),
		.A(MX2X1LVT_11_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_34_Y));

	MX2X1LVT mux_l2_in_6_ (
		.B(MX2X1LVT_12_Y),
		.A(MX2X1LVT_13_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_35_Y));

	MX2X1LVT mux_l2_in_7_ (
		.B(MX2X1LVT_14_Y),
		.A(MX2X1LVT_15_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_36_Y));

	MX2X1LVT mux_l2_in_8_ (
		.B(MX2X1LVT_16_Y),
		.A(MX2X1LVT_17_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_37_Y));

	MX2X1LVT mux_l2_in_9_ (
		.B(MX2X1LVT_18_Y),
		.A(MX2X1LVT_19_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_38_Y));

	MX2X1LVT mux_l2_in_10_ (
		.B(MX2X1LVT_20_Y),
		.A(MX2X1LVT_21_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_39_Y));

	MX2X1LVT mux_l2_in_11_ (
		.B(MX2X1LVT_22_Y),
		.A(MX2X1LVT_23_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_40_Y));

	MX2X1LVT mux_l2_in_12_ (
		.B(MX2X1LVT_24_Y),
		.A(MX2X1LVT_25_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_41_Y));

	MX2X1LVT mux_l2_in_13_ (
		.B(MX2X1LVT_26_Y),
		.A(MX2X1LVT_27_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_42_Y));

	MX2X1LVT mux_l2_in_14_ (
		.B(MX2X1LVT_28_Y),
		.A(INVX1LVT_58_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_43_Y));

	MX2X1LVT mux_l2_in_15_ (
		.B(INVX1LVT_59_Y),
		.A(const1_0_const1),
		.S0(sram[1]),
		.Y(MX2X1LVT_44_Y));

	MX2X1LVT mux_l3_in_0_ (
		.B(MX2X1LVT_29_Y),
		.A(MX2X1LVT_30_Y),
		.S0(sram[2]),
		.Y(MX2X1LVT_45_Y));

	MX2X1LVT mux_l3_in_1_ (
		.B(MX2X1LVT_31_Y),
		.A(MX2X1LVT_32_Y),
		.S0(sram[2]),
		.Y(MX2X1LVT_46_Y));

	MX2X1LVT mux_l3_in_2_ (
		.B(MX2X1LVT_33_Y),
		.A(MX2X1LVT_34_Y),
		.S0(sram[2]),
		.Y(MX2X1LVT_47_Y));

	MX2X1LVT mux_l3_in_3_ (
		.B(MX2X1LVT_35_Y),
		.A(MX2X1LVT_36_Y),
		.S0(sram[2]),
		.Y(MX2X1LVT_48_Y));

	MX2X1LVT mux_l3_in_4_ (
		.B(MX2X1LVT_37_Y),
		.A(MX2X1LVT_38_Y),
		.S0(sram[2]),
		.Y(MX2X1LVT_49_Y));

	MX2X1LVT mux_l3_in_5_ (
		.B(MX2X1LVT_39_Y),
		.A(MX2X1LVT_40_Y),
		.S0(sram[2]),
		.Y(MX2X1LVT_50_Y));

	MX2X1LVT mux_l3_in_6_ (
		.B(MX2X1LVT_41_Y),
		.A(MX2X1LVT_42_Y),
		.S0(sram[2]),
		.Y(MX2X1LVT_51_Y));

	MX2X1LVT mux_l3_in_7_ (
		.B(MX2X1LVT_43_Y),
		.A(MX2X1LVT_44_Y),
		.S0(sram[2]),
		.Y(MX2X1LVT_52_Y));

	MX2X1LVT mux_l4_in_0_ (
		.B(MX2X1LVT_45_Y),
		.A(MX2X1LVT_46_Y),
		.S0(sram[3]),
		.Y(MX2X1LVT_53_Y));

	MX2X1LVT mux_l4_in_1_ (
		.B(MX2X1LVT_47_Y),
		.A(MX2X1LVT_48_Y),
		.S0(sram[3]),
		.Y(MX2X1LVT_54_Y));

	MX2X1LVT mux_l4_in_2_ (
		.B(MX2X1LVT_49_Y),
		.A(MX2X1LVT_50_Y),
		.S0(sram[3]),
		.Y(MX2X1LVT_55_Y));

	MX2X1LVT mux_l4_in_3_ (
		.B(MX2X1LVT_51_Y),
		.A(MX2X1LVT_52_Y),
		.S0(sram[3]),
		.Y(MX2X1LVT_56_Y));

	MX2X1LVT mux_l5_in_0_ (
		.B(MX2X1LVT_53_Y),
		.A(MX2X1LVT_54_Y),
		.S0(sram[4]),
		.Y(MX2X1LVT_57_Y));

	MX2X1LVT mux_l5_in_1_ (
		.B(MX2X1LVT_55_Y),
		.A(MX2X1LVT_56_Y),
		.S0(sram[4]),
		.Y(MX2X1LVT_58_Y));

	MX2X1LVT mux_l6_in_0_ (
		.B(MX2X1LVT_57_Y),
		.A(MX2X1LVT_58_Y),
		.S0(sram[5]),
		.Y(MX2X1LVT_59_Y));

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


wire [0:0] INVX1LVT_0_Y;
wire [0:0] INVX1LVT_1_Y;
wire [0:0] MX2X1LVT_0_Y;
wire [0:0] MX2X1LVT_1_Y;
wire [0:0] const1_0_const1;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	INVX1LVT INVX1LVT_0_ (
		.A(in[0]),
		.Y(INVX1LVT_0_Y));

	INVX1LVT INVX1LVT_1_ (
		.A(in[1]),
		.Y(INVX1LVT_1_Y));

	INVX1LVT INVX1LVT_2_ (
		.A(MX2X1LVT_1_Y),
		.Y(out));

	const1 const1_0_ (
		.const1(const1_0_const1));

	MX2X1LVT mux_l1_in_0_ (
		.B(INVX1LVT_0_Y),
		.A(INVX1LVT_1_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_0_Y));

	MX2X1LVT mux_l2_in_0_ (
		.B(MX2X1LVT_0_Y),
		.A(const1_0_const1),
		.S0(sram[1]),
		.Y(MX2X1LVT_1_Y));

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


wire [0:0] BUFX4LVT_0_Y;
wire [0:0] BUFX4LVT_10_Y;
wire [0:0] BUFX4LVT_11_Y;
wire [0:0] BUFX4LVT_12_Y;
wire [0:0] BUFX4LVT_13_Y;
wire [0:0] BUFX4LVT_14_Y;
wire [0:0] BUFX4LVT_15_Y;
wire [0:0] BUFX4LVT_16_Y;
wire [0:0] BUFX4LVT_17_Y;
wire [0:0] BUFX4LVT_18_Y;
wire [0:0] BUFX4LVT_19_Y;
wire [0:0] BUFX4LVT_1_Y;
wire [0:0] BUFX4LVT_2_Y;
wire [0:0] BUFX4LVT_3_Y;
wire [0:0] BUFX4LVT_4_Y;
wire [0:0] BUFX4LVT_5_Y;
wire [0:0] BUFX4LVT_6_Y;
wire [0:0] BUFX4LVT_7_Y;
wire [0:0] BUFX4LVT_8_Y;
wire [0:0] BUFX4LVT_9_Y;
wire [0:0] INVX1LVT_0_Y;
wire [0:0] INVX1LVT_10_Y;
wire [0:0] INVX1LVT_11_Y;
wire [0:0] INVX1LVT_12_Y;
wire [0:0] INVX1LVT_13_Y;
wire [0:0] INVX1LVT_14_Y;
wire [0:0] INVX1LVT_15_Y;
wire [0:0] INVX1LVT_16_Y;
wire [0:0] INVX1LVT_17_Y;
wire [0:0] INVX1LVT_18_Y;
wire [0:0] INVX1LVT_19_Y;
wire [0:0] INVX1LVT_1_Y;
wire [0:0] INVX1LVT_20_Y;
wire [0:0] INVX1LVT_21_Y;
wire [0:0] INVX1LVT_22_Y;
wire [0:0] INVX1LVT_23_Y;
wire [0:0] INVX1LVT_24_Y;
wire [0:0] INVX1LVT_25_Y;
wire [0:0] INVX1LVT_26_Y;
wire [0:0] INVX1LVT_27_Y;
wire [0:0] INVX1LVT_28_Y;
wire [0:0] INVX1LVT_29_Y;
wire [0:0] INVX1LVT_2_Y;
wire [0:0] INVX1LVT_30_Y;
wire [0:0] INVX1LVT_31_Y;
wire [0:0] INVX1LVT_32_Y;
wire [0:0] INVX1LVT_33_Y;
wire [0:0] INVX1LVT_34_Y;
wire [0:0] INVX1LVT_35_Y;
wire [0:0] INVX1LVT_36_Y;
wire [0:0] INVX1LVT_37_Y;
wire [0:0] INVX1LVT_38_Y;
wire [0:0] INVX1LVT_39_Y;
wire [0:0] INVX1LVT_3_Y;
wire [0:0] INVX1LVT_40_Y;
wire [0:0] INVX1LVT_41_Y;
wire [0:0] INVX1LVT_42_Y;
wire [0:0] INVX1LVT_43_Y;
wire [0:0] INVX1LVT_44_Y;
wire [0:0] INVX1LVT_45_Y;
wire [0:0] INVX1LVT_46_Y;
wire [0:0] INVX1LVT_47_Y;
wire [0:0] INVX1LVT_48_Y;
wire [0:0] INVX1LVT_49_Y;
wire [0:0] INVX1LVT_4_Y;
wire [0:0] INVX1LVT_50_Y;
wire [0:0] INVX1LVT_51_Y;
wire [0:0] INVX1LVT_52_Y;
wire [0:0] INVX1LVT_53_Y;
wire [0:0] INVX1LVT_54_Y;
wire [0:0] INVX1LVT_55_Y;
wire [0:0] INVX1LVT_56_Y;
wire [0:0] INVX1LVT_57_Y;
wire [0:0] INVX1LVT_58_Y;
wire [0:0] INVX1LVT_59_Y;
wire [0:0] INVX1LVT_5_Y;
wire [0:0] INVX1LVT_60_Y;
wire [0:0] INVX1LVT_61_Y;
wire [0:0] INVX1LVT_62_Y;
wire [0:0] INVX1LVT_63_Y;
wire [0:0] INVX1LVT_6_Y;
wire [0:0] INVX1LVT_7_Y;
wire [0:0] INVX1LVT_8_Y;
wire [0:0] INVX1LVT_9_Y;
wire [0:0] MX2X1LVT_0_Y;
wire [0:0] MX2X1LVT_10_Y;
wire [0:0] MX2X1LVT_11_Y;
wire [0:0] MX2X1LVT_12_Y;
wire [0:0] MX2X1LVT_13_Y;
wire [0:0] MX2X1LVT_14_Y;
wire [0:0] MX2X1LVT_15_Y;
wire [0:0] MX2X1LVT_16_Y;
wire [0:0] MX2X1LVT_17_Y;
wire [0:0] MX2X1LVT_18_Y;
wire [0:0] MX2X1LVT_19_Y;
wire [0:0] MX2X1LVT_1_Y;
wire [0:0] MX2X1LVT_20_Y;
wire [0:0] MX2X1LVT_21_Y;
wire [0:0] MX2X1LVT_22_Y;
wire [0:0] MX2X1LVT_23_Y;
wire [0:0] MX2X1LVT_24_Y;
wire [0:0] MX2X1LVT_25_Y;
wire [0:0] MX2X1LVT_26_Y;
wire [0:0] MX2X1LVT_27_Y;
wire [0:0] MX2X1LVT_28_Y;
wire [0:0] MX2X1LVT_29_Y;
wire [0:0] MX2X1LVT_2_Y;
wire [0:0] MX2X1LVT_30_Y;
wire [0:0] MX2X1LVT_31_Y;
wire [0:0] MX2X1LVT_32_Y;
wire [0:0] MX2X1LVT_33_Y;
wire [0:0] MX2X1LVT_34_Y;
wire [0:0] MX2X1LVT_35_Y;
wire [0:0] MX2X1LVT_36_Y;
wire [0:0] MX2X1LVT_37_Y;
wire [0:0] MX2X1LVT_38_Y;
wire [0:0] MX2X1LVT_39_Y;
wire [0:0] MX2X1LVT_3_Y;
wire [0:0] MX2X1LVT_40_Y;
wire [0:0] MX2X1LVT_41_Y;
wire [0:0] MX2X1LVT_42_Y;
wire [0:0] MX2X1LVT_43_Y;
wire [0:0] MX2X1LVT_44_Y;
wire [0:0] MX2X1LVT_45_Y;
wire [0:0] MX2X1LVT_46_Y;
wire [0:0] MX2X1LVT_47_Y;
wire [0:0] MX2X1LVT_48_Y;
wire [0:0] MX2X1LVT_49_Y;
wire [0:0] MX2X1LVT_4_Y;
wire [0:0] MX2X1LVT_50_Y;
wire [0:0] MX2X1LVT_51_Y;
wire [0:0] MX2X1LVT_52_Y;
wire [0:0] MX2X1LVT_53_Y;
wire [0:0] MX2X1LVT_54_Y;
wire [0:0] MX2X1LVT_55_Y;
wire [0:0] MX2X1LVT_56_Y;
wire [0:0] MX2X1LVT_57_Y;
wire [0:0] MX2X1LVT_58_Y;
wire [0:0] MX2X1LVT_59_Y;
wire [0:0] MX2X1LVT_5_Y;
wire [0:0] MX2X1LVT_60_Y;
wire [0:0] MX2X1LVT_61_Y;
wire [0:0] MX2X1LVT_62_Y;
wire [0:0] MX2X1LVT_6_Y;
wire [0:0] MX2X1LVT_7_Y;
wire [0:0] MX2X1LVT_8_Y;
wire [0:0] MX2X1LVT_9_Y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

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
		.A(in[5]),
		.Y(INVX1LVT_5_Y));

	INVX1LVT INVX1LVT_6_ (
		.A(in[6]),
		.Y(INVX1LVT_6_Y));

	INVX1LVT INVX1LVT_7_ (
		.A(in[7]),
		.Y(INVX1LVT_7_Y));

	INVX1LVT INVX1LVT_8_ (
		.A(in[8]),
		.Y(INVX1LVT_8_Y));

	INVX1LVT INVX1LVT_9_ (
		.A(in[9]),
		.Y(INVX1LVT_9_Y));

	INVX1LVT INVX1LVT_10_ (
		.A(in[10]),
		.Y(INVX1LVT_10_Y));

	INVX1LVT INVX1LVT_11_ (
		.A(in[11]),
		.Y(INVX1LVT_11_Y));

	INVX1LVT INVX1LVT_12_ (
		.A(in[12]),
		.Y(INVX1LVT_12_Y));

	INVX1LVT INVX1LVT_13_ (
		.A(in[13]),
		.Y(INVX1LVT_13_Y));

	INVX1LVT INVX1LVT_14_ (
		.A(in[14]),
		.Y(INVX1LVT_14_Y));

	INVX1LVT INVX1LVT_15_ (
		.A(in[15]),
		.Y(INVX1LVT_15_Y));

	INVX1LVT INVX1LVT_16_ (
		.A(in[16]),
		.Y(INVX1LVT_16_Y));

	INVX1LVT INVX1LVT_17_ (
		.A(in[17]),
		.Y(INVX1LVT_17_Y));

	INVX1LVT INVX1LVT_18_ (
		.A(in[18]),
		.Y(INVX1LVT_18_Y));

	INVX1LVT INVX1LVT_19_ (
		.A(in[19]),
		.Y(INVX1LVT_19_Y));

	INVX1LVT INVX1LVT_20_ (
		.A(in[20]),
		.Y(INVX1LVT_20_Y));

	INVX1LVT INVX1LVT_21_ (
		.A(in[21]),
		.Y(INVX1LVT_21_Y));

	INVX1LVT INVX1LVT_22_ (
		.A(in[22]),
		.Y(INVX1LVT_22_Y));

	INVX1LVT INVX1LVT_23_ (
		.A(in[23]),
		.Y(INVX1LVT_23_Y));

	INVX1LVT INVX1LVT_24_ (
		.A(in[24]),
		.Y(INVX1LVT_24_Y));

	INVX1LVT INVX1LVT_25_ (
		.A(in[25]),
		.Y(INVX1LVT_25_Y));

	INVX1LVT INVX1LVT_26_ (
		.A(in[26]),
		.Y(INVX1LVT_26_Y));

	INVX1LVT INVX1LVT_27_ (
		.A(in[27]),
		.Y(INVX1LVT_27_Y));

	INVX1LVT INVX1LVT_28_ (
		.A(in[28]),
		.Y(INVX1LVT_28_Y));

	INVX1LVT INVX1LVT_29_ (
		.A(in[29]),
		.Y(INVX1LVT_29_Y));

	INVX1LVT INVX1LVT_30_ (
		.A(in[30]),
		.Y(INVX1LVT_30_Y));

	INVX1LVT INVX1LVT_31_ (
		.A(in[31]),
		.Y(INVX1LVT_31_Y));

	INVX1LVT INVX1LVT_32_ (
		.A(in[32]),
		.Y(INVX1LVT_32_Y));

	INVX1LVT INVX1LVT_33_ (
		.A(in[33]),
		.Y(INVX1LVT_33_Y));

	INVX1LVT INVX1LVT_34_ (
		.A(in[34]),
		.Y(INVX1LVT_34_Y));

	INVX1LVT INVX1LVT_35_ (
		.A(in[35]),
		.Y(INVX1LVT_35_Y));

	INVX1LVT INVX1LVT_36_ (
		.A(in[36]),
		.Y(INVX1LVT_36_Y));

	INVX1LVT INVX1LVT_37_ (
		.A(in[37]),
		.Y(INVX1LVT_37_Y));

	INVX1LVT INVX1LVT_38_ (
		.A(in[38]),
		.Y(INVX1LVT_38_Y));

	INVX1LVT INVX1LVT_39_ (
		.A(in[39]),
		.Y(INVX1LVT_39_Y));

	INVX1LVT INVX1LVT_40_ (
		.A(in[40]),
		.Y(INVX1LVT_40_Y));

	INVX1LVT INVX1LVT_41_ (
		.A(in[41]),
		.Y(INVX1LVT_41_Y));

	INVX1LVT INVX1LVT_42_ (
		.A(in[42]),
		.Y(INVX1LVT_42_Y));

	INVX1LVT INVX1LVT_43_ (
		.A(in[43]),
		.Y(INVX1LVT_43_Y));

	INVX1LVT INVX1LVT_44_ (
		.A(in[44]),
		.Y(INVX1LVT_44_Y));

	INVX1LVT INVX1LVT_45_ (
		.A(in[45]),
		.Y(INVX1LVT_45_Y));

	INVX1LVT INVX1LVT_46_ (
		.A(in[46]),
		.Y(INVX1LVT_46_Y));

	INVX1LVT INVX1LVT_47_ (
		.A(in[47]),
		.Y(INVX1LVT_47_Y));

	INVX1LVT INVX1LVT_48_ (
		.A(in[48]),
		.Y(INVX1LVT_48_Y));

	INVX1LVT INVX1LVT_49_ (
		.A(in[49]),
		.Y(INVX1LVT_49_Y));

	INVX1LVT INVX1LVT_50_ (
		.A(in[50]),
		.Y(INVX1LVT_50_Y));

	INVX1LVT INVX1LVT_51_ (
		.A(in[51]),
		.Y(INVX1LVT_51_Y));

	INVX1LVT INVX1LVT_52_ (
		.A(in[52]),
		.Y(INVX1LVT_52_Y));

	INVX1LVT INVX1LVT_53_ (
		.A(in[53]),
		.Y(INVX1LVT_53_Y));

	INVX1LVT INVX1LVT_54_ (
		.A(in[54]),
		.Y(INVX1LVT_54_Y));

	INVX1LVT INVX1LVT_55_ (
		.A(in[55]),
		.Y(INVX1LVT_55_Y));

	INVX1LVT INVX1LVT_56_ (
		.A(in[56]),
		.Y(INVX1LVT_56_Y));

	INVX1LVT INVX1LVT_57_ (
		.A(in[57]),
		.Y(INVX1LVT_57_Y));

	INVX1LVT INVX1LVT_58_ (
		.A(in[58]),
		.Y(INVX1LVT_58_Y));

	INVX1LVT INVX1LVT_59_ (
		.A(in[59]),
		.Y(INVX1LVT_59_Y));

	INVX1LVT INVX1LVT_60_ (
		.A(in[60]),
		.Y(INVX1LVT_60_Y));

	INVX1LVT INVX1LVT_61_ (
		.A(in[61]),
		.Y(INVX1LVT_61_Y));

	INVX1LVT INVX1LVT_62_ (
		.A(in[62]),
		.Y(INVX1LVT_62_Y));

	INVX1LVT INVX1LVT_63_ (
		.A(in[63]),
		.Y(INVX1LVT_63_Y));

	INVX1LVT INVX1LVT_64_ (
		.A(MX2X1LVT_60_Y),
		.Y(lut5_out[0]));

	INVX1LVT INVX1LVT_65_ (
		.A(MX2X1LVT_61_Y),
		.Y(lut5_out[1]));

	INVX1LVT INVX1LVT_66_ (
		.A(MX2X1LVT_62_Y),
		.Y(lut6_out));

	MX2X1LVT mux_l1_in_0_ (
		.B(INVX1LVT_0_Y),
		.A(INVX1LVT_1_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_0_Y));

	MX2X1LVT mux_l1_in_1_ (
		.B(INVX1LVT_2_Y),
		.A(INVX1LVT_3_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_1_Y));

	MX2X1LVT mux_l1_in_2_ (
		.B(INVX1LVT_4_Y),
		.A(INVX1LVT_5_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_2_Y));

	MX2X1LVT mux_l1_in_3_ (
		.B(INVX1LVT_6_Y),
		.A(INVX1LVT_7_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_3_Y));

	MX2X1LVT mux_l1_in_4_ (
		.B(INVX1LVT_8_Y),
		.A(INVX1LVT_9_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_4_Y));

	MX2X1LVT mux_l1_in_5_ (
		.B(INVX1LVT_10_Y),
		.A(INVX1LVT_11_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_5_Y));

	MX2X1LVT mux_l1_in_6_ (
		.B(INVX1LVT_12_Y),
		.A(INVX1LVT_13_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_6_Y));

	MX2X1LVT mux_l1_in_7_ (
		.B(INVX1LVT_14_Y),
		.A(INVX1LVT_15_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_7_Y));

	MX2X1LVT mux_l1_in_8_ (
		.B(INVX1LVT_16_Y),
		.A(INVX1LVT_17_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_8_Y));

	MX2X1LVT mux_l1_in_9_ (
		.B(INVX1LVT_18_Y),
		.A(INVX1LVT_19_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_9_Y));

	MX2X1LVT mux_l1_in_10_ (
		.B(INVX1LVT_20_Y),
		.A(INVX1LVT_21_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_10_Y));

	MX2X1LVT mux_l1_in_11_ (
		.B(INVX1LVT_22_Y),
		.A(INVX1LVT_23_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_11_Y));

	MX2X1LVT mux_l1_in_12_ (
		.B(INVX1LVT_24_Y),
		.A(INVX1LVT_25_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_12_Y));

	MX2X1LVT mux_l1_in_13_ (
		.B(INVX1LVT_26_Y),
		.A(INVX1LVT_27_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_13_Y));

	MX2X1LVT mux_l1_in_14_ (
		.B(INVX1LVT_28_Y),
		.A(INVX1LVT_29_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_14_Y));

	MX2X1LVT mux_l1_in_15_ (
		.B(INVX1LVT_30_Y),
		.A(INVX1LVT_31_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_15_Y));

	MX2X1LVT mux_l1_in_16_ (
		.B(INVX1LVT_32_Y),
		.A(INVX1LVT_33_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_16_Y));

	MX2X1LVT mux_l1_in_17_ (
		.B(INVX1LVT_34_Y),
		.A(INVX1LVT_35_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_17_Y));

	MX2X1LVT mux_l1_in_18_ (
		.B(INVX1LVT_36_Y),
		.A(INVX1LVT_37_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_18_Y));

	MX2X1LVT mux_l1_in_19_ (
		.B(INVX1LVT_38_Y),
		.A(INVX1LVT_39_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_19_Y));

	MX2X1LVT mux_l1_in_20_ (
		.B(INVX1LVT_40_Y),
		.A(INVX1LVT_41_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_20_Y));

	MX2X1LVT mux_l1_in_21_ (
		.B(INVX1LVT_42_Y),
		.A(INVX1LVT_43_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_21_Y));

	MX2X1LVT mux_l1_in_22_ (
		.B(INVX1LVT_44_Y),
		.A(INVX1LVT_45_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_22_Y));

	MX2X1LVT mux_l1_in_23_ (
		.B(INVX1LVT_46_Y),
		.A(INVX1LVT_47_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_23_Y));

	MX2X1LVT mux_l1_in_24_ (
		.B(INVX1LVT_48_Y),
		.A(INVX1LVT_49_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_24_Y));

	MX2X1LVT mux_l1_in_25_ (
		.B(INVX1LVT_50_Y),
		.A(INVX1LVT_51_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_25_Y));

	MX2X1LVT mux_l1_in_26_ (
		.B(INVX1LVT_52_Y),
		.A(INVX1LVT_53_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_26_Y));

	MX2X1LVT mux_l1_in_27_ (
		.B(INVX1LVT_54_Y),
		.A(INVX1LVT_55_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_27_Y));

	MX2X1LVT mux_l1_in_28_ (
		.B(INVX1LVT_56_Y),
		.A(INVX1LVT_57_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_28_Y));

	MX2X1LVT mux_l1_in_29_ (
		.B(INVX1LVT_58_Y),
		.A(INVX1LVT_59_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_29_Y));

	MX2X1LVT mux_l1_in_30_ (
		.B(INVX1LVT_60_Y),
		.A(INVX1LVT_61_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_30_Y));

	MX2X1LVT mux_l1_in_31_ (
		.B(INVX1LVT_62_Y),
		.A(INVX1LVT_63_Y),
		.S0(sram[0]),
		.Y(MX2X1LVT_31_Y));

	MX2X1LVT mux_l2_in_0_ (
		.B(MX2X1LVT_0_Y),
		.A(MX2X1LVT_1_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_32_Y));

	MX2X1LVT mux_l2_in_1_ (
		.B(MX2X1LVT_2_Y),
		.A(MX2X1LVT_3_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_33_Y));

	MX2X1LVT mux_l2_in_2_ (
		.B(MX2X1LVT_4_Y),
		.A(MX2X1LVT_5_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_34_Y));

	MX2X1LVT mux_l2_in_3_ (
		.B(MX2X1LVT_6_Y),
		.A(MX2X1LVT_7_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_35_Y));

	MX2X1LVT mux_l2_in_4_ (
		.B(MX2X1LVT_8_Y),
		.A(MX2X1LVT_9_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_36_Y));

	MX2X1LVT mux_l2_in_5_ (
		.B(MX2X1LVT_10_Y),
		.A(MX2X1LVT_11_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_37_Y));

	MX2X1LVT mux_l2_in_6_ (
		.B(MX2X1LVT_12_Y),
		.A(MX2X1LVT_13_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_38_Y));

	MX2X1LVT mux_l2_in_7_ (
		.B(MX2X1LVT_14_Y),
		.A(MX2X1LVT_15_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_39_Y));

	MX2X1LVT mux_l2_in_8_ (
		.B(MX2X1LVT_16_Y),
		.A(MX2X1LVT_17_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_40_Y));

	MX2X1LVT mux_l2_in_9_ (
		.B(MX2X1LVT_18_Y),
		.A(MX2X1LVT_19_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_41_Y));

	MX2X1LVT mux_l2_in_10_ (
		.B(MX2X1LVT_20_Y),
		.A(MX2X1LVT_21_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_42_Y));

	MX2X1LVT mux_l2_in_11_ (
		.B(MX2X1LVT_22_Y),
		.A(MX2X1LVT_23_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_43_Y));

	MX2X1LVT mux_l2_in_12_ (
		.B(MX2X1LVT_24_Y),
		.A(MX2X1LVT_25_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_44_Y));

	MX2X1LVT mux_l2_in_13_ (
		.B(MX2X1LVT_26_Y),
		.A(MX2X1LVT_27_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_45_Y));

	MX2X1LVT mux_l2_in_14_ (
		.B(MX2X1LVT_28_Y),
		.A(MX2X1LVT_29_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_46_Y));

	MX2X1LVT mux_l2_in_15_ (
		.B(MX2X1LVT_30_Y),
		.A(MX2X1LVT_31_Y),
		.S0(sram[1]),
		.Y(MX2X1LVT_47_Y));

	MX2X1LVT mux_l3_in_0_ (
		.B(BUFX4LVT_0_Y),
		.A(BUFX4LVT_1_Y),
		.S0(sram[2]),
		.Y(MX2X1LVT_48_Y));

	MX2X1LVT mux_l3_in_1_ (
		.B(BUFX4LVT_2_Y),
		.A(BUFX4LVT_3_Y),
		.S0(sram[2]),
		.Y(MX2X1LVT_49_Y));

	MX2X1LVT mux_l3_in_2_ (
		.B(BUFX4LVT_4_Y),
		.A(BUFX4LVT_5_Y),
		.S0(sram[2]),
		.Y(MX2X1LVT_50_Y));

	MX2X1LVT mux_l3_in_3_ (
		.B(BUFX4LVT_6_Y),
		.A(BUFX4LVT_7_Y),
		.S0(sram[2]),
		.Y(MX2X1LVT_51_Y));

	MX2X1LVT mux_l3_in_4_ (
		.B(BUFX4LVT_8_Y),
		.A(BUFX4LVT_9_Y),
		.S0(sram[2]),
		.Y(MX2X1LVT_52_Y));

	MX2X1LVT mux_l3_in_5_ (
		.B(BUFX4LVT_10_Y),
		.A(BUFX4LVT_11_Y),
		.S0(sram[2]),
		.Y(MX2X1LVT_53_Y));

	MX2X1LVT mux_l3_in_6_ (
		.B(BUFX4LVT_12_Y),
		.A(BUFX4LVT_13_Y),
		.S0(sram[2]),
		.Y(MX2X1LVT_54_Y));

	MX2X1LVT mux_l3_in_7_ (
		.B(BUFX4LVT_14_Y),
		.A(BUFX4LVT_15_Y),
		.S0(sram[2]),
		.Y(MX2X1LVT_55_Y));

	MX2X1LVT mux_l4_in_0_ (
		.B(MX2X1LVT_48_Y),
		.A(MX2X1LVT_49_Y),
		.S0(sram[3]),
		.Y(MX2X1LVT_56_Y));

	MX2X1LVT mux_l4_in_1_ (
		.B(MX2X1LVT_50_Y),
		.A(MX2X1LVT_51_Y),
		.S0(sram[3]),
		.Y(MX2X1LVT_57_Y));

	MX2X1LVT mux_l4_in_2_ (
		.B(MX2X1LVT_52_Y),
		.A(MX2X1LVT_53_Y),
		.S0(sram[3]),
		.Y(MX2X1LVT_58_Y));

	MX2X1LVT mux_l4_in_3_ (
		.B(MX2X1LVT_54_Y),
		.A(MX2X1LVT_55_Y),
		.S0(sram[3]),
		.Y(MX2X1LVT_59_Y));

	MX2X1LVT mux_l5_in_0_ (
		.B(BUFX4LVT_16_Y),
		.A(BUFX4LVT_17_Y),
		.S0(sram[4]),
		.Y(MX2X1LVT_60_Y));

	MX2X1LVT mux_l5_in_1_ (
		.B(BUFX4LVT_18_Y),
		.A(BUFX4LVT_19_Y),
		.S0(sram[4]),
		.Y(MX2X1LVT_61_Y));

	MX2X1LVT mux_l6_in_0_ (
		.B(MX2X1LVT_60_Y),
		.A(MX2X1LVT_61_Y),
		.S0(sram[5]),
		.Y(MX2X1LVT_62_Y));

	BUFX4LVT BUFX4LVT_0_ (
		.A(MX2X1LVT_32_Y),
		.Y(BUFX4LVT_0_Y));

	BUFX4LVT BUFX4LVT_1_ (
		.A(MX2X1LVT_33_Y),
		.Y(BUFX4LVT_1_Y));

	BUFX4LVT BUFX4LVT_2_ (
		.A(MX2X1LVT_34_Y),
		.Y(BUFX4LVT_2_Y));

	BUFX4LVT BUFX4LVT_3_ (
		.A(MX2X1LVT_35_Y),
		.Y(BUFX4LVT_3_Y));

	BUFX4LVT BUFX4LVT_4_ (
		.A(MX2X1LVT_36_Y),
		.Y(BUFX4LVT_4_Y));

	BUFX4LVT BUFX4LVT_5_ (
		.A(MX2X1LVT_37_Y),
		.Y(BUFX4LVT_5_Y));

	BUFX4LVT BUFX4LVT_6_ (
		.A(MX2X1LVT_38_Y),
		.Y(BUFX4LVT_6_Y));

	BUFX4LVT BUFX4LVT_7_ (
		.A(MX2X1LVT_39_Y),
		.Y(BUFX4LVT_7_Y));

	BUFX4LVT BUFX4LVT_8_ (
		.A(MX2X1LVT_40_Y),
		.Y(BUFX4LVT_8_Y));

	BUFX4LVT BUFX4LVT_9_ (
		.A(MX2X1LVT_41_Y),
		.Y(BUFX4LVT_9_Y));

	BUFX4LVT BUFX4LVT_10_ (
		.A(MX2X1LVT_42_Y),
		.Y(BUFX4LVT_10_Y));

	BUFX4LVT BUFX4LVT_11_ (
		.A(MX2X1LVT_43_Y),
		.Y(BUFX4LVT_11_Y));

	BUFX4LVT BUFX4LVT_12_ (
		.A(MX2X1LVT_44_Y),
		.Y(BUFX4LVT_12_Y));

	BUFX4LVT BUFX4LVT_13_ (
		.A(MX2X1LVT_45_Y),
		.Y(BUFX4LVT_13_Y));

	BUFX4LVT BUFX4LVT_14_ (
		.A(MX2X1LVT_46_Y),
		.Y(BUFX4LVT_14_Y));

	BUFX4LVT BUFX4LVT_15_ (
		.A(MX2X1LVT_47_Y),
		.Y(BUFX4LVT_15_Y));

	BUFX4LVT BUFX4LVT_16_ (
		.A(MX2X1LVT_56_Y),
		.Y(BUFX4LVT_16_Y));

	BUFX4LVT BUFX4LVT_17_ (
		.A(MX2X1LVT_57_Y),
		.Y(BUFX4LVT_17_Y));

	BUFX4LVT BUFX4LVT_18_ (
		.A(MX2X1LVT_58_Y),
		.Y(BUFX4LVT_18_Y));

	BUFX4LVT BUFX4LVT_19_ (
		.A(MX2X1LVT_59_Y),
		.Y(BUFX4LVT_19_Y));

endmodule
// ----- END Verilog module for frac_lut6_mux -----

//----- Default net type -----
`default_nettype wire




