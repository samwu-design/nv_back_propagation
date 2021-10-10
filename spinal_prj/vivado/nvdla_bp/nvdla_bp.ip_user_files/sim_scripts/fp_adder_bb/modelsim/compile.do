vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93 \
"../../../../nvdla_bp.srcs/sources_1/ip/fp_adder_bb/sim/fp_adder_bb.vhd" \


