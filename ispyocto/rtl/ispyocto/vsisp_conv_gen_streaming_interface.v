//****************************************************************************
// 
// Copyright 2023 Vivante Corp.
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

module vsisp_conv_gen_streaming_interface
(clk,
 reset_n,
 soft_rst,
 val,
 ack,
 h_end,
 v_end,
 frame_start,
 frame_end,
 line_start,
 line_end
 );
  input   clk;
  input   reset_n;
  input   soft_rst;
  input   val;
  input   ack;
  input   h_end;
  input   v_end;
  output  frame_start;
  output  frame_end;
  output  line_start;
  output  line_end;
reg viv_s0;
always @(posedge clk or negedge reset_n) begin
  if (reset_n == 1'b0) begin
     viv_s0       <= 1;
  end else begin
        if(soft_rst) begin
          viv_s0       <= 1;         
        end else begin
              if (val && ack) begin
                 if(viv_s0) begin
                    viv_s0  <= 0;
                 end
                 if(h_end && v_end) begin
                    viv_s0  <= 1;  
                 end
              end
            end
      end
end
assign frame_start = viv_s0 & val & ack;
reg viv_s1;
always @(posedge clk or negedge reset_n) begin
  if(!reset_n) begin
    viv_s1 <= 1'b0;
  end else begin
    if(soft_rst) begin
      viv_s1 <= 1'b0;
    end else begin
      if(v_end && h_end && val && ack) begin
        viv_s1<= 1'b0;
      end else if(val && ack && v_end) begin
        viv_s1<= 1'b1;
      end
    end
  end
end
assign frame_end = val && ack && v_end  || viv_s1;
reg viv_s2;
always @(posedge clk or negedge reset_n) begin
  if (reset_n == 1'b0) begin
     viv_s2       <= 1;
  end else begin
        if(soft_rst) begin
          viv_s2       <= 1;         
        end else begin
              if (val && ack) begin
                 if(viv_s2) begin
                    viv_s2  <= 0;
                 end
                 if(h_end) begin
                    viv_s2  <= 1;  
                 end
              end
            end
      end
end
assign line_start = viv_s2 & val & ack;
assign line_end = h_end & val & ack;
endmodule
