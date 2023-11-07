`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 05:44:09 PM
// Design Name: 
// Module Name: IZ_pipeline_16
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

module IZ_pipeline_16
// Young DG neuron
#(
    parameter precision   = 16,
    parameter para_t_step = 16'h0148, // 0.01
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
// Mature DG neuron
// #(
//     parameter precision   = 16,
//     parameter para_t_step = 16'h0148, // 0.1
//     parameter para_k      = 16'h08f6,
//     parameter para_a      = 16'h0f5c,
//     parameter para_b      = 16'h2666,
//     parameter para_Vmin   = 16'hb84f,
//     parameter para_d      = 16'h147b,
//     parameter para_C_dived_1      = 16'h0240,
//     parameter para_Vr     = 16'h98d5,
//     parameter para_Vt     = 16'hced9,
//     parameter para_Vpeak  = 16'h30e5
// )
(
    input             clk,
    input             rst_n,
    input [15:0] i_mul_h,
    output spike
);

    
    reg [15:0] v;
    reg [15:0] u;
    reg [15:0] v_next;
    reg [15:0] u_next;

    wire [15:0] u_peak;

    wire [15:0] v_sub_vr_mul_v_sub_vt;
    wire [15:0] k_mul_h_mul_v_sub_vr_mul_v_sub_vt;
    wire [15:0] u_mul_h;
    wire [15:0] dv;
    wire [15:0] b_mul_v_sub_Vr;
    wire [15:0] b_mul_v_sub_Vr_sub_u_mul_a;
    wire [15:0] b_mul_v_sub_Vr_sub_u_mul_a_mul_h;

    wire [15:0] h_root = 16'h0ccd;
    wire [15:0] k_div_C_mul_100 = 16'h2177;
    wire [15:0] k_mul_h = 16'h0a3d;
    //wire [15:0] i_mul_h = 16'h0148; // i=100
    wire [15:0] h_mul_a_mul_b = 16'h000c;
    wire [15:0] h_mul_a = 16'h0027;

    always @(posedge clk) begin
        if (~rst_n) begin
            v <= para_Vr;
            u <= 0;
        end
        else begin
            if (spike) begin
                v <= para_Vmin;
                u <= u + para_d;
                if (u_peak[15]) begin
                    u <= 16'h7fff;
                end
                else begin
                    u <= u_peak;
                end
            end
            else begin
                v <= v_next;
                if (u[15]) begin
                    u <= 16'h7fff;
                end
                else begin
                    u <= u_next;
                end
                
            end
        end
            
    end

    always @(*) begin
        // v_next = v;
        // u_next = u;
        v_next = v + fixed_16_mul(k_div_C_mul_100,fixed_16_mul(fixed_16_mul(v,h_root)-fixed_16_mul(para_Vr,h_root),fixed_16_mul(v,h_root)-fixed_16_mul(para_Vt,h_root)))-fixed_16_mul(fixed_16_mul(u,para_t_step)-i_mul_h,para_C_dived_1);
        u_next = u + fixed_16_mul(h_root,fixed_16_mul(para_a,fixed_16_mul(para_b,fixed_16_mul(v,h_root)-fixed_16_mul(para_Vr,h_root))-fixed_16_mul(h_root,u)));
    end

    assign spike = ((~v[15]) & (v >= para_Vpeak));
    assign u_peak = u + para_d;

    function [15:0] fixed_16_mul;
        input [15:0] a;
        input [15:0] b;

        reg [29:0] temp;
        reg [14:0] a_temp, b_temp;

        begin
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

            temp = a_temp[14:0] * b_temp[14:0];
            if (a[15] ^ b[15]) begin
                fixed_16_mul = ~{1'b0, temp[29:15]} + 1;
            end
            else begin
                fixed_16_mul = {1'b0, temp[29:15]};
            end
        end
        
    endfunction

    

endmodule
