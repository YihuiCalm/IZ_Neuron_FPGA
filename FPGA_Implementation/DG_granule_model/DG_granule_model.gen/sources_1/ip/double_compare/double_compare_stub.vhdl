-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Tue Sep 26 13:27:37 2023
-- Host        : LAPTOP-U9EM5UJ6 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/81524/OneDrive - The George Washington University/ADAM
--               LAB/IZ_Neuron_FPGA/FPGA_Implementation/DG_granule_model/DG_granule_model.gen/sources_1/ip/double_compare/double_compare_stub.vhdl}
-- Design      : double_compare
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity double_compare is
  Port ( 
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_b_tvalid : in STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_result_tvalid : out STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end double_compare;

architecture stub of double_compare is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axis_a_tvalid,s_axis_a_tdata[63:0],s_axis_b_tvalid,s_axis_b_tdata[63:0],m_axis_result_tvalid,m_axis_result_tdata[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "floating_point_v7_1_13,Vivado 2021.2";
begin
end;
