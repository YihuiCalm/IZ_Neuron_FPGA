onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+double_compare -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.double_compare xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {double_compare.udo}

run -all

endsim

quit -force
