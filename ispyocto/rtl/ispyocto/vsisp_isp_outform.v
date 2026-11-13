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

module vsisp_isp_outform
  (
   clk,
   reset_clk_n,
   soft_rst,
   in_data,
   in_h_end,
   in_v_end,
   in_val,
   in_ack,
   outform_data,
   outform_h_end,
   outform_v_end,
   outform_val,
   outform_ack,
   regs_out_h_offs,
   regs_out_v_offs,
   regs_out_h_size,
   regs_out_v_size,
   regs_isp_mode,
   regs_cfg_upd,
   regs_gen_cfg_upd,
   isp_on_shd,
   h_offs_shd,
   v_offs_shd,
   h_size_shd,
   v_size_shd,
   v_start_pos,
   size_err                      
   );
   parameter c_data_width = 10;
`include "vsisp_isp.vh" 
   input     clk;          
   input     reset_clk_n;  
   input     soft_rst;     
   input [c_data_width-1:0] in_data;  
   input                    in_h_end; 
   input                    in_v_end; 
   input                    in_val;   
   output                   in_ack;   
   output [c_data_width-1:0] outform_data;      
   output                    outform_h_end;     
   output                    outform_v_end;     
   output                    outform_val;       
   input                     outform_ack;       
   input [13:0]              regs_out_h_offs;   
   input [13:0]              regs_out_v_offs;   
   input [14:0]              regs_out_h_size;   
   input [13:0]              regs_out_v_size;   
   input [2:0]               regs_isp_mode;     
   input                     regs_cfg_upd;      
   input                     regs_gen_cfg_upd;  
   input                     isp_on_shd;
   output [13:0]             h_offs_shd;        
   output [13:0]             v_offs_shd;        
   output [14:0]             h_size_shd;        
   output [13:0]             v_size_shd;        
   output                    size_err;          
   output                    v_start_pos;
   reg [c_data_width-1:0] outform_data;      
   reg                    outform_h_end;     
   reg                    outform_v_end;     
   reg                    outform_val;       
   reg [13:0]             h_offs_shd;        
   reg [13:0]             v_offs_shd;        
   reg [14:0]             h_size_shd;        
   reg [13:0]             v_size_shd;        
   reg [15:0]             viv_s0;             
   reg [14:0]             viv_s1;             
   reg                    viv_s2;             
   reg                    viv_s3;             
   wire                   size_err;          
   reg                    viv_s4;        
   reg                    viv_s5;        
   reg                    viv_s6;   
   reg                    viv_s7;   
   reg                    viv_s8;
   wire                   in_ack;
   wire [14:0]            viv_s9;
   wire [14:0]            viv_s10;
   wire                   viv_s11;      
   wire                   viv_s12;      
   wire                   viv_s13;       
   wire                   viv_s14;       
   wire                   viv_s15;      
   wire                   viv_s16;     
   wire                   viv_s17;   
   wire                   viv_s18;   
   wire                   viv_s19;
   wire                   viv_s20;
   wire                   viv_s21;
   wire                   v_start_pos;
   assign size_err       = viv_s4 | viv_s5;  
   assign viv_s17 = in_h_end & ~viv_s11;
   assign viv_s18 = in_h_end & in_v_end & ~viv_s12;   
   assign viv_s19 = (regs_isp_mode[2:0] == 3'b011)|
                         (regs_isp_mode[2:0] == 3'b101);
   assign viv_s20     = (regs_isp_mode[2:0] == 3'b001)|
                         (regs_isp_mode[2:0] == 3'b010);
   assign viv_s21    = (regs_isp_mode[2:0] == 3'b100);
   assign viv_s9 = (viv_s19) ? {h_offs_shd}                 : (viv_s20) ? {h_offs_shd[12:1],2'b00} :h_offs_shd;
   assign viv_s10 = (viv_s19) ? {1'b0,h_size_shd[13:1],1'b0} : (viv_s20) ? {h_size_shd[13:1],2'b00} :h_size_shd;
   assign viv_s11 = (viv_s0 == {1'b0, viv_s9});
   assign viv_s12 = (viv_s1 == {1'b0, v_offs_shd});
   assign viv_s13  = (viv_s0 == ((viv_s10 + viv_s9) - 1'd1));
   assign viv_s14  = (viv_s1 == (({1'b0, v_size_shd} + v_offs_shd) - 1'd1));
   assign viv_s15  = (viv_s11 | viv_s2) & (viv_s12 | viv_s3) |  viv_s21;
   assign viv_s16 = in_val & viv_s15; 
   assign v_start_pos = viv_s11 & viv_s12 & in_val & in_ack;
   always @ (posedge clk or negedge reset_clk_n) begin
      if(~reset_clk_n) begin
         viv_s0              <= 16'd0;
         viv_s1              <= 15'd0;
         h_offs_shd         <= 14'd0;
         v_offs_shd         <= 14'd0;
         h_size_shd         <= 15'd0;
         v_size_shd         <= 14'd0;
         viv_s2              <= 1'b0;
         viv_s3              <= 1'b0;
         viv_s4         <= 1'b0;
         viv_s5         <= 1'b0;
         viv_s8 <= 1'b0;
         viv_s6    <= 1'b0;
         viv_s7    <= 1'b0;    
      end else begin
         if (soft_rst) begin
            viv_s0              <= 16'd0;
            viv_s1              <= 15'd0;
            viv_s2              <= 1'b0;
            viv_s3              <= 1'b0;
            viv_s4         <= 1'b0;
            viv_s5         <= 1'b0;
            viv_s8 <= 1'b0;
            viv_s6    <= 1'b0;
            viv_s7    <= 1'b0;    
         end else begin
            if (isp_on_shd & ~viv_s21) begin
               if (~|h_size_shd) begin
                  viv_s4 <= 1'b1; 
               end else if (~|v_size_shd) begin
                  viv_s5 <= 1'b1; 
               end
            end
            if(in_ack & in_val &~viv_s21) begin
               if (in_h_end & isp_on_shd & 
                   ((viv_s2 & ~viv_s13) || ~(viv_s11 | viv_s6))) begin
                  viv_s4 <= 1'b1;
                  viv_s2      <= 1'b0;
               end
               else if (in_h_end & in_v_end & isp_on_shd & 
                        ((viv_s3 & ~viv_s14) || ~(viv_s12 | viv_s7))) begin
                  viv_s5 <= 1'b1; 
                  viv_s3      <= 1'b0;   
               end
            end else begin 
               viv_s5 <= 1'b0; 
               viv_s4 <= 1'b0; 
            end
            if (viv_s11) viv_s6 <= 1'b1;
            if (viv_s12) viv_s7 <= 1'b1;
            if (regs_gen_cfg_upd) begin 
               viv_s8 <= 1'b1;
            end 
            if (in_ack & in_val & ~viv_s21) begin
               if (in_h_end) begin
                  viv_s0 <= 16'd0;
                  if(in_v_end) begin
                     viv_s1 <= 15'd0;
                  end else begin
                     viv_s1 <= viv_s1 + 1'd1; 
                  end
               end else begin
                  viv_s0 <= viv_s0 + 1'd1; 
               end
               if (viv_s2 & viv_s13) begin
                  viv_s2 <= 1'b0;
               end else begin
                  if (viv_s11 & ~viv_s13) begin
                     viv_s2 <= 1'b1;  
                  end
               end
               if (viv_s17) viv_s6 <= 1'b0;
               if ((viv_s3 & viv_s14) &
                   (viv_s2 & viv_s13)) begin  
                  viv_s3 <= 1'b0; 
               end else begin
                  if (viv_s12 &~viv_s14) begin
                     viv_s3 <= 1'b1;  
                  end
               end
               if (viv_s18) viv_s7 <= 1'b0;
            end 
            if (in_val & in_ack & viv_s13 & viv_s14 & viv_s15) begin   
               if (viv_s8) begin 
                  viv_s8 <= regs_gen_cfg_upd; 
                  h_offs_shd         <= regs_out_h_offs;
                  v_offs_shd         <= regs_out_v_offs;
                  h_size_shd         <= regs_out_h_size;
                  v_size_shd         <= regs_out_v_size;
               end
            end
            if (regs_cfg_upd) begin
               h_offs_shd <= regs_out_h_offs;
               v_offs_shd <= regs_out_v_offs;
               h_size_shd <= regs_out_h_size;
               v_size_shd <= regs_out_v_size;
            end       
         end
      end
   end
   always @(posedge clk or negedge reset_clk_n) begin
      if (!reset_clk_n) begin
         outform_data  <= {c_data_width{1'b0}};
         outform_val   <= 1'b0;
         outform_h_end <= 1'b0;
         outform_v_end <= 1'b0;
      end
      else begin
         if (soft_rst) begin
            outform_data  <= {c_data_width{1'b0}};
            outform_val   <= 1'b0;
            outform_h_end <= 1'b0;
            outform_v_end <= 1'b0;
         end else begin
            if (in_ack) begin
               outform_data  <= in_data;                              
               outform_h_end <= viv_s21 ? in_h_end : viv_s13; 
               outform_v_end <= viv_s21 ? in_v_end : viv_s14; 
               outform_val   <= viv_s16;                             
            end                  
         end
      end
   end
   assign in_ack = ~outform_val | outform_ack;
`ifdef FPGA_DEBUG_ISP
   (* mark_debug = "true" *)reg [15:0]           probing__outform_h_cnt/* synthesis syn_noprune=1 syn_preserve = 1 */;         
   (* mark_debug = "true" *)reg [14:0]           probing__outform_v_cnt/* synthesis syn_noprune=1 syn_preserve = 1 */;         
   (* mark_debug = "true" *)reg                  probing__outform_val/* synthesis syn_noprune=1 syn_preserve = 1 */;   
   (* mark_debug = "true" *)reg [c_dw_si-1:0]    probing__outform_data/* synthesis syn_noprune=1 syn_preserve = 1 */;  
   (* mark_debug = "true" *)reg                  probing__outform_h_end/* synthesis syn_noprune=1 syn_preserve = 1 */; 
   (* mark_debug = "true" *)reg                  probing__outform_v_end/* synthesis syn_noprune=1 syn_preserve = 1 */; 
   (* mark_debug = "true" *)reg                  probing__outform_ack/* synthesis syn_noprune=1 syn_preserve = 1 */;   
always@(posedge clk)begin
        probing__outform_h_cnt     <= viv_s0           ;         
        probing__outform_v_cnt     <= viv_s1           ;         
        probing__outform_val   <= outform_val  ;   
        probing__outform_data  <= outform_data ;  
        probing__outform_h_end <= outform_h_end; 
        probing__outform_v_end <= outform_v_end; 
        probing__outform_ack   <= outform_ack  ;   
end
`endif
endmodule
