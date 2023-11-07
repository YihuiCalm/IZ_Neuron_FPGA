`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/26/2023 10:17:06 AM
// Design Name:
// Module Name: DG_granule_model_tb
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
`ifndef SINGLE_PRECISION
`define SINGLE_PRECISION
`endif

module DG_granule_model_tb #(
`ifdef SINGLE_PRECISION
    parameter precision   = 32,
    parameter para_t_step = 32'h3DCCCCCD, // 0.01
    parameter para_k      = 32'h3EE4F500,
    parameter para_a      = 32'h3B56F447,
    parameter para_b      = 32'h41C3D3CF,
    parameter para_Vmin   = 32'hC284EE68,
    parameter para_d      = 32'h42480000,
    parameter para_C      = 32'h42180000,
    parameter para_Vr     = 32'hC29ACE4B,
    parameter para_Vt     = 32'hC2339A28,
    parameter para_Vpeak  = 32'h4177D5EC
`else
    parameter precision   = 64,
    parameter para_t_step = 64'h3F847AE147AE147B, // 0.01
    parameter para_k      = 64'h3FDC9E9FFEF77708,
    parameter para_a      = 64'h3F6ADE88EAFF4E9A,
    parameter para_b      = 64'h40387A79DD11A219,
    parameter para_Vmin   = 64'hC0509DCCF74ADAA6,
    parameter para_d      = 64'h4049000000000000,
    parameter para_C      = 64'h4043000000000000,
    parameter para_Vr     = 64'hC05359C9552312EF,
    parameter para_Vt     = 64'hC046734508F4A5F5,
    parameter para_Vpeak  = 64'h402EFABD77A2DBC8
`endif
) ();

    reg clk    = 1'b0;
    reg rstp   = 1'b1;
    reg [precision-1:0] i[3:0];
    wire [3:0] led;

    reg [1:0] pointer = 2'b00;

    always #1 clk = ~clk;

    wire clk_33_3;
    wire locked;

    clk_33_3 inst_clk_33_3 (
        .clk_out1(clk_33_3),
        .locked  (locked),
        .clk_in1 (clk)
    );

    always @(posedge clk_33_3) begin
        if (!locked) begin
            pointer <= 2'b00;
        end
        else begin
            pointer <= pointer + 2'b01;
        end
    end

    // always @(posedge clk) begin
    //     if (rstp) begin
    //         pointer <= 2'b00;
    //     end
    //     else begin
    //         pointer <= pointer + 2'b01;
    //     end
    // end

    initial begin

`ifdef SINGLE_PRECISION
        $readmemh("i_tb_initial_32.mem", i);
`else
        $readmemh("i_tb_initial.mem", i);
`endif
        #20 rstp = 0;

    end

    DG_multiple_led #(
        .para_t_step(para_t_step),
        .para_k     (para_k),
        .para_a     (para_a),
        .para_b     (para_b),
        .para_Vmin  (para_Vmin),
        .para_d     (para_d),
        .para_C     (para_C),
        .para_Vr    (para_Vr),
        .para_Vt    (para_Vt),
        .para_Vpeak (para_Vpeak)
    ) DUT_DG_multiple_led (
        .clk (clk),
        .rstp(rstp),
        .led (led)
    );


endmodule
