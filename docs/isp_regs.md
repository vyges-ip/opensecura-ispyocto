# ISP Register Map

The table of ISP register definitions

|Register|Description|Address|Size|access|Field|Descriptions|Bits|Access|Reset|
|--------|-----------|-------|----|------|-----|------------|----|------|-----|
|VI_CCL|Clock Control Register|0x00000000|32|rw|vi_ccl_dis|Clock Control Logic disable 0: processing/cfg-clocks for all sub modules enabled 1: processing/cfg-clocks for all sub modules disabled without access to ID and VI_CCL register |2|rw|'h0
||||||vi_ccl_dis_status|Status of vi_ccl[2] bit (copy of vi_ccl[2])|1|ro|'h0
|ISP_ID_CUSTOM_ID|customer id|0x00000004|32|ro|isp_id_custom_id|Shows Proejct ID, Each Project maps to a Unique ProjectID 0x80: Project-0; 0x81: Project-1; 0x82: Project-2; 0x83: |31:0|ro|'h500000B9
|ISP_ID_PRODUCT_ID|product id|0x00000008|32|ro|productidaux|Product Aux|31:28|ro|'h0
||||||productidtype|Following is a Example for this 4bit field (GPU/VIP Using) ,  You can plan the values accordling to ISP 's Product RoadMap Product Type  0: ISP Only 1: DW Only 2: VSE Only 3: ISP + DW100 4: ISP + DW100 + VSE 5: ISP + DW200|27:24|ro|'h0
||||||productidnum|Shows Product Number, Example: ISP8000L,ProductIDNum=0x08000 DW100,ProductIDNum=0x00100 DW200,ProductIDNum=0x00200|23:4|ro|'h08000
||||||productidgradelevel|Product GradeLevel  0: None-no extra letter on the product name 1: N (Nano)  2: L (Lite)  3: D,Dual 4: N-D, Nano-Dual 5: L-D, Lite-Dual|3:0|ro|'h6
|ISP_ID_CHIP_ID|chip id|0x0000000c|32|ro|isp_id_chip_id|Shows ChipID numbers ISPNano Series,ChipID=0x8000 ISP8000L Series,ChipID=0x8000 ISP8000 Series,ChipID=0x8000 DW100,ChipID=0x0100 DW200,ChipID=0x0200|31:0|ro|'h00008000
|VI_ICCL|Internal Clock Control Register|0x00000010|32|rw|vi_mi_clk_enable|Memory interface clock enable 0: power safe ; 1: processing mode|6|rw|'h1
||||||vi_srsz_clk_enable|Reserved|4|rw|'h1
||||||vi_mrsz_clk_enable|main resize clock enable 0: power safe ; 1: processing mode|3|rw|'h1
||||||vi_isp_clk_enable|ISP processing clock enable 0: power safe ; 1: processing mode |0|rw|'h1
|VI_IRCL|Internal Reset Control Register|0x00000014|32|rw|vi_marvin_rst|Hardware reset of entire image signal processor 0: Processing mode; 1: reset state|7|rw|'h0
||||||vi_mi_soft_rst|Memory interface software reset 0: Processing mode; 1: reset state|6|rw|'h0
||||||vi_srsz_soft_rst|Reserved|4|rw|'h0
||||||vi_mrsz_soft_rst|Main-picture resize software reset 0: Processing mode; 1: reset state|3|rw|'h0
||||||vi_ycs_soft_rst|Y/C splitter software reset 0: Processing mode; 1: reset state|2|rw|'h0
||||||vi_isp_soft_rst|ISP software reset 0: Processing mode; 1: reset state|0|rw|'h0
|ISP_ID_ECO_ID|eco version|0x00000020|32|ro|isp_id_eco_id|Formal release is 0x0 The 1st ECO release is 0x1 The 2nd ECO release is 0x2 ….|31:0|ro|'h0
|ISP_ID_CHIP_REVISION|internal chip version|0x00000024|32|ro|isp_id_chip_revision|Shows Tag Number Example: Tag=isp8000_1_2_1_rc3z Then,ChipRevision=0x0000_1213|31:0|ro|'h00007100
|ISP_ID_PATCH_REVISION|Internal tag version|0x00000028|32|ro|isp_id_patch_revision|Shows the last letter of a Tag Example: Tag=isp8000_1_2_1_rc3z Then,PatchRevision=8'd26 "a" map to 8'd1 "b" map to 8'd2 … "z" map to 8'd26|31:0|ro|'d6
|ISP_ID_CHIP_DATE|chip date value|0x0000002c|32|ro|isp_id_chip_date|Shows Date Value,such as 32'h20191120|31:0|ro|'h20231017
|ISP_ID_CHIP_TIME|chip time value|0x00000030|32|ro|isp_id_chip_time|Shows Time Value,such as 32'h18365500|31:0|ro|'h1800
|VI_ID_RSV0||0x00000034|32|ro|marvin_id_rsv0|reserved id|31:0|ro|'ha100
|VI_ID_RSV1||0x00000038|32|ro|marvin_id_rsv1|reserved id|31:0|ro|'ha1
|VI_ID_RSV2||0x0000003c|32|ro|marvin_id_rsv2|reserved id|31:0|ro|'ha2
|VI_ID_RSV3||0x00000040|32|ro|marvin_id_rsv3|reserved id|31:0|ro|'ha3
|VI_ID_RSV4||0x00000044|32|ro|marvin_id_rsv4|reserved id|31:0|ro|'ha4
|VI_ID_RSV5||0x00000048|32|ro|marvin_id_rsv5|reserved id|31:0|ro|'ha5
|VI_ID_RSV6||0x0000004c|32|ro|marvin_id_rsv6|reserved id|31:0|ro|'ha6
|VI_ID_RSV7||0x00000050|32|ro|marvin_id_rsv7|reserved id|31:0|ro|'ha7
|ISP_CTRL|Global control register|0x00000400|32|rw|disable_isp_clk|1: enable ISP clock of SRAM. 0:disable isp clock of sram|31|rw|'h1
||||||statistic_3a_sel|1: select demosaic output 0: select cc output|21|rw|'h0
||||||csm_c_range|Color Space Matrix chrominance clipping range for ISP output 0: CbCr range 64..960 (16..240) according to ITU-R BT.601 standard 1: full UV range 0..1023 (0..255) Numbers in brackets are for 8 bit resolution. This bit also configures the YCbCr sequence align block accordingly. |14|rw|'h0
||||||csm_y_range|Color Space Matrix luminance clipping range for ISP output 0: Y range 64..940 (16..235) according to ITU-R BT.601 standard 1: full Y range 0..1023 (0..255) Numbers in brackets are for 8 bit resolution. This bit also configures the YCbCr sequence align block accordingly.|13|rw|'h0
||||||dgain_en|digital gain enable|12|rw|'h0
||||||gamma_out_enable|Gamma ON/OFF|11|rw|'h0
||||||gen_cfg_upd|1: generate frame synchronous configuration signal at the output of ISP for shadow registers of the following processing modules, write only|10|wo|'h0
||||||cfg_upd|1: immediately configure (update) shadow registers, write only|9|wo|'h0
||||||gen_cfg_upd_fix|1: make gen_cfg_upd a level signal, effect since then. 0: gen_cfg_upd is a pulse signal, only effect for current frame.|8|rw|'h0
||||||awb_enable|Auto white balance ON/OFF|6|rw|'h0
||||||inform_enable|input formatter  0: disabled; 1: enabled The ISP input formatter is enabled or disabled by this bit immediately,  But always starts or stops acquisition frame synchronously.|4|rw|'h0
||||||isp_mode|000 - RAW picture with BT.601 sync (ISP bypass) 001 - ITU-R BT.656 (YUV with embedded sync) 010 - ITU-R BT.601 (YUV input with H and Vsync signals) 011 - Bayer RGB processing with H and Vsync signals 100 – data mode (ISP bypass, sync signals interpreted as data enable) 101 - Bayer RGB processing with BT.656 synchronization 110 - RAW picture with ITU-R BT.656 synchronization (ISP bypass) 111 – monochrome Side effect: If RAW, BT.601, BT.656, or data mode is selected, the  clock of the ISP SRAMs (ISP line buffer, Lens Shading, Bad Pixel) is  switched off. Only in Bayer RGB mode the clock to the SRAMs is enabled.  This further reduces power consumption.|3:1|rw|'h0
||||||isp_enable|ISP data output 0: disabled ; 1: enabled Controls output formatter frame synchronously, if isp_gen_cfg_upd is  Used to activate this bit. For immediate update isp_cfg_upd must be used.|0|rw|'h0
|ISP_ACQ_PROP|ISP acquisition properties|0x00000404|32|rw|pin_mapping|Bit mapping from LSB to MSB: 000 -  normal 12-bit external Interface 001 - mapping Low 10 bit to High 10 bits, append 2 zeroes as LSBs 010 -  mapping Low 8 bit to High 8 bits, append 4 zeroes as LSBs 011 -  mapping Middle 8 bit to High 8 bits, append 4 zeroes as LSBs 100...111 - Reserved (from March 2018) |19:17|rw|'h0
||||||input_selection|12bit/10bit/8bit input select modes    000- 12Bit external Interface   001- 10Bit Interface, append 2 zeroes as LSBs   010- 10Bit Interface, append 2 MSBs as LSBs   011- 8Bit Interface, append 4 zeroes as LSBs   100- 8Bit Interface, append 4 MSBs as LSBs   101...111 reserved|14:12|rw|'h0
||||||field_inv|0: do not swap odd and even fields; 1: swap odd and even fields|11|rw|'h0
||||||field_selection|00- sample all fields (don‟t care about fields) 01- sample only even fields 10- sample only odd fields 11- reserved|10:9|rw|'h0
||||||ccir_seq|00- YCbYCr 01- YCrYCb 10- CbYCrY 11- CrYCbY|8:7|rw|'h0
||||||conv_422|00- cosited color subsampling Y0Cb0Cr0 – Y1 01- interleaved color subsampling Y0Cb0 – Y1Cr1 (not recommended) 10- non-cosited color subsampling Y0Cb(0+1)/2 – Y1Cr(0+1)/2 11- reserved|6:5|rw|'h0
||||||bayer_pat|Color components from sensor, starting with top left position in sampled frame (reprogram with ISP_ACQ_H_OFFS, ISP_ACQ_V_OFFS) 00- first line: RGRG..., second line: GBGB..., etc. 01- first line: GRGR..., second line: BGBG..., etc. 10- first line: GBGB..., second line: RGRG..., etc. 11- first line: BGBG..., second line: GRGR..., etc. This configuration applies for the black level area after cropping by the input formatter.|4:3|rw|'h0
||||||vsync_pol|Vertical sync polarity 0: high active; 1: low active|2|rw|'h0
||||||hsync_pol|Horizontal sync polarity 0: high active; 1: low active|1|rw|'h0
||||||sample_edge|0- negative edge sampling; 1- positive edge sampling|0|rw|'h0
|ISP_ACQ_H_OFFS|Horizontal input offset|0x00000408|32|rw|acq_h_offs|Horizontal sample offset in 8-bit samples (YUV: 4 samples = 2 pixels)|14:0|rw|'h0
|ISP_ACQ_V_OFFS|Vertical input offset|0x0000040c|32|rw|acq_v_offs|Vertical sample offset in lines|13:0|rw|'h0
|ISP_ACQ_H_SIZE|Horizontal input size|0x00000410|32|rw|acq_h_size|Horizontal sample size in 12-bit samples YUV input: 2 samples = 1 pixel, else 1 sample = 1 pixel;  So in YUV mode ACQ_H_SIZE must be twice as large as horizontal image size. Horizontal image size must always be even except in raw picture mode; if an odd size is programmed, the value will be truncated to an even size. |14:0|rw|'h1000
|ISP_ACQ_V_SIZE|Vertical input size|0x00000414|32|rw|acq_v_size|Vertical sample size in lines|13:0|rw|'hc00
|ISP_TPG_CTRL|Test Pattern Generator Module|0x00000500|32|rw|tpg_solution|00: 1080P (1920x1080)   01: 720P (1280x720)   10: 4K (3840x2160)   11: user defined resolution and timing|11:10|rw|'h0
||||||tpg_max_sync|Set to 1 to use VS/VDE and HS/HDE same behavior|9|rw|'h0
||||||tpg_def_sync|Set to 1 to select the default sync output|8|rw|'h0
||||||tpg_color_depth|Test Pattern Color Depth   00: 8-bit   01: 10-bit   10: 12-bit (pix_width)|7:6|rw|'h0
||||||tpg_cfa_pat|Bayer pattern:   00: RGGB   01: GRBG   10: GBRB   11: BGGR|5:4|rw|'h0
||||||tpg_img_num|Test Pattern Generator Image index   000: 3x3 color block   001: Color bar   010: Gray Bar   011: Highlighted grid   100: Random Generator   Others: Reserved|3:1|rw|'h0
||||||tpg_enable|Enable/Disable Test Pattern Generator   0: Disable the TPG   1: Enable the TPG|0|rw|'h0
|ISP_TPG_TOTAL_IN|The total clock|0x00000504|32|rw|tpg_htotal_in|The total clock of vertical|27:14|rw|'h0
||||||tpg_vtotal_in|The total clock of horizontal|13:0|rw|'h0
|ISP_TPG_ACT_IN|The available clock|0x00000508|32|rw|tpg_hact_in|The total clock of horizontal|27:14|rw|'h0
||||||tpg_vact_in|The available clock of vertical|13:0|rw|'h0
|ISP_TPG_FP_IN|The first valid|0x0000050C|32|rw|tpg_fp_h_in|The first valid of hs|27:14|rw|'h0
||||||tpg_fp_v_in|The first valid of vs|13:0|rw|'h0
|ISP_TPG_BP_IN|The distance between positive edge of vs with positive edge of hde |0x00000510|32|rw|tpg_bp_h_in|The distance between positive edge of vs with positive edge of hde |27:14|rw|'h0
||||||tpg_bp_v_in|The distance between positive edge of vs with positive edge of vde |13:0|rw|'h0
|ISP_TPG_W_IN|Available clk|0x00000514|32|rw|tpg_hs_w_in|Available clk of hs|27:14|rw|'h0
||||||tpg_vs_w_in|Available clk of vs|13:0|rw|'h0
|ISP_TPG_GAP_IN|The gap of sub_picture|0x00000518|32|rw|tpg_pix_gap_in|The width of sub_picture|27:14|rw|'h0
||||||tpg_line_gap_in|The height of sub_picture|13:0|rw|'h0
|ISP_TPG_GAP_STD_IN|The gap stdio of sub_picture|0x0000051C|32|rw|tpg_pix_gap_std_in|The gap of sub_picture|13:0|rw|'h0
|ISP_TPG_RANDOM_SEED|Random seed|0x00000520|32|rw|tpg_random_seed|Random seed|31:0|rw|'h0
|ISP_TPG_FRAME_NUM|Test Pattern Generator frame number|0x00000524|32|rw|tpg_frame_num|0：all of the frame output is valid Other:when the frame_cnt <= frame_num, the output is valid|15:0|rw|'h0
|ISP_OUT_H_OFFS|Horizontal offset of output window|0x00000604|32|rw|out_h_offs|Horizontal pic offset in lines|13:0|rw|'h0
|ISP_OUT_V_OFFS|Vertical offset of output window|0x00000608|32|rw|out_v_offs|Vertical pic offset in lines|13:0|rw|'h0
|ISP_OUT_H_SIZE|Output horizontal picture size|0x0000060c|32|rw|out_h_size|Horizontal picture size in pixel if ISP_MODE is set to: 001-(ITU-R BT.656 YUV), 010-( ITU-R BT.601 YUV), 011-( ITU-R BT.601 Bayer RGB), 101-( ITU-R BT.656 Bayer RGB) Only even numbers are accepted, because complete quadruples of YUYV(YCbYCr) are needed for the 422 output.  If an odd size is programmed, the value will be truncated to an even size.|14:0|rw|'h280
|ISP_OUT_V_SIZE|Output vertical picture size|0x00000610|32|rw|out_v_size|Vertical picture size in lines|13:0|rw|'h1e0
|ISP_OUT_H_OFFS_SHD|Current horizontal offset of output window (shadow register)|0x00000614|32|ro|out_h_offs_shd|Current horizontal picture offset in lines|13:0|ro|'h0
|ISP_OUT_V_OFFS_SHD|Current vertical offset of output window (shadow register)|0x00000618|32|ro|out_v_offs_shd|Current vertical picture offset in lines|13:0|ro|'h0
|ISP_OUT_H_SIZE_SHD|Current output horizontal picture size (shadow register)|0x0000061c|32|ro|out_h_size_shd|Current horizontal picture size in pixels.|14:0|ro|'h0
|ISP_OUT_V_SIZE_SHD|Current output vertical picture size (shadow register)|0x00000620|32|ro|out_v_size_shd|Current vertical picture size in lines.|13:0|ro|'h0
|ISP_BLS_CTRL|Black Level Subtraction Global Control Register|0x00000700|32|rw|bls_en|1: black level subtraction is enabled 0: bypass the black level processing|0|rw|'h0
|ISP_BLS_A_FIXED|Fixed Black Level A|0x00000704|32|rw|bls_a_fixed|Fixed black level for A pixels-signed, two's complement Valid range from -4096 to +4095,  A positive value will be subtracted from the pixel values|12:0|rw|'h0
|ISP_BLS_B_FIXED|Fixed Black Level B|0x00000708|32|rw|bls_b_fixed|Fixed black level for B pixels-signed, two's complement Valid range from -4096 to +4095,  A positive value will be subtracted from the pixel values|12:0|rw|'h0
|ISP_BLS_C_FIXED|Fixed Black Level C|0x0000070c|32|rw|bls_c_fixed|Fixed black level for C pixels-signed, two's complement Valid range from -4096 to +4095,  A positive value will be subtracted from the pixel values|12:0|rw|'h0
|ISP_BLS_D_FIXED|Fixed Black Level D|0x00000710|32|rw|bls_d_fixed|Fixed black level for D pixels-signed, two's complement Valid range from -4096 to +4095,  A positive value will be subtracted from the pixel values|12:0|rw|'h0
|ISP_EXP_CONF|Exposure Control|0x00000720|32|rw|exp_alt_mode|0: luminance calculation according to Y=16+0.25R+0.5G+0.1094B  1: luminance calculation according to Y=(R+G+B) x 0.332|31|rw|'h0
||||||autostop|0: continuous measurement  1: stop measuring after a complete frame|1|rw|'h0
||||||exp_ena|1: start measuring a frame. If autostop is set to 1, the exposure block will reset this bit and halt after completing one frame.|0|rw|'h0
|ISP_EXP_H_OFFSET|Horizontal Offset for First Block|0x00000724|32|rw|exp_h_offset|Horizontal offset of first block in pixels.|12:0|rw|'h0
|ISP_EXP_V_OFFSET|Vertical Offset for First Block|0x00000728|32|rw|exp_v_offset|Vertical offset of first block in pixels.|12:0|rw|'h0
|ISP_EXP_H_SIZE|Horizontal Size of One Block|0x0000072c|32|rw|exp_h_size|Horizontal size of one block in pixels.|10:0|rw|'h0
|ISP_EXP_V_SIZE|Vertical Size of One Block|0x00000730|32|rw|exp_v_size|Vertical size of one block in pixels (must be a multiple of 2). Note: The vertical size must be set in a way that after the last measurement window,  At least two lines of the image will follow. I|10:0|rw|'h0
|ISP_EXP_MEAN_00|Mean Luminance Value of Block 00|0x00000734|32|ro|exp_mean_00|Mean luminance value of block 00 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_10|Mean Luminance Value of Block 10|0x00000738|32|ro|exp_mean_10|Mean luminance value of block 10 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_20|Mean Luminance Value of Block 20|0x0000073c|32|ro|exp_mean_20|Mean luminance value of block 20 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_30|Mean Luminance Value of Block 30|0x00000740|32|ro|exp_mean_30|Mean luminance value of block 30 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_40|Mean Luminance Value of Block 40|0x00000744|32|ro|exp_mean_40|Mean luminance value of block 40 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_01|Mean Luminance Value of Block 01|0x00000748|32|ro|exp_mean_01|Mean luminance value of block 01 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_11|Mean Luminance Value of Block 11|0x0000074c|32|ro|exp_mean_11|Mean luminance value of block 11 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_21|Mean Luminance Value of Block 21|0x00000750|32|ro|exp_mean_21|Mean luminance value of block 21 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_31|Mean Luminance Value of Block 31|0x00000754|32|ro|exp_mean_31|Mean luminance value of block 31 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_41|Mean Luminance Value of Block 41|0x00000758|32|ro|exp_mean_41|Mean luminance value of block 41 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_02|Mean Luminance Value of Block 02|0x0000075c|32|ro|exp_mean_02|Mean luminance value of block 02 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_12|Mean Luminance Value of Block 12|0x00000760|32|ro|exp_mean_12|Mean luminance value of block 12 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_22|Mean Luminance Value of Block 22|0x00000764|32|ro|exp_mean_22|Mean luminance value of block 22 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_32|Mean Luminance Value of Block 32|0x00000768|32|ro|exp_mean_32|Mean luminance value of block 32 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_42|Mean Luminance Value of Block 42|0x0000076c|32|ro|exp_mean_42|Mean luminance value of block 42 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_03|Mean Luminance Value of Block 03|0x00000770|32|ro|exp_mean_03|Mean luminance value of block 03 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_13|Mean Luminance Value of Block 13|0x00000774|32|ro|exp_mean_13|Mean luminance value of block 13 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_23|Mean Luminance Value of Block 23|0x00000778|32|ro|exp_mean_23|Mean luminance value of block 23 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_33|Mean Luminance Value of Block 33|0x0000077c|32|ro|exp_mean_33|Mean luminance value of block 33 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_43|Mean Luminance Value of Block 43|0x00000780|32|ro|exp_mean_43|Mean luminance value of block 43 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_04|Mean Luminance Value of Block 04|0x00000784|32|ro|exp_mean_04|Mean luminance value of block 04 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_14|Mean Luminance Value of Block 14|0x00000788|32|ro|exp_mean_14|Mean luminance value of block 14 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_24|Mean Luminance Value of Block 24|0x0000078c|32|ro|exp_mean_24|Mean luminance value of block 24 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_34|Mean Luminance Value of Block 34|0x00000790|32|ro|exp_mean_34|Mean luminance value of block 34 (x,y)|7:0|ro|'h0
|ISP_EXP_MEAN_44|Mean Luminance Value of Block 44|0x00000794|32|ro|exp_mean_44|Mean luminance value of block 44 (x,y)|7:0|ro|'h0
|ISP_DGAIN_RB|digital gain of red blue|0x00000800|32|rw|dgain_r|digital gain of red channel|31:16|rw|'h100
||||||dgain_b|digital gain of blue channel|15:0|rw|'h100
|ISP_DGAIN_G|digital gain of green|0x00000804|32|rw|dgain_gr|digital gain of red line green channel|31:16|rw|'h100
||||||dgain_gb|digital gain of blue line green channel|15:0|rw|'h100
|ISP_DGAIN_RB_SHD|digital gain of red blue|0x00000808|32|ro|dgain_r|digital gain of red channel|31:16|ro|'h100
||||||dgain_b|digital gain of blue channel|15:0|ro|'h100
|ISP_DGAIN_G_SHD|digital gain of green|0x0000080c|32|ro|dgain_gr|digital gain of red line green channel|31:16|ro|'h100
||||||dgain_gb|digital gain of blue line green channel|15:0|ro|'h100
|ISP_DEMOSAIC|Demosaic parameters|0x00000810|32|rw|demosaic_bypass|0: normal operation for RGB Bayer Pattern input 1: demosaicing bypass for Black&White input data |10|rw|'h0
||||||demosaic_th|Threshold for Bayer demosaicing texture detection. This value shifted left 4bit is compared with the difference of the vertical and horizontal 12Bit wide texture indicators, to decide if the vertical or horizontal texture flag must be set. 0x00: maximum edge sensitivity; 0xFF: no texture detection |7:0|rw|'h4
|ISP_FILT_MODE|Filter Block Mode Control Register|0x00000814|32|rw|filt_lp_select|Green filter stage 1 select (Valid range: 0x0...0x8): 0x0: maximum blurring . . .  0x4: Default 0x7: minimum blurring 0x8: filter stage1 bypass|11:8|rw|'h4
||||||filt_chr_h_mode|Chroma filter horizontal mode: 00: horizontal chroma filter bypass 01: horizontal chroma filter 1 static mask = [10 12 10] 10: horizontal chroma filter 2 (dynamic blur1) 11: horizontal chroma filter 3 (dynamic blur2) (Default)|7:6|rw|'h3
||||||filt_chr_v_mode|Chroma filter vertical mode: 00: vertical chroma filter bypass 01: vertical chroma filter 1 static [8 16 8] 10: vertical chroma filter 2 static [10 12 10] 11: vertical chroma filter 3 static [12 8 12] (Default)|5:4|rw|'h3
||||||filt_mode|0: green filter static mode (active filter factor = FILT_FAC_MID) 1: dynamic noise reduction/sharpen (Default)|1|rw|'h1
||||||filt_enable|1: enable filter 0: bypass filter (Default)|0|rw|'h0
|ISP_FILT_THRES_BL0|Blurring Threshold 0|0x00000818|32|rw|filt_thres_bl0|If filt_thresh_bl1 < sum_grad < filt_thresh_bl0   then filt_fac_bl0 is selected Note: sum_grad is calculated by the texture detection unit as the sum of horizontal and vertical gradients|9:0|rw|'h00d
|ISP_FILT_THRES_BL1|Blurring Threshold 1|0x0000081c|32|rw|filt_thres_bl1|If sum_grad < filt_thresh_bl1  then filt_fac_bl1 is selected Note: sum_grad is calculated by the texture detection unit as the sum of horizontal and vertical gradients|9:0|rw|'h005
|ISP_FILT_THRES_SH0|Sharpening Threshold 0|0x00000820|32|rw|filt_thres_sh0|If filt_thresh_sh1 < sum_grad < filt_thresh_sh0   then filt_fac_bl0 is selected Note: sum_grad is calculated by the texture detection unit as the sum of horizontal and vertical gradients|9:0|rw|'h01a
|ISP_FILT_THRES_SH1|Sharpening Threshold 1|0x00000824|32|rw|filt_thres_sh1|If sum_grad < filt_thresh_sh1  then filt_fac_bl1 is selected Note: sum_grad is calculated by the texture detection unit as the sum of horizontal and vertical gradients|9:0|rw|'h02c
|ISP_FILT_LUM_WEIGHT|Parameters for Luminance Weight Function|0x00000828|32|rw|lum_weight_gain|Gain select of luminance weight function|18:16|rw|'h2
||||||lum_weight_kink|Kink position of luminance weight function|15:8|rw|'h20
||||||lum_weight_min|Minimum value of luminance weight function|7:0|rw|'h40
|ISP_FILT_FAC_SH1|Filter Factor Sharp1|0x0000082c|32|rw|filt_fac_sh1|Filter factor for sharp1 level|5:0|rw|'h10
|ISP_FILT_FAC_SH0|Filter Factor Sharp0|0x00000830|32|rw|filt_fac_sh0|Filter factor for sharp0 level|5:0|rw|'h0c
|ISP_FILT_FAC_MID|Filter Factor Middle|0x00000834|32|rw|filt_fac_mid|Filter factor for mid level and for static filter mode|5:0|rw|'h0a
|ISP_FILT_FAC_BL0|Parameter for Blur 0 Filter|0x00000838|32|rw|filt_fac_bl0|Filter factor for blur 0 level|5:0|rw|'h06
|ISP_FILT_FAC_BL1|Parameter for Blur 1 Filter|0x0000083c|32|rw|filt_fac_bl1|Filter factor for blur 1 level (max blur)|5:0|rw|'h02
|ISP_CAC_CTRL|Global control register|0x00000870|32|rw|cac_h_clip_mode|Defines the maximum red/blue pixel shift in horizontal direction At pixel positions, that require a larger displacement, the maximum shift value is used instead (vector clipping)  0: Set horizontal vector clipping to +/-4 pixel displacement (Default)  1: Set horizontal vector clipping to +/-4 or +/-5 pixel displacement depending on pixel position inside the Bayer raster (dynamic switching between +/-4 and +/-5)|3|rw|'h0
||||||cac_v_clip_mode|Defines the maximum red/blue pixel shift in vertical direction  00: Set vertical vector clipping to +/-2 pixel ; fix filter_enable (Default)  01: Set vertical vector clipping to +/-3 pixel; dynamic filter_enable for chroma low pass filter  10: Set vertical vector clipping +/-3 or +/-4 pixel displacement depending on pixel position inside the Bayer raster (dynamic switching between +/-3 and +/-4)  11: reserved|2:1|rw|'h0
||||||cac_enable|0: chromatic aberration correction off  1: chromatic aberration correction on |0|rw|'h0
|ISP_CAC_COUNT_START|Preload Values for CAC Pixel and Line Counter|0x00000874|32|rw|cac_v_count_start|12 bit v_count preload value (range 4095 ... 1) of the vertical CAC line counter. Before frame start v_count has to be preloaded with (v_size/2 + v_center_offset), with  v_size the image height and  v_center_offset the vertical distance between image center and optical center.   After frame start the v_count decrements with every line until a value of zero is reached for the line in the optical center. Than the v_sign bit toggles and the v_counter decrements with every line until end of frame.|28:16|rw|'h1000
||||||cac_h_count_start|12 bit h_count preload value (range 4095 .. 1) of the horizontal CAC pixel counter. Before line start h_count has to be preloaded with (h_size/2 + h_center_offset), with  h_size the image width and  h_center_offset the horizontal distance between image center and optical center.   After line start the h_count decrements with every pixel until a value of zero is reached for the column in the optical center. Than the h_sign bit toggles and the h_counter increments with every pixel until end of line.|12:0|rw|'h1000
|ISP_CAC_A|Linear Parameters for Radial Shift Calculation|0x00000878|32|rw|cac_a_blue|Parameter A_Blue for radial blue shift calculation, according to  (A_Blue * r + B_Blue * r^2 + C_Blue * r^3).  It is a 9 bit twos complement integer with 4 fractional digits value and value range from -16 up to 15.9375.|24:16|rw|'h0
||||||cac_a_red|Parameter A_Red for radial red shift calculation, according to  (A_Red * r + B_Red * r^2 + C_Red * r^3).  It is a 9 bit twos complement integer with 4 fractional digits value and value range from -16 up to 15.9375.|8:0|rw|'h0
|ISP_CAC_B|Square Parameters for Radial Shift Calculation|0x0000087c|32|rw|cac_b_blue|Parameter B_Blue for radial blue shift calculation, according to  (A_Blue * r + B_Blue * r^2 + C_Blue * r^3).  It is a 9 bit twos complement integer with 4 fractional digits value and value range from -16 up to 15.9375.|24:16|rw|'h0
||||||cac_b_red|Parameter B_Red for radial red shift calculation, according to  (A_Red * r + B_Red * r^2 + C_Red * r^3).  It is a 9 bit twos complement integer with 4 fractional digits value and value range from -16 up to 15.9375.|8:0|rw|'h0
|ISP_CAC_C|Cubical Parameters for Radial Shift Calculation|0x00000880|32|rw|cac_c_blue|Parameter C_Blue for radial blue shift calculation, according to  (A_Blue * r + B_Blue * r^2 + C_Blue * r^3).  It is a 9 bit twos complement integer with 4 fractional digits value and value range from -16 up to 15.9375.|24:16|rw|'h0
||||||cac_c_red|Parameter C_Red for radial red shift calculation, according to  (A_Red * r + B_Red * r^2 + C_Red * r^3).  It is a 9 bit twos complement integer with 4 fractional digits value and value range from -16 up to 15.9375.|8:0|rw|'h0
|ISP_CAC_X_NORM|Normalization Parameters for Calculation of Image Coordinate x_d|0x00000884|32|rw|cac_x_norm_shift|Horizontal normalization shift parameter x_ns (3 bit unsigned integer) in equation  x_d[7:0] = (((h_count << 4) >> x_ns) * x_normfactor) >> 5|19:16|rw|'h8
||||||cac_x_norm_factor|Horizontal scaling factor x_normfactor (5 bit unsigned integer) range 0 .. 31 in equation  x_d[7:0] = (((h_count << 4) >> x_ns) * x_normfactor) >> 5|4:0|rw|'h10
|ISP_CAC_Y_NORM|Normalization Parameters for Calculation of Image Coordinate y_d|0x00000888|32|rw|cac_y_norm_shift|Vertical normalization shift parameter y_ns (3 bit unsigned integer) in equation  y_d[7:0] = (((v_count << 4) >> y_ns) * y_normfactor) >> 5|19:16|rw|'h8
||||||cac_y_norm_factor|Vertical scaling factor y_normfactor (5 bit unsigned integer) range 0 .. 31 in equation  y_d[7:0] = (((v_count << 4) >> y_ns) * y_normfactor) >> 5|4:0|rw|'h10
|ISP_GAMMA_OUT_MODE|Gamma segmentation mode register for output gamma|0x00000900|32|rw|equ_segm|0: logarithmic like segmentation of gamma curve (default after reset) segmentation from 0 to 4095: 64 64 64 64 128 128 128 128 256 256 256 512 512 512 512 512 1: equidistant segmentation (all 16 segments are 256) |0|rw|'h0
|ISP_GAMMA_OUT_Y_0|Gamma Out Curve definition y|0x00000904|32|rw|gamma_out_y0|Gamma_out curve point definition y-axis (output) for all color components (red,green,blue) RESTRICTION: The difference between two Y_n (dy = Y_n - Y_n-1) is restricted to +511/-512 (10 bit signed).|9:0|rw|'h000
|ISP_GAMMA_OUT_Y_1|Gamma Out Curve definition y|0x00000908|32|rw|gamma_out_y1|Gamma_out curve point definition y-axis (output) for all color components (red,green,blue) RESTRICTION: The difference between two Y_n (dy = Y_n - Y_n-1) is restricted to +511/-512 (10 bit signed).|9:0|rw|'h049
|ISP_GAMMA_OUT_Y_2|Gamma Out Curve definition y|0x0000090c|32|rw|gamma_out_y2|Gamma_out curve point definition y-axis (output) for all color components (red,green,blue) RESTRICTION: The difference between two Y_n (dy = Y_n - Y_n-1) is restricted to +511/-512 (10 bit signed).|9:0|rw|'h089
|ISP_GAMMA_OUT_Y_3|Gamma Out Curve definition y|0x00000910|32|rw|gamma_out_y3|Gamma_out curve point definition y-axis (output) for all color components (red,green,blue) RESTRICTION: The difference between two Y_n (dy = Y_n - Y_n-1) is restricted to +511/-512 (10 bit signed).|9:0|rw|'h0b7
|ISP_GAMMA_OUT_Y_4|Gamma Out Curve definition y|0x00000914|32|rw|gamma_out_y4|Gamma_out curve point definition y-axis (output) for all color components (red,green,blue) RESTRICTION: The difference between two Y_n (dy = Y_n - Y_n-1) is restricted to +511/-512 (10 bit signed).|9:0|rw|'h0df
|ISP_GAMMA_OUT_Y_5|Gamma Out Curve definition y|0x00000918|32|rw|gamma_out_y5|Gamma_out curve point definition y-axis (output) for all color components (red,green,blue) RESTRICTION: The difference between two Y_n (dy = Y_n - Y_n-1) is restricted to +511/-512 (10 bit signed).|9:0|rw|'h11f
|ISP_GAMMA_OUT_Y_6|Gamma Out Curve definition y|0x0000091c|32|rw|gamma_out_y6|Gamma_out curve point definition y-axis (output) for all color components (red,green,blue) RESTRICTION: The difference between two Y_n (dy = Y_n - Y_n-1) is restricted to +511/-512 (10 bit signed).|9:0|rw|'h154
|ISP_GAMMA_OUT_Y_7|Gamma Out Curve definition y|0x00000920|32|rw|gamma_out_y7|Gamma_out curve point definition y-axis (output) for all color components (red,green,blue) RESTRICTION: The difference between two Y_n (dy = Y_n - Y_n-1) is restricted to +511/-512 (10 bit signed).|9:0|rw|'h183
|ISP_GAMMA_OUT_Y_8|Gamma Out Curve definition y|0x00000924|32|rw|gamma_out_y8|Gamma_out curve point definition y-axis (output) for all color components (red,green,blue) RESTRICTION: The difference between two Y_n (dy = Y_n - Y_n-1) is restricted to +511/-512 (10 bit signed).|9:0|rw|'h1ad
|ISP_GAMMA_OUT_Y_9|Gamma Out Curve definition y|0x00000928|32|rw|gamma_out_y9|Gamma_out curve point definition y-axis (output) for all color components (red,green,blue) RESTRICTION: The difference between two Y_n (dy = Y_n - Y_n-1) is restricted to +511/-512 (10 bit signed).|9:0|rw|'h1f6
|ISP_GAMMA_OUT_Y_10|Gamma Out Curve definition y|0x0000092c|32|rw|gamma_out_y10|Gamma_out curve point definition y-axis (output) for all color components (red,green,blue) RESTRICTION: The difference between two Y_n (dy = Y_n - Y_n-1) is restricted to +511/-512 (10 bit signed).|9:0|rw|'h235
|ISP_GAMMA_OUT_Y_11|Gamma Out Curve definition y|0x00000930|32|rw|gamma_out_y11|Gamma_out curve point definition y-axis (output) for all color components (red,green,blue) RESTRICTION: The difference between two Y_n (dy = Y_n - Y_n-1) is restricted to +511/-512 (10 bit signed).|9:0|rw|'h26f
|ISP_GAMMA_OUT_Y_12|Gamma Out Curve definition y|0x00000934|32|rw|gamma_out_y12|Gamma_out curve point definition y-axis (output) for all color components (red,green,blue) RESTRICTION: The difference between two Y_n (dy = Y_n - Y_n-1) is restricted to +511/-512 (10 bit signed).|9:0|rw|'h2d3
|ISP_GAMMA_OUT_Y_13|Gamma Out Curve definition y|0x00000938|32|rw|gamma_out_y13|Gamma_out curve point definition y-axis (output) for all color components (red,green,blue) RESTRICTION: The difference between two Y_n (dy = Y_n - Y_n-1) is restricted to +511/-512 (10 bit signed).|9:0|rw|'h32a
|ISP_GAMMA_OUT_Y_14|Gamma Out Curve definition y|0x0000093c|32|rw|gamma_out_y14|Gamma_out curve point definition y-axis (output) for all color components (red,green,blue) RESTRICTION: The difference between two Y_n (dy = Y_n - Y_n-1) is restricted to +511/-512 (10 bit signed).|9:0|rw|'h378
|ISP_GAMMA_OUT_Y_15|Gamma Out Curve definition y|0x00000940|32|rw|gamma_out_y15|Gamma_out curve point definition y-axis (output) for all color components (red,green,blue) RESTRICTION: The difference between two Y_n (dy = Y_n - Y_n-1) is restricted to +511/-512 (10 bit signed).|9:0|rw|'h3bf
|ISP_GAMMA_OUT_Y_16|Gamma Out Curve definition y|0x00000944|32|rw|gamma_out_y16|Gamma_out curve point definition y-axis (output) for all color components (red,green,blue) RESTRICTION: The difference between two Y_n (dy = Y_n - Y_n-1) is restricted to +511/-512 (10 bit signed).|9:0|rw|'h3ff
|ISP_AWB_PROP|Auto white balance properties|0x00000950|32|rw|awb_meas_mode|1: RGB based measurement mode 0: near white discrimination mode using YCbCr color space|31|rw|'h0
||||||awb_max_en|0: disable; 1: enable Not valid in RGB measurement mode.|2|rw|'h0
||||||awb_mode|00: no measurement  01: reserved 10: measurement of YCbCr means (AWB_MEAS_MODE = 0) or RGB means (AWB_MEAS_MODE = 1) 11: reserved|1:0|rw|'h0
|ISP_AWB_H_OFFS|Auto white balance horizontal offset of measure window|0x00000954|32|rw|h_offs|Horizontal window offset in pixels|12:0|rw|'h0
|ISP_AWB_V_OFFS|Auto white balance vertical offset of measure window|0x00000958|32|rw|v_offs|Vertical window offset in lines|12:0|rw|'h0
|ISP_AWB_H_SIZE|Auto white balance horizontal window size|0x0000095c|32|rw|h_size|Horizontal measurement of window size in pixels|13:0|rw|'h0
|ISP_AWB_V_SIZE|Auto white balance vertical window size|0x00000960|32|rw|v_size|Vertical measurement of window size in lines|13:0|rw|'h0
|ISP_AWB_FRAMES|Auto white balance mean value over multiple frames|0x00000964|32|rw|awb_frames|Number of frames - 1 used for mean value calculation   (a value of 0 means 1 frame; a value of 7 means 8 frames)|2:0|rw|'h0
|ISP_AWB_REF|Auto white balance reference Cb/Cr values|0x00000968|32|rw|awb_ref_cr__max_r|Reference Cr value for AWB regulation; target for AWB - maximum red value, if RGB measurement mode is selected|15:8|rw|'h80
||||||awb_ref_cb__max_b|Reference Cb value for AWB regulation; target for AWB - maximum red value, if RGB measurement mode is selected|7:0|rw|'h80
|ISP_AWB_THRESH|Auto white balance threshold values|0x0000096c|32|rw|awb_max_y|Luminance maximum value, only consider pixels with luminance smaller than threshold for the White Balance measurement (must be enabled by  register AWB_MODE bit AWB_MAX_EN). Not valid for RGB measurement mode.|31:24|rw|'he9
||||||awb_min_y__max_g|Luminance minimum value, only consider pixels with luminance  greater than threshold for the White Balance measurement -  Maximum green value, if RGB measurement mode is selected|23:16|rw|'hc0
||||||awb_max_csum|Chrominance sum maximum value, only consider pixels with Cb+Cr  Smaller than threshold for White Balance measurements|15:8|rw|'h10
||||||awb_min_c|Chrominance minimum value, only consider pixels with Cb/Cr each  Greater than threshold value for White Balance measurements|7:0|rw|'h10
|ISP_AWB_WHITE_CNT|Auto white balance white pixel count|0x00000980|32|ro|awb_white_cnt|White pixel count, number of "white pixels" found during last measurement,  I.e. pixels included in mean value calculation|27:0|ro|'h0
|ISP_AWB_MEAN|Auto white balance measured mean value|0x00000984|32|ro|awb_mean_y__g|Mean value of Cb within window and frames- Mean value of blue, If RGB measurement mode is selected|23:16|ro|'h0
||||||awb_mean_cb__b|Mean value of Cr within window and frames-  Mean value of red, if RGB measurement mode is selected|15:8|ro|'h0
||||||awb_mean_cr__r|Mean value of Y within window and frames-  mean value of green, if RGB measurement mode is selected|7:0|ro|'h0
|ISP_CC_COEFF_0||0x00000a00|32|rw|cc_coeff0|Coefficient 0 for color space conversion|8:0|rw|'h21
|ISP_CC_COEFF_1||0x00000a04|32|rw|cc_coeff1|Coefficient 1 for color space conversion|8:0|rw|'h40
|ISP_CC_COEFF_2||0x00000a08|32|rw|cc_coeff2|Coefficient 2 for color space conversion|8:0|rw|'hd
|ISP_CC_COEFF_3||0x00000a0c|32|rw|cc_coeff3|Coefficient 3 for color space conversion|8:0|rw|'h1ed
|ISP_CC_COEFF_4||0x00000a10|32|rw|cc_coeff4|Coefficient 4 for color space conversion|8:0|rw|'h1db
|ISP_CC_COEFF_5||0x00000a14|32|rw|cc_coeff5|Coefficient 5 for color space conversion|8:0|rw|'h38
|ISP_CC_COEFF_6||0x00000a18|32|rw|cc_coeff6|Coefficient 6 for color space conversion|8:0|rw|'h38
|ISP_CC_COEFF_7||0x00000a1c|32|rw|cc_coeff7|Coefficient 7 for color space conversion|8:0|rw|'h1d1
|ISP_CC_COEFF_8||0x00000a20|32|rw|cc_coeff8|Coefficient 8 for color space conversion|8:0|rw|'h1f7
|FORMAT_CONV_CTRL|output contro register|0x00000a24|32|rw|y_only|0: output y and c data from format conv 1: only output Y data|0|rw|'h0
|ISP_CT_COEFF_0|Cross-talk configuration register (color correction matrix)|0x00000a30|32|rw|ct_coeff0|Coefficient for cross talk matrix. Values are 11-bit signed fixed-point numbers with 4 bit integer and 7 bit fractional part, ranging from -8 (0x400) to +7.992 (0x3FF).  0 is represented by 0x000 and a coefficient value of 1 as 0x080.|10:0|rw|'h80
|ISP_CT_COEFF_1|Cross-talk configuration register (color correction matrix)|0x00000a34|32|rw|ct_coeff1|Coefficient for cross talk matrix. Values are 11-bit signed fixed-point numbers with 4 bit integer and 7 bit fractional part, ranging from -8 (0x400) to +7.992 (0x3FF).  0 is represented by 0x000 and a coefficient value of 1 as 0x080.|10:0|rw|'h0
|ISP_CT_COEFF_2|Cross-talk configuration register (color correction matrix)|0x00000a38|32|rw|ct_coeff2|Coefficient for cross talk matrix. Values are 11-bit signed fixed-point numbers with 4 bit integer and 7 bit fractional part, ranging from -8 (0x400) to +7.992 (0x3FF).  0 is represented by 0x000 and a coefficient value of 1 as 0x080.|10:0|rw|'h0
|ISP_CT_COEFF_3|Cross-talk configuration register (color correction matrix)|0x00000a3c|32|rw|ct_coeff3|Coefficient for cross talk matrix. Values are 11-bit signed fixed-point numbers with 4 bit integer and 7 bit fractional part, ranging from -8 (0x400) to +7.992 (0x3FF).  0 is represented by 0x000 and a coefficient value of 1 as 0x080.|10:0|rw|'h0
|ISP_CT_COEFF_4|Cross-talk configuration register (color correction matrix)|0x00000a40|32|rw|ct_coeff4|Coefficient for cross talk matrix. Values are 11-bit signed fixed-point numbers with 4 bit integer and 7 bit fractional part, ranging from -8 (0x400) to +7.992 (0x3FF).  0 is represented by 0x000 and a coefficient value of 1 as 0x080.|10:0|rw|'h80
|ISP_CT_COEFF_5|Cross-talk configuration register (color correction matrix)|0x00000a44|32|rw|ct_coeff5|Coefficient for cross talk matrix. Values are 11-bit signed fixed-point numbers with 4 bit integer and 7 bit fractional part, ranging from -8 (0x400) to +7.992 (0x3FF).  0 is represented by 0x000 and a coefficient value of 1 as 0x080.|10:0|rw|'h0
|ISP_CT_COEFF_6|Cross-talk configuration register (color correction matrix)|0x00000a48|32|rw|ct_coeff6|Coefficient for cross talk matrix. Values are 11-bit signed fixed-point numbers with 4 bit integer and 7 bit fractional part, ranging from -8 (0x400) to +7.992 (0x3FF).  0 is represented by 0x000 and a coefficient value of 1 as 0x080.|10:0|rw|'h0
|ISP_CT_COEFF_7|Cross-talk configuration register (color correction matrix)|0x00000a4c|32|rw|ct_coeff7|Coefficient for cross talk matrix. Values are 11-bit signed fixed-point numbers with 4 bit integer and 7 bit fractional part, ranging from -8 (0x400) to +7.992 (0x3FF).  0 is represented by 0x000 and a coefficient value of 1 as 0x080.|10:0|rw|'h0
|ISP_CT_COEFF_8|Cross-talk configuration register (color correction matrix)|0x00000a50|32|rw|ct_coeff8|Coefficient for cross talk matrix. Values are 11-bit signed fixed-point numbers with 4 bit integer and 7 bit fractional part, ranging from -8 (0x400) to +7.992 (0x3FF).  0 is represented by 0x000 and a coefficient value of 1 as 0x080.|10:0|rw|'h80
|ISP_CT_OFFSET_R|Cross-talk offset red|0x00000a54|32|rw|ct_offset_r|Red offset for the cross talk matrix.  Two's complement integer number ranging from -2048 (0x800) to 2047 (0x7FF). 0 is represented as 0x000.|11:0|rw|'h0
|ISP_CT_OFFSET_G|Cross-talk offset green|0x00000a58|32|rw|ct_offset_g|Green offset for the cross talk matrix.  Two's complement integer number ranging from -2048 (0x800) to 2047 (0x7FF). 0 is represented as 0x000.|11:0|rw|'h0
|ISP_CT_OFFSET_B|Cross-talk offset blue|0x00000a5c|32|rw|ct_offset_b|Blue offset for the cross talk matrix.  Two's complement integer number ranging from -2048 (0x800) to 2047 (0x7FF). 0 is represented as 0x000.|11:0|rw|'h0
|ISP_IMSC|Interrupt mask|0x00000b00|32|rw|imsc_exp_end|Exposure measurement complete|18|rw|'h0
||||||imsc_h_start|0: mask out; 1: enable interrupt|7|rw|'h0
||||||imsc_v_start|0: mask out; 1: enable interrupt|6|rw|'h0
||||||imsc_frame_in|0: mask out; 1: enable interrupt|5|rw|'h0
||||||imsc_awb_done|0: mask out; 1: enable interrupt|4|rw|'h0
||||||imsc_size_err|0: mask out; 1: enable interrupt|3|rw|'h0
||||||imsc_dataloss|0: mask out; 1: enable interrupt|2|rw|'h0
|ISP_RIS|Raw interrupt status|0x00000b04|32|ro|ris_exp_end|Exposure measurement complete|18|ro|'h0
||||||ris_h_start|Start edge of h_sync|7|ro|'h0
||||||ris_v_start|Start edge of v_sync|6|ro|'h0
||||||ris_frame_in|Sampled input frame is complete|5|ro|'h0
||||||ris_awb_done|White balancing measurement cycle is complete; results can be read out|4|ro|'h0
||||||ris_size_err|Picture size violation occurred; incorrect programming|3|ro|'h0
||||||ris_dataloss|Loss of data occurred within a line, processing failure|2|ro|'h0
|ISP_MIS|Masked interrupt status|0x00000b08|32|ro|mis_exp_end|Exposure measurement complete|18|ro|'h0
||||||mis_h_start|Start edge of h_sync|7|ro|'h0
||||||mis_v_start|Start edge of v_sync|6|ro|'h0
||||||mis_frame_in|Sampled input frame is complete|5|ro|'h0
||||||mis_awb_done|White balancing measurement cycle is complete; results can be read out|4|ro|'h0
||||||mis_size_err|Picture size violation occurred; incorrect programming|3|ro|'h0
||||||mis_dataloss|Loss of data occurred within a line, processing failure|2|ro|'h0
|ISP_ICR|Interrupt clear register|0x00000b0c|32|wo|icr_exp_end|Clear interrupt|18|wo|'h0
||||||icr_h_start|Clear interrupt|7|wo|'h0
||||||icr_v_start|Clear interrupt|6|wo|'h0
||||||icr_frame_in|Clear interrupt|5|wo|'h0
||||||icr_awb_done|Clear interrupt|4|wo|'h0
||||||icr_size_err|Clear interrupt|3|wo|'h0
||||||icr_dataloss|Clear interrupt|2|wo|'h0
|ISP_ISR|Interrupt set register|0x00000b10|32|wo|isr_exp_end|Set interrupt|18|wo|'h0
||||||isr_h_start|Set interrupt|7|wo|'h0
||||||isr_v_start|Set interrupt|6|wo|'h0
||||||isr_frame_in|Set interrupt|5|wo|'h0
||||||isr_awb_done|Set interrupt|4|wo|'h0
||||||isr_size_err|Set interrupt|3|wo|'h0
||||||isr_dataloss|Set interrupt|2|wo|'h0
|ISP_ERR|ISP error register|0x00000b14|32|ro|crop_size_err|Size error is generated in crop submodule|2|ro|'h0
||||||inform_size_err|Size error is generated in inform submodule|0|ro|'h0
|ISP_ERR_CLR|ISP error clear register|0x00000b18|32|wo|crop_size_err_clr|Size error is cleared|2|wo|'h0
||||||inform_size_err_clr|Size error is cleared|0|wo|'h0
|MI_CTRL|Global control register|0x00000e00|32|rw|sp_output_format|Self path output format 000: YCbCr 4:0:0  not supported 001: YCbCr 4:2:0  not supported 010: YCbCr 4:2:2   011: YCbCr 4:4:4 100: RGB565  101: RGB666  110: RGB888 111: Reserved|30:28|rw|'h0
||||||sp_input_format|Self Path  input format 00: YCbCr 4:0:0  Not supported 01: YCbCr 4:2:0  Not supported 10: YCbCr 4:2:2    11: YCbCr 4:4:4|27:26|rw|'h0
||||||sp_write_format|Defines how YCbCr self picture data is written to memory.  In YCbCr mode the following meaning is applicable: 00: Planar, only support 4:4:4 01: Semi planar, for YCbCr 4:2:x 10: Interleaved (combined), for YCbCr 4:2:2 only 11: YUV only In RAW data mode the following meaning is applicable: 00: RAW 8 bit 01: RAW 10 bit 10: RAW 12bit 11: Reserved Note: Programmed value becomes effective immediately. So write to the register only if no picture data is sent to the main path. |25:24|rw|'h0
||||||mp_write_format|Defines how YCbCr main picture data is written to memory.  In YCbCr mode the following meaning is applicable: 00: Planar 01: Semi planar, for YCbCr 4:2:x 10: Interleaved (combined), for YCbCr 4:2:2 only 11: YUV only In RAW data mode the following meaning is applicable: 00: RAW 8 bit 01: RAW 10 bit 10: RAW 12bit 11: Reserved Note: Programmed value becomes effective immediately. So write to the register only if no picture data is sent to the main path. |23:22|rw|'h0
||||||init_offset_en|Enables updating of the offset counters shadow registers for main and self picture to the programmed register init values.  MI_MP/SP_Y/CB/CR_OFFS_CNT_INIT-> MI_MP/SP_Y/CB/CR_OFFS_CNT_SHD The update will be executed either when a forced software update occurs (in register MI_INIT bit cfg_upd = 1) or when an automatic config update signal arrives at the MI input port. The latter is split into main and self picture. So only the corresponding main/self shadow registers are affected. After a picture skip has been performed init_offset_en selects between skip restart and skip init mode (see bit skip in register MI_INIT). |21|rw|'h0
||||||init_base_en|Enables updating of the base address and buffer size shadow registers for main and self picture to the programmed register init values. MI_MP/SP_Y/CB/CR_BASE_AD_INIT ->MI_MP/SP_Y/CB/CR_BASE_AD_SHD MI_MP/SP_Y/CB/CR_SIZE_INIT-> MI_MP/SP_Y/CB/CR_SIZE_SHD The update will be executed either when a forced software update occurs (in register MI_INIT bit cfg_upd = 1) or when an automatic config update signal arrives at the MI input port. The latter is split into main and self picture. So only the corresponding main/self shadow registers are affected. |20|rw|'h0
||||||burst_len_chrom|Burst length for Cb or Cr data affecting write port. 00: 4-beat bursts 01: 8-beat bursts 10: 16-beat bursts 11: Reserved Ignored if 8- or 16-beat bursts are not supported. If rotation is active, then only 4-beat bursts will be generated in self path, regardless of the setting here. Note: Programmed value becomes effective immediately. So write to the register only if no picture data is sent to the main and self path. |19:18|rw|'h0
||||||burst_len_lum|Burst length for Y, JPEG, or raw data affecting write port. 00: 4-beat bursts 01: 8-beat bursts 10: 16-beat bursts 11: Reserved Ignored if 8- or 16-beat bursts are not supported. Note: Programmed value becomes effective immediately. So write to the register only if no picture data is sent to the main and self path. |17:16|rw|'h0
||||||sp_auto_update|Unused |14|rw|'h0
||||||mp_auto_update|Automatic update of configuration registers for main path at frame end. 0: Disabled; 1: enabled |13|rw|'h0
||||||sp_pingpong_enable|Unused |12|rw|'h0
||||||mp_pingpong_enable|Pingpong mode of configuration registers for main path at frame end. 0: Disabled; 1: enabled |11|rw|'h0
||||||path_enable|Enables data paths of Memory Interface according to the following table: 0000: Disabled, no data is transferred 0001: YUV data output, mainpath only (mp_enable only) 1000: RAW data output, mainpath only (raw_enable only) 1101: Reserved The programmed value becomes effective (visible in shadow register) after a soft reset, a forced software update or an automatic configuration update. Affects the MI_IN and MI_OUT module.  |3:0|rw|'h0
|MI_INIT|Control register for address init and skip function|0x00000e04|32|rw|mp_output_format|Selects output format of main picture. 0000: YCbCr 4:0:0 0001: YCbCr 4:2:0  0010: YCbCr 4:2:2  0101: RAW 8  0100: RAW 12 0111: RAW 10|8:5|rw|'h0
||||||mi_cfg_upd|Forced configuration update. Leads to an immediate update of the shadow registers. Depending on the two init enable bits in the MI_CTRL register (init_offset_en and init_base_en) the offset counter, base address and buffer size shadow registers are also updated.|4|wo|'h0
||||||mi_skip|Skip of current or next starting main picture: - Aborts writing of main picture image data of the current frame to RAM (after the current burst transmission has been completed). Further main picture data up to the end of the current frame are discarded. - No further macroblock line interrupt (mblk_line), no wrap around interrupt for main picture (wrap_mp_y/cb/cr) and no fill level interrupt (fill_mp_y) are generated. - Skip does not affect the generation of the main path frame end interrupt (mp_frame_end). - Skip does not affect the processing of self picture and its corresponding interrupts namely the self path frame end interrupt (sp_frame_end). - The byte counter (register MI_BYTE_CNT) is not affected. It produces the correct number of JPEG or RAW data bytes at the end of the current (skipped) frame. - After a skip has been performed, the offset counter for the main picture at the start of the following frame are set depending on the bit init_offset_en in register MI_CTRL: • Skip restart mode (init_offset_en = 0) The offset counters of the main picture are restarted at the old start values of the previous skipped frame. • Skip init mode (init_offset_en = 1) The offset counters of the main picture are initialized with the register contents of the offset counter init registers without any additional forced software update or automatic config update. |2|wo|'h0
|MI_MP_Y_BASE_AD_INIT|Base address for main picture Y component, JPEG or raw data|0x00000e08|32|rw|mp_y_base_ad_init|Base address of main picture Y component ring buffer, JPEG ring buffer or raw data ring buffer. Programmed value becomes effective (visible in corresponding shadow register) after a soft reset, a forced software update or an automatic configuration update. |31:3|rw|'h0
|MI_MP_Y_SIZE_INIT|Size of main picture Y component, JPEG or raw data|0x00000e0c|32|rw|mp_y_size_init|Size of main picture Y component ring buffer, JPEG ring buffer or raw data ring buffer. Programmed value becomes effective (visible in corresponding shadow register) after a soft reset, a forced software update or an automatic configuration update. |28:3|rw|'h0
|MI_MP_Y_OFFS_CNT_INIT|Offset counter init value for main picture Y, JPEG or raw data|0x00000e10|32|rw|mp_y_offs_cnt_init|Offset counter init value of main picture Y component ring buffer, JPEG ring buffer or raw data ring buffer. Programmed value becomes effective (visible in corresponding shadow register) after a soft reset, a forced software update or an automatic configuration update. |28:3|rw|'h0
|MI_MP_Y_OFFS_CNT_START|Offset counter start value for main picture Y, JPEG or raw data|0x00000e14|32|ro|mp_y_offs_cnt_start|Offset counter value which points to the start address of the previously processed picture (main picture Y component, JPEG or raw data). Updated at frame end. Note: A soft reset resets the contents to the reset value. |28:3|ro|'h0
|MI_MP_Y_IRQ_OFFS_INIT|Fill level interrupt offset value for main picture Y, JPEG or raw data|0x00000e18|32|rw|mp_y_irq_offs_init|Reaching this programmed value by the current offset counter for addressing main picture Y component, JPEG or raw data leads to the generation of fill level interrupt fill_mp_y. Programmed value becomes effective (visible in corresponding shadow register) after a soft reset, a forced software update or an automatic configuration update. |28:3|rw|'h0
|MI_MP_CB_BASE_AD_INIT|Base address for main picture Cb component ring buffer|0x00000e1c|32|rw|mp_cb_base_ad_init|Base address of main picture Cb component ring buffer. Programmed value becomes effective (visible in corresponding shadow register) after a soft reset, a forced software update or an automatic config update. Note: Set control bit init_base_en before updating so that a forced or automatic update can take effect. |31:3|rw|'h0
|MI_MP_CB_SIZE_INIT|Size of main picture Cb component ring buffer|0x00000e20|32|rw|mp_cb_size_init|Size of main picture Cb component ring buffer. Programmed value becomes effective (visible in corresponding shadow register) after a soft reset, a forced software update or an automatic config update. Note: Set control bit init_base_en before updating so that a forced or automatic update can take effect. |27:3|rw|'h0
|MI_MP_CB_OFFS_CNT_INIT|Offset counter init value for main picture Cb component ring buffer|0x00000e24|32|rw|mp_cb_offs_cnt_init|Offset counter init value of main picture Cb component ring buffer. Programmed value becomes effective (visible in corresponding shadow register) after a soft reset, a forced software update or an automatic configuration update. Note: Set control bit init_base_en before updating so that a forced or automatic update can take effect. Check exceptionhandling in skip modes. |27:3|rw|'h0
|MI_MP_CB_OFFS_CNT_START|Offset counter start value for main picture Cb component ring buffer|0x00000e28|32|ro|mp_cb_offs_cnt_start|Offset counter value which points to the start address of the previously processed picture (main picture Cb component). Updated at frame end.|27:3|ro|'h0
|MI_MP_CR_BASE_AD_INIT|Base address for main picture Cr component ring buffer|0x00000e2c|32|rw|mp_cr_base_ad_init|Base address of main picture Cr component ring buffer. Programmed value becomes effective (visible in corresponding shadow register) after a soft reset, a forced software update or an automatic config update. Note: Set control bit init_base_en before updating so that a forced or automatic update can take effect. |31:3|rw|'h0
|MI_MP_CR_SIZE_INIT|Size of main picture Cr component ring buffer|0x00000e30|32|rw|mp_cr_size_init|Size of main picture Cr component ring buffer. Programmed value becomes effective (visible in corresponding shadow register) after a soft reset, a forced software update or an automatic configuration update. Note: Set control bit init_base_en before updating so that a forced or automatic update can take effect. |27:3|rw|'h0
|MI_MP_CR_OFFS_CNT_INIT|Offset counter init value for main picture Cr component ring buffer|0x00000e34|32|rw|mp_cr_offs_cnt_init|Offset counter init value of main picture Cr component ring buffer. Programmed value becomes effective (visible in corresponding shadow register) after a soft reset, a forced software update or an automatic configuration update. Note: Set control bit init_base_en before updating so that a forced or automatic update can take effect. Check exception handling in skip modes. |27:3|rw|'h0
|MI_MP_CR_OFFS_CNT_START|Offset counter start value for main picture Cr component ring buffer|0x00000e38|32|ro|mp_cr_offs_cnt_start|Offset counter value which points to the start address of the previously processed picture (main picture Cr component). Updated at frame end. Note: Soft reset will reset the contents to the reset value. |27:3|ro|'h0
|MI_BYTE_CNT|Counter value of JPEG or RAW data bytes |0x00000e70|32|ro|byte_cnt|Counter value specifies the number of JPEG or RAW data bytes of the last transmitted frame. Updated at frame end. A soft reset will set the byte counter to zero.|27:0|ro|'h0
|MI_CTRL_SHD|Global control internal shadow register|0x00000e74|32|ro|path_enable_out|Path_enable shadow register for module MI_OUT (former raw_enable_out, jpeg_enable_out, sp_enable_out, mp_enable_out)|19:16|ro|'h0
||||||path_enable_in|Path_enable shadow register for module MI_IN (former raw_enable_in, jpeg_enable_in, sp_enable_in, mp_enable_in)|3:0|ro|'h0
|MI_MP_Y_BASE_AD_SHD|Base address shadow register for main picture Y component, JPEG or raw data ring buffer|0x00000e78|32|ro|mp_y_base_ad|Base address of main picture Y component ring buffer, JPEG ring buffer or raw data ring buffer.|31:3|ro|'h0
|MI_MP_Y_SIZE_SHD|Size shadow register of main picture Y component, JPEG or raw data|0x00000e7c|32|ro|mp_y_size|Size of main picture Y component ring buffer, JPEG ring buffer or raw data ring buffer.|28:3|ro|'h0
|MI_MP_Y_OFFS_CNT_SHD|Current offset counter of main picture Y component, JPEG or raw data ring buffer|0x00000e80|32|ro|mp_y_offs_cnt|Current offset counter of main picture Y component, JPEG or raw data ring buffer for address generation. Note: Soft reset will reset the contents to the reset value. |28:3|ro|'h0
|MI_MP_Y_IRQ_OFFS_SHD|Shadow register of fill level interrupt offset value for main picture Y component, JPEG or raw data|0x00000e84|32|ro|mp_y_irq_offs|Reaching this offset value by the current offset counter for addressing the main picture Y component, JPEG or raw data leads to the generation of fill level interrupt fill_mp_y.|28:3|ro|'h0
|MI_MP_CB_BASE_AD_SHD|Base address shadow register for main picture Cb component ring buffer|0x00000e88|32|ro|mp_cb_base_ad|Base address of main picture Cb component ring buffer.|31:3|ro|'h0
|MI_MP_CB_SIZE_SHD|Size shadow register of main picture Cb component ring buffer|0x00000e8c|32|ro|mp_cb_size|Size of main picture Cb component ring buffer.|27:3|ro|'h0
|MI_MP_CB_OFFS_CNT_SHD|Current offset counter of main picture Cb component ring buffer|0x00000e90|32|ro|mp_cb_offs_cnt|Current offset counter of main picture Cb component ring buffer for address generation. Note: Soft reset will reset the contents to the reset value. |27:3|ro|'h0
|MI_MP_CR_BASE_AD_SHD|Base address shadow register for main picture Cr component ring buffer|0x00000e94|32|ro|mp_cr_base_ad|Base address of main picture Cr component ring buffer.|31:3|ro|'h0
|MI_MP_CR_SIZE_SHD|Size shadow register of main picture Cr component ring buffer|0x00000e98|32|ro|mp_cr_size|Size of main picture Cr component ring buffer.|27:3|ro|'h0
|MI_MP_CR_OFFS_CNT_SHD|Current offset counter of main picture Cr component ring buffer|0x00000e9c|32|ro|mp_cr_offs_cnt|Current offset counter of main picture Cr component ring buffer for address generation. Note: Soft reset will reset the contents to the reset value. |27:3|ro|'h0
|MI_IMSC|Interrupt Mask („1‟: interrupt active, „0‟: interrupt masked)|0x00000ef8|32|rw|wrap_sp_cr|Mask bit for self picture Cr address wrap interrupt|9|rw|'h0
||||||wrap_sp_cb|Mask bit for self picture Cb address wrap interrupt|8|rw|'h0
||||||wrap_sp_y|Mask bit for self picture Y address wrap interrupt|7|rw|'h0
||||||wrap_mp_cr|Mask bit for main picture Cr address wrap interrupt|6|rw|'h0
||||||wrap_mp_cb|Mask bit for main picture Cb address wrap interrupt|5|rw|'h0
||||||wrap_mp_y|Mask bit for main picture Y address wrap interrupt|4|rw|'h0
||||||fill_mp_y|Mask bit for fill level interrupt of main picture Y, JPEG or raw data|3|rw|'h0
||||||mblk_line|Mask bit for macroblock line interrupt of main picture  (16 lines of Y, 8 lines of Cb and 8 lines of Cr are written into RAM) |2|rw|'h0
||||||sp_frame_end|Mask self picture end of frame interrupt|1|rw|'h0
||||||mp_frame_end|Mask main picture end of frame interrupt|0|rw|'h0
|MI_RIS|Raw Interrupt Status|0x00000efc|32|ro|wrap_sp_cr|Raw status of self picture Cr address wrap interrupt|9|ro|'h0
||||||wrap_sp_cb|Raw status of self picture Cb address wrap interrupt|8|ro|'h0
||||||wrap_sp_y|Raw status of self picture Y address wrap interrupt|7|ro|'h0
||||||wrap_mp_cr|Raw status of main picture Cr address wrap interrupt|6|ro|'h0
||||||wrap_mp_cb|Raw status of main picture Cb address wrap interrupt|5|ro|'h0
||||||wrap_mp_y|Raw status of main picture Y address wrap interrupt|4|ro|'h0
||||||fill_mp_y|Raw status of fill level interrupt of main picture Y, JPEG or raw data|3|ro|'h0
||||||mblk_line|Raw status of macroblock line interrupt of main picture (16 lines of Y, 8 lines of Cb and 8 lines of Cr are written into RAM; valid only for planar and semi-planar mode)|2|ro|'h0
||||||sp_frame_end|Raw status of self picture end of frame interrupt|1|ro|'h0
||||||mp_frame_end|Raw status of main picture end of frame interrupt|0|ro|'h0
|MI_MIS|Masked Interrupt Status|0x00000f00|32|ro|wrap_sp_cr|Masked status of self picture Cr address wrap interrupt|9|ro|'h0
||||||wrap_sp_cb|Masked status of self picture Cb address wrap interrupt|8|ro|'h0
||||||wrap_sp_y|Masked status of self picture Y address wrap interrupt|7|ro|'h0
||||||wrap_mp_cr|Masked status of main picture Cr address wrap interrupt|6|ro|'h0
||||||wrap_mp_cb|Masked status of main picture Cb address wrap interrupt|5|ro|'h0
||||||wrap_mp_y|Masked status of main picture Y address wrap interrupt|4|ro|'h0
||||||fill_mp_y|Masked status of fill level interrupt of main picture Y, JPEG or raw data|3|ro|'h0
||||||mblk_line|Masked status of macroblock line interrupt of main picture (16 lines of Y, 8 lines of Cb and 8 lines of Cr are written into RAM, valid only for planar and semi-planar mode)|2|ro|'h0
||||||sp_frame_end|Masked status of self picture end of frame interrupt|1|ro|'h0
||||||mp_frame_end|Masked status of main picture end of frame interrupt|0|ro|'h0
|MI_ICR|Interrupt Clear Register|0x00000f04|32|wo|wrap_sp_cr|Clear self picture Cr address wrap interrupt|9|wo|'h0
||||||wrap_sp_cb|Clear self picture Cb address wrap interrupt|8|wo|'h0
||||||wrap_sp_y|Clear self picture Y address wrap interrupt|7|wo|'h0
||||||wrap_mp_cr|Clear main picture Cr address wrap interrupt|6|wo|'h0
||||||wrap_mp_cb|Clear main picture Cb address wrap interrupt|5|wo|'h0
||||||wrap_mp_y|Clear main picture Y address wrap interrupt|4|wo|'h0
||||||fill_mp_y|Clear fill level interrupt|3|wo|'h0
||||||mblk_line|Clear macroblock line interrupt|2|wo|'h0
||||||sp_frame_end|Clear self picture end of frame interrupt|1|wo|'h0
||||||mp_frame_end|Clear main picture end of frame interrupt|0|wo|'h0
|MI_ISR|Interrupt Set Register|0x00000f08|32|wo|wrap_sp_cr|Set self picture Cr address wrap interrupt|9|wo|'h0
||||||wrap_sp_cb|Set self picture Cb address wrap interrupt|8|wo|'h0
||||||wrap_sp_y|Set self picture Y address wrap interrupt|7|wo|'h0
||||||wrap_mp_cr|Set main picture Cr address wrap interrupt|6|wo|'h0
||||||wrap_mp_cb|Set main picture Cb address wrap interrupt|5|wo|'h0
||||||wrap_mp_y|Set main picture Y address wrap interrupt|4|wo|'h0
||||||fill_mp_y|Set fill level interrupt|3|wo|'h0
||||||mblk_line|Set macroblock line interrupt|2|wo|'h0
||||||sp_frame_end|Set self picture end of frame interrupt|1|wo|'h0
||||||mp_frame_end|Set main picture end of frame interrupt|0|wo|'h0
|MI_STATUS|MI Status Register|0x00000f0c|32|ro|sp_cr_fifo_full|FIFO full flag of Cr FIFO in self path asserted since last clear|6|ro|'h0
||||||sp_cb_fifo_full|FIFO full flag of Cb FIFO in self path asserted since last clear|5|ro|'h0
||||||sp_y_fifo_full|FIFO full flag of Y FIFO in self path asserted since last clear|4|ro|'h0
||||||mp_cr_fifo_full|FIFO full flag of Cr FIFO in main path asserted since last clear|2|ro|'h0
||||||mp_cb_fifo_full|FIFO full flag of Cb FIFO in main path asserted since last clear|1|ro|'h0
||||||mp_y_fifo_full|FIFO full flag of Y FIFO in main path asserted since last clear|0|ro|'h0
|MI_STATUS_CLR|MI Status Clear Register|0x00000f10|32|wo|sp_cr_fifo_full|Clear status of Cr FIFO full flag in self path|6|wo|'h0
||||||sp_cb_fifo_full|Clear status of Cb FIFO full flag in self path|5|wo|'h0
||||||sp_y_fifo_full|Clear status of Y FIFO full flag in self path|4|wo|'h0
||||||mp_cr_fifo_full|Clear status of Cr FIFO full flag in main path|2|wo|'h0
||||||mp_cb_fifo_full|Clear status of Cb FIFO full flag in main path|1|wo|'h0
||||||mp_y_fifo_full|Clear status of Y FIFO full flag in main path|0|wo|'h0
|MI_MP_Y_BASE_AD_INIT2|Base address 2 (ping pong) for main picture Y component, JPEG or raw data|0x00000f30|32|rw|mp_y_base_ad_init2|2nd ping pong base address of main picture Y component buffer, JPEG buffer or raw data buffer.  Programmed value becomes effective (visible in corresponding shadow register) after a soft reset, a forced software update or an automatic configure update.  Note: Set control bit MI_CTRL.init_base_en[bit 20] before updating so that a forced or automatic update can take effect. |31:3|rw|'h0
|MI_MP_CB_BASE_AD_INIT2|Base address 2 (pingpong) for main picture Cb component|0x00000f34|32|rw|mp_cb_base_ad_init2|2nd ping pong base address of main picture Cb component buffer.  Programmed value becomes effective (visible in corresponding shadow register) after a soft reset, a forced software update or an automatic configure update.  Note: Set control bit MI_CTRL.init_base_en[bit 20]  before updating so that a forced or automatic update can take effect. |31:3|rw|'h0
|MI_MP_CR_BASE_AD_INIT2|Base address 2 (pingpong) for main picture Cr component ring buffer|0x00000f38|32|rw|mp_cr_base_ad_init2|2nd ping pong base address of main picture Cr component buffer.  Programmed value becomes effective (visible in corresponding shadow register) after a soft reset, a forced software update or an automatic configure update.  Note: Set control bit MI_CTRL.init_base_en[bit 20]  before updating so that a forced or automatic update can take effect. |31:3|rw|'h0
|MI_MP_Y_LLENGTH|Base address 2 (pingpong) for main picture Cb component|0x00000f50|32|rw|mp_y_llengh|Line length of main picture Y component in pixel, also known as line stride.  If no line stride is used, line length must match image width.  For the main picture Y component, the line length in 4:2:x planar mode must be a multiple of 8; for all other component modes, the line length must be a multiple of 4  In planar mode, the line length of the Cb and Cr component is assumed according to the YCbCr format, i.e. half for 4:2:x and the same size for 4:4:4. In semi planar 4:2:x mode, the line length of the Cb and Cr component is assumed to be the same size. |14:0|rw|'h0
|MI_OUTPUT_ALIGN_FORMAT|Output align format for main path|0x00000f5c|32|rw|mp_little_endian|1: little endian 0: big endian|10|rw|'h0
||||||mp_byte_swap|Swap bytes: Bit 0 to swap bytes Bit 1 to swap words Bit 2 to swap dwords 000:  ABCDEFGH => ABCDEFGH 001:  ABCDEFGH => BADCFEHG 010:  ABCDEFGH => CDABGHEF 011:  ABCDEFGH => DCBAHGFE 100:  ABCDEFGH => EFGHABCD 101:  ABCDEFGH => FEHGBADC 110:  ABCDEFGH => GHEFCDAB 111:  ABCDEFGH => HGFEDCBA |3:1|rw|'h0
||||||mp_lsb_alignment|0: MSB aligned for RAW10 and RAW12 formats 1: LSB aligned for RAW10 and RAW12 formats |0|rw|'h0
|MI_MP_OUTPUT_FIFO_SIZE|Output FIFO size for main path|0x00000f60|32|rw|mp_output_fifo_size|Select Output FIFO depth setting 00: FULL (2 KBytes) 01: HALF (1 KByte) 10: 1/4 (512 Bytes) 11: 1/8 (256 Bytes) |1:0|rw|'h0
|MI_MP_Y_PIC_WIDTH|Image width of the Y component in pixels for main path|0x00000f64|32|rw|mp_y_pic_width|Image width of the main picture Y component in pixel. For YCbCr 4:2:x the image width must be a multiple of 2. In planar mode the image width of the Cb  and Cr component is assumed according to the YCbCr format, i.e. half for 4:2:x and the same size for 4:4:4. In semi planar 4:2:x mode the image width of the Cb component (which includes Cr) is assumed the same size. In interleave mode no Cb/Cr image width is used.|31:0|rw|'h0
|MI_MP_Y_PIC_HEIGHT|Image height of the Y component in pixels for main path|0x00000f68|32|rw|mp_y_pic_height|Image height of the y component in pixel.  In planar and semi planar mode the image height of the Cb and Cr component is assumed according to the YCbCr format, i.e. half for 4:2:0 and the same for 4:2:2 and 4:4:4. |31:0|rw|'h0
|MI_MP_Y_PIC_SIZE|Image size of the Y component in pixels for main path|0x00000f6c|32|rw|mp_y_pic_size|Image size of the Y component in pixel which has to be the Y line length multiplied by the Y image height (mp_y_llength * mp_y_pic_height).  In planar mode the image size of the Cb and Cr component is assumed according to the YCbCr format, i.e. a quarter for 4:2:0, half for 4:2:2 and the same for 4:4:4. In semi planar mode the image size of the Cb and Cr component is assumed half for 4:2:0 and the same size for 4:2:2. |31:0|rw|'h0
|SRSZ_CTRL|Global control register|0x00001000|32|rw|auto_upd|0: no update;  1: update shadow registers at frame end|9|rw|'h0
||||||cfg_upd|Write 0: nothing happens Write 1: update shadow registers  Read: Always 0|8|wo|'h0
||||||scale_vc_up|0: Vertical chrominance downscaling selected  1: Vertical chrominance upscaling selected|7|rw|'h0
||||||scale_vy_up|0: Vertical luminance downscaling selected  1: Vertical luminance upscaling selected|6|rw|'h0
||||||scale_hc_up|0: Horizontal chrominance downscaling selected  1: Horizontal chrominance upscaling selected|5|rw|'h0
||||||scale_hy_up|0: Horizontal luminance downscaling selected  1: Horizontal luminance upscaling selected|4|rw|'h0
||||||scale_vc_enable|Vertical chrominance scaling unit 0: Bypass; 1: enable|3|rw|'h0
||||||scale_vy_enable|Vertical luminance scaling unit 0: Bypass; 1: enable|2|rw|'h0
||||||scale_hc_enable|Horizontal chrominance scaling unit 0: bypass; 1: enable|1|rw|'h0
||||||scale_hy_enable|Horizontal luminance scaling unit  0: Bypass; 1: enable|0|rw|'h0
|SRSZ_SCALE_HY|Horizontal luminance scale factor register|0x00001004|32|rw|scale_hy|This register is set to the horizontal luminance downscale factor or to the reciprocal of the horizontal luminance upscale factor.|15:0|rw|'h0
|SRSZ_SCALE_HCB|Horizontal Cb scale factor register|0x00001008|32|rw|scale_hcb|This register is set to the horizontal Cb downscale factor or to the reciprocal of the horizontal Cb upscale factor.|15:0|rw|'h0
|SRSZ_SCALE_HCR|Horizontal Cr scale factor register|0x0000100c|32|rw|scale_hcr|This register is set to the horizontal Cr downscale factor or to the reciprocal of the horizontal Cr upscale factor.|15:0|rw|'h0
|SRSZ_SCALE_VY|Vertical luminance scale factor register|0x00001010|32|rw|scale_vy|This register is set to the vertical luminance downscale factor or to the reciprocal of the vertical luminance upscale factor.|15:0|rw|'h0
|SRSZ_SCALE_VC|Vertical chrominance scale factor register|0x00001014|32|rw|scale_vc|This register is set to the vertical chrominance downscale factor or to the reciprocal of the vertical chrominance upscale factor.|15:0|rw|'h0
|SRSZ_PHASE_HY|Horizontal luminance phase register|0x00001018|32|rw|phase_hy|This register is set to the horizontal luminance phase offset.|15:0|rw|'h0
|SRSZ_PHASE_HC|Horizontal chrominance phase register|0x0000101c|32|rw|phase_hc|This register is set to the horizontal chrominance phase offset.|15:0|rw|'h0
|SRSZ_PHASE_VY|Vertical luminance phase register|0x00001020|32|rw|phase_vy|This register is set to the vertical luminance phase offset.|15:0|rw|'h0
|SRSZ_PHASE_VC|Vertical chrominance phase register|0x00001024|32|rw|phase_vc|This register is set to the vertical chrominance phase offset.|15:0|rw|'h0
|SRSZ_SCALE_LUT_ADDR|Address pointer of up-scaling look up table|0x00001028|32|rw|scale_lut_addr|Pointer to entry of upscaling lookup table.|5:0|rw|'h0
|SRSZ_SCALE_LUT|Entry of up-scaling look up table|0x0000102c|32|rw|scale_lut|Entry of lookup table at position scale_lut_addr. The lookup table must be filled with appropriate values before the upscaling functionality can be used.|5:0|rw|'h0
|SRSZ_CTRL_SHD|Global control shadow register|0x00001030|32|ro|scale_vc_up_shd|0: Vertical chrominance downscaling selected  1: Vertical chrominance upscaling selected|7|ro|'h0
||||||scale_vy_up_shd|0: Vertical luminance downscaling selected  1: Vertical luminance upscaling selected|6|ro|'h0
||||||scale_hc_up_shd|0: Horizontal chrominance downscaling selected  1: Horizontal chrominance upscaling selected|5|ro|'h0
||||||scale_hy_up_shd|0: Horizontal luminance downscaling selected  1: Horizontal luminance upscaling selected|4|ro|'h0
||||||scale_vc_enable_shd|Vertical chrominance scaling unit 0: Bypass; 1: enable|3|ro|'h0
||||||scale_vy_enable_shd|Vertical luminance scaling unit 0: Bypass; 1: enable|2|ro|'h0
||||||scale_hc_enable_shd|Horizontal chrominance scaling unit 0: Bypass; 1: enable|1|ro|'h0
||||||scale_hy_enable_shd|Horizontal luminance scaling unit  0: Bypass; 1: enable|0|ro|'h0
|SRSZ_SCALE_HY_SHD|Horizontal luminance scale factor shadow register|0x00001034|32|ro|scale_hy_shd|This register is set to the horizontal luminance downscale factor or to the reciprocal of the horizontal luminance upscale factor.|15:0|ro|'h0
|SRSZ_SCALE_HCB_SHD|Horizontal Cb scale factor shadow register|0x00001038|32|ro|scale_hcb_shd|This register is set to the horizontal Cb downscale factor or to the reciprocal of the horizontal Cb upscale factor.|15:0|ro|'h0
|SRSZ_SCALE_HCR_SHD|Horizontal Cr scale factor shadow register|0x0000103c|32|ro|scale_hcr_shd|This register is set to the horizontal Cr downscale factor or to the reciprocal of the horizontal Cr upscale factor.|15:0|ro|'h0
|SRSZ_SCALE_VY_SHD|Vertical luminance scale factor shadow register|0x00001040|32|ro|scale_vy_shd|This register is set to the vertical luminance downscale factor or to the reciprocal of the vertical luminance upscale factor.|15:0|ro|'h0
|SRSZ_SCALE_VC_SHD|Vertical chrominance scale factor shadow register|0x00001044|32|ro|scale_vc_shd|This register is set to the vertical chrominance downscale factor or to the reciprocal of the vertical chrominance upscale factor.|15:0|ro|'h0
|SRSZ_PHASE_HY_SHD|Horizontal luminance phase shadow register|0x00001048|32|ro|phase_hy_shd|This register is set to the horizontal luminance phase offset.|15:0|ro|'h0
|SRSZ_PHASE_HC_SHD|Horizontal chrominance phase shadow register|0x0000104c|32|ro|phase_hc_shd|This register is set to the horizontal chrominance phase offset.|15:0|ro|'h0
|SRSZ_PHASE_VY_SHD|Vertical luminance phase shadow register|0x00001050|32|ro|phase_vy_shd|This register is set to the vertical luminance phase offset.|15:0|ro|'h0
|SRSZ_PHASE_VC_SHD|Vertical chrominance phase shadow register|0x00001054|32|ro|phase_vc_shd|This register is set to the vertical chrominance phase offset.|15:0|ro|'h0
|SRSZ_FORMAT_CONV_CTRL|Format conversion control|0x0000106c|32|rw|cfg_422nocosited|0: YCbCr422 data are co-sited (Y0 Cb0 and Cr0 are sampled at the same position) 1: YCbCr422 data are non_co-sited (Cb and Cr samples are centered between Y samples)  so modified interpolation is activated Note: the programmed value becomes effective immediately after this register is set.  Therefore, only write to this register if no picture data is sent to the Self Path.|7|rw|'h0
||||||cfg_cbcr_full|0: CbCr has a compressed range of [16..240] 1: CbCr has full range [0..255] Note: the programmed value becomes effective immediately after this register is set.  Therefore, only write to this register if no picture data is sent to the Self Path.|6|rw|'h0
||||||cfg_y_full|0: Y has a compressed range of [16..235] 1: Y has full range [0..255] Note: the programmed value becomes effective immediately after this register is set.  Therefore, only write to this register if no picture data is sent to the Self Path.|5|rw|'h0
||||||rsz_output_format|Main Resize output format 000: YCbCr 4:0:0 001: YCbCr 4:2:0   010: YCbCr 4:2:2   011: YCbCr 4:4:4 100: RGB565,not supported 101: RGB666,not supported 110: RGB888 Reserved|4:2|rw|'h0
||||||rsz_input_format|Main resize input format 00: YCbCr 4:0:0  01: YCbCr 4:2:0    10: YCbCr 4:2:2    11: YCbCr 4:4:4|1:0|rw|'h0
|MI_SP_Y_BASE_AD_INIT|Base address for self path 1 picture Y component ring buffer|0x00000e3c|32|rw|sp_y_base_ad_init|Base address for self path 1 picture Y component ring buffer|31:3|rw|'h0
|MI_SP_Y_SIZE_INIT|Size of self path 1 picture Y component ring buffer|0x00000e40|32|rw|sp_y_size_init|Size of self path 1 picture Y component ring buffer|28:3|rw|'h0
|MI_SP_Y_OFFS_CNT_INIT|Offset counter init value for self path 1 picture Y component ring buffer|0x00000e44|32|rw|sp_y_offs_cnt_init|Offset counter init value for self path 1 picture Y component ring buffer|28:3|rw|'h0
|MI_SP_Y_OFFS_CNT_START|Offset counter start value for self picture 1 component|0x00000e48|32|ro|sp_y_offs_cnt_start|Offset counter start value for self picture 1 component|28:3|ro|'h0
|MI_SP_Y_LLENGTH|Y component original line length|0x00000e4c|32|rw|sp_y_llength|Y component original line length|14:0|rw|'h0
|MI_SP_CB_BASE_AD_INIT|Base address for self path 1 picture CB component ring buffer|0x00000e50|32|rw|sp_cb_base_ad_init|Base address for self path 1 picture CB component ring buffer|31:3|rw|'h0
|MI_SP_CB_SIZE_INIT|Size of self path 1 picture CB component ring buffer|0x00000e54|32|rw|sp_cb_size_init|Size of self path 1 picture CB component ring buffer|27:3|rw|'h0
|MI_SP_CB_OFFS_CNT_INIT|Offset counter init value for self path 1 picture CB component ring buffer|0x00000e58|32|rw|sp_cb_offs_cnt_init|Offset counter init value for self path 1 picture CB component ring buffer|27:3|rw|'h0
|MI_SP_CB_OFFS_CNT_START|Offset counter start value for self picture 1 component|0x00000e5c|32|ro|sp_cb_offs_cnt_start|Offset counter start value for self picture 1 component|27:3|ro|'h0
|MI_SP_CR_BASE_AD_INIT|Base address for self path 1 picture CR component ring buffer|0x00000e60|32|rw|sp_cr_base_ad_init|Base address for self path 1 picture CR component ring buffer|31:3|rw|'h0
|MI_SP_CR_SIZE_INIT|Size of self path 1 picture CR component ring buffer|0x00000e64|32|rw|sp_cr_size_init|Size of self path 1 picture CR component ring buffer|27:3|rw|'h0
|MI_SP_CR_OFFS_CNT_INIT|Offset counter init value for self path 1 picture CR component ring buffer|0x00000e68|32|rw|sp_cr_offs_cnt_init|Offset counter init value for self path 1 picture CR component ring buffer|27:3|rw|'h0
|MI_SP_CR_OFFS_CNT_START|Offset counter start value for self picture 1 component|0x00000e6c|32|ro|sp_cr_offs_cnt_start|Offset counter start value for self picture 1 component|27:3|ro|'h0
|MI_SP_Y_BASE_AD_SHD|Shadow Base address for self path 1 picture Y component ring buffer |0x00000ea0|32|ro|sp_y_base_ad|Shadow Base address for self path 1 picture Y component ring buffer |31:3|ro|'h0
|MI_SP_Y_SIZE_SHD|Shadow Size of self path 1 picture Y component ring buffer|0x00000ea4|32|ro|sp_y_size|Shadow Size of self path 1 picture Y component ring buffer|28:3|ro|'h0
|MI_SP_Y_OFFS_CNT_SHD|Shadow Offset counter init value for self path 1 picture Y component ring buffer|0x00000ea8|32|ro|sp_y_offs_cnt|Shadow Offset counter init value for self path 1 picture Y component ring buffer|28:3|ro|'h0
|MI_SP_CB_BASE_AD_SHD|Shadow Base address for self path 1 picture CB component ring buffer|0x00000eb0|32|ro|sp_cb_base_ad|Shadow Base address for self path 1 picture CB component ring buffer|31:3|ro|'h0
|MI_SP_CB_SIZE_SHD|Shadow Size of self path 1 picture CB component ring buffer|0x00000eb4|32|ro|sp_cb_size|Shadow Size of self path 1 picture CB component ring buffer|27:3|ro|'h0
|MI_SP_CB_OFFS_CNT_SHD|Shadow Offset counter init value for self path 1 picture CB component ring buffer|0x00000eb8|32|ro|sp_cb_offs_cnt|Shadow Offset counter init value for self path 1 picture CB component ring buffer|27:3|ro|'h0
|MI_SP_CR_BASE_AD_SHD|Shadow Base address for self path 1 picture CR component ring buffer|0x00000ebc|32|ro|sp_cr_base_ad|Shadow Base address for self path 1 picture CR component ring buffer|31:3|ro|'h0
|MI_SP_CR_SIZE_SHD|Shadow Size of self path 1 picture CR component ring buffer|0x00000ec0|32|ro|sp_cr_size|Shadow Size of self path 1 picture CR component ring buffer|27:3|ro|'h0
|MI_SP_CR_OFFS_CNT_SHD|Shadow Offset counter init value for self path 1 picture CR component ring buffer|0x00000ec4|32|ro|sp_cr_offs_cnt|Shadow Offset counter init value for self path 1 picture CR component ring buffer|27:3|ro|'h0
|MI_SP_Y_PIC_WIDTH|Image width of the Y component in pixels for main path|0x00000f14|32|rw|sp_y_pic_width|Image width of the Y component in pixels for main path|14:0|rw|'h0
|MI_SP_Y_PIC_HEIGHT|Image height of the Y component in pixels for main path|0x00000f18|32|rw|sp_y_pic_height|Image height of the Y component in pixels for main path|14:0|rw|'h0
|MI_SP_Y_PIC_SIZE|Image size of the Y component in pixels for main path|0x00000f1c|32|rw|sp_y_pic_size|Image size of the Y component in pixels for main path|24:0|rw|'h0
|MI_SP_Y_BASE_AD_INIT2|Base address 2 (ping pong) for main picture Y component, JPEG or raw data|0x00000f3c|32|rw|sp_y_base_ad_init2|Base address 2 (ping pong) for main picture Y component, JPEG or raw data|31:3|rw|'h0
|MI_SP_CB_BASE_AD_INIT2|Base address 2 (ping pong) for main picture CB component, JPEG or raw data|0x00000f40|32|rw|sp_cb_base_ad_init2|Base address 2 (ping pong) for main picture CB component, JPEG or raw data|31:3|rw|'h0
|MI_SP_CR_BASE_AD_INIT2|Base address 2 (ping pong) for main picture CR component, JPEG or raw data|0x00000f44|32|rw|sp_cr_base_ad_init2|Base address 2 (ping pong) for main picture CR component, JPEG or raw data|31:3|rw|'h0
