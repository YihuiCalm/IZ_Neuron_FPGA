vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu \
"../../../../DG_granule_model.gen/sources_1/ip/double_compare/double_compare_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

