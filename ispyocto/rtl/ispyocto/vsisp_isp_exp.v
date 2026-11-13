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

module vsisp_isp_exp
  (
   clk,
   reset_n,
   soft_rst,
   clk_cfg,
   reset_cfg_n,
   regs_gen_cfg_upd,
   regs_cfg_upd,               
   cfg_val_i,
   cfg_addr_i,
   cfg_rd_i,
   cfg_wdata_i,
   cfg_rdata_o,
   y_i,
   h_end_i,
   v_end_i,
   val_i,
   ack_i,
   exp_alt_mode_o,               
   measure_complete
   );
`include "vsisp_isp.vh"
input         clk;              
input         reset_n;          
input         soft_rst;         
input         clk_cfg;          
input         reset_cfg_n;      
input         regs_gen_cfg_upd; 
input         regs_cfg_upd;     
input         cfg_val_i;        
input  [13:2] cfg_addr_i;       
input         cfg_rd_i;         
input  [31:0] cfg_wdata_i;      
output [31:0] cfg_rdata_o;      
input  [ 7:0] y_i;           
input         h_end_i;       
input         v_end_i;       
input         val_i;         
input         ack_i;         
output        exp_alt_mode_o;   
output        measure_complete; 
wire [12:0]   viv_s0;   
wire [12:0]   viv_s1;   
wire [10:0]   viv_s2;     
wire [10:0]   viv_s3;     
reg  [ 7:0]   viv_s4;          
reg           viv_s5;
reg  [ 2:0]   viv_s6; 
reg  [ 2:0]   viv_s7; 
reg  [12:0]   viv_s8;       
reg  [12:0]   viv_s9;
wire [12:0]   viv_s10; 
wire [12:0]   viv_s11;
reg  [10:0]   viv_s12;     
reg  [10:0]   viv_s13;
reg  [19:0]   viv_s14;  
reg  [19:0]   viv_s15;
reg  [19:0]   viv_s16;
reg  [19:0]   viv_s17;
reg  [19:0]   viv_s18;
wire [ 2:0]   viv_s19;      
wire [ 2:0]   viv_s20;  
wire          viv_s21;      
wire          viv_s22;
reg  [19:0]   viv_s23;      
wire [ 2:0]   viv_s24;
wire [21:0]   viv_s25;      
wire          viv_s26;  
wire [10:0]   viv_s27;      
wire          viv_s28;  
reg  [19:0]   viv_s29;    
reg  [19:0]   viv_s30;
reg  [19:0]   viv_s31;
reg  [19:0]   viv_s32;
reg  [19:0]   viv_s33;
wire [ 2:0]   viv_s34;     
wire [ 2:0]   viv_s35; 
wire          viv_s36;     
reg  [19:0]   viv_s37;     
wire [ 2:0]   viv_s38;
wire          viv_s39;
wire          viv_s40;
reg  [ 3:0]   viv_s41;
wire [22:0]   viv_s42;  
reg  [22:0]   viv_s43;       
reg  [ 9:0]   viv_s44;
wire          viv_s45;
wire          viv_s46;
reg  [10:0]   viv_s47;  
wire [ 7:0]   viv_s48;
wire [ 5:0]   viv_s49;
wire          viv_s50;
wire          viv_s51;
reg           viv_s52;   
wire          viv_s53;
reg           viv_s54;
reg           viv_s55;   
reg           viv_s56;  
   vsisp_isp_exp_regs u_isp_exp_regs
     (
      .clk              (clk),
      .reset_n          (reset_n),
      .clk_cfg          (clk_cfg),
      .reset_cfg_n      (reset_cfg_n),
      .cfg_val_i        (cfg_val_i),
      .cfg_addr_i       (cfg_addr_i),
      .cfg_rd_i         (cfg_rd_i),
      .cfg_wdata_i      (cfg_wdata_i),
      .cfg_rdata_o      (cfg_rdata_o),
      .exp_h_offset_o   (viv_s0),
      .exp_v_offset_o   (viv_s1),
      .exp_h_size_o     (viv_s2),
      .exp_v_size_o     (viv_s3),
      .exp_mean_data_i  (viv_s48),
      .exp_mean_addr_i  (viv_s49),
      .exp_mean_val_i   (viv_s50),
      .exp_alt_mode_o   (exp_alt_mode_o),
      .exp_ena_o        (viv_s51),
      .exp_ena_rst_i    (viv_s52),
      .autostop_o       (viv_s53)
      );
   vsisp_isp_exp_ctrl u_isp_exp_ctrl
     (
      .val_buf_i              ( viv_s5 ),
      .current_x_block_i      ( viv_s6 ),
      .current_y_block_i      ( viv_s7 ),
      .x_counter_i            ( viv_s8[10:0]),
      .y_counter_i            ( viv_s9[10:0]),
      .exp_h_size_i           ( viv_s2 ),
      .exp_v_size_i           ( viv_s3 ),
      .sb_accu_val_o          ( viv_s22 ),
      .sel_sb_accu_o          ( viv_s19 ),
      .sel_rst_sb_accu_o      ( viv_s20 ),
      .rst_sb_accu_o          ( viv_s21 ),
      .sel_sb_accu_mux_o      ( viv_s24 ),
      .sel_divider_mux_o      ( viv_s26 ),
      .sel_divisor_mux_o      ( viv_s28 ),
      .sb_mean_accu_val_o     ( viv_s39 ),
      .sel_sb_mean_accu_o     ( viv_s34 ),
      .sel_rst_sb_mean_accu_o ( viv_s35 ),
      .rst_sb_mean_accu_o     ( viv_s36 ),
      .sel_sb_mean_accu_mux_o ( viv_s38 ),
      .denorm_start_o         ( viv_s40 ),
      .divider_start_o        ( viv_s45 ),
      .exp_mean_addr_o        ( viv_s49 ),
      .exp_mean_val_o         ( viv_s50 )
      );
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         viv_s55 <= 1'b0;
         viv_s56  <= 1'b0;
      end
      else begin
         if (soft_rst) begin
            viv_s55 <= 1'b0;
            viv_s56  <= 1'b0;
         end else begin
            viv_s56 <= 1'b0;
            if (regs_gen_cfg_upd) begin 
               viv_s55 <= 1'b1;
            end
            if (val_i && ack_i && h_end_i && v_end_i) begin
               viv_s55 <= 1'b0;
               if (viv_s55) begin 
                  viv_s56 <= viv_s55;
               end
            end
         end
      end
   end
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         viv_s54     <= 1'b0;
         viv_s52 <= 1'b0;
      end
      else begin
         if (soft_rst) begin
            viv_s54     <= 1'b0;
            viv_s52 <= 1'b1;
         end else begin
            viv_s52 <= 1'b0;
            viv_s54     <= viv_s51;
            if (val_i && ack_i && h_end_i && v_end_i) begin
               if (viv_s53) begin
                  viv_s52 <= 1'b1;
               end
            end
         end
      end
   end
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         viv_s4   <= 8'd0;
         viv_s5 <= 1'b0;
      end
      else begin
         if (soft_rst) begin
            viv_s4   <= 8'd0;
            viv_s5 <= 1'b0;
         end else begin
            viv_s4   <= y_i;
            viv_s5 <= (val_i && ack_i && viv_s54); 
         end                                        
      end
   end 
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin    
         viv_s6 <= 3'd7;
         viv_s7 <= 3'd7;
         viv_s8       <= 13'd0;
         viv_s9       <= 13'd0;
      end
      else begin
         if (soft_rst) begin
            viv_s6 <= 3'd7;
            viv_s7 <= 3'd7;
            viv_s8       <= 13'd0;
            viv_s9       <= 13'd0;
         end else begin
            if (regs_cfg_upd | viv_s56) begin
               viv_s8 <= viv_s0;
               viv_s9 <= (viv_s1 == 13'd0) ? 
                            (viv_s1) :
                            (viv_s1 - 13'd1);
            end            
            if (val_i && ack_i) begin
               if (h_end_i && v_end_i) begin    
                  viv_s6 <= 3'd7;             
                  viv_s7 <= 3'd7;             
                  viv_s8       <= viv_s0;  
                  viv_s9 <= (viv_s1 == 13'd0) ?
                               (viv_s1 )   :
                               ((viv_s1 - 13'd1 ) ); 
               end 
               else begin
                  if ( h_end_i ) begin               
                     viv_s6 <= 3'd7;           
                     viv_s8       <= viv_s0;   
                     if( viv_s7 != 3'd6) begin 
                        if( viv_s9 == 13'd0 ) begin 
                           viv_s7 <= (viv_s7 + 3'd1); 
                           viv_s9 <= viv_s11;  
                        end
                        else begin
                           viv_s9 <= (viv_s9 - 13'd1); 
                        end
                     end
                  end 
                  else begin 
                     if ((viv_s7 == 3'd7) && (viv_s1==13'd0)) begin
                        viv_s7 <= (viv_s7 + 3'd1);
                        viv_s9 <= viv_s11;
                     end
                     if( viv_s6 != 3'd5) begin 
                        if( viv_s8 == 13'd0 ) begin 
                           viv_s6 <= (viv_s6 + 3'd1); 
                           viv_s8 <= viv_s10; 
                        end
                        else begin
                           viv_s8 <= (viv_s8 - 13'd1); 
                        end
                     end
                  end
               end
            end
         end
      end
   end
   assign viv_s10 = {2'd0, (viv_s2 - 11'd1)};      
   assign viv_s11 = {2'd0, (viv_s3 - 11'd1)};
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         viv_s12  <= 11'd0;
         viv_s13  <= 11'd0;
      end
      else begin
         if (regs_cfg_upd | viv_s56) begin
            viv_s12  <= viv_s2;
            viv_s13  <= viv_s3;
         end 
      end
   end
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin    
         viv_s14 <= 20'd0;
         viv_s15 <= 20'd0;
         viv_s16 <= 20'd0;
         viv_s17 <= 20'd0;
         viv_s18 <= 20'd0;
      end
      else begin
         if (soft_rst) begin
            viv_s14 <= 20'd0;
            viv_s15 <= 20'd0;
            viv_s16 <= 20'd0;
            viv_s17 <= 20'd0;
            viv_s18 <= 20'd0;
         end 
         else begin
            if (viv_s21) begin
               case ( viv_s20 )
                 3'd0: viv_s14 <= 20'd0;
                 3'd1: viv_s15 <= 20'd0;
                 3'd2: viv_s16 <= 20'd0;
                 3'd3: viv_s17 <= 20'd0;
                 3'd4: viv_s18 <= 20'd0;
                 default: begin end
               endcase      
            end
            if (viv_s22) begin
               case ( viv_s19 )
                 3'd0: viv_s14 <= (viv_s14 + {12'd0, viv_s4});
                 3'd1: viv_s15 <= (viv_s15 + {12'd0, viv_s4});
                 3'd2: viv_s16 <= (viv_s16 + {12'd0, viv_s4});
                 3'd3: viv_s17 <= (viv_s17 + {12'd0, viv_s4});
                 3'd4: viv_s18 <= (viv_s18 + {12'd0, viv_s4});
                 default: begin end
               endcase
            end      
         end
      end
   end
   always @( viv_s24 or viv_s14 or viv_s15 or viv_s16 or 
             viv_s17 or viv_s18 ) begin
      case ( viv_s24 )
        3'd0:    viv_s23 = viv_s14;
        3'd1:    viv_s23 = viv_s15;
        3'd2:    viv_s23 = viv_s16;
        3'd3:    viv_s23 = viv_s17;
        3'd4:    viv_s23 = viv_s18;
        default: viv_s23 = 20'd0;
      endcase
   end
  assign viv_s25 = viv_s26 ? {2'b0, viv_s37} : {viv_s23, 2'b0}; 
  assign viv_s27 = viv_s28 ? viv_s12 : viv_s13 ;  
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin    
         viv_s29 <= 20'd0;
         viv_s30 <= 20'd0;
         viv_s31 <= 20'd0;
         viv_s32 <= 20'd0;
         viv_s33 <= 20'd0;
      end
      else begin
         if ( soft_rst ) begin
            viv_s29 <= 20'd0;
            viv_s30 <= 20'd0;
            viv_s31 <= 20'd0;
            viv_s32 <= 20'd0;
            viv_s33 <= 20'd0;
         end 
         else begin
            if (viv_s36) begin
               case ( viv_s35 )
                 3'd0: viv_s29 <= 20'd0;  
                 3'd1: viv_s30 <= 20'd0;  
                 3'd2: viv_s31 <= 20'd0;  
                 3'd3: viv_s32 <= 20'd0;  
                 3'd4: viv_s33 <= 20'd0;  
                 default: begin end                                              
               endcase                                                           
            end
            else begin
               if (viv_s39) begin
                  case ( viv_s34 )
                    3'd0: viv_s29 <= (viv_s29 + {10'd0, viv_s44});
                    3'd1: viv_s30 <= (viv_s30 + {10'd0, viv_s44});
                    3'd2: viv_s31 <= (viv_s31 + {10'd0, viv_s44});
                    3'd3: viv_s32 <= (viv_s32 + {10'd0, viv_s44});
                    3'd4: viv_s33 <= (viv_s33 + {10'd0, viv_s44});
                    default: begin end
                  endcase
               end
            end
         end
      end
   end
   always @( viv_s38 or viv_s29 or 
             viv_s30 or viv_s31 or 
             viv_s32 or viv_s33 ) begin
      case ( viv_s38 )
        3'd0:    viv_s37 = viv_s29;
        3'd1:    viv_s37 = viv_s30;
        3'd2:    viv_s37 = viv_s31;
        3'd3:    viv_s37 = viv_s32;
        3'd4:    viv_s37 = viv_s33;
        default: viv_s37 = 20'd0;
      endcase
   end
   always @(posedge clk or negedge reset_n) begin
      if(!reset_n) begin
         viv_s41       <= 4'd0;
         viv_s43      <= 23'd0;
         viv_s47       <= 11'd0;  
      end
      else if (viv_s45) begin     
         viv_s41       <= 4'd0;
         viv_s43      <= {1'b0, viv_s25};
         viv_s47       <= viv_s27; 
      end 
      else if (!viv_s46) begin          
         if(viv_s42[22]) begin      
            viv_s43    <= {viv_s43[21:0],1'b0};      
         end 
         else begin                      
            viv_s43    <= {viv_s42[21:0],1'b1};  
         end 
         viv_s41  <= viv_s41 + 4'd1;     
      end 
   end 
   assign viv_s42 = ( viv_s43 - {2'b0, viv_s47, 10'd0} );  
   assign viv_s46      = (viv_s41 == 4'd10); 
   always @(posedge clk or negedge reset_n) begin
      if (!reset_n) begin
         viv_s44 <= 10'd0;
      end 
      else if (viv_s40) begin
         viv_s44 <= viv_s43[9:0];
      end 
   end  
   assign viv_s48 = viv_s44[7:0];
   assign measure_complete = ( (viv_s49 == 6'b100100) && viv_s50 );
endmodule
