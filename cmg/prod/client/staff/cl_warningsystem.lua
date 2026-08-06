-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1
SHX0_1 = CMG
function SHX1_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = AddTextEntry
  SHX3_2 = "FMMC_MPM_NA"
  SHX4_2 = "Enter "
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2 .. SHX5_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = DisplayOnscreenKeyboard
  SHX3_2 = 1
  SHX4_2 = "FMMC_MPM_NA"
  SHX5_2 = "Enter "
  SHX6_2 = SHX0_2
  SHX7_2 = " message"
  SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2
  SHX6_2 = SHX1_2 or SHX6_2
  if not SHX1_2 then
    SHX6_2 = ""
  end
  SHX7_2 = ""
  SHX8_2 = ""
  SHX9_2 = ""
  SHX10_2 = 30
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.toggleTemporaryFocusDisable
  SHX2_2()
  while true do
    SHX2_2 = UpdateOnscreenKeyboard
    SHX2_2 = SHX2_2()
    if 0 ~= SHX2_2 then
      break
    end
    SHX2_2 = DisableAllControlActions
    SHX3_2 = 0
    SHX2_2(SHX3_2)
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.toggleTemporaryFocusDisable
  SHX2_2()
  SHX2_2 = GetOnscreenKeyboardResult
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    SHX2_2 = GetOnscreenKeyboardResult
    SHX2_2 = SHX2_2()
    if SHX2_2 and "" ~= SHX2_2 then
      return SHX2_2
    end
  end
  SHX2_2 = nil
  return SHX2_2
end
SHX0_1.GetRageInputText = SHX1_1
SHX0_1 = CMG
function SHX1_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = AddTextEntry
  SHX3_2 = "FMMC_MPM_NA"
  SHX4_2 = "Enter "
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2 .. SHX5_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = DisplayOnscreenKeyboard
  SHX3_2 = 1
  SHX4_2 = "FMMC_MPM_NA"
  SHX5_2 = "Enter "
  SHX6_2 = SHX0_2
  SHX7_2 = " message"
  SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2
  SHX6_2 = SHX1_2 or SHX6_2
  if not SHX1_2 then
    SHX6_2 = ""
  end
  SHX7_2 = ""
  SHX8_2 = ""
  SHX9_2 = ""
  SHX10_2 = 30
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.toggleTemporaryFocusDisable
  SHX2_2()
  while true do
    SHX2_2 = UpdateOnscreenKeyboard
    SHX2_2 = SHX2_2()
    if 0 ~= SHX2_2 then
      break
    end
    SHX2_2 = DisableAllControlActions
    SHX3_2 = 0
    SHX2_2(SHX3_2)
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.toggleTemporaryFocusDisable
  SHX2_2()
  SHX2_2 = GetOnscreenKeyboardResult
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    SHX2_2 = GetOnscreenKeyboardResult
    SHX2_2 = SHX2_2()
    if SHX2_2 then
      SHX3_2 = tonumber
      SHX4_2 = SHX2_2
      return SHX3_2(SHX4_2)
    end
  end
  SHX2_2 = nil
  return SHX2_2
end
SHX0_1.GetRageInputInt = SHX1_1
