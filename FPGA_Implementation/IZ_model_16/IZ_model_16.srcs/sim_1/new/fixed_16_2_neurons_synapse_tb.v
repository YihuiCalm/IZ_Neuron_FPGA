`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2023 07:34:43 PM
// Design Name: 
// Module Name: fixed_16_2_neurons_synapse_tb
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
`timescale  1ns / 1ps

module fixed_16_2_neurons_synapse_tb();

// IZ_pipeline_16 Parameters
parameter PERIOD          = 10      ;
parameter precision       = 16      ;
parameter para_t_step     = 16'h0148;
parameter para_k          = 16'h0a3d;
parameter para_a          = 16'h0014;
parameter para_b          = 16'h47ae;
parameter para_Vmin       = 16'haaeb;
parameter para_d          = 16'h5eb8;
parameter para_C_dived_1  = 16'h042f;
parameter para_Vr         = 16'h9f3b;
parameter para_Vt         = 16'hc937;
parameter para_Vpeak      = 16'h30e5;
// Synapse Parameters
parameter weight = 16'h051f;

// IZ_pipeline_16 Inputs
reg   clk                                  = 0 ;
reg   rst_n                                 = 0 ;


// IZ_pipeline_16 Outputs
wire  spike_1                                ;
wire  spike_2                                ;
wire   [15:0]  i_mul_h                     ;

initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end

IZ_pipeline_16 #(
    .precision      ( precision      ),
    .para_t_step    ( para_t_step    ),
    .para_k         ( para_k         ),
    .para_a         ( para_a         ),
    .para_b         ( para_b         ),
    .para_Vmin      ( para_Vmin      ),
    .para_d         ( para_d         ),
    .para_C_dived_1 ( para_C_dived_1 ),
    .para_Vr        ( para_Vr        ),
    .para_Vt        ( para_Vt        ),
    .para_Vpeak     ( para_Vpeak     ))
 u1_IZ_pipeline_16 (
    .clk                     ( clk             ),
    .rst_n                    ( rst_n            ),
    .i_mul_h                 ( 16'h0ccd ),

    .spike                   ( spike_1           )
);

fixed_16_synapse 
#(
    .weight (weight )
)
u_fixed_16_synapse(
    .clk     (clk     ),
    .rst_n   (rst_n   ),
    .spike   (spike_1   ),
    .i_mul_h (i_mul_h )
);


IZ_pipeline_16 #(
    .precision      ( precision      ),
    .para_t_step    ( para_t_step    ),
    .para_k         ( para_k         ),
    .para_a         ( para_a         ),
    .para_b         ( para_b         ),
    .para_Vmin      ( para_Vmin      ),
    .para_d         ( para_d         ),
    .para_C_dived_1 ( para_C_dived_1 ),
    .para_Vr        ( para_Vr        ),
    .para_Vt        ( para_Vt        ),
    .para_Vpeak     ( para_Vpeak     ))
 u2_IZ_pipeline_16 (
    .clk                     ( clk             ),
    .rst_n                    ( rst_n            ),
    .i_mul_h                 ( i_mul_h ),

    .spike                   ( spike_2           )
);



initial
begin


    #(PERIOD*100)
    $finish;
end

endmodule
