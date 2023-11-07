`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2023 03:19:34 PM
// Design Name: 
// Module Name: tb_DG_2_synapse
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

module tb_DG_2_synapse;

    // DG_2_synapse Parameters
    parameter PERIOD = 2;
    // parameter para_t_step = 64'h3F847AE147AE147B; //0.01
    // parameter para_k = 64'h3FDC9E9FFEF77708;
    // parameter para_a = 64'h3F6ADE88EAFF4E9A;
    // parameter para_b = 64'h40387A79DD11A219;
    // parameter para_Vmin = 64'hC0509DCCF74ADAA6;
    // parameter para_d = 64'h4049000000000000;
    // parameter para_C = 64'h4043000000000000;
    // parameter para_Vr = 64'hC05359C9552312EF;
    // parameter para_Vt = 64'hC046734508F4A5F5;
    // parameter para_Vpeak = 64'h402EFABD77A2DBC8;
    // parameter exp_decay = 64'h3FEFAE147AE147AE;
    // parameter weight = 64'h40B7700000000000;

`ifdef SINGLE_PRECISION
    parameter precision = 32;
    parameter para_t_step = 32'h3C23D70A;
    parameter para_k = 32'h3EE4F500;
    parameter para_a = 32'h3B56F447;
    parameter para_b = 32'h41C3D3CF;
    parameter para_Vmin = 32'hC284EE68;
    parameter para_d = 32'h42480000;
    parameter para_C = 32'h42180000;
    parameter para_Vr = 32'hC29ACE4B;
    parameter para_Vt = 32'hC2339A28;
    parameter para_Vpeak = 32'h4177D5EC;
    parameter exp_decay = 32'h3F7D70A4;  
    parameter weight = 32'h45BB8000;  
`else
    parameter precision = 64;
    parameter para_t_step = 64'h3F847AE147AE147B;
    parameter para_k = 64'h3FDC9E9FFEF77708;
    parameter para_a = 64'h3F6ADE88EAFF4E9A;
    parameter para_b = 64'h40387A79DD11A219;
    parameter para_Vmin = 64'hC0509DCCF74ADAA6;
    parameter para_d = 64'h4049000000000000;
    parameter para_C = 64'h4043000000000000;
    parameter para_Vr = 64'hC05359C9552312EF;
    parameter para_Vt = 64'hC046734508F4A5F5;
    parameter para_Vpeak = 64'h402EFABD77A2DBC8;
    parameter exp_decay = 64'h3FEFAE147AE147AE;  
    parameter weight = 64'h40B7700000000000;  
`endif

    // DG_2_synapse Inputs
    reg        clk = 0;
    reg        rstp = 1;

    // DG_2_synapse Outputs
    wire [7:0] led;


    initial begin
        forever #(PERIOD / 2) clk = ~clk;
    end

    initial begin
        #(PERIOD * 2) rstp = 0;
    end

    DG_2_synapse #(
        .para_t_step(para_t_step),
        .para_k     (para_k),
        .para_a     (para_a),
        .para_b     (para_b),
        .para_Vmin  (para_Vmin),
        .para_d     (para_d),
        .para_C     (para_C),
        .para_Vr    (para_Vr),
        .para_Vt    (para_Vt),
        .para_Vpeak (para_Vpeak),
        .exp_decay  (exp_decay),
        .weight     (weight)
    ) u_DG_2_synapse (
        .clk (clk),
        .rstp(rstp),

        .led(led[7:0])
    );

endmodule
