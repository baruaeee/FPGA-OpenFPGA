//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Multiplexers
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Sun Nov  3 02:43:15 2024
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


wire [0:0] const1_0_const1;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_0_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_1_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_2_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_3_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_0_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_1_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_2_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_3_Y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_0_ (
		.A(in[0]),
		.Y(sky130_osu_sc_18T_hs__inv_1_0_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_1_ (
		.A(in[1]),
		.Y(sky130_osu_sc_18T_hs__inv_1_1_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_2_ (
		.A(in[2]),
		.Y(sky130_osu_sc_18T_hs__inv_1_2_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_3_ (
		.A(in[3]),
		.Y(sky130_osu_sc_18T_hs__inv_1_3_Y));

	const1 const1_0_ (
		.const1(const1_0_const1));

	sky130_osu_sc_18T_hs__inv_4 sky130_osu_sc_18T_hs__inv_4_0_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_3_Y),
		.Y(out));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_0_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_0_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_1_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_0_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_0_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_0_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_2_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_1_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_1_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_3_Y),
		.A0(const1_0_const1),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_2_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l3_in_0_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_1_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_2_Y),
		.S0(sram[2]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_3_Y));

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


wire [0:0] const1_0_const1;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_0_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_1_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_0_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_1_Y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_0_ (
		.A(in[0]),
		.Y(sky130_osu_sc_18T_hs__inv_1_0_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_1_ (
		.A(in[1]),
		.Y(sky130_osu_sc_18T_hs__inv_1_1_Y));

	const1 const1_0_ (
		.const1(const1_0_const1));

	sky130_osu_sc_18T_hs__inv_4 sky130_osu_sc_18T_hs__inv_4_0_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_1_Y),
		.Y(out));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_0_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_0_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_1_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_0_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_0_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_0_Y),
		.A0(const1_0_const1),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_1_Y));

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


wire [0:0] const1_0_const1;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_0_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_1_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_2_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_0_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_1_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_2_Y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_0_ (
		.A(in[0]),
		.Y(sky130_osu_sc_18T_hs__inv_1_0_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_1_ (
		.A(in[1]),
		.Y(sky130_osu_sc_18T_hs__inv_1_1_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_2_ (
		.A(in[2]),
		.Y(sky130_osu_sc_18T_hs__inv_1_2_Y));

	const1 const1_0_ (
		.const1(const1_0_const1));

	sky130_osu_sc_18T_hs__inv_4 sky130_osu_sc_18T_hs__inv_4_0_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_2_Y),
		.Y(out));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_0_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_0_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_1_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_0_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_1_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_2_Y),
		.A0(const1_0_const1),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_1_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_0_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_0_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_1_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_2_Y));

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


wire [0:0] const1_0_const1;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_0_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_10_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_11_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_12_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_13_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_14_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_15_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_16_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_17_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_18_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_19_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_1_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_20_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_21_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_22_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_23_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_24_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_25_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_26_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_27_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_28_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_29_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_2_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_30_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_31_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_32_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_33_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_34_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_35_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_36_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_37_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_38_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_39_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_3_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_40_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_41_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_42_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_43_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_44_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_45_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_46_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_47_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_48_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_49_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_4_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_50_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_51_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_52_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_53_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_54_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_55_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_56_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_57_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_58_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_59_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_5_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_6_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_7_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_8_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_9_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_0_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_10_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_11_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_12_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_13_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_14_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_15_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_16_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_17_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_18_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_19_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_1_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_20_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_21_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_22_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_23_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_24_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_25_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_26_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_27_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_28_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_29_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_2_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_30_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_31_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_32_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_33_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_34_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_35_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_36_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_37_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_38_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_39_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_3_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_40_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_41_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_42_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_43_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_44_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_45_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_46_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_47_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_48_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_49_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_4_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_50_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_51_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_52_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_53_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_54_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_55_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_56_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_57_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_58_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_59_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_5_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_6_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_7_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_8_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_9_Y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_0_ (
		.A(in[0]),
		.Y(sky130_osu_sc_18T_hs__inv_1_0_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_1_ (
		.A(in[1]),
		.Y(sky130_osu_sc_18T_hs__inv_1_1_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_2_ (
		.A(in[2]),
		.Y(sky130_osu_sc_18T_hs__inv_1_2_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_3_ (
		.A(in[3]),
		.Y(sky130_osu_sc_18T_hs__inv_1_3_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_4_ (
		.A(in[4]),
		.Y(sky130_osu_sc_18T_hs__inv_1_4_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_5_ (
		.A(in[5]),
		.Y(sky130_osu_sc_18T_hs__inv_1_5_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_6_ (
		.A(in[6]),
		.Y(sky130_osu_sc_18T_hs__inv_1_6_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_7_ (
		.A(in[7]),
		.Y(sky130_osu_sc_18T_hs__inv_1_7_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_8_ (
		.A(in[8]),
		.Y(sky130_osu_sc_18T_hs__inv_1_8_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_9_ (
		.A(in[9]),
		.Y(sky130_osu_sc_18T_hs__inv_1_9_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_10_ (
		.A(in[10]),
		.Y(sky130_osu_sc_18T_hs__inv_1_10_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_11_ (
		.A(in[11]),
		.Y(sky130_osu_sc_18T_hs__inv_1_11_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_12_ (
		.A(in[12]),
		.Y(sky130_osu_sc_18T_hs__inv_1_12_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_13_ (
		.A(in[13]),
		.Y(sky130_osu_sc_18T_hs__inv_1_13_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_14_ (
		.A(in[14]),
		.Y(sky130_osu_sc_18T_hs__inv_1_14_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_15_ (
		.A(in[15]),
		.Y(sky130_osu_sc_18T_hs__inv_1_15_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_16_ (
		.A(in[16]),
		.Y(sky130_osu_sc_18T_hs__inv_1_16_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_17_ (
		.A(in[17]),
		.Y(sky130_osu_sc_18T_hs__inv_1_17_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_18_ (
		.A(in[18]),
		.Y(sky130_osu_sc_18T_hs__inv_1_18_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_19_ (
		.A(in[19]),
		.Y(sky130_osu_sc_18T_hs__inv_1_19_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_20_ (
		.A(in[20]),
		.Y(sky130_osu_sc_18T_hs__inv_1_20_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_21_ (
		.A(in[21]),
		.Y(sky130_osu_sc_18T_hs__inv_1_21_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_22_ (
		.A(in[22]),
		.Y(sky130_osu_sc_18T_hs__inv_1_22_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_23_ (
		.A(in[23]),
		.Y(sky130_osu_sc_18T_hs__inv_1_23_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_24_ (
		.A(in[24]),
		.Y(sky130_osu_sc_18T_hs__inv_1_24_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_25_ (
		.A(in[25]),
		.Y(sky130_osu_sc_18T_hs__inv_1_25_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_26_ (
		.A(in[26]),
		.Y(sky130_osu_sc_18T_hs__inv_1_26_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_27_ (
		.A(in[27]),
		.Y(sky130_osu_sc_18T_hs__inv_1_27_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_28_ (
		.A(in[28]),
		.Y(sky130_osu_sc_18T_hs__inv_1_28_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_29_ (
		.A(in[29]),
		.Y(sky130_osu_sc_18T_hs__inv_1_29_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_30_ (
		.A(in[30]),
		.Y(sky130_osu_sc_18T_hs__inv_1_30_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_31_ (
		.A(in[31]),
		.Y(sky130_osu_sc_18T_hs__inv_1_31_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_32_ (
		.A(in[32]),
		.Y(sky130_osu_sc_18T_hs__inv_1_32_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_33_ (
		.A(in[33]),
		.Y(sky130_osu_sc_18T_hs__inv_1_33_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_34_ (
		.A(in[34]),
		.Y(sky130_osu_sc_18T_hs__inv_1_34_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_35_ (
		.A(in[35]),
		.Y(sky130_osu_sc_18T_hs__inv_1_35_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_36_ (
		.A(in[36]),
		.Y(sky130_osu_sc_18T_hs__inv_1_36_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_37_ (
		.A(in[37]),
		.Y(sky130_osu_sc_18T_hs__inv_1_37_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_38_ (
		.A(in[38]),
		.Y(sky130_osu_sc_18T_hs__inv_1_38_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_39_ (
		.A(in[39]),
		.Y(sky130_osu_sc_18T_hs__inv_1_39_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_40_ (
		.A(in[40]),
		.Y(sky130_osu_sc_18T_hs__inv_1_40_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_41_ (
		.A(in[41]),
		.Y(sky130_osu_sc_18T_hs__inv_1_41_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_42_ (
		.A(in[42]),
		.Y(sky130_osu_sc_18T_hs__inv_1_42_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_43_ (
		.A(in[43]),
		.Y(sky130_osu_sc_18T_hs__inv_1_43_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_44_ (
		.A(in[44]),
		.Y(sky130_osu_sc_18T_hs__inv_1_44_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_45_ (
		.A(in[45]),
		.Y(sky130_osu_sc_18T_hs__inv_1_45_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_46_ (
		.A(in[46]),
		.Y(sky130_osu_sc_18T_hs__inv_1_46_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_47_ (
		.A(in[47]),
		.Y(sky130_osu_sc_18T_hs__inv_1_47_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_48_ (
		.A(in[48]),
		.Y(sky130_osu_sc_18T_hs__inv_1_48_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_49_ (
		.A(in[49]),
		.Y(sky130_osu_sc_18T_hs__inv_1_49_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_50_ (
		.A(in[50]),
		.Y(sky130_osu_sc_18T_hs__inv_1_50_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_51_ (
		.A(in[51]),
		.Y(sky130_osu_sc_18T_hs__inv_1_51_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_52_ (
		.A(in[52]),
		.Y(sky130_osu_sc_18T_hs__inv_1_52_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_53_ (
		.A(in[53]),
		.Y(sky130_osu_sc_18T_hs__inv_1_53_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_54_ (
		.A(in[54]),
		.Y(sky130_osu_sc_18T_hs__inv_1_54_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_55_ (
		.A(in[55]),
		.Y(sky130_osu_sc_18T_hs__inv_1_55_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_56_ (
		.A(in[56]),
		.Y(sky130_osu_sc_18T_hs__inv_1_56_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_57_ (
		.A(in[57]),
		.Y(sky130_osu_sc_18T_hs__inv_1_57_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_58_ (
		.A(in[58]),
		.Y(sky130_osu_sc_18T_hs__inv_1_58_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_59_ (
		.A(in[59]),
		.Y(sky130_osu_sc_18T_hs__inv_1_59_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_60_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_59_Y),
		.Y(out));

	const1 const1_0_ (
		.const1(const1_0_const1));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_0_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_0_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_1_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_0_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_1_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_2_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_3_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_1_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_2_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_4_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_5_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_2_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_3_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_6_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_7_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_3_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_4_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_8_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_9_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_4_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_5_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_10_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_11_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_5_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_6_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_12_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_13_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_6_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_7_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_14_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_15_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_7_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_8_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_16_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_17_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_8_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_9_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_18_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_19_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_9_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_10_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_20_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_21_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_10_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_11_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_22_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_23_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_11_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_12_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_24_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_25_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_12_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_13_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_26_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_27_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_13_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_14_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_28_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_29_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_14_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_15_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_30_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_31_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_15_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_16_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_32_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_33_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_16_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_17_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_34_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_35_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_17_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_18_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_36_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_37_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_18_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_19_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_38_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_39_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_19_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_20_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_40_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_41_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_20_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_21_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_42_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_43_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_21_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_22_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_44_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_45_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_22_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_23_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_46_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_47_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_23_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_24_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_48_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_49_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_24_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_25_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_50_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_51_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_25_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_26_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_52_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_53_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_26_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_27_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_54_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_55_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_27_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_28_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_56_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_57_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_28_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_0_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_0_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_1_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_29_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_1_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_2_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_3_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_30_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_2_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_4_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_5_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_31_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_3_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_6_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_7_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_32_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_4_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_8_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_9_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_33_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_5_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_10_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_11_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_34_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_6_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_12_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_13_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_35_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_7_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_14_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_15_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_36_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_8_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_16_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_17_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_37_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_9_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_18_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_19_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_38_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_10_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_20_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_21_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_39_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_11_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_22_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_23_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_40_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_12_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_24_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_25_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_41_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_13_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_26_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_27_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_42_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_14_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_28_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_58_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_43_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_15_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_59_Y),
		.A0(const1_0_const1),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_44_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l3_in_0_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_29_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_30_Y),
		.S0(sram[2]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_45_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l3_in_1_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_31_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_32_Y),
		.S0(sram[2]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_46_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l3_in_2_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_33_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_34_Y),
		.S0(sram[2]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_47_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l3_in_3_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_35_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_36_Y),
		.S0(sram[2]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_48_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l3_in_4_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_37_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_38_Y),
		.S0(sram[2]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_49_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l3_in_5_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_39_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_40_Y),
		.S0(sram[2]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_50_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l3_in_6_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_41_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_42_Y),
		.S0(sram[2]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_51_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l3_in_7_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_43_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_44_Y),
		.S0(sram[2]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_52_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l4_in_0_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_45_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_46_Y),
		.S0(sram[3]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_53_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l4_in_1_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_47_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_48_Y),
		.S0(sram[3]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_54_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l4_in_2_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_49_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_50_Y),
		.S0(sram[3]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_55_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l4_in_3_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_51_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_52_Y),
		.S0(sram[3]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_56_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l5_in_0_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_53_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_54_Y),
		.S0(sram[4]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_57_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l5_in_1_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_55_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_56_Y),
		.S0(sram[4]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_58_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l6_in_0_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_57_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_58_Y),
		.S0(sram[5]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_59_Y));

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


wire [0:0] const1_0_const1;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_0_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_1_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_0_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_1_Y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_0_ (
		.A(in[0]),
		.Y(sky130_osu_sc_18T_hs__inv_1_0_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_1_ (
		.A(in[1]),
		.Y(sky130_osu_sc_18T_hs__inv_1_1_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_2_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_1_Y),
		.Y(out));

	const1 const1_0_ (
		.const1(const1_0_const1));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_0_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_0_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_1_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_0_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_0_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_0_Y),
		.A0(const1_0_const1),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_1_Y));

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


wire [0:0] sky130_osu_sc_18T_hs__buf_4_0_Y;
wire [0:0] sky130_osu_sc_18T_hs__buf_4_10_Y;
wire [0:0] sky130_osu_sc_18T_hs__buf_4_11_Y;
wire [0:0] sky130_osu_sc_18T_hs__buf_4_12_Y;
wire [0:0] sky130_osu_sc_18T_hs__buf_4_13_Y;
wire [0:0] sky130_osu_sc_18T_hs__buf_4_14_Y;
wire [0:0] sky130_osu_sc_18T_hs__buf_4_15_Y;
wire [0:0] sky130_osu_sc_18T_hs__buf_4_16_Y;
wire [0:0] sky130_osu_sc_18T_hs__buf_4_17_Y;
wire [0:0] sky130_osu_sc_18T_hs__buf_4_18_Y;
wire [0:0] sky130_osu_sc_18T_hs__buf_4_19_Y;
wire [0:0] sky130_osu_sc_18T_hs__buf_4_1_Y;
wire [0:0] sky130_osu_sc_18T_hs__buf_4_2_Y;
wire [0:0] sky130_osu_sc_18T_hs__buf_4_3_Y;
wire [0:0] sky130_osu_sc_18T_hs__buf_4_4_Y;
wire [0:0] sky130_osu_sc_18T_hs__buf_4_5_Y;
wire [0:0] sky130_osu_sc_18T_hs__buf_4_6_Y;
wire [0:0] sky130_osu_sc_18T_hs__buf_4_7_Y;
wire [0:0] sky130_osu_sc_18T_hs__buf_4_8_Y;
wire [0:0] sky130_osu_sc_18T_hs__buf_4_9_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_0_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_10_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_11_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_12_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_13_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_14_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_15_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_16_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_17_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_18_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_19_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_1_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_20_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_21_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_22_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_23_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_24_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_25_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_26_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_27_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_28_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_29_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_2_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_30_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_31_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_32_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_33_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_34_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_35_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_36_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_37_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_38_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_39_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_3_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_40_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_41_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_42_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_43_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_44_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_45_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_46_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_47_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_48_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_49_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_4_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_50_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_51_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_52_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_53_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_54_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_55_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_56_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_57_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_58_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_59_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_5_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_60_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_61_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_62_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_63_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_6_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_7_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_8_Y;
wire [0:0] sky130_osu_sc_18T_hs__inv_1_9_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_0_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_10_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_11_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_12_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_13_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_14_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_15_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_16_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_17_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_18_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_19_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_1_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_20_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_21_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_22_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_23_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_24_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_25_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_26_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_27_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_28_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_29_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_2_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_30_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_31_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_32_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_33_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_34_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_35_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_36_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_37_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_38_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_39_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_3_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_40_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_41_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_42_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_43_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_44_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_45_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_46_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_47_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_48_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_49_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_4_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_50_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_51_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_52_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_53_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_54_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_55_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_56_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_57_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_58_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_59_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_5_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_60_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_61_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_62_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_6_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_7_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_8_Y;
wire [0:0] sky130_osu_sc_18T_hs__mux2_1_9_Y;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_0_ (
		.A(in[0]),
		.Y(sky130_osu_sc_18T_hs__inv_1_0_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_1_ (
		.A(in[1]),
		.Y(sky130_osu_sc_18T_hs__inv_1_1_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_2_ (
		.A(in[2]),
		.Y(sky130_osu_sc_18T_hs__inv_1_2_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_3_ (
		.A(in[3]),
		.Y(sky130_osu_sc_18T_hs__inv_1_3_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_4_ (
		.A(in[4]),
		.Y(sky130_osu_sc_18T_hs__inv_1_4_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_5_ (
		.A(in[5]),
		.Y(sky130_osu_sc_18T_hs__inv_1_5_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_6_ (
		.A(in[6]),
		.Y(sky130_osu_sc_18T_hs__inv_1_6_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_7_ (
		.A(in[7]),
		.Y(sky130_osu_sc_18T_hs__inv_1_7_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_8_ (
		.A(in[8]),
		.Y(sky130_osu_sc_18T_hs__inv_1_8_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_9_ (
		.A(in[9]),
		.Y(sky130_osu_sc_18T_hs__inv_1_9_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_10_ (
		.A(in[10]),
		.Y(sky130_osu_sc_18T_hs__inv_1_10_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_11_ (
		.A(in[11]),
		.Y(sky130_osu_sc_18T_hs__inv_1_11_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_12_ (
		.A(in[12]),
		.Y(sky130_osu_sc_18T_hs__inv_1_12_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_13_ (
		.A(in[13]),
		.Y(sky130_osu_sc_18T_hs__inv_1_13_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_14_ (
		.A(in[14]),
		.Y(sky130_osu_sc_18T_hs__inv_1_14_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_15_ (
		.A(in[15]),
		.Y(sky130_osu_sc_18T_hs__inv_1_15_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_16_ (
		.A(in[16]),
		.Y(sky130_osu_sc_18T_hs__inv_1_16_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_17_ (
		.A(in[17]),
		.Y(sky130_osu_sc_18T_hs__inv_1_17_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_18_ (
		.A(in[18]),
		.Y(sky130_osu_sc_18T_hs__inv_1_18_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_19_ (
		.A(in[19]),
		.Y(sky130_osu_sc_18T_hs__inv_1_19_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_20_ (
		.A(in[20]),
		.Y(sky130_osu_sc_18T_hs__inv_1_20_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_21_ (
		.A(in[21]),
		.Y(sky130_osu_sc_18T_hs__inv_1_21_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_22_ (
		.A(in[22]),
		.Y(sky130_osu_sc_18T_hs__inv_1_22_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_23_ (
		.A(in[23]),
		.Y(sky130_osu_sc_18T_hs__inv_1_23_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_24_ (
		.A(in[24]),
		.Y(sky130_osu_sc_18T_hs__inv_1_24_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_25_ (
		.A(in[25]),
		.Y(sky130_osu_sc_18T_hs__inv_1_25_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_26_ (
		.A(in[26]),
		.Y(sky130_osu_sc_18T_hs__inv_1_26_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_27_ (
		.A(in[27]),
		.Y(sky130_osu_sc_18T_hs__inv_1_27_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_28_ (
		.A(in[28]),
		.Y(sky130_osu_sc_18T_hs__inv_1_28_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_29_ (
		.A(in[29]),
		.Y(sky130_osu_sc_18T_hs__inv_1_29_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_30_ (
		.A(in[30]),
		.Y(sky130_osu_sc_18T_hs__inv_1_30_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_31_ (
		.A(in[31]),
		.Y(sky130_osu_sc_18T_hs__inv_1_31_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_32_ (
		.A(in[32]),
		.Y(sky130_osu_sc_18T_hs__inv_1_32_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_33_ (
		.A(in[33]),
		.Y(sky130_osu_sc_18T_hs__inv_1_33_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_34_ (
		.A(in[34]),
		.Y(sky130_osu_sc_18T_hs__inv_1_34_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_35_ (
		.A(in[35]),
		.Y(sky130_osu_sc_18T_hs__inv_1_35_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_36_ (
		.A(in[36]),
		.Y(sky130_osu_sc_18T_hs__inv_1_36_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_37_ (
		.A(in[37]),
		.Y(sky130_osu_sc_18T_hs__inv_1_37_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_38_ (
		.A(in[38]),
		.Y(sky130_osu_sc_18T_hs__inv_1_38_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_39_ (
		.A(in[39]),
		.Y(sky130_osu_sc_18T_hs__inv_1_39_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_40_ (
		.A(in[40]),
		.Y(sky130_osu_sc_18T_hs__inv_1_40_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_41_ (
		.A(in[41]),
		.Y(sky130_osu_sc_18T_hs__inv_1_41_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_42_ (
		.A(in[42]),
		.Y(sky130_osu_sc_18T_hs__inv_1_42_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_43_ (
		.A(in[43]),
		.Y(sky130_osu_sc_18T_hs__inv_1_43_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_44_ (
		.A(in[44]),
		.Y(sky130_osu_sc_18T_hs__inv_1_44_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_45_ (
		.A(in[45]),
		.Y(sky130_osu_sc_18T_hs__inv_1_45_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_46_ (
		.A(in[46]),
		.Y(sky130_osu_sc_18T_hs__inv_1_46_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_47_ (
		.A(in[47]),
		.Y(sky130_osu_sc_18T_hs__inv_1_47_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_48_ (
		.A(in[48]),
		.Y(sky130_osu_sc_18T_hs__inv_1_48_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_49_ (
		.A(in[49]),
		.Y(sky130_osu_sc_18T_hs__inv_1_49_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_50_ (
		.A(in[50]),
		.Y(sky130_osu_sc_18T_hs__inv_1_50_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_51_ (
		.A(in[51]),
		.Y(sky130_osu_sc_18T_hs__inv_1_51_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_52_ (
		.A(in[52]),
		.Y(sky130_osu_sc_18T_hs__inv_1_52_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_53_ (
		.A(in[53]),
		.Y(sky130_osu_sc_18T_hs__inv_1_53_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_54_ (
		.A(in[54]),
		.Y(sky130_osu_sc_18T_hs__inv_1_54_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_55_ (
		.A(in[55]),
		.Y(sky130_osu_sc_18T_hs__inv_1_55_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_56_ (
		.A(in[56]),
		.Y(sky130_osu_sc_18T_hs__inv_1_56_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_57_ (
		.A(in[57]),
		.Y(sky130_osu_sc_18T_hs__inv_1_57_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_58_ (
		.A(in[58]),
		.Y(sky130_osu_sc_18T_hs__inv_1_58_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_59_ (
		.A(in[59]),
		.Y(sky130_osu_sc_18T_hs__inv_1_59_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_60_ (
		.A(in[60]),
		.Y(sky130_osu_sc_18T_hs__inv_1_60_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_61_ (
		.A(in[61]),
		.Y(sky130_osu_sc_18T_hs__inv_1_61_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_62_ (
		.A(in[62]),
		.Y(sky130_osu_sc_18T_hs__inv_1_62_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_63_ (
		.A(in[63]),
		.Y(sky130_osu_sc_18T_hs__inv_1_63_Y));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_64_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_60_Y),
		.Y(lut5_out[0]));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_65_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_61_Y),
		.Y(lut5_out[1]));

	sky130_osu_sc_18T_hs__inv_1 sky130_osu_sc_18T_hs__inv_1_66_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_62_Y),
		.Y(lut6_out));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_0_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_0_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_1_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_0_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_1_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_2_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_3_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_1_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_2_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_4_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_5_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_2_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_3_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_6_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_7_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_3_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_4_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_8_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_9_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_4_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_5_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_10_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_11_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_5_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_6_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_12_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_13_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_6_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_7_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_14_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_15_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_7_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_8_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_16_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_17_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_8_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_9_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_18_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_19_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_9_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_10_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_20_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_21_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_10_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_11_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_22_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_23_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_11_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_12_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_24_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_25_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_12_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_13_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_26_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_27_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_13_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_14_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_28_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_29_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_14_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_15_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_30_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_31_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_15_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_16_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_32_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_33_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_16_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_17_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_34_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_35_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_17_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_18_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_36_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_37_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_18_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_19_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_38_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_39_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_19_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_20_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_40_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_41_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_20_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_21_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_42_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_43_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_21_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_22_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_44_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_45_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_22_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_23_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_46_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_47_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_23_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_24_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_48_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_49_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_24_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_25_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_50_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_51_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_25_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_26_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_52_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_53_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_26_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_27_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_54_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_55_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_27_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_28_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_56_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_57_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_28_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_29_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_58_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_59_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_29_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_30_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_60_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_61_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_30_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l1_in_31_ (
		.A1(sky130_osu_sc_18T_hs__inv_1_62_Y),
		.A0(sky130_osu_sc_18T_hs__inv_1_63_Y),
		.S0(sram[0]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_31_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_0_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_0_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_1_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_32_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_1_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_2_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_3_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_33_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_2_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_4_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_5_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_34_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_3_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_6_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_7_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_35_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_4_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_8_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_9_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_36_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_5_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_10_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_11_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_37_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_6_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_12_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_13_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_38_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_7_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_14_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_15_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_39_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_8_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_16_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_17_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_40_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_9_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_18_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_19_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_41_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_10_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_20_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_21_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_42_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_11_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_22_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_23_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_43_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_12_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_24_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_25_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_44_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_13_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_26_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_27_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_45_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_14_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_28_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_29_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_46_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l2_in_15_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_30_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_31_Y),
		.S0(sram[1]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_47_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l3_in_0_ (
		.A1(sky130_osu_sc_18T_hs__buf_4_0_Y),
		.A0(sky130_osu_sc_18T_hs__buf_4_1_Y),
		.S0(sram[2]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_48_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l3_in_1_ (
		.A1(sky130_osu_sc_18T_hs__buf_4_2_Y),
		.A0(sky130_osu_sc_18T_hs__buf_4_3_Y),
		.S0(sram[2]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_49_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l3_in_2_ (
		.A1(sky130_osu_sc_18T_hs__buf_4_4_Y),
		.A0(sky130_osu_sc_18T_hs__buf_4_5_Y),
		.S0(sram[2]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_50_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l3_in_3_ (
		.A1(sky130_osu_sc_18T_hs__buf_4_6_Y),
		.A0(sky130_osu_sc_18T_hs__buf_4_7_Y),
		.S0(sram[2]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_51_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l3_in_4_ (
		.A1(sky130_osu_sc_18T_hs__buf_4_8_Y),
		.A0(sky130_osu_sc_18T_hs__buf_4_9_Y),
		.S0(sram[2]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_52_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l3_in_5_ (
		.A1(sky130_osu_sc_18T_hs__buf_4_10_Y),
		.A0(sky130_osu_sc_18T_hs__buf_4_11_Y),
		.S0(sram[2]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_53_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l3_in_6_ (
		.A1(sky130_osu_sc_18T_hs__buf_4_12_Y),
		.A0(sky130_osu_sc_18T_hs__buf_4_13_Y),
		.S0(sram[2]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_54_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l3_in_7_ (
		.A1(sky130_osu_sc_18T_hs__buf_4_14_Y),
		.A0(sky130_osu_sc_18T_hs__buf_4_15_Y),
		.S0(sram[2]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_55_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l4_in_0_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_48_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_49_Y),
		.S0(sram[3]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_56_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l4_in_1_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_50_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_51_Y),
		.S0(sram[3]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_57_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l4_in_2_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_52_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_53_Y),
		.S0(sram[3]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_58_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l4_in_3_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_54_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_55_Y),
		.S0(sram[3]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_59_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l5_in_0_ (
		.A1(sky130_osu_sc_18T_hs__buf_4_16_Y),
		.A0(sky130_osu_sc_18T_hs__buf_4_17_Y),
		.S0(sram[4]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_60_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l5_in_1_ (
		.A1(sky130_osu_sc_18T_hs__buf_4_18_Y),
		.A0(sky130_osu_sc_18T_hs__buf_4_19_Y),
		.S0(sram[4]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_61_Y));

	sky130_osu_sc_18T_hs__mux2_1 mux_l6_in_0_ (
		.A1(sky130_osu_sc_18T_hs__mux2_1_60_Y),
		.A0(sky130_osu_sc_18T_hs__mux2_1_61_Y),
		.S0(sram[5]),
		.Y(sky130_osu_sc_18T_hs__mux2_1_62_Y));

	sky130_osu_sc_18T_hs__buf_4 sky130_osu_sc_18T_hs__buf_4_0_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_32_Y),
		.Y(sky130_osu_sc_18T_hs__buf_4_0_Y));

	sky130_osu_sc_18T_hs__buf_4 sky130_osu_sc_18T_hs__buf_4_1_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_33_Y),
		.Y(sky130_osu_sc_18T_hs__buf_4_1_Y));

	sky130_osu_sc_18T_hs__buf_4 sky130_osu_sc_18T_hs__buf_4_2_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_34_Y),
		.Y(sky130_osu_sc_18T_hs__buf_4_2_Y));

	sky130_osu_sc_18T_hs__buf_4 sky130_osu_sc_18T_hs__buf_4_3_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_35_Y),
		.Y(sky130_osu_sc_18T_hs__buf_4_3_Y));

	sky130_osu_sc_18T_hs__buf_4 sky130_osu_sc_18T_hs__buf_4_4_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_36_Y),
		.Y(sky130_osu_sc_18T_hs__buf_4_4_Y));

	sky130_osu_sc_18T_hs__buf_4 sky130_osu_sc_18T_hs__buf_4_5_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_37_Y),
		.Y(sky130_osu_sc_18T_hs__buf_4_5_Y));

	sky130_osu_sc_18T_hs__buf_4 sky130_osu_sc_18T_hs__buf_4_6_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_38_Y),
		.Y(sky130_osu_sc_18T_hs__buf_4_6_Y));

	sky130_osu_sc_18T_hs__buf_4 sky130_osu_sc_18T_hs__buf_4_7_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_39_Y),
		.Y(sky130_osu_sc_18T_hs__buf_4_7_Y));

	sky130_osu_sc_18T_hs__buf_4 sky130_osu_sc_18T_hs__buf_4_8_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_40_Y),
		.Y(sky130_osu_sc_18T_hs__buf_4_8_Y));

	sky130_osu_sc_18T_hs__buf_4 sky130_osu_sc_18T_hs__buf_4_9_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_41_Y),
		.Y(sky130_osu_sc_18T_hs__buf_4_9_Y));

	sky130_osu_sc_18T_hs__buf_4 sky130_osu_sc_18T_hs__buf_4_10_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_42_Y),
		.Y(sky130_osu_sc_18T_hs__buf_4_10_Y));

	sky130_osu_sc_18T_hs__buf_4 sky130_osu_sc_18T_hs__buf_4_11_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_43_Y),
		.Y(sky130_osu_sc_18T_hs__buf_4_11_Y));

	sky130_osu_sc_18T_hs__buf_4 sky130_osu_sc_18T_hs__buf_4_12_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_44_Y),
		.Y(sky130_osu_sc_18T_hs__buf_4_12_Y));

	sky130_osu_sc_18T_hs__buf_4 sky130_osu_sc_18T_hs__buf_4_13_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_45_Y),
		.Y(sky130_osu_sc_18T_hs__buf_4_13_Y));

	sky130_osu_sc_18T_hs__buf_4 sky130_osu_sc_18T_hs__buf_4_14_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_46_Y),
		.Y(sky130_osu_sc_18T_hs__buf_4_14_Y));

	sky130_osu_sc_18T_hs__buf_4 sky130_osu_sc_18T_hs__buf_4_15_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_47_Y),
		.Y(sky130_osu_sc_18T_hs__buf_4_15_Y));

	sky130_osu_sc_18T_hs__buf_4 sky130_osu_sc_18T_hs__buf_4_16_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_56_Y),
		.Y(sky130_osu_sc_18T_hs__buf_4_16_Y));

	sky130_osu_sc_18T_hs__buf_4 sky130_osu_sc_18T_hs__buf_4_17_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_57_Y),
		.Y(sky130_osu_sc_18T_hs__buf_4_17_Y));

	sky130_osu_sc_18T_hs__buf_4 sky130_osu_sc_18T_hs__buf_4_18_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_58_Y),
		.Y(sky130_osu_sc_18T_hs__buf_4_18_Y));

	sky130_osu_sc_18T_hs__buf_4 sky130_osu_sc_18T_hs__buf_4_19_ (
		.A(sky130_osu_sc_18T_hs__mux2_1_59_Y),
		.Y(sky130_osu_sc_18T_hs__buf_4_19_Y));

endmodule
// ----- END Verilog module for frac_lut6_mux -----

//----- Default net type -----
`default_nettype wire




