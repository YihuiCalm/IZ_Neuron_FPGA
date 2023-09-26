`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/26/2023 08:31:17 AM
// Design Name:
// Module Name: Izhikevich_model
// Project Name:
// Target Devices:
// Tool Versions:
// Description: Verilog implementation of 9 parameters Izhikevich Neuron Model.
//              Default parameter value is for DG granule cell model.
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module Izhikevich_model #(parameter para_t_step = 64'h3F50624DD2F1A9FC,
                          parameter para_k = 64'h3FDC9E9FFEF77708,
                          parameter para_a = 64'h3F6ADE88EAFF4E9A,
                          parameter para_b = 64'h40387A79DD11A219,
                          parameter para_Vmin = 64'hC0509DCCF74ADAA6,
                          parameter para_d = 64'h4049000000000000,
                          parameter para_C = 64'h4043000000000000,
                          parameter para_Vr = 64'hC05359C9552312EF,
                          parameter para_Vt = 64'hC046734508F4A5F5,
                          parameter para_Vpeak = 64'h402EFABD77A2DBC8)
                         (input clk,
                          input rstn,
                          input enable,
                          input [63:0] i,
                          output reg [63:0] v = para_Vr,
                          output reg [63:0] u = 64'd0);
    
    // Parameters for Izhikevich Model
    wire [63:0] t_step = para_t_step;
    wire [63:0] k      = para_k;
    wire [63:0] a      = para_a;
    wire [63:0] b      = para_b;
    wire [63:0] Vmin   = para_Vmin;
    wire [63:0] d      = para_d;
    wire [63:0] C      = para_C;
    wire [63:0] Vr     = para_Vr;
    wire [63:0] Vt     = para_Vt;
    wire [63:0] Vpeak  = para_Vpeak;
    
    wire [63:0] v_next;
    wire [63:0] u_next;
    wire [7:0] v_greater_or_equal_Vpeak;
    
    // Calculation result during solving ODE for membrane potential v
    wire [63:0] v_sub_Vr                                ;
    wire [63:0] v_sub_Vt                                ;
    wire [63:0] v_sub_Vr_mul_v_sub_Vt                   ;
    wire [63:0] v_sub_Vr_mul_v_sub_Vt_mul_k             ;
    wire [63:0] v_sub_Vr_mul_v_sub_Vt_mul_k_sub_u       ;
    wire [63:0] v_sub_Vr_mul_v_sub_Vt_mul_k_sub_u_add_i ;
    wire [63:0] dv_div_dt                               ;
    wire [63:0] tstep_mul_dv_div_dt                     ;
    
    // Calculation result during solving ODE for mmembrane recovery u
    wire [63:0] b_mul_v_sub_Vr       ;
    wire [63:0] b_mul_v_sub_Vr_sub_u ;
    wire [63:0] du_div_dt            ;
    wire [63:0] tstep_mul_du_div_dt  ;
    wire [63:0] u_add_d              ;
    
    // Update v and u
    always @(posedge clk, negedge rstn) begin
        if (rstn == 1'b0) begin
            v = 64'hC05359C9552312EF;
            u = 64'd0;
        end
        else begin
            if (|v_greater_or_equal_Vpeak) begin
                v <= Vmin;
                u <= u_add_d;
                end else begin
                v = v_next;
                u = u_next;
            end
            
        end
    end
    
    // if v > = V_peak
    double_compare v_GREATER_OR_EQUAL_Vpeak (
    .s_axis_a_tvalid(enable),
    .s_axis_a_tdata(v),
    .s_axis_b_tvalid(enable),
    .s_axis_b_tdata(Vpeak),
    .m_axis_result_tdata(v_greater_or_equal_Vpeak)
    );
    
    // Calculation of solving ODE for membrane potential v using IP Core
    
    // v - Vr
    double_sub v_SUB_Vr (
    .s_axis_a_tvalid(enable),
    .s_axis_a_tdata(v),
    .s_axis_b_tvalid(enable),
    .s_axis_b_tdata(Vr),
    .m_axis_result_tdata(v_sub_Vr)
    );
    
    // v - Vt
    double_sub v_SUB_Vt (
    .s_axis_a_tvalid(enable),
    .s_axis_a_tdata(v),
    .s_axis_b_tvalid(enable),
    .s_axis_b_tdata(Vt),
    .m_axis_result_tdata(v_sub_Vt)
    );
    
    // (v - Vr)*(v - Vt)
    double_mul v_sub_Vr_MUL_v_sub_Vt (
    .s_axis_a_tvalid(enable),
    .s_axis_a_tdata(v_sub_Vr),
    .s_axis_b_tvalid(enable),
    .s_axis_b_tdata(v_sub_Vt),
    .m_axis_result_tdata(v_sub_Vr_mul_v_sub_Vt)
    );
    
    // k*(v - Vr)*(v - Vt)
    double_mul v_sub_Vr_mul_v_sub_Vt_MUL_k (
    .s_axis_a_tvalid(enable),
    .s_axis_a_tdata(v_sub_Vr_mul_v_sub_Vt),
    .s_axis_b_tvalid(enable),
    .s_axis_b_tdata(k),
    .m_axis_result_tdata(v_sub_Vr_mul_v_sub_Vt_mul_k)
    );
    
    // k*(v - Vr)*(v - Vt) - u
    double_sub v_sub_Vr_mul_v_sub_Vt_mul_k_SUB_u (
    .s_axis_a_tvalid(enable),
    .s_axis_a_tdata(v_sub_Vr_mul_v_sub_Vt_mul_k),
    .s_axis_b_tvalid(enable),
    .s_axis_b_tdata(u),
    .m_axis_result_tdata(v_sub_Vr_mul_v_sub_Vt_mul_k_sub_u)
    );
    
    // k*(v - Vr)*(v - Vt) - u + i
    double_add v_sub_Vr_mul_v_sub_Vt_mul_k_sub_u_ADD_i (
    .s_axis_a_tvalid(enable),
    .s_axis_a_tdata(v_sub_Vr_mul_v_sub_Vt_mul_k_sub_u),
    .s_axis_b_tvalid(enable),
    .s_axis_b_tdata(i),
    .m_axis_result_tdata(v_sub_Vr_mul_v_sub_Vt_mul_k_sub_u_add_i)
    );
    
    // dv/dt = (k*(v - Vr)*(v - Vt) - u + i)/C
    double_div dv_DIV_dt (
    .s_axis_a_tvalid(enable),
    .s_axis_a_tdata(v_sub_Vr_mul_v_sub_Vt_mul_k_sub_u_add_i),
    .s_axis_b_tvalid(enable),
    .s_axis_b_tdata(C),
    .m_axis_result_tdata(dv_div_dt)
    );
    
    // h*(k*(v - Vr)*(v - Vt) - u + i)/C
    double_mul tstep_MUL_dv_div_dt (
    .s_axis_a_tvalid(enable),
    .s_axis_a_tdata(dv_div_dt),
    .s_axis_b_tvalid(enable),
    .s_axis_b_tdata(t_step),
    .m_axis_result_tdata(tstep_mul_dv_div_dt)
    );
    
    // v_new = v_old + h*(k*(v - Vr)*(v - Vt) - u + i)/C
    double_add v_new (
    .s_axis_a_tvalid(enable),
    .s_axis_a_tdata(tstep_mul_dv_div_dt),
    .s_axis_b_tvalid(enable),
    .s_axis_b_tdata(v),
    .m_axis_result_tdata(v_next)
    );
    
    // Calculation of solving ODE for membrane recovery u using IP Core
    
    // b*(v - Vr)
    double_mul b_MUL_v_sub_Vr (
    .s_axis_a_tvalid(enable),
    .s_axis_a_tdata(v_sub_Vr),
    .s_axis_b_tvalid(enable),
    .s_axis_b_tdata(b),
    .m_axis_result_tdata(b_mul_v_sub_Vr)
    );
    
    // b*(v - Vr) - u
    double_sub b_mul_v_sub_Vr_SUB_u (
    .s_axis_a_tvalid(enable),
    .s_axis_a_tdata(b_mul_v_sub_Vr),
    .s_axis_b_tvalid(enable),
    .s_axis_b_tdata(u),
    .m_axis_result_tdata(b_mul_v_sub_Vr_sub_u)
    );
    
    // du/dt = a*(b*(v - Vr) - u)
    double_mul du_div_dt_MUL (
    .s_axis_a_tvalid(enable),
    .s_axis_a_tdata(a),
    .s_axis_b_tvalid(enable),
    .s_axis_b_tdata(b_mul_v_sub_Vr_sub_u),
    .m_axis_result_tdata(du_div_dt)
    );
    
    // h*a*(b*(v - Vr) - u)
    double_mul tstep_MUL_du_div_dt (
    .s_axis_a_tvalid(enable),
    .s_axis_a_tdata(t_step),
    .s_axis_b_tvalid(enable),
    .s_axis_b_tdata(du_div_dt),
    .m_axis_result_tdata(tstep_mul_du_div_dt)
    );
    
    // u_new = u_old + h*a*(b*(v - Vr) - u)
    double_add u_new (
    .s_axis_a_tvalid(enable),
    .s_axis_a_tdata(u),
    .s_axis_b_tvalid(enable),
    .s_axis_b_tdata(tstep_mul_du_div_dt),
    .m_axis_result_tdata(u_next)
    );
    
    // u_new = u_old + d
    double_add u_ADD_d (
    .s_axis_a_tvalid(enable),
    .s_axis_a_tdata(u),
    .s_axis_b_tvalid(enable),
    .s_axis_b_tdata(d),
    .m_axis_result_tdata(u_add_d)
    );
    
endmodule
