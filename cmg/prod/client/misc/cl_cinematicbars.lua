-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1
SHX0_1 = false
SHX1_1 = {}
SHX1_1.x = 0.0
SHX1_1.y = -0.001
function SHX2_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX8_2 = DrawRect
  SHX9_2 = SHX2_2 / 2
  SHX9_2 = SHX0_2 + SHX9_2
  SHX10_2 = SHX3_2 / 2
  SHX10_2 = SHX1_2 + SHX10_2
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2
  SHX13_2 = SHX4_2
  SHX14_2 = SHX5_2
  SHX15_2 = SHX6_2
  SHX16_2 = SHX7_2
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
end
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  SHX0_2 = not SHX0_2
  SHX0_1 = SHX0_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.CreateThread
    function SHX1_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
      while true do
        SHX0_3 = Citizen
        SHX0_3 = SHX0_3.Wait
        SHX1_3 = 0
        SHX0_3(SHX1_3)
        SHX0_3 = SHX0_1
        if SHX0_3 then
          SHX0_3 = HideHUDThisFrame
          SHX0_3()
          SHX0_3 = SHX2_1
          SHX1_3 = SHX1_1.x
          SHX1_3 = SHX1_3 + 0.0
          SHX2_3 = SHX1_1.y
          SHX2_3 = SHX2_3 + 0.0
          SHX3_3 = 1.0
          SHX4_3 = 0.15
          SHX5_3 = 0
          SHX6_3 = 0
          SHX7_3 = 0
          SHX8_3 = 255
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
          SHX0_3 = SHX2_1
          SHX1_3 = SHX1_1.x
          SHX1_3 = SHX1_3 + 0.0
          SHX2_3 = SHX1_1.y
          SHX2_3 = SHX2_3 + 0.85
          SHX3_3 = 1.0
          SHX4_3 = 0.151
          SHX5_3 = 0
          SHX6_3 = 0
          SHX7_3 = 0
          SHX8_3 = 255
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
        end
      end
    end
    SHX0_2(SHX1_2)
  end
end
SHX4_1 = CMG
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1
  SHX0_2()
end
SHX4_1.toggleBlackBars = SHX5_1
SHX4_1 = RegisterCommand
SHX5_1 = "cinematic"
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1
  SHX0_2()
end
SHX7_1 = false
SHX4_1(SHX5_1, SHX6_1, SHX7_1)
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = HideHelpTextThisFrame
  SHX0_2()
  SHX0_2 = HideHudAndRadarThisFrame
  SHX0_2()
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 1
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 2
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 3
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 4
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 6
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 7
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 8
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 9
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 13
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 11
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 12
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 15
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 18
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 19
  SHX0_2(SHX1_2)
end
HideHUDThisFrame = SHX4_1
