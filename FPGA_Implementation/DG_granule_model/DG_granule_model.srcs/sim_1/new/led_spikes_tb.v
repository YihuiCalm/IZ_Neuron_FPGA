`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2023 06:38:30 PM
// Design Name: 
// Module Name: led_spikes_tb
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


module led_spikes_tb();



// led_spikes Inputs
reg   clk                                  = 0 ;
reg   rstp                                 = 0 ;
reg   [3:0]  spikes                        = 0 ;

// led_spikes Outputs
wire  [3:0]  led                           ;


always #1 clk = ~clk;



led_spikes  u_led_spikes (
    .clk                     ( clk           ),
    .rstp                    ( rstp          ),
    .spikes                  ( spikes  [3:0] ),

    .led                     ( led     [3:0] )
);

initial
begin
    #10
    spikes = 4'hf;
    #2
    spikes = 4'h0;

    $finish;
end

endmodule
