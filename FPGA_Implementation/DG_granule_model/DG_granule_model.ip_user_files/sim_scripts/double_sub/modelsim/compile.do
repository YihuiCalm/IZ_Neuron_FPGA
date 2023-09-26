vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu \
"../../../../DG_granule_model.gen/sources_1/ip/double_sub/double_sub_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

