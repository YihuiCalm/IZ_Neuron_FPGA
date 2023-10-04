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


module DG_granule_model #(
    parameter para_t_step = 64'h3F847AE147AE147B,
    parameter para_k = 64'h3FDC9E9FFEF77708,
    parameter para_a = 64'h3F6ADE88EAFF4E9A,
    parameter para_b = 64'h40387A79DD11A219,
    parameter para_Vmin = 64'hC0509DCCF74ADAA6,
    parameter para_d = 64'h4049000000000000,
    parameter para_C = 64'h4043000000000000,
    parameter para_Vr = 64'hC05359C9552312EF,
    parameter para_Vt = 64'hC046734508F4A5F5,
    parameter para_Vpeak = 64'h402EFABD77A2DBC8
) (
    input clk,
    input rstp,
    input [63:0] i,     // Editted for implementation purpose, should be input i for actual using
    input enable,
    output [3:0] spikes
);

    
    wire clk_400;
    clk_400 inst_clk_400 (
        .clk_out1(clk_400),  
        .reset   (1'b1),     
        .locked  (),    
        .clk_in1 (clk)
    );  

  //wire [7:0] v_greater_or_equal_Vpeak;

  // Izhikevich_model_single_cycle #(
  // .para_t_step(para_t_step),
  // .para_k     (para_k),
  // .para_a     (para_a),
  // .para_b     (para_b),
  // .para_Vmin  (para_Vmin),
  // .para_d     (para_d),
  // .para_C     (para_C),
  // .para_Vr    (para_Vr),
  // .para_Vt    (para_Vt),
  // .para_Vpeak (para_Vpeak)
  // ) u_Izhikevich_model (
  // .clk (clk),
  // .rstp(rstp),
  // .enable(enable),
  // .i   (i),
  // .v   (v),
  // .u   (u),
  // .v_greater_or_equal_Vpeak ()
  // );

  // Izhikevich_model_pipeline #(
  // .para_t_step(para_t_step),
  // .para_k     (para_k),
  // .para_a     (para_a),
  // .para_b     (para_b),
  // .para_Vmin  (para_Vmin),
  // .para_d     (para_d),
  // .para_C     (para_C),
  // .para_Vr    (para_Vr),
  // .para_Vt    (para_Vt),
  // .para_Vpeak (para_Vpeak)
  // ) u_Izhikevich_model_pipeline (
  // .clk (clk),
  // .rstp(1'b0),
  // .enable(1'b1),
  // .i   (64'h4084700000000000),
  // .v_new_reg   (),
  // .u_new_reg   (),
  // .v_greater_or_equal_Vpeak (v_greater_or_equal_Vpeak)
  // );

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
      .clk(clk_400),
      .rstp(rstp),
      .enable(enable),
      .i     (i),       // Editted for implementation purpose, should be input i for actual using
      .spikes(spikes)
  );


endmodule
