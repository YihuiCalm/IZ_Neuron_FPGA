onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+double_add -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.double_add xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {double_add.udo}

run -all

endsim

quit -force
