//****************************************************************************
//
// Copyright 2017-2023 Vivante Corporation
//
// Portions Copyright (c) 2003 Silicon Image GmbH, used with permission
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
//****************************************************************************
// Auto-generated file on 11/03/2023.
//
//****************************************************************************

module vsisp_marvin_mi_fifo
  (
   clk, 
   reset_n,
   soft_rst,   
   m_hclk, 
   reset_m_hclk_n,
   soft_rst_m_hclk,
   test_mode,
   sp_rot_in,
   sw_mi_fifo_depth_ctrl,
   mp_y_fifo_data_in, 
   mp_y_fifo_h_end_in, 
   mp_y_fifo_v_end_in, 
   mp_y_fifo_write64, 
   mp_y_fifo_full, 
   mp_y_fifo_sram_buf_full,
   mp_cb_fifo_data_in, 
   mp_cb_fifo_h_end_in, 
   mp_cb_fifo_v_end_in, 
   mp_cb_fifo_write64, 
   mp_cb_fifo_full,
   mp_cb_fifo_sram_buf_full,
   mp_cr_fifo_data_in, 
   mp_cr_fifo_h_end_in, 
   mp_cr_fifo_v_end_in, 
   mp_cr_fifo_write64, 
   mp_cr_fifo_full,
   mp_cr_fifo_sram_buf_full,
   sp_y_fifo_data_in, 
   sp_y_fifo_h_end_in, 
   sp_y_fifo_v_end_in, 
   sp_y_fifo_write64, 
   sp_y_fifo_full, 
   sp_cb_fifo_data_in, 
   sp_cb_fifo_h_end_in, 
   sp_cb_fifo_v_end_in, 
   sp_cb_fifo_write64, 
   sp_cb_fifo_full,
   sp_cr_fifo_data_in, 
   sp_cr_fifo_h_end_in, 
   sp_cr_fifo_v_end_in, 
   sp_cr_fifo_write64, 
   sp_cr_fifo_full,
   mp_fifo_read64, 
   mp_fifo_select,
   mp_fifo_data_out, 
   mp_fifo_h_end_out,
   mp_fifo_v_end_out,
   sp_fifo_read64, 
   sp_fifo_select,
   sp_fifo_data_out, 
   sp_fifo_h_end_out,
   sp_fifo_v_end_out,   
   mp_y_fifo_fill_level, 
   mp_y_fifo_flush,
   mp_cb_fifo_fill_level, 
   mp_cb_fifo_flush,                     
   mp_cr_fifo_fill_level, 
   mp_cr_fifo_flush,
   sp_y_fifo_fill_level, 
   sp_y_fifo_flush,
   sp_cb_fifo_fill_level, 
   sp_cb_fifo_flush,
   sp_cr_fifo_fill_level, 
   sp_cr_fifo_flush,
   mp_y_fifo_sram_DIN,
   mp_y_fifo_sram_DOUT,
   mp_y_fifo_sram_ADDR,
   mp_y_fifo_sram_CEN,
   mp_y_fifo_sram_WEN,
   mp_cb_fifo_sram_DIN,
   mp_cb_fifo_sram_DOUT,
   mp_cb_fifo_sram_ADDR,
   mp_cb_fifo_sram_CEN,
   mp_cb_fifo_sram_WEN,
   mp_cr_fifo_sram_DIN,
   mp_cr_fifo_sram_DOUT,
   mp_cr_fifo_sram_ADDR,
   mp_cr_fifo_sram_CEN,
   mp_cr_fifo_sram_WEN
   );
  `include "vsisp_isp.vh"
   `include "vsisp_ram_sizes.vh"
   parameter c_fifo_depth = 8;
   parameter c_addr_width = (c_fifo_depth <=   1) ? 0 : 
                            (c_fifo_depth <=   2) ? 1 : 
                            (c_fifo_depth <=   4) ? 2 : 
                            (c_fifo_depth <=   8) ? 3 : 
                            (c_fifo_depth <=  16) ? 4 : 
                            (c_fifo_depth <=  32) ? 5 : 
                            (c_fifo_depth <=  64) ? 6 : 
                            (c_fifo_depth <= 128) ? 7 : 8;
   input     clk; 
   input     reset_n;
   input     soft_rst; 
   input     m_hclk; 
   input     reset_m_hclk_n;
   input     soft_rst_m_hclk;
   input     test_mode;
   input     sp_rot_in;        
   input [1:0]  sw_mi_fifo_depth_ctrl;
   input [63:0] mp_y_fifo_data_in; 
   input        mp_y_fifo_h_end_in; 
   input        mp_y_fifo_v_end_in; 
   input        mp_y_fifo_write64; 
   output       mp_y_fifo_full;
   output       mp_y_fifo_sram_buf_full;
   input [63:0] mp_cb_fifo_data_in; 
   input        mp_cb_fifo_h_end_in; 
   input        mp_cb_fifo_v_end_in; 
   input        mp_cb_fifo_write64; 
   output       mp_cb_fifo_full;
   output       mp_cb_fifo_sram_buf_full;
   input [63:0] mp_cr_fifo_data_in; 
   input        mp_cr_fifo_h_end_in; 
   input        mp_cr_fifo_v_end_in; 
   input        mp_cr_fifo_write64; 
   output       mp_cr_fifo_full;
   output       mp_cr_fifo_sram_buf_full;
   input [63:0] sp_y_fifo_data_in; 
   input        sp_y_fifo_h_end_in; 
   input        sp_y_fifo_v_end_in; 
   input        sp_y_fifo_write64; 
   output       sp_y_fifo_full;
   input [63:0] sp_cb_fifo_data_in; 
   input        sp_cb_fifo_h_end_in; 
   input        sp_cb_fifo_v_end_in; 
   input        sp_cb_fifo_write64; 
   output       sp_cb_fifo_full;
   input [63:0] sp_cr_fifo_data_in; 
   input        sp_cr_fifo_h_end_in; 
   input        sp_cr_fifo_v_end_in; 
   input        sp_cr_fifo_write64; 
   output       sp_cr_fifo_full;
   input         mp_fifo_read64; 
   input [1:0]   mp_fifo_select;
   output [63:0] mp_fifo_data_out; 
   output        mp_fifo_h_end_out; 
   output        mp_fifo_v_end_out; 
   reg [63:0]    mp_fifo_data_out;
   reg           mp_fifo_h_end_out;
   reg           mp_fifo_v_end_out;
   input         sp_fifo_read64; 
   input [1:0]   sp_fifo_select;
   output [63:0] sp_fifo_data_out; 
   output        sp_fifo_h_end_out; 
   output        sp_fifo_v_end_out; 
   reg [63:0]    sp_fifo_data_out;
   reg           sp_fifo_h_end_out;
   reg           sp_fifo_v_end_out;
   output [c_addr_width:0] mp_y_fifo_fill_level; 
   output                  mp_y_fifo_flush; 
   reg                     viv_s0; 
   wire [63:0]             viv_s1; 
   wire                    viv_s2; 
   wire                    viv_s3; 
   output [c_addr_width:0] mp_cb_fifo_fill_level; 
   output                  mp_cb_fifo_flush; 
   reg                     viv_s4; 
   wire [63:0]             viv_s5; 
   wire                    viv_s6; 
   wire                    viv_s7; 
   output [c_addr_width:0] mp_cr_fifo_fill_level; 
   output                  mp_cr_fifo_flush; 
   reg                     viv_s8; 
   wire [63:0]             viv_s9; 
   wire                    viv_s10; 
   wire                    viv_s11; 
   output [c_addr_width:0] sp_y_fifo_fill_level; 
   output                  sp_y_fifo_flush; 
   reg                     viv_s12; 
   wire [63:0]             viv_s13; 
   wire                    viv_s14; 
   wire                    viv_s15; 
   output [c_addr_width:0] sp_cb_fifo_fill_level; 
   output                  sp_cb_fifo_flush; 
   reg                     viv_s16; 
   wire [63:0]             viv_s17; 
   wire                    viv_s18; 
   wire                    viv_s19; 
   output [c_addr_width:0] sp_cr_fifo_fill_level; 
   output                  sp_cr_fifo_flush; 
   reg                     viv_s20; 
   wire [63:0]             viv_s21; 
   wire                    viv_s22; 
   wire                    viv_s23; 
   input  [65:0]           mp_y_fifo_sram_DIN;
   output [65:0]           mp_y_fifo_sram_DOUT;
   output [ c_mi_mp_y_aw -1:0]mp_y_fifo_sram_ADDR;
   output                  mp_y_fifo_sram_CEN;
   output                  mp_y_fifo_sram_WEN;
   input  [65:0]           mp_cb_fifo_sram_DIN;
   output [65:0]           mp_cb_fifo_sram_DOUT;
   output [ c_mi_mp_c_aw -1:0]mp_cb_fifo_sram_ADDR;
   output                  mp_cb_fifo_sram_CEN;
   output                  mp_cb_fifo_sram_WEN;
   input  [65:0]           mp_cr_fifo_sram_DIN;
   output [65:0]           mp_cr_fifo_sram_DOUT;
   output [ c_mi_mp_c_aw -1:0]mp_cr_fifo_sram_ADDR;
   output                  mp_cr_fifo_sram_CEN;
   output                  mp_cr_fifo_sram_WEN;
   wire                    viv_s24;
   wire                    viv_s25;
   wire                    viv_s26; 
   wire                    viv_s27; 
   wire                    viv_s28; 
   wire                    viv_s29; 
   wire                    viv_s30; 
   wire                    viv_s31; 
   wire [65:0]             viv_s32;
   wire [65:0]             viv_s33;
   wire [65:0]             viv_s34;
   wire [65:0]             viv_s35;
   wire [65:0]             viv_s36;
   wire [65:0]             viv_s37;
   wire                    viv_s38, viv_s39;
   wire                    viv_s40, viv_s41;
   wire                    viv_s42, viv_s43;
   wire                    viv_s44, viv_s45;
   wire                    viv_s46, viv_s47;
   wire                    viv_s48, viv_s49;
   wire                    viv_s50;
   wire [63:0]             viv_s51; 
   wire                    viv_s52;
   wire                    viv_s53;
   wire                    viv_s54;
   wire [63:0]             viv_s55; 
   wire                    viv_s56;
   wire                    viv_s57;
   wire                    viv_s58;
   wire [63:0]             viv_s59; 
   wire                    viv_s60;
   wire                    viv_s61;
   wire viv_s62, viv_s63, viv_s64;
   vsisp_sync_fifo_reset_gen_wr u_sync_fifo_dma_rst_wr
     (
      .wr_clk    (clk),
      .reset_n   (reset_n ),
      .soft_reset(soft_rst),
      .test_mode (test_mode),
      .wr_reset_n(viv_s24)
      );
   vsisp_sync_fifo_reset_gen_rd u_sync_fifo_dma_rst_rd
     (
      .rd_clk    (m_hclk),
      .reset_n   (reset_m_hclk_n),
      .soft_reset(soft_rst),
      .test_mode (test_mode),
      .rd_reset_n(viv_s25)
      );
   assign viv_s38 = mp_y_fifo_write64;
   assign viv_s32 = {mp_y_fifo_data_in, mp_y_fifo_h_end_in, mp_y_fifo_v_end_in};
   assign viv_s40  = viv_s41 && !viv_s62;
   assign mp_y_sramfifo_err    = viv_s38 && !viv_s39;
   assign mp_y_fifo_full = !viv_s39;
   vsisp_mi_fifo_ram #(    
    .FIFO_DATA_WIDTH    ( 64+2            ),
    .FIFO_DEPTH         ( 80             ),
    .SRAM_ADDRWIDTH     ( 7               ),
    .FIFO_SRAM_REGS     ( 3               ),
    .FIFO_DESCRIPTION   ( "mi_sync_sram_y")) u_marvin_mi_mp_y_sramfifo(
    .clk                (clk                    ),
    .resetn             (viv_s24   ),
    .fifo_synch_reset   (viv_s24   ),
    .sw_fifo_depth_ctrl (sw_mi_fifo_depth_ctrl  ),
    .fifo_write_e_lz    (viv_s38   ),
    .fifo_write_data    (viv_s32   ),
    .fifo_read_e_lz     (viv_s40    ),
    .fifo_read_data     (viv_s35    ),
    .fifo_validread_am  (),
    .fifo_validwrite_vz (viv_s39),
    .fifo_validread_vz  (viv_s41 ),
    .fifo_sram_buf_full (mp_y_fifo_sram_buf_full ),
    .fifo_sram_DIN      (mp_y_fifo_sram_DIN     ),
    .fifo_sram_DOUT     (mp_y_fifo_sram_DOUT    ),
    .fifo_sram_ADDR     (mp_y_fifo_sram_ADDR    ),
    .fifo_sram_CEN      (mp_y_fifo_sram_CEN     ),
    .fifo_sram_WEN      (mp_y_fifo_sram_WEN     ));
   assign viv_s50 = viv_s40;
   assign viv_s51 = viv_s35[65:2];
   assign viv_s52= viv_s35[1];
   assign viv_s53= viv_s35[0];
   vsisp_mi_fifo_core #(c_fifo_depth) u_marvin_mi_mp_y_fifo
     (
      .wr_clk          (clk),
      .wr_reset_n      (viv_s24),
      .rd_clk          (m_hclk),
      .rd_reset_n      (viv_s25),
      .rotation        (1'b0),
      .wr_en           (viv_s50),
      .wdata           (viv_s51),
      .wr_h_end        (viv_s52),
      .wr_v_end        (viv_s53),
      .fifo_full       (viv_s62),     
      .rd_en           (viv_s0),
      .rdata           (viv_s1),
      .rd_h_end        (viv_s2),
      .rd_v_end        (viv_s3),
      .fifo_empty      (viv_s26),  
      .fifo_fill_level (mp_y_fifo_fill_level),
      .fifo_flush      (mp_y_fifo_flush)
      ); 
    assign mp_cb_fifo_sram_buf_full = 1'b0;
    assign mp_cb_fifo_sram_DOUT = 66'h0;
    assign mp_cb_fifo_sram_ADDR = 6'h0;
    assign mp_cb_fifo_sram_CEN = 1'b1;
    assign mp_cb_fifo_sram_WEN = 1'b1;
   vsisp_mi_fifo_core #(c_fifo_depth) u_marvin_mi_mp_cb_fifo
     (
      .wr_clk          (clk),
      .wr_reset_n      (viv_s24),
      .rd_clk          (m_hclk),
      .rd_reset_n      (viv_s25),
      .rotation        (1'b0),
      .wr_en           (mp_cb_fifo_write64),
      .wdata           (mp_cb_fifo_data_in),
      .wr_h_end        (mp_cb_fifo_h_end_in),
      .wr_v_end        (mp_cb_fifo_v_end_in),
      .fifo_full       (mp_cb_fifo_full),  
      .rd_en           (viv_s4),
      .rdata           (viv_s5),
      .rd_h_end        (viv_s6),
      .rd_v_end        (viv_s7),
      .fifo_empty      (viv_s27),  
      .fifo_fill_level (mp_cb_fifo_fill_level),
      .fifo_flush      (mp_cb_fifo_flush)
      ); 
    assign mp_cr_fifo_sram_buf_full = 1'b0;
    assign mp_cr_fifo_sram_DOUT = 66'h0;
    assign mp_cr_fifo_sram_ADDR = 6'b0;
    assign mp_cr_fifo_sram_CEN = 1'b1;
    assign mp_cr_fifo_sram_WEN = 1'b1;
   vsisp_mi_fifo_core #(c_fifo_depth) u_marvin_mi_mp_cr_fifo
     (
      .wr_clk          (clk),
      .wr_reset_n      (viv_s24),
      .rd_clk          (m_hclk),
      .rd_reset_n      (viv_s25),
      .rotation        (1'b0),
      .wr_en           (mp_cr_fifo_write64),
      .wdata           (mp_cr_fifo_data_in),
      .wr_h_end        (mp_cr_fifo_h_end_in),
      .wr_v_end        (mp_cr_fifo_v_end_in),
      .fifo_full       (mp_cr_fifo_full),          
      .rd_en           (viv_s8),
      .rdata           (viv_s9),
      .rd_h_end        (viv_s10),
      .rd_v_end        (viv_s11),
      .fifo_empty      (viv_s28),  
      .fifo_fill_level (mp_cr_fifo_fill_level),
      .fifo_flush      (mp_cr_fifo_flush)
      );
   always @(mp_fifo_read64 or mp_fifo_select or viv_s5 or 
            viv_s6 or viv_s7 or 
            viv_s9 or viv_s10 or 
            viv_s11 or viv_s1 or 
            viv_s2 or viv_s3) begin
      viv_s0  = 1'b0; 
      viv_s4 = 1'b0; 
      viv_s8 = 1'b0;
      case (mp_fifo_select)
        2'd0: begin  
           viv_s0  = mp_fifo_read64; 
           mp_fifo_data_out  = viv_s1; 
           mp_fifo_h_end_out = viv_s2; 
           mp_fifo_v_end_out = viv_s3; 
        end
        2'd1: begin  
           viv_s4 = mp_fifo_read64; 
           mp_fifo_data_out  = viv_s5; 
           mp_fifo_h_end_out = viv_s6; 
           mp_fifo_v_end_out = viv_s7; 
        end
        2'd2: begin  
           viv_s8 = mp_fifo_read64; 
           mp_fifo_data_out  = viv_s9; 
           mp_fifo_h_end_out = viv_s10; 
           mp_fifo_v_end_out = viv_s11; 
        end
        default: begin
           mp_fifo_data_out  = 64'h0; 
           mp_fifo_h_end_out = 1'b0; 
           mp_fifo_v_end_out = 1'b0; 
        end
      endcase 
   end
         vsisp_mi_fifo_core #(c_fifo_depth) u_marvin_mi_sp_y_fifo
                          (
                           .wr_clk          (clk),
                           .wr_reset_n      (viv_s24),
                           .rd_clk          (m_hclk),
                           .rd_reset_n      (viv_s25),
                           .rotation        (sp_rot_in),
                           .wr_en           (sp_y_fifo_write64),
                           .wdata           (sp_y_fifo_data_in),
                           .wr_h_end        (sp_y_fifo_h_end_in),
                           .wr_v_end        (sp_y_fifo_v_end_in),
                           .fifo_full       (sp_y_fifo_full),                      
                           .rd_en           (viv_s12),
                           .rdata           (viv_s13 ),
                           .rd_h_end        (viv_s14),
                           .rd_v_end        (viv_s15),
                           .fifo_empty      (viv_s29),  
                           .fifo_fill_level (sp_y_fifo_fill_level),
                           .fifo_flush      (sp_y_fifo_flush)
                           ); 
         vsisp_mi_fifo_core #(c_fifo_depth) u_marvin_mi_sp_cb_fifo
           (
            .wr_clk          (clk),
            .wr_reset_n      (viv_s24),
            .rd_clk          (m_hclk),
            .rd_reset_n      (viv_s25),
            .rotation        (sp_rot_in),
            .wr_en           (sp_cb_fifo_write64),
            .wdata           (sp_cb_fifo_data_in),
            .wr_h_end        (sp_cb_fifo_h_end_in),
            .wr_v_end        (sp_cb_fifo_v_end_in),
            .fifo_full       (sp_cb_fifo_full),                      
            .rd_en           (viv_s16),
            .rdata           (viv_s17),
            .rd_h_end        (viv_s18),
            .rd_v_end        (viv_s19),
            .fifo_empty      (viv_s30),  
            .fifo_fill_level (sp_cb_fifo_fill_level),
            .fifo_flush      (sp_cb_fifo_flush)
            ); 
         vsisp_mi_fifo_core #(c_fifo_depth) u_marvin_mi_sp_cr_fifo
           (
            .wr_clk          (clk),
            .wr_reset_n      (viv_s24),
            .rd_clk          (m_hclk),
            .rd_reset_n      (viv_s25),
            .rotation        (sp_rot_in),
            .wr_en           (sp_cr_fifo_write64),
            .wdata           (sp_cr_fifo_data_in),
            .wr_h_end        (sp_cr_fifo_h_end_in),
            .wr_v_end        (sp_cr_fifo_v_end_in),
            .fifo_full       (sp_cr_fifo_full),                      
            .rd_en           (viv_s20),
            .rdata           (viv_s21),
            .rd_h_end        (viv_s22),
            .rd_v_end        (viv_s23),
            .fifo_empty      (viv_s31),  
            .fifo_fill_level (sp_cr_fifo_fill_level),
            .fifo_flush      (sp_cr_fifo_flush)
            ); 
         always @(sp_fifo_read64 or sp_fifo_select or viv_s17 or
                  viv_s18 or viv_s19 or
                  viv_s21 or viv_s22 or
                  viv_s23 or viv_s13 or
                  viv_s14 or viv_s15) begin
            viv_s12  = 1'b0; 
            viv_s16 = 1'b0; 
            viv_s20 = 1'b0;
            case (sp_fifo_select)
              2'd0: begin  
                 viv_s12  = sp_fifo_read64; 
                 sp_fifo_data_out  = viv_s13; 
                 sp_fifo_h_end_out = viv_s14; 
                 sp_fifo_v_end_out = viv_s15; 
              end
              2'd1: begin  
                 viv_s16 = sp_fifo_read64; 
                 sp_fifo_data_out  = viv_s17; 
                 sp_fifo_h_end_out = viv_s18; 
                 sp_fifo_v_end_out = viv_s19; 
              end
              2'd2: begin  
                 viv_s20 = sp_fifo_read64; 
                 sp_fifo_data_out  = viv_s21; 
                 sp_fifo_h_end_out = viv_s22; 
                 sp_fifo_v_end_out = viv_s23; 
              end
              default: begin
                 sp_fifo_data_out      = 64'h0; 
                 sp_fifo_h_end_out     = 1'b0; 
                 sp_fifo_v_end_out     = 1'b0; 
              end
            endcase 
         end
endmodule
