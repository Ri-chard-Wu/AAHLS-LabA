// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dct_Loop_Col_DCT_Loop_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        col_inbuf_address0,
        col_inbuf_ce0,
        col_inbuf_q0,
        col_inbuf_1_address0,
        col_inbuf_1_ce0,
        col_inbuf_1_q0,
        col_inbuf_2_address0,
        col_inbuf_2_ce0,
        col_inbuf_2_q0,
        col_inbuf_3_address0,
        col_inbuf_3_ce0,
        col_inbuf_3_q0,
        col_inbuf_4_address0,
        col_inbuf_4_ce0,
        col_inbuf_4_q0,
        col_inbuf_5_address0,
        col_inbuf_5_ce0,
        col_inbuf_5_q0,
        col_inbuf_6_address0,
        col_inbuf_6_ce0,
        col_inbuf_6_q0,
        col_inbuf_7_address0,
        col_inbuf_7_ce0,
        col_inbuf_7_q0,
        col_outbuf_address0,
        col_outbuf_ce0,
        col_outbuf_we0,
        col_outbuf_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [2:0] col_inbuf_address0;
output   col_inbuf_ce0;
input  [15:0] col_inbuf_q0;
output  [2:0] col_inbuf_1_address0;
output   col_inbuf_1_ce0;
input  [15:0] col_inbuf_1_q0;
output  [2:0] col_inbuf_2_address0;
output   col_inbuf_2_ce0;
input  [15:0] col_inbuf_2_q0;
output  [2:0] col_inbuf_3_address0;
output   col_inbuf_3_ce0;
input  [15:0] col_inbuf_3_q0;
output  [2:0] col_inbuf_4_address0;
output   col_inbuf_4_ce0;
input  [15:0] col_inbuf_4_q0;
output  [2:0] col_inbuf_5_address0;
output   col_inbuf_5_ce0;
input  [15:0] col_inbuf_5_q0;
output  [2:0] col_inbuf_6_address0;
output   col_inbuf_6_ce0;
input  [15:0] col_inbuf_6_q0;
output  [2:0] col_inbuf_7_address0;
output   col_inbuf_7_ce0;
input  [15:0] col_inbuf_7_q0;
output  [5:0] col_outbuf_address0;
output   col_outbuf_ce0;
output   col_outbuf_we0;
output  [15:0] col_outbuf_d0;

reg ap_idle;
reg col_inbuf_ce0;
reg col_inbuf_1_ce0;
reg col_inbuf_2_ce0;
reg col_inbuf_3_ce0;
reg col_inbuf_4_ce0;
reg col_inbuf_5_ce0;
reg col_inbuf_6_ce0;
reg col_inbuf_7_ce0;
reg col_outbuf_ce0;
reg col_outbuf_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln62_fu_331_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [2:0] dct_1d_short_short_dct_coeff_table_address0;
reg    dct_1d_short_short_dct_coeff_table_ce0;
wire   [13:0] dct_1d_short_short_dct_coeff_table_q0;
wire   [2:0] dct_1d_short_short_dct_coeff_table_1_address0;
reg    dct_1d_short_short_dct_coeff_table_1_ce0;
wire   [14:0] dct_1d_short_short_dct_coeff_table_1_q0;
wire   [2:0] dct_1d_short_short_dct_coeff_table_2_address0;
reg    dct_1d_short_short_dct_coeff_table_2_ce0;
wire  signed [14:0] dct_1d_short_short_dct_coeff_table_2_q0;
wire   [2:0] dct_1d_short_short_dct_coeff_table_3_address0;
reg    dct_1d_short_short_dct_coeff_table_3_ce0;
wire   [14:0] dct_1d_short_short_dct_coeff_table_3_q0;
wire   [2:0] dct_1d_short_short_dct_coeff_table_4_address0;
reg    dct_1d_short_short_dct_coeff_table_4_ce0;
wire  signed [14:0] dct_1d_short_short_dct_coeff_table_4_q0;
wire   [2:0] dct_1d_short_short_dct_coeff_table_5_address0;
reg    dct_1d_short_short_dct_coeff_table_5_ce0;
wire  signed [14:0] dct_1d_short_short_dct_coeff_table_5_q0;
wire   [2:0] dct_1d_short_short_dct_coeff_table_6_address0;
reg    dct_1d_short_short_dct_coeff_table_6_ce0;
wire  signed [14:0] dct_1d_short_short_dct_coeff_table_6_q0;
wire   [2:0] dct_1d_short_short_dct_coeff_table_7_address0;
reg    dct_1d_short_short_dct_coeff_table_7_ce0;
wire  signed [14:0] dct_1d_short_short_dct_coeff_table_7_q0;
wire   [3:0] select_ln42_fu_361_p3;
reg   [3:0] select_ln42_reg_622;
reg   [3:0] select_ln42_reg_622_pp0_iter1_reg;
wire   [2:0] trunc_ln29_fu_377_p1;
reg   [2:0] trunc_ln29_reg_627;
reg   [2:0] trunc_ln29_reg_627_pp0_iter1_reg;
wire   [63:0] zext_ln42_fu_397_p1;
reg   [63:0] zext_ln42_reg_632;
reg   [63:0] zext_ln42_reg_632_pp0_iter1_reg;
wire   [63:0] zext_ln23_fu_403_p1;
reg   [63:0] zext_ln23_reg_652;
wire   [5:0] add_ln29_15_fu_472_p2;
reg   [5:0] add_ln29_15_reg_772;
reg   [5:0] add_ln29_15_reg_772_pp0_iter3_reg;
reg   [5:0] add_ln29_15_reg_772_pp0_iter4_reg;
reg   [5:0] add_ln29_15_reg_772_pp0_iter5_reg;
reg   [5:0] add_ln29_15_reg_772_pp0_iter6_reg;
reg  signed [14:0] coeff_8_reg_782;
reg  signed [14:0] coeff_10_reg_792;
wire  signed [28:0] grp_fu_535_p2;
wire   [28:0] grp_fu_541_p3;
wire  signed [28:0] grp_fu_549_p2;
wire  signed [28:0] grp_fu_555_p2;
(* use_dsp48 = "no" *) wire   [28:0] add_ln29_13_fu_508_p2;
reg   [28:0] add_ln29_13_reg_847;
reg   [15:0] trunc_ln_reg_852;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln29_2_fu_531_p1;
reg   [3:0] k_fu_80;
wire   [3:0] add_ln23_fu_409_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_k_load;
reg   [3:0] i_fu_84;
wire   [3:0] select_ln42_6_fu_369_p3;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [6:0] indvar_flatten_fu_88;
wire   [6:0] add_ln62_1_fu_337_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [0:0] icmp_ln23_fu_355_p2;
wire   [3:0] add_ln62_fu_349_p2;
wire   [2:0] trunc_ln42_fu_381_p1;
wire   [2:0] trunc_ln42_3_fu_385_p1;
wire   [2:0] select_ln42_7_fu_389_p3;
wire   [5:0] tmp_3_fu_446_p3;
wire   [5:0] zext_ln29_fu_469_p1;
wire  signed [28:0] add_ln29_13_fu_508_p0;
wire   [28:0] grp_fu_570_p3;
wire  signed [28:0] grp_fu_561_p3;
wire  signed [28:0] grp_fu_588_p3;
wire  signed [28:0] grp_fu_579_p3;
(* use_dsp48 = "no" *) wire   [28:0] add_ln29_9_fu_512_p2;
wire   [28:0] add_ln29_14_fu_516_p2;
wire   [12:0] grp_fu_541_p2;
wire   [13:0] grp_fu_549_p1;
reg    grp_fu_535_ce;
reg    grp_fu_541_ce;
reg    grp_fu_549_ce;
reg    grp_fu_555_ce;
reg    grp_fu_561_ce;
reg    grp_fu_570_ce;
reg    grp_fu_579_ce;
reg    grp_fu_588_ce;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [28:0] grp_fu_549_p10;
reg    ap_condition_327;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_done_reg = 1'b0;
end

dct_Loop_Row_DCT_Loop_proc_dct_1d_short_short_dct_coeff_table_ROM_AUTO_1R #(
    .DataWidth( 14 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_1d_short_short_dct_coeff_table_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_1d_short_short_dct_coeff_table_address0),
    .ce0(dct_1d_short_short_dct_coeff_table_ce0),
    .q0(dct_1d_short_short_dct_coeff_table_q0)
);

dct_Loop_Row_DCT_Loop_proc_dct_1d_short_short_dct_coeff_table_1_ROM_AUTO_1R #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_1d_short_short_dct_coeff_table_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_1d_short_short_dct_coeff_table_1_address0),
    .ce0(dct_1d_short_short_dct_coeff_table_1_ce0),
    .q0(dct_1d_short_short_dct_coeff_table_1_q0)
);

dct_Loop_Row_DCT_Loop_proc_dct_1d_short_short_dct_coeff_table_2_ROM_AUTO_1R #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_1d_short_short_dct_coeff_table_2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_1d_short_short_dct_coeff_table_2_address0),
    .ce0(dct_1d_short_short_dct_coeff_table_2_ce0),
    .q0(dct_1d_short_short_dct_coeff_table_2_q0)
);

dct_Loop_Row_DCT_Loop_proc_dct_1d_short_short_dct_coeff_table_3_ROM_AUTO_1R #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_1d_short_short_dct_coeff_table_3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_1d_short_short_dct_coeff_table_3_address0),
    .ce0(dct_1d_short_short_dct_coeff_table_3_ce0),
    .q0(dct_1d_short_short_dct_coeff_table_3_q0)
);

dct_Loop_Row_DCT_Loop_proc_dct_1d_short_short_dct_coeff_table_4_ROM_AUTO_1R #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_1d_short_short_dct_coeff_table_4_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_1d_short_short_dct_coeff_table_4_address0),
    .ce0(dct_1d_short_short_dct_coeff_table_4_ce0),
    .q0(dct_1d_short_short_dct_coeff_table_4_q0)
);

dct_Loop_Row_DCT_Loop_proc_dct_1d_short_short_dct_coeff_table_5_ROM_AUTO_1R #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_1d_short_short_dct_coeff_table_5_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_1d_short_short_dct_coeff_table_5_address0),
    .ce0(dct_1d_short_short_dct_coeff_table_5_ce0),
    .q0(dct_1d_short_short_dct_coeff_table_5_q0)
);

dct_Loop_Row_DCT_Loop_proc_dct_1d_short_short_dct_coeff_table_6_ROM_AUTO_1R #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_1d_short_short_dct_coeff_table_6_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_1d_short_short_dct_coeff_table_6_address0),
    .ce0(dct_1d_short_short_dct_coeff_table_6_ce0),
    .q0(dct_1d_short_short_dct_coeff_table_6_q0)
);

dct_Loop_Row_DCT_Loop_proc_dct_1d_short_short_dct_coeff_table_7_ROM_AUTO_1R #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_1d_short_short_dct_coeff_table_7_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_1d_short_short_dct_coeff_table_7_address0),
    .ce0(dct_1d_short_short_dct_coeff_table_7_ce0),
    .q0(dct_1d_short_short_dct_coeff_table_7_q0)
);

dct_mul_mul_16s_15s_29_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 29 ))
mul_mul_16s_15s_29_4_1_U49(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(col_inbuf_4_q0),
    .din1(dct_1d_short_short_dct_coeff_table_4_q0),
    .ce(grp_fu_535_ce),
    .dout(grp_fu_535_p2)
);

dct_mac_muladd_16s_15s_13ns_29_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 13 ),
    .dout_WIDTH( 29 ))
mac_muladd_16s_15s_13ns_29_4_1_U50(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(col_inbuf_7_q0),
    .din1(dct_1d_short_short_dct_coeff_table_7_q0),
    .din2(grp_fu_541_p2),
    .ce(grp_fu_541_ce),
    .dout(grp_fu_541_p3)
);

dct_mul_mul_16s_14ns_29_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 14 ),
    .dout_WIDTH( 29 ))
mul_mul_16s_14ns_29_4_1_U51(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(col_inbuf_q0),
    .din1(grp_fu_549_p1),
    .ce(grp_fu_549_ce),
    .dout(grp_fu_549_p2)
);

dct_mul_mul_16s_15s_29_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 29 ))
mul_mul_16s_15s_29_4_1_U52(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(col_inbuf_2_q0),
    .din1(dct_1d_short_short_dct_coeff_table_2_q0),
    .ce(grp_fu_555_ce),
    .dout(grp_fu_555_p2)
);

dct_mac_muladd_16s_15s_29s_29_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
mac_muladd_16s_15s_29s_29_4_1_U53(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(col_inbuf_5_q0),
    .din1(dct_1d_short_short_dct_coeff_table_5_q0),
    .din2(grp_fu_535_p2),
    .ce(grp_fu_561_ce),
    .dout(grp_fu_561_p3)
);

dct_mac_muladd_16s_15s_29ns_29_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
mac_muladd_16s_15s_29ns_29_4_1_U54(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(col_inbuf_6_q0),
    .din1(dct_1d_short_short_dct_coeff_table_6_q0),
    .din2(grp_fu_541_p3),
    .ce(grp_fu_570_ce),
    .dout(grp_fu_570_p3)
);

dct_mac_muladd_16s_15s_29s_29_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
mac_muladd_16s_15s_29s_29_4_1_U55(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(col_inbuf_1_q0),
    .din1(coeff_8_reg_782),
    .din2(grp_fu_549_p2),
    .ce(grp_fu_579_ce),
    .dout(grp_fu_579_p3)
);

dct_mac_muladd_16s_15s_29s_29_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
mac_muladd_16s_15s_29s_29_4_1_U56(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(col_inbuf_3_q0),
    .din1(coeff_10_reg_792),
    .din2(grp_fu_555_p2),
    .ce(grp_fu_588_ce),
    .dout(grp_fu_588_p3)
);

dct_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int),
    .ap_continue(ap_continue),
    .ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_327)) begin
        if ((icmp_ln62_fu_331_p2 == 1'd0)) begin
            i_fu_84 <= select_ln42_6_fu_369_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_84 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_327)) begin
        if ((icmp_ln62_fu_331_p2 == 1'd0)) begin
            indvar_flatten_fu_88 <= add_ln62_1_fu_337_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_88 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_327)) begin
        if ((icmp_ln62_fu_331_p2 == 1'd0)) begin
            k_fu_80 <= add_ln23_fu_409_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            k_fu_80 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln29_13_reg_847 <= add_ln29_13_fu_508_p2;
        add_ln29_15_reg_772 <= add_ln29_15_fu_472_p2;
        add_ln29_15_reg_772_pp0_iter3_reg <= add_ln29_15_reg_772;
        add_ln29_15_reg_772_pp0_iter4_reg <= add_ln29_15_reg_772_pp0_iter3_reg;
        add_ln29_15_reg_772_pp0_iter5_reg <= add_ln29_15_reg_772_pp0_iter4_reg;
        add_ln29_15_reg_772_pp0_iter6_reg <= add_ln29_15_reg_772_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        coeff_10_reg_792 <= dct_1d_short_short_dct_coeff_table_3_q0;
        coeff_8_reg_782 <= dct_1d_short_short_dct_coeff_table_1_q0;
        trunc_ln_reg_852 <= {{add_ln29_14_fu_516_p2[28:13]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        select_ln42_reg_622_pp0_iter1_reg <= select_ln42_reg_622;
        trunc_ln29_reg_627_pp0_iter1_reg <= trunc_ln29_reg_627;
        zext_ln42_reg_632_pp0_iter1_reg[2 : 0] <= zext_ln42_reg_632[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln62_fu_331_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln42_reg_622 <= select_ln42_fu_361_p3;
        trunc_ln29_reg_627 <= trunc_ln29_fu_377_p1;
        zext_ln23_reg_652[3 : 0] <= zext_ln23_fu_403_p1[3 : 0];
        zext_ln42_reg_632[2 : 0] <= zext_ln42_fu_397_p1[2 : 0];
    end
end

always @ (*) begin
    if (((icmp_ln62_fu_331_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_84;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_88;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_load = 4'd0;
    end else begin
        ap_sig_allocacmp_k_load = k_fu_80;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        col_inbuf_1_ce0 = 1'b1;
    end else begin
        col_inbuf_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        col_inbuf_2_ce0 = 1'b1;
    end else begin
        col_inbuf_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        col_inbuf_3_ce0 = 1'b1;
    end else begin
        col_inbuf_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        col_inbuf_4_ce0 = 1'b1;
    end else begin
        col_inbuf_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        col_inbuf_5_ce0 = 1'b1;
    end else begin
        col_inbuf_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        col_inbuf_6_ce0 = 1'b1;
    end else begin
        col_inbuf_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        col_inbuf_7_ce0 = 1'b1;
    end else begin
        col_inbuf_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        col_inbuf_ce0 = 1'b1;
    end else begin
        col_inbuf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        col_outbuf_ce0 = 1'b1;
    end else begin
        col_outbuf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        col_outbuf_we0 = 1'b1;
    end else begin
        col_outbuf_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dct_1d_short_short_dct_coeff_table_1_ce0 = 1'b1;
    end else begin
        dct_1d_short_short_dct_coeff_table_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dct_1d_short_short_dct_coeff_table_2_ce0 = 1'b1;
    end else begin
        dct_1d_short_short_dct_coeff_table_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dct_1d_short_short_dct_coeff_table_3_ce0 = 1'b1;
    end else begin
        dct_1d_short_short_dct_coeff_table_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dct_1d_short_short_dct_coeff_table_4_ce0 = 1'b1;
    end else begin
        dct_1d_short_short_dct_coeff_table_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dct_1d_short_short_dct_coeff_table_5_ce0 = 1'b1;
    end else begin
        dct_1d_short_short_dct_coeff_table_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dct_1d_short_short_dct_coeff_table_6_ce0 = 1'b1;
    end else begin
        dct_1d_short_short_dct_coeff_table_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dct_1d_short_short_dct_coeff_table_7_ce0 = 1'b1;
    end else begin
        dct_1d_short_short_dct_coeff_table_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dct_1d_short_short_dct_coeff_table_ce0 = 1'b1;
    end else begin
        dct_1d_short_short_dct_coeff_table_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_535_ce = 1'b1;
    end else begin
        grp_fu_535_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_541_ce = 1'b1;
    end else begin
        grp_fu_541_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_549_ce = 1'b1;
    end else begin
        grp_fu_549_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_555_ce = 1'b1;
    end else begin
        grp_fu_555_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_561_ce = 1'b1;
    end else begin
        grp_fu_561_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_570_ce = 1'b1;
    end else begin
        grp_fu_570_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_579_ce = 1'b1;
    end else begin
        grp_fu_579_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_588_ce = 1'b1;
    end else begin
        grp_fu_588_ce = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln23_fu_409_p2 = (select_ln42_fu_361_p3 + 4'd1);

assign add_ln29_13_fu_508_p0 = grp_fu_570_p3;

assign add_ln29_13_fu_508_p2 = ($signed(add_ln29_13_fu_508_p0) + $signed(grp_fu_561_p3));

assign add_ln29_14_fu_516_p2 = (add_ln29_13_reg_847 + add_ln29_9_fu_512_p2);

assign add_ln29_15_fu_472_p2 = (tmp_3_fu_446_p3 + zext_ln29_fu_469_p1);

assign add_ln29_9_fu_512_p2 = ($signed(grp_fu_588_p3) + $signed(grp_fu_579_p3));

assign add_ln62_1_fu_337_p2 = (ap_sig_allocacmp_indvar_flatten_load + 7'd1);

assign add_ln62_fu_349_p2 = (ap_sig_allocacmp_i_load + 4'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_done_reg == 1'b1) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_done_reg == 1'b1) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_327 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign col_inbuf_1_address0 = zext_ln42_reg_632_pp0_iter1_reg;

assign col_inbuf_2_address0 = zext_ln42_reg_632;

assign col_inbuf_3_address0 = zext_ln42_reg_632_pp0_iter1_reg;

assign col_inbuf_4_address0 = zext_ln42_fu_397_p1;

assign col_inbuf_5_address0 = zext_ln42_reg_632;

assign col_inbuf_6_address0 = zext_ln42_reg_632;

assign col_inbuf_7_address0 = zext_ln42_fu_397_p1;

assign col_inbuf_address0 = zext_ln42_reg_632;

assign col_outbuf_address0 = zext_ln29_2_fu_531_p1;

assign col_outbuf_d0 = trunc_ln_reg_852;

assign dct_1d_short_short_dct_coeff_table_1_address0 = zext_ln23_reg_652;

assign dct_1d_short_short_dct_coeff_table_2_address0 = zext_ln23_reg_652;

assign dct_1d_short_short_dct_coeff_table_3_address0 = zext_ln23_reg_652;

assign dct_1d_short_short_dct_coeff_table_4_address0 = zext_ln23_fu_403_p1;

assign dct_1d_short_short_dct_coeff_table_5_address0 = zext_ln23_reg_652;

assign dct_1d_short_short_dct_coeff_table_6_address0 = zext_ln23_reg_652;

assign dct_1d_short_short_dct_coeff_table_7_address0 = zext_ln23_fu_403_p1;

assign dct_1d_short_short_dct_coeff_table_address0 = zext_ln23_reg_652;

assign grp_fu_541_p2 = 29'd4096;

assign grp_fu_549_p1 = grp_fu_549_p10;

assign grp_fu_549_p10 = dct_1d_short_short_dct_coeff_table_q0;

assign icmp_ln23_fu_355_p2 = ((ap_sig_allocacmp_k_load == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln62_fu_331_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 7'd64) ? 1'b1 : 1'b0);

assign select_ln42_6_fu_369_p3 = ((icmp_ln23_fu_355_p2[0:0] == 1'b1) ? add_ln62_fu_349_p2 : ap_sig_allocacmp_i_load);

assign select_ln42_7_fu_389_p3 = ((icmp_ln23_fu_355_p2[0:0] == 1'b1) ? trunc_ln42_fu_381_p1 : trunc_ln42_3_fu_385_p1);

assign select_ln42_fu_361_p3 = ((icmp_ln23_fu_355_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_k_load);

assign tmp_3_fu_446_p3 = {{trunc_ln29_reg_627_pp0_iter1_reg}, {3'd0}};

assign trunc_ln29_fu_377_p1 = select_ln42_6_fu_369_p3[2:0];

assign trunc_ln42_3_fu_385_p1 = ap_sig_allocacmp_i_load[2:0];

assign trunc_ln42_fu_381_p1 = add_ln62_fu_349_p2[2:0];

assign zext_ln23_fu_403_p1 = select_ln42_fu_361_p3;

assign zext_ln29_2_fu_531_p1 = add_ln29_15_reg_772_pp0_iter6_reg;

assign zext_ln29_fu_469_p1 = select_ln42_reg_622_pp0_iter1_reg;

assign zext_ln42_fu_397_p1 = select_ln42_7_fu_389_p3;

always @ (posedge ap_clk) begin
    zext_ln42_reg_632[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln42_reg_632_pp0_iter1_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln23_reg_652[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end

endmodule //dct_Loop_Col_DCT_Loop_proc
