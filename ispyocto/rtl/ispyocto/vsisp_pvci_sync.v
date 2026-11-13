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

module vsisp_pvci_sync (
        hclk,
        hreset_n,
        clk,
        reset_clk_n,
        hval,
        hack,
        hrdata,
        val,
        ack,
        rdata);
   parameter   g_data_width   = 32;
   parameter   c_h_reset      = 2'd0;
   parameter   c_h_wait_val   = 2'd1;
   parameter   c_h_wait_ack   = 2'd2;
   parameter   c_h_wait_nack  = 2'd3;
   parameter   c_s_reset      = 2'd0;
   parameter   c_s_wait_val   = 2'd1;
   parameter   c_s_wait_ack   = 2'd3;
   parameter   c_s_wait_nval  = 2'd2;
   input                      hclk;          
   input                      hreset_n;      
   input                      clk;           
   input                      reset_clk_n;   
   input                      hval;          
   output                     hack;          
   output [g_data_width-1:0]  hrdata;        
   output                     val;           
   input                      ack;           
   input [g_data_width-1:0]   rdata;         
   reg [1:0]                  viv_s0;       
   reg [1:0]                  viv_s1;       
   reg [g_data_width-1:0]     viv_s2;     
   wire                       viv_s3;      
   wire                       viv_s4;       
   reg                        viv_s5;      
   reg                        viv_s6;    
   reg                        viv_s7;       
   reg                        viv_s8;     
   wire                       viv_s9;   
   assign   viv_s3    = ((viv_s0 == c_h_wait_val) && hval) || 
                          ((viv_s0 == c_h_wait_ack) && (!viv_s6));
   assign   hrdata      = viv_s2;
   assign   hack        = ((viv_s0 == c_h_wait_ack) && viv_s6);
   assign   viv_s9 = (!viv_s6);
   always @(posedge hclk or negedge hreset_n) begin
      if (hreset_n == 1'b0) begin
         viv_s5    <= 1'b0; 
         viv_s6  <= 1'b0; 
      end 
      else begin    
         viv_s5    <= viv_s4;
         viv_s6  <= viv_s5; 
      end
   end
   always @(posedge hclk or negedge hreset_n) begin
      if (hreset_n == 1'b0) begin
         viv_s0     <= c_h_reset;
      end 
      else begin    
         case (viv_s0) 
           c_h_reset: begin 
              viv_s0 <= c_h_wait_val;
           end
           c_h_wait_val: begin 
              if (hval) begin
                 viv_s0   <= c_h_wait_ack;
              end
           end
           c_h_wait_ack: begin 
              if (~hval) begin
                 viv_s0   <= c_h_wait_val;
              end
              else begin
                if (viv_s6) begin
                  viv_s0   <= c_h_wait_nack;
                end
             end
           end
           default: begin 
              if (viv_s9) begin
                 viv_s0   <= c_h_wait_val;
              end
           end
         endcase 
      end 
   end 
   assign   val      =  (viv_s1 == c_s_wait_ack) || ((viv_s1 == c_s_wait_val) && viv_s8);
   assign   viv_s4  =  ((viv_s1 == c_s_wait_nval) && viv_s8);
   always @(posedge clk or negedge reset_clk_n) begin
      if (reset_clk_n == 1'b0) begin
         viv_s7     <= 1'b0; 
         viv_s8   <= 1'b0; 
      end
      else begin
         viv_s7     <= viv_s3;
         viv_s8   <= viv_s7;
      end
   end
   always @(posedge clk or negedge reset_clk_n) begin
      if (reset_clk_n == 1'b0) begin
         viv_s1     <= c_s_reset;
         viv_s2   <= {g_data_width{1'b0}};
      end 
      else begin
         case (viv_s1)  
           c_s_reset: begin
              viv_s1 <= c_s_wait_val;
           end           
           c_s_wait_val: begin
              if (viv_s8) begin
                 viv_s1 <= c_s_wait_ack;
              end
           end           
           c_s_wait_ack: begin
              if (ack) begin
                 viv_s1   <= c_s_wait_nval;
                 viv_s2 <= rdata;
              end 
           end      
           default: begin 
              if (!viv_s8) begin
                 viv_s1 <= c_s_wait_val;
              end
           end
         endcase 
      end 
   end 
endmodule
