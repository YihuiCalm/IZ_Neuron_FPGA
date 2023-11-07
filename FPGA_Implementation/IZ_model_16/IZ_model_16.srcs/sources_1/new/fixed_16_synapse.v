`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2023 05:58:35 PM
// Design Name: 
// Module Name: fixed_16_synapse
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


module fixed_16_synapse
#(
    parameter weight = 16'h051f // 0.04
)
(
    input clk,
    input rst_n,
    input spike,
    output reg [15:0] i_mul_h
    );

    reg [15:0] i_mul_h_next;
    wire [15:0] i_mul_h_mul_decay;

    fixed_16_mul i_MUL_h_mul_decay(
    	.a (i_mul_h ),
        .b (16'h7eb8 ), // (1-h)=0.99
        .r (i_mul_h_mul_decay )
    );

    always @(posedge clk, negedge rst_n) begin
        if (~rst_n) begin
            i_mul_h <= 16'h0000;
        end
        else begin
            if (i_mul_h_next[15]) begin
                i_mul_h <= 16'h7fff;
            end
            else begin
                i_mul_h <= i_mul_h_next;
            end
        end
    end

    always @(*) begin
        if (spike) begin
            i_mul_h_next = weight + i_mul_h_mul_decay;
        end
        else begin
            i_mul_h_next = i_mul_h_mul_decay;
        end
    end

endmodule
