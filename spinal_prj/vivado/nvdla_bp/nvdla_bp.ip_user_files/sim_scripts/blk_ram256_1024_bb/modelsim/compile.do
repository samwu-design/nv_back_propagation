vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../nvdla_bp.srcs/sources_1/ip/blk_ram256_1024_bb/sim/blk_ram256_1024_bb.v" \


vlog -work xil_defaultlib \
"glbl.v"

