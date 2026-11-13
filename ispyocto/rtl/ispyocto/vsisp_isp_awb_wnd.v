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

module vsisp_isp_awb_wnd (
        clk,
        reset_n,
        soft_rst,
        in_val,
        in_ack,
        in_h_end,
        in_v_end,
        wnd_val,
        meas_end,
        regs_awb_frames,
        regs_awb_enable,
        regs_awb_h_offs,
        regs_awb_v_offs,
        regs_awb_h_size,
        regs_awb_v_size);
input           clk;             
input           reset_n;         
input           soft_rst;        
input           in_val;          
input           in_ack;          
input           in_h_end;        
input           in_v_end;        
output          wnd_val;         
output          meas_end;        
input   [2:0]   regs_awb_frames; 
input           regs_awb_enable; 
input   [12:0]  regs_awb_h_offs; 
input   [12:0]  regs_awb_v_offs; 
input   [13:0]  regs_awb_h_size; 
input   [13:0]  regs_awb_v_size; 
reg     [13:0]  viv_s0;           
reg     [13:0]  viv_s1;           
reg             viv_s2;        
reg             viv_s3;        
wire            viv_s4;     
reg             meas_end;
reg     [2:0]   viv_s5;
wire         viv_s6;
wire         viv_s7;
wire         viv_s8;   
assign viv_s6   = (soft_rst || ~regs_awb_enable);
assign viv_s7     = (in_val && in_ack);
assign viv_s8 = ((viv_s0 == 14'd1) && (regs_awb_h_offs == 13'd0));
assign wnd_val     = viv_s2 && viv_s3 && in_val && in_ack;
assign viv_s4 = in_val && in_ack && in_h_end && in_v_end;
always @(posedge clk or negedge reset_n) begin
  if (reset_n == 1'b0) begin
    viv_s0     <= 14'd1;
    viv_s1     <= 14'd1;
    viv_s2  <=  1'b0;
    viv_s3  <=  1'b0;
    viv_s5 <=  3'd0;
    meas_end  <=  1'b0;
  end else begin
    if (viv_s6) begin
      viv_s0     <= 14'd1;
      viv_s1     <= 14'd1;
      viv_s2  <=  1'b0;
      viv_s3  <=  1'b0;
      viv_s5 <=  3'd0;
      meas_end  <=  1'b0;
    end else begin
      if (viv_s4) begin
        if (viv_s5 == regs_awb_frames) begin
          meas_end <= 1'b1;
          viv_s5 <= 3'd0;
        end else begin
          viv_s5 <= viv_s5 + 3'd1;
          meas_end <= 1'b0;
        end
      end else begin
        meas_end <= 1'b0;
      end
      if (viv_s7) begin         
        if (in_h_end) begin
          viv_s0    <= 14'd1;
          if (regs_awb_h_offs == 13'd0) begin
            viv_s2 <= 1'b1;
          end else begin
            viv_s2 <= 1'b0;
          end
          if (in_v_end) begin
            viv_s1    <= 14'd1;
            if (regs_awb_v_offs == 13'd0) begin
              viv_s3 <= 1'b1;
            end else begin
              viv_s3 <= 1'b0;
            end
          end else begin
            if (viv_s3 && (viv_s1 == regs_awb_v_size)) begin
              viv_s1 <= 14'h3FFF;
              viv_s3 <= 1'b0;
            end else begin
              if (!viv_s3 && (viv_s1 == regs_awb_v_offs)) begin 
                viv_s1    <= 14'd1;
                viv_s3 <= 1'b1;
              end else begin
                if (viv_s1 != 14'h3FFF) begin
                  viv_s1 <= viv_s1 + 14'd1;
                end
              end
            end
          end
        end else begin
          if (viv_s2 && (viv_s0 == regs_awb_h_size)) begin
            viv_s0 <= 14'h3FFF;
            viv_s2 <= 1'b0;
          end else begin
            if (!viv_s2 && (viv_s0 == {1'b0,regs_awb_h_offs})) begin 
              viv_s0    <= 14'd1;
              viv_s2 <= 1'b1;
            end else begin
              if (viv_s0 != 14'h3FFF) begin
                viv_s0 <= viv_s0 + 14'd1;
              end
            end
          end
        end
      end else begin
        if (viv_s8) begin           
          viv_s2 <= 1'b1;
          viv_s0    <= 14'd1;
        end
        if ((viv_s1 == 14'd1) && (regs_awb_v_offs == 13'd0)) begin
          viv_s3 <= 1'b1;
          viv_s1    <= 14'd1;
        end
      end
    end
  end
end
endmodule
