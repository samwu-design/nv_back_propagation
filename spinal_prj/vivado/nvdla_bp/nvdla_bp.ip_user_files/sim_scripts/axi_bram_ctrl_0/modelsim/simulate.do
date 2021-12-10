onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L blk_mem_gen_v8_3_6 -L axi_bram_ctrl_v4_1_0 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm -lib xil_defaultlib xil_defaultlib.axi_bram_ctrl_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {axi_bram_ctrl_0.udo}

run -all

quit -force
