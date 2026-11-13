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

module vsisp_isp_bls_regs ( 
        clk_cfg, 
        reset_cfg_n, 
        cfg_val, 
        cfg_addr, 
        cfg_rd, 
        cfg_wdata, 
        cfg_rdata,
        bls_en,
        bls_a_fixed,
        bls_b_fixed,
        bls_c_fixed,
        bls_d_fixed
);
`include "vsisp_isp.vh"
input                 clk_cfg;          
input                 reset_cfg_n;      
input                 cfg_val;          
input [c_cfg_bls-1:2] cfg_addr;         
input                 cfg_rd;           
input  [31:0]         cfg_wdata;        
output [31:0]         cfg_rdata;        
output                bls_en;           
output [c_dw_si:0]    bls_a_fixed;      
output [c_dw_si:0]    bls_b_fixed;      
output [c_dw_si:0]    bls_c_fixed;      
output [c_dw_si:0]    bls_d_fixed;      
reg               bls_en;
reg  [c_dw_si:0]  bls_a_fixed;
reg  [c_dw_si:0]  bls_b_fixed;
reg  [c_dw_si:0]  bls_c_fixed;
reg  [c_dw_si:0]  bls_d_fixed;
reg [31:0]        cfg_rdata;
always @(*) begin
  case (cfg_addr)
    c_bls_ctrl[c_cfg_bls-1:2]:       cfg_rdata = {31'h0,
                                                bls_en}; 
    c_bls_a_fixed[c_cfg_bls-1:2]:    cfg_rdata = {{31-c_dw_si{1'b0}}, bls_a_fixed};
    c_bls_b_fixed[c_cfg_bls-1:2]:    cfg_rdata = {{31-c_dw_si{1'b0}}, bls_b_fixed};
    c_bls_c_fixed[c_cfg_bls-1:2]:    cfg_rdata = {{31-c_dw_si{1'b0}}, bls_c_fixed};
    c_bls_d_fixed[c_cfg_bls-1:2]:    cfg_rdata = {{31-c_dw_si{1'b0}}, bls_d_fixed};
    default:                        cfg_rdata = 32'h0;
  endcase
end
  always @(posedge clk_cfg or negedge reset_cfg_n) begin
    if (~reset_cfg_n) begin
       bls_en        <= 1'b0;
       bls_a_fixed   <= {c_dw_si+1{1'b0}};
       bls_b_fixed   <= {c_dw_si+1{1'b0}};
       bls_c_fixed   <= {c_dw_si+1{1'b0}};
       bls_d_fixed   <= {c_dw_si+1{1'b0}};
    end 
    else begin
      if (cfg_val && ~cfg_rd) begin
        case (cfg_addr)
          c_bls_ctrl[c_cfg_bls-1:2]: begin
             bls_en       <= cfg_wdata[0];
          end
          c_bls_a_fixed[c_cfg_bls-1:2]  :  bls_a_fixed  <= cfg_wdata[c_dw_si:0];
          c_bls_b_fixed[c_cfg_bls-1:2]  :  bls_b_fixed  <= cfg_wdata[c_dw_si:0];
          c_bls_c_fixed[c_cfg_bls-1:2]  :  bls_c_fixed  <= cfg_wdata[c_dw_si:0];
          c_bls_d_fixed[c_cfg_bls-1:2]  :  bls_d_fixed  <= cfg_wdata[c_dw_si:0];
          default: begin end 
        endcase
      end 
    end
  end
endmodule
