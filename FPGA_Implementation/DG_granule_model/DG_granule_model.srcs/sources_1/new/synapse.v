`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 03:13:32 PM
// Design Name: 
// Module Name: synapse
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
//`define SINGLE_PRECISION

module synapse #(
`ifdef SINGLE_PRECISION
    parameter precision = 32,
    parameter exp_decay = 32'h3F7FFF58,          //(1-timestep) 0.99999
    parameter weight    = 32'h45BB8000           // Weight 6000
`else
    parameter precision = 64,
    parameter exp_decay = 64'h3FEFFFEB074A771D,  //(1-timestep) 0.99999
    parameter weight    = 64'h40B7700000000000   // Weight 6000
`endif
) (
    input clk,
    input rstp,
    input spike,
    input enable,
    output reg [precision-1:0] i
);

    // Internal connectiions and registers defination
    reg  [precision-1:0] i_next;
    wire [precision-1:0] i_mul_decay;
    wire [precision-1:0] weight_add_i_mul_decay;

    // Single precision
    `ifdef SINGLE_PRECISION
    // Instantiation of double ALU
    single_mul inst_i_MUL_decay (
        .s_axis_a_tvalid    (enable),
        .s_axis_a_tdata     (i),
        .s_axis_b_tvalid    (enable),
        .s_axis_b_tdata     (exp_decay),
        .m_axis_result_tdata(i_mul_decay)
    );

    single_add inst_weight_ADD_i_mul_decay (
        .s_axis_a_tvalid    (enable),
        .s_axis_a_tdata     (weight),
        .s_axis_b_tvalid    (enable),
        .s_axis_b_tdata     (i_mul_decay),
        .m_axis_result_tdata(weight_add_i_mul_decay)
    );

    // Double precision
    `else
    // Instantiation of double ALU
    double_mul inst_i_MUL_decay (
        .s_axis_a_tvalid    (enable),
        .s_axis_a_tdata     (i),
        .s_axis_b_tvalid    (enable),
        .s_axis_b_tdata     (exp_decay),
        .m_axis_result_tdata(i_mul_decay)
    );

    double_add inst_weight_ADD_i_mul_decay (
        .s_axis_a_tvalid    (enable),
        .s_axis_a_tdata     (weight),
        .s_axis_b_tvalid    (enable),
        .s_axis_b_tdata     (i_mul_decay),
        .m_axis_result_tdata(weight_add_i_mul_decay)
    );
    `endif

    // Synaptic output
    always @(posedge clk) begin
        if (rstp) begin
            i <= {precision{1'b0}};
        end
        else begin
            i <= i_next;
        end
    end

    always @(*) begin
        if (spike) begin
            i_next = weight_add_i_mul_decay;
        end
        else begin
            i_next = enable ? i_mul_decay : i;
        end
    end



endmodule
