`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2023 01:41:02 PM
// Design Name: 
// Module Name: synapse_tb
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

//~ `New testbench
`timescale 1ns / 1ps

module tb_synapse;

    // synapse Parameters
    parameter PERIOD = 2;
    parameter exp_decay = 64'h3FEFF7CED916872B;
    parameter weight = 64'h40B7700000000000;

    // synapse Inputs
    reg         clk = 0;
    reg         rstp = 1;
    reg         spike = 0;
    reg         enable = 0;

    // synapse Outputs
    wire [63:0] i;


    initial begin
        forever #(PERIOD / 2) clk = ~clk;
    end

    initial begin
        #(PERIOD * 2) rstp = 0;
        enable = 1;
    end

    synapse #(
        .exp_decay(exp_decay),
        .weight   (weight)
    ) u_synapse (
        .clk   (clk),
        .rstp  (rstp),
        .spike (spike),
        .enable(enable),

        .i(i[63:0])
    );

    initial begin

        #(PERIOD * 3)
        forever begin
            #(PERIOD * 100) spike = 1;
            #(PERIOD) spike = 0;
        end

    end

endmodule
