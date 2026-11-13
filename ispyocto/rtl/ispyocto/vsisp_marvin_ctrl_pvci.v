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

module vsisp_marvin_ctrl_pvci
  (
   clk,
   reset_n,
   pval,
   prd,
   paddr,
   pwdata,
   vi_iccl,
   pack_ctrl_off,
   prdata_ctrl_off,
   vi_ccl_out);
   parameter c_marvin_id =  32'h00453017;
`include "vsisp_marvin_ctrl.vh"
`include "vsisp_marvin_id.vh"
   input clk;            
   input reset_n;        
   input [c_paddr_word-1:0]  paddr;    
   input [c_pwdata_word-1:0] pwdata;   
   input                     pval;     
   input                     prd;      
   input [c_iccl_word-1:0]   vi_iccl;  
   output [c_prdata_word-1:0] prdata_ctrl_off;
   output                     pack_ctrl_off;  
   output                     vi_ccl_out;     
   reg [c_prdata_word-1:0]    prdata_ctrl_off;
   reg                        vi_ccl_out;
   reg                        pack_ctrl_off;
   wire                       viv_s0;
   wire                       viv_s1;
   wire                       viv_s2;
   assign viv_s0  = !prd && pval;
   assign viv_s1  =  prd && pval;
   assign viv_s2 = vi_ccl_out || !vi_iccl[0];
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         vi_ccl_out      <= 1'b0;
         pack_ctrl_off   <= 1'b0;
         prdata_ctrl_off <= {c_prdata_word{1'b0}};
      end
      else begin
         if (pack_ctrl_off) begin
            pack_ctrl_off   <= 1'b0;
         end
         else begin
            if (paddr[12:8] == c_ctrl_addr) begin
              if (viv_s0) begin
                 case (paddr[7:0])
                   c_vi_ccl_addr  : begin
                      pack_ctrl_off <= 1'b1;
                      vi_ccl_out    <= pwdata[2];
                   end
                   c_isp_id_custom_id_addr       : begin
                         pack_ctrl_off <= 1'b1;
                   end
                   c_isp_id_product_id_addr      : begin
                         pack_ctrl_off <= 1'b1;
                   end
                   c_isp_id_chip_id_addr         : begin
                         pack_ctrl_off <= 1'b1;
                   end
                   c_isp_id_eco_id_addr          : begin
                         pack_ctrl_off <= 1'b1;
                   end
                   c_isp_id_chip_revision_addr   : begin
                         pack_ctrl_off <= 1'b1;
                   end
                   c_isp_id_patch_revision_addr   : begin
                         pack_ctrl_off <= 1'b1;
                   end
                   c_isp_id_chip_date_addr   : begin
                         pack_ctrl_off <= 1'b1;
                   end
                   c_isp_id_chip_time_addr   : begin
                         pack_ctrl_off <= 1'b1;
                   end
                   c_vi_id_rsv0_addr   : begin
                         pack_ctrl_off <= 1'b1;
                   end
                   c_vi_id_rsv1_addr   : begin
                         pack_ctrl_off <= 1'b1;
                   end
                   c_vi_id_rsv2_addr   : begin
                         pack_ctrl_off <= 1'b1;
                   end
                   c_vi_id_rsv3_addr   : begin
                         pack_ctrl_off <= 1'b1;
                   end
                   c_vi_id_rsv4_addr   : begin
                         pack_ctrl_off <= 1'b1;
                   end
                   c_vi_id_rsv5_addr   : begin
                         pack_ctrl_off <= 1'b1;
                   end
                   c_vi_id_rsv6_addr   : begin
                         pack_ctrl_off <= 1'b1;
                   end
                   c_vi_id_rsv7_addr   : begin
                         pack_ctrl_off <= 1'b1;
                   end
                   c_vi_iccl_addr : begin
                      if (vi_ccl_out) begin
                         pack_ctrl_off <= 1'b1;
                      end
                   end
                   c_vi_ircl_addr : begin
                      if (vi_ccl_out) begin
                         pack_ctrl_off <= 1'b1;
                      end
                   end
                   default: begin
                      pack_ctrl_off    <= 1'b1;
                   end
                 endcase
              end 
              else begin
                 if (viv_s1) begin
                    case (paddr[7:0])
                      c_vi_ccl_addr :  begin
                         pack_ctrl_off   <= 1'b1;
                         prdata_ctrl_off <= {29'b0,vi_ccl_out,
                                             vi_ccl_out,1'b0};
                      end      
                      c_isp_id_custom_id_addr       : begin
                         pack_ctrl_off   <= 1'b1;
                         prdata_ctrl_off <= c_isp_id_custom_id;
                      end
                      c_isp_id_product_id_addr      : begin
                         pack_ctrl_off   <= 1'b1;
                         prdata_ctrl_off <= c_isp_id_product_id;
                      end
                      c_isp_id_chip_id_addr         : begin
                         pack_ctrl_off   <= 1'b1;
                         prdata_ctrl_off <=  c_isp_id_chip_id;
                      end
                      c_isp_id_eco_id_addr          : begin
                         pack_ctrl_off   <= 1'b1;
                         prdata_ctrl_off <= c_isp_id_eco_id;
                      end
                      c_isp_id_chip_revision_addr   : begin
                         pack_ctrl_off   <= 1'b1;
                         prdata_ctrl_off <=  c_isp_id_chip_revision;
                      end
                      c_isp_id_patch_revision_addr  : begin
                         pack_ctrl_off   <= 1'b1;
                         prdata_ctrl_off <=  c_isp_id_patch_revision;
                      end
                      c_isp_id_chip_date_addr       : begin
                         pack_ctrl_off   <= 1'b1;
                         prdata_ctrl_off <= c_isp_id_chip_date;
                      end
                      c_isp_id_chip_time_addr       : begin
                         pack_ctrl_off   <= 1'b1;
                         prdata_ctrl_off <= c_isp_id_chip_time;
                      end
                      c_vi_id_rsv0_addr : begin
                         pack_ctrl_off   <= 1'b1;
                         prdata_ctrl_off <= c_marvin_id_rsv0;
                      end
                      c_vi_id_rsv1_addr : begin
                         pack_ctrl_off   <= 1'b1;
                         prdata_ctrl_off <= c_marvin_id_rsv1;
                      end
                      c_vi_id_rsv2_addr : begin
                         pack_ctrl_off   <= 1'b1;
                         prdata_ctrl_off <= c_marvin_id_rsv2;
                      end
                      c_vi_id_rsv3_addr : begin
                         pack_ctrl_off   <= 1'b1;
                         prdata_ctrl_off <= c_marvin_id_rsv3;
                      end
                      c_vi_id_rsv4_addr : begin
                         pack_ctrl_off   <= 1'b1;
                         prdata_ctrl_off <= c_marvin_id_rsv4;
                      end
                      c_vi_id_rsv5_addr : begin
                         pack_ctrl_off   <= 1'b1;
                         prdata_ctrl_off <= c_marvin_id_rsv5;
                      end
                      c_vi_id_rsv6_addr : begin
                         pack_ctrl_off   <= 1'b1;
                         prdata_ctrl_off <= c_marvin_id_rsv6;
                      end
                      c_vi_id_rsv7_addr : begin
                         pack_ctrl_off   <= 1'b1;
                         prdata_ctrl_off <= c_marvin_id_rsv7;
                      end
                      c_vi_iccl_addr : begin
                         if (vi_ccl_out) begin
                            pack_ctrl_off   <= 1'b1;
                            prdata_ctrl_off <= {32'hDEADDEAD};
                         end
                      end
                      c_vi_ircl_addr : begin
                         if (vi_ccl_out) begin
                            pack_ctrl_off   <= 1'b1;
                            prdata_ctrl_off <= {32'hDEADDEAD};
                         end
                      end
                      default: begin
                         pack_ctrl_off    <= 1'b1;
                         if (vi_ccl_out) begin
                            prdata_ctrl_off <= {32'hDEADDEAD};
                         end else begin
                            prdata_ctrl_off <= 32'b0;
                         end
                      end
                    endcase
                 end 
              end
            end
            else if ((c_isp_start_addr <= paddr[12:8]) && (paddr[12:8] < c_isp_end_addr)) begin
               if (pval) begin
                  if (viv_s2) begin
                     pack_ctrl_off   <= 1'b1;
                     prdata_ctrl_off <= {32'hDEADDEAD};
                  end
               end
            end
            else if (paddr[12:8] == c_mrsz_addr) begin
               if (pval) begin
                  if (vi_ccl_out || !vi_iccl[3]) begin
                     pack_ctrl_off   <= 1'b1;
                     prdata_ctrl_off <= {32'hDEADDEAD};
                  end
               end
            end 
            else if (paddr[12:7] == c_srsz_addr) begin
               if (pval) begin
                  if (vi_ccl_out || !vi_iccl[4]) begin
                     pack_ctrl_off   <= 1'b1;
                     prdata_ctrl_off <= {32'hDEADDEAD};
                  end
               end
            end
            else begin
               if (pval) begin
                  if (vi_ccl_out) begin
                     prdata_ctrl_off <= {32'hDEADDEAD};
                  end else begin
                     prdata_ctrl_off <= 32'b0;
                  end
                  pack_ctrl_off   <= 1'b1;
               end
            end
         end
      end
   end
endmodule
