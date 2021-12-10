-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Dec  7 16:04:20 2021
-- Host        : LAPTOP-EEFVGB2U running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/VM_share/NVDLA_BP/spinal_prj/vivado/nvdla_bp/nvdla_bp.srcs/sources_1/bd/design_1/ip/design_1_mdm_1_1/design_1_mdm_1_1_stub.vhdl
-- Design      : design_1_mdm_1_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu440-flga2892-1-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_mdm_1_1 is
  Port ( 
    Debug_SYS_Rst : out STD_LOGIC;
    Dbg_Clk_0 : out STD_LOGIC;
    Dbg_TDI_0 : out STD_LOGIC;
    Dbg_TDO_0 : in STD_LOGIC;
    Dbg_Reg_En_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_0 : out STD_LOGIC;
    Dbg_Shift_0 : out STD_LOGIC;
    Dbg_Update_0 : out STD_LOGIC;
    Dbg_Rst_0 : out STD_LOGIC;
    Dbg_Disable_0 : out STD_LOGIC
  );

end design_1_mdm_1_1;

architecture stub of design_1_mdm_1_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Debug_SYS_Rst,Dbg_Clk_0,Dbg_TDI_0,Dbg_TDO_0,Dbg_Reg_En_0[0:7],Dbg_Capture_0,Dbg_Shift_0,Dbg_Update_0,Dbg_Rst_0,Dbg_Disable_0";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "MDM,Vivado 2018.3";
begin
end;
