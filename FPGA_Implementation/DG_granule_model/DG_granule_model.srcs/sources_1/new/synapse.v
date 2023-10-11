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


module synapse #(
    parameter exp_decay = 64'h3FEFFFEB074A771D,  //(1-timestep) 0.99999
    parameter weight    = 64'h40B7700000000000   // Weight 6000
) (
    input clk,
    input rstp,
    input spike,
    input enable,
    output reg [63:0] i
);

    // Internal connectiions and registers defination
    reg  [63:0] i_next;
    wire [63:0] i_mul_decay;
    wire [63:0] weight_add_i_mul_decay;

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

    // Synaptic output
    always @(posedge clk) begin
        if (rstp) begin
            i <= 64'd0;
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
            i_next = i_mul_decay;
        end
    end



endmodule
