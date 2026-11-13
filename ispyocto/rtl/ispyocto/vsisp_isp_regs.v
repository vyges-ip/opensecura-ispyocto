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

module vsisp_isp_regs
  (clk_cfg,
   reset_cfg_n,
   cfg_addr,
   cfg_wdata,
   cfg_rdata,
   cfg_rd,
   cfg_val,
   cfg_ack,
   regs_gen_cfg_upd,
   regs_cfg_upd,
   regs_isp_mode,
   regs_isp_enable,
   regs_disable_isp_clk,
   regs_awb_enable,
   regs_statistic_3a_sel,
   regs_inform_enable,
   regs_input_selection,
   regs_input_pin_map,
   regs_field_inv,
   regs_field_selection,
   regs_ccir_seq,
   regs_conv_422,
   regs_bayer_pat,
   regs_vsync_pol,
   regs_hsync_pol,
   regs_sample_edge,
   regs_acq_h_offs,
   regs_acq_v_offs,
   regs_acq_h_size,
   regs_acq_v_size,
   regs_out_h_offs,
   regs_out_v_offs,
   regs_out_h_size,
   regs_out_v_size,
   out_h_offs_shd,
   out_v_offs_shd,
   out_h_size_shd,
   out_v_size_shd,
   regs_dgain_enable,
   regs_dgain_r,
   regs_dgain_gr,
   regs_dgain_gb,
   regs_dgain_b,
   regs_demosaic_bypass,
   regs_demosaic_th,
   regs_gamma_out_enable,
   regs_equ_segm,
   regs_gamma_out_y0,
   regs_gamma_out_y1,
   regs_gamma_out_y2,
   regs_gamma_out_y3,
   regs_gamma_out_y4,
   regs_gamma_out_y5,
   regs_gamma_out_y6,
   regs_gamma_out_y7,
   regs_gamma_out_y8,
   regs_gamma_out_y9,
   regs_gamma_out_y10,
   regs_gamma_out_y11,
   regs_gamma_out_y12,
   regs_gamma_out_y13,
   regs_gamma_out_y14,
   regs_gamma_out_y15,
   regs_gamma_out_y16,
   regs_awb_meas_mode,
   regs_awb_max_en,
   regs_awb_mode,
   regs_awb_h_offs,
   regs_awb_v_offs,
   regs_awb_h_size,
   regs_awb_v_size,
   regs_awb_frames,
   regs_awb_ref_cb__max_b,
   regs_awb_ref_cr__max_r,
   regs_awb_max_y,
   regs_awb_min_y__max_g,
   regs_awb_min_c,
   regs_awb_max_csum,
   awb_white_cnt,
   awb_mean_y__g,
   awb_mean_cb__b,
   awb_mean_cr__r,
   regs_cc_coeff0,
   regs_cc_coeff1,
   regs_cc_coeff2,
   regs_cc_coeff3,
   regs_cc_coeff4,
   regs_cc_coeff5,
   regs_cc_coeff6,
   regs_cc_coeff7,
   regs_cc_coeff8,
   regs_csm_y_range,
   regs_csm_c_range,
   format_conv_ctrl,
   regs_ct_coeff0,
   regs_ct_coeff1,
   regs_ct_coeff2,
   regs_ct_coeff3,
   regs_ct_coeff4,
   regs_ct_coeff5,
   regs_ct_coeff6,
   regs_ct_coeff7,
   regs_ct_coeff8,
   regs_ct_offset_r,
   regs_ct_offset_g,
   regs_ct_offset_b,
   regs_isp_ris,
   regs_isp_mis,
   regs_isp_imsc,
   regs_isp_isr,
   regs_isp_icr,
   regs_err_clr,
   isp_err_status,
   cfg_filt_rdata,
   cfg_bls_rdata,
   cfg_exp_rdata,
   tpg_en,	    
   img_num,		
   frm_num,		
   cfa_pat,		
   color_depth, 
   def_sync,	  
   max_sync,	  
   tpg_resolution,
   vtotal_in,
   htotal_in,
   v_act_in,
   h_act_in,
   fp_v_in,
   fp_h_in,
   bp_v_in,
   bp_h_in,
   vs_w_in,
   hs_w_in,
   line_gap_in,
   pix_gap_in,
   pix_gap_std_in,
   random_seed_in,
   clk,
   rst_clk_n,
   frame_end_dgain
   );
`include "vsisp_isp.vh"        
   input         clk_cfg;        
   input         reset_cfg_n;    
   input [31:0]  cfg_addr;       
   input [31:0]  cfg_wdata;      
   output [31:0] cfg_rdata;      
   input         cfg_rd;         
   input         cfg_val;        
   output        cfg_ack;        
output             tpg_en;	    
output    [2:0]    img_num;		
output    [15:0]   frm_num;		
output    [1:0]    cfa_pat;		
output    [1:0]    color_depth;  
output             def_sync;		
output             max_sync;		
output    [1:0]    tpg_resolution;
output    [13:0]   vtotal_in;
output    [13:0]   htotal_in;
output    [13:0]   v_act_in;
output    [13:0]   h_act_in;
output    [13:0]   fp_v_in;
output    [13:0]   fp_h_in;
output    [13:0]   bp_v_in;
output    [13:0]   bp_h_in;
output    [13:0]   vs_w_in;
output    [13:0]   hs_w_in;
output    [13:0]   line_gap_in;
output    [13:0]   pix_gap_in;
output    [13:0]   pix_gap_std_in;                             
output    [31:0]   random_seed_in;
input              clk;
input              rst_clk_n;
input              frame_end_dgain;
   output        regs_gen_cfg_upd;      
   output        regs_cfg_upd;          
   output [2:0]  regs_isp_mode;         
   output        regs_isp_enable;       
   output        regs_disable_isp_clk;
   output        regs_awb_enable;
   output        regs_statistic_3a_sel; 
   output        regs_inform_enable;    
   output [2:0]  regs_input_selection;  
   output [2:0]  regs_input_pin_map;    
   output        regs_field_inv;        
   output [1:0]  regs_field_selection;  
   output [1:0]  regs_ccir_seq;         
   output [1:0]  regs_conv_422;         
   output [1:0]  regs_bayer_pat;      
   output        regs_vsync_pol;      
   output        regs_hsync_pol;      
   output        regs_sample_edge;    
   output [14:0] regs_acq_h_offs;     
   output [13:0] regs_acq_v_offs;     
   output [14:0] regs_acq_h_size;     
   output [13:0] regs_acq_v_size;     
   output [13:0]           regs_out_h_offs;    
   output [13:0]           regs_out_v_offs;    
   output [14:0]           regs_out_h_size;    
   output [13:0]           regs_out_v_size;    
   input [13:0]            out_h_offs_shd;     
   input [13:0]            out_v_offs_shd;     
   input [14:0]            out_h_size_shd;     
   input [13:0]            out_v_size_shd;     
   output                regs_dgain_enable;
   output [ 15:0]        regs_dgain_r;       
   output [ 15:0]        regs_dgain_gr;      
   output [ 15:0]        regs_dgain_gb;      
   output [ 15:0]        regs_dgain_b;       
   output        regs_demosaic_bypass;  
   output [7:0]  regs_demosaic_th;      
   output               regs_gamma_out_enable; 
   output               regs_equ_segm;      
   output [c_dw_do-1:0] regs_gamma_out_y0;  
   output [c_dw_do-1:0] regs_gamma_out_y1;  
   output [c_dw_do-1:0] regs_gamma_out_y2;  
   output [c_dw_do-1:0] regs_gamma_out_y3;  
   output [c_dw_do-1:0] regs_gamma_out_y4;  
   output [c_dw_do-1:0] regs_gamma_out_y5;  
   output [c_dw_do-1:0] regs_gamma_out_y6;  
   output [c_dw_do-1:0] regs_gamma_out_y7;  
   output [c_dw_do-1:0] regs_gamma_out_y8;  
   output [c_dw_do-1:0] regs_gamma_out_y9;  
   output [c_dw_do-1:0] regs_gamma_out_y10; 
   output [c_dw_do-1:0] regs_gamma_out_y11; 
   output [c_dw_do-1:0] regs_gamma_out_y12; 
   output [c_dw_do-1:0] regs_gamma_out_y13; 
   output [c_dw_do-1:0] regs_gamma_out_y14; 
   output [c_dw_do-1:0] regs_gamma_out_y15; 
   output [c_dw_do-1:0] regs_gamma_out_y16; 
   output               regs_awb_meas_mode;    
   output               regs_awb_max_en;       
   output [1:0]         regs_awb_mode;         
   output [12:0]        regs_awb_h_offs;       
   output [12:0]        regs_awb_v_offs;       
   output [13:0]        regs_awb_h_size;       
   output [13:0]        regs_awb_v_size;       
   output [ 2:0]        regs_awb_frames;       
   output [ 7:0]        regs_awb_ref_cb__max_b;
   output [ 7:0]        regs_awb_ref_cr__max_r;
   output [ 7:0]        regs_awb_max_y;        
   output [ 7:0]        regs_awb_min_y__max_g; 
   output [ 7:0]        regs_awb_min_c;        
   output [ 7:0]        regs_awb_max_csum;     
   input [c_white_cnt-1:0] awb_white_cnt;      
   input [ 7:0]            awb_mean_y__g;      
   input [ 7:0]            awb_mean_cb__b;     
   input [ 7:0]            awb_mean_cr__r;     
   output [ 8:0]           regs_cc_coeff0;     
   output [ 8:0]           regs_cc_coeff1;     
   output [ 8:0]           regs_cc_coeff2;     
   output [ 8:0]           regs_cc_coeff3;     
   output [ 8:0]           regs_cc_coeff4;     
   output [ 8:0]           regs_cc_coeff5;     
   output [ 8:0]           regs_cc_coeff6;     
   output [ 8:0]           regs_cc_coeff7;     
   output [ 8:0]           regs_cc_coeff8;     
   output                  regs_csm_y_range;   
   output                  regs_csm_c_range;   
   output                  format_conv_ctrl;
   output [10:0]           regs_ct_coeff0;     
   output [10:0]           regs_ct_coeff1;     
   output [10:0]           regs_ct_coeff2;     
   output [10:0]           regs_ct_coeff3;     
   output [10:0]           regs_ct_coeff4;     
   output [10:0]           regs_ct_coeff5;     
   output [10:0]           regs_ct_coeff6;     
   output [10:0]           regs_ct_coeff7;     
   output [10:0]           regs_ct_coeff8;     
   output [c_dw_si-1:0]    regs_ct_offset_r;   
   output [c_dw_si-1:0]    regs_ct_offset_g;   
   output [c_dw_si-1:0]    regs_ct_offset_b;   
   input [c_irq_bw-1:0]    regs_isp_ris;      
   input [c_irq_bw-1:0]    regs_isp_mis;      
   output [c_irq_bw-1:0]   regs_isp_imsc;     
   output [c_irq_bw-1:0]   regs_isp_isr;      
   output [c_irq_bw-1:0]   regs_isp_icr;      
   output [c_isp_err_bw-1:0] regs_err_clr;  
   input [c_isp_err_bw-1:0]  isp_err_status;
   input [31:0]        cfg_filt_rdata; 
   input [31:0]        cfg_bls_rdata;  
   input [31:0]        cfg_exp_rdata;  
reg             tpg_en;	    
reg    [2:0]    img_num;		
reg    [15:0]   frm_num;		
reg    [1:0]    cfa_pat;		
reg    [1:0]    color_depth;  
reg             def_sync;		
reg             max_sync;		
reg    [1:0]    tpg_resolution;
reg    [13:0]   vtotal_in;
reg    [13:0]   htotal_in;
reg    [13:0]   v_act_in;
reg    [13:0]   h_act_in;
reg    [13:0]   fp_v_in;
reg    [13:0]   fp_h_in;
reg    [13:0]   bp_v_in;
reg    [13:0]   bp_h_in;
reg    [13:0]   vs_w_in;
reg    [13:0]   hs_w_in;
reg    [13:0]   line_gap_in;
reg    [13:0]   pix_gap_in;
reg    [13:0]   pix_gap_std_in;                             
reg    [31:0]   random_seed_in;
   reg        cfg_ack;
   reg [31:0] cfg_rdata;
   reg        regs_gen_cfg_upd;      
   reg        regs_cfg_upd;          
   reg        viv_s0;      
   reg [2:0]  regs_isp_mode;         
   reg        regs_isp_enable;       
   reg        regs_disable_isp_clk;
   reg        regs_awb_enable;
   reg        regs_statistic_3a_sel;
   reg        regs_inform_enable;    
   reg [2:0]  regs_input_selection;  
   reg [2:0]  regs_input_pin_map;    
   reg        regs_field_inv;        
   reg [1:0]  regs_field_selection;  
   reg [1:0]  regs_ccir_seq;         
   reg [1:0]  regs_conv_422;         
   reg [1:0]  regs_bayer_pat;      
   reg        regs_vsync_pol;      
   reg        regs_hsync_pol;      
   reg        regs_sample_edge;    
   reg [14:0] regs_acq_h_offs;     
   reg [13:0] regs_acq_v_offs;     
   reg [14:0] regs_acq_h_size;     
   reg [13:0] regs_acq_v_size;     
   reg [5:0] viv_s1;
   reg [13:0]           regs_out_h_offs;    
   reg [13:0]           regs_out_v_offs;    
   reg [14:0]           regs_out_h_size;    
   reg [13:0]           regs_out_v_size;    
   reg                regs_dgain_enable;
   reg [ 15:0]        regs_dgain_r;       
   reg [ 15:0]        regs_dgain_gr;      
   reg [ 15:0]        regs_dgain_gb;      
   reg [ 15:0]        regs_dgain_b;       
   reg [ 15:0]        viv_s2;
   reg [ 15:0]        viv_s3;
   reg [ 15:0]        viv_s4;
   reg [ 15:0]        viv_s5;
   reg        regs_demosaic_bypass;  
   reg [7:0]  regs_demosaic_th;      
   reg               regs_gamma_out_enable; 
   reg               regs_equ_segm;      
   reg [c_dw_do-1:0] regs_gamma_out_y0;  
   reg [c_dw_do-1:0] regs_gamma_out_y1;  
   reg [c_dw_do-1:0] regs_gamma_out_y2;  
   reg [c_dw_do-1:0] regs_gamma_out_y3;  
   reg [c_dw_do-1:0] regs_gamma_out_y4;  
   reg [c_dw_do-1:0] regs_gamma_out_y5;  
   reg [c_dw_do-1:0] regs_gamma_out_y6;  
   reg [c_dw_do-1:0] regs_gamma_out_y7;  
   reg [c_dw_do-1:0] regs_gamma_out_y8;  
   reg [c_dw_do-1:0] regs_gamma_out_y9;  
   reg [c_dw_do-1:0] regs_gamma_out_y10; 
   reg [c_dw_do-1:0] regs_gamma_out_y11; 
   reg [c_dw_do-1:0] regs_gamma_out_y12; 
   reg [c_dw_do-1:0] regs_gamma_out_y13; 
   reg [c_dw_do-1:0] regs_gamma_out_y14; 
   reg [c_dw_do-1:0] regs_gamma_out_y15; 
   reg [c_dw_do-1:0] regs_gamma_out_y16; 
   reg               regs_awb_max_en;
   reg               regs_awb_meas_mode;
   reg [1:0]         regs_awb_mode;
   reg [12:0]        regs_awb_h_offs;
   reg [12:0]        regs_awb_v_offs;
   reg [13:0]        regs_awb_h_size;
   reg [13:0]        regs_awb_v_size;
   reg [ 2:0]        regs_awb_frames;
   reg [ 7:0]        regs_awb_ref_cb__max_b;
   reg [ 7:0]        regs_awb_ref_cr__max_r;
   reg [ 7:0]        regs_awb_max_y;
   reg [ 7:0]        regs_awb_min_y__max_g;
   reg [ 7:0]        regs_awb_min_c;
   reg [ 7:0]        regs_awb_max_csum;
   reg [ 8:0]           regs_cc_coeff0;     
   reg [ 8:0]           regs_cc_coeff1;     
   reg [ 8:0]           regs_cc_coeff2;     
   reg [ 8:0]           regs_cc_coeff3;     
   reg [ 8:0]           regs_cc_coeff4;     
   reg [ 8:0]           regs_cc_coeff5;     
   reg [ 8:0]           regs_cc_coeff6;     
   reg [ 8:0]           regs_cc_coeff7;     
   reg [ 8:0]           regs_cc_coeff8;     
   reg                  regs_csm_y_range;   
   reg                  regs_csm_c_range;   
   reg                  format_conv_ctrl;
   reg [10:0]        regs_ct_coeff0;
   reg [10:0]        regs_ct_coeff1;
   reg [10:0]        regs_ct_coeff2;
   reg [10:0]        regs_ct_coeff3;
   reg [10:0]        regs_ct_coeff4;
   reg [10:0]        regs_ct_coeff5;
   reg [10:0]        regs_ct_coeff6;
   reg [10:0]        regs_ct_coeff7;
   reg [10:0]        regs_ct_coeff8;
   reg [c_dw_si-1:0] regs_ct_offset_r;
   reg [c_dw_si-1:0] regs_ct_offset_g;
   reg [c_dw_si-1:0] regs_ct_offset_b;
   reg [c_irq_bw-1:0]   regs_isp_imsc;     
   reg [c_irq_bw-1:0]   regs_isp_isr;      
   reg [c_irq_bw-1:0]   regs_isp_icr;      
   reg [c_isp_err_bw-1:0] regs_err_clr;  
   wire [11:0] viv_s6;
   wire        viv_s7;
   wire        viv_s8;
   wire        viv_s9;
   wire        viv_s10;
   assign viv_s7          = ((viv_s6 >= (c_filt_base_adr+ 12'h004)) &
                           (viv_s6 <= (c_filt_base_adr + 12'h02C)));
   assign viv_s8           = ((viv_s6 >= c_bls_base_adr) &
                           (viv_s6 <= (c_bls_base_adr + 12'h010)));
   assign viv_s9           = ((viv_s6 >= c_cac_base_adr) &
                           (viv_s6 <= (c_cac_base_adr + 12'h018)));
   assign viv_s10           = ((viv_s6 >= c_exp_base_adr) &
                           (viv_s6 <= (c_exp_base_adr + 12'h074)));
   parameter c_gamma_reset_y0    = 14'h0000 >>(c_dw_do+4-10) ; 
   parameter c_gamma_reset_y1    = 14'h0490 >>(c_dw_do+4-10) ; 
   parameter c_gamma_reset_y2    = 14'h0890 >>(c_dw_do+4-10) ; 
   parameter c_gamma_reset_y3    = 14'h0B70 >>(c_dw_do+4-10) ; 
   parameter c_gamma_reset_y4    = 14'h0DF0 >>(c_dw_do+4-10) ; 
   parameter c_gamma_reset_y5    = 14'h11F0 >>(c_dw_do+4-10) ; 
   parameter c_gamma_reset_y6    = 14'h1540 >>(c_dw_do+4-10) ; 
   parameter c_gamma_reset_y7    = 14'h1830 >>(c_dw_do+4-10) ; 
   parameter c_gamma_reset_y8    = 14'h1AD0 >>(c_dw_do+4-10) ; 
   parameter c_gamma_reset_y9    = 14'h1F60 >>(c_dw_do+4-10) ; 
   parameter c_gamma_reset_y10   = 14'h2350 >>(c_dw_do+4-10) ; 
   parameter c_gamma_reset_y11   = 14'h26F0 >>(c_dw_do+4-10) ; 
   parameter c_gamma_reset_y12   = 14'h2D30 >>(c_dw_do+4-10) ; 
   parameter c_gamma_reset_y13   = 14'h32A0 >>(c_dw_do+4-10) ; 
   parameter c_gamma_reset_y14   = 14'h3780 >>(c_dw_do+4-10) ; 
   parameter c_gamma_reset_y15   = 14'h3BF0 >>(c_dw_do+4-10) ; 
   assign viv_s6                   = cfg_addr[11:0];
   always @(posedge clk_cfg or negedge reset_cfg_n) begin
      if (~reset_cfg_n) begin
         regs_isp_imsc          <= {c_irq_bw{1'b0}};
         regs_isp_isr           <= {c_irq_bw{1'b0}};
         regs_isp_icr           <= {c_irq_bw{1'b0}};
         regs_err_clr           <= {c_isp_err_bw{1'b0}};
         regs_gen_cfg_upd       <= 0;
         regs_cfg_upd           <= 0;
         viv_s0   <= 0;
         regs_gamma_out_enable  <= 0;
         regs_inform_enable     <= 0;
         regs_isp_mode          <= 0;
         regs_isp_enable        <= 0;
	 regs_disable_isp_clk   <= 1;
	 regs_statistic_3a_sel  <= 0;
	 regs_awb_enable        <= 0;
         regs_demosaic_bypass   <= 0;
         regs_demosaic_th       <= 4;
         regs_input_selection   <= 0;
         regs_input_pin_map     <= 0;
         regs_field_inv         <= 0;
         regs_field_selection   <= 0;
         regs_ccir_seq          <= 0;
         regs_conv_422          <= 0;
         regs_bayer_pat         <= 0;
         regs_vsync_pol         <= 0;
         regs_hsync_pol         <= 0;
         regs_sample_edge       <= 0;
         regs_acq_h_offs        <= 0;
         regs_acq_v_offs        <= 0;
         regs_acq_h_size        <= 15'h1000;
         regs_acq_v_size        <= 14'hC00;
         regs_equ_segm          <= 1'b0;                  
         regs_gamma_out_y0      <= c_gamma_reset_y0 [c_dw_do-1:0] ; 
         regs_gamma_out_y1      <= c_gamma_reset_y1 [c_dw_do-1:0] ; 
         regs_gamma_out_y2      <= c_gamma_reset_y2 [c_dw_do-1:0] ; 
         regs_gamma_out_y3      <= c_gamma_reset_y3 [c_dw_do-1:0] ; 
         regs_gamma_out_y4      <= c_gamma_reset_y4 [c_dw_do-1:0] ; 
         regs_gamma_out_y5      <= c_gamma_reset_y5 [c_dw_do-1:0] ; 
         regs_gamma_out_y6      <= c_gamma_reset_y6 [c_dw_do-1:0] ; 
         regs_gamma_out_y7      <= c_gamma_reset_y7 [c_dw_do-1:0] ; 
         regs_gamma_out_y8      <= c_gamma_reset_y8 [c_dw_do-1:0] ; 
         regs_gamma_out_y9      <= c_gamma_reset_y9 [c_dw_do-1:0] ; 
         regs_gamma_out_y10     <= c_gamma_reset_y10[c_dw_do-1:0] ; 
         regs_gamma_out_y11     <= c_gamma_reset_y11[c_dw_do-1:0] ; 
         regs_gamma_out_y12     <= c_gamma_reset_y12[c_dw_do-1:0] ; 
         regs_gamma_out_y13     <= c_gamma_reset_y13[c_dw_do-1:0] ; 
         regs_gamma_out_y14     <= c_gamma_reset_y14[c_dw_do-1:0] ; 
         regs_gamma_out_y15     <= c_gamma_reset_y15[c_dw_do-1:0] ; 
         regs_gamma_out_y16     <= {c_dw_do{1'b1}}; 
	 regs_awb_meas_mode     <= 0;
         regs_awb_max_en        <= 0;
         regs_awb_mode          <= 0;
         regs_awb_h_offs        <= 0;
         regs_awb_v_offs        <= 0;
         regs_awb_h_size        <= 0;
         regs_awb_v_size        <= 0;
         regs_awb_frames        <= 0;
         regs_awb_ref_cb__max_b <= 8'd128;
         regs_awb_ref_cr__max_r <= 8'd128;
         regs_awb_max_y         <= 8'hE9;
         regs_awb_min_y__max_g  <= 8'hc0;
         regs_awb_min_c         <= 8'h10;
         regs_awb_max_csum      <= 8'h10;
         regs_cc_coeff0         <= 9'h021; 
         regs_cc_coeff1         <= 9'h040; 
         regs_cc_coeff2         <= 9'h00d; 
         regs_cc_coeff3         <= 9'h1ed; 
         regs_cc_coeff4         <= 9'h1db; 
         regs_cc_coeff5         <= 9'h038; 
         regs_cc_coeff6         <= 9'h038; 
         regs_cc_coeff7         <= 9'h1d1; 
         regs_cc_coeff8         <= 9'h1f7; 
         regs_csm_y_range       <= 0;
         regs_csm_c_range       <= 0;
         format_conv_ctrl       <= 0;
	 regs_ct_coeff0         <= 11'h080;
         regs_ct_coeff1         <= 11'h0;
         regs_ct_coeff2         <= 11'h0;
         regs_ct_coeff3         <= 11'h0;
         regs_ct_coeff4         <= 11'h080;
         regs_ct_coeff5         <= 11'h0;
         regs_ct_coeff6         <= 11'h0;
         regs_ct_coeff7         <= 11'h0;
         regs_ct_coeff8         <= 11'h080;	 
         regs_ct_offset_r       <= {c_dw_si{1'b0}};
         regs_ct_offset_g       <= {c_dw_si{1'b0}};
         regs_ct_offset_b       <= {c_dw_si{1'b0}};
         regs_out_h_offs        <= 14'h0;
         regs_out_v_offs        <= 14'h0;
         regs_out_h_size        <= 15'h280;
         regs_out_v_size        <= 14'h1e0;
         tpg_en              <= 1'h0;	    
         img_num             <= 3'h0;		
         frm_num             <= 16'h0;		
         cfa_pat             <= 2'h0;		
         color_depth         <= 2'h0;  
         def_sync            <= 1'h0;	  
         max_sync            <= 1'h0;	  
         tpg_resolution      <= 2'h0;
         vtotal_in           <= 14'h0;
         htotal_in           <= 14'h0;
         v_act_in            <= 14'h0;
         h_act_in            <= 14'h0;
         fp_v_in             <= 14'h0;
         fp_h_in             <= 14'h0;
         bp_v_in             <= 14'h0;
         bp_h_in             <= 14'h0;
         vs_w_in             <= 14'h0;
         hs_w_in             <= 14'h0;
         line_gap_in         <= 14'h0;
         pix_gap_in          <= 14'h0;
         pix_gap_std_in      <= 14'h0;
         random_seed_in      <= 32'h0;
         viv_s1     <= 6'h0;
         viv_s2       <= 16'h100;
         viv_s3          <= 16'h100;
         viv_s4          <= 16'h100;
         viv_s5           <= 16'h100;
         regs_dgain_enable      <= 1'b0;
      end else begin
         regs_gen_cfg_upd  <= viv_s0;   
         regs_cfg_upd      <= 1'b0;
         regs_isp_isr      <= {c_irq_bw{1'b0}};
         regs_isp_icr      <= {c_irq_bw{1'b0}};
         regs_err_clr      <= {c_isp_err_bw{1'b0}};
         if(~cfg_ack) begin  
            if (cfg_val) begin
                  if (~cfg_rd) begin
                     case (viv_s6[11:0])
                       c_ctrl:begin 
		          regs_disable_isp_clk  <= cfg_wdata[31];
                          regs_statistic_3a_sel  <= cfg_wdata[21];
                          regs_csm_c_range      <= cfg_wdata[14];
                          regs_csm_y_range      <= cfg_wdata[13];
                          regs_dgain_enable     <= cfg_wdata[12];
                          regs_gamma_out_enable <= cfg_wdata[11];
                          regs_gen_cfg_upd      <= cfg_wdata[10]; 
                          regs_cfg_upd          <= cfg_wdata[9];  
                          viv_s0  <= cfg_wdata[8];  
                          regs_awb_enable       <= cfg_wdata[6];
                          regs_inform_enable    <= cfg_wdata[4];
                          regs_isp_mode         <= cfg_wdata[3:1];
                          regs_isp_enable       <= cfg_wdata[0];
                       end
                       c_acq_prop:begin 
                          regs_input_pin_map    <= cfg_wdata[19:17];
                          regs_input_selection  <= cfg_wdata[14:12];
                          regs_field_inv        <= cfg_wdata[11];
                          regs_field_selection  <= cfg_wdata[10:9];
                          regs_ccir_seq         <= cfg_wdata[8:7];
                          regs_conv_422         <= cfg_wdata[6:5];
                          regs_bayer_pat        <= cfg_wdata[4:3];
                          regs_vsync_pol        <= cfg_wdata[2];
                          regs_hsync_pol        <= cfg_wdata[1];
                          regs_sample_edge      <= cfg_wdata[0];
                       end
                       c_acq_h_offs:begin 
                          regs_acq_h_offs     <= cfg_wdata[14:0];
                       end
                       c_acq_v_offs:begin 
                          regs_acq_v_offs     <= cfg_wdata[13:0];
                       end
                       c_acq_h_size:begin 
                          regs_acq_h_size     <= cfg_wdata[14:0];
                       end
                       c_acq_v_size:begin 
                          regs_acq_v_size     <= cfg_wdata[13:0];
                       end
		        c_tpg_global    : begin
                        tpg_en              <= cfg_wdata[0];
                        img_num             <= cfg_wdata[3:1];
                        cfa_pat             <= cfg_wdata[5:4];
                        color_depth         <= cfg_wdata[7:6];
                        def_sync            <= cfg_wdata[8];
                        max_sync            <= cfg_wdata[9];
                        tpg_resolution      <= cfg_wdata[11:10];
                        end
                        c_tpg_total     : begin 
                                                vtotal_in           <= cfg_wdata[13:0];     
                                                htotal_in           <= cfg_wdata[27:14];
                                            end
                        c_tpg_act       : begin 
                                                v_act_in            <= cfg_wdata[13:0];         
                                                h_act_in            <= cfg_wdata[27:14];
                                            end
                        c_tpg_fp        : begin 
                                                fp_v_in             <= cfg_wdata[13:0];     
                                                fp_h_in             <= cfg_wdata[27:14];
                                            end
                        c_tpg_bp        : begin 
                                                bp_v_in             <= cfg_wdata[13:0];          
                                                bp_h_in             <= cfg_wdata[27:14];
                                            end
                        c_tpg_w         : begin 
                                                vs_w_in             <= cfg_wdata[13:0];           
                                                hs_w_in             <= cfg_wdata[27:14];
                                            end
                        c_tpg_gap       : begin 
                                                line_gap_in         <= cfg_wdata[13:0];         
                                                pix_gap_in          <= cfg_wdata[27:14];
                                            end
                        c_tpg_gap_std   : begin 
                                                pix_gap_std_in      <= cfg_wdata[13:0];      
                                            end
                        c_tpg_seed      : random_seed_in      <= cfg_wdata[31:0];        
                        c_tpg_frm_num   : frm_num <= cfg_wdata[15:0]; 
                        c_frame_rate_ctrl: begin
			                  viv_s1 <= cfg_wdata[5:0];
			end
		       c_out_h_offs:begin 
                          regs_out_h_offs     <= cfg_wdata[13:0];
                       end
                       c_out_v_offs:begin 
                          regs_out_v_offs     <= cfg_wdata[13:0];
                       end
                       c_out_h_size:begin 
                          regs_out_h_size     <= cfg_wdata[14:0];
                       end
                       c_out_v_size:begin 
                          regs_out_v_size     <= cfg_wdata[13:0];
                       end
                       c_dgain_0:begin 
                          viv_s2       <= cfg_wdata[31:16];
                          viv_s5       <= cfg_wdata[15:0];
                       end
                       c_dgain_1:begin 
                          viv_s3       <= cfg_wdata[31:16];
                          viv_s4       <= cfg_wdata[15:0];
                       end
		       c_demosaic:begin 
                          regs_demosaic_bypass <= cfg_wdata[10];
                          regs_demosaic_th     <= cfg_wdata[7:0];
                       end
                       c_gamma_out_mod:begin 
                          regs_equ_segm <= cfg_wdata[0];
                       end
                       c_gamma_out_y0:  regs_gamma_out_y0 <= {cfg_wdata[c_dw_do-1:0]};
                       c_gamma_out_y1:  regs_gamma_out_y1 <= {cfg_wdata[c_dw_do-1:0]};
                       c_gamma_out_y2:  regs_gamma_out_y2 <= {cfg_wdata[c_dw_do-1:0]};
                       c_gamma_out_y3:  regs_gamma_out_y3 <= {cfg_wdata[c_dw_do-1:0]};
                       c_gamma_out_y4:  regs_gamma_out_y4 <= {cfg_wdata[c_dw_do-1:0]};
                       c_gamma_out_y5:  regs_gamma_out_y5 <= {cfg_wdata[c_dw_do-1:0]};
                       c_gamma_out_y6:  regs_gamma_out_y6 <= {cfg_wdata[c_dw_do-1:0]};
                       c_gamma_out_y7:  regs_gamma_out_y7 <= {cfg_wdata[c_dw_do-1:0]};
                       c_gamma_out_y8:  regs_gamma_out_y8 <= {cfg_wdata[c_dw_do-1:0]};
                       c_gamma_out_y9:  regs_gamma_out_y9 <= {cfg_wdata[c_dw_do-1:0]};
                       c_gamma_out_y10: regs_gamma_out_y10<= {cfg_wdata[c_dw_do-1:0]};
                       c_gamma_out_y11: regs_gamma_out_y11<= {cfg_wdata[c_dw_do-1:0]};
                       c_gamma_out_y12: regs_gamma_out_y12<= {cfg_wdata[c_dw_do-1:0]};
                       c_gamma_out_y13: regs_gamma_out_y13<= {cfg_wdata[c_dw_do-1:0]};
                       c_gamma_out_y14: regs_gamma_out_y14<= {cfg_wdata[c_dw_do-1:0]};
                       c_gamma_out_y15: regs_gamma_out_y15<= {cfg_wdata[c_dw_do-1:0]};
                       c_gamma_out_y16: regs_gamma_out_y16<= {cfg_wdata[c_dw_do-1:0]};
                       c_awb_prop:begin 
                          regs_awb_meas_mode <= cfg_wdata[31];
                          regs_awb_max_en    <= cfg_wdata[2];
                          regs_awb_mode      <= cfg_wdata[1:0];
                       end
                       c_awb_h_offs_old:begin 
                          regs_awb_h_offs     <= cfg_wdata[12:0];
                       end
                       c_awb_v_offs_old:begin 
                          regs_awb_v_offs     <= cfg_wdata[12:0];
                       end
                       c_awb_h_size_old:begin 
                          regs_awb_h_size     <= cfg_wdata[13:0];
                       end
                       c_awb_v_size_old:begin 
                          regs_awb_v_size     <= cfg_wdata[13:0];
                       end
                       c_awb_frames:begin 
                          regs_awb_frames     <= cfg_wdata[2:0];
                       end
                       c_awb_ref:begin 
                          regs_awb_ref_cr__max_r <= cfg_wdata[15:8];
                          regs_awb_ref_cb__max_b <= cfg_wdata[7:0];
                       end
                       c_awb_thres:begin 
                          regs_awb_max_y        <= cfg_wdata[31:24];
                          regs_awb_min_y__max_g <= cfg_wdata[23:16];
                          regs_awb_max_csum     <= cfg_wdata[15:8];
                          regs_awb_min_c        <= cfg_wdata[7:0];
                       end
                       c_cc_coeff_0: regs_cc_coeff0 <= cfg_wdata[8:0];
                       c_cc_coeff_1: regs_cc_coeff1 <= cfg_wdata[8:0];
                       c_cc_coeff_2: regs_cc_coeff2 <= cfg_wdata[8:0];
                       c_cc_coeff_3: regs_cc_coeff3 <= cfg_wdata[8:0];
                       c_cc_coeff_4: regs_cc_coeff4 <= cfg_wdata[8:0];
                       c_cc_coeff_5: regs_cc_coeff5 <= cfg_wdata[8:0];
                       c_cc_coeff_6: regs_cc_coeff6 <= cfg_wdata[8:0];
                       c_cc_coeff_7: regs_cc_coeff7 <= cfg_wdata[8:0];
                       c_cc_coeff_8: regs_cc_coeff8 <= cfg_wdata[8:0];
		       c_format_conv_ctrl:begin
		         format_conv_ctrl <= cfg_wdata[0];
		       end
                       c_ct_coeff_0: regs_ct_coeff0 <= cfg_wdata[10:0];
                       c_ct_coeff_1: regs_ct_coeff1 <= cfg_wdata[10:0];
                       c_ct_coeff_2: regs_ct_coeff2 <= cfg_wdata[10:0];
                       c_ct_coeff_3: regs_ct_coeff3 <= cfg_wdata[10:0];
                       c_ct_coeff_4: regs_ct_coeff4 <= cfg_wdata[10:0];
                       c_ct_coeff_5: regs_ct_coeff5 <= cfg_wdata[10:0];
                       c_ct_coeff_6: regs_ct_coeff6 <= cfg_wdata[10:0];
                       c_ct_coeff_7: regs_ct_coeff7 <= cfg_wdata[10:0];
                       c_ct_coeff_8: regs_ct_coeff8 <= cfg_wdata[10:0];
                       c_ct_offset_r:regs_ct_offset_r <= cfg_wdata[c_dw_si-1:0];
                       c_ct_offset_g:regs_ct_offset_g <= cfg_wdata[c_dw_si-1:0];
                       c_ct_offset_b:regs_ct_offset_b <= cfg_wdata[c_dw_si-1:0];
                       c_imsc:begin 
                          regs_isp_imsc <= cfg_wdata[c_irq_bw-1:0];
                       end
                       c_icr:begin 
                          regs_isp_icr <= cfg_wdata[c_irq_bw-1:0];
                       end
                       c_isr:begin 
                          regs_isp_isr <= cfg_wdata[c_irq_bw-1:0];
                       end
                       c_isp_err_clear:begin 
                          regs_err_clr <= {cfg_wdata[c_isp_err_bw-1:0]};
                       end 
                       default: begin end 
                     endcase
                  end
               end
            end
         end
      end
   always @(*) begin
               cfg_rdata = 32'd0;
         if (cfg_val & cfg_rd) begin
             case (viv_s6[11:0])
               c_ctrl:begin 
                 cfg_rdata  = {regs_disable_isp_clk,
		               9'd0,
                               regs_statistic_3a_sel,			       
		               6'd0,
                               regs_csm_c_range,
                               regs_csm_y_range,
                               regs_dgain_enable,
                               regs_gamma_out_enable,
                               1'b0, 
                               1'b0, 
                               viv_s0,
                               1'b0,
                               regs_awb_enable,
                               1'b0,
                               regs_inform_enable,
                               regs_isp_mode,
                               regs_isp_enable};
               end
               c_acq_prop:begin 
                  cfg_rdata = {12'd0,
                                regs_input_pin_map,
                                2'd0,
                                regs_input_selection,
                                regs_field_inv,
                                regs_field_selection,
                                regs_ccir_seq,
                                regs_conv_422,
                                regs_bayer_pat,
                                regs_vsync_pol,
                                regs_hsync_pol,
                                regs_sample_edge};
               end
               c_acq_h_offs:begin 
                  cfg_rdata = {17'd0, regs_acq_h_offs};
               end
               c_acq_v_offs:begin 
                  cfg_rdata = {18'd0,regs_acq_v_offs};
               end
               c_acq_h_size:begin 
                  cfg_rdata = {17'd0,regs_acq_h_size};
               end
               c_acq_v_size:begin 
                  cfg_rdata = {18'd0,regs_acq_v_size};
                  end 
               c_cc_coeff_0: cfg_rdata = {23'd0,regs_cc_coeff0};
               c_cc_coeff_1: cfg_rdata = {23'd0,regs_cc_coeff1};
               c_cc_coeff_2: cfg_rdata = {23'd0,regs_cc_coeff2};
               c_cc_coeff_3: cfg_rdata = {23'd0,regs_cc_coeff3};
               c_cc_coeff_4: cfg_rdata = {23'd0,regs_cc_coeff4};
               c_cc_coeff_5: cfg_rdata = {23'd0,regs_cc_coeff5};
               c_cc_coeff_6: cfg_rdata = {23'd0,regs_cc_coeff6};
               c_cc_coeff_7: cfg_rdata = {23'd0,regs_cc_coeff7};
               c_cc_coeff_8: cfg_rdata = {23'd0,regs_cc_coeff8};
	       c_format_conv_ctrl: cfg_rdata = {31'd0,format_conv_ctrl};
	       c_ct_coeff_0: cfg_rdata = {21'd0,regs_ct_coeff0};
               c_ct_coeff_1: cfg_rdata = {21'd0,regs_ct_coeff1};
               c_ct_coeff_2: cfg_rdata = {21'd0,regs_ct_coeff2};
               c_ct_coeff_3: cfg_rdata = {21'd0,regs_ct_coeff3};
               c_ct_coeff_4: cfg_rdata = {21'd0,regs_ct_coeff4};
               c_ct_coeff_5: cfg_rdata = {21'd0,regs_ct_coeff5};
               c_ct_coeff_6: cfg_rdata = {21'd0,regs_ct_coeff6};
               c_ct_coeff_7: cfg_rdata = {21'd0,regs_ct_coeff7};
               c_ct_coeff_8: cfg_rdata = {21'd0,regs_ct_coeff8};
               c_ct_offset_r:cfg_rdata = {{32-c_dw_si{1'b0}},regs_ct_offset_r};
               c_ct_offset_g:cfg_rdata = {{32-c_dw_si{1'b0}},regs_ct_offset_g};
               c_ct_offset_b:cfg_rdata = {{32-c_dw_si{1'b0}},regs_ct_offset_b};
               c_out_h_offs:begin 
                  cfg_rdata = {18'd0,regs_out_h_offs};
               end
               c_out_v_offs:begin 
                  cfg_rdata = {18'd0,regs_out_v_offs};
               end
               c_out_h_size:begin 
                  cfg_rdata = {17'd0,regs_out_h_size};
               end
               c_out_v_size:begin 
                  cfg_rdata = {18'd0,regs_out_v_size};
               end
               c_demosaic:begin 
                  cfg_rdata = {21'd0,
                                regs_demosaic_bypass,2'b0,
                                regs_demosaic_th};
               end
               c_out_h_offs_shd: cfg_rdata = {18'd0,out_h_offs_shd};
               c_out_v_offs_shd: cfg_rdata = {18'd0,out_v_offs_shd};
               c_out_h_size_shd: cfg_rdata = {17'd0,out_h_size_shd};
               c_out_v_size_shd: cfg_rdata = {18'd0,out_v_size_shd};
	       c_dgain_0:begin 
                  cfg_rdata = {viv_s2,viv_s5};
               end
               c_dgain_1:begin 
                  cfg_rdata = {viv_s3,viv_s4};
               end
               c_dgain_0_shd:    begin 
                             cfg_rdata = {regs_dgain_r,regs_dgain_b};
                      end
               c_dgain_1_shd:    begin 
                              cfg_rdata = {regs_dgain_gr,regs_dgain_gb};
                      end
               c_imsc:begin 
                  cfg_rdata = {{(32-c_irq_bw){1'b0}},regs_isp_imsc};
               end
               c_ris:begin 
                  cfg_rdata = {{(32-c_irq_bw){1'b0}},regs_isp_ris};
               end
               c_mis:begin 
                  cfg_rdata = {{(32-c_irq_bw){1'b0}},regs_isp_mis};
               end
               c_gamma_out_mod:begin 
                  cfg_rdata = {31'd0, regs_equ_segm};
               end
               c_gamma_out_y0:  cfg_rdata = {{32-c_dw_do{1'b0}},regs_gamma_out_y0 };
               c_gamma_out_y1:  cfg_rdata = {{32-c_dw_do{1'b0}},regs_gamma_out_y1 };
               c_gamma_out_y2:  cfg_rdata = {{32-c_dw_do{1'b0}},regs_gamma_out_y2 };
               c_gamma_out_y3:  cfg_rdata = {{32-c_dw_do{1'b0}},regs_gamma_out_y3 };
               c_gamma_out_y4:  cfg_rdata = {{32-c_dw_do{1'b0}},regs_gamma_out_y4 };
               c_gamma_out_y5:  cfg_rdata = {{32-c_dw_do{1'b0}},regs_gamma_out_y5 };
               c_gamma_out_y6:  cfg_rdata = {{32-c_dw_do{1'b0}},regs_gamma_out_y6 };
               c_gamma_out_y7:  cfg_rdata = {{32-c_dw_do{1'b0}},regs_gamma_out_y7 };
               c_gamma_out_y8:  cfg_rdata = {{32-c_dw_do{1'b0}},regs_gamma_out_y8 };
               c_gamma_out_y9:  cfg_rdata = {{32-c_dw_do{1'b0}},regs_gamma_out_y9 };
               c_gamma_out_y10: cfg_rdata = {{32-c_dw_do{1'b0}},regs_gamma_out_y10};
               c_gamma_out_y11: cfg_rdata = {{32-c_dw_do{1'b0}},regs_gamma_out_y11};
               c_gamma_out_y12: cfg_rdata = {{32-c_dw_do{1'b0}},regs_gamma_out_y12};
               c_gamma_out_y13: cfg_rdata = {{32-c_dw_do{1'b0}},regs_gamma_out_y13};
               c_gamma_out_y14: cfg_rdata = {{32-c_dw_do{1'b0}},regs_gamma_out_y14};
               c_gamma_out_y15: cfg_rdata = {{32-c_dw_do{1'b0}},regs_gamma_out_y15};
               c_gamma_out_y16: cfg_rdata = {{32-c_dw_do{1'b0}},regs_gamma_out_y16};
               c_awb_prop:begin 
                  cfg_rdata = {regs_awb_meas_mode,
                                28'd0,
                                regs_awb_max_en,
                                regs_awb_mode };
               end
               c_awb_h_offs_old:begin 
                  cfg_rdata = {19'd0,regs_awb_h_offs };
               end
               c_awb_v_offs_old:begin 
                  cfg_rdata = {19'd0,regs_awb_v_offs };
               end
               c_awb_h_size_old:begin 
                  cfg_rdata = {18'd0,regs_awb_h_size };
                  end
               c_awb_v_size_old:begin 
                  cfg_rdata = {18'd0,regs_awb_v_size };
               end
               c_awb_frames:begin 
                  cfg_rdata = {29'd0,regs_awb_frames };
               end
               c_awb_ref:begin 
                  cfg_rdata = {16'd0,
                                regs_awb_ref_cr__max_r,
                                regs_awb_ref_cb__max_b};
               end
               c_awb_thres:begin 
                  cfg_rdata = {regs_awb_max_y,
                                regs_awb_min_y__max_g,
                                regs_awb_max_csum,
                                regs_awb_min_c};
               end
               c_awb_white_cnt:begin 
                  cfg_rdata = {{32-c_white_cnt{1'b0}},awb_white_cnt};
               end
               c_awb_mean:begin 
                  cfg_rdata = {8'd0,
                                awb_mean_y__g,
                                awb_mean_cb__b,
                                awb_mean_cr__r};
               end
               c_isp_err:begin 
                  cfg_rdata = {{32-c_isp_err_bw{1'b0}},isp_err_status};
               end
    c_tpg_global    : begin
                             cfg_rdata = {20'h0,tpg_resolution,max_sync,def_sync,color_depth,cfa_pat,img_num,tpg_en};
                        end                 
    c_tpg_total     : begin  cfg_rdata = {4'h0,htotal_in,vtotal_in};     
                        end                 
    c_tpg_act       : begin  cfg_rdata = {4'h0,h_act_in,v_act_in};         
                        end                 
    c_tpg_fp        : begin  cfg_rdata = {4'h0,fp_h_in,fp_v_in};     
                        end                 
    c_tpg_bp        : begin  cfg_rdata = {4'h0,bp_h_in,bp_v_in};          
                        end
    c_tpg_w         : begin  cfg_rdata = {4'h0,hs_w_in,vs_w_in};           
                        end                 
    c_tpg_gap       : begin  cfg_rdata = {4'h0,pix_gap_in,line_gap_in};         
                        end                 
    c_tpg_gap_std   : begin  cfg_rdata = {18'h0,pix_gap_std_in};     
                        end
    c_tpg_seed      :        cfg_rdata = random_seed_in;        
    c_tpg_frm_num   :        cfg_rdata = {16'h0,frm_num};        
               default: begin
                  if (viv_s7 || viv_s9)
                    cfg_rdata = cfg_filt_rdata;
                  else if (viv_s8)
                    cfg_rdata = cfg_bls_rdata;
		  else if(viv_s10)
		    cfg_rdata = cfg_exp_rdata;
                  else 
                    cfg_rdata = 32'd0;
              end
            endcase
         end
  end
reg viv_s11;
always @(posedge clk or negedge rst_clk_n) begin
if(~rst_clk_n) 
      viv_s11<= 1'b0;
else if(regs_gen_cfg_upd)
      viv_s11<= 1'b1;
else if(frame_end_dgain)
      viv_s11<= 1'b0;
end      
wire viv_s12=viv_s11&&frame_end_dgain;
always @(posedge clk or negedge rst_clk_n) begin
  if(~rst_clk_n)begin
         regs_dgain_r <=16'h100;       
         regs_dgain_gr<=16'h100;      
         regs_dgain_gb<=16'h100;      
         regs_dgain_b <=16'h100;       
  end
  else if(regs_cfg_upd||viv_s12)begin
         regs_dgain_r <=viv_s2 ;       
         regs_dgain_gr<=viv_s3;      
         regs_dgain_gb<=viv_s4;      
         regs_dgain_b <=viv_s5 ;       
        end
end
   always @(posedge clk_cfg or negedge reset_cfg_n) begin
      if(~reset_cfg_n) begin
         cfg_ack           <= 1'b0;
      end
      else begin
         if(cfg_ack) begin
            cfg_ack        <= 1'b0;
         end
         else begin
            if(cfg_val) begin 
               cfg_ack  <= 1'b1; 
            end
         end
     end
   end
endmodule
