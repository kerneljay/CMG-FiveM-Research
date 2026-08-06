-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1
SHX0_1 = {}
SHX1_1 = "akrobat"
SHX2_1 = "Montserrat-Light"
SHX0_1[1] = SHX1_1
SHX0_1[2] = SHX2_1
SHX1_1 = {}
SHX1_1["Akrobat-Black"] = 0
SHX1_1["Akrobat-Bold"] = 0
SHX1_1["Akrobat-ExtraBold"] = 0
SHX1_1["Akrobat-ExtraLight"] = 0
SHX1_1["Akrobat-Light"] = 0
SHX1_1["Akrobat-Regular"] = 0
SHX1_1["Akrobat-SemiBold"] = 0
SHX1_1["Akrobat-Thin"] = 0
SHX1_1["Montserrat-Light"] = 0
SHX2_1 = CreateThread
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = RegisterFontFile
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = pairs
  SHX1_2 = SHX1_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = SHX1_1
    SHX6_2 = RegisterFontId
    SHX7_2 = SHX4_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX5_2[SHX4_2] = SHX6_2
  end
end
SHX2_1(SHX3_1)
SHX2_1 = CMG
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX1_2 = 0
  end
  return SHX1_2
end
SHX2_1.getFontId = SHX3_1
