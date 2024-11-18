`timescale 1ns / 1ps
`include "/home/cae1/Desktop/FPGA-OpenFPGA/Fabric/tasks/synthesizable_verilog/sky130_osu_sc_18T_hs.v"
`include "/home/cae1/Desktop/FPGA-OpenFPGA/Synthesis/GPIO/outputs/inpad_netlist.v"
module IO_IN_tb;
    // Inputs
    wire Y;
    wire PAD;


    // Instantiate the GPIO module
    GPIO_IN dut (
        .Y(Y),
        .PAD(PAD)
    );

    reg pad;
    assign PAD = pad;

    // Test Procedures
    initial begin
        // Test Input Operation
        pad = 1'b0;
        #10;
	$display("Test Case 1: Y=%b, PAD=%b, pad=%b", Y, PAD, pad);


        // Test Output Operation
        pad = 1'b1;
        #10;
	$display("Test Case 2: Y=%b, PAD=%b, pad=%b", Y, PAD, pad);	

        // Test Tri-State Operation
        pad = 1'b0;
        #10;
	$display("Test Case 3: Y=%b, PAD=%b, pad=%b", Y, PAD, pad);

        $finish;
    end
endmodule
