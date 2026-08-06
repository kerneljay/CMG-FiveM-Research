-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_vending"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = AddTextEntry
SHX2_1 = BeginTextCommandDisplayHelp
SHX3_1 = EndTextCommandDisplayHelp
SHX4_1 = GetEntityCoords
SHX5_1 = World3dToScreen2d
SHX6_1 = SetTextScale
SHX7_1 = SetTextFont
SHX8_1 = SetTextEntry
SHX9_1 = SetTextCentre
SHX10_1 = AddTextComponentString
SHX11_1 = DrawText
SHX12_1 = TriggerEvent
SHX13_1 = {}
SHX14_1 = {}
SHX13_1.Marker = SHX14_1
SHX14_1 = {}
SHX13_1.N3d = SHX14_1
SHX14_1 = {}
SHX13_1.SetData = SHX14_1
SHX14_1 = {}
SHX13_1.SliceGroups = SHX14_1
SHX14_1 = {}
SHX13_1.Events = SHX14_1
function SHX14_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX3_2 = 1
  SHX4_2 = #SHX1_2
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = string
    SHX7_2 = SHX7_2.gsub
    SHX8_2 = SHX0_2
    SHX9_2 = SHX1_2[SHX6_2]
    SHX10_2 = SHX2_2[SHX6_2]
    if not SHX10_2 then
      SHX10_2 = SHX2_2
    end
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX0_2 = SHX7_2
  end
  return SHX0_2
end
SHX15_1 = 100.0
SHX16_1 = 8100
SHX17_1 = SHX16_1 / SHX15_1
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.floor
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX15_1
  SHX2_2 = SHX2_2 / SHX3_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = math
  SHX2_2 = SHX2_2.floor
  SHX3_2 = SHX0_2.y
  SHX4_2 = SHX15_1
  SHX3_2 = SHX3_2 / SHX4_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX2_2
  SHX4_2 = SHX1_2
  return SHX3_2, SHX4_2
end
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX18_1
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = SHX17_1
  SHX4_2 = SHX1_2 * SHX4_2
  SHX4_2 = SHX4_2 + SHX2_2
  return SHX3_2(SHX4_2)
end
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX19_1
  SHX1_2 = GetEntityCoords
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
  return SHX0_2(SHX1_2, SHX2_2)
end
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX13_1.SliceGroups
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX1_2 = false
  end
  return SHX1_2
end
function SHX22_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = tonumber
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX0_2 = SHX2_2
  if not SHX0_2 then
    return
  end
  if SHX1_2 then
    SHX2_2 = SHX13_1.SliceGroups
    SHX2_2[SHX0_2] = SHX1_2
  else
    SHX2_2 = SHX13_1.SliceGroups
    SHX2_2[SHX0_2] = nil
  end
end
function SHX23_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX8_2 = HasAnimDictLoaded
  SHX9_2 = SHX1_2
  SHX8_2 = SHX8_2(SHX9_2)
  if not SHX8_2 then
    SHX8_2 = RequestAnimDict
    SHX9_2 = SHX1_2
    SHX8_2(SHX9_2)
    while true do
      SHX8_2 = HasAnimDictLoaded
      SHX9_2 = SHX1_2
      SHX8_2 = SHX8_2(SHX9_2)
      if SHX8_2 then
        break
      end
      SHX8_2 = Citizen
      SHX8_2 = SHX8_2.Wait
      SHX9_2 = 1
      SHX8_2(SHX9_2)
    end
  end
  SHX8_2 = TaskPlayAnim
  SHX9_2 = SHX0_2
  SHX10_2 = SHX1_2
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2 or SHX12_2
  if not SHX3_2 then
    SHX12_2 = 2.0
  end
  SHX13_2 = SHX4_2 or SHX13_2
  if not SHX4_2 then
    SHX13_2 = 2.0
  end
  SHX14_2 = SHX5_2 or SHX14_2
  if not SHX5_2 then
    SHX14_2 = -1
  end
  SHX15_2 = SHX6_2 or SHX15_2
  if not SHX6_2 then
    SHX15_2 = 0
  end
  SHX16_2 = SHX7_2 or SHX16_2
  if not SHX7_2 then
    SHX16_2 = 0
  end
  SHX17_2 = false
  SHX18_2 = false
  SHX19_2 = false
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX8_2 = RemoveAnimDict
  SHX9_2 = SHX1_2
  SHX8_2(SHX9_2)
end
function SHX24_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  if nil == SHX2_2 then
    SHX2_2 = 51
  end
  if nil == SHX3_2 then
    SHX3_2 = -1
  end
  SHX4_2 = SHX23_1
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX8_2 = 2.0
  SHX9_2 = 2.0
  SHX10_2 = SHX3_2
  SHX11_2 = SHX2_2
  SHX12_2 = 0
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
function SHX25_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  if SHX0_2 then
    SHX5_2 = SHX5_1
    SHX6_2 = SHX0_2.x
    SHX7_2 = SHX0_2.y
    SHX8_2 = SHX0_2.z
    SHX5_2, SHX6_2, SHX7_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    if SHX5_2 then
      SHX8_2 = SHX6_1
      SHX9_2 = SHX2_2 or SHX9_2
      if not SHX2_2 then
        SHX9_2 = 0.35
      end
      SHX10_2 = SHX2_2 or SHX10_2
      if not SHX2_2 then
        SHX10_2 = 0.35
      end
      SHX8_2(SHX9_2, SHX10_2)
      SHX8_2 = SHX7_1
      SHX9_2 = SHX3_2 or SHX9_2
      if not SHX3_2 then
        SHX9_2 = 4
      end
      SHX8_2(SHX9_2)
      SHX8_2 = SHX8_1
      SHX9_2 = "STRING"
      SHX8_2(SHX9_2)
      SHX8_2 = SHX9_1
      SHX9_2 = true
      SHX8_2(SHX9_2)
      SHX8_2 = SHX10_1
      SHX9_2 = SHX1_2
      SHX8_2(SHX9_2)
      SHX8_2 = SHX11_1
      SHX9_2 = SHX6_2
      SHX10_2 = SHX7_2
      SHX8_2(SHX9_2, SHX10_2)
      if SHX4_2 then
        SHX8_2 = string
        SHX8_2 = SHX8_2.len
        SHX9_2 = SHX1_2
        SHX8_2 = SHX8_2(SHX9_2)
        SHX8_2 = SHX8_2 / 370
        SHX9_2 = DrawRect
        SHX10_2 = SHX6_2
        SHX11_2 = SHX7_2 + 0.0125
        SHX12_2 = 0.025 + SHX8_2
        SHX13_2 = 0.025
        SHX14_2 = 0
        SHX15_2 = 0
        SHX16_2 = 0
        SHX17_2 = 90
        SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      end
    end
  end
end
function SHX26_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX1_1
  SHX3_2 = "ButtonNotificationInternal"
  SHX4_2 = SHX0_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX2_1
  SHX3_2 = "ButtonNotificationInternal"
  SHX2_2(SHX3_2)
  SHX2_2 = SHX3_1
  SHX3_2 = 0
  SHX4_2 = true
  SHX5_2 = SHX1_2 or SHX5_2
  if not SHX1_2 then
    SHX5_2 = true
  end
  SHX6_2 = -1
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
function SHX27_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2
  SHX2_2 = string
  SHX2_2 = SHX2_2.match
  SHX3_2 = SHX0_2
  SHX4_2 = "{.*}"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX2_2 then
    SHX2_2 = SHX14_1
    SHX3_2 = SHX0_2
    SHX4_2 = {}
    SHX5_2 = "{A}"
    SHX6_2 = "{B}"
    SHX7_2 = "{C}"
    SHX8_2 = "{D}"
    SHX9_2 = "{E}"
    SHX10_2 = "{F}"
    SHX11_2 = "{G}"
    SHX12_2 = "{H}"
    SHX13_2 = "{L}"
    SHX14_2 = "{M}"
    SHX15_2 = "{N}"
    SHX16_2 = "{O}"
    SHX17_2 = "{P}"
    SHX18_2 = "{Q}"
    SHX19_2 = "{R}"
    SHX20_2 = "{S}"
    SHX21_2 = "{T}"
    SHX22_2 = "{U}"
    SHX23_2 = "{V}"
    SHX24_2 = "{W}"
    SHX25_2 = "{X}"
    SHX26_2 = "{Y}"
    SHX27_2 = "{Z}"
    SHX4_2[1] = SHX5_2
    SHX4_2[2] = SHX6_2
    SHX4_2[3] = SHX7_2
    SHX4_2[4] = SHX8_2
    SHX4_2[5] = SHX9_2
    SHX4_2[6] = SHX10_2
    SHX4_2[7] = SHX11_2
    SHX4_2[8] = SHX12_2
    SHX4_2[9] = SHX13_2
    SHX4_2[10] = SHX14_2
    SHX4_2[11] = SHX15_2
    SHX4_2[12] = SHX16_2
    SHX4_2[13] = SHX17_2
    SHX4_2[14] = SHX18_2
    SHX4_2[15] = SHX19_2
    SHX4_2[16] = SHX20_2
    SHX4_2[17] = SHX21_2
    SHX4_2[18] = SHX22_2
    SHX4_2[19] = SHX23_2
    SHX4_2[20] = SHX24_2
    SHX4_2[21] = SHX25_2
    SHX4_2[22] = SHX26_2
    SHX4_2[23] = SHX27_2
    SHX5_2 = {}
    SHX6_2 = "~INPUT_VEH_FLY_YAW_LEFT~"
    SHX7_2 = "~INPUT_SPECIAL_ABILITY_SECONDARY~"
    SHX8_2 = "~INPUT_LOOK_BEHIND~"
    SHX9_2 = "~INPUT_MOVE_RIGHT_ONLY~"
    SHX10_2 = "~INPUT_CONTEXT~"
    SHX11_2 = "~INPUT_ARREST~"
    SHX12_2 = "~INPUT_DETONATE~"
    SHX13_2 = "~INPUT_VEH_ROOF~"
    SHX14_2 = "~INPUT_CELLPHONE_CAMERA_FOCUS_LOCK~"
    SHX15_2 = "~INPUT_INTERACTION_MENU~"
    SHX16_2 = "~INPUT_REPLAY_ENDPOINT~"
    SHX17_2 = "~INPUT_FRONTEND_PAUSE~"
    SHX18_2 = "~INPUT_FRONTEND_LB~"
    SHX19_2 = "~INPUT_RELOAD~"
    SHX20_2 = "~INPUT_MOVE_DOWN_ONLY~"
    SHX21_2 = "~INPUT_MP_TEXT_CHAT_ALL~"
    SHX22_2 = "~INPUT_REPLAY_SCREENSHOT~"
    SHX23_2 = "~INPUT_NEXT_CAMERA~"
    SHX24_2 = "~INPUT_MOVE_UP_ONLY~"
    SHX25_2 = "~INPUT_VEH_HOTWIRE_LEFT~"
    SHX26_2 = "~INPUT_VEH_DUCK~"
    SHX27_2 = "~INPUT_MP_TEXT_CHAT_TEAM~"
    SHX28_2 = "~INPUT_HUD_SPECIAL~"
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
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = SHX2_2
  end
  if nil == SHX1_2 then
    SHX1_2 = true
  end
  SHX2_2 = SHX1_1
  SHX3_2 = "ButtonNotification"
  SHX4_2 = string
  SHX4_2 = SHX4_2.len
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2 .. SHX4_2
  SHX4_2 = SHX0_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX2_1
  SHX3_2 = "ButtonNotification"
  SHX4_2 = string
  SHX4_2 = SHX4_2.len
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2 .. SHX4_2
  SHX2_2(SHX3_2)
  SHX2_2 = SHX3_1
  SHX3_2 = 0
  SHX4_2 = false
  SHX5_2 = SHX1_2
  SHX6_2 = -1
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
function SHX28_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    while true do
      SHX0_3 = GetGameTimer
      SHX0_3 = SHX0_3()
      SHX1_3 = SHX2_2
      SHX0_3 = SHX0_3 - SHX1_3
      SHX1_3 = SHX1_2
      if not SHX1_3 then
        SHX1_3 = 5000
      end
      if not (SHX0_3 < SHX1_3) then
        break
      end
      SHX0_3 = SHX27_1
      SHX1_3 = SHX0_2
      SHX0_3(SHX1_3)
      SHX0_3 = Citizen
      SHX0_3 = SHX0_3.Wait
      SHX1_3 = 1
      SHX0_3(SHX1_3)
    end
  end
  SHX3_2(SHX4_2)
end
function SHX29_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2
  SHX5_2 = 10
  SHX6_2 = 0.01
  SHX7_2 = 1.0E-7
  SHX8_2 = 10
  SHX9_2 = 11
  SHX10_2 = SHX9_2 - 1.0
  SHX11_2 = 1.0
  SHX10_2 = SHX11_2 / SHX10_2
  function SHX11_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3
    SHX2_3 = 3.0 * SHX1_3
    SHX3_3 = 1.0
    SHX2_3 = SHX3_3 - SHX2_3
    SHX3_3 = 3.0 * SHX0_3
    SHX2_3 = SHX2_3 + SHX3_3
    return SHX2_3
  end
  function SHX12_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3
    SHX2_3 = 3.0 * SHX1_3
    SHX3_3 = 6.0 * SHX0_3
    SHX2_3 = SHX2_3 - SHX3_3
    return SHX2_3
  end
  function SHX13_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3
    SHX1_3 = 3.0 * SHX0_3
    return SHX1_3
  end
  function SHX14_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX3_3 = SHX11_2
    SHX4_3 = SHX1_3
    SHX5_3 = SHX2_3
    SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
    SHX3_3 = SHX3_3 * SHX0_3
    SHX4_3 = SHX12_2
    SHX5_3 = SHX1_3
    SHX6_3 = SHX2_3
    SHX4_3 = SHX4_3(SHX5_3, SHX6_3)
    SHX3_3 = SHX3_3 + SHX4_3
    SHX3_3 = SHX3_3 * SHX0_3
    SHX4_3 = SHX13_2
    SHX5_3 = SHX1_3
    SHX4_3 = SHX4_3(SHX5_3)
    SHX3_3 = SHX3_3 + SHX4_3
    SHX3_3 = SHX3_3 * SHX0_3
    return SHX3_3
  end
  function SHX15_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX3_3 = SHX11_2
    SHX4_3 = SHX1_3
    SHX5_3 = SHX2_3
    SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
    SHX3_3 = 3.0 * SHX3_3
    SHX3_3 = SHX3_3 * SHX0_3
    SHX3_3 = SHX3_3 * SHX0_3
    SHX4_3 = SHX12_2
    SHX5_3 = SHX1_3
    SHX6_3 = SHX2_3
    SHX4_3 = SHX4_3(SHX5_3, SHX6_3)
    SHX4_3 = 2.0 * SHX4_3
    SHX4_3 = SHX4_3 * SHX0_3
    SHX3_3 = SHX3_3 + SHX4_3
    SHX4_3 = SHX13_2
    SHX5_3 = SHX1_3
    SHX4_3 = SHX4_3(SHX5_3)
    SHX3_3 = SHX3_3 + SHX4_3
    return SHX3_3
  end
  function SHX16_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
    SHX5_3 = 0
    SHX6_3 = 0
    SHX7_3 = 0
    repeat
      SHX8_3 = SHX2_3 - SHX1_3
      SHX8_3 = SHX8_3 / 2.0
      SHX6_3 = SHX1_3 + SHX8_3
      SHX8_3 = SHX14_2
      SHX9_3 = SHX6_3
      SHX10_3 = SHX3_3
      SHX11_3 = SHX4_3
      SHX8_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3)
      SHX5_3 = SHX8_3 - SHX0_3
      if SHX5_3 > 0.0 then
        SHX2_3 = SHX6_3
      else
        SHX1_3 = SHX6_3
      end
      SHX7_3 = SHX7_3 + 1
      SHX8_3 = math
      SHX8_3 = SHX8_3.abs
      SHX9_3 = SHX5_3
      SHX8_3 = SHX8_3(SHX9_3)
      SHX9_3 = SHX7_2
      if SHX8_3 <= SHX9_3 then
        break
      end
      SHX8_3 = SHX8_2
    until SHX7_3 >= SHX8_3
    return SHX6_3
  end
  function SHX17_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    SHX4_3 = 1
    SHX5_3 = SHX5_2
    SHX6_3 = 1
    for SHX7_3 = SHX4_3, SHX5_3, SHX6_3 do
      SHX8_3 = SHX15_2
      SHX9_3 = SHX1_3
      SHX10_3 = SHX2_3
      SHX11_3 = SHX3_3
      SHX8_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3)
      if 0.0 == SHX8_3 then
        return SHX1_3
      end
      SHX9_3 = SHX14_2
      SHX10_3 = SHX1_3
      SHX11_3 = SHX2_3
      SHX12_3 = SHX3_3
      SHX9_3 = SHX9_3(SHX10_3, SHX11_3, SHX12_3)
      SHX9_3 = SHX9_3 - SHX0_3
      SHX9_3 = SHX9_3 / SHX8_3
      SHX1_3 = SHX1_3 - SHX9_3
    end
    return SHX1_3
  end
  function SHX18_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    if SHX0_3 == SHX1_3 and SHX2_3 == SHX3_3 then
      function SHX4_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4
        return SHX0_4
      end
      return SHX4_3
    end
    SHX4_3 = {}
    SHX5_3 = 1
    SHX6_3 = SHX9_2
    SHX7_3 = 1
    for SHX8_3 = SHX5_3, SHX6_3, SHX7_3 do
      SHX9_3 = SHX14_2
      SHX10_3 = SHX8_3 - 1
      SHX11_3 = SHX10_2
      SHX10_3 = SHX10_3 * SHX11_3
      SHX11_3 = SHX0_3
      SHX12_3 = SHX2_3
      SHX9_3 = SHX9_3(SHX10_3, SHX11_3, SHX12_3)
      SHX4_3[SHX8_3] = SHX9_3
    end
    function SHX5_3(SHX0_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4
      SHX1_4 = 0.0
      SHX2_4 = 1
      SHX3_4 = SHX9_2
      SHX3_4 = SHX3_4 - 1
      while SHX2_4 ~= SHX3_4 do
        SHX4_4 = SHX4_3
        SHX4_4 = SHX4_4[SHX2_4]
        if not (SHX0_4 >= SHX4_4) then
          break
        end
        SHX4_4 = SHX10_2
        SHX1_4 = SHX1_4 + SHX4_4
        SHX2_4 = SHX2_4 + 1
      end
      SHX2_4 = SHX2_4 - 1
      if SHX2_4 < 1 then
        SHX2_4 = 1
      end
      SHX4_4 = SHX9_2
      if SHX2_4 >= SHX4_4 then
        SHX4_4 = SHX9_2
        SHX2_4 = SHX4_4 - 1
      end
      SHX5_4 = SHX2_4 + 1
      SHX4_4 = SHX4_3
      SHX4_4 = SHX4_4[SHX5_4]
      SHX5_4 = SHX4_3
      SHX5_4 = SHX5_4[SHX2_4]
      SHX4_4 = SHX4_4 - SHX5_4
      if 0 == SHX4_4 then
        return SHX1_4
      end
      SHX5_4 = SHX4_3
      SHX5_4 = SHX5_4[SHX2_4]
      SHX5_4 = SHX0_4 - SHX5_4
      SHX5_4 = SHX5_4 / SHX4_4
      SHX6_4 = SHX10_2
      SHX6_4 = SHX5_4 * SHX6_4
      SHX6_4 = SHX1_4 + SHX6_4
      SHX7_4 = SHX15_2
      SHX8_4 = SHX6_4
      SHX9_4 = SHX0_3
      SHX10_4 = SHX2_3
      SHX7_4 = SHX7_4(SHX8_4, SHX9_4, SHX10_4)
      SHX8_4 = SHX6_2
      if SHX7_4 >= SHX8_4 then
        SHX8_4 = SHX17_2
        SHX9_4 = SHX0_4
        SHX10_4 = SHX6_4
        SHX11_4 = SHX0_3
        SHX12_4 = SHX2_3
        return SHX8_4(SHX9_4, SHX10_4, SHX11_4, SHX12_4)
      elseif 0.0 == SHX7_4 then
        return SHX6_4
      else
        SHX8_4 = SHX16_2
        SHX9_4 = SHX0_4
        SHX10_4 = SHX1_4
        SHX11_4 = SHX10_2
        SHX11_4 = SHX1_4 + SHX11_4
        SHX12_4 = SHX0_3
        SHX13_4 = SHX2_3
        return SHX8_4(SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4)
      end
    end
    function SHX6_3(SHX0_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_4, SHX2_4, SHX3_4, SHX4_4
      if SHX0_4 <= 0 then
        SHX1_4 = 0
        return SHX1_4
      end
      if SHX0_4 >= 1 then
        SHX1_4 = 1
        return SHX1_4
      end
      SHX1_4 = SHX14_2
      SHX2_4 = SHX5_3
      SHX3_4 = SHX0_4
      SHX2_4 = SHX2_4(SHX3_4)
      SHX3_4 = SHX1_3
      SHX4_4 = SHX3_3
      return SHX1_4(SHX2_4, SHX3_4, SHX4_4)
    end
    return SHX6_3
  end
  SHX19_2 = {}
  SHX20_2 = {}
  SHX21_2 = 0.25
  SHX22_2 = 0.1
  SHX23_2 = 0.25
  SHX24_2 = 1
  SHX20_2[1] = SHX21_2
  SHX20_2[2] = SHX22_2
  SHX20_2[3] = SHX23_2
  SHX20_2[4] = SHX24_2
  SHX19_2.ease = SHX20_2
  SHX20_2 = {}
  SHX21_2 = 0.42
  SHX22_2 = 0
  SHX23_2 = 1
  SHX24_2 = 1
  SHX20_2[1] = SHX21_2
  SHX20_2[2] = SHX22_2
  SHX20_2[3] = SHX23_2
  SHX20_2[4] = SHX24_2
  SHX19_2.easeIn = SHX20_2
  SHX20_2 = {}
  SHX21_2 = 0
  SHX22_2 = 0
  SHX23_2 = 0.58
  SHX24_2 = 1
  SHX20_2[1] = SHX21_2
  SHX20_2[2] = SHX22_2
  SHX20_2[3] = SHX23_2
  SHX20_2[4] = SHX24_2
  SHX19_2.easeOut = SHX20_2
  SHX20_2 = {}
  SHX21_2 = 0.42
  SHX22_2 = 0
  SHX23_2 = 0.58
  SHX24_2 = 1
  SHX20_2[1] = SHX21_2
  SHX20_2[2] = SHX22_2
  SHX20_2[3] = SHX23_2
  SHX20_2[4] = SHX24_2
  SHX19_2.easeInOut = SHX20_2
  if not SHX4_2 then
    SHX20_2 = {}
    SHX21_2 = 0.1
    SHX22_2 = 0.1
    SHX23_2 = 0.1
    SHX24_2 = 0.1
    SHX20_2[1] = SHX21_2
    SHX20_2[2] = SHX22_2
    SHX20_2[3] = SHX23_2
    SHX20_2[4] = SHX24_2
    SHX4_2 = SHX20_2
  end
  SHX20_2 = type
  SHX21_2 = SHX4_2
  SHX20_2 = SHX20_2(SHX21_2)
  if "string" == SHX20_2 then
    SHX4_2 = SHX19_2[SHX4_2]
    if not SHX4_2 then
      SHX20_2 = error
      SHX21_2 = "translateObjectRotationCubicBezier: unknown predefined bezier"
      SHX20_2(SHX21_2)
      return
    end
  end
  SHX20_2 = SHX18_2
  SHX21_2 = table
  SHX21_2 = SHX21_2.unpack
  SHX22_2 = SHX4_2
  SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2 = SHX21_2(SHX22_2)
  SHX20_2 = SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2)
  SHX21_2 = GetEntityRotation
  SHX22_2 = SHX0_2
  SHX23_2 = SHX3_2 or SHX23_2
  if not SHX3_2 then
    SHX23_2 = 1
  end
  SHX21_2 = SHX21_2(SHX22_2, SHX23_2)
  SHX22_2 = GetEntityCoords
  SHX23_2 = SHX0_2
  SHX22_2 = SHX22_2(SHX23_2)
  SHX23_2 = GetNetworkTimeAccurate
  SHX23_2 = SHX23_2()
  SHX24_2 = GetNetworkTimeAccurate
  SHX24_2 = SHX24_2()
  SHX25_2 = {}
  SHX26_2 = "x"
  SHX27_2 = "y"
  SHX28_2 = "z"
  SHX25_2[1] = SHX26_2
  SHX25_2[2] = SHX27_2
  SHX25_2[3] = SHX28_2
  SHX26_2 = {}
  SHX27_2 = ipairs
  SHX28_2 = SHX25_2
  SHX27_2, SHX28_2, SHX29_2, SHX30_2 = SHX27_2(SHX28_2)
  for SHX31_2, SHX32_2 in SHX27_2, SHX28_2, SHX29_2, SHX30_2 do
    SHX33_2 = SHX1_2[SHX32_2]
    SHX34_2 = SHX21_2[SHX32_2]
    SHX33_2 = SHX33_2 - SHX34_2
    SHX33_2 = SHX33_2 + 180
    SHX33_2 = SHX33_2 % 360
    SHX33_2 = SHX33_2 - 180
    SHX26_2[SHX32_2] = SHX33_2
  end
  while true do
    SHX27_2 = SHX24_2 - SHX23_2
    if not (SHX2_2 > SHX27_2) then
      break
    end
    SHX27_2 = Citizen
    SHX27_2 = SHX27_2.Wait
    SHX28_2 = 0
    SHX27_2(SHX28_2)
    SHX27_2 = GetNetworkTimeAccurate
    SHX27_2 = SHX27_2()
    SHX28_2 = SHX27_2 - SHX23_2
    SHX28_2 = SHX28_2 / SHX2_2
    if SHX28_2 > 1 then
      SHX28_2 = 1
    end
    if 0 ~= SHX24_2 then
      SHX29_2 = SHX27_2 - SHX24_2
      if 0 ~= SHX29_2 then
        SHX29_2 = {}
        SHX30_2 = ipairs
        SHX31_2 = SHX25_2
        SHX30_2, SHX31_2, SHX32_2, SHX33_2 = SHX30_2(SHX31_2)
        for SHX34_2, SHX35_2 in SHX30_2, SHX31_2, SHX32_2, SHX33_2 do
          SHX36_2 = SHX21_2[SHX35_2]
          SHX37_2 = SHX26_2[SHX35_2]
          SHX38_2 = SHX20_2
          SHX39_2 = SHX28_2
          SHX38_2 = SHX38_2(SHX39_2)
          SHX37_2 = SHX37_2 * SHX38_2
          SHX36_2 = SHX36_2 + SHX37_2
          SHX29_2[SHX35_2] = SHX36_2
        end
        SHX30_2 = SetEntityRotation
        SHX31_2 = SHX0_2
        SHX32_2 = SHX29_2.x
        SHX33_2 = SHX29_2.y
        SHX34_2 = SHX29_2.z
        SHX35_2 = SHX3_2 or SHX35_2
        if not SHX3_2 then
          SHX35_2 = 1
        end
        SHX36_2 = false
        SHX30_2(SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2)
        SHX30_2 = SetEntityCoords
        SHX31_2 = SHX0_2
        SHX32_2 = SHX22_2.x
        SHX33_2 = SHX22_2.y
        SHX34_2 = SHX22_2.z
        SHX35_2 = false
        SHX36_2 = false
        SHX37_2 = false
        SHX38_2 = false
        SHX30_2(SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2)
      end
    end
    SHX24_2 = SHX27_2
  end
  SHX27_2 = SetEntityRotation
  SHX28_2 = SHX0_2
  SHX29_2 = SHX1_2.x
  SHX30_2 = SHX1_2.y
  SHX31_2 = SHX1_2.z
  SHX32_2 = SHX3_2 or SHX32_2
  if not SHX3_2 then
    SHX32_2 = 1
  end
  SHX33_2 = false
  SHX27_2(SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2)
  SHX27_2 = SetEntityCoords
  SHX28_2 = SHX0_2
  SHX29_2 = SHX22_2.x
  SHX30_2 = SHX22_2.y
  SHX31_2 = SHX22_2.z
  SHX32_2 = false
  SHX33_2 = false
  SHX34_2 = false
  SHX35_2 = false
  SHX27_2(SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2)
end
function SHX30_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = ClearHelp
  SHX1_2 = true
  SHX0_2(SHX1_2)
end
function SHX31_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX3_2 = SHX13_1.SetData
  SHX3_2 = SHX3_2[SHX0_2]
  if nil == SHX3_2 then
    SHX3_2 = SHX13_1.SetData
    SHX4_2 = {}
    SHX3_2[SHX0_2] = SHX4_2
  end
  SHX3_2 = type
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if "table" == SHX3_2 then
    SHX3_2 = pairs
    SHX4_2 = SHX1_2
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = SHX13_1.SetData
      SHX9_2 = SHX9_2[SHX0_2]
      SHX9_2[SHX7_2] = SHX8_2
    end
  else
    SHX3_2 = SHX13_1.SetData
    SHX3_2 = SHX3_2[SHX0_2]
    SHX3_2[SHX1_2] = SHX2_2
  end
end
function SHX32_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  if nil == SHX1_2 then
    SHX1_2 = "not defined"
  end
  SHX2_2 = SHX13_1.SetData
  SHX2_2 = SHX2_2[SHX0_2]
  if nil ~= SHX2_2 then
    if "not defined" == SHX1_2 then
      SHX2_2 = SHX13_1.SetData
      SHX2_2 = SHX2_2[SHX0_2]
      return SHX2_2
    else
      SHX2_2 = SHX13_1.SetData
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2 = SHX2_2[SHX1_2]
      return SHX2_2
    end
  end
  SHX2_2 = nil
  return SHX2_2
end
function SHX33_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX3_2 = SHX0_2
  SHX2_2 = SHX0_2.lower
  SHX2_2 = SHX2_2(SHX3_2)
  if "marker" ~= SHX2_2 then
    SHX3_2 = SHX0_2
    SHX2_2 = SHX0_2.lower
    SHX2_2 = SHX2_2(SHX3_2)
    if "m" ~= SHX2_2 then
      goto SHX_LABEL_11
    end
  end
  SHX0_2 = "Marker"
  goto SHX_LABEL_23
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX3_2 = SHX0_2
  SHX2_2 = SHX0_2.lower
  SHX2_2 = SHX2_2(SHX3_2)
  if "n3d" ~= SHX2_2 then
    SHX3_2 = SHX0_2
    SHX2_2 = SHX0_2.lower
    SHX2_2 = SHX2_2(SHX3_2)
    if "n" ~= SHX2_2 then
      goto SHX_LABEL_21
    end
  end
  SHX0_2 = "N3d"
  goto SHX_LABEL_23
  -- [FIX IF ERROR] Move ::SHX_LABEL_21:: outside nested blocks until all 'goto SHX_LABEL_21' can see it
  ::SHX_LABEL_21::
  SHX2_2 = nil
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
  ::SHX_LABEL_23::
  SHX2_2 = SHX13_1
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX2_2 = SHX13_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2 = SHX2_2[SHX1_2]
    SHX2_2 = nil ~= SHX2_2
  end
  return SHX2_2
end
function SHX34_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  if not SHX0_2 then
    SHX0_2 = 5
  end
  SHX1_2 = ""
  SHX2_2 = 1
  SHX3_2 = SHX0_2
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SHX1_2
    SHX7_2 = "9"
    SHX6_2 = SHX6_2 .. SHX7_2
    SHX1_2 = SHX6_2
  end
  SHX2_2 = math
  SHX2_2 = SHX2_2.random
  SHX3_2 = 0
  SHX4_2 = tonumber
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    SHX4_2 = 0
  end
  return SHX2_2(SHX3_2, SHX4_2)
end
function SHX35_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2
  SHX5_2 = SHX33_1
  SHX6_2 = "m"
  SHX7_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  if SHX5_2 then
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 100
    SHX5_2(SHX6_2)
    return
  end
  if SHX1_2 then
    SHX5_2 = SHX1_2.x
    if SHX5_2 then
      SHX5_2 = SHX1_2.y
      if SHX5_2 then
        SHX5_2 = SHX1_2.z
        if SHX5_2 then
          goto SHX_LABEL_24
        end
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_24:: outside nested blocks until all 'goto SHX_LABEL_24' can see it
  ::SHX_LABEL_24::
  SHX5_2 = string
  SHX5_2 = SHX5_2.gsub
  SHX6_2 = SHX0_2
  SHX7_2 = "{r}"
  SHX8_2 = SHX34_1
  SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2 = SHX8_2()
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2)
  SHX0_2 = SHX5_2
  SHX5_2 = {}
  SHX5_2.render_distance = SHX2_2
  SHX5_2.interaction_distance = SHX3_2
  SHX5_2.coords = SHX1_2
  if SHX4_2 then
    SHX6_2 = SHX4_2.slice
    if "ignore" == SHX6_2 then
      SHX6_2 = "ignore"
      if SHX6_2 then
        goto SHX_LABEL_48
      end
    end
  end
  SHX6_2 = SHX19_1
  SHX7_2 = SHX1_2
  SHX6_2 = SHX6_2(SHX7_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_48:: outside nested blocks until all 'goto SHX_LABEL_48' can see it
  ::SHX_LABEL_48::
  SHX5_2.slice = SHX6_2
  SHX5_2.candraw = true
  SHX5_2.near = false
  SHX6_2 = type
  SHX7_2 = SHX4_2
  SHX6_2 = SHX6_2(SHX7_2)
  if "table" == SHX6_2 then
    SHX6_2 = SHX4_2.rgb
    if nil ~= SHX6_2 then
      SHX5_2.type = 1
      SHX6_2 = SHX4_2.rgb
      SHX5_2.rgb = SHX6_2
    else
      SHX6_2 = SHX4_2.text
      if nil ~= SHX6_2 then
        SHX5_2.type = 0
        SHX6_2 = SHX4_2.text
        SHX5_2.text = SHX6_2
      else
        SHX5_2.type = 1
        SHX6_2 = SHX4_2.rgb
        if not SHX6_2 then
          SHX6_2 = {}
          SHX7_2 = SHX4_2[1]
          if not SHX7_2 then
            SHX7_2 = 100
          end
          SHX8_2 = SHX4_2[2]
          if not SHX8_2 then
            SHX8_2 = 100
          end
          SHX9_2 = SHX4_2[3]
          if not SHX9_2 then
            SHX9_2 = 100
          end
          SHX6_2[1] = SHX7_2
          SHX6_2[2] = SHX8_2
          SHX6_2[3] = SHX9_2
        end
        SHX5_2.rgb = SHX6_2
      end
    end
    SHX6_2 = SHX4_2.notify
    if nil ~= SHX6_2 then
      SHX6_2 = SHX14_1
      SHX7_2 = SHX4_2.notify
      SHX8_2 = {}
      SHX9_2 = "{A}"
      SHX10_2 = "{B}"
      SHX11_2 = "{C}"
      SHX12_2 = "{D}"
      SHX13_2 = "{E}"
      SHX14_2 = "{F}"
      SHX15_2 = "{G}"
      SHX16_2 = "{H}"
      SHX17_2 = "{L}"
      SHX18_2 = "{M}"
      SHX19_2 = "{N}"
      SHX20_2 = "{O}"
      SHX21_2 = "{P}"
      SHX22_2 = "{Q}"
      SHX23_2 = "{R}"
      SHX24_2 = "{S}"
      SHX25_2 = "{T}"
      SHX26_2 = "{U}"
      SHX27_2 = "{V}"
      SHX28_2 = "{W}"
      SHX29_2 = "{X}"
      SHX30_2 = "{Y}"
      SHX31_2 = "{Z}"
      SHX8_2[1] = SHX9_2
      SHX8_2[2] = SHX10_2
      SHX8_2[3] = SHX11_2
      SHX8_2[4] = SHX12_2
      SHX8_2[5] = SHX13_2
      SHX8_2[6] = SHX14_2
      SHX8_2[7] = SHX15_2
      SHX8_2[8] = SHX16_2
      SHX8_2[9] = SHX17_2
      SHX8_2[10] = SHX18_2
      SHX8_2[11] = SHX19_2
      SHX8_2[12] = SHX20_2
      SHX8_2[13] = SHX21_2
      SHX8_2[14] = SHX22_2
      SHX8_2[15] = SHX23_2
      SHX8_2[16] = SHX24_2
      SHX8_2[17] = SHX25_2
      SHX8_2[18] = SHX26_2
      SHX8_2[19] = SHX27_2
      SHX8_2[20] = SHX28_2
      SHX8_2[21] = SHX29_2
      SHX8_2[22] = SHX30_2
      SHX8_2[23] = SHX31_2
      SHX9_2 = {}
      SHX10_2 = "~INPUT_VEH_FLY_YAW_LEFT~"
      SHX11_2 = "~INPUT_SPECIAL_ABILITY_SECONDARY~"
      SHX12_2 = "~INPUT_LOOK_BEHIND~"
      SHX13_2 = "~INPUT_MOVE_LR~"
      SHX14_2 = "~INPUT_CONTEXT~"
      SHX15_2 = "~INPUT_ARREST~"
      SHX16_2 = "~INPUT_DETONATE~"
      SHX17_2 = "~INPUT_VEH_ROOF~"
      SHX18_2 = "~INPUT_CELLPHONE_CAMERA_FOCUS_LOCK~"
      SHX19_2 = "~INPUT_INTERACTION_MENU~"
      SHX20_2 = "~INPUT_REPLAY_ENDPOINT~"
      SHX21_2 = "~INPUT_FRONTEND_PAUSE~"
      SHX22_2 = "~INPUT_FRONTEND_LB~"
      SHX23_2 = "~INPUT_RELOAD~"
      SHX24_2 = "~INPUT_MOVE_DOWN_ONLY~"
      SHX25_2 = "~INPUT_MP_TEXT_CHAT_ALL~"
      SHX26_2 = "~INPUT_REPLAY_SCREENSHOT~"
      SHX27_2 = "~INPUT_NEXT_CAMERA~"
      SHX28_2 = "~INPUT_MOVE_UP_ONLY~"
      SHX29_2 = "~INPUT_VEH_HOTWIRE_LEFT~"
      SHX30_2 = "~INPUT_VEH_DUCK~"
      SHX31_2 = "~INPUT_MP_TEXT_CHAT_TEAM~"
      SHX32_2 = "~INPUT_HUD_SPECIAL~"
      SHX9_2[1] = SHX10_2
      SHX9_2[2] = SHX11_2
      SHX9_2[3] = SHX12_2
      SHX9_2[4] = SHX13_2
      SHX9_2[5] = SHX14_2
      SHX9_2[6] = SHX15_2
      SHX9_2[7] = SHX16_2
      SHX9_2[8] = SHX17_2
      SHX9_2[9] = SHX18_2
      SHX9_2[10] = SHX19_2
      SHX9_2[11] = SHX20_2
      SHX9_2[12] = SHX21_2
      SHX9_2[13] = SHX22_2
      SHX9_2[14] = SHX23_2
      SHX9_2[15] = SHX24_2
      SHX9_2[16] = SHX25_2
      SHX9_2[17] = SHX26_2
      SHX9_2[18] = SHX27_2
      SHX9_2[19] = SHX28_2
      SHX9_2[20] = SHX29_2
      SHX9_2[21] = SHX30_2
      SHX9_2[22] = SHX31_2
      SHX9_2[23] = SHX32_2
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
      SHX5_2.notify = SHX6_2
    end
  else
    SHX6_2 = type
    SHX7_2 = SHX4_2
    SHX6_2 = SHX6_2(SHX7_2)
    if "string" == SHX6_2 then
      SHX5_2.type = 0
      SHX5_2.text = SHX4_2
    else
      SHX5_2.type = 1
      SHX6_2 = {}
      SHX7_2 = 100
      SHX8_2 = 100
      SHX9_2 = 100
      SHX6_2[1] = SHX7_2
      SHX6_2[2] = SHX8_2
      SHX6_2[3] = SHX9_2
      SHX5_2.rgb = SHX6_2
    end
  end
  SHX6_2 = SHX13_1.Marker
  SHX6_2[SHX0_2] = SHX5_2
  SHX6_2 = SHX5_2.slice
  if "ignore" ~= SHX6_2 then
    SHX6_2 = SHX22_1
    SHX7_2 = SHX5_2.slice
    SHX8_2 = true
    SHX6_2(SHX7_2, SHX8_2)
  end
end
function SHX36_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX13_1.Marker
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX2_2 = SHX13_1.Marker
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2.interaction_distance = SHX1_2
  end
end
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX33_1
  SHX2_2 = "m"
  SHX3_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if not SHX1_2 then
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 100
    SHX1_2(SHX2_2)
    return
  end
  SHX1_2 = SHX13_1.Marker
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = SHX1_2.slice
    if SHX2_2 then
      SHX2_2 = SHX1_2.slice
      if "ignore" ~= SHX2_2 then
        SHX2_2 = SHX22_1
        SHX3_2 = SHX1_2.slice
        SHX4_2 = false
        SHX2_2(SHX3_2, SHX4_2)
      end
    end
  end
  SHX2_2 = SHX13_1.Marker
  SHX2_2[SHX0_2] = nil
  SHX2_2 = SHX30_1
  SHX2_2()
end
function SHX38_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetModelDimensions
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
  SHX4_2 = SHX3_2 - SHX2_2
  return SHX4_2
end
function SHX39_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX5_2 = AddBlipForCoord
  SHX6_2 = SHX1_2.x
  SHX7_2 = SHX1_2.y
  SHX8_2 = SHX1_2.z
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX6_2 = SetBlipSprite
  SHX7_2 = SHX5_2
  SHX8_2 = SHX2_2
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetBlipScale
  SHX7_2 = SHX5_2
  SHX8_2 = SHX4_2 or SHX8_2
  if not SHX4_2 then
    SHX8_2 = 1.0
  end
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetBlipColour
  SHX7_2 = SHX5_2
  SHX8_2 = SHX3_2
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetBlipAsShortRange
  SHX7_2 = SHX5_2
  SHX8_2 = true
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = BeginTextCommandSetBlipName
  SHX7_2 = "STRING"
  SHX6_2(SHX7_2)
  SHX6_2 = AddTextComponentSubstringPlayerName
  SHX7_2 = SHX0_2 or SHX7_2
  if not SHX0_2 then
    SHX7_2 = ""
  end
  SHX6_2(SHX7_2)
  SHX6_2 = EndTextCommandSetBlipName
  SHX7_2 = SHX5_2
  SHX6_2(SHX7_2)
  return SHX5_2
end
function SHX40_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = "Utility:On:"
  if SHX2_2 then
    SHX4_2 = "!"
    if SHX4_2 then
      goto SHX_LABEL_8
    end
  end
  SHX4_2 = ""
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX5_2 = SHX0_2
  SHX3_2 = SHX3_2 .. SHX4_2 .. SHX5_2
  SHX4_2 = RegisterNetEvent
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = AddEventHandler
  SHX5_2 = SHX3_2
  SHX6_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = table
  SHX5_2 = SHX5_2.insert
  SHX6_2 = SHX13_1.Events
  SHX7_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2)
  return SHX4_2
end
function SHX41_1(SHX0_2, SHX1_2, ...)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX12_1
  SHX3_2 = "Utility:On:"
  if SHX1_2 then
    SHX4_2 = "!"
    if SHX4_2 then
      goto SHX_LABEL_10
    end
  end
  SHX4_2 = ""
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX5_2 = SHX0_2
  SHX3_2 = SHX3_2 .. SHX4_2 .. SHX5_2
  SHX4_2, SHX5_2 = ...
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
function SHX42_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = pairs
  SHX1_2 = SHX13_1.Marker
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = GetEntityCoords
    SHX7_2 = PlayerPedId
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2()
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX7_2 = SHX5_2.coords
    SHX6_2 = SHX6_2 - SHX7_2
    SHX6_2 = #SHX6_2
    SHX7_2 = SHX5_2.near
    if SHX7_2 then
      SHX7_2 = SHX5_2.interaction_distance
      if SHX6_2 < SHX7_2 then
        SHX7_2 = SHX41_1
        SHX8_2 = "marker"
        SHX9_2 = false
        SHX10_2 = SHX4_2
        SHX7_2(SHX8_2, SHX9_2, SHX10_2)
        SHX5_2.near = false
      end
    end
  end
end
function SHX43_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2
  if 0 == SHX0_2 then
    SHX2_2 = SHX1_2.text
    if SHX2_2 then
      SHX2_2 = SHX1_2.text
      if "" ~= SHX2_2 then
        SHX2_2 = SHX25_1
        SHX3_2 = SHX1_2.coords
        SHX4_2 = SHX1_2.text
        SHX5_2 = SHX1_2._scale
        if not SHX5_2 then
          SHX5_2 = 0.35
        end
        SHX6_2 = SHX1_2.font
        if not SHX6_2 then
          SHX6_2 = 4
        end
        SHX7_2 = SHX1_2.rect
        if not SHX7_2 then
          SHX7_2 = false
        end
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      end
    end
  elseif 1 == SHX0_2 then
    SHX2_2 = SHX1_2._direction
    if not SHX2_2 then
      SHX2_2 = {}
      SHX2_2.x = 0.0
      SHX2_2.y = 0.0
      SHX2_2.z = 0.0
    end
    SHX3_2 = SHX1_2._rot
    if not SHX3_2 then
      SHX3_2 = {}
      SHX3_2.x = 0.0
      SHX3_2.y = 0.0
      SHX3_2.z = 0.0
    end
    SHX4_2 = SHX1_2._scale
    if not SHX4_2 then
      SHX4_2 = {}
      SHX4_2.x = 1.5
      SHX4_2.y = 1.5
      SHX4_2.z = 0.5
    end
    SHX5_2 = SHX1_2.rgb
    if not SHX5_2 then
      SHX5_2 = {}
      SHX6_2 = 100
      SHX7_2 = 100
      SHX8_2 = 100
      SHX5_2[1] = SHX6_2
      SHX5_2[2] = SHX7_2
      SHX5_2[3] = SHX8_2
    end
    SHX6_2 = DrawMarker
    SHX7_2 = SHX1_2._type
    if not SHX7_2 then
      SHX7_2 = 1
    end
    SHX8_2 = SHX1_2.coords
    SHX8_2 = SHX8_2.x
    SHX9_2 = SHX1_2.coords
    SHX9_2 = SHX9_2.y
    SHX10_2 = SHX1_2.coords
    SHX10_2 = SHX10_2.z
    SHX11_2 = SHX2_2.x
    if not SHX11_2 then
      SHX11_2 = 0.0
    end
    SHX12_2 = SHX2_2.y
    if not SHX12_2 then
      SHX12_2 = 0.0
    end
    SHX13_2 = SHX2_2.z
    if not SHX13_2 then
      SHX13_2 = 0.0
    end
    SHX14_2 = SHX3_2.x
    if not SHX14_2 then
      SHX14_2 = 0.0
    end
    SHX15_2 = SHX3_2.y
    if not SHX15_2 then
      SHX15_2 = 0.0
    end
    SHX16_2 = SHX3_2.z
    if not SHX16_2 then
      SHX16_2 = 0.0
    end
    SHX17_2 = SHX4_2.x
    if not SHX17_2 then
      SHX17_2 = 1.5
    end
    SHX18_2 = SHX4_2.y
    if not SHX18_2 then
      SHX18_2 = 1.5
    end
    SHX19_2 = SHX4_2.z
    if not SHX19_2 then
      SHX19_2 = 0.5
    end
    SHX20_2 = SHX5_2[1]
    SHX21_2 = SHX5_2[2]
    SHX22_2 = SHX5_2[3]
    SHX23_2 = SHX1_2.alpha
    if not SHX23_2 then
      SHX23_2 = 100
    end
    SHX24_2 = SHX1_2.anim
    if not SHX24_2 then
      SHX24_2 = false
    end
    SHX25_2 = false
    SHX26_2 = 2
    SHX27_2 = false
    SHX28_2 = nil
    SHX29_2 = nil
    SHX30_2 = SHX1_2.draw_entity
    if not SHX30_2 then
      SHX30_2 = false
    end
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
  end
end
function SHX44_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = false
  SHX2_2 = pairs
  SHX3_2 = SHX13_1.Marker
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = tonumber
    SHX9_2 = SHX7_2.slice
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 ~= SHX0_2 then
      SHX8_2 = SHX7_2.slice
      if "ignore" ~= SHX8_2 then
        goto SHX_LABEL_59
      end
    end
    SHX8_2 = SHX7_2.candraw
    if SHX8_2 then
      SHX8_2 = PlayerPedId
      SHX8_2 = SHX8_2()
      SHX9_2 = GetEntityCoords
      SHX10_2 = SHX8_2
      SHX9_2 = SHX9_2(SHX10_2)
      SHX10_2 = SHX7_2.coords
      SHX9_2 = SHX9_2 - SHX10_2
      SHX9_2 = #SHX9_2
      SHX10_2 = SHX7_2.render_distance
      if not SHX10_2 then
        SHX10_2 = 0
      end
      if SHX9_2 < SHX10_2 then
        SHX1_2 = true
        SHX10_2 = SHX43_1
        SHX11_2 = SHX7_2.type
        SHX12_2 = SHX7_2
        SHX10_2(SHX11_2, SHX12_2)
      end
      SHX10_2 = SHX7_2.interaction_distance
      if SHX9_2 < SHX10_2 then
        SHX10_2 = SHX7_2.notify
        if nil ~= SHX10_2 then
          SHX10_2 = SHX26_1
          SHX11_2 = SHX7_2.notify
          SHX12_2 = SHX7_2.near
          SHX12_2 = not SHX12_2
          SHX10_2(SHX11_2, SHX12_2)
        end
        SHX10_2 = SHX7_2.near
        if not SHX10_2 then
          SHX7_2.near = true
        end
      else
        SHX10_2 = SHX7_2.near
        if SHX10_2 then
          SHX7_2.near = false
          SHX10_2 = SHX30_1
          SHX10_2()
        end
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_59:: outside nested blocks until all 'goto SHX_LABEL_59' can see it
    ::SHX_LABEL_59::
  end
  return SHX1_2
end
SHX45_1 = RequestScaleformMovie
function SHX46_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = pcall
  SHX2_2 = SHX45_1
  SHX3_2 = SHX0_2
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2, SHX3_2)
  while not SHX1_2 do
    SHX3_2 = pcall
    SHX4_2 = SHX45_1
    SHX5_2 = SHX0_2
    SHX3_2, SHX4_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX2_2 = SHX4_2
    SHX1_2 = SHX3_2
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 1
    SHX3_2(SHX4_2)
  end
  return SHX2_2
end
function SHX47_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = tostring
  SHX3_2 = math
  SHX3_2 = SHX3_2.random
  SHX4_2 = 0
  SHX5_2 = 9999
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = SHX13_1.N3d
  SHX4_2 = {}
  SHX4_2.txd = false
  SHX4_2.show = false
  SHX5_2 = {}
  SHX4_2.rotation = SHX5_2
  SHX3_2[SHX2_2] = SHX4_2
  SHX3_2 = SHX46_1
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = GetGameTimer
  SHX4_2 = SHX4_2()
  while true do
    SHX5_2 = HasScaleformMovieLoaded
    SHX6_2 = SHX3_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      break
    end
    SHX5_2 = GetGameTimer
    SHX5_2 = SHX5_2()
    SHX5_2 = SHX5_2 - SHX4_2
    SHX6_2 = 4000
    if not (SHX5_2 < SHX6_2) then
      break
    end
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  SHX5_2 = GetGameTimer
  SHX5_2 = SHX5_2()
  SHX5_2 = SHX5_2 - SHX4_2
  SHX6_2 = 4000
  if SHX5_2 <= SHX6_2 then
    SHX5_2 = SHX13_1.N3d
    SHX5_2 = SHX5_2[SHX2_2]
    SHX5_2.scaleform = SHX3_2
  end
  if nil ~= SHX1_2 then
    SHX5_2 = CreateRuntimeTxd
    SHX6_2 = "txd"
    SHX7_2 = SHX2_2
    SHX6_2 = SHX6_2 .. SHX7_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = SHX13_1.N3d
    SHX6_2 = SHX6_2[SHX2_2]
    SHX7_2 = CreateDui
    SHX8_2 = "nui://"
    SHX9_2 = GetCurrentResourceName
    SHX9_2 = SHX9_2()
    SHX10_2 = "/"
    SHX11_2 = SHX1_2
    SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2 .. SHX11_2
    SHX9_2 = 1920
    SHX10_2 = 1080
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX6_2.dui = SHX7_2
    while true do
      SHX6_2 = IsDuiAvailable
      SHX7_2 = SHX13_1.N3d
      SHX7_2 = SHX7_2[SHX2_2]
      SHX7_2 = SHX7_2.dui
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        break
      end
      SHX6_2 = Citizen
      SHX6_2 = SHX6_2.Wait
      SHX7_2 = 1
      SHX6_2(SHX7_2)
    end
    SHX6_2 = GetDuiHandle
    SHX7_2 = SHX13_1.N3d
    SHX7_2 = SHX7_2[SHX2_2]
    SHX7_2 = SHX7_2.dui
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = CreateRuntimeTextureFromDuiHandle
    SHX8_2 = SHX5_2
    SHX9_2 = "txn"
    SHX10_2 = SHX2_2
    SHX9_2 = SHX9_2 .. SHX10_2
    SHX10_2 = SHX6_2
    SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX7_2 = SHX13_1.N3d
    SHX7_2 = SHX7_2[SHX2_2]
    SHX7_2 = SHX7_2.scaleform
    if nil ~= SHX7_2 then
      SHX7_2 = BeginScaleformMovieMethod
      SHX8_2 = SHX13_1.N3d
      SHX8_2 = SHX8_2[SHX2_2]
      SHX8_2 = SHX8_2.scaleform
      SHX9_2 = "SET_TEXTURE"
      SHX7_2(SHX8_2, SHX9_2)
      SHX7_2 = _ENV
      SHX8_2 = "ScaleformMovieMethodAddParamTextureNameString"
      SHX7_2 = SHX7_2[SHX8_2]
      SHX8_2 = "txd"
      SHX9_2 = SHX2_2
      SHX8_2 = SHX8_2 .. SHX9_2
      SHX7_2(SHX8_2)
      SHX7_2 = _ENV
      SHX8_2 = "ScaleformMovieMethodAddParamTextureNameString"
      SHX7_2 = SHX7_2[SHX8_2]
      SHX8_2 = "txn"
      SHX9_2 = SHX2_2
      SHX8_2 = SHX8_2 .. SHX9_2
      SHX7_2(SHX8_2)
      SHX7_2 = ScaleformMovieMethodAddParamInt
      SHX8_2 = 0
      SHX7_2(SHX8_2)
      SHX7_2 = ScaleformMovieMethodAddParamInt
      SHX8_2 = 0
      SHX7_2(SHX8_2)
      SHX7_2 = ScaleformMovieMethodAddParamInt
      SHX8_2 = 1920
      SHX7_2(SHX8_2)
      SHX7_2 = ScaleformMovieMethodAddParamInt
      SHX8_2 = 1080
      SHX7_2(SHX8_2)
      SHX7_2 = EndScaleformMovieMethod
      SHX7_2()
    end
  end
  SHX5_2 = {}
  SHX5_2.__index = SHX5_2
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
    SHX4_3 = CreateRuntimeTxd
    SHX5_3 = "txd"
    SHX6_3 = SHX2_2
    SHX5_3 = SHX5_3 .. SHX6_3
    SHX4_3 = SHX4_3(SHX5_3)
    SHX5_3 = SHX13_1.N3d
    SHX6_3 = SHX2_2
    SHX5_3 = SHX5_3[SHX6_3]
    SHX6_3 = CreateDui
    SHX7_3 = "nui://"
    SHX8_3 = GetCurrentResourceName
    SHX8_3 = SHX8_3()
    SHX9_3 = "/"
    SHX10_3 = SHX1_3
    SHX7_3 = SHX7_3 .. SHX8_3 .. SHX9_3 .. SHX10_3
    SHX8_3 = SHX2_3 or SHX8_3
    if not SHX2_3 then
      SHX8_3 = 1920
    end
    SHX9_3 = SHX3_3 or SHX9_3
    if not SHX3_3 then
      SHX9_3 = 1080
    end
    SHX6_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX5_3.dui = SHX6_3
    while true do
      SHX5_3 = IsDuiAvailable
      SHX6_3 = SHX13_1.N3d
      SHX7_3 = SHX2_2
      SHX6_3 = SHX6_3[SHX7_3]
      SHX6_3 = SHX6_3.dui
      SHX5_3 = SHX5_3(SHX6_3)
      if SHX5_3 then
        break
      end
      SHX5_3 = Citizen
      SHX5_3 = SHX5_3.Wait
      SHX6_3 = 1
      SHX5_3(SHX6_3)
    end
    SHX5_3 = GetDuiHandle
    SHX6_3 = SHX13_1.N3d
    SHX7_3 = SHX2_2
    SHX6_3 = SHX6_3[SHX7_3]
    SHX6_3 = SHX6_3.dui
    SHX5_3 = SHX5_3(SHX6_3)
    SHX6_3 = CreateRuntimeTextureFromDuiHandle
    SHX7_3 = SHX4_3
    SHX8_3 = "txn"
    SHX9_3 = SHX2_2
    SHX8_3 = SHX8_3 .. SHX9_3
    SHX9_3 = SHX5_3
    SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX6_3 = SHX13_1.N3d
    SHX7_3 = SHX2_2
    SHX6_3 = SHX6_3[SHX7_3]
    SHX6_3 = SHX6_3.scaleform
    if nil ~= SHX6_3 then
      SHX6_3 = BeginScaleformMovieMethod
      SHX7_3 = SHX13_1.N3d
      SHX8_3 = SHX2_2
      SHX7_3 = SHX7_3[SHX8_3]
      SHX7_3 = SHX7_3.scaleform
      SHX8_3 = "SET_TEXTURE"
      SHX6_3(SHX7_3, SHX8_3)
      SHX6_3 = _ENV
      SHX7_3 = "ScaleformMovieMethodAddParamTextureNameString"
      SHX6_3 = SHX6_3[SHX7_3]
      SHX7_3 = "txd"
      SHX8_3 = SHX2_2
      SHX7_3 = SHX7_3 .. SHX8_3
      SHX6_3(SHX7_3)
      SHX6_3 = _ENV
      SHX7_3 = "ScaleformMovieMethodAddParamTextureNameString"
      SHX6_3 = SHX6_3[SHX7_3]
      SHX7_3 = "txn"
      SHX8_3 = SHX2_2
      SHX7_3 = SHX7_3 .. SHX8_3
      SHX6_3(SHX7_3)
      SHX6_3 = ScaleformMovieMethodAddParamInt
      SHX7_3 = 0
      SHX6_3(SHX7_3)
      SHX6_3 = ScaleformMovieMethodAddParamInt
      SHX7_3 = 0
      SHX6_3(SHX7_3)
      SHX6_3 = ScaleformMovieMethodAddParamInt
      SHX7_3 = SHX2_3 or SHX7_3
      if not SHX2_3 then
        SHX7_3 = 1920
      end
      SHX6_3(SHX7_3)
      SHX6_3 = ScaleformMovieMethodAddParamInt
      SHX7_3 = SHX3_3 or SHX7_3
      if not SHX3_3 then
        SHX7_3 = 1080
      end
      SHX6_3(SHX7_3)
      SHX6_3 = EndScaleformMovieMethod
      SHX6_3()
    end
  end
  SHX5_2.init = SHX6_2
  function SHX6_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX2_3 = SHX13_1.N3d
    SHX3_3 = SHX2_2
    SHX2_3 = SHX2_3[SHX3_3]
    if SHX2_3 then
      SHX2_3 = SHX13_1.N3d
      SHX3_3 = SHX2_2
      SHX2_3 = SHX2_3[SHX3_3]
      SHX2_3 = SHX2_3.dui
      if SHX2_3 then
        SHX2_3 = SendDuiMessage
        SHX3_3 = SHX13_1.N3d
        SHX4_3 = SHX2_2
        SHX3_3 = SHX3_3[SHX4_3]
        SHX3_3 = SHX3_3.dui
        SHX4_3 = json
        SHX4_3 = SHX4_3.encode
        SHX5_3 = SHX1_3
        SHX4_3, SHX5_3 = SHX4_3(SHX5_3)
        SHX2_3(SHX3_3, SHX4_3, SHX5_3)
      end
    end
  end
  SHX5_2.msg = SHX6_2
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    if SHX3_3 then
      SHX4_3 = Citizen
      SHX4_3 = SHX4_3.Wait
      SHX5_3 = SHX3_3
      SHX4_3(SHX5_3)
    end
    SHX4_3 = AddReplaceTexture
    SHX5_3 = SHX1_3
    SHX6_3 = SHX2_3
    SHX7_3 = "txd"
    SHX8_3 = SHX2_2
    SHX7_3 = SHX7_3 .. SHX8_3
    SHX8_3 = "txn"
    SHX9_3 = SHX2_2
    SHX8_3 = SHX8_3 .. SHX9_3
    SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3)
  end
  SHX5_2.replaceTexture = SHX6_2
  function SHX6_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3
    SHX1_3 = SHX13_1.N3d
    SHX2_3 = SHX2_2
    SHX1_3 = SHX1_3[SHX2_3]
    if SHX1_3 then
      SHX1_3 = SHX13_1.N3d
      SHX2_3 = SHX2_2
      SHX1_3 = SHX1_3[SHX2_3]
      SHX1_3 = SHX1_3.dui
      if SHX1_3 then
        SHX1_3 = DestroyDui
        SHX2_3 = SHX13_1.N3d
        SHX3_3 = SHX2_2
        SHX2_3 = SHX2_3[SHX3_3]
        SHX2_3 = SHX2_3.dui
        SHX1_3(SHX2_3)
        SHX1_3 = SHX13_1.N3d
        SHX2_3 = SHX2_2
        SHX1_3 = SHX1_3[SHX2_3]
        SHX1_3 = SHX1_3.scaleform
        if SHX1_3 then
          SHX1_3 = SetScaleformMovieAsNoLongerNeeded
          SHX2_3 = SHX13_1.N3d
          SHX3_3 = SHX2_2
          SHX2_3 = SHX2_3[SHX3_3]
          SHX2_3 = SHX2_3.scaleform
          SHX1_3(SHX2_3)
        end
        SHX1_3 = SHX13_1.N3d
        SHX2_3 = SHX2_2
        SHX1_3[SHX2_3] = nil
      end
    end
  end
  SHX5_2.destroy = SHX6_2
  SHX6_2 = setmetatable
  SHX7_2 = {}
  SHX8_2 = SHX5_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = SHX2_2
  return SHX6_2, SHX7_2
end
SHX48_1 = 0
SHX49_1 = Citizen
SHX49_1 = SHX49_1.CreateThread
function SHX50_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  while true do
    SHX0_2 = SHX20_1
    SHX0_2 = SHX0_2()
    SHX48_1 = SHX0_2
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 500
    SHX0_2(SHX1_2)
  end
end
SHX49_1(SHX50_1)
function SHX49_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = pairs
  SHX1_2 = SHX13_1.Marker
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.slice
    if "ignore" == SHX6_2 then
      SHX6_2 = true
      return SHX6_2
    end
  end
  SHX0_2 = false
  return SHX0_2
end
SHX50_1 = Citizen
SHX50_1 = SHX50_1.CreateThread
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  while true do
    SHX0_2 = false
    SHX1_2 = SHX21_1
    SHX2_2 = SHX48_1
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = SHX49_1
      SHX1_2 = SHX1_2()
      if not SHX1_2 then
        goto SHX_LABEL_15
      end
    end
    SHX1_2 = SHX44_1
    SHX2_2 = SHX48_1
    SHX1_2 = SHX1_2(SHX2_2)
    SHX0_2 = SHX1_2
    -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
    ::SHX_LABEL_15::
    if not SHX0_2 then
      SHX1_2 = Citizen
      SHX1_2 = SHX1_2.Wait
      SHX2_2 = 500
      SHX1_2(SHX2_2)
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
end
SHX50_1(SHX51_1)
SHX50_1 = Citizen
SHX50_1 = SHX50_1.CreateThread
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  while true do
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 0
    SHX2_2 = 38
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = SHX42_1
      SHX0_2()
    end
  end
end
SHX50_1(SHX51_1)
SHX50_1 = {}
SHX50_1.Debug = false
SHX51_1 = SHX0_1.renderDistance
if not SHX51_1 then
  SHX51_1 = 40.0
end
SHX50_1.RenderDistance = SHX51_1
SHX51_1 = SHX0_1.defaultInteractionDistance
if not SHX51_1 then
  SHX51_1 = 2.0
end
SHX50_1.DefaultInteractionDistance = SHX51_1
SHX51_1 = SHX0_1.blips
SHX51_1 = false ~= SHX51_1
SHX50_1.Blips = SHX51_1
SHX51_1 = SHX0_1.sounds
SHX51_1 = false ~= SHX51_1
SHX50_1.Sounds = SHX51_1
SHX51_1 = SHX0_1.overrideExhibition
if not SHX51_1 then
  SHX51_1 = {}
end
SHX50_1.OverrideExhibition = SHX51_1
SHX51_1 = SHX0_1.items
if not SHX51_1 then
  SHX51_1 = {}
end
SHX50_1.Items = SHX51_1
SHX51_1 = {}
SHX50_1.Vendings = SHX51_1
SHX51_1 = SHX0_1.translations
if not SHX51_1 then
  SHX51_1 = {}
end
SHX50_1.Translations = SHX51_1
SHX51_1 = SHX0_1.audiosVolumes
if not SHX51_1 then
  SHX51_1 = {}
end
SHX50_1.AudiosVolumes = SHX51_1
SHX51_1 = SHX0_1.placeVendings
if not SHX51_1 then
  SHX51_1 = {}
end
SHX50_1.PlaceVendings = SHX51_1
SHX51_1 = {}
function SHX52_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = pairs
  SHX1_2 = SHX50_1.Vendings
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.parent
    if SHX6_2 then
      SHX6_2 = SHX50_1.Vendings
      SHX7_2 = SHX5_2.parent
      SHX6_2 = SHX6_2[SHX7_2]
      if SHX6_2 then
        SHX7_2 = pairs
        SHX8_2 = SHX6_2
        SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
        for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
          SHX13_2 = SHX5_2[SHX11_2]
          if nil == SHX13_2 then
            SHX5_2[SHX11_2] = SHX12_2
          end
        end
      end
    end
  end
end
function SHX53_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = pairs
  SHX1_2 = SHX50_1.Vendings
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2.name = SHX4_2
  end
end
function SHX54_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = pairs
  SHX4_2 = SHX50_1.OverrideExhibition
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.name
    SHX10_2 = SHX0_2.name
    if SHX9_2 == SHX10_2 then
      SHX9_2 = SHX8_2.coords
      SHX9_2 = SHX9_2 - SHX2_2
      SHX9_2 = #SHX9_2
      SHX10_2 = SHX8_2.radius
      if not SHX10_2 then
        SHX10_2 = 2.0
      end
      if SHX9_2 < SHX10_2 then
        SHX9_2 = SHX8_2.exhibition
        return SHX9_2
      end
    end
  end
  SHX3_2 = SHX0_2.exhibition
  return SHX3_2
end
function SHX55_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  if not SHX1_2 then
    SHX1_2 = "vending"
  end
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = GetHashKey
  SHX4_2 = SHX2_2.x
  SHX5_2 = ":"
  SHX6_2 = SHX2_2.y
  SHX7_2 = ":"
  SHX8_2 = SHX2_2.z
  SHX4_2 = SHX4_2 .. SHX5_2 .. SHX6_2 .. SHX7_2 .. SHX8_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX1_2
  SHX5_2 = ":"
  SHX6_2 = SHX3_2
  SHX4_2 = SHX4_2 .. SHX5_2 .. SHX6_2
  return SHX4_2
end
SHX56_1 = {}
function SHX57_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = next
  SHX1_2 = SHX56_1
  SHX0_2 = SHX0_2(SHX1_2)
  if nil == SHX0_2 then
    SHX0_2 = pairs
    SHX1_2 = SHX50_1.Vendings
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = pairs
      SHX7_2 = SHX5_2.models
      SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
      for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
        SHX12_2 = tostring
        SHX13_2 = SHX11_2
        SHX12_2 = SHX12_2(SHX13_2)
        SHX13_2 = SHX56_1
        SHX13_2[SHX12_2] = SHX4_2
      end
    end
  end
end
function SHX58_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = SHX57_1
  SHX1_2()
  SHX1_2 = GetGamePool
  SHX2_2 = "CObject"
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = pairs
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = GetEntityModel
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX9_2 = tostring
    SHX10_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2)
    SHX10_2 = SHX56_1
    SHX9_2 = SHX10_2[SHX9_2]
    if SHX9_2 then
      SHX10_2 = SHX50_1.Vendings
      SHX10_2 = SHX10_2[SHX9_2]
      SHX11_2 = SHX0_2
      SHX12_2 = SHX9_2
      SHX13_2 = SHX10_2
      SHX14_2 = SHX7_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    end
  end
end
function SHX59_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX3_2 = GetEntityCoords
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = type
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  if "string" == SHX4_2 then
    SHX4_2 = GetHashKey
    SHX5_2 = SHX1_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      goto SHX_LABEL_15
    end
  end
  SHX4_2 = SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
  ::SHX_LABEL_15::
  SHX5_2 = HasModelLoaded
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  if not SHX5_2 then
    SHX5_2 = RequestModel
    SHX6_2 = SHX4_2
    SHX5_2(SHX6_2)
    while true do
      SHX5_2 = HasModelLoaded
      SHX6_2 = SHX4_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 then
        break
      end
      SHX5_2 = Citizen
      SHX5_2 = SHX5_2.Wait
      SHX6_2 = 1
      SHX5_2(SHX6_2)
    end
  end
  SHX5_2 = CreateObject
  SHX6_2 = SHX4_2
  SHX7_2 = SHX3_2.x
  SHX8_2 = SHX3_2.y
  SHX9_2 = SHX3_2.z
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = true
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX6_2 = SetModelAsNoLongerNeeded
  SHX7_2 = SHX4_2
  SHX6_2(SHX7_2)
  if SHX2_2 then
    SHX6_2 = GetOffsetFromEntityInWorldCoords
    SHX7_2 = SHX0_2
    SHX8_2 = SHX2_2.x
    SHX9_2 = SHX2_2.y
    SHX10_2 = SHX2_2.z
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    if SHX6_2 then
      goto SHX_LABEL_56
    end
  end
  SHX6_2 = SHX3_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_56:: outside nested blocks until all 'goto SHX_LABEL_56' can see it
  ::SHX_LABEL_56::
  SHX7_2 = SetEntityCoords
  SHX8_2 = SHX5_2
  SHX9_2 = SHX6_2.x
  SHX10_2 = SHX6_2.y
  SHX11_2 = SHX6_2.z
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX7_2 = GetEntityRotation
  SHX8_2 = SHX0_2
  SHX9_2 = 1
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX8_2 = SetEntityRotation
  SHX9_2 = SHX5_2
  SHX10_2 = SHX7_2.x
  SHX11_2 = SHX7_2.y
  SHX12_2 = SHX7_2.z
  SHX13_2 = 1
  SHX14_2 = false
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  return SHX5_2
end
function SHX60_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = GetEntityBoneIndexByName
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = GetWorldPositionOfEntityBone
  SHX4_2 = SHX0_2
  SHX5_2 = SHX2_2
  return SHX3_2(SHX4_2, SHX5_2)
end
function SHX61_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2
  SHX7_2 = SHX50_1.Vendings
  SHX7_2 = SHX7_2[SHX4_2]
  if SHX7_2 then
    SHX8_2 = SHX7_2.stands
    if SHX8_2 then
      SHX8_2 = SHX7_2.stands
      SHX8_2 = SHX8_2[SHX1_2]
      if SHX8_2 then
        SHX8_2 = SHX7_2.slots
        if SHX8_2 then
          SHX8_2 = SHX7_2.slots
          SHX8_2 = SHX8_2[SHX2_2]
          if SHX8_2 then
            goto SHX_LABEL_21
          end
        end
      end
    end
  end
  SHX8_2 = nil
  return SHX8_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_21:: outside nested blocks until all 'goto SHX_LABEL_21' can see it
  ::SHX_LABEL_21::
  SHX8_2 = SHX7_2.stands
  SHX8_2 = SHX8_2[SHX1_2]
  SHX9_2 = SHX60_1
  SHX10_2 = SHX3_2
  SHX11_2 = SHX8_2
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX10_2 = GetOffsetFromEntityGivenWorldCoords
  SHX11_2 = SHX3_2
  SHX12_2 = SHX9_2.x
  SHX13_2 = SHX9_2.y
  SHX14_2 = SHX9_2.z
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = SHX7_2.slots
  SHX11_2 = SHX11_2[SHX2_2]
  SHX12_2 = SHX11_2.x
  if not SHX12_2 then
    SHX12_2 = SHX11_2[1]
    if not SHX12_2 then
      SHX12_2 = 0
    end
  end
  SHX13_2 = SHX11_2.y
  if not SHX13_2 then
    SHX13_2 = SHX11_2[2]
    if not SHX13_2 then
      SHX13_2 = 0
    end
  end
  SHX14_2 = SHX11_2.z
  if not SHX14_2 then
    SHX14_2 = SHX11_2[3]
    if not SHX14_2 then
      SHX14_2 = 0
    end
  end
  SHX15_2 = SHX11_2.w
  if not SHX15_2 then
    SHX15_2 = SHX11_2[4]
    if not SHX15_2 then
      SHX15_2 = 0
    end
  end
  SHX16_2 = vector3
  SHX17_2 = SHX10_2.x
  SHX17_2 = SHX17_2 + SHX12_2
  SHX18_2 = SHX10_2.y
  SHX18_2 = SHX18_2 + SHX13_2
  SHX19_2 = SHX10_2.z
  SHX19_2 = SHX19_2 + SHX14_2
  SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2)
  SHX17_2 = GetOffsetFromEntityInWorldCoords
  SHX18_2 = SHX3_2
  SHX19_2 = SHX16_2.x
  SHX20_2 = SHX16_2.y
  SHX21_2 = SHX16_2.z
  SHX17_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX18_2 = vector3
  SHX19_2 = SHX17_2.x
  SHX20_2 = SHX17_2.y
  SHX21_2 = SHX17_2.z
  SHX22_2 = SHX5_2 or SHX22_2
  if not SHX5_2 then
    SHX22_2 = 0
  end
  SHX21_2 = SHX21_2 + SHX22_2
  SHX18_2 = SHX18_2(SHX19_2, SHX20_2, SHX21_2)
  SHX17_2 = SHX18_2
  SHX18_2 = SHX59_1
  SHX19_2 = SHX3_2
  SHX20_2 = SHX0_2
  SHX18_2 = SHX18_2(SHX19_2, SHX20_2)
  SHX19_2 = SetEntityCoords
  SHX20_2 = SHX18_2
  SHX21_2 = SHX17_2.x
  SHX22_2 = SHX17_2.y
  SHX23_2 = SHX17_2.z
  SHX24_2 = false
  SHX25_2 = false
  SHX26_2 = false
  SHX27_2 = false
  SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
  SHX19_2 = SHX6_2 or SHX19_2
  if not SHX6_2 then
    SHX19_2 = vec3
    SHX20_2 = 0
    SHX21_2 = 0
    SHX22_2 = 0
    SHX19_2 = SHX19_2(SHX20_2, SHX21_2, SHX22_2)
  end
  SHX20_2 = GetEntityRotation
  SHX21_2 = SHX18_2
  SHX22_2 = 1
  SHX20_2 = SHX20_2(SHX21_2, SHX22_2)
  SHX21_2 = vec3
  SHX22_2 = SHX15_2
  SHX23_2 = 0
  SHX24_2 = 0
  SHX21_2 = SHX21_2(SHX22_2, SHX23_2, SHX24_2)
  SHX20_2 = SHX20_2 + SHX21_2
  SHX20_2 = SHX20_2 + SHX19_2
  SHX21_2 = SetEntityRotation
  SHX22_2 = SHX18_2
  SHX23_2 = SHX20_2.x
  SHX24_2 = SHX20_2.y
  SHX25_2 = SHX20_2.z
  SHX26_2 = 1
  SHX27_2 = false
  SHX21_2(SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
  return SHX18_2
end
function SHX62_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX4_2 = GetEntityCoords
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = GetEntityModel
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = TriggerServerEvent
  SHX7_2 = "60eadad9f8"
  SHX8_2 = SHX4_2
  SHX9_2 = SHX5_2
  SHX10_2 = SHX1_2
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
function SHX63_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX3_2 = GetEntityCoords
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = GetEntityModel
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = TriggerServerEvent
  SHX6_2 = "4e2aeb078b"
  SHX7_2 = SHX3_2
  SHX8_2 = SHX4_2
  SHX9_2 = SHX1_2
  SHX10_2 = SHX2_2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
end
function SHX64_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX3_2 = GetGameTimer
  SHX3_2 = SHX3_2()
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = TaskPedSlideToCoord
  SHX6_2 = SHX4_2
  SHX7_2 = SHX0_2.x
  SHX8_2 = SHX0_2.y
  SHX9_2 = SHX0_2.z
  SHX10_2 = SHX1_2
  SHX11_2 = -1
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  while true do
    SHX5_2 = GetIsTaskActive
    SHX6_2 = SHX4_2
    SHX7_2 = 234
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    if SHX5_2 then
      break
    end
    SHX5_2 = GetGameTimer
    SHX5_2 = SHX5_2()
    SHX5_2 = SHX5_2 - SHX3_2
    if SHX2_2 < SHX5_2 then
      break
    end
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 1
    SHX5_2(SHX6_2)
  end
  while true do
    SHX5_2 = GetIsTaskActive
    SHX6_2 = SHX4_2
    SHX7_2 = 234
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    if not SHX5_2 then
      break
    end
    SHX5_2 = GetGameTimer
    SHX5_2 = SHX5_2()
    SHX5_2 = SHX5_2 - SHX3_2
    if SHX2_2 < SHX5_2 then
      break
    end
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 1
    SHX5_2(SHX6_2)
  end
  SHX5_2 = ClearPedTasks
  SHX6_2 = SHX4_2
  SHX5_2(SHX6_2)
  SHX5_2 = GetGameTimer
  SHX5_2 = SHX5_2()
  SHX5_2 = SHX5_2 - SHX3_2
  if SHX2_2 < SHX5_2 then
    SHX5_2 = GetEntityCoords
    SHX6_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX5_2 = SHX5_2 - SHX0_2
    SHX5_2 = #SHX5_2
    SHX6_2 = 1.3
    if SHX5_2 > SHX6_2 then
      SHX5_2 = SetEntityCoords
      SHX6_2 = SHX4_2
      SHX7_2 = SHX0_2.x
      SHX8_2 = SHX0_2.y
      SHX9_2 = SHX0_2.z
      SHX10_2 = false
      SHX11_2 = false
      SHX12_2 = false
      SHX13_2 = false
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX5_2 = SetEntityHeading
      SHX6_2 = SHX4_2
      SHX7_2 = SHX1_2
      SHX5_2(SHX6_2, SHX7_2)
    end
  end
end
function SHX65_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  while true do
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX2_2 = SHX2_2 - SHX1_2
    if not (SHX0_2 > SHX2_2) then
      break
    end
    SHX2_2 = DisableAllControlActions
    SHX3_2 = 0
    SHX2_2(SHX3_2)
    SHX2_2 = EnableControlAction
    SHX3_2 = 0
    SHX4_2 = 0
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = EnableControlAction
    SHX3_2 = 0
    SHX4_2 = 1
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = EnableControlAction
    SHX3_2 = 0
    SHX4_2 = 2
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 1
    SHX2_2(SHX3_2)
  end
end
function SHX66_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2
  SHX4_2 = Entity
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX4_2 = SHX4_2.state
  SHX5_2 = {}
  SHX6_2 = SHX54_1
  SHX7_2 = SHX0_2
  SHX8_2 = SHX1_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = pairs
  SHX8_2 = SHX0_2.stands
  SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
  for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
    SHX13_2 = {}
    SHX5_2[SHX11_2] = SHX13_2
    SHX13_2 = pairs
    SHX14_2 = SHX0_2.slots
    SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX13_2(SHX14_2)
    for SHX17_2, SHX18_2 in SHX13_2, SHX14_2, SHX15_2, SHX16_2 do
      if SHX6_2 then
        SHX19_2 = SHX6_2[SHX11_2]
        if SHX19_2 then
          SHX19_2 = SHX50_1.Items
          SHX20_2 = SHX6_2[SHX11_2]
          SHX19_2 = SHX19_2[SHX20_2]
          if SHX19_2 then
            SHX20_2 = SHX19_2.model
            if SHX20_2 then
              SHX20_2 = SHX5_2[SHX11_2]
              SHX21_2 = SHX61_1
              SHX22_2 = SHX19_2.model
              SHX23_2 = SHX11_2
              SHX24_2 = SHX17_2
              SHX25_2 = SHX3_2
              SHX26_2 = SHX2_2
              SHX27_2 = SHX19_2.zoffset
              if not SHX27_2 then
                SHX27_2 = 0
              end
              SHX28_2 = SHX19_2.rotation
              if not SHX28_2 then
                SHX28_2 = vec3
                SHX29_2 = 0
                SHX30_2 = 0
                SHX31_2 = 0
                SHX28_2 = SHX28_2(SHX29_2, SHX30_2, SHX31_2)
              end
              SHX21_2 = SHX21_2(SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
              SHX20_2[SHX17_2] = SHX21_2
            end
          end
        end
      end
    end
  end
  SHX8_2 = SHX4_2
  SHX7_2 = SHX4_2.set
  SHX9_2 = "objects"
  SHX10_2 = SHX5_2
  SHX11_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
end
function SHX67_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX2_2 = Entity
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = SHX2_2.state
  SHX3_2 = SHX2_2.objects
  if SHX3_2 then
    SHX3_2 = pairs
    SHX4_2 = SHX2_2.objects
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = pairs
      SHX10_2 = SHX8_2
      SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
      for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
        SHX15_2 = DoesEntityExist
        SHX16_2 = SHX14_2
        SHX15_2 = SHX15_2(SHX16_2)
        if SHX15_2 then
          SHX15_2 = SetEntityAsMissionEntity
          SHX16_2 = SHX14_2
          SHX17_2 = true
          SHX18_2 = true
          SHX15_2(SHX16_2, SHX17_2, SHX18_2)
          SHX15_2 = DeleteEntity
          SHX16_2 = SHX14_2
          SHX15_2(SHX16_2)
        end
      end
    end
  end
  SHX4_2 = SHX2_2
  SHX3_2 = SHX2_2.set
  SHX5_2 = "objects"
  SHX6_2 = nil
  SHX7_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
end
function SHX68_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = nil
  SHX2_2 = nil
  SHX3_2 = IsCamActive
  SHX4_2 = SHX0_2.code
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX1_2 = SHX0_2.code
    SHX2_2 = SHX0_2.products
  else
    SHX1_2 = SHX0_2.products
    SHX2_2 = SHX0_2.code
  end
  SHX3_2 = SetCamActive
  SHX4_2 = SHX1_2
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetCamActive
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetCamActiveWithInterp
  SHX4_2 = SHX2_2
  SHX5_2 = SHX1_2
  SHX6_2 = 1500
  SHX7_2 = 1
  SHX8_2 = 1
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
function SHX69_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX2_2 = SHX47_1
  SHX3_2 = "utility_lib_4"
  SHX4_2 = nil
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX5_2 = SHX2_2
  SHX4_2 = SHX2_2.init
  SHX6_2 = "ui/vending/dui/index.html"
  SHX7_2 = 256
  SHX8_2 = 64
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SetEntityAlpha
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = 0
  SHX7_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = "code"
  SHX5_2 = ""
  SHX6_2 = {}
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = SHX2_2
    SHX1_3 = SHX0_3
    SHX0_3 = SHX0_3.msg
    SHX2_3 = {}
    SHX2_3.action = "update"
    SHX3_3 = SHX5_2
    SHX2_3.code = SHX3_3
    SHX0_3(SHX1_3, SHX2_3)
  end
  function SHX8_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX1_3 = SHX5_2
    SHX2_3 = SHX1_3
    SHX1_3 = SHX1_3.len
    SHX1_3 = SHX1_3(SHX2_3)
    if SHX1_3 >= 2 then
      SHX2_3 = SHX0_3
      SHX1_3 = SHX0_3.match
      SHX3_3 = "%d"
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if SHX1_3 then
        SHX1_3 = SHX5_2
        SHX2_3 = SHX1_3
        SHX1_3 = SHX1_3.sub
        SHX3_3 = 1
        SHX4_3 = -2
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX5_2 = SHX1_3
      else
        SHX1_3 = ""
        SHX5_2 = SHX1_3
      end
    end
    SHX1_3 = SHX5_2
    SHX2_3 = SHX0_3
    SHX1_3 = SHX1_3 .. SHX2_3
    SHX5_2 = SHX1_3
    SHX1_3 = SHX7_2
    SHX1_3()
  end
  SHX9_2 = GetOffsetFromEntityInWorldCoords
  SHX10_2 = SHX1_2
  SHX11_2 = SHX0_2.views
  SHX11_2 = SHX11_2.code
  SHX11_2 = SHX11_2.offset
  SHX11_2 = SHX11_2.x
  SHX12_2 = SHX0_2.views
  SHX12_2 = SHX12_2.code
  SHX12_2 = SHX12_2.offset
  SHX12_2 = SHX12_2.y
  SHX13_2 = SHX0_2.views
  SHX13_2 = SHX13_2.code
  SHX13_2 = SHX13_2.offset
  SHX13_2 = SHX13_2.z
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX10_2 = CreateCam
  SHX11_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX12_2 = true
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
  SHX6_2.code = SHX10_2
  SHX10_2 = SetCamCoord
  SHX11_2 = SHX6_2.code
  SHX12_2 = SHX9_2.x
  SHX13_2 = SHX9_2.y
  SHX14_2 = SHX9_2.z
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX10_2 = SetCamRot
  SHX11_2 = SHX6_2.code
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = GetEntityHeading
  SHX15_2 = SHX1_2
  SHX14_2 = SHX14_2(SHX15_2)
  SHX15_2 = 2
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX10_2 = SetCamFov
  SHX11_2 = SHX6_2.code
  SHX12_2 = SHX0_2.views
  SHX12_2 = SHX12_2.code
  SHX12_2 = SHX12_2.fov
  SHX12_2 = SHX12_2 + 0.0
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = GetOffsetFromEntityInWorldCoords
  SHX11_2 = SHX1_2
  SHX12_2 = SHX0_2.views
  SHX12_2 = SHX12_2.products
  SHX12_2 = SHX12_2.offset
  SHX12_2 = SHX12_2.x
  SHX13_2 = SHX0_2.views
  SHX13_2 = SHX13_2.products
  SHX13_2 = SHX13_2.offset
  SHX13_2 = SHX13_2.y
  SHX14_2 = SHX0_2.views
  SHX14_2 = SHX14_2.products
  SHX14_2 = SHX14_2.offset
  SHX14_2 = SHX14_2.z
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX9_2 = SHX10_2
  SHX10_2 = CreateCam
  SHX11_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX12_2 = true
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
  SHX6_2.products = SHX10_2
  SHX10_2 = SetCamCoord
  SHX11_2 = SHX6_2.products
  SHX12_2 = SHX9_2.x
  SHX13_2 = SHX9_2.y
  SHX14_2 = SHX9_2.z
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX10_2 = SetCamRot
  SHX11_2 = SHX6_2.products
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = GetEntityHeading
  SHX15_2 = SHX1_2
  SHX14_2 = SHX14_2(SHX15_2)
  SHX15_2 = 2
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX10_2 = SetCamFov
  SHX11_2 = SHX6_2.products
  SHX12_2 = SHX0_2.views
  SHX12_2 = SHX12_2.products
  SHX12_2 = SHX12_2.fov
  SHX12_2 = SHX12_2 + 0.0
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = SetCamActive
  SHX11_2 = SHX6_2.code
  SHX12_2 = true
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = RenderScriptCams
  SHX11_2 = true
  SHX12_2 = true
  SHX13_2 = 1500
  SHX14_2 = true
  SHX15_2 = false
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX10_2 = Citizen
  SHX10_2 = SHX10_2.SetTimeout
  SHX11_2 = 1500
  function SHX12_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = SHX2_2
    SHX1_3 = SHX0_3
    SHX0_3 = SHX0_3.replaceTexture
    SHX2_3 = "mxc_vend_parts_props_ytd"
    SHX3_3 = "mxc_vendingmachine_display_d"
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
  end
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = GetResourceState
  SHX11_2 = "utility_pausemenu"
  SHX10_2 = SHX10_2(SHX11_2)
  if "started" == SHX10_2 then
    SHX10_2 = exports
    SHX10_2 = SHX10_2.utility_pausemenu
    SHX11_2 = SHX10_2
    SHX10_2 = SHX10_2.DisableMenus
    SHX12_2 = true
    SHX10_2(SHX11_2, SHX12_2)
  end
  SHX10_2 = LocalPlayer
  SHX10_2 = SHX10_2.state
  SHX10_2.invBusy = true
  SHX10_2 = LocalPlayer
  SHX10_2 = SHX10_2.state
  SHX10_2 = SHX10_2.set
  if SHX10_2 then
    SHX10_2 = LocalPlayer
    SHX10_2 = SHX10_2.state
    SHX11_2 = SHX10_2
    SHX10_2 = SHX10_2.set
    SHX12_2 = "inv_busy"
    SHX13_2 = true
    SHX14_2 = true
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
  SHX10_2 = SHX54_1
  SHX11_2 = SHX0_2
  SHX12_2 = SHX1_2
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
  while true do
    SHX11_2 = SHX50_1.Translations
    SHX11_2 = SHX11_2.vending_menu_helper
    if not SHX11_2 then
      SHX11_2 = ""
    end
    SHX13_2 = SHX5_2
    SHX12_2 = SHX5_2.len
    SHX12_2 = SHX12_2(SHX13_2)
    if 2 == SHX12_2 then
      if SHX10_2 then
        SHX12_2 = SHX10_2[SHX5_2]
        if SHX12_2 then
          SHX12_2 = SHX10_2[SHX5_2]
          SHX13_2 = SHX50_1.Items
          SHX13_2 = SHX13_2[SHX12_2]
          if SHX13_2 then
            SHX14_2 = SHX50_1.Translations
            SHX14_2 = SHX14_2.selected_product_price
            if not SHX14_2 then
              SHX14_2 = "%s - ~g~\194\163%s~w~ \n"
            end
            SHX15_2 = SHX14_2
            SHX14_2 = SHX14_2.format
            SHX16_2 = SHX13_2.label
            SHX17_2 = SHX13_2.price
            SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2)
            SHX16_2 = SHX11_2
            SHX15_2 = SHX11_2.format
            SHX17_2 = SHX14_2
            SHX15_2 = SHX15_2(SHX16_2, SHX17_2)
            SHX11_2 = SHX15_2
          else
            SHX15_2 = SHX11_2
            SHX14_2 = SHX11_2.format
            SHX16_2 = SHX50_1.Translations
            SHX16_2 = SHX16_2.invalid_product
            if not SHX16_2 then
              SHX16_2 = "~r~Invalid product.~w~"
            end
            SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
            SHX11_2 = SHX14_2
          end
      end
      else
        SHX13_2 = SHX11_2
        SHX12_2 = SHX11_2.format
        SHX14_2 = SHX50_1.Translations
        SHX14_2 = SHX14_2.invalid_product
        if not SHX14_2 then
          SHX14_2 = "~r~Invalid product.~w~"
        end
        SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
        SHX11_2 = SHX12_2
      end
    else
      SHX13_2 = SHX11_2
      SHX12_2 = SHX11_2.format
      SHX14_2 = ""
      SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
      SHX11_2 = SHX12_2
    end
    SHX12_2 = SHX27_1
    SHX13_2 = SHX11_2
    SHX12_2(SHX13_2)
    SHX12_2 = DisableAllControlActions
    SHX13_2 = 0
    SHX12_2(SHX13_2)
    SHX12_2 = IsDisabledControlJustPressed
    SHX13_2 = 0
    SHX14_2 = 37
    SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
    if SHX12_2 then
      if "code" == SHX4_2 then
        SHX12_2 = "products"
        if SHX12_2 then
          goto SHX_LABEL_227
          SHX4_2 = SHX12_2 or SHX4_2
        end
      end
      SHX4_2 = "code"
      -- [FIX IF ERROR] Move ::SHX_LABEL_227:: outside nested blocks until all 'goto SHX_LABEL_227' can see it
      ::SHX_LABEL_227::
      SHX12_2 = SHX68_1
      SHX13_2 = SHX6_2
      SHX12_2(SHX13_2)
    end
    SHX12_2 = IsDisabledControlJustPressed
    SHX13_2 = 0
    SHX14_2 = 177
    SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
    if SHX12_2 then
      SHX5_2 = ""
      break
    end
    SHX12_2 = IsDisabledControlJustPressed
    SHX13_2 = 0
    SHX14_2 = 215
    SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
    if SHX12_2 then
      if SHX10_2 then
        SHX12_2 = SHX10_2[SHX5_2]
      end
      if not SHX12_2 then
        SHX12_2 = SHX28_1
        SHX13_2 = SHX50_1.Translations
        SHX13_2 = SHX13_2.selection_not_valid
        if not SHX13_2 then
          SHX13_2 = "~r~Invalid.~w~"
        end
        SHX14_2 = 2000
        SHX12_2(SHX13_2, SHX14_2)
        SHX12_2 = Citizen
        SHX12_2 = SHX12_2.Wait
        SHX13_2 = 2000
        SHX12_2(SHX13_2)
        SHX5_2 = ""
        SHX12_2 = SHX7_2
        SHX12_2()
      else
        break
      end
    end
    SHX12_2 = pairs
    SHX13_2 = SHX0_2.inputs
    SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX12_2(SHX13_2)
    for SHX16_2, SHX17_2 in SHX12_2, SHX13_2, SHX14_2, SHX15_2 do
      SHX18_2 = IsDisabledControlJustPressed
      SHX19_2 = 0
      SHX20_2 = SHX17_2
      SHX18_2 = SHX18_2(SHX19_2, SHX20_2)
      if SHX18_2 then
        SHX18_2 = SHX50_1.Functions
        SHX18_2 = SHX18_2.PlaySound
        SHX19_2 = "buttonClicked"
        SHX20_2 = nil
        SHX21_2 = SHX50_1.AudiosVolumes
        SHX21_2 = SHX21_2.buttonClicked
        if not SHX21_2 then
          SHX21_2 = 0.15
        end
        SHX18_2(SHX19_2, SHX20_2, SHX21_2)
        SHX18_2 = SHX8_2
        SHX19_2 = SHX16_2
        SHX18_2(SHX19_2)
      end
    end
    SHX12_2 = Citizen
    SHX12_2 = SHX12_2.Wait
    SHX13_2 = 0
    SHX12_2(SHX13_2)
  end
  SHX11_2 = RenderScriptCams
  SHX12_2 = false
  SHX13_2 = true
  SHX14_2 = 1500
  SHX15_2 = true
  SHX16_2 = false
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX11_2 = Citizen
  SHX11_2 = SHX11_2.SetTimeout
  SHX12_2 = 1500
  function SHX13_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = DestroyCam
    SHX1_3 = SHX6_2.code
    SHX2_3 = true
    SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = DestroyCam
    SHX1_3 = SHX6_2.products
    SHX2_3 = true
    SHX0_3(SHX1_3, SHX2_3)
  end
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = Citizen
  SHX11_2 = SHX11_2.SetTimeout
  SHX12_2 = 2000
  function SHX13_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = SHX2_2
    SHX1_3 = SHX0_3
    SHX0_3 = SHX0_3.destroy
    SHX0_3(SHX1_3)
    SHX0_3 = RemoveReplaceTexture
    SHX1_3 = "mxc_vend_parts_props_ytd"
    SHX2_3 = "mxc_vendingmachine_display_d"
    SHX0_3(SHX1_3, SHX2_3)
  end
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = LocalPlayer
  SHX11_2 = SHX11_2.state
  SHX11_2.invBusy = false
  SHX11_2 = LocalPlayer
  SHX11_2 = SHX11_2.state
  SHX11_2 = SHX11_2.set
  if SHX11_2 then
    SHX11_2 = LocalPlayer
    SHX11_2 = SHX11_2.state
    SHX12_2 = SHX11_2
    SHX11_2 = SHX11_2.set
    SHX13_2 = "inv_busy"
    SHX14_2 = false
    SHX15_2 = true
    SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  end
  SHX11_2 = GetResourceState
  SHX12_2 = "utility_pausemenu"
  SHX11_2 = SHX11_2(SHX12_2)
  if "started" == SHX11_2 then
    SHX11_2 = exports
    SHX11_2 = SHX11_2.utility_pausemenu
    SHX12_2 = SHX11_2
    SHX11_2 = SHX11_2.DisableMenus
    SHX13_2 = false
    SHX11_2(SHX12_2, SHX13_2)
  end
  SHX11_2 = SetEntityAlpha
  SHX12_2 = PlayerPedId
  SHX12_2 = SHX12_2()
  SHX13_2 = 255
  SHX14_2 = false
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  return SHX5_2
end
SHX70_1 = {}
function SHX71_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.TriggerServerCallback
  SHX5_2 = "a3f2099a04"
  SHX6_2 = SHX0_2.name
  SHX7_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  if SHX4_2 then
    SHX5_2 = TriggerServerEvent
    SHX6_2 = "32e4f00ebc"
    SHX7_2 = SHX2_2
    SHX8_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = SHX3_2
    SHX5_2()
    SHX5_2 = TriggerServerEvent
    SHX6_2 = "32e4f00ebc"
    SHX7_2 = SHX2_2
    SHX8_2 = false
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = TriggerServerEvent
    SHX6_2 = "6b2c902639"
    SHX7_2 = SHX0_2.name
    SHX8_2 = SHX1_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  else
    SHX5_2 = SHX28_1
    SHX6_2 = SHX50_1.Translations
    SHX6_2 = SHX6_2.not_enough_money
    if not SHX6_2 then
      SHX6_2 = "~r~Not enough money.~w~"
    end
    SHX7_2 = 2000
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = TriggerServerEvent
    SHX6_2 = "32e4f00ebc"
    SHX7_2 = SHX2_2
    SHX8_2 = false
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  end
end
SHX70_1.TryToBuy = SHX71_1
function SHX71_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = SHX50_1.Sounds
  if SHX3_2 then
    if "buttonClicked" == SHX0_2 then
      SHX3_2 = PlaySoundFrontend
      SHX4_2 = -1
      SHX5_2 = "SELECT"
      SHX6_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      SHX7_2 = false
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      return
    end
    SHX3_2 = {}
    SHX3_2.snackSprings = "vending_snack_springs"
    SHX3_2.snackDroppingItem = "vending_snack_dropping_item"
    SHX3_2.snackDoorPickup = "vending_snack_door_pickup"
    SHX3_2.sodaBottleDropped = "vending_soda_bottle_dropped"
    SHX3_2.coffeMachine = "vending_coffe_machine"
    SHX3_2.waterPouring = "vending_water_pouring"
    SHX4_2 = SHX3_2[SHX0_2]
    if SHX4_2 then
      SHX5_2 = SendNUIMessage
      SHX6_2 = {}
      SHX6_2.transactionType = SHX4_2
      SHX6_2.volumeOverride = SHX2_2
      SHX5_2(SHX6_2)
    end
  end
end
SHX70_1.PlaySound = SHX71_1
SHX50_1.Functions = SHX70_1
function SHX70_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = Entity
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = SHX2_2.state
  SHX3_2 = SHX59_1
  SHX4_2 = SHX1_2
  SHX5_2 = "mxc_vend_prop_snak_springs"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = SHX59_1
  SHX5_2 = SHX1_2
  SHX6_2 = "mxc_vend_prop_snak_door"
  SHX7_2 = vec3
  SHX8_2 = -0.085311
  SHX9_2 = -0.457828
  SHX10_2 = -0.336695
  SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX6_2 = SHX2_2
  SHX5_2 = SHX2_2.set
  SHX7_2 = "springs"
  SHX8_2 = SHX3_2
  SHX9_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = SHX2_2
  SHX5_2 = SHX2_2.set
  SHX7_2 = "door"
  SHX8_2 = SHX4_2
  SHX9_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = SHX66_1
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX8_2 = "snack"
  SHX9_2 = SHX3_2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
end
function SHX71_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = Entity
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = SHX2_2.state
  SHX3_2 = SHX67_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SHX2_2.springs
  if SHX3_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX2_2.springs
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = DeleteEntity
      SHX4_2 = SHX2_2.springs
      SHX3_2(SHX4_2)
    end
  end
  SHX3_2 = SHX2_2.door
  if SHX3_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX2_2.door
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = DeleteEntity
      SHX4_2 = SHX2_2.door
      SHX3_2(SHX4_2)
    end
  end
  SHX4_2 = SHX2_2
  SHX3_2 = SHX2_2.set
  SHX5_2 = "springs"
  SHX6_2 = nil
  SHX7_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SHX2_2
  SHX3_2 = SHX2_2.set
  SHX5_2 = "door"
  SHX6_2 = nil
  SHX7_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
end
function SHX72_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  SHX3_2 = Entity
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_2 = SHX3_2.state
  SHX5_2 = SHX2_2
  SHX4_2 = SHX2_2.sub
  SHX6_2 = 1
  SHX7_2 = 1
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = RequestAnimDict
  SHX6_2 = "clip@snakfall_gen"
  SHX5_2(SHX6_2)
  while true do
    SHX5_2 = HasAnimDictLoaded
    SHX6_2 = "clip@snakfall_gen"
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      break
    end
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  SHX5_2 = GetAnimDuration
  SHX6_2 = "clip@snakfall_gen"
  SHX7_2 = "snakfall_gen_"
  SHX8_2 = SHX4_2
  SHX7_2 = SHX7_2 .. SHX8_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SHX5_2 * 1000
  SHX6_2 = RemoveAnimDict
  SHX7_2 = "clip@snakfall_gen"
  SHX6_2(SHX7_2)
  SHX6_2 = PlayerPedId
  SHX6_2 = SHX6_2()
  SHX7_2 = SHX3_2.springs
  if SHX7_2 then
    SHX7_2 = DoesEntityExist
    SHX8_2 = SHX3_2.springs
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      goto SHX_LABEL_44
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_44:: outside nested blocks until all 'goto SHX_LABEL_44' can see it
  ::SHX_LABEL_44::
  SHX7_2 = SHX3_2.objects
  if SHX7_2 then
    SHX7_2 = SHX3_2.objects
    SHX7_2 = SHX7_2[SHX2_2]
    if SHX7_2 then
      goto SHX_LABEL_52
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_52:: outside nested blocks until all 'goto SHX_LABEL_52' can see it
  ::SHX_LABEL_52::
  SHX7_2 = GetOffsetFromEntityInWorldCoords
  SHX8_2 = SHX3_2.springs
  SHX9_2 = 0.0
  SHX10_2 = -1.0
  SHX11_2 = -1.1
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX8_2 = GetEntityRotation
  SHX9_2 = SHX3_2.springs
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = SHX64_1
  SHX10_2 = SHX7_2
  SHX11_2 = SHX8_2.z
  SHX12_2 = 3000
  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = SHX24_1
  SHX10_2 = "mini@sprunk"
  SHX11_2 = "plyr_buy_drink_pt1"
  SHX12_2 = 16
  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = Citizen
  SHX9_2 = SHX9_2.Wait
  SHX10_2 = 1400
  SHX9_2(SHX10_2)
  SHX9_2 = ClearPedTasks
  SHX10_2 = SHX6_2
  SHX9_2(SHX10_2)
  SHX9_2 = SHX62_1
  SHX10_2 = SHX3_2.springs
  SHX11_2 = "clip@snaksprings"
  SHX12_2 = "mxc_vend_prop_snak_springs"
  SHX13_2 = SHX2_2
  SHX12_2 = SHX12_2 .. SHX13_2
  SHX13_2 = false
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX9_2 = SHX62_1
  SHX10_2 = SHX3_2.objects
  SHX10_2 = SHX10_2[SHX2_2]
  SHX10_2 = SHX10_2[1]
  SHX11_2 = "clip@snakfall_gen"
  SHX12_2 = "snakfall_gen_"
  SHX13_2 = SHX4_2
  SHX12_2 = SHX12_2 .. SHX13_2
  SHX13_2 = false
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX9_2 = SHX62_1
  SHX10_2 = SHX3_2.objects
  SHX10_2 = SHX10_2[SHX2_2]
  SHX10_2 = SHX10_2[2]
  SHX11_2 = "clip@snakfall_gen"
  SHX12_2 = "slot_swap_gen_abcde"
  SHX13_2 = false
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX9_2 = SHX62_1
  SHX10_2 = SHX3_2.objects
  SHX10_2 = SHX10_2[SHX2_2]
  SHX10_2 = SHX10_2[3]
  SHX11_2 = "clip@snakfall_gen"
  SHX12_2 = "slot_swap_gen_abcde"
  SHX13_2 = false
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX9_2 = GetEntityModel
  SHX10_2 = SHX3_2.objects
  SHX10_2 = SHX10_2[SHX2_2]
  SHX10_2 = SHX10_2[1]
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.requestEntitySpawn
  SHX11_2 = "vending_pickup"
  SHX12_2 = SHX9_2
  SHX13_2 = SHX7_2
  SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX10_2 = CreateObject
  SHX11_2 = SHX9_2
  SHX12_2 = SHX7_2.x
  SHX13_2 = SHX7_2.y
  SHX14_2 = SHX7_2.z
  SHX14_2 = SHX14_2 - 10.0
  SHX15_2 = true
  SHX16_2 = true
  SHX17_2 = false
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX11_2 = SHX50_1.Functions
  SHX11_2 = SHX11_2.PlaySound
  SHX12_2 = "snackSprings"
  SHX13_2 = nil
  SHX14_2 = SHX50_1.AudiosVolumes
  SHX14_2 = SHX14_2.snackSprings
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = Citizen
  SHX11_2 = SHX11_2.SetTimeout
  SHX12_2 = SHX5_2 - 300
  function SHX13_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = SHX50_1.Functions
    SHX0_3 = SHX0_3.PlaySound
    SHX1_3 = "snackDroppingItem"
    SHX2_3 = nil
    SHX3_3 = SHX50_1.AudiosVolumes
    SHX3_3 = SHX3_3.snackDroppingItem
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
  end
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = SHX65_1
  SHX12_2 = SHX5_2
  SHX11_2(SHX12_2)
  SHX11_2 = SHX23_1
  SHX12_2 = SHX6_2
  SHX13_2 = "mini@sprunk"
  SHX14_2 = "plyr_buy_drink_pt1"
  SHX15_2 = 2.0
  SHX16_2 = 2.0
  SHX17_2 = -1
  SHX18_2 = 0
  SHX19_2 = 0.3
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX11_2 = Citizen
  SHX11_2 = SHX11_2.Wait
  SHX12_2 = 1200
  SHX11_2(SHX12_2)
  SHX11_2 = SHX63_1
  SHX12_2 = SHX3_2.springs
  SHX13_2 = "clip@snaksprings"
  SHX14_2 = "mxc_vend_prop_snak_springs"
  SHX15_2 = SHX2_2
  SHX14_2 = SHX14_2 .. SHX15_2
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = SHX63_1
  SHX12_2 = SHX3_2.objects
  SHX12_2 = SHX12_2[SHX2_2]
  SHX12_2 = SHX12_2[1]
  SHX13_2 = "clip@snakfall_gen"
  SHX14_2 = "snakfall_gen_"
  SHX15_2 = SHX4_2
  SHX14_2 = SHX14_2 .. SHX15_2
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = SHX63_1
  SHX12_2 = SHX3_2.objects
  SHX12_2 = SHX12_2[SHX2_2]
  SHX12_2 = SHX12_2[2]
  SHX13_2 = "clip@snakfall_gen"
  SHX14_2 = "slot_swap_gen_abcde"
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = SHX63_1
  SHX12_2 = SHX3_2.objects
  SHX12_2 = SHX12_2[SHX2_2]
  SHX12_2 = SHX12_2[3]
  SHX13_2 = "clip@snakfall_gen"
  SHX14_2 = "slot_swap_gen_abcde"
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = AttachEntityToEntity
  SHX12_2 = SHX10_2
  SHX13_2 = SHX6_2
  SHX14_2 = GetPedBoneIndex
  SHX15_2 = SHX6_2
  SHX16_2 = 28422
  SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
  SHX15_2 = 0.0
  SHX16_2 = 0.0
  SHX17_2 = 0.0
  SHX18_2 = 0.0
  SHX19_2 = 0.0
  SHX20_2 = 130.0
  SHX21_2 = true
  SHX22_2 = true
  SHX23_2 = false
  SHX24_2 = false
  SHX25_2 = 2
  SHX26_2 = true
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
  SHX11_2 = SHX50_1.Functions
  SHX11_2 = SHX11_2.PlaySound
  SHX12_2 = "snackDoorPickup"
  SHX13_2 = nil
  SHX14_2 = SHX50_1.AudiosVolumes
  SHX14_2 = SHX14_2.snackDoorPickup
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = TriggerServerEvent
  SHX12_2 = "1bb98aff8b"
  SHX13_2 = GetEntityCoords
  SHX14_2 = SHX3_2.door
  SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2 = SHX13_2(SHX14_2)
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
  SHX11_2 = Citizen
  SHX11_2 = SHX11_2.Wait
  SHX12_2 = 500
  SHX11_2(SHX12_2)
  SHX11_2 = ClearPedTasks
  SHX12_2 = SHX6_2
  SHX11_2(SHX12_2)
  SHX11_2 = SHX24_1
  SHX12_2 = "mp_common_miss"
  SHX13_2 = "put_away_coke"
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = Citizen
  SHX11_2 = SHX11_2.Wait
  SHX12_2 = 700
  SHX11_2(SHX12_2)
  SHX11_2 = ClearPedTasks
  SHX12_2 = SHX6_2
  SHX11_2(SHX12_2)
  SHX11_2 = SetEntityAsMissionEntity
  SHX12_2 = SHX10_2
  SHX13_2 = true
  SHX14_2 = true
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = DeleteEntity
  SHX12_2 = SHX10_2
  SHX11_2(SHX12_2)
  SHX11_2 = SHX54_1
  SHX12_2 = SHX0_2
  SHX13_2 = SHX1_2
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
  SHX12_2 = SHX11_2 or SHX12_2
  if SHX11_2 then
    SHX12_2 = SHX11_2[SHX2_2]
  end
  if SHX12_2 then
    SHX13_2 = TriggerEvent
    SHX14_2 = "c82f62b8de"
    SHX15_2 = SHX12_2
    SHX13_2(SHX14_2, SHX15_2)
  end
end
function SHX73_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX3_2 = Entity
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_2 = SHX3_2.state
  SHX4_2 = SHX59_1
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX6_2 = SHX3_2
  SHX5_2 = SHX3_2.set
  SHX7_2 = "shelf"
  SHX8_2 = SHX4_2
  SHX9_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = SHX66_1
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX8_2 = "soda"
  SHX9_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
end
function SHX74_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = Entity
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = SHX2_2.state
  SHX3_2 = SHX67_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SHX2_2.shelf
  if SHX3_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX2_2.shelf
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = DeleteEntity
      SHX4_2 = SHX2_2.shelf
      SHX3_2(SHX4_2)
    end
  end
  SHX4_2 = SHX2_2
  SHX3_2 = SHX2_2.set
  SHX5_2 = "shelf"
  SHX6_2 = nil
  SHX7_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
end
function SHX75_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  SHX3_2 = Entity
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_2 = SHX3_2.state
  SHX4_2 = RequestAnimDict
  SHX5_2 = "clip@sodashelf"
  SHX4_2(SHX5_2)
  while true do
    SHX4_2 = HasAnimDictLoaded
    SHX5_2 = "clip@sodashelf"
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      break
    end
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = RequestAnimDict
  SHX5_2 = "clip@sodatravel"
  SHX4_2(SHX5_2)
  while true do
    SHX4_2 = HasAnimDictLoaded
    SHX5_2 = "clip@sodatravel"
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      break
    end
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = GetAnimDuration
  SHX5_2 = "clip@sodashelf"
  SHX6_2 = "soda_shelf_"
  SHX7_2 = SHX2_2
  SHX6_2 = SHX6_2 .. SHX7_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX4_2 * 1000
  SHX5_2 = RemoveAnimDict
  SHX6_2 = "clip@sodashelf"
  SHX5_2(SHX6_2)
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = SHX3_2.shelf
  if SHX6_2 then
    SHX6_2 = DoesEntityExist
    SHX7_2 = SHX3_2.shelf
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      goto SHX_LABEL_53
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_53:: outside nested blocks until all 'goto SHX_LABEL_53' can see it
  ::SHX_LABEL_53::
  SHX6_2 = SHX3_2.objects
  if SHX6_2 then
    SHX6_2 = SHX3_2.objects
    SHX6_2 = SHX6_2[SHX2_2]
    if SHX6_2 then
      goto SHX_LABEL_61
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_61:: outside nested blocks until all 'goto SHX_LABEL_61' can see it
  ::SHX_LABEL_61::
  SHX6_2 = GetOffsetFromEntityInWorldCoords
  SHX7_2 = SHX3_2.shelf
  SHX8_2 = 0.0
  SHX9_2 = -1.0
  SHX10_2 = -1.1
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = GetEntityRotation
  SHX8_2 = SHX3_2.shelf
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = SHX64_1
  SHX9_2 = SHX6_2
  SHX10_2 = SHX7_2.z
  SHX11_2 = 3000
  SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX8_2 = SHX24_1
  SHX9_2 = "mini@sprunk"
  SHX10_2 = "plyr_buy_drink_pt1"
  SHX11_2 = 16
  SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX8_2 = Citizen
  SHX8_2 = SHX8_2.Wait
  SHX9_2 = 1400
  SHX8_2(SHX9_2)
  SHX8_2 = ClearPedTasks
  SHX9_2 = SHX5_2
  SHX8_2(SHX9_2)
  SHX8_2 = SHX62_1
  SHX9_2 = SHX3_2.shelf
  SHX10_2 = "clip@sodashelf"
  SHX11_2 = "soda_shelf_"
  SHX12_2 = SHX2_2
  SHX11_2 = SHX11_2 .. SHX12_2
  SHX12_2 = false
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX8_2 = SHX62_1
  SHX9_2 = SHX3_2.objects
  SHX9_2 = SHX9_2[SHX2_2]
  SHX9_2 = SHX9_2[1]
  SHX10_2 = "clip@sodatravel"
  SHX11_2 = "soda_travel_"
  SHX12_2 = SHX2_2
  SHX11_2 = SHX11_2 .. SHX12_2
  SHX12_2 = false
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX8_2 = Citizen
  SHX8_2 = SHX8_2.Wait
  SHX9_2 = 800
  SHX8_2(SHX9_2)
  SHX8_2 = SHX62_1
  SHX9_2 = SHX3_2.objects
  SHX9_2 = SHX9_2[SHX2_2]
  SHX9_2 = SHX9_2[2]
  SHX10_2 = "clip@sodatravel"
  SHX11_2 = "soda_swap_gen"
  SHX12_2 = false
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX8_2 = SHX62_1
  SHX9_2 = SHX3_2.objects
  SHX9_2 = SHX9_2[SHX2_2]
  SHX9_2 = SHX9_2[3]
  SHX10_2 = "clip@sodatravel"
  SHX11_2 = "soda_swap_gen"
  SHX12_2 = false
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX8_2 = GetEntityModel
  SHX9_2 = SHX3_2.objects
  SHX9_2 = SHX9_2[SHX2_2]
  SHX9_2 = SHX9_2[1]
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.requestEntitySpawn
  SHX10_2 = "vending_pickup"
  SHX11_2 = SHX8_2
  SHX12_2 = SHX6_2
  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = CreateObject
  SHX10_2 = SHX8_2
  SHX11_2 = SHX6_2.x
  SHX12_2 = SHX6_2.y
  SHX13_2 = SHX6_2.z
  SHX13_2 = SHX13_2 - 10.0
  SHX14_2 = true
  SHX15_2 = true
  SHX16_2 = false
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX10_2 = Citizen
  SHX10_2 = SHX10_2.SetTimeout
  SHX11_2 = SHX4_2 - 3000
  function SHX12_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = SHX50_1.Functions
    SHX0_3 = SHX0_3.PlaySound
    SHX1_3 = "sodaBottleDropped"
    SHX2_3 = nil
    SHX3_3 = SHX50_1.AudiosVolumes
    SHX3_3 = SHX3_3.sodaBottleDropped
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
  end
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = Citizen
  SHX10_2 = SHX10_2.Wait
  SHX11_2 = SHX4_2
  SHX10_2(SHX11_2)
  SHX10_2 = GetOffsetFromEntityInWorldCoords
  SHX11_2 = SHX3_2.shelf
  SHX12_2 = 0.3
  SHX13_2 = -1.0
  SHX14_2 = -1.1
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = SHX64_1
  SHX12_2 = SHX10_2
  SHX13_2 = SHX7_2.z
  SHX14_2 = 3000
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = SHX24_1
  SHX12_2 = "pickup_object"
  SHX13_2 = "putdown_low"
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = SHX65_1
  SHX12_2 = 800
  SHX11_2(SHX12_2)
  SHX11_2 = SHX63_1
  SHX12_2 = SHX3_2.shelf
  SHX13_2 = "clip@sodashelf"
  SHX14_2 = "soda_shelf_"
  SHX15_2 = SHX2_2
  SHX14_2 = SHX14_2 .. SHX15_2
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = SHX63_1
  SHX12_2 = SHX3_2.objects
  SHX12_2 = SHX12_2[SHX2_2]
  SHX12_2 = SHX12_2[1]
  SHX13_2 = "clip@sodatravel"
  SHX14_2 = "soda_travel_"
  SHX15_2 = SHX2_2
  SHX14_2 = SHX14_2 .. SHX15_2
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = SHX63_1
  SHX12_2 = SHX3_2.objects
  SHX12_2 = SHX12_2[SHX2_2]
  SHX12_2 = SHX12_2[2]
  SHX13_2 = "clip@sodatravel"
  SHX14_2 = "soda_swap_gen"
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = SHX63_1
  SHX12_2 = SHX3_2.objects
  SHX12_2 = SHX12_2[SHX2_2]
  SHX12_2 = SHX12_2[3]
  SHX13_2 = "clip@sodatravel"
  SHX14_2 = "soda_swap_gen"
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = AttachEntityToEntity
  SHX12_2 = SHX9_2
  SHX13_2 = SHX5_2
  SHX14_2 = GetPedBoneIndex
  SHX15_2 = SHX5_2
  SHX16_2 = 28422
  SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
  SHX15_2 = 0.04
  SHX16_2 = 0.01
  SHX17_2 = -0.04
  SHX18_2 = -73.89
  SHX19_2 = 27.8
  SHX20_2 = 10.47
  SHX21_2 = true
  SHX22_2 = true
  SHX23_2 = false
  SHX24_2 = false
  SHX25_2 = 1
  SHX26_2 = true
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
  SHX11_2 = Citizen
  SHX11_2 = SHX11_2.Wait
  SHX12_2 = 0
  SHX11_2(SHX12_2)
  SHX11_2 = ClearPedTasks
  SHX12_2 = SHX5_2
  SHX11_2(SHX12_2)
  SHX11_2 = SHX24_1
  SHX12_2 = "mp_common_miss"
  SHX13_2 = "put_away_coke"
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = Citizen
  SHX11_2 = SHX11_2.Wait
  SHX12_2 = 0
  SHX11_2(SHX12_2)
  SHX11_2 = ClearPedTasks
  SHX12_2 = SHX5_2
  SHX11_2(SHX12_2)
  SHX11_2 = SetEntityAsMissionEntity
  SHX12_2 = SHX9_2
  SHX13_2 = true
  SHX14_2 = true
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = DeleteEntity
  SHX12_2 = SHX9_2
  SHX11_2(SHX12_2)
  SHX11_2 = SHX54_1
  SHX12_2 = SHX0_2
  SHX13_2 = SHX1_2
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
  SHX12_2 = SHX11_2 or SHX12_2
  if SHX11_2 then
    SHX12_2 = SHX11_2[SHX2_2]
  end
  if SHX12_2 then
    SHX13_2 = TriggerEvent
    SHX14_2 = "c82f62b8de"
    SHX15_2 = SHX12_2
    SHX13_2(SHX14_2, SHX15_2)
  end
end
function SHX76_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2
  SHX3_2 = RequestAnimDict
  SHX4_2 = "clip@cofferefill"
  SHX3_2(SHX4_2)
  while true do
    SHX3_2 = HasAnimDictLoaded
    SHX4_2 = "clip@cofferefill"
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = GetAnimDuration
  SHX4_2 = "clip@cofferefill"
  SHX5_2 = "coffe_refill"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SHX3_2 * 1000
  SHX4_2 = RemoveAnimDict
  SHX5_2 = "clip@cofferefill"
  SHX4_2(SHX5_2)
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = GetOffsetFromEntityInWorldCoords
  SHX6_2 = SHX1_2
  SHX7_2 = -0.2
  SHX8_2 = -0.8
  SHX9_2 = 0.0
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = GetEntityRotation
  SHX7_2 = SHX1_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = SHX64_1
  SHX8_2 = SHX5_2
  SHX9_2 = SHX6_2.z
  SHX10_2 = 3000
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = SHX24_1
  SHX8_2 = "mini@sprunk"
  SHX9_2 = "plyr_buy_drink_pt1"
  SHX10_2 = 16
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = SHX65_1
  SHX8_2 = 1400
  SHX7_2(SHX8_2)
  SHX7_2 = ClearPedTasks
  SHX8_2 = SHX4_2
  SHX7_2(SHX8_2)
  SHX7_2 = GetOffsetFromEntityInWorldCoords
  SHX8_2 = SHX1_2
  SHX9_2 = -0.087544
  SHX10_2 = -0.242745
  SHX11_2 = 0.662735
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.requestEntitySpawn
  SHX9_2 = "vending_pickup"
  SHX10_2 = GetHashKey
  SHX11_2 = "mxc_vend_prop_coffecup"
  SHX10_2 = SHX10_2(SHX11_2)
  SHX11_2 = SHX7_2
  SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX8_2 = GetHashKey
  SHX9_2 = "mxc_vend_prop_coffecup"
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = HasModelLoaded
  SHX10_2 = SHX8_2
  SHX9_2 = SHX9_2(SHX10_2)
  if not SHX9_2 then
    SHX9_2 = RequestModel
    SHX10_2 = SHX8_2
    SHX9_2(SHX10_2)
    while true do
      SHX9_2 = HasModelLoaded
      SHX10_2 = SHX8_2
      SHX9_2 = SHX9_2(SHX10_2)
      if SHX9_2 then
        break
      end
      SHX9_2 = Citizen
      SHX9_2 = SHX9_2.Wait
      SHX10_2 = 1
      SHX9_2(SHX10_2)
    end
  end
  SHX9_2 = CreateObject
  SHX10_2 = SHX8_2
  SHX11_2 = SHX7_2.x
  SHX12_2 = SHX7_2.y
  SHX13_2 = SHX7_2.z
  SHX14_2 = true
  SHX15_2 = true
  SHX16_2 = false
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX10_2 = SetModelAsNoLongerNeeded
  SHX11_2 = SHX8_2
  SHX10_2(SHX11_2)
  SHX10_2 = SetEntityVisible
  SHX11_2 = SHX9_2
  SHX12_2 = false
  SHX13_2 = false
  SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX10_2 = SetEntityCoords
  SHX11_2 = SHX9_2
  SHX12_2 = SHX7_2.x
  SHX13_2 = SHX7_2.y
  SHX14_2 = SHX7_2.z
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = false
  SHX18_2 = false
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX10_2 = GetEntityRotation
  SHX11_2 = SHX1_2
  SHX12_2 = 1
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
  SHX11_2 = SetEntityRotation
  SHX12_2 = SHX9_2
  SHX13_2 = SHX10_2.x
  SHX14_2 = SHX10_2.y
  SHX15_2 = SHX10_2.z
  SHX16_2 = 1
  SHX17_2 = false
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX11_2 = SHX62_1
  SHX12_2 = SHX1_2
  SHX13_2 = "clip@cofferefill"
  SHX14_2 = "coffe_door"
  SHX15_2 = false
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX11_2 = SHX62_1
  SHX12_2 = SHX9_2
  SHX13_2 = "clip@cofferefill"
  SHX14_2 = "coffe_refill"
  SHX15_2 = false
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX11_2 = Citizen
  SHX11_2 = SHX11_2.Wait
  SHX12_2 = 100
  SHX11_2(SHX12_2)
  SHX11_2 = SetEntityVisible
  SHX12_2 = SHX9_2
  SHX13_2 = true
  SHX14_2 = false
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = Citizen
  SHX11_2 = SHX11_2.SetTimeout
  SHX12_2 = 2500
  function SHX13_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = SHX50_1.Functions
    SHX0_3 = SHX0_3.PlaySound
    SHX1_3 = "coffeMachine"
    SHX2_3 = nil
    SHX3_3 = SHX50_1.AudiosVolumes
    SHX3_3 = SHX3_3.coffeMachine
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
  end
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = Citizen
  SHX11_2 = SHX11_2.Wait
  SHX12_2 = SHX3_2
  SHX11_2(SHX12_2)
  SHX11_2 = GetOffsetFromEntityInWorldCoords
  SHX12_2 = SHX1_2
  SHX13_2 = -0.3
  SHX14_2 = -0.8
  SHX15_2 = 0.0
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX12_2 = SHX64_1
  SHX13_2 = SHX11_2
  SHX14_2 = SHX6_2.z
  SHX15_2 = 3000
  SHX12_2(SHX13_2, SHX14_2, SHX15_2)
  SHX12_2 = SHX24_1
  SHX13_2 = "pickup_object"
  SHX14_2 = "putdown_low"
  SHX12_2(SHX13_2, SHX14_2)
  SHX12_2 = SHX65_1
  SHX13_2 = 800
  SHX12_2(SHX13_2)
  SHX12_2 = SHX63_1
  SHX13_2 = SHX1_2
  SHX14_2 = "clip@cofferefill"
  SHX15_2 = "coffe_door"
  SHX12_2(SHX13_2, SHX14_2, SHX15_2)
  SHX12_2 = SHX63_1
  SHX13_2 = SHX9_2
  SHX14_2 = "clip@cofferefill"
  SHX15_2 = "coffe_refill"
  SHX12_2(SHX13_2, SHX14_2, SHX15_2)
  if SHX2_2 then
    SHX12_2 = "prop_fib_coffee"
    if SHX12_2 then
      goto SHX_LABEL_188
    end
  end
  SHX12_2 = "mxc_vend_prop_item_cofferefill"
  -- [FIX IF ERROR] Move ::SHX_LABEL_188:: outside nested blocks until all 'goto SHX_LABEL_188' can see it
  ::SHX_LABEL_188::
  SHX13_2 = GetHashKey
  SHX14_2 = SHX12_2
  SHX13_2 = SHX13_2(SHX14_2)
  SHX14_2 = CMG
  SHX14_2 = SHX14_2.requestEntitySpawn
  SHX15_2 = "vending_pickup"
  SHX16_2 = SHX13_2
  SHX17_2 = SHX7_2
  SHX14_2(SHX15_2, SHX16_2, SHX17_2)
  SHX14_2 = CreateObject
  SHX15_2 = SHX13_2
  SHX16_2 = SHX7_2.x
  SHX17_2 = SHX7_2.y
  SHX18_2 = SHX7_2.z
  SHX19_2 = true
  SHX20_2 = true
  SHX21_2 = false
  SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX15_2 = AttachEntityToEntity
  SHX16_2 = SHX14_2
  SHX17_2 = SHX4_2
  SHX18_2 = GetPedBoneIndex
  SHX19_2 = SHX4_2
  SHX20_2 = 28422
  SHX18_2 = SHX18_2(SHX19_2, SHX20_2)
  SHX19_2 = 0.04
  SHX20_2 = 0.01
  SHX21_2 = -0.04
  SHX22_2 = -73.89
  SHX23_2 = 27.8
  SHX24_2 = 10.47
  SHX25_2 = true
  SHX26_2 = true
  SHX27_2 = false
  SHX28_2 = false
  SHX29_2 = 1
  SHX30_2 = true
  SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
  SHX15_2 = DeleteEntity
  SHX16_2 = SHX9_2
  SHX15_2(SHX16_2)
  SHX15_2 = Citizen
  SHX15_2 = SHX15_2.Wait
  SHX16_2 = 0
  SHX15_2(SHX16_2)
  SHX15_2 = ClearPedTasks
  SHX16_2 = SHX4_2
  SHX15_2(SHX16_2)
  SHX15_2 = SHX24_1
  SHX16_2 = "mp_common_miss"
  SHX17_2 = "put_away_coke"
  SHX15_2(SHX16_2, SHX17_2)
  SHX15_2 = Citizen
  SHX15_2 = SHX15_2.Wait
  SHX16_2 = 0
  SHX15_2(SHX16_2)
  SHX15_2 = ClearPedTasks
  SHX16_2 = SHX4_2
  SHX15_2(SHX16_2)
  SHX15_2 = SetEntityAsMissionEntity
  SHX16_2 = SHX14_2
  SHX17_2 = true
  SHX18_2 = true
  SHX15_2(SHX16_2, SHX17_2, SHX18_2)
  SHX15_2 = DeleteEntity
  SHX16_2 = SHX14_2
  SHX15_2(SHX16_2)
  SHX15_2 = SHX0_2.item
  if SHX15_2 then
    SHX15_2 = TriggerEvent
    SHX16_2 = "c82f62b8de"
    SHX17_2 = SHX0_2.item
    SHX15_2(SHX16_2, SHX17_2)
  end
end
function SHX77_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2
  SHX2_2 = RequestAnimDict
  SHX3_2 = "clip@waterrefill"
  SHX2_2(SHX3_2)
  while true do
    SHX2_2 = HasAnimDictLoaded
    SHX3_2 = "clip@waterrefill"
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      break
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = GetAnimDuration
  SHX3_2 = "clip@waterrefill"
  SHX4_2 = "water_refill"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX2_2 * 1000
  SHX3_2 = RemoveAnimDict
  SHX4_2 = "clip@waterrefill"
  SHX3_2(SHX4_2)
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = GetOffsetFromEntityInWorldCoords
  SHX5_2 = SHX1_2
  SHX6_2 = -0.056371
  SHX7_2 = -0.12243
  SHX8_2 = 0.603425
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.requestEntitySpawn
  SHX6_2 = "vending_pickup"
  SHX7_2 = GetHashKey
  SHX8_2 = "mxc_vend_prop_watercup"
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = GetHashKey
  SHX6_2 = "mxc_vend_prop_watercup"
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = HasModelLoaded
  SHX7_2 = SHX5_2
  SHX6_2 = SHX6_2(SHX7_2)
  if not SHX6_2 then
    SHX6_2 = RequestModel
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
    while true do
      SHX6_2 = HasModelLoaded
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        break
      end
      SHX6_2 = Citizen
      SHX6_2 = SHX6_2.Wait
      SHX7_2 = 1
      SHX6_2(SHX7_2)
    end
  end
  SHX6_2 = CreateObject
  SHX7_2 = SHX5_2
  SHX8_2 = SHX4_2.x
  SHX9_2 = SHX4_2.y
  SHX10_2 = SHX4_2.z
  SHX11_2 = true
  SHX12_2 = true
  SHX13_2 = false
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX7_2 = SetModelAsNoLongerNeeded
  SHX8_2 = SHX5_2
  SHX7_2(SHX8_2)
  SHX7_2 = SetEntityCoords
  SHX8_2 = SHX6_2
  SHX9_2 = SHX4_2.x
  SHX10_2 = SHX4_2.y
  SHX11_2 = SHX4_2.z
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX7_2 = GetEntityRotation
  SHX8_2 = SHX1_2
  SHX9_2 = 1
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX8_2 = SetEntityRotation
  SHX9_2 = SHX6_2
  SHX10_2 = SHX7_2.x
  SHX11_2 = SHX7_2.y
  SHX12_2 = SHX7_2.z
  SHX13_2 = 1
  SHX14_2 = false
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX8_2 = SHX62_1
  SHX9_2 = SHX6_2
  SHX10_2 = "clip@waterrefill"
  SHX11_2 = "water_refill"
  SHX12_2 = false
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX8_2 = Citizen
  SHX8_2 = SHX8_2.SetTimeout
  SHX9_2 = 500
  function SHX10_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = SHX50_1.Functions
    SHX0_3 = SHX0_3.PlaySound
    SHX1_3 = "waterPouring"
    SHX2_3 = nil
    SHX3_3 = SHX50_1.AudiosVolumes
    SHX3_3 = SHX3_3.waterPouring
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
  end
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = Citizen
  SHX8_2 = SHX8_2.Wait
  SHX9_2 = SHX2_2
  SHX8_2(SHX9_2)
  SHX8_2 = GetOffsetFromEntityInWorldCoords
  SHX9_2 = SHX1_2
  SHX10_2 = -0.3
  SHX11_2 = -0.8
  SHX12_2 = 0.0
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = GetEntityCoords
  SHX10_2 = SHX1_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = GetEntityRotation
  SHX11_2 = SHX1_2
  SHX10_2 = SHX10_2(SHX11_2)
  SHX11_2 = SHX64_1
  SHX12_2 = SHX8_2
  SHX13_2 = SHX10_2.z
  SHX14_2 = 3000
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = SHX24_1
  SHX12_2 = "pickup_object"
  SHX13_2 = "putdown_low"
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = SHX65_1
  SHX12_2 = 800
  SHX11_2(SHX12_2)
  SHX11_2 = SHX63_1
  SHX12_2 = SHX6_2
  SHX13_2 = "clip@waterrefill"
  SHX14_2 = "water_refill"
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.requestEntitySpawn
  SHX12_2 = "vending_pickup"
  SHX13_2 = GetHashKey
  SHX14_2 = "mxc_vend_prop_item_waterfill"
  SHX13_2 = SHX13_2(SHX14_2)
  SHX14_2 = SHX4_2
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = CreateObject
  SHX12_2 = GetHashKey
  SHX13_2 = "mxc_vend_prop_item_waterfill"
  SHX12_2 = SHX12_2(SHX13_2)
  SHX13_2 = SHX4_2.x
  SHX14_2 = SHX4_2.y
  SHX15_2 = SHX4_2.z
  SHX16_2 = true
  SHX17_2 = true
  SHX18_2 = false
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX12_2 = AttachEntityToEntity
  SHX13_2 = SHX11_2
  SHX14_2 = SHX3_2
  SHX15_2 = GetPedBoneIndex
  SHX16_2 = SHX3_2
  SHX17_2 = 28422
  SHX15_2 = SHX15_2(SHX16_2, SHX17_2)
  SHX16_2 = 0.04
  SHX17_2 = 0.01
  SHX18_2 = -0.04
  SHX19_2 = -73.89
  SHX20_2 = 27.8
  SHX21_2 = 10.47
  SHX22_2 = true
  SHX23_2 = true
  SHX24_2 = false
  SHX25_2 = false
  SHX26_2 = 1
  SHX27_2 = true
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
  SHX12_2 = DeleteEntity
  SHX13_2 = SHX6_2
  SHX12_2(SHX13_2)
  SHX12_2 = Citizen
  SHX12_2 = SHX12_2.Wait
  SHX13_2 = 500
  SHX12_2(SHX13_2)
  SHX12_2 = ClearPedTasks
  SHX13_2 = SHX3_2
  SHX12_2(SHX13_2)
  SHX12_2 = AttachEntityToEntity
  SHX13_2 = SHX11_2
  SHX14_2 = SHX3_2
  SHX15_2 = GetPedBoneIndex
  SHX16_2 = SHX3_2
  SHX17_2 = 28422
  SHX15_2 = SHX15_2(SHX16_2, SHX17_2)
  SHX16_2 = 0.0
  SHX17_2 = 0.0
  SHX18_2 = 0.0
  SHX19_2 = 0.0
  SHX20_2 = 0.0
  SHX21_2 = 0.0
  SHX22_2 = true
  SHX23_2 = true
  SHX24_2 = false
  SHX25_2 = false
  SHX26_2 = 1
  SHX27_2 = true
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
  SHX12_2 = SHX24_1
  SHX13_2 = "amb@world_human_drinking@coffee@male@idle_a"
  SHX14_2 = "idle_b"
  SHX12_2(SHX13_2, SHX14_2)
  SHX12_2 = Citizen
  SHX12_2 = SHX12_2.Wait
  SHX13_2 = 5000
  SHX12_2(SHX13_2)
  SHX12_2 = ClearPedTasks
  SHX13_2 = SHX3_2
  SHX12_2(SHX13_2)
  SHX12_2 = SHX24_1
  SHX13_2 = "amb@world_human_drinking@coffee@male@exit"
  SHX14_2 = "exit"
  SHX12_2(SHX13_2, SHX14_2)
  SHX12_2 = Citizen
  SHX12_2 = SHX12_2.Wait
  SHX13_2 = 1500
  SHX12_2(SHX13_2)
  SHX12_2 = ClearPedTasks
  SHX13_2 = SHX3_2
  SHX12_2(SHX13_2)
  SHX12_2 = DetachEntity
  SHX13_2 = SHX11_2
  SHX14_2 = true
  SHX15_2 = true
  SHX12_2(SHX13_2, SHX14_2, SHX15_2)
  SHX12_2 = SetEntityAsNoLongerNeeded
  SHX13_2 = SHX11_2
  SHX12_2(SHX13_2)
  SHX12_2 = Citizen
  SHX12_2 = SHX12_2.Wait
  SHX13_2 = 500
  SHX12_2(SHX13_2)
  SHX12_2 = FreezeEntityPosition
  SHX13_2 = SHX11_2
  SHX14_2 = true
  SHX12_2(SHX13_2, SHX14_2)
  SHX12_2 = TriggerEvent
  SHX13_2 = "c82f62b8de"
  SHX14_2 = "water"
  SHX12_2(SHX13_2, SHX14_2)
end
function SHX78_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX50_1.Vendings
  SHX3_2 = SHX3_2.cigarettes
  SHX3_2 = SHX3_2.startAnimXOffset
  if SHX3_2 then
    SHX3_2 = SHX50_1.Vendings
    SHX3_2 = SHX3_2.cigarettes
    SHX3_2 = SHX3_2.startAnimXOffset
    SHX3_2 = SHX3_2[SHX1_2]
    if SHX3_2 then
      goto SHX_LABEL_15
    end
  end
  SHX3_2 = -0.5
  -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
  ::SHX_LABEL_15::
  SHX4_2 = GetOffsetFromEntityInWorldCoords
  SHX5_2 = SHX0_2
  SHX6_2 = SHX3_2
  SHX7_2 = -0.6
  SHX8_2 = -1.1
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = GetEntityRotation
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = SHX64_1
  SHX7_2 = SHX4_2
  SHX8_2 = SHX5_2.z
  SHX9_2 = 3000
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = SHX24_1
  SHX7_2 = "mini@sprunk"
  SHX8_2 = "plyr_buy_drink_pt1"
  SHX9_2 = 16
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = Citizen
  SHX6_2 = SHX6_2.Wait
  SHX7_2 = 1400
  SHX6_2(SHX7_2)
  SHX6_2 = ClearPedTasks
  SHX7_2 = SHX2_2
  SHX6_2(SHX7_2)
end
function SHX79_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX3_2 = SHX54_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = SHX3_2 or SHX4_2
  if SHX3_2 then
    SHX4_2 = SHX3_2[SHX2_2]
  end
  if SHX4_2 then
    SHX5_2 = SHX50_1.Items
    SHX5_2 = SHX5_2[SHX4_2]
    if SHX5_2 then
      SHX5_2 = SHX50_1.Items
      SHX5_2 = SHX5_2[SHX4_2]
      SHX5_2 = SHX5_2.model
      if SHX5_2 then
        goto SHX_LABEL_20
      end
    end
  end
  SHX5_2 = "v_ret_ml_cigs"
  -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
  ::SHX_LABEL_20::
  SHX6_2 = GetEntityCoords
  SHX7_2 = SHX1_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = GetHashKey
  SHX8_2 = SHX5_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = HasModelLoaded
  SHX9_2 = SHX7_2
  SHX8_2 = SHX8_2(SHX9_2)
  if not SHX8_2 then
    SHX8_2 = RequestModel
    SHX9_2 = SHX7_2
    SHX8_2(SHX9_2)
    while true do
      SHX8_2 = HasModelLoaded
      SHX9_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2)
      if SHX8_2 then
        break
      end
      SHX8_2 = Citizen
      SHX8_2 = SHX8_2.Wait
      SHX9_2 = 1
      SHX8_2(SHX9_2)
    end
  end
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.requestEntitySpawn
  SHX9_2 = "vending_pickup"
  SHX10_2 = SHX7_2
  SHX11_2 = SHX6_2
  SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX8_2 = CreateObject
  SHX9_2 = SHX7_2
  SHX10_2 = SHX6_2.x
  SHX11_2 = SHX6_2.y
  SHX12_2 = SHX6_2.z
  SHX13_2 = true
  SHX14_2 = true
  SHX15_2 = false
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX9_2 = SetModelAsNoLongerNeeded
  SHX10_2 = SHX7_2
  SHX9_2(SHX10_2)
  SHX9_2 = SetEntityCoords
  SHX10_2 = SHX8_2
  SHX11_2 = SHX6_2.x
  SHX12_2 = SHX6_2.y
  SHX13_2 = SHX6_2.z
  SHX14_2 = false
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = false
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX9_2 = GetEntityRotation
  SHX10_2 = SHX1_2
  SHX11_2 = 2
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX10_2 = SetEntityRotation
  SHX11_2 = SHX8_2
  SHX12_2 = SHX9_2.x
  SHX13_2 = SHX9_2.y
  SHX14_2 = SHX9_2.z
  SHX15_2 = 2
  SHX16_2 = false
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  return SHX8_2
end
function SHX80_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = GetOffsetFromEntityInWorldCoords
  SHX2_2 = SHX0_2
  SHX3_2 = -0.1
  SHX4_2 = -0.6
  SHX5_2 = -1.1
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = GetEntityRotation
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX64_1
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2.z
  SHX6_2 = 3000
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SHX24_1
  SHX4_2 = "pickup_object"
  SHX5_2 = "putdown_low"
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.Wait
  SHX4_2 = 1200
  SHX3_2(SHX4_2)
end
function SHX81_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX78_1
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX79_1
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX7_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = SHX62_1
  SHX6_2 = SHX4_2
  SHX7_2 = "clip@fagsfall_gen"
  SHX8_2 = "fags_fall_gen"
  SHX9_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = Citizen
  SHX5_2 = SHX5_2.Wait
  SHX6_2 = 1000
  SHX5_2(SHX6_2)
  SHX5_2 = SHX80_1
  SHX6_2 = SHX1_2
  SHX5_2(SHX6_2)
  SHX5_2 = GetPedBoneIndex
  SHX6_2 = SHX3_2
  SHX7_2 = 28422
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = SHX63_1
  SHX7_2 = SHX4_2
  SHX8_2 = "clip@fagsfall_gen"
  SHX9_2 = "fags_fall_gen"
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = AttachEntityToEntity
  SHX7_2 = SHX4_2
  SHX8_2 = SHX3_2
  SHX9_2 = SHX5_2
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = 0.0
  SHX15_2 = 130.0
  SHX16_2 = true
  SHX17_2 = true
  SHX18_2 = false
  SHX19_2 = false
  SHX20_2 = 2
  SHX21_2 = true
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX6_2 = ClearPedTasks
  SHX7_2 = SHX3_2
  SHX6_2(SHX7_2)
  SHX6_2 = SHX24_1
  SHX7_2 = "mp_common_miss"
  SHX8_2 = "put_away_coke"
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = Citizen
  SHX6_2 = SHX6_2.Wait
  SHX7_2 = 700
  SHX6_2(SHX7_2)
  SHX6_2 = ClearPedTasks
  SHX7_2 = SHX3_2
  SHX6_2(SHX7_2)
  SHX6_2 = SetEntityAsMissionEntity
  SHX7_2 = SHX4_2
  SHX8_2 = true
  SHX9_2 = true
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = DeleteEntity
  SHX7_2 = SHX4_2
  SHX6_2(SHX7_2)
  SHX6_2 = SHX54_1
  SHX7_2 = SHX0_2
  SHX8_2 = SHX1_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = SHX6_2 or SHX7_2
  if SHX6_2 then
    SHX7_2 = SHX6_2[SHX2_2]
  end
  if SHX7_2 then
    SHX8_2 = TriggerEvent
    SHX9_2 = "c82f62b8de"
    SHX10_2 = SHX7_2
    SHX8_2(SHX9_2, SHX10_2)
  end
end
SHX82_1 = RegisterNetEvent
SHX83_1 = "60eadad9f8"
function SHX84_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX5_2 = GetClosestObjectOfType
  SHX6_2 = SHX0_2.x
  SHX7_2 = SHX0_2.y
  SHX8_2 = SHX0_2.z
  SHX9_2 = 3.0
  SHX10_2 = SHX1_2
  SHX11_2 = false
  SHX12_2 = false
  SHX13_2 = false
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX6_2 = DoesEntityExist
  SHX7_2 = SHX5_2
  SHX6_2 = SHX6_2(SHX7_2)
  if SHX6_2 then
    SHX6_2 = RequestAnimDict
    SHX7_2 = SHX2_2
    SHX6_2(SHX7_2)
    while true do
      SHX6_2 = HasAnimDictLoaded
      SHX7_2 = SHX2_2
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        break
      end
      SHX6_2 = Citizen
      SHX6_2 = SHX6_2.Wait
      SHX7_2 = 0
      SHX6_2(SHX7_2)
    end
    SHX6_2 = PlayEntityAnim
    SHX7_2 = SHX5_2
    SHX8_2 = SHX3_2
    SHX9_2 = SHX2_2
    SHX10_2 = 8.0
    SHX11_2 = SHX4_2 or SHX11_2
    if not SHX4_2 then
      SHX11_2 = false
    end
    SHX12_2 = true
    SHX13_2 = false
    SHX14_2 = 0.0
    SHX15_2 = 0
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX6_2 = RemoveAnimDict
    SHX7_2 = SHX2_2
    SHX6_2(SHX7_2)
  end
end
SHX82_1(SHX83_1, SHX84_1)
SHX82_1 = RegisterNetEvent
SHX83_1 = "4e2aeb078b"
function SHX84_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX4_2 = GetClosestObjectOfType
  SHX5_2 = SHX0_2.x
  SHX6_2 = SHX0_2.y
  SHX7_2 = SHX0_2.z
  SHX8_2 = 3.0
  SHX9_2 = SHX1_2
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX5_2 = DoesEntityExist
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  if SHX5_2 then
    SHX5_2 = StopEntityAnim
    SHX6_2 = SHX4_2
    SHX7_2 = SHX3_2
    SHX8_2 = SHX2_2
    SHX9_2 = 0.0
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  end
end
SHX82_1(SHX83_1, SHX84_1)
SHX82_1 = RegisterNetEvent
SHX83_1 = "1bb98aff8b"
function SHX84_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = GetClosestObjectOfType
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.y
  SHX4_2 = SHX0_2.z
  SHX5_2 = 5.0
  SHX6_2 = GetHashKey
  SHX7_2 = "mxc_vend_prop_snak_door"
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX2_2 = DoesEntityExist
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = print
    SHX3_2 = "Failed to find snack door for opening animation."
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = GetEntityRotation
  SHX3_2 = SHX1_2
  SHX4_2 = 1
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = SHX29_1
  SHX4_2 = SHX1_2
  SHX5_2 = vec3
  SHX6_2 = 30.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = SHX2_2 + SHX5_2
  SHX6_2 = 200
  SHX7_2 = 1
  SHX8_2 = "easeInOut"
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.Wait
  SHX4_2 = 200
  SHX3_2(SHX4_2)
  SHX3_2 = SHX29_1
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2
  SHX6_2 = 200
  SHX7_2 = 1
  SHX8_2 = "easeInOut"
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
SHX82_1(SHX83_1, SHX84_1)
SHX82_1 = RegisterNetEvent
SHX83_1 = "32e4f00ebc"
function SHX84_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX51_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX82_1(SHX83_1, SHX84_1)
function SHX82_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX4_2 = SHX31_1
  SHX5_2 = SHX2_2
  SHX6_2 = "obj"
  SHX7_2 = SHX0_2
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SHX31_1
  SHX5_2 = SHX2_2
  SHX6_2 = "vendingName"
  SHX7_2 = SHX1_2
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SHX50_1.Vendings
  SHX4_2 = SHX4_2[SHX1_2]
  SHX4_2 = SHX4_2.interaction
  SHX4_2 = SHX4_2.vanilla
  SHX4_2 = SHX4_2.distance
  if not SHX4_2 then
    SHX4_2 = SHX50_1.DefaultInteractionDistance
  end
  SHX5_2 = SHX38_1
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = GetOffsetFromEntityInWorldCoords
  SHX7_2 = SHX0_2
  SHX8_2 = 0.0
  SHX9_2 = SHX5_2.y
  SHX9_2 = -SHX9_2
  SHX10_2 = 0.0
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = SHX35_1
  SHX8_2 = "vending:"
  SHX9_2 = SHX2_2
  SHX8_2 = SHX8_2 .. SHX9_2
  SHX9_2 = SHX6_2
  SHX10_2 = 0.0
  SHX11_2 = SHX4_2
  SHX12_2 = {}
  SHX12_2.notify = SHX3_2
  SHX12_2.slice = "ignore"
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
function SHX83_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX31_1
  SHX2_2 = SHX0_2
  SHX3_2 = "obj"
  SHX4_2 = nil
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SHX31_1
  SHX2_2 = SHX0_2
  SHX3_2 = "vendingName"
  SHX4_2 = nil
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SHX37_1
  SHX2_2 = "vending:"
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX1_2(SHX2_2)
end
function SHX84_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = LocalPlayer
  SHX3_2 = SHX3_2.state
  SHX3_2 = SHX3_2.interactingVending
  if SHX3_2 then
    return
  end
  SHX3_2 = SHX30_1
  SHX3_2()
  SHX3_2 = SHX51_1
  SHX3_2 = SHX3_2[SHX2_2]
  if SHX3_2 then
    SHX3_2 = SHX28_1
    SHX4_2 = SHX50_1.Translations
    SHX4_2 = SHX4_2.already_used
    if not SHX4_2 then
      SHX4_2 = "~r~In use.~w~"
    end
    SHX5_2 = 2000
    SHX3_2(SHX4_2, SHX5_2)
    return
  end
  SHX3_2 = SHX36_1
  SHX4_2 = "vending:"
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2 .. SHX5_2
  SHX5_2 = 0.0
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SHX30_1
  SHX3_2()
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "32e4f00ebc"
  SHX5_2 = SHX2_2
  SHX6_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = LocalPlayer
  SHX3_2 = SHX3_2.state
  SHX3_2.interactingVending = true
  SHX3_2 = SHX50_1.Vendings
  SHX3_2 = SHX3_2[SHX1_2]
  SHX4_2 = SHX3_2
  SHX3_2 = SHX3_2.OnInteraction
  SHX5_2 = SHX0_2
  SHX6_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SHX50_1.Vendings
  SHX3_2 = SHX3_2[SHX1_2]
  SHX3_2 = SHX3_2.interaction
  SHX3_2 = SHX3_2.vanilla
  SHX3_2 = SHX3_2.distance
  if not SHX3_2 then
    SHX3_2 = SHX50_1.DefaultInteractionDistance
  end
  SHX4_2 = SHX36_1
  SHX5_2 = "vending:"
  SHX6_2 = SHX2_2
  SHX5_2 = SHX5_2 .. SHX6_2
  SHX6_2 = SHX3_2
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = LocalPlayer
  SHX4_2 = SHX4_2.state
  SHX4_2.interactingVending = false
end
SHX85_1 = pairs
SHX86_1 = SHX0_1.vendings
SHX85_1, SHX86_1, SHX87_1, SHX88_1 = SHX85_1(SHX86_1)
for SHX89_1, SHX90_1 in SHX85_1, SHX86_1, SHX87_1, SHX88_1 do
  SHX91_1 = SHX50_1.Vendings
  SHX92_1 = {}
  SHX91_1[SHX89_1] = SHX92_1
  SHX91_1 = pairs
  SHX92_1 = SHX90_1
  SHX91_1, SHX92_1, SHX93_1, SHX94_1 = SHX91_1(SHX92_1)
  for SHX95_1, SHX96_1 in SHX91_1, SHX92_1, SHX93_1, SHX94_1 do
    SHX97_1 = SHX50_1.Vendings
    SHX97_1 = SHX97_1[SHX89_1]
    SHX97_1[SHX95_1] = SHX96_1
  end
end
SHX85_1 = SHX50_1.Vendings
SHX85_1 = SHX85_1.snack
function SHX86_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = SHX70_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX3_2(SHX4_2, SHX5_2)
end
SHX85_1.Near = SHX86_1
SHX85_1 = SHX50_1.Vendings
SHX85_1 = SHX85_1.snack
function SHX86_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = SHX71_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX3_2(SHX4_2, SHX5_2)
end
SHX85_1.Far = SHX86_1
SHX85_1 = SHX50_1.Vendings
SHX85_1 = SHX85_1.snack
function SHX86_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX3_2 = SHX69_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 and "" ~= SHX3_2 then
    SHX4_2 = SHX50_1.Functions
    SHX4_2 = SHX4_2.TryToBuy
    SHX5_2 = SHX0_2
    SHX6_2 = SHX3_2
    SHX7_2 = SHX2_2
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3
      SHX0_3 = SHX72_1
      SHX1_3 = SHX0_2
      SHX2_3 = SHX1_2
      SHX3_3 = SHX3_2
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    end
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  else
    SHX4_2 = TriggerServerEvent
    SHX5_2 = "32e4f00ebc"
    SHX6_2 = SHX2_2
    SHX7_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  end
end
SHX85_1.OnInteraction = SHX86_1
SHX85_1 = SHX50_1.Vendings
SHX85_1 = SHX85_1.soda
function SHX86_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = SHX73_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX0_2.sodaArm
  if not SHX6_2 then
    SHX6_2 = "mxc_vend_prop_soda_shelf"
  end
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
end
SHX85_1.Near = SHX86_1
SHX85_1 = SHX50_1.Vendings
SHX85_1 = SHX85_1.soda
function SHX86_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = SHX74_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX3_2(SHX4_2, SHX5_2)
end
SHX85_1.Far = SHX86_1
SHX85_1 = SHX50_1.Vendings
SHX85_1 = SHX85_1.soda
function SHX86_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX3_2 = SHX69_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 and "" ~= SHX3_2 then
    SHX4_2 = SHX50_1.Functions
    SHX4_2 = SHX4_2.TryToBuy
    SHX5_2 = SHX0_2
    SHX6_2 = SHX3_2
    SHX7_2 = SHX2_2
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3
      SHX0_3 = SHX75_1
      SHX1_3 = SHX0_2
      SHX2_3 = SHX1_2
      SHX3_3 = SHX3_2
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    end
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  else
    SHX4_2 = TriggerServerEvent
    SHX5_2 = "32e4f00ebc"
    SHX6_2 = SHX2_2
    SHX7_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  end
end
SHX85_1.OnInteraction = SHX86_1
SHX85_1 = SHX50_1.Vendings
SHX85_1 = SHX85_1.soda_2
function SHX86_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = SHX73_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX0_2.sodaArm
  if not SHX6_2 then
    SHX6_2 = "mxc_vend_prop_soda_shelf2"
  end
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
end
SHX85_1.Near = SHX86_1
SHX85_1 = SHX50_1.Vendings
SHX85_1 = SHX85_1.soda_2
function SHX86_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = SHX74_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX3_2(SHX4_2, SHX5_2)
end
SHX85_1.Far = SHX86_1
SHX85_1 = SHX50_1.Vendings
SHX85_1 = SHX85_1.soda_2
function SHX86_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX3_2 = SHX69_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 and "" ~= SHX3_2 then
    SHX4_2 = SHX50_1.Functions
    SHX4_2 = SHX4_2.TryToBuy
    SHX5_2 = SHX0_2
    SHX6_2 = SHX3_2
    SHX7_2 = SHX2_2
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3
      SHX0_3 = SHX75_1
      SHX1_3 = SHX0_2
      SHX2_3 = SHX1_2
      SHX3_3 = SHX3_2
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    end
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  else
    SHX4_2 = TriggerServerEvent
    SHX5_2 = "32e4f00ebc"
    SHX6_2 = SHX2_2
    SHX7_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  end
end
SHX85_1.OnInteraction = SHX86_1
SHX85_1 = SHX50_1.Vendings
SHX85_1 = SHX85_1.coffee
function SHX86_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = SHX50_1.Functions
  SHX3_2 = SHX3_2.TryToBuy
  SHX4_2 = SHX0_2
  SHX5_2 = SHX0_2.item
  SHX6_2 = SHX2_2
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = SHX76_1
    SHX1_3 = SHX0_2
    SHX2_3 = SHX1_2
    SHX3_3 = true
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
  end
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
end
SHX85_1.OnInteraction = SHX86_1
SHX85_1 = SHX50_1.Vendings
SHX85_1 = SHX85_1.water
function SHX86_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = SHX50_1.Functions
  SHX3_2 = SHX3_2.TryToBuy
  SHX4_2 = SHX0_2
  SHX5_2 = SHX0_2.item
  SHX6_2 = SHX2_2
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = SHX77_1
    SHX1_3 = SHX0_2
    SHX2_3 = SHX1_2
    SHX0_3(SHX1_3, SHX2_3)
  end
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
end
SHX85_1.OnInteraction = SHX86_1
SHX85_1 = SHX50_1.Vendings
SHX85_1 = SHX85_1.cigarettes
function SHX86_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX3_2 = SHX69_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 and "" ~= SHX3_2 then
    SHX4_2 = SHX50_1.Functions
    SHX4_2 = SHX4_2.TryToBuy
    SHX5_2 = SHX0_2
    SHX6_2 = SHX3_2
    SHX7_2 = SHX2_2
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3
      SHX0_3 = SHX81_1
      SHX1_3 = SHX0_2
      SHX2_3 = SHX1_2
      SHX3_3 = SHX3_2
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    end
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  else
    SHX4_2 = TriggerServerEvent
    SHX5_2 = "32e4f00ebc"
    SHX6_2 = SHX2_2
    SHX7_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  end
end
SHX85_1.OnInteraction = SHX86_1
SHX85_1 = SHX50_1.Vendings
SHX85_1 = SHX85_1.svapo
SHX86_1 = SHX50_1.Vendings
SHX86_1 = SHX86_1.snack
SHX86_1 = SHX86_1.Near
SHX85_1.Near = SHX86_1
SHX85_1 = SHX50_1.Vendings
SHX85_1 = SHX85_1.svapo
SHX86_1 = SHX50_1.Vendings
SHX86_1 = SHX86_1.snack
SHX86_1 = SHX86_1.Far
SHX85_1.Far = SHX86_1
SHX85_1 = SHX50_1.Vendings
SHX85_1 = SHX85_1.svapo
SHX86_1 = SHX50_1.Vendings
SHX86_1 = SHX86_1.snack
SHX86_1 = SHX86_1.OnInteraction
SHX85_1.OnInteraction = SHX86_1
SHX85_1 = SHX52_1
SHX85_1()
SHX85_1 = SHX53_1
SHX85_1()
SHX85_1 = LocalPlayer
SHX85_1 = SHX85_1.state
SHX85_1.interactingVending = false
SHX85_1 = SHX40_1
SHX86_1 = "marker"
function SHX87_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = SHX0_2
  SHX1_2 = SHX0_2.find
  SHX3_2 = "vending"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX2_2 = SHX0_2
    SHX1_2 = SHX0_2.match
    SHX3_2 = "vending:(.+)"
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX2_2 = SHX32_1
    SHX3_2 = SHX1_2
    SHX4_2 = "obj"
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX3_2 = SHX32_1
    SHX4_2 = SHX1_2
    SHX5_2 = "vendingName"
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if SHX2_2 and SHX3_2 then
      SHX4_2 = SHX84_1
      SHX5_2 = SHX2_2
      SHX6_2 = SHX3_2
      SHX7_2 = SHX1_2
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    end
  end
end
SHX85_1(SHX86_1, SHX87_1)
SHX85_1 = Citizen
SHX85_1 = SHX85_1.CreateThread
function SHX86_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerCoords
    SHX0_2 = SHX0_2()
    SHX1_2 = SHX58_1
    function SHX2_2(SHX0_3, SHX1_3, SHX2_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
      SHX3_3 = GetEntityCoords
      SHX4_3 = SHX2_3
      SHX3_3 = SHX3_3(SHX4_3)
      SHX4_3 = SHX0_2
      SHX4_3 = SHX3_3 - SHX4_3
      SHX4_3 = #SHX4_3
      SHX5_3 = SHX55_1
      SHX6_3 = SHX2_3
      SHX7_3 = SHX0_3
      SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
      SHX6_3 = Entity
      SHX7_3 = SHX2_3
      SHX6_3 = SHX6_3(SHX7_3)
      SHX6_3 = SHX6_3.state
      SHX7_3 = SHX50_1.RenderDistance
      if SHX4_3 < SHX7_3 then
        SHX7_3 = SHX6_3.isNear
        if not SHX7_3 then
          SHX7_3 = SHX1_3.interaction
          if SHX7_3 then
            SHX7_3 = SHX82_1
            SHX8_3 = SHX2_3
            SHX9_3 = SHX0_3
            SHX10_3 = SHX5_3
            SHX11_3 = SHX50_1.Translations
            SHX12_3 = SHX1_3.interaction
            SHX12_3 = SHX12_3.vanilla
            SHX12_3 = SHX12_3.notify
            SHX11_3 = SHX11_3[SHX12_3]
            if not SHX11_3 then
              SHX11_3 = "Press E"
            end
            SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3)
          end
          SHX7_3 = SHX1_3.blip
          if SHX7_3 then
            SHX7_3 = SHX50_1.Blips
            if SHX7_3 then
              SHX7_3 = SHX39_1
              SHX8_3 = nil
              SHX9_3 = SHX3_3
              SHX10_3 = SHX1_3.blip
              SHX10_3 = SHX10_3.sprite
              SHX11_3 = SHX1_3.blip
              SHX11_3 = SHX11_3.color
              SHX12_3 = SHX1_3.blip
              SHX12_3 = SHX12_3.size
              SHX7_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
              SHX8_3 = SetBlipDisplay
              SHX9_3 = SHX7_3
              SHX10_3 = 5
              SHX8_3(SHX9_3, SHX10_3)
              SHX9_3 = SHX6_3
              SHX8_3 = SHX6_3.set
              SHX10_3 = "blip"
              SHX11_3 = SHX7_3
              SHX12_3 = false
              SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3)
            end
          end
          SHX7_3 = SHX1_3.Near
          if SHX7_3 then
            SHX8_3 = SHX1_3
            SHX7_3 = SHX1_3.Near
            SHX9_3 = SHX2_3
            SHX10_3 = SHX5_3
            SHX7_3(SHX8_3, SHX9_3, SHX10_3)
          end
          SHX8_3 = SHX6_3
          SHX7_3 = SHX6_3.set
          SHX9_3 = "isNear"
          SHX10_3 = true
          SHX11_3 = false
          SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3)
        end
      else
        SHX7_3 = SHX6_3.isNear
        if SHX7_3 then
          SHX7_3 = SHX1_3.interaction
          if SHX7_3 then
            SHX7_3 = SHX83_1
            SHX8_3 = SHX5_3
            SHX7_3(SHX8_3)
          end
          SHX7_3 = SHX1_3.blip
          if SHX7_3 then
            SHX7_3 = SHX50_1.Blips
            if SHX7_3 then
              SHX7_3 = SHX6_3.blip
              if SHX7_3 then
                SHX7_3 = RemoveBlip
                SHX8_3 = SHX6_3.blip
                SHX7_3(SHX8_3)
              end
              SHX8_3 = SHX6_3
              SHX7_3 = SHX6_3.set
              SHX9_3 = "blip"
              SHX10_3 = nil
              SHX11_3 = false
              SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3)
            end
          end
          SHX7_3 = SHX1_3.Far
          if SHX7_3 then
            SHX8_3 = SHX1_3
            SHX7_3 = SHX1_3.Far
            SHX9_3 = SHX2_3
            SHX10_3 = SHX5_3
            SHX7_3(SHX8_3, SHX9_3, SHX10_3)
          end
          SHX8_3 = SHX6_3
          SHX7_3 = SHX6_3.set
          SHX9_3 = "isNear"
          SHX10_3 = nil
          SHX11_3 = false
          SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3)
        end
      end
    end
    SHX1_2(SHX2_2)
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 2000
    SHX1_2(SHX2_2)
  end
end
SHX85_1(SHX86_1)
SHX85_1 = AddEventHandler
SHX86_1 = "onResourceStop"
function SHX87_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX0_2 == SHX1_2 then
    SHX1_2 = SHX30_1
    SHX1_2()
    SHX1_2 = SHX58_1
    function SHX2_2(SHX0_3, SHX1_3, SHX2_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
      SHX3_3 = SHX55_1
      SHX4_3 = SHX2_3
      SHX5_3 = SHX0_3
      SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
      SHX4_3 = Entity
      SHX5_3 = SHX2_3
      SHX4_3 = SHX4_3(SHX5_3)
      SHX4_3 = SHX4_3.state
      SHX5_3 = SHX4_3.isNear
      if SHX5_3 then
        SHX5_3 = SHX1_3.interaction
        if SHX5_3 then
          SHX5_3 = SHX83_1
          SHX6_3 = SHX3_3
          SHX5_3(SHX6_3)
        end
        SHX5_3 = SHX1_3.Far
        if SHX5_3 then
          SHX6_3 = SHX1_3
          SHX5_3 = SHX1_3.Far
          SHX7_3 = SHX2_3
          SHX8_3 = SHX3_3
          SHX5_3(SHX6_3, SHX7_3, SHX8_3)
        end
        SHX6_3 = SHX4_3
        SHX5_3 = SHX4_3.set
        SHX7_3 = "isNear"
        SHX8_3 = nil
        SHX9_3 = false
        SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      end
    end
    SHX1_2(SHX2_2)
  end
end
SHX85_1(SHX86_1, SHX87_1)
