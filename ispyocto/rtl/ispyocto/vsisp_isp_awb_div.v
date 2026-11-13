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

module vsisp_isp_awb_div 
  (
   clk,
   reset_n,
   soft_rst,
   in_data,
   in_div,
   in_val,
   out_data,
   out_val,
   out_div_zero,
   out_div,
   out_ack);
   parameter c_dw_17 = 35; 
   parameter c_dw_9  = 27; 
   parameter c_cw_5  = 6;  
   input                clk;           
   input                reset_n;       
   input                soft_rst;      
   input [c_dw_17-1:0]  in_data;       
   input [c_dw_9-1:0]   in_div;        
   input                in_val;        
   output [c_dw_17-1:0] out_data;      
   output               out_val;       
   output               out_div_zero;  
   output [c_dw_9-1:0]  out_div;       
   input                out_ack;       
   reg               viv_s0;
   reg               out_val;
   reg               out_div_zero;
   reg [c_dw_17-1:0] out_data;
   reg [c_dw_9-1:0]  out_div;       
   reg [c_dw_9:0]    viv_s1;         
   reg [c_cw_5-1:0]  viv_s2;         
   wire [c_dw_9+1:0] viv_s3;         
   wire              viv_s4;
   assign viv_s3 = {1'b0, viv_s1} - {2'b0, out_div};
   assign viv_s4 = (viv_s0 && in_val);   
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         viv_s0       <= 1'b0;
         out_val      <= 1'b0;
         viv_s2        <= {c_cw_5{1'b0}};
         viv_s1        <= {c_dw_9+1{1'b0}};
         out_data     <= {c_dw_17{1'b0}};
         out_div      <= {c_dw_9{1'b0}};
         out_div_zero <= 1'b0;
      end else begin
         if (soft_rst == 1'b1) begin
            viv_s0       <= 1'b0;
            out_val      <= 1'b0;
            viv_s2        <= {c_cw_5{1'b0}};
            out_div_zero <= 1'b0;
         end else begin
            if (|viv_s2) begin
               if (viv_s3[c_dw_9+1]) begin
                  out_data <= {out_data[c_dw_17-2:0], 1'b0};
                  viv_s1    <= {viv_s1[c_dw_9-1:0], out_data[c_dw_17-1]};
               end else begin
                  out_data <= {out_data[c_dw_17-2:0], 1'b1};
                  viv_s1    <= {viv_s3[c_dw_9-1:0], out_data[c_dw_17-1]};
               end
               viv_s2 <= viv_s2 - {{c_cw_5-1{1'b0}}, 1'b1};
               if (viv_s2 == {{c_cw_5-1{1'b0}}, 1'b1}) begin
                  out_val <= 1'b1;
               end
            end else begin
               if (out_ack)
                 out_div_zero <= 1'b0;
               else if (viv_s4) begin           
                  out_div_zero <= (in_div == {c_dw_9{1'b0}});
               end
               if (out_ack) begin
                  out_val  <= 1'b0;
               end
               if (viv_s4) begin          
                  viv_s0   <= 1'b0;         
                  viv_s2    <= c_dw_17;   
                  out_div  <= in_div;
                  out_data <= {in_data[c_dw_17-2:0], 1'b0};
                  viv_s1    <= {{c_dw_9{1'b0}}, in_data[c_dw_17-1]};
               end else begin
                  if (!out_val) begin
                     viv_s0     <= 1'b1;
                  end
               end
            end
         end
      end
   end
endmodule
