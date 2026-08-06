-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1
SHX0_1 = {}
SHX1_1 = true
SHX2_1 = CMG
function SHX3_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  if nil == SHX1_2 then
    SHX1_2 = SHX0_2
    SHX0_2 = "cmg"
  end
  SHX2_2 = SHX1_1
  if not SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.warn
    SHX3_2 = "Failed to load "
    SHX4_2 = SHX0_2
    SHX5_2 = "/"
    SHX6_2 = SHX1_2
    SHX7_2 = ", isLoadingFiles is false"
    SHX3_2 = SHX3_2 .. SHX4_2 .. SHX5_2 .. SHX6_2 .. SHX7_2
    SHX2_2(SHX3_2)
    SHX2_2 = {}
    return SHX2_2
  end
  SHX2_2 = SHX0_2
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX3_2 = SHX0_1
  SHX3_2 = SHX3_2[SHX2_2]
  if SHX3_2 then
    SHX3_2 = table
    SHX3_2 = SHX3_2.unpack
    SHX4_2 = SHX0_1
    SHX4_2 = SHX4_2[SHX2_2]
    return SHX3_2(SHX4_2)
  else
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.loadResourceFile
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    SHX6_2 = ".lua"
    SHX5_2 = SHX5_2 .. SHX6_2
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if not SHX3_2 then
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.warn
      SHX5_2 = "[CMG] Failed to CMG.loadResourceFile "
      SHX6_2 = SHX0_2
      SHX7_2 = "/"
      SHX8_2 = SHX1_2
      SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2 .. SHX8_2
      SHX4_2(SHX5_2)
      SHX4_2 = {}
      return SHX4_2
    end
    SHX4_2 = load
    SHX5_2 = SHX3_2
    SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      SHX6_2 = {}
      SHX7_2 = pcall
      SHX8_2 = SHX4_2
      SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX7_2(SHX8_2)
      SHX6_2[1] = SHX7_2
      SHX6_2[2] = SHX8_2
      SHX6_2[3] = SHX9_2
      SHX6_2[4] = SHX10_2
      SHX6_2[5] = SHX11_2
      SHX6_2[6] = SHX12_2
      SHX6_2[7] = SHX13_2
      SHX7_2 = SHX6_2[1]
      if SHX7_2 then
        SHX7_2 = table
        SHX7_2 = SHX7_2.remove
        SHX8_2 = SHX6_2
        SHX9_2 = 1
        SHX7_2(SHX8_2, SHX9_2)
        SHX7_2 = SHX0_1
        SHX7_2[SHX2_2] = SHX6_2
        SHX7_2 = table
        SHX7_2 = SHX7_2.unpack
        SHX8_2 = SHX6_2
        return SHX7_2(SHX8_2)
      else
        SHX7_2 = SHX0_1
        SHX7_2[SHX2_2] = nil
        SHX7_2 = CMG
        SHX7_2 = SHX7_2.warn
        SHX8_2 = "[CMG] error loading module "
        SHX9_2 = SHX0_2
        SHX10_2 = "/"
        SHX11_2 = SHX1_2
        SHX12_2 = ":"
        SHX13_2 = SHX6_2[2]
        SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2 .. SHX11_2 .. SHX12_2 .. SHX13_2
        SHX7_2(SHX8_2)
      end
    else
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.warn
      SHX7_2 = "[CMG] error parsing module "
      SHX8_2 = SHX0_2
      SHX9_2 = "/"
      SHX10_2 = SHX1_2
      SHX11_2 = ":"
      SHX12_2 = SHX5_2
      SHX7_2 = SHX7_2 .. SHX8_2 .. SHX9_2 .. SHX10_2 .. SHX11_2 .. SHX12_2
      SHX6_2(SHX7_2)
    end
  end
  SHX3_2 = {}
  return SHX3_2
end
SHX2_1.loadModule = SHX3_1
function SHX2_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2
  SHX3_2 = SHX0_2 >> SHX1_2
  SHX4_2 = 1 << SHX2_2
  SHX4_2 = SHX4_2 - 1
  SHX3_2 = SHX3_2 & SHX4_2
  return SHX3_2
end
function SHX3_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2, SHX40_2, SHX41_2, SHX42_2, SHX43_2, SHX44_2, SHX45_2, SHX46_2, SHX47_2, SHX48_2, SHX49_2, SHX50_2, SHX51_2, SHX52_2, SHX53_2, SHX54_2, SHX55_2
  SHX3_2 = {}
  SHX4_2 = pairs
  SHX5_2 = {}
  SHX5_2[0] = "A"
  SHX6_2 = "B"
  SHX7_2 = "C"
  SHX8_2 = "D"
  SHX9_2 = "E"
  SHX10_2 = "F"
  SHX11_2 = "G"
  SHX12_2 = "H"
  SHX13_2 = "I"
  SHX14_2 = "J"
  SHX15_2 = "K"
  SHX16_2 = "L"
  SHX17_2 = "M"
  SHX18_2 = "N"
  SHX19_2 = "O"
  SHX20_2 = "P"
  SHX21_2 = "Q"
  SHX22_2 = "R"
  SHX23_2 = "S"
  SHX24_2 = "T"
  SHX25_2 = "U"
  SHX26_2 = "V"
  SHX27_2 = "W"
  SHX28_2 = "X"
  SHX29_2 = "Y"
  SHX30_2 = "Z"
  SHX31_2 = "a"
  SHX32_2 = "b"
  SHX33_2 = "c"
  SHX34_2 = "d"
  SHX35_2 = "e"
  SHX36_2 = "f"
  SHX37_2 = "g"
  SHX38_2 = "h"
  SHX39_2 = "i"
  SHX40_2 = "j"
  SHX41_2 = "k"
  SHX42_2 = "l"
  SHX43_2 = "m"
  SHX44_2 = "n"
  SHX45_2 = "o"
  SHX46_2 = "p"
  SHX47_2 = "q"
  SHX48_2 = "r"
  SHX49_2 = "s"
  SHX50_2 = "t"
  SHX51_2 = "u"
  SHX52_2 = "v"
  SHX53_2 = "w"
  SHX54_2 = "x"
  SHX55_2 = "y"
  SHX5_2[1] = SHX6_2
  SHX5_2[2] = SHX7_2
  SHX5_2[3] = SHX8_2
  SHX5_2[4] = SHX9_2
  SHX5_2[5] = SHX10_2
  SHX5_2[6] = SHX11_2
  SHX5_2[7] = SHX12_2
  SHX5_2[8] = SHX13_2
  SHX5_2[9] = SHX14_2
  SHX5_2[10] = SHX15_2
  SHX5_2[11] = SHX16_2
  SHX5_2[12] = SHX17_2
  SHX5_2[13] = SHX18_2
  SHX5_2[14] = SHX19_2
  SHX5_2[15] = SHX20_2
  SHX5_2[16] = SHX21_2
  SHX5_2[17] = SHX22_2
  SHX5_2[18] = SHX23_2
  SHX5_2[19] = SHX24_2
  SHX5_2[20] = SHX25_2
  SHX5_2[21] = SHX26_2
  SHX5_2[22] = SHX27_2
  SHX5_2[23] = SHX28_2
  SHX5_2[24] = SHX29_2
  SHX5_2[25] = SHX30_2
  SHX5_2[26] = SHX31_2
  SHX5_2[27] = SHX32_2
  SHX5_2[28] = SHX33_2
  SHX5_2[29] = SHX34_2
  SHX5_2[30] = SHX35_2
  SHX5_2[31] = SHX36_2
  SHX5_2[32] = SHX37_2
  SHX5_2[33] = SHX38_2
  SHX5_2[34] = SHX39_2
  SHX5_2[35] = SHX40_2
  SHX5_2[36] = SHX41_2
  SHX5_2[37] = SHX42_2
  SHX5_2[38] = SHX43_2
  SHX5_2[39] = SHX44_2
  SHX5_2[40] = SHX45_2
  SHX5_2[41] = SHX46_2
  SHX5_2[42] = SHX47_2
  SHX5_2[43] = SHX48_2
  SHX5_2[44] = SHX49_2
  SHX5_2[45] = SHX50_2
  SHX5_2[46] = SHX51_2
  SHX5_2[47] = SHX52_2
  SHX5_2[48] = SHX53_2
  SHX5_2[49] = SHX54_2
  SHX5_2[50] = SHX55_2
  SHX6_2 = "z"
  SHX7_2 = "0"
  SHX8_2 = "1"
  SHX9_2 = "2"
  SHX10_2 = "3"
  SHX11_2 = "4"
  SHX12_2 = "5"
  SHX13_2 = "6"
  SHX14_2 = "7"
  SHX15_2 = "8"
  SHX16_2 = "9"
  SHX17_2 = SHX0_2 or SHX17_2
  if not SHX0_2 then
    SHX17_2 = "+"
  end
  SHX18_2 = SHX1_2 or SHX18_2
  if not SHX1_2 then
    SHX18_2 = "/"
  end
  SHX19_2 = SHX2_2 or SHX19_2
  if not SHX2_2 then
    SHX19_2 = "="
  end
  SHX5_2[51] = SHX6_2
  SHX5_2[52] = SHX7_2
  SHX5_2[53] = SHX8_2
  SHX5_2[54] = SHX9_2
  SHX5_2[55] = SHX10_2
  SHX5_2[56] = SHX11_2
  SHX5_2[57] = SHX12_2
  SHX5_2[58] = SHX13_2
  SHX5_2[59] = SHX14_2
  SHX5_2[60] = SHX15_2
  SHX5_2[61] = SHX16_2
  SHX5_2[62] = SHX17_2
  SHX5_2[63] = SHX18_2
  SHX5_2[64] = SHX19_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = string
    SHX10_2 = SHX10_2.byte
    SHX11_2 = SHX9_2
    SHX10_2 = SHX10_2(SHX11_2)
    SHX3_2[SHX8_2] = SHX10_2
  end
  return SHX3_2
end
function SHX4_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX3_2 = {}
  SHX4_2 = pairs
  SHX5_2 = SHX3_1
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX8_2 = SHX2_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX3_2[SHX9_2] = SHX8_2
  end
  return SHX3_2
end
SHX5_1 = SHX4_1
SHX5_1 = SHX5_1()
SHX6_1 = string
SHX6_1 = SHX6_1.char
SHX7_1 = table
SHX7_1 = SHX7_1.concat
function SHX8_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  if not SHX1_2 then
    SHX1_2 = SHX5_1
  end
  SHX3_2 = "[^%w%+%/%=]"
  if SHX1_2 then
    SHX4_2 = nil
    SHX5_2 = nil
    SHX6_2 = pairs
    SHX7_2 = SHX1_2
    SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
    for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
      if 62 == SHX11_2 then
        SHX4_2 = SHX10_2
      elseif 63 == SHX11_2 then
        SHX5_2 = SHX10_2
      end
    end
    SHX6_2 = string
    SHX6_2 = SHX6_2.format
    SHX7_2 = "[^%%w%%%s%%%s%%=]"
    SHX8_2 = SHX6_1
    SHX9_2 = SHX4_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX9_2 = SHX6_1
    SHX10_2 = SHX5_2
    SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2 = SHX9_2(SHX10_2)
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
    SHX3_2 = SHX6_2
  end
  SHX5_2 = SHX0_2
  SHX4_2 = SHX0_2.gsub
  SHX6_2 = SHX3_2
  SHX7_2 = ""
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX0_2 = SHX4_2
  SHX4_2 = SHX2_2 or SHX4_2
  if SHX2_2 then
    SHX4_2 = {}
  end
  SHX5_2 = {}
  SHX6_2 = 1
  SHX7_2 = #SHX0_2
  SHX9_2 = SHX0_2
  SHX8_2 = SHX0_2.sub
  SHX10_2 = -2
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  if "==" == SHX8_2 then
    SHX8_2 = 2
    if SHX8_2 then
      goto SHX_LABEL_63
    end
  end
  SHX9_2 = SHX0_2
  SHX8_2 = SHX0_2.sub
  SHX10_2 = -1
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  if "=" == SHX8_2 then
    SHX8_2 = 1
    if SHX8_2 then
      goto SHX_LABEL_63
    end
  end
  SHX8_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_63:: outside nested blocks until all 'goto SHX_LABEL_63' can see it
  ::SHX_LABEL_63::
  SHX9_2 = 1
  if SHX8_2 > 0 then
    SHX10_2 = SHX7_2 - 4
    if SHX10_2 then
      goto SHX_LABEL_71
    end
  end
  SHX10_2 = SHX7_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_71:: outside nested blocks until all 'goto SHX_LABEL_71' can see it
  ::SHX_LABEL_71::
  SHX11_2 = 4
  for SHX12_2 = SHX9_2, SHX10_2, SHX11_2 do
    SHX14_2 = SHX0_2
    SHX13_2 = SHX0_2.byte
    SHX15_2 = SHX12_2
    SHX16_2 = SHX12_2 + 3
    SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
    SHX17_2 = nil
    if SHX2_2 then
      SHX18_2 = SHX13_2 * 16777216
      SHX19_2 = SHX14_2 * 65536
      SHX18_2 = SHX18_2 + SHX19_2
      SHX19_2 = SHX15_2 * 256
      SHX18_2 = SHX18_2 + SHX19_2
      SHX18_2 = SHX18_2 + SHX16_2
      SHX17_2 = SHX4_2[SHX18_2]
      if not SHX17_2 then
        SHX19_2 = SHX1_2[SHX13_2]
        SHX19_2 = SHX19_2 * 262144
        SHX20_2 = SHX1_2[SHX14_2]
        SHX20_2 = SHX20_2 * 4096
        SHX19_2 = SHX19_2 + SHX20_2
        SHX20_2 = SHX1_2[SHX15_2]
        SHX20_2 = SHX20_2 * 64
        SHX19_2 = SHX19_2 + SHX20_2
        SHX20_2 = SHX1_2[SHX16_2]
        SHX19_2 = SHX19_2 + SHX20_2
        SHX20_2 = SHX6_1
        SHX21_2 = SHX2_1
        SHX22_2 = SHX19_2
        SHX23_2 = 16
        SHX24_2 = 8
        SHX21_2 = SHX21_2(SHX22_2, SHX23_2, SHX24_2)
        SHX22_2 = SHX2_1
        SHX23_2 = SHX19_2
        SHX24_2 = 8
        SHX25_2 = 8
        SHX22_2 = SHX22_2(SHX23_2, SHX24_2, SHX25_2)
        SHX23_2 = SHX2_1
        SHX24_2 = SHX19_2
        SHX25_2 = 0
        SHX26_2 = 8
        SHX23_2, SHX24_2, SHX25_2, SHX26_2 = SHX23_2(SHX24_2, SHX25_2, SHX26_2)
        SHX20_2 = SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
        SHX17_2 = SHX20_2
        SHX4_2[SHX18_2] = SHX17_2
      end
    else
      SHX18_2 = SHX1_2[SHX13_2]
      SHX18_2 = SHX18_2 * 262144
      SHX19_2 = SHX1_2[SHX14_2]
      SHX19_2 = SHX19_2 * 4096
      SHX18_2 = SHX18_2 + SHX19_2
      SHX19_2 = SHX1_2[SHX15_2]
      SHX19_2 = SHX19_2 * 64
      SHX18_2 = SHX18_2 + SHX19_2
      SHX19_2 = SHX1_2[SHX16_2]
      SHX18_2 = SHX18_2 + SHX19_2
      SHX19_2 = SHX6_1
      SHX20_2 = SHX2_1
      SHX21_2 = SHX18_2
      SHX22_2 = 16
      SHX23_2 = 8
      SHX20_2 = SHX20_2(SHX21_2, SHX22_2, SHX23_2)
      SHX21_2 = SHX2_1
      SHX22_2 = SHX18_2
      SHX23_2 = 8
      SHX24_2 = 8
      SHX21_2 = SHX21_2(SHX22_2, SHX23_2, SHX24_2)
      SHX22_2 = SHX2_1
      SHX23_2 = SHX18_2
      SHX24_2 = 0
      SHX25_2 = 8
      SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2 = SHX22_2(SHX23_2, SHX24_2, SHX25_2)
      SHX19_2 = SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
      SHX17_2 = SHX19_2
    end
    SHX5_2[SHX6_2] = SHX17_2
    SHX6_2 = SHX6_2 + 1
  end
  if 1 == SHX8_2 then
    SHX10_2 = SHX0_2
    SHX9_2 = SHX0_2.byte
    SHX11_2 = SHX7_2 - 3
    SHX12_2 = SHX7_2 - 1
    SHX9_2, SHX10_2, SHX11_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX12_2 = SHX1_2[SHX9_2]
    SHX12_2 = SHX12_2 * 262144
    SHX13_2 = SHX1_2[SHX10_2]
    SHX13_2 = SHX13_2 * 4096
    SHX12_2 = SHX12_2 + SHX13_2
    SHX13_2 = SHX1_2[SHX11_2]
    SHX13_2 = SHX13_2 * 64
    SHX12_2 = SHX12_2 + SHX13_2
    SHX13_2 = SHX6_1
    SHX14_2 = SHX2_1
    SHX15_2 = SHX12_2
    SHX16_2 = 16
    SHX17_2 = 8
    SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2)
    SHX15_2 = SHX2_1
    SHX16_2 = SHX12_2
    SHX17_2 = 8
    SHX18_2 = 8
    SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2)
    SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
    SHX5_2[SHX6_2] = SHX13_2
  elseif 2 == SHX8_2 then
    SHX10_2 = SHX0_2
    SHX9_2 = SHX0_2.byte
    SHX11_2 = SHX7_2 - 3
    SHX12_2 = SHX7_2 - 2
    SHX9_2, SHX10_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX11_2 = SHX1_2[SHX9_2]
    SHX11_2 = SHX11_2 * 262144
    SHX12_2 = SHX1_2[SHX10_2]
    SHX12_2 = SHX12_2 * 4096
    SHX11_2 = SHX11_2 + SHX12_2
    SHX12_2 = SHX6_1
    SHX13_2 = SHX2_1
    SHX14_2 = SHX11_2
    SHX15_2 = 16
    SHX16_2 = 8
    SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
    SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
    SHX5_2[SHX6_2] = SHX12_2
  end
  SHX9_2 = SHX7_1
  SHX10_2 = SHX5_2
  return SHX9_2(SHX10_2)
end
function SHX9_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX2_2 = SHX1_1
  if not SHX2_2 then
    return SHX1_2
  end
  SHX2_2 = string
  SHX2_2 = SHX2_2.find
  SHX3_2 = SHX0_2
  SHX4_2 = "cfg"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if not SHX2_2 or SHX2_2 <= 0 then
    return SHX1_2
  end
  SHX3_2 = string
  SHX3_2 = SHX3_2.sub
  SHX4_2 = SHX0_2
  SHX5_2 = SHX2_2 + 4
  SHX6_2 = -1
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = GetHashKey
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = table
  SHX5_2 = SHX5_2.create
  SHX6_2 = #SHX1_2
  SHX7_2 = 0
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = 5
  SHX7_2 = #SHX1_2
  SHX8_2 = 1
  for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
    SHX10_2 = string
    SHX10_2 = SHX10_2.byte
    SHX11_2 = SHX1_2
    SHX12_2 = SHX9_2
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
    SHX11_2 = SHX9_2 % 8
    SHX11_2 = SHX11_2 * 4
    SHX11_2 = SHX4_2 >> SHX11_2
    SHX11_2 = SHX11_2 & 15
    SHX12_2 = SHX11_2 + SHX9_2
    SHX12_2 = SHX12_2 % 63
    SHX12_2 = SHX10_2 - SHX12_2
    SHX13_2 = SHX9_2 - 4
    SHX14_2 = string
    SHX14_2 = SHX14_2.char
    SHX15_2 = SHX12_2
    SHX14_2 = SHX14_2(SHX15_2)
    SHX5_2[SHX13_2] = SHX14_2
  end
  SHX6_2 = SHX8_1
  SHX7_2 = table
  SHX7_2 = SHX7_2.concat
  SHX8_2 = SHX5_2
  SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX7_2(SHX8_2)
  return SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
end
SHX10_1 = CMG
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = nil
  SHX3_2 = IsDuplicityVersion
  SHX3_2 = SHX3_2()
  if SHX3_2 then
    SHX3_2 = GetConvarInt
    SHX4_2 = "serverNum"
    SHX5_2 = 0
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if 0 ~= SHX3_2 then
      goto SHX_LABEL_17
    end
  end
  SHX3_2 = LoadResourceFile
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX2_2 = SHX3_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
  ::SHX_LABEL_17::
  if not SHX2_2 then
    SHX3_2 = LoadResourceFile
    SHX4_2 = SHX0_2
    SHX5_2 = "prod/"
    SHX6_2 = SHX1_2
    SHX5_2 = SHX5_2 .. SHX6_2
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX2_2 = SHX3_2
  end
  if SHX2_2 then
    SHX3_2 = #SHX2_2
    if SHX3_2 > 4 then
      SHX3_2 = string
      SHX3_2 = SHX3_2.sub
      SHX4_2 = SHX2_2
      SHX5_2 = 1
      SHX6_2 = 4
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      if "CMGP" == SHX3_2 then
        SHX3_2 = SHX9_1
        SHX4_2 = SHX1_2
        SHX5_2 = SHX2_2
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        SHX2_2 = SHX3_2
      end
    end
  end
  return SHX2_2
end
SHX10_1.loadResourceFile = SHX11_1
SHX10_1 = nil
SHX11_1 = CMG
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = type
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "boolean" == SHX2_2 then
    SHX2_2 = type
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if "number" == SHX2_2 then
      SHX2_2 = GetFrameCount
      SHX2_2 = SHX2_2()
      if SHX1_2 == SHX2_2 then
        SHX2_2 = string
        SHX2_2 = SHX2_2.dump
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.setGameplayTask
        SHX2_2 = SHX2_2(SHX3_2)
        SHX3_2 = SHX10_1
        if SHX2_2 == SHX3_2 then
          SHX1_1 = SHX0_2
        end
      end
    end
  end
end
SHX11_1.setGameplayTask = SHX12_1
SHX11_1 = string
SHX11_1 = SHX11_1.dump
SHX12_1 = CMG
SHX12_1 = SHX12_1.setGameplayTask
SHX11_1 = SHX11_1(SHX12_1)
SHX10_1 = SHX11_1
SHX11_1 = IsDuplicityVersion
SHX11_1 = SHX11_1()
if not SHX11_1 then
  SHX11_1 = Citizen
  SHX11_1 = SHX11_1.CreateThread
  function SHX12_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_2, SHX1_2
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
    SHX0_2 = false
    SHX1_1 = SHX0_2
  end
  SHX11_1(SHX12_1)
end
function SHX11_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  if nil == SHX2_2 then
    SHX2_2 = 5000
  end
  SHX3_2 = {}
  SHX3_2.done = false
  function SHX4_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3
    SHX1_3 = SHX3_2.done
    if not SHX1_3 then
      if nil == SHX0_3 then
        SHX1_3 = SHX1_2
        SHX0_3 = SHX1_3 or SHX0_3
        if not SHX1_3 then
          SHX1_3 = {}
          SHX0_3 = SHX1_3
        end
      end
      SHX3_2.done = true
      SHX1_3 = SHX0_2
      SHX2_3 = table
      SHX2_3 = SHX2_3.unpack
      SHX3_3 = SHX0_3
      SHX2_3, SHX3_3 = SHX2_3(SHX3_3)
      SHX1_3(SHX2_3, SHX3_3)
    end
  end
  SHX5_2 = setmetatable
  SHX6_2 = SHX3_2
  SHX7_2 = {}
  function SHX8_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3
    SHX2_3 = SHX4_2
    SHX3_3 = SHX1_3
    SHX2_3(SHX3_3)
  end
  SHX7_2.__call = SHX8_2
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetTimeout
  SHX6_2 = SHX2_2
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX4_2
    SHX1_3 = SHX1_2
    SHX0_3(SHX1_3)
  end
  SHX5_2(SHX6_2, SHX7_2)
  return SHX3_2
end
Task = SHX11_1
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = tonumber
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if nil == SHX1_2 then
    SHX2_2 = 0
    return SHX2_2
  else
    SHX2_2 = math
    SHX2_2 = SHX2_2.floor
    SHX3_2 = SHX1_2
    return SHX2_2(SHX3_2)
  end
end
parseInt = SHX11_1
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = tonumber
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if nil == SHX1_2 then
    SHX1_2 = 0
  end
  return SHX1_2
end
parseDouble = SHX11_1
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = parseDouble
  SHX2_2 = SHX0_2
  return SHX1_2(SHX2_2)
end
parseFloat = SHX11_1
SHX11_1 = {}
function SHX12_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX3_2 = ""
  SHX4_2 = SHX11_1
  SHX4_2 = SHX4_2[SHX1_2]
  if nil == SHX4_2 then
    SHX5_2 = {}
    SHX4_2 = SHX5_2
    SHX5_2 = string
    SHX5_2 = SHX5_2.len
    SHX6_2 = SHX1_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = 1
    SHX7_2 = SHX5_2
    SHX8_2 = 1
    for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
      SHX10_2 = string
      SHX10_2 = SHX10_2.sub
      SHX11_2 = SHX1_2
      SHX12_2 = SHX9_2
      SHX13_2 = SHX9_2
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
      SHX4_2[SHX10_2] = true
    end
    SHX6_2 = SHX11_1
    SHX6_2[SHX1_2] = SHX4_2
  end
  SHX5_2 = string
  SHX5_2 = SHX5_2.len
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = 1
  SHX7_2 = SHX5_2
  SHX8_2 = 1
  for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
    SHX10_2 = string
    SHX10_2 = SHX10_2.sub
    SHX11_2 = SHX0_2
    SHX12_2 = SHX9_2
    SHX13_2 = SHX9_2
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    if SHX2_2 then
      SHX11_2 = SHX4_2[SHX10_2]
      if SHX11_2 then
        goto SHX_LABEL_51
      end
    end
    if not SHX2_2 then
      SHX11_2 = SHX4_2[SHX10_2]
      -- [FIX IF ERROR] Move ::SHX_LABEL_51:: outside nested blocks until all 'goto SHX_LABEL_51' can see it
      ::SHX_LABEL_51::
      if not SHX11_2 then
        SHX11_2 = SHX3_2
        SHX12_2 = SHX10_2
        SHX11_2 = SHX11_2 .. SHX12_2
        SHX3_2 = SHX11_2
      end
    end
  end
  return SHX3_2
end
sanitizeString = SHX12_1
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  if nil == SHX1_2 then
    SHX1_2 = "%s"
  end
  SHX2_2 = {}
  SHX3_2 = 1
  SHX4_2 = string
  SHX4_2 = SHX4_2.gmatch
  SHX5_2 = SHX0_2
  SHX6_2 = "([^"
  SHX7_2 = SHX1_2
  SHX8_2 = "]+)"
  SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2)
  for SHX8_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX2_2[SHX3_2] = SHX8_2
    SHX3_2 = SHX3_2 + 1
  end
  return SHX2_2
end
splitString = SHX12_1
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  if nil == SHX1_2 then
    SHX1_2 = ""
  end
  SHX2_2 = ""
  SHX3_2 = 0
  SHX4_2 = #SHX0_2
  SHX5_2 = pairs
  SHX6_2 = SHX0_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX3_2 = SHX3_2 + 1
    SHX11_2 = SHX2_2
    SHX12_2 = SHX10_2
    SHX11_2 = SHX11_2 .. SHX12_2
    SHX2_2 = SHX11_2
    if SHX4_2 > SHX3_2 then
      SHX11_2 = SHX2_2
      SHX12_2 = SHX1_2
      SHX11_2 = SHX11_2 .. SHX12_2
      SHX2_2 = SHX11_2
    end
  end
  return SHX2_2
end
joinStrings = SHX12_1
SHX12_1 = CMG
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX1_2 = SHX0_1
    SHX1_2 = SHX1_2[SHX0_2]
    return SHX1_2
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadResourceFile
  SHX2_2 = GetCurrentResourceName
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = json
  SHX2_2 = SHX2_2.decode
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX0_1
  SHX3_2[SHX0_2] = SHX2_2
  return SHX2_2
end
SHX12_1.loadJsonModule = SHX13_1
SHX12_1 = {}
SHX13_1 = CMG
function SHX14_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = SHX12_1
  SHX3_2[SHX0_2] = true
  SHX3_2 = RegisterCommand
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
end
SHX13_1.registerCommand = SHX14_1
SHX13_1 = exports
SHX14_1 = "isCommandHidden"
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = string
  SHX1_2 = SHX1_2.starts
  SHX2_2 = SHX0_2
  SHX3_2 = "+"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if not SHX1_2 then
    SHX1_2 = string
    SHX1_2 = SHX1_2.starts
    SHX2_2 = SHX0_2
    SHX3_2 = "-"
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if not SHX1_2 then
      goto SHX_LABEL_17
    end
  end
  SHX1_2 = true
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
  ::SHX_LABEL_17::
  SHX1_2 = SHX12_1
  SHX1_2 = SHX1_2[SHX0_2]
  return SHX1_2
end
SHX13_1(SHX14_1, SHX15_1)
