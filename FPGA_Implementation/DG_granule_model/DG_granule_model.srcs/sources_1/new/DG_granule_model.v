`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2023 07:22:27 PM
// Design Name: 
// Module Name: DG_granule_model
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


module DG_granule_model(
	input clk,
	input rstn,
	input [63:0] i,
	
	output reg [63:0] v = 64'hC05359C9552312EF,
	output reg [63:0] u = 64'd0
    );
    
    wire [63:0] t_step = 64'h3F50624DD2F1A9FC;
    wire [63:0] k = 64'h3FDC9E9FFEF77708;
    wire [63:0] a = 64'h3F6ADE88EAFF4E9A;
    wire [63:0] b = 64'h40387A79DD11A219;
    wire [63:0] Vmin = 64'hC0509DCCF74ADAA6;
    wire [63:0] d = 64'h4049000000000000;
    wire [63:0] C = 64'h4043000000000000;
    wire [63:0] Vr = 64'hC05359C9552312EF;
    wire [63:0] Vt = 64'hC046734508F4A5F5;
    wire [63:0] Vpeak = 64'h402EFABD77A2DBC8;
    
    wire [63:0] v_next = 64'd0;
    wire [63:0] u_next = 64'd0;
    
    always @(posedge clk, negedge rstn) begin
    	if (rstn == 1'b0) begin
    		v = 64'hC05359C9552312EF;
			u = 64'd0;
		end
		else begin
			v = v_next;
			u = u_next;
		end
	end
    
    wire [63:0] v_sub_Vr = 64'd0;
    wire [63:0] v_sub_Vt = 64'd0;
    wire [63:0] v_sub_Vr_mul_v_sub_Vt = 64'd0;
    wire [63:0] v_sub_Vr_mul_v_sub_Vt_mul_k = 64'd0;
	wire [63:0] v_sub_Vr_mul_v_sub_Vt_mul_k_sub_u = 64'd0;
    wire [63:0] v_sub_Vr_mul_v_sub_Vt_mul_k_sub_u_add_i = 64'd0;
    wire [63:0] dv_div_dt = 64'd0;
    wire [63:0] tstep_mul_dv_div_dt = 64'd0;

	wire [63:0] b_mul_v_sub_Vr = 64'd0;
	wire [63:0] b_mul_v_sub_Vr_sub_u = 64'd0;
	wire [63:0] du_div_dt = 64'd0;
	wire [63:0] tstep_mul_du_div_dt = 64'd0;
	wire [63:0] u_add_d = 64'd0;
	
	double_sub v_SUB_Vr (
	  .aclk(clk),                           
	  .s_axis_a_tvalid(1'b1),          
	  .s_axis_a_tdata(v),              
	  .s_axis_b_tvalid(1'b1),           
	  .s_axis_b_tdata(Vr),              
	  .m_axis_result_tdata(v_sub_Vr)    
	);
	
	double_sub v_SUB_Vt (
	  .aclk(clk),                           
	  .s_axis_a_tvalid(1'b1),          
	  .s_axis_a_tdata(v),              
	  .s_axis_b_tvalid(1'b1),           
	  .s_axis_b_tdata(Vt),              
	  .m_axis_result_tdata(v_sub_Vt)    
	);
	
	double_mul v_sub_Vr_MUL_v_sub_Vt (
	  .aclk(clk),                           
	  .s_axis_a_tvalid(1'b1),          
	  .s_axis_a_tdata(v_sub_Vr),              
	  .s_axis_b_tvalid(1'b1),           
	  .s_axis_b_tdata(v_sub_Vt),              
	  .m_axis_result_tdata(v_sub_Vr_mul_v_sub_Vt)    
	);
	
	double_mul v_sub_Vr_mul_v_sub_Vt_MUL_k (
	  .aclk(clk),                           
	  .s_axis_a_tvalid(1'b1),          
	  .s_axis_a_tdata(v_sub_Vr_mul_v_sub_Vt),              
	  .s_axis_b_tvalid(1'b1),           
	  .s_axis_b_tdata(k),              
	  .m_axis_result_tdata(v_sub_Vr_mul_v_sub_Vt_mul_k)    
	);
	
	double_sub v_sub_Vr_mul_v_sub_Vt_mul_k_SUB_u (
	  .aclk(clk),                           
	  .s_axis_a_tvalid(1'b1),          
	  .s_axis_a_tdata(v_sub_Vr_mul_v_sub_Vt_mul_k),              
	  .s_axis_b_tvalid(1'b1),           
	  .s_axis_b_tdata(u),              
	  .m_axis_result_tdata(v_sub_Vr_mul_v_sub_Vt_mul_k_sub_u)    
	);
	
	double_add v_sub_Vr_mul_v_sub_Vt_mul_k_sub_u_ADD_i (
	  .aclk(clk),                           
	  .s_axis_a_tvalid(1'b1),          
	  .s_axis_a_tdata(v_sub_Vr_mul_v_sub_Vt_mul_k_sub_u),              
	  .s_axis_b_tvalid(1'b1),           
	  .s_axis_b_tdata(i),              
	  .m_axis_result_tdata(v_sub_Vr_mul_v_sub_Vt_mul_k_sub_u_add_i)    
	);
	
	double_div dv_DIV_dt (
	  .aclk(clk),                           
	  .s_axis_a_tvalid(1'b1),          
	  .s_axis_a_tdata(v_sub_Vr_mul_v_sub_Vt_mul_k_sub_u_add_i),              
	  .s_axis_b_tvalid(1'b1),           
	  .s_axis_b_tdata(C),              
	  .m_axis_result_tdata(dv_div_dt)    
	);
	
	double_mul tstep_MUL_dv_div_dt (
	  .aclk(clk),                           
	  .s_axis_a_tvalid(1'b1),          
	  .s_axis_a_tdata(dv_div_dt),              
	  .s_axis_b_tvalid(1'b1),           
	  .s_axis_b_tdata(t_step),              
	  .m_axis_result_tdata(tstep_mul_du_div_dt)    
	);
	
	double_add v_new (
	  .aclk(clk),                           
	  .s_axis_a_tvalid(1'b1),          
	  .s_axis_a_tdata(tstep_mul_du_div_dt),              
	  .s_axis_b_tvalid(1'b1),           
	  .s_axis_b_tdata(v),              
	  .m_axis_result_tdata(v_next)    
	);
	
    
endmodule
