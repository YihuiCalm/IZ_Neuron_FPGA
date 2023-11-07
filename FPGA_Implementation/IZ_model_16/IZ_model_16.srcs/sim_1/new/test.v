`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 11:30:39 AM
// Design Name: 
// Module Name: test
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


module test
#(
    parameter precision   = 16,
    parameter para_t_step = 16'h0148, // 0.1
    parameter para_k      = 16'h0a3d,
    parameter para_a      = 16'h0014,
    parameter para_b      = 16'h47ae,
    parameter para_Vmin   = 16'haaeb,
    parameter para_d      = 16'h5eb8,
    parameter para_C_dived_1      = 16'h042f,
    parameter para_Vr     = 16'h9f3b,
    parameter para_Vt     = 16'hc937,
    parameter para_Vpeak  = 16'h30e5
) 
(

    );
    
    reg [15:0] a = 16'h0a37;
    reg [15:0] b = 16'hffe3;
    wire [15:0] r;

    fixed_16_mul dut_fixed_16_mul(
        .a (a ),
        .b (b ),
        .r (r )
    );

    initial begin

        #6
        $finish;

    end
    

endmodule
