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

function [7:0]  f_sqrt_8bit;       
      input  [11:0] in_data_12bit; 
      reg [1:0]   v_mux;       
      reg [7:0]   v_in_mux;    
      reg [3:0]   v_segment;   
      reg [1:0]   v_p2_dx;     
      reg [7:0]   v_y_i;       
      reg [4:0]   v_dy;        
      reg [2:0]   v_x_int;     
      reg [4:0]   v_delta_x;   
      reg [9:0]   v_prod_1;    
      reg [6:0]   v_delta_y4;  
      reg [9:0]   v_y_sum;     
      reg [7:0]   v_y_out;     
      reg [7:0]   v_out_sqrt;
      reg [8:0]   v_out_sqrt_mux;
      reg [8:0]   v_sqrt_round;
  begin
     v_mux = (in_data_12bit[11: 8] == 4'h0) ?  2'h0 :
             (in_data_12bit[11:10] == 2'h0) ?  2'h1 : 2'h2;
     case (v_mux)
       2'd0   : v_in_mux = in_data_12bit[7:0];
       2'd1   : v_in_mux = in_data_12bit[9:2];
       default: v_in_mux = in_data_12bit[11:4];
     endcase
     if (v_in_mux[7:4] == 4'd0) begin
        if      (v_in_mux[3:0] == 4'd0)  v_segment=0;   
        else if (v_in_mux[3:2] == 2'd0)  v_segment=1;   
        else if (v_in_mux[3  ] == 1'd0)  v_segment=2;   
        else                             v_segment=3;   
     end else if  (v_in_mux[7] == 1'd0) begin
        if      (v_in_mux[6:4] == 3'd1)  v_segment=4;   
        else if (v_in_mux[6:4] == 3'd2)  v_segment=5;   
        else if (v_in_mux[6:5] == 2'd1)  v_segment=6;   
        else if (v_in_mux[6:5] == 2'd2)  v_segment=7;   
        else                             v_segment=8;   
     end else begin
        case    (v_in_mux[6:5])
                                  2'd0 : v_segment=9;   
                                  2'd1 : v_segment=10;  
                                  2'd2 : v_segment=11;  
                               default : v_segment=12;  
        endcase
     end
     case(v_segment)
       4'd0   : v_y_i = 8'd0;    
       4'd1   : v_y_i = 8'd11;
       4'd2   : v_y_i = 8'd32;
       4'd3   : v_y_i = 8'd46;
       4'd4   : v_y_i = 8'd65;
       4'd5   : v_y_i = 8'd91;
       4'd6   : v_y_i = 8'd111;
       4'd7   : v_y_i = 8'd128;
       4'd8   : v_y_i = 8'd157;
       4'd9   : v_y_i = 8'd181;
       4'd10  : v_y_i = 8'd203;
       4'd11  : v_y_i = 8'd222;
       default: v_y_i = 8'd240; 
     endcase
     case(v_segment)
       4'd0   : v_dy = 5'd0;  
       4'd1   : v_dy = 5'd21; 
       4'd2   : v_dy = 5'd14; 
       4'd3   : v_dy = 5'd19;
       4'd4   : v_dy = 5'd26;
       4'd5   : v_dy = 5'd20;
       4'd6   : v_dy = 5'd17;
       4'd7   : v_dy = 5'd29;
       4'd8   : v_dy = 5'd24;
       4'd9   : v_dy = 5'd22;
       4'd10  : v_dy = 5'd19;
       4'd11  : v_dy = 5'd18;
       default: v_dy = 5'd16; 
     endcase
     case (v_segment)
       4'd2   : v_x_int = 3'd1;
       4'd3   : v_x_int = 3'd2;
       4'd4   : v_x_int = 3'd4;
       4'd6   : v_x_int = 3'd4;
       default: v_x_int = 3'd0;  
     endcase
     case(v_segment)
       4'd0   : v_p2_dx = 2'd0;  
       4'd1   : v_p2_dx = 2'd0;  
       4'd2   : v_p2_dx = 2'd0;  
       4'd3   : v_p2_dx = 2'd1;  
       4'd4   : v_p2_dx = 2'd2;  
       4'd5   : v_p2_dx = 2'd2;  
       4'd6   : v_p2_dx = 2'd2;  
       default: v_p2_dx = 2'd3;  
     endcase
     v_delta_x = {(v_in_mux[4:2] - v_x_int), v_in_mux[1:0]};
     v_prod_1 = v_delta_x * v_dy;
     v_delta_y4 = v_prod_1 >> v_p2_dx;
     v_y_sum = {2'b0, v_delta_y4[6:1]} + {1'b0, v_y_i, 1'b1};
     v_y_out = v_y_sum[8:1];
     v_out_sqrt = (v_y_sum[9]) ? 8'd255 : v_y_out;
     case (v_mux)
       2'd0   : v_out_sqrt_mux = {2'b0,v_out_sqrt[7:1]};
       2'd1   : v_out_sqrt_mux = {1'b0,v_out_sqrt}     ;
       default: v_out_sqrt_mux =      {v_out_sqrt, 1'b0};
     endcase
     v_sqrt_round  = v_out_sqrt_mux +1;
     f_sqrt_8bit   = v_sqrt_round[8:1];
  end
endfunction
