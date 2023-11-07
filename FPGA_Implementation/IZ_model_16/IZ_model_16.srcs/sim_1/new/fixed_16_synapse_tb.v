`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2023 06:20:38 PM
// Design Name: 
// Module Name: fixed_16_synapse_tb
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
`timescale 1ns / 1ps

module fixed_16_synapse_tb;

    // fixed_16_synapse Parameters
    parameter PERIOD = 2;
    parameter weight = 16'h051f;

    // fixed_16_synapse Inputs
    reg         clk = 0;
    reg         rst_n = 0;
    reg         spike = 0;

    // fixed_16_synapse Outputs
    wire [15:0] i_mul_h;


    initial begin
        forever #(PERIOD / 2) clk = ~clk;
    end

    initial begin
        #(PERIOD * 2) rst_n = 1;
    end

    fixed_16_synapse #(
        .weight(weight)
    ) u_fixed_16_synapse (
        .clk  (clk),
        .rst_n(rst_n),
        .spike(spike),

        .i_mul_h(i_mul_h[15:0])
    );

    initial begin

        // forever begin
        //     #200
        //     spike = 1;
        //     #2
        //     spike = 0;
        // end
        #(PERIOD*2)
        spike = 1;
        #(PERIOD)
        spike = 0;

        #(PERIOD*500)
        $finish;
    end

endmodule
