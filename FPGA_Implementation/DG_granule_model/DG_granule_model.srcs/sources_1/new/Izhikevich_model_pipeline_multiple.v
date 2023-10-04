`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2023 08:43:23 AM
// Design Name: 
// Module Name: Izhikevich_model_pipeline_multiple
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


module Izhikevich_model_pipeline_multiple #(
    parameter para_t_step = 64'h3F50624DD2F1A9FC,
    parameter para_k = 64'h3FDC9E9FFEF77708,
    parameter para_a = 64'h3F6ADE88EAFF4E9A,
    parameter para_b = 64'h40387A79DD11A219,
    parameter para_Vmin = 64'hC0509DCCF74ADAA6,
    parameter para_d = 64'h4049000000000000,
    parameter para_C = 64'h4043000000000000,
    parameter para_Vr = 64'hC05359C9552312EF,
    parameter para_Vt = 64'hC046734508F4A5F5,
    parameter para_Vpeak = 64'h402EFABD77A2DBC8
) (
    input clk,
    input rstp,
    input enable,
    input [63:0] i,
    output reg [3:0] spikes = 4'h0
    //   output reg [63:0] v_reg = para_Vr,
    //   output reg [63:0] u_reg = 64'd0,
    //   output wire [7:0] v_greater_or_equal_Vpeak
);

  // Parameters for Izhikevich Model
  wire [63:0] t_step = para_t_step;
  wire [63:0] k = para_k;
  wire [63:0] a = para_a;
  wire [63:0] b = para_b;
  wire [63:0] Vmin = para_Vmin;
  wire [63:0] d = para_d;
  wire [63:0] C = para_C;
  wire [63:0] Vr = para_Vr;
  wire [63:0] Vt = para_Vt;
  wire [63:0] Vpeak = para_Vpeak;

  // Wires for Pipeline
  // First level
  wire [63:0]                       v_SUB_Vr_wire;
  wire [63:0]                       v_SUB_Vt_wire;
  wire [63:0]                       h_DIV_C_wire;
  wire [63:0]                       u_SUB_i_wire;
  wire [63:0]                       a_MUL_h_wire;
  // Second level
  wire [63:0]                       v_sub_Vr_MUL_v_sub_Vt_wire;
  wire [63:0]                       h_div_C_MUL_k_wire;
  wire [63:0]                       h_div_C_MUL_u_sub_i_wire;
  wire [63:0]                       a_mul_h_MUL_v_sub_Vr_wire;
  wire [63:0]                       a_mul_h_MUL_u_wire;
  // Third level
  wire [63:0]                       v_sub_Vr_mul_v_sub_Vt_MUL_h_div_C_mul_k_wire;
  wire [63:0]                       v_SUB_h_div_C_mul_u_sub_i_wire;
  wire [63:0]                       b_MUL_a_mul_h_mul_v_sub_Vr_wire;
  wire [63:0]                       u_SUB_a_mul_h_mul_u_wire;
  // Fourth level
  wire [ 7:0]                       v_greater_or_equal_Vpeak;
  wire [63:0]                       u_add_d_wire;
  wire [63:0]                       v_wire;
  wire [63:0]                       u_wire;

  // Registers for Pipeline
  // First level
  reg  [63:0]                       v_first_reg = 64'd0;
  reg  [63:0]                       u_first_reg = 64'd0;
  reg  [63:0]                       v_SUB_Vr_reg = 64'd0;
  reg  [63:0]                       v_SUB_Vt_reg = 64'd0;
  reg  [63:0]                       h_DIV_C_reg = 64'd0;
  reg  [63:0]                       u_SUB_i_reg = 64'd0;
  reg  [63:0]                       a_MUL_h_reg = 64'd0;
  // Second level
  reg  [63:0]                       v_second_reg = 64'd0;
  reg  [63:0]                       u_second_reg = 64'd0;
  reg  [63:0]                       v_sub_Vr_MUL_v_sub_Vt_reg = 64'd0;
  reg  [63:0]                       h_div_C_MUL_k_reg = 64'd0;
  reg  [63:0]                       h_div_C_MUL_u_sub_i_reg = 64'd0;
  reg  [63:0]                       a_mul_h_MUL_v_sub_Vr_reg = 64'd0;
  reg  [63:0]                       a_mul_h_MUL_u_reg = 64'd0;
  // Third level
  reg  [63:0]                       u_third_reg = 64'd0;
  reg  [63:0]                       v_sub_Vr_mul_v_sub_Vt_MUL_h_div_C_mul_k_reg = 64'd0;
  reg  [63:0]                       v_SUB_h_div_C_mul_u_sub_i_reg = 64'd0;
  reg  [63:0]                       b_MUL_a_mul_h_mul_v_sub_Vr_reg = 64'd0;
  reg  [63:0]                       u_SUB_a_mul_h_mul_u_reg = 64'd0;
  // Fourth level
  reg  [63:0]                       v_reg                                               [3:0];
  reg  [63:0]                       u_reg                                               [3:0];

  // Pointer
  reg  [ 1:0]                       pointer = 2'b00;
  reg  [ 1:0]                       waste = 2'b00;

  // Pipeline-------------------------------------------------------------------------------------

  // Float Unit
  // v - Vr
  double_sub v_SUB_Vr (
      .s_axis_a_tvalid(enable),
      .s_axis_a_tdata(v_reg[pointer]),
      .s_axis_b_tvalid(enable),
      .s_axis_b_tdata(Vr),
      .m_axis_result_tdata(v_SUB_Vr_wire)
  );

  // v - Vt
  double_sub v_SUB_Vt (
      .s_axis_a_tvalid(enable),
      .s_axis_a_tdata(v_reg[pointer]),
      .s_axis_b_tvalid(enable),
      .s_axis_b_tdata(Vt),
      .m_axis_result_tdata(v_SUB_Vt_wire)
  );

  // h / C
  double_div h_DIV_C (
      .s_axis_a_tvalid(enable),
      .s_axis_a_tdata(t_step),
      .s_axis_b_tvalid(enable),
      .s_axis_b_tdata(C),
      .m_axis_result_tdata(h_DIV_C_wire)
  );

  // u - i
  double_sub u_SUB_i (
      .s_axis_a_tvalid(enable),
      .s_axis_a_tdata(u_reg[pointer]),
      .s_axis_b_tvalid(enable),
      .s_axis_b_tdata(i),
      .m_axis_result_tdata(u_SUB_i_wire)
  );

  // a * h
  double_mul a_MUL_h (
      .s_axis_a_tvalid(enable),
      .s_axis_a_tdata(a),
      .s_axis_b_tvalid(enable),
      .s_axis_b_tdata(t_step),
      .m_axis_result_tdata(a_MUL_h_wire)
  );

  // (v - Vr)*(v - Vt)
  double_mul v_sub_Vr_MUL_v_sub_Vt (
      .s_axis_a_tvalid(enable),
      .s_axis_a_tdata(v_SUB_Vr_reg),
      .s_axis_b_tvalid(enable),
      .s_axis_b_tdata(v_SUB_Vt_reg),
      .m_axis_result_tdata(v_sub_Vr_MUL_v_sub_Vt_wire)
  );

  // (h/C) * k
  double_mul h_div_C_MUL_k (
      .s_axis_a_tvalid(enable),
      .s_axis_a_tdata(h_DIV_C_reg),
      .s_axis_b_tvalid(enable),
      .s_axis_b_tdata(k),
      .m_axis_result_tdata(h_div_C_MUL_k_wire)
  );

  // (h/C) * (u - i)
  double_mul h_div_C_MUL_u_sub_i (
      .s_axis_a_tvalid(enable),
      .s_axis_a_tdata(h_DIV_C_reg),
      .s_axis_b_tvalid(enable),
      .s_axis_b_tdata(u_SUB_i_reg),
      .m_axis_result_tdata(h_div_C_MUL_u_sub_i_wire)
  );

  // a * h * (v - Vr)
  double_mul a_mul_h_MUL_v_sub_Vr (
      .s_axis_a_tvalid(enable),
      .s_axis_a_tdata(a_MUL_h_reg),
      .s_axis_b_tvalid(enable),
      .s_axis_b_tdata(v_SUB_Vr_reg),
      .m_axis_result_tdata(a_mul_h_MUL_v_sub_Vr_wire)
  );
  // a * h * u
  double_mul a_mul_h_MUL_u (
      .s_axis_a_tvalid(enable),
      .s_axis_a_tdata(a_MUL_h_reg),
      .s_axis_b_tvalid(enable),
      .s_axis_b_tdata(u_first_reg),
      .m_axis_result_tdata(a_mul_h_MUL_u_wire)
  );

  // (v - Vr)*(v - Vt)*(h/C)*k
  double_mul v_sub_Vr_mul_v_sub_Vt_MUL_h_div_C_mul_k (
      .s_axis_a_tvalid(enable),
      .s_axis_a_tdata(v_sub_Vr_MUL_v_sub_Vt_reg),
      .s_axis_b_tvalid(enable),
      .s_axis_b_tdata(h_div_C_MUL_k_reg),
      .m_axis_result_tdata(v_sub_Vr_mul_v_sub_Vt_MUL_h_div_C_mul_k_wire)
  );

  // v - (h/C) * (u - i)
  double_sub v_SUB_h_div_C_mul_u_sub_i (
      .s_axis_a_tvalid(enable),
      .s_axis_a_tdata(v_second_reg),
      .s_axis_b_tvalid(enable),
      .s_axis_b_tdata(h_div_C_MUL_u_sub_i_reg),
      .m_axis_result_tdata(v_SUB_h_div_C_mul_u_sub_i_wire)
  );

  // a * h * (v - Vr) * b
  double_mul b_MUL_a_mul_h_mul_v_sub_Vr (
      .s_axis_a_tvalid(enable),
      .s_axis_a_tdata(b),
      .s_axis_b_tvalid(enable),
      .s_axis_b_tdata(a_mul_h_MUL_v_sub_Vr_reg),
      .m_axis_result_tdata(b_MUL_a_mul_h_mul_v_sub_Vr_wire)
  );

  // u - a * h * u
  double_sub u_SUB_a_mul_h_mul_u (
      .s_axis_a_tvalid(enable),
      .s_axis_a_tdata(u_second_reg),
      .s_axis_b_tvalid(enable),
      .s_axis_b_tdata(a_mul_h_MUL_u_reg),
      .m_axis_result_tdata(u_SUB_a_mul_h_mul_u_wire)
  );

  // v - (h/C) * (u - i) + (v - Vr)*(v - Vt)*(h/C)*k
  double_add v (
      .s_axis_a_tvalid(enable),
      .s_axis_a_tdata(v_SUB_h_div_C_mul_u_sub_i_reg),
      .s_axis_b_tvalid(enable),
      .s_axis_b_tdata(v_sub_Vr_mul_v_sub_Vt_MUL_h_div_C_mul_k_reg),
      .m_axis_result_tdata(v_wire)
  );

  // u - a * h * u + a * h * (v - Vr) * b
  double_add u (
      .s_axis_a_tvalid(enable),
      .s_axis_a_tdata(u_SUB_a_mul_h_mul_u_reg),
      .s_axis_b_tvalid(enable),
      .s_axis_b_tdata(b_MUL_a_mul_h_mul_v_sub_Vr_reg),
      .m_axis_result_tdata(u_wire)
  );

  // if v > = V_peak
  double_compare v_GREATER_OR_EQUAL_Vpeak (
      .s_axis_a_tvalid(enable),
      .s_axis_a_tdata(v_wire),
      .s_axis_b_tvalid(enable),
      .s_axis_b_tdata(Vpeak),
      .m_axis_result_tdata(v_greater_or_equal_Vpeak)
  );

  // u = u + d
  double_add u_ADD_d (
      .s_axis_a_tvalid(enable),
      .s_axis_a_tdata(u_third_reg),
      .s_axis_b_tvalid(enable),
      .s_axis_b_tdata(d),
      .m_axis_result_tdata(u_add_d_wire)
  );

  // v, u initialization
  initial begin
    $readmemh("v_initial.mem", v_reg);
    $readmemh("u_initial.mem", u_reg);
  end

  // Memory pointer
  always @(posedge clk, posedge rstp) begin
    if (rstp) begin
      pointer <= 2'b00;
    end else begin
      pointer <= pointer + (enable ? 2'b01 : 2'b00);
    end
  end

// Counter for wasted pipeline
  always @(posedge clk, posedge rstp) begin
    if (rstp) begin
      waste <= 2'b00;
    end else begin
      if (waste == 2'b11) begin
        waste <= waste;
      end else begin
        waste <= waste + (enable ? 2'b01 : 2'b00);
      end
    end
  end

  // Shift Register

  // Level 1
  always @(posedge clk, posedge rstp) begin
    if (rstp) begin
      v_first_reg  <= 64'd0;
      u_first_reg  <= 64'd0;
      v_SUB_Vr_reg <= 64'd0;
      v_SUB_Vt_reg <= 64'd0;
      h_DIV_C_reg  <= 64'd0;
      u_SUB_i_reg  <= 64'd0;
      a_MUL_h_reg  <= 64'd0;
    end else begin

      v_first_reg  <= v_reg[pointer];
      u_first_reg  <= u_reg[pointer];
      v_SUB_Vr_reg <= v_SUB_Vr_wire;
      v_SUB_Vt_reg <= v_SUB_Vt_wire;
      h_DIV_C_reg  <= h_DIV_C_wire;
      u_SUB_i_reg  <= u_SUB_i_wire;
      a_MUL_h_reg  <= a_MUL_h_wire;
    end
  end

  // Level 2
  always @(posedge clk, posedge rstp) begin
    if (rstp) begin
      v_second_reg              <= 64'd0;
      u_second_reg              <= 64'd0;
      v_sub_Vr_MUL_v_sub_Vt_reg <= 64'd0;
      h_div_C_MUL_k_reg         <= 64'd0;
      h_div_C_MUL_u_sub_i_reg   <= 64'd0;
      a_mul_h_MUL_v_sub_Vr_reg  <= 64'd0;
      a_mul_h_MUL_u_reg         <= 64'd0;
    end else begin
      v_second_reg              <= v_first_reg;
      u_second_reg              <= u_first_reg;
      v_sub_Vr_MUL_v_sub_Vt_reg <= v_sub_Vr_MUL_v_sub_Vt_wire;
      h_div_C_MUL_k_reg         <= h_div_C_MUL_k_wire;
      h_div_C_MUL_u_sub_i_reg   <= h_div_C_MUL_u_sub_i_wire;
      a_mul_h_MUL_v_sub_Vr_reg  <= a_mul_h_MUL_v_sub_Vr_wire;
      a_mul_h_MUL_u_reg         <= a_mul_h_MUL_u_reg;
    end
  end

  // Level 3
  always @(posedge clk, posedge rstp) begin
    if (rstp) begin
      u_third_reg                                 <= 64'd0;
      v_sub_Vr_mul_v_sub_Vt_MUL_h_div_C_mul_k_reg <= 64'd0;
      v_SUB_h_div_C_mul_u_sub_i_reg               <= 64'd0;
      b_MUL_a_mul_h_mul_v_sub_Vr_reg              <= 64'd0;
      u_SUB_a_mul_h_mul_u_reg                     <= 64'd0;
    end else begin
      u_third_reg                                 <= u_second_reg;
      v_sub_Vr_mul_v_sub_Vt_MUL_h_div_C_mul_k_reg <= v_sub_Vr_mul_v_sub_Vt_MUL_h_div_C_mul_k_wire;
      v_SUB_h_div_C_mul_u_sub_i_reg               <= v_SUB_h_div_C_mul_u_sub_i_wire;
      b_MUL_a_mul_h_mul_v_sub_Vr_reg              <= b_MUL_a_mul_h_mul_v_sub_Vr_wire;
      u_SUB_a_mul_h_mul_u_reg                     <= u_SUB_a_mul_h_mul_u_wire;
    end
  end

  // Level 4
  always @(posedge clk, posedge rstp) begin
    if (rstp) begin
      $readmemh("v_initial.mem", v_reg);
      $readmemh("u_initial.mem", u_reg);
    end else begin
      if (waste == 2'b11) begin
        if (v_greater_or_equal_Vpeak[0]) begin
          v_reg[pointer+2'b01]  <= Vmin;
          u_reg[pointer+2'b01]  <= u_add_d_wire;
          spikes[pointer+2'b01] <= 1'b1;
        end else begin
          v_reg[pointer+2'b01]  <= v_wire;
          u_reg[pointer+2'b01]  <= u_wire;
          spikes[pointer+2'b01] <= 1'b0;
        end
      end else begin
        v_reg[pointer+2'b01] <= v_reg[pointer+2'b01];
        u_reg[pointer+2'b01] <= u_reg[pointer+2'b01];
        spikes[pointer+2'b01] <= spikes[pointer+2'b01];
      end
    end
  end



endmodule
