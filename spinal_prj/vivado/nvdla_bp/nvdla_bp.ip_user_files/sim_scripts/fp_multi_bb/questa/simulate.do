onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fp_multi_bb_opt

do {wave.do}

view wave
view structure
view signals

do {fp_multi_bb.udo}

run -all

quit -force
