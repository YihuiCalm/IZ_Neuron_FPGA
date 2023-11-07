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


module test(

    );
    
    reg [15:0] a = 0;
    reg [15:0] b = 0;
    wire [15:0] r;

    fixed_16_mul dut_fixed_16_mul(
        .a (a ),
        .b (b ),
        .r (r )
    );

    initial begin
        a = $random()%1000;
        b = $random()%1000;

        #6
        $finish;

    end
    

endmodule
