`timescale 1ns / 1ps
`include "/home/cae1/Desktop/FPGA-OpenFPGA/Fabric/tasks/synthesizable_verilog/sky130_osu_sc_18T_hs.v"
`include "../outputs/gpio_outpad_netlist.v"
module IO_OUT_tb;
    // Inputs
    wire A;
    wire PAD;


    // Instantiate the GPIO module
    GPIO_OUT dut (
        .A(A),
        .PAD(PAD)
    );

    reg a;
    assign A = a;

    // Test Procedures
    initial begin
        // Test Input Operation
        a = 1'b0;
        #10;
	$display("Test Case 1: Y=%b, PAD=%b, a=%b", A, PAD, a);


        // Test Output Operation
        a = 1'b1;
        #10;
	$display("Test Case 2: Y=%b, PAD=%b, a=%b", A, PAD, a);	

        // Test Tri-State Operation
        a = 1'b0;
        #10;
	$display("Test Case 3: Y=%b, PAD=%b, a=%b", A, PAD, a);

        $finish;
    end
endmodule
