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

module vsisp_pvci_mux (
                 paddr,         
                 hval,
                 hack,
                 hrdata,
                 val_all,
                 ack_all,
                 rdata_all,
                 val_mi,
                 ack_mi,
                 rdata_mi
                 );
   parameter g_data_width = 32;
   parameter c_paddr_word = 12;    
   parameter isp_end_addr = 12'he00;
   parameter mi_end_addr  = 12'hff0;
   input [c_paddr_word-1:0] paddr;          
   input                    hval;         
   output                   hack;         
   output [g_data_width-1:0] hrdata;       
   output                    val_all;        
   input                     ack_all;        
   input [g_data_width-1:0]  rdata_all;      
   output                    val_mi;         
   input                     ack_mi;         
   input [g_data_width-1:0]  rdata_mi;       
   reg                       hack;
   reg [g_data_width-1:0]    hrdata;          
   reg                       val_all;         
   reg                       val_mi;          
   always @(*) begin
         val_all   = 1'b0;
         val_mi    = 1'b0;
         hrdata    = 32'd0;      
         hack      = 1'b1;
      if (paddr[11:0] < isp_end_addr) begin
         val_all  = hval;
         hrdata   = rdata_all;      
         hack     = ack_all;
      end else if (paddr[11:0] < mi_end_addr) begin
         val_mi     = hval;
         hrdata     = rdata_mi;      
         hack       = ack_mi;
      end else begin
         val_all   = 1'b0;
         val_mi    = 1'b0;
         hrdata    = 32'd0;      
         hack      = 1'b1;
      end
   end   
endmodule
