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

module vsisp_fifo (clk,
             reset_n,
             soft_rst,
             wr_val,
             wr_ack,
             wr_h_end,
             wr_v_end,
             wr_data,
             rd_val,
             rd_ack,
             rd_h_end,
             rd_v_end,
             rd_data,
             ram_cs_n,
             ram_we_n,
             ram_addr,
             ram_wdata,
             ram_rdata);
  parameter c_dw     = 32;          
  parameter c_aw     = 13;          
  parameter c_ram_dw = 2*(c_dw+2);  
  input clk;            
  input reset_n;        
  input soft_rst;       
  input             wr_val;  
  output            wr_ack;  
  input             wr_h_end;
  input             wr_v_end;
  input  [c_dw-1:0] wr_data; 
  output            rd_val;  
  input             rd_ack;  
  output            rd_h_end;
  output            rd_v_end;
  output [c_dw-1:0] rd_data; 
  output                ram_cs_n;  
  output                ram_we_n;  
  output [c_aw-1:0]     ram_addr;  
  output [c_ram_dw-1:0] ram_wdata; 
  input  [c_ram_dw-1:0] ram_rdata; 
  reg                 viv_s0;
  reg                 viv_s1;
  reg [c_ram_dw-1:0]  viv_s2;
  wire                viv_s3;
  wire                viv_s4;
  wire                viv_s5;
  wire       viv_s6;
  wire       viv_s7;       
  wire       viv_s8;        
  wire       wr_ack;           
  wire       viv_s9;        
  wire       viv_s10; 
  wire       viv_s11;        
  wire       viv_s12;       
  wire [1:0] viv_s13;
  wire [1:0] viv_s14;
  wire [2:0] viv_s15;
  wire [2:0] viv_s16;
  reg                 ram_cs_n;
  reg                 ram_we_n;
  reg  [c_ram_dw-1:0] ram_wdata;
  reg  [c_aw:0]       viv_s17;
  wire [c_aw:0]       viv_s18;
  reg  [c_aw-1:0]     ram_addr;
  reg  [c_aw:0]       viv_s19;
  wire [c_aw:0]       viv_s20;
  reg                 viv_s21; 
  reg                 viv_s22; 
  reg  [c_ram_dw-1:0] viv_s23;
  reg                 viv_s24;
  reg                 viv_s25;
  wire [c_ram_dw-1:0] viv_s26;
  wire                viv_s27;
  wire                viv_s28;
  reg  [c_ram_dw-1:0] viv_s29;
  reg                 viv_s30;
  reg                 viv_s31;
  wire [c_ram_dw-1:0] viv_s32;
  wire                viv_s33;
  reg                 viv_s34;
  reg  [c_ram_dw-1:0] viv_s35;
  wire                viv_s36;
  wire                viv_s37;  
  wire                viv_s38;  
  wire [c_ram_dw-1:0] viv_s39; 
  reg            viv_s40;
  reg            viv_s41;
  reg            viv_s42;
  reg [c_dw-1:0] viv_s43;
  wire           viv_s44;
  wire           viv_s45;
  reg            viv_s46;
  reg            rd_h_end;
  reg            rd_v_end;
  reg [c_dw-1:0] rd_data;
  wire           viv_s47;
  always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin    
      viv_s0             <= 1'b0;
      viv_s2             <= {c_ram_dw{1'd0}};
      viv_s1       <= 1'b0;
    end 
    else begin
      if (soft_rst) begin
        viv_s0           <= 1'b0;
        viv_s2           <= {c_ram_dw{1'd0}};
        viv_s1     <= 1'b0;
      end else begin 
        if (wr_val & wr_ack) begin
          if (wr_h_end) begin
            viv_s0       <= 1'b0;
          end
          else begin
            viv_s0       <= !viv_s0;
          end
        end
        if (viv_s3) begin
          if (viv_s0 | wr_h_end) begin
            viv_s1 <= wr_val;
          end
          else begin
            viv_s1 <= 1'b0;
          end
          if (viv_s0) begin
            viv_s2[c_ram_dw-1:c_dw+2] <= {wr_h_end,
                                               wr_v_end,
                                               wr_data};
          end
          else begin
            viv_s2[c_dw+1: 0]         <= {wr_h_end,
                                               wr_v_end,
                                               wr_data};
          end
        end
      end 
    end 
  end 
  assign viv_s3 = viv_s4 | (~viv_s1);
  assign wr_ack                = viv_s3;
  assign viv_s5            = viv_s1;
  assign viv_s6 = viv_s5 & viv_s4;
  assign viv_s7 = (!viv_s12 &&                  
                      (viv_s16 < 3'h3)) ? 1'b1 : 
                                                1'b0;
  assign viv_s8  = !viv_s6 & viv_s7;
  assign viv_s13    = {1'b0, viv_s21} + {1'b0, viv_s22};
  assign viv_s14    = {1'b0, !viv_s25} + {1'b0, !viv_s31} + {1'h0, viv_s34};
  assign viv_s15    = {1'h0, viv_s13} + {1'h0, viv_s14};
  assign viv_s16 = (viv_s15 == 3'h0) ? 3'h0 : viv_s15 - {2'h0, viv_s38};
  assign viv_s9        = (viv_s18[c_aw-1:0] == viv_s19[c_aw-1:0]) ? 1'b1 : 1'b0;
  assign viv_s10 = (viv_s18[c_aw]     == viv_s19[c_aw])     ? 1'b1 : 1'b0;
  assign viv_s11        = (viv_s9 & !viv_s10) ?  1'b1 : 1'b0;
  assign viv_s12       = (viv_s9 &  viv_s10) ?  1'b1 : 1'b0;
  assign viv_s4       = !viv_s11;
  assign viv_s18  = viv_s17 + 1;
  assign viv_s20  = viv_s19 + 1;
  always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
      ram_cs_n         <= 1'b1;
      ram_we_n         <= 1'b1;
      ram_wdata        <= {c_ram_dw{1'b0}};
      ram_addr         <= {c_aw{1'b0}};
      viv_s17       <= {(c_aw+1){1'b1}};
      viv_s19       <= {(c_aw+1){1'b0}};
    end
    else begin
      if (soft_rst) begin
        ram_cs_n       <= 1'b1;
        ram_we_n       <= 1'b1;
        ram_wdata      <= {c_ram_dw{1'b0}};
        ram_addr       <= {c_aw{1'b0}};
        viv_s17     <= {(c_aw+1){1'b1}};
        viv_s19     <= {(c_aw+1){1'b0}};
      end
      else begin
        if (viv_s6) begin
          ram_cs_n     <= 1'b0;
          ram_we_n     <= 1'b0;
          ram_wdata    <= viv_s2;
          viv_s17   <= viv_s18;
          ram_addr     <= viv_s18[c_aw-1:0];
        end
        else begin
          ram_we_n     <= 1'b1;
          ram_addr     <= viv_s19[c_aw-1:0];
          if (viv_s7) begin
            ram_cs_n   <= 1'b0;
            viv_s19 <= viv_s20;
          end
          else begin
            ram_cs_n   <= 1'b1;
          end
        end
      end
    end
  end
  always @( posedge clk or negedge reset_n ) begin
    if ( !reset_n ) begin
      viv_s21              <= 1'b0;
      viv_s22              <= 1'b0;
    end
    else begin
      if ( soft_rst ) begin
         viv_s21           <= 1'b0;
         viv_s22           <= 1'b0;
      end
      else begin
         viv_s21           <= viv_s8;
         viv_s22           <= viv_s21;
      end
    end
  end
  always @( posedge clk or negedge reset_n ) begin
    if ( !reset_n ) begin
      viv_s23      <= 0;
      viv_s24       <= 0;
      viv_s25       <= 0;
    end
    else begin
      if ( soft_rst) begin
        viv_s24     <= 1'b0;
        viv_s25     <= 1'b1;
      end
      else begin
        viv_s25     <= viv_s28 | !viv_s27;
        if (viv_s25) begin
          viv_s24   <= viv_s22;
          viv_s23  <= ram_rdata;
        end
      end
    end 
  end 
  assign viv_s26  = !viv_s25 ? viv_s23 :
                    ram_rdata;
  assign viv_s27   = !viv_s25 ? viv_s24  : viv_s22;
  always @( posedge clk or negedge reset_n ) begin
    if ( !reset_n ) begin
      viv_s29       <= 0;
      viv_s30        <= 1'b0;
      viv_s31        <= 1'b0;
    end
    else begin
      if ( soft_rst ) begin
        viv_s30      <= 1'b0;
        viv_s31      <= 1'b1;
      end
      else begin
        viv_s31      <= viv_s36 | !viv_s33;
        if ( viv_s31 ) begin
           viv_s30   <= viv_s27;
           viv_s29  <= viv_s26;
        end
      end
    end 
  end 
  assign viv_s32  = !viv_s31 ? viv_s29 : viv_s26;
  assign viv_s33   = !viv_s31 ? viv_s30  : viv_s27;
  assign viv_s28   = viv_s31;
  always @( posedge clk or negedge reset_n ) begin
    if ( reset_n == 1'b0 ) begin
      viv_s34       <= 1'b0;
      viv_s35      <= 0;
    end
    else begin
      if( soft_rst  ) begin
         viv_s34    <= 1'b0;
         viv_s35   <= 0;
      end else begin
        if ( viv_s36 ) begin
          viv_s34   <= viv_s33;
          viv_s35  <= viv_s32;
        end
      end
    end
  end 
  assign viv_s36 = viv_s38 | !viv_s34;
  assign viv_s39      = viv_s35;
  assign viv_s37       = viv_s34;
  assign viv_s38 = ~viv_s40 & viv_s45;
  always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin    
      viv_s40      <= 1'b0;
      viv_s41           <= 1'b0;
      viv_s42           <= 1'b0;
      viv_s43            <= {c_dw{1'd0}};
    end 
    else begin
      if (soft_rst) begin
        viv_s40    <= 1'b0;
        viv_s41         <= 1'b0;
        viv_s42         <= 1'b0;
        viv_s43          <= {c_dw{1'd0}};
      end
      else begin 
        if (viv_s45) begin
          if (~viv_s40) begin
            viv_s40  <= viv_s37 &
                               ~viv_s39[c_dw+1]; 
            if (viv_s37)begin
              viv_s41     <= viv_s39[c_ram_dw-1];
              viv_s42     <= viv_s39[c_ram_dw-2];
              viv_s43      <= viv_s39[c_ram_dw-3:c_dw+2];
            end
          end
          else begin
            viv_s40  <= 1'b0; 
          end
        end
      end 
    end 
  end 
  assign viv_s44            = viv_s40;
  always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin    
      viv_s46      <= 1'b0;
      rd_h_end           <= 1'b0;
      rd_v_end           <= 1'b0;
      rd_data            <= {c_dw{1'd0}};
    end 
    else begin
      if (soft_rst) begin
        viv_s46    <= 1'b0;
        rd_h_end         <= 1'b0;
        rd_v_end         <= 1'b0;
        rd_data          <= {c_dw{1'd0}};
      end
      else begin 
        if (viv_s47) begin
          viv_s46  <= viv_s37 | viv_s44;
          if (viv_s44) begin
            rd_h_end     <= viv_s41;
            rd_v_end     <= viv_s42;
            rd_data      <= viv_s43;
          end
          else if (viv_s37)begin
            rd_h_end     <= viv_s39[c_dw+1];
            rd_v_end     <= viv_s39[c_dw];
            rd_data      <= viv_s39[c_dw-1:0];
          end
        end
      end 
    end 
  end 
  assign viv_s47 = rd_ack | ~viv_s46;
  assign viv_s45           = viv_s47;
  assign rd_val            = viv_s46;
endmodule
