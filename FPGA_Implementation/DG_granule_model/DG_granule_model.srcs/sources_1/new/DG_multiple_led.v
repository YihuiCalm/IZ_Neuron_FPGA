`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ADAM LAB @ GWU
// Engineer: Yihui Wang
// 
// Create Date: 10/06/2023 11:56:32 AM
// Design Name: DG_granule_model
// Module Name: DG_multiple_led
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Using 4 leds to indicate the spikes of 4 parallel DG neurons.
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

module DG_multiple_led #(
`ifdef SINGLE_PRECISION
    parameter precision   = 32,
    parameter para_t_step = 32'h3851B717, // 0.0001
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
`endif
) (
    input clk,
    input rstp,
    output [3:0] led
);

    // Synaptic input signals
    reg [precision-1:0] i[3:0];

    // Pointer registers for synaptic intput for each neuron
    reg [1:0] pointer;
    reg [1:0] pointer_next;

    // Spike of each neuron
    wire [3:0] spikes;

    // Clock signal
    wire clk_33_3;
    wire locked;

    // PLL for 33.3MHz clock signal
    clk_33_3 inst_clk_33_3 (
        .clk_out1(clk_33_3),
        .locked  (locked),
        .clk (clk)
    );

    // Instantiation of IZ neuron
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
        .i     (i[pointer]),
        .spikes(spikes)
    );

    // Instantiation of led module
    led_spikes u_led_spikes (
        .clk   (clk_33_3),
        .rstp  (rstp),
        .spikes(spikes),
        .led   (led)
    );

    // Initialization of synaptic inputs
    initial begin
`ifdef SINGLE_PRECISION
        $readmemh("i_tb_initial_32.mem", i);
`else
        $readmemh("i_tb_initial.mem", i);
`endif
    end

    // Pointer counter
    always @(posedge clk_33_3) begin
        if ((!locked) | (rstp)) begin
            pointer <= 2'b00;
        end
        else begin
            pointer <= pointer_next;
        end
    end

    always @(*) begin
        pointer_next = pointer + 2'b01;
    end


endmodule
