`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ADAM LAB at GWU
// Engineer: Yihui Wang
//
// Create Date: 09/25/2023 07:22:27 PM
// Design Name: DG_granule_model
// Module Name: DG_granule_model
// Project Name:
// Target Devices: Basys 3 Board
// Tool Versions: Vavido 2021.3
// Description: FPGA implementation of DG granule cell using Izhikevich Neuron Model.
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module DG_granule_model #(parameter para_t_step = 64'h3FB999999999999A,
                          parameter para_k = 64'h3FDC9E9FFEF77708,
                          parameter para_a = 64'h3F6ADE88EAFF4E9A,
                          parameter para_b = 64'h40387A79DD11A219,
                          parameter para_Vmin = 64'hC0509DCCF74ADAA6,
                          parameter para_d = 64'h4049000000000000,
                          parameter para_C = 64'h4043000000000000,
                          parameter para_Vr = 64'hC05359C9552312EF,
                          parameter para_Vt = 64'hC046734508F4A5F5,
                          parameter para_Vpeak = 64'h402EFABD77A2DBC8)
                         (input clk,
                          input rstn,
                          input enable,
                          input [63:0] i,
                          output [63:0] v,
                          output [63:0] u);
    
    Izhikevich_model #(
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
    ) u_Izhikevich_model (
    .clk (clk),
    .rstn(rstn),
    .enable(enable),
    .i   (i),
    .v   (v),
    .u   (u)
    );
    
    
endmodule
