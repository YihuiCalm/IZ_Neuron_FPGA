onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib double_sub_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {double_sub.udo}

run -all

quit -force
