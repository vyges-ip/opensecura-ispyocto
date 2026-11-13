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

module vsisp_isp_irq_handler (
                clk,
                reset_n,
                soft_rst,
                isp_err_status_set,
                regs_err_clr,
                isp_err_status,                
                irq_set,
                regs_isp_ris,
                regs_isp_mis,
                regs_isp_imsc,
                regs_isp_icr,
                regs_isp_isr);
`include "vsisp_isp.vh"   
   input                 clk;                 
   input                 reset_n;             
   input                 soft_rst;            
   input  [c_isp_err_bw-1:0] isp_err_status_set; 
   input  [c_isp_err_bw-1:0] regs_err_clr;       
   output [c_isp_err_bw-1:0] isp_err_status;     
   input  [c_irq_bw-1:0] irq_set;                
   output [c_irq_bw-1:0] regs_isp_ris;           
   output [c_irq_bw-1:0] regs_isp_mis;           
   input  [c_irq_bw-1:0] regs_isp_imsc;          
   input  [c_irq_bw-1:0] regs_isp_icr;           
   input  [c_irq_bw-1:0] regs_isp_isr;           
   reg    [c_irq_bw-1:0] regs_isp_ris;
   wire   [c_irq_bw-1:0] viv_s0;
   reg    [c_isp_err_bw-1:0] isp_err_status;
   assign viv_s0 = (regs_isp_ris | regs_isp_isr | irq_set) &
                            ~regs_isp_icr;
   assign regs_isp_mis = regs_isp_ris & regs_isp_imsc;
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         regs_isp_ris <= 0;
      end else begin
         if (soft_rst == 1'b1) begin
            regs_isp_ris <= 0;
         end else begin
            regs_isp_ris <= viv_s0;
         end
      end
   end
   always @(posedge clk or negedge reset_n) begin
      if (reset_n == 1'b0) begin
         isp_err_status <= 0;
      end else begin
         if (soft_rst == 1'b1) begin
            isp_err_status <= 0;
         end else begin
            if (regs_err_clr[0]) begin
               isp_err_status[0] <= 1'b0;
            end
            else if (isp_err_status_set[0]) begin
               isp_err_status[0] <= 1'b1;
            end
            if (regs_err_clr[1]) begin
               isp_err_status[1] <= 1'b0;
            end
            else if (isp_err_status_set[1]) begin
               isp_err_status[1] <= 1'b1;
            end            
            if (regs_err_clr[2]) begin
               isp_err_status[2] <= 1'b0;
            end
            else if (isp_err_status_set[2]) begin
               isp_err_status[2] <= 1'b1;
            end            
         end
      end
   end
endmodule
