`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ADAM LAB @ GWU
// Engineer: Yihui Wang 
// 
// Create Date: 10/06/2023 12:12:21 PM
// Design Name: DG_granule_model
// Module Name: DG_multiple
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 4 parallel IZ DG neuron model
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DG_multiple #(
    parameter para_t_step = 64'h3EE4F8B588E368F1,
    parameter para_k      = 64'h3FDC9E9FFEF77708,
    parameter para_a      = 64'h3F6ADE88EAFF4E9A,
    parameter para_b      = 64'h40387A79DD11A219,
    parameter para_Vmin   = 64'hC0509DCCF74ADAA6,
    parameter para_d      = 64'h4049000000000000,
    parameter para_C      = 64'h4043000000000000,
    parameter para_Vr     = 64'hC05359C9552312EF,
    parameter para_Vt     = 64'hC046734508F4A5F5,
    parameter para_Vpeak  = 64'h402EFABD77A2DBC8
) (
    input clk,
    input rstp,
    input [63:0] i,
    output [3:0] spikes
);

    // Clock signals
    wire clk_33_3;
    wire locked;

    // PLL for 33.3MHz clock signal
    clk_33_3 inst_clk_33_3 (
        .clk_out1(clk_33_3),
        .locked  (locked),
        .clk_in1 (clk)
    );

    // Instatiation of IZ neuron
    Izhikevich_model_pipeline_multiple #(
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
    ) u_Izhikevich_model_pipeline_multiple (
        .clk   (clk_33_3),
        .rstp  (rstp),
        .enable(locked),
        .i     (i),
        .spikes(spikes)
    );

endmodule
