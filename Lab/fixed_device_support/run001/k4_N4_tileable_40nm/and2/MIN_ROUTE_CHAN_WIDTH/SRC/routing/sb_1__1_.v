//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Switch Blocks[1][1]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Wed Oct  9 19:23:25 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for sb_1__1_ -----
module sb_1__1_(chany_top_in,
                top_left_grid_right_width_0_height_0_subtile_0__pin_O_3_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_O_1_,
                chanx_right_in,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_0_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_2_,
                chany_bottom_in,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_1_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_3_,
                chanx_left_in,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_0_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_2_,
                enable,
                address,
                data_in,
                chany_top_out,
                chanx_right_out,
                chany_bottom_out,
                chanx_left_out);
//----- INPUT PORTS -----
input [0:19] chany_top_in;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_O_3_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_O_1_;
//----- INPUT PORTS -----
input [0:19] chanx_right_in;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_0_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_2_;
//----- INPUT PORTS -----
input [0:19] chany_bottom_in;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_1_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_3_;
//----- INPUT PORTS -----
input [0:19] chanx_left_in;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_0_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_2_;
//----- INPUT PORTS -----
input [0:0] enable;
//----- INPUT PORTS -----
input [0:7] address;
//----- INPUT PORTS -----
input [0:0] data_in;
//----- OUTPUT PORTS -----
output [0:19] chany_top_out;
//----- OUTPUT PORTS -----
output [0:19] chanx_right_out;
//----- OUTPUT PORTS -----
output [0:19] chany_bottom_out;
//----- OUTPUT PORTS -----
output [0:19] chanx_left_out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:19] decoder5to20_0_data_out;
wire [0:7] mux_2level_tapbuf_size11_0_sram;
wire [0:7] mux_2level_tapbuf_size11_0_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_10_sram;
wire [0:7] mux_2level_tapbuf_size11_10_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_11_sram;
wire [0:7] mux_2level_tapbuf_size11_11_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_1_sram;
wire [0:7] mux_2level_tapbuf_size11_1_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_2_sram;
wire [0:7] mux_2level_tapbuf_size11_2_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_3_sram;
wire [0:7] mux_2level_tapbuf_size11_3_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_4_sram;
wire [0:7] mux_2level_tapbuf_size11_4_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_5_sram;
wire [0:7] mux_2level_tapbuf_size11_5_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_6_sram;
wire [0:7] mux_2level_tapbuf_size11_6_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_7_sram;
wire [0:7] mux_2level_tapbuf_size11_7_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_8_sram;
wire [0:7] mux_2level_tapbuf_size11_8_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_9_sram;
wire [0:7] mux_2level_tapbuf_size11_9_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_0_sram;
wire [0:7] mux_2level_tapbuf_size12_0_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_1_sram;
wire [0:7] mux_2level_tapbuf_size12_1_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_2_sram;
wire [0:7] mux_2level_tapbuf_size12_2_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_3_sram;
wire [0:7] mux_2level_tapbuf_size12_3_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_4_sram;
wire [0:7] mux_2level_tapbuf_size12_4_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_5_sram;
wire [0:7] mux_2level_tapbuf_size12_5_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_6_sram;
wire [0:7] mux_2level_tapbuf_size12_6_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_7_sram;
wire [0:7] mux_2level_tapbuf_size12_7_sram_inv;

// ----- BEGIN Local short connections -----
// ----- Local connection due to Wire 0 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[1] = chany_top_in[0];
// ----- Local connection due to Wire 1 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[2] = chany_top_in[1];
// ----- Local connection due to Wire 2 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[3] = chany_top_in[2];
// ----- Local connection due to Wire 4 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[5] = chany_top_in[4];
// ----- Local connection due to Wire 5 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[6] = chany_top_in[5];
// ----- Local connection due to Wire 6 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[7] = chany_top_in[6];
// ----- Local connection due to Wire 8 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[9] = chany_top_in[8];
// ----- Local connection due to Wire 9 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[10] = chany_top_in[9];
// ----- Local connection due to Wire 10 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[11] = chany_top_in[10];
// ----- Local connection due to Wire 12 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[13] = chany_top_in[12];
// ----- Local connection due to Wire 13 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[14] = chany_top_in[13];
// ----- Local connection due to Wire 14 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[15] = chany_top_in[14];
// ----- Local connection due to Wire 16 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[17] = chany_top_in[16];
// ----- Local connection due to Wire 17 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[18] = chany_top_in[17];
// ----- Local connection due to Wire 18 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[19] = chany_top_in[18];
// ----- Local connection due to Wire 22 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[1] = chanx_right_in[0];
// ----- Local connection due to Wire 23 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[2] = chanx_right_in[1];
// ----- Local connection due to Wire 24 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[3] = chanx_right_in[2];
// ----- Local connection due to Wire 26 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[5] = chanx_right_in[4];
// ----- Local connection due to Wire 27 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[6] = chanx_right_in[5];
// ----- Local connection due to Wire 28 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[7] = chanx_right_in[6];
// ----- Local connection due to Wire 30 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[9] = chanx_right_in[8];
// ----- Local connection due to Wire 31 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[10] = chanx_right_in[9];
// ----- Local connection due to Wire 32 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[11] = chanx_right_in[10];
// ----- Local connection due to Wire 34 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[13] = chanx_right_in[12];
// ----- Local connection due to Wire 35 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[14] = chanx_right_in[13];
// ----- Local connection due to Wire 36 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[15] = chanx_right_in[14];
// ----- Local connection due to Wire 38 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[17] = chanx_right_in[16];
// ----- Local connection due to Wire 39 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[18] = chanx_right_in[17];
// ----- Local connection due to Wire 40 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[19] = chanx_right_in[18];
// ----- Local connection due to Wire 44 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[1] = chany_bottom_in[0];
// ----- Local connection due to Wire 45 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[2] = chany_bottom_in[1];
// ----- Local connection due to Wire 46 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[3] = chany_bottom_in[2];
// ----- Local connection due to Wire 48 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[5] = chany_bottom_in[4];
// ----- Local connection due to Wire 49 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[6] = chany_bottom_in[5];
// ----- Local connection due to Wire 50 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[7] = chany_bottom_in[6];
// ----- Local connection due to Wire 52 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[9] = chany_bottom_in[8];
// ----- Local connection due to Wire 53 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[10] = chany_bottom_in[9];
// ----- Local connection due to Wire 54 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[11] = chany_bottom_in[10];
// ----- Local connection due to Wire 56 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[13] = chany_bottom_in[12];
// ----- Local connection due to Wire 57 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[14] = chany_bottom_in[13];
// ----- Local connection due to Wire 58 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[15] = chany_bottom_in[14];
// ----- Local connection due to Wire 60 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[17] = chany_bottom_in[16];
// ----- Local connection due to Wire 61 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[18] = chany_bottom_in[17];
// ----- Local connection due to Wire 62 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[19] = chany_bottom_in[18];
// ----- Local connection due to Wire 66 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[1] = chanx_left_in[0];
// ----- Local connection due to Wire 67 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[2] = chanx_left_in[1];
// ----- Local connection due to Wire 68 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[3] = chanx_left_in[2];
// ----- Local connection due to Wire 70 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[5] = chanx_left_in[4];
// ----- Local connection due to Wire 71 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[6] = chanx_left_in[5];
// ----- Local connection due to Wire 72 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[7] = chanx_left_in[6];
// ----- Local connection due to Wire 74 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[9] = chanx_left_in[8];
// ----- Local connection due to Wire 75 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[10] = chanx_left_in[9];
// ----- Local connection due to Wire 76 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[11] = chanx_left_in[10];
// ----- Local connection due to Wire 78 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[13] = chanx_left_in[12];
// ----- Local connection due to Wire 79 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[14] = chanx_left_in[13];
// ----- Local connection due to Wire 80 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[15] = chanx_left_in[14];
// ----- Local connection due to Wire 82 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[17] = chanx_left_in[16];
// ----- Local connection due to Wire 83 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[18] = chanx_left_in[17];
// ----- Local connection due to Wire 84 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[19] = chanx_left_in[18];
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	mux_2level_tapbuf_size12 mux_top_track_0 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_3_, chanx_right_in[1], chanx_right_in[7:8], chanx_right_in[14], chany_bottom_in[0], chany_bottom_in[6], chany_bottom_in[13], chanx_left_in[0], chanx_left_in[3], chanx_left_in[6], chanx_left_in[13]}),
		.sram(mux_2level_tapbuf_size12_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_0_sram_inv[0:7]),
		.out(chany_top_out[0]));

	mux_2level_tapbuf_size12 mux_top_track_8 (
		.in({top_right_grid_left_width_0_height_0_subtile_0__pin_O_1_, chanx_right_in[2], chanx_right_in[9], chanx_right_in[11], chanx_right_in[16], chany_bottom_in[1], chany_bottom_in[8], chany_bottom_in[14], chanx_left_in[5], chanx_left_in[12], chanx_left_in[18:19]}),
		.sram(mux_2level_tapbuf_size12_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_1_sram_inv[0:7]),
		.out(chany_top_out[4]));

	mux_2level_tapbuf_size12 mux_right_track_0 (
		.in({chany_top_in[5], chany_top_in[12], chany_top_in[18:19], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_0_, chany_bottom_in[4], chany_bottom_in[10], chany_bottom_in[15], chany_bottom_in[17], chanx_left_in[0], chanx_left_in[6], chanx_left_in[13]}),
		.sram(mux_2level_tapbuf_size12_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_2_sram_inv[0:7]),
		.out(chanx_right_out[0]));

	mux_2level_tapbuf_size12 mux_right_track_8 (
		.in({chany_top_in[0], chany_top_in[3], chany_top_in[6], chany_top_in[13], right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_2_, chany_bottom_in[2], chany_bottom_in[9], chany_bottom_in[11], chany_bottom_in[16], chanx_left_in[1], chanx_left_in[8], chanx_left_in[14]}),
		.sram(mux_2level_tapbuf_size12_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_3_sram_inv[0:7]),
		.out(chanx_right_out[4]));

	mux_2level_tapbuf_size12 mux_bottom_track_1 (
		.in({chany_top_in[0], chany_top_in[6], chany_top_in[13], chanx_right_in[4], chanx_right_in[10], chanx_right_in[15], chanx_right_in[17], bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_1_, chanx_left_in[1], chanx_left_in[7:8], chanx_left_in[14]}),
		.sram(mux_2level_tapbuf_size12_4_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_4_sram_inv[0:7]),
		.out(chany_bottom_out[0]));

	mux_2level_tapbuf_size12 mux_bottom_track_9 (
		.in({chany_top_in[1], chany_top_in[8], chany_top_in[14], chanx_right_in[2], chanx_right_in[9], chanx_right_in[11], chanx_right_in[16], bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_3_, chanx_left_in[2], chanx_left_in[9], chanx_left_in[11], chanx_left_in[16]}),
		.sram(mux_2level_tapbuf_size12_5_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_5_sram_inv[0:7]),
		.out(chany_bottom_out[4]));

	mux_2level_tapbuf_size12 mux_left_track_1 (
		.in({chany_top_in[0], chany_top_in[3], chany_top_in[6], chany_top_in[13], chanx_right_in[0], chanx_right_in[6], chanx_right_in[13], chany_bottom_in[5], chany_bottom_in[12], chany_bottom_in[18:19], left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_0_}),
		.sram(mux_2level_tapbuf_size12_6_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_6_sram_inv[0:7]),
		.out(chanx_left_out[0]));

	mux_2level_tapbuf_size12 mux_left_track_9 (
		.in({chany_top_in[5], chany_top_in[12], chany_top_in[18:19], chanx_right_in[1], chanx_right_in[8], chanx_right_in[14], chany_bottom_in[0], chany_bottom_in[3], chany_bottom_in[6], chany_bottom_in[13], left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_2_}),
		.sram(mux_2level_tapbuf_size12_7_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_7_sram_inv[0:7]),
		.out(chanx_left_out[4]));

	mux_2level_tapbuf_size12_mem mem_top_track_0 (
		.enable(decoder5to20_0_data_out[0]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size12_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_0_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_track_8 (
		.enable(decoder5to20_0_data_out[1]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size12_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_1_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_track_0 (
		.enable(decoder5to20_0_data_out[5]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size12_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_2_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_track_8 (
		.enable(decoder5to20_0_data_out[6]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size12_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_3_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_track_1 (
		.enable(decoder5to20_0_data_out[10]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size12_4_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_4_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_track_9 (
		.enable(decoder5to20_0_data_out[11]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size12_5_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_5_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_track_1 (
		.enable(decoder5to20_0_data_out[15]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size12_6_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_6_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_track_9 (
		.enable(decoder5to20_0_data_out[16]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size12_7_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_7_sram_inv[0:7]));

	mux_2level_tapbuf_size11 mux_top_track_16 (
		.in({chanx_right_in[4], chanx_right_in[10], chanx_right_in[15], chanx_right_in[17], chany_bottom_in[2], chany_bottom_in[9], chany_bottom_in[16], chanx_left_in[4], chanx_left_in[10], chanx_left_in[15], chanx_left_in[17]}),
		.sram(mux_2level_tapbuf_size11_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_0_sram_inv[0:7]),
		.out(chany_top_out[8]));

	mux_2level_tapbuf_size11 mux_top_track_24 (
		.in({chanx_right_in[5], chanx_right_in[12], chanx_right_in[18:19], chany_bottom_in[4], chany_bottom_in[10], chany_bottom_in[17], chanx_left_in[2], chanx_left_in[9], chanx_left_in[11], chanx_left_in[16]}),
		.sram(mux_2level_tapbuf_size11_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_1_sram_inv[0:7]),
		.out(chany_top_out[12]));

	mux_2level_tapbuf_size11 mux_top_track_32 (
		.in({chanx_right_in[0], chanx_right_in[3], chanx_right_in[6], chanx_right_in[13], chany_bottom_in[5], chany_bottom_in[12], chany_bottom_in[18], chanx_left_in[1], chanx_left_in[7:8], chanx_left_in[14]}),
		.sram(mux_2level_tapbuf_size11_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_2_sram_inv[0:7]),
		.out(chany_top_out[16]));

	mux_2level_tapbuf_size11 mux_right_track_16 (
		.in({chany_top_in[1], chany_top_in[7:8], chany_top_in[14], chany_bottom_in[1], chany_bottom_in[7:8], chany_bottom_in[14], chanx_left_in[2], chanx_left_in[9], chanx_left_in[16]}),
		.sram(mux_2level_tapbuf_size11_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_3_sram_inv[0:7]),
		.out(chanx_right_out[8]));

	mux_2level_tapbuf_size11 mux_right_track_24 (
		.in({chany_top_in[2], chany_top_in[9], chany_top_in[11], chany_top_in[16], chany_bottom_in[0], chany_bottom_in[3], chany_bottom_in[6], chany_bottom_in[13], chanx_left_in[4], chanx_left_in[10], chanx_left_in[17]}),
		.sram(mux_2level_tapbuf_size11_4_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_4_sram_inv[0:7]),
		.out(chanx_right_out[12]));

	mux_2level_tapbuf_size11 mux_right_track_32 (
		.in({chany_top_in[4], chany_top_in[10], chany_top_in[15], chany_top_in[17], chany_bottom_in[5], chany_bottom_in[12], chany_bottom_in[18:19], chanx_left_in[5], chanx_left_in[12], chanx_left_in[18]}),
		.sram(mux_2level_tapbuf_size11_5_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_5_sram_inv[0:7]),
		.out(chanx_right_out[16]));

	mux_2level_tapbuf_size11 mux_bottom_track_17 (
		.in({chany_top_in[2], chany_top_in[9], chany_top_in[16], chanx_right_in[1], chanx_right_in[7:8], chanx_right_in[14], chanx_left_in[4], chanx_left_in[10], chanx_left_in[15], chanx_left_in[17]}),
		.sram(mux_2level_tapbuf_size11_6_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_6_sram_inv[0:7]),
		.out(chany_bottom_out[8]));

	mux_2level_tapbuf_size11 mux_bottom_track_25 (
		.in({chany_top_in[4], chany_top_in[10], chany_top_in[17], chanx_right_in[0], chanx_right_in[3], chanx_right_in[6], chanx_right_in[13], chanx_left_in[5], chanx_left_in[12], chanx_left_in[18:19]}),
		.sram(mux_2level_tapbuf_size11_7_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_7_sram_inv[0:7]),
		.out(chany_bottom_out[12]));

	mux_2level_tapbuf_size11 mux_bottom_track_33 (
		.in({chany_top_in[5], chany_top_in[12], chany_top_in[18], chanx_right_in[5], chanx_right_in[12], chanx_right_in[18:19], chanx_left_in[0], chanx_left_in[3], chanx_left_in[6], chanx_left_in[13]}),
		.sram(mux_2level_tapbuf_size11_8_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_8_sram_inv[0:7]),
		.out(chany_bottom_out[16]));

	mux_2level_tapbuf_size11 mux_left_track_17 (
		.in({chany_top_in[4], chany_top_in[10], chany_top_in[15], chany_top_in[17], chanx_right_in[2], chanx_right_in[9], chanx_right_in[16], chany_bottom_in[1], chany_bottom_in[7:8], chany_bottom_in[14]}),
		.sram(mux_2level_tapbuf_size11_9_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_9_sram_inv[0:7]),
		.out(chanx_left_out[8]));

	mux_2level_tapbuf_size11 mux_left_track_25 (
		.in({chany_top_in[2], chany_top_in[9], chany_top_in[11], chany_top_in[16], chanx_right_in[4], chanx_right_in[10], chanx_right_in[17], chany_bottom_in[2], chany_bottom_in[9], chany_bottom_in[11], chany_bottom_in[16]}),
		.sram(mux_2level_tapbuf_size11_10_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_10_sram_inv[0:7]),
		.out(chanx_left_out[12]));

	mux_2level_tapbuf_size11 mux_left_track_33 (
		.in({chany_top_in[1], chany_top_in[7:8], chany_top_in[14], chanx_right_in[5], chanx_right_in[12], chanx_right_in[18], chany_bottom_in[4], chany_bottom_in[10], chany_bottom_in[15], chany_bottom_in[17]}),
		.sram(mux_2level_tapbuf_size11_11_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_11_sram_inv[0:7]),
		.out(chanx_left_out[16]));

	mux_2level_tapbuf_size11_mem mem_top_track_16 (
		.enable(decoder5to20_0_data_out[2]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size11_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_0_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_top_track_24 (
		.enable(decoder5to20_0_data_out[3]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size11_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_1_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_top_track_32 (
		.enable(decoder5to20_0_data_out[4]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size11_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_2_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_right_track_16 (
		.enable(decoder5to20_0_data_out[7]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size11_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_3_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_right_track_24 (
		.enable(decoder5to20_0_data_out[8]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size11_4_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_4_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_right_track_32 (
		.enable(decoder5to20_0_data_out[9]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size11_5_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_5_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_bottom_track_17 (
		.enable(decoder5to20_0_data_out[12]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size11_6_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_6_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_bottom_track_25 (
		.enable(decoder5to20_0_data_out[13]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size11_7_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_7_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_bottom_track_33 (
		.enable(decoder5to20_0_data_out[14]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size11_8_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_8_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_left_track_17 (
		.enable(decoder5to20_0_data_out[17]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size11_9_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_9_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_left_track_25 (
		.enable(decoder5to20_0_data_out[18]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size11_10_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_10_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_left_track_33 (
		.enable(decoder5to20_0_data_out[19]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size11_11_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_11_sram_inv[0:7]));

	decoder5to20 decoder5to20_0_ (
		.enable(enable),
		.address(address[3:7]),
		.data_out(decoder5to20_0_data_out[0:19]));

endmodule
// ----- END Verilog module for sb_1__1_ -----

//----- Default net type -----
`default_nettype wire



