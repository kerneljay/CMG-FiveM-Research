-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_koth"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = nil
SHX2_1 = nil
SHX3_1 = 0
SHX4_1 = nil
SHX5_1 = nil
SHX6_1 = nil
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "f60854b55a"
  SHX0_2(SHX1_2)
end
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "8ef29fe4c8"
  SHX0_2(SHX1_2)
end
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX1_2 = SHX0_1.locations
  SHX2_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX2_2]
  if not SHX1_2 then
    return
  end
  SHX2_2 = SHX0_2.distance
  SHX3_2 = SHX1_2.radius
  if SHX2_2 > SHX3_2 then
    SHX2_2 = SHX2_1
    if SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.getLocalPlayerSrc
      SHX2_2 = SHX2_2()
      SHX3_2 = SHX2_1
      if SHX2_2 == SHX3_2 then
        SHX2_2 = TriggerServerEvent
        SHX3_2 = "2c0f07cb87"
        SHX2_2(SHX3_2)
      end
    end
    return
  end
  SHX2_2 = nil
  SHX3_2 = SHX2_1
  if SHX3_2 then
    SHX3_2 = GetPlayerFromServerId
    SHX4_2 = SHX2_1
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 >= 0 then
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.getPlayerName
      SHX5_2 = SHX3_2
      SHX4_2 = SHX4_2(SHX5_2)
      SHX2_2 = SHX4_2
    end
  end
  if SHX2_2 then
    SHX3_2 = SHX0_1.captureTimeMsec
    SHX4_2 = GetNetworkTime
    SHX4_2 = SHX4_2()
    SHX5_2 = SHX3_1
    SHX4_2 = SHX4_2 - SHX5_2
    SHX3_2 = SHX3_2 - SHX4_2
    SHX4_2 = math
    SHX4_2 = SHX4_2.floor
    SHX5_2 = SHX3_2 / 1000
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = math
    SHX5_2 = SHX5_2.max
    SHX6_2 = SHX4_2
    SHX7_2 = 0
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX4_2 = SHX5_2
    SHX5_2 = DrawAdvancedText
    SHX6_2 = 0.931
    SHX7_2 = 0.945
    SHX8_2 = 0.005
    SHX9_2 = 0.0028
    SHX10_2 = 0.49
    SHX11_2 = string
    SHX11_2 = SHX11_2.format
    SHX12_2 = "%s is capturing (%s seconds remaining)"
    SHX13_2 = SHX2_2
    SHX14_2 = SHX4_2
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    SHX12_2 = 255
    SHX13_2 = 23
    SHX14_2 = 141
    SHX15_2 = 255
    SHX16_2 = 7
    SHX17_2 = 0
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  else
    SHX3_2 = DrawAdvancedText
    SHX4_2 = 0.931
    SHX5_2 = 0.945
    SHX6_2 = 0.005
    SHX7_2 = 0.0028
    SHX8_2 = 0.49
    SHX9_2 = "Area is not captured by anyone."
    SHX10_2 = 255
    SHX11_2 = 23
    SHX12_2 = 141
    SHX13_2 = 255
    SHX14_2 = 7
    SHX15_2 = 0
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  end
  SHX3_2 = SHX0_2.distance
  if SHX3_2 < 2.0 then
    SHX3_2 = drawNativeNotification
    SHX4_2 = "Press ~INPUT_CONTEXT~ to capture the area."
    SHX3_2(SHX4_2)
    SHX3_2 = IsControlJustPressed
    SHX4_2 = 0
    SHX5_2 = 51
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if SHX3_2 then
      SHX3_2 = TriggerServerEvent
      SHX4_2 = "ee55bf95bd"
      SHX3_2(SHX4_2)
    end
  end
end
SHX10_1 = RegisterNetEvent
SHX11_1 = "32da7fdffa"
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = SHX0_1.locations
  SHX1_2 = SHX1_2[SHX0_2]
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.createArea
  SHX3_2 = "koth"
  SHX4_2 = SHX1_2.position
  SHX5_2 = 100.0
  SHX6_2 = 100.0
  SHX7_2 = SHX7_1
  SHX8_2 = SHX8_1
  SHX9_2 = SHX9_1
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_1 = SHX2_2
  SHX2_2 = AddBlipForRadius
  SHX3_2 = SHX1_2.position
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX1_2.position
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX1_2.position
  SHX5_2 = SHX5_2.z
  SHX6_2 = 15.0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX5_1 = SHX2_2
  SHX2_2 = SetBlipAlpha
  SHX3_2 = SHX5_1
  SHX4_2 = 255
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetBlipPriority
  SHX3_2 = SHX5_1
  SHX4_2 = 2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.addMarker
  SHX3_2 = SHX1_2.position
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX1_2.position
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX1_2.position
  SHX5_2 = SHX5_2.z
  SHX6_2 = 1.0
  SHX7_2 = 1.0
  SHX8_2 = 1.0
  SHX9_2 = 255
  SHX10_2 = 0
  SHX11_2 = 0
  SHX12_2 = 255
  SHX13_2 = 15.0
  SHX14_2 = 42
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX6_1 = SHX2_2
  SHX1_1 = SHX0_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = RegisterNetEvent
SHX11_1 = "31cdb976ff"
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = nil
  SHX1_1 = SHX0_2
  SHX0_2 = nil
  SHX2_1 = SHX0_2
  SHX0_2 = 0
  SHX3_1 = SHX0_2
  SHX0_2 = SHX4_1
  if SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.removeArea
    SHX1_2 = SHX4_1
    SHX0_2(SHX1_2)
    SHX0_2 = nil
    SHX4_1 = SHX0_2
  end
  SHX0_2 = SHX5_1
  if SHX0_2 then
    SHX0_2 = RemoveBlip
    SHX1_2 = SHX5_1
    SHX0_2(SHX1_2)
    SHX0_2 = nil
    SHX5_1 = SHX0_2
  end
  SHX0_2 = SHX6_1
  if SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.removeMarker
    SHX1_2 = SHX6_1
    SHX0_2(SHX1_2)
    SHX0_2 = nil
    SHX6_1 = SHX0_2
  end
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = RegisterNetEvent
SHX11_1 = "5fc8d085a5"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX2_1 = SHX0_2
  SHX3_1 = SHX1_2
end
SHX10_1(SHX11_1, SHX12_1)
