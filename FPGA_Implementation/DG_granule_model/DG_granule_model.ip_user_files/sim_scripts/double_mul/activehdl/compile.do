vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../DG_granule_model.gen/sources_1/ip/double_mul/double_mul_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

