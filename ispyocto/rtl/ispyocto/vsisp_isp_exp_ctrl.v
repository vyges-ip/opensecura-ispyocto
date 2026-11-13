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

module vsisp_isp_exp_ctrl
  (
   val_buf_i,
   current_x_block_i,
   current_y_block_i,
   x_counter_i, 
   y_counter_i,
   exp_h_size_i,
   exp_v_size_i,
   sb_accu_val_o,
   sel_sb_accu_o,
   sel_rst_sb_accu_o,
   rst_sb_accu_o,
   sel_sb_accu_mux_o,
   sel_divider_mux_o,
   sel_divisor_mux_o,
   sb_mean_accu_val_o,
   sel_sb_mean_accu_o,
   sel_rst_sb_mean_accu_o,
   rst_sb_mean_accu_o,
   sel_sb_mean_accu_mux_o,
   denorm_start_o,
   divider_start_o,
   exp_mean_addr_o,
   exp_mean_val_o
   );
input         val_buf_i;
input  [2:0]  current_x_block_i;   
input  [2:0]  current_y_block_i;   
input  [10:0]  x_counter_i;         
input  [10:0]  y_counter_i;         
input  [10:0]  exp_h_size_i;        
input  [10:0]  exp_v_size_i;        
output        sb_accu_val_o;
output [2:0]  sel_sb_accu_o;       
output [2:0]  sel_rst_sb_accu_o;   
output        rst_sb_accu_o;       
output [2:0]  sel_sb_accu_mux_o;   
output        sel_divider_mux_o;   
output        sel_divisor_mux_o;   
output        sb_mean_accu_val_o;
output [2:0]  sel_sb_mean_accu_o;      
output [2:0]  sel_rst_sb_mean_accu_o;  
output        rst_sb_mean_accu_o;      
output [2:0]  sel_sb_mean_accu_mux_o;  
output        denorm_start_o;
output        divider_start_o;
output [5:0]  exp_mean_addr_o;
output        exp_mean_val_o;
reg    [2:0]  sel_rst_sb_accu_o;       
reg    [2:0]  sel_rst_sb_mean_accu_o;  
reg    [2:0]  sel_sb_mean_accu_mux_o;
wire          viv_s0;
wire          viv_s1;
wire          viv_s2;
wire          viv_s3;
wire          viv_s4;
  assign sb_accu_val_o = (val_buf_i && ((current_x_block_i >= 3'd0) &&
                                        (current_x_block_i <= 3'd4) &&
                                        (current_y_block_i >= 3'd0) &&
                                        (current_y_block_i <= 3'd4)));
  assign sb_mean_accu_val_o = ((
    ((viv_s0          == 1'b1) &&
     (current_y_block_i  == 3'd0) &&
     (current_x_block_i  <  3'd3) &&
     (x_counter_i == (exp_h_size_i-11'd1) ) &&
     (y_counter_i   != (exp_v_size_i-11'd1)) ) ||
    ((viv_s0          == 1'b1) &&
     (current_y_block_i  != 3'd0) &&
     (current_y_block_i  <  3'd5) &&
     (x_counter_i == (exp_h_size_i-11'd1) ) &&
     (current_x_block_i  <  3'd3)   )  ||
    ((y_counter_i   == (exp_v_size_i-11'd1)) &&
     (current_y_block_i  == 3'd5) &&
     (x_counter_i == (exp_h_size_i-11'd1) ) &&
     (current_x_block_i  <  3'd3) )    ||
    ((viv_s0          == 1'b0) &&
     (current_x_block_i  >  3'd2) &&
     (current_x_block_i  <  3'd5) &&
     (current_y_block_i  <  3'd5) &&
     (x_counter_i == (exp_h_size_i-11'd1) ))   ) && val_buf_i);
   assign rst_sb_mean_accu_o = exp_mean_val_o;
   assign viv_s0          = y_counter_i[0];
   assign divider_start_o    = ((viv_s1 || viv_s2) &&
                                val_buf_i);
   assign rst_sb_accu_o      = viv_s1;
   assign sel_divisor_mux_o  = viv_s1;
   assign sel_divider_mux_o  = viv_s2;
  assign viv_s1 = (             
    ((viv_s0         == 1'b1) &&                                           
     (current_x_block_i == 3'd0) &&                                           
     (current_y_block_i == 3'd0) &&                                           
     (y_counter_i != (exp_v_size_i-11'd1) ) &&                            
     (x_counter_i == (exp_h_size_i-11'd1) )) ||                          
    ((viv_s0         == 1'b1) &&                                           
     (current_x_block_i == 3'd0) &&                                           
     (current_y_block_i != 3'd0) &&                                           
     (x_counter_i == (exp_h_size_i-11'd1) )) ||                          
    ((viv_s0         == 1'b0) &&                                           
     (current_x_block_i != 3'd0) && 
     (current_x_block_i  < 3'd5) &&                                          
     (current_y_block_i  < 3'd5) &&                                           
     (x_counter_i == (exp_h_size_i-11'd1) )) );                          
  assign viv_s2 = (           
    ((viv_s0         == 1'b0) &&
     (current_y_block_i != 3'd0) &&                                       
     (current_y_block_i  < 3'd6) &&                                       
     (y_counter_i == (exp_v_size_i-11'd2)) &&    
     (x_counter_i == (exp_h_size_i-11'd1) ) &&                       
     (current_x_block_i == 3'd0) ) ||                                     
    ((viv_s0         == 1'b1) &&                                       
     (current_x_block_i != 3'd0) &&                                       
     (current_x_block_i  < 3'd5) &&                                       
     (current_y_block_i != 3'd0) &&                                       
     (current_y_block_i  < 3'd6) &&                                       
     (y_counter_i == (exp_v_size_i-11'd1)) &&
     (x_counter_i == (exp_h_size_i-11'd1) )));                                                                    
  assign denorm_start_o = ((viv_s3 || viv_s4) &&
                           val_buf_i);
  assign viv_s3 = ( 
    ((viv_s0         == 1'b1) &&
     (current_x_block_i <  3'd2) &&
     (current_y_block_i == 3'd0) &&
     (x_counter_i == (exp_h_size_i-11'd1)) &&
     (y_counter_i != (exp_v_size_i-11'd1)) ) ||
    ((viv_s0         == 1'b1) &&
     (current_x_block_i <  3'd2) &&
     (x_counter_i == (exp_h_size_i-11'd1) ) &&
     (current_y_block_i != 3'd0) )  ||
    ((viv_s0         == 1'b0) &&
     (current_x_block_i >  3'd1) &&
     (current_x_block_i <  3'd5) &&
     (x_counter_i == (exp_h_size_i-11'd1) ) &&
     (current_y_block_i <  3'd5) ));                                
  assign viv_s4 = (
    ((viv_s0         == 1'b0) &&
     (current_y_block_i != 3'd0) &&
     (current_x_block_i <  3'd2) &&
     (y_counter_i == (exp_v_size_i-11'd2)) &&
     (x_counter_i == (exp_h_size_i-11'd1))) ||
    ((viv_s0         == 1'b1) &&
     (current_y_block_i != 3'd0) &&
     (current_x_block_i >  3'd1) &&
     (current_x_block_i <  3'd5) &&
     (y_counter_i == (exp_v_size_i-11'd1)) &&
     (x_counter_i == (exp_h_size_i-11'd1)) ));
  assign exp_mean_val_o = ((
    ((viv_s0          == 1'b0) &&
     (current_x_block_i  <  3'd3) &&
     (current_y_block_i  != 3'd0) &&
     (current_y_block_i  <  3'd6) &&
     (x_counter_i == (exp_h_size_i-11'd1)) &&
     (y_counter_i == (exp_v_size_i-11'd2)) ) ||
    ((viv_s0          == 1'b1) &&
     (current_x_block_i  >  3'd2) &&
     (current_x_block_i  <  3'd5) &&
     (current_y_block_i  != 3'd0) &&
     (current_y_block_i  <  3'd6) &&
     (x_counter_i == (exp_h_size_i-11'd1)) &&
     (y_counter_i == (exp_v_size_i-11'd1)) ) ) && val_buf_i);
  assign exp_mean_addr_o = { (current_x_block_i < 3'd3) ?
                             (current_x_block_i + 3'd2) :
                             (current_x_block_i - 3'd3) ,(current_y_block_i-3'd1) };
  assign sel_sb_accu_mux_o = (current_x_block_i == 3'd0) ? 3'd4 : 
    (current_x_block_i - 3'd1) ;
  always @( current_x_block_i ) begin
    case (current_x_block_i)
      3'd0:    sel_sb_mean_accu_mux_o = 3'd4;
      3'd1:    sel_sb_mean_accu_mux_o = 3'd0;
      3'd2:    sel_sb_mean_accu_mux_o = 3'd1;
      3'd3:    sel_sb_mean_accu_mux_o = 3'd2;
      3'd4:    sel_sb_mean_accu_mux_o = 3'd3;
      default: sel_sb_mean_accu_mux_o = 3'd7;
    endcase
  end
  assign sel_sb_accu_o = current_x_block_i;
  assign sel_sb_mean_accu_o     = (current_x_block_i > 3'd2) ?
    (current_x_block_i - 3'd3) : 
    (current_x_block_i + 3'd2);
  always @( current_x_block_i ) begin
    case (current_x_block_i)
      3'd0:    sel_rst_sb_mean_accu_o = 3'd2;
      3'd1:    sel_rst_sb_mean_accu_o = 3'd3;
      3'd2:    sel_rst_sb_mean_accu_o = 3'd4;
      3'd3:    sel_rst_sb_mean_accu_o = 3'd0;
      3'd4:    sel_rst_sb_mean_accu_o = 3'd1;
      default: sel_rst_sb_mean_accu_o = 3'd7;
    endcase
   end
  always @( current_x_block_i ) begin
    case (current_x_block_i)
      3'd0:    sel_rst_sb_accu_o = 3'd4;
      3'd1:    sel_rst_sb_accu_o = 3'd0;
      3'd2:    sel_rst_sb_accu_o = 3'd1;
      3'd3:    sel_rst_sb_accu_o = 3'd2;
      3'd4:    sel_rst_sb_accu_o = 3'd3;
      default: sel_rst_sb_accu_o = 3'd7;
    endcase
  end
endmodule
