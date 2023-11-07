`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ADAM LAB @ GWU
// Engineer: Yihui Wang
// 
// Create Date: 10/05/2023 04:47:24 PM
// Design Name: DG_granule_model
// Module Name: led_spikes
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Led module for spikes indication.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module led_spikes #(
    parameter length = 24'h015555
) (
    input clk,
    input rstp,
    input [3:0] spikes,
    output reg [3:0] led
);

    reg [3:0] duty_cycle[7:0];
    reg [3:0] cycle_counter[7:0];
    reg [23:0] counter;

    reg [3:0] duty_cycle_next[7:0];
    reg [3:0] cycle_counter_next[7:0];
    reg [23:0] counter_next;

    integer j;
    integer i;
    integer k;

    initial begin
        $readmemh("led.mem", duty_cycle);
        $readmemh("led.mem", duty_cycle_next);
        $readmemh("led.mem", cycle_counter);
        $readmemh("led.mem", cycle_counter_next);
    end

    // Duty cycle for PWM
    always @(posedge clk) begin
        for (j = 0; j < 4; j = j + 1) begin
            if (rstp) begin
                duty_cycle[j]    <= 8'h00;
                cycle_counter[j] <= 8'h00;
            end
            else begin
                duty_cycle[j]    <= duty_cycle_next[j];
                cycle_counter[j] <= cycle_counter_next[j];
            end
        end
    end

    always @(*) begin
        for (i = 0; i < 4; i = i + 1) begin
            if (spikes[i]) begin
                duty_cycle_next[i]    = 8'hff;
                cycle_counter_next[i] = 8'h00;
            end
            else if (duty_cycle[i] == 8'h00) begin
                duty_cycle_next[i]    = 8'h00;
                cycle_counter_next[i] = 8'h00;
            end
            else begin
                if (counter == length) begin
                    duty_cycle_next[i] = duty_cycle[i] - 8'h01;
                end
                else begin
                    duty_cycle_next[i] = duty_cycle[i];
                end
                cycle_counter_next[i] = cycle_counter[i] + 8'h01;
            end
        end

    end

    // Frequency for PWM
    always @(posedge clk) begin
        if (rstp) begin
            counter <= 24'd0;
        end
        else begin
            counter <= counter_next;
        end
    end

    always @(*) begin
        if (counter == length) begin
            counter_next = 24'd0;
        end
        else begin
            counter_next = counter + 24'd1;
        end

    end

    // Led output
    always @(*) begin
        for (k = 0; k < 4; k = k + 1) begin
            led[k] = (cycle_counter[k] < duty_cycle[k]);
        end
    end



endmodule
