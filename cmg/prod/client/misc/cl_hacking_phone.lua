-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = {}
SHX2_1.label = "Street cam 1"
SHX3_1 = {}
SHX3_1.x = 234.53869628906
SHX3_1.y = -394.37854003906
SHX3_1.z = 51.980960845947
SHX2_1.pos = SHX3_1
SHX3_1 = {}
SHX3_1.x = -25.0
SHX3_1.y = 0.0
SHX3_1.z = 0.0
SHX2_1.rot = SHX3_1
SHX3_1 = {}
SHX3_1.label = "Street cam 2"
SHX4_1 = {}
SHX4_1.x = -130.69403076172
SHX4_1.y = -237.51498413086
SHX4_1.z = 46.375648498535
SHX3_1.pos = SHX4_1
SHX4_1 = {}
SHX4_1.x = -25.0
SHX4_1.y = 0.0
SHX4_1.z = 0.0
SHX3_1.rot = SHX4_1
SHX4_1 = {}
SHX4_1.label = "Street cam 3"
SHX5_1 = {}
SHX5_1.x = 228.79537963867
SHX5_1.y = 217.26516723633
SHX5_1.z = 111.65953826904
SHX4_1.pos = SHX5_1
SHX5_1 = {}
SHX5_1.x = -25.0
SHX5_1.y = 0.0
SHX5_1.z = 0.0
SHX4_1.rot = SHX5_1
SHX5_1 = {}
SHX5_1.label = "Street cam 4"
SHX6_1 = {}
SHX6_1.x = 276.10882568359
SHX6_1.y = 147.8564453125
SHX6_1.z = 108.54515075684
SHX5_1.pos = SHX6_1
SHX6_1 = {}
SHX6_1.x = -25.0
SHX6_1.y = 0.0
SHX6_1.z = 0.0
SHX5_1.rot = SHX6_1
SHX6_1 = {}
SHX6_1.label = "Street cam 5"
SHX7_1 = {}
SHX7_1.x = -697.13793945312
SHX7_1.y = 271.83880615234
SHX7_1.z = 92.289413452148
SHX6_1.pos = SHX7_1
SHX7_1 = {}
SHX7_1.x = -25.0
SHX7_1.y = 0.0
SHX7_1.z = 0.0
SHX6_1.rot = SHX7_1
SHX7_1 = {}
SHX7_1.label = "Street cam 6"
SHX8_1 = {}
SHX8_1.x = -717.26025390625
SHX8_1.y = -157.43000793457
SHX8_1.z = 41.1064453125
SHX7_1.pos = SHX8_1
SHX8_1 = {}
SHX8_1.x = -25.0
SHX8_1.y = 0.0
SHX8_1.z = 0.0
SHX7_1.rot = SHX8_1
SHX8_1 = {}
SHX8_1.label = "Street cam 7"
SHX9_1 = {}
SHX9_1.x = -638.20953369141
SHX9_1.y = -249.96182250977
SHX9_1.z = 42.848964691162
SHX8_1.pos = SHX9_1
SHX9_1 = {}
SHX9_1.x = -25.0
SHX9_1.y = 0.0
SHX9_1.z = 0.0
SHX8_1.rot = SHX9_1
SHX9_1 = {}
SHX9_1.label = "Street cam 8"
SHX10_1 = {}
SHX10_1.x = -2974.3278808594
SHX10_1.y = 395.2333984375
SHX10_1.z = 16.954597473145
SHX9_1.pos = SHX10_1
SHX10_1 = {}
SHX10_1.x = -25.0
SHX10_1.y = 0.0
SHX10_1.z = 0.0
SHX9_1.rot = SHX10_1
SHX10_1 = {}
SHX10_1.label = "Street cam 9"
SHX11_1 = {}
SHX11_1.x = -2966.9111328125
SHX11_1.y = 485.03805541992
SHX11_1.z = 17.149766921997
SHX10_1.pos = SHX11_1
SHX11_1 = {}
SHX11_1.x = -25.0
SHX11_1.y = 0.0
SHX11_1.z = 0.0
SHX10_1.rot = SHX11_1
SHX11_1 = {}
SHX11_1.label = "Street cam 10"
SHX12_1 = {}
SHX12_1.x = -2467.7106933594
SHX12_1.y = -218.71464538574
SHX12_1.z = 23.948993682861
SHX11_1.pos = SHX12_1
SHX12_1 = {}
SHX12_1.x = -25.0
SHX12_1.y = 0.0
SHX12_1.z = 0.0
SHX11_1.rot = SHX12_1
SHX12_1 = {}
SHX12_1.label = "Street cam 11"
SHX13_1 = {}
SHX13_1.x = -202.26121520996
SHX13_1.y = -864.77221679688
SHX13_1.z = 34.702033996582
SHX12_1.pos = SHX13_1
SHX13_1 = {}
SHX13_1.x = -25.0
SHX13_1.y = 0.0
SHX13_1.z = 0.0
SHX12_1.rot = SHX13_1
SHX13_1 = {}
SHX13_1.label = "Street cam 12"
SHX14_1 = {}
SHX14_1.x = 387.98492431641
SHX14_1.y = -974.71929931641
SHX14_1.z = 32.410995483398
SHX13_1.pos = SHX14_1
SHX14_1 = {}
SHX14_1.x = -25.0
SHX14_1.y = 0.0
SHX14_1.z = 0.0
SHX13_1.rot = SHX14_1
SHX14_1 = {}
SHX14_1.label = "Street cam 13"
SHX15_1 = {}
SHX15_1.x = 423.26708984375
SHX15_1.y = -997.22393798828
SHX15_1.z = 33.90548324585
SHX14_1.pos = SHX15_1
SHX15_1 = {}
SHX15_1.x = -25.0
SHX15_1.y = 0.0
SHX15_1.z = 0.0
SHX14_1.rot = SHX15_1
SHX15_1 = {}
SHX15_1.label = "Street cam 14"
SHX16_1 = {}
SHX16_1.x = 438.83123779297
SHX16_1.y = -1000.6759033203
SHX16_1.z = 32.538806915283
SHX15_1.pos = SHX16_1
SHX16_1 = {}
SHX16_1.x = -25.0
SHX16_1.y = 0.0
SHX16_1.z = 0.0
SHX15_1.rot = SHX16_1
SHX16_1 = {}
SHX16_1.label = "Street cam 15"
SHX17_1 = {}
SHX17_1.x = 467.33630371094
SHX17_1.y = -1015.2039794922
SHX17_1.z = 30.915859222412
SHX16_1.pos = SHX17_1
SHX17_1 = {}
SHX17_1.x = -25.0
SHX17_1.y = 0.0
SHX17_1.z = 0.0
SHX16_1.rot = SHX17_1
SHX17_1 = {}
SHX17_1.label = "Street cam 16"
SHX18_1 = {}
SHX18_1.x = 490.38217163086
SHX18_1.y = -1024.0905761719
SHX18_1.z = 31.309572219849
SHX17_1.pos = SHX18_1
SHX18_1 = {}
SHX18_1.x = -25.0
SHX18_1.y = 0.0
SHX18_1.z = 0.0
SHX17_1.rot = SHX18_1
SHX18_1 = {}
SHX18_1.label = "Street cam 17"
SHX19_1 = {}
SHX19_1.x = 489.91595458984
SHX19_1.y = -1003.3515625
SHX19_1.z = 29.712303161621
SHX18_1.pos = SHX19_1
SHX19_1 = {}
SHX19_1.x = -25.0
SHX19_1.y = 0.0
SHX19_1.z = 0.0
SHX18_1.rot = SHX19_1
SHX19_1 = {}
SHX19_1.label = "Street cam 18"
SHX20_1 = {}
SHX20_1.x = 481.11560058594
SHX20_1.y = -977.43322753906
SHX20_1.z = 29.869251251221
SHX19_1.pos = SHX20_1
SHX20_1 = {}
SHX20_1.x = -25.0
SHX20_1.y = 0.0
SHX20_1.z = 0.0
SHX19_1.rot = SHX20_1
SHX20_1 = {}
SHX20_1.label = "Street cam 19"
SHX21_1 = {}
SHX21_1.x = 432.4736328125
SHX21_1.y = -656.77960205078
SHX21_1.z = 30.912614822388
SHX20_1.pos = SHX21_1
SHX21_1 = {}
SHX21_1.x = -25.0
SHX21_1.y = 0.0
SHX21_1.z = 0.0
SHX20_1.rot = SHX21_1
SHX21_1 = {}
SHX21_1.label = "Street cam 20"
SHX22_1 = {}
SHX22_1.x = 353.97552490234
SHX22_1.y = -600.77154541016
SHX22_1.z = 32.244640350342
SHX21_1.pos = SHX22_1
SHX22_1 = {}
SHX22_1.x = -25.0
SHX22_1.y = 0.0
SHX22_1.z = 0.0
SHX21_1.rot = SHX22_1
SHX22_1 = {}
SHX22_1.label = "Street cam 21"
SHX23_1 = {}
SHX23_1.x = -128.30404663086
SHX23_1.y = -1023.4191894531
SHX23_1.z = 35.994411468506
SHX22_1.pos = SHX23_1
SHX23_1 = {}
SHX23_1.x = -25.0
SHX23_1.y = 0.0
SHX23_1.z = 0.0
SHX22_1.rot = SHX23_1
SHX23_1 = {}
SHX23_1.label = "Street cam 22"
SHX24_1 = {}
SHX24_1.x = -62.237995147705
SHX24_1.y = -1101.1270751953
SHX24_1.z = 32.561504364014
SHX23_1.pos = SHX24_1
SHX24_1 = {}
SHX24_1.x = -25.0
SHX24_1.y = 0.0
SHX24_1.z = 0.0
SHX23_1.rot = SHX24_1
SHX24_1 = {}
SHX24_1.label = "Street cam 23"
SHX25_1 = {}
SHX25_1.x = 24.420116424561
SHX25_1.y = -1350.7467041016
SHX25_1.z = 32.561325073242
SHX24_1.pos = SHX25_1
SHX25_1 = {}
SHX25_1.x = -25.0
SHX25_1.y = 0.0
SHX25_1.z = 0.0
SHX24_1.rot = SHX25_1
SHX25_1 = {}
SHX25_1.label = "Street cam 24"
SHX26_1 = {}
SHX26_1.x = 102.72190856934
SHX26_1.y = -1318.4841308594
SHX26_1.z = 33.93473815918
SHX25_1.pos = SHX26_1
SHX26_1 = {}
SHX26_1.x = -25.0
SHX26_1.y = 0.0
SHX26_1.z = 0.0
SHX25_1.rot = SHX26_1
SHX26_1 = {}
SHX26_1.label = "Street cam 25"
SHX27_1 = {}
SHX27_1.x = 68.04532623291
SHX27_1.y = -1720.1014404297
SHX27_1.z = 34.036998748779
SHX26_1.pos = SHX27_1
SHX27_1 = {}
SHX27_1.x = -25.0
SHX27_1.y = 0.0
SHX27_1.z = 0.0
SHX26_1.rot = SHX27_1
SHX27_1 = {}
SHX27_1.label = "Street cam 26"
SHX28_1 = {}
SHX28_1.x = -59.932559967041
SHX28_1.y = -1752.037109375
SHX28_1.z = 31.550285339355
SHX27_1.pos = SHX28_1
SHX28_1 = {}
SHX28_1.x = -25.0
SHX28_1.y = 0.0
SHX28_1.z = 0.0
SHX27_1.rot = SHX28_1
SHX28_1 = {}
SHX28_1.label = "Street cam 27"
SHX29_1 = {}
SHX29_1.x = 1301.2156982422
SHX29_1.y = 4317.45703125
SHX29_1.z = 41.211765289307
SHX28_1.pos = SHX29_1
SHX29_1 = {}
SHX29_1.x = -25.0
SHX29_1.y = 0.0
SHX29_1.z = 0.0
SHX28_1.rot = SHX29_1
SHX29_1 = {}
SHX29_1.label = "Street cam 28"
SHX30_1 = {}
SHX30_1.x = 3550.9475097656
SHX30_1.y = 3651.6000976562
SHX30_1.z = 46.954288482666
SHX29_1.pos = SHX30_1
SHX30_1 = {}
SHX30_1.x = -25.0
SHX30_1.y = 0.0
SHX30_1.z = 0.0
SHX29_1.rot = SHX30_1
SHX30_1 = {}
SHX30_1.label = "Street cam 29"
SHX31_1 = {}
SHX31_1.x = 1727.2385253906
SHX31_1.y = 6412.2392578125
SHX31_1.z = 36.611518859863
SHX30_1.pos = SHX31_1
SHX31_1 = {}
SHX31_1.x = -25.0
SHX31_1.y = 0.0
SHX31_1.z = 0.0
SHX30_1.rot = SHX31_1
SHX31_1 = {}
SHX31_1.label = "Street cam 30"
SHX32_1 = {}
SHX32_1.x = 130.58874511719
SHX32_1.y = 6525.1376953125
SHX32_1.z = 35.731548309326
SHX31_1.pos = SHX32_1
SHX32_1 = {}
SHX32_1.x = -25.0
SHX32_1.y = 0.0
SHX32_1.z = 0.0
SHX31_1.rot = SHX32_1
SHX32_1 = {}
SHX32_1.label = "Street cam 31"
SHX33_1 = {}
SHX33_1.x = -434.53747558594
SHX33_1.y = 6011.1416015625
SHX33_1.z = 34.472328186035
SHX32_1.pos = SHX33_1
SHX33_1 = {}
SHX33_1.x = -25.0
SHX33_1.y = 0.0
SHX33_1.z = 0.0
SHX32_1.rot = SHX33_1
SHX33_1 = {}
SHX33_1.label = "Street cam 32"
SHX34_1 = {}
SHX34_1.x = -1099.2557373047
SHX34_1.y = 4911.3217773438
SHX34_1.z = 218.9635925293
SHX33_1.pos = SHX34_1
SHX34_1 = {}
SHX34_1.x = -25.0
SHX34_1.y = 0.0
SHX34_1.z = 0.0
SHX33_1.rot = SHX34_1
SHX34_1 = {}
SHX34_1.label = "Street cam 33"
SHX35_1 = {}
SHX35_1.x = 1487.5465087891
SHX35_1.y = 6354.9409179688
SHX35_1.z = 27.180263519287
SHX34_1.pos = SHX35_1
SHX35_1 = {}
SHX35_1.x = -25.0
SHX35_1.y = 0.0
SHX35_1.z = 0.0
SHX34_1.rot = SHX35_1
SHX35_1 = {}
SHX35_1.label = "Street cam 34"
SHX36_1 = {}
SHX36_1.x = 232.71536254883
SHX36_1.y = -591.38494873047
SHX36_1.z = 47.335529327393
SHX35_1.pos = SHX36_1
SHX36_1 = {}
SHX36_1.x = -25.0
SHX36_1.y = 0.0
SHX36_1.z = 0.0
SHX35_1.rot = SHX36_1
SHX1_1[1] = SHX2_1
SHX1_1[2] = SHX3_1
SHX1_1[3] = SHX4_1
SHX1_1[4] = SHX5_1
SHX1_1[5] = SHX6_1
SHX1_1[6] = SHX7_1
SHX1_1[7] = SHX8_1
SHX1_1[8] = SHX9_1
SHX1_1[9] = SHX10_1
SHX1_1[10] = SHX11_1
SHX1_1[11] = SHX12_1
SHX1_1[12] = SHX13_1
SHX1_1[13] = SHX14_1
SHX1_1[14] = SHX15_1
SHX1_1[15] = SHX16_1
SHX1_1[16] = SHX17_1
SHX1_1[17] = SHX18_1
SHX1_1[18] = SHX19_1
SHX1_1[19] = SHX20_1
SHX1_1[20] = SHX21_1
SHX1_1[21] = SHX22_1
SHX1_1[22] = SHX23_1
SHX1_1[23] = SHX24_1
SHX1_1[24] = SHX25_1
SHX1_1[25] = SHX26_1
SHX1_1[26] = SHX27_1
SHX1_1[27] = SHX28_1
SHX1_1[28] = SHX29_1
SHX1_1[29] = SHX30_1
SHX1_1[30] = SHX31_1
SHX1_1[31] = SHX32_1
SHX1_1[32] = SHX33_1
SHX1_1[33] = SHX34_1
SHX1_1[34] = SHX35_1
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = ipairs
  SHX1_2 = SHX0_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DoesBlipExist
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = RemoveBlip
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = {}
  SHX0_1 = SHX0_2
end
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  if SHX0_2 then
    SHX1_2 = type
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if "table" == SHX1_2 then
      goto SHX_LABEL_10
    end
  end
  SHX1_2 = nil
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX1_2 = type
  SHX2_2 = SHX0_2[1]
  SHX1_2 = SHX1_2(SHX2_2)
  if "number" == SHX1_2 then
    SHX1_2 = SHX0_2[2]
    if SHX1_2 then
      SHX1_2 = SHX0_2[2]
      SHX2_2 = tonumber
      SHX3_2 = SHX1_2.x
      if not SHX3_2 then
        SHX3_2 = SHX1_2[1]
      end
      SHX2_2 = SHX2_2(SHX3_2)
      SHX3_2 = tonumber
      SHX4_2 = SHX1_2.y
      if not SHX4_2 then
        SHX4_2 = SHX1_2[2]
      end
      SHX3_2 = SHX3_2(SHX4_2)
      SHX4_2 = tonumber
      SHX5_2 = SHX1_2.z
      if not SHX5_2 then
        SHX5_2 = SHX1_2[3]
      end
      SHX4_2 = SHX4_2(SHX5_2)
      if not SHX4_2 then
        SHX4_2 = 0.0
      end
      if not SHX2_2 or not SHX3_2 then
        SHX5_2 = nil
        return SHX5_2
      end
      SHX5_2 = SHX2_2
      SHX6_2 = SHX3_2
      SHX7_2 = SHX4_2
      SHX8_2 = SHX0_2[3]
      SHX9_2 = SHX0_2[4]
      SHX10_2 = SHX0_2[5]
      SHX11_2 = SHX0_2[6]
      return SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
    end
  end
  SHX1_2 = SHX0_2.x
  if SHX1_2 then
    SHX1_2 = tonumber
    SHX2_2 = SHX0_2.x
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = tonumber
    SHX3_2 = SHX0_2.y
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = tonumber
    SHX4_2 = SHX0_2.z
    SHX3_2 = SHX3_2(SHX4_2)
    if not SHX3_2 then
      SHX3_2 = 0.0
    end
    SHX4_2 = SHX0_2.heading
    SHX5_2 = SHX0_2.dead
    SHX6_2 = SHX0_2.colour
    SHX7_2 = SHX0_2.bucket
    return SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  end
  SHX1_2 = nil
  return SHX1_2
end
SHX4_1 = RegisterNetEvent
SHX5_1 = "f65acb9738"
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" ~= SHX1_2 then
    return
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerBucket
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX2_1
  SHX2_2()
  SHX2_2 = ipairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX3_1
    SHX9_2 = SHX7_2
    SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX8_2(SHX9_2)
    if SHX8_2 and SHX14_2 == SHX1_2 then
      SHX15_2 = AddBlipForCoord
      SHX16_2 = SHX8_2 + 0.0
      SHX17_2 = SHX9_2 + 0.0
      SHX18_2 = SHX10_2 + 0.0
      SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2)
      SHX16_2 = SHX13_2 or SHX16_2
      if not SHX13_2 then
        SHX16_2 = 3
      end
      if 1 == SHX12_2 then
        SHX17_2 = SetBlipSprite
        SHX18_2 = SHX15_2
        SHX19_2 = 274
        SHX17_2(SHX18_2, SHX19_2)
      elseif 5 == SHX16_2 then
        SHX17_2 = SetBlipSprite
        SHX18_2 = SHX15_2
        SHX19_2 = 15
        SHX17_2(SHX18_2, SHX19_2)
      else
        SHX17_2 = SetBlipSprite
        SHX18_2 = SHX15_2
        SHX19_2 = 1
        SHX17_2(SHX18_2, SHX19_2)
      end
      SHX17_2 = SetBlipColour
      SHX18_2 = SHX15_2
      SHX19_2 = SHX16_2
      SHX17_2(SHX18_2, SHX19_2)
      SHX17_2 = SetBlipScale
      SHX18_2 = SHX15_2
      SHX19_2 = 0.85
      SHX17_2(SHX18_2, SHX19_2)
      SHX17_2 = SetBlipAlpha
      SHX18_2 = SHX15_2
      SHX19_2 = 255
      SHX17_2(SHX18_2, SHX19_2)
      SHX17_2 = ShowHeadingIndicatorOnBlip
      SHX18_2 = SHX15_2
      SHX19_2 = true
      SHX17_2(SHX18_2, SHX19_2)
      SHX17_2 = SetBlipRotation
      SHX18_2 = SHX15_2
      SHX19_2 = math
      SHX19_2 = SHX19_2.floor
      SHX20_2 = SHX11_2 or SHX20_2
      if not SHX11_2 then
        SHX20_2 = 0.0
      end
      SHX19_2, SHX20_2 = SHX19_2(SHX20_2)
      SHX17_2(SHX18_2, SHX19_2, SHX20_2)
      SHX17_2 = SHX0_1
      SHX17_2 = #SHX17_2
      SHX18_2 = SHX17_2 + 1
      SHX17_2 = SHX0_1
      SHX17_2[SHX18_2] = SHX15_2
    end
  end
end
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = RegisterNetEvent
SHX5_1 = "70c51a178a"
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX2_1
  SHX0_2()
end
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = RegisterNetEvent
SHX5_1 = "CMG:hackingPhoneActionResult"
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  if SHX0_2 then
    SHX1_2 = SHX0_2.message
    if SHX1_2 then
      SHX1_2 = SHX0_2.message
      if "" ~= SHX1_2 then
        SHX1_2 = SHX0_2.ok
        if SHX1_2 then
          SHX1_2 = notify
          SHX2_2 = "~g~"
          SHX3_2 = SHX0_2.message
          SHX2_2 = SHX2_2 .. SHX3_2
          SHX1_2(SHX2_2)
        else
          SHX1_2 = notify
          SHX2_2 = "~r~"
          SHX3_2 = SHX0_2.message
          SHX2_2 = SHX2_2 .. SHX3_2
          SHX1_2(SHX2_2)
        end
      end
    end
  end
end
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = 0
SHX5_1 = RegisterNetEvent
SHX6_1 = "ee4d898632"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = tonumber
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = 0
  end
  if SHX1_2 <= 0 then
    return
  end
  SHX2_2 = SHX4_1
  SHX2_2 = SHX2_2 + 1
  SHX4_1 = SHX2_2
  SHX2_2 = SHX4_1
  SHX3_2 = CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
    SHX0_3 = PlayerPedId
    SHX0_3 = SHX0_3()
    SHX1_3 = FreezeEntityPosition
    SHX2_3 = SHX0_3
    SHX3_3 = true
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = DisplayRadar
    SHX2_3 = false
    SHX1_3(SHX2_3)
    SHX1_3 = SetTimecycleModifier
    SHX2_3 = "scanline_cam_cheap"
    SHX1_3(SHX2_3)
    SHX1_3 = SetTimecycleModifierStrength
    SHX2_3 = 2.0
    SHX1_3(SHX2_3)
    SHX1_3 = CreateCam
    SHX2_3 = "DEFAULT_SCRIPTED_CAMERA"
    SHX3_3 = true
    SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
    SHX2_3 = 1
    SHX3_3 = GetGameTimer
    SHX3_3 = SHX3_3()
    SHX4_3 = SHX1_2
    SHX3_3 = SHX3_3 + SHX4_3
    function SHX4_3(SHX0_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
      if not SHX0_4 then
        return
      end
      SHX1_4 = SetFocusPosAndVel
      SHX2_4 = SHX0_4.pos
      SHX2_4 = SHX2_4.x
      SHX3_4 = SHX0_4.pos
      SHX3_4 = SHX3_4.y
      SHX4_4 = SHX0_4.pos
      SHX4_4 = SHX4_4.z
      SHX5_4 = 0.0
      SHX6_4 = 0.0
      SHX7_4 = 0.0
      SHX1_4(SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4)
      SHX1_4 = SetCamCoord
      SHX2_4 = SHX1_3
      SHX3_4 = SHX0_4.pos
      SHX3_4 = SHX3_4.x
      SHX4_4 = SHX0_4.pos
      SHX4_4 = SHX4_4.y
      SHX5_4 = SHX0_4.pos
      SHX5_4 = SHX5_4.z
      SHX1_4(SHX2_4, SHX3_4, SHX4_4, SHX5_4)
      SHX1_4 = SetCamRot
      SHX2_4 = SHX1_3
      SHX3_4 = SHX0_4.rot
      SHX3_4 = SHX3_4.x
      SHX4_4 = SHX0_4.rot
      SHX4_4 = SHX4_4.y
      SHX5_4 = SHX0_4.rot
      SHX5_4 = SHX5_4.z
      SHX6_4 = 2
      SHX1_4(SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4)
      SHX1_4 = SetCamFov
      SHX2_4 = SHX1_3
      SHX3_4 = 50.0
      SHX1_4(SHX2_4, SHX3_4)
      SHX1_4 = RenderScriptCams
      SHX2_4 = true
      SHX3_4 = false
      SHX4_4 = 0
      SHX5_4 = true
      SHX6_4 = true
      SHX1_4(SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4)
    end
    SHX5_3 = true
    while true do
      SHX6_3 = SHX2_2
      SHX7_3 = SHX4_1
      if SHX6_3 ~= SHX7_3 then
        break
      end
      SHX6_3 = GetGameTimer
      SHX6_3 = SHX6_3()
      if not (SHX3_3 > SHX6_3) then
        break
      end
      SHX6_3 = SHX1_1
      SHX6_3 = SHX6_3[SHX2_3]
      if not SHX6_3 then
        SHX2_3 = 1
        SHX7_3 = SHX1_1
        SHX6_3 = SHX7_3[SHX2_3]
      end
      if SHX5_3 then
        SHX7_3 = SHX4_3
        SHX8_3 = SHX6_3
        SHX7_3(SHX8_3)
        SHX5_3 = false
      end
      SHX7_3 = IsControlJustPressed
      SHX8_3 = 0
      SHX9_3 = 194
      SHX7_3 = SHX7_3(SHX8_3, SHX9_3)
      if SHX7_3 then
        break
      end
      SHX7_3 = IsControlJustPressed
      SHX8_3 = 0
      SHX9_3 = 174
      SHX7_3 = SHX7_3(SHX8_3, SHX9_3)
      if SHX7_3 then
        SHX2_3 = SHX2_3 - 1
        if SHX2_3 < 1 then
          SHX7_3 = SHX1_1
          SHX2_3 = #SHX7_3
        end
        SHX5_3 = true
      else
        SHX7_3 = IsControlJustPressed
        SHX8_3 = 0
        SHX9_3 = 175
        SHX7_3 = SHX7_3(SHX8_3, SHX9_3)
        if SHX7_3 then
          SHX2_3 = SHX2_3 + 1
          SHX7_3 = SHX1_1
          SHX7_3 = #SHX7_3
          if SHX2_3 > SHX7_3 then
            SHX2_3 = 1
          end
          SHX5_3 = true
        end
      end
      SHX7_3 = Wait
      SHX8_3 = 0
      SHX7_3(SHX8_3)
    end
    SHX6_3 = RenderScriptCams
    SHX7_3 = false
    SHX8_3 = false
    SHX9_3 = 0
    SHX10_3 = true
    SHX11_3 = true
    SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
    SHX6_3 = DoesCamExist
    SHX7_3 = SHX1_3
    SHX6_3 = SHX6_3(SHX7_3)
    if SHX6_3 then
      SHX6_3 = DestroyCam
      SHX7_3 = SHX1_3
      SHX8_3 = false
      SHX6_3(SHX7_3, SHX8_3)
    end
    SHX6_3 = ClearFocus
    SHX6_3()
    SHX6_3 = ClearTimecycleModifier
    SHX6_3()
    SHX6_3 = DisplayRadar
    SHX7_3 = true
    SHX6_3(SHX7_3)
    SHX6_3 = SHX2_2
    SHX7_3 = SHX4_1
    if SHX6_3 == SHX7_3 then
      SHX6_3 = FreezeEntityPosition
      SHX7_3 = PlayerPedId
      SHX7_3 = SHX7_3()
      SHX8_3 = false
      SHX6_3(SHX7_3, SHX8_3)
    end
  end
  SHX3_2(SHX4_2)
end
SHX5_1(SHX6_1, SHX7_1)
