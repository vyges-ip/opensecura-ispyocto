# ISP Blocks

ISP Yocto contains the following modules

|Module Name|Base Name|Offset|Descriptions|
|-----------|---------|------|------------|
|M5_main_control|MRV_BASE|0x00000000|marvin top control registers|
|M5_isp|MRV_ISP_BASE|0x00000400|ISP main control registers|
|ISP_TPG_CTRL|ISP_TPG_BASE|0x00000500|ISP test pattern generate registers|
|M5_isp_bls|MRV_BLS_BASE|0x00000700|ISP Black level registers|
|M5_isp_exposure|MRV_AE_BASE|0x00000720|ISP Auto Expose Measurement|
|ISP_DGAIN_CTRL|ISP_DGAIN_BASE|0x00000800|ISP Digital Gain registers|
|M5_isp_filter|MRV_FILT_BASE|0x00000814|ISP demosaic  registers|
|M5_isp_cac|MRV_CAC_BASE|0x00000870|ISP Chromatic Aberration Correction registers|
|M5_isp_gamma_out|MRV_GAMMA_OUT_BASE|0x00000900|ISP Gamma out registers|
|ISP64_AWB|ISP_AWB_BASE|0x00000950|ISP Auto White Balance registers|
|M5_isp_cc|MRV_CC_BASE|0x00000a00|ISP color correction registers|
|||||
|M5_isp_ct|MRV_CT_BASE|0x00000a30|ISP de-Crosstalking registers|
|M5_mi|MRV_MI_BASE|0x00000e00|MEMORY Interface registers|
|M5_self_resize|MRV_SRSZ_BASE|0x00001000|SELF RESIZE registers|

## M5_main_control

|Register Name|Base+ offset|Read/Write mode|Register Descriptions|Address
|-------------|------------|---------------|---------------------|-------|
|VI_CCL|MRV_BASE+0x0|rw|Clock Control Register|0x00000000
|ISP_ID_CUSTOM_ID|MRV_BASE+0x4|ro|customer id|0x00000004
|ISP_ID_PRODUCT_ID|MRV_BASE+0x8|ro|product id|0x00000008
|ISP_ID_CHIP_ID|MRV_BASE+0xc|ro|chip id|0x0000000c
|VI_ICCL|MRV_BASE+0x10|rw|Internal Clock Control Register|0x00000010
|VI_IRCL|MRV_BASE+0x14|rw|Internal Reset Control Register|0x00000014
|ISP_ID_ECO_ID|MRV_BASE+0x20|ro|eco version|0x00000020
|ISP_ID_CHIP_REVISION|MRV_BASE+0x24|ro|internal chip version|0x00000024
|ISP_ID_PATCH_REVISION|MRV_BASE+0x28|ro|Internal tag version|0x00000028
|ISP_ID_CHIP_DATE|MRV_BASE+0x2c|ro|chip date value|0x0000002c
|ISP_ID_CHIP_TIME|MRV_BASE+0x30|ro|chip time value|0x00000030
|VI_ID_RSV0|MRV_BASE+0x34|ro||0x00000034
|VI_ID_RSV1|MRV_BASE+0x38|ro||0x00000038
|VI_ID_RSV2|MRV_BASE+0x3c|ro||0x0000003c
|VI_ID_RSV3|MRV_BASE+0x40|ro||0x00000040
|VI_ID_RSV4|MRV_BASE+0x44|ro||0x00000044
|VI_ID_RSV5|MRV_BASE+0x48|ro||0x00000048
|VI_ID_RSV6|MRV_BASE+0x4c|ro||0x0000004c
|VI_ID_RSV7|MRV_BASE+0x50|ro||0x00000050

## M5_isp

|Register Name|Base+ offset|Read/Write mode|Register Descriptions|Address
|-------------|------------|---------------|---------------------|-------|
|ISP_CTRL|MRV_ISP_BASE+0x0|rw|Global control register|0x00000400
|ISP_ACQ_PROP|MRV_ISP_BASE+0x4|rw|ISP acquisition properties|0x00000404
|ISP_ACQ_H_OFFS|MRV_ISP_BASE+0x8|rw|Horizontal input offset|0x00000408
|ISP_ACQ_V_OFFS|MRV_ISP_BASE+0xc|rw|Vertical input offset|0x0000040c
|ISP_ACQ_H_SIZE|MRV_ISP_BASE+0x10|rw|Horizontal input size|0x00000410
|ISP_ACQ_V_SIZE|MRV_ISP_BASE+0x14|rw|Vertical input size|0x00000414
|ISP_OUT_H_OFFS|MRV_ISP_BASE+0x204|rw|Horizontal offset of output window|0x00000604
|ISP_OUT_V_OFFS|MRV_ISP_BASE+0x208|rw|Vertical offset of output window|0x00000608
|ISP_OUT_H_SIZE|MRV_ISP_BASE+0x20c|rw|Output horizontal picture size|0x0000060c
|ISP_OUT_V_SIZE|MRV_ISP_BASE+0x210|rw|Output vertical picture size|0x00000610
|ISP_OUT_H_OFFS_SHD|MRV_ISP_BASE+0x214|ro|Current horizontal offset of output window (shadow register)|0x00000614
|ISP_OUT_V_OFFS_SHD|MRV_ISP_BASE+0x218|ro|Current vertical offset of output window (shadow register)|0x00000618
|ISP_OUT_H_SIZE_SHD|MRV_ISP_BASE+0x21c|ro|Current output horizontal picture size (shadow register)|0x0000061c
|ISP_OUT_V_SIZE_SHD|MRV_ISP_BASE+0x220|ro|Current output vertical picture size (shadow register)|0x00000620
|ISP_DEMOSAIC|MRV_ISP_BASE+0x410|rw|Demosaic parameters|0x00000810
|ISP_IMSC|MRV_ISP_BASE+0x700|rw|Interrupt mask|0x00000b00
|ISP_RIS|MRV_ISP_BASE+0x704|ro|Raw interrupt status|0x00000b04
|ISP_MIS|MRV_ISP_BASE+0x708|ro|Masked interrupt status|0x00000b08
|ISP_ICR|MRV_ISP_BASE+0x70c|wo|Interrupt clear register|0x00000b0c
|ISP_ISR|MRV_ISP_BASE+0x710|wo|Interrupt set register|0x00000b10
|ISP_ERR|MRV_ISP_BASE+0x714|ro|ISP error register|0x00000b14
|ISP_ERR_CLR|MRV_ISP_BASE+0x718|wo|ISP error clear register|0x00000b18

## ISP_TPG_CTRL

|Register Name|Base+ offset|Read/Write mode|Register Descriptions|Address
|-------------|------------|---------------|---------------------|-------|
|ISP_TPG_CTRL|ISP_TPG_BASE+0x0|rw|Test Pattern Generator Module|0x00000500
|ISP_TPG_TOTAL_IN|ISP_TPG_BASE+0x4|rw|The total clock|0x00000504
|ISP_TPG_ACT_IN|ISP_TPG_BASE+0x8|rw|The available clock|0x00000508
|ISP_TPG_FP_IN|ISP_TPG_BASE+0xc|rw|The first valid|0x0000050c
|ISP_TPG_BP_IN|ISP_TPG_BASE+0x10|rw|The distance between positive edge of vs with positive edge of hde |0x00000510
|ISP_TPG_W_IN|ISP_TPG_BASE+0x14|rw|Available clk|0x00000514
|ISP_TPG_GAP_IN|ISP_TPG_BASE+0x18|rw|The gap of sub_picture|0x00000518
|ISP_TPG_GAP_STD_IN|ISP_TPG_BASE+0x1c|rw|The gap stdio of sub_picture|0x0000051c
|ISP_TPG_RANDOM_SEED|ISP_TPG_BASE+0x20|rw|Random seed|0x00000520
|ISP_TPG_FRAME_NUM|ISP_TPG_BASE+0x24|rw|Test Pattern Generator frame number|0x00000524

## M5_isp_bls

|Register Name|Base+ offset|Read/Write mode|Register Descriptions|Address
|-------------|------------|---------------|---------------------|-------|
|ISP_BLS_CTRL|MRV_BLS_BASE+0x0|rw|Black Level Subtraction Global Control Register|0x00000700
|ISP_BLS_A_FIXED|MRV_BLS_BASE+0x4|rw|Fixed Black Level A|0x00000704
|ISP_BLS_B_FIXED|MRV_BLS_BASE+0x8|rw|Fixed Black Level B|0x00000708
|ISP_BLS_C_FIXED|MRV_BLS_BASE+0xc|rw|Fixed Black Level C|0x0000070c
|ISP_BLS_D_FIXED|MRV_BLS_BASE+0x10|rw|Fixed Black Level D|0x00000710

## M5_isp_exposure

|Register Name|Base+ offset|Read/Write mode|Register Descriptions|Address
|-------------|------------|---------------|---------------------|-------|
|ISP_EXP_CONF|MRV_AE_BASE+0x0|rw|Exposure Control|0x00000720
|ISP_EXP_H_OFFSET|MRV_AE_BASE+0x4|rw|Horizontal Offset for First Block|0x00000724
|ISP_EXP_V_OFFSET|MRV_AE_BASE+0x8|rw|Vertical Offset for First Block|0x00000728
|ISP_EXP_H_SIZE|MRV_AE_BASE+0xc|rw|Horizontal Size of One Block|0x0000072c
|ISP_EXP_V_SIZE|MRV_AE_BASE+0x10|rw|Vertical Size of One Block|0x00000730
|ISP_EXP_MEAN_00|MRV_AE_BASE+0x14|ro|Mean Luminance Value of Block 00|0x00000734
|ISP_EXP_MEAN_10|MRV_AE_BASE+0x18|ro|Mean Luminance Value of Block 10|0x00000738
|ISP_EXP_MEAN_20|MRV_AE_BASE+0x1c|ro|Mean Luminance Value of Block 20|0x0000073c
|ISP_EXP_MEAN_30|MRV_AE_BASE+0x20|ro|Mean Luminance Value of Block 30|0x00000740
|ISP_EXP_MEAN_40|MRV_AE_BASE+0x24|ro|Mean Luminance Value of Block 40|0x00000744
|ISP_EXP_MEAN_01|MRV_AE_BASE+0x28|ro|Mean Luminance Value of Block 01|0x00000748
|ISP_EXP_MEAN_11|MRV_AE_BASE+0x2c|ro|Mean Luminance Value of Block 11|0x0000074c
|ISP_EXP_MEAN_21|MRV_AE_BASE+0x30|ro|Mean Luminance Value of Block 21|0x00000750
|ISP_EXP_MEAN_31|MRV_AE_BASE+0x34|ro|Mean Luminance Value of Block 31|0x00000754
|ISP_EXP_MEAN_41|MRV_AE_BASE+0x38|ro|Mean Luminance Value of Block 41|0x00000758
|ISP_EXP_MEAN_02|MRV_AE_BASE+0x3c|ro|Mean Luminance Value of Block 02|0x0000075c
|ISP_EXP_MEAN_12|MRV_AE_BASE+0x40|ro|Mean Luminance Value of Block 12|0x00000760
|ISP_EXP_MEAN_22|MRV_AE_BASE+0x44|ro|Mean Luminance Value of Block 22|0x00000764
|ISP_EXP_MEAN_32|MRV_AE_BASE+0x48|ro|Mean Luminance Value of Block 32|0x00000768
|ISP_EXP_MEAN_42|MRV_AE_BASE+0x4c|ro|Mean Luminance Value of Block 42|0x0000076c
|ISP_EXP_MEAN_03|MRV_AE_BASE+0x50|ro|Mean Luminance Value of Block 03|0x00000770
|ISP_EXP_MEAN_13|MRV_AE_BASE+0x54|ro|Mean Luminance Value of Block 13|0x00000774
|ISP_EXP_MEAN_23|MRV_AE_BASE+0x58|ro|Mean Luminance Value of Block 23|0x00000778
|ISP_EXP_MEAN_33|MRV_AE_BASE+0x5c|ro|Mean Luminance Value of Block 33|0x0000077c
|ISP_EXP_MEAN_43|MRV_AE_BASE+0x60|ro|Mean Luminance Value of Block 43|0x00000780
|ISP_EXP_MEAN_04|MRV_AE_BASE+0x64|ro|Mean Luminance Value of Block 04|0x00000784
|ISP_EXP_MEAN_14|MRV_AE_BASE+0x68|ro|Mean Luminance Value of Block 14|0x00000788
|ISP_EXP_MEAN_24|MRV_AE_BASE+0x6c|ro|Mean Luminance Value of Block 24|0x0000078c
|ISP_EXP_MEAN_34|MRV_AE_BASE+0x70|ro|Mean Luminance Value of Block 34|0x00000790
|ISP_EXP_MEAN_44|MRV_AE_BASE+0x74|ro|Mean Luminance Value of Block 44|0x00000794

## ISP_DGAIN_CTRL

|Register Name|Base+ offset|Read/Write mode|Register Descriptions|Address
|-------------|------------|---------------|---------------------|-------|
|ISP_DGAIN_RB|ISP_DGAIN_BASE+0x0|rw|digital gain of red blue|0x00000800
|ISP_DGAIN_G|ISP_DGAIN_BASE+0x4|rw|digital gain of green|0x00000804
|ISP_DGAIN_RB_SHD|ISP_DGAIN_BASE+0x8|ro|digital gain of red blue|0x00000808
|ISP_DGAIN_G_SHD|ISP_DGAIN_BASE+0xc|ro|digital gain of green|0x0000080c

## M5_isp_filter

|Register Name|Base+ offset|Read/Write mode|Register Descriptions|Address
|-------------|------------|---------------|---------------------|-------|
|ISP_FILT_MODE|MRV_FILT_BASE+0x0|rw|Filter Block Mode Control Register|0x00000814
|ISP_FILT_THRES_BL0|MRV_FILT_BASE+0x4|rw|Blurring Threshold 0|0x00000818
|ISP_FILT_THRES_BL1|MRV_FILT_BASE+0x8|rw|Blurring Threshold 1|0x0000081c
|ISP_FILT_THRES_SH0|MRV_FILT_BASE+0xc|rw|Sharpening Threshold 0|0x00000820
|ISP_FILT_THRES_SH1|MRV_FILT_BASE+0x10|rw|Sharpening Threshold 1|0x00000824
|ISP_FILT_LUM_WEIGHT|MRV_FILT_BASE+0x14|rw|Parameters for Luminance Weight Function|0x00000828
|ISP_FILT_FAC_SH1|MRV_FILT_BASE+0x18|rw|Filter Factor Sharp1|0x0000082c
|ISP_FILT_FAC_SH0|MRV_FILT_BASE+0x1c|rw|Filter Factor Sharp0|0x00000830
|ISP_FILT_FAC_MID|MRV_FILT_BASE+0x20|rw|Filter Factor Middle|0x00000834
|ISP_FILT_FAC_BL0|MRV_FILT_BASE+0x24|rw|Parameter for Blur 0 Filter|0x00000838
|ISP_FILT_FAC_BL1|MRV_FILT_BASE+0x28|rw|Parameter for Blur 1 Filter|0x0000083c

## M5_isp_cac

|Register Name|Base+ offset|Read/Write mode|Register Descriptions|Address
|-------------|------------|---------------|---------------------|-------|
|ISP_CAC_CTRL|MRV_CAC_BASE+0x0|rw|Global control register|0x00000870
|ISP_CAC_COUNT_START|MRV_CAC_BASE+0x4|rw|Preload Values for CAC Pixel and Line Counter|0x00000874
|ISP_CAC_A|MRV_CAC_BASE+0x8|rw|Linear Parameters for Radial Shift Calculation|0x00000878
|ISP_CAC_B|MRV_CAC_BASE+0xc|rw|Square Parameters for Radial Shift Calculation|0x0000087c
|ISP_CAC_C|MRV_CAC_BASE+0x10|rw|Cubical Parameters for Radial Shift Calculation|0x00000880
|ISP_CAC_X_NORM|MRV_CAC_BASE+0x14|rw|Normalization Parameters for Calculation of Image Coordinate x_d|0x00000884
|ISP_CAC_Y_NORM|MRV_CAC_BASE+0x18|rw|Normalization Parameters for Calculation of Image Coordinate y_d|0x00000888

## M5_isp_gamma_out

|Register Name|Base+ offset|Read/Write mode|Register Descriptions|Address
|-------------|------------|---------------|---------------------|-------|
|ISP_GAMMA_OUT_MODE|MRV_GAMMA_OUT_BASE+0x0|rw|Gamma segmentation mode register for output gamma|0x00000900
|ISP_GAMMA_OUT_Y_0|MRV_GAMMA_OUT_BASE+0x4|rw|Gamma Out Curve definition y|0x00000904
|ISP_GAMMA_OUT_Y_1|MRV_GAMMA_OUT_BASE+0x8|rw|Gamma Out Curve definition y|0x00000908
|ISP_GAMMA_OUT_Y_2|MRV_GAMMA_OUT_BASE+0xc|rw|Gamma Out Curve definition y|0x0000090c
|ISP_GAMMA_OUT_Y_3|MRV_GAMMA_OUT_BASE+0x10|rw|Gamma Out Curve definition y|0x00000910
|ISP_GAMMA_OUT_Y_4|MRV_GAMMA_OUT_BASE+0x14|rw|Gamma Out Curve definition y|0x00000914
|ISP_GAMMA_OUT_Y_5|MRV_GAMMA_OUT_BASE+0x18|rw|Gamma Out Curve definition y|0x00000918
|ISP_GAMMA_OUT_Y_6|MRV_GAMMA_OUT_BASE+0x1c|rw|Gamma Out Curve definition y|0x0000091c
|ISP_GAMMA_OUT_Y_7|MRV_GAMMA_OUT_BASE+0x20|rw|Gamma Out Curve definition y|0x00000920
|ISP_GAMMA_OUT_Y_8|MRV_GAMMA_OUT_BASE+0x24|rw|Gamma Out Curve definition y|0x00000924
|ISP_GAMMA_OUT_Y_9|MRV_GAMMA_OUT_BASE+0x28|rw|Gamma Out Curve definition y|0x00000928
|ISP_GAMMA_OUT_Y_10|MRV_GAMMA_OUT_BASE+0x2c|rw|Gamma Out Curve definition y|0x0000092c
|ISP_GAMMA_OUT_Y_11|MRV_GAMMA_OUT_BASE+0x30|rw|Gamma Out Curve definition y|0x00000930
|ISP_GAMMA_OUT_Y_12|MRV_GAMMA_OUT_BASE+0x34|rw|Gamma Out Curve definition y|0x00000934
|ISP_GAMMA_OUT_Y_13|MRV_GAMMA_OUT_BASE+0x38|rw|Gamma Out Curve definition y|0x00000938
|ISP_GAMMA_OUT_Y_14|MRV_GAMMA_OUT_BASE+0x3c|rw|Gamma Out Curve definition y|0x0000093c
|ISP_GAMMA_OUT_Y_15|MRV_GAMMA_OUT_BASE+0x40|rw|Gamma Out Curve definition y|0x00000940
|ISP_GAMMA_OUT_Y_16|MRV_GAMMA_OUT_BASE+0x44|rw|Gamma Out Curve definition y|0x00000944

## ISP64_AWB

|Register Name|Base+ offset|Read/Write mode|Register Descriptions|Address
|-------------|------------|---------------|---------------------|-------|
|ISP_AWB_PROP|ISP_AWB_BASE+0x0|rw|Auto white balance properties|0x00000950
|ISP_AWB_H_OFFS|ISP_AWB_BASE+0x4|rw|Auto white balance horizontal offset of measure window|0x00000954
|ISP_AWB_V_OFFS|ISP_AWB_BASE+0x8|rw|Auto white balance vertical offset of measure window|0x00000958
|ISP_AWB_H_SIZE|ISP_AWB_BASE+0xc|rw|Auto white balance horizontal window size|0x0000095c
|ISP_AWB_V_SIZE|ISP_AWB_BASE+0x10|rw|Auto white balance vertical window size|0x00000960
|ISP_AWB_FRAMES|ISP_AWB_BASE+0x14|rw|Auto white balance mean value over multiple frames|0x00000964
|ISP_AWB_REF|ISP_AWB_BASE+0x18|rw|Auto white balance reference Cb/Cr values|0x00000968
|ISP_AWB_THRESH|ISP_AWB_BASE+0x1c|rw|Auto white balance threshold values|0x0000096c
|ISP_AWB_WHITE_CNT|ISP_AWB_BASE+0x30|ro|Auto white balance white pixel count|0x00000980
|ISP_AWB_MEAN|ISP_AWB_BASE+0x34|ro|Auto white balance measured mean value|0x00000984

## M5_isp_cc
|Register Name|Base+ offset|Read/Write mode|Register Descriptions|Address
|-------------|------------|---------------|---------------------|-------|
|ISP_CC_COEFF_0|MRV_CC_BASE+0x0|rw||0x00000a00
|ISP_CC_COEFF_1|MRV_CC_BASE+0x4|rw||0x00000a04
|ISP_CC_COEFF_2|MRV_CC_BASE+0x8|rw||0x00000a08
|ISP_CC_COEFF_3|MRV_CC_BASE+0xc|rw||0x00000a0c
|ISP_CC_COEFF_4|MRV_CC_BASE+0x10|rw||0x00000a10
|ISP_CC_COEFF_5|MRV_CC_BASE+0x14|rw||0x00000a14
|ISP_CC_COEFF_6|MRV_CC_BASE+0x18|rw||0x00000a18
|ISP_CC_COEFF_7|MRV_CC_BASE+0x1c|rw||0x00000a1c
|ISP_CC_COEFF_8|MRV_CC_BASE+0x20|rw||0x00000a20

## FORMAT_BASE

|Register Name|Base+ offset|Read/Write mode|Register Descriptions|Address
|-------------|------------|---------------|---------------------|-------|
|FORMAT_CONV_CTRL|FORMAT_BASE+0x0|rw|output contro register|0x00000a24

## M5_isp_ct

|Register Name|Base+ offset|Read/Write mode|Register Descriptions|Address
|-------------|------------|---------------|---------------------|-------|
|ISP_CT_COEFF_0|MRV_CT_BASE+0x0|rw|Cross-talk configuration register (color correction matrix)|0x00000a30
|ISP_CT_COEFF_1|MRV_CT_BASE+0x4|rw|Cross-talk configuration register (color correction matrix)|0x00000a34
|ISP_CT_COEFF_2|MRV_CT_BASE+0x8|rw|Cross-talk configuration register (color correction matrix)|0x00000a38
|ISP_CT_COEFF_3|MRV_CT_BASE+0xc|rw|Cross-talk configuration register (color correction matrix)|0x00000a3c
|ISP_CT_COEFF_4|MRV_CT_BASE+0x10|rw|Cross-talk configuration register (color correction matrix)|0x00000a40
|ISP_CT_COEFF_5|MRV_CT_BASE+0x14|rw|Cross-talk configuration register (color correction matrix)|0x00000a44
|ISP_CT_COEFF_6|MRV_CT_BASE+0x18|rw|Cross-talk configuration register (color correction matrix)|0x00000a48
|ISP_CT_COEFF_7|MRV_CT_BASE+0x1c|rw|Cross-talk configuration register (color correction matrix)|0x00000a4c
|ISP_CT_COEFF_8|MRV_CT_BASE+0x20|rw|Cross-talk configuration register (color correction matrix)|0x00000a50
|ISP_CT_OFFSET_R|MRV_CT_BASE+0x24|rw|Cross-talk offset red|0x00000a54
|ISP_CT_OFFSET_G|MRV_CT_BASE+0x28|rw|Cross-talk offset green|0x00000a58
|ISP_CT_OFFSET_B|MRV_CT_BASE+0x2c|rw|Cross-talk offset blue|0x00000a5c

## M5_mi

|Register Name|Base+ offset|Read/Write mode|Register Descriptions|Address
|-------------|------------|---------------|---------------------|-------|
|MI_CTRL|MRV_MI_BASE+0x0|rw|Global control register|0x00000e00
|MI_INIT|MRV_MI_BASE+0x4|rw|Control register for address init and skip function|0x00000e04
|MI_MP_Y_BASE_AD_INIT|MRV_MI_BASE+0x8|rw|Base address for main picture Y component, JPEG or raw data|0x00000e08
|MI_MP_Y_SIZE_INIT|MRV_MI_BASE+0xc|rw|Size of main picture Y component, JPEG or raw data|0x00000e0c
|MI_MP_Y_OFFS_CNT_INIT|MRV_MI_BASE+0x10|rw|Offset counter init value for main picture Y, JPEG or raw data|0x00000e10
|MI_MP_Y_OFFS_CNT_START|MRV_MI_BASE+0x14|ro|Offset counter start value for main picture Y, JPEG or raw data|0x00000e14
|MI_MP_Y_IRQ_OFFS_INIT|MRV_MI_BASE+0x18|rw|Fill level interrupt offset value for main picture Y, JPEG or raw data|0x00000e18
|MI_MP_CB_BASE_AD_INIT|MRV_MI_BASE+0x1c|rw|Base address for main picture Cb component ring buffer|0x00000e1c
|MI_MP_CB_SIZE_INIT|MRV_MI_BASE+0x20|rw|Size of main picture Cb component ring buffer|0x00000e20
|MI_MP_CB_OFFS_CNT_INIT|MRV_MI_BASE+0x24|rw|Offset counter init value for main picture Cb component ring buffer|0x00000e24
|MI_MP_CB_OFFS_CNT_START|MRV_MI_BASE+0x28|ro|Offset counter start value for main picture Cb component ring buffer|0x00000e28
|MI_MP_CR_BASE_AD_INIT|MRV_MI_BASE+0x2c|rw|Base address for main picture Cr component ring buffer|0x00000e2c
|MI_MP_CR_SIZE_INIT|MRV_MI_BASE+0x30|rw|Size of main picture Cr component ring buffer|0x00000e30
|MI_MP_CR_OFFS_CNT_INIT|MRV_MI_BASE+0x34|rw|Offset counter init value for main picture Cr component ring buffer|0x00000e34
|MI_MP_CR_OFFS_CNT_START|MRV_MI_BASE+0x38|ro|Offset counter start value for main picture Cr component ring buffer|0x00000e38
|MI_BYTE_CNT|MRV_MI_BASE+0x70|ro|Counter value of JPEG or RAW data bytes |0x00000e70
|MI_CTRL_SHD|MRV_MI_BASE+0x74|ro|Global control internal shadow register|0x00000e74
|MI_MP_Y_BASE_AD_SHD|MRV_MI_BASE+0x78|ro|Base address shadow register for main picture Y component, JPEG or raw data ring buffer|0x00000e78
|MI_MP_Y_SIZE_SHD|MRV_MI_BASE+0x7c|ro|Size shadow register of main picture Y component, JPEG or raw data|0x00000e7c
|MI_MP_Y_OFFS_CNT_SHD|MRV_MI_BASE+0x80|ro|Current offset counter of main picture Y component, JPEG or raw data ring buffer|0x00000e80
|MI_MP_Y_IRQ_OFFS_SHD|MRV_MI_BASE+0x84|ro|Shadow register of fill level interrupt offset value for main picture Y component, JPEG or raw data|0x00000e84
|MI_MP_CB_BASE_AD_SHD|MRV_MI_BASE+0x88|ro|Base address shadow register for main picture Cb component ring buffer|0x00000e88
|MI_MP_CB_SIZE_SHD|MRV_MI_BASE+0x8c|ro|Size shadow register of main picture Cb component ring buffer|0x00000e8c
|MI_MP_CB_OFFS_CNT_SHD|MRV_MI_BASE+0x90|ro|Current offset counter of main picture Cb component ring buffer|0x00000e90
|MI_MP_CR_BASE_AD_SHD|MRV_MI_BASE+0x94|ro|Base address shadow register for main picture Cr component ring buffer|0x00000e94
|MI_MP_CR_SIZE_SHD|MRV_MI_BASE+0x98|ro|Size shadow register of main picture Cr component ring buffer|0x00000e98
|MI_MP_CR_OFFS_CNT_SHD|MRV_MI_BASE+0x9c|ro|Current offset counter of main picture Cr component ring buffer|0x00000e9c
|MI_IMSC|MRV_MI_BASE+0xf8|rw|Interrupt Mask („1‟: interrupt active, „0‟: interrupt masked)|0x00000ef8
|MI_RIS|MRV_MI_BASE+0xfc|ro|Raw Interrupt Status|0x00000efc
|MI_MIS|MRV_MI_BASE+0x100|ro|Masked Interrupt Status|0x00000f00
|MI_ICR|MRV_MI_BASE+0x104|wo|Interrupt Clear Register|0x00000f04
|MI_ISR|MRV_MI_BASE+0x108|wo|Interrupt Set Register|0x00000f08
|MI_STATUS|MRV_MI_BASE+0x10c|ro|MI Status Register|0x00000f0c
|MI_STATUS_CLR|MRV_MI_BASE+0x110|wo|MI Status Clear Register|0x00000f10
|MI_MP_Y_BASE_AD_INIT2|MRV_MI_BASE+0x130|rw|Base address 2 (ping pong) for main picture Y component, JPEG or raw data|0x00000f30
|MI_MP_CB_BASE_AD_INIT2|MRV_MI_BASE+0x134|rw|Base address 2 (pingpong) for main picture Cb component|0x00000f34
|MI_MP_CR_BASE_AD_INIT2|MRV_MI_BASE+0x138|rw|Base address 2 (pingpong) for main picture Cr component ring buffer|0x00000f38
|MI_MP_Y_LLENGTH|MRV_MI_BASE+0x150|rw|Base address 2 (pingpong) for main picture Cb component|0x00000f50
|MI_OUTPUT_ALIGN_FORMAT|MRV_MI_BASE+0x15c|rw|Output align format for main path|0x00000f5c
|MI_MP_OUTPUT_FIFO_SIZE|MRV_MI_BASE+0x160|rw|Output FIFO size for main path|0x00000f60
|MI_MP_Y_PIC_WIDTH|MRV_MI_BASE+0x164|rw|Image width of the Y component in pixels for main path|0x00000f64
|MI_MP_Y_PIC_HEIGHT|MRV_MI_BASE+0x168|rw|Image height of the Y component in pixels for main path|0x00000f68
|MI_MP_Y_PIC_SIZE|MRV_MI_BASE+0x16c|rw|Image size of the Y component in pixels for main path|0x00000f6c
|MI_SP_Y_BASE_AD_INIT|MRV_MI_BASE+0x3c|rw|Base address for self path 1 picture Y component ring buffer|0x00000e3c
|MI_SP_Y_SIZE_INIT|MRV_MI_BASE+0x40|rw|Size of self path 1 picture Y component ring buffer|0x00000e40
|MI_SP_Y_OFFS_CNT_INIT|MRV_MI_BASE+0x44|rw|Offset counter init value for self path 1 picture Y component ring buffer|0x00000e44
|MI_SP_Y_OFFS_CNT_START|MRV_MI_BASE+0x48|ro|Offset counter start value for self picture 1 component|0x00000e48
|MI_SP_Y_LLENGTH|MRV_MI_BASE+0x4c|rw|Y component original line length|0x00000e4c
|MI_SP_CB_BASE_AD_INIT|MRV_MI_BASE+0x50|rw|Base address for self path 1 picture CB component ring buffer|0x00000e50
|MI_SP_CB_SIZE_INIT|MRV_MI_BASE+0x54|rw|Size of self path 1 picture CB component ring buffer|0x00000e54
|MI_SP_CB_OFFS_CNT_INIT|MRV_MI_BASE+0x58|rw|Offset counter init value for self path 1 picture CB component ring buffer|0x00000e58
|MI_SP_CB_OFFS_CNT_START|MRV_MI_BASE+0x5c|ro|Offset counter start value for self picture 1 component|0x00000e5c
|MI_SP_CR_BASE_AD_INIT|MRV_MI_BASE+0x60|rw|Base address for self path 1 picture CR component ring buffer|0x00000e60
|MI_SP_CR_SIZE_INIT|MRV_MI_BASE+0x64|rw|Size of self path 1 picture CR component ring buffer|0x00000e64
|MI_SP_CR_OFFS_CNT_INIT|MRV_MI_BASE+0x68|rw|Offset counter init value for self path 1 picture CR component ring buffer|0x00000e68
|MI_SP_CR_OFFS_CNT_START|MRV_MI_BASE+0x6c|ro|Offset counter start value for self picture 1 component|0x00000e6c
|MI_SP_Y_BASE_AD_SHD|MRV_MI_BASE+0xa0|ro|Shadow Base address for self path 1 picture Y component ring buffer |0x00000ea0
|MI_SP_Y_SIZE_SHD|MRV_MI_BASE+0xa4|ro|Shadow Size of self path 1 picture Y component ring buffer|0x00000ea4
|MI_SP_Y_OFFS_CNT_SHD|MRV_MI_BASE+0xa8|ro|Shadow Offset counter init value for self path 1 picture Y component ring buffer|0x00000ea8
|MI_SP_CB_BASE_AD_SHD|MRV_MI_BASE+0xb0|ro|Shadow Base address for self path 1 picture CB component ring buffer|0x00000eb0
|MI_SP_CB_SIZE_SHD|MRV_MI_BASE+0xb4|ro|Shadow Size of self path 1 picture CB component ring buffer|0x00000eb4
|MI_SP_CB_OFFS_CNT_SHD|MRV_MI_BASE+0xb8|ro|Shadow Offset counter init value for self path 1 picture CB component ring buffer|0x00000eb8
|MI_SP_CR_BASE_AD_SHD|MRV_MI_BASE+0xbc|ro|Shadow Base address for self path 1 picture CR component ring buffer|0x00000ebc
|MI_SP_CR_SIZE_SHD|MRV_MI_BASE+0xc0|ro|Shadow Size of self path 1 picture CR component ring buffer|0x00000ec0
|MI_SP_CR_OFFS_CNT_SHD|MRV_MI_BASE+0xc4|ro|Shadow Offset counter init value for self path 1 picture CR component ring buffer|0x00000ec4
|MI_SP_Y_PIC_WIDTH|MRV_MI_BASE+0x114|rw|Image width of the Y component in pixels for main path|0x00000f14
|MI_SP_Y_PIC_HEIGHT|MRV_MI_BASE+0x118|rw|Image height of the Y component in pixels for main path|0x00000f18
|MI_SP_Y_PIC_SIZE|MRV_MI_BASE+0x11c|rw|Image size of the Y component in pixels for main path|0x00000f1c
|MI_SP_Y_BASE_AD_INIT2|MRV_MI_BASE+0x13c|rw|Base address 2 (ping pong) for main picture Y component, JPEG or raw data|0x00000f3c
|MI_SP_CB_BASE_AD_INIT2|MRV_MI_BASE+0x140|rw|Base address 2 (ping pong) for main picture CB component, JPEG or raw data|0x00000f40
|MI_SP_CR_BASE_AD_INIT2|MRV_MI_BASE+0x144|rw|Base address 2 (ping pong) for main picture CR component, JPEG or raw data|0x00000f44

## M5_self_resize

|Register Name|Base+ offset|Read/Write mode|Register Descriptions|Address
|-------------|------------|---------------|---------------------|-------|
|SRSZ_CTRL|MRV_SRSZ_BASE+0x0|rw|Global control register|0x00001000
|SRSZ_SCALE_HY|MRV_SRSZ_BASE+0x4|rw|Horizontal luminance scale factor register|0x00001004
|SRSZ_SCALE_HCB|MRV_SRSZ_BASE+0x8|rw|Horizontal Cb scale factor register|0x00001008
|SRSZ_SCALE_HCR|MRV_SRSZ_BASE+0xc|rw|Horizontal Cr scale factor register|0x0000100c
|SRSZ_SCALE_VY|MRV_SRSZ_BASE+0x10|rw|Vertical luminance scale factor register|0x00001010
|SRSZ_SCALE_VC|MRV_SRSZ_BASE+0x14|rw|Vertical chrominance scale factor register|0x00001014
|SRSZ_PHASE_HY|MRV_SRSZ_BASE+0x18|rw|Horizontal luminance phase register|0x00001018
|SRSZ_PHASE_HC|MRV_SRSZ_BASE+0x1c|rw|Horizontal chrominance phase register|0x0000101c
|SRSZ_PHASE_VY|MRV_SRSZ_BASE+0x20|rw|Vertical luminance phase register|0x00001020
|SRSZ_PHASE_VC|MRV_SRSZ_BASE+0x24|rw|Vertical chrominance phase register|0x00001024
|SRSZ_SCALE_LUT_ADDR|MRV_SRSZ_BASE+0x28|rw|Address pointer of up-scaling look up table|0x00001028
|SRSZ_SCALE_LUT|MRV_SRSZ_BASE+0x2c|rw|Entry of up-scaling look up table|0x0000102c
|SRSZ_CTRL_SHD|MRV_SRSZ_BASE+0x30|ro|Global control shadow register|0x00001030
|SRSZ_SCALE_HY_SHD|MRV_SRSZ_BASE+0x34|ro|Horizontal luminance scale factor shadow register|0x00001034
|SRSZ_SCALE_HCB_SHD|MRV_SRSZ_BASE+0x38|ro|Horizontal Cb scale factor shadow register|0x00001038
|SRSZ_SCALE_HCR_SHD|MRV_SRSZ_BASE+0x3c|ro|Horizontal Cr scale factor shadow register|0x0000103c
|SRSZ_SCALE_VY_SHD|MRV_SRSZ_BASE+0x40|ro|Vertical luminance scale factor shadow register|0x00001040
|SRSZ_SCALE_VC_SHD|MRV_SRSZ_BASE+0x44|ro|Vertical chrominance scale factor shadow register|0x00001044
|SRSZ_PHASE_HY_SHD|MRV_SRSZ_BASE+0x48|ro|Horizontal luminance phase shadow register|0x00001048
|SRSZ_PHASE_HC_SHD|MRV_SRSZ_BASE+0x4c|ro|Horizontal chrominance phase shadow register|0x0000104c
|SRSZ_PHASE_VY_SHD|MRV_SRSZ_BASE+0x50|ro|Vertical luminance phase shadow register|0x00001050
|SRSZ_PHASE_VC_SHD|MRV_SRSZ_BASE+0x54|ro|Vertical chrominance phase shadow register|0x00001054
|SRSZ_FORMAT_CONV_CTRL|MRV_SRSZ_BASE+0x6c|rw|Format conversion control|0x0000106c
