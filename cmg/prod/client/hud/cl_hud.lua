-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_hud"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX1_1.compassBehaviour = "mouselook"
SHX1_1.speedType = "mph"
SHX1_1.cinematicMode = false
SHX1_1.streamerMode = false
SHX1_1.playMediaSongs = false
SHX2_1 = false
SHX3_1 = false
SHX4_1 = GetResourceKvpString
SHX5_1 = "cmg_legacy_hud"
SHX4_1 = SHX4_1(SHX5_1)
SHX4_1 = "1" == SHX4_1
SHX5_1 = CMG
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX4_1
  return SHX0_2
end
SHX5_1.isLegacyHudEnabled = SHX6_1
SHX5_1 = CMG
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX2_1
  return SHX0_2
end
SHX5_1.isHudVehicleCursorEnabled = SHX6_1
SHX5_1 = CMG
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1
  return SHX0_2
end
SHX5_1.isHudLoaded = SHX6_1
SHX5_1 = CreateThread
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  while true do
    SHX0_2 = SHX3_1
    if SHX0_2 then
      break
    end
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.uiSendMessage
    SHX1_2 = {}
    SHX1_2.action = "CHECK_NUI"
    SHX0_2(SHX1_2)
    SHX0_2 = Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
SHX5_1(SHX6_1)
SHX5_1 = nil
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.sendHudNuiMessage
  SHX1_2 = "HIDE_HUD"
  SHX0_2(SHX1_2)
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.sendHudNuiMessage
  SHX1_2 = "SHOW_HUD"
  SHX0_2(SHX1_2)
end
SHX8_1 = CMG
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = DisplayRadar
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = DisplayHud
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = SHX7_1
  SHX0_2()
  SHX0_2 = SHX5_1
  if nil ~= SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.setHotBarEnabled
    SHX1_2 = SHX5_1
    SHX0_2(SHX1_2)
    SHX0_2 = nil
    SHX5_1 = SHX0_2
  end
end
SHX8_1.showHud = SHX9_1
SHX8_1 = CMG
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if SHX0_2 then
    SHX1_2 = DisplayRadar
    SHX2_2 = false
    SHX1_2(SHX2_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.sendHudNuiMessage
    SHX2_2 = "HIDE_HUD_CALL_MANAGER"
    SHX1_2(SHX2_2)
  else
    SHX1_2 = DisplayRadar
    SHX2_2 = true
    SHX1_2(SHX2_2)
    SHX1_2 = DisplayHud
    SHX2_2 = true
    SHX1_2(SHX2_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.sendHudNuiMessage
    SHX2_2 = "SHOW_HUD_CALL_MANAGER"
    SHX1_2(SHX2_2)
  end
end
SHX8_1.setHudCallManagerNotificationsOnlyMode = SHX9_1
SHX8_1 = CMG
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = DisplayRadar
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = DisplayHud
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = SHX6_1
  SHX0_2()
  SHX0_2 = SHX5_1
  if nil == SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getHotBarEnabled
    SHX0_2 = SHX0_2()
    SHX5_1 = SHX0_2
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setHotBarEnabled
  SHX1_2 = false
  SHX0_2(SHX1_2)
end
SHX8_1.hideHud = SHX9_1
SHX8_1 = CMG
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = DisplayRadar
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = DisplayHud
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.sendHudNuiMessage
  SHX1_2 = "HIDE_HUD_DEATH_SCREEN"
  SHX0_2(SHX1_2)
  SHX0_2 = SHX5_1
  if nil == SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getHotBarEnabled
    SHX0_2 = SHX0_2()
    SHX5_1 = SHX0_2
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setHotBarEnabled
  SHX1_2 = false
  SHX0_2(SHX1_2)
end
SHX8_1.hideHudForDeathScreen = SHX9_1
SHX8_1 = AddEventHandler
SHX9_1 = "7ad2e2f656"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hideHud
  SHX0_2()
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = AddEventHandler
SHX9_1 = "3ee4eff5d1"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.showHud
  SHX0_2()
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = AddEventHandler
SHX9_1 = "b9028016de"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hideHud
    SHX1_2()
  else
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.showHud
    SHX1_2()
  end
end
SHX8_1(SHX9_1, SHX10_1)
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = GetSafeZoneSize
  SHX0_2 = SHX0_2()
  SHX1_2 = 0.05
  SHX2_2 = 0.05
  SHX3_2 = GetAspectRatio
  SHX4_2 = false
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = GetActiveScreenResolution
  SHX4_2, SHX5_2 = SHX4_2()
  SHX6_2 = 1.0
  SHX6_2 = SHX6_2 / SHX4_2
  SHX7_2 = 1.0
  SHX7_2 = SHX7_2 / SHX5_2
  SHX8_2 = {}
  SHX9_2 = 4 * SHX3_2
  SHX9_2 = SHX4_2 / SHX9_2
  SHX9_2 = SHX6_2 * SHX9_2
  SHX8_2.width = SHX9_2
  SHX9_2 = SHX5_2 / 5.674
  SHX9_2 = SHX7_2 * SHX9_2
  SHX8_2.height = SHX9_2
  SHX9_2 = math
  SHX9_2 = SHX9_2.abs
  SHX10_2 = SHX0_2 - 1.0
  SHX9_2 = SHX9_2(SHX10_2)
  SHX9_2 = SHX9_2 * 10
  SHX9_2 = SHX1_2 * SHX9_2
  SHX9_2 = SHX4_2 * SHX9_2
  SHX9_2 = SHX6_2 * SHX9_2
  SHX8_2.left_x = SHX9_2
  SHX9_2 = math
  SHX9_2 = SHX9_2.abs
  SHX10_2 = SHX0_2 - 1.0
  SHX9_2 = SHX9_2(SHX10_2)
  SHX9_2 = SHX9_2 * 10
  SHX9_2 = SHX2_2 * SHX9_2
  SHX9_2 = SHX5_2 * SHX9_2
  SHX9_2 = SHX7_2 * SHX9_2
  SHX10_2 = 1.0
  SHX9_2 = SHX10_2 - SHX9_2
  SHX8_2.bottom_y = SHX9_2
  SHX9_2 = SHX8_2.left_x
  SHX10_2 = SHX8_2.width
  SHX9_2 = SHX9_2 + SHX10_2
  SHX8_2.right_x = SHX9_2
  SHX9_2 = SHX8_2.bottom_y
  SHX10_2 = SHX8_2.height
  SHX9_2 = SHX9_2 - SHX10_2
  SHX8_2.top_y = SHX9_2
  SHX9_2 = SHX8_2.left_x
  SHX8_2.x = SHX9_2
  SHX9_2 = SHX8_2.top_y
  SHX8_2.y = SHX9_2
  SHX8_2.xunit = SHX6_2
  SHX8_2.yunit = SHX7_2
  return SHX8_2
end
SHX9_1 = CMG
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX8_1
  SHX0_2 = SHX0_2()
  SHX0_2 = SHX0_2.left_x
  return SHX0_2
end
SHX9_1.getHudLeftNormalized = SHX10_1
SHX9_1 = CMG
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = GetActiveScreenResolution
  SHX0_2 = SHX0_2()
  SHX1_2 = GetAspectRatio
  SHX2_2 = false
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = 1
  SHX2_2 = SHX2_2 / SHX0_2
  SHX3_2 = SetScriptGfxAlign
  SHX4_2 = string
  SHX4_2 = SHX4_2.byte
  SHX5_2 = "L"
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = string
  SHX5_2 = SHX5_2.byte
  SHX6_2 = "B"
  SHX5_2, SHX6_2, SHX7_2 = SHX5_2(SHX6_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = nil
  SHX4_2 = nil
  SHX5_2 = IsBigmapActive
  SHX5_2 = SHX5_2()
  if SHX5_2 then
    SHX5_2 = GetScriptGfxPosition
    SHX6_2 = -0.003975
    SHX7_2 = -0.43841666599999995
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX3_2 = SHX5_2
    SHX5_2 = 2.52 * SHX1_2
    SHX5_2 = SHX0_2 / SHX5_2
    SHX4_2 = SHX2_2 * SHX5_2
  else
    SHX5_2 = GetScriptGfxPosition
    SHX6_2 = -0.0045
    SHX7_2 = -0.186888
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX3_2 = SHX5_2
    SHX5_2 = 4 * SHX1_2
    SHX5_2 = SHX0_2 / SHX5_2
    SHX4_2 = SHX2_2 * SHX5_2
  end
  SHX5_2 = ResetScriptGfxAlign
  SHX5_2()
  SHX5_2 = SHX3_2 + SHX4_2
  SHX5_2 = SHX5_2 * SHX0_2
  return SHX5_2
end
SHX9_1.getRoundMinimapRightPx = SHX10_1
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = SHX0_1.minimapPositionPresets
  if SHX0_2 then
    SHX1_2 = #SHX0_2
    if 0 ~= SHX1_2 then
      goto SHX_LABEL_10
    end
  end
  SHX1_2 = 0.0
  SHX2_2 = 0.0
  return SHX1_2, SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX1_2 = GetResourceKvpInt
  SHX2_2 = "cmg_minimap_position"
  SHX1_2 = SHX1_2(SHX2_2)
  if not (SHX1_2 < 1) then
    SHX2_2 = #SHX0_2
    if not (SHX1_2 > SHX2_2) then
      goto SHX_LABEL_19
    end
  end
  SHX1_2 = 1
  -- [FIX IF ERROR] Move ::SHX_LABEL_19:: outside nested blocks until all 'goto SHX_LABEL_19' can see it
  ::SHX_LABEL_19::
  SHX2_2 = SHX0_2[SHX1_2]
  if not SHX2_2 then
    SHX3_2 = 0.0
    SHX4_2 = 0.0
    return SHX3_2, SHX4_2
  end
  SHX3_2 = SHX2_2.dx
  if not SHX3_2 then
    SHX3_2 = 0.0
  end
  SHX4_2 = SHX2_2.dy
  if not SHX4_2 then
    SHX4_2 = 0.0
  end
  SHX5_2 = tonumber
  SHX6_2 = GetResourceKvpString
  SHX7_2 = "cmg_minimap_fine_x"
  SHX6_2 = SHX6_2(SHX7_2)
  if not SHX6_2 then
    SHX6_2 = ""
  end
  SHX5_2 = SHX5_2(SHX6_2)
  if not SHX5_2 then
    SHX5_2 = 0.0
  end
  SHX6_2 = tonumber
  SHX7_2 = GetResourceKvpString
  SHX8_2 = "cmg_minimap_fine_y"
  SHX7_2 = SHX7_2(SHX8_2)
  if not SHX7_2 then
    SHX7_2 = ""
  end
  SHX6_2 = SHX6_2(SHX7_2)
  if not SHX6_2 then
    SHX6_2 = 0.0
  end
  SHX7_2 = SHX0_1.minimapFineOffsetClamp
  if not SHX7_2 then
    SHX7_2 = 0.25
  end
  SHX8_2 = math
  SHX8_2 = SHX8_2.min
  SHX9_2 = math
  SHX9_2 = SHX9_2.max
  SHX10_2 = SHX5_2
  SHX11_2 = -SHX7_2
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX10_2 = SHX7_2
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX5_2 = SHX8_2
  SHX8_2 = math
  SHX8_2 = SHX8_2.min
  SHX9_2 = math
  SHX9_2 = SHX9_2.max
  SHX10_2 = SHX6_2
  SHX11_2 = -SHX7_2
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX10_2 = SHX7_2
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX6_2 = SHX8_2
  SHX8_2 = SHX3_2 + SHX5_2
  SHX9_2 = SHX4_2 + SHX6_2
  return SHX8_2, SHX9_2
end
SHX10_1 = false
SHX11_1 = {}
SHX12_1 = {}
SHX12_1.posX = 0.0
SHX12_1.posY = -0.017
SHX12_1.sizeX = 0.1638
SHX12_1.sizeY = 0.183
SHX11_1.mm = SHX12_1
SHX12_1 = {}
SHX12_1.posX = 0.0
SHX12_1.posY = 0.03
SHX12_1.sizeX = 0.128
SHX12_1.sizeY = 0.2
SHX11_1.mk = SHX12_1
SHX12_1 = {}
SHX12_1.posX = -0.0085
SHX12_1.posY = 0.058
SHX12_1.sizeX = 0.296
SHX12_1.sizeY = 0.339
SHX11_1.bl = SHX12_1
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = type
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isCallManagerOpen
  SHX0_2 = SHX0_2(SHX1_2)
  if "function" == SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isCallManagerOpen
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      return
    end
  end
  SHX0_2 = 1.7777777777777777
  SHX1_2 = GetActiveScreenResolution
  SHX1_2, SHX2_2 = SHX1_2()
  SHX3_2 = SHX1_2 / SHX2_2
  SHX4_2 = 0
  if SHX0_2 < SHX3_2 then
    SHX5_2 = SHX0_2 - SHX3_2
    SHX6_2 = 2.0 * SHX0_2
    SHX4_2 = SHX5_2 / SHX6_2
  end
  SHX5_2 = GetAspectRatio
  SHX6_2 = false
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = math
  SHX6_2 = SHX6_2.min
  SHX7_2 = SHX3_2
  SHX8_2 = SHX5_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = 1.0
  if SHX0_2 > SHX6_2 then
    SHX7_2 = SHX6_2 / SHX0_2
  end
  SHX8_2 = RequestStreamedTextureDict
  SHX9_2 = "squaremap"
  SHX10_2 = false
  SHX8_2(SHX9_2, SHX10_2)
  while true do
    SHX8_2 = HasStreamedTextureDictLoaded
    SHX9_2 = "squaremap"
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 then
      break
    end
    SHX8_2 = Wait
    SHX9_2 = 0
    SHX8_2(SHX9_2)
  end
  SHX8_2 = SetMinimapClipType
  SHX9_2 = 0
  SHX8_2(SHX9_2)
  SHX8_2 = AddReplaceTexture
  SHX9_2 = "platform:/textures/graphics"
  SHX10_2 = "radarmasksm"
  SHX11_2 = "squaremap"
  SHX12_2 = "radarmasksm"
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX8_2 = AddReplaceTexture
  SHX9_2 = "platform:/textures/graphics"
  SHX10_2 = "radarmask1g"
  SHX11_2 = "squaremap"
  SHX12_2 = "radarmasksm"
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX8_2 = SHX9_1
  SHX8_2, SHX9_2 = SHX8_2()
  SHX10_2 = SHX10_1
  if SHX10_2 then
    SHX10_2 = SHX11_1
    if SHX10_2 then
      goto SHX_LABEL_99
    end
  end
  SHX10_2 = {}
  SHX11_2 = {}
  SHX11_2.posX = 0.0
  SHX11_2.posY = -0.017
  SHX11_2.sizeX = 0.1638
  SHX11_2.sizeY = 0.183
  SHX10_2.mm = SHX11_2
  SHX11_2 = {}
  SHX11_2.posX = 0.0
  SHX11_2.posY = 0.03
  SHX11_2.sizeX = 0.128
  SHX11_2.sizeY = 0.2
  SHX10_2.mk = SHX11_2
  SHX11_2 = {}
  SHX11_2.posX = -0.0085
  SHX11_2.posY = 0.058
  SHX11_2.sizeX = 0.296
  SHX11_2.sizeY = 0.339
  SHX10_2.bl = SHX11_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_99:: outside nested blocks until all 'goto SHX_LABEL_99' can see it
  ::SHX_LABEL_99::
  SHX11_2 = SetMinimapComponentPosition
  SHX12_2 = "minimap"
  SHX13_2 = "L"
  SHX14_2 = "B"
  SHX15_2 = SHX10_2.mm
  SHX15_2 = SHX15_2.posX
  SHX15_2 = SHX15_2 + SHX4_2
  SHX15_2 = SHX15_2 + SHX8_2
  SHX16_2 = SHX10_2.mm
  SHX16_2 = SHX16_2.posY
  SHX16_2 = SHX16_2 + SHX9_2
  SHX17_2 = SHX10_2.mm
  SHX17_2 = SHX17_2.sizeX
  SHX17_2 = SHX17_2 * SHX7_2
  SHX18_2 = SHX10_2.mm
  SHX18_2 = SHX18_2.sizeY
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX11_2 = SetMinimapComponentPosition
  SHX12_2 = "minimap_mask"
  SHX13_2 = "L"
  SHX14_2 = "B"
  SHX15_2 = SHX10_2.mk
  SHX15_2 = SHX15_2.posX
  SHX15_2 = SHX15_2 + SHX4_2
  SHX15_2 = SHX15_2 + SHX8_2
  SHX16_2 = SHX10_2.mk
  SHX16_2 = SHX16_2.posY
  SHX16_2 = SHX16_2 + SHX9_2
  SHX17_2 = SHX10_2.mk
  SHX17_2 = SHX17_2.sizeX
  SHX17_2 = SHX17_2 * SHX7_2
  SHX18_2 = SHX10_2.mk
  SHX18_2 = SHX18_2.sizeY
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX11_2 = SetMinimapComponentPosition
  SHX12_2 = "minimap_blur"
  SHX13_2 = "L"
  SHX14_2 = "B"
  SHX15_2 = SHX10_2.bl
  SHX15_2 = SHX15_2.posX
  SHX15_2 = SHX15_2 + SHX4_2
  SHX15_2 = SHX15_2 + SHX8_2
  SHX16_2 = SHX10_2.bl
  SHX16_2 = SHX16_2.posY
  SHX16_2 = SHX16_2 + SHX9_2
  SHX17_2 = SHX10_2.bl
  SHX17_2 = SHX17_2.sizeX
  SHX17_2 = SHX17_2 * SHX7_2
  SHX18_2 = SHX10_2.bl
  SHX18_2 = SHX18_2.sizeY
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX11_2 = SetBlipAlpha
  SHX12_2 = GetNorthRadarBlip
  SHX12_2 = SHX12_2()
  SHX13_2 = 0
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = SetRadarBigmapEnabled
  SHX12_2 = true
  SHX13_2 = false
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = SetMinimapClipType
  SHX12_2 = 0
  SHX11_2(SHX12_2)
  SHX11_2 = Wait
  SHX12_2 = 50
  SHX11_2(SHX12_2)
  SHX11_2 = SetRadarBigmapEnabled
  SHX12_2 = false
  SHX13_2 = false
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = SetRadarZoom
  SHX12_2 = 1050
  SHX11_2(SHX12_2)
end
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = type
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isCallManagerOpen
  SHX0_2 = SHX0_2(SHX1_2)
  if "function" == SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isCallManagerOpen
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      return
    end
  end
  SHX0_2 = RemoveReplaceTexture
  SHX1_2 = "platform:/textures/graphics"
  SHX2_2 = "radarmasksm"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = RemoveReplaceTexture
  SHX1_2 = "platform:/textures/graphics"
  SHX2_2 = "radarmask1g"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetMinimapClipType
  SHX1_2 = 0
  SHX0_2(SHX1_2)
  SHX0_2 = SetMinimapComponentPosition
  SHX1_2 = "minimap"
  SHX2_2 = "L"
  SHX3_2 = "B"
  SHX4_2 = -0.0045
  SHX5_2 = 0.002
  SHX6_2 = 0.15
  SHX7_2 = 0.188888
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX0_2 = SetMinimapComponentPosition
  SHX1_2 = "minimap_mask"
  SHX2_2 = "L"
  SHX3_2 = "B"
  SHX4_2 = 0.02
  SHX5_2 = 0.032
  SHX6_2 = 0.111
  SHX7_2 = 0.159
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX0_2 = SetMinimapComponentPosition
  SHX1_2 = "minimap_blur"
  SHX2_2 = "L"
  SHX3_2 = "B"
  SHX4_2 = -0.03
  SHX5_2 = 0.022
  SHX6_2 = 0.266
  SHX7_2 = 0.237
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX0_2 = SetBlipAlpha
  SHX1_2 = GetNorthRadarBlip
  SHX1_2 = SHX1_2()
  SHX2_2 = 255
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetRadarBigmapEnabled
  SHX1_2 = true
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetMinimapClipType
  SHX1_2 = 0
  SHX0_2(SHX1_2)
  SHX0_2 = Wait
  SHX1_2 = 50
  SHX0_2(SHX1_2)
  SHX0_2 = SetRadarBigmapEnabled
  SHX1_2 = false
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetRadarZoom
  SHX1_2 = 1050
  SHX0_2(SHX1_2)
end
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isLegacyHudEnabled
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = SHX13_1
    SHX0_2()
  else
    SHX0_2 = SHX12_1
    SHX0_2()
  end
  SHX0_2 = GetActiveScreenResolution
  SHX0_2, SHX1_2 = SHX0_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.sendHudNuiMessage
  SHX3_2 = "ADJUST_HUD_POSITION"
  SHX4_2 = {}
  SHX5_2 = SHX8_1
  SHX5_2 = SHX5_2()
  SHX5_2 = SHX5_2.x
  SHX5_2 = SHX0_2 * SHX5_2
  SHX5_2 = SHX5_2 + 5
  SHX4_2.left = SHX5_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.isLegacyHudEnabled
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.refreshMoneyUI
    SHX2_2()
  end
end
SHX15_1 = CMG
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX14_1
  SHX0_2()
end
SHX15_1.refreshMinimap = SHX16_1
SHX15_1 = {}
SHX16_1 = {}
SHX16_1.type = "hideMoneyBar"
SHX16_1.legacy = true
SHX16_1.default = false
SHX17_1 = {}
SHX17_1.type = "showAllLocation"
SHX17_1.legacy = false
SHX17_1.default = true
SHX18_1 = {}
SHX18_1.type = "hideHealth"
SHX18_1.legacy = true
SHX18_1.default = false
SHX19_1 = {}
SHX19_1.type = "hideArmor"
SHX19_1.legacy = true
SHX19_1.default = false
SHX20_1 = {}
SHX20_1.type = "hideHunger"
SHX20_1.legacy = true
SHX20_1.default = false
SHX21_1 = {}
SHX21_1.type = "hideThirst"
SHX21_1.legacy = true
SHX21_1.default = false
SHX22_1 = {}
SHX22_1.type = "hideStress"
SHX22_1.legacy = true
SHX22_1.default = false
SHX23_1 = {}
SHX23_1.type = "hideDynamicStatus"
SHX23_1.legacy = true
SHX23_1.default = false
SHX24_1 = {}
SHX24_1.type = "hideBounty"
SHX24_1.legacy = true
SHX24_1.default = false
SHX25_1 = {}
SHX25_1.type = "hideMic"
SHX25_1.legacy = true
SHX25_1.default = false
SHX26_1 = {}
SHX26_1.type = "showAllSpeedometer"
SHX26_1.legacy = true
SHX26_1.default = true
SHX15_1[1] = SHX16_1
SHX15_1[2] = SHX17_1
SHX15_1[3] = SHX18_1
SHX15_1[4] = SHX19_1
SHX15_1[5] = SHX20_1
SHX15_1[6] = SHX21_1
SHX15_1[7] = SHX22_1
SHX15_1[8] = SHX23_1
SHX15_1[9] = SHX24_1
SHX15_1[10] = SHX25_1
SHX15_1[11] = SHX26_1
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = SHX4_1
  if SHX0_2 then
    SHX0_2 = ipairs
    SHX1_2 = SHX15_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.sendHudNuiMessage
      SHX7_2 = "SET_HUD_SETTING"
      SHX8_2 = {}
      SHX9_2 = SHX5_2.type
      SHX8_2.type = SHX9_2
      SHX9_2 = SHX5_2.legacy
      SHX8_2.value = SHX9_2
      SHX6_2(SHX7_2, SHX8_2)
    end
    return
  end
  SHX0_2 = {}
  SHX1_2 = GetResourceKvpString
  SHX2_2 = "cmg_hud_settings_json"
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 and "" ~= SHX1_2 then
    SHX2_2 = pcall
    SHX3_2 = json
    SHX3_2 = SHX3_2.decode
    SHX4_2 = SHX1_2
    SHX2_2, SHX3_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX4_2 = type
      SHX5_2 = SHX3_2
      SHX4_2 = SHX4_2(SHX5_2)
      if "table" == SHX4_2 then
        SHX0_2 = SHX3_2
      end
    end
  end
  SHX2_2 = ipairs
  SHX3_2 = SHX15_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.default
    SHX9_2 = SHX7_2.type
    SHX9_2 = SHX0_2[SHX9_2]
    if nil ~= SHX9_2 then
      SHX9_2 = SHX7_2.type
      SHX8_2 = SHX0_2[SHX9_2]
    end
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.sendHudNuiMessage
    SHX10_2 = "SET_HUD_SETTING"
    SHX11_2 = {}
    SHX12_2 = SHX7_2.type
    SHX11_2.type = SHX12_2
    SHX11_2.value = SHX8_2
    SHX9_2(SHX10_2, SHX11_2)
  end
end
SHX17_1 = CMG
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SetResourceKvp
  SHX2_2 = "cmg_legacy_hud"
  if SHX0_2 then
    SHX3_2 = "1"
    if SHX3_2 then
      goto SHX_LABEL_9
    end
  end
  SHX3_2 = "0"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2(SHX2_2, SHX3_2)
  SHX4_1 = SHX0_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.refreshMinimap
  SHX1_2()
  SHX1_2 = SHX16_1
  SHX1_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.refreshMoneyUI
  SHX1_2()
end
SHX17_1.setLegacyHudEnabled = SHX18_1
SHX17_1 = 200
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.floor
  SHX2_2 = SHX0_2 * 400
  SHX2_2 = SHX2_2 + 80.5
  return SHX1_2(SHX2_2)
end
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX0_2 - 80
  SHX1_2 = SHX1_2 / 400
  return SHX1_2
end
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX0_2 = true
  SHX10_1 = SHX0_2
  SHX0_2 = 1.7777777777777777
  SHX1_2 = GetActiveScreenResolution
  SHX1_2, SHX2_2 = SHX1_2()
  SHX3_2 = SHX1_2 / SHX2_2
  SHX4_2 = 0
  if SHX0_2 < SHX3_2 then
    SHX5_2 = SHX0_2 - SHX3_2
    SHX6_2 = 2.0 * SHX0_2
    SHX4_2 = SHX5_2 / SHX6_2
  end
  SHX5_2 = GetAspectRatio
  SHX6_2 = false
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = math
  SHX6_2 = SHX6_2.min
  SHX7_2 = SHX3_2
  SHX8_2 = SHX5_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = 1.0
  if SHX0_2 > SHX6_2 then
    SHX7_2 = SHX6_2 / SHX0_2
  end
  SHX8_2 = SHX9_1
  SHX8_2, SHX9_2 = SHX8_2()
  SHX10_2 = SetMinimapComponentPosition
  SHX11_2 = "minimap"
  SHX12_2 = "L"
  SHX13_2 = "B"
  SHX14_2 = SHX11_1.mm
  SHX14_2 = SHX14_2.posX
  SHX14_2 = SHX14_2 + SHX4_2
  SHX14_2 = SHX14_2 + SHX8_2
  SHX15_2 = SHX11_1.mm
  SHX15_2 = SHX15_2.posY
  SHX15_2 = SHX15_2 + SHX9_2
  SHX16_2 = SHX11_1.mm
  SHX16_2 = SHX16_2.sizeX
  SHX16_2 = SHX16_2 * SHX7_2
  SHX17_2 = SHX11_1.mm
  SHX17_2 = SHX17_2.sizeY
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX10_2 = SetMinimapComponentPosition
  SHX11_2 = "minimap_mask"
  SHX12_2 = "L"
  SHX13_2 = "B"
  SHX14_2 = SHX11_1.mk
  SHX14_2 = SHX14_2.posX
  SHX14_2 = SHX14_2 + SHX4_2
  SHX14_2 = SHX14_2 + SHX8_2
  SHX15_2 = SHX11_1.mk
  SHX15_2 = SHX15_2.posY
  SHX15_2 = SHX15_2 + SHX9_2
  SHX16_2 = SHX11_1.mk
  SHX16_2 = SHX16_2.sizeX
  SHX16_2 = SHX16_2 * SHX7_2
  SHX17_2 = SHX11_1.mk
  SHX17_2 = SHX17_2.sizeY
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX10_2 = SetMinimapComponentPosition
  SHX11_2 = "minimap_blur"
  SHX12_2 = "L"
  SHX13_2 = "B"
  SHX14_2 = SHX11_1.bl
  SHX14_2 = SHX14_2.posX
  SHX14_2 = SHX14_2 + SHX4_2
  SHX14_2 = SHX14_2 + SHX8_2
  SHX15_2 = SHX11_1.bl
  SHX15_2 = SHX15_2.posY
  SHX15_2 = SHX15_2 + SHX9_2
  SHX16_2 = SHX11_1.bl
  SHX16_2 = SHX16_2.sizeX
  SHX16_2 = SHX16_2 * SHX7_2
  SHX17_2 = SHX11_1.bl
  SHX17_2 = SHX17_2.sizeY
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
end
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  function SHX0_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3
    SHX1_3 = string
    SHX1_3 = SHX1_3.format
    SHX2_3 = "%.4f"
    SHX3_3 = SHX0_3
    return SHX1_3(SHX2_3, SHX3_3)
  end
  SHX1_2 = print
  SHX2_2 = "--- Minimap Tuner Values ---"
  SHX1_2(SHX2_2)
  SHX1_2 = print
  SHX2_2 = "SetMinimapComponentPosition(\"minimap\",      \"L\", \"B\", "
  SHX3_2 = SHX0_2
  SHX4_2 = SHX11_1.mm
  SHX4_2 = SHX4_2.posX
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = ", "
  SHX5_2 = SHX0_2
  SHX6_2 = SHX11_1.mm
  SHX6_2 = SHX6_2.posY
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = ", "
  SHX7_2 = SHX0_2
  SHX8_2 = SHX11_1.mm
  SHX8_2 = SHX8_2.sizeX
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = ", "
  SHX9_2 = SHX0_2
  SHX10_2 = SHX11_1.mm
  SHX10_2 = SHX10_2.sizeY
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = ")"
  SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2 .. SHX5_2 .. SHX6_2 .. SHX7_2 .. SHX8_2 .. SHX9_2 .. SHX10_2
  SHX1_2(SHX2_2)
  SHX1_2 = print
  SHX2_2 = "SetMinimapComponentPosition(\"minimap_mask\",  \"L\", \"B\", "
  SHX3_2 = SHX0_2
  SHX4_2 = SHX11_1.mk
  SHX4_2 = SHX4_2.posX
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = ", "
  SHX5_2 = SHX0_2
  SHX6_2 = SHX11_1.mk
  SHX6_2 = SHX6_2.posY
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = ", "
  SHX7_2 = SHX0_2
  SHX8_2 = SHX11_1.mk
  SHX8_2 = SHX8_2.sizeX
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = ", "
  SHX9_2 = SHX0_2
  SHX10_2 = SHX11_1.mk
  SHX10_2 = SHX10_2.sizeY
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = ")"
  SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2 .. SHX5_2 .. SHX6_2 .. SHX7_2 .. SHX8_2 .. SHX9_2 .. SHX10_2
  SHX1_2(SHX2_2)
  SHX1_2 = print
  SHX2_2 = "SetMinimapComponentPosition(\"minimap_blur\",  \"L\", \"B\", "
  SHX3_2 = SHX0_2
  SHX4_2 = SHX11_1.bl
  SHX4_2 = SHX4_2.posX
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = ", "
  SHX5_2 = SHX0_2
  SHX6_2 = SHX11_1.bl
  SHX6_2 = SHX6_2.posY
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = ", "
  SHX7_2 = SHX0_2
  SHX8_2 = SHX11_1.bl
  SHX8_2 = SHX8_2.sizeX
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = ", "
  SHX9_2 = SHX0_2
  SHX10_2 = SHX11_1.bl
  SHX10_2 = SHX10_2.sizeY
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = ")"
  SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2 .. SHX5_2 .. SHX6_2 .. SHX7_2 .. SHX8_2 .. SHX9_2 .. SHX10_2
  SHX1_2(SHX2_2)
  SHX1_2 = print
  SHX2_2 = "----------------------------"
  SHX1_2(SHX2_2)
end
SHX22_1 = 0
function SHX23_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX3_2 = SHX18_1
  SHX4_2 = SHX11_1
  SHX4_2 = SHX4_2[SHX0_2]
  SHX4_2 = SHX4_2[SHX1_2]
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = RageUI
  SHX4_2 = SHX4_2.Slider
  SHX5_2 = SHX2_2
  SHX6_2 = "  "
  SHX7_2 = string
  SHX7_2 = SHX7_2.format
  SHX8_2 = "%.3f"
  SHX9_2 = SHX11_1
  SHX9_2 = SHX9_2[SHX0_2]
  SHX9_2 = SHX9_2[SHX1_2]
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2
  SHX6_2 = SHX3_2
  SHX7_2 = SHX17_1
  SHX8_2 = ""
  SHX9_2 = false
  SHX10_2 = {}
  SHX11_2 = true
  function SHX12_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX4_3 = SHX3_2
    if SHX3_3 ~= SHX4_3 then
      SHX5_3 = SHX0_2
      SHX4_3 = SHX11_1
      SHX4_3 = SHX4_3[SHX5_3]
      SHX5_3 = SHX1_2
      SHX6_3 = SHX19_1
      SHX7_3 = SHX3_3
      SHX6_3 = SHX6_3(SHX7_3)
      SHX4_3[SHX5_3] = SHX6_3
      SHX4_3 = CreateThread
      SHX5_3 = SHX20_1
      SHX4_3(SHX5_3)
      SHX4_3 = GetGameTimer
      SHX4_3 = SHX4_3()
      SHX22_1 = SHX4_3
      SHX5_3 = SetTimeout
      SHX6_3 = 300
      function SHX7_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4, SHX2_4
        SHX0_4 = SHX22_1
        SHX1_4 = SHX4_3
        if SHX0_4 == SHX1_4 then
          SHX0_4 = SetRadarBigmapEnabled
          SHX1_4 = true
          SHX2_4 = false
          SHX0_4(SHX1_4, SHX2_4)
          SHX0_4 = SetMinimapClipType
          SHX1_4 = 0
          SHX0_4(SHX1_4)
          SHX0_4 = SetTimeout
          SHX1_4 = 50
          function SHX2_4()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_5, SHX1_5, SHX2_5
            SHX0_5 = SetRadarBigmapEnabled
            SHX1_5 = false
            SHX2_5 = false
            SHX0_5(SHX1_5, SHX2_5)
          end
          SHX0_4(SHX1_4, SHX2_4)
        end
      end
      SHX5_3(SHX6_3, SHX7_3)
    end
  end
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
SHX24_1 = CMG
SHX24_1 = SHX24_1.registerDevMenuItems
SHX25_1 = "Minimap Tuner"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = true
  SHX10_1 = SHX0_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.ButtonWithStyle
  SHX1_2 = "~g~Print Values"
  SHX2_2 = "Print copy-paste-ready code to F8 console"
  SHX3_2 = {}
  SHX4_2 = true
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3
    if SHX2_3 then
      SHX3_3 = SHX21_1
      SHX3_3()
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX24_1(SHX25_1, SHX26_1)
SHX24_1 = CMG
SHX24_1 = SHX24_1.registerDevMenuItems
SHX25_1 = "Minimap Tuner/Content (minimap)"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = true
  SHX10_1 = SHX0_2
  SHX0_2 = SHX23_1
  SHX1_2 = "mm"
  SHX2_2 = "posX"
  SHX3_2 = "Pos X"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX23_1
  SHX1_2 = "mm"
  SHX2_2 = "posY"
  SHX3_2 = "Pos Y"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX23_1
  SHX1_2 = "mm"
  SHX2_2 = "sizeX"
  SHX3_2 = "Size X"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX23_1
  SHX1_2 = "mm"
  SHX2_2 = "sizeY"
  SHX3_2 = "Size Y"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX24_1(SHX25_1, SHX26_1)
SHX24_1 = CMG
SHX24_1 = SHX24_1.registerDevMenuItems
SHX25_1 = "Minimap Tuner/Mask (minimap_mask)"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = true
  SHX10_1 = SHX0_2
  SHX0_2 = SHX23_1
  SHX1_2 = "mk"
  SHX2_2 = "posX"
  SHX3_2 = "Pos X"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX23_1
  SHX1_2 = "mk"
  SHX2_2 = "posY"
  SHX3_2 = "Pos Y"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX23_1
  SHX1_2 = "mk"
  SHX2_2 = "sizeX"
  SHX3_2 = "Size X"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX23_1
  SHX1_2 = "mk"
  SHX2_2 = "sizeY"
  SHX3_2 = "Size Y"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX24_1(SHX25_1, SHX26_1)
SHX24_1 = CMG
SHX24_1 = SHX24_1.registerDevMenuItems
SHX25_1 = "Minimap Tuner/Blur (minimap_blur)"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = true
  SHX10_1 = SHX0_2
  SHX0_2 = SHX23_1
  SHX1_2 = "bl"
  SHX2_2 = "posX"
  SHX3_2 = "Pos X"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX23_1
  SHX1_2 = "bl"
  SHX2_2 = "posY"
  SHX3_2 = "Pos Y"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX23_1
  SHX1_2 = "bl"
  SHX2_2 = "sizeX"
  SHX3_2 = "Size X"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX23_1
  SHX1_2 = "bl"
  SHX2_2 = "sizeY"
  SHX3_2 = "Size Y"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX24_1(SHX25_1, SHX26_1)
SHX24_1 = CMG
SHX24_1 = SHX24_1.uiRegisterCallback
SHX25_1 = "loaded"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = true
  SHX3_1 = SHX0_2
  SHX0_2 = SHX14_1
  SHX0_2()
end
SHX24_1(SHX25_1, SHX26_1)
SHX24_1 = AddEventHandler
SHX25_1 = "CMG:onClientSpawn"
function SHX26_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  while true do
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.isHudLoaded
    SHX2_2 = SHX2_2()
    if SHX2_2 then
      break
    end
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  if SHX1_2 then
    SHX2_2 = DisplayRadar
    SHX3_2 = true
    SHX2_2(SHX3_2)
    SHX2_2 = SHX7_1
    SHX2_2()
    SHX2_2 = SHX14_1
    SHX2_2()
    SHX2_2 = Wait
    SHX3_2 = 1000
    SHX2_2(SHX3_2)
    SHX2_2 = SHX14_1
    SHX2_2()
  end
end
SHX24_1(SHX25_1, SHX26_1)
SHX24_1 = CMG
SHX24_1 = SHX24_1.uiRegisterCallback
SHX25_1 = "getHudSetting"
function SHX26_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX0_2.type
  SHX3_2 = SHX0_2.value
  SHX4_2 = SHX1_1
  SHX4_2[SHX2_2] = SHX3_2
end
SHX24_1(SHX25_1, SHX26_1)
SHX24_1 = CMG
SHX24_1 = SHX24_1.uiRegisterCallback
SHX25_1 = "persistHudSettingsJson"
function SHX26_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" ~= SHX1_2 then
    return
  end
  SHX1_2 = pcall
  SHX2_2 = json
  SHX2_2 = SHX2_2.encode
  SHX3_2 = SHX0_2
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2, SHX3_2)
  if not SHX1_2 or nil == SHX2_2 then
    return
  end
  SHX3_2 = SetResourceKvp
  SHX4_2 = "cmg_hud_settings_json"
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
end
SHX24_1(SHX25_1, SHX26_1)
SHX24_1 = CMG
function SHX25_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  while true do
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.isHudLoaded
    SHX2_2 = SHX2_2()
    if SHX2_2 then
      break
    end
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.uiSendMessage
  SHX3_2 = {}
  SHX3_2.action = SHX0_2
  SHX3_2.payload = SHX1_2
  SHX2_2(SHX3_2)
end
SHX24_1.sendHudNuiMessage = SHX25_1
SHX24_1 = CMG
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.sendHudNuiMessage
  SHX1_2 = "SET_NOTIFY_SOUND_ENABLED"
  SHX2_2 = GetResourceKvpInt
  SHX3_2 = "cmg_disable_notify_sound"
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = 1 ~= SHX2_2
  SHX0_2(SHX1_2, SHX2_2)
end
SHX24_1.syncHudNotifySoundEnabled = SHX25_1
SHX24_1 = CreateThread
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isHudLoaded
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      break
    end
    SHX0_2 = print
    SHX1_2 = "Waiting for HUD to load..."
    SHX0_2(SHX1_2)
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = GetResourceKvpString
  SHX1_2 = "cmg_hud_settings_json"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 and "" ~= SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.sendHudNuiMessage
    SHX2_2 = "LOAD_HUD_SAVED_SETTINGS"
    SHX3_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.sendHudNuiMessage
  SHX2_2 = "SET_MENU"
  SHX3_2 = SHX0_1.Menu
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.sendHudNuiMessage
  SHX2_2 = "LOAD_KEYS"
  SHX3_2 = SHX0_1.UIKeys
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.sendHudNuiMessage
  SHX2_2 = "SET_SHOW_MAP_WALKING"
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.sendHudNuiMessage
  SHX2_2 = "SET_IDENTIFIER"
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getClientUserId
  SHX3_2 = SHX3_2()
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.sendHudNuiMessage
  SHX2_2 = "SET_PLAYER_PP"
  SHX3_2 = "./assets/images/default-pp.png"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.sendHudNuiMessage
  SHX2_2 = "SET_COUNTRY_CODE"
  SHX3_2 = SHX0_1.CountryCode
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.sendHudNuiMessage
  SHX2_2 = "SET_LOCALES"
  SHX3_2 = SHX0_1.Locales
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.sendHudNuiMessage
  SHX2_2 = "ENABLE_UI_KEYS"
  SHX3_2 = SHX0_1.EnableUIKeys
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.sendHudNuiMessage
  SHX2_2 = "SET_DEFAULT_SPEED_TYPE"
  SHX3_2 = SHX0_1.DefaultSpeedType
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.sendHudNuiMessage
  SHX2_2 = "SET_MOUSE_CURSOR_KEY_LABEL"
  SHX3_2 = SHX0_1.MouseCursorKeyLabel
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.sendHudNuiMessage
  SHX2_2 = "SET_MAX_VOICE_RANGES"
  SHX3_2 = SHX0_1.MaxVoiceRanges
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.sendHudNuiMessage
  SHX2_2 = "SEAT_SETTINGS"
  SHX3_2 = SHX0_1.Seat
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.syncHudNotifySoundEnabled
  SHX1_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isLegacyHudEnabled
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    SHX1_2 = SHX16_1
    SHX1_2()
  end
end
SHX24_1(SHX25_1)
SHX24_1 = CMG
SHX24_1 = SHX24_1.uiRegisterCallback
SHX25_1 = "resize"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX14_1
  SHX0_2()
end
SHX24_1(SHX25_1, SHX26_1)
SHX24_1 = CreateThread
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = GetActiveScreenResolution
  SHX0_2, SHX1_2 = SHX0_2()
  SHX2_2 = GetAspectRatio
  SHX3_2 = false
  SHX2_2 = SHX2_2(SHX3_2)
  while true do
    SHX3_2 = Wait
    SHX4_2 = 500
    SHX3_2(SHX4_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.isHudLoaded
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = GetActiveScreenResolution
      SHX3_2, SHX4_2 = SHX3_2()
      SHX5_2 = GetAspectRatio
      SHX6_2 = false
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX3_2 == SHX0_2 and SHX4_2 == SHX1_2 then
        SHX6_2 = math
        SHX6_2 = SHX6_2.abs
        SHX7_2 = SHX5_2 - SHX2_2
        SHX6_2 = SHX6_2(SHX7_2)
        SHX7_2 = 0.001
        if not (SHX6_2 > SHX7_2) then
          goto SHX_LABEL_36
        end
      end
      SHX0_2 = SHX3_2
      SHX1_2 = SHX4_2
      SHX2_2 = SHX5_2
      SHX6_2 = SHX14_1
      SHX6_2()
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_36:: outside nested blocks until all 'goto SHX_LABEL_36' can see it
    ::SHX_LABEL_36::
  end
end
SHX24_1(SHX25_1)
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2 = SHX0_2()
  SHX1_2 = {}
  SHX2_2 = "left"
  SHX3_2 = "right"
  SHX4_2 = "front"
  SHX5_2 = "back"
  SHX1_2[1] = SHX2_2
  SHX1_2[2] = SHX3_2
  SHX1_2[3] = SHX4_2
  SHX1_2[4] = SHX5_2
  SHX2_2 = 0
  SHX3_2 = 3
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = IsVehicleNeonLightEnabled
    SHX7_2 = SHX0_2
    SHX8_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    if SHX6_2 then
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.sendHudNuiMessage
      SHX7_2 = "NEON_ENABLED"
      SHX8_2 = {}
      SHX9_2 = SHX5_2 + 1
      SHX9_2 = SHX1_2[SHX9_2]
      SHX8_2.type = SHX9_2
      SHX8_2.value = true
      SHX6_2(SHX7_2, SHX8_2)
    else
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.sendHudNuiMessage
      SHX7_2 = "NEON_ENABLED"
      SHX8_2 = {}
      SHX9_2 = SHX5_2 + 1
      SHX9_2 = SHX1_2[SHX9_2]
      SHX8_2.type = SHX9_2
      SHX8_2.value = false
      SHX6_2(SHX7_2, SHX8_2)
    end
  end
end
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = GetVehicleLightsState
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX4_2 = nil
    if 1 == SHX2_2 and 0 == SHX3_2 then
      SHX4_2 = true
    elseif 1 == SHX2_2 and 1 == SHX3_2 or 0 == SHX2_2 and 1 == SHX3_2 then
      SHX4_2 = true
    else
      SHX4_2 = false
    end
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.sendHudNuiMessage
    SHX6_2 = "VEHICLE_LIGHTS"
    SHX7_2 = SHX4_2
    SHX5_2(SHX6_2, SHX7_2)
  end
end
SHX26_1 = CMG
SHX26_1 = SHX26_1.uiRegisterCallback
SHX27_1 = "closeSettings"
function SHX28_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSetFocus
  SHX1_2 = false
  SHX2_2 = false
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.type = "HUD_SET_INTERACTIVE"
  SHX1_2.value = false
  SHX0_2(SHX1_2)
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX0_2 = Wait
    SHX1_2 = 350
    SHX0_2(SHX1_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.uiSetFocus
    SHX1_2 = true
    SHX2_2 = true
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  end
end
SHX26_1(SHX27_1, SHX28_1)
SHX26_1 = CMG
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.sendHudNuiMessage
  SHX1_2 = "OPEN_HUD_SETTINGS"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSetFocus
  SHX1_2 = true
  SHX2_2 = true
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.type = "HUD_SET_INTERACTIVE"
  SHX1_2.value = true
  SHX0_2(SHX1_2)
end
SHX26_1.openHudSettings = SHX27_1
SHX26_1 = {}
SHX26_1.frontLeftDoor = false
SHX26_1.frontRightDoor = false
SHX26_1.backLeftDoor = false
SHX26_1.backRightDoor = false
SHX26_1.hood = false
SHX26_1.trunk = false
function SHX27_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX3_2 = true
  SHX4_2 = pairs
  SHX5_2 = SHX1_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX26_1
    SHX10_2 = SHX10_2[SHX9_2]
    if not SHX10_2 then
      SHX3_2 = false
    end
  end
  if SHX3_2 then
    return SHX0_2
  end
  return SHX2_2
end
function SHX28_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2 = SHX0_2()
  SHX1_2 = {}
  SHX1_2.frontLeftDoor = false
  SHX1_2.frontRightDoor = false
  SHX1_2.backLeftDoor = false
  SHX1_2.backRightDoor = false
  SHX1_2.hood = false
  SHX1_2.trunk = false
  SHX26_1 = SHX1_2
  SHX1_2 = "vehicle-1.png"
  SHX2_2 = GetVehicleDoorAngleRatio
  SHX3_2 = SHX0_2
  SHX4_2 = 0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if 0 ~= SHX2_2 then
    SHX26_1.frontLeftDoor = true
  end
  SHX2_2 = GetVehicleDoorAngleRatio
  SHX3_2 = SHX0_2
  SHX4_2 = 1
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if 0 ~= SHX2_2 then
    SHX26_1.frontRightDoor = true
  end
  SHX2_2 = GetVehicleDoorAngleRatio
  SHX3_2 = SHX0_2
  SHX4_2 = 2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if 0 ~= SHX2_2 then
    SHX26_1.backLeftDoor = true
  end
  SHX2_2 = GetVehicleDoorAngleRatio
  SHX3_2 = SHX0_2
  SHX4_2 = 3
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if 0 ~= SHX2_2 then
    SHX26_1.backRightDoor = true
  end
  SHX2_2 = GetVehicleDoorAngleRatio
  SHX3_2 = SHX0_2
  SHX4_2 = 4
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if 0 ~= SHX2_2 then
    SHX26_1.hood = true
  end
  SHX2_2 = GetVehicleDoorAngleRatio
  SHX3_2 = SHX0_2
  SHX4_2 = 5
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if 0 ~= SHX2_2 then
    SHX26_1.trunk = true
  end
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-2.png"
  SHX4_2 = {}
  SHX5_2 = "frontLeftDoor"
  SHX4_2[1] = SHX5_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-3.png"
  SHX4_2 = {}
  SHX5_2 = "frontRightDoor"
  SHX4_2[1] = SHX5_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-4.png"
  SHX4_2 = {}
  SHX5_2 = "backLeftDoor"
  SHX4_2[1] = SHX5_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-5.png"
  SHX4_2 = {}
  SHX5_2 = "backRightDoor"
  SHX4_2[1] = SHX5_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-10.png"
  SHX4_2 = {}
  SHX5_2 = "trunk"
  SHX4_2[1] = SHX5_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-11.png"
  SHX4_2 = {}
  SHX5_2 = "hood"
  SHX4_2[1] = SHX5_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-12.png"
  SHX4_2 = {}
  SHX5_2 = "trunk"
  SHX6_2 = "frontLeftDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-13.png"
  SHX4_2 = {}
  SHX5_2 = "trunk"
  SHX6_2 = "frontRightDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-14.png"
  SHX4_2 = {}
  SHX5_2 = "trunk"
  SHX6_2 = "backLeftDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-15.png"
  SHX4_2 = {}
  SHX5_2 = "trunk"
  SHX6_2 = "backRightDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-6.png"
  SHX4_2 = {}
  SHX5_2 = "frontLeftDoor"
  SHX6_2 = "frontRightDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-20.png"
  SHX4_2 = {}
  SHX5_2 = "hood"
  SHX6_2 = "frontLeftDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-21.png"
  SHX4_2 = {}
  SHX5_2 = "hood"
  SHX6_2 = "frontRightDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-22.png"
  SHX4_2 = {}
  SHX5_2 = "hood"
  SHX6_2 = "backLeftDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-23.png"
  SHX4_2 = {}
  SHX5_2 = "hood"
  SHX6_2 = "backRightDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-28.png"
  SHX4_2 = {}
  SHX5_2 = "hood"
  SHX6_2 = "trunk"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-62.png"
  SHX4_2 = {}
  SHX5_2 = "backLeftDoor"
  SHX6_2 = "backRightDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-37.png"
  SHX4_2 = {}
  SHX5_2 = "frontLeftDoor"
  SHX6_2 = "backRightDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-38.png"
  SHX4_2 = {}
  SHX5_2 = "frontRightDoor"
  SHX6_2 = "backLeftDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-39.png"
  SHX4_2 = {}
  SHX5_2 = "frontLeftDoor"
  SHX6_2 = "backLeftDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-40.png"
  SHX4_2 = {}
  SHX5_2 = "frontRightDoor"
  SHX6_2 = "backRightDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-7.png"
  SHX4_2 = {}
  SHX5_2 = "frontLeftDoor"
  SHX6_2 = "frontRightDoor"
  SHX7_2 = "backRightDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-8.png"
  SHX4_2 = {}
  SHX5_2 = "frontLeftDoor"
  SHX6_2 = "frontRightDoor"
  SHX7_2 = "backLeftDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-16.png"
  SHX4_2 = {}
  SHX5_2 = "trunk"
  SHX6_2 = "frontRightDoor"
  SHX7_2 = "frontLeftDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-24.png"
  SHX4_2 = {}
  SHX5_2 = "hood"
  SHX6_2 = "frontRightDoor"
  SHX7_2 = "frontLeftDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-29.png"
  SHX4_2 = {}
  SHX5_2 = "hood"
  SHX6_2 = "trunk"
  SHX7_2 = "frontLeftDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-30.png"
  SHX4_2 = {}
  SHX5_2 = "hood"
  SHX6_2 = "trunk"
  SHX7_2 = "frontRightDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-31.png"
  SHX4_2 = {}
  SHX5_2 = "hood"
  SHX6_2 = "trunk"
  SHX7_2 = "backLeftDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-32.png"
  SHX4_2 = {}
  SHX5_2 = "hood"
  SHX6_2 = "trunk"
  SHX7_2 = "backRightDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-41.png"
  SHX4_2 = {}
  SHX5_2 = "frontLeftDoor"
  SHX6_2 = "backLeftDoor"
  SHX7_2 = "backRightDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-42.png"
  SHX4_2 = {}
  SHX5_2 = "frontRightDoor"
  SHX6_2 = "backLeftDoor"
  SHX7_2 = "backRightDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-43.png"
  SHX4_2 = {}
  SHX5_2 = "frontLeftDoor"
  SHX6_2 = "backRightDoor"
  SHX7_2 = "trunk"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-44.png"
  SHX4_2 = {}
  SHX5_2 = "frontRightDoor"
  SHX6_2 = "backLeftDoor"
  SHX7_2 = "trunk"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-45.png"
  SHX4_2 = {}
  SHX5_2 = "frontRightDoor"
  SHX6_2 = "backLeftDoor"
  SHX7_2 = "trunk"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-46.png"
  SHX4_2 = {}
  SHX5_2 = "frontLeftDoor"
  SHX6_2 = "backLeftDoor"
  SHX7_2 = "trunk"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-47.png"
  SHX4_2 = {}
  SHX5_2 = "frontRightDoor"
  SHX6_2 = "backRightDoor"
  SHX7_2 = "trunk"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-50.png"
  SHX4_2 = {}
  SHX5_2 = "backRightDoor"
  SHX6_2 = "frontLeftDoor"
  SHX7_2 = "hood"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-51.png"
  SHX4_2 = {}
  SHX5_2 = "backLeftDoor"
  SHX6_2 = "frontRightDoor"
  SHX7_2 = "hood"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-52.png"
  SHX4_2 = {}
  SHX5_2 = "backLeftDoor"
  SHX6_2 = "frontLeftDoor"
  SHX7_2 = "hood"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-53.png"
  SHX4_2 = {}
  SHX5_2 = "backRightDoor"
  SHX6_2 = "frontRightDoor"
  SHX7_2 = "hood"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-63.png"
  SHX4_2 = {}
  SHX5_2 = "backLeftDoor"
  SHX6_2 = "backRightDoor"
  SHX7_2 = "trunk"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-64.png"
  SHX4_2 = {}
  SHX5_2 = "backLeftDoor"
  SHX6_2 = "backRightDoor"
  SHX7_2 = "hood"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-9.png"
  SHX4_2 = {}
  SHX5_2 = "frontLeftDoor"
  SHX6_2 = "frontRightDoor"
  SHX7_2 = "backLeftDoor"
  SHX8_2 = "backRightDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-17.png"
  SHX4_2 = {}
  SHX5_2 = "trunk"
  SHX6_2 = "frontRightDoor"
  SHX7_2 = "frontLeftDoor"
  SHX8_2 = "backRightDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-18.png"
  SHX4_2 = {}
  SHX5_2 = "trunk"
  SHX6_2 = "frontRightDoor"
  SHX7_2 = "frontLeftDoor"
  SHX8_2 = "backLeftDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-25.png"
  SHX4_2 = {}
  SHX5_2 = "hood"
  SHX6_2 = "frontRightDoor"
  SHX7_2 = "frontLeftDoor"
  SHX8_2 = "backRightDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-26.png"
  SHX4_2 = {}
  SHX5_2 = "hood"
  SHX6_2 = "frontRightDoor"
  SHX7_2 = "frontLeftDoor"
  SHX8_2 = "backLeftDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-33.png"
  SHX4_2 = {}
  SHX5_2 = "hood"
  SHX6_2 = "trunk"
  SHX7_2 = "frontRightDoor"
  SHX8_2 = "frontLeftDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-48.png"
  SHX4_2 = {}
  SHX5_2 = "backLeftDoor"
  SHX6_2 = "frontLeftDoor"
  SHX7_2 = "backRightDoor"
  SHX8_2 = "trunk"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-49.png"
  SHX4_2 = {}
  SHX5_2 = "backLeftDoor"
  SHX6_2 = "frontRightDoor"
  SHX7_2 = "backRightDoor"
  SHX8_2 = "trunk"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-54.png"
  SHX4_2 = {}
  SHX5_2 = "backRightDoor"
  SHX6_2 = "backLeftDoor"
  SHX7_2 = "frontLeftDoor"
  SHX8_2 = "hood"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-55.png"
  SHX4_2 = {}
  SHX5_2 = "backRightDoor"
  SHX6_2 = "backLeftDoor"
  SHX7_2 = "frontRightDoor"
  SHX8_2 = "hood"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-56.png"
  SHX4_2 = {}
  SHX5_2 = "backLeftDoor"
  SHX6_2 = "frontLeftDoor"
  SHX7_2 = "hood"
  SHX8_2 = "trunk"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-57.png"
  SHX4_2 = {}
  SHX5_2 = "backRightDoor"
  SHX6_2 = "frontRightDoor"
  SHX7_2 = "hood"
  SHX8_2 = "trunk"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-58.png"
  SHX4_2 = {}
  SHX5_2 = "backRightDoor"
  SHX6_2 = "frontLeftDoor"
  SHX7_2 = "hood"
  SHX8_2 = "trunk"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-59.png"
  SHX4_2 = {}
  SHX5_2 = "backLeftDoor"
  SHX6_2 = "frontRightDoor"
  SHX7_2 = "hood"
  SHX8_2 = "trunk"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-65.png"
  SHX4_2 = {}
  SHX5_2 = "backLeftDoor"
  SHX6_2 = "backRightDoor"
  SHX7_2 = "hood"
  SHX8_2 = "trunk"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-27.png"
  SHX4_2 = {}
  SHX5_2 = "hood"
  SHX6_2 = "frontRightDoor"
  SHX7_2 = "frontLeftDoor"
  SHX8_2 = "backLeftDoor"
  SHX9_2 = "backRightDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX4_2[5] = SHX9_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-19.png"
  SHX4_2 = {}
  SHX5_2 = "trunk"
  SHX6_2 = "frontRightDoor"
  SHX7_2 = "frontLeftDoor"
  SHX8_2 = "backLeftDoor"
  SHX9_2 = "backRightDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX4_2[5] = SHX9_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-34.png"
  SHX4_2 = {}
  SHX5_2 = "hood"
  SHX6_2 = "trunk"
  SHX7_2 = "frontRightDoor"
  SHX8_2 = "frontLeftDoor"
  SHX9_2 = "backLeftDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX4_2[5] = SHX9_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-35.png"
  SHX4_2 = {}
  SHX5_2 = "hood"
  SHX6_2 = "trunk"
  SHX7_2 = "frontRightDoor"
  SHX8_2 = "frontLeftDoor"
  SHX9_2 = "backRightDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX4_2[5] = SHX9_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-60.png"
  SHX4_2 = {}
  SHX5_2 = "backLeftDoor"
  SHX6_2 = "backRightDoor"
  SHX7_2 = "frontRightDoor"
  SHX8_2 = "hood"
  SHX9_2 = "trunk"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX4_2[5] = SHX9_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-61.png"
  SHX4_2 = {}
  SHX5_2 = "backLeftDoor"
  SHX6_2 = "backRightDoor"
  SHX7_2 = "frontLeftDoor"
  SHX8_2 = "hood"
  SHX9_2 = "trunk"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX4_2[5] = SHX9_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX27_1
  SHX3_2 = "vehicle-36.png"
  SHX4_2 = {}
  SHX5_2 = "hood"
  SHX6_2 = "trunk"
  SHX7_2 = "frontRightDoor"
  SHX8_2 = "frontLeftDoor"
  SHX9_2 = "backRightDoor"
  SHX10_2 = "backLeftDoor"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX4_2[5] = SHX9_2
  SHX4_2[6] = SHX10_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.sendHudNuiMessage
  SHX3_2 = "VEHICLE_DOORS"
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = GetVehicleMaxNumberOfPassengers
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.sendHudNuiMessage
  SHX4_2 = "VEHICLE_SEATS"
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
end
SHX29_1 = CMG
SHX29_1 = SHX29_1.uiRegisterCallback
SHX30_1 = "vehicleDoors"
function SHX31_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerVehicle
  SHX1_2 = SHX1_2()
  SHX2_2 = GetVehicleDoorAngleRatio
  SHX3_2 = SHX1_2
  SHX4_2 = SHX0_2.value
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = 0 ~= SHX2_2
  if SHX2_2 then
    SHX3_2 = SetVehicleDoorShut
    SHX4_2 = SHX1_2
    SHX5_2 = SHX0_2.value
    SHX6_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  else
    SHX3_2 = SetVehicleDoorOpen
    SHX4_2 = SHX1_2
    SHX5_2 = SHX0_2.value
    SHX6_2 = false
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  end
  SHX3_2 = Wait
  SHX4_2 = 100
  SHX3_2(SHX4_2)
  SHX3_2 = SHX28_1
  SHX3_2()
end
SHX29_1(SHX30_1, SHX31_1)
SHX29_1 = CMG
SHX29_1 = SHX29_1.uiRegisterCallback
SHX30_1 = "toggleVehicleEngine"
function SHX31_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2, SHX1_2 = SHX0_2()
  if 0 == SHX0_2 then
    return
  end
  if not SHX1_2 then
    return
  end
  SHX2_2 = GetIsVehicleEngineRunning
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX3_2 = SetVehicleEngineOn
    SHX4_2 = SHX0_2
    SHX5_2 = false
    SHX6_2 = true
    SHX7_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  else
    SHX3_2 = SetVehicleEngineOn
    SHX4_2 = SHX0_2
    SHX5_2 = true
    SHX6_2 = false
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  end
end
SHX29_1(SHX30_1, SHX31_1)
function SHX29_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = IsVehicleWindowIntact
    SHX4_2 = SHX2_2
    SHX5_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX4_2 = GetIsDoorValid
    SHX5_2 = SHX2_2
    SHX6_2 = SHX1_2
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    if SHX4_2 and SHX3_2 then
      SHX4_2 = RollDownWindow
      SHX5_2 = SHX2_2
      SHX6_2 = SHX0_2
      SHX4_2(SHX5_2, SHX6_2)
    else
      SHX4_2 = RollUpWindow
      SHX5_2 = SHX2_2
      SHX6_2 = SHX0_2
      SHX4_2(SHX5_2, SHX6_2)
    end
  end
end
SHX30_1 = CMG
SHX30_1 = SHX30_1.uiRegisterCallback
SHX31_1 = "toggleWindow"
function SHX32_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "b43f1cc624"
  SHX4_2 = SHX0_2.window
  SHX5_2 = SHX0_2.door
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
SHX30_1(SHX31_1, SHX32_1)
SHX30_1 = RegisterNetEvent
SHX31_1 = "0b1dd98e8e"
SHX30_1(SHX31_1)
SHX30_1 = AddEventHandler
SHX31_1 = "0b1dd98e8e"
function SHX32_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX3_2 = GetPlayerPed
  SHX4_2 = GetPlayerFromServerId
  SHX5_2 = SHX0_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = IsPedInAnyVehicle
  SHX5_2 = SHX3_2
  SHX6_2 = false
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  if SHX4_2 then
    SHX4_2 = DoesEntityExist
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      SHX4_2 = GetVehiclePedIsIn
      SHX5_2 = SHX3_2
      SHX6_2 = false
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      SHX5_2 = SHX29_1
      SHX6_2 = SHX1_2
      SHX7_2 = SHX2_2
      SHX8_2 = SHX4_2
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    end
  end
end
SHX30_1(SHX31_1, SHX32_1)
SHX30_1 = {}
SHX31_1 = false
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX30_1
  SHX1_2 = SHX1_2[SHX0_2]
  if nil ~= SHX1_2 then
    SHX1_2 = true
    return SHX1_2
  end
  SHX1_2 = IsVehicleNeonLightEnabled
  SHX2_2 = SHX0_2
  SHX3_2 = 0
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = SHX30_1
    SHX1_2[SHX0_2] = true
    SHX1_2 = true
    return SHX1_2
  end
end
function SHX33_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX31_1
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerVehicle
    SHX0_2 = SHX0_2()
    SHX1_2 = true
    SHX31_1 = SHX1_2
    SHX1_2 = CreateThread
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
      while true do
        SHX0_3 = SHX31_1
        if not SHX0_3 then
          break
        end
        SHX0_3 = 0
        SHX1_3 = 3
        SHX2_3 = 1
        for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
          SHX4_3 = IsVehicleNeonLightEnabled
          SHX5_3 = SHX0_2
          SHX6_3 = SHX3_3
          SHX4_3 = SHX4_3(SHX5_3, SHX6_3)
          if SHX4_3 then
            SHX4_3 = SetVehicleNeonLightEnabled
            SHX5_3 = SHX0_2
            SHX6_3 = SHX3_3
            SHX7_3 = false
            SHX4_3(SHX5_3, SHX6_3, SHX7_3)
          else
            SHX4_3 = SetVehicleNeonLightEnabled
            SHX5_3 = SHX0_2
            SHX6_3 = SHX3_3
            SHX7_3 = true
            SHX4_3(SHX5_3, SHX6_3, SHX7_3)
          end
          SHX4_3 = Wait
          SHX5_3 = 120
          SHX4_3(SHX5_3)
        end
        SHX0_3 = Wait
        SHX1_3 = 0
        SHX0_3(SHX1_3)
      end
    end
    SHX1_2(SHX2_2)
    SHX1_2 = Wait
    SHX2_2 = 12000
    SHX1_2(SHX2_2)
    SHX1_2 = false
    SHX31_1 = SHX1_2
  end
end
SHX34_1 = CMG
SHX34_1 = SHX34_1.uiRegisterCallback
SHX35_1 = "toggleNeon"
function SHX36_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerVehicle
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX32_1
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX3_2 = notify
    SHX4_2 = "~r~This car does not have neon installed, purhcase it at LS Customs"
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = false
  SHX31_1 = SHX3_2
  SHX3_2 = SHX0_2.type
  if "neon" == SHX3_2 then
    SHX3_2 = IsVehicleNeonLightEnabled
    SHX4_2 = SHX1_2
    SHX5_2 = SHX0_2.value
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if SHX3_2 then
      SHX3_2 = SetVehicleNeonLightEnabled
      SHX4_2 = SHX1_2
      SHX5_2 = SHX0_2.value
      SHX6_2 = false
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    else
      SHX3_2 = SetVehicleNeonLightEnabled
      SHX4_2 = SHX1_2
      SHX5_2 = SHX0_2.value
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    end
    SHX3_2 = SHX24_1
    SHX3_2()
  else
    SHX3_2 = SHX0_2.type
    if "party" == SHX3_2 then
      SHX3_2 = SHX33_1
      SHX3_2()
    else
      SHX3_2 = SHX0_2.type
      if "all" == SHX3_2 then
        SHX3_2 = true
        SHX4_2 = 0
        SHX5_2 = 3
        SHX6_2 = 1
        for SHX7_2 = SHX4_2, SHX5_2, SHX6_2 do
          SHX8_2 = IsVehicleNeonLightEnabled
          SHX9_2 = SHX1_2
          SHX10_2 = SHX7_2
          SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
          if SHX8_2 then
            SHX3_2 = false
          end
        end
        SHX4_2 = 0
        SHX5_2 = 3
        SHX6_2 = 1
        for SHX7_2 = SHX4_2, SHX5_2, SHX6_2 do
          SHX8_2 = SetVehicleNeonLightEnabled
          SHX9_2 = SHX1_2
          SHX10_2 = SHX7_2
          SHX11_2 = SHX3_2
          SHX8_2(SHX9_2, SHX10_2, SHX11_2)
        end
      end
    end
  end
end
SHX34_1(SHX35_1, SHX36_1)
SHX34_1 = CMG
SHX34_1 = SHX34_1.uiRegisterCallback
SHX35_1 = "OnInputFocus"
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.uiSetFocus
    SHX1_2 = true
    SHX2_2 = true
    SHX3_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  end
end
SHX34_1(SHX35_1, SHX36_1)
SHX34_1 = CMG
SHX34_1 = SHX34_1.uiRegisterCallback
SHX35_1 = "OnInputFocusRemove"
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.uiSetFocus
    SHX1_2 = true
    SHX2_2 = true
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  end
end
SHX34_1(SHX35_1, SHX36_1)
function SHX34_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = -1
  SHX2_2 = false
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2 = SHX3_2()
  SHX4_2 = GetEntityCoords
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = pairs
  SHX6_2 = SHX0_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = SHX4_2 - SHX10_2
    SHX11_2 = #SHX11_2
    if -1 == SHX1_2 or SHX1_2 > SHX11_2 then
      SHX1_2 = SHX11_2
      SHX2_2 = SHX10_2
    end
  end
  return SHX2_2
end
SHX35_1 = CMG
SHX35_1 = SHX35_1.uiRegisterCallback
SHX36_1 = "waypoint"
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX0_1.QuickLocations
  SHX2_2 = SHX0_2.type
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = SHX0_2.type
  if "gun_store" == SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getSmallArmsShopCoordsForHudWaypoint
    if SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.getSmallArmsShopCoordsForHudWaypoint
      SHX2_2 = SHX2_2()
      if SHX2_2 then
        goto SHX_LABEL_19
        SHX1_2 = SHX2_2 or SHX1_2
      end
    end
    SHX2_2 = {}
    SHX1_2 = SHX2_2
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_19:: outside nested blocks until all 'goto SHX_LABEL_19' can see it
  ::SHX_LABEL_19::
  if SHX1_2 then
    SHX2_2 = SHX34_1
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_27
    end
  end
  SHX2_2 = nil
  -- [FIX IF ERROR] Move ::SHX_LABEL_27:: outside nested blocks until all 'goto SHX_LABEL_27' can see it
  ::SHX_LABEL_27::
  if SHX2_2 then
    SHX3_2 = SetNewWaypoint
    SHX4_2 = SHX2_2.x
    SHX5_2 = SHX2_2.y
    SHX3_2(SHX4_2, SHX5_2)
  end
end
SHX35_1(SHX36_1, SHX37_1)
function SHX35_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX1_2 or nil
  if not SHX1_2 then
    SHX2_2 = 0
  end
  SHX3_2 = 10
  SHX2_2 = SHX3_2 ^ SHX2_2
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = 0.5 * SHX2_2
  SHX4_2 = SHX0_2 + SHX4_2
  return SHX3_2(SHX4_2)
end
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1.speedType
  if "kmh" == SHX0_2 then
    SHX0_2 = 3.6
    if SHX0_2 then
      goto SHX_LABEL_8
    end
  end
  SHX0_2 = 2.23694
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  return SHX0_2
end
function SHX37_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if not SHX1_2 then
    SHX1_2 = 0
  end
  SHX2_2 = type
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "number" ~= SHX2_2 then
    return SHX1_2
  end
  if SHX0_2 ~= SHX0_2 then
    return SHX1_2
  end
  SHX2_2 = math
  SHX2_2 = SHX2_2.huge
  if SHX0_2 ~= SHX2_2 then
    SHX2_2 = math
    SHX2_2 = SHX2_2.huge
    SHX2_2 = -SHX2_2
    if SHX0_2 ~= SHX2_2 then
      goto SHX_LABEL_23
    end
  end
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
  ::SHX_LABEL_23::
  return SHX0_2
end
SHX38_1 = false
SHX39_1 = false
function SHX40_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 0
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
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
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 3
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 4
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 5
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 6
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 199
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 200
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 75
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 200
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 202
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 177
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 288
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 166
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 167
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 56
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 57
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = HideHudComponentThisFrame
    SHX1_2 = 16
    SHX0_2(SHX1_2)
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2 = SHX0_2()
  if 0 ~= SHX0_2 then
    SHX1_2 = IsUsingKeyboard
    SHX2_2 = 0
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = IsDisabledControlJustPressed
      SHX2_2 = 0
      SHX3_2 = SHX0_1.MouseCursorKey
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      if SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.getHudVehicleType
        SHX2_2 = SHX0_2
        SHX1_2 = SHX1_2(SHX2_2)
        if "bike" ~= SHX1_2 then
          SHX1_2 = SHX2_1
          SHX1_2 = not SHX1_2
          SHX2_1 = SHX1_2
          SHX1_2 = CMG
          SHX1_2 = SHX1_2.uiSetFocus
          SHX2_2 = SHX2_1
          SHX3_2 = SHX2_1
          SHX4_2 = SHX2_1
          SHX1_2(SHX2_2, SHX3_2, SHX4_2)
          SHX1_2 = CMG
          SHX1_2 = SHX1_2.uiSendMessage
          SHX2_2 = {}
          SHX2_2.type = "HUD_SET_INTERACTIVE"
          SHX3_2 = SHX2_1
          SHX2_2.value = SHX3_2
          SHX1_2(SHX2_2)
        end
      end
    end
  else
    SHX1_2 = SHX2_1
    if SHX1_2 then
      SHX1_2 = false
      SHX2_1 = SHX1_2
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.uiSetFocus
      SHX2_2 = SHX2_1
      SHX3_2 = SHX2_1
      SHX4_2 = SHX2_1
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.uiSendMessage
      SHX2_2 = {}
      SHX2_2.type = "HUD_SET_INTERACTIVE"
      SHX2_2.value = false
      SHX1_2(SHX2_2)
    end
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerVehicle
  SHX1_2 = SHX1_2()
  if 0 ~= SHX1_2 then
    SHX1_2 = IsControlPressed
    SHX2_2 = 0
    SHX3_2 = 76
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = SHX38_1
      if not SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.sendHudNuiMessage
        SHX2_2 = "handbrake"
        SHX3_2 = true
        SHX1_2(SHX2_2, SHX3_2)
        SHX1_2 = true
        SHX38_1 = SHX1_2
      end
    else
      SHX1_2 = SHX38_1
      if SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.sendHudNuiMessage
        SHX2_2 = "handbrake"
        SHX3_2 = false
        SHX1_2(SHX2_2, SHX3_2)
        SHX1_2 = false
        SHX38_1 = SHX1_2
      end
    end
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getVehicleMode
    SHX1_2 = SHX1_2()
    if "drift" == SHX1_2 then
      SHX1_2 = IsControlPressed
      SHX2_2 = 0
      SHX3_2 = 72
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      if SHX1_2 then
        SHX1_2 = SHX39_1
        if not SHX1_2 then
          SHX1_2 = CMG
          SHX1_2 = SHX1_2.sendHudNuiMessage
          SHX2_2 = "abs"
          SHX3_2 = true
          SHX1_2(SHX2_2, SHX3_2)
          SHX1_2 = true
          SHX39_1 = SHX1_2
        end
      else
        SHX1_2 = SHX39_1
        if SHX1_2 then
          SHX1_2 = CMG
          SHX1_2 = SHX1_2.sendHudNuiMessage
          SHX2_2 = "abs"
          SHX3_2 = false
          SHX1_2(SHX2_2, SHX3_2)
          SHX1_2 = false
          SHX39_1 = SHX1_2
        end
      end
    else
      SHX1_2 = SHX39_1
      if SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.sendHudNuiMessage
        SHX2_2 = "abs"
        SHX3_2 = false
        SHX1_2(SHX2_2, SHX3_2)
        SHX1_2 = false
        SHX39_1 = SHX1_2
      end
    end
  end
end
SHX41_1 = CMG
SHX41_1 = SHX41_1.createThreadOnTick
SHX42_1 = SHX40_1
SHX43_1 = "handbrake_check"
SHX41_1(SHX42_1, SHX43_1)
SHX41_1 = CreateThread
function SHX42_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerPed
    SHX0_2 = SHX0_2()
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerVehicle
    SHX1_2 = SHX1_2()
    if 0 ~= SHX1_2 then
      SHX2_2 = GetEntitySpeed
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      SHX3_2 = SHX36_1
      SHX3_2 = SHX3_2()
      SHX2_2 = SHX2_2 * SHX3_2
      SHX3_2 = GetEntityHeading
      SHX4_2 = SHX0_2
      SHX3_2 = SHX3_2(SHX4_2)
      SHX4_2 = 249
      if SHX2_2 > SHX4_2 then
        SHX4_2 = 250
        if SHX2_2 < SHX4_2 then
          SHX2_2 = 250
        end
      end
      SHX4_2 = tonumber
      SHX5_2 = string
      SHX5_2 = SHX5_2.format
      SHX6_2 = "%.1f"
      SHX7_2 = GetVehicleCurrentRpm
      SHX8_2 = SHX1_2
      SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX7_2(SHX8_2)
      SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX5_2 = SHX37_1
      SHX6_2 = SHX4_2
      SHX7_2 = 0
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
      SHX5_2 = SHX5_2 - 0.2
      SHX6_2 = SHX37_1
      SHX7_2 = SHX5_2
      SHX8_2 = 0
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      SHX5_2 = SHX6_2
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.sendHudNuiMessage
      SHX7_2 = "SET_SPEED"
      SHX8_2 = {}
      SHX9_2 = SHX37_1
      SHX10_2 = SHX2_2
      SHX11_2 = 0
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
      SHX8_2.current = SHX9_2
      SHX8_2.rpm = SHX5_2
      SHX9_2 = SHX37_1
      SHX10_2 = GetVehicleEstimatedMaxSpeed
      SHX11_2 = SHX1_2
      SHX10_2 = SHX10_2(SHX11_2)
      SHX11_2 = SHX36_1
      SHX11_2 = SHX11_2()
      SHX10_2 = SHX10_2 * SHX11_2
      SHX11_2 = 0
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
      SHX8_2.max = SHX9_2
      SHX9_2 = SHX37_1
      SHX10_2 = GetEntityRoll
      SHX11_2 = SHX1_2
      SHX10_2 = SHX10_2(SHX11_2)
      SHX10_2 = -SHX10_2
      SHX11_2 = 0
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
      SHX8_2.roll = SHX9_2
      SHX9_2 = SHX37_1
      SHX10_2 = SHX3_2
      SHX11_2 = 0
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
      SHX8_2.headingValue = SHX9_2
      SHX9_2 = SHX37_1
      SHX10_2 = GetWindSpeed
      SHX10_2 = SHX10_2()
      SHX11_2 = 0
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
      SHX8_2.wind = SHX9_2
      SHX9_2 = GetVehicleCurrentGear
      SHX10_2 = SHX1_2
      SHX9_2 = SHX9_2(SHX10_2)
      SHX8_2.gear = SHX9_2
      SHX6_2(SHX7_2, SHX8_2)
    end
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
end
SHX41_1(SHX42_1)
SHX41_1 = {}
SHX41_1.N = 360
SHX41_1.NE = 315
SHX41_1.E = 270
SHX41_1.SE = 225
SHX41_1.S = 180
SHX41_1.SW = 135
SHX41_1.W = 90
SHX41_1.NW = 45
SHX42_1 = CreateThread
function SHX43_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX0_2 = false
  SHX1_2 = false
  SHX2_2 = {}
  SHX2_2.r = false
  SHX2_2.g = false
  SHX2_2.b = false
  while true do
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerPed
    SHX3_2 = SHX3_2()
    SHX4_2 = GetEntityCoords
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getPlayerVehicle
    SHX5_2, SHX6_2 = SHX5_2()
    SHX7_2 = 0 ~= SHX5_2
    if SHX7_2 and not SHX1_2 then
      SHX1_2 = true
      SHX8_2 = CMG
      SHX8_2 = SHX8_2.getHudVehicleType
      SHX9_2 = SHX5_2
      SHX8_2 = SHX8_2(SHX9_2)
      if SHX6_2 then
        SHX9_2 = CMG
        SHX9_2 = SHX9_2.sendHudNuiMessage
        SHX10_2 = "IN_VEHICLE"
        SHX11_2 = {}
        SHX11_2.value = true
        SHX11_2.type = SHX8_2
        SHX9_2(SHX10_2, SHX11_2)
      else
        SHX9_2 = CMG
        SHX9_2 = SHX9_2.sendHudNuiMessage
        SHX10_2 = "IN_VEHICLE"
        SHX11_2 = {}
        SHX11_2.value = true
        SHX11_2.type = SHX8_2
        SHX9_2(SHX10_2, SHX11_2)
        SHX9_2 = CMG
        SHX9_2 = SHX9_2.sendHudNuiMessage
        SHX10_2 = "SET_IN_PASSENGER_SIDE"
        SHX11_2 = true
        SHX9_2(SHX10_2, SHX11_2)
      end
    elseif not SHX7_2 and SHX1_2 then
      SHX1_2 = false
      SHX8_2 = CMG
      SHX8_2 = SHX8_2.sendHudNuiMessage
      SHX9_2 = "IN_VEHICLE"
      SHX10_2 = {}
      SHX10_2.value = false
      SHX10_2.type = false
      SHX8_2(SHX9_2, SHX10_2)
      SHX8_2 = CMG
      SHX8_2 = SHX8_2.sendHudNuiMessage
      SHX9_2 = "SET_IN_PASSENGER_SIDE"
      SHX10_2 = false
      SHX8_2(SHX9_2, SHX10_2)
      SHX8_2 = CMG
      SHX8_2 = SHX8_2.resetVehicleMode
      SHX8_2()
    end
    if SHX7_2 then
      SHX8_2 = GetIsVehicleEngineRunning
      SHX9_2 = SHX5_2
      SHX8_2 = SHX8_2(SHX9_2)
      if SHX8_2 ~= SHX0_2 then
        SHX0_2 = SHX8_2
        if SHX8_2 then
          SHX9_2 = CMG
          SHX9_2 = SHX9_2.sendHudNuiMessage
          SHX10_2 = "ENGINE_STATUS"
          SHX11_2 = true
          SHX9_2(SHX10_2, SHX11_2)
        else
          SHX9_2 = CMG
          SHX9_2 = SHX9_2.sendHudNuiMessage
          SHX10_2 = "ENGINE_STATUS"
          SHX11_2 = false
          SHX9_2(SHX10_2, SHX11_2)
        end
      end
    end
    SHX8_2 = GetStreetNameAtCoord
    SHX9_2 = SHX4_2.x
    SHX10_2 = SHX4_2.y
    SHX11_2 = SHX4_2.z
    SHX12_2 = Citizen
    SHX12_2 = SHX12_2.ResultAsInteger
    SHX12_2 = SHX12_2()
    SHX13_2 = Citizen
    SHX13_2 = SHX13_2.ResultAsInteger
    SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2 = SHX13_2()
    SHX8_2, SHX9_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
    SHX10_2 = GetNameOfZone
    SHX11_2 = SHX4_2.x
    SHX12_2 = SHX4_2.y
    SHX13_2 = SHX4_2.z
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    SHX11_2 = GetLabelText
    SHX12_2 = SHX10_2
    SHX11_2 = SHX11_2(SHX12_2)
    SHX12_2 = GetStreetNameFromHashKey
    SHX13_2 = SHX8_2
    SHX12_2 = SHX12_2(SHX13_2)
    SHX13_2 = GetEntityHeading
    SHX14_2 = SHX3_2
    SHX13_2 = SHX13_2(SHX14_2)
    SHX14_2 = "N"
    SHX15_2 = SHX1_1.compassBehaviour
    if "mouselook" == SHX15_2 then
      SHX15_2 = GetGameplayCamRot
      SHX16_2 = 0
      SHX15_2 = SHX15_2(SHX16_2)
      SHX16_2 = SHX35_1
      SHX17_2 = SHX15_2.z
      SHX17_2 = SHX17_2 + 360.0
      SHX17_2 = SHX17_2 % 360.0
      SHX18_2 = 360.0
      SHX17_2 = SHX18_2 - SHX17_2
      SHX16_2 = SHX16_2(SHX17_2)
      SHX13_2 = SHX16_2
    end
    SHX15_2 = pairs
    SHX16_2 = SHX41_1
    SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX15_2(SHX16_2)
    for SHX19_2, SHX20_2 in SHX15_2, SHX16_2, SHX17_2, SHX18_2 do
      SHX21_2 = math
      SHX21_2 = SHX21_2.abs
      SHX22_2 = SHX13_2 - SHX20_2
      SHX21_2 = SHX21_2(SHX22_2)
      SHX22_2 = 22.5
      if SHX21_2 < SHX22_2 then
        SHX14_2 = SHX19_2
        if 1 == SHX13_2 then
          SHX14_2 = "N"
          break
        end
        break
      end
    end
    SHX15_2 = CMG
    SHX15_2 = SHX15_2.sendHudNuiMessage
    SHX16_2 = "SET_LOCATION"
    SHX17_2 = {}
    SHX17_2.street = SHX12_2
    SHX17_2.zone = SHX11_2
    SHX17_2.heading = SHX14_2
    SHX15_2(SHX16_2, SHX17_2)
    if SHX7_2 then
      SHX15_2 = GetVehicleNeonLightsColour
      SHX16_2 = SHX5_2
      SHX15_2, SHX16_2, SHX17_2 = SHX15_2(SHX16_2)
      SHX18_2 = SHX2_2.r
      if SHX18_2 == SHX15_2 then
        SHX18_2 = SHX2_2.g
        if SHX18_2 == SHX16_2 then
          SHX18_2 = SHX2_2.b
          if SHX18_2 == SHX17_2 then
            SHX18_2 = Wait
            SHX19_2 = 2000
            SHX18_2(SHX19_2)
          end
        end
      end
      SHX18_2 = {}
      SHX18_2.r = SHX15_2
      SHX18_2.g = SHX16_2
      SHX18_2.b = SHX17_2
      SHX2_2 = SHX18_2
      SHX18_2 = CMG
      SHX18_2 = SHX18_2.sendHudNuiMessage
      SHX19_2 = "NEON_LIGHTS"
      SHX20_2 = {}
      SHX20_2.r = SHX15_2
      SHX20_2.g = SHX16_2
      SHX20_2.b = SHX17_2
      SHX18_2(SHX19_2, SHX20_2)
      SHX18_2 = CMG
      SHX18_2 = SHX18_2.sendHudNuiMessage
      SHX19_2 = "FUEL"
      SHX20_2 = SHX37_1
      SHX21_2 = CMG
      SHX21_2 = SHX21_2.getVehicleFuel
      SHX22_2 = SHX5_2
      SHX21_2 = SHX21_2(SHX22_2)
      SHX22_2 = 0
      SHX20_2, SHX21_2, SHX22_2 = SHX20_2(SHX21_2, SHX22_2)
      SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2)
      SHX18_2 = SHX28_1
      SHX18_2()
      SHX18_2 = SHX24_1
      SHX18_2()
      SHX18_2 = SHX25_1
      SHX19_2 = SHX5_2
      SHX18_2(SHX19_2)
    end
    SHX15_2 = Wait
    SHX16_2 = 100
    SHX15_2(SHX16_2)
  end
end
SHX42_1(SHX43_1)
SHX42_1 = CMG
SHX42_1 = SHX42_1.uiRegisterCallback
SHX43_1 = "changeSeat"
function SHX44_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.changeSeat
  SHX2_2 = SHX0_2.seat
  SHX1_2(SHX2_2)
end
SHX42_1(SHX43_1, SHX44_1)
