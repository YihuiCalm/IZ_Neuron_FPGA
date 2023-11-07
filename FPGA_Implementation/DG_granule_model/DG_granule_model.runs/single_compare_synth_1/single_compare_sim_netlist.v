// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Oct 18 14:21:33 2023
// Host        : LAPTOP-U9EM5UJ6 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/DG_granule_model/DG_granule_model.runs/single_compare_synth_1/single_compare_sim_netlist.v
// Design      : single_compare
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "single_compare,floating_point_v7_1_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "floating_point_v7_1_13,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module single_compare
   (s_axis_a_tvalid,
    s_axis_a_tdata,
    s_axis_b_tvalid,
    s_axis_b_tdata,
    m_axis_result_tvalid,
    m_axis_result_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) input s_axis_a_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_a_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B TVALID" *) input s_axis_b_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_B, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_b_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TVALID" *) output m_axis_result_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_RESULT, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [7:0]m_axis_result_tdata;

  wire \<const0> ;
  wire [0:0]\^m_axis_result_tdata ;
  wire m_axis_result_tvalid;
  wire [31:0]s_axis_a_tdata;
  wire s_axis_a_tvalid;
  wire [31:0]s_axis_b_tdata;
  wire s_axis_b_tvalid;
  wire NLW_inst_m_axis_result_tlast_UNCONNECTED;
  wire NLW_inst_s_axis_a_tready_UNCONNECTED;
  wire NLW_inst_s_axis_b_tready_UNCONNECTED;
  wire NLW_inst_s_axis_c_tready_UNCONNECTED;
  wire NLW_inst_s_axis_operation_tready_UNCONNECTED;
  wire [7:1]NLW_inst_m_axis_result_tdata_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_result_tuser_UNCONNECTED;

  assign m_axis_result_tdata[7] = \<const0> ;
  assign m_axis_result_tdata[6] = \<const0> ;
  assign m_axis_result_tdata[5] = \<const0> ;
  assign m_axis_result_tdata[4] = \<const0> ;
  assign m_axis_result_tdata[3] = \<const0> ;
  assign m_axis_result_tdata[2] = \<const0> ;
  assign m_axis_result_tdata[1] = \<const0> ;
  assign m_axis_result_tdata[0] = \^m_axis_result_tdata [0];
  GND GND
       (.G(\<const0> ));
  (* C_ACCUM_INPUT_MSB = "32" *) 
  (* C_ACCUM_LSB = "-31" *) 
  (* C_ACCUM_MSB = "32" *) 
  (* C_A_FRACTION_WIDTH = "24" *) 
  (* C_A_TDATA_WIDTH = "32" *) 
  (* C_A_TUSER_WIDTH = "1" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BRAM_USAGE = "0" *) 
  (* C_B_FRACTION_WIDTH = "24" *) 
  (* C_B_TDATA_WIDTH = "32" *) 
  (* C_B_TUSER_WIDTH = "1" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_COMPARE_OPERATION = "6" *) 
  (* C_C_FRACTION_WIDTH = "24" *) 
  (* C_C_TDATA_WIDTH = "32" *) 
  (* C_C_TUSER_WIDTH = "1" *) 
  (* C_C_WIDTH = "32" *) 
  (* C_FIXED_DATA_UNSIGNED = "0" *) 
  (* C_HAS_ABSOLUTE = "0" *) 
  (* C_HAS_ACCUMULATOR_A = "0" *) 
  (* C_HAS_ACCUMULATOR_PRIMITIVE_A = "0" *) 
  (* C_HAS_ACCUMULATOR_PRIMITIVE_S = "0" *) 
  (* C_HAS_ACCUMULATOR_S = "0" *) 
  (* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) 
  (* C_HAS_ACCUM_OVERFLOW = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ADD = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_A_TLAST = "0" *) 
  (* C_HAS_A_TUSER = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_B_TLAST = "0" *) 
  (* C_HAS_B_TUSER = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_COMPARE = "1" *) 
  (* C_HAS_C_TLAST = "0" *) 
  (* C_HAS_C_TUSER = "0" *) 
  (* C_HAS_DIVIDE = "0" *) 
  (* C_HAS_DIVIDE_BY_ZERO = "0" *) 
  (* C_HAS_EXPONENTIAL = "0" *) 
  (* C_HAS_FIX_TO_FLT = "0" *) 
  (* C_HAS_FLT_TO_FIX = "0" *) 
  (* C_HAS_FLT_TO_FLT = "0" *) 
  (* C_HAS_FMA = "0" *) 
  (* C_HAS_FMS = "0" *) 
  (* C_HAS_INVALID_OP = "0" *) 
  (* C_HAS_LOGARITHM = "0" *) 
  (* C_HAS_MULTIPLY = "0" *) 
  (* C_HAS_OPERATION = "0" *) 
  (* C_HAS_OPERATION_TLAST = "0" *) 
  (* C_HAS_OPERATION_TUSER = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_RECIP = "0" *) 
  (* C_HAS_RECIP_SQRT = "0" *) 
  (* C_HAS_RESULT_TLAST = "0" *) 
  (* C_HAS_RESULT_TUSER = "0" *) 
  (* C_HAS_SQRT = "0" *) 
  (* C_HAS_SUBTRACT = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_UNFUSED_MULTIPLY_ACCUMULATOR_A = "0" *) 
  (* C_HAS_UNFUSED_MULTIPLY_ACCUMULATOR_S = "0" *) 
  (* C_HAS_UNFUSED_MULTIPLY_ADD = "0" *) 
  (* C_HAS_UNFUSED_MULTIPLY_SUB = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MULT_USAGE = "0" *) 
  (* C_OPERATION_TDATA_WIDTH = "8" *) 
  (* C_OPERATION_TUSER_WIDTH = "1" *) 
  (* C_OPTIMIZATION = "1" *) 
  (* C_PART = "xc7a35tcpg236-1" *) 
  (* C_RATE = "1" *) 
  (* C_RESULT_FRACTION_WIDTH = "0" *) 
  (* C_RESULT_TDATA_WIDTH = "8" *) 
  (* C_RESULT_TUSER_WIDTH = "1" *) 
  (* C_RESULT_WIDTH = "1" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  single_compare_floating_point_v7_1_13 inst
       (.aclk(1'b0),
        .aclken(1'b1),
        .aresetn(1'b1),
        .m_axis_result_tdata({NLW_inst_m_axis_result_tdata_UNCONNECTED[7:1],\^m_axis_result_tdata }),
        .m_axis_result_tlast(NLW_inst_m_axis_result_tlast_UNCONNECTED),
        .m_axis_result_tready(1'b0),
        .m_axis_result_tuser(NLW_inst_m_axis_result_tuser_UNCONNECTED[0]),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(NLW_inst_s_axis_a_tready_UNCONNECTED),
        .s_axis_a_tuser(1'b0),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata(s_axis_b_tdata),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_inst_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(s_axis_b_tvalid),
        .s_axis_c_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_c_tlast(1'b0),
        .s_axis_c_tready(NLW_inst_s_axis_c_tready_UNCONNECTED),
        .s_axis_c_tuser(1'b0),
        .s_axis_c_tvalid(1'b0),
        .s_axis_operation_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_operation_tlast(1'b0),
        .s_axis_operation_tready(NLW_inst_s_axis_operation_tready_UNCONNECTED),
        .s_axis_operation_tuser(1'b0),
        .s_axis_operation_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
uAvZQ6ragG+kxPRCVSaQvklllUxwILCa3R9pJ6y0Uub32Dit40Dh+CQMn3J0n08tzTBq7svfVLE0
WER+wGnXTAI9bArkkYNlDMRTpVB++sXJRDLpA8JuXEXG/txdDU4HCEoapXxCdfXswtxHpLrKRBZ4
kps1ySfaW828rLk0d3Q=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
q4yh06AkCDZ3jqTVz2uuLo9vKxUDW9KNY7uRU/wesfTM42YbFCDD1i5roPMkDmpeclUZUnfdke/W
YcxeCZtNuHEUxMrqfTqr0D7JYpsfiqHvthenB4oCHEZm/84GpQhIkGI/ii0HyUjK8yQpqp+4cWUT
DG9Zoq/TBawcXqYHVxHU6pa5M17NqVRRKFEFCQs8juUwbHbrg/NQGDleWsppBfMsoGvqJm5/G0r0
bi0P92Guc0sqhH7fArrCfueQUiVosFS4c7JGKDCLFRhTBLTS0wkFr+r+eaXbRykLKiYxV12X9/cV
a63U5Qz3UDFeIs6hsLngYJG69egZac5MGX3zmw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
WMkxiDP0NVclA0bltwjPlb0N5YYpH2I0cFz0rUtdLwXQbJwNAfA308d1wsGu85TMyVQfmlTQLTG8
SAtHhr1FfBhEfKnTWEcBg1w+XRFOnI3aPOpoYDwu/KjW5e+lmOaPHWz4jwNQp4L3As92ogdG50Us
0bU6hxnH2ZNCMs5cclI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FDu8fDTjbo3ot9Job6blnJIu87ZycNvNqKpT2gJbgA5OH+2uKjUh1IMDcw4+zEUlxRB75xVmQkFE
DAWeywmQOP6sr6enpcXPrDuCyj2lEsvFM2SLF4zJ4dWyfK17WWzb5FrLie85JEyI4pqfkidHwPZj
VWNwdM/7h0jPf5nEUO4OficoTdsA+EpFaywwopmCnjS+1a5PXZQ/RINwlzEh0gIESmgzu/7kEvsQ
ZKzWUNk3WmSmeVgix/bHfZRE4DMnw0SRqq5QDePZTrmCrvppYRCThbkC6fo1Tsn1oW9jrPgeW5T+
x3rAztM8psE7JFdvFJLZ1dyXpnu3/GCOTKjdXw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XU3X6AxVKwRJFNVZRiu37YMZyqJckzX5XXo1YdAAftkUv6F9aaDV5UayEFiaUiwXQp92DLHZWStQ
ZXTxbzR5hrjSq7+XwK9UEc36h3bCBtBGRlpPKOIsuihN5SyKhnDfEGkrrshR6YjeYICzZNeHN4JG
Ff3rQtZ5CHvsvJJzV28oR3sBuxR27bZ9jexArlqRsj/3oue2FwY61OjJzCHtxPRzlTLBH/WQVqc1
TSMo32WRmJjMvQRS6LKMhomP9tjcNk/81kd7nDVRBUIJahSk/XTK7E+ElMyYqGhq3GkR7MW1wqUg
rl5hcbMJNajwyfC35UhWHB6tjDW9l2dRKBUmug==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hXgOQRh/E/EJfdv3rY+vzPTJ209qw57teYuzLMZjN55Nvb+loveJp4tRJRWgpfYud7ugzhF0lBVV
tGjT17Qh/IbnUNLTo8hBWXqGPy0HU1//yE0GtTE8EfEOTUdLNkvqEeDHuTzyYQM7lCFF/U5q7EYl
2hHr58r8Oqc2dJWHB3B59CGjmgzcbCB3xINhxHoUgGXPTLDrtZG9tYppeBcfm3Dgyw9rw7RBUxcA
U9JrL8e/M7C6wOjeawZtUghcbb5BZkYkOFwegWLsGjAgjkRZw6+tavH3U17wmsJOZH0axfqERuN0
ljtm76/zO+GlHWO1yhGxolZnMy+XwuLortqNVA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iOBs6gHKgB5QMrBeWAOzigwttkGSGbXAUM3nUkM16Q2IHOAQH7HJyJtq0iI9GKUWhDf169nd3+u7
QvuHw9F69UEN1NWJvxUENokXjWx4mYn2imU5zPG2dWNxr/VVHFo3GCSCIkqTpGc7EYq1dBx0j00l
idYhGbeNzr+kFbTUTV8YfAP3RIJdPHmgu36mzgd6goYBp9gnxhEZ0BvPJIlH8ngfRHe3ETYZH27r
QA8dt3jNbVN8kblBDT+8oyfmOTJfPXAFCPDiwlUukIQH+I2QqFNWnBA5U8TUNfaS5evyAwOtWuJw
mTlCtu64DZVZ0tKEQseZzGaa+myYmAhJxMznMA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
iUYZzP69Bj6DEds5FsV70S/P78GMygjxTxMR22F60wI6WwXEkqX0rlE3cOigVzpTBTuRnTQqbtc5
atCRxPu7WxWmt57GPxNZ0FsmG0uDsy62YCNRtnMJuCY17uicoKvpMco1gl1T5O6qNEgiwzoaPKbT
I3Cs2ZTzOxN6FE/fB4m1ZByUlpz8ZidjSUl2Lwxikfuuh/TZgF7AXC8NWlYijK9FRGbcFDg7DSs1
oLacdNZ+ZSI0MEkyKzjQpVyxZIBQhcmDcfkILFf2IM6rJRZ5fZxBXXASMfv2CG0PuaL14YhaKZQ+
b+ynIS9PaqagypnrNb51cMv1vPs1a0Cdpha9xSpZ4X3V2xbMRshJZwGiw9dP6z8MW+qFQ9F4a+u3
MksOiDPjADEbWyliW8O0Vi7wLrUHkT0tTXXs8xbLvLjiaTk3YIs49NZwRgXmtbWPaOTUhlYni9mN
km4aqEjfFikHBc6M8GKrP6/DEMbtmhLai7QbSrS6mvgAPluQP3Ran3FM

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YIKpZ46zArK+uz/EuATrC1vpiRZ4zt11ihk4YwEkKOvMGEoG0/MmZF8shnnJ0GF7AYre570Xknif
rmLC8iGxA/c82ZWn+InJwnaURXRvynKjNsXe9bWnZvph6n/gPu83vSawh5V26WJyq33HWFjzJzK5
lbd9nYeOTGONHJwmPOPTi68d0DrpIEt5tk/9vISgJQljnm9z0UK17iImejFdBZ4BoDV2r1SPMeFf
ZHwpmbtJSQDSPERgZVYQXmUxeaLa29V13/IUxNnP4VYDP3AuAP4oOPN1JbjeQ/9h4OnM3mfK5vGY
PRqyaPCiIS3lmUcwn/8tHXyMd0cJQ4xPfjC7mA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oc6qUx1wr8zi7RHbuE8Pwb9ine97ZVfA4Hl2Uhgdg/6LAZpMEDonWp3vc+wAuE9Q955nXAPPe8o5
0xremfizt4Sn9iFdWQ1P2lmuNplbqaJPk1jc/x3NRJ/AlqoSvmYTbgMEH28+zV8nYA7rILDzZ8V5
2XHIaCZdeG+Yj9VlMdooE2R5VwbDDU8qSO47NoO9RlOVXFq0fRSAbL/f+NLxZSxifJkHU/FBGSMJ
r4CDtAmSzwuLwbUwykMHDepBuPofPfSDpAw0q5bgWjQiqFw8soTVb/VubNXa46SSpFlanAD4xtXd
2k/DoTDq3cehNsa/zQx+o0+qry7LU0Gv2MhCSg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
z5Up2AmBQixyUgLPGG0VMjVphWA7Zoh+IlyUcpWgIvcS9h6dGPPIm78VltHcrp0g7M/m7gI1IjnT
wGvdCJ3noZ2RRNLXN8WpO1v+kYCrkZKXSXpRWrh2UcVHaZkecJIy3lBa1S8qQk/wvuLN2PzLWZ2J
//MJphxUepLMXzfcNLAEZaIAbCpbTv6kG58DLg653jdfUj8BQ9q9UgP0Kg3BRKIICf+xz0vD+c/9
SkRVJ9Kbwx40s7Ql7BVYg5IcnJnnZf+jJNgxVYja0jRIpl1ug6weX3rdO9Auc3Op6yojLpBO4RLJ
kZGhnET9Iuu2cbstxw89QddxP+jVJ7KQYHY/Vw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51040)
`pragma protect data_block
Hb5d/d0HZg2hejdtdGezP54QMxygPBEmGCFBWxE44IZKF1cnvIBn5ysa04rYH4hb+k/p0YM8tOBj
vCqQT41cWLetPH5oQDYkvbi7iTNA0L1cwrgvXrmx68ZyzY+uJa62E8Ge+ZVpGmUanArYc9VQGjJT
HOoTXgVqCDHMTUZL++OLvBGWMX6NmRkiQbBJX4MDwjdnOizOw4CKLlPyXeWAvq3JcnKIIgO0Jv9g
u7PsTSHvg9vhmkw9rbOUlianlg4taG+ZD/tBo0l9O2B42rXuE4KVNR9GcMG5aSkk12Do46V8udQt
bKYTk1BQeXorWi3EJDtElSqugmvcCVI0CI63gMVIyPoggvvJduCA5X/6XuJQmFJPl3d1o/cjqsRY
gl8I26KFYKJuOTnSFiUfcjUOl3Jdvl3mgJ5zExCN8B6klC9+YafTLDP/CZzHlN7zWaABbFyrFmGy
XEVghBFIiF3yt/+8Nuk8uzWPWgIif1TwvvlEj99GkIlZ0baDvKFGy3EChEg3zrEfu4i5HHgiSIyo
iyqUa2hu73UB3GwKgSOE9NfAUuYUmAf6tWrxi65rG65ubnJ9gvaOFcakRPO5+O5PvSGpcTe/v29h
t0+1J854QzD5GPa4F7QGqOX+pCYCx0LReTwBplzOLRIh/s70Hlt9N8daBErPh5GyiMZ9YXg/DISM
lHptW9xeUn6cs1XOKVejEj0WkYC3aAE4wjfMM1oXk670yB5O+PeBWiKV5DZUhRlC0iK5yOd+uWzF
noKpcGA6JzLNf3qBZ9xuSzsYziQq78ZK0W5e4rA89k0t0+wYGwC+gsyisjWKWZFzsYjiTAcqhpNB
GwBN3BVuks/T7CF7ahB7pXzvCFDxtpVd2aWTd/b6+TOK5pcFjlvuLm2tkd/AJEphjNWfW2LlECwF
wka303DBWS3kmKiLw0jA0mlWqkaEtVfXIkRC9Xs5MZ/Ov3H0UxN4KB1H0bmL8vufaUFWTEgzWzjq
zWd76JTBhxYyAx1Wr/ifcm5fhndY8YslVrPWPDgVSjCB2/q29iqrWL8AtEfSb9tA1qIIaGrEZuML
f1H1+BoGy4bBt68sSdag8bWITDr6OPmuinB0K5gVcZ1u/KUMaHJgj+2feAWZhAPfwWWJpOMfUCXG
IFFzKykpU8iGjVYJbjfe2a1wm7+tkqr0rqpq7O0dNIMHw/d06RU8X2SIx9cVZXz3ek7xOcz4qklW
8mJ69qkalCBBrFa9TrDtOrlrxCm8eDddft85d2qw2+l8VmWgwfZDA1BGuKVKvnX/I8NdupDMyDHu
VT8mDD84lpvYL5L2sVj/xrdtCS4BhCfpqp+gRc+z4r1mCWpWRzg8rjp6wnotW9gvfAs3FtxIwYYK
chyem0+mdN3l/IkZHgEV/Z2ZxtkMN9NIOOvBWEVl4BfhrN3zIjkOLJ+o9fqGqLgl0/4OSOxl92u0
qTx1arO5uKugvZjLM9fMkW/Kt5GfI2jLuSCXbpxTM/Okj1Oo8W0tDBPuXNWb24RDwZFPCtRNWZzP
ORVi9rGmp6/ilPwy7l+3798fkJs3M9Y7WmPojtBhlSyP57uopx+4GmPwFnQZ4xKzoe1JJuLLZ/4X
IlZhmYCTkgdMk+79Dk0bBJUq8c6Fct/RNRur9XsU1aUN+KaU4okSgh13GzfkUEfpLdWBknJqJXiB
zuGpjEuB/ZuKqmsBsCtwIbS5KqJbODijNrrXqApbi2FRaqZ4/0VRvLyTom97K9+jX8nsnDOno0wn
oEOf36F9lklAmQ5jkdR/mvjSrdJxSMkbfKCeOujZFOJUtNXwuodqRI6hQuh7U78OUrKtZoMz8fr/
TsXr1FK/8JdZtWKWupdWWe0TyNCem27/XpOT8AE2NDqWDI0jJTtYDkfAi4Z+0ineF1tqHmbnHd07
GVENbZ9dn8FA535+bqTnK/xSmrcR3qT1N17bllGfWkjG/L6rTtenlAmmhEVhvBrSqF1OVStHMGPC
uvvJnSqA5fm/2ahdMb0umQIsiyXhk/VqtF1oiDbqB+R5Hf2JZSrvJfdXRJ4C4RaQ7M9irv0jg0B+
HZmg73QDDMcBMQgLLkP3Mx+ry+/cOK1zG8o4Z4T1tZlOaF6MkwPufoUBZLLhHaWsSe5yeu5wlhzD
EibwTWPdyqEdFqLG6oTXzJE3h2imcZ2nLisoE6o2m+jJFZh1xK1pXcTgfphN8IDfezupSt8fx3tr
B3ta/vV4cPlMWH2f+BXQlH9deg7uLv50FpUTSOOLFZFvlspFNB9IMiupaqHodDVTebtWjouCuvI5
3+DEFzJ/INtf1OV7ZeNE3LHVV38Il8t86odNn+6o/+hU7mDrqlg5N8DZGJuHjhWfJ/fs1vz+5ZHt
rlqPL2U+K6803EgDTq8qSNNHqEu5JPjBLMNpQ5HKBATNswEic39ilgV9ZvqVBbY/TytLbdczxNyL
AmY02MAFvg0ucCbVUHTipa7wUaB81geedNqD+RK6Y8uS3yV/v8t2BnDXEVGf/6YREOtAwuunaRKM
WtOnIr7w4tJ8kZel2IWOf5VoiILIJuIwWKVxIEsBwwCHTbXX1XeJRBzXBWETd5Gm7J8/Ph4nuOt9
vjAlIpqW47TxeKv9Wvk/8D0Sv0ZP9x95LDsY1aOKS/OrDBJFK9JxkgSOz1WyDeZwVZsdoiBMt9yP
vytmh7M1w6QBzMKEwgCl1X4xdGuCEbRc8jdR4npERycM5cpVoiFASgzDWX/INLUZ4XUqC92FGxH4
lHGlJe4PQXddZtVTzsyrcKAxOgLDoxQDkk1LpAuY1Yba3JZk3sindnE8KoIr+QYQp2TvNucnZHA/
K6S+D4I3VXAmGW54NPFgIMK6W61d5N5N1EfTeBoqttjCDdbk8pZL6Q04S+aqFCrPq4FnMgAioxm/
uvqgjR87oB4gaBZuN3jZ9bhPaaKFvZzUiOkVatXXOvk+ExMBVZMRy5JRbjjprNXCKEsCGxXELkxA
LdU4R+drSwYPn2HakPnLo5rADF/QIRgp5E1NBtVMgQuQbZ5WTarBp1tWcVp1oqGgz59xXrboxATS
j8X17EeHnm6wrpbMi5Ocg+PTK5pQ2Gk+UeLi2mqDTlg+tqOtFeXShjOk+DAHFWxV4Sryq011CZOp
I78Ui834FaVnMIRjUTPukrUgrfk/RUX9tbMitGmMhjv4vmY+YcUrYw2d2yKeTIbc86XCgvd2oPUN
ieE0eLvr87RIuTGHLZ1mHU0F4pLTQeh3Bs9uV1m6jEGWPc/ptLtW1dj3DL6UQ+AriwDwFARDYP+8
gnJC4JSDMhv1Gs4Qa26qHrYeua8Do9/CDYiZnrJVu21EN73wSvdDNuwdx9oeDT90XOF8Ljsdmpw4
Xr3VRDod9ADGLxMVzdKalfOxTauMjFlk1BppZYOBMD24o5Nwdg/N8AwBpLVNKzg6zwCPlfRo+cS8
AtuIHd8AlDbzL9+DaedoRWTp3MtLLb00R8UIK4i1FGSoKc/obLA1lPkgCW4ixNYeNWgnxRUrezaF
ppWGFOoHdziBxIIu2CJz4b73YdqJXrv7lhOCWwK8FIyQsKo1ZiZP6qwB7zLVmorygx7CL3jz38fu
M6mt0LG1kp8dQSpLqdCs/TTZMC1/WsY7heOH1byQnyWyKzaAOwZ9qh+NsqiNrTmrE/JHpzpApF+a
Vh61RQfy0wALnQmaxgBRuwsOEy4+J4iI9fOuZQz4R7IZOw0WUe95Ry+IJtvuFIEVzCGD57t3szCG
TZXYqQV1k2vp80hdVEiqrKlzNMEfGDXISdZZL7MGn0zC0wtX3ZhkW2lIAOyC7iMoZaSya/QfMAeE
EDBX6AWq8OhzoDewR1MYZF1EtjRtHKO9WWShuwUrxjuItN1dxntuUJz0pWC27f+F6m9JoeQ7Beqy
QcyAIZEiweBKU58wJu3sKT/Fsf+0jsfbxkXE2lKhsqKPiKy0zqPqEI+G8gcNs6rTtam0Z0UI9LJq
K6nplR3bx7nDQQnI8NrwsvQNcTCTvt3t0LnnOAPv3N81bSJ33hD2w6YxynADgX3at5RAnZTmZOhq
7MjqRctEM7WhmKb0GshMF9OVsgeC1NKGiufNktWqYjvTKReup8z2x1v1rDl9E9uoKIJVYcAe0+RH
sUkaRB3KcTQ26Ixewpxi+7MNPlEVs8sdn9ZuPsM4ny2PU1TKALvZeZ89/XNA+haf9BGrdFZCUn5v
CtAFlT2rUZvgC2IpAxoy85E8q6+gdO8o+0Vq2GtXPgiqV62ehAFbbeHQJd8MIqwk55M9+pSLfuCw
JADMn/O62WU4b664NBjHqa1oSD/vYpSVgxbzOPcXZOC+JVAh4VrDT6AY9vdhHkHFqlvzZFmA2Ow8
JTJb9SsKeBIuKORq2g7mNY3iOFjadJRID6nrEI0Jc4C6xvZ9igLstgeePxbPasnL45CrVEIT2XHZ
GW9NtnZaT/737sy4VWDGZ7XC2eus5bgq2e3Pj0sEc8wNET1vTS7GgSIulEK+cpuFS+i6v7+5bfUL
XVWUUjx8/m0xMTKA6nHUIXrq33Kg6KtanfMDlgiIWVIhCWSDxRA/5fKVeyFmR3SwKvm8W+RpC9Uf
9ZTXf/4CfOUqKMoXg2zTuG7IPRf6Xr5pec+hr+cIUY9bh4VyZCHI2E0uTkmDUUx8Rr9JYE6gFiGd
nYzkHQfdVH2FmawBd3006Nvt8jJ3pRU454xrwejV2AOJF1gMFffJEhEteBXAfYBNHDF4K6D+BxiU
VAngl70I3Qa0U8IuDi+w6fLtq5RZoiZOHkd4Fw7Qf8f5smOWX5UMUlkuXB0XYHJ+nwB8ia5x8z2X
oZH8DjlBgltuK6Q6m01kc4ZBhKQdhWlr/UVVIoF7QbimIh3hu5mYeJY+3lNqvdULw35WNelByver
E0fb0vfV23Sm4lmP1U+Rz1KYG6CMxFG9NZ2pNz8W3wCmn25ilrRDtZK5b0eGwOmjl77dfEYwpIhV
9fYb9tqYkbC/d8V2BPY1gHIQ/dgzRwKgEwaU5RArHK/3j8WNVzsN+3eVJzxH6sjucgbIDyDrYnMj
K603D48m0XZWioLw4shtd9aUXrYIz3xL6Dd16Yv4qjxwfXUnyvpjtHKxHCVZrAOTnQIst14WdtxD
NwHZFFpPSq2VszexsqW+d2U20N0EkbqIWkuPbgMebS5ahBhPbBCzlS/c/njE9Ze+UZw/f0mhndMK
hpKRswVQz1iW2dk9GF6QHEc8CTWnUO8ByM1b0yfmyk+FXN7x30NDUZ9e6mgWjq7E+ZGZNkjoC8Gn
abQRmhzgM8KDfiRQX7uTE0NXKLysF5tozDYANqxI0dzYQzmXFnCW/ECD+F6New3gFZQfyb5rpL4j
Cra781cxoA6XSrIo1xwVPsbxid4kx99IhkfEJNoWgqzxlaLhds+njR8F4gOrzg0t1OxyzYaDuJJN
cLvB0ole/AVPpajbX+mqAVrNPO+ifbZT9vOAxZNKpi8/NiFOjvZ2iXdKXREc9plJwKihX10+JI/0
9ClsW6qPI7LaXxXN5BxNso2sCnv+/G468PoYxhS8+d/zK9EV91KkBMFOc4749gEZi7h76YTx1ONQ
Yi/FN0GryChtp01QkGSu8I5I9k7zlCvsy+jYg7bsg7T0j0+S2C5mw9rrz8jKsSHzLkuARTwpiCfK
D32zYW9bQhXTYX9IaA+thrtIoQYbvSJWenoY4xdP3P1HfT74Hr/FOOf0qIXGLfYQskoAOR5VXgNT
1SXw50G0gPza3ZogJ3xkcsO8WeMLSCk7q6jmwZd7KfhPaFs5PDOlD9raPTd4FFNDp48a6B2pHFjX
nImsc3MhxWnpkuwK1AKbfFWUxv08oqJMLEbTRsi2I5qiOjHlBQ90YzGPUgTK92ES9C8G/gjK5F8/
oNvY57I4nD7KiTvMNX49TeMoiqZuhYr9h/rKikxQkAWqQ+kc97+WgYG4Rk6lGRz8nY6LLXbWPQgK
WvKPb5GyzLEZ8ecSasDp8GYe5f5IplNRyGypqIYXMfrToYFe2sWHK40mHs9z4lrAhxCwBJq98Swg
pF4XRiEH+5Nc2cdo858u/hSuDBHJUz7c20SRVpaGok93cITYEWaB/KTLdXdFA+Dot9uEHlD52la7
VL+is1E9jRW8WrO0aFuITHdgZQHsR4RpONR4cK6HfjlHdKQ74akAQDWzFBS+/NpVix0u9RR1EcgQ
W+UtgNVGkYI3JGOUDMwxNHkUy5Ep+gVliT098aHmSR7+E1NkcaD36kMOlOULuh7GWheT12GkbV9e
b2D0kepJ6oOxxdQ8q+jYHtlgLkYebyxotX89dfMvm/7c15cZ5HT8xs+ET1z40ImHa8gV5864SJlA
/79UI/VqWl0K91TcY+WnMRDeq1xFZtp3viSFFuxXxebuHzLh0GfonbaPiOvw5gSYIGfcDJCq9+EA
Foi65Nv4wMvC2nlcST6W/l8S+3GhX+zsjusC6n3HGB9/PZTvlJjNvznh1nYtirPVrnwRJbdouw2T
6rG5QsiSEvj3xj+WPVchVUodt3mCRVdAceMEQKdA70r/d9L7FsE3a66wfJEyaZdft9ZBAMPZTNcF
asiaNICrHqsWCOHcyEmNl15bYR9cxh0rBWGfiP6mcvXArTcnzdbujzC3BlYwF/tU5Y5M2XtPir7L
OplfrTJq1KmC8S2WThNZsCIb5kEDGbTrgWKnePZn0ilI+7kMZ8WoLzP1UzJbqeFMiAEN3NV2xRZQ
J3TiYx3MNaiR1EKMZymMgDWOtphsE3C6bfNRQqO9kVeuyyyl7pdnR0w14RrZP3OrxQJk+mR1bFTM
O/06dj1wb2K6nwRkSK3hfwhKFkh8/KRMoCkLC+hxlbrKUFzyMC8qgxxeP1VBimnaeWT6GwCULD1q
OmBm3gqE2oDcToshIZd4c7MupVXDJ8TfoqaF9IAi4q0uWs84uENZi5iyAmqqQ+Cw+UUoSKauO9Ty
f2ezRC0yAi8EOFnZA0f2w9yn1uzkO2x1n/qicahHAPe4D9CGC49vzyaGzxJUrVAOFN3PJz4kXc7R
sxcrg0aFgS5uHl3hCT0EGSiVgAm4efPrkVDlfbbXXPFplRm1uMOJs33w/CfTQz/YhJGg4YvikTOR
lTIU447zieBZImkE2MnIJcCHTdY707HHPok1CGNqlDOVU7ZQpmZkKz8CYrWkzuL/xkdKG+m4A0dg
9fZXoMoynTmoTINUa+CN6ycdS5plZWXCpwhTQQM9IgWoKaEdSeDM5aOa9smiOHfVIUEW5PpoIIy2
6cLyCNp+m1WfltwnGBbS1DaDm8zXjwmWHqrLcrZUbKN8XiDzt0JiVT9a+Gi2syoToUCbepcPy9lI
EsJtti9pSOKrs1eIzrU9rMAlqRciXNw1iY8GN2z6/DOe0Rd6NP/pmO8beqtgkS+fPd+M+4okOB3+
clpJdPtk5cTM9bfOR+Ki8Z1mAhk2Ii0YJYQ/s8L15di/uDp7qcIBZ84eN02mb5vclF6qjuwWohMz
atpj2ItnTWpDPh27khh0vLQGmwkJ2308p61N7yhq5IvnXhvw6+KjfuOAaX8xZCi7umypnSuQii9v
Y7reHBA+a5P8yAyE4uG2IEeVYkwXHXAMjiThI5WKHcNx184zsb6IUBWIlsun2+z8x3zljhTjmxSL
fFhkNKo9fS1DIgbck5Cey0D0keJgBzWygYua96BgPB2rgTMpUZFO38NAC9/iqMpYMM2H6+F1NkjV
pJvOiIQUsCTLJJ+xQ2AAznqxXS9/mwGYBTPMOQtnB/tc9JKMrcJf5quQLzFM4WPgE29h5/YALiDn
f9sj8EUCeso1AriyTuYvKnVJWu48/ILUx9eBW42non7NHErnca0CZgDJpm42UW/sB+7T0DXr3USN
uJeVfFqDDQEN+WPRfETawv0GnsGJTF02Q0A8PHP57nqd3McRN0Md3zz8gbw2znqyJPBhQEfvIO1c
JN/Bx2Er2mCAoeGcTW9XsVwvSnxSf6GbDyl6Hj6b8GbggQxcVSsxvGKEAUd4S64jr8bI+uXNZJ2y
ZtL1hc+dVUBlXjibTqs4zAPx2NWzVh17ju3vBBRtcNzy25h+0Gf0LG6pZj0f9VK4Hru9rwD01ilC
16tr2SGd7gccG5henBSm4sMDWUVX00LBu5DERjOjlWe9CjRtqudHmyEsdgh/rwnaqF7cIQU8keNY
TtMbVXIvs1JgdmodXMiRDGO1+Pf3yb388YZCbainpgZ4x3oTumWI58VmeMXizSS4LAGFf11fu2yt
BbfMKedX02VOlMJwH3W47Fyr6GGqt81UIC00EBC6qP0B6RIQoNirSR8NiH+JzCh9xgLZUS51Hlvr
int2RvaaNi6CO1OMCBxx+kz/YH+r5+osCllUYw31UqYVMBJNXvdCFaDcoz2ZUpt6p9Vs6fvkWR75
LkLbMGtuqwMr8jEqJUA86AqVakF4PmOUc35+plOUuUJvBzmrPB4Jp6IriXPbXzLjPZrpvi/5HKmH
8lvGySEENDosAS5gYMIVEgqbJJRCrK9IztGgesq7BeySpJ84+egpgSIz15kV5GMWtNcqGs3XZ/zl
V3w7IKNYygl4FBknPnes5v0clVaWcdGWU6KPYraQG29TO3vx6ctfJqHS17nMpiy+ublCKs3JtdiY
ptzRB8nW0uR6KVw4rHEL0RxSu5eFFUkIQJD1k6coMJIHA8bOmZnUZXosCYjQ999DleA+VtaROKTe
rNMdKhjvh1C/MMEq8tNAOYsDQgq9dw74WG/rqzP7V/IuuaX0tRBcTGo+tcRJjHRXnMA6puWfFZBA
4FOtjEgo6kje4/B5zcC4WPdNkIEi4d70PQ3G4ZblqzDVTlusoOY14BYYCto9a9JKmiSwzNwDuEt8
CEVtyNLer68AfMiCSynIo8z63BEM53+MI2+Rj+F7Kp4gDMbwfomDCapIr7bzJ4EZCDlQ78/aFAKC
v/gKkOTJ9GRnpWvPdcr74nzUwWyRlWd7WsVPO4GBiC4yJfndox/wbeCjwKDNdHnMjQvfKF8g4elt
qOUpgMLfVnx9OspaWzqswBAm0EOB9P/tApfiuiYMo3kOnGVC6/1+NPckixpEHHujP73NNr0Rnv1s
irED3obuRfWERc4HB0Zyra3rw95ggOEoO+WvXL51HKRExxoRqjW1Yqx0SpLqtQmHVEnUed0MDEGJ
vGNA1vkzWWVz3VTxyxS3KYsur+r528HtEXXRmUos9yjl3qEouY/U2QM01knUepWOgSpXbb4PYE0V
CPmCkJzcQH2P6WB809PNTk63rZkaWFv3wfgqOlgogJa1q1EQnGrqVhWM7fSaa221nVtaVey//bYb
WzQqGGOND+d1g+z/+l5nI3WiLPhpPuI09mD2XdlMnqJJvLirnLpN/wjILx0JdjI8usoLCyzSXWsb
s8WmE4SRo0xfc8BQccL3ss5B7BQFL48BvwsWb4HK2e18V2M0pDYbNyXYCw/tchANtC+1rm8DxEFF
RUUm/lfGwwTYg0Q69wUKEfajJuItujNyWReZCgSJx++82j6r5QlM9t3/8mkt7dNcdfCTlYQAHPnp
8yhBJ+ol8I4n4t9HETsWV5Z6qqNCSzd6KqgPC+4JthS7/hHtTWQmgv8nCbvJHG+g4jLgXt0eRT0o
vyy6YrshST+q3qY6k6awSExYPObNarPi8isDA3NU/G7ahgvBMeNkoYu6ZEWOdnBnSFaFZAeSU6Wl
kwfDud55/8ZV4U8Ee/c0U6lQPtn6Jo/nR2Zv67H1i81mTSNxvpmGTobK97pCyOem1GJdsB+Mh36B
BvooCr2cF2/BYbnqXzv2rKBDGVX3JJVaC8qDQjMBxnMSskLh/V74XGdechLt34InpTRFDR5eMFsP
Awgnh9/tq5U+sIRGSqLLaLjDIG2vcRnxGea+yee+J0RoRyvhcFd/RL1181+3A4q+2G56mQqvN3nl
EXu1NT+xXPMHPzQOCU9ogJt4bU6qLk/h1/BIaiweU/lIIF4bBVXLKqGyXmF5Nh6RVnVhg4envp0H
Xrs4fpN8OyxN5IzwU7Zty4SdApCf77ow21c7lPq0wO/PvKrVxB9Pg/1r2kdG22B09Y18muiHqAJm
tFRtMZGdjHE8tuigERqkJ/RR3+Fc9vd2eSgz5k06zP/Hb1aRd4v1kQRY/isuxnzNQPjNYWmhgzMU
wLnqCNa24gdgDRPYlv68jvpPwqXk8h/C5m5dI23flJ1MCedISmgrdlHZjDFdASgW1RXrCB9Qj46a
acmhrTUgjpXI2kX5QJq4ahS0UnzMlAPIMpgYf7rTk2lXK1WO/IayZ3e/TwboVe+sFcj3iHcbOEvI
HHj8UBSzCNxLJFl6lccQNnrjGMkU9cVp9pavmQGN4Fl6SCfkh7d5lnT1OljWlRNbqH5GSrabyCw1
Jhqo7T8aNbwpSxnZBWUvNjaa5eyIfd3OOMyBVsM+9Mj4S1Lo7glGRsU0OwLg+bg9ZA6QjvX04dU/
CVB5d/QlYHrmFrlmAPawoow6ewWx4i2RCtFWMiedBhEeHB+uznHWXZoSLbK2lY20Q4Yhl7jizZOy
lCH/veT2EDicJ0nAYCbu/0svwUuwROjIb3VqgGEOazLQV5j2k009vwum/9e9kMFKyVu8f/vtim/s
t5JXuj7ACFyBwan2QicqiB8xUzdI6JRS/cHvxhz8S68UijXR8AIvQbtey4CjkAykKmUQw7A9aYAM
flr2LZbY3C8dZYaIpWUNHxK6ZTeQ3friP2jjmLQH62+9w0y6XC+KXoADI0Xks5IpuFWliqqalZ1F
Z0LxUwi5pjekJvKDW0QhkxFc9e7hO43g4SxkgVU6NK6Rp0xfZRT+13w4BFb5Y/oar3GcbfdYzw2D
QVCC8UyUHPGx9A4d3ksRgFkG0PvcjpAzCP3NOTSZCzWCfEXH2Mp/5vTunLNtgG7SDouAIkMK5huu
VypOYviNoiAkYoNptY2UC040s02T3jdSGV6304lU17mdo5KqqFC3U7UC+ozxrvDejf55KDWBJqFe
anlyd5YRXbUbaN7PGzV1s8F/cuersGHl5/XfiMgJD78LLbBzeufQGc3kfGQeoRbj9jp2ydKvRa9d
glNArCAQKjm/EWkM8vjYckycLPd3I7VNZ3FMHSnMjcXj9o3s9UOL7rDjfCnLxgiBlghDPBDuwZKe
J7PcqE1mOJXokKgMb9c/ds0GlCcj/IYgmjaN9go6awWdJg39ut4n/KbO9vR6g3S55Sw4Xu4k/Rn1
mvkg6a2iqH7zsfCYQ3id5xl5WRv/jdqy7lFWoOisNR2W4fbE0IXjsq3PdLAeE3wG5EBwNsK/CQPP
Jli20Dtw8Cq42xdf3OqOh991YEWrnLSTifKvpplfl6ViLmZHODIKPJqAQiEdxL+JFqbG47j470oz
ojvN8i489Q/q7+R6v2Zy2YqpKS+pR8WRdt23tIpxO8+/KC9OAmXL6IQfWFuYLL2zDzHnNr3jfrXd
smlsfA8+IpMu5UVMVZvHQDBP/Ejt2JCHoWiFGnI+FCLfrkfPibJ3NPX3/tCYOjQkcag7YTO+J+QP
IlinESA1gCubeLMH9OPbQ+KgVNvT+uWPRNaruNxjEXnK9SVcbEVc0CkD64IYqs2NCt1VB4fgdbFO
/6FbDQ6E6UBztgOJ3BqSODM9TCxB11DgEXzLWsjGi+WVu+26ZLmgPKnY/hKjvO+7HFBwpPPadrUZ
NxwF/r8skyKBML8Tq+Hu+f5VwtIuF4pVqkjn1AAkKta9z4smngfzcUuMl4fKik+Eo4PFQy0d3ZtP
HPaAtAt5IvAxyxvOuHbp1VkStuhLlMW3URGqcbHFPgHvpA3ieUIz4RNlVznVL8QIHb/1T6D6uPKt
smlM9MNbL4U6DYhrflDUoGcthp1NsWbOyMxt8+7c8YZy3g4oRm3/zGEmGZYGS734TIqdo6kCGqTf
gUMBVKreUXuGcSNz1W7e8oF1wDHaZ0Xk21c2SOrQHO8a+Ig+XhQPC+8JJKAiT3vV+WrqvJg7qn1B
+Aas2zqCvFfjneqwF7g2qPnpmYNh/zFzQKdD5Kqh/RoG1PHNMYb05BPxpc3BIpaQuoKUpiW67+xU
z8HJRCV/ErXbUii2LVJNA2NCJ9gKVqZs3L9wzBqZeQzwkT2xAlZtA74Twmeoz3bZIFgxGlcL76ZD
drcKF8cbQSMYewddBOyrcSlYyvBhF7zvc+egxw31qkCnYFRwtDRw08mCPgQMLcpyNKLs7WnMCwUN
zxCQWCtI4g/9lzepvkcDGJltkJuVIU/IvMwGM7YG04nFwzi1NYr2J2GYgzj2muF1QIB+gRwcjsPA
NO8qFUrTMmO9118B8KrYqCpobm5s/DxMyPv4PUk/etYyk2bTdFTChZN3CEFm0DzICuBFetImhkqp
NLZoH4ddLndKc2VpIdBAGym88HCsYaYxSwapL0dji+E6M/GWIYTMglk8bTmiCTozH0MWb8VRRGRM
4dpx7annqw+ItzLuzRXXdGox2ZIGzYdUuo9YqLkMB+N0/9riyeMBfpHFG9/2pAo+nl8lVBmoWo64
HVPMTk7zXtgijFs6uLWO9A2T0+HBGHd53S1IM56OUUB3gXE6J8KE3TX+wAjWW7OQOyoJxX1Sm06L
wv7FP1RXXmtdkHtUiN+SUhacMi8qgKeretvhLIsc6SRm/9mL1KaT1fw+iHe8q8lIz3synBSJGyjG
z6DMM2KUXnxyBSsPOSilvzLlDRL3SZG2kPjdPIQI6eil5ZlcgZTV+Apszyzl0R2oQGNEoH7XXN3N
QdEEmLnVdNPHXsHz/ZbAhO8B33tha7bdDCAAcTYXDjB4mDEkH9gIfN2hUcha24lV3iX0zSQbKD9j
vhZPUPC44W8I4fqB6Ypl/OhNb4XsmcKOPDMcpFkJTAKmXsHFoy/M2FyCel6LHBR2zsIZIZ+MfF3J
gdH8eX4mD3XYXdCziZSnryoMlJDWQzIdRGfF6rNxEJt/YhlOXn3dI3pFMCRk1Y29N3+d9MujnBZl
aYA1/Z+pMCMCu6orzAnPfN+tdopwHcnTXp+wW3bnb6sU+MBPgSIWiV/Bms3QNJBhsyplFGx78X7Z
gTsDiITXUT7CWWUk3Ydqw///ywoM4416g/2BnVLn/MO982M6k2NHonPdnB6sdb+vcbFwgH5WnrEO
I17NjV40cseG/M4lDoViiOXY6g9XWJaxYGSKxdlhu0cNk98jjr4Hpb8Mhf1prSNbLA+Per9LwAgD
05P5JMICfKrXOO1f5G9ry3OJHl/inhIS/qrpOzWBvQSbmBe5o17eplcUXkO0aguJaqxS1nwFhGGE
Be3Y0QbuW8s9haXZD4BRCTsHeY2nT5hHpqmAc3M3sv7sy07IHws3HxC4Wcz7LvlUXZoQzq+ArRn4
rE6Xb206OFoYJ8UGNGUuBvklVOL6xM6SpWbv22OMsBw26+l7WqALjXOfmRsR7KPBBCTTKLgugLE5
WcjvRKBhMrVNwxwGy4dorJ7zdGQEgt6nfbZZppxShlbGPNZcVaDNsIK+c0B9S74Icl3/WvEnja3W
Ck+Ekasu8VAjAk7WjPzKOgHlQQj9aWrVQqd8jFsPdFV1vOouSy3pcrwOrKguACV3S/cJCTABEvYg
Blo9Abbx+TBEOOkSzLrU1ml/aF52hZbOuRvy1OR8lgQ0Qw2LAyyW0+Ug3lSWRw+PXmFT4pwIy1C5
+XVev0tnJm6I10U+qHRogO5OyMr5tEW1wOt7Gge5xnt4/ZWE+ZBxl2LH4p7gPnS88U2MJo1veP1T
0af985rkh9wFlDBSfVhC59a8a6dY73uQc01yBko1o1mv596i3UWDvYH/09O+sx6bj9CJSocxz5VH
6/M51nhHLO8spPJ/o53g3/231gUa4NekoEMYVpFJj+7TuA5Cs41YS8nCLc4dgvILQ7AS5TrlVVxf
R8Hw3WNLZXS6Dhxw6g6bcA0xGgEmtO1W9m1mp2O4MnTlhjj4nPk8l2Gi9iJnD/2SUr4uDxMI29AS
e5ef3vphrGqzEnFiJ5GqLPz1eGCIkH3CbfHD9uEueP2RB4tfaZ7kFFgrh+uli3eL5Hs/sv9lSXbx
AuwaQ8qqQofs6u3Uo1Bls1XmCppSYiv/0JR4dakXykoTtmvkHEt+HpwF2XooVlqrYaMAl0qJ7r86
dCZ71TJCTOW5G4P0RfAyQOv58PL1p0De9R5EqpXtzZOq2+cclswXbOsxZuqs0tiOJpShWmq2pswf
7lj+SaRSlrgdAcULouDVhuTqqE43TR+qlL4+7A2UHxePDbeQE9D0I1FqG+NgmAaxz/uiWouDuFlP
B+y14ytTj4NXFBzpwAOfRpDda2xf77u5eLS7jhCLhka2PZ5T3ikGzHcsgxGejILNl/9xKzz0gb+8
gY+PtI8Q918ynJ8NRC2Y7ecAqzU+3+e8ddhFfVkRRva1Etprsn+X8HE7iK4KEQcp3Kdgj7L8KwIx
uyDLhnyZxlaKMhm5/YrdRgjrCUqE9f85bNvxrv1L1xDSojzwvCDCVZmHkfmHQ5Z2LZu2kJCxdWXJ
1xmE3TgzP2rldlQCRhPF73mfNGlK/OYV886crhwBJAbz9SPm538Uwm45hMvlOjIbKHYns7na2pn2
oj4jGiXKLPQIQGTpYh2XMyy+anwn/NMSkHw7K3zLEK5mEKSZHMTygQE8NxStg8Iaxy3RwzeqOvpF
lnv7bwgmTs/J3tkxJvdhqKSl9V4ppHVkEXwq18djYs+BEmaFpPlzs5n6mY/pNTCrSJPc2iLx3rIb
DX3xUYo0Z5uAp21WaN6hjGUNJAA0WwK/awF8/Y1agXiQUQ05Cc1ZAzUJn7AhuFZti05h2pBuvBdZ
S/xAqokFp8GMXuLlVMwuqLjdSaXpcV34k3HpsUnRon4x+4TOmU8tJp7bu+2uAGVR8YuXFwLwPgEd
yrV1xrP+6KkQpS6AxeZ9is0kMwAIDkiAnsAWa8x2w6QA3tVeY2lKZV5lopKrB/0YHUVmzGu6ZN3a
mN0nTHZ8Jdn1PGMsZHpYsaN0RtOMlkWi+2AKYv6TSZGRquicA8U/E/oWgW5hu8omWfcb2JlV9SAL
DXnORO069YPsM8WB6mT/yW0ajg94yw/shVRX8CcKRujixkB5hLYPd396tkGrKFn8xSEJAxoEz8Gz
oZC7fzyxX1aaw7HMQfzpUigbKzP3Lf2sg+bhiYz/MCw09gvyX+Q7tfj5WpqkxE8qwxLJgqCeL1El
imrgHD/LhQ/VbuXMvCLO7BsuwC6sXE/EQgvmWD/FnLY6SYpJeuEcKg4wZlWTxn2gl6uaoUBum0fK
taZCGK32okaqZC5HUZGasvokxzSVxM62z0WfK4g+pwx24smLXYtN53xWqWnfQfec300j97ftKeP7
1k7R4KID6cW/2Wi8w1Yf413QakVDpEFUzK24gii2L+grAOPSdmt7mkY1Cnz0IVB1kNeyew3f7sJH
naRMnpGbzjl5WUkJGRMISpsB2Un91WKc9IZnhufsbiZUd/RcZtkfpz4lBeVmFjkPczoB3HnMTYjD
IW5ZHzz5lCvj1z3abNXCQzohAHyWTZFhV8RFXeigl/YezHfa336j+pcoz5ApzsE5fRJL+MTSjNtR
x3XPhUGG1Gju5z84rDUTT9QY69NZ+FV8wI+/Qw6Qg36dHkOGw99MTNgHy8ggFb1Nhi08DOEHLrDM
jY6bJQpIQ4aqoODYocSC7GGieOKrUlT4Qm9KfJqly/t83DMjdSLuFM82gW6ajrSlI7SRRxVikQ0w
+cc39YdBnS6Cu7XsFgEn7/u2mbc3mP95VdMFuu25tdQkEi3EVmllkb0u5gHTL1m/bXHBe4h2QnbM
vMDtR4zC8o/Mja+kG2vONub8oJruuHeTyRBbLgak88E5xtaxwem/niNdexo2YArHS552Be5hMdCA
z7kJXddpHpUEm/DhgjAdpo5DEY880HHDK36wEHfmwC9raInemS9/HlMNsX4OS2i1lyhixs8ekAc+
vOJh4UKNWqqdnrOEjD8ErUY7Sp2cFpi0sePgaG1QIGsjwjtpHBIs+K8y5icM4yswjMqolxAllpWZ
O6GS69suBebz9wzzdV2vUXFU6uHQ6f7ln6KqURxs5g7CIZuD27Hf2BAG+esahC767ijWvVsAGtL4
hNn0NE0tqgerCLMlXhVSPrluFfxn91xqRis33CD8X0JQfuXNiqz+ggVpf8cipoGUWC2Q5wMCthYP
10RL+nlVGuRpTm9qTvHxdwB3XH4cEbsL8BkaM8C1X/QkE4Wpya2e1ow3Krs7GMziy6eAu3VvFU6O
qyhJcmZwj5DMUtUgfnKbvloh9XqBYbLJ4XzxtHtNz7yJ4h+L8GVesZ3t5MPQWZhXxT/xU6zgKmUt
TP/fneStflVemnY2FkEcHTsdIAsiZW0yTNkMPW4kYtLViKkX/OldbsLPzSZgWIIzfPLXsdjmPjxp
jsVbIebPF35dnwhSHzAbX6H+9T4nj4CdDgs+qToCMtVnD7tyYqp12p7Yk4NBB4iWqDXPgaws4Qr5
JNrMiI8hipS/vp3eYtGg+c1EHA29UFOgX+pIeury+WidDOPr8kTrkKoyb2DlMmWS2Q9+3Jbk3h3/
+8xMdJRK54JrlbD7jLRL2BLY5w9ucE1pxJX+bU2SPcEoQz9C72oDp28hDzolrMyFnV2s/ETc5TPJ
G+CmFrw2VkAV4tJ8LFwKIMJDSqavmUD74KW+nRtRXeqVdyGCz2jFTRaa+V3wEKaG5LvXI5y7g5UO
n23nMhgTc7BAPV6HJNt6lzE1sX6lFXYHWpsi8k11Sm09EC28+zs3GNcr4UvNUpR04DlEOkWcNLKR
zvy0m39GsDLrT/h5si5vmS7P0xo51s9ZcuJmXKx/qNy6y5ET4EUBLZ2IC76eVQ/9i6esg36ifE0O
R1im1X6Yturf2DcMa1N8DO17zX83VxB29wJV4LRvEbzPwKW9tQyRpJTtUXbO9WFTR1uZtaNC9xfO
zP8cqM8eTJG0yhTCq5aS5MhcaHtIlmYEbNcbg+CrX4CY/8zRSYcRkBhn48hAGXVeMJUJ7E8LjIfp
bIQJOhHxQ/5OWkZgK2Mn0VfMfCbHQZiIJXaJxkxph20H9uJHV9FNCdzl6c8ruGYbwR9rbdN3WaBf
rzRPss8VeDf1fDbLOssFSxp65tONhWXHbL7eRhFrnoIJy1n4T+AbsRMPkdIZQhdKwk2Q3ne4mGTU
2KAR8dlAo7nfDaJPix7R1mPzbY4OqGGGSy2aP9pDsc0b6hRKMDEk3fLE4bkGDLzI62V+jIXliGBS
ork19X78OmtN+ElS+rieIxbevySRTCeGzDrXaY4gzKRhBR8XVD8HnMNUGjPbeaG8DGvVlMn6iwrO
gq03zBNjYS8VFJTl+mg9qoVwhAxHEWiMXgitWCSq/Wo5cl1onk41TJpBMs4Ch1y5HCix1rBy5KoU
XhMXanQhJL7MXJXilaAqkmHqAIkuTZLQm3YX0BWFs1NWfe8ZWnKOJJMP3XxZMyTGEzGO339FqCwK
jbaJEyo6fMVRcnDQcasqyCMj/MQhRpP8AU4WOLAsZkt9+rcjS2p0SqkxyQetHlhpc1SO2bAj8/TL
qZWJProkxhjIuuDIrAOJKwQaZOyScL5LJyxpeUsA+AK0ryVF5+Fj3XTPnU3+sSvaeNKi/dvs3gVv
OIHzxu2JhRxaevZDaxfT2cZsZY9SfP2QlHvWNPKRtZiQ5SeXKZuD7+cpyqZxEPgFMrWGQFUdS/6X
nbNW7uoElU0ikAsi6504vt8pmV1XgeRnQyGoAbRcTUS6vJ0KqTQzZftxR/+xg1FUlE10DwYk+32T
wEV8nrXKtsBIorN48Ua9E86JXn1K6bRASizxfMHYtjHoasoCnPYSfakaMDdIx+X6wYB2+QM6ip70
ZFdpR1BbTcok92H2ga607241l+FDaWEl3sdsTZJmlYYQcriGhfRBc5Qyd3EpBDn8FA9/tiDtunJ+
HjQF7UtDqkzoUO8vT/eWA5+cwyMrTWmFIZZx2/Xgo61XxeuXEL91ZeKgCcGrwzpsJ/aZX6Mnl5m8
KOTc9Cemrkpieo4sONe8sNlpIAnskdbCYkg+ZdgA2pwb7X34sV6xos9F7cQsw6JB1orZM8cmFuwv
7VCGk2obWp5v8BTuK04rdfcMuvZEoBopWtXRGcgWvWl+LUSjGOtIF6tnjsZA9m6WXyY9hjChDnCM
MuRC/40NlCiAGmbkBJY5uMm9PD7AG6l0m62mFxMuJswFax36Rv4Js3ZjA+zPe9Jt04FU6sCw2vG+
jJJwbL+8A+Bb2tdB937/n3baJKzcCi/q2txv0BtB9HKKomz5klc3z7y0KgDHy2VzypKIdNzAFA+P
g4U2X4vqQ3JyaJWfEAKloy8vN2PV+SyNt+b7owXzIxh7nQXKG0dBO6aKP8w19kYW0JzTFDs6Q5pM
UBSnnyMw/JeWVrUfzO/RYFvPJuA6yYXQSo47Rrp7bz8gJSEMWOGgBq97SoEYSt+MHKCUwNkaysyd
gy5pi0Vxx+mXp+EhtpiVgs0VVcMmhFJlwsNR4qg240vrarJMGohnwvMnM5epNv5iNSDDn+D+zv+4
wE6lpRm71tmKb6xP9A/TYt82DS098dfUMaLnCOl3frs7DzKMWMPH/70lXdWwkNtKttw/BkSv63zi
kJUzZjen0vHrHHIZXk2zQRwKGu4a68/A8n/VD4Ft6+vxSUibtjYuv2baJ2NwfNKRkCYCCPu8sdN7
0iWyGPK4E25SRzYChFSeBtDiAf7FFiiqGRqdlS3Ck6OsmOUO3/2F2Ynxo9PnklH7BHghykhI+o1r
AQmX+A7JvQIihdpwt3AJu0820WTDn/dWu7Dp2Zt7ouImJa1A1ursDX4T0jrbtxQ03++Wu/DhkrwH
goa7vkykTNdZh4BwWkrzKF6yMo6erKv0KFfEmO3zTNCi0vFcYCrp/tXt9AZr/RLK6NK+CddvOy4q
FuTUD60xPP+kFFo5x6DPZ2potWG2fvuEFoXMpQvOn2UXkE+bLGKqasiRlGnJAXHeitf6/uTS7Hsc
iNaK3yTAtR6vJV7+hGakgKLejt5KbMwUu1GV2jKIhzOouP2S8ioR1oow6WPJ/d5kEEmSCgpKeALc
+n+BRr7JgkRIYaVBXf/6bQxmp/ICpcHdtWH2yw/WFnVBnMJjOJ20G4CWLIh4ahtzxHjrkjc1SBvD
4EBZYpFjiFU6qYlFC2v0t9IYSAfRP50VYAg9pi+VAkxoJmDdWU+aX/IgQ2AbYll5itaVC2K2ZJLx
zrztdlRWJI51w4Xhd+Pf4Zw7z1twFNxPeE6L9/b+iAbaPk2ZVyLPah9KJsCJeTKxH2D7wRaDg8ak
ypFOJxshq+Djek+hwGX3gkefX8yHjiAKnKQ7KzlKxdvcW8SGTzmlW3k7j8r0zcgwXbb6tPUYeseA
SsTetzMq1uXZhuoCcYSWazZ7l6thhhkWIqDESnDfW0qH7UUcnLtKZ+uyFlslDdn6TPhfXuVdbtGN
UL1AR7/pLZrdHm+ZHIPCKmglOrv65DdFU4QdjFbgEK2s6zyAectaMAsT3UC1W0dacibaynQHvsHZ
1i8/0AkVWK1iGQADgX4ugMCLvtEFisPTTstd4gvol/lXpfYcNz2cjY96gHb+ghTA7uDST6RKvmWx
OQlYGNiqdtts057atEf/fHAPCH4cRdVXtrzfBPjYFouaDStO98Njn618DkR5xDiuhzC3XJGL0sfa
PZTNF5hryIzbDvquz07JO7ER5J2u/yvLtEJBH5sEEBp2r6sNF5gRNutrn/7p0EoatbuN9p7hWxxl
YJQ/s4dfNRypszqxvklPC9QFh/J9E49Rp1LCvAV+X4nUPrLqp/fLLS8i0Og5P+PsRyWUnBZghtA/
l/n39snSdqGuTLRzeX4pSHv7yQwY+/FjjbNc4XRQPx81I2zXmMsmYsM7n9kF+rxdhcNLoKyjRaOI
y6EZ+gJxiBE2NjVatbtUSeYkD98k3b2ckFsIi9yIY99mDxFYGCo2NOpMMAg8YyvrYgQEzmMh4esj
sfzYmWKvmBkmtoGBVYNYfFCbfIVMybYbEHhlEN05bhQd9yPpKsueqMuzmYLnEfN04OKRE/FhuelA
R1rFyUEwOCc5hOeuBJxrqEQirKEQePjWhokUyD566HAF5y3T5GN0AEfl7VWN56w2LmYTV6jgz1cn
O5ovB+utUCEz/kltae3I/uMJW4JfIZoBS5OYNN8KbJOUUgp1cp2aH3vPGHna6VdozVsoDsWSbi5J
Q9wvZ0Oi16cP7NYoDiSkjhMpFoKC+z9AIsP3yi3GnggxFb+pb7/ZIB9SGNHYyxxG92ClhQ8k/hQk
MzCtzqE5AE1HCZtCNa4nWRarVhj4/3ANTfLXviNS/tlwOjqH77rdawYtXBObKDlFBUhXO12LUNvG
xhMwsfIJRfq+P6yXWW/Fx+o/FpI6ufRwLX8q7nRVq5DFHyLoBBIfZuFxfb7McA5V/O/jxfD+VBDc
pQeZ8GIcCooHiBb78COa8sGdKTiBpD6FGkqTcHnAmEpjLawOQ9SAwh1gjYzKNzfkyHFP1HXBJZs6
qxPsr2b31zmBzk0AWOp663H4Pjr7fErGZYe9Pr+btXr648MjN37ZYfI+AU5Nf2cglIfXdTUmd0cu
74A7HhmNLR5Ckuq2baslDToPsya/4NytNkDycKtbALqYVUFRmNJ++D6Y/+QT4Q+9yfvGoMj2S95Y
VHDTP/PFYU9Gtb1HqAR0VF0Wb4wGvxmEWq7Xr70Hsi/o5GgxByOafKrdQAmfoW9h5dJfxFnGvvJJ
5Ah6Tfvl2UF+OandN/irCr+Scx4VDnjIhGqHTmIBjTQ7sNoHdQ/+LxhsYI0k/smDgSIHURvR35h6
+qvloumrciu+3o79ISYTizUbR17xrivhtrg6AIMEgpacg6ihsLoLUfoVUS7Uly3wgHtzoEmYCjl1
PmFBPauXKhVT5QUAvTriHwMKIMRvKWlWcmi9BkC2x0Ss1kUNuKywEU0KSqV1LCI3aCiwWJO2waB9
F0o4yrsdamjW5XaIAcpaUJjJM1O6za++QeqG69JGbm1xUffjXnR3aqEbCBezme8eqQOL0FTToa6R
LZudr/1bbBcEzAHcncygppNHUtWAgaXFfv8Myak6yL+A7EALKMX7+MGd/Y/qx4blEgdRTiOcAGA1
0CTrS6nJHATMUG2IoWG4sZM4EauXJ7bcS2fZ38oPhgjJ86XjEydXsV2LyAk8r2xJ7+wjeo4QQm/J
zN05zob0V40mFfml5cMICoupwOMF3SvrKn0Ep/L3pA6iaNBFxOlY26jc2+zFa6jzZbNxSRR4+9aA
7N+oY3zuLCkUfV09A6F6CXQ7Agz7CdAH/a5Z1mRqbWlJz9jk+AOm/i6SOJnvnc8/WFSeQ7DKJqmI
MWi2HEMCcY/kE/6GE942+rDh0PMWYNH0xQNgG7SbonnD5g26Kms7yNXSNI3HCgUd6FsXtOJOmiPp
mCq6X5wB9XnJb1iKtyTTr2V8YXg7AjQvWkLdVRwdhhKMSS1/LTF6wQZNdDrt+afu9Gzf4e59wnEt
xvn+/FyYYuBhLcPTdHuTv8o3C0Laokrf479CBzuooL67YK0yv/o55fBjWDzNo/D/uqzAYUo0+j6s
ad7YGeVPOfo5ONMSev95xkH4Z//4vnu7ye6m1sn62faBnkJzm4Ekid06rBLygmFj+zspX0vD/jKA
YNlKLlhGgrFRAv3/sPDbUd4XCHl6mdu6xVl/BjLR4z9moiqmkURothW9PwJZE4AthZnF/pdh9w8w
RcUjv8vyLc8F+Twl6SSxhZJ74UFLukAivoaD1U2w11T6DG7hQO1kHhH3LfnUIw3JmoStykWy2H6s
pMAq7wTwGubK0mGkw2gKhqM7CTNgSQpIj2Zw6gxBzawGA/zDoIcS5H4US5EYpn0UQfXZfTfHzpmx
OEHANTEe1wfRqau6Z9FiPwnI43wXOldOtXvXzVGW09eV8mre9T8t5nBn7N3BePGctEsJy4rIuOEW
1np6aK4f7AXedRfBQjd4TsF5VJQryesXuOEUioXsmUcdUmoJXJmTWZFqeGaWtA05uKmidSeAu2hQ
PRscT1ebzedot3LeQPGc7QBKKkTcCyymNFGDrvVC1SQLlSgZ936kQ6apvqRJPL3IMl0tNkvtbENP
aO9n4JFiGszINYJCrUkw9vBV1Z1oUIm1Y7uZ1s1B6FIV59kCAs4AOlBDF7cP0kIdtw+OziDXLrRW
kxWS3mlSCOHGPfA8d1bAZX4f7vADBhZrzhAjCtrXDrjIIl6dTujT20tY14HUh8kjDzEGYBmrpWsi
iMF6K7xHrHIkCkG342/oY7KqQROoF7ekMzAaKLNR84hVGPq3niECRSOct8a0vpjeTe5rLOXEaU6E
osebKmo0VzxpleQ1akXjPK3TStqKbnvtziJKFl4wNKi3DLIzUSetK5/ktRyjw52uqAoYhqoPUPr0
Ueu7YxfFM1+Z9tiHoP5/VybQyytcJOlHTX5GmsQUbmHDkXCSkXjuJtzGkjrNT+no56/AlbNgnZTC
bDbyFfivxeLbCXWhAnDoaJgc9/nzU9GOouCJv9K11EevJ+iyM2Hr9CwnNrLcRDPDiAQE1t90GMt7
pXPzhF0H8nem09wVL19WZiz+17B2zQ7mr3MYxER5/zNw6z2a9Am80gxT4SKqoUWn5mTZclVJSMCx
HWFd/zbepZ0eAFkvxyMuwtqunqFjaa8/GF5MZve1cmx64avrrH3tBruJ1XEXaJ4kQL4y72cqu8Rr
/u8xnuVihpgtgbGwqB76Rw6sD1s7TKjXPa7bgxS+X43+O3gAHJWBO2Vp4k7iga2lGPYQy8tAE/jK
eYUIVDGEHe4O0YqFE7UKG04j3+kwmDi4h9ZkVpL2kAmgUkv5hNdK4QX0g6kcZKRdVFbJRDAHEHFT
QRnxjI81cJK0PSHebGuhRAs5hwbKKoBCykuHYUFaOS3TO2QVY7ZwkW5rNfbbefYooXvsjlZB57QL
GJz3omWJB6z7Q6A3Go9MWfOuNq7k3OJWOP1arrPEpv22xtag9vh6xOXjDkmdUz2Rv8bd6CcamEGb
15/Cl/Z30RnFy3YApGi9zI7/qXFXGsbMnlUWpPk5dbj0VCWMuv1z2qBGvGzRr+Z8g80ZoMjXrWtL
/QA5JLBq7BbGTB/hJX5kVEarAJMbUc5hBifQwzS3kKgbw4BH8bNTT9uHvZoO3dITdwTYJcJaBKso
kmm6h22h3ovxgDrtMt+Cp2u+ht6HNnuZSbGyOtQZ+on0GwILlVALnHfmFBhJCBm/9Z1/VzJsvVUw
u/o8w9DPlfDCwTthCYpFoYyYO1r22QzjBmpvZ4TGpXSSchzfS9Xuvkjsc3RzSqifFgiJKUaYWe/H
BFMDezEB6/ybQNo1PTvYIE/++2xU6DSs+0L4+rj5SPBEQOXbOIzT2BrUyPHkNF1fPNPkeBDrc9Px
e53xm7D7jHV1/+ApciEVODTIOQomeZjjnJQ4QQ536/gjP7tWewKD2pnNYoj2yq5NDn5F7hW6Djo9
X1UdaYF5FDz5OZtyDD0SzmEuiz9MspEiCr9z2XA37Qrp42BTzJdGRMGm2qAXL4FJc9or4EeDkK8L
m6iPvd+eluQkZBKT1KdY3QG7WHL9YEKKsPS2g0mtQjxLkYzOleB3NW/swwbcoz682MkrxEdiCZe3
pf29z6H2Nxl2uw0oUYsQq/aHSTGclptXJ87VIRl26eZWPn+hd9YfArKxg0r27pPNKJw0MORcM+En
a+1F5fWKoXPK6f0uXkYp02QWeuM5P0IMvrouv+2VKQxkl0a4Cw4dC7qnjSY2kE5Q5k2aJ9G1jhzr
YK3cVFdZS6K3XnwVWHqqKIGFthveg9LJWCELRMbYNBuRyQ+rLPuZF/o2JGSJSoRMdCfRNxdHg/q/
OdUOInJ6t8ij19cKQcHUIiszmh9cn+6JanxswROGGEeHEdUUV9sVKHafPeEKTLynH7GnZpTQ2K4R
DY8Uz3cYzB2WMitmlav8FwrGngm4sXC/MDeJXwRXBbPGanDC+3d0qrEn/eSD9+noyRCto2ub/bb6
NmGMWm3PttSwPpTeLHx7hmb2D85JCPn4E3WgKEx5D88LI52RYOWbwLFfMtlNTK23WXrfK1Uuu67G
yOuPKpFO5gbWG2o5OBv50e1i5wmGi59utZaN4LcGpTeZCdeu9FehQQu/gDo6PcKsaoVtjRX9VOGJ
N+n+1H3a1B0xAj12yUw7p8L90hKs9uCD1fyYUnbx2FDhMEYykKDJ0OPUotorXj7YceSVD1bVvhA4
72b7EtvFpOeIjnylnC0HJmwJ1FlyAHfmKM948SOtIPDK3L4qMZWa7y1uEOaqKQIA3+Jk9zCEnlIR
KNm+Fb3HbIKj4syDQIR3KX8WxFZMzyMJuJkPrUHYNr7SLohaSvwC4b6j7AHTd6j+JUBj43zNnSwy
FPzNkz2A0LwigO1g/L4Ike+LrvOX8EEFhjl6mGDhLolCwSBOK957X8ijDyJYqcu7t2wrt6KWpXzx
8UPZyCaBJoZKSBqmEB/SApqvRM0gdJgUZgYlz7oYIWCDM04iNs5+lA9cIE+Eqzt31jrdETnxHIEo
O80ScPLWj7++CwO97Tj2wIG7CRfzu0LIp980VSX+HffG5MoNqlr0XpxODxbSheW1sLXTkhM7aGjj
BNzPCK9c0fXbfqD3qO/F8vArT/Cx0+4MkXbF44UhrX4ymHv9mWStJRNBwi01mZu4wuoGwLKWUdNC
61rKSkvMK8oAt2K12O6Wy3Hm2cydlBlEFqRBBpzqtY2IJwJqipyg+DDlWkhiwynxIV914NNr6AFw
qm13GyZdl43GQ+jCj/3brA7aMIlgxfuXzX8WXEfxxWmDxb9vR2RhDhLbnK8sPmNHUldFvhKLB5lu
zj5p3hz2LcvKf5BklE4pfrV2YWa+EaxRqEIBHPt6E70Ef92PL8gNr90HjWRZ93v6p8kt0WAdzscv
A3FPDHU+QB+FgWXfWB9s3OQVT09j1sGEzIJG82MSXe+FIMfc8za8L3UBTaJ/bN3VqAuvWZGgpzhz
+3obHzHTxZx4qQNeqKClF2QP+P4FBQ+f4nbS2jnA7RJDPkWiYU+klRIq10eyLA5F7j8xmItHWeVU
UxYXeDGwz/RDTqbwnG0Dc+026eJnUOp9YF3HM5CBDatKTGnAzyhdfZARFsc9RbLK6vl55fV/mcov
PeqeANuN6+eBLc8w3zSVYyLU81ic4CnpqDrazSi1PINr1is62+6A5JrjNroY2qI4KVpKdk5aIqnX
q4Wc1jn4K376dI+N+EHaGKifSKZCbEyEVklpDdpXwD/En/dPOlBZXFltvn7yaS+HEpYr1tY/eAKu
7j/V2aeOm+20JGQYIKcYdIx5vLWb7G6usCqoPTO+yg2IURuoVX+28DHiqthpzQcy/i99z+84bds4
ld5F8q9N22xmEdS0LOPCTZzLcIcd53vkGSOCIyjkHBa0dlE2u+2gKpxHpD1Jv8bVMiYdTHuv73G8
2dXVVmMC7+UHrCMNLyLLrhKMxAy92qj8KTAHGZDEivpc0B1MqZh3aPF3bKRCFzhqbS9z1g2XTQtR
QSZ+IFGlXEfijnCljnQCgef5TfM/4WbcuKqyLU6wn0e/iuC4CrH1zxcip+EoGW7MKfTx4djHcSHt
TSQhfOSyVhPQIfWzuOhekA6M9B5t2dOgAS/Em7l41Dnnq+ve21qoUAxk6W64bXR7zZjiKX7nJcNn
1jkgEACninqoJuSzop11cbq8lZsm/U6EoGjn/TPz8iY2fSiPis3MvAG2EMl2tZ2g8yk5VjJJH5e9
tj6cRJKGyi2vIogyOPXvUleYra03A+Ue0epu5khTYOoxM5bB7DZMlb9tdJV5evTrCd9v3DHtBHhl
gINTIqxWOg+O6DHhLhQ7tS3LZC5y67x1/BKYn6/gLDkP3+Y5uj40KaCJ9VhZ+Cln5Vc8vLyHMzuI
U68bvU91HC8PhMmh9GWZBNa8jNQDVwX8qz/QLoFrXQVcodMsZ6Cwe0Ghjp3Q4FWSQEsG2g3Bubqc
Br7eSGXe3XQZKLClZq45h98F/7oTPvtCYG8BLRsX2ZA5ik8qM8QmteJGKIb96YPx6UjM1gjDpFY9
+cyPjAi36pU/uBnFXmLjN+sM49fpHHH/QtoqVFuS7TmyJvWHolnOhFJ2sG8QmxmfIrTLYCAYYwQw
Jk+wNBAkF9uXMO1T+OxyWoAzwP2SkQJSAhAYBi9FeqJphrXdG2CN8SbLazMY3tQh7FLE0UebqW+n
6v94pYDHIYZz6B1FSrbZj8CmFfAzFkIMfJG4Cs1+p2Pe540fFUZKKRd84D4jUR+UU5GFWoenfkVn
KECNMJFzdX2+MozJzG0Kmf8KI2as3Qvc5Pvdx+Hrbjgw7C8IR3fMNEnJdSPbk4//tNKLgR4XoTrk
eiSoHkNfROHchfI3FwW3bRCH5L89tJS7sK/b1n88+oNSkvNhT5G/G8bdAsy3nCUazfccsCrtlKxU
/EqoJVf37OVhCNH1tSSOlkXQYdtgRw6ArL2Z60smiGEmYOZ85hoVBmJvz64tBC7rC6wFUugJwAOW
/qlbskLiAbxfOY5B1cCgIzu7NknGfoDUqrUOnHhiC1pX7+uhkVdSyn8mHfOigngqUo4BJ4QyvD4J
oAO42CrWhgFKnDttfjVUK1gAq3cxmtv6UkFT7CIcYVBoCMRT54xJPahfYAw0k8fII/peI8+ZRyyN
erVsGx7EY3Dn0muSY0sj6NSUisiW5nGS6Hp//a3uqwQuhraF87jRzy7ATypbYURpizmf3gImqdga
VsLDMA0I6KAoIAzlt2MMnBTH6FI4GV8wLe38KJjwW1/l9Ff2WqFfxuxJnPKDGgB8WfWs4p4vpgL1
t3kikhsTW++bK0VXiOVuOo0XtlyD1uSsIPpkMz4BtGOZhU8DSMb2aptyEJqIq6hhAsyCXUzmaWL7
9fNrPami+XdV7ZVSbnsM/m46joBhUukuEeLG+//Y++6P099FetyleXd4wwyVq13b8tZnoMOcl0O5
sFyU+7yOK43Xtz0VTf183smxXgs/U8GIfL6HYHSYP7kUsRv90jLvMvmqP9jLigKO5MASoG19r95f
91uoa7Q1itYyQHNAvwIk0ihiHRmcnZAsiwo7DavwKgOSD3TSXwmSCdKzL7XPO1etLdon12Ipvn+n
x1wfWOXmUBLUBNk3C9beOWlHf54v5gTQP+F34RxzYKMu6z/85No2QXgrRICDVgY0jFByq2SsgjXH
u0Et0JJNUEUIDL08/TJ8DFPyYEuJUAP6ksHL3MkiPRTdc28ZKJr2fKSxTe0hQTykya/YiRQcB6qD
VNhAcl7ZTtTYczAF3GRmpmDEivOUXaNn3saN3J7CjLXjPysn8722LcxHu2bB8m1Bu69WuTrf7ntN
kDquww890ChuON7mYCPe82pD7VKHs7+lD8XkfwaFuQa1z5xnHCZ0B6negOo8ZvJKNkshoWNHDPcS
WjvXxcZABHnO9mEZ7O4mZ8imTuUVErprWW8eS9cHo/bXuApHePA/v8Jvjf+lXGzUuy9Y+frDV66g
qxicL+WOfN941ah6qnFgZLHxXoDCvok7UlR3lEbqwaKXjbYEgao2sou3/djehDi1Vh2QC8swT5LA
AB2BMZjZ3Si4wcM6aP4x0jgpzeJ2lXwpPx9pbIE8XNEiQ/b6Bf/F+37bTRk9axslI/uq4Fl30U9V
BnV4OgGl4oivJMhcZYvrwwIqDHpgik8blzuW9vSvEJTIVAmnxcSdsVzvPxYkWBw0GuFomCy5DBLE
XFlQKJJoIM3wEnNyuW1o0vqrWMxHqTD5yy+p0TN7hwhB8YNG+/UG4lR9N5w2yqMdA6RqFhCbpN+E
lD0VdObEQjWe6RwDzSQHjWkYAlyapma37ENe7jzOKb9Z5iGnjm5oEWTiBKoOsgyNYz8SCBZmsJMz
4AynE69/BzZyFCzdZsP4FP9yWMvLlI+Om6nIwIdQRyNNWVtiwc2fHyRzXWDXjqWkVSKQbMyx1yYr
fW9SSJ0ntvxLPvIjtiQp2LxF+efmOtORK1l/nEJaBOle2gz1y3L2Q9RnQiMwJILzUCJWC0wQDKkI
AcLr/ZsLuVrvs9gtI9XZFbHZuaEGBI8wx2/IRJWNT7I+SCPFV1jGtBas5yUwvWfnu7R2oIQdcDmE
CSub6R1Z8qlJ/wIHpcSdplZFMDwV4HTOf3OPhZX4Tq4f4FSB+/43UXEX785IrIlMEpdVVgCOoyVi
hq9037CTwHobdGvXK8Cs52tZ5Nj4MkAi260dRhbDy0EczPVmT1kMTAdj/CljEQvYcg6BjHezfBeW
wZ6u4CAeb6AlzBDcdSoGSWFapvO0odvdHY5jH4s/HCdMCjfHQv28ZuwZ6RzJVsUrIAx3nb22rj2k
iq2yNjtvzzG+AZGZAwkmyHh3DRpu+ma1MpJrrGXKQN8PvqJVUPdh25lq+dAmb1juQtzVUGeqojUv
9EeQ2sjbRTApbLlUGWttTCWpnJtXQYZAlbpF+8nfeE7cZ5np+wQpHSG5lLrwmib03rIjk1fk0kXe
aGEsoE8DGc0x4NVoCrpY0DYHKV2NaiVZzRTnTtQ1XGeKfwCUe4jUYM5bhIsnQgcyE6hkAC/pxgw/
9E7TQ1mj15ry5wJpRjT84/V+dSqxeW/G/F4S2rsRILXqm9hmLQBsTb8FZqk4HuS3jhVqlxQ3m0/4
rRbSbP34u81EPjbiPjjvqV0NmYLnvOPEeGxsYFE7Qg8NISDcBRmXvrCOyEIusMRatWlygAvTuGhQ
nNX4ef42r6AFBBAZkxMN/1Ktb0RnyRZ5OJu2Z8xhORTpBbeGb33rxfgYrn7sKBFMQT034hU5vbmE
Jkue+t4Y9QWuBoHtVouyydrIXC640S1Ck+GFWAc3ZU2Fp+8057au/c8Lwt6exE/TrjcIHw8WGW6t
QJ+nlHGMXGU3hq+gvrXSkEyt0PpWcXXB1LMfJ0RiLIN1+kbdTpo3NbIzGtEIk0GnszBNDARuL1ig
6wZNWYnv0/ajMd6iDb6RTVHqUGYL7GWgcR/GeLMjSXpq7+KMY1RkCmg6S5pcYMUnLe4ZKsCRZgqS
ch02GF6utbZH2yEjvcf+3zAr9q2hmQrM0wQ64vGxYxXqXmwr/N1uSaY9s+d0mZsUO4kFiEIq5Q3j
h5MRQNo7qbE34YBkgvWjL4PAOQtmkOi5T/rsranlLxDb7gPB0GCfQru0kSpmMOksnw9cSjJgDas6
rnuPZOtWLE6B5DREnAAOmiTi5aCwjRjfK6JzwngUu3GCKPe+vEZXKDfusFImG0+zQ7bAV7dsBKlj
84B1XaS2X7rUMKMOP8iqpNM7OQBvHYD0T0MA6iaEq02nJxjcAPUjQejj+OQA/3FfHmp+djtG4Npv
9orjiofQyVcIzlJ+9SaXb1Ttj9D0mqQXcsJIq9k0ZF4YaYuDedCogXbhihhXdTcdJUsaUf9tqFvP
z1NmsmGtC9racNuVSCZHmGQ5O0De+GsfBiZsYGeEhmtV/Y+mcl/FSW7uFasEC58dKeyrvJVr46uD
kv/sLDBgjS6bsSB49xIGSTpxwogDeqob9hZZ4Bge79LMmiKedvTyAeirce2e8NH0hl7YYrhoBXOw
3zcXdRprElkZLEAFlQmAx0D+CMsN6ucmEukhXlBk1ha5Lj7nW8x6qIWYw5osN4XQ7//zXmAfZTXz
4u/3JlIQEK9ZBdyrnkGxFT9UwBzK/tchHWMJK1F1Noer3AhbpBH/PlQX+sDgewPIOBSZzjCmqWWn
Uscdb1zoveTvdX5KTBaPy2bzjCzNn0uvJFu7TTxT1uMTPCe5qVGnXMGRsa7OJiOjJDXxENg4VKpP
nIujCDIRw5+NieWSLyw1I6+q77dZZf8Y1sU1SznT4QxD2op0qdMK3iCdCUyRco/JxJIYmiwR9ShA
mpE3nDS0nyiJi9ZYRUWJ0Zi44rq/KmWOeUr0JKoRkaszKK4XQIorGMN9t4eKocII6Um3/cVgVwPu
uoU5FsvD6fz4m/n/ZKxdw4Ujm+0JMXa0HNOsQXxw/vT9kue2dv7YFHtDlezCEJFck4b0YgQ0wub5
QI5As99yRbkQ8KeuocZQOf4/llqrVxUZIp7mAMsUVMfYWIi1d9I29k8mEDEwl2Si8g01sgc1XRaD
Lm5vVFGMjPdjyrpsqPsplMymkXwaWBh23ZlnpxZl0a12G6oejCH7IF6oSumnlzK9llcY2rOCedWZ
OE/0M9WMT1+iL0HB2VvsRYO6oXjAjJct2oXBhzLkkJBiESHdl45OSUto8ZPKmp85JIfyFLy7FnOi
KYgBWOrwWOWAoC0PxbnXxIuqBMIZzRjs8GGy3tmcj02m256OL6V8jfwUijhZPcb5fqgxnMvwFoVx
va3VgwtHcbWdXPGViIX/GllPnrhxzidtE2ztZMjmBXKudAQp9PKskvNEUQfK6OOJHCGOm0vyG87E
NLv0nEdjasuBwfALo2NAwEv8ckZfbg87Hm1Jg230kVO8HLCVMPxcsLzhBryiqanFBxXEH9sMtQgr
Qs1+4YTztEbVkIkdVrwHrvOhUOYpIu8p+djCzNA3Ln9fx2d0LbRpSvc5mom1ueXVfOK0oUCN9++t
JcVKb0zIpA411Xvke+ZVvAC5ZDvz2QTfP5XiuDC5fPWN3OaV/MhySG5O2ueO0GRhe/M+6jwXX83w
RVKDb9bTIcLbBx+zU2KmcW8JFho5xEtISNhl9ntCLGdMa4W5yw5M1T7k97ErQPGTfuABh4DnLtYt
PMPQvKZabS0a9OM68uvYItJoqRBf4PIRIKUCJPnYEXsCvAoQsj4LxDEG3RgCkFtG5OIIyQVrp2YA
2S0k0eh/OcgRYjvE14eevi7W6F/VpTeSzG2bWEpOZRvN8M25YxxDp6GhgMdMuRcgs3eg4vexDWbK
xHHJZTBEeYERS4qc6eLclFQ4AhiM10oVL00/ID/ZJZDDKeSbZpJ9QNDKSZ0Yg79Z5nrgZoxXctJ4
zqHrHo0tQ279mt/yvfqItEThrPr39c8c+7tENefHAnaryOZyWU4k06VN+OoZip7iEBpvRSnyzwNw
anVr2onrtBgWE6ew9bgDoe28LQ5urYwUnL4D+ZhtYzO4fKZLEnhm5007u6ei0MX/c2NTLdFUWaOj
2iYGI9csjpxhVfQcdm6S7taiWIQ6XEsX/V2V52UlfKVZFy23FTGXbJns6NX9SbpWKxF/rc32lSVX
lBcnYpZ80/K8v15xzPnfKW5EsNBTHZbdUnSecdbbcX3Wl9mkgXrFhgAs5qNCtckeEH1vzFDI8z/c
gda0NETOdT7RR+Od49ck/fdKjMBfrFEpWeni0Bjb+snI7upnsXX7WDGRZ3WH5hFrv8NfUFBFLqBV
YGCrakRHlZi+G+etlL256C5MKRveeGyupQV2CWfDZc3Xngea8ERpnr5YaB90v/tRqYacPSdpMXsE
0dcaPSD5a2LnAykpQ9M+Q6u7EC+WYSctAMZW9iVdwrsOy0Jj2DHAMwpZoIOtmTc1fAe1PsCts6vY
+zkBv4wX/Ry53enRYn0bP3fizkUANWHXV7Vc7EaQAvNm1tw5cyKoiK5j1Pgj+v21zu7LQeYi8Gft
+j8hKUDYPMQ2o+oaDcnInF4GygW+YTChurwOhr4FkaZBb2SF8nrUP4uMAbw2JNIJHlynoOnU6N5L
uTkoG84l6i7gXHIWGd7Ox9scatuod8ofg0c4lQuKq7E/KpXwFkLb89Kwv04k2WJO5J6uUsUWncTK
ioLphCkxfxIBOS5L03fN80vXq8VrdpO//j7BguNIHhQZL2aq/DaEZgr4zAnbw92rnIrTOrWacnjh
Je2h/c1jEpEXaGdeZLEpP81KfLNI63EaBU6PPuvjtayjrCHehRLvCl2vq+05vcSI1TZKQJEGOqj1
xS1HkRW5PK/yPFodlmKK9zBzh7W6rrIREYghSFZ5tqtNhE+3f+YKbCHHe3g3SS6z+BqnX1kT0W9g
Eoi3sfkEFnaOwC5AnUjJR2bnrD4VAavrxW7IuK+duzLwc5yiNNbex110KmIDRGWkFHAfubfwkq4R
SvfpErFxwNKshg1rNT9ZmmvCKii8FnCLOK8/Ph6ITperb4wFFwoR9tAeOky4oCQzHX9PzrM1WCms
/VbtI6MSCJvfZYkU64U0Gw2aSncMCm7IATU9fMU96+cXmtleeODwW9gj14yupTYKXeJWyubL59Kq
+rBNHkH0E3jMvH0OchANjF9r0gCF1HGFyiLEQffJXt9IH0PN5intf48q03IvyA1aPZ+WbR3jKYKQ
7MNQObaRRXfjszEI45VHEidfQ2y4JFkIKS/0Y2V4MjYqyWKWNtYhdxbthprF9Qi+GsZQwW+/0ZCQ
GnqlL7IekRDtecx2w2vbP7WNEUpdiXj2XVS5ArpnWQ+Zc9SPx9sXtrmeo0prkI+qvgkCsiG+5i4s
fvdyZSzpeknQg+t/1DsfzQEWBGqt87Nyb18kDESe8vwR5oz4lPmPCamO31zZIdPbKWEgLC2msrf3
wp974ulnzVWf2Vp6Vsxa0BYirfZVkNg9djPNWB9WkyH7ouphsfwYmNQv9el6GnjKyyeaTeyr2emm
fbrS7U4KbOTMjhUrVR3fsep/fOWe+vG/04KEM/uWULUTnqyFE3M3kbSwTc+7269tMt1Dv8HZ0Nsy
HMNawnnzlhLbMM9GtQVCJSZ1qF6owzyR2qtCIKCKsTpUbOVKxYgj/Hvi5YSVRfxptNnsTBYBKGc4
PDTzkOm0YlJaKpyBfkhNXbs/syXRqBBzlyJmCDL/Lswd39vvtVphUKn+zW9GfpHuEj32hYoR3Vhu
0zsOiindGnjJ2HHqUGl3v192+Mmi5e9ml09AM9LWcEDP/AQz2fbtYK8LlVMUSDJCGcx8U/VQI9UI
m3jKWhlbWMpLXQfUiuDw+vegJr6bPSep38wltiipdH8+n8lxSUAIRH9HWyMS7MvmNLmlmiRgaXxc
qQJsMHPS7kP9YfR8+CiPixclx+ol7FgXUxdEa0HtzJo1Dh06gQXIUeD7FnLecbgyiGSS+HQ5CtSI
4wyfL/rNw1yhpx61FsQ5N4JgPHED5GyGWOo4GzqAheHwaZH0XSMq4+vanJeFqwv2UfQRV/6MdMDl
C8Zh9QBnG24jOJKWukqZ4j5wQcvhFnY0qO6II3u8M0+6bLX8cLD4J0k88kkKuQqjSdbEUTyHkHEk
Y8E9BMVpIYrqwsa9SoNBBvMpTtkwJ/Ou+/o0UE2VMFl5ITKYxPNRHoQBCVVvEIxsbSx1pz8strB8
UDTiqIUv5DzhiPFNLz4OC2AmN3bCQtC9Tf6dG7zGAuHHBp7rUX0A3kA0ELAYnapL6CI139FIk4Pw
WRo4gNplanELCiQtrRsxoQ+zz9yWbTYYJg5Wgp21wBilkA1Q4xBIy1S/con0YKi5A45ykfRtr2VK
wPvlCYQ2jFVPEuWcdscmi21ScWi9a3bOUUnzSTTpNs1cKFi7y8Ydg9kQfD2SLt9s7HYwmEhl6/9w
0EC8ZY9EGSLSMaE+u9InJh6xFsrTvOL2khfKPO641jTWEU4LBVU3iQEp8DVpNyICh1AzpOpRI2rh
1zfhf7ONaAPPfB8m/hBLwH8Fyaahl14asFCBjEcWb3dR1QvOYxS/MOpr9ryD/6RtcTFxwnA+BpB3
cl19bhVkom+Nj1lAf8ptrjoe64fwyfYJCcVQS+XMCcRR6thX1wMmLG06YUkuEtTn2F2i3GwDD+Eq
w1DJeQUBTgQlkUR/pjHp1wQPF0c+0Llc7rw1Efg7rB1dzz9/APlK9TUPrHt1v19SRaaafGSbNd6Z
+nS2EUZqFqc6JYzV2Qdr8sih/OF9s3addONcQMALHNQ08g0xXFIMs0efxSORG/9SwtC3gQqFqgJg
R1QkAK7kjXdYfIdDS8ucI7g+QW/nzw20iB58deUS8Bhj/iG4m6GMqG4v3xsS0JdK/Z8cZnfXTF69
F+7bZN/KdMUcUM8kCwYkqXsFg2AO4GgHEmOSGJlA1ZN7N03HBjf8Csl7iWbyTqnRK+HG8HszjcJd
A0pNHMCTix2GixH4etT9e4CrH8K3MqRbFb+YF3zp+x/Z+VxBo1+JrjBZ63lsA7sXHTK7a0Q7A9yF
T0slxnX5vu/Ru5aSmONvBmrowgWQjZq4TMYBOCuo7i2/771H7w4+nh2R0eTfGqm6r9Ker40inXqB
zowwF096wUn9C/zMuwt/Jh84cAA0zZgUD9UeMGlnzhOjq/RFdSFBlfELgTFHkpnJ2pkjU5Q6+Uxq
uXlY0w4LFy8wl4HY8VOZBP8k53NUHrBF45QUs2FEXi+ULPTvv4VO3ZdK4qC7hIzm5NHZe//DSx5y
VwXZBiZHsYE4YfO83ECkID3LACXwOANmaOj4FSFz/Qr3YyVkMbWMd9nFCL2TPST3k4YIdl4Kwww0
yq9ZBx1B9bIPfd45lI7Vl/AHVpUmcTqYx0Nq51+EeWXTW+B81BnIEiJ2rFxRTT9CrP33OVskomNN
hN+e8vY7QJHFNSa12Aa+Zre0+kLbK0LTS0PB4d8fWjUKyQUOiiI00gxWFR/NXi8MIisKGNsmz7BF
qQTxBXEr1zUHtCiqrVYXyzSKDoDDFQhRTpONkgvYIJE+8yLp0G9N2aCkR8UrOCtW05CuwG/QR9uS
B2KjYzRQOVNraPVeFf5Be15uUi7bFRUlJoLXN0b2YlrLNE4fkeZB/ErFT6V6QnrzwYqm8k12PGRJ
txJECgEqlSdD2Js73h1Cc6ogOWKDhkU6fHmK+5NACav72DCJ4CEWEsApsgdy+65sXt3/9VM4nB7l
kxn7kjzg43/HQ20HNK2Cx09SZmq9K4ygPhrg4fMJw9C/Iq83PuUliIuqBSS0d/3rmJiNimhtwe5J
Go5IBKUO2eaTi6XX7vV6UwXhyve6ikfxXHyM4WNCYvxXM54I0bjAxyE5YqdIEVDyRZzHENkXGLA2
d63ft2XI2LpWAHtTAdQpQ4E0tT+c9hET4HChT/Le24EBsPsW+fYwLI1BRlwgDs19vUpSGLv3G0cl
YOC+p/ZsaS2C85k9bhdLEZDd6cCkKpf/Um1D74UAEtZ/0pJmeBpDiNlxmVEUy0WwwN8+gXIbNO6B
MEGzSke6PXdZzeZMYvMJQ9qjGFvWf0sxfJzNB91mg86sB2a+iEes4DmGmnfvW+K/RvuCN+ofEE82
Isb1TmdXLerBal2eFKYvDKvKTHOwh1nHVcFpjewiGTcrnvCGN6FYx2EYZhHoC1fJdOQ8UIQTYp9N
kfPHitwy1zlTOAJroEsH/fmTrNI4ICXksFRjmYpnFvJ3DIEiaMjfTp+/u/jvQMntS+yOjc5E59fB
A+rMucrkd0F0IlYSRQdxtASxOBOfNlIhafnCzsM6lU1ad+dtFvooYTUrBsExBpPw2KbQAoeDekNG
tE6jjahov8EEMXgNzQ6CD7UHFyEaebqr2NK6ONKd8FdkLT+ggDF9VBQFj9lTGY+zr02fj4+0XIk6
Tj6MRnRS3rmC63p0ci2PB/1IL9xRlBzmTq42V4TI2o8Xu4s+4oF8OwQJ1KIQorRrjcJUZxcFY/H3
LvciYGu907bLeyYlYtYzWhDYT9SE4zfD8sov8rdZ0J0hdyDp/y59jeEPnBkP5eG7r3YGWh4m2/Wa
qRpitYqiwbV0CPUDjoItDmoFrNs8qSMzkaAjQloPrawCQ3bXhD/GCH6DceG0e7CCq0E0eQpqStwV
JIP745O5BJssm7aK6YCL0jxVSb0VkEDQJuaRrvBmRYVno9QEEc/r7sO7E+16mpLxWvr32KN4zNps
ecSHP9duNVwL4UZrKLvf8smRsy5eEJxETwick/sa28uFH3pTVn5ZqRJ8ImdRRhR/EJPXKwxjgm6p
6XyR9sKULgP8urpl1GKd5prm5pkXsu2P20LjCo/BHMMleWh2HlHrgWz+LAUy6t0DSo4kYiQckRtc
kihBSE7FVN/wnyd0D2BY13vkYxtwKPB3/zs0GaOou46fUS7KDBZ1DGXoASpP4v8RK/Q0K5c/OcBd
p6f7SrUzK9EQbFPdIP0XuGzQVXLvMngMaxPqhhC0qdVBNH7HrLSs+cSFg0GEuY/Mx1RGz+iJXGrc
5t3CO3SC/rbCGJjx8YqzoIpbB0Dlf9W5Xupc5y+Z46y2BrAz7w4ULSxTFzm5fzNdnqqQkuPLoyNG
vZIHOMKNLGCeG5vkvEpLPtmhd6kRQ7n8K2tzhd0AF7Z7PBT0J+PZYad5rooez3om09VPr2ZTflQb
Ih2qxzWluC6n0oL6QU93GUP5Eu/MmfR/ITcPI/0wuE7+6l9IrBttDbHg70AJwCmrkiWGfS97cPW1
mg9RqGBFmGHvFoE5sbcEbWWoWfK4lRyMOrYZO8aWxbHTj3q2KpQk2kIClTYlrsdmqflBDXdaDrLE
Nu0uaLC7DD/d3gLwFt8taY2XbJc++IrT38A1sp1gnErO3EpVAa9bpmCiwoBLvbs3MwleHihNh/n9
7lkqvg8ut+EuX99BFFCDBQBWunZliAcxMECqsm4Qgvi3f6DnEgBMp/Hxw/gOcQxCslo8optutlhf
SWr+nRWT0i7zWqbbDnPtiMMslGGXKR0sItOJ5mKJJnu7HnJw0JM0I6Uea6YtXP7L7ajG3hXTo1s4
vf6+QDuO5gM4j8bUswhFvg+/38xFAOhciUtFHf9SoIa8w+iAT3bUWROjb2Qe0VcX93vdhXxZv42q
LYHULI5+yWMp2mPT4B1LZVF64gvHCHdsY4r7Xx637tA0QeIRF3yPJFuURsxctMNeW5pzgis4cYty
WYhZ56kzjKIAcll8gKc0TSo/5LMC0U5PwhbZQubzb1T0OytSP32nhmOw7rNL4ikBTQqT+oTb2XqA
6Fxew0NqdBIpPkHsgy3g5jBzo82xmiodB9E7CZwtz8IcADGPpsfzG7/CQnjXeWUt1ntGH+tIWHbA
4lgQciPQA/zl1w2xKHB0+FYG37OsqMDsKM7l56/B9CH4cTVq98Jg1Xn9aYCdaMsmvKiVSm+je+dO
VfiNHiAN+06Dru7MO64FeAxKcO5Ca4CYUvpPCIkYGoBt1UEJkbifiEIMw7j/2GRY3ojoakM98Gy5
5O3FF0UxeP4vlwIZHJJp31eKX17PW65FX5HvD/b6OrIUgG8cR56xXbLBUoZus/bhCOX1CrxhqPzb
12e5daTIxhG6YME+0bCRvCwjw+amvMbkyUO3tzIvc7RkTwfeFS3lfquLJ1UCkEESF2zPQp8Q7JEg
a5x8lqNz8LhBwz7SZ4DeBil30fGTgxbAG7m67Z+Uzy1T/dED9c6r/dB5Aigjsyo5mRYCZvsBRVrX
eRkz+s/qmAsUvB3stxgGPOxaW2EnjMZ0oarudrdnY3/FUoxKErPx5pR8Ljwhbmc9Jim9NZInVYbe
Pu7j0aYgDhCq3p+UaJWpYQ3sZ+x9AgMnOHm9RU1kz00lUAqkQzJ2mdOAo7bTUsARU87OnyAw5mnB
QjDvsH0ciBttqxMkP8olRH3PZ36oEcYMhixRMxclMT74BUw6Bnx9KYE67kvMie+ZQ6raPSbWa6Dk
47NVRIJuNiUYIS9w0QzKW4C9wY5dSZO6lnhaNDYlb0xCkGo4p2JivUaiNyIzEHGoLPexteNWB411
1m5HxF26I+viMzH7DvWZvCd0Vxx8qZUcOW5BcfTuw5lVDWIe2xgfLwbsHz7+sPPLOfA1BjSnyAkD
OIhqsj9SFFOovEjlau31bJYWvtd4qnTN15IZKVE7PplhZwrny+HRhrOLCkVpCXPBM0seaxCjn0y3
pXdqQwFmut9qPPIUu8u6Vvzwyr1SqKvoQCDwFXxD7SBxT0PVEEvtaJFaad4Bkr+wY9HUHEzOc7Gm
nESoVYAjuL8E7PRC3iHf24LPTt8bSMhN5urJpN0VrF8Stoinqa9Su6klFCk4VssoGG1SRC+Yg3n0
zjYeqR4nEWqRudjjtMRcr3b5NJh5j7OnVJKaDakqXvEHaMMM0hMlhQDjh/+LoMl8FYuNq0vgOqNK
wLiHHwtHhx6Vyji129Emz2TYYszjWuNEO0M1sQ92qro1HDLc0OR8WjejbDejKDMCPApwXwdDNzkw
kQKRUABJgST7n/ujv0UpEv2/qdU1vz+MjW7diKFS1ENsRW0PxEMNhNThrlQ8Lu3YSHUzGsa4xFg1
Yk2Vlk5eVPdJ+OF78tzqBy6bP5fXC4ZLy9kFhWBVLdpUYDI8ERXgzjrPxgRrVyHz5zfExcZ36d0+
GsCkqIKzvN2vi+ujEihPCpUG0sw76dD/CPSBcz59gEvLb5UHpdQqUiy4TRRrR9CBJKMNF9w5KPZD
8r6ka9dKlDq4g4CISyBE0sSX4GwGyJfSRgO6YO+7ksqZg4eFKRJqUShWJEkcLXILcIYSn2u/tS3c
L/WcFwcUOo0DR2LkZfxUgk5TOSC1wpbHJ0DawkTe08rBQx5AUx+9KmPUV6krS0Ll+/h9mbB/nXdQ
6eN43/bU0HIxCvq75ThnkhT8vDcZPJc8eLKImEnUOLeSB9M/41y6ZABC3kThaCE0x0MgUMYAp7Rv
I8f7lCaGbJyetnBYcJ7JzHpi0W/AhCTC0ZdpjAq9wBJQOVbhZK8aId1e/SWt0KUeHCUN9Bf0D95U
3x4P8MBndYQ+s6lu1/7OjSwW8A9WspltWZA8t3U49QW3xDe2RghodWbKeu9PVRYOhSyK9HWEaPS0
6GcdTFsn7JZzVUJMcBLDJnfUXyw35NFThKcgceAK4t/qxaEw9T/ZOop60v6xjo0RiTvAkkqE7Etl
aj0n95dQxjdSWP7XCRs/LO42hzSu5c8SMOAC6QF3XkI9Ztq6oSwCMIg62TLv3jcdeVMUBoo0XEiy
jaUBDFHqgb/AYk4TqEZH/EqBb7QPNxLKSETOW85WrrZWe4/szQMQaN+0+UhDT0Az8HvVGEt77AiB
CZNW5kLNFX6WqmM6lelsMajpz65IXUuGKjc4zrw6dSDEb7M70mumIKFXwdSgfkXfcAqgVwx+cSYA
npJyKgguPOuJSTydwPCa1yIestatDO5FglabbWk/2OTO/IPYiyQYHHOllcU++7bQaEnWujPvMsqF
HwrA8srT5KvEKYuF/OD63choXDKmCs/IYVI+wKDUaXPL9p1ILWcjKQljH4CiBebeDgeHF8GGkXMt
qGMQnMaoXi8HYINa2Xne56qVa5rj99QWURQZwFEBiimZG8oDJ2hpbhRvi3W4g/0Xtm0tQqC0SwB/
TZj4V0z/e8H2P1Qe8sUv9DWJhPCz63y/5ihPN4Cgz9e+VXX9ChjBnOJdzaiaJ1ppt7o900IowF/7
EWL3otyvYjilHV6bUYYrGlCvMGJmqxVxW288/GRa3kEYg/7/2Pj0nbbqdjYzXuXe8bW3WFASKMVI
J3cnnDUesgd2tlVoz/H06HVlfaHCgeA3ISJjtFsq+JO2PNbMdTa35NJFkYOe1S48ymk+b/OboMv4
5hHhX+2s0JvpPE6KWA4rcEBi3ZSApzuc38GHr/s9uEFM6rA984d2XPNlHxVG4zl83ExkH9pnnNuj
OBacU6WlRn06lW9VCL+AvnOWJgkznev+eoOSfeE8tkDhX+lEkBlEBIPVfRouId51Oi5EL5N6LeO6
7945ilcVSCiFW9nxE+GsQgQ3lo/onmS2uuw8zwQbfPtA5lsYG1Qff2E8YDsnAsXpQph4EUyhAvoI
YbTZ312Qvot/XwrXMfKqUQCOsBhRBCuIUurYU9SpiyN8XsQ95TH24U3GaEDtPEI9LevJfptjMDy5
OGkn1/fJN/XnKPQSM/Ee6hdZcdTUB0/eIDlvTHioYrqW/5cz8j7FdyR7jZPQIKOV2G8mNlTBbbx3
rf8v1kV+ZpQ+ylONqkxFOyAUrxqamm0WByyNHR7Lbutw0ogSjyEo/ohl9hWcIAn0xoD4ZKo4gesW
9c4AjF0TLWDwePb1VrW5BBJ84cOopBNLSLvOWZyh/6fnXvIVvVN0Dz//nTpH7n976Y3eYPKM1QWE
cMdrclVZ/4jvL0XrhK2T0CvA3JtCBtTtCQkvQcKcU5S31gl+9GyNu4kn1hl5PtxL1AZ0/1h6luzM
LZDA1qCGnY6XVyb3OC+vjkUnBXT6WIr5+LO+mkiBDJ1HQRaiW6tuilZD1Omm1VMwFBoSV17cl1j5
nIoWI8C1c19/ac6CqZB43PDGYUWbaMpoOL/dKanz2MQvOD407UC7yBtbfh7VLQZZKY0rtADceme2
i15k7zXq9bCvoy19vMv/nKOJcdv2ZhtAdd95uqv04Xh2WhataOAEx103IMHMyc7rrPg/XGtFBGrP
oN8C5SR76WqTEvOK7oBPKDl6oMZnzsR6Gp51QZsvURUuvpPC4HfcrIbP+Dtaos3RX7ITG2LXPMpd
RCfAPtzAOpUG6wM380XSTPEGJ/pcUY3jdDb6HKsYIZhEXepRm66qTLM0VhKQXNawg0YjFuiVEBI/
2w15faM8aH12t1j33KkLbejw91Fpjs4uXk05doI5UpDhWOQ+mMfLHGLD5tQXUcFfUSxsXsCwINbq
ROMtxz2MdrD7h3lLOz+o4obDuS6cdevd/F5a9yJO+jv4muYFxqxdI9Nm+JzEufbw6eW7VCYemANI
Z3ru7hUgHxLztjyLVLITmH05Ao+Y1aCMIIEyae6cRuPIQsVbTiMFMDP3RkYvkzZXMGn7WUp4FIWk
057zoJeQ0P4e/p/FD2ZVfeGewA45E0DI8PRisAzTLmqsAuAwtN3W5p+W5XtuzLgzLoaq3IE6t44v
zr+L4MNW0xp730Bzve33sQJ2QbLrB77IuKaa3KZyRqmMcB75Jp9SxGM3eawTl4qJ6z16htHGXeUn
0vbrNZRBLB5dGunJUAo5nI/yA3alir2aTICCGn9mxR1AhigwvFEJafLo16rXTme5ULlngPmXR+fx
aiZ/bdVUOD0E4ev7SwHai/tLbNF5no8AHUVvlQWvb7ioA7mCkRnbXXmRhratutwWz4Lv9krh4aAv
aaZVVhCteTN7TT2NSDMScAJhZ/qMGwtXQBmcUAbxM/vSP8zN5HHL5bzP7WEv46T9yV/R7ATx6M0R
WRD77Pl6vQcwOG4HBIueEBDv7vJrlo74xnDC8XW0RztTWzgCPv9TVwWAZ9c3zHmMP8iWK3sys2t4
MR2sIgOsPSIKHQqFKUuTb24KCJYnii4mTJzjKCliAobuSwL7ac6djvZevjIhMdFc6xINVyvX+n5O
riT2AAILRaiGJN5+K4wbRroB2Nu97aTrsaSk17MEBTU/feSWvlw7bHJ3VQyratzWP4BsxaARernv
vSlBs7k/hNJ+p6flFBEOHgxpaoo5NPmqeV3CvDkyuv1ahzpCa06n2ibyL6debhOnJ1R0q3KET85p
+eMlZ9uapCyq/gxCuLnBvb1EOAW/fvZEYfGVuqwIQIAnXAjCX9WM6xfL6rSjWu11LFnrgmdiRSRK
cZqZfV5JSxNKnqvbi5F23sitEHMw7c9ce++SZSDWpjcVzeXzdxom5/iFRMDIig+Fr6+9wfAJkfHG
azuUbGAe7Mbb+8tmbHZ2PWNCjRQe8vt6+1uFOmktb7qkf+i/LHjn5UFZMiCcZH4wJrl64TkqMZRZ
lGxZQ+JYdwqalTyzt833wlA74XAzUGrYWGLoa0eK8aCHtCXIT+JSrvmv5PRCJJhTFoHgISKJtPeK
q+A2f+W1lXeITIJNz7lNI0KQu3Fjt3oijYE0h6KYoPXFyeStTJ3wMNiqrE1hK9csAB6oRAgP/HGj
C5IjX88lIswi8JzhmzIWD3Ob4BHPsJOnv+MvvjfxnM2t36hnUhyioLkJ7JA8kLwetVkGj0o8cyBL
EZIX6/I2VMwVFtjt17UBxFbq6REl3zKmOEwCJ65KsFrKAvYVwdUHDSM/V+qfz9Pc/TLnQc4p+JIg
piShby9HP5HTZqo8Da6CPtGKOgwKKNQC6kUVaNCWIkJaA1XgbJGEYs1GZ+cnjTggfPvB0PcFjFZ2
RrUB7uPa2/zbMZTdgC7wnuMEk5g1/qwylE2Z7BnnrmxlLJOd34GmhZdjIHbWfyMXeYYC727lynqo
yGgvbv6N2AQus4Lj1YFoxBzFIDsICpt8CK7fIKusR3ituzI5bF11JOXWupiFd4o8/Iqe2YeNyPOU
ogi11Bh6w2v6Ubtje9DwaQCFHfKtenFNwTktEU0PnfE2pje6Yt2BIIlUGtHU57M8UZ7VREUCkc0Q
6ciizSMTufVJq1eQJz3+doiSm1eHdbg2fb3wsy9mOltz3muuZl8TxzXRU9KMHaejFsT2Xr0szL7J
PiBTKw29BrCz2tDb0cYupicJEo+AeAMKaK4U8bLO4/mAvBG1X0CT3BeRU5/TW0YwY+Ams+jsxuoG
CU8qAQVFpoj/ZH4337Yrju9fhFqDYXJI2leO41OR2Tvp8MV+///WTHI6eH/1b1Ly8eyrzkYD2GWs
N5yqZVNgJ4WkWDWZyL289DeDYLc1OZxGVy6OST5OIqDMt7D5KtVvZf0/+MpuDr2zrVu9+hgMEFq8
3Gg7sB5AxQctP7YzojyhLRTaAJ9wJYL1QhSwcfQPE/JHpWvDR9VcOVjrZy5Cd43qnkEHynPoXzeQ
fkhdL4NQ2GVqN+EqCdfwHkPiQPAPzd4dqxAjExXVk2+9KOh2V4acimd30enxmwKvcEr4qfw52vXa
Ypgo1nQrc/SXdnmLkFkBSDNFG3fYuzIa7N9ipcyA6gU/KifHBtS8FJztM0mIkXGPtxms9T5FSkch
tHwsGFgss9tX0u+Z2mOggq9glhqquj14Y+3bK6WTwuazleNQfHHzwfSp0g500JS12c+nE5i/227C
BQJYIFuCV3jlZOu91eKcEORyBx+up3jya3o1RAzOxnBFT/HnK0GldAM/C0M8CRrJ3P0czC5bXSjm
qeW4kAleFqF52iw007hjIrY1yBEw7Mau87MAkWPrSiqS/urnUxkBpOeu3TNqoPRDGeoAfXJ9poOd
uO6+T0CNHdUTpQRxipPcrAMjQiMaz8jrTBo4zX3ixS5EuqjjOybBuCWdM2EzDsjtiV8RdtNm1lQh
cvF276T3+dQBlOf/SPQusx6PDbFuv97uJ/E8CrTJZzv6SbIuch4/SAesvQ4aS+5eu/1pUKOIhwqW
P4fMkqBfNDrJ1jWOZieMnsCjxI7r87gYpkj7F3rouCnc+0UIK1gPwXBRNm0U3qMBANQyAUJEY5mh
fpHFizlHanCch4z0lBo20gufhjyj8ovG8ROPyb3fTXgTumkoctpbZWv3OujvKBlT9Cpequ1c90eh
xL6CfRzEMRbLbreNNSnUpy0xFxd9dChKTaaVPdUiYdXl3c5fwh5R2TkraWqmw64d9F94k8/UDnjO
yKU63TuMQXj4GQ5IkBbeIrcRnkNZ6UwFO1T+jsU+yEoM6bmWwQsyTxqsla9goWkcoFO7z8QwQcA3
jytGBQLUR0fjn56NbLP9/5fRNZ/PF4D3+Am2GOxvlqSRwwwI8+fHSG7SDAFBMQPvQ3N2iHigJILS
9HqBWPjp9yDjPrEmoK0ZaYfJBAgXqblNKOgas+rmhoQOq5H0zCZ2a5M2hwsu2djv1ljayUjQNrQ7
m2BYF5sWVjvKqMmiKWhO02bTYmrHmG6GIE9a7nzpJw6CaTIW5SAmqMvj6L49lkilIswgCVcLm+MX
CU3fLCjMToASxVXFY/+uKInUdfcOlPEmCyHwtSPwiZQ5DkOjDXpQCdS69uHYwBXNQTWdW+qy6SMl
sirl0M82NKFEr/2bhLVSDJ1d/F/Ij6sZXYZCV8zg3eAd2sHYGiVYzKVzCNDzo0d/a67XQOxK79ED
2/oq8D+4U0vRptSsqt+lQ39VovUPKqCVISsMlS+IHD3Sna3WsABchvrSfF7/lWbg7YV3kFZQcNw1
In/yqK4IqmWYE8CPRAJEhrU3SSf+v9T6H0HZbWN+DgCvxjbtywY9zqWgAyyotkE3NHxIoffih0Me
KsPzC+/SmTzMfkJUCNIwU3s08fT4VLIJfz7tcJSNLLESGjeUsmiykPxr2aNd1tUKwVTCVa4aR3MN
BNSmR9YrIbeQ0ixPG2iKj/J9Pk9U98BAg9kZqP3taODVgDkTnl0+S3oNYQzX8QBapujlaEUVUFG+
egOJ1M7hCFBKLnkTOfcsnX5oRNTrQk2s3oqUP1GaxDq6bMcM784fViylGPrTPJUPM1ZN6nRAwu7q
W31GjIV5ZeEsKRb47vYIIfiwySsKbf6Uy4YqX0ihrfq3Hvw4Q6vSdtoZRIZdtMLyMcBGvPoyzXFo
x9GhylKTUjlquhZ+gqd0IXZSzArPLnAfNmCKvoRDVjJ4SzP4+r9oASk0oNBCT/6+bHU5j265t2Dg
P36UczEROHwIP17dVF693/ifFHkmJWG2+vBPp5HDhN8O6RGP/CPYiqOyIIzORn7jmYju6u38vLPI
SEXH6GZpaSNGIZ7wIDvTfTkfm3BspD1dl63XdyZmMoKL3B7Tdim/GdcKYVAhk47Ll72gibRhgtGS
X0gisVj3Tc+SOV9jygxSAueyddb7/cASiktvjUJ1rNH0+fftRn/zH6Xke2++056HbtSh8oRacVht
T9cLqrlJBM4P58l8rugNSxBc8j/dDTSOKmaPGf0uCFxHuw+WNF1fv38dmsteLtzQFCAKRSDIL/3n
kQC8FL2CHOn6WMYHCekVoB/+N4JpXsORSl0KXZmxmbqaKoXm/Mn2UUzdESPp7drI9tan5Rlu49W8
EU1aWu9JHPtqGJzZMKXuXqQ5lnrpvfbnK0Fzs67Fo6axGF9wDiPpXmd2vknB8EYqi0Eua/0cJ40z
W6LN4cQ4ca8s9H1J42anzEvWfERx6pNtQ95paQ4BeaJ/sKdCUxlUUGN1HlO7YQ40SK59zoRE/H7p
N9SQGUwekRos/G8xink1IVwebDrqxEUzHFMyXQHcJ55UJ4agDAPL/8oBgg7dqjQxCY9Iv6Y1CQDc
VBqgPmtmw7cJAnLFbfdAaL8XWm3xlmEwDTWc6YIYkHE578MxnqtuGAZkENHwDY3H4f7/QGh5UZb5
z6T2KLDiUZ63nOhQsj6IYaYpOLu2fj2x8SH/c//Z0td2nJocrBtr+Hby1iWBXyaXEwyBudfHS1sC
P9a3Kn1LTfCdHaarfWGqwRnCizFuAPfddNU0AodwoWp9wmSu0PXZIOYbC/Bv0ePCBJ2ecVkg6vdn
L9i73vEPdakGWzDX0Kke6SUszoyrEbDNKZbcVvDeqkqP2SsxbNFrO8aPnFF2zjehcnDCWKeMeyF/
xpYocnjvhkF+GeyBe9qs8eeIeRyEyg4t+GGSxEUkwyFauFO6opWuzv24/BSlXYGJE2FS3yJ2Ruso
kyBCruTdVwkH31gzNFI1cX5faV39uam+fYMElf22mH9+M27TO1u6BGgYH57eV3Jv8gEvWeSuF0CW
nfzsgQH5m4GVVUtTjDxRHyU3L0ADB2opu//7PInIriSwS0AjF1Nun47I0EYu3jW3B7ny+m+sjruW
yBiz0xMB6C17Vs/0cPag/C+GSnQgC2VMsrrSb7aPxtLSHqCZ9rGYre4z09bZRsXQrJUmqVIUmQw3
9i6up6NWnJOpy7WpidNVg4d9HsjA3nRJ8euysjlg1va4KDy3zaX76AOdJ8ScQIH20tW306vSG80M
ZWGcD7g2XWWn0LLpj8RL5WRgDqztaZykh52sLvDUJzX35SW2CLpb2/ZhfZ2TTkfehVHGeH/z4tyg
475cx8gtWIgyEuZVpFyiD6+BP/wC+7n3PbrEMJHrVORyAajWtUmuJowrQbNHEBXNY3AZFviUx3l/
uCoVRqjgao6sX5IzKiYeeMSGjGbIlHdULU9BDZNNu9JDN4M0JgXEl6BdTpZVEi1CTmxrePU/Z5IX
BdQ53xwBein9UycDDMD6dl//a8jPn7SG2g2m2uDe15xLJykmNdwMzpPCuq7ISWsUyFGfL59Fjdhq
yTaUC/yWaeVNQB3fFGnkl72pgw8mj6RRbQUXyeocGXZmJLP3mhicW/y+vt1saJYa1imC5b7n7Bdc
NdPekW1dVx94C5DjzNn63tQI0w+VEoUDdfdIaTm89RDUZKSeB5rfTgYyZ5kSTgn95MTSwf8/tQc9
GLnD/o40EMlMtyljOU/75dCJrK3xHvAvI26yQkGvTnY83ruiwcNQpyYTxGxwwWlWvxJf2H/oIQ4S
tUeXk4bFNFTlobdC/y1v9B4ZF+mOtQDd+my1lHbEgbKCu1tvli4MCQ7XCajKYo2PHwhiub9GSAdN
pXnFM6VA5MNgyEjpXvTzXnem7Al4+Jq1DYQS0CPmXMQ488uwlN8NImSSzhYnA9WWQFI9U1Xkz4os
0Go3DfJHf53LdFk0jIiuPV1iSPXkmRRXJqHkNe9Da+no1CzQXV9qTCGBGijG/XF9q1Y/Ua+T5tug
jo8lFLPUhyYLypBPn5xojiNi3aHyuw/R6NmzDYi1xW8BpCRa8UmHmT9MSMeqGMjdE0yrwP2ZCtm8
BmdmIiIuQ934d1xbH0vsMcRVZxwchgTZNC4gKGXmaDkmKz5aRU4umtUur9/jYSK18OMeAjoWlGL5
w8l1WEI7iy/W53gpEKcn4GFEgw4EPYg7Sv34/vgiPDO1aE/grbmz5hQSIV7nZ5d+9jB95c5JnJ/W
cjA8dao5dp4git6EF+rm1LcHVMXRJ6QPyroccmSRv9brZ7N1Sn8XuXB2IAKIjzzbgMcaP5U+gu30
Chs7pEdC0XYTBzGCURM6n/BZpxFYhzCx9KdhOPKwgDwqoMuM51oP/qyXWzV+vWn7l90KcVx8yPnq
vgyI06hQNVvFgoHwbTLlZ6suckeAsTdzu/Spos7/dTi+zhEVPRz/Avfef1O+h/9VMl4CFtIUIa/w
0aQrA53z+M9uq4cTp+lh+qDPnPJDxMAcBWVU35WOpibTVAftPZsAsty/flj1DX5cEw29nyuY/L0F
QswnPvbT25Zo5DCAVxOmj5POYYjyC2KEMg4pQCzq88pIDZ+FEq8EUotoVAsdt4M4bIXfI1bXMTvL
SCLNFTyJPXBWze3QYZQe2JJ9QMaisXv8W50qHRN2Xmlf6oCYYdUacKe1r1lPlzTheQWz+wRCS83P
Menu3+GT0rYy7WUHfLsq/L1Nx0uZV2QRihZgcrG41m8NU63R2+/7fLfRoS5ZG1pwa1t1L/NkE70k
Lec8L7J5zRssTgsMoix9rU8pQwizrXnbJ2p49eEauiWsYUj4cycChbkvzzYzCQjF2lqvIrilWPVa
KMxk/twC2oAM9nW1Kq3GjrGAqLjSkk3hVfL9kAtnECYffHK7ZyWHp4ggIn/EnUQ647nstu36Y8gQ
Gxk88KTPyJ/GiNACv/L8VheaWOsVFlwmSr0/J3TskFGPbugvM0lApkIss8StlnT16/p58IvjkRtC
CO1yzabJQAiPIgQ1V8d6dkUdf13waJhlydeoQSfZcriMyhGrZLOLeIp71so3wf8u7ENA7fr08duJ
I8VR4MVz1OHQOlpDwjeJrW+VpVnTwTLQlNmbNrd+GCNwfW4YN3B15yOQeJ1RKi0IZp3sJB2oYnkU
1v2S+3ADDSYkpaskrJuxUIQfZ9hAllAnNt8ncMCsnqAybs8OXnbNGIU6BJdf57RShv2a0zPExtrT
VWqtf+nvw4ZoidZxuAC0FfU2yThRyKnjC25HnLXKzfXuTevQWzkP6TSLdo4q4WeMAZ50AV6Dd6oE
TMY7gpT0rPh0YT8ZK7PemHK7QvzjMcL8zgVzfAHSMI9XCRaaUq371xCN7XANX9oeQu8ScqcKMve5
536W28uNYHVRJVuQxUY4DWXCLM96xJcm6dEa++fC+rzWO6w1nztIbCi+ZGk/+NVNuG92yC2tw2jG
DrSeh952Enh+xFX+JhsETMYEJuElkHdEl2B737qf7r4r+tW8ZfoNbEvKSfbr3Gi+xdcD42Tn3oq9
1XWR8f1CJLTUtvy8xqLKDYl/FrEMmIjJULOgpHHxmMD9obrFsdGg8GHYEdFCvkIEBpI2k+KXK2ec
gBpesEX0JMNSskVhB/SrGqCloFSb9s08nWvIu5Y5N0EJ0bmnPaB0Za39F92C2fltjrAYhdOdOg1E
dKJeg+FxBpvHOZcmvPxrZDohkHf+KQk5uqgUIFkR0sujdLps1bMV4piT6dc/so/YCY3l1qqpRFTM
VXscs4rvfZfsNaqiLm10SPQRV+F4Jdmn3BNfL7P35Ze8zcy5R+Jfm8oHCRSmlf09/6bls1AxxTxE
TJVHO+kbP3uGIUM43z9fp57dUY5kGUbsTVYDAAM6tRONLsvQh23REtI4v+N3ngGt0ksMKJMcnP7W
4AZjIe1pUWiGHqXL0HQs9e2MR/3P4B2e/7MrYCOMYxAt7ySOZss0x2VsTo9IQaDKemM5SSy3JyxP
yWUhsXTzYwMA9b4+XOGxzhU8QRKe9zCPzyUngIGu0VFRaT8eddqgS0ogdUtgvSByGKrc2FiFXMjL
OI1FPXZjwvRmqZRjo6KSfC6fmkOan+A7l63VAKTi4addwVjYEPc6jw07FD6uAbK4pix/cIpdewr0
3+WWXi5LXCgLU+ItxQoIcC1QghMu1YvNwnPo/W6EpQoNAU4BIaWrieiE9S8cUFGnEklB29JEzIv/
fmqoIaqjcIGNu3AHc72kMhztEgYA/xc0WenRfrIagngnA/yd7uQPq/uHGENL6BrNnFi/IjT98pVw
HP98H1hWvP6X8JtMTZQrAGlV2IDRcAjoZpGp8Gk2B5eO5SqDMODosErzk+V3abuC4VD/Wjs0OxYd
EnFog4sWKo0EVX8fkGCqbEDnHi62MAZxVEWLSvyG0eYgQLUYJerIIxHWCHEFlqIH+oqjMujONCyE
/EJ3XK1xVE0uM9CXU/sz+fVATxsxqtHc6gDwxtLCpyL6xfnhtGFhfo7YLUH5vd2x6YxXt5fF1fiq
BIGyPUlqnMnyp/fkN6uPPottEjcCuluEMUNx16C08+76S4axBG31KFtxlm3bDLtVjQxFdV8Ufdq/
L59VcahJYtO4J824ec4PiL7iQb7lJrDRAVpSVLUhy9Hgtf1sfs4RDw2xboSFJULd0dmxLAre7CIs
kEaIqMX+i74DrdFCNDXg8elHwXw8vsCsZgmNsPcNu+XUnFCBRyDjpJ3yrKf3KJys6xA8e1aOrNmp
6wQrcH11sAwsaZRbmnChCQTvHBeStS9N2Csa9NW13JhFFZjaN0KoGaLAcWndE9wBTQ0aW8YmNBrA
dzxbxaXK6zaIxv/PZVJqPepAXUvqHboo1WZpWOiIW6adbGZcm/ebp1vDdkxBqHU1maQXHmph0BfH
kTmKyJ2Oj5C9HYeXKIAw3QfT0IFJVu2AIJ6Uh18jJAILvCfIW8Wf3iSolN7nHZiFSO3V5rgaIrzm
q8u9CZEFh4ZfMlYW355QL5EjDfmZmlICLpyLzKzzzgT4gijnm1vuUrJ0ZGGR0CqddZKyZIlNHEYk
ZHYnf3NaH+V9229DvopDLcoBRzjPu46eQqEB/ouT4YlipLQ69AaseDvPSkUNHlCUWBzi5sWa9wuG
gzn3LER11fWI3U5+TvQsJLinxJMUHDnDy0c45wRgt57u4eslWHPNG08lg4xsYKKZawIC2wR8U512
OxZEThLKODdOGy0AX0eGiewRSoWNUqaoBQxDJnO/F9ykZmk1sRdm58fyRu8wxtDe9ATZGW+W2e/U
1EWhd5XtOJXD2nD3FRqjKm2ivxHsBL+RbqrJM0x6FJ4FXZkjIeJxkkHvkamZ8Cj5asPy0LFN5X3I
RASs4Pw1wpzl5vdux7Kbrty4sB2Qz+IxvKBn/gXnWAIViW9jqN1G3jMqhEbVCvJCHR7xL+1kue+W
WARw4F2pdb31G/iwGBuJecEulXASqjtQcNM68VsdAeMm2YKSLFaMvS7WRe2LSMv7mth9WHvWiQg/
U6wvBuHy/zA6UTp8Rwahu2qCBVXCTUDmn21WlPNQJkq1Q7l7sItlbMg93SeqMYclevn299IpEM1/
buZRG4gKYiEb+td5aYYiGLI4+B1UQGpDywXK1URkSwiSX8dog3FZ6unYz7xorb3Ywl68JiQxEqQZ
CNiECE4Lxc5+CHdutiML+stIkzhrmKyPINrJFEvE+DMeEfgzcPHopLCIyzi2TNi/AvA261udLypj
4fZCoVRzh44x1PT4kMoVd6vJkl5ibMZi5p+d2OQ1FySk/+HLV1a1vuBTLgdcrm3iqCcwywhpXLaK
NaBg42SUJ7Q36FlYb14xKXAZh6wCUhfAd/Pg53enNdlVTabWq7I09/cAm/l1/MfZybyHu2ruKqGX
6eLY/KhE/M5bVszLBGO9M7fJvCwWjeLhnUcLABgzkvqpwzJPOfwvRCLuIrE1ME6CLtM1+BPAZqpx
XXTZ8tHynT1G9bn3P2tZ7iJrSuCmlIoBSymiEfCdWVPl/ak9I2hBETl2RIaSly/9z4C/9amr9oGE
L5E7X4chuQiCAzXSWJEMgxjOkpP9aSC/r4t/D51W0iffwImWuzrbIMKXlBOgvOKAKTc5ICK7T2u5
SUr5S/JxHCKmBUdUde3h4Jk8QGybTvu3pzi88Jfmf3cjqG1LoupmnhHsua6M1EQUbBOPa7LLQ7ll
D81kKykFtrKwYFfGAdWkBWfU2fK7NuKrAqr2v97DR2a6jqNdCvHlB/FyPALQofQypXfAOiEGeyxS
S1PZ8Zs4yFr5ywAKZulvzxYYPXt7Ehln5d/VnfG9tXyjNYXeZmWPMlRupvsXB0K+131pBxBo6yI9
rpJ9hwgoGZdDF9Vp/5nXtux3YoBZB1DHzijTBmncOMxSF1oE2IQqnyqy4p2TI866COOoA7X+Trrb
WAwjn4O2xIl9LLEVtRhBGOI5l2nWb6NQc9s08Pf3TqyoRhTqsWiNl3JOD6GHV95kRifFvyTDNjpm
NgFs0zthDZmSiwPwDc9+RxGUInpPNFQIp8BNDysjytfH4Ka+c1K05KVLtj5VxzHeXo8KYoMybEsG
LbXgEjJpc0r+2zyvJqVRIvgZI6grlhfmnNvDnzqYawnFkl/5rU4WdWwD46yHqA3ZPbuYRs3VYq+3
40aRICAcWS6kHGFYgqlkquve1vRdZhaU/cW181eXmLnCZI+fa5SIQiqaRI1HY3Hpp1wxRYzdMywn
WRfRk+n8Ba45nFYHzdXAWYi0/rmVUxoS+YbAQRELBAsa3ZRLps0t6/JLlRb/kLweKYTzi/M1O0Lu
kmw5A4aUiX3XUcJKoz0B3dqrQE0ymAaBLFhao1BpaMezxqO9OowClbyyg9+Z5WXE43la7jfaKe6m
uxjg2pyU6+/j2Ufkce8+eAv/tVfwxg4zZ1me91M594WtV3p0r7T/Kr8p16twjPrHcyzZdONnhdfX
owpnNDnOcMkUwyQoArEPt/oxa1D5Ohd59hBIiB1ATIYTUX89InPqV8Dqj7Njkw/O3OznoAyVWeFi
BrwK35+V8nAmPD2iy60Yo+l73dA6K4ChMWxO29rodjecK60RKEhWtGIpl8tlt0RUFmygmqvE+AtU
gKuTPCp4llUYkSffvHH7WABU32qYLGcyp8qyPAfszMo1/sjNKbKF0B2redy7l+l2vKEoLm2kIf2s
ySrk1ghZmEvspB75qa6AXYtaDESWw/TFOr5IWHO4h/AJ+fSQlqux+T/dZUpyT08Nj3duIiTulFlJ
3PGDJr94kICaJXP6UFZcSM1degNjHn3xdhSspUHExY9DY7wgzq7EuTs/Zq5C6RiDR9auC45s4vM4
e6AaxG2bWFtbPQHBoJL00pJUk6CrdYr1Qi+0hSnUH9ov3H0vVaiwTCczL1EwwvbW4EWf+3oQ6jMY
vyV9PdYGkHSprvBXBmDVUU9YtfonMcs6r1hxGO9kUr9Yti6OIMS4jGfGchzad8CgFSzZCYdl87MG
OfgcIGkvCjoVz3eiPKJr9l6wWDOmayAlkT8+fA/kErblrA91LVvTxDIvn6cqq6mNnXco+J1XVhOv
BxjgRk7s15az8jO32a4P4Xh/EDCwluDVIketAuuQlfLZfgK7EX737L6afXZUZsuVNg+NBlzoW+5j
QUMRl8KPPvE5D8ZaoM4g6HuoKb0D8fRVNvrCdAH3xsiAwqakDXuXW4YaX0su3cGBkZ0zFTcWW04K
GgvgV3q3bGeJJeQSlr/4Srdlh86+Yvluo6SM9ipw+iMMnmG4tM/QLI4/DdkORkFQztwAQY9KYC8m
acCPrGF4u+NXSxua0zuT3kc0opv68qSSS+ebt7BXHPYjjjQTYNoBEhO2dtMgRcQl/i6Eu4cr6jM3
/thmiekhDLQgk/E58OFtAC3z7jVnpLDPkBMs4X1UTP8kkeD/uKnApFTEBQKzXHisb0ATcYj8/U8H
FMps3AV0pnjGDNMhFTnfoYN/zIZltuEzXsi60lN6z7KS0+KOV/IBvWRU8XjL1jYqZN04qYw9qbLN
rEsgX7FCJ4V2mBXf3+mHuH8Jh34qROGLx1LwBkBcVUC5xzCScFGH0oJE8vnmh0geMLxrbZbvM3+P
bde3DbmYzaA7qwIvPTKaOE3okKoNtQiHi+Ukh4sXHrLHeVrVFElqKdITODJEmpDxK5EOihJpNSZo
nIwCC6o+CIEIx4nmdfD6ZTTlwCgxLvv4xo4SmUCwiFZlyvHiC92bCGNhO7qOlpKhk4y+uZEnj+Ou
KsY74ha8PH/AiwJO0EeaFgu/aSnrTNEHkmD6JnLhhi/WVYd2J0jljJd+gDDvmUrSOQKiHoFfKTJD
bRun856guwRq4Pkx14OYVdVsb/HfHRc21kQ/Q0XsT5r+bFVxNd7qV2XquOnCshL3wG3lREygMiqK
enxT490ENU8LMwzmv+kaX5h4HBm+tagsRAqVc/RIzl89D/6pvaBk/p1M6mU5n2i+Dx41qccH7gVt
HWmSAGb+0RWdZKVtNnEv7JJGKS+Ix5FApWFF8G7hjmfWDHlQquBqcELCHv/5HGnm7KsSXy6atjq0
y4fn1gVU7Zs2IGgumtIqEZu1oWGZ7xQsFpG4Jp+z1DpVs1pPS2oqiSP1GZswGJOAx14QrbaRpWWm
xhGDSvw4vtMcO/aKALISx0Iphh/D9T5nZo329vRRN6pTONl9D+yQuoW/s4OA5EqKllQ2gR7dqn59
5E6DxTbEdSVWiz/u9U1i9Y/vAA1tH1esikrDUMOuYjxRxzCr8h1YSbTXW6YLpVE+st5lzGjnTzho
+QtexXXeD2LsCBmiyl46DuQwuIwAIXZZPGR/BW/zFFC9rd7Xh6hWko+JslncVQqg0S8W+bphJVH+
nilVZ17BCqL77RrjOvshy0C9HQVYwzQenDh4j49PXOgiiXGDm5pzI8AM/qh09S3jysBrzvPASloS
A8LnQTMuSlaK0cPvO+UTsYa6ZTsw+VVcTnTZojCzrjzcYx/Tx9VnZKTuR5EO+laCXG193wX9dukS
TAtBIiZsxwQmv7WeR84zEaii1VYplJD3EzFzZDjsAorVS4MrAw9MDP2/X8Bn30dyQ+6g2VocjySE
3lliDtPi7mN18C1ITIKhNMSSip3y6d2y7sQczlGrhtAZzOKqubhpZSwWqNNvapDAwhxNLf9pFxr8
eVnmXjFUwwUyggFeshtmfXaRNwikkleUcXzeKYk4theUvYGmE7smp8zvyXVtGhjQLdGeV3MP5Cbo
I0a4MlE+Mpe7lqa//jqoQxDXDndlsF+/0jSve5YZnTwTLgcURgp1XjuUi9XTApW3+77Oj7pUSxW+
CRMObpoPe76zXbc2erZnu/5s1+18vj0R02VMxwmWN2DGbzwCIrYsCNqGsn2Qk7vCR2vFUINX5yxR
iQEOUODJ5WCmlaIK2on0rRIXeoyjMD3g6WrYyfjzpkgnCc7YzXoQF9Y+TnBzb2ZqEUnnh491aB7X
5qlvePfHMF6oS8qufKc1P5qP0xMke4EzoUiHt/Kd0v6PT17elluD+bpwVVjP2AlYgq79wtBpDr31
F2+2NRpKyhwzaknts/EtD2EG9pMHQhkBUd5evwWfAUNXtRxqfImuloUHHTqvpu3TWmdUyUYdj+k7
IXQQceG9Nvlqwafz0bjX+O395dlGbc6fISrmYJYdmRJrBf912T+Sid1fAmwG1FCHBGQ0YY1iQ7U4
qsn6BcymdoJ455bFnmbcT6MvbbJ5jZ8u0OGs6zYqi9Ejgia1J4SUbh35JPPD5l+xNuAHcTBPxPnU
UdRUBU7sFQ3JwonvrYh2xhU2x+D3EmozHYJBOLp9s/67I+9zdROznGbjAODfS5sZqOL1ItAfBjCZ
Bu6ecg/cFXAzGXG3vghwT3NqKuLBiv4+kdZEzwAjmm4eKris2JB9FOnzAU6gB1tWaxvzG3K8mR38
rXSKkUj1iNG4t6gGfZEaDgmACmlb3f5x549jL5sHRNEUCmK3cjSiOpnp5J0OGbwXVECx+NBHO2e5
MB8mH3OAWA74q36E2MtQf1pPrnmJ7ptg6tj7lP7ezxAZgi7bzyCBFP+pniDKXhFWZ+E2QNdpMMMH
fJ13UaCEDsVqCujvfIZRywmTTsQuONPGAsAA6jrufcuF0jiOsGnSORdzDJCGz0BA2na5P0nzLMnC
Qe7813+cUGUqmuZYYd6pyAfqXAp/AENdaK9xxpGDFziqO3iBorC8MAOUdy56TYIfb9wGyhIY6YyZ
NUTefO7b+A2YfhYjcTrxQFFgK/x2i7qdBR3/ZDjnkbG9GSsIK++oASpDF4nEe5F+S8nidCFaNMuU
uSz2v7luH4A7YESxH6xP/067kp4+ns+lEc+zrVaZzaBV0D011n8QMuKvXAoyTFHBhIxagLj1I+NY
vKA+by5d0VLyhULXTyHQbuACzmC8AXqRwvvQpHlRDxyetTKvhpfG1JaJoebHCQjCzmsPLJm+yQ5h
3Y58h9V1e04HRK4TO0ZqGSW9n7OW5trPJoxrJ/DdYiecXGOA8aQL+oK24JyykTWxKyqxLulJ8R18
1G+0h/jukUNDQX3ZtO4+A83bwADPyFpfMQR4X4tmQodUVDfYTcgtrGeNa9TE8Rq29HVhHeotoDsh
5HFoixRgNIoM3BvHoEQThB2yMmTAp7f8Xms9MIvx8a9YNNEmB3xVUf/ctYDFH2j8mNgRu+OBZPT9
UDUkAkPqa6/am+6Tcg5sX21qhXItSvdFRD8dzm/+jXEiigNBhQay/at+Os1o1Vzj3g9v2iMMWeum
aY/vrUB0UvODaPjVUrD/h6+Pxs9fMarCwXTgH++hHx1+PN7QtCdS2RsAxDG3+46/dRHBURD9RLdM
erUX18W88GdRZYk4wmqRLrVtTD3l88jxkKt2pM2AdQYcRjIE8qQfZBSb4fx6SUkj6ZZAZzBiM+Md
KNcKgta/VY2GVcv6xf5c/fBg7bl04EUHmwZPPNsaLgc/AuZ1wAcuHy2rQYFOFn9QxUt2ZgghKM4r
lEZtB1yb50f4b6m2V4hfQgVh0revo6jDciz4YBBZPMUoNYMa7ut0wlmgJ/QC029TghsYpdRLbqHL
4IP5n11dzcMN50yielA8idIAUAj4K9px8rtFdLdt3cF/p7sWh2snTamF4Y3ysUkyJ5zW5XfD51DK
HXJ8ZhkHGQhJS84XkOWTjnLK6WS4mgQn8L9xNbKr+sWevSDMXYG+pzRZXpkaMsseQCtMMBjo5/Ta
goDt8zV+zYQRadUkvbHxj5US8jgXRmjKs/NsX1o1T9uUSAPV9HLZ1MsrZuV3u5Ucpq0zWcEVolvr
710W/eADV3AWMkr0LDqZn1+A38Tj2cXO7KFxUVMt8lli7yMaAyD8ATPgFeWWdU8ZdFdSpL9h/3cx
NCyAhIKn1inX6seDvOT1QxMKHu6xSshLKssqif6r77Psa1cCeJNjEH1tfY5xYsMi+0Cw7msWnwJt
3HJ2hGtss1Ppbmrz1CHjBWWdapwVbT+3fqiQB8lMDO+CoYwBDn60PH/Zo8NXGmm3v92EWaUrmVaT
915ERYV9W8gCtwF0WdtvOjW16t/diO1utqLn9XMmBfSfODixdJpE9NPV2Ez3USTlCzy/bB+1fCrm
ydYuhoKbstVxYCmrsOaznPpWQIlC6/4TmDpttJAeibJPETkJ0sjhVxfvqisJHeqERHtcRMAENZx9
5R9ag+XvQQ9w/Rcn0Ks2aVPMCa1iTU6dMOt4QeTNOJNvf/qYEGf7vD1eEH2JUIPa8N5hBY6gpUpd
VKy4/ZM3KwLsf0GW/ehgcAH7yn03eM7YF4HposkRNisS6mdXHe87xyg09xomzcZLLk8O3nQqAi51
VPR94B2FboeoJg1x+Q+vqhe0AkyS6aP5CUQz8sfRDytcVS7AYhm2wczYA2sTUrgcZmJhwjdImD5a
mVyK/DdD7tbkr7Xx9ngOci7OySMie2Zqj/SLGy8qe9ZnW50XxxMxL3+t9apxkq5/8Fw+CVwneXmp
zAqz3Nj0MCRj9hjFBtCI9AQPjQfIspZ6KU+Qmq9DsIVG0DlANbdMy+KGhGu0kLvq0b37d0wM1N3B
RNQrwEQ+5bKo04tj3NN8s0jABOsHnrGIvRx/KI/HDsvliq7LFPscqu8Z0ZH6VUF+cKql85JqgM2x
/wv+2osG7mcqbKvfde3Xt/lBh9RUugVLf0UQen4gHYiFBKw17xakuUeZAQAaeEIkGFOB4cIKcGij
bYtokOyY9mmX5W83SnLt5vP37RHuNhBg6nZU/8ajbWsrBeYuCtgrEUD80rHACYSZ3N5IPfcgikY1
oZ5g1X8f+GGz5eJTrqjeWdp3o2a+ezBU06zSlgtaDbvHBD36Jdv+3u10aY6QucRW2YqqCPYTaX9u
4vtH7BISV/aT1LoJQYrUVtxn9NHSJXXSUPLNs+bXIaTDAYBoptwbvA3JvjEveMQTz1Y+ak8jcJ3e
5pb/7ryEq2Wb4El7SLJcgj5VkEUs0KuypY+tShe3jHsoKaqEa1B80mPUacaYUatovNDb0KLsIIjk
R+32Ad5p5DfHN+EuZZ+7cycRxzb0GE2KGdMxU6mO1GBHhqYk0UsOmFsSfrSJilLevZgVR+zCVeIX
fp3jcTdPiHXIiUI9x547eIDthhqAH/CmJVQS3yqec6imw583XbTdLeGHFpI5gCXoqzrs+wsjKdLD
8Jd0jOr/edxm6cgFbeoK6vjkXEsemqz7ptev4jtws3SAb9gHgkjMN480I3Hjmn5xMn1X3vjxbYSz
PqySMA7P5mgHUaerTsz8WEQ2CJ6lHyfYl0D+XGgEbyHkMczjZbrKqaR5oEUokaHtr/08IxdfcK1F
nsfCu5Ymyak77Pp1jrGRxNR3lJrGWPrNAdGIpap8cIOjpjPup/LEoHHSh9m/AmZ8inLMViNHS1NZ
KMAO3t2bqhIlo/KOahg7blLNolfJ9r1SKUkbaoH65E3Xux0y6gk7piozRwGiIi6/1GCP3QEGjXnD
4Y0cfS16ozMXfFxIZ1QuTlO/fbVDGN1AMuVHAv2h3R+WUjBIlesXIltU9TMzuXWqhokUVwRugryT
d62Shp26CCzkV59+vTmyNbs76X1FnP6a5GvHZriUjKEq2DdmNrXqH8XAfh1BgRQQH65ZluA44zXx
6B9BeK/CZnxeXTlhmdNKVIZkX1nbvhMSVzYV2cprX+GbS9rz9mkJJWgwekfgcgoTh6DfepRPMR4y
dDLUWNHzD1S2uHeIbmyySZBqlo+7ipSMkLBZZ0dxgL9hP4QMhSOwE9mWPc2Kt394SRwkSg/RLYfI
8qNn+5VM/GeU9GPH0MSUlsgIaBYp0NStzBNZHqU1GvrcbFPEIVJEFfQF0bgiPfDKqRkIgbdiCOxG
9l0I4EphuO/CE/0Opju3Sako/f27+HlTY9gFT6CcqNtkXk07+C4u+wI7Vu0wHGsor11cW68WxJnQ
rFMRjqt13my+Yz2EZdxwfSCfhocWuq7RpVO1EsJM0P+ruO4lrGmrp/Gt1w1SowHCMHbVWHeuNhae
cx7Lw+YxwppIUnlVavN8Va1qXHIcMQ0hSVpuMo0S4uEHlE517SgjLGte2Q5xljrTwlzo09A0tasQ
yoiTp3FTHPL3JvH3sVxia/8V8SkSmiGiObFRlHnNS3EApEajxp1eyArs9Z/RY9XDIOcdxmF0aSLs
VUDqaVlKMRkk7r7oHNEA8A7p/ouotYUS50Qs8O6V1eDBXPbCuwKlqqzPdeyZqoI/sJmibgGh/4oW
iOmVuGGRiz6nWjRdYm/H4usq+xVX0r0Rc8smfieEx9su7TD/DonebaEaVyWWL+Wkf1yVxEe4Es4h
36caTZc6E16vqGSrr8IAmfXs2kwvZpp3FHAaMf+a2hhZ3esPcLtTxQn60d9LMJUwZVdcJ243G+hV
JiyKC00qUJK5gb/vaE6STogJO4bSqaphOF+JDhCNbUQldqFkXil3Yv+XrvoVUpbGe6eA8fFLVZKG
BkAwVvnLu8tFhIfllCp3cBQvFp5MMyAh/JybCPZH3ch+w8s95NGxy8Pk6aqjukcbqaZ1S9IHocuN
eGQdcNCSdb0SidRGfWxx8NZ5NyJYR2wZ/fU1WfIlTKSByDIWoQ3MOg5dBlJlY2739do0uHk+k1B5
JBUEq3ZyrrhepJ6wYrUjvvprmyGTjsvY5+0wnCG2KQqRMlbFFBSqUk+svUAyI3TNqcj7s9Wjtd23
ah6vCAiNrmimhVwkqrVUQO6NxUcE56fr3A/KF1+HgyUnn1XzFCAJ6BnTwCbynExx5yvGx+yBGTfQ
KqCcYXjve3W9HdAJL5k1WgBk9eAgP2+nS2lfzVsP0b+4d0rueyHkc7Ws/rkrAm2ZT+js0HOFgqy4
gRMWOLu+Ve2IXChuMUCvf2aqwJfeBvlhWQhhUpd8r7ftx9c5mOPvN9qMUHxSltouUoZhZktYQzS9
EVuDCB/tNqjw/0zQFHtJMEEhSC3uCg2P1YqJAFqOBZW2lF7qov4GWPCwj+ivvSdwq7aoPwjvVXcD
I6/RQgvPRrLEjjReMyGnnXMPXYtMeupaKuqzrWNedvystRk05osQv7jJL+smaY+dBHIg8B8j7ctx
aBnw6BJy6LjvPZosDA3R/vieaD4Mbl7H5N/+jQnKS1KasCj4YWo6CyafMVpjsgTYhRr/PJ9NfTs9
Oa7BA7nkxUsem32BR/zLLT0/uUyjed2V1NN0zXViNGlX/xr44A7bO4OJoJtSY/b044/ejx1skaXZ
Pq7wkxZ7h9rXYbfHw5ZraVt+1SB6urFzZRDgZpRpNPcHD7wJWpdBEj8dlCp2qtR/ZN4XsCtT/KOh
BvrgZM7L4jt9PvbPQzvXR1j284xF46tF7ZkNgpjKZvL4nCYKEFeSnnTYWj0xFNEIgXrwzuRqZ63a
0IsCpoiqf5xlvN3PTECTnwgMENZVxXYhqsGHeYuUl5WfwuEwzQj0LyhRBPxclIY1M9ReC3wnaMDw
TvknRuzC2fWS/qv4wjUccSMrA0EKePL8icDm0bzz4XARYvFXChSGLN23/mlw5O4Xt6fdREruKtvJ
jnXYadzNoZvx1NZJGAeQu/UKopYQcTirneJaLp2PaPyKzXEMJt/08jT9b3QEd4X2tUEmH9r+OzmT
5K75xdtrqoeQmeMnncoqTO6iqLRqG+gw5YBYz0ssTFZ6Cue6toKFngKj8m3qAHLXbJu4iBi7uJZu
u5Iga+lMePe49MaqaGxzocPhRcn9P7c55dzXC62kbrpTq4YpewjGWV12X4RLmL0mhjJqpYeCXf4z
lZtuUeqc1hrScOj+JMnWiEFMZevfaSrBVpL5hXgvkkNxI8z2oI8zgpGm8q1IrT3m3+yEAOFZ22Jz
cuF/Hln4AXToOHP4XkC1EEjn/EsynvghHqkd/GxefoZGSwhw15/Uc1LAwlsrYGHW7e7a7nxd4icy
FPxXg9RFL0WbyM/J0RgaziAMrUIRNNjueBczlk7cTkDLG9oNbS629txZpfzfBc3v4XsVocSlA/eF
P9fuuRvtaXkNwxwofM3dkgDJl2n2P8Hp4oGKgFNv3lgUgKeq9VSqM5TOcH9ekGHutByL974HWNMx
Pl0s4WV8/y9zyBs659RC/0Le3jN/bqDAuDA56TKbVx5YO7jZIZOu7vg7xZRroGT86q5s/RzsbpFt
xjIutg6bk+xcTapr+blPbLTHSGX4Pbqq5AAANf1yHRHVoxHG2z9I8MdJ4kSZyk+ub5KhanRAjYMZ
pdkMAX4AcP7DrSz5NYgq/BwoBElUty1CpXWfELFoHENum6I/zAuw/DzOhA6tgMPu7jsiBcLorQ97
Yox0buDl8n7ERuyj448R7tdEFhDpWeh3lahcyAV6yDGKq89hEkKQvugRUVpDafcyoQDj6qIL4J+N
PjIfwHF3kmOOc0Gzo6cs+H9aeYViEhH8elV94OlJlGZM+07upX3HXWPqLlluEyiaT6MFYlkoLxcx
FzhBQgejLtU5axDgs+fBSUvGVd4ie6hvSnRVbMgtKpD4/Vn2vmaqI3tASO/oqFafufexFo59vP79
lERtg7rdnIGF8jd6uTz22TW8prbYiF/m68+612R9n1laDL5yq9qFhQCVQs7qcXgeeAxJzUfFM0ZH
NlsZ7+NLgGu1sWfZfmMc5t/1i1io6GSVWS/VveHBBONHJvhBsuv4CnwQkpW2/ZTRxHbGIrRtAUqh
kKrId6qWvZGlrEhtmrXMXYmvNjeLO+ZI4k8fY7u44+kgqn/xtDrWPB1vyMImenhKJLgzTbBkY5db
lW0yp/bcwTXH13ETOzdPSbEH5mI74m+9zTNPdngAiBJK4ZO9nBVTz6PEwZfnQaIuYy2Psr/qtP5U
fiQA30f1oKTxWLaGthqCYiaQuN3W25O8mIIzqEmH9B824X42pGtFiCV4wfO737+iVegvohFGGFpC
nXE+qhJqnUxbaIyBYYa7NCnsQ/DuoD5EmkMaiEgcGQwAoB9lcHFzQc5tDP09beMoYrOC+IToUzfB
ugOUkHNF/q6L9cjVfELOp6jQW6N/tALPnaWfXhb65aaUQXQKTL8FzOVLXKZ9v+L92BVtLfp70XVT
G7j62gaGhutySnNmnJPI8YcRvcs6z6c98u0nRjcKOshBUE2NnDtyYRnkmE7kD37teRl46A9ytje0
7c3W29dtvTUPpbkfiRZLpgFslUaVE9PH8lrNwM4U2v4H5r+G2VQOiNaDD1gBm+zeaWAD0zE5/2Dp
ytxspsFYJLBxfKh7mILjwgow9fHnWgDcz8lIt6Puvgqgatnk3tUy3p3q8PmYieT0NYbqyVlZgSse
eXdDt9r50MEGx3nV0qlfnUSHghamOmvdcfrnnK2tsaOhC9rRDiL9g+YsHQ4Vi5PpYjIidCAkiu3r
fwp26mRNNkqWv0aolIDVr9nNSndbAwlaxK0qOhMZCF+Kx9743WFNFBi/InP2PH8D8VBvSm76Ao0D
1no1FXH8VlCmJCQAgo461PjWDBaSb5azyGRPpAa1v5XEQccUYc09eS9BUGp/NsZhQIyZa+jnS9Gs
c0wuMAJoMeVDKVZZ+AlwsOqnJFzU5V5g22OP1z+HfX5ZYE9jnbRB6Kj1C+YWCpgdIOtEBwJ7rqi8
iBRfRN6zmMSmK2OveReCLNdSDEdVEaESf6XGGYx32nrKdmme7MnvCEwtsuScln/9JKO69KI1IzfA
pV23LVlMWmaMYcT6ocuVB5nInQqhd1yQagVoutbSOahzf7TbwaMcNAYZWOc6UM6UdESCe8Vo4Lch
5T80Pd5nwjZcvNSWVDdQCKEpwv6XIB7pfmpEnK3qQjjlEwKru+t9cyv+XOmw+/RfV40l0KLphlgK
gXgqfe1Ozgo5zSS9wtruytyeL5+z+Tz5ZVZthWNpGj52HCo1cgLlWcXQ03ssriHN98+g91RFvfv9
3kuiXCsiy+lO8NflVZhwxwaVZb44wMd+C/7vPxLyKgSHxJf9M2Je3N6cLuvU5fG1aWqZ+R+XzJzi
reUoHX4T9CZ9iClu7Ndv/3AA3wDuikIN143rk2tnTijdUY7Pc9WHjo8/gsqHaH7LL5CYo5E32DtE
jJhUyLcL2KBqZB+qaJvmmusHmR4wvv/7lylVX/70VLmtMhPqfRp62MKz15vv4RSSOpzWmUm5RWmr
Xa5/75+0FEvtxxadxeu8UDvr6b6eZAOUxJxtdYY1i3j6uCaZ7bRl6eXt1Ymw5gzjremlQ0OnXYf2
bhVRNK4JG00kBbAoUwJE4TOX+Q3aKnNhcFLYlZt4gftTGVaICQ9o6VquY/eYPFda8IRNl5t1LhcW
Rh0Cg5O4eQGx040U1LA5ngdgVigmvFVocDxwr5C9k77YvUMSBMwSn54by8bq4MuwZFSz4pqfp1r/
5NoAXzxcEqF4ryar6vTakUFTP5wWqIBJrziiUepbSAq7GDFKwH16kVz3mOePB1SbgdYIDxjrkjz4
FS6gfP0NlASiO+rIWXIo5xWyQ9sCaIbVnC+I2Wypwtskf5gjTI20fRTD4Q90kCFQxbdt8eg/yT9j
8DGwJh2ZjJWfoG2IfaY+yRv5S4vErGNJqf3RxN8p82vL6J69OfzRXZSBIOF5MhrwArSRwSm6m5Zx
AoL/8PIJxv7RzS36rzV9NqWrwXDyMGksjx5zCZ3mG2ZVaCuaeVanRx6nLT3bxqx+zA1pT1KNDvpP
ZiDWfxoTzHBb/G5gm/5850M2isnX7mBTuVl/lacEzt8uHnDkAjlWxJnG+f0Grzv1pHIj1o5Xsyft
kFT08cp7s3lIq/J44lv6EmeclH4QWEabLQnMMXrMIqdQENlfCJFgeLr/9VHdp/vb2xSXLGbPJJ6i
NeLdc7LORfi+gOqY3Csnqhm51UNHjzA7yZDZLzEVWcrJ3Yi8dWaxjVKiqzh3sC6Cbo3FO398KIoG
krKIX7KNIH7zT/8w4SfvwIulLg2c/2aTtDeixmX6TD4s0Az5SsxBS/w+mx/eHmHgJiTj3ysJMo1j
Onbfxvgihcb21MeYCCx+6bxrJWlE4wuFuVLf12Hx0/vp9BZpAf/5AbnVU/RmN/khekLlJ6GszEdL
BtDaMBzj0Zjpo5sngqSRFvyLEWzSlLYVnBUzZcOkgDlSRYnO9sTXtdi2R+d3biKd4N3Y+kHdhyB+
Krb45ZTu8g1p4Lx2bgPh+7py2TUgqb2Q7biAanICY/2tujCKwSv/LPFJy3wA3Cj4FycNQwo2b+fh
53yf7GEI347OKgBPu6h1AuhXGqz4HGQ/915wCVF5VWYi/uQNlGjjaDbSUKVGfBkYDUInfBtsX4aa
6RvuSbSifI/36BrdsBLrjworlT9OwepXVYllF7XyeKqc+8hCweuJ6+Lbb0i85qx3xnpqQLQ65NAG
mVq51SL1EMeDAMnvRglj/Jvz2CuLH/V7TPAdq/lRATyIlBky2qqEDwsmBvYyYcuWs/s21okCJpVO
IYvXKGPws8c6rZVc3oNpV6/tt1dHjqG9W1Tzw/MurGpCmDuzaw0h5BNHdBWlwz7eiMMjddh7LlU1
fSnq/f6F7RdvDJwk8LGsa9vONvdSgDE/hGXuoGlxDy98RCgXFP6YSY/j78UqrEwn/XGgUArjVVYe
Kc0rCr1YT8oQczTov5WY/HUKBjV5xkV58Ui/lA204sPIbEhcEGfycKm2yEVmmMl51obZD7DkJxQX
W8UDpAzsBUmeWWUiXd11GtnI5CTXp4Aaaaa/Y48dJoJsFeu+clt5vypBr/D1tQnAlNMfaliL1g62
uYauFo7Gw17M/HM7VVkU05EJumJRiLxQfNHsv981zz9w/6Ej0WmHdl1I+ypuna9vd5r23KEF0Of5
W/l4g+a4nHma8MLIj9sVZIeykhfXiIlAHfNJYgFjDjLdulh90nlu4ekNaC5mCZCT22a9oniOTSt2
NcaDOaSAsRAnFyQp8OTkAnUdTKbn1PR2rttToikWFHh519+ZWVigQnq8Mu3V7OGH9meuBSsVltwC
vJWhkl2ElBpf029TPTXufTWTs8BCLi32zLwZE7KQqY/6n29QMOrhl0djwIaQYY+5/g3NfvGInRoi
U7nZP8Febqe4nY5hZDo6XfXAOHUB9iLrYzFc0RlXxRFFN5UT4gpCwYxVeS8kGdXdoUjolInFpNnQ
6sx44ZsfLYHRUeO2vcv4GnUc0jk801r6fkB2jMmAG42kBzSIur2UDyy4yYAofxZHDd/onKW1Hzid
VRTMK5mRIii1yc5rw3WrbskQ+2p4FYK/jxzJbxyn92msNR9lhMhm9IzhCKl3/ne2Gte/CrLcbqU9
oyrACvHMjXtRM3rN+lXR5D5sx7bd/0pxgImMznjZ08Kvk7froi3D6IODapR013eZptg3IMII+z5e
gMKL3tPEJu65rpUJc8FMRyNL8NeLTGpHj2qH24aeXg5T9IYJNE+430Z0oygGrof05daAfj4tG+H5
rYUbcX1jWE0RbAqzy7eENNGFZ6KRMnyhFNCezAVLAKs9vhNfkXoz/epe+q3HGWDGy4fIhkfJLvpY
OSOJNIxjiz++VIYzJ+oC8K1zCZJX00ClzC9Tr1pwfHCXUdBbNbPNiA/i4vcSFtGyABNy3L79RYd8
8YwXzvkbueLUxuKfriISfTLRuVqdyyJ7pwCJz1o7UanBwH8PiBLJKIxQs4sZPDxLrIbLGtOJQxmY
l68X3yYukKWC24UtXYOGL5LqMc1ZWaJb1LyazyauETeh4L6WhDk2fR+s+fJ1sxFv4QnlkTJuPBDO
EqdoHuxxWaKvAGN09SXH7IhfiHhHLEaPP3LkJ/Q8NAMvOBFnq5kwR4IIKbdJEGnYEUGJJ60N7F/6
flobp5hn/6lotcWv4eSGZdRiWROpGv/Q+T6+qKkLltl6vmGIBtt1hSnBGln2959ozXO+At8I/tOm
II8U8ArAaPyTHIwi+ZEKuDhUXMj05S37XdBoJ5NZKPDYecf5tAPrkbM7L8VRjeK42lSEQM1fFKhs
zGwPK44FvqtuBwpMNX/hVME/xpARXe5DWKNw0Sku2gt8aPz/t6x1vXlgbBFnLOswRq+C8G/48nf/
4sLzCQzx1MFc1pbpuVblBn4GyVilVven9v8i1wn0AJyL2ES3hwJhs7Z8HnXTGXMM3WeN8PgK8XtF
Ou3xgNW8c/HFpGivm1tPMSxq7z3eQ6q7CO4TtIi3LCkDXdLAhW/8Y9YCLA4YbzX+j6/oeDa1XRiC
8CqrjqJASWiH+NSnjmxR4D41TiDg2ZEYINrwllLttMUS6PaBGguS5mVw+EO74Ms3WlKH/XwAR9+9
nQ8nFZVIB0FZfzSIxGTlxMZfieTKhfICqVASFHKqcrDgqjEXa97Lk8QSQ8W5cKJb2pTQTK8E3KwY
9TPSSJyFQeM1/rC8rgyBtkLCS0PRyiVcbi85OR/eSE9PF+WlP4Yfy1nNhModznMbta7HuITfselY
8K/1JDVvoEkkoiVDkzOEKV2YXCaZu2s3ZwCH/T20miyIp/CD/IPsEDTQPWdNByWa90/JP42ja3q2
kyxy8cSKAJi9gIhnwjB4St99f0QiYRpCZkH+DyXbQh3AIsOXWRZ7oIMhiknOvN3z7DV18YHC/xqE
6mixUqJeoXG8tcggxZP7uqtOXrdvvfkmPAGrVJPAjT+FZPk6HZA0GPt1ON1ydtcqCsKvT3xEK4uN
1KITuuGCrTd62tOHFRsflULGjr9DrsO+tgdoDoIyjhiz5UKp2rFANJsGLoHERU2fyOCnfShvZQKr
O2fN79QniPBYiwYlY3UrWqnmy+8YkoRRHlHdjzAMI45uFTTTZ2/x5rHh51iZ99NYwVxmuakX1n0R
a9vBPszmZsI2g2BBk1tjXXuACavcPb3XaahffP4SpUS4ZmpLlCF40sxzCzWA35zHIL4LLRM1hI3B
8R9/sMUli1jBAiDwcjn0ue239bGZtqBYIV6vJgp8UjFlHrRimv6wv4QJ1Fuu1TMMdYmVbXrPPGyz
hnRhgxukqd+7PeH4oMqT8Vgi/Ou5+NoXEhzWOiRcwU3H9W8Q9FeoecMxZs4d/SfDqG+GfhAxgdLg
obv9KMl8DxIQumDNF0nguAlZQ3YuuO5xBsn4stlqXSnO2pBskwtl8JAMP0G4/H1iXnyVb+HhKKbh
R7zXXs/CIpLVUWEw1F390UhKM7CLIF3UtxUUzrLAELSN6RjGO3bJWn2nBFbWkBzCz3mvF3OMUIAZ
DiBigfWtlv9ymXC5jH0RrLzlFWJgHdLYYkNHa1gTNyvi9MIZCAtdSJXsTuxgz66GUKNPS84S7w1s
kttLtUv2E1DvUmqwxXENXNBA00WxG6XYxs+NrjuJKDwVV6u27/1bO5M4J+D5dpjs7St+5n3eOvsP
Vl8/uZzvzMPNalC2WY0cdA2bb5UR6n4IsvKcBnPyjrhixuU0OSqQc4GDh1pvf452jDyR+t9fCHAO
hWr8anOhHfLCt+wtTPgmIJNvM0f9k8hzZzgTKjnEo8lV47XE/+JiY7PtDLW/9Hcdpm1odvdbsI9B
sMsuI/HsXnuT7K8BJex2HpRzi3xSdqJFv6xOuV4lx4+X6ig9NlfPpf9U40XsRZAc+xe23tITkUTh
IWTtWsIyhCjAQ4VSYiGleFvq2hIzvgyH9awOXicn97fTb5DXcgnDx8Xzy2xEVC1VbfEVImsROWw4
t7P2cRWGeWLzrrspVh0wd5btY+N++4VHtuSAP2NTSekz60FjkGT11bUa9+eLxZecPtS3oqd2Zz2M
JZcUOvXD20gMXM7oxa2Wm0PwE8rspCy23iAALnaJ/lKANW5mIfz2/U3nMBcnfjgLZLmRGE+DHqs+
ZjPx7Zb/7rhA246vtBu1lzPyftTEHV9dx76+stKFEbDY4AwYTxECDRIypL8Z8UbgaZji/yrwwuyY
tyym0jTmcxaB9rDT6AflgwpNzk3Rr9rU/mWBlHSemTqU7eFH43YmDUdoLzE15SVVka6Q8zLYbGW4
0mb3VshXVQ4PbdkcH7Z7gSklRSjvLcNI42jIlfiK+0fVswNUEdV+XNo2Uho1xNm8otKB6tF+tJDF
sCbem+8elHgwAVD4g0xJikLjkI/MyAZaazAbtnaYbgTil9tIi2+N8I7dFvDABIRhdyGfaoPy9xvh
huaZJlZSdbwg43fQkL/eiIWuUAKdO4xiIeFqVVdPsATMzrVM8BReAGeEsdBQ1BVowgHoBmcOqNg4
sxFnMpg12zQBeCLjlgpj2LZWXCa/vgVUWYoeelJWD5bf3tLXn8JFs+KfQJS+fGZ/ZKgj+FnQEdng
q5RJuNP/ClCNhsOFXqapx7w35UxlkH6+Ai3QqlCbI+EMqL6kKwoXLTP/l/KvvDXwW7Ks9MEqcIKi
OPZDALVg1l3HbhQD2lnPfPBuCPmkFCg+5g8+yJR6EMkJtAmNOAD+jt0IxTyWMlZ1GV3xqKBiWu2l
rJ/9kRYZ/tyD0AnD6EDVdKIWSKNXhNTYkl3u/OOammPj4XiNsvQcqofkVw26CvEUpHfVTbzCLQcy
b3EOdvoDZwmankEBC0/1tAMaBnWEqNec6kjjCP/x4gzv9qZelfpiKwUsVm8xWoJoWHSHOFqC508h
sQkjncVKyvhqyyJPHubRwoJOb2hPoE9lVxeox5umsPHwjbyHUCN2+xaAwwyaFVH7Bx9t5NgQqsjX
l9FSCseWiZJGY8sfyogGkJTnaisdgfIeNowd/Nzmws4KHe/cw5xeLrvqTks6itQAcIQvRAzEAWz2
fnW01kjGzeqCZYYHMy+fn90qkeUfuios5+pSkNzVlcLP84KUpxrGKsafeyrH7pwvkWVIy16YZ+Bt
H4MkksFGJesSzDUpWyUV+XA6cwbRc52f3IVqvCnRz3AsdikPWtQkz2TkDXYI2Wgh7xAyUCAHPzx4
XyxxLFWycnRxd4KAGqOXPWc8fB0mM8z1sxth/0WwzG1/hkz+RPM6rfoozEw9W9Z0IDphuGmIiW5u
or2zBDSGc0aGyYKI12iu8t7/b7eCxbOEB6eUT7F+cPOm/8L/Ripdlak432iPImN6i9Sd2fepjxSz
xtI4kHOxsoJ7JlhLY9gSqc2mwKghWCE63Mr8r524ZbbdbfSN9sCQirsjZGVyXkDXajpl+nHH1nmm
qkMTqGAB3HSZvPbIWFYLBFMvirjQas94puKpVoMQx5GSPIY72ajGUCBSLPVehLinI3+loSzxppkA
6oeEtfpMP3OsBjS2/FRbxeIhkgk020JJ4nU5HJjHGDoX4XcQeCHpPVL3ywX4GTJ7XgcyRuzzdHKT
rWvbEN8+yk28JWPO6EeuN2wg7v/3tXBL1ebZsP8a+4uuVqF9vuKd06hDULKbsWAezZwYZ5feVUuC
Yuz58duLjxNGppOgGSe/MyPtpj9NVFHhxjFx/MWPTzAlghIJn7ksAzAx0s9z57iT9uazcjQqx69w
K8wR8MvA3l7qqoHnQAA8fbT6V6y45K0RJw==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
