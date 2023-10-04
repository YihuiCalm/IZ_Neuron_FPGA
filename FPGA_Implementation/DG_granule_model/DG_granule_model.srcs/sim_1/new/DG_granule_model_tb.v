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


module DG_granule_model_tb ();

  reg clk = 1'b0;
  reg rstp = 1'b0;
  reg enable = 1'b0;
  reg [63:0] i[3:0];
  wire [3:0] spikes;

  reg [1:0] pointer = 2'b00;

  always #1 clk = ~clk;

  always @(posedge clk, posedge rstp) begin
    if (rstp) begin
      pointer <= 2'b00;
    end else begin
      pointer <= pointer + 2'b01;
    end
  end

  initial begin

    $readmemh("i_tb_initial.mem", i);
    #20 enable = 1'b1;

  end

  DG_granule_model u_DG_granule_model (
      .clk   (clk),
      .rstp  (rstp),
      .enable(enable),
      .i     (i[pointer]),
      .spikes(spikes)
  );

endmodule
