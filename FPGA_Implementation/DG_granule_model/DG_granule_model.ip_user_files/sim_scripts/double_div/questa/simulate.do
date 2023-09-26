onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib double_div_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {double_div.udo}

run -all

quit -force
