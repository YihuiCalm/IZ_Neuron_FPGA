`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/26/2023 10:17:06 AM
// Design Name:
// Module Name: DG_granule_model_tb
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


module DG_granule_model_tb();
    
    reg clk      = 1'b0;
    reg rstn     = 1'b1;
    reg enable   = 1'b0;
    reg [63:0] i = 64'h0000000000000000;
    wire [63:0] u;
    wire [63:0] v;
    
    always #1 clk = ~clk;
    
    always #2 $display ("v = %d", v);
    
    initial begin
        #100
        i      = 64'h4084700000000000;
        enable = 1'b1;
        
        #4000
        $finish;
    end
    
    DG_granule_model u_DG_granule_model(
    .clk  (clk),
    .rstn (rstn),
    .enable(enable),
    .i    (i),
    .v    (v),
    .u    (u)
    );
    
endmodule
