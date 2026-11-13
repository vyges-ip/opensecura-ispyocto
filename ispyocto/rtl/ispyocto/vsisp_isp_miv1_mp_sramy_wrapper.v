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

module vsisp_isp_miv1_mp_sramy_wrapper(GC_CONTROL,cEn0_,mcReg_registerTimingControl,reset_,rwAddr0,rwclk0,wData0,wEn0_,rData0);
    /*NAME: mmsx_isp_miv1_mp_sramy_wrapper_sw0x66x80 */
    input      [15:0]                    GC_CONTROL;
    input                                cEn0_;
    input      [31:0]                    mcReg_registerTimingControl;
    input                                reset_;
    input      [7-1:0]                   rwAddr0;
    input                                rwclk0;
    input      [66-1:0]                  wData0;
    input                                wEn0_;
    output     [66-1:0]                  rData0;
    wire       [66-1:0]                  rData0;
    `ifdef OLD_MEM_MODEL
    `else 
    `ifdef AQ_TSMC28HPM_RAM_MODEL
    wire [7-1:0]     BM_AA = {7{1'b0}};
    wire [7-1:0]     BM_AB = {7{1'b0}};
    wire                   BM_CENA = 1'b0;
    wire                   BM_CENB = 1'b0;
    wire                   BM_BENA = 1'b0;
    wire [66-1:0]    BM_DB = {66{1'b0}};
    wire                   BM_EN = 1'b0;
    wire [1-1:0]   BM_WENB = {1{1'b1}};
    wire BIST = (BM_EN & BM_BENA);
    wire enableClock  = ~(cEn0_) | GC_CONTROL[4];
    `ifdef CG_IN_RAM
    wire rwclk0En = rwclk0;
    `else
    wire rwclk0En;
    vsisp_GC_CG_MOD GC_CG_RW(.enable(enableClock), .ck_in(rwclk0), .ck_out(rwclk0En), .test(GC_CONTROL[0]));
    `endif
    wire [66-1:0] ramRData0;
    reg  [66-1:0] ramWData0;
    always @(wData0[65:0]) begin
        ramWData0[66-1:0] = wData0[65:0];
    end
    assign rData0[65:0] = ramRData0[66-1:0];
    RF1P80W66B4S ram0 (
       .Q(ramRData0),
       .CLK(rwclk0En),
       .WEB(wEn0_),
       .CEB(cEn0_),
       .BWEB({66{1'b0}}),
       .A(rwAddr0),
       .D(ramWData0),
       .SLP(mcReg_registerTimingControl[0]), 
       .SD(mcReg_registerTimingControl[20]), 
       .AM(BM_AA),                     
       .DM({BM_DB[65:0]}),  
       .BWEBM({66{1'b0}}),              
       .WEBM(BM_CENB),                 
       .CEBM(BM_CENA),                 
       .BIST(BIST),
       .TURBO(1'b1),			
       .RTSEL(2'b01)); 
    `else 
    `ifdef AQ_SEC14LPP_RAM_MODEL
    wire enableClock  = ~(cEn0_) | GC_CONTROL[4];
    `ifdef CG_IN_RAM
    wire rwclk0En = rwclk0;
    `else
    wire rwclk0En;
    vsisp_GC_CG_MOD GC_CG_RW(.enable(enableClock), .ck_in(rwclk0), .ck_out(rwclk0En), .test(GC_CONTROL[0]));
    `endif
    wire [66-1:0] ramRData0;
    reg  [66-1:0] ramWData0;
    always @(wData0[65:0]) begin
        ramWData0[66-1:0] = wData0[65:0];
    end
    assign rData0[65:0] = ramRData0[66-1:0];
    RF1P80W66B2M1BK0S0HD0WM ram0 (
    .Q(ramRData0),
    .CLK(rwclk0En),
    .CEN(cEn0_),
    .GWEN(wEn0_),
    .A(rwAddr0),
    .D(ramWData0),
    .STOV(1'b0),
    .EMA(3'b010),
    .EMAW(2'b01),
    .EMAS(1'b0),
    .RET1N(1'b1));
    `else 
    `ifdef AQ_TSMC7FF_RAM_MODEL
    wire enableClock  = ~(cEn0_) | GC_CONTROL[4];
    `ifdef CG_IN_RAM
    wire rwclk0En = rwclk0;
    `else
    wire rwclk0En;
    vsisp_GC_CG_MOD GC_CG_RW(.enable(enableClock), .ck_in(rwclk0), .ck_out(rwclk0En), .test(GC_CONTROL[0]));
    `endif
    wire [66-1:0] ramRData0;
    reg  [66-1:0] ramWData0;
    always @(wData0[65:0]) begin
        ramWData0[66-1:0] = wData0[65:0];
    end
    assign rData0[65:0] = ramRData0[66-1:0];
    RF1P128W66B1MNSEG0S0HD0WM ram0 (
       .CLK(rwclk0En),
       .Q(ramRData0),
       .CEB(cEn0_),
       .WEB(wEn0_),
       .A(rwAddr0),
       .D(ramWData0),
       .SD(mcReg_registerTimingControl[20]),
       .DSLP(mcReg_registerTimingControl[21]),
       .DSLPLV(1'b0),
       .PUDELAY_DSLP(),
       .PUDELAY_SD(),
       .RTSEL(2'b10),
       .WTSEL(2'b01),
       .DFTBYP(1'b0),
       .SE(1'b0),
       .SIC(1'b0),
       .SID(2'b00),
       .SOC(),
       .SOD());
    `else 
    `ifdef AQ_TSMC12FFC_RAM_MODEL
    wire enableClock  = ~(cEn0_) | GC_CONTROL[4];
    `ifdef CG_IN_RAM
    wire rwclk0En = rwclk0;
    `else
    wire rwclk0En;
    vsisp_GC_CG_MOD GC_CG_RW(.enable(enableClock), .ck_in(rwclk0), .ck_out(rwclk0En), .test(GC_CONTROL[0]));
    `endif
    wire [66-1:0] ramRData0;
    reg  [66-1:0] ramWData0;
    always @(wData0[65:0]) begin
        ramWData0[66-1:0] = wData0[65:0];
    end
    assign rData0[65:0] = ramRData0[66-1:0];
    RF1P80W66B1MNSEG0S0HD0WM ram0 (
       .CLK(rwclk0En),
       .Q(ramRData0),
       .CEB(cEn0_),
       .WEB(wEn0_),
       .A(rwAddr0),
       .D(ramWData0),
       .RTSEL(2'b01),
       .WTSEL(2'b01));
    `else 
    wire enableClock  = ~(cEn0_) | GC_CONTROL[4];
    `ifdef CG_IN_RAM
    wire rwclk0En = rwclk0;
    `else
    wire rwclk0En;
    vsisp_GC_CG_MOD GC_CG_RW(.enable(enableClock), .ck_in(rwclk0), .ck_out(rwclk0En), .test(GC_CONTROL[0]));
    `endif
    wire [66-1:0] ramRData0;
    reg  [66-1:0] ramWData0;
    always @(wData0[65:0]) begin
        ramWData0[66-1:0] = wData0[65:0];
    end
    assign rData0[65:0] = ramRData0[66-1:0];
    vsisp_RAM1P80W66B_SS ram0 (
                    .Q(ramRData0),
                    .CLK(rwclk0En),
                    .CEB(cEn0_),
                    .A(rwAddr0),
                    .WEB(wEn0_),
                    .BWEB({66{1'b0}}),
                    .D(ramWData0),
                    .CLKEN(enableClock),
                    .TESTEN(GC_CONTROL[0]));
    `endif
    `endif
    `endif
    `endif
    `endif
    `ifdef VIVANTE_CHECK_RAM_USAGE
    `ifdef VIVANTE_SIM_END
    reg [1-1:0] writeHappened;
    reg readHappened;
    initial begin
        writeHappened = 1 'd0;
        readHappened = 1'd0;
    end
    always @(posedge rwclk0) begin
        readHappened <= (readHappened | (~cEn0_ & wEn0_));
    end
    always @(posedge rwclk0) begin
        if(~wEn0_ & ~cEn0_) begin
            writeHappened <= 1'b1;
        end
    end
    initial begin
        @`VIVANTE_SIM_END;
        if(&{readHappened,writeHappened}) begin
            $display ("RAM USAGE: vsisp_isp_miv1_mp_sramy_wrapper at %m fully exercised.");
        end else begin
            $display ("RAM USAGE: vsisp_isp_miv1_mp_sramy_wrapper at %m not fully exercised.");
        end
    end
    `endif
    `endif
    `ifdef ASSERT_ON_RAM
    assert_never wrong_rwaddr0 (rwclk0, reset_, (~cEn0_ & (rwAddr0 > 80-1)));
    assert_never_unknown #(0, 7, 0, "address is unknown") address_unknown0(rwclk0, reset_, ~cEn0_, rwAddr0);
    assert_never_unknown #(0, 1, 0, "ram enable is unknown") ram_enable_unknown0(rwclk0, reset_, 1'b1, cEn0_);
    assert_never_unknown #(0, 32, 0, "config signal is unknown") config_unknown_rw0(rwclk0, reset_, 1'b1, mcReg_registerTimingControl[32-1:0]);
    assert_never_unknown #(0, 1, 0, "control signal is unknown") control_unknown_rw0(rwclk0, reset_, 1'b1, GC_CONTROL[4]);
    `endif
    `ifdef VIVANTE_CHECK_RAM_USAGE2
    `ifdef VIVANTE_RAM_MONITOR_END
    parameter                              rAddr0Num = 8-1;
    reg [rAddr0Num:0] 		        rAddr0_r;
    reg [31:0] 				rAddr0Cnt[0:rAddr0Num];
    parameter                              wAddr0Num = 8-1;
    reg [wAddr0Num:0] 			wAddr0_r;
    reg [31:0] 				wAddr0Cnt[0:wAddr0Num];
    parameter                              wData0Num = 29-1;
    reg [wData0Num:0] 			wData0_r;
    reg [31:0] 				wData0Cnt[0:wData0Num];
    parameter 			        rData0Num = 29-1;
    reg [rData0Num:0] 			rData0_r;
    reg [31:0] 				rData0Cnt[0:rData0Num];
    initial
      begin
         #1;
         @`VIVANTE_RAM_MONITOR_END 
           begin
              integer i;
              for(i=0;i<=rAddr0Num;i=i+1)
                begin
         	  $gethierachy(3, i, rAddr0Cnt[i]);
                end
              for(i=0;i<=wAddr0Num;i=i+1)
                begin
         	  $gethierachy(4, i, wAddr0Cnt[i]);
                end
              for(i=0;i<=wData0Num;i=i+1)
                begin
         	  $gethierachy(2, i, wData0Cnt[i]);
                end
              for(i=0;i<=rData0Num;i=i+1)
                begin
         	  $gethierachy(1, i, rData0Cnt[i]);
                end
           end
      end
    always @(posedge rwclk0 or negedge reset_)
      begin
         if(!reset_)
           begin
              rAddr0_r = 'b0;
              rData0_r = 'b0;
           end
         else if(wEn0_&!cEn0_)
           begin
              rAddr0_r = rwAddr0;
              rData0_r = rData0;
           end
      end
    always @(posedge rwclk0 or negedge reset_)
      begin
         if(!reset_)
           begin
              integer i;
              for(i=0;i<=rAddr0Num;i=i+1)
                begin
         	  rAddr0Cnt[i] = 'b0;
                end
           end
         else if(wEn0_&!cEn0_)
           begin
              integer i;
              for(i=0;i<=rAddr0Num;i=i+1)
                begin
         	  if(rAddr0_r[i]^rwAddr0[i])
         	    begin
         	       rAddr0Cnt[i] = rAddr0Cnt[i] + 1;
         	    end
                end
           end
      end
    always @(posedge rwclk0 or negedge reset_)
      begin
         if(!reset_)
           begin
              integer i;
              for(i=0;i<=rData0Num;i=i+1)
                begin
         	  rData0Cnt[i] = 'b0;
                end
           end
         else if(wEn0_&!cEn0_)
           begin
              integer i;
              for(i=0;i<=rData0Num;i=i+1)
                begin
         	  if(rData0_r[i]^rData0[i])
         	    begin
         	       rData0Cnt[i] = rData0Cnt[i] + 1;
         	    end
                end
           end
      end
    always @(posedge rwclk0 or negedge reset_)
      begin
         if(!reset_)
           begin
              wAddr0_r = 'b0;
              wData0_r = 'b0;
           end
         else if((!wEn0_)&(!cEn0_))
           begin
              wAddr0_r = rwAddr0;
              wData0_r = wData0;
           end
      end
    always @(posedge rwclk0 or negedge reset_)
      begin
         if(!reset_)
           begin
              integer i;
              for(i=0;i<=wAddr0Num;i=i+1)
                begin
         	  wAddr0Cnt[i] = 'b0;
                end
           end
         else if((!wEn0_)&(!cEn0_))
           begin
              integer i;
              for(i=0;i<=wAddr0Num;i=i+1)
                begin
         	  if(wAddr0_r[i]^rwAddr0[i])
         	    begin
         	       wAddr0Cnt[i] = wAddr0Cnt[i] + 1;
         	    end
                end
           end
      end
    always @(posedge rwclk0 or negedge reset_)
      begin
         if(!reset_)
           begin
              integer i;
              for(i=0;i<=wData0Num;i=i+1)
                begin
         	  wData0Cnt[i] = 'b0;
                end
           end
         else if((!wEn0_)&(!cEn0_))
           begin
              integer i;
              for(i=0;i<=wData0Num;i=i+1)
                begin
         	  if(wData0_r[i]^wData0[i])
         	    begin
         	       wData0Cnt[i] = wData0Cnt[i] + 1;
         	    end
                end
           end
      end
    `endif
    `endif
endmodule
