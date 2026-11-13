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

module vsisp_mi_fifo_ram(
    clk,
    resetn,
    fifo_synch_reset,
    sw_fifo_depth_ctrl,
    fifo_write_e_lz,
    fifo_write_data,
    fifo_read_e_lz,
    fifo_validread_am,
    fifo_validwrite_vz,
    fifo_validread_vz,
    fifo_read_data,
    fifo_sram_buf_full,
    fifo_sram_DIN,
    fifo_sram_DOUT,
    fifo_sram_ADDR,
    fifo_sram_CEN,
    fifo_sram_WEN);
    parameter        FIFO_DATA_WIDTH  = 16;
    parameter        FIFO_DEPTH       = 4;
    parameter        SRAM_ADDRWIDTH   = 4;
    parameter        FIFO_SRAM_REGS   = 3;
    parameter        FIFO_DESCRIPTION = "default_name";
    integer i;
    parameter FIFO_IDLE    = 2'b00;
    parameter FIFO_TO_REG  = 2'b01;
    parameter FIFO_TO_SRAM = 2'b10;
    input clk;                
    input resetn;             
    input fifo_synch_reset;   
    input [1:0] sw_fifo_depth_ctrl;
    input fifo_write_e_lz;    
    input [FIFO_DATA_WIDTH-1:0] fifo_write_data;
    input fifo_read_e_lz;     
    output [SRAM_ADDRWIDTH:0] fifo_validread_am;
    output fifo_validwrite_vz;
    output fifo_validread_vz; 
    output [FIFO_DATA_WIDTH-1:0] fifo_read_data;
    output fifo_sram_buf_full;
    input [FIFO_DATA_WIDTH-1:0] fifo_sram_DIN;
    output [FIFO_DATA_WIDTH-1:0] fifo_sram_DOUT;
    output [SRAM_ADDRWIDTH-1:0] fifo_sram_ADDR;
    output fifo_sram_CEN;
    output fifo_sram_WEN;
    reg   [SRAM_ADDRWIDTH:0] viv_s0;
    wire  fifo_validwrite_vz;	
    wire  fifo_validread_vz;	
    wire  [FIFO_DATA_WIDTH-1:0] fifo_read_data;
    wire  [FIFO_DATA_WIDTH-1:0] fifo_sram_DOUT;
    wire  [SRAM_ADDRWIDTH-1:0] fifo_sram_ADDR;
    wire  fifo_sram_CEN;
    wire  fifo_sram_WEN;
//synopsys translate_off
parameter FIFO_FULL_PRINT_THRESHOLD_CYCLES = 15000;
parameter FIFO_EMPTY_PRINT_THRESHOLD_CYCLES = 15000;
integer fifo_full_count;
integer fifo_empty_count;
integer fifo_report_on_stuck_proc_print_once;
integer fifo_report_empty_stuck_proc_print_once;
reg     [SRAM_ADDRWIDTH:0] viv_s1;
always @(negedge resetn or posedge clk)
begin
  if (resetn == 1'b 0)
    viv_s1 <= 0;  
  else if(viv_s0 > viv_s1)
    viv_s1 <= viv_s0;
end
//synopsys translate_on
    reg [FIFO_DATA_WIDTH-1:0] reg_data_array[FIFO_SRAM_REGS-1:0];
    reg [FIFO_DATA_WIDTH-1:0] viv_s2;
    reg [SRAM_ADDRWIDTH-1:0] viv_s3;
    reg [SRAM_ADDRWIDTH-1:0] viv_s4;
    integer                 sram_buf_addr;
    integer                 reg_rd_ptr;
    integer                 reg_wr_ptr;
    integer                 reg_buf_addr;
    wire [SRAM_ADDRWIDTH:0] viv_s5;
    wire [SRAM_ADDRWIDTH:0] viv_s6;
    reg [1:0] viv_s7,viv_s8;
    reg viv_s9;
    reg viv_s10;
    reg viv_s11;
    reg viv_s12;
    reg viv_s13;
    reg viv_s14;
    reg viv_s15;
    reg viv_s16;
    reg viv_s17;
    reg viv_s18;
    reg viv_s19;
    reg viv_s20;
    reg viv_s21;
    reg viv_s22;
    wire viv_s23;
    wire viv_s24;
    wire viv_s25;
    wire viv_s26  ;
    wire viv_s27;
    wire viv_s28 ;
    wire viv_s29 ;
    wire viv_s30 ;
    assign viv_s5 = (sw_fifo_depth_ctrl == 2'b00) ? (FIFO_DEPTH     )  :
                           (sw_fifo_depth_ctrl == 2'b01) ? (FIFO_DEPTH >> 1)  :
                           (sw_fifo_depth_ctrl == 2'b10) ? (FIFO_DEPTH >> 2)  :
                           (sw_fifo_depth_ctrl == 2'b11) ? (FIFO_DEPTH >> 3)  : FIFO_DEPTH;
    assign viv_s6 = viv_s5 - 1'b1;
    assign fifo_validwrite_vz = viv_s30;
    assign fifo_validread_vz = viv_s29;
    assign fifo_validread_am = viv_s0;
    assign fifo_sram_WEN = viv_s18 ;
    assign fifo_sram_CEN = viv_s19 ;
    assign fifo_sram_ADDR = (viv_s20 == 1'b1) ? viv_s4 :
                            (viv_s21 == 1'b1) ? viv_s3 : 0 ;
    assign fifo_sram_DOUT = viv_s2;
    assign fifo_read_data = reg_data_array[reg_rd_ptr];
    assign viv_s25  = (reg_buf_addr ==    0          ) ? 1 : 0;
    assign viv_s26   = (reg_buf_addr == FIFO_SRAM_REGS) ? 1 : 0;
    assign viv_s27 = (sram_buf_addr ==   0          ) ? 1 : 0;
    assign viv_s28  = (sram_buf_addr == viv_s5   ) ? 1 : 0;
    assign fifo_sram_buf_full = viv_s28;
    assign viv_s29 = (viv_s25)? 0 : 1;
    assign viv_s30 = (viv_s28 | (viv_s23 & (viv_s7 == FIFO_TO_SRAM))
                           | (viv_s23 & viv_s26 & viv_s27) | viv_s9) ? 0 : 1;
    assign viv_s23 = fifo_read_e_lz & viv_s29;
    assign viv_s24 = fifo_write_e_lz & viv_s30;
    always @(*)
    begin
      viv_s8     = viv_s7;
      viv_s16    = viv_s23;
      viv_s17    = 0;
      viv_s13    = 0;
      viv_s14    = 0;
      viv_s12        = 0;
      viv_s11       = 1;
      viv_s10       = 1;
      viv_s15    = 0;
      case(viv_s7)
        FIFO_IDLE:
          if(viv_s24 == 1 && viv_s27 == 1 && viv_s25 == 1)
            begin
            viv_s17 = 1;
            viv_s8  = FIFO_TO_REG;
            end
        FIFO_TO_REG:
          if(viv_s24 == 1)
            if(viv_s26==0)
              viv_s17 = 1; 
            else
              begin
              viv_s13 = 1;
              viv_s11    = 0;
              viv_s10    = 0;
              viv_s8  = FIFO_TO_SRAM;
              end
          else if(viv_s27 == 1 && viv_s25 == 1)
              viv_s8 = FIFO_IDLE;
        FIFO_TO_SRAM:
        begin
          if(viv_s23 == 1)
            viv_s15 = 1;
          if((viv_s24 == 1) && (viv_s28 == 0 && viv_s23 == 0))
            begin
              viv_s13 = 1;
              viv_s11    = 0;
              viv_s10    = 0;
            end
          if(viv_s23 == 1 && viv_s27 == 0)
          begin
            viv_s12  = 1;
            viv_s11 = 0;
          end
          if(viv_s20 == 1)
            viv_s14 = 1;
          if((viv_s27 == 1) && (viv_s24 == 0))
            begin
              if(viv_s25 == 1)
                viv_s8 = FIFO_IDLE;
              else if((viv_s22 == 1)&&(viv_s20 == 0))
                viv_s8 = FIFO_TO_REG;
            end
        end
        default: viv_s8 = FIFO_IDLE;
      endcase
    end
    always @ (posedge clk or negedge resetn)
     if(resetn == 1'b0)
     begin
       viv_s7     <= FIFO_IDLE;
       viv_s18       <= 1;
       viv_s19       <= 1;
       viv_s20        <= 0;
       viv_s21        <= 0;
       viv_s22    <= 0;
       viv_s9    <= 0;
     end
     else if(fifo_synch_reset == 1'b0)
     begin
       viv_s7     <=  FIFO_IDLE;
       viv_s18       <= 1;
       viv_s19       <= 1;
       viv_s20        <= 0;
       viv_s21        <= 0;
       viv_s22    <= 0;
       viv_s9    <= 0;
     end
     else
     begin
       viv_s7     <= viv_s8;
       viv_s18       <= viv_s10;
       viv_s19       <= viv_s11;
       viv_s20        <= viv_s12;
       viv_s21        <= viv_s13;
       viv_s22    <= viv_s14;
       viv_s9    <= viv_s15;
     end
   always @ (posedge clk or negedge resetn)
   begin
      if(resetn == 1'b0)
        viv_s0 <= 0;
      else if(fifo_synch_reset == 1'b0)
        viv_s0 <= 0;
      else if(viv_s16 == 1 && (viv_s17 == 1 || viv_s13 == 1))
        viv_s0 <= viv_s0;
      else if(viv_s16 == 0 && (viv_s17 == 1 || viv_s13 == 1))
        viv_s0 <= viv_s0 + 1;
      else if(viv_s16 == 1 && viv_s17 == 0 && viv_s13 == 0)
        viv_s0 <= viv_s0 - 1;
    end
    always @ (posedge clk or negedge resetn)
    begin
      if(resetn == 1'b0)
        viv_s3 <= 0;
      else if(fifo_synch_reset == 1'b0)
        viv_s3 <= 0;
      else if(viv_s21 == 1'b1)
        begin
          if(viv_s3 == viv_s6)
            viv_s3 <= 0;
          else
            viv_s3 <= viv_s3 + 1'b1;
        end
     end
   always @ (posedge clk or negedge resetn)
    begin
      if(resetn == 1'b0)
        viv_s4 <= 0;
      else if(fifo_synch_reset == 1'b0)
        viv_s4 <= 0;
      else if(viv_s20 == 1'b1)
        begin
          if(viv_s4 == viv_s6)
            viv_s4 <= 0;
          else
            viv_s4 <= viv_s4 + 1'b1;
        end
     end
    always @ (posedge clk or negedge resetn)
    begin
      if(resetn == 1'b0)
        for(i = 0;i < FIFO_SRAM_REGS;i=i+1)
        reg_data_array[i] <= 0;
      else if(fifo_synch_reset == 1'b0)
        for(i = 0;i < FIFO_SRAM_REGS;i=i+1)
        reg_data_array[i] <= 0;
      else if(viv_s17)
        reg_data_array[reg_wr_ptr] <= fifo_write_data;  
      else if(viv_s22)
        reg_data_array[reg_wr_ptr] <= fifo_sram_DIN;	
    end
    always @ (posedge clk or negedge resetn)
    begin
      if(resetn == 1'b0)
        viv_s2 <= 0;
      else if(fifo_synch_reset == 1'b0)
        viv_s2 <= 0;
      else
	if(viv_s13) viv_s2 <= fifo_write_data;
    end
    always @ (posedge clk or negedge resetn)
    begin
      if(resetn == 1'b0)
        reg_wr_ptr <= 0;
      else if(fifo_synch_reset == 1'b0)
        reg_wr_ptr <= 0;
      else
        if(viv_s17 == 1'b1 || viv_s22 == 1'b1)
          if(reg_wr_ptr == FIFO_SRAM_REGS-1)
            reg_wr_ptr <= 0;
          else
            reg_wr_ptr <= reg_wr_ptr + 1;
    end
    always @ (posedge clk or negedge resetn)
    begin
      if(resetn == 1'b0)
        reg_rd_ptr <= 0;
      else if(fifo_synch_reset == 1'b0)
        reg_rd_ptr <= 0;
      else
        if(viv_s16 == 1'b1 )
          if(reg_rd_ptr == FIFO_SRAM_REGS-1)
            reg_rd_ptr <= 0;
          else if(viv_s25 == 0)
            reg_rd_ptr <= reg_rd_ptr + 1;
    end
    always @ (posedge clk or negedge resetn)
    begin
      if(resetn == 1'b0)
        sram_buf_addr <= 0;
      else if(fifo_synch_reset == 1'b0)
        sram_buf_addr <= 0;
      else if(viv_s12 == 1'b0 && viv_s13 == 1'b1)
        sram_buf_addr <= sram_buf_addr + 1;
      else if(viv_s12 == 1'b1 && viv_s13 == 1'b0)
        sram_buf_addr <= sram_buf_addr - 1;
    end
    always @ (posedge clk or negedge resetn)
    begin
      if(resetn == 1'b0)
        reg_buf_addr <= 0;
      else if(fifo_synch_reset == 1'b0)
        reg_buf_addr <= 0;
      else if(viv_s16 == 1 && (viv_s17 == 1 || viv_s22 == 1))
        reg_buf_addr <= reg_buf_addr;
      else if(viv_s16 == 0 && (viv_s17 == 1 || viv_s22 == 1))
        reg_buf_addr <= reg_buf_addr + 1;
      else if(viv_s16 == 1 && viv_s17 == 0 && viv_s22 == 0)
        reg_buf_addr <= reg_buf_addr - 1;
    end
//synopsys translate_off
always @(negedge resetn or posedge clk)
   begin : count_jamming_cycles_proc
   if (resetn == 1'b 0)
      begin
      fifo_full_count  <= 0;
      fifo_empty_count <= 0;
      end
   else
      begin
      if (fifo_write_e_lz == 1'b 1 & viv_s30 == 1'b 0)
         begin
         fifo_full_count <= fifo_full_count + 1'b 1;
         end
      else
         begin
         fifo_full_count <= 0;
         end
      if (fifo_read_e_lz == 1'b 1 & viv_s29 == 1'b 0)
         begin
         fifo_empty_count <= fifo_empty_count + 1'b 1;
         end
      else
         begin
         fifo_empty_count <= 0;
         end
      end
   end
//synopsys translate_on
endmodule
