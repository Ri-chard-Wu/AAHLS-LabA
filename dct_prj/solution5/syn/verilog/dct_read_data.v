// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dct_read_data (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        input_r_address0,
        input_r_ce0,
        input_r_q0,
        buf_0_address0,
        buf_0_ce0,
        buf_0_we0,
        buf_0_d0,
        buf_1_address0,
        buf_1_ce0,
        buf_1_we0,
        buf_1_d0,
        buf_2_address0,
        buf_2_ce0,
        buf_2_we0,
        buf_2_d0,
        buf_3_address0,
        buf_3_ce0,
        buf_3_we0,
        buf_3_d0,
        buf_4_address0,
        buf_4_ce0,
        buf_4_we0,
        buf_4_d0,
        buf_5_address0,
        buf_5_ce0,
        buf_5_we0,
        buf_5_d0,
        buf_6_address0,
        buf_6_ce0,
        buf_6_we0,
        buf_6_d0,
        buf_7_address0,
        buf_7_ce0,
        buf_7_we0,
        buf_7_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [5:0] input_r_address0;
output   input_r_ce0;
input  [15:0] input_r_q0;
output  [2:0] buf_0_address0;
output   buf_0_ce0;
output   buf_0_we0;
output  [15:0] buf_0_d0;
output  [2:0] buf_1_address0;
output   buf_1_ce0;
output   buf_1_we0;
output  [15:0] buf_1_d0;
output  [2:0] buf_2_address0;
output   buf_2_ce0;
output   buf_2_we0;
output  [15:0] buf_2_d0;
output  [2:0] buf_3_address0;
output   buf_3_ce0;
output   buf_3_we0;
output  [15:0] buf_3_d0;
output  [2:0] buf_4_address0;
output   buf_4_ce0;
output   buf_4_we0;
output  [15:0] buf_4_d0;
output  [2:0] buf_5_address0;
output   buf_5_ce0;
output   buf_5_we0;
output  [15:0] buf_5_d0;
output  [2:0] buf_6_address0;
output   buf_6_ce0;
output   buf_6_we0;
output  [15:0] buf_6_d0;
output  [2:0] buf_7_address0;
output   buf_7_ce0;
output   buf_7_we0;
output  [15:0] buf_7_d0;

reg ap_idle;
reg input_r_ce0;
reg buf_0_ce0;
reg buf_0_we0;
reg buf_1_ce0;
reg buf_1_we0;
reg buf_2_ce0;
reg buf_2_we0;
reg buf_3_ce0;
reg buf_3_we0;
reg buf_4_ce0;
reg buf_4_we0;
reg buf_5_ce0;
reg buf_5_we0;
reg buf_6_ce0;
reg buf_6_we0;
reg buf_7_ce0;
reg buf_7_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln79_fu_227_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [3:0] select_ln79_1_fu_265_p3;
reg   [3:0] select_ln79_1_reg_350;
reg    ap_block_pp0_stage0_11001;
wire   [2:0] trunc_ln82_fu_277_p1;
reg   [2:0] trunc_ln82_reg_355;
wire   [63:0] zext_ln82_fu_289_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln79_fu_315_p1;
reg   [3:0] c_fu_72;
wire   [3:0] add_ln81_fu_294_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_c_load;
reg   [3:0] r_fu_76;
reg   [3:0] ap_sig_allocacmp_r_load;
reg   [6:0] indvar_flatten_fu_80;
wire   [6:0] add_ln79_1_fu_233_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [0:0] icmp_ln81_fu_251_p2;
wire   [3:0] add_ln79_fu_245_p2;
wire   [3:0] select_ln79_fu_257_p3;
wire   [2:0] trunc_ln79_fu_273_p1;
wire   [5:0] or_ln_fu_281_p3;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_176;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

dct_flow_control_loop_pipe flow_control_loop_pipe_U(
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
    .ap_continue(ap_continue)
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((1'b1 == ap_condition_176)) begin
        if ((icmp_ln79_fu_227_p2 == 1'd0)) begin
            c_fu_72 <= add_ln81_fu_294_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            c_fu_72 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_176)) begin
        if ((icmp_ln79_fu_227_p2 == 1'd0)) begin
            indvar_flatten_fu_80 <= add_ln79_1_fu_233_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_80 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_176)) begin
        if ((icmp_ln79_fu_227_p2 == 1'd0)) begin
            r_fu_76 <= select_ln79_1_fu_265_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            r_fu_76 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln79_fu_227_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln79_1_reg_350 <= select_ln79_1_fu_265_p3;
        trunc_ln82_reg_355 <= trunc_ln82_fu_277_p1;
    end
end

always @ (*) begin
    if (((icmp_ln79_fu_227_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_c_load = 4'd0;
    end else begin
        ap_sig_allocacmp_c_load = c_fu_72;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_80;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_r_load = 4'd0;
    end else begin
        ap_sig_allocacmp_r_load = r_fu_76;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_0_ce0 = 1'b1;
    end else begin
        buf_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln82_reg_355 == 3'd0))) begin
        buf_0_we0 = 1'b1;
    end else begin
        buf_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_1_ce0 = 1'b1;
    end else begin
        buf_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln82_reg_355 == 3'd1))) begin
        buf_1_we0 = 1'b1;
    end else begin
        buf_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_2_ce0 = 1'b1;
    end else begin
        buf_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln82_reg_355 == 3'd2))) begin
        buf_2_we0 = 1'b1;
    end else begin
        buf_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_3_ce0 = 1'b1;
    end else begin
        buf_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln82_reg_355 == 3'd3))) begin
        buf_3_we0 = 1'b1;
    end else begin
        buf_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_4_ce0 = 1'b1;
    end else begin
        buf_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln82_reg_355 == 3'd4))) begin
        buf_4_we0 = 1'b1;
    end else begin
        buf_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_5_ce0 = 1'b1;
    end else begin
        buf_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln82_reg_355 == 3'd5))) begin
        buf_5_we0 = 1'b1;
    end else begin
        buf_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_6_ce0 = 1'b1;
    end else begin
        buf_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln82_reg_355 == 3'd6))) begin
        buf_6_we0 = 1'b1;
    end else begin
        buf_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buf_7_ce0 = 1'b1;
    end else begin
        buf_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln82_reg_355 == 3'd7))) begin
        buf_7_we0 = 1'b1;
    end else begin
        buf_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_r_ce0 = 1'b1;
    end else begin
        input_r_ce0 = 1'b0;
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

assign add_ln79_1_fu_233_p2 = (ap_sig_allocacmp_indvar_flatten_load + 7'd1);

assign add_ln79_fu_245_p2 = (ap_sig_allocacmp_r_load + 4'd1);

assign add_ln81_fu_294_p2 = (select_ln79_fu_257_p3 + 4'd1);

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

always @ (*) begin
    ap_condition_176 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign buf_0_address0 = zext_ln79_fu_315_p1;

assign buf_0_d0 = input_r_q0;

assign buf_1_address0 = zext_ln79_fu_315_p1;

assign buf_1_d0 = input_r_q0;

assign buf_2_address0 = zext_ln79_fu_315_p1;

assign buf_2_d0 = input_r_q0;

assign buf_3_address0 = zext_ln79_fu_315_p1;

assign buf_3_d0 = input_r_q0;

assign buf_4_address0 = zext_ln79_fu_315_p1;

assign buf_4_d0 = input_r_q0;

assign buf_5_address0 = zext_ln79_fu_315_p1;

assign buf_5_d0 = input_r_q0;

assign buf_6_address0 = zext_ln79_fu_315_p1;

assign buf_6_d0 = input_r_q0;

assign buf_7_address0 = zext_ln79_fu_315_p1;

assign buf_7_d0 = input_r_q0;

assign icmp_ln79_fu_227_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln81_fu_251_p2 = ((ap_sig_allocacmp_c_load == 4'd8) ? 1'b1 : 1'b0);

assign input_r_address0 = zext_ln82_fu_289_p1;

assign or_ln_fu_281_p3 = {{trunc_ln79_fu_273_p1}, {trunc_ln82_fu_277_p1}};

assign select_ln79_1_fu_265_p3 = ((icmp_ln81_fu_251_p2[0:0] == 1'b1) ? add_ln79_fu_245_p2 : ap_sig_allocacmp_r_load);

assign select_ln79_fu_257_p3 = ((icmp_ln81_fu_251_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_c_load);

assign trunc_ln79_fu_273_p1 = select_ln79_1_fu_265_p3[2:0];

assign trunc_ln82_fu_277_p1 = select_ln79_fu_257_p3[2:0];

assign zext_ln79_fu_315_p1 = select_ln79_1_reg_350;

assign zext_ln82_fu_289_p1 = or_ln_fu_281_p3;

endmodule //dct_read_data
