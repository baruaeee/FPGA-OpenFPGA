//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Top-level Verilog module for FPGA
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Nov 21 02:53:53 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for fpga_top -----
module fpga_top(PAD_pReset,
                PAD_prog_clk,
                PAD_set,
                PAD_reset,
                PAD_clk,
                gfpga_pad_GPIO_PAD,
                PAD_ccff_head,
                PAD_ccff_tail,
		PAD_VDD, PAD_VSS);
//----- PG Pins -----
inout [0:2] PAD_VDD;
inout [0:1] PAD_VSS;
//----- GLOBAL PORTS -----
input [0:0] PAD_pReset;
//----- GLOBAL PORTS -----
input [0:0] PAD_prog_clk;
//----- GLOBAL PORTS -----
input [0:0] PAD_set;
//----- GLOBAL PORTS -----
input [0:0] PAD_reset;
//----- GLOBAL PORTS -----
input [0:0] PAD_clk;
//----- GPIO PORTS -----
inout [0:31] gfpga_pad_GPIO_PAD;
//----- INPUT PORTS -----
input [0:0] PAD_ccff_head;
//----- OUTPUT PORTS -----
output [0:0] PAD_ccff_tail;

//----- BEGIN wire-connection ports -----
wire [0:0] pReset;
//----- GLOBAL PORTS -----
wire [0:0] prog_clk;
//----- GLOBAL PORTS -----
wire [0:0] set;
//----- GLOBAL PORTS -----
wire [0:0] reset;
//----- GLOBAL PORTS -----
wire [0:0] clk;
//----- INPUT PORTS -----
wire [0:0] ccff_head;
//----- OUTPUT PORTS -----
wire [0:0] ccff_tail;
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_;
wire [0:0] cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_1__pin_outpad_0_;
wire [0:0] cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_2__pin_outpad_0_;
wire [0:0] cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_3__pin_outpad_0_;
wire [0:0] cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_4__pin_outpad_0_;
wire [0:0] cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_5__pin_outpad_0_;
wire [0:0] cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_6__pin_outpad_0_;
wire [0:0] cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_7__pin_outpad_0_;
wire [0:0] cbx_1__0__0_ccff_tail;
wire [0:9] cbx_1__0__0_chanx_left_out;
wire [0:9] cbx_1__0__0_chanx_right_out;
wire [0:0] cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_10_;
wire [0:0] cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_14_;
wire [0:0] cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_18_;
wire [0:0] cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_22_;
wire [0:0] cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_26_;
wire [0:0] cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_2_;
wire [0:0] cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_30_;
wire [0:0] cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_34_;
wire [0:0] cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_38_;
wire [0:0] cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_6_;
wire [0:0] cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_0_;
wire [0:0] cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_12_;
wire [0:0] cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_16_;
wire [0:0] cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_20_;
wire [0:0] cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_24_;
wire [0:0] cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_28_;
wire [0:0] cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_32_;
wire [0:0] cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_36_;
wire [0:0] cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_4_;
wire [0:0] cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_8_;
wire [0:0] cbx_1__1__0_ccff_tail;
wire [0:9] cbx_1__1__0_chanx_left_out;
wire [0:9] cbx_1__1__0_chanx_right_out;
wire [0:0] cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_0__pin_outpad_0_;
wire [0:0] cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_1__pin_outpad_0_;
wire [0:0] cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_2__pin_outpad_0_;
wire [0:0] cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_3__pin_outpad_0_;
wire [0:0] cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_4__pin_outpad_0_;
wire [0:0] cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_5__pin_outpad_0_;
wire [0:0] cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_6__pin_outpad_0_;
wire [0:0] cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_7__pin_outpad_0_;
wire [0:0] cby_0__1__0_ccff_tail;
wire [0:9] cby_0__1__0_chany_bottom_out;
wire [0:9] cby_0__1__0_chany_top_out;
wire [0:0] cby_0__1__0_left_grid_right_width_0_height_0_subtile_0__pin_outpad_0_;
wire [0:0] cby_0__1__0_left_grid_right_width_0_height_0_subtile_1__pin_outpad_0_;
wire [0:0] cby_0__1__0_left_grid_right_width_0_height_0_subtile_2__pin_outpad_0_;
wire [0:0] cby_0__1__0_left_grid_right_width_0_height_0_subtile_3__pin_outpad_0_;
wire [0:0] cby_0__1__0_left_grid_right_width_0_height_0_subtile_4__pin_outpad_0_;
wire [0:0] cby_0__1__0_left_grid_right_width_0_height_0_subtile_5__pin_outpad_0_;
wire [0:0] cby_0__1__0_left_grid_right_width_0_height_0_subtile_6__pin_outpad_0_;
wire [0:0] cby_0__1__0_left_grid_right_width_0_height_0_subtile_7__pin_outpad_0_;
wire [0:0] cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_11_;
wire [0:0] cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_15_;
wire [0:0] cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_19_;
wire [0:0] cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_23_;
wire [0:0] cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_27_;
wire [0:0] cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_31_;
wire [0:0] cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_35_;
wire [0:0] cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_39_;
wire [0:0] cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_3_;
wire [0:0] cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_7_;
wire [0:0] cby_1__1__0_ccff_tail;
wire [0:9] cby_1__1__0_chany_bottom_out;
wire [0:9] cby_1__1__0_chany_top_out;
wire [0:0] cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_13_;
wire [0:0] cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_17_;
wire [0:0] cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_1_;
wire [0:0] cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_21_;
wire [0:0] cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_25_;
wire [0:0] cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_29_;
wire [0:0] cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_33_;
wire [0:0] cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_37_;
wire [0:0] cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_5_;
wire [0:0] cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_9_;
wire [0:0] cby_1__1__0_right_grid_left_width_0_height_0_subtile_0__pin_outpad_0_;
wire [0:0] cby_1__1__0_right_grid_left_width_0_height_0_subtile_1__pin_outpad_0_;
wire [0:0] cby_1__1__0_right_grid_left_width_0_height_0_subtile_2__pin_outpad_0_;
wire [0:0] cby_1__1__0_right_grid_left_width_0_height_0_subtile_3__pin_outpad_0_;
wire [0:0] cby_1__1__0_right_grid_left_width_0_height_0_subtile_4__pin_outpad_0_;
wire [0:0] cby_1__1__0_right_grid_left_width_0_height_0_subtile_5__pin_outpad_0_;
wire [0:0] cby_1__1__0_right_grid_left_width_0_height_0_subtile_6__pin_outpad_0_;
wire [0:0] cby_1__1__0_right_grid_left_width_0_height_0_subtile_7__pin_outpad_0_;
wire [0:0] grid_clb_0_bottom_width_0_height_0_subtile_0__pin_O_10_;
wire [0:0] grid_clb_0_bottom_width_0_height_0_subtile_0__pin_O_14_;
wire [0:0] grid_clb_0_bottom_width_0_height_0_subtile_0__pin_O_18_;
wire [0:0] grid_clb_0_bottom_width_0_height_0_subtile_0__pin_O_2_;
wire [0:0] grid_clb_0_bottom_width_0_height_0_subtile_0__pin_O_6_;
wire [0:0] grid_clb_0_left_width_0_height_0_subtile_0__pin_O_11_;
wire [0:0] grid_clb_0_left_width_0_height_0_subtile_0__pin_O_15_;
wire [0:0] grid_clb_0_left_width_0_height_0_subtile_0__pin_O_19_;
wire [0:0] grid_clb_0_left_width_0_height_0_subtile_0__pin_O_3_;
wire [0:0] grid_clb_0_left_width_0_height_0_subtile_0__pin_O_7_;
wire [0:0] grid_clb_0_right_width_0_height_0_subtile_0__pin_O_13_;
wire [0:0] grid_clb_0_right_width_0_height_0_subtile_0__pin_O_17_;
wire [0:0] grid_clb_0_right_width_0_height_0_subtile_0__pin_O_1_;
wire [0:0] grid_clb_0_right_width_0_height_0_subtile_0__pin_O_5_;
wire [0:0] grid_clb_0_right_width_0_height_0_subtile_0__pin_O_9_;
wire [0:0] grid_clb_0_top_width_0_height_0_subtile_0__pin_O_0_;
wire [0:0] grid_clb_0_top_width_0_height_0_subtile_0__pin_O_12_;
wire [0:0] grid_clb_0_top_width_0_height_0_subtile_0__pin_O_16_;
wire [0:0] grid_clb_0_top_width_0_height_0_subtile_0__pin_O_4_;
wire [0:0] grid_clb_0_top_width_0_height_0_subtile_0__pin_O_8_;
wire [0:0] grid_clb_1__1__undriven_top_width_0_height_0_subtile_0__pin_clk_0_;
wire [0:0] grid_io_bottom_0_ccff_tail;
wire [0:0] grid_io_bottom_0_top_width_0_height_0_subtile_0__pin_inpad_0_;
wire [0:0] grid_io_bottom_0_top_width_0_height_0_subtile_1__pin_inpad_0_;
wire [0:0] grid_io_bottom_0_top_width_0_height_0_subtile_2__pin_inpad_0_;
wire [0:0] grid_io_bottom_0_top_width_0_height_0_subtile_3__pin_inpad_0_;
wire [0:0] grid_io_bottom_0_top_width_0_height_0_subtile_4__pin_inpad_0_;
wire [0:0] grid_io_bottom_0_top_width_0_height_0_subtile_5__pin_inpad_0_;
wire [0:0] grid_io_bottom_0_top_width_0_height_0_subtile_6__pin_inpad_0_;
wire [0:0] grid_io_bottom_0_top_width_0_height_0_subtile_7__pin_inpad_0_;
wire [0:0] grid_io_left_0_ccff_tail;
wire [0:0] grid_io_left_0_right_width_0_height_0_subtile_0__pin_inpad_0_;
wire [0:0] grid_io_left_0_right_width_0_height_0_subtile_1__pin_inpad_0_;
wire [0:0] grid_io_left_0_right_width_0_height_0_subtile_2__pin_inpad_0_;
wire [0:0] grid_io_left_0_right_width_0_height_0_subtile_3__pin_inpad_0_;
wire [0:0] grid_io_left_0_right_width_0_height_0_subtile_4__pin_inpad_0_;
wire [0:0] grid_io_left_0_right_width_0_height_0_subtile_5__pin_inpad_0_;
wire [0:0] grid_io_left_0_right_width_0_height_0_subtile_6__pin_inpad_0_;
wire [0:0] grid_io_left_0_right_width_0_height_0_subtile_7__pin_inpad_0_;
wire [0:0] grid_io_right_0_ccff_tail;
wire [0:0] grid_io_right_0_left_width_0_height_0_subtile_0__pin_inpad_0_;
wire [0:0] grid_io_right_0_left_width_0_height_0_subtile_1__pin_inpad_0_;
wire [0:0] grid_io_right_0_left_width_0_height_0_subtile_2__pin_inpad_0_;
wire [0:0] grid_io_right_0_left_width_0_height_0_subtile_3__pin_inpad_0_;
wire [0:0] grid_io_right_0_left_width_0_height_0_subtile_4__pin_inpad_0_;
wire [0:0] grid_io_right_0_left_width_0_height_0_subtile_5__pin_inpad_0_;
wire [0:0] grid_io_right_0_left_width_0_height_0_subtile_6__pin_inpad_0_;
wire [0:0] grid_io_right_0_left_width_0_height_0_subtile_7__pin_inpad_0_;
wire [0:0] grid_io_top_0_bottom_width_0_height_0_subtile_0__pin_inpad_0_;
wire [0:0] grid_io_top_0_bottom_width_0_height_0_subtile_1__pin_inpad_0_;
wire [0:0] grid_io_top_0_bottom_width_0_height_0_subtile_2__pin_inpad_0_;
wire [0:0] grid_io_top_0_bottom_width_0_height_0_subtile_3__pin_inpad_0_;
wire [0:0] grid_io_top_0_bottom_width_0_height_0_subtile_4__pin_inpad_0_;
wire [0:0] grid_io_top_0_bottom_width_0_height_0_subtile_5__pin_inpad_0_;
wire [0:0] grid_io_top_0_bottom_width_0_height_0_subtile_6__pin_inpad_0_;
wire [0:0] grid_io_top_0_bottom_width_0_height_0_subtile_7__pin_inpad_0_;
wire [0:0] grid_io_top_0_ccff_tail;
wire [0:0] sb_0__0__0_ccff_tail;
wire [0:9] sb_0__0__0_chanx_right_out;
wire [0:9] sb_0__0__0_chany_top_out;
wire [0:0] sb_0__1__0_ccff_tail;
wire [0:9] sb_0__1__0_chanx_right_out;
wire [0:9] sb_0__1__0_chany_bottom_out;
wire [0:0] sb_1__0__0_ccff_tail;
wire [0:9] sb_1__0__0_chanx_left_out;
wire [0:9] sb_1__0__0_chany_top_out;
wire [0:0] sb_1__1__0_ccff_tail;
wire [0:9] sb_1__1__0_chanx_left_out;
wire [0:9] sb_1__1__0_chany_bottom_out;

// ----- BEGIN PG cell -----
wire p_core, g_core, amuxbus_a, amuxbus_b, drn_hvc, ogc_hvc, src_bdy_hvc, vssa;
wire vdda, vswitch, vddio_q, vcchib, vddio, vccd, vssio, vssd, vssio_q;

	sky130_fd_io__top_power_hvc_wpadv2 pad_pwr1(.P_PAD (PAD_VDD[0]), 
	.P_CORE (p_core), .AMUXBUS_A (amuxbus_a),
	.AMUXBUS_B (amuxbus_b), .DRN_HVC (drn_hvc),
	.OGC_HVC (ogc_hvc), .SRC_BDY_HVC (src_bdy_hvc), .VSSA
	(vssa), .VDDA (vdda), .VSWITCH (vswitch),
	.VDDIO_Q (vddio_q), .VCCHIB (vcchib), .VDDIO (vddio), .VCCD
	(vccd), .VSSIO (vssio), .VSSD (vssd), .VSSIO_Q (vssio_q));

	sky130_fd_io__top_power_hvc_wpadv2 pad_pwr2(.P_PAD(PAD_VDD[1]), 
	.P_CORE (p_core), .AMUXBUS_A (amuxbus_a),
	.AMUXBUS_B (amuxbus_b), .DRN_HVC (drn_hvc),
	.OGC_HVC (ogc_hvc), .SRC_BDY_HVC (src_bdy_hvc), .VSSA
	(vssa), .VDDA (vdda), .VSWITCH (vswitch),
	.VDDIO_Q (vddio_q), .VCCHIB (vcchib), .VDDIO (vddio), .VCCD
	(vccd), .VSSIO (vssio), .VSSD (vssd), .VSSIO_Q (vssio_q));

	sky130_fd_io__top_power_hvc_wpadv2 pad_pwr3(.P_PAD(PAD_VDD[2]), 
	.P_CORE (p_core), .AMUXBUS_A (amuxbus_a),
	.AMUXBUS_B (amuxbus_b), .DRN_HVC (drn_hvc),
	.OGC_HVC (ogc_hvc), .SRC_BDY_HVC (src_bdy_hvc), .VSSA
	(vssa), .VDDA (vdda), .VSWITCH (vswitch),
	.VDDIO_Q (vddio_q), .VCCHIB (vcchib), .VDDIO (vddio), .VCCD
	(vccd), .VSSIO (vssio), .VSSD (vssd), .VSSIO_Q (vssio_q));

	sky130_fd_io__top_ground_hvc_wpad pad_gnd1(.G_PAD(PAD_VSS[0]), 
	.G_CORE (g_core), .AMUXBUS_A (amuxbus_a),
	.AMUXBUS_B (amuxbus_b), .DRN_HVC (drn_hvc),
	.OGC_HVC (ogc_hvc), .SRC_BDY_HVC (src_bdy_hvc), .VSSA
	(vssa), .VDDA (vdda), .VSWITCH (vswitch),
	.VDDIO_Q (vddio_q), .VCCHIB (vcchib), .VDDIO (vddio), .VCCD
	(vccd), .VSSIO (vssio), .VSSD (vssd), .VSSIO_Q (vssio_q));

	sky130_fd_io__top_ground_hvc_wpad pad_gnd2(.G_PAD(PAD_VSS[1]), 
	.G_CORE (g_core), .AMUXBUS_A (amuxbus_a),
	.AMUXBUS_B (amuxbus_b), .DRN_HVC (drn_hvc),
	.OGC_HVC (ogc_hvc), .SRC_BDY_HVC (src_bdy_hvc), .VSSA
	(vssa), .VDDA (vdda), .VSWITCH (vswitch),
	.VDDIO_Q (vddio_q), .VCCHIB (vcchib), .VDDIO (vddio), .VCCD
	(vccd), .VSSIO (vssio), .VSSD (vssd), .VSSIO_Q (vssio_q));
// ----- END PG cell -----

// ----- BEGIN Local short connections -----
//pReset, prog_clk, set, reset, clk, ccff_head, ccff_tail
	GPIO_IN pad_pReset(.Y(pReset), .PAD(PAD_pReset));
	GPIO_IN pad_prog_clk(.Y(prog_clk), .PAD(PAD_prog_clk));
	GPIO_IN pad_set(.Y(set), .PAD(PAD_set));
	GPIO_IN pad_reset(.Y(reset), .PAD(PAD_reset));
	GPIO_IN pad_clk(.Y(clk), .PAD(PAD_clk));
	GPIO_IN pad_ccff_head(.Y(ccff_head), .PAD(PAD_ccff_head));
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	GPIO_OUT pad_ccff_ccff_tail(.A(ccff_tail), .PAD(PAD_ccff_tail));
// ----- END Local output short connections -----

	grid_io_top grid_io_top_1__2_ (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.gfpga_pad_GPIO_PAD(gfpga_pad_GPIO_PAD[0:7]),
		.bottom_width_0_height_0_subtile_0__pin_outpad_0_(cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_0__pin_outpad_0_),
		.bottom_width_0_height_0_subtile_1__pin_outpad_0_(cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_1__pin_outpad_0_),
		.bottom_width_0_height_0_subtile_2__pin_outpad_0_(cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_2__pin_outpad_0_),
		.bottom_width_0_height_0_subtile_3__pin_outpad_0_(cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_3__pin_outpad_0_),
		.bottom_width_0_height_0_subtile_4__pin_outpad_0_(cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_4__pin_outpad_0_),
		.bottom_width_0_height_0_subtile_5__pin_outpad_0_(cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_5__pin_outpad_0_),
		.bottom_width_0_height_0_subtile_6__pin_outpad_0_(cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_6__pin_outpad_0_),
		.bottom_width_0_height_0_subtile_7__pin_outpad_0_(cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_7__pin_outpad_0_),
		.ccff_head(grid_io_right_0_ccff_tail),
		.bottom_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_0__pin_inpad_0_),
		.bottom_width_0_height_0_subtile_1__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_1__pin_inpad_0_),
		.bottom_width_0_height_0_subtile_2__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_2__pin_inpad_0_),
		.bottom_width_0_height_0_subtile_3__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_3__pin_inpad_0_),
		.bottom_width_0_height_0_subtile_4__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_4__pin_inpad_0_),
		.bottom_width_0_height_0_subtile_5__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_5__pin_inpad_0_),
		.bottom_width_0_height_0_subtile_6__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_6__pin_inpad_0_),
		.bottom_width_0_height_0_subtile_7__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_7__pin_inpad_0_),
		.ccff_tail(grid_io_top_0_ccff_tail));

	grid_io_right grid_io_right_2__1_ (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.gfpga_pad_GPIO_PAD(gfpga_pad_GPIO_PAD[8:15]),
		.left_width_0_height_0_subtile_0__pin_outpad_0_(cby_1__1__0_right_grid_left_width_0_height_0_subtile_0__pin_outpad_0_),
		.left_width_0_height_0_subtile_1__pin_outpad_0_(cby_1__1__0_right_grid_left_width_0_height_0_subtile_1__pin_outpad_0_),
		.left_width_0_height_0_subtile_2__pin_outpad_0_(cby_1__1__0_right_grid_left_width_0_height_0_subtile_2__pin_outpad_0_),
		.left_width_0_height_0_subtile_3__pin_outpad_0_(cby_1__1__0_right_grid_left_width_0_height_0_subtile_3__pin_outpad_0_),
		.left_width_0_height_0_subtile_4__pin_outpad_0_(cby_1__1__0_right_grid_left_width_0_height_0_subtile_4__pin_outpad_0_),
		.left_width_0_height_0_subtile_5__pin_outpad_0_(cby_1__1__0_right_grid_left_width_0_height_0_subtile_5__pin_outpad_0_),
		.left_width_0_height_0_subtile_6__pin_outpad_0_(cby_1__1__0_right_grid_left_width_0_height_0_subtile_6__pin_outpad_0_),
		.left_width_0_height_0_subtile_7__pin_outpad_0_(cby_1__1__0_right_grid_left_width_0_height_0_subtile_7__pin_outpad_0_),
		.ccff_head(grid_io_bottom_0_ccff_tail),
		.left_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_0__pin_inpad_0_),
		.left_width_0_height_0_subtile_1__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_1__pin_inpad_0_),
		.left_width_0_height_0_subtile_2__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_2__pin_inpad_0_),
		.left_width_0_height_0_subtile_3__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_3__pin_inpad_0_),
		.left_width_0_height_0_subtile_4__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_4__pin_inpad_0_),
		.left_width_0_height_0_subtile_5__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_5__pin_inpad_0_),
		.left_width_0_height_0_subtile_6__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_6__pin_inpad_0_),
		.left_width_0_height_0_subtile_7__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_7__pin_inpad_0_),
		.ccff_tail(grid_io_right_0_ccff_tail));

	grid_io_bottom grid_io_bottom_1__0_ (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.gfpga_pad_GPIO_PAD(gfpga_pad_GPIO_PAD[16:23]),
		.top_width_0_height_0_subtile_0__pin_outpad_0_(cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_),
		.top_width_0_height_0_subtile_1__pin_outpad_0_(cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_1__pin_outpad_0_),
		.top_width_0_height_0_subtile_2__pin_outpad_0_(cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_2__pin_outpad_0_),
		.top_width_0_height_0_subtile_3__pin_outpad_0_(cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_3__pin_outpad_0_),
		.top_width_0_height_0_subtile_4__pin_outpad_0_(cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_4__pin_outpad_0_),
		.top_width_0_height_0_subtile_5__pin_outpad_0_(cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_5__pin_outpad_0_),
		.top_width_0_height_0_subtile_6__pin_outpad_0_(cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_6__pin_outpad_0_),
		.top_width_0_height_0_subtile_7__pin_outpad_0_(cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_7__pin_outpad_0_),
		.ccff_head(cbx_1__0__0_ccff_tail),
		.top_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_0__pin_inpad_0_),
		.top_width_0_height_0_subtile_1__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_1__pin_inpad_0_),
		.top_width_0_height_0_subtile_2__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_2__pin_inpad_0_),
		.top_width_0_height_0_subtile_3__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_3__pin_inpad_0_),
		.top_width_0_height_0_subtile_4__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_4__pin_inpad_0_),
		.top_width_0_height_0_subtile_5__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_5__pin_inpad_0_),
		.top_width_0_height_0_subtile_6__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_6__pin_inpad_0_),
		.top_width_0_height_0_subtile_7__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_7__pin_inpad_0_),
		.ccff_tail(grid_io_bottom_0_ccff_tail));

	grid_io_left grid_io_left_0__1_ (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.gfpga_pad_GPIO_PAD(gfpga_pad_GPIO_PAD[24:31]),
		.right_width_0_height_0_subtile_0__pin_outpad_0_(cby_0__1__0_left_grid_right_width_0_height_0_subtile_0__pin_outpad_0_),
		.right_width_0_height_0_subtile_1__pin_outpad_0_(cby_0__1__0_left_grid_right_width_0_height_0_subtile_1__pin_outpad_0_),
		.right_width_0_height_0_subtile_2__pin_outpad_0_(cby_0__1__0_left_grid_right_width_0_height_0_subtile_2__pin_outpad_0_),
		.right_width_0_height_0_subtile_3__pin_outpad_0_(cby_0__1__0_left_grid_right_width_0_height_0_subtile_3__pin_outpad_0_),
		.right_width_0_height_0_subtile_4__pin_outpad_0_(cby_0__1__0_left_grid_right_width_0_height_0_subtile_4__pin_outpad_0_),
		.right_width_0_height_0_subtile_5__pin_outpad_0_(cby_0__1__0_left_grid_right_width_0_height_0_subtile_5__pin_outpad_0_),
		.right_width_0_height_0_subtile_6__pin_outpad_0_(cby_0__1__0_left_grid_right_width_0_height_0_subtile_6__pin_outpad_0_),
		.right_width_0_height_0_subtile_7__pin_outpad_0_(cby_0__1__0_left_grid_right_width_0_height_0_subtile_7__pin_outpad_0_),
		.ccff_head(cby_0__1__0_ccff_tail),
		.right_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_0__pin_inpad_0_),
		.right_width_0_height_0_subtile_1__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_1__pin_inpad_0_),
		.right_width_0_height_0_subtile_2__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_2__pin_inpad_0_),
		.right_width_0_height_0_subtile_3__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_3__pin_inpad_0_),
		.right_width_0_height_0_subtile_4__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_4__pin_inpad_0_),
		.right_width_0_height_0_subtile_5__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_5__pin_inpad_0_),
		.right_width_0_height_0_subtile_6__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_6__pin_inpad_0_),
		.right_width_0_height_0_subtile_7__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_7__pin_inpad_0_),
		.ccff_tail(grid_io_left_0_ccff_tail));

	grid_clb grid_clb_1__1_ (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.set(set),
		.reset(reset),
		.clk(clk),
		.top_width_0_height_0_subtile_0__pin_I_0_(cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_0_),
		.top_width_0_height_0_subtile_0__pin_I_4_(cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_4_),
		.top_width_0_height_0_subtile_0__pin_I_8_(cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_8_),
		.top_width_0_height_0_subtile_0__pin_I_12_(cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_12_),
		.top_width_0_height_0_subtile_0__pin_I_16_(cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_16_),
		.top_width_0_height_0_subtile_0__pin_I_20_(cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_20_),
		.top_width_0_height_0_subtile_0__pin_I_24_(cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_24_),
		.top_width_0_height_0_subtile_0__pin_I_28_(cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_28_),
		.top_width_0_height_0_subtile_0__pin_I_32_(cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_32_),
		.top_width_0_height_0_subtile_0__pin_I_36_(cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_36_),
		.top_width_0_height_0_subtile_0__pin_clk_0_(grid_clb_1__1__undriven_top_width_0_height_0_subtile_0__pin_clk_0_),
		.right_width_0_height_0_subtile_0__pin_I_1_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_1_),
		.right_width_0_height_0_subtile_0__pin_I_5_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_5_),
		.right_width_0_height_0_subtile_0__pin_I_9_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_9_),
		.right_width_0_height_0_subtile_0__pin_I_13_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_13_),
		.right_width_0_height_0_subtile_0__pin_I_17_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_17_),
		.right_width_0_height_0_subtile_0__pin_I_21_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_21_),
		.right_width_0_height_0_subtile_0__pin_I_25_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_25_),
		.right_width_0_height_0_subtile_0__pin_I_29_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_29_),
		.right_width_0_height_0_subtile_0__pin_I_33_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_33_),
		.right_width_0_height_0_subtile_0__pin_I_37_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_37_),
		.bottom_width_0_height_0_subtile_0__pin_I_2_(cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_2_),
		.bottom_width_0_height_0_subtile_0__pin_I_6_(cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_6_),
		.bottom_width_0_height_0_subtile_0__pin_I_10_(cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_10_),
		.bottom_width_0_height_0_subtile_0__pin_I_14_(cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_14_),
		.bottom_width_0_height_0_subtile_0__pin_I_18_(cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_18_),
		.bottom_width_0_height_0_subtile_0__pin_I_22_(cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_22_),
		.bottom_width_0_height_0_subtile_0__pin_I_26_(cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_26_),
		.bottom_width_0_height_0_subtile_0__pin_I_30_(cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_30_),
		.bottom_width_0_height_0_subtile_0__pin_I_34_(cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_34_),
		.bottom_width_0_height_0_subtile_0__pin_I_38_(cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_38_),
		.left_width_0_height_0_subtile_0__pin_I_3_(cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_3_),
		.left_width_0_height_0_subtile_0__pin_I_7_(cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_7_),
		.left_width_0_height_0_subtile_0__pin_I_11_(cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_11_),
		.left_width_0_height_0_subtile_0__pin_I_15_(cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_15_),
		.left_width_0_height_0_subtile_0__pin_I_19_(cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_19_),
		.left_width_0_height_0_subtile_0__pin_I_23_(cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_23_),
		.left_width_0_height_0_subtile_0__pin_I_27_(cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_27_),
		.left_width_0_height_0_subtile_0__pin_I_31_(cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_31_),
		.left_width_0_height_0_subtile_0__pin_I_35_(cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_35_),
		.left_width_0_height_0_subtile_0__pin_I_39_(cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_39_),
		.ccff_head(cby_1__1__0_ccff_tail),
		.top_width_0_height_0_subtile_0__pin_O_0_(grid_clb_0_top_width_0_height_0_subtile_0__pin_O_0_),
		.top_width_0_height_0_subtile_0__pin_O_4_(grid_clb_0_top_width_0_height_0_subtile_0__pin_O_4_),
		.top_width_0_height_0_subtile_0__pin_O_8_(grid_clb_0_top_width_0_height_0_subtile_0__pin_O_8_),
		.top_width_0_height_0_subtile_0__pin_O_12_(grid_clb_0_top_width_0_height_0_subtile_0__pin_O_12_),
		.top_width_0_height_0_subtile_0__pin_O_16_(grid_clb_0_top_width_0_height_0_subtile_0__pin_O_16_),
		.right_width_0_height_0_subtile_0__pin_O_1_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_1_),
		.right_width_0_height_0_subtile_0__pin_O_5_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_5_),
		.right_width_0_height_0_subtile_0__pin_O_9_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_9_),
		.right_width_0_height_0_subtile_0__pin_O_13_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_13_),
		.right_width_0_height_0_subtile_0__pin_O_17_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_17_),
		.bottom_width_0_height_0_subtile_0__pin_O_2_(grid_clb_0_bottom_width_0_height_0_subtile_0__pin_O_2_),
		.bottom_width_0_height_0_subtile_0__pin_O_6_(grid_clb_0_bottom_width_0_height_0_subtile_0__pin_O_6_),
		.bottom_width_0_height_0_subtile_0__pin_O_10_(grid_clb_0_bottom_width_0_height_0_subtile_0__pin_O_10_),
		.bottom_width_0_height_0_subtile_0__pin_O_14_(grid_clb_0_bottom_width_0_height_0_subtile_0__pin_O_14_),
		.bottom_width_0_height_0_subtile_0__pin_O_18_(grid_clb_0_bottom_width_0_height_0_subtile_0__pin_O_18_),
		.left_width_0_height_0_subtile_0__pin_O_3_(grid_clb_0_left_width_0_height_0_subtile_0__pin_O_3_),
		.left_width_0_height_0_subtile_0__pin_O_7_(grid_clb_0_left_width_0_height_0_subtile_0__pin_O_7_),
		.left_width_0_height_0_subtile_0__pin_O_11_(grid_clb_0_left_width_0_height_0_subtile_0__pin_O_11_),
		.left_width_0_height_0_subtile_0__pin_O_15_(grid_clb_0_left_width_0_height_0_subtile_0__pin_O_15_),
		.left_width_0_height_0_subtile_0__pin_O_19_(grid_clb_0_left_width_0_height_0_subtile_0__pin_O_19_),
		.ccff_tail(ccff_tail));

	sb_0__0_ sb_0__0_ (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.chany_top_in(cby_0__1__0_chany_bottom_out[0:9]),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_0__pin_inpad_0_),
		.top_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_1__pin_inpad_0_),
		.top_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_2__pin_inpad_0_),
		.top_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_3__pin_inpad_0_),
		.top_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_4__pin_inpad_0_),
		.top_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_5__pin_inpad_0_),
		.top_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_6__pin_inpad_0_),
		.top_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_7__pin_inpad_0_),
		.top_right_grid_left_width_0_height_0_subtile_0__pin_O_3_(grid_clb_0_left_width_0_height_0_subtile_0__pin_O_3_),
		.top_right_grid_left_width_0_height_0_subtile_0__pin_O_7_(grid_clb_0_left_width_0_height_0_subtile_0__pin_O_7_),
		.top_right_grid_left_width_0_height_0_subtile_0__pin_O_11_(grid_clb_0_left_width_0_height_0_subtile_0__pin_O_11_),
		.top_right_grid_left_width_0_height_0_subtile_0__pin_O_15_(grid_clb_0_left_width_0_height_0_subtile_0__pin_O_15_),
		.top_right_grid_left_width_0_height_0_subtile_0__pin_O_19_(grid_clb_0_left_width_0_height_0_subtile_0__pin_O_19_),
		.chanx_right_in(cbx_1__0__0_chanx_left_out[0:9]),
		.right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_(grid_clb_0_bottom_width_0_height_0_subtile_0__pin_O_2_),
		.right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_(grid_clb_0_bottom_width_0_height_0_subtile_0__pin_O_6_),
		.right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_10_(grid_clb_0_bottom_width_0_height_0_subtile_0__pin_O_10_),
		.right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_14_(grid_clb_0_bottom_width_0_height_0_subtile_0__pin_O_14_),
		.right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_18_(grid_clb_0_bottom_width_0_height_0_subtile_0__pin_O_18_),
		.right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_0__pin_inpad_0_),
		.right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_1__pin_inpad_0_),
		.right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_2__pin_inpad_0_),
		.right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_3__pin_inpad_0_),
		.right_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_4__pin_inpad_0_),
		.right_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_5__pin_inpad_0_),
		.right_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_6__pin_inpad_0_),
		.right_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_7__pin_inpad_0_),
		.ccff_head(ccff_head),
		.chany_top_out(sb_0__0__0_chany_top_out[0:9]),
		.chanx_right_out(sb_0__0__0_chanx_right_out[0:9]),
		.ccff_tail(sb_0__0__0_ccff_tail));

	sb_0__1_ sb_0__1_ (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.chanx_right_in(cbx_1__1__0_chanx_left_out[0:9]),
		.right_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_0__pin_inpad_0_),
		.right_top_grid_bottom_width_0_height_0_subtile_1__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_1__pin_inpad_0_),
		.right_top_grid_bottom_width_0_height_0_subtile_2__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_2__pin_inpad_0_),
		.right_top_grid_bottom_width_0_height_0_subtile_3__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_3__pin_inpad_0_),
		.right_top_grid_bottom_width_0_height_0_subtile_4__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_4__pin_inpad_0_),
		.right_top_grid_bottom_width_0_height_0_subtile_5__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_5__pin_inpad_0_),
		.right_top_grid_bottom_width_0_height_0_subtile_6__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_6__pin_inpad_0_),
		.right_top_grid_bottom_width_0_height_0_subtile_7__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_7__pin_inpad_0_),
		.right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_(grid_clb_0_top_width_0_height_0_subtile_0__pin_O_0_),
		.right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_(grid_clb_0_top_width_0_height_0_subtile_0__pin_O_4_),
		.right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_8_(grid_clb_0_top_width_0_height_0_subtile_0__pin_O_8_),
		.right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_12_(grid_clb_0_top_width_0_height_0_subtile_0__pin_O_12_),
		.right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_16_(grid_clb_0_top_width_0_height_0_subtile_0__pin_O_16_),
		.chany_bottom_in(cby_0__1__0_chany_top_out[0:9]),
		.bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_3_(grid_clb_0_left_width_0_height_0_subtile_0__pin_O_3_),
		.bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_7_(grid_clb_0_left_width_0_height_0_subtile_0__pin_O_7_),
		.bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_11_(grid_clb_0_left_width_0_height_0_subtile_0__pin_O_11_),
		.bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_15_(grid_clb_0_left_width_0_height_0_subtile_0__pin_O_15_),
		.bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_19_(grid_clb_0_left_width_0_height_0_subtile_0__pin_O_19_),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_0__pin_inpad_0_),
		.bottom_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_1__pin_inpad_0_),
		.bottom_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_2__pin_inpad_0_),
		.bottom_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_3__pin_inpad_0_),
		.bottom_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_4__pin_inpad_0_),
		.bottom_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_5__pin_inpad_0_),
		.bottom_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_6__pin_inpad_0_),
		.bottom_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_(grid_io_left_0_right_width_0_height_0_subtile_7__pin_inpad_0_),
		.ccff_head(grid_io_top_0_ccff_tail),
		.chanx_right_out(sb_0__1__0_chanx_right_out[0:9]),
		.chany_bottom_out(sb_0__1__0_chany_bottom_out[0:9]),
		.ccff_tail(sb_0__1__0_ccff_tail));

	sb_1__0_ sb_1__0_ (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.chany_top_in(cby_1__1__0_chany_bottom_out[0:9]),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_1_),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_O_5_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_5_),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_9_),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_O_13_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_13_),
		.top_left_grid_right_width_0_height_0_subtile_0__pin_O_17_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_17_),
		.top_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_0__pin_inpad_0_),
		.top_right_grid_left_width_0_height_0_subtile_1__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_1__pin_inpad_0_),
		.top_right_grid_left_width_0_height_0_subtile_2__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_2__pin_inpad_0_),
		.top_right_grid_left_width_0_height_0_subtile_3__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_3__pin_inpad_0_),
		.top_right_grid_left_width_0_height_0_subtile_4__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_4__pin_inpad_0_),
		.top_right_grid_left_width_0_height_0_subtile_5__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_5__pin_inpad_0_),
		.top_right_grid_left_width_0_height_0_subtile_6__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_6__pin_inpad_0_),
		.top_right_grid_left_width_0_height_0_subtile_7__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_7__pin_inpad_0_),
		.chanx_left_in(cbx_1__0__0_chanx_right_out[0:9]),
		.left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_(grid_clb_0_bottom_width_0_height_0_subtile_0__pin_O_2_),
		.left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_(grid_clb_0_bottom_width_0_height_0_subtile_0__pin_O_6_),
		.left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_10_(grid_clb_0_bottom_width_0_height_0_subtile_0__pin_O_10_),
		.left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_14_(grid_clb_0_bottom_width_0_height_0_subtile_0__pin_O_14_),
		.left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_18_(grid_clb_0_bottom_width_0_height_0_subtile_0__pin_O_18_),
		.left_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_0__pin_inpad_0_),
		.left_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_1__pin_inpad_0_),
		.left_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_2__pin_inpad_0_),
		.left_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_3__pin_inpad_0_),
		.left_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_4__pin_inpad_0_),
		.left_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_5__pin_inpad_0_),
		.left_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_6__pin_inpad_0_),
		.left_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_(grid_io_bottom_0_top_width_0_height_0_subtile_7__pin_inpad_0_),
		.ccff_head(sb_0__0__0_ccff_tail),
		.chany_top_out(sb_1__0__0_chany_top_out[0:9]),
		.chanx_left_out(sb_1__0__0_chanx_left_out[0:9]),
		.ccff_tail(sb_1__0__0_ccff_tail));

	sb_1__1_ sb_1__1_ (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.chany_bottom_in(cby_1__1__0_chany_top_out[0:9]),
		.bottom_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_0__pin_inpad_0_),
		.bottom_right_grid_left_width_0_height_0_subtile_1__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_1__pin_inpad_0_),
		.bottom_right_grid_left_width_0_height_0_subtile_2__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_2__pin_inpad_0_),
		.bottom_right_grid_left_width_0_height_0_subtile_3__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_3__pin_inpad_0_),
		.bottom_right_grid_left_width_0_height_0_subtile_4__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_4__pin_inpad_0_),
		.bottom_right_grid_left_width_0_height_0_subtile_5__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_5__pin_inpad_0_),
		.bottom_right_grid_left_width_0_height_0_subtile_6__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_6__pin_inpad_0_),
		.bottom_right_grid_left_width_0_height_0_subtile_7__pin_inpad_0_(grid_io_right_0_left_width_0_height_0_subtile_7__pin_inpad_0_),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_1_),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_5_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_5_),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_9_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_9_),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_13_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_13_),
		.bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_17_(grid_clb_0_right_width_0_height_0_subtile_0__pin_O_17_),
		.chanx_left_in(cbx_1__1__0_chanx_right_out[0:9]),
		.left_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_0__pin_inpad_0_),
		.left_top_grid_bottom_width_0_height_0_subtile_1__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_1__pin_inpad_0_),
		.left_top_grid_bottom_width_0_height_0_subtile_2__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_2__pin_inpad_0_),
		.left_top_grid_bottom_width_0_height_0_subtile_3__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_3__pin_inpad_0_),
		.left_top_grid_bottom_width_0_height_0_subtile_4__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_4__pin_inpad_0_),
		.left_top_grid_bottom_width_0_height_0_subtile_5__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_5__pin_inpad_0_),
		.left_top_grid_bottom_width_0_height_0_subtile_6__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_6__pin_inpad_0_),
		.left_top_grid_bottom_width_0_height_0_subtile_7__pin_inpad_0_(grid_io_top_0_bottom_width_0_height_0_subtile_7__pin_inpad_0_),
		.left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_(grid_clb_0_top_width_0_height_0_subtile_0__pin_O_0_),
		.left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_(grid_clb_0_top_width_0_height_0_subtile_0__pin_O_4_),
		.left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_8_(grid_clb_0_top_width_0_height_0_subtile_0__pin_O_8_),
		.left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_12_(grid_clb_0_top_width_0_height_0_subtile_0__pin_O_12_),
		.left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_16_(grid_clb_0_top_width_0_height_0_subtile_0__pin_O_16_),
		.ccff_head(grid_io_left_0_ccff_tail),
		.chany_bottom_out(sb_1__1__0_chany_bottom_out[0:9]),
		.chanx_left_out(sb_1__1__0_chanx_left_out[0:9]),
		.ccff_tail(sb_1__1__0_ccff_tail));

	cbx_1__0_ cbx_1__0_ (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.chanx_left_in(sb_0__0__0_chanx_right_out[0:9]),
		.chanx_right_in(sb_1__0__0_chanx_left_out[0:9]),
		.ccff_head(sb_1__0__0_ccff_tail),
		.chanx_left_out(cbx_1__0__0_chanx_left_out[0:9]),
		.chanx_right_out(cbx_1__0__0_chanx_right_out[0:9]),
		.top_grid_bottom_width_0_height_0_subtile_0__pin_I_2_(cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_2_),
		.top_grid_bottom_width_0_height_0_subtile_0__pin_I_6_(cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_6_),
		.top_grid_bottom_width_0_height_0_subtile_0__pin_I_10_(cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_10_),
		.top_grid_bottom_width_0_height_0_subtile_0__pin_I_14_(cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_14_),
		.top_grid_bottom_width_0_height_0_subtile_0__pin_I_18_(cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_18_),
		.top_grid_bottom_width_0_height_0_subtile_0__pin_I_22_(cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_22_),
		.top_grid_bottom_width_0_height_0_subtile_0__pin_I_26_(cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_26_),
		.top_grid_bottom_width_0_height_0_subtile_0__pin_I_30_(cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_30_),
		.top_grid_bottom_width_0_height_0_subtile_0__pin_I_34_(cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_34_),
		.top_grid_bottom_width_0_height_0_subtile_0__pin_I_38_(cbx_1__0__0_top_grid_bottom_width_0_height_0_subtile_0__pin_I_38_),
		.bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_(cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_),
		.bottom_grid_top_width_0_height_0_subtile_1__pin_outpad_0_(cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_1__pin_outpad_0_),
		.bottom_grid_top_width_0_height_0_subtile_2__pin_outpad_0_(cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_2__pin_outpad_0_),
		.bottom_grid_top_width_0_height_0_subtile_3__pin_outpad_0_(cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_3__pin_outpad_0_),
		.bottom_grid_top_width_0_height_0_subtile_4__pin_outpad_0_(cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_4__pin_outpad_0_),
		.bottom_grid_top_width_0_height_0_subtile_5__pin_outpad_0_(cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_5__pin_outpad_0_),
		.bottom_grid_top_width_0_height_0_subtile_6__pin_outpad_0_(cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_6__pin_outpad_0_),
		.bottom_grid_top_width_0_height_0_subtile_7__pin_outpad_0_(cbx_1__0__0_bottom_grid_top_width_0_height_0_subtile_7__pin_outpad_0_),
		.ccff_tail(cbx_1__0__0_ccff_tail));

	cbx_1__1_ cbx_1__1_ (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.chanx_left_in(sb_0__1__0_chanx_right_out[0:9]),
		.chanx_right_in(sb_1__1__0_chanx_left_out[0:9]),
		.ccff_head(sb_1__1__0_ccff_tail),
		.chanx_left_out(cbx_1__1__0_chanx_left_out[0:9]),
		.chanx_right_out(cbx_1__1__0_chanx_right_out[0:9]),
		.top_grid_bottom_width_0_height_0_subtile_0__pin_outpad_0_(cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_0__pin_outpad_0_),
		.top_grid_bottom_width_0_height_0_subtile_1__pin_outpad_0_(cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_1__pin_outpad_0_),
		.top_grid_bottom_width_0_height_0_subtile_2__pin_outpad_0_(cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_2__pin_outpad_0_),
		.top_grid_bottom_width_0_height_0_subtile_3__pin_outpad_0_(cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_3__pin_outpad_0_),
		.top_grid_bottom_width_0_height_0_subtile_4__pin_outpad_0_(cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_4__pin_outpad_0_),
		.top_grid_bottom_width_0_height_0_subtile_5__pin_outpad_0_(cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_5__pin_outpad_0_),
		.top_grid_bottom_width_0_height_0_subtile_6__pin_outpad_0_(cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_6__pin_outpad_0_),
		.top_grid_bottom_width_0_height_0_subtile_7__pin_outpad_0_(cbx_1__1__0_top_grid_bottom_width_0_height_0_subtile_7__pin_outpad_0_),
		.bottom_grid_top_width_0_height_0_subtile_0__pin_I_0_(cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_0_),
		.bottom_grid_top_width_0_height_0_subtile_0__pin_I_4_(cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_4_),
		.bottom_grid_top_width_0_height_0_subtile_0__pin_I_8_(cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_8_),
		.bottom_grid_top_width_0_height_0_subtile_0__pin_I_12_(cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_12_),
		.bottom_grid_top_width_0_height_0_subtile_0__pin_I_16_(cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_16_),
		.bottom_grid_top_width_0_height_0_subtile_0__pin_I_20_(cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_20_),
		.bottom_grid_top_width_0_height_0_subtile_0__pin_I_24_(cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_24_),
		.bottom_grid_top_width_0_height_0_subtile_0__pin_I_28_(cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_28_),
		.bottom_grid_top_width_0_height_0_subtile_0__pin_I_32_(cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_32_),
		.bottom_grid_top_width_0_height_0_subtile_0__pin_I_36_(cbx_1__1__0_bottom_grid_top_width_0_height_0_subtile_0__pin_I_36_),
		.ccff_tail(cbx_1__1__0_ccff_tail));

	cby_0__1_ cby_0__1_ (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.chany_bottom_in(sb_0__0__0_chany_top_out[0:9]),
		.chany_top_in(sb_0__1__0_chany_bottom_out[0:9]),
		.ccff_head(sb_0__1__0_ccff_tail),
		.chany_bottom_out(cby_0__1__0_chany_bottom_out[0:9]),
		.chany_top_out(cby_0__1__0_chany_top_out[0:9]),
		.right_grid_left_width_0_height_0_subtile_0__pin_I_3_(cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_3_),
		.right_grid_left_width_0_height_0_subtile_0__pin_I_7_(cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_7_),
		.right_grid_left_width_0_height_0_subtile_0__pin_I_11_(cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_11_),
		.right_grid_left_width_0_height_0_subtile_0__pin_I_15_(cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_15_),
		.right_grid_left_width_0_height_0_subtile_0__pin_I_19_(cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_19_),
		.right_grid_left_width_0_height_0_subtile_0__pin_I_23_(cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_23_),
		.right_grid_left_width_0_height_0_subtile_0__pin_I_27_(cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_27_),
		.right_grid_left_width_0_height_0_subtile_0__pin_I_31_(cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_31_),
		.right_grid_left_width_0_height_0_subtile_0__pin_I_35_(cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_35_),
		.right_grid_left_width_0_height_0_subtile_0__pin_I_39_(cby_0__1__0_right_grid_left_width_0_height_0_subtile_0__pin_I_39_),
		.left_grid_right_width_0_height_0_subtile_0__pin_outpad_0_(cby_0__1__0_left_grid_right_width_0_height_0_subtile_0__pin_outpad_0_),
		.left_grid_right_width_0_height_0_subtile_1__pin_outpad_0_(cby_0__1__0_left_grid_right_width_0_height_0_subtile_1__pin_outpad_0_),
		.left_grid_right_width_0_height_0_subtile_2__pin_outpad_0_(cby_0__1__0_left_grid_right_width_0_height_0_subtile_2__pin_outpad_0_),
		.left_grid_right_width_0_height_0_subtile_3__pin_outpad_0_(cby_0__1__0_left_grid_right_width_0_height_0_subtile_3__pin_outpad_0_),
		.left_grid_right_width_0_height_0_subtile_4__pin_outpad_0_(cby_0__1__0_left_grid_right_width_0_height_0_subtile_4__pin_outpad_0_),
		.left_grid_right_width_0_height_0_subtile_5__pin_outpad_0_(cby_0__1__0_left_grid_right_width_0_height_0_subtile_5__pin_outpad_0_),
		.left_grid_right_width_0_height_0_subtile_6__pin_outpad_0_(cby_0__1__0_left_grid_right_width_0_height_0_subtile_6__pin_outpad_0_),
		.left_grid_right_width_0_height_0_subtile_7__pin_outpad_0_(cby_0__1__0_left_grid_right_width_0_height_0_subtile_7__pin_outpad_0_),
		.ccff_tail(cby_0__1__0_ccff_tail));

	cby_1__1_ cby_1__1_ (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.chany_bottom_in(sb_1__0__0_chany_top_out[0:9]),
		.chany_top_in(sb_1__1__0_chany_bottom_out[0:9]),
		.ccff_head(cbx_1__1__0_ccff_tail),
		.chany_bottom_out(cby_1__1__0_chany_bottom_out[0:9]),
		.chany_top_out(cby_1__1__0_chany_top_out[0:9]),
		.right_grid_left_width_0_height_0_subtile_0__pin_outpad_0_(cby_1__1__0_right_grid_left_width_0_height_0_subtile_0__pin_outpad_0_),
		.right_grid_left_width_0_height_0_subtile_1__pin_outpad_0_(cby_1__1__0_right_grid_left_width_0_height_0_subtile_1__pin_outpad_0_),
		.right_grid_left_width_0_height_0_subtile_2__pin_outpad_0_(cby_1__1__0_right_grid_left_width_0_height_0_subtile_2__pin_outpad_0_),
		.right_grid_left_width_0_height_0_subtile_3__pin_outpad_0_(cby_1__1__0_right_grid_left_width_0_height_0_subtile_3__pin_outpad_0_),
		.right_grid_left_width_0_height_0_subtile_4__pin_outpad_0_(cby_1__1__0_right_grid_left_width_0_height_0_subtile_4__pin_outpad_0_),
		.right_grid_left_width_0_height_0_subtile_5__pin_outpad_0_(cby_1__1__0_right_grid_left_width_0_height_0_subtile_5__pin_outpad_0_),
		.right_grid_left_width_0_height_0_subtile_6__pin_outpad_0_(cby_1__1__0_right_grid_left_width_0_height_0_subtile_6__pin_outpad_0_),
		.right_grid_left_width_0_height_0_subtile_7__pin_outpad_0_(cby_1__1__0_right_grid_left_width_0_height_0_subtile_7__pin_outpad_0_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I_1_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_1_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I_5_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_5_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I_9_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_9_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I_13_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_13_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I_17_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_17_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I_21_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_21_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I_25_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_25_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I_29_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_29_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I_33_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_33_),
		.left_grid_right_width_0_height_0_subtile_0__pin_I_37_(cby_1__1__0_left_grid_right_width_0_height_0_subtile_0__pin_I_37_),
		.ccff_tail(cby_1__1__0_ccff_tail));

endmodule
// ----- END Verilog module for fpga_top -----

//----- Default net type -----
`default_nettype wire




