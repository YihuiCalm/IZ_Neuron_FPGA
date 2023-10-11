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


module DG_granule_model_tb #(
    parameter para_t_step = 64'h3EE4F8B588E368F1,
    parameter para_k      = 64'h3FDC9E9FFEF77708,
    parameter para_a      = 64'h3F6ADE88EAFF4E9A,
    parameter para_b      = 64'h40387A79DD11A219,
    parameter para_Vmin   = 64'hC0509DCCF74ADAA6,
    parameter para_d      = 64'h4049000000000000,
    parameter para_C      = 64'h4043000000000000,
    parameter para_Vr     = 64'hC05359C9552312EF,
    parameter para_Vt     = 64'hC046734508F4A5F5,
    parameter para_Vpeak  = 64'h402EFABD77A2DBC8
) ();

    reg clk    = 1'b0;
    reg rstp   = 1'b0;
    reg enable = 1'b0;
    reg [63:0] i[3:0];
    wire [3:0] led;

    reg [1:0] pointer = 2'b00;

    always #1 clk = ~clk;

    wire clk_33_3;
    wire locked;

    clk_33_3 inst_clk_33_3 (
        .clk_out1(clk_33_3),
        .locked  (locked),
        .clk_in1 (clk)
    );

    always @(posedge clk_33_3) begin
        if (!locked) begin
            pointer <= 2'b00;
        end
        else begin
            pointer <= pointer + 2'b01;
        end
    end

    // always @(posedge clk) begin
    //     if (rstp) begin
    //         pointer <= 2'b00;
    //     end
    //     else begin
    //         pointer <= pointer + 2'b01;
    //     end
    // end

    initial begin

        $readmemh("i_tb_initial.mem", i);
        #20 enable = 1'b1;

    end

    DG_multiple_led #(
        .para_t_step(para_t_step),
        .para_k     (para_k),
        .para_a     (para_a),
        .para_b     (para_b),
        .para_Vmin  (para_Vmin),
        .para_d     (para_d),
        .para_C     (para_C),
        .para_Vr    (para_Vr),
        .para_Vt    (para_Vt),
        .para_Vpeak (para_Vpeak)
    ) DUT_DG_multiple_led (
        .clk (clk),
        .rstp(rstp),
        .led (led)
    );


endmodule
