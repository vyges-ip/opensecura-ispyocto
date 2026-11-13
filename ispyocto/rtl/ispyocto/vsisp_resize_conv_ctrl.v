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

module vsisp_resize_conv_ctrl 
  (
   clk_cfg, 
   reset_cfg_n, 
   val, 
   addr, 
   rd, 
   wdata, 
   rdata, 
   ack,
   cfg_upd, 
   gen_cfg_upd,
   scale_hy_en, 
   scale_hc_en,
   scale_vy_en, 
   scale_vc_en,                    
   scale_hy_up, 
   scale_hc_up,
   scale_vy_up, 
   scale_vc_up,
   scale_hy, 
   scale_hcb,
   scale_hcr,                    
   scale_vy, 
   scale_vc,                     
   phase_hy, 
   phase_hc,
   phase_vy, 
   phase_vc,
   y_scale_h_lut_ad,
   y_scale_v_lut_ad, 
   y_scale_h_lut, 
   y_scale_v_lut,
   chroma_scale_h_lut_ad,
   chroma_scale_v_lut_ad, 
   chroma_scale_h_lut, 
   chroma_scale_v_lut,
   scale_hy_en_sdw, 
   scale_hc_en_sdw, 
   scale_vy_en_sdw, 
   scale_vc_en_sdw,
   scale_hy_up_sdw, 
   scale_hc_up_sdw, 
   scale_vy_up_sdw, 
   scale_vc_up_sdw,                        
   scale_hy_sdw,
   scale_hcb_sdw,
   scale_hcr_sdw,                    
   scale_vy_sdw, 
   scale_vc_sdw, 
   phase_hy_sdw, 
   phase_hc_sdw, 
   phase_vy_sdw, 
   phase_vc_sdw,
   sp_input_format,
   cfg_y_full,
   cfg_crcb_full,
   cfg_422noncosited,
   sp_output_format
   );
`include "vsisp_self_resize.vh"
   input          clk_cfg; 
   input          reset_cfg_n;
   input          val; 
   input [6:2]    addr; 
   input          rd; 
   input [31:0]   wdata; 
   output [31:0]  rdata; 
   reg [31:0]     rdata;
   output         ack; 
   output         cfg_upd; 
   output         gen_cfg_upd; 
   output         scale_hy_en; 
   output         scale_hc_en; 
   output         scale_vy_en; 
   output         scale_vc_en; 
   output         scale_hy_up; 
   output         scale_hc_up; 
   output         scale_vy_up; 
   output         scale_vc_up; 
   output [c_scale_h - 1:0] scale_hy;
   output [c_scale_h - 1:0] scale_hcb;
   output [c_scale_h - 1:0] scale_hcr;   
   output [c_scale_v - 1:0] scale_vy;
   output [c_scale_v - 1:0] scale_vc;
   output [c_phase_h - 1:0] phase_hy; 
   output [c_phase_h - 1:0] phase_hc; 
   output [c_phase_v - 1:0] phase_vy; 
   output [c_phase_v - 1:0] phase_vc;
   input                    scale_hy_en_sdw; 
   input                    scale_hc_en_sdw; 
   input                    scale_vy_en_sdw; 
   input                    scale_vc_en_sdw;
   input                    scale_hy_up_sdw; 
   input                    scale_hc_up_sdw; 
   input                    scale_vy_up_sdw; 
   input                    scale_vc_up_sdw;   
   input [c_scale_h-1:0]    scale_hy_sdw; 
   input [c_scale_h-1:0]    scale_hcb_sdw;
   input [c_scale_h-1:0]    scale_hcr_sdw;   
   input [c_scale_v-1:0]    scale_vy_sdw; 
   input [c_scale_v-1:0]    scale_vc_sdw; 
   input [c_scale_h-1:0]    phase_hy_sdw; 
   input [c_scale_h-1:0]    phase_hc_sdw; 
   input [c_scale_v-1:0]    phase_vy_sdw; 
   input [c_scale_v-1:0]    phase_vc_sdw; 
   input [c_scale_lut_addr - 1:0] y_scale_h_lut_ad; 
   input [c_scale_lut_addr - 1:0] y_scale_v_lut_ad; 
   output [c_scale_lut - 1:0]     y_scale_h_lut; 
   output [c_scale_lut - 1:0]     y_scale_v_lut; 
   input [c_scale_lut_addr - 1:0] chroma_scale_h_lut_ad; 
   input [c_scale_lut_addr - 1:0] chroma_scale_v_lut_ad; 
   output [c_scale_lut - 1:0]     chroma_scale_h_lut; 
   output [c_scale_lut - 1:0]     chroma_scale_v_lut; 
   output  [ 1: 0] sp_input_format;  
   output          cfg_y_full;       
   output          cfg_crcb_full;    
   output          cfg_422noncosited;
   output  [ 2: 0] sp_output_format; 
   reg                            cfg_upd;
   reg                            gen_cfg_upd; 
   reg [7:0]                      viv_s0; 
   reg [c_scale_h - 1:0]          viv_s1; 
   reg [c_scale_h - 1:0]          viv_s2;
   reg [c_scale_h - 1:0]          viv_s3;   
   reg [c_scale_v - 1:0]          viv_s4; 
   reg [c_scale_v - 1:0]          viv_s5;
   reg [c_phase_h - 1:0]          viv_s6; 
   reg [c_phase_h - 1:0]          viv_s7;
   reg [c_phase_v - 1:0]          viv_s8; 
   reg [c_phase_v - 1:0]          viv_s9;
   reg [c_scale_lut_addr - 1:0]        viv_s10; 
   reg                            viv_s11;
   reg [7:0]                      viv_s12;
   wire [c_scale_lut_addr - 1:0]                viv_s13; 
   wire [c_scale_lut_addr - 1:0]                viv_s14; 
   wire [c_scale_lut_addr - 1:0]                viv_s15; 
   wire [c_scale_lut_addr - 1:0]                viv_s16; 
   wire [c_scale_lut_addr - 1:0]                viv_s17; 
   reg [c_scale_lut - 1:0]   v_lut[c_number_of_lut - 1:0]; 
   assign viv_s13   = viv_s10;
   assign viv_s14      = y_scale_h_lut_ad;
   assign viv_s15      = y_scale_v_lut_ad;
   assign viv_s16 = chroma_scale_h_lut_ad;
   assign viv_s17 = chroma_scale_v_lut_ad;
   wire viv_s18= val & (addr==c_resize_scale_lut);
   always @(posedge clk_cfg or negedge reset_cfg_n)
     begin : config_proc
        if (~reset_cfg_n)
          begin
             viv_s0         <= 8'b0;
             viv_s1     <= {c_scale_h{1'b0}}; 
             viv_s2    <= {c_scale_h{1'b0}};
             viv_s3    <= {c_scale_h{1'b0}};             
             viv_s4     <= {c_scale_v{1'b0}}; 
             viv_s5     <= {c_scale_v{1'b0}};
             viv_s6     <= {c_phase_h{1'b0}}; 
             viv_s7     <= {c_phase_h{1'b0}};
             viv_s8     <= {c_phase_v{1'b0}}; 
             viv_s9     <= {c_phase_v{1'b0}};
             viv_s10 <= {c_scale_lut_addr{1'b0}};
             gen_cfg_upd            <= 1'b0; 
             cfg_upd                <= 1'b0;
             rdata                  <= 32'b0; 
             viv_s11                 <= 1'b0; 
             viv_s12    <= 8'b0;
          end
        else
          begin
             rdata   <= 32'b0;
             cfg_upd <= 1'b0;
	     if(viv_s11 & viv_s18) begin
             viv_s10 <= viv_s10 + 1'b1;
	     end	
             if (val) begin
                if (~viv_s11) begin
                   viv_s11 <= 1'b1; 
                end
                else  begin
                   viv_s11 <= 1'b0; 
                end 
                case (addr)
                  c_resize_ctrl :
                    begin
                       if (~rd) begin
                          viv_s0 <= wdata[7:0];
                          cfg_upd        <= wdata[8];
                          gen_cfg_upd    <= wdata[9];
                       end
                       else begin
                          rdata[9:0]<= {gen_cfg_upd,1'b0,viv_s0};
                       end 
                    end
                  c_resize_scale_hy :
                    begin
                       if (~rd) begin
                          viv_s1 <= wdata[c_scale_h - 1:0]; 
                       end
                       else begin
                          rdata[c_scale_h - 1:0] <= viv_s1; 
                       end 
                    end 
                  c_resize_scale_hcb :
                    begin
                       if (~rd) begin
                          viv_s2 <= wdata[c_scale_h - 1:0]; 
                       end
                       else begin
                          rdata[c_scale_h - 1:0] <= viv_s2; 
                       end 
                    end 
                  c_resize_scale_hcr :
                    begin
                       if (~rd) begin
                          viv_s3 <= wdata[c_scale_h - 1:0]; 
                       end
                       else begin
                          rdata[c_scale_h - 1:0] <= viv_s3; 
                       end 
                    end 
                  c_resize_scale_vy :
                    begin
                       if (~rd) begin
                          viv_s4 <= wdata[c_scale_v - 1:0]; 
                       end
                       else begin
                          rdata[c_scale_v - 1:0] <= viv_s4; 
                       end 
                    end 
                  c_resize_scale_vc :
                    begin
                       if (~rd) begin
                          viv_s5 <= wdata[c_scale_v - 1:0]; 
                       end
                       else begin
                          rdata[c_scale_v - 1:0] <= viv_s5; 
                       end 
                    end 
                  c_resize_phase_hy :
                    begin
                       if (~rd) begin
                          viv_s6 <= wdata[c_phase_h - 1:0]; 
                       end
                       else begin
                          rdata[c_phase_h - 1:0] <= viv_s6; 
                       end 
                    end 
                  c_resize_phase_hc :
                    begin
                       if (~rd) begin
                          viv_s7 <= wdata[c_phase_h - 1:0]; 
                       end
                       else begin
                          rdata[c_phase_h - 1:0] <= viv_s7; 
                       end 
                    end 
                  c_resize_phase_vy :
                    begin
                       if (~rd) begin
                          viv_s8 <= wdata[c_phase_v - 1:0]; 
                       end
                       else begin
                          rdata[c_phase_v - 1:0] <= viv_s8; 
                       end 
                    end 
                  c_resize_phase_vc :
                    begin
                       if (~rd) begin
                          viv_s9 <= wdata[c_phase_v - 1:0]; 
                       end
                       else begin
                          rdata[c_phase_v - 1:0] <= viv_s9; 
                       end 
                    end 
                  c_resize_scale_lut_addr :
                    begin
                       if (~rd) begin
                          viv_s10 <= wdata[c_scale_lut_addr-1:0];
                       end
                       else begin
                          rdata[c_scale_lut-1:0] <= viv_s10;
                           end 
                    end
                  c_resize_scale_lut :
                    begin
                       if (rd) begin
                          rdata[c_scale_lut-1:0] <= v_lut[viv_s13];
                       end 
                    end
                  format_conv_ctrl :
                    begin
                       if (~rd) begin
                          viv_s12 <= wdata[7:0];
                       end
                       else begin
                          rdata  <= {24'h0,viv_s12[7:0]};
                       end 
                    end
                  c_resize_ctrl_sdw :
                    begin
                       if (rd) begin
                          rdata[0] <= scale_hy_en_sdw; 
                          rdata[1] <= scale_hc_en_sdw; 
                          rdata[2] <= scale_vy_en_sdw; 
                          rdata[3] <= scale_vc_en_sdw;
                          rdata[4] <= scale_hy_up_sdw; 
                          rdata[5] <= scale_hc_up_sdw; 
                          rdata[6] <= scale_vy_up_sdw; 
                          rdata[7] <= scale_vc_up_sdw;
                       end 
                    end
                  c_resize_scale_hy_sdw :
                    begin
                       if (rd) begin
                          rdata[c_scale_h-1:0] <= scale_hy_sdw; 
                       end 
                    end
                  c_resize_scale_hcb_sdw :
                    begin
                       if (rd) begin
                          rdata[c_scale_h-1:0] <= scale_hcb_sdw; 
                       end 
                    end
                  c_resize_scale_hcr_sdw :
                    begin
                       if (rd) begin
                          rdata[c_scale_h-1:0] <= scale_hcr_sdw; 
                       end 
                    end                  
                  c_resize_scale_vy_sdw :
                    begin
                       if (rd) begin
                          rdata[c_scale_v-1:0] <= scale_vy_sdw; 
                       end 
                    end
                  c_resize_scale_vc_sdw :
                    begin
                       if (rd) begin
                          rdata[c_scale_v-1:0] <= scale_vc_sdw; 
                       end 
                    end
                  c_resize_phase_hy_sdw :
                    begin
                       if (rd) begin
                          rdata[c_scale_h-1:0] <= phase_hy_sdw; 
                       end 
                    end
                  c_resize_phase_hc_sdw :
                    begin
                       if (rd) begin
                          rdata[c_scale_h-1:0] <= phase_hc_sdw; 
                       end 
                    end
                  c_resize_phase_vy_sdw :
                    begin
                       if (rd) begin
                          rdata[c_scale_v-1:0] <= phase_vy_sdw; 
                       end 
                    end
                  c_resize_phase_vc_sdw :
                    begin
                       if (rd) begin
                          rdata[c_scale_v-1:0] <= phase_vc_sdw; 
                       end 
                    end
                  default :
                    begin
                       rdata <= 32'b0; 
                    end
                  endcase 
             end 
          end 
     end 
   always @(posedge clk_cfg or negedge reset_cfg_n)
     begin : look_up_proc
        if (~reset_cfg_n) begin
           begin : xhdl_8
              integer v_i;
              for(v_i = 0; v_i <= c_number_of_lut - 1; v_i = v_i + 1) begin
                 v_lut[v_i] <= {c_scale_lut{1'b0}};                   
              end
           end 
        end
        else begin
           if (~rd & val) begin
              if (addr == c_resize_scale_lut) begin
                 v_lut[viv_s13] <= wdata[c_scale_lut-1:0];
              end 
           end 
        end  
     end 
   assign y_scale_h_lut  = v_lut[viv_s14];
   assign y_scale_v_lut  = v_lut[viv_s15];
   assign chroma_scale_h_lut = v_lut[viv_s16];
   assign chroma_scale_v_lut = v_lut[viv_s17];
   assign ack         = viv_s11;
   assign scale_hy_en = viv_s0[0];
   assign scale_hc_en = viv_s0[1];
   assign scale_vy_en = viv_s0[2];
   assign scale_vc_en = viv_s0[3];
   assign scale_hy_up = viv_s0[4];
   assign scale_hc_up = viv_s0[5];
   assign scale_vy_up = viv_s0[6];
   assign scale_vc_up = viv_s0[7];
   assign scale_hy    = viv_s1;
   assign scale_hcb   = viv_s2;
   assign scale_hcr   = viv_s3;   
   assign scale_vy    = viv_s4;
   assign scale_vc    = viv_s5; 
   assign phase_hy    = viv_s6;
   assign phase_hc    = viv_s7;
   assign phase_vy    = viv_s8;
   assign phase_vc    = viv_s9;
   assign sp_input_format     = viv_s12[1:0];
   assign sp_output_format    = viv_s12[4:2];
   assign cfg_y_full          = viv_s12[5];
   assign cfg_crcb_full       = viv_s12[6];
   assign cfg_422noncosited   = viv_s12[7];
endmodule
