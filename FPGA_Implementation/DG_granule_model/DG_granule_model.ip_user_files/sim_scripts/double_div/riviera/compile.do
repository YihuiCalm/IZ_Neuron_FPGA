vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../DG_granule_model.gen/sources_1/ip/double_div/double_div_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

