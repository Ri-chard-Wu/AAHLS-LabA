// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dct_dct_1d (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        p_read,
        p_read1,
        p_read2,
        p_read3,
        p_read4,
        p_read5,
        p_read6,
        p_read7,
        dst_address0,
        dst_ce0,
        dst_we0,
        dst_d0,
        dst_offset
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] p_read;
input  [15:0] p_read1;
input  [15:0] p_read2;
input  [15:0] p_read3;
input  [15:0] p_read4;
input  [15:0] p_read5;
input  [15:0] p_read6;
input  [15:0] p_read7;
output  [5:0] dst_address0;
output   dst_ce0;
output   dst_we0;
output  [15:0] dst_d0;
input  [2:0] dst_offset;

reg ap_idle;
reg dst_ce0;
reg dst_we0;

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
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln16_fu_301_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
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
wire   [5:0] tmp_fu_253_p3;
reg   [5:0] tmp_reg_451;
wire    ap_block_pp0_stage0_11001;
wire  signed [28:0] sext_ln8_fu_261_p1;
reg  signed [28:0] sext_ln8_reg_456;
wire  signed [28:0] sext_ln8_1_fu_265_p1;
reg  signed [28:0] sext_ln8_1_reg_461;
wire  signed [28:0] sext_ln8_2_fu_269_p1;
reg  signed [28:0] sext_ln8_2_reg_466;
wire  signed [28:0] sext_ln8_3_fu_273_p1;
reg  signed [28:0] sext_ln8_3_reg_471;
wire  signed [28:0] sext_ln8_4_fu_277_p1;
reg  signed [28:0] sext_ln8_4_reg_476;
wire  signed [28:0] sext_ln8_5_fu_281_p1;
reg  signed [28:0] sext_ln8_5_reg_481;
wire  signed [28:0] sext_ln8_6_fu_285_p1;
reg  signed [28:0] sext_ln8_6_reg_486;
wire  signed [28:0] sext_ln8_7_fu_289_p1;
reg  signed [28:0] sext_ln8_7_reg_491;
reg   [3:0] k_1_reg_496;
reg   [3:0] k_1_reg_496_pp0_iter1_reg;
reg   [3:0] k_1_reg_496_pp0_iter2_reg;
reg   [3:0] k_1_reg_496_pp0_iter3_reg;
reg   [3:0] k_1_reg_496_pp0_iter4_reg;
reg   [3:0] k_1_reg_496_pp0_iter5_reg;
reg   [3:0] k_1_reg_496_pp0_iter6_reg;
wire   [63:0] zext_ln16_fu_313_p1;
reg   [63:0] zext_ln16_reg_505;
reg  signed [14:0] coeff_1_reg_570;
reg  signed [14:0] coeff_3_reg_580;
wire  signed [28:0] grp_fu_390_p2;
wire   [28:0] grp_fu_395_p3;
wire  signed [28:0] grp_fu_402_p2;
wire  signed [28:0] grp_fu_407_p2;
(* use_dsp48 = "no" *) wire   [28:0] add_ln22_7_fu_354_p2;
reg   [28:0] add_ln22_7_reg_625;
reg   [15:0] trunc_ln_reg_630;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln22_1_fu_385_p1;
reg   [3:0] k_fu_78;
wire   [3:0] add_ln16_fu_307_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_k_1;
wire  signed [28:0] add_ln22_7_fu_354_p0;
wire   [28:0] grp_fu_420_p3;
wire  signed [28:0] grp_fu_412_p3;
wire  signed [28:0] grp_fu_436_p3;
wire  signed [28:0] grp_fu_428_p3;
(* use_dsp48 = "no" *) wire   [28:0] add_ln22_3_fu_358_p2;
wire   [28:0] add_ln22_fu_362_p2;
wire   [5:0] zext_ln22_fu_377_p1;
wire   [5:0] add_ln22_8_fu_380_p2;
wire  signed [15:0] grp_fu_390_p0;
wire  signed [15:0] grp_fu_395_p0;
wire   [12:0] grp_fu_395_p2;
wire  signed [15:0] grp_fu_402_p0;
wire   [13:0] grp_fu_402_p1;
wire  signed [15:0] grp_fu_407_p0;
wire  signed [15:0] grp_fu_412_p0;
wire  signed [15:0] grp_fu_420_p0;
wire  signed [15:0] grp_fu_428_p0;
wire  signed [15:0] grp_fu_436_p0;
reg    ap_done_reg;
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
wire   [28:0] grp_fu_402_p10;
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

dct_dct_1d_dct_1d_short_short_dct_coeff_table_ROM_AUTO_1R #(
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

dct_dct_1d_dct_1d_short_short_dct_coeff_table_1_ROM_AUTO_1R #(
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

dct_dct_1d_dct_1d_short_short_dct_coeff_table_2_ROM_AUTO_1R #(
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

dct_dct_1d_dct_1d_short_short_dct_coeff_table_3_ROM_AUTO_1R #(
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

dct_dct_1d_dct_1d_short_short_dct_coeff_table_4_ROM_AUTO_1R #(
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

dct_dct_1d_dct_1d_short_short_dct_coeff_table_5_ROM_AUTO_1R #(
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

dct_dct_1d_dct_1d_short_short_dct_coeff_table_6_ROM_AUTO_1R #(
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

dct_dct_1d_dct_1d_short_short_dct_coeff_table_7_ROM_AUTO_1R #(
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
mul_mul_16s_15s_29_4_1_U10(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_390_p0),
    .din1(dct_1d_short_short_dct_coeff_table_4_q0),
    .ce(1'b1),
    .dout(grp_fu_390_p2)
);

dct_mac_muladd_16s_15s_13ns_29_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 13 ),
    .dout_WIDTH( 29 ))
mac_muladd_16s_15s_13ns_29_4_1_U11(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_395_p0),
    .din1(dct_1d_short_short_dct_coeff_table_7_q0),
    .din2(grp_fu_395_p2),
    .ce(1'b1),
    .dout(grp_fu_395_p3)
);

dct_mul_mul_16s_14ns_29_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 14 ),
    .dout_WIDTH( 29 ))
mul_mul_16s_14ns_29_4_1_U12(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_402_p0),
    .din1(grp_fu_402_p1),
    .ce(1'b1),
    .dout(grp_fu_402_p2)
);

dct_mul_mul_16s_15s_29_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 29 ))
mul_mul_16s_15s_29_4_1_U13(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_407_p0),
    .din1(dct_1d_short_short_dct_coeff_table_2_q0),
    .ce(1'b1),
    .dout(grp_fu_407_p2)
);

dct_mac_muladd_16s_15s_29s_29_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
mac_muladd_16s_15s_29s_29_4_1_U14(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_412_p0),
    .din1(dct_1d_short_short_dct_coeff_table_5_q0),
    .din2(grp_fu_390_p2),
    .ce(1'b1),
    .dout(grp_fu_412_p3)
);

dct_mac_muladd_16s_15s_29ns_29_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
mac_muladd_16s_15s_29ns_29_4_1_U15(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_420_p0),
    .din1(dct_1d_short_short_dct_coeff_table_6_q0),
    .din2(grp_fu_395_p3),
    .ce(1'b1),
    .dout(grp_fu_420_p3)
);

dct_mac_muladd_16s_15s_29s_29_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
mac_muladd_16s_15s_29s_29_4_1_U16(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_428_p0),
    .din1(coeff_1_reg_570),
    .din2(grp_fu_402_p2),
    .ce(1'b1),
    .dout(grp_fu_428_p3)
);

dct_mac_muladd_16s_15s_29s_29_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
mac_muladd_16s_15s_29s_29_4_1_U17(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_436_p0),
    .din1(coeff_3_reg_580),
    .din2(grp_fu_407_p2),
    .ce(1'b1),
    .dout(grp_fu_436_p3)
);

dct_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
    .ap_done_int(ap_done_int)
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln16_fu_301_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            k_fu_78 <= add_ln16_fu_307_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            k_fu_78 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln22_7_reg_625 <= add_ln22_7_fu_354_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        coeff_1_reg_570 <= dct_1d_short_short_dct_coeff_table_1_q0;
        coeff_3_reg_580 <= dct_1d_short_short_dct_coeff_table_3_q0;
        k_1_reg_496_pp0_iter2_reg <= k_1_reg_496_pp0_iter1_reg;
        k_1_reg_496_pp0_iter3_reg <= k_1_reg_496_pp0_iter2_reg;
        k_1_reg_496_pp0_iter4_reg <= k_1_reg_496_pp0_iter3_reg;
        k_1_reg_496_pp0_iter5_reg <= k_1_reg_496_pp0_iter4_reg;
        k_1_reg_496_pp0_iter6_reg <= k_1_reg_496_pp0_iter5_reg;
        trunc_ln_reg_630 <= {{add_ln22_fu_362_p2[28:13]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        k_1_reg_496 <= ap_sig_allocacmp_k_1;
        k_1_reg_496_pp0_iter1_reg <= k_1_reg_496;
        sext_ln8_1_reg_461 <= sext_ln8_1_fu_265_p1;
        sext_ln8_2_reg_466 <= sext_ln8_2_fu_269_p1;
        sext_ln8_3_reg_471 <= sext_ln8_3_fu_273_p1;
        sext_ln8_4_reg_476 <= sext_ln8_4_fu_277_p1;
        sext_ln8_5_reg_481 <= sext_ln8_5_fu_281_p1;
        sext_ln8_6_reg_486 <= sext_ln8_6_fu_285_p1;
        sext_ln8_7_reg_491 <= sext_ln8_7_fu_289_p1;
        sext_ln8_reg_456 <= sext_ln8_fu_261_p1;
        tmp_reg_451[5 : 3] <= tmp_fu_253_p3[5 : 3];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_301_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        zext_ln16_reg_505[3 : 0] <= zext_ln16_fu_313_p1[3 : 0];
    end
end

always @ (*) begin
    if (((icmp_ln16_fu_301_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_1 = 4'd0;
    end else begin
        ap_sig_allocacmp_k_1 = k_fu_78;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        dst_ce0 = 1'b1;
    end else begin
        dst_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        dst_we0 = 1'b1;
    end else begin
        dst_we0 = 1'b0;
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

assign add_ln16_fu_307_p2 = (ap_sig_allocacmp_k_1 + 4'd1);

assign add_ln22_3_fu_358_p2 = ($signed(grp_fu_436_p3) + $signed(grp_fu_428_p3));

assign add_ln22_7_fu_354_p0 = grp_fu_420_p3;

assign add_ln22_7_fu_354_p2 = ($signed(add_ln22_7_fu_354_p0) + $signed(grp_fu_412_p3));

assign add_ln22_8_fu_380_p2 = (tmp_reg_451 + zext_ln22_fu_377_p1);

assign add_ln22_fu_362_p2 = (add_ln22_7_reg_625 + add_ln22_3_fu_358_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign dct_1d_short_short_dct_coeff_table_1_address0 = zext_ln16_reg_505;

assign dct_1d_short_short_dct_coeff_table_2_address0 = zext_ln16_reg_505;

assign dct_1d_short_short_dct_coeff_table_3_address0 = zext_ln16_reg_505;

assign dct_1d_short_short_dct_coeff_table_4_address0 = zext_ln16_fu_313_p1;

assign dct_1d_short_short_dct_coeff_table_5_address0 = zext_ln16_reg_505;

assign dct_1d_short_short_dct_coeff_table_6_address0 = zext_ln16_reg_505;

assign dct_1d_short_short_dct_coeff_table_7_address0 = zext_ln16_fu_313_p1;

assign dct_1d_short_short_dct_coeff_table_address0 = zext_ln16_reg_505;

assign dst_address0 = zext_ln22_1_fu_385_p1;

assign dst_d0 = trunc_ln_reg_630;

assign grp_fu_390_p0 = sext_ln8_4_reg_476;

assign grp_fu_395_p0 = sext_ln8_7_reg_491;

assign grp_fu_395_p2 = 29'd4096;

assign grp_fu_402_p0 = sext_ln8_reg_456;

assign grp_fu_402_p1 = grp_fu_402_p10;

assign grp_fu_402_p10 = dct_1d_short_short_dct_coeff_table_q0;

assign grp_fu_407_p0 = sext_ln8_2_reg_466;

assign grp_fu_412_p0 = sext_ln8_5_reg_481;

assign grp_fu_420_p0 = sext_ln8_6_reg_486;

assign grp_fu_428_p0 = sext_ln8_1_reg_461;

assign grp_fu_436_p0 = sext_ln8_3_reg_471;

assign icmp_ln16_fu_301_p2 = ((ap_sig_allocacmp_k_1 == 4'd8) ? 1'b1 : 1'b0);

assign sext_ln8_1_fu_265_p1 = $signed(p_read1);

assign sext_ln8_2_fu_269_p1 = $signed(p_read2);

assign sext_ln8_3_fu_273_p1 = $signed(p_read3);

assign sext_ln8_4_fu_277_p1 = $signed(p_read4);

assign sext_ln8_5_fu_281_p1 = $signed(p_read5);

assign sext_ln8_6_fu_285_p1 = $signed(p_read6);

assign sext_ln8_7_fu_289_p1 = $signed(p_read7);

assign sext_ln8_fu_261_p1 = $signed(p_read);

assign tmp_fu_253_p3 = {{dst_offset}, {3'd0}};

assign zext_ln16_fu_313_p1 = ap_sig_allocacmp_k_1;

assign zext_ln22_1_fu_385_p1 = add_ln22_8_fu_380_p2;

assign zext_ln22_fu_377_p1 = k_1_reg_496_pp0_iter6_reg;

always @ (posedge ap_clk) begin
    tmp_reg_451[2:0] <= 3'b000;
    zext_ln16_reg_505[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end

endmodule //dct_dct_1d
