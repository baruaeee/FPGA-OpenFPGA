//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Connection Blocks[1][0]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Wed Oct  9 19:23:25 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for cbx_1__0_ -----
module cbx_1__0_(chanx_left_in,
                 chanx_right_in,
                 enable,
                 address,
                 data_in,
                 chanx_left_out,
                 chanx_right_out,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_I_2_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_I_6_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_,
                 bottom_grid_top_width_0_height_0_subtile_1__pin_outpad_0_,
                 bottom_grid_top_width_0_height_0_subtile_2__pin_outpad_0_,
                 bottom_grid_top_width_0_height_0_subtile_3__pin_outpad_0_,
                 bottom_grid_top_width_0_height_0_subtile_4__pin_outpad_0_,
                 bottom_grid_top_width_0_height_0_subtile_5__pin_outpad_0_,
                 bottom_grid_top_width_0_height_0_subtile_6__pin_outpad_0_,
                 bottom_grid_top_width_0_height_0_subtile_7__pin_outpad_0_);
//----- INPUT PORTS -----
input [0:19] chanx_left_in;
//----- INPUT PORTS -----
input [0:19] chanx_right_in;
//----- INPUT PORTS -----
input [0:0] enable;
//----- INPUT PORTS -----
input [0:6] address;
//----- INPUT PORTS -----
input [0:0] data_in;
//----- OUTPUT PORTS -----
output [0:19] chanx_left_out;
//----- OUTPUT PORTS -----
output [0:19] chanx_right_out;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_I_2_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_I_6_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_1__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_2__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_3__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_4__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_5__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_6__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_7__pin_outpad_0_;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:9] decoder4to10_0_data_out;
wire [0:5] mux_2level_tapbuf_size8_0_sram;
wire [0:5] mux_2level_tapbuf_size8_0_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_1_sram;
wire [0:5] mux_2level_tapbuf_size8_1_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_2_sram;
wire [0:5] mux_2level_tapbuf_size8_2_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_3_sram;
wire [0:5] mux_2level_tapbuf_size8_3_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_4_sram;
wire [0:5] mux_2level_tapbuf_size8_4_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_5_sram;
wire [0:5] mux_2level_tapbuf_size8_5_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_6_sram;
wire [0:5] mux_2level_tapbuf_size8_6_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_7_sram;
wire [0:5] mux_2level_tapbuf_size8_7_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_8_sram;
wire [0:5] mux_2level_tapbuf_size8_8_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_9_sram;
wire [0:5] mux_2level_tapbuf_size8_9_sram_inv;

// ----- BEGIN Local short connections -----
// ----- Local connection due to Wire 0 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[0] = chanx_left_in[0];
// ----- Local connection due to Wire 1 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[1] = chanx_left_in[1];
// ----- Local connection due to Wire 2 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[2] = chanx_left_in[2];
// ----- Local connection due to Wire 3 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[3] = chanx_left_in[3];
// ----- Local connection due to Wire 4 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[4] = chanx_left_in[4];
// ----- Local connection due to Wire 5 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[5] = chanx_left_in[5];
// ----- Local connection due to Wire 6 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[6] = chanx_left_in[6];
// ----- Local connection due to Wire 7 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[7] = chanx_left_in[7];
// ----- Local connection due to Wire 8 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[8] = chanx_left_in[8];
// ----- Local connection due to Wire 9 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[9] = chanx_left_in[9];
// ----- Local connection due to Wire 10 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[10] = chanx_left_in[10];
// ----- Local connection due to Wire 11 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[11] = chanx_left_in[11];
// ----- Local connection due to Wire 12 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[12] = chanx_left_in[12];
// ----- Local connection due to Wire 13 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[13] = chanx_left_in[13];
// ----- Local connection due to Wire 14 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[14] = chanx_left_in[14];
// ----- Local connection due to Wire 15 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[15] = chanx_left_in[15];
// ----- Local connection due to Wire 16 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[16] = chanx_left_in[16];
// ----- Local connection due to Wire 17 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[17] = chanx_left_in[17];
// ----- Local connection due to Wire 18 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[18] = chanx_left_in[18];
// ----- Local connection due to Wire 19 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[19] = chanx_left_in[19];
// ----- Local connection due to Wire 20 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[0] = chanx_right_in[0];
// ----- Local connection due to Wire 21 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[1] = chanx_right_in[1];
// ----- Local connection due to Wire 22 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[2] = chanx_right_in[2];
// ----- Local connection due to Wire 23 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[3] = chanx_right_in[3];
// ----- Local connection due to Wire 24 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[4] = chanx_right_in[4];
// ----- Local connection due to Wire 25 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[5] = chanx_right_in[5];
// ----- Local connection due to Wire 26 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[6] = chanx_right_in[6];
// ----- Local connection due to Wire 27 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[7] = chanx_right_in[7];
// ----- Local connection due to Wire 28 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[8] = chanx_right_in[8];
// ----- Local connection due to Wire 29 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[9] = chanx_right_in[9];
// ----- Local connection due to Wire 30 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[10] = chanx_right_in[10];
// ----- Local connection due to Wire 31 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[11] = chanx_right_in[11];
// ----- Local connection due to Wire 32 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[12] = chanx_right_in[12];
// ----- Local connection due to Wire 33 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[13] = chanx_right_in[13];
// ----- Local connection due to Wire 34 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[14] = chanx_right_in[14];
// ----- Local connection due to Wire 35 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[15] = chanx_right_in[15];
// ----- Local connection due to Wire 36 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[16] = chanx_right_in[16];
// ----- Local connection due to Wire 37 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[17] = chanx_right_in[17];
// ----- Local connection due to Wire 38 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[18] = chanx_right_in[18];
// ----- Local connection due to Wire 39 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[19] = chanx_right_in[19];
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	mux_2level_tapbuf_size8 mux_bottom_ipin_0 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18]}),
		.sram(mux_2level_tapbuf_size8_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_0_sram_inv[0:5]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_I_2_));

	mux_2level_tapbuf_size8 mux_bottom_ipin_1 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19]}),
		.sram(mux_2level_tapbuf_size8_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_1_sram_inv[0:5]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_I_6_));

	mux_2level_tapbuf_size8 mux_top_ipin_0 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14]}),
		.sram(mux_2level_tapbuf_size8_2_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_2_sram_inv[0:5]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_));

	mux_2level_tapbuf_size8 mux_top_ipin_1 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15]}),
		.sram(mux_2level_tapbuf_size8_3_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_3_sram_inv[0:5]),
		.out(bottom_grid_top_width_0_height_0_subtile_1__pin_outpad_0_));

	mux_2level_tapbuf_size8 mux_top_ipin_2 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16]}),
		.sram(mux_2level_tapbuf_size8_4_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_4_sram_inv[0:5]),
		.out(bottom_grid_top_width_0_height_0_subtile_2__pin_outpad_0_));

	mux_2level_tapbuf_size8 mux_top_ipin_3 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17]}),
		.sram(mux_2level_tapbuf_size8_5_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_5_sram_inv[0:5]),
		.out(bottom_grid_top_width_0_height_0_subtile_3__pin_outpad_0_));

	mux_2level_tapbuf_size8 mux_top_ipin_4 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18]}),
		.sram(mux_2level_tapbuf_size8_6_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_6_sram_inv[0:5]),
		.out(bottom_grid_top_width_0_height_0_subtile_4__pin_outpad_0_));

	mux_2level_tapbuf_size8 mux_top_ipin_5 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19]}),
		.sram(mux_2level_tapbuf_size8_7_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_7_sram_inv[0:5]),
		.out(bottom_grid_top_width_0_height_0_subtile_5__pin_outpad_0_));

	mux_2level_tapbuf_size8 mux_top_ipin_6 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14]}),
		.sram(mux_2level_tapbuf_size8_8_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_8_sram_inv[0:5]),
		.out(bottom_grid_top_width_0_height_0_subtile_6__pin_outpad_0_));

	mux_2level_tapbuf_size8 mux_top_ipin_7 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15]}),
		.sram(mux_2level_tapbuf_size8_9_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_9_sram_inv[0:5]),
		.out(bottom_grid_top_width_0_height_0_subtile_7__pin_outpad_0_));

	mux_2level_tapbuf_size8_mem mem_bottom_ipin_0 (
		.enable(decoder4to10_0_data_out[0]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size8_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_0_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_bottom_ipin_1 (
		.enable(decoder4to10_0_data_out[1]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size8_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_1_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_top_ipin_0 (
		.enable(decoder4to10_0_data_out[2]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size8_2_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_2_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_top_ipin_1 (
		.enable(decoder4to10_0_data_out[3]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size8_3_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_3_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_top_ipin_2 (
		.enable(decoder4to10_0_data_out[4]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size8_4_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_4_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_top_ipin_3 (
		.enable(decoder4to10_0_data_out[5]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size8_5_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_5_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_top_ipin_4 (
		.enable(decoder4to10_0_data_out[6]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size8_6_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_6_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_top_ipin_5 (
		.enable(decoder4to10_0_data_out[7]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size8_7_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_7_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_top_ipin_6 (
		.enable(decoder4to10_0_data_out[8]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size8_8_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_8_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_top_ipin_7 (
		.enable(decoder4to10_0_data_out[9]),
		.address(address[0:2]),
		.data_in(data_in),
		.mem_out(mux_2level_tapbuf_size8_9_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_9_sram_inv[0:5]));

	decoder4to10 decoder4to10_0_ (
		.enable(enable),
		.address(address[3:6]),
		.data_out(decoder4to10_0_data_out[0:9]));

endmodule
// ----- END Verilog module for cbx_1__0_ -----

//----- Default net type -----
`default_nettype wire




