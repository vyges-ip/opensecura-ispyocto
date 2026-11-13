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

module vsisp_self_hor_scale 
  (
   clk, 
   reset_n,
   soft_rst,  
   cfg_upd,
   gen_cfg_upd,
   scale_h_en, 
   scale_h_up, 
   scale_h,
   phase_h,
   scale_h_lut_ad, 
   scale_h_lut,
   scale_h_en_sdw,
   scale_h_up_sdw,
   scale_h_sdw,
   phase_h_sdw,
   in_pix_data, 
   in_val, 
   in_h_end, 
   in_v_end,
   in_cfg_upd,                  
   in_ack,
   out_pix_data, 
   out_val, 
   out_h_end, 
   out_v_end,
   out_cfg_upd,
   out_ack);
`include "vsisp_self_resize.vh"
   input                           clk; 
   input                           reset_n;
   input                           soft_rst;    
   input                           cfg_upd;
   input                           gen_cfg_upd;
   input                           scale_h_en;
   input                           scale_h_up; 
   input [c_scale_h - 1:0]         scale_h; 
   input [c_phase_h - 1:0]         phase_h; 
   output [c_scale_lut_addr - 1:0] scale_h_lut_ad; 
   wire [c_scale_lut_addr - 1:0]   scale_h_lut_ad;
   input [c_scale_lut - 1:0]       scale_h_lut; 
   input [7:0]                     in_pix_data; 
   input                           in_val; 
   input                           in_h_end; 
   input                           in_v_end;
   input                           in_cfg_upd;   
   output                          in_ack; 
   reg                             in_ack;
   output [7:0]                    out_pix_data; 
   reg [7:0]                       out_pix_data;
   output                          out_val; 
   reg                             out_val;
   output                          out_h_end; 
   reg                             out_h_end;
   output                          out_v_end; 
   reg                             out_v_end;
   output                          out_cfg_upd;
   input                           out_ack; 
   output                          scale_h_en_sdw; 
   reg                             scale_h_en_sdw;
   output                          scale_h_up_sdw;
   reg                             scale_h_up_sdw;   
   output [c_scale_h - 1:0]        scale_h_sdw; 
   reg [c_scale_h - 1:0]           scale_h_sdw; 
   output [c_scale_h - 1:0]        phase_h_sdw; 
   reg [c_scale_h - 1:0]           phase_h_sdw;    
   reg                        viv_s0; 
   reg                        viv_s1;
   reg                        viv_s2; 
   parameter                  c_idle   = 1'b0; 
   parameter                  c_output = 1'b1; 
   reg [c_lbuf_h - 1:0]       viv_s3; 
   wire [(c_scale_h * 2) - 1:0] viv_s4; 
   wire [(c_scale_h * 2) - 1:0] viv_s5; 
   wire [(c_scale_h * 2) - 1:0] viv_s6; 
   wire [(c_scale_h * 2) - 1:0] viv_s7; 
   reg [c_scale_h - 1:0]      viv_s8; 
   wire [c_scale_h - 1:0]     viv_s9; 
   reg [c_scale_h:0]          viv_s10; 
   wire [c_scale_h - 1:0]     viv_s11; 
   reg [c_scale_h - 1:0]      viv_s12; 
   reg [c_scale_h - 1:0]      viv_s13; 
   reg [c_scale_h - 1:0]      viv_s14; 
   reg [c_scale_h - 1:0]      viv_s15; 
   wire [c_scale_h - 1:0]     viv_s16; 
   wire [c_scale_h - 1:0]     viv_s17; 
   wire [c_scale_h - 1:0]     viv_s18; 
   wire [c_scale_h - 1:0]     viv_s19; 
   wire [15:0]                viv_s20;
   wire [c_scale_h :0]        viv_s21;
   wire                       viv_s22;
   reg [c_lbuf_h - 1:0]       viv_s23; 
   reg                        viv_s24;
   reg                        viv_s25;
   reg [c_scale_h - 1:0]      viv_s26; 
   reg                        viv_s27; 
   reg                        viv_s28; 
   reg [7:0]                  viv_s29; 
   reg                        viv_s30; 
   reg                        viv_s31; 
   reg                        viv_s32; 
   reg [c_lbuf_h + 1:0]       viv_s33; 
   reg [9:0]                  viv_s34; 
   reg [7:0]                  viv_s35; 
   reg                        viv_s36; 
   reg                        viv_s37; 
   reg                        viv_s38; 
   wire                       viv_s39; 
   reg                        viv_s40; 
   reg [7:0]                  viv_s41; 
   reg                        viv_s42; 
   reg                        viv_s43; 
   reg                        viv_s44; 
   reg                        viv_s45; 
   reg                        viv_s46;
   reg                        viv_s47;   
   reg                        viv_s48;
   reg                        viv_s49;   
   wire                       viv_s50;
   reg [19:0]                 viv_s51;
   assign viv_s50 = (out_val & out_h_end & out_v_end & out_ack & (out_cfg_upd || gen_cfg_upd)) | 
                    cfg_upd;
   assign viv_s11 = scale_h_sdw;
   assign viv_s20 = {16{1'b0}};
   assign viv_s21 = viv_s10 - {1'b0, phase_h_sdw};
   assign viv_s22 = viv_s10[c_scale_h] & viv_s21[c_scale_h] 
                              & |(viv_s21[c_scale_h-1:0]);
   always @(posedge clk or negedge reset_n)
     begin : proc_shadow
        if (~reset_n)
          begin
             scale_h_en_sdw <= 1'b0;
             scale_h_up_sdw <= 1'b0;
             scale_h_sdw    <= {c_scale_h{1'b0}}; 
             phase_h_sdw    <= {c_scale_h{1'b0}}; 
          end
        else
          begin
             if (viv_s50)                  
               begin
                  scale_h_en_sdw <= scale_h_en;
                  scale_h_up_sdw <= scale_h_up;
                  scale_h_sdw    <= scale_h; 
                  phase_h_sdw    <= phase_h; 
               end 
          end 
     end 
   always @(scale_h_en_sdw or viv_s39 or in_pix_data or in_val or in_h_end or 
            in_v_end or viv_s35 or viv_s36 or viv_s37 or viv_s38 or out_ack or 
            in_cfg_upd or viv_s48)
     begin : proc_bypass
        if (scale_h_en_sdw)
          begin
             viv_s41      = (in_pix_data[7:0]); 
             viv_s42         = in_val; 
             viv_s43       = in_h_end; 
             viv_s44       = in_v_end;
             viv_s46 = in_cfg_upd;              
             in_ack        = viv_s39; 
             out_pix_data    = viv_s35; 
             out_val         = viv_s36; 
             out_h_end       = viv_s37; 
             out_v_end       = viv_s38;
             viv_s49 = viv_s48; 
             viv_s45           = out_ack; 
          end
        else
          begin
             viv_s41      = 8'b0; 
             viv_s42         = 1'b0; 
             viv_s43       = 1'b0; 
             viv_s44       = 1'b0;
             viv_s46 = 1'b0;             
             in_ack        = out_ack; 
             out_pix_data    = in_pix_data; 
             out_val         = in_val; 
             out_h_end       = in_h_end; 
             out_v_end       = in_v_end;
             viv_s49 = in_cfg_upd;
             viv_s45           = 1'b0; 
          end 
     end
   assign out_cfg_upd = viv_s49;
   always @(*)     
     begin : proc_calc
        viv_s10 = ({1'b0, viv_s8}) + ({1'b0, viv_s11});
        if (scale_h_up_sdw) begin
           viv_s12 = {viv_s20[c_scale_h - 1:10], viv_s3[7:0], 2'b00}; 
           viv_s13 = viv_s9; 
           viv_s14 = ({viv_s20[c_scale_h - 1:10], viv_s41, 2'b00}); 
           viv_s15 = viv_s9; 
        end
        else begin
           if ((viv_s10[c_scale_h]) == 1'b1) begin
              viv_s12 = {viv_s20[c_scale_h - 1:10], viv_s41, 2'b00}; 
              viv_s13 = viv_s10[c_scale_h - 1:0]; 
           end
           else begin
              viv_s12 = {viv_s20[c_scale_h - 1:10], viv_s41, 2'b00};
              if (viv_s0)
                viv_s13 = viv_s11+phase_h_sdw;
              else
                viv_s13 = viv_s11; 
           end 
           viv_s14 = {viv_s20[c_scale_h - 1:10], viv_s41, 2'b00}; 
           viv_s15 = viv_s8; 
        end 
     end 
   vsisp_self_hor_mult u_self_hor_mult 
     (
      .a_y1(viv_s16), 
      .b_y1(viv_s17), 
      .a_y2(viv_s18), 
      .b_y2(viv_s19), 
      .mult_y1(viv_s6),
      .mult_y2(viv_s7)); 
   assign viv_s16  = viv_s12;
   assign viv_s17  = viv_s13;
   assign viv_s18  = viv_s14;
   assign viv_s19  = viv_s15;
   assign viv_s4   = {2'b0, viv_s6[(c_scale_h * 2) - 1:2]};
   assign viv_s5   = {2'b0, viv_s7[(c_scale_h * 2) - 1:2]};
   always @(posedge clk or negedge reset_n)
     begin : proc_scale_regs
        if (~reset_n) begin
           viv_s3     <= {c_lbuf_h{1'b0}}; 
           viv_s0         <= 1'b1;
           viv_s1          <= 1'b0;
           viv_s8         <= {c_scale_h{1'b0}}; 
           viv_s2  <= c_idle; 
           viv_s40       <= 1'b1; 
           viv_s35      <= 8'b0; 
           viv_s36         <= 1'b0; 
           viv_s37       <= 1'b0; 
           viv_s38       <= 1'b0;
           viv_s48     <= 1'b0;
           viv_s51 <= 20'd0;
        end
        else begin
           if (soft_rst)
             begin
                viv_s3     <= {c_lbuf_h{1'b0}}; 
                viv_s0         <= 1'b1;
                viv_s1          <= 1'b0;
                viv_s8         <= phase_h_sdw; 
                viv_s2  <= c_idle; 
                viv_s40       <= 1'b1; 
                viv_s35      <= 8'b0; 
                viv_s36         <= 1'b0; 
                viv_s37       <= 1'b0; 
                viv_s38       <= 1'b0;
                viv_s48     <= 1'b0;  
                viv_s51 <= 20'd0;
             end
           else
             begin
                if (out_val & out_ack) begin
                   if (out_h_end) begin
                      viv_s51 <= 20'd0;
                   end else begin
                      viv_s51 <= viv_s51 + 20'd1;
                   end
                end
                viv_s0        <= viv_s24;
                viv_s1         <= viv_s25;
                viv_s2 <= viv_s27; 
                viv_s40      <= viv_s28;
                viv_s8        <= viv_s26; 
                if (viv_s50)                 
                  begin
                     viv_s3 <= {c_lbuf_h{1'b0}}; 
                     viv_s8     <= phase_h; 
                  end
                else
                  begin
                     viv_s3 <= viv_s23; 
                     viv_s8     <= viv_s26; 
                  end 
                viv_s35  <= viv_s29; 
                viv_s36     <= viv_s30; 
                viv_s37   <= viv_s31; 
                viv_s38   <= viv_s32;
                viv_s48 <= viv_s47; 
             end 
        end
     end
   always @(*)     
     begin : proc_scale
        viv_s23     = viv_s3; 
        viv_s24         = viv_s0;
        viv_s25          = viv_s1;
        viv_s26         = viv_s8; 
        viv_s27  = viv_s2; 
        viv_s28       = viv_s40; 
        viv_s29      = viv_s35; 
        viv_s30         = viv_s36; 
        viv_s31       = viv_s37; 
        viv_s32       = viv_s38;
        viv_s47     = viv_s48;         
        viv_s33 = {c_lbuf_h + 2{1'b0}}; 
        viv_s34  = 10'b0;
        if (viv_s36 & viv_s45) begin
           viv_s30     = 1'b0; 
           viv_s31   = 1'b0;
           viv_s47 = 1'b0;            
           if (viv_s37 & viv_s38) begin
              viv_s32 = 1'b0; 
           end
        end 
        if (viv_s46 & viv_s42 & viv_s39 ) viv_s47 = 1'b1;
        else viv_s47 = 1'b0;
        viv_s28 = viv_s45; 
        if (~scale_h_up_sdw) begin
           if (viv_s42 & viv_s39) begin
              if ((viv_s10[c_scale_h]) | viv_s43) begin
                 viv_s30 = 1'b1; 
                 viv_s34 = viv_s3[c_lbuf_h - 1:c_lbuf_h - 10] +
                                    ({viv_s41, 2'b10}) -  
                                    viv_s5[c_scale_h + 7:c_scale_h - 2]; 
                 viv_s29 = viv_s34[9:2]; 
                 viv_s33 = viv_s4[c_scale_h + 7:
                                             c_scale_h - c_lbuf_h + 6];
                 viv_s32       = viv_s44; 
              end
              else begin
                 viv_s33 = ({viv_s3, 2'b00}) 
                   + viv_s4[c_scale_h + 7:c_scale_h - c_lbuf_h + 6];
              end 
              viv_s23 = viv_s33[c_lbuf_h + 1:2]; 
              viv_s26     = viv_s10[c_scale_h - 1:0];
              viv_s24 = 1'b0;
              if (viv_s43) begin
                 viv_s31   = 1'b1; 
                 viv_s23 = {c_lbuf_h{1'b0}}; 
                 viv_s26     = phase_h_sdw;
                 viv_s24 = 1'b1;
              end
           end 
        end
        else begin
           if (viv_s45) begin
              if ((viv_s10[c_scale_h]) == 1'b0 & ~viv_s0) begin
                 viv_s28 = 1'b0; 
              end
              if (viv_s1) begin
                 if (viv_s42) begin
                    if (~viv_s21[c_scale_h] 
                        & (|viv_s21[c_scale_h:0])) begin
                       viv_s31      = 1'b1;
                       viv_s30 = 1'b1;
                       viv_s29     = (viv_s3[7:0]); 
                       viv_s32      = viv_s44;
                       viv_s26     = phase_h_sdw;
                       viv_s23 = {c_lbuf_h{1'b0}}; 
                       viv_s24     = 1'b1;
                       viv_s27 = c_output;
                       viv_s28 = viv_s45;
                       viv_s25 = 1'b0;
                    end else begin 
                       viv_s31      = 1'b0;
                       viv_s30 = 1'b1;
                       viv_s29     = (viv_s3[7:0]); 
                       viv_s32      = viv_s44;
                       viv_s26     = viv_s10[c_scale_h - 1:0];
                       viv_s27 = c_output;
                       viv_s28 = 1'b0;
                       viv_s25 = 1'b1; 
                    end
                 end
              end else begin
                 if (viv_s42) begin
                    if (~viv_s0 | ~(|phase_h_sdw)) begin
                       viv_s30 = 1'b1; 
                       if (viv_s0)begin
                          viv_s34 = ({viv_s41, 2'b00}); 
                       end
                       else begin
                          viv_s34 = (({viv_s3[7:0], 2'b00}) +
                                         viv_s5[c_scale_h + 7:c_scale_h - 2] - 
                                         viv_s4[c_scale_h + 7:c_scale_h - 2]); 
                       end 
                       viv_s29     = viv_s34[9:2]; 
                       viv_s31      = viv_s43 & viv_s22;
                       viv_s32      = viv_s44; 
                       viv_s27 = c_output; 
                       viv_s26        = viv_s10[c_scale_h - 1:0]; 
                       if (viv_s43) begin
                          if (viv_s22) begin
                             viv_s26     = phase_h_sdw;
                             viv_s23 = {c_lbuf_h{1'b0}}; 
                             viv_s24     = 1'b1;
                          end else begin
                             viv_s28 = 1'b0;
                             if (viv_s10[c_scale_h])
                               viv_s25 = 1'b1;
                          end
                       end
                    end
                    if ((viv_s10[c_scale_h]) | viv_s0) begin
                       viv_s23 = {viv_s20[c_lbuf_h - 9:0],viv_s41};
                       if (viv_s0) viv_s24     = 1'b0;
                       if (~viv_s43 | viv_s22)
                         viv_s28   = viv_s45; 
                    end
                    else begin
                       viv_s28 = 1'b0; 
                    end 
                 end
                 else begin
                    if (viv_s2 == c_output) begin
                       viv_s30        = 1'b0; 
                       viv_s27 = c_idle; 
                    end 
                 end 
              end 
           end else begin
              if (viv_s2 == c_output) begin
                 viv_s28 = 1'b0; 
              end 
           end 
        end 
     end
   assign viv_s39 = viv_s28;
   assign scale_h_lut_ad = (viv_s8[c_scale_h - 1:c_scale_h - c_scale_lut_addr]);
   assign viv_s9        = {(scale_h_lut), viv_s20[c_scale_h - c_scale_lut - 1:0]};
endmodule
