// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Oct 18 14:28:01 2023
// Host        : LAPTOP-U9EM5UJ6 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top clk_33_3 -prefix
//               clk_33_3_ clk_33_3_stub.v
// Design      : clk_33_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_33_3(clk_out1, locked, clk)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,locked,clk" */;
  output clk_out1;
  output locked;
  input clk;
endmodule
