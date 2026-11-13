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

module vsisp_bvci2axi_wr
  (
   clk,
   reset_n,
   bvci_cmdval,
   bvci_cmdack,
   bvci_cmd,
   bvci_plen,
   bvci_contig,
   bvci_wrap,
   bvci_address,
   bvci_be,
   bvci_eop,
   bvci_rspval,
   bvci_rspack,
   bvci_reop,
   bvci_wdata,
   axi_wr_marvin_awvalid,
   axi_wr_marvin_awaddr,
   axi_wr_marvin_awlen,
   axi_wr_marvin_awsize,
   axi_wr_marvin_awburst,
   axi_wr_marvin_awlock,
   axi_wr_marvin_awcache,
   axi_wr_marvin_awprot,
   axi_wr_marvin_awid,
   axi_wr_marvin_awready,
   axi_wr_marvin_wvalid,
   axi_wr_marvin_wlast,
   axi_wr_marvin_wdata,
   axi_wr_marvin_wstrb,
   axi_wr_marvin_wid,
   axi_wr_marvin_wready,
   axi_wr_marvin_bvalid,
   axi_wr_marvin_bresp,   
   axi_wr_marvin_bid,
   axi_wr_marvin_bready
   );
   input         clk;       
   input         reset_n;   
   input         bvci_cmdval;  
   output        bvci_cmdack;  
   input [1:0]   bvci_cmd;     
   input [8:0]   bvci_plen;    
   input         bvci_contig;  
   input         bvci_wrap;    
   input [31:3]  bvci_address; 
   input [7:0]   bvci_be;      
   input         bvci_eop;     
   output        bvci_rspval;  
   input         bvci_rspack;  
   output        bvci_reop;    
   input [63:0]  bvci_wdata;   
   output        axi_wr_marvin_awvalid;  
   output [31:3] axi_wr_marvin_awaddr;    
   output [3:0]  axi_wr_marvin_awlen;    
   output [2:0]  axi_wr_marvin_awsize;
   output [1:0]  axi_wr_marvin_awburst;
   output [1:0]  axi_wr_marvin_awlock;
   output [3:0]  axi_wr_marvin_awcache;
   output [2:0]  axi_wr_marvin_awprot;
   output [3:0]  axi_wr_marvin_awid;
   input         axi_wr_marvin_awready;  
   output        axi_wr_marvin_wvalid;
   output        axi_wr_marvin_wlast;
   output [63:0] axi_wr_marvin_wdata;
   output [7:0]  axi_wr_marvin_wstrb;
   output [3:0]  axi_wr_marvin_wid;
   input         axi_wr_marvin_wready;   
   input         axi_wr_marvin_bvalid;
   input [1:0]   axi_wr_marvin_bresp;
   input [3:0]   axi_wr_marvin_bid;
   output        axi_wr_marvin_bready;
   reg [31:3]    axi_wr_marvin_awaddr;
   reg [63:0]    axi_wr_marvin_wdata;
   reg           axi_wr_marvin_wvalid;
   reg           axi_wr_marvin_awvalid;
   reg [3:0]     axi_wr_marvin_awlen;
   reg           axi_wr_marvin_wlast;
   reg [1:0]     viv_s0;
   parameter     c_cmd_idle = 2'b00;
   parameter     c_cmd_set  = 2'b01;
   parameter     c_cmd_hold = 2'b10;
   parameter     c_cmd_late = 2'b11;
   reg           bvci_rspval;
   reg           bvci_reop;
   wire [4:0]     viv_s1; 
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         axi_wr_marvin_awvalid <= 1'b0;
         viv_s0                 <= c_cmd_idle;
      end else begin
         case (viv_s0)
           c_cmd_set : begin
              case ({axi_wr_marvin_awready, 
                     axi_wr_marvin_wlast & axi_wr_marvin_wready})
                2'b10: begin
                   axi_wr_marvin_awvalid <= 1'b0;
                   viv_s0                 <= c_cmd_hold;
                end
                2'b11: begin
                   axi_wr_marvin_awvalid <= 1'b0;
                   viv_s0                 <= c_cmd_idle;
                end
                2'b01: begin
                   axi_wr_marvin_awvalid <= 1'b1;
                   viv_s0                 <= c_cmd_late;
                end
                default: begin 
                   axi_wr_marvin_awvalid <= 1'b1;
                   viv_s0                 <= c_cmd_set;
                end
              endcase
           end
           c_cmd_hold : begin
              if (axi_wr_marvin_wlast & axi_wr_marvin_wready) begin
                 axi_wr_marvin_awvalid <= 1'b0;
                 viv_s0                 <= c_cmd_idle;
              end else begin
                 axi_wr_marvin_awvalid <= 1'b0;
                 viv_s0                 <= c_cmd_hold;            
              end 
           end        
           c_cmd_late : begin
              if (axi_wr_marvin_awready) begin
                 axi_wr_marvin_awvalid <= 1'b0;
                 viv_s0                 <= c_cmd_idle;
              end else begin
                 axi_wr_marvin_awvalid <= 1'b1;
                 viv_s0                 <= c_cmd_late;            
              end 
           end        
           default : begin 
              if ((bvci_cmd == 2'b10) && bvci_cmdval) begin
                 axi_wr_marvin_awvalid <= 1'b1;
                 viv_s0                 <= c_cmd_set;
              end else begin
                 axi_wr_marvin_awvalid <= 1'b0;
                 viv_s0                 <= c_cmd_idle;            
              end
           end
         endcase
      end
   end
   assign viv_s1 = bvci_plen[7:3] - 5'b1;
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         axi_wr_marvin_wvalid <= 1'd0;
         axi_wr_marvin_awlen  <= 4'd0;
         axi_wr_marvin_awaddr <= 29'd0;
         axi_wr_marvin_wdata  <= 64'd0;
         axi_wr_marvin_wlast  <= 1'b0;
      end else begin
         if (axi_wr_marvin_wlast & axi_wr_marvin_wready) begin
            axi_wr_marvin_wvalid <= 1'b0;
            axi_wr_marvin_wlast  <= 1'b0;
         end else if ((!axi_wr_marvin_wvalid | axi_wr_marvin_wready) &&
                      (viv_s0 != c_cmd_late)) begin
            axi_wr_marvin_wvalid <= bvci_cmdval;
            axi_wr_marvin_awlen  <= viv_s1[3:0]; 
            axi_wr_marvin_wdata  <= bvci_wdata;
            if (bvci_cmdval && bvci_cmdack) begin
               axi_wr_marvin_wlast <= bvci_eop;
            end
            if (viv_s0 == c_cmd_idle) begin
               axi_wr_marvin_awaddr  <= bvci_address;
            end
         end
      end
   end
   assign axi_wr_marvin_awsize  = 3'b011;  
   assign axi_wr_marvin_awburst = 2'b01;   
   assign axi_wr_marvin_awlock  = 2'b00;   
   assign axi_wr_marvin_awcache = 4'b0000; 
   assign axi_wr_marvin_awprot  = 3'b000;  
   assign axi_wr_marvin_awid    = 4'b0000; 
   assign axi_wr_marvin_wstrb  = 8'b11111111;
   assign axi_wr_marvin_wid    = 4'b0;
   assign axi_wr_marvin_bready = 1'b1;   
   assign bvci_cmdack = ((!axi_wr_marvin_wvalid | axi_wr_marvin_wready) &
                           !axi_wr_marvin_wlast & (viv_s0 != c_cmd_late));
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         bvci_rspval <= 1'h0;
      end else begin
         if (axi_wr_marvin_wready) begin
            bvci_rspval <= 1'b1;
         end
         else begin
            bvci_rspval <= 1'b0;
         end
      end
   end
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         bvci_reop <= 1'h0;
      end else begin
         if (axi_wr_marvin_bvalid) begin
            bvci_reop <= 1'b1;
         end
         else begin
            bvci_reop <= 1'b0;
         end
      end
   end
endmodule
