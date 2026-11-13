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

module vsisp_self_hor_c_scale 
  (
   clk, 
   reset_n,
   soft_rst,  
   cfg_upd,
   gen_cfg_upd,
   scale_h_en, 
   scale_h_up, 
   scale_hcb,
   scale_hcr,
   phase_h,
   scale_h_lut_ad, 
   scale_h_lut,
   scale_h_en_sdw,
   scale_h_up_sdw,
   scale_hcb_sdw,
   scale_hcr_sdw,
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
parameter fifo_addr_width=6;
parameter fifo_depth=2**(fifo_addr_width-1);
`include "vsisp_self_resize.vh"
   input                     clk; 
   input                     reset_n;
   input                     soft_rst;    
   input                     cfg_upd;
   input                     gen_cfg_upd;
   input                     scale_h_en;
   input                     scale_h_up; 
   input [c_scale_h - 1:0]   scale_hcb; 
   input [c_scale_h - 1:0]   scale_hcr; 
   input [c_phase_h - 1:0]   phase_h;
   output                    scale_h_en_sdw; 
   reg                       scale_h_en_sdw;
   output                    scale_h_up_sdw;
   reg                       scale_h_up_sdw;   
   output [c_scale_h - 1:0]  scale_hcb_sdw; 
   reg [c_scale_h - 1:0]     scale_hcb_sdw; 
   output [c_scale_h - 1:0]  scale_hcr_sdw; 
   reg [c_scale_h - 1:0]     scale_hcr_sdw; 
   output [c_scale_h - 1:0]  phase_h_sdw; 
   reg [c_scale_h - 1:0]     phase_h_sdw;    
   output [c_scale_lut_addr - 1:0] scale_h_lut_ad; 
   wire [c_scale_lut_addr - 1:0]   scale_h_lut_ad;
   input [c_scale_lut - 1:0]       scale_h_lut;
   input [7:0]             in_pix_data; 
   input                   in_val; 
   input                   in_h_end; 
   input                   in_v_end;
   input                   in_cfg_upd;   
   output                  in_ack; 
   reg                     in_ack;
   wire                    viv_s0;
   output [7:0]            out_pix_data; 
   reg [7:0]               out_pix_data;
   output                  out_val; 
   reg                     out_val;
   output                  out_h_end; 
   reg                     out_h_end;
   output                  out_v_end; 
   reg                     out_v_end;
   output                  out_cfg_upd;
   wire                    out_cfg_upd;
   input                   out_ack; 
   reg                     viv_s1; 
   reg                     viv_s2;
   reg                     viv_s3;
   reg                     viv_s4;
   reg                     viv_s5;
   reg                     viv_s6;
   wire                    viv_s7;
   reg                     viv_s8; 
   reg                     viv_s9; 
   wire                    viv_s10; 
   parameter               c_idle   = 1'b0; 
   parameter               c_output = 1'b1; 
   reg [c_lbuf_h - 1:0]    viv_s11; 
   reg [c_lbuf_h - 1:0]    viv_s12; 
   wire [c_lbuf_h - 1:0]   viv_s13; 
   wire [(c_scale_h * 2) - 1:0] viv_s14; 
   wire [(c_scale_h * 2) - 1:0] viv_s15; 
   wire [(c_scale_h * 2) - 1:0] viv_s16; 
   wire [(c_scale_h * 2) - 1:0] viv_s17; 
   reg [c_scale_h - 1:0]        viv_s18; 
   reg [c_scale_h - 1:0]        viv_s19; 
   wire [c_scale_h - 1:0]       viv_s20; 
   wire [c_scale_h - 1:0]       viv_s21; 
   reg [c_scale_h:0]            viv_s22; 
   wire [c_scale_h - 1:0]       viv_s23; 
   reg [c_scale_h - 1:0]        viv_s24; 
   reg [c_scale_h - 1:0]        viv_s25; 
   reg [c_scale_h - 1:0]        viv_s26; 
   reg [c_scale_h - 1:0]        viv_s27; 
   wire [c_scale_h - 1:0]       viv_s28; 
   wire [c_scale_h - 1:0]       viv_s29; 
   wire [c_scale_h - 1:0]       viv_s30; 
   wire [c_scale_h - 1:0]       viv_s31; 
   wire [15:0]                  viv_s32;
   wire [c_scale_h :0]          viv_s33;
   wire                         viv_s34;
   reg                          viv_s35;
   reg                          viv_s36;
   reg [c_lbuf_h - 1:0]         viv_s37; 
   reg                          viv_s38;
   reg                          viv_s39;
   reg [c_scale_h - 1:0]        viv_s40; 
   reg                          viv_s41; 
   reg                          viv_s42; 
   reg [7:0]                    viv_s43; 
   reg                          viv_s44; 
   reg                          viv_s45; 
   reg                          viv_s46; 
   reg [c_lbuf_h + 1:0]         viv_s47; 
   reg [9:0]                    viv_s48;
   reg                          viv_s49;
   reg                          viv_s50;
   wire [7:0]                   viv_s51;
   wire                         viv_s52;
   wire                         viv_s53;
   wire                         viv_s54;
   wire                         viv_s55;
   reg                          viv_s56;
   reg [7:0]                    viv_s57; 
   reg                          viv_s58; 
   reg                          viv_s59; 
   reg                          viv_s60; 
   wire                         viv_s61; 
   reg                          viv_s62; 
   reg [7:0]                    viv_s63; 
   reg [7:0]                    viv_s64; 
   reg [7:0]                    viv_s65; 
   reg                          viv_s66; 
   reg                          viv_s67; 
   reg                          viv_s68; 
   reg                          viv_s69; 
   reg                          viv_s70;
   reg                          viv_s71;   
   reg                          viv_s72;
   reg                          viv_s73;   
   reg [10:0]                   fifo_cb[fifo_depth-1:0];
   reg [10:0]                   fifo_cr[fifo_depth-1:0];
   reg [fifo_addr_width-1:0]    viv_s74;
   reg [fifo_addr_width-1:0]    viv_s75;
   reg [fifo_addr_width-1:0]    viv_s76;
   reg [fifo_addr_width-1:0]    viv_s77;
   wire [10:0]                  viv_s78;
   wire                         viv_s79;
   wire                         viv_s80;
   wire                         viv_s81;
   reg [19:0]                   viv_s82;
   always @(posedge clk or negedge reset_n)
     begin : proc_shadow
        if (~reset_n)
          begin
             scale_h_en_sdw <= 1'b0;
             scale_h_up_sdw <= 1'b0;
             scale_hcb_sdw  <= {c_scale_h{1'b0}};
             scale_hcr_sdw  <= {c_scale_h{1'b0}};
             phase_h_sdw    <= {c_scale_h{1'b0}};
          end
        else
          begin
             if (viv_s81)                  
               begin
                  scale_h_en_sdw <= scale_h_en;
                  scale_h_up_sdw <= scale_h_up;
                  scale_hcb_sdw  <= scale_hcb; 
                  scale_hcr_sdw  <= scale_hcr; 
                  phase_h_sdw    <= phase_h; 
               end 
          end 
     end 
   assign viv_s81 = (out_val & out_h_end & out_v_end & out_ack & (out_cfg_upd || gen_cfg_upd)) | 
                    cfg_upd;
   assign viv_s23 = viv_s35 ? scale_hcr_sdw : scale_hcb_sdw;
   assign viv_s32 = {16{1'b0}};
   assign viv_s33 = viv_s22 - {1'b0, phase_h_sdw};
   assign viv_s34 = viv_s22[c_scale_h] & viv_s33[c_scale_h] 
                              & |(viv_s33[c_scale_h-1:0]);
   assign viv_s78 = viv_s36 ? fifo_cr[viv_s77[fifo_addr_width-2:0]] : fifo_cb[viv_s75[fifo_addr_width-2:0]];
   assign viv_s80 = viv_s36 ? (viv_s76==viv_s77) : (viv_s74==viv_s75);
   assign viv_s79 =  viv_s35 ? (viv_s76[fifo_addr_width-2:0]==viv_s77[fifo_addr_width-2:0]) & ~(viv_s76[fifo_addr_width-1]==viv_s77[fifo_addr_width-1]) 
          : (viv_s74[fifo_addr_width-2:0]==viv_s75[fifo_addr_width-2:0]) & ~(viv_s74[fifo_addr_width-1]==viv_s75[fifo_addr_width-1]);
   vsisp_add_h_end u_add_h_end
     (
      .clk(clk),
      .reset_n(reset_n),
      .soft_rst(soft_rst),
      .in_c_data_i(in_pix_data),
      .in_c_h_end_i(in_h_end),
      .in_c_v_end_i(in_v_end),
      .in_c_cfg_upd_i(in_cfg_upd),
      .in_c_val_i(in_val & scale_h_en_sdw),
      .in_c_ack_o(viv_s0),
      .out_c_data_o(viv_s51),
      .out_c_h_end_o(viv_s53),
      .out_c_v_end_o(viv_s54),
      .out_c_cfg_upd_o(viv_s55),
      .out_c_val_o(viv_s52),
      .out_c_ack_i(viv_s56)
      );
   always @(scale_h_en_sdw or viv_s61 or in_pix_data or in_val or in_h_end or 
            in_v_end or out_ack or in_cfg_upd or viv_s78 or viv_s80 or 
            viv_s79 or viv_s4 or viv_s51 or viv_s52 or 
            viv_s53 or viv_s54 or viv_s55 or viv_s0)
     begin : proc_bypass
        if (scale_h_en_sdw)
          begin
             viv_s63      = viv_s51; 
             viv_s66         = viv_s52; 
             viv_s67       = viv_s53; 
             viv_s68       =  viv_s54;
             viv_s70 = viv_s55;              
             viv_s56       =  viv_s61;
             in_ack        = viv_s0;
             out_pix_data    = viv_s78[7:0];
             out_h_end       = viv_s78[8] & viv_s4 & ~viv_s80;
             out_v_end       = viv_s78[9] & ~viv_s80;
             viv_s73 = viv_s78[10] & ~viv_s80; 
             out_val         = ~viv_s80;
             viv_s69           = ~viv_s79;
          end
        else
          begin
             viv_s63        = 8'b0; 
             viv_s66           = 1'b0; 
             viv_s67         = 1'b0; 
             viv_s68         = 1'b0;
             viv_s70   = 1'b0; 
             viv_s56         = 1'b1;
             in_ack          = out_ack; 
             out_pix_data    = in_pix_data; 
             out_val         = in_val; 
             out_h_end       = in_h_end; 
             out_v_end       = in_v_end;
             viv_s73 = in_cfg_upd;
             viv_s69           = 1'b0; 
          end 
     end
  assign out_cfg_upd = viv_s73;
   always @(*)
     begin : proc_calc
        viv_s22 = ({1'b0, viv_s20}) + ({1'b0, viv_s23});
        if (scale_h_up_sdw) begin
           viv_s24 = {viv_s32[c_scale_h - 1:10], viv_s13[7:0], 2'b00}; 
           viv_s25 = viv_s21; 
           viv_s26 = ({viv_s32[c_scale_h - 1:10], viv_s63, 2'b00});
           viv_s27 = viv_s21; 
        end
        else begin
           if ((viv_s22[c_scale_h]) == 1'b1) begin
              viv_s24 = {viv_s32[c_scale_h - 1:10], viv_s63, 2'b00}; 
              viv_s25 = viv_s22[c_scale_h - 1:0]; 
           end
           else begin
              viv_s24 = {viv_s32[c_scale_h - 1:10], viv_s63, 2'b00};
              if (viv_s1)
                viv_s25 = viv_s23+phase_h_sdw;
              else
                viv_s25 = viv_s23; 
           end 
           viv_s26 = {viv_s32[c_scale_h - 1:10], viv_s63, 2'b00}; 
           viv_s27 = viv_s20; 
        end 
     end 
   vsisp_self_hor_mult u_self_hor_mult 
     (
      .a_y1(viv_s28), 
      .b_y1(viv_s29), 
      .a_y2(viv_s30), 
      .b_y2(viv_s31), 
      .mult_y1(viv_s16),
      .mult_y2(viv_s17)); 
   assign viv_s28 = viv_s24;
   assign viv_s29 = viv_s25;
   assign viv_s30 = viv_s26;
   assign viv_s31 = viv_s27;
   assign viv_s14  = {2'b0, viv_s16[(c_scale_h * 2) - 1:2]};
   assign viv_s15  = {2'b0, viv_s17[(c_scale_h * 2) - 1:2]};
   always @(posedge clk or negedge reset_n)
     begin : proc_scale_regs
        if (~reset_n) begin
           viv_s1           <= 1'b1;
           viv_s2     <= 1'b0;
           viv_s3     <= 1'b0;
           viv_s5         <= 1'b0;
           viv_s6         <= 1'b0;
           viv_s11      <= {c_lbuf_h{1'b0}}; 
           viv_s18        <= {c_scale_h{1'b0}}; 
           viv_s8 <= c_idle; 
           viv_s12      <= {c_lbuf_h{1'b0}}; 
           viv_s19        <= {c_scale_h{1'b0}}; 
           viv_s9 <= c_idle; 
           viv_s62         <= 1'b1; 
           viv_s57        <= 8'b0; 
           viv_s58           <= 1'b0; 
           viv_s59         <= 1'b0; 
           viv_s60         <= 1'b0;
           viv_s72       <= 1'b0;
           viv_s35       <= 1'b0;
           viv_s36      <= 1'b0;  
           viv_s64       <= 8'b0;
           viv_s65       <= 8'b0;
           viv_s4  <= 1'b0;
           viv_s82   <= 20'd0;
        end
        else begin
           if (soft_rst)
             begin
                viv_s1           <= 1'b1;
                viv_s2     <= 1'b0;
                viv_s3     <= 1'b0;
                viv_s4  <= 1'b0;
                viv_s5         <= 1'b0;
                viv_s6         <= 1'b0;
                viv_s11      <= {c_lbuf_h{1'b0}}; 
                viv_s18        <= phase_h_sdw; 
                viv_s8 <= c_idle; 
                viv_s12      <= {c_lbuf_h{1'b0}}; 
                viv_s19        <= phase_h_sdw; 
                viv_s9 <= c_idle; 
                viv_s62         <= 1'b1; 
                viv_s57        <= 8'b0; 
                viv_s58           <= 1'b0; 
                viv_s59         <= 1'b0; 
                viv_s60         <= 1'b0;
                viv_s72       <= 1'b0;                
                viv_s35       <= 1'b0;
                viv_s36      <= 1'b0; 
                viv_s64       <= 8'b0;
                viv_s65       <= 8'b0;
                viv_s82  <= 20'd0;
             end
           else
             begin
                viv_s1        <= viv_s38;
                if (viv_s66 & viv_s61) viv_s2 <= viv_s67;
                if (viv_s58 & viv_s69) viv_s3 <= viv_s59;
                if (~viv_s80 & out_ack)  viv_s4 <= viv_s78[8];
                if (out_val & out_ack) begin
                   if (out_h_end) begin
                      viv_s82 <= 20'd0;
                   end else begin
                      viv_s82 <= viv_s82 + 20'd1;
                   end
                end
                if (~scale_h_up_sdw) begin
                   if (viv_s35) begin
                      viv_s9 <= viv_s41; 
                      if (viv_s81) begin
                         viv_s18    <= phase_h; 
                         viv_s19    <= phase_h; 
                         viv_s11  <= {c_lbuf_h{1'b0}}; 
                         viv_s12  <= {c_lbuf_h{1'b0}}; 
                      end else begin
                         viv_s19    <= viv_s40;
                         viv_s12  <= viv_s37; 
                      end
                      viv_s6   <= viv_s39;
                      viv_s65 <= viv_s63;
                   end else begin
                      viv_s8 <= viv_s41;
                      if (viv_s81) begin
                         viv_s18    <= phase_h; 
                         viv_s19    <= phase_h; 
                         viv_s11  <= {c_lbuf_h{1'b0}}; 
                         viv_s12  <= {c_lbuf_h{1'b0}}; 
                      end else begin
                         viv_s11  <= viv_s37; 
                         viv_s18    <= viv_s40; 
                      end
                      viv_s5   <= viv_s39;
                      viv_s64 <= viv_s63;
                   end 
                end else begin 
                   if (viv_s35) begin
                      viv_s65       <= viv_s63;
                      viv_s9 <= viv_s41; 
                      if (viv_s81) begin
                         viv_s18   <= phase_h; 
                         viv_s19   <= phase_h; 
                         viv_s11 <= {c_lbuf_h{1'b0}}; 
                         viv_s12 <= {c_lbuf_h{1'b0}}; 
                      end else begin
                         viv_s19   <= viv_s40;
                         viv_s12 <= viv_s37; 
                      end
                      viv_s6 <= viv_s39;
		      viv_s65 <= viv_s63;
                   end else begin
                      viv_s8 <= viv_s41;
                      if (viv_s81) begin
                         viv_s11 <= {c_lbuf_h{1'b0}}; 
                         viv_s12 <= {c_lbuf_h{1'b0}}; 
                         viv_s18   <= phase_h; 
                         viv_s19   <= phase_h; 
                      end else begin
                         viv_s11 <= viv_s37; 
                         viv_s18   <= viv_s40;
                      end
                      viv_s5 <= viv_s39;
                      viv_s64 <= viv_s63;
                   end 
                end 
                viv_s62      <= viv_s42;
                viv_s57   <= viv_s43; 
                viv_s58      <= viv_s44; 
                viv_s59    <= viv_s45; 
                viv_s60    <= viv_s46;
                viv_s72  <= viv_s71; 
                viv_s35  <= viv_s49;
                viv_s36 <= viv_s50;                 
             end 
        end
     end
   assign viv_s20        = viv_s35? viv_s19 : viv_s18;
   assign viv_s10 = viv_s35? viv_s9 : viv_s8;
   assign viv_s13    = viv_s35? viv_s12 : viv_s11;
   assign viv_s7         = viv_s35? viv_s6 : viv_s5;
   always @ (*)
     begin : proc_scale
        viv_s37     = viv_s13; 
        viv_s38         = viv_s1;
        viv_s39          = viv_s7;
        viv_s40         = viv_s20; 
        viv_s41  = viv_s10; 
        viv_s42       = viv_s62; 
        viv_s43      = viv_s57; 
        viv_s44         = viv_s58; 
        viv_s45       = viv_s59; 
        viv_s46       = viv_s60;
        viv_s71     = viv_s72;         
        viv_s47 = {c_lbuf_h + 2{1'b0}}; 
        viv_s48  = 10'b0;
        viv_s49     = viv_s35;
        viv_s50    = viv_s36;
        if (out_val & out_ack) begin
           if (out_h_end)
             viv_s50 = 1'b0;
           else
             viv_s50 = ~viv_s36;
        end
        if (viv_s66 & viv_s61)
          if (viv_s67 & viv_s2) 
            viv_s49   = 1'b0;
          else
            viv_s49   = ~viv_s35;
        if (viv_s58 & viv_s69) begin
           viv_s44     = 1'b0; 
           viv_s45   = 1'b0;
           viv_s71 = 1'b0; 
           if (viv_s3 & viv_s59 & viv_s60) begin
              viv_s46 = 1'b0; 
           end
        end 
        if (viv_s70 & viv_s66 & viv_s61 ) viv_s71 = 1'b1;
        else viv_s71 = 1'b0;
        viv_s42 = viv_s69; 
        if (~scale_h_up_sdw) begin
           if (viv_s66 & viv_s61) begin
              if ((viv_s22[c_scale_h]) | viv_s67) begin
                 viv_s44 = 1'b1;
                 viv_s48 = viv_s13[c_lbuf_h - 1:c_lbuf_h - 10] +
                                    ({viv_s63, 2'b10}) -    
                                    viv_s15[c_scale_h + 7:c_scale_h - 2]; 
                 if (viv_s1) begin
                    viv_s43 = viv_s63;
                 end else begin
                    viv_s43 = viv_s48[9:2];
                 end
                 viv_s47 = viv_s14[c_scale_h + 7:
                                             c_scale_h - c_lbuf_h + 6];
                 viv_s46       = viv_s68; 
              end
              else begin
                 viv_s47 = ({viv_s13, 2'b00})
                   + viv_s14[c_scale_h + 7:c_scale_h - c_lbuf_h + 6];
              end 
              viv_s37 = viv_s47[c_lbuf_h + 1:2]; 
              viv_s40     = viv_s22[c_scale_h - 1:0];
              if (viv_s35) 
                viv_s38 = 1'b0; 
              if (viv_s67) begin
                 viv_s45   = 1'b1; 
                 viv_s37 = {c_lbuf_h{1'b0}}; 
                 viv_s40     = phase_h_sdw;
                 if (viv_s2) begin
                    viv_s38 = 1'b1;
                 end
              end
           end 
        end
        else begin
           if (viv_s69) begin
              if ((viv_s22[c_scale_h]) == 1'b0 & ~viv_s1) begin
                 viv_s42 = 1'b0; 
              end
              if (viv_s7) begin
                 if (viv_s66) begin
                    if (~viv_s33[c_scale_h] 
                        & (|viv_s33[c_scale_h:0])) begin
                       viv_s45      = 1'b1;
                       viv_s44 = 1'b1;
                       viv_s43     = (viv_s13[7:0]); 
                       viv_s46      = viv_s68;
                       viv_s40     = phase_h_sdw;
                       viv_s37 = {c_lbuf_h{1'b0}}; 
                       viv_s38     = viv_s2;
                       viv_s41 = c_output;
                       viv_s42 = viv_s69;
                       viv_s39 = 1'b0;
                    end else begin 
                       viv_s45      = 1'b0;
                       viv_s44 = 1'b1;
                       viv_s43     = (viv_s13[7:0]); 
                       viv_s46      = viv_s68;
                       viv_s40     = viv_s22[c_scale_h - 1:0];
                       viv_s41 = c_output;
                       viv_s42 = 1'b0;
                       viv_s39 = 1'b1; 
                    end
                 end
              end else begin
                 if (viv_s66) begin
                    if (viv_s61 & viv_s35) viv_s38     = 1'b0;
                    if (viv_s61 & viv_s2 & viv_s67) begin
                       viv_s38 = 1'b1;
                    end
                    if (~viv_s1 | ~(|phase_h_sdw)) begin
                       viv_s44 = 1'b1; 
                       if (viv_s1)begin
                          viv_s48 = ({viv_s63, 2'b00}); 
                       end
                       else begin
                          viv_s48 = (({viv_s13[7:0], 2'b00}) +
                                         viv_s15[c_scale_h + 7:c_scale_h - 2] - 
                                         viv_s14[c_scale_h + 7:c_scale_h - 2]); 
                       end 
                       viv_s43     = viv_s48[9:2]; 
                       viv_s45      = viv_s67 & viv_s34;
                       viv_s46      = viv_s68; 
                       viv_s41 = c_output; 
                       viv_s40        = viv_s22[c_scale_h - 1:0]; 
                       if (viv_s67) begin
                          if (viv_s34) begin
                             viv_s40     = phase_h_sdw;
                             viv_s37 = {c_lbuf_h{1'b0}}; 
                          end else begin
                             viv_s42 = 1'b0;
                             if (viv_s22[c_scale_h])
                               viv_s39 = 1'b1;
                          end
                       end
                    end
                    if ((viv_s22[c_scale_h]) | viv_s1) begin
                       viv_s37 = {viv_s32[c_lbuf_h - 9:0],viv_s63};
                       if (~viv_s67 | viv_s34)
                         viv_s42   = viv_s69; 
                    end
                    else begin
                       viv_s42 = 1'b0; 
                    end 
                 end
                 else begin
                    if (viv_s10 == c_output) begin
                       viv_s44        = 1'b0; 
                       viv_s41 = c_idle;
                    end 
                 end 
              end
           end else begin
              if (viv_s10 == c_output) begin
                 viv_s42 = 1'b0; 
              end 
           end 
        end 
     end 
   assign viv_s61 = viv_s42;
   always @ (posedge clk or negedge reset_n) 
     begin: proc_fifo
        if (~reset_n) begin
           viv_s74 <= {fifo_addr_width{1'b0}};
           viv_s76 <= {fifo_addr_width{1'b0}};
           viv_s75 <= {fifo_addr_width{1'b0}};
           viv_s77 <= {fifo_addr_width{1'b0}};
           begin : rstfifo1
              integer v_i;
              for(v_i = 0; v_i <= fifo_depth-1; v_i = v_i + 1) begin
                 fifo_cb[v_i] <= {11{1'b0}};                   
                 fifo_cr[v_i] <= {11{1'b0}};                   
              end
           end
        end else begin
           if (soft_rst) begin
              viv_s74 <= {fifo_addr_width{1'b0}};
              viv_s76 <= {fifo_addr_width{1'b0}};
              viv_s75 <= {fifo_addr_width{1'b0}};
              viv_s77 <= {fifo_addr_width{1'b0}};
              begin : rstfifo2
                 integer v_j;
                 for(v_j = 0; v_j <= fifo_depth-1; v_j = v_j + 1) begin
                    fifo_cb[v_j] <= {11{1'b0}};                   
                    fifo_cr[v_j] <= {11{1'b0}};                   
                 end
              end
           end else begin
              if (viv_s44 & ~viv_s79) begin
                 if (~viv_s35) begin
                    fifo_cb[viv_s74[fifo_addr_width-2:0]] <= {viv_s71, viv_s46, viv_s45, viv_s43};
                    viv_s74 <= viv_s74+6'd1;
                 end else begin
                    fifo_cr[viv_s76[fifo_addr_width-2:0]] <= {viv_s71, viv_s46, viv_s45, viv_s43};
                    viv_s76 <= viv_s76+6'd1;
                 end
              end
              if (~viv_s80 & out_ack) begin
                 if (viv_s36) begin
                    viv_s77 <= viv_s77 + 6'd1;
                 end else begin
                    viv_s75 <= viv_s75 + 6'd1;
                 end
              end
           end
        end
     end
   assign scale_h_lut_ad = (viv_s20[c_scale_h - 1:c_scale_h - c_scale_lut_addr]);
   assign viv_s21        = {(scale_h_lut), viv_s32[c_scale_h - c_scale_lut - 1:0]};
endmodule
