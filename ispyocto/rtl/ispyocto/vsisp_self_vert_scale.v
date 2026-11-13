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

module vsisp_self_vert_scale 
  (
   clk, 
   reset_n,
   soft_rst, 
   cfg_upd,
   gen_cfg_upd,
   scale_v_en, 
   scale_v_up, 
   scale_v,
   phase_v,
   scale_v_lut_ad,
   scale_v_lut,
   scale_v_en_sdw,
   scale_v_up_sdw,
   scale_v_sdw,
   phase_v_sdw,                   
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
   out_ack, 
   ram_wr_n, 
   ram_cs_n, 
   ram_addr, 
   ram_wdata, 
   ram_rdata);
`include "vsisp_self_resize.vh"
   input                           clk; 
   input                           reset_n;
   input                           soft_rst;    
   input                           cfg_upd;   
   input                           gen_cfg_upd;   
   input                           scale_v_en; 
   input                           scale_v_up; 
   input [c_scale_v - 1:0]         scale_v; 
   input [c_phase_v - 1:0]         phase_v;    
   output [c_scale_lut_addr - 1:0] scale_v_lut_ad; 
   wire [c_scale_lut_addr - 1:0]   scale_v_lut_ad;
   input [c_scale_lut - 1:0]       scale_v_lut; 
   input [7:0]                     in_pix_data; 
   input                           in_val; 
   input                           in_h_end; 
   input                           in_v_end; 
   output                          in_ack; 
   reg                             in_ack;
   input                           in_cfg_upd;   
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
   output                          scale_v_en_sdw; 
   reg                             scale_v_en_sdw;
   output                          scale_v_up_sdw;
   reg                             scale_v_up_sdw;   
   output [c_scale_v - 1:0]        scale_v_sdw; 
   reg [c_scale_v - 1:0]           scale_v_sdw; 
   output [c_scale_v - 1:0]        phase_v_sdw; 
   reg [c_scale_v - 1:0]           phase_v_sdw;    
   output                          ram_wr_n; 
   output                          ram_cs_n; 
   output [c_ram_width-1:0]        ram_addr; 
   reg [c_ram_width-1:0]           ram_addr;
   output [31:0]                   ram_wdata; 
   reg [31:0]                      ram_wdata;
   input [31:0]                    ram_rdata; 
   reg         viv_s0; 
   reg         viv_s1; 
   reg         viv_s2; 
   reg         viv_s3; 
   reg         viv_s4; 
   reg         viv_s5; 
   reg         viv_s6; 
   reg         viv_s7; 
   reg [1:0]   viv_s8; 
   parameter   c_idle    = 2'b00; 
   parameter   c_second  = 2'b01; 
   parameter   c_between = 2'b10; 
   reg         viv_s9; 
   reg         viv_s10; 
   reg         viv_s11; 
   reg         viv_s12; 
   reg         viv_s13; 
   reg [31:0]  viv_s14; 
   reg         viv_s15; 
   reg         viv_s16; 
   reg [7:0]   viv_s17; 
   reg         viv_s18; 
   reg         viv_s19; 
   reg         viv_s20; 
   reg         viv_s21; 
   reg [7:0]   viv_s22; 
   reg         viv_s23; 
   reg         viv_s24; 
   reg         viv_s25; 
   reg         viv_s26; 
   reg         viv_s27; 
   reg         viv_s28; 
   reg         viv_s29; 
   reg [15:0]  viv_s30; 
   reg [15:0]  viv_s31; 
   reg [c_ram_width:0]  viv_s32; 
   reg [c_ram_width-1:0]   viv_s33; 
   reg [c_ram_width-1:0]   viv_s34; 
   reg [c_ram_width-1:0]   viv_s35; 
   reg [c_ram_width-1:0]   viv_s36; 
   reg [c_ram_width:0]  viv_s37; 
   reg [31:0]  viv_s38; 
   wire [(c_scale_v * 2) - 1:0] viv_s39; 
   wire [(c_scale_v * 2) - 1:0] viv_s40; 
   wire [(c_scale_v * 2) - 1:0] viv_s41; 
   wire [(c_scale_v * 2) - 1:0] viv_s42; 
   wire [c_scale_v - 1:0]     viv_s43; 
   reg [c_scale_v - 1:0]      viv_s44; 
   reg [c_scale_v:0]          viv_s45; 
   wire [c_scale_v:0]          viv_s46; 
   wire [c_scale_v - 1:0]     viv_s47; 
   reg [c_scale_v - 1:0]      viv_s48; 
   reg [c_scale_v - 1:0]      viv_s49; 
   reg [c_scale_v - 1:0]      viv_s50; 
   reg [c_scale_v - 1:0]      viv_s51; 
   wire [c_scale_v - 1:0]     viv_s52; 
   wire [c_scale_v - 1:0]     viv_s53; 
   wire [c_scale_v - 1:0]     viv_s54; 
   wire [c_scale_v - 1:0]     viv_s55; 
   wire [63:0]                viv_s56; 
   wire [7:0]                 viv_s57; 
   wire [c_scale_v :0]        viv_s58;
   wire                       viv_s59;
   reg [15:0]                 viv_s60; 
   reg [15:0]                 viv_s61; 
   reg [15:0]                 viv_s62; 
   reg [15:0]                 viv_s63; 
   reg [15:0]                 viv_s64;   
   reg [15:0]                 viv_s65; 
   reg [c_lbuf_v + 1:0]       viv_s66; 
   reg                        viv_s67; 
   reg                        viv_s68; 
   reg                        viv_s69; 
   reg                        viv_s70; 
   reg [c_scale_h - 1:0]      viv_s71; 
   reg [1:0]                  viv_s72; 
   reg                        viv_s73; 
   reg                        viv_s74; 
   reg [7:0]                  viv_s75; 
   reg [9:0]                  viv_s76; 
   reg                        viv_s77; 
   reg                        viv_s78; 
   reg                        viv_s79; 
   reg                        viv_s80; 
   reg                        viv_s81; 
   reg                        viv_s82; 
   reg [c_ram_width:0]        viv_s83; 
   reg [c_ram_width-1:0]      viv_s84; 
   reg [c_ram_width-1:0]      viv_s85; 
   reg [c_ram_width-1:0]      viv_s86; 
   reg [c_ram_width:0]        viv_s87; 
   reg [7:0]                  viv_s88; 
   reg                        viv_s89; 
   reg                        viv_s90; 
   reg                        viv_s91; 
   reg                        viv_s92; 
   reg [7:0]                  viv_s93; 
   reg                        viv_s94; 
   reg                        viv_s95; 
   reg                        viv_s96; 
   reg                        viv_s97; 
   reg                        viv_s98;
   reg                        viv_s99;
   reg                        viv_s100;   
   reg                        viv_s101;
   reg                        viv_s102;   
   reg                        viv_s103;
   reg                        viv_s104;
   wire                       viv_s105;
   wire                       viv_s106;
   wire                       viv_s107;
   wire                       viv_s108;
   wire                       viv_s109;
   wire                       viv_s110;
   reg [19:0]                 viv_s111;
   reg [19:0]                 viv_s112;
   assign viv_s105 = (out_val & out_h_end & out_v_end & out_ack & (out_cfg_upd || gen_cfg_upd)) | 
                    cfg_upd;
   assign viv_s106     = viv_s89 & viv_s97 & viv_s90 & viv_s91;
   assign viv_s107  = viv_s94 & viv_s92;
   assign viv_s108 = viv_s79 & viv_s97;
   assign viv_s109 = viv_s9 & viv_s10;   
   assign viv_s110 = (viv_s45[c_scale_v] & viv_s46[c_scale_v]);
   assign viv_s47    = scale_v_sdw;
   assign viv_s56 = 64'b0;
   assign viv_s57 = 8'b0;
   assign viv_s58 = viv_s45 - {1'b0, phase_v_sdw};
   assign viv_s59       = viv_s45[c_scale_v] & viv_s58[c_scale_v]
                          & |(viv_s58[c_scale_v-1:0]);
   assign viv_s46          = viv_s45[c_scale_v-1:0] + viv_s47;
   always @(posedge clk or negedge reset_n)
     begin : proc_shadow
        if (~reset_n)
          begin
             scale_v_en_sdw <= 1'b0;
             scale_v_up_sdw <= 1'b0;
             scale_v_sdw    <= {c_scale_v{1'b0}};
             phase_v_sdw    <= {c_scale_v{1'b0}};
          end
        else
          begin
             if (viv_s105)
               begin
                  scale_v_en_sdw <= scale_v_en;
                  scale_v_up_sdw <= scale_v_up;
                  scale_v_sdw    <= scale_v; 
                  phase_v_sdw    <= phase_v; 
               end 
          end 
     end 
   always @(scale_v_en_sdw or in_pix_data or in_val or in_h_end or in_v_end or 
            viv_s21 or viv_s22 or viv_s23 or viv_s24 or 
            viv_s25 or out_ack or in_cfg_upd or viv_s99)
     begin : proc_bypass
        if (scale_v_en_sdw)
          begin
             viv_s17    = (in_pix_data[7:0]); 
             viv_s18       = in_val; 
             viv_s19     = in_h_end; 
             viv_s20     = in_v_end;
             viv_s98   = in_cfg_upd;              
             in_ack          = viv_s21; 
             out_pix_data    = viv_s22; 
             out_val         = viv_s23; 
             out_h_end       = viv_s24; 
             out_v_end       = viv_s25;  
             viv_s103 = viv_s99;         
             viv_s26       = out_ack;
          end
        else
          begin
             viv_s17    = 8'b0; 
             viv_s18       = 1'b0; 
             viv_s19     = 1'b0; 
             viv_s20     = 1'b0;
             viv_s98   = 1'b0; 
             viv_s26       = 1'b0; 
             out_pix_data    = in_pix_data; 
             out_val         = in_val; 
             out_h_end       = in_h_end; 
             out_v_end       = in_v_end;
             viv_s103 = in_cfg_upd; 
             in_ack          = out_ack; 
          end 
     end
   assign out_cfg_upd = viv_s103;
   always @(viv_s17  or viv_s18 or viv_s19 or 
            viv_s20 or viv_s92 or viv_s27 or viv_s4 or viv_s98)
     begin : proc_even_width
        viv_s93  = viv_s17; 
        viv_s94     = viv_s18; 
        viv_s96   = viv_s20;
        viv_s102 = viv_s98;         
        if (~viv_s27)
          begin
             if (viv_s18 & viv_s19 & ~viv_s4)
               begin
                  if (viv_s92)
                    begin
                       viv_s28 = 1'b1; 
                    end
                  else
                    begin
                       viv_s28 = 1'b0; 
                    end 
                  viv_s21 = 1'b0; 
                  viv_s95   = 1'b0;
                  viv_s102 = 1'b0; 
               end
             else
               begin
                  viv_s28 = 1'b0; 
                  viv_s21   = viv_s92; 
                  viv_s95     = viv_s19;
                  viv_s102   = viv_s98;
               end 
          end
        else
          begin
             viv_s28 = ~viv_s92; 
             viv_s21   = viv_s92; 
             viv_s95     = viv_s19;
             viv_s102   = viv_s98;
          end 
     end
   reg viv_s113;
   always @(posedge clk or negedge reset_n) begin
     if(~reset_n) begin
       viv_s113 <= 1'b0;
     end
     else begin
       if(viv_s102) begin
         viv_s113 <= 1'b1;
       end
       if(viv_s89 & viv_s97 & viv_s90 & viv_s91) begin
         viv_s113 <= 1'b0;
       end
     end
   end 
   wire viv_s114 = viv_s102 || viv_s113;
   always @(posedge clk or negedge reset_n)
     begin : proc_add_pel_regs
        if (~reset_n)
          begin
             viv_s27   <= 1'b0; 
             viv_s29 <= 1'b0; 
          end
        else
          begin
             if (soft_rst)
               begin
                  viv_s27   <= 1'b0; 
                  viv_s29 <= 1'b0; 
               end
             else
               begin          
                  viv_s27 <= viv_s28; 
                  if (viv_s28)
                    begin
                       viv_s29 <= 1'b1; 
                    end 
                  if (viv_s106)
                    begin
                       viv_s29 <= 1'b0; 
                    end 
               end
          end
     end
   always @(viv_s88 or viv_s91 or viv_s26 or viv_s89 or viv_s90 or 
            viv_s29 or viv_s33 or viv_s6 or viv_s101 or viv_s100)
     begin : proc_odd_width
        viv_s22  = viv_s88; 
        viv_s25   = viv_s91; 
        viv_s97         = viv_s26;     
        if (~viv_s29)
          begin
             viv_s23     = viv_s89;
             viv_s24   = viv_s90;
             viv_s99 = viv_s101;    
          end
        else
          begin
             if ((viv_s33 == {c_ram_width{1'b0}}) & (viv_s6 == 1'b0))
               begin
                  viv_s24   = viv_s89;
                  viv_s23     = viv_s89;
                  viv_s99 = viv_s100; 
               end
             else
               begin
                  viv_s24   = 1'b0; 
                  viv_s23     = viv_s89 & ~viv_s90;
                  viv_s99 = 1'b0; 
               end 
          end 
     end 
   always @(viv_s90 or viv_s6 or viv_s108)
     begin : proc_write_odd
        if (viv_s108)
          begin
             if (viv_s90)
               begin
                  viv_s74 = 1'b0; 
               end
             else
               begin
                  viv_s74 = ~viv_s6; 
               end 
          end
        else
          begin
             viv_s74 = viv_s6; 
          end 
     end 
   always @(*)
     begin : proc_calc
        viv_s45 = ({1'b0, viv_s44}) + ({1'b0, viv_s47});
        if (scale_v_up_sdw)
          begin
             viv_s48 = {viv_s56[c_scale_v - 1:10], viv_s30[7:0], 2'b00}; 
             viv_s49 = viv_s43; 
          end
        else
          begin
             if ((viv_s45[c_scale_v]) == 1'b1)
               begin
                  viv_s48 = {viv_s56[c_scale_v - 1:10], viv_s93, 2'b00}; 
                  viv_s49 = viv_s45[c_scale_v - 1:0]; 
               end
             else
               begin
                  viv_s48 = {viv_s56[c_scale_v - 1:10], viv_s93, 2'b00}; 
                  if (viv_s0)
                    viv_s49 = viv_s47+phase_v_sdw;
                  else
                    viv_s49 = viv_s47; 
               end 
          end 
        if (viv_s8 == c_between)
          begin
             viv_s50 = ({viv_s56[c_scale_v - 1:10], viv_s30[15:8], 2'b00}); 
             viv_s51 = viv_s43; 
          end
        else
          begin
             viv_s50 = ({viv_s56[c_scale_v - 1:10], viv_s93, 2'b00}); 
             if (scale_v_up_sdw)
               begin
                  viv_s51 = viv_s43; 
               end
             else
               begin
                  viv_s51 = viv_s44; 
               end 
          end 
     end 
   vsisp_self_vert_mult u_self_vert_mult 
     (
      .a_y1(viv_s52), 
      .b_y1(viv_s53), 
      .a_y2(viv_s54), 
      .b_y2(viv_s55), 
      .mult_y1(viv_s41), 
      .mult_y2(viv_s42)); 
   assign viv_s52 = viv_s48;
   assign viv_s53 = viv_s49;
   assign viv_s54 = viv_s50;
   assign viv_s55 = viv_s51;
   assign viv_s39  = {2'b0, viv_s41[(c_scale_v * 2) - 1:2]};
   assign viv_s40  = {2'b0, viv_s42[(c_scale_v * 2) - 1:2]};
   always @(posedge clk or negedge reset_n)
     begin : proc_scale_regs
        if (~reset_n)
          begin
             viv_s44        <= {c_scale_v{1'b0}}; 
             viv_s4      <= 1'b0; 
             viv_s0        <= 1'b1; 
             viv_s1    <= 1'b1; 
             viv_s32          <= {c_ram_width+1{1'b0}}; 
             viv_s37        <= c_max_hsize-1; 
             viv_s6    <= 1'b0; 
             viv_s8 <= c_idle; 
             viv_s2         <= 1'b0; 
             viv_s3     <= 1'b0; 
             viv_s88  <= 8'b0; 
             viv_s89     <= 1'b0; 
             viv_s79   <= 1'b0; 
             viv_s90   <= 1'b0; 
             viv_s91   <= 1'b0;
             viv_s101 <= 1'b0;             
             viv_s31  <= 16'b0;
             viv_s104 <= 1'b0;
             viv_s111  <= 20'd0;
             viv_s112 <= 20'd0; 
          end
        else
          begin
             if (soft_rst)
               begin
                  viv_s44        <= phase_v_sdw;   
                  viv_s4      <= 1'b0; 
                  viv_s0        <= 1'b1; 
                  viv_s1    <= 1'b1; 
                  viv_s32          <= {c_ram_width+1{1'b0}}; 
                  viv_s37        <= c_max_hsize-1; 
                  viv_s6    <= 1'b0; 
                  viv_s8 <= c_idle; 
                  viv_s2         <= 1'b0; 
                  viv_s3     <= 1'b0; 
                  viv_s88     <= 8'b0; 
                  viv_s89        <= 1'b0; 
                  viv_s79      <= 1'b0; 
                  viv_s90      <= 1'b0; 
                  viv_s91      <= 1'b0;
                  viv_s101    <= 1'b0;             
                  viv_s31     <= 16'b0;
                  viv_s104    <= 1'b0;
                  viv_s111  <= 20'd0;
                  viv_s112 <= 20'd0; 
               end
             else
               begin
                  viv_s4      <= viv_s82; 
                  viv_s0        <= viv_s67; 
                  viv_s1    <= viv_s68; 
                  viv_s32          <= viv_s83; 
                  viv_s37        <= viv_s87; 
                  viv_s6    <= viv_s74; 
                  viv_s8 <= viv_s72; 
                  viv_s2         <= viv_s69;
                  viv_s3     <= viv_s70; 
                  viv_s44        <= viv_s71;
                  if (viv_s105)                  
                    begin
                       viv_s44 <= phase_v; 
                    end
                  else
                    begin
                       viv_s44 <= viv_s71; 
                    end 
                  viv_s88    <= viv_s75;
                  viv_s91     <= viv_s81;
                  viv_s90     <= viv_s80;  
                  viv_s31    <= viv_s65;
                  viv_s101   <= viv_s100; 
                  viv_s89       <= viv_s77;
                  viv_s79     <= viv_s78;
                  if (viv_s107) begin
                     viv_s104 <= viv_s96;
                  end
                  if (viv_s89 & viv_s97) begin
                     if (viv_s90) begin
                        viv_s112 <= 20'd0;
                     end else begin
                        viv_s112 <= viv_s112 + 20'd1;
                     end
                  end
                  if (viv_s89 & viv_s97 & viv_s90) begin
                     if (viv_s91) begin
                        viv_s111 <= 20'd0;
                     end else begin
                        viv_s111 <= viv_s111 + 20'd1;
                     end
                  end
               end  
          end 
     end   
   always @(*)     
   begin : proc_scale
      viv_s71        = viv_s44; 
      viv_s82      = viv_s4; 
      viv_s67        = viv_s0; 
      viv_s68    = viv_s1; 
      viv_s73      = viv_s97; 
      viv_s69         = viv_s2;
      viv_s70     = viv_s3;
      viv_s72 = viv_s8; 
      viv_s83          = viv_s32; 
      viv_s87        = viv_s37; 
      viv_s75     = viv_s88; 
      viv_s77        = viv_s89 & ~viv_s97;
      viv_s78      = viv_s89 & ~viv_s97;
      viv_s80      = viv_s90 & ~viv_s97; 
      viv_s81      = viv_s91 & ~(viv_s90 & viv_s97);
      viv_s100    = viv_s101 & ~viv_s97;
      viv_s65     = viv_s31; 
      viv_s76 = 10'b0; 
      viv_s66 = {c_lbuf_v + 2{1'b0}}; 
      if (viv_s107) begin
         viv_s82 = ~viv_s4; 
      end 
      case (viv_s8)
        c_between :
          begin
             if (viv_s97)
               begin
                  viv_s77     = 1'b1; 
                  viv_s78   = 1'b1; 
                  viv_s81   = 1'b0;
                  if (viv_s32 == viv_s37)
                    begin
                       viv_s80 = 1'b1; 
                    end
                  else
                    begin
                       viv_s80 = 1'b0; 
                    end 
                  if (viv_s3 | (viv_s2 & ~(|viv_s44)))
                    viv_s76 = ({viv_s30[7:0],2'b00});
                  else
                    viv_s76 = viv_s39[(c_scale_v + 7):(c_scale_v - 2)]+
                                       {viv_s30[15:8], 2'b00} -
                                       viv_s40[(c_scale_v + 7):(c_scale_v - 2)];
                  viv_s75       = viv_s76[9:2]; 
                  if (viv_s2)
                    begin
                       viv_s81   = 1'b1; 
                       viv_s65  = 16'b0;
                       if(viv_s80) begin
                       viv_s100 = viv_s114;
		       end
                    end
                  if (viv_s32 == viv_s37)
                    begin
                       viv_s83 = {c_ram_width+1{1'b0}};
                       if (viv_s2 == 1'b1)
                         begin
                            viv_s71        = phase_v_sdw;
                            viv_s72 = c_idle; 
                            viv_s87        = c_max_hsize-1; 
                         end
                       else begin
                          viv_s71 = viv_s45[c_scale_v - 1:0];
                          if (viv_s104)
                            if (viv_s3)
                              if (viv_s46 > {1'b0,phase_v_sdw})
                                viv_s69 = 1'b1;
                              else
                                viv_s69 = 1'b0;
                            else
                              if ((viv_s45[c_scale_v] | viv_s46[c_scale_v])
                                & (viv_s46[c_scale_v-1:0] > phase_v_sdw))
                                viv_s69 = 1'b1;
                              else
                                viv_s69 = 1'b0;
                          else
                            viv_s69 = 1'b0;
                          if (viv_s45[c_scale_v])
                            begin
                               if (viv_s104) begin
                                  viv_s70     = 1'b1;
                                  viv_s72 = c_between;
                               end else begin
                                  viv_s72 = c_second;
                               end
                            end 
                          else
                            begin
                               viv_s72 = c_between;
                            end 
                       end
                    end
                  else
                    begin
                       viv_s83          = viv_s32 + 1'd1; 
                       viv_s72 = c_between; 
                    end 
               end 
          end
        c_second :
          begin
             if (viv_s107)
               begin
                  viv_s77        = 1'b1; 
                  viv_s78        = 1'b1; 
                  viv_s81      = 1'b0; 
                  viv_s80      = viv_s95; 
                  viv_s76 = viv_s40[(c_scale_v + 7):(c_scale_v - 2)] + 
                                     ({viv_s30[7:0], 2'b00}) -
                                     viv_s39[(c_scale_v + 7):(c_scale_v - 2)]; 
                  viv_s75     = viv_s76[9:2]; 
                  viv_s65[15:8] = viv_s30[7:0]; 
                  viv_s65[7:0]  = viv_s93; 
                  if (viv_s96 & viv_s59)
                    begin
                       viv_s81  = 1'b1; 
                       viv_s65 = 16'b0;
                       if(viv_s80) begin
                       viv_s100 = viv_s114;
		       end
                    end 
                  if (~viv_s95)
                    begin
                       viv_s83          = viv_s32 + 1'd1; 
                       viv_s72 = c_second; 
                    end
                  else
                    begin
                       viv_s83   = {c_ram_width+1{1'b0}}; 
                       viv_s87 = viv_s32;
                       if (viv_s96 & 
                          (((viv_s45[c_scale_v] | viv_s46[c_scale_v]) &
                          (viv_s46[c_scale_v-1:0] > phase_v_sdw)) | viv_s110))
                         viv_s69 = 1'b1;
                       else
                         viv_s69 = 1'b0;
                       if (viv_s45[c_scale_v])
                         begin
                            if (viv_s2)
                              begin
                                 viv_s71        = phase_v_sdw;
                                 viv_s72 = c_idle; 
                                 viv_s87        = c_max_hsize-1; 
                              end
                            else
                              begin
                                 viv_s71 = viv_s45[c_scale_v - 1:0];
                                 if (viv_s96 == 1'b1) begin
                                    if (viv_s59 == 1'b1) begin
                                       viv_s72 = c_idle;
                                    end else begin
                                       viv_s72 = c_between;
                                       viv_s70 = 1'b1;
                                    end
                                 end else begin
                                    viv_s72 = c_second;
                                 end
                              end
                         end
                       else
                         begin
                            viv_s71        = viv_s45[c_scale_v - 1:0];
                            viv_s72 = c_between; 
                         end 
                    end 
               end 
          end
        default :
          begin
             if (~scale_v_up_sdw)
               begin
                  if (viv_s107)
                    begin
                       if ((viv_s45[c_scale_v]) | viv_s96)
                         begin
                            viv_s77 = 1'b1; 
                            viv_s78 = 1'b1;
			    if(viv_s0) begin
                            viv_s76 = 10'h0 + 
                                               {viv_s93, 2'b10} - 
                                               viv_s40[c_scale_v + 7:c_scale_v - 2];
			    end else begin
                            viv_s76 = viv_s30[c_lbuf_v - 1:c_lbuf_v - 10] + 
                                               {viv_s93, 2'b10} - 
                                               viv_s40[c_scale_v + 7:c_scale_v - 2];
		            end
                            viv_s75     = viv_s76[9:2]; 
                            viv_s66 = viv_s39[c_scale_v + 7:c_scale_v - c_lbuf_v + 6]; 
                            viv_s65     = {viv_s56[15:c_lbuf_v], viv_s66[c_lbuf_v + 1:2]};
                            viv_s80      = viv_s95; 
                            viv_s81      = viv_s96; 
                         end
                       else
                         begin
                            if (viv_s0)
                              begin
                                 viv_s66 = viv_s39[c_scale_v + 7: c_scale_v - c_lbuf_v + 6];
                              end
                            else
                              begin
                                 viv_s66 = ({viv_s30[c_lbuf_v - 1:0], 2'b00}) + 
                                                    viv_s39[c_scale_v + 7:c_scale_v - c_lbuf_v + 6]; 
                              end 
                            viv_s65 = {viv_s56[15:c_lbuf_v], viv_s66[c_lbuf_v + 1:2]}; 
                           end 
                       if (viv_s96)
                         begin
                            viv_s65  = 16'b0;
                            viv_s100 = viv_s102;
                         end 
                       if (viv_s95)
                         begin
                            viv_s68 = 1'b1; 
                            if (viv_s96)
                              begin
                                 viv_s67 = 1'b1; 
                                 viv_s71 = phase_v_sdw;
                              end
                            else
                              begin
                                 viv_s67 = 1'b0; 
                                 viv_s71 = viv_s45[c_scale_v - 1:0]; 
                              end 
                         end 
                       if (viv_s1 & ~viv_s95)
                         begin
                            viv_s68 = 1'b0; 
                         end 
                    end
               end
             else
               begin
                  viv_s70 = 1'b0;
                  viv_s69     = 1'b0;
                  viv_s71    = phase_v_sdw;
                  if (viv_s107)
                    begin
                       viv_s78    = 1'b1; 
                       viv_s77 = ~(|phase_v_sdw);
                       viv_s80  = viv_s95; 
                       viv_s81  = viv_s96; 
                       viv_s75 = viv_s93; 
                       viv_s65[7:0] = viv_s93; 
                       if (~viv_s95)
                         begin
                            viv_s72 = c_idle; 
                            viv_s83          = viv_s32 + 1'd1;
                         end
                       else
                         begin
                            viv_s87        = viv_s32; 
                            viv_s83          = {c_ram_width+1{1'b0}}; 
                            viv_s72 = c_second;
                            if (~(|phase_v_sdw))
                              viv_s71      = viv_s45[c_scale_v - 1:0];
                         end 
                    end 
               end
          end
      endcase 
   end 
   always @(*)
     begin : proc_outmode
        if (~scale_v_up_sdw)
          begin
             viv_s7 = viv_s45[c_scale_v] | viv_s90 | viv_s96; 
             viv_s92    = viv_s73 | ~viv_s7; 
          end
        else
          begin
             if (viv_s8 == c_between)
               begin
                  viv_s7 = 1'b1; 
               end
             else
               begin
                  viv_s7 = 1'b0; 
               end 
             viv_s92 = viv_s73 & ~viv_s7; 
          end 
     end 
   always @(posedge clk or negedge reset_n)
     begin : proc_write_ram_regs
        if (~reset_n)
          begin
             viv_s14   <= 32'b0; 
             viv_s13      <= 1'b0; 
             viv_s35          <= (c_max_hsize/2)-1; 
             viv_s33          <= {c_ram_width{1'b0}}; 
             viv_s34      <= {c_ram_width{1'b0}}; 
             viv_s36    <= (c_max_hsize/2)-1; 
             viv_s60    <= 16'b0; 
             viv_s61     <= 16'b0; 
             viv_s64 <= 16'b0; 
             viv_s63     <= 16'b0; 
             viv_s62    <= 16'b0; 
             viv_s5     <= 1'b0; 
             viv_s9       <= 1'b0; 
             viv_s10       <= 1'b1; 
             viv_s11       <= 1'b1; 
             viv_s38   <= 32'b0; 
             viv_s12      <= 1'b0; 
          end
        else
          begin
             if (soft_rst)
               begin
                  viv_s14   <= 32'b0; 
                  viv_s13      <= 1'b0; 
                  viv_s35          <= (c_max_hsize/2)-1; 
                  viv_s33          <= {c_ram_width{1'b0}}; 
                  viv_s34      <= {c_ram_width{1'b0}}; 
                  viv_s36    <= (c_max_hsize/2)-1; 
                  viv_s60    <= 16'b0; 
                  viv_s61     <= 16'b0; 
                  viv_s64 <= 16'b0; 
                  viv_s63     <= 16'b0; 
                  viv_s62    <= 16'b0; 
                  viv_s5     <= 1'b0; 
                  viv_s9       <= 1'b0; 
                  viv_s10       <= 1'b1; 
                  viv_s11       <= 1'b1; 
                  viv_s38   <= 32'b0; 
                  viv_s12      <= 1'b0; 
               end
             else
               begin
                  viv_s13    <= 1'b0; 
                  viv_s5   <= viv_s4; 
                  viv_s9     <= viv_s94; 
                  viv_s10     <= viv_s92; 
                  viv_s11     <= viv_s97; 
                  viv_s12    <= viv_s13; 
                  if (~scale_v_up_sdw)
                    begin
                       viv_s33       <= viv_s84; 
                       viv_s35       <= viv_s85; 
                       viv_s36 <= viv_s86; 
                       if (viv_s107)
                         begin
                            if (viv_s4)
                              begin
                                 viv_s60 <= (viv_s31); 
                              end
                            else
                              begin
                                 viv_s61 <= (viv_s31); 
                              end 
                         end 
                       if (viv_s109)                         
                         begin
                            if (~viv_s5)
                              begin
                                 viv_s62    <= ram_rdata[31:16]; 
                                 viv_s64 <= ram_rdata[15:0]; 
                              end
                            else
                              begin
                                 viv_s63 <= viv_s64; 
                              end 
                         end 
                    end
                  else
                    begin
                       case (viv_s8)
                         c_between :
                           begin
                              if (viv_s108)
                                begin
                                   if (~viv_s6)
                                     begin
                                        viv_s34 <= viv_s33; 
                                        if (viv_s33 == viv_s36)
                                          begin
                                             viv_s33 <= {c_ram_width{1'b0}}; 
                                          end
                                        else
                                          begin
                                             viv_s33 <= viv_s33 + 1'd1; 
                                          end 
                                     end
                                end  
                           end
                         c_second :
                           begin
                              if (viv_s4)
                                begin
                                   if (viv_s107)
                                     begin
                                        viv_s13    <= 1'b1; 
                                        viv_s14 <= {viv_s60,
                                                          ({viv_s30[7:0],
                                                            viv_s93})};
                                        if (viv_s35 == viv_s36)
                                          begin
                                             viv_s35 <= {c_ram_width{1'b0}}; 
                                          end
                                        else
                                          begin
                                             viv_s35 <= viv_s35 + 1'd1; 
                                          end 
                                        viv_s34 <= viv_s33; 
                                        if (viv_s33 == viv_s36)
                                          begin
                                             viv_s33 <= {c_ram_width{1'b0}}; 
                                          end
                                        else
                                          begin
                                             viv_s33 <= viv_s33 + 1'd1; 
                                          end 
                                     end 
                                end
                              else
                                begin
                                   if (viv_s107)
                                     begin
                                        viv_s60 <= ({viv_s30[7:0], 
                                                          viv_s93});
                                     end 
                                end
                           end
                         default :
                           begin
                              if (viv_s107)
                                begin
                                   if (viv_s4)
                                     begin
                                        viv_s13    <= 1'b1; 
                                        viv_s14 <= {viv_s60, 
                                                          viv_s57[7:0],
                                                         (viv_s93)}; 
                                        if (viv_s35 == viv_s36)
                                          begin
                                             viv_s35 <= {c_ram_width{1'b0}}; 
                                          end
                                        else
                                          begin
                                             viv_s35 <= viv_s35 + 1'b1; 
                                          end 
                                        if (viv_s95)
                                          begin
                                             viv_s36 <= viv_s35 + 1'b1; 
                                             viv_s33       <= {c_ram_width{1'b0}}+1'b1; 
                                             viv_s34   <= viv_s33; 
                                          end 
                                     end
                                   else
                                     begin
                                        viv_s60 <= {viv_s57[7:0],
                                                         (viv_s93)}; 
                                     end 
                                end 
                           end
                       endcase 
                    end 
                  if (viv_s91 & viv_s90 & viv_s108)
                    begin
                       viv_s36 <= (c_max_hsize/2)-1; 
                       viv_s33       <= {c_ram_width{1'b0}}; 
                       viv_s35       <= (c_max_hsize/2)-1; 
                    end 
                  if (viv_s6 & viv_s79 & viv_s11)
                    begin
                       viv_s38 <= ram_rdata; 
                    end
               end  
          end
     end
   always @(*)
     begin : proc_ram
        viv_s86 = viv_s36; 
        viv_s85       = viv_s35; 
        viv_s84       = viv_s33; 
        if (~scale_v_up_sdw)
          begin
             viv_s15    = scale_v_en_sdw & viv_s4; 
             viv_s16    = scale_v_en_sdw & viv_s94; 
             ram_wdata = ({viv_s60, viv_s61}); 
             if (viv_s4 == 1'b0)
               begin
                  ram_addr = viv_s33; 
               end
             else
               begin
                  ram_addr = viv_s35; 
               end 
          end
        else
          begin
             viv_s16    = scale_v_en_sdw; 
             viv_s15    = viv_s13; 
             ram_wdata = viv_s14; 
             if (viv_s109 & viv_s5)               
               begin
                  ram_addr = viv_s35; 
               end
             else
               begin
                  if (viv_s97)
                    begin
                       ram_addr = viv_s33; 
                    end
                  else
                    begin
                       ram_addr = viv_s34; 
                    end 
               end 
          end 
        if (viv_s8 != c_between)
          begin
             if (~scale_v_up_sdw)
               begin
                  if (viv_s4)
                    begin
                       viv_s30 = (viv_s63[15:0]); 
                    end
                  else
                    begin
                       viv_s30 = (viv_s62[15:0]); 
                    end 
                  if (viv_s107)
                    begin
                       if (viv_s95 & viv_s0)
                         begin
                            viv_s86 = viv_s35 + 1'd1; 
                            viv_s84       = {c_ram_width{1'b0}} + 1'b1; 
                         end 
                       if (viv_s4)
                         begin
                            if (viv_s35 == viv_s36)
                              begin
                                 viv_s85 = {c_ram_width{1'b0}}; 
                              end
                            else
                              begin
                                 viv_s85 = viv_s35 + 1'd1; 
                              end 
                            if (viv_s0 == 1'b0)
                              begin
                                 if (viv_s33 == viv_s36)
                                   begin
                                      viv_s84 = {c_ram_width{1'b0}}; 
                                   end
                                 else
                                   begin
                                      viv_s84 = viv_s33 + 1'd1; 
                                   end 
                              end 
                         end
                       else
                         begin
                            viv_s85 = viv_s35; 
                            viv_s84 = viv_s33; 
                         end 
                    end 
               end
             else
               begin
                  if (viv_s4)
                    begin
                       viv_s30 = (viv_s38[15:0]); 
                    end
                  else
                    begin
                       if (~viv_s9) begin
                          if((viv_s6==1) & (viv_s32=={c_ram_width+1{1'b0}})) begin
			    viv_s30 = (ram_rdata[31:16]);
			  end
			  else
                           begin
                            viv_s30 = (viv_s38[31:16]); 
                         end
		       end
                       else
                         begin
                            if (viv_s12)
                              begin
                                 viv_s30 = (viv_s38[31:16]); 
                              end
                            else
                              begin
                                 viv_s30 = (ram_rdata[31:16]); 
                              end 
                         end 
                   end 
               end 
          end
        else
          begin
             if (viv_s6)
               begin
                  if (~viv_s11)
                    begin
                       viv_s30 = (viv_s38[31:16]); 
                    end
                  else
                    begin
                       if (viv_s12)
                         begin
                            viv_s30 = (viv_s38[31:16]); 
                         end
                       else
                         begin
                            viv_s30 = (ram_rdata[31:16]); 
                         end 
                    end 
               end
             else
               begin
                  viv_s30 = (viv_s38[15:0]); 
               end 
          end 
        if (viv_s91 & viv_s90 & viv_s108)
          begin
             viv_s86 = (c_max_hsize/2)-1; 
             viv_s85       = (c_max_hsize/2)-1; 
             viv_s84       = {c_ram_width{1'b0}}; 
          end 
     end 
   assign ram_wr_n = ~viv_s15;
   assign ram_cs_n = ~viv_s16;
   assign scale_v_lut_ad = (viv_s44[c_scale_v - 1:c_scale_v - c_scale_lut_addr]);
   assign viv_s43        = {(scale_v_lut), viv_s56[c_scale_v - c_scale_lut - 1:0]};
endmodule
