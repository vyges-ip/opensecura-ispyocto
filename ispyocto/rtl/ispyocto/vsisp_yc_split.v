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

module vsisp_yc_split 
  (
   clk,
   reset_n,
   soft_rst, 
   cfg_chan_mode,
   in_data,
   in_h_end,
   in_v_end,
   in_cfg_upd,
   in_val,
   in_ack,
   out_y_m_data,
   out_y_m_val,
   out_y_m_ack,                 
   out_y_m_h_end,
   out_y_m_v_end,
   out_c_m_data,
   out_c_m_val,
   out_c_m_ack,                 
   out_c_m_h_end,
   out_c_m_v_end,
   out_y_s_data,
   out_y_s_val,
   out_y_s_ack,                 
   out_y_s_h_end,
   out_y_s_v_end,
   out_c_s_data,
   out_c_s_val,
   out_c_s_ack,                 
   out_c_s_h_end,
   out_c_s_v_end,
   out_cfg_upd,
   out_ext_y_data,
   out_ext_y_val,
   out_ext_y_ack,                 
   out_ext_y_h_end,
   out_ext_y_v_end,
   out_ext_c_data,
   out_ext_c_val,
   out_ext_c_ack,                 
   out_ext_c_h_end,
   out_ext_c_v_end
   );
   parameter data_width = 10;
   input       clk;           
   input       reset_n;       
   input       soft_rst;      
   input [1:0] cfg_chan_mode; 
   input [2*data_width-1:0] in_data;      
   input        in_h_end;     
   input        in_v_end;     
   input        in_cfg_upd;   
   input        in_val;       
   output       in_ack;       
   output [data_width-1:0] out_y_m_data; 
   output       out_y_m_val;  
   input        out_y_m_ack;  
   output       out_y_m_h_end;
   output       out_y_m_v_end;
   output [data_width-1:0] out_c_m_data; 
   output       out_c_m_val;  
   input        out_c_m_ack;  
   output       out_c_m_h_end;
   output       out_c_m_v_end;
   output [data_width-1:0] out_y_s_data; 
   output       out_y_s_val;  
   input        out_y_s_ack;  
   output       out_y_s_h_end;
   output       out_y_s_v_end;
   output [data_width-1:0] out_c_s_data; 
   output       out_c_s_val;  
   input        out_c_s_ack;  
   output       out_c_s_h_end;
   output       out_c_s_v_end;
   output       out_cfg_upd;  
   output [data_width-1:0] out_ext_y_data; 
   output       out_ext_y_val;  
   input        out_ext_y_ack;  
   output       out_ext_y_h_end;
   output       out_ext_y_v_end;
   output [data_width-1:0] out_ext_c_data; 
   output       out_ext_c_val;  
   input        out_ext_c_ack;  
   output       out_ext_c_h_end;
   output       out_ext_c_v_end;
   reg [2*data_width-1:0]   viv_s0;
   reg          viv_s1;
   reg          viv_s2;
   reg          viv_s3;
   reg          viv_s4;
   reg          viv_s5;
   wire         viv_s6;
   wire [2*data_width-1:0]  viv_s7;
   wire         viv_s8;
   wire         viv_s9;
   wire         viv_s10;
   wire         viv_s11;
   wire         viv_s12;      
   reg [data_width-1:0]    viv_s13;
   reg [data_width-1:0]    viv_s14;
   reg          viv_s15;
   reg          viv_s16;
   reg          viv_s17;
   reg          viv_s18;
   reg          viv_s19;
   reg          viv_s20;
   reg          viv_s21;
   reg          viv_s22;
   reg          viv_s23;
   wire         viv_s24;
   wire         viv_s25;
   reg [data_width-1:0]    out_y_m_data;
   reg         out_y_m_h_end;
   reg         out_y_m_v_end;
   reg [data_width-1:0]    out_c_m_data;
   reg         out_c_m_h_end;
   reg         out_c_m_v_end;
   reg [data_width-1:0]    out_y_s_data;
   reg         out_y_s_h_end;
   reg         out_y_s_v_end;
   reg [data_width-1:0]    out_c_s_data;
   reg         out_c_s_h_end;
   reg         out_c_s_v_end;
   reg [data_width-1:0]    out_ext_y_data; 
   reg         out_ext_y_h_end;
   reg         out_ext_y_v_end;
   reg [data_width-1:0]    out_ext_c_data; 
   reg          out_ext_c_h_end;
   reg          out_ext_c_v_end;
   wire         out_ext_y_val; 
   wire         out_ext_c_val; 
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         viv_s0    <= {2*data_width{1'b0}};
         viv_s1     <= 1'b0;
         viv_s2   <= 1'b0;
         viv_s3   <= 1'b0;
         viv_s4 <= 1'b0;
         viv_s5 <= 1'b0;
      end
      else begin
         if (soft_rst) begin
            viv_s0    <= {2*data_width{1'b0}};
            viv_s1     <= 1'b0;
            viv_s2   <= 1'b0;
            viv_s3   <= 1'b0;
            viv_s4 <= 1'b0;
            viv_s5 <= 1'b0;
         end else begin
            viv_s5 <= viv_s25 | (!viv_s6);
            if (viv_s5) begin
               viv_s1  <= in_val;
            end
            if (viv_s5) begin
               viv_s0    <= in_data; 
               viv_s2   <= in_h_end;
               viv_s3   <= in_v_end;
               viv_s4 <= in_cfg_upd;
            end
         end
      end
   end
   assign viv_s6=viv_s5 ? in_val           : viv_s1;
   assign viv_s7   =viv_s5 ? in_data          : viv_s0;
   assign viv_s8    =viv_s6;
   assign viv_s9  =viv_s5 ? in_h_end         : viv_s2;
   assign viv_s10  =viv_s5 ? in_v_end         : viv_s3;
   assign viv_s11=viv_s5 ? in_cfg_upd       : viv_s4;
   assign viv_s12    =viv_s5; 
   assign in_ack       =viv_s12;
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         viv_s13      <= {data_width{1'b0}};
         viv_s14      <= {data_width{1'b0}};
         viv_s15       <= 1'b0;
         viv_s16       <= 1'b0;
         viv_s17     <= 1'b0;
         viv_s18     <= 1'b0;
         viv_s19     <= 1'b0;
         viv_s20     <= 1'b0;
         viv_s21     <= 1'b0;
         viv_s22  <= 1'b0;
         viv_s23  <= 1'b0;
      end
      else begin
         if (soft_rst) begin
            viv_s13     <= {data_width{1'b0}};
            viv_s14     <= {data_width{1'b0}};
            viv_s15      <= 1'b0;
            viv_s16      <= 1'b0;
            viv_s17    <= 1'b0;
            viv_s18    <= 1'b0;
            viv_s19    <= 1'b0;
            viv_s20    <= 1'b0;
            viv_s21    <= 1'b0;
            viv_s22  <= 1'b0;
            viv_s23  <= 1'b0;
         end else begin
            if (viv_s24) begin
               viv_s13     <= viv_s7[2*data_width-1:data_width];
               viv_s14     <= viv_s7[data_width-1  :0];
               viv_s15      <= viv_s9;
               viv_s16      <= viv_s10;
               viv_s17    <= viv_s11;
               viv_s22  <= viv_s8;
               viv_s23  <= viv_s8;
               case (cfg_chan_mode)
                 2'd0: begin
                    viv_s18 <= 1'b0;
                    viv_s20 <= 1'b0;
                    viv_s19 <= 1'b0;
                    viv_s21 <= 1'b0;
                 end
                 2'd1: begin 
                    viv_s18 <= viv_s8;
                    viv_s20 <= viv_s8;
                    viv_s19 <= 1'b0;
                    viv_s21 <= 1'b0;
                 end
                 2'd2: begin
                    viv_s18 <= 1'b0;
                    viv_s20 <= 1'b0;
                    viv_s19 <= viv_s8;
                    viv_s21 <= viv_s8;
                 end
                 default: begin
                    viv_s18 <= viv_s8;
                    viv_s20 <= viv_s8;
                    viv_s19 <= viv_s8;
                    viv_s21 <= viv_s8;
                 end
               endcase
            end else begin
               if (out_y_m_ack) begin
                  viv_s18 <= 1'b0;
               end
               if (out_y_s_ack) begin
                  viv_s19 <= 1'b0;
               end
               if (out_c_m_ack) begin
                  viv_s20 <= 1'b0;
               end
               if (out_c_s_ack) begin
                  viv_s21 <= 1'b0;
               end
               if (out_ext_y_ack) begin
                  viv_s22 <= 1'b0;
               end
               if (out_ext_c_ack) begin
                  viv_s23 <= 1'b0;
               end
            end
         end
      end
   end
   assign viv_s24 = (~viv_s18    | out_y_m_ack) &&
                                 (~viv_s19    | out_y_s_ack) &&
                                 (~viv_s20    | out_c_m_ack) &&
                                 (~viv_s21    | out_c_s_ack) &&
                                 (~viv_s23 | out_ext_c_ack) &&
                                 (~viv_s22 | out_ext_y_ack);
   assign viv_s25            = viv_s24;
   always @(*) begin
      out_ext_c_data   = viv_s14;
      out_ext_c_h_end  = viv_s15;
      out_ext_c_v_end  = viv_s16;
      out_ext_y_data   = viv_s13;
      out_ext_y_h_end  = viv_s15;
      out_ext_y_v_end  = viv_s16;
      case (cfg_chan_mode)
        2'd0: begin
           out_y_m_data  = {data_width{1'b0}};
           out_y_m_h_end = 1'b0;
           out_y_m_v_end = 1'b0;
           out_c_m_data  = 8'b0;
           out_c_m_h_end = 1'b0;
           out_c_m_v_end = 1'b0;
           out_y_s_data  = {data_width{1'b0}};
           out_y_s_h_end = 1'b0;
           out_y_s_v_end = 1'b0;
           out_c_s_data  = 8'b0;
           out_c_s_h_end = 1'b0;
           out_c_s_v_end = 1'b0;
        end
        2'd1: begin
           out_y_m_data  = viv_s13;
           out_y_m_h_end = viv_s15;
           out_y_m_v_end = viv_s16;
           out_c_m_data  = viv_s14;
           out_c_m_h_end = viv_s15;
           out_c_m_v_end = viv_s16;
           out_y_s_data  = {data_width{1'b0}};
           out_y_s_h_end = 1'b0;
           out_y_s_v_end = 1'b0;
           out_c_s_data  = {data_width{1'b0}};
           out_c_s_h_end = 1'b0;
           out_c_s_v_end = 1'b0;
        end
        2'd2: begin
           out_y_m_data  = {data_width{1'b0}};
           out_y_m_h_end = 1'b0;
           out_y_m_v_end = 1'b0;
           out_c_m_data  = {data_width{1'b0}};
           out_c_m_h_end = 1'b0;
           out_c_m_v_end = 1'b0;
           out_y_s_data  = viv_s13;
           out_y_s_h_end = viv_s15;
           out_y_s_v_end = viv_s16;
           out_c_s_data  = viv_s14;
           out_c_s_h_end = viv_s15;
           out_c_s_v_end = viv_s16;
        end
        default: begin
           out_y_m_data  = viv_s13;
           out_y_m_h_end = viv_s15;
           out_y_m_v_end = viv_s16;
           out_c_m_data  = viv_s14;
           out_c_m_h_end = viv_s15;
           out_c_m_v_end = viv_s16;
           out_y_s_data  = viv_s13;
           out_y_s_h_end = viv_s15;
           out_y_s_v_end = viv_s16;
           out_c_s_data  = viv_s14;
           out_c_s_h_end = viv_s15;
           out_c_s_v_end = viv_s16;           
        end
      endcase
   end 
   assign out_ext_y_val  = viv_s22;
   assign out_ext_c_val  = viv_s23;
   assign out_y_m_val    = viv_s18;
   assign out_y_s_val    = viv_s19;
   assign out_c_m_val    = viv_s20;
   assign out_c_s_val    = viv_s21;
   assign out_cfg_upd    = viv_s17;
endmodule
