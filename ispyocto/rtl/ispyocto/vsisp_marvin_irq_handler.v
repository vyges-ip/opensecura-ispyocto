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

module vsisp_marvin_irq_handler (
                           clk,
                           reset_n,
                           jpeg_clk,
                           reset_jpeg_clk_n,
                           isp_hist_end_int,
                           isp_exp_end_int,
                           isp_fl_cap_int,
                           isp_afm_fin_int,
                           isp_afm_lum_of_int,
                           isp_afm_sum_of_int,
                           isp_sh_off_int,
                           isp_sh_on_int,
                           isp_fl_off_int,
                           isp_fl_on_int,
                           isp_h_start_int,
                           isp_v_start_int,
                           isp_frame_in_int,
                           isp_awb_done_int,
                           isp_vsm_done_int,
                           isp_size_err_int,
                           isp_frame_int,
                           isp_dataloss_int,
                           isp_off_int,
                           mi_mp_frame_end_int,
                           mi_bp_frame_end_int,
                           mi_sp_frame_end_int,
                           mi_mblk_line_int,
                           mi_fill_mp_y_int,
                           mi_wrap_mp_y_int,
                           mi_wrap_mp_cb_int,
                           mi_wrap_mp_cr_int,
                           mi_fill_bp_r_int,
                           mi_wrap_bp_r_int,
                           mi_wrap_bp_gr_int,
                           mi_wrap_bp_gb_int,
                           mi_wrap_bp_b_int,
                           mi_wrap_sp_y_int,
                           mi_wrap_sp_cb_int,
                           mi_wrap_sp_cr_int,
                           mi_dma_ready_int,
                           mi_mp_handshk_int,
                           mi_mp_handshk_sw_int,
                           jpeg_err_int,
                           jpeg_stat_int,
                           mi_irq,
                           isp_irq,
                           jpeg_stat_irq,
                           jpeg_err_irq
                           );
   input        clk;                
   input        reset_n;            
   input        jpeg_clk;           
   input        reset_jpeg_clk_n;   
   input        isp_hist_end_int;   
   input        isp_exp_end_int;    
   input        isp_fl_cap_int;     
   input        isp_afm_fin_int;    
   input        isp_afm_lum_of_int; 
   input        isp_afm_sum_of_int; 
   input        isp_sh_off_int;     
   input        isp_sh_on_int;      
   input        isp_fl_off_int;     
   input        isp_fl_on_int;      
   input        isp_v_start_int;    
   input        isp_h_start_int;    
   input        isp_frame_in_int;   
   input        isp_awb_done_int;   
   input        isp_vsm_done_int;   
   input        isp_size_err_int;   
   input        isp_frame_int;      
   input        isp_dataloss_int;   
   input        isp_off_int;        
   input        mi_mp_frame_end_int;  
   input        mi_bp_frame_end_int;  
   input        mi_sp_frame_end_int;  
   input        mi_mblk_line_int;      
   input        mi_fill_mp_y_int;      
   input        mi_wrap_mp_y_int;      
   input        mi_wrap_mp_cb_int;     
   input        mi_wrap_mp_cr_int;     
   input        mi_fill_bp_r_int;      
   input        mi_wrap_bp_r_int;     
   input        mi_wrap_bp_gr_int;     
   input        mi_wrap_bp_gb_int;     
   input        mi_wrap_bp_b_int;     
   input        mi_wrap_sp_y_int;      
   input        mi_wrap_sp_cb_int;     
   input        mi_wrap_sp_cr_int;     
   input        mi_dma_ready_int;      
   input        mi_mp_handshk_int;     
   input        mi_mp_handshk_sw_int;     
   input [10:0] jpeg_err_int;         
   input  [1:0] jpeg_stat_int;        
   output       isp_irq;               
   output       mi_irq;                
   output       jpeg_stat_irq;          
   output       jpeg_err_irq;           
   reg          mi_irq;
   reg          isp_irq;
   reg          jpeg_err_irq;
   reg          viv_s0;
   reg          viv_s1;
   reg          jpeg_stat_irq;
   reg          viv_s2;
   reg          viv_s3;
   always @(posedge clk or negedge reset_n) begin
      if(!reset_n)begin
         isp_irq      <= 1'b0;
         mi_irq       <= 1'b0;
      end
      else begin
         isp_irq <= isp_hist_end_int   ||
                    isp_exp_end_int   ||
                    isp_fl_cap_int   ||
                    isp_afm_fin_int  ||
                    isp_afm_lum_of_int ||
                    isp_afm_sum_of_int ||
                    isp_sh_off_int   ||
                    isp_sh_on_int    ||
                    isp_fl_off_int   ||
                    isp_fl_on_int    ||
                    isp_h_start_int  ||
                    isp_v_start_int  ||
                    isp_size_err_int ||
                    isp_frame_int    ||
                    isp_frame_in_int ||
                    isp_dataloss_int ||
                    isp_awb_done_int ||
                    isp_vsm_done_int ||
                    isp_off_int;
         mi_irq <=  mi_mp_frame_end_int ||
                    mi_sp_frame_end_int ||
                    mi_bp_frame_end_int ||
                    mi_mblk_line_int  ||
                    mi_fill_mp_y_int  ||
                    mi_fill_bp_r_int  ||
                    mi_wrap_mp_y_int  ||
                    mi_wrap_mp_cb_int ||
                    mi_wrap_mp_cr_int ||
                    mi_wrap_bp_r_int  ||
                    mi_wrap_bp_gr_int  ||
                    mi_wrap_bp_gb_int  ||
                    mi_wrap_bp_b_int  ||
                    mi_wrap_sp_y_int  ||
                    mi_wrap_sp_cb_int ||
                    mi_wrap_sp_cr_int ||
                    mi_dma_ready_int  ||
                    mi_mp_handshk_int ||
                    mi_mp_handshk_sw_int;   
      end
   end
   always @(posedge jpeg_clk or negedge reset_jpeg_clk_n) begin
      if(!reset_jpeg_clk_n)begin
         viv_s0  <= 1'b0;
         viv_s2 <= 1'b0;
      end
      else begin
         viv_s0 <= jpeg_err_int[0] ||
                              jpeg_err_int[1] ||
                              jpeg_err_int[2] ||
                              jpeg_err_int[3] ||
                              jpeg_err_int[4] ||
                              jpeg_err_int[5] ||
                              jpeg_err_int[6] ||
                              jpeg_err_int[7] ||
                              jpeg_err_int[8] ||
                              jpeg_err_int[9] ||
                              jpeg_err_int[10];
         viv_s2 <= jpeg_stat_int[0] ||
                               jpeg_stat_int[1];
      end
   end
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         viv_s1  <= 1'b0;
         jpeg_err_irq       <= 1'b0;
         viv_s3 <= 1'b0;
         jpeg_stat_irq      <= 1'b0;
      end
      else begin
         viv_s1  <= viv_s0;
         jpeg_err_irq       <= viv_s1;
         viv_s3 <= viv_s2;
         jpeg_stat_irq      <= viv_s3;
      end
   end
endmodule
