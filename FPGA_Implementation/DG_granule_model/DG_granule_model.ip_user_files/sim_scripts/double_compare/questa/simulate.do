onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib double_compare_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {double_compare.udo}

run -all

quit -force