-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1
SHX0_1 = false
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = "test"
SHX4_1 = 0
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX1_1[12] = SHX2_1
SHX2_1 = 0.033
SHX3_1 = 0
SHX4_1 = 0.306
SHX5_1 = CMG
SHX5_1 = SHX5_1.registerHudTimerBarProvider
SHX6_1 = "purgeMenu"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isPurge
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    return
  end
  SHX1_2 = SHX0_2.push
  SHX2_2 = "~r~F6 TO OPEN LEADERBOARD"
  SHX3_2 = ""
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[12]
  if SHX1_2 then
    SHX1_2 = SHX1_1
    SHX1_2 = SHX1_2[12]
    SHX1_2 = SHX1_2[2]
    if SHX1_2 then
      SHX1_2 = SHX0_2.push
      SHX2_2 = "~r~KILLS"
      SHX3_2 = tostring
      SHX4_2 = SHX1_1
      SHX4_2 = SHX4_2[12]
      SHX4_2 = SHX4_2[2]
      SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  end
  else
    SHX1_2 = SHX0_2.push
    SHX2_2 = "~r~KILLS"
    SHX3_2 = "0"
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX5_1(SHX6_1, SHX7_1)
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isPurge
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.setHudTimerBarProviderActive
    SHX1_2 = "purgeMenu"
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setHudTimerBarProviderActive
  SHX1_2 = "purgeMenu"
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 167
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = SHX0_1
    if SHX0_2 then
      SHX0_2 = false
      SHX0_1 = SHX0_2
    else
      SHX0_2 = true
      SHX0_1 = SHX0_2
      SHX0_2 = TriggerServerEvent
      SHX1_2 = "499112c90f"
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isNewPlayer
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = drawNativeNotification
      SHX1_2 = "Press ~INPUT_SELECT_CHARACTER_FRANKLIN~ to toggle the purge menu."
      SHX0_2(SHX1_2)
    end
    SHX0_2 = DrawRect
    SHX1_2 = 0.5
    SHX2_2 = 0.222
    SHX3_2 = 0.223
    SHX4_2 = 0.075
    SHX5_2 = 255
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 255
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.595
    SHX2_2 = 0.213
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 1.0
    SHX6_2 = "CMG PURGE"
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 1
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.595
    SHX2_2 = 0.275
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.4
    SHX6_2 = "TOP 10"
    SHX7_2 = 0
    SHX8_2 = 255
    SHX9_2 = 50
    SHX10_2 = 255
    SHX11_2 = 6
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX0_2 = DrawRect
    SHX1_2 = 0.5
    SHX2_2 = 0.272
    SHX3_2 = 0.223
    SHX4_2 = 0.026
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 222
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = pairs
    SHX1_2 = SHX1_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = SHX5_2[1]
      SHX7_2 = "  -  "
      SHX8_2 = SHX5_2[2]
      SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
      SHX7_2 = DrawAdvancedText
      SHX8_2 = 0.595
      SHX9_2 = SHX4_1
      SHX10_2 = SHX3_1
      SHX11_2 = SHX2_1
      SHX10_2 = SHX10_2 * SHX11_2
      SHX9_2 = SHX9_2 + SHX10_2
      SHX10_2 = 0.005
      SHX11_2 = 0.0028
      SHX12_2 = 0.4
      SHX13_2 = tostring
      SHX14_2 = SHX6_2
      SHX13_2 = SHX13_2(SHX14_2)
      SHX14_2 = 255
      SHX15_2 = 255
      SHX16_2 = 255
      SHX17_2 = 255
      SHX18_2 = 6
      SHX19_2 = 0
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX7_2 = DrawRect
      SHX8_2 = 0.5
      SHX9_2 = SHX2_1
      SHX10_2 = SHX3_1
      SHX9_2 = SHX9_2 * SHX10_2
      SHX9_2 = 0.301 + SHX9_2
      SHX10_2 = 0.223
      SHX11_2 = 0.033
      SHX12_2 = 0
      SHX13_2 = 0
      SHX14_2 = 0
      SHX15_2 = 120
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX7_2 = SHX3_1
      SHX7_2 = SHX7_2 + 1
      SHX3_1 = SHX7_2
    end
    SHX0_2 = 0
    SHX3_1 = SHX0_2
  end
end
SHX6_1 = CMG
SHX6_1 = SHX6_1.createThreadOnTick
SHX7_1 = SHX5_1
SHX8_1 = "Purge Menu Controls"
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "5156c63289"
SHX6_1(SHX7_1)
SHX6_1 = AddEventHandler
SHX7_1 = "5156c63289"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_1 = SHX0_2
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "59d2ea80fc"
SHX6_1(SHX7_1)
SHX6_1 = AddEventHandler
SHX7_1 = "59d2ea80fc"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX1_1
  SHX0_2 = SHX0_2[12]
  if SHX0_2 then
    SHX0_2 = SHX1_1
    SHX0_2 = SHX0_2[12]
    SHX0_2 = SHX0_2[2]
    if SHX0_2 then
      SHX0_2 = SHX1_1
      SHX0_2 = SHX0_2[12]
      SHX1_2 = SHX1_1
      SHX1_2 = SHX1_2[12]
      SHX1_2 = SHX1_2[2]
      SHX1_2 = SHX1_2 + 1
      SHX0_2[2] = SHX1_2
  end
  else
    SHX0_2 = SHX1_1
    SHX1_2 = {}
    SHX2_2 = "test"
    SHX3_2 = 1
    SHX1_2[1] = SHX2_2
    SHX1_2[2] = SHX3_2
    SHX0_2[12] = SHX1_2
  end
end
SHX6_1(SHX7_1, SHX8_1)
