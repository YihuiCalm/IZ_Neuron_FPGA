`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2023 04:33:35 PM
// Design Name: 
// Module Name: fixed_16_mul
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


module fixed_16_mul(
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] r
    );

    reg [29:0] temp;
    reg [14:0] a_temp, b_temp;

    always @(*) begin
        if (a[15]) begin
            a_temp = ~(a[14:0] - 1);
        end
        else begin
            a_temp = a[14:0];
        end

        if (b[15]) begin
            b_temp = ~(b[14:0] - 1);
        end
        else begin
            b_temp = b[14:0];
        end
    end

    always @(*) begin
        temp = a_temp[14:0] * b_temp[14:0];
        if (a[15] ^ b[15]) begin
            r = ~{1'b0, temp[29:15]} + 16'd1;
        end
        else begin
            r = {1'b0, temp[29:15]};
        end
        
    end

endmodule
