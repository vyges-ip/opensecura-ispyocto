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

module vsisp_marvin_ctrl_pvcidis
  (
   clk,
   reset_n,
   pval,
   prd,
   paddr,
   pwdata,
   cfg_ack_isp,
   cfg_ack_mrsz,
   cfg_ack_srsz,
   cfg_rdata_isp,
   cfg_rdata_mrsz,
   cfg_rdata_srsz,
   vi_iccl_out,
   vi_ircl_out,
   pack_ctrl_on,
   prdata_ctrl_on,
   cfg_val_mrsz,
   cfg_val_srsz,
   cfg_val_isp
   );
`include "vsisp_marvin_ctrl.vh"
`include "vsisp_marvin_id.vh"
   input                    clk;        
   input                    reset_n;    
   input                    pval;       
   input                    prd;        
   input [c_paddr_word-1:0] paddr;      
   input [c_pwdata_word-1:0] pwdata;    
   input                     cfg_ack_isp;    
   input                     cfg_ack_mrsz;   
   input                     cfg_ack_srsz;   
   input [c_prdata_word-1:0] cfg_rdata_isp;  
   input [c_prdata_word-1:0] cfg_rdata_mrsz; 
   input [c_prdata_word-1:0] cfg_rdata_srsz; 
   output [c_iccl_word-1:0]  vi_iccl_out;    
   output [c_ircl_word-1:0]  vi_ircl_out;    
   output                     pack_ctrl_on;  
   output [c_prdata_word-1:0] prdata_ctrl_on;
   output                     cfg_val_mrsz; 
   output                     cfg_val_srsz; 
   output                     cfg_val_isp;  
   reg [c_prdata_word-1:0]    prdata_ctrl_on;
   reg [c_iccl_word-1:0]      vi_iccl_out;
   reg [c_ircl_word-1:0]      vi_ircl_out;
   reg                        pack_ctrl_on;
   reg                        cfg_val_mrsz;
   reg                        cfg_val_srsz;
   reg                        cfg_val_isp;
   wire                       viv_s0;
   wire                       viv_s1;
   assign viv_s0 = !prd && pval; 
   assign viv_s1 =  prd && pval; 
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         vi_iccl_out    <= 13'h1f7b;
         vi_ircl_out    <= {c_ircl_word{1'b0}};
         pack_ctrl_on   <= 1'b0;
         prdata_ctrl_on <= 32'h00000000;
         cfg_val_mrsz   <= 1'b0;
         cfg_val_srsz   <= 1'b0;
         cfg_val_isp    <= 1'b0;
      end
      else begin
         if (cfg_val_isp) begin
            if (cfg_ack_isp) begin
               cfg_val_isp <= 1'b0;
            end
         end
         if (cfg_val_mrsz) begin
            if (cfg_ack_mrsz) begin
               cfg_val_mrsz <= 1'b0;
            end
         end
         if (cfg_val_srsz) begin
            if (cfg_ack_srsz) begin
               cfg_val_srsz <= 1'b0;
            end
         end
         if (pack_ctrl_on) begin
            pack_ctrl_on <= 1'b0;
         end
         else begin
            if (paddr[12:8] == c_ctrl_addr) begin
               if (viv_s0) begin
                  case (paddr[7:0])
                    c_vi_iccl_addr : begin
                       pack_ctrl_on <= 1'b1;
                       vi_iccl_out  <= pwdata[c_iccl_word-1:0];
                    end
                    c_vi_ircl_addr : begin
                       pack_ctrl_on <= 1'b1;
                       vi_ircl_out  <= pwdata[c_ircl_word-1:0];
                    end
                    c_vi_ccl_addr : begin
                    end
                    c_isp_id_custom_id_addr       : begin
                    end                           
                    c_isp_id_product_id_addr      : begin
                    end                           
                    c_isp_id_chip_id_addr         : begin
                    end                           
                    c_isp_id_eco_id_addr          : begin
                    end
                    c_isp_id_chip_revision_addr   : begin
                    end
                    c_isp_id_patch_revision_addr  : begin
                    end
                    c_isp_id_chip_date_addr       : begin
                    end
                    c_isp_id_chip_time_addr       : begin
                    end
                    default: begin
                       pack_ctrl_on <= 1'b1;
                    end
                  endcase
               end
               else begin
                  if (viv_s1) begin
                     case (paddr[7:0])
                       c_vi_iccl_addr    : begin
                          pack_ctrl_on   <= 1'b1;
                          prdata_ctrl_on <= {25'b0,
                                             vi_iccl_out[6],
                                             1'b0,
                                             vi_iccl_out[4],
                                             vi_iccl_out[3],
                                             2'b0,
                                             vi_iccl_out[0]};
                       end
                       c_vi_ircl_addr    : begin
                          pack_ctrl_on   <= 1'b1;
                          prdata_ctrl_on <= {24'b0,vi_ircl_out[7:6],1'b0,vi_ircl_out[4:2],1'b0,vi_ircl_out[0]};
                       end
                       c_vi_ccl_addr  : begin
                          prdata_ctrl_on <= 32'h00000000;
                       end
                       c_isp_id_custom_id_addr       : begin
                          pack_ctrl_on   <= 1'b1;
                          prdata_ctrl_on <= c_isp_id_custom_id;
                       end
                       c_isp_id_product_id_addr      : begin
                          pack_ctrl_on   <= 1'b1;
                          prdata_ctrl_on <= c_isp_id_product_id;
                       end
                       c_isp_id_chip_id_addr         : begin
                          pack_ctrl_on   <= 1'b1;
                          prdata_ctrl_on <= c_isp_id_chip_id;
                       end
                       c_isp_id_eco_id_addr          : begin
                          pack_ctrl_on   <= 1'b1;
                          prdata_ctrl_on <= c_isp_id_eco_id;
                       end
                       c_isp_id_chip_revision_addr   : begin
                          pack_ctrl_on   <= 1'b1;
                          prdata_ctrl_on <= c_isp_id_chip_revision;
                       end
                       c_isp_id_patch_revision_addr  : begin
                          pack_ctrl_on   <= 1'b1;
                          prdata_ctrl_on <= c_isp_id_patch_revision;
                       end
                       c_isp_id_chip_date_addr       : begin
                          pack_ctrl_on   <= 1'b1;
                          prdata_ctrl_on <= c_isp_id_chip_date;
                       end
                       c_isp_id_chip_time_addr       : begin
                          pack_ctrl_on   <= 1'b1;
                          prdata_ctrl_on <= c_isp_id_chip_time;
                       end
                       c_vi_id_rsv0_addr   : begin
                          pack_ctrl_on   <= 1'b1;
                          prdata_ctrl_on <= c_marvin_id_rsv0;
                       end
                       c_vi_id_rsv1_addr   : begin
                          pack_ctrl_on   <= 1'b1;
                          prdata_ctrl_on <= c_marvin_id_rsv1;
                       end
                       c_vi_id_rsv2_addr   : begin
                          pack_ctrl_on   <= 1'b1;
                          prdata_ctrl_on <= c_marvin_id_rsv2;
                       end
                       c_vi_id_rsv3_addr   : begin
                          pack_ctrl_on   <= 1'b1;
                          prdata_ctrl_on <= c_marvin_id_rsv3;
                       end
                       c_vi_id_rsv4_addr   : begin
                          pack_ctrl_on   <= 1'b1;
                          prdata_ctrl_on <= c_marvin_id_rsv4;
                       end
                       c_vi_id_rsv5_addr   : begin
                          pack_ctrl_on   <= 1'b1;
                          prdata_ctrl_on <= c_marvin_id_rsv5;
                       end
                       c_vi_id_rsv6_addr   : begin
                          pack_ctrl_on   <= 1'b1;
                          prdata_ctrl_on <= c_marvin_id_rsv6;
                       end
                       c_vi_id_rsv7_addr   : begin
                          pack_ctrl_on   <= 1'b1;
                          prdata_ctrl_on <= c_marvin_id_rsv7;
                       end
                       default: begin
                          prdata_ctrl_on <= 32'h00000000;
                          pack_ctrl_on   <= 1'b1;
                       end
                     endcase
                  end
               end
            end
            else if ((c_isp_start_addr <= paddr[12:8]) && (paddr[12:8] < c_isp_end_addr)) begin
               if (vi_iccl_out[0]) begin
                  if (viv_s0) begin
                     pack_ctrl_on <= 1'b1;
                     if (!cfg_ack_isp) begin
                        cfg_val_isp  <= 1'b1;
                        pack_ctrl_on <= 1'b0;
                     end
                  end
                  else begin
                     if (viv_s1) begin
                        if (cfg_ack_isp) begin
                           pack_ctrl_on   <= 1'b1;
                           prdata_ctrl_on <= cfg_rdata_isp;
                        end
                        else begin
                           pack_ctrl_on <= 1'b0;
                           cfg_val_isp  <= 1'b1;
                        end
                     end
                  end
               end
            end
            else if (paddr[12:8] == c_mrsz_addr) begin
               if (vi_iccl_out[3]) begin
                  if (viv_s0) begin
                     pack_ctrl_on <= 1'b1;
                     if (!cfg_ack_mrsz) begin
                        cfg_val_mrsz <= 1'b1;
                        pack_ctrl_on <= 1'b0;
                     end
                  end
                  else begin
                     if (viv_s1) begin
                        if (cfg_ack_mrsz) begin
                           pack_ctrl_on   <= 1'b1;
                           prdata_ctrl_on <= cfg_rdata_mrsz;
                        end
                        else begin
                           pack_ctrl_on <= 1'b0;
                           cfg_val_mrsz <= 1'b1;
                        end
                     end
                  end
               end
            end
            else if (paddr[12:7] == c_srsz_addr) begin
               if (vi_iccl_out[4]) begin
                  if (viv_s0) begin
                     pack_ctrl_on <= 1'b1;
                     if (!cfg_ack_srsz) begin
                        cfg_val_srsz <= 1'b1;
                        pack_ctrl_on <= 1'b0;
                     end
                  end
                  else begin
                     if (viv_s1) begin
                        if (cfg_ack_srsz) begin
                           pack_ctrl_on   <= 1'b1;
                           prdata_ctrl_on <= cfg_rdata_srsz;
                        end
                        else begin
                           pack_ctrl_on <= 1'b0;
                           cfg_val_srsz <= 1'b1;
                        end
                     end
                  end
               end
            end 
            else begin
               if (pval) begin
                  prdata_ctrl_on <= 32'h00000000;
                  pack_ctrl_on   <= 1'b1;
               end
            end
         end
      end
   end
endmodule
