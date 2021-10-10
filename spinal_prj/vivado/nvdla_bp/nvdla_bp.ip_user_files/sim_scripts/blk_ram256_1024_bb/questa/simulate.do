onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib blk_ram256_1024_bb_opt

do {wave.do}

view wave
view structure
view signals

do {blk_ram256_1024_bb.udo}

run -all

quit -force
