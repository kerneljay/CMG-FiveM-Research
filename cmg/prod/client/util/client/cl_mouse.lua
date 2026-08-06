-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1
SHX0_1 = 0
SHX1_1 = 0.0
SHX2_1 = 0.0
SHX3_1 = false
SHX4_1 = false
SHX5_1 = CMG
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX3_1 = SHX0_2
end
SHX5_1.setInGUI = SHX6_1
function SHX5_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2
  SHX4_2 = SHX0_1
  if 1 == SHX4_2 then
    SHX4_2 = SHX1_1
    if SHX0_2 < SHX4_2 then
      SHX4_2 = SHX1_1
      if SHX2_2 > SHX4_2 then
        SHX4_2 = SHX2_1
        if SHX1_2 < SHX4_2 then
          SHX4_2 = SHX2_1
          if SHX3_2 > SHX4_2 then
            SHX4_2 = true
            return SHX4_2
        end
      end
    end
  end
  else
    SHX4_2 = false
    return SHX4_2
  end
end
CursorInZone = SHX5_1
SHX5_1 = CMG
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX0_1 = SHX0_2
end
SHX5_1.setCursor = SHX6_1
function SHX5_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2
  SHX4_2 = SHX1_1
  if SHX0_2 < SHX4_2 then
    SHX4_2 = SHX1_1
    if SHX1_2 > SHX4_2 then
      SHX4_2 = SHX2_1
      if SHX2_2 < SHX4_2 then
        SHX4_2 = SHX2_1
        if SHX3_2 > SHX4_2 then
          SHX4_2 = true
          return SHX4_2
        end
      end
    end
  end
end
CursorInArea = SHX5_1
function SHX5_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX4_2 = SHX2_2 / 2.0
  SHX5_2 = SHX3_2 / 2.0
  SHX6_2 = CursorInArea
  SHX7_2 = SHX0_2 - SHX4_2
  SHX8_2 = SHX0_2 + SHX4_2
  SHX9_2 = SHX1_2 - SHX5_2
  SHX10_2 = SHX1_2 + SHX5_2
  return SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
end
CursorInAreaRect = SHX5_1
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX0_1
  if 1 == SHX0_2 then
    SHX0_2 = GetControlNormal
    SHX1_2 = 2
    SHX2_2 = 239
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    SHX1_1 = SHX0_2
    SHX0_2 = GetControlNormal
    SHX1_2 = 2
    SHX2_2 = 240
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    SHX2_1 = SHX0_2
    SHX0_2 = SetMouseCursorActiveThisFrame
    SHX0_2()
  end
end
SHX6_1 = CMG
SHX6_1 = SHX6_1.createThreadOnTick
SHX7_1 = SHX5_1
SHX8_1 = "Mouse Controls"
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = CMG
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 25
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 106
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 24
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 140
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 141
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 142
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 257
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 263
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 264
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 12
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 14
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 15
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 16
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 17
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX6_1.disableStandardControlsForUI = SHX7_1
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = SHX4_1
    if not SHX0_2 then
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 1
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 2
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    end
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.disableStandardControlsForUI
    SHX0_2()
  end
end
function SHX7_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX4_2 = SHX2_2 / 2
  SHX4_2 = SHX0_2 - SHX4_2
  SHX5_2 = SHX2_2 / 2
  SHX5_2 = SHX0_2 + SHX5_2
  SHX6_2 = SHX3_2 / 2
  SHX6_2 = SHX1_2 - SHX6_2
  SHX7_2 = SHX3_2 / 2
  SHX7_2 = SHX1_2 + SHX7_2
  SHX8_2 = SHX4_2
  SHX9_2 = SHX5_2
  SHX10_2 = SHX6_2
  SHX11_2 = SHX7_2
  return SHX8_2, SHX9_2, SHX10_2, SHX11_2
end
GetArea = SHX7_1
SHX7_1 = Citizen
SHX7_1 = SHX7_1.CreateThread
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.createThreadOnTick
    if SHX0_2 then
      break
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createThreadOnTick
  SHX1_2 = SHX6_1
  SHX2_2 = "GUI Controls"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX7_1(SHX8_1)
function SHX7_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX4_2 = SHX2_2 / 2
  SHX4_2 = SHX0_2 - SHX4_2
  SHX5_2 = SHX2_2 / 2
  SHX5_2 = SHX0_2 + SHX5_2
  SHX6_2 = SHX3_2 / 2
  SHX6_2 = SHX1_2 - SHX6_2
  SHX7_2 = SHX3_2 / 2
  SHX7_2 = SHX1_2 + SHX7_2
  SHX8_2 = SHX4_2
  SHX9_2 = SHX5_2
  SHX10_2 = SHX6_2
  SHX11_2 = SHX7_2
  return SHX8_2, SHX9_2, SHX10_2, SHX11_2
end
GetArea = SHX7_1
