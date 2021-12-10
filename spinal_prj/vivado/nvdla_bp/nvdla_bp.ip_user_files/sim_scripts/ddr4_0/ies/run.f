-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/microblaze_v11_0_0 \
  "../../../ipstatic/hdl/microblaze_v11_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/bd_0/ip/ip_0/sim/bd_9054_microblaze_I_0.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../ipstatic/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../ipstatic/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/bd_0/ip/ip_1/sim/bd_9054_rst_0_0.vhd" \
-endlib
-makelib ies_lib/lmb_v10_v3_0_9 \
  "../../../ipstatic/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/bd_0/ip/ip_2/sim/bd_9054_ilmb_0.vhd" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/bd_0/ip/ip_3/sim/bd_9054_dlmb_0.vhd" \
-endlib
-makelib ies_lib/lmb_bram_if_cntlr_v4_0_15 \
  "../../../ipstatic/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/bd_0/ip/ip_4/sim/bd_9054_dlmb_cntlr_0.vhd" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/bd_0/ip/ip_5/sim/bd_9054_ilmb_cntlr_0.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_2 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/bd_0/ip/ip_6/sim/bd_9054_lmb_bram_I_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/bd_0/ip/ip_7/sim/bd_9054_second_dlmb_cntlr_0.vhd" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/bd_0/ip/ip_8/sim/bd_9054_second_ilmb_cntlr_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/bd_0/ip/ip_9/sim/bd_9054_second_lmb_bram_I_0.v" \
-endlib
-makelib ies_lib/iomodule_v3_1_4 \
  "../../../ipstatic/hdl/iomodule_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/bd_0/ip/ip_10/sim/bd_9054_iomodule_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/bd_0/sim/bd_9054.v" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/ip_0/sim/ddr4_0_microblaze_mcs.v" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/ip_1/rtl/phy/ddr4_phy_v2_2_xiphy_behav.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/ip_1/rtl/phy/ddr4_phy_v2_2_xiphy.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/ip_1/rtl/iob/ddr4_phy_v2_2_iob_byte.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/ip_1/rtl/iob/ddr4_phy_v2_2_iob.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/ip_1/rtl/clocking/ddr4_phy_v2_2_pll.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_tristate_wrapper.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_riuor_wrapper.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_control_wrapper.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_byte_wrapper.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_bitslice_wrapper.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/ip_1/rtl/phy/ddr4_0_phy_ddr4.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/ip_1/rtl/ip_top/ddr4_0_phy.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_wtr.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_ref.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_rd_wr.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_periodic.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_group.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_ecc_merge_enc.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_ecc_gen.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_ecc_fi_xor.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_ecc_dec_fix.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_ecc_buf.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_ecc.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_ctl.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_cmd_mux_c.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_cmd_mux_ap.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_arb_p.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_arb_mux_p.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_arb_c.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_arb_a.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_act_timer.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_act_rank.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/ui/ddr4_v2_2_ui_wr_data.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/ui/ddr4_v2_2_ui_rd_data.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/ui/ddr4_v2_2_ui_cmd.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/ui/ddr4_v2_2_ui.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_axi_ar_channel.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_axi_aw_channel.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_axi_b_channel.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_axi_cmd_arbiter.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_axi_cmd_fsm.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_axi_cmd_translator.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_axi_fifo.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_axi_incr_cmd.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_axi_r_channel.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_axi_w_channel.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_axi_wr_cmd_fsm.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_axi_wrap_cmd.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_a_upsizer.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_axi.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_axi_register_slice.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_axi_upsizer.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_axic_register_slice.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_carry_and.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_carry_latch_and.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_carry_latch_or.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_carry_or.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_command_fifo.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_comparator.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_comparator_sel.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_comparator_sel_static.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_r_upsizer.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi/ddr4_v2_2_w_upsizer.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_addr_decode.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_read.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_reg_bank.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_reg.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_top.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_write.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/clocking/ddr4_v2_2_infrastructure.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_xsdb_bram.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_write.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_wr_byte.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_wr_bit.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_sync.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_read.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_rd_en.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_pi.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_mc_odt.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_debug_microblaze.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_cplx_data.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_cplx.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_config_rom.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_addr_decode.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_top.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_xsdb_arbiter.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_chipscope_xsdb_slave.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_dp_AB9.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/ip_top/ddr4_0.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/ip_top/ddr4_0_ddr4.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/ip_top/ddr4_0_ddr4_mem_intfc.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/rtl/cal/ddr4_0_ddr4_cal_riu.sv" \
  "../../../../nvdla_bp.srcs/sources_1/ip/ddr4_0/tb/microblaze_mcs_0.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

