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

module vsisp_isp_inform 
  (
   clk,
   reset_clk_n,
   soft_rst,
   s_data,
   s_hsync,
   s_vsync,
   s_data_val,
   s_data_ack,
   out_bls_data,
   out_bls_h_end,
   out_bls_v_end,
   out_bls_val,
   inform_mux_data,
   inform_mux_h_end,
   inform_mux_v_end,
   inform_mux_val,
   inform_mux_ack,
   regs_hsync_pol,
   regs_vsync_pol,
   regs_acq_h_offs,
   regs_acq_v_offs,
   regs_acq_h_size,
   regs_acq_v_size,
   regs_bayer_pat,
   out_h_offs_shd,
   out_v_offs_shd,
   regs_input_pin_map,
   regs_input_selection,
   regs_field_selection,
   regs_field_inv,
   regs_isp_mode,
   regs_inform_enable,
   regs_cfg_upd,
   regs_gen_cfg_upd,    
   bayer_pat_act,
   bayer_pat_diff,
   frame_in_irq,
   inform_en_shd,
   field, 
   in_size_err,                    
   h_start_edge,
   v_start_edge
   );
`include "vsisp_isp.vh"    
   input             clk;         
   input             reset_clk_n; 
   input             soft_rst;    
   input [c_dw_si-1:0] s_data;       
   input               s_hsync;      
   input               s_vsync;      
   input               s_data_val;   
   output              s_data_ack;   
   output [c_dw_si-1:0] out_bls_data;     
   output               out_bls_h_end;    
   output               out_bls_v_end;    
   output               out_bls_val;      
   output [c_dw_si-1:0] inform_mux_data;  
   output               inform_mux_h_end; 
   output               inform_mux_v_end; 
   output               inform_mux_val;   
   input                inform_mux_ack;   
   input         regs_hsync_pol;       
   input         regs_vsync_pol;       
   input [14:0]  regs_acq_h_offs;      
   input [13:0]  regs_acq_v_offs;      
   input [14:0]  regs_acq_h_size;      
   input [13:0]  regs_acq_v_size;      
   input [2:0]   regs_input_pin_map;
   input [2:0]   regs_input_selection; 
   input [1:0]   regs_field_selection;
   input         regs_field_inv;  
   input [2:0]   regs_isp_mode;   
   input         regs_inform_enable;   
   input [1:0]   regs_bayer_pat;  
   input         regs_cfg_upd;     
   input         regs_gen_cfg_upd; 
   input [13:0]  out_h_offs_shd; 
   input [13:0]  out_v_offs_shd; 
   output [1:0]  bayer_pat_act;  
   output [1:0]  bayer_pat_diff; 
   output        frame_in_irq;   
   output        inform_en_shd;  
   output        field;          
   output        in_size_err;    
   output        h_start_edge;   
   output        v_start_edge;   
   reg               frame_in_irq;  
   reg [c_dw_si-1:0] viv_s0;
   reg [c_dw_si-1:0] viv_s1;    
   reg [15:0] viv_s2;         
   reg [14:0] viv_s3;         
   reg        viv_s4;          
   reg        viv_s5;          
   wire       viv_s6;    
   reg        viv_s7;  
   reg        viv_s8;  
   reg        viv_s9;    
   reg        viv_s10;    
   reg        viv_s11; 
   reg        viv_s12;       
   reg        inform_en_shd; 
   wire       viv_s13; 
   reg        viv_s14;      
   reg        viv_s15;      
   wire       in_size_err;     
   reg [1:0]  viv_s16;       
   reg        field;           
   wire       viv_s17;              
   wire       viv_s18;              
   reg        viv_s19;          
   reg        viv_s20;          
   reg        viv_s21;      
   wire       h_start_edge;
   wire       v_start_edge;
   wire       viv_s22;
   wire [15:0] viv_s23;      
   wire [14:0] viv_s24;      
   reg [c_dw_si-1:0] out_bls_data;  
   reg               out_bls_h_end;   
   reg               out_bls_v_end;   
   reg               out_bls_val;     
   wire              viv_s25;   
   wire              viv_s26;   
   reg               viv_s27;   
   reg               viv_s28;   
   reg               viv_s29;     
   reg [c_dw_si-1:0] viv_s30;  
   wire              viv_s31;
   reg               inform_mux_val;   
   reg [c_dw_si-1:0] inform_mux_data;  
   reg               inform_mux_h_end; 
   reg               inform_mux_v_end; 
   wire              inform_mux_ack;   
   wire              viv_s32;          
   wire              viv_s33;          
   wire              viv_s34;        
   wire              viv_s35;     
   wire              viv_s36;       
   wire [14:0]       viv_s37;          
   wire              viv_s38;
   wire              viv_s39;
   wire              s_data_ack;
   reg [1:0]         bayer_pat_act;  
   reg [1:0]         bayer_pat_diff; 
   reg               viv_s40;
   wire   viv_s41;
   wire   viv_s42;
   wire   viv_s43; 
   wire   viv_s44;    
   reg [c_dw_si-1:0]    viv_s45;
   reg [c_dw_si-1:0]    viv_s46;
   reg                  viv_s47;
   wire              viv_s48;      
   wire              viv_s49;     
   wire              viv_s50;
   wire              viv_s51;
   reg               viv_s52;
   wire              viv_s53; 
   reg               viv_s54; 
   wire              viv_s55;
   wire              viv_s56;
   wire              viv_s57;
   wire              viv_s58;
   reg               viv_s59;
   reg               viv_s60;   
   reg [c_dw_si-1:0] viv_s61;         
   reg               viv_s62;   
   wire              viv_s63;          
   wire              viv_s64;          
   wire              viv_s65;    
   wire              viv_s66;
   wire              viv_s67;          
   wire              viv_s68;     
   assign viv_s13 = soft_rst | ~inform_en_shd;
   assign viv_s55 = (regs_isp_mode[2:0] == 3'b001)|
                         (regs_isp_mode[2:0] == 3'b101)|
                         (regs_isp_mode[2:0] == 3'b110);
   assign viv_s56     = (regs_isp_mode[2:0] == 3'b000)|
                         (regs_isp_mode[2:0] == 3'b100)|
                         (regs_isp_mode[2:0] == 3'b110);
   assign viv_s57    = (regs_isp_mode[2:0] == 3'b100);
   assign in_size_err     = viv_s14 | viv_s15;
   assign viv_s38 = ((v_start_edge || viv_s5) & viv_s4 & viv_s32);
   assign viv_s37 = (~viv_s56) ? {regs_acq_h_size[14:1],1'b0} :
                                  regs_acq_h_size;
   assign viv_s23 = (regs_acq_h_offs + {1'b0,viv_s37}) - 1'b1;
   assign viv_s24 = (regs_acq_v_offs + {1'b0,regs_acq_v_size}) - 1'b1;
   assign viv_s32 = (viv_s2 == viv_s23);
   assign viv_s33 = (viv_s3 == viv_s24);
   always @(viv_s2 or viv_s3 or viv_s4 or viv_s5 or regs_acq_h_offs or
            viv_s23 or viv_s24 or regs_acq_v_offs ) begin
      if (viv_s4) begin
         if ((viv_s2 >= {1'b0,regs_acq_h_offs}) & (viv_s2 <= viv_s23)) begin
            viv_s7 = 1'b1; 
         end else begin
            viv_s7 = 1'b0;
         end
      end else
        viv_s7 = 1'b0;
      if (viv_s5) begin
         if ((viv_s3 >= {1'b0,regs_acq_v_offs}) & (viv_s3 <= viv_s24)) begin
            viv_s8 = 1'b1; 
         end else begin
            viv_s8 = 1'b0;
         end
      end else 
        viv_s8 = 1'b0;
   end
   assign viv_s6 = viv_s8 & viv_s7;
   assign viv_s34 = (regs_field_selection[1]) ? 
                     (viv_s36==1'b0) :
                     (regs_field_selection[0]) ? 
                     (viv_s36==1'b1) : 1'b1;   
   assign viv_s17          = !inform_en_shd ? 1'b0 :
                        (viv_s55) ? ~viv_s9 : 
                                         viv_s42;
   assign viv_s18          = !inform_en_shd ? 1'b0 :
                        (viv_s55) ? ~viv_s10 : 
                                         viv_s43;
   assign viv_s35 = (viv_s55)   ? viv_s11 : viv_s40;
   assign viv_s36   = (regs_field_inv) ? ~viv_s35  : viv_s35;
   assign viv_s42 = (regs_hsync_pol)? ~s_hsync : s_hsync;
   assign viv_s43 = (regs_vsync_pol)? ~s_vsync : s_vsync;
   assign viv_s51       = viv_s43;
   assign viv_s53 = !viv_s51 & viv_s52;
   assign viv_s50 = viv_s59 ? viv_s47           : viv_s6 & viv_s34 & viv_s47;
   assign viv_s25          = viv_s59 ? viv_s54 : viv_s32; 
   assign viv_s26          = viv_s59 ? viv_s54 : viv_s33;
   assign viv_s41   = (viv_s59) ?  viv_s42 & viv_s43 & s_data_val : s_data_val;
   assign viv_s58 = viv_s57 & !viv_s59;
   always @(*) begin
      case (regs_input_pin_map)
        3'b000 :viv_s45  =  s_data[c_dw_si-1:0];              
        3'b001 :viv_s45  = {s_data[9:0],{(c_dw_si-10){1'b0}}};
        3'b010 :viv_s45  = {s_data[7:0],{(c_dw_si- 8){1'b0}}};
        3'b011 :viv_s45  = {s_data[9:2],{(c_dw_si- 8){1'b0}}};
        default:viv_s45  = s_data[c_dw_si-1:0];
      endcase
   end
   always @(posedge clk or negedge reset_clk_n) begin
      if (!reset_clk_n) begin
         viv_s59 <= 1'b0;
         viv_s46    <= {c_dw_si{1'b0}};
         viv_s47     <= 1'b0;
      end
      else begin
         if (viv_s13) begin
            viv_s59 <= 1'b0;
            viv_s46    <= {c_dw_si{1'b0}};
            viv_s47     <= 1'b0;
         end else begin
            viv_s59 <= viv_s57;
            if (viv_s58) begin
               viv_s47   <= 1'b0;
            end
            else if (viv_s44) begin
               viv_s46  <= viv_s45;
               viv_s47   <= viv_s41;
            end
         end
      end
   end
   assign viv_s44 = viv_s48 | (~viv_s47);
   assign s_data_ack  = viv_s44;
   always @(posedge clk or negedge reset_clk_n) begin
      if(~reset_clk_n) begin
         bayer_pat_act  <= 2'b0;
         bayer_pat_diff <= 2'b0;  
      end else begin
         if (soft_rst) begin
            bayer_pat_act  <= 2'b0;
            bayer_pat_diff <= 2'b0;  
         end else begin
            bayer_pat_diff[1] <= out_v_offs_shd[0];
            bayer_pat_diff[0] <= out_h_offs_shd[0];
            bayer_pat_act[1]  <= regs_bayer_pat[1] ^ out_v_offs_shd[0]; 
            bayer_pat_act[0]  <= regs_bayer_pat[0] ^ out_h_offs_shd[0]; 
         end
      end
   end
   always @(posedge clk or negedge reset_clk_n) begin
      if(~reset_clk_n) begin
         frame_in_irq  <= 1'b0;
      end else begin
         if (soft_rst) begin
            frame_in_irq  <= 1'b0;
         end else begin
            if (inform_mux_h_end & inform_mux_v_end & inform_mux_val)
              frame_in_irq <= 1'b1;
            else
              frame_in_irq <= 1'b0;           
         end
      end
   end
   always @(*) begin
      case (regs_input_selection)
        3'b000 : viv_s0 =  viv_s46[c_dw_si-1:0];
        3'b001 : viv_s0 = {viv_s46[c_dw_si-1:2],2'b00};
        3'b010 : viv_s0 = {viv_s46[c_dw_si-1:2],viv_s46[c_dw_si-1:c_dw_si-2]};
        3'b011 : viv_s0 = {viv_s46[c_dw_si-1:4],4'b00};
        default: viv_s0 = {viv_s46[c_dw_si-1:4],viv_s46[c_dw_si-1:c_dw_si-4]};
      endcase
   end
   always @(*) begin
      case (regs_input_selection)
        3'b000 :viv_s1  =  viv_s45[c_dw_si-1:0];
        3'b001 :viv_s1  = {viv_s45[c_dw_si-1:2],2'b00};
        3'b010 :viv_s1  = {viv_s45[c_dw_si-1:2],viv_s45[c_dw_si-1:c_dw_si-2]};
        3'b011 :viv_s1  = {viv_s45[c_dw_si-1:4],4'b00};
        default:viv_s1  = {viv_s45[c_dw_si-1:4],viv_s45[c_dw_si-1:c_dw_si-4]};
      endcase
   end
   always @(posedge clk or negedge reset_clk_n) begin
      if(~reset_clk_n) begin
         viv_s19     <= 1'b0;        
         viv_s20     <= 1'b0;
         viv_s21 <= 1'b0;
      end else begin
         viv_s19     <= viv_s17;
         viv_s20     <= viv_s18;                 
         viv_s21 <= inform_en_shd;
      end
   end
   assign h_start_edge      = viv_s17 & !viv_s19 & !viv_s22;
   assign v_start_edge      = viv_s18 & !viv_s20 & !viv_s22;
   assign viv_s22 = inform_en_shd & ~viv_s21;
   always @(posedge clk or negedge reset_clk_n) begin
      if(~reset_clk_n) begin         
         viv_s2         <= 16'd0;         
         viv_s3         <= 15'd0;  
         viv_s4          <= 1'b0; 
         viv_s5          <= 1'b0;
         inform_en_shd <= 1'b0;
      end else begin
         if(viv_s13) begin
            viv_s2      <= 16'd0;         
            viv_s3      <= 15'd0;         
            viv_s4       <= 1'b0; 
            viv_s5       <= 1'b0;
            inform_en_shd <= regs_inform_enable; 
         end else begin  
            if (v_start_edge) begin
               viv_s3 <= 15'd0;          
               viv_s5  <= 1'b1; 
            end else if (viv_s32 & viv_s47 & viv_s48) begin
               viv_s3 <= viv_s3 + 1'd1; 
            end
            if (viv_s38 & viv_s47 & viv_s48) begin                  
               if(viv_s33) begin
                  inform_en_shd <= regs_inform_enable; 
                  viv_s5  <= 1'b0;                
               end 
            end
            if (h_start_edge) begin
               viv_s2 <= 16'd0;          
            end else if (viv_s47 & viv_s48 & viv_s4) begin  
               viv_s2 <= viv_s2 + 1; 
            end
            if (h_start_edge & (v_start_edge | viv_s5)) begin
               viv_s4  <= 1'b1; 
            end else if (viv_s32 & viv_s47 & viv_s48) begin  
               viv_s4 <= 1'b0;
            end
         end
      end
   end
   assign viv_s39 = viv_s50 & viv_s25 & viv_s26; 
   always @(posedge clk or negedge reset_clk_n) begin
      if(~reset_clk_n) begin         
         viv_s9       <= 1'b0;    
         viv_s10       <= 1'b0;    
         viv_s11    <= 1'b0; 
         viv_s12          <= 1'b0;       
         field            <= 1'b0;
         viv_s16        <= c_pre0;
      end else begin
         if(viv_s13) begin
            viv_s9    <= 1'b0;    
            viv_s10    <= 1'b0;    
            viv_s11 <= 1'b0; 
            viv_s12       <= 1'b0;
            field         <= 1'b0;
            viv_s16     <= c_pre0;
         end else begin               
            if (viv_s39) begin  
               field <= viv_s36;
            end
            if (s_data_val & s_data_ack & viv_s55) begin
               case (viv_s16) 
                 c_pre1:   begin
                    if(|viv_s1[c_dw_si-1:c_dw_si-8])   
                      viv_s16 <= c_pre0;
                    else
                      viv_s16 <= c_pre2;
                 end
                 c_pre2:   begin
                    if(|viv_s1[c_dw_si-1:c_dw_si-8])   
                      viv_s16 <= c_pre0;
                    else
                      viv_s16 <= c_status;
                 end
                 c_status: begin                        
                    viv_s11 <= viv_s1[c_dw_si-2];
                    viv_s10    <= viv_s1[c_dw_si-3];
                    viv_s9    <= viv_s1[c_dw_si-4];
                    viv_s16     <= c_pre0;
                 end
                 default: begin
                    if(&viv_s1[c_dw_si-1:c_dw_si-8]) 
                      viv_s16 <= c_pre1; 
                 end
               endcase               
            end 
            if(v_start_edge) begin    
               viv_s12 <= ~viv_s17;        
            end
         end
      end
   end
   always @(posedge clk or negedge reset_clk_n) begin
      if(~reset_clk_n) begin         
         viv_s52       <= 1'b0;
         viv_s54 <= 1'b0;
      end else begin
         if(viv_s13) begin
            viv_s52       <= 1'b0;
            viv_s54 <= 1'b0;
         end else begin
            if (viv_s59) begin
               viv_s52       <= viv_s51;
               viv_s54 <= viv_s53;
            end
         end
      end
   end
   always @(posedge clk or negedge reset_clk_n) begin
      if(~reset_clk_n) begin
         viv_s14   <= 1'b0;            
         viv_s15   <= 1'b0;            
      end else begin
         if(soft_rst) begin
            viv_s14   <= 1'b0;
            viv_s15   <= 1'b0;
         end else begin
            viv_s14   <= 1'b0; 
            viv_s15   <= 1'b0; 
            if (!viv_s59) begin 
               if (h_start_edge & viv_s7) begin
                  viv_s14 <= 1'b1;               
               end
               if (v_start_edge & viv_s8) begin
                  viv_s15 <= 1'b1;               
               end
               if ((viv_s47 & viv_s48) | (inform_en_shd)) begin
                  if(~|viv_s37) 
                    viv_s14 <= 1'b1;
                  if(~|regs_acq_v_size) 
                    viv_s15 <= 1'b1;
               end
            end
         end
      end
   end
   always @(posedge clk or negedge reset_clk_n) begin
      if (!reset_clk_n) begin
         viv_s29    <= 1'b0;
         viv_s30   <= {c_dw_si{1'b0}};
         viv_s27  <= 1'b0;
         viv_s28  <= 1'b0;
      end
      else begin
         if (viv_s13) begin
            viv_s29    <= 1'b0;
            viv_s30   <= {c_dw_si{1'b0}};
            viv_s27  <= 1'b0;
            viv_s28  <= 1'b0;
         end else begin
            if (viv_s31) begin
               viv_s29    <= viv_s50; 
               viv_s30   <= viv_s0;
               viv_s27  <= viv_s25;
               viv_s28  <= viv_s26;
            end
         end
      end
   end
   assign viv_s31 = (viv_s49 | (~viv_s29));
   assign viv_s48        = (~viv_s6) ? 1'b1: viv_s31;
   always @(posedge clk or negedge reset_clk_n) begin
      if(~reset_clk_n) begin
          out_bls_val   <= 1'b0;
          out_bls_data  <= {c_dw_si{1'b0}};
          out_bls_h_end <= 1'b0;
          out_bls_v_end <= 1'b0;
      end else begin
         if (soft_rst) begin
            out_bls_val   <= 1'b0;
         end else begin
            out_bls_val   <= viv_s29 & viv_s49;
            out_bls_data  <= viv_s30;
            out_bls_h_end <= viv_s27;
            out_bls_v_end <= viv_s28;
         end
      end
   end
  always @(posedge clk or negedge reset_clk_n) begin
    if (!reset_clk_n) begin 
      viv_s60 <= 1'b0;
      viv_s61       <= {c_dw_si{1'b0}};
      viv_s62 <= 1'b0;
    end
    else begin
      if (soft_rst) begin
        viv_s60 <= 1'b0;
        viv_s61       <= {c_dw_si{1'b0}};
        viv_s62 <= 1'b0;
      end else begin 
        if (viv_s65) begin
          viv_s60 <= viv_s29; 
          viv_s61       <= viv_s30;
          viv_s62 <= viv_s28;
        end
      end
    end
  end
  assign viv_s65 = viv_s64 | (~viv_s60);
  assign viv_s66   = viv_s65;
  assign viv_s67       = viv_s62         ? 1'b1 :
                               (viv_s28 & !viv_s29) ? 1'b1 : 1'b0;
  assign viv_s68  = viv_s60 &
                               inform_mux_ack &
                               (viv_s29 | viv_s67);
  assign viv_s63       = viv_s68;
  assign viv_s64       = viv_s68;
   always @(viv_s59 or viv_s63 or viv_s61 or viv_s67 or 
            viv_s29 or viv_s30 or viv_s27 or viv_s28) begin
      if (!viv_s59) begin
         inform_mux_data  = viv_s30; 
         inform_mux_val   = viv_s29;
         inform_mux_h_end = viv_s27;
         inform_mux_v_end = viv_s28;
      end 
      else begin 
         inform_mux_data  = viv_s61; 
         inform_mux_val   = viv_s63;
         inform_mux_h_end = viv_s67;
         inform_mux_v_end = viv_s67;     
      end
   end
   assign viv_s49 = viv_s59 ? viv_s66 : inform_mux_ack;
   reg[1:0] viv_s69;
   always @(posedge clk or negedge reset_clk_n) begin
       if(~reset_clk_n)
           viv_s69 <= 2'b00;
       else
           viv_s69 <= {viv_s69[0],{inform_mux_h_end&inform_mux_v_end}};
   end 
   wire viv_s70 = viv_s69[1]&(~viv_s69[0]);
   always @(posedge clk or negedge reset_clk_n) begin
      if(~reset_clk_n)
         viv_s40 <= 1'b0;
      else if(viv_s70)
         viv_s40 <= ~viv_s40;
      else
         viv_s40 <= viv_s40;
   end
`ifdef FPGA_DEBUG_ISP
   (* mark_debug = "true" *)reg [15:0]           probing__inform_h_cnt/* synthesis syn_noprune=1 syn_preserve = 1 */;         
   (* mark_debug = "true" *)reg [14:0]           probing__inform_v_cnt/* synthesis syn_noprune=1 syn_preserve = 1 */;         
   (* mark_debug = "true" *)reg                  probing__inform_mux_val/* synthesis syn_noprune=1 syn_preserve = 1 */;   
   (* mark_debug = "true" *)reg [c_dw_si-1:0]    probing__inform_mux_data/* synthesis syn_noprune=1 syn_preserve = 1 */;  
   (* mark_debug = "true" *)reg                  probing__inform_mux_h_end/* synthesis syn_noprune=1 syn_preserve = 1 */; 
   (* mark_debug = "true" *)reg                  probing__inform_mux_v_end/* synthesis syn_noprune=1 syn_preserve = 1 */; 
   (* mark_debug = "true" *)reg                  probing__inform_mux_ack/* synthesis syn_noprune=1 syn_preserve = 1 */;   
always@(posedge clk)begin
        probing__inform_h_cnt     <= viv_s2           ;         
        probing__inform_v_cnt     <= viv_s3           ;         
        probing__inform_mux_val   <= inform_mux_val  ;   
        probing__inform_mux_data  <= inform_mux_data ;  
        probing__inform_mux_h_end <= inform_mux_h_end; 
        probing__inform_mux_v_end <= inform_mux_v_end; 
        probing__inform_mux_ack   <= inform_mux_ack  ;   
end
`endif
endmodule
