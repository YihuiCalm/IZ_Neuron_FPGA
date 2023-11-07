`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2023 02:49:36 PM
// Design Name: 
// Module Name: DG_2_synapse
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
//`define SINGLE_PRECISION

module DG_2_synapse #(
`ifdef SINGLE_PRECISION
    parameter precision   = 32,
    parameter para_t_step = 32'h3727C5AC,
    parameter para_k      = 32'h3EE4F500,
    parameter para_a      = 32'h3B56F447,
    parameter para_b      = 32'h41C3D3CF,
    parameter para_Vmin   = 32'hC284EE68,
    parameter para_d      = 32'h42480000,
    parameter para_C      = 32'h42180000,
    parameter para_Vr     = 32'hC29ACE4B,
    parameter para_Vt     = 32'hC2339A28,
    parameter para_Vpeak  = 32'h4177D5EC,
    parameter exp_decay   = 32'h3F7FFF58,          //(1-timestep) 0.99999
    parameter weight      = 32'h45BB8000           // Weight 6000
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
    parameter para_Vpeak  = 64'h402EFABD77A2DBC8,
    parameter exp_decay   = 64'h3FEFFFEB074A771D,  //(1-timestep) 0.99999
    parameter weight      = 64'h40B7700000000000   // Weight 6000
`endif
) (
    input clk,
    input rstp,
    output [7:0] led
);

    // Synaptic input signals
    reg [precision-1:0] i_1[3:0];
    wire [precision-1:0] i_2[3:0];

    // Pointer registers for synaptic intput for each neuron
    reg [1:0] pointer;
    reg [1:0] pointer_next;

    // Spike of each neuron
    wire [3:0] spikes_1;
    wire [3:0] spikes_2;

    // Clock signal
    wire clk_33_3;
    wire locked;

    // PLL for 33.3MHz clock signal
    clk_33_3 inst_clk_33_3 (
        .clk_out1(clk_33_3),
        .locked  (locked),
        .clk_in1 (clk)
    );

    // Instantiation of IZ neurons
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
    ) u1_Izhikevich_model_pipeline_multiple (
        .clk   (clk_33_3),
        .rstp  (rstp),
        .enable(locked),
        .i     (i_1[pointer]),
        .spikes(spikes_1)
    );

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
    ) u2_Izhikevich_model_pipeline_multiple (
        .clk   (clk_33_3),
        .rstp  (rstp),
        .enable(locked),
        .i     (i_2[pointer]),
        .spikes(spikes_2)
    );

    // Instantiation of synapse
    genvar k;
    generate
        for (k = 0; k < 4; k = k + 1) begin : synapse_gen
            synapse #(
                .exp_decay(exp_decay),
                .weight   (weight)
            ) u_synapse (
                .clk   (clk_33_3),
                .rstp  (rstp),
                .spike (spikes_1[k]),
                .enable(pointer == k),
                .i     (i_2[k])
            );
        end
    endgenerate

    // Instantiation of LED output
    led_spikes u1_led_spikes (
        .clk   (clk_33_3),
        .rstp  (rstp),
        .spikes(spikes_1),
        .led   (led[3:0])
    );

    led_spikes u2_led_spikes (
        .clk   (clk_33_3),
        .rstp  (rstp),
        .spikes(spikes_2),
        .led   (led[7:4])
    );

    // Initialization of synaptic inputs for first 4 parallel neurons
    initial begin
`ifdef SINGLE_PRECISION
        $readmemh("i_tb_initial_32.mem", i_1);
`else
        $readmemh("i_tb_initial.mem", i_1);
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
