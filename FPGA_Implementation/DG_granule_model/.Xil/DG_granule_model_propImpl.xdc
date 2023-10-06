set_property SRC_FILE_INFO {cfile:d:/ADAM_LAB/IZ_Neuron_FPGA/FPGA_Implementation/DG_granule_model/DG_granule_model.gen/sources_1/ip/clk_400/clk_400.xdc rfile:../DG_granule_model.gen/sources_1/ip/clk_400/clk_400.xdc id:1 order:EARLY scoped_inst:inst_clk_400/inst} [current_design]
set_property SRC_FILE_INFO {cfile:D:/ADAM_LAB/IZ_Neuron_FPGA/FPGA_Implementation/DG_granule_model/DG_granule_model.srcs/constrs_1/imports/FPGA/Basys-3-Master.xdc rfile:../DG_granule_model.srcs/constrs_1/imports/FPGA/Basys-3-Master.xdc id:2} [current_design]
current_instance inst_clk_400/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
current_instance
set_property src_info {type:XDC file:2 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports btnC]
set_property src_info {type:XDC file:2 line:68 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports btnU]
