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

`include "vsisp_AQ_timescale.vh"
`ifdef ASSERT_ON
`include "std_ovl_defines.h"
`endif
module vsisp_gc_den_reg (
   out,
   clk, reset_, en, in
   );
    parameter WIDTH = 32;
    parameter RESET_STATE = 0;
    input    clk;
    input    reset_;
    input    en;
    input [WIDTH-1 : 0 ] in ;
    output [WIDTH-1 : 0 ] out;
    `ifdef ASSERT_ON
    assert_never_unknown #(0, 1, `OVL_ASSERT, "Enable signal of register should never be unknown!") enable_unknown_check (clk, reset_, 1'b1, en);
    `endif
    reg [WIDTH-1:0]	out;
    `ifdef VIVANTE_RANDOM_INITIAL_VALUES
    integer seed ;
    integer status;
    reg     viv_s0 ;
    reg     viv_s1 ;
    localparam CONCAT_COUNT = (WIDTH+31)/32;
    initial begin
        if ($test$plusargs("seed")) begin
            status = $value$plusargs("seed=%d", seed);
        end else begin
            seed = $random ;
        end
        viv_s0 = 1'b1 ;
        `ifdef VIVANTE_RANDOM_INITIAL_ALL1
         viv_s0 = 1'b0;
         viv_s1    = 1'b1 ;
        `endif
        `ifdef VIVANTE_RANDOM_INITIAL_ALL0
         viv_s0 = 1'b0;
         viv_s1    = 1'b0 ;
        `endif
        out = viv_s0 ? {CONCAT_COUNT{$random(seed)}} | 1 : viv_s1 ?  {WIDTH{1'b1}} : {WIDTH{1'b0}} ;
    end    
    `endif
            always @(posedge clk or negedge reset_) begin  
        if ( !reset_ ) begin
            out <= #1 RESET_STATE;
        end else begin
            if (en) begin
                out <= #1 in;
            end 
        end 
    end
    `ifdef VIVANTE_CHECK_POWER_SAIF
    reg viv_s2;
    always @(posedge clk)
        viv_s2 <= #1 1'b0;
    always @(negedge clk)
        viv_s2 <= #1 en;    
    gc_toggle_monitor #(WIDTH,1) toggle_monitor(.clk(clk),.enabledClk(viv_s2),.out(out[WIDTH-1:0]));
    `endif
    `ifdef VIVANTE_COLLECT_TOGGLE_INFO_IN_FLOPS_AND_RAMS
    `ifdef VIVANTE_SAIF_TRIGGER
    reg [31:0] viv_s3;
    reg [31:0] viv_s4;
    reg [31:0] viv_s5;
    integer i;
    initial begin
        viv_s3 = 0;
        viv_s4 = 0;
        viv_s5 = 0;
    end
    always @(negedge clk) begin
        if(en) begin
            viv_s3 <= viv_s3 + 1'b1;
            if (in != out) begin
                for (i = 0; i <= WIDTH-1; i = i + 1) begin
                    if(in[i] != out[i]) begin
                        viv_s4 = viv_s4 + 1'b1;
                    end
                end
            end
            if(viv_s3[31] | viv_s4[31]) begin
                $display("ERROR: %m - Toggle counter overflow.");
                #10000;
                $finish;                
            end
        end
    end
    initial begin
        forever begin
            @(posedge `VIVANTE_SAIF_TRIGGER);
            $display ("FLOP TOGGLE: %d : %m : WIDTH: %d, CLK_TOGGLE: %d - %d, OUT_TOGGLE: %d",viv_s5,WIDTH,viv_s3,WIDTH,viv_s4);
            viv_s3 = 0;
            viv_s4 = 0;
            viv_s5 = viv_s5 + 1;
        end
    end
    `endif
    `endif
    `ifdef VIVANTE_CHECK_CLOCK_GATING
    initial begin
        @`VIVANTE_SIM_END;
        $display ("CLOCK ENABLE: %m : WIDTH: %d, EN: %d",WIDTH,en);
    end
    `endif
endmodule
