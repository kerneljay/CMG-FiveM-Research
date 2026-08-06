-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_radios"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = 0
SHX3_1 = false
SHX4_1 = false
SHX5_1 = {}
SHX6_1 = {}
SHX7_1 = 0
SHX8_1 = CMG
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX2_1
  SHX0_2 = 0 ~= SHX0_2
  return SHX0_2
end
SHX8_1.isInRadioChannel = SHX9_1
SHX8_1 = CMG
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isEmergencyService
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = SHX4_1
    return SHX0_2
  else
    SHX0_2 = SHX3_1
    return SHX0_2
  end
end
SHX8_1.hasRadioItem = SHX9_1
SHX8_1 = CMG
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX5_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX1_2 = false
  end
  return SHX1_2
end
SHX8_1.doesPlayerHaveRadioItem = SHX9_1
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX2_2 = true
    return SHX2_2
  end
  SHX2_2 = SHX1_2.noRadioItemRequired
  SHX2_2 = not SHX2_2
  return SHX2_2
end
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasRadioItem
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = true
    return SHX0_2
  end
  SHX0_2 = pairs
  SHX1_2 = SHX1_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.noRadioItemRequired
    if SHX6_2 then
      SHX6_2 = true
      return SHX6_2
    end
  end
  SHX0_2 = false
  return SHX0_2
end
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasRadioItem
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isInRadioChannel
    SHX1_2 = SHX1_2()
    if SHX1_2 then
      SHX1_2 = SHX8_1
      SHX2_2 = SHX2_1
      SHX1_2 = SHX1_2(SHX2_2)
      if not SHX1_2 then
        SHX0_2 = true
      end
    end
  end
  if SHX0_2 then
    SHX1_2 = LocalPlayer
    SHX1_2 = SHX1_2.state
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.set
    SHX3_2 = "hasRadio"
    SHX4_2 = true
    SHX5_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  else
    SHX1_2 = LocalPlayer
    SHX1_2 = SHX1_2.state
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.set
    SHX3_2 = "hasRadio"
    SHX4_2 = nil
    SHX5_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  end
end
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SendNUIMessage
  SHX1_2 = {}
  SHX1_2.radioClear = true
  SHX0_2(SHX1_2)
end
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SendNUIMessage
  SHX2_2 = {}
  SHX2_2.radioVisibility = true
  SHX2_2.isVisible = SHX0_2
  SHX1_2(SHX2_2)
end
SHX13_1 = CMG
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = GetResourceKvpInt
  SHX1_2 = "cmg_radio_transparent_background"
  SHX0_2 = SHX0_2(SHX1_2)
  SHX0_2 = 1 == SHX0_2
  SHX1_2 = SendNUIMessage
  SHX2_2 = {}
  SHX2_2.radioTransparentBackground = true
  SHX2_2.enabled = SHX0_2
  SHX1_2(SHX2_2)
end
SHX13_1.syncRadioListNuiAppearance = SHX14_1
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SendNUIMessage
  SHX2_2 = {}
  SHX2_2.radioHeader = true
  SHX2_2.name = SHX0_2
  SHX1_2(SHX2_2)
end
function SHX14_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2
  SHX3_2 = SendNUIMessage
  SHX4_2 = {}
  SHX4_2.radioAdd = true
  SHX4_2.playerSrc = SHX0_2
  SHX4_2.name = SHX1_2
  SHX4_2.sortOrder = SHX2_2
  SHX3_2(SHX4_2)
end
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SendNUIMessage
  SHX2_2 = {}
  SHX2_2.radioRemove = true
  SHX2_2.playerSrc = SHX0_2
  SHX1_2(SHX2_2)
end
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SendNUIMessage
  SHX3_2 = {}
  SHX3_2.radioTalking = true
  SHX3_2.playerSrc = SHX0_2
  SHX3_2.isTalking = SHX1_2
  SHX2_2(SHX3_2)
end
function SHX17_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SendNUIMessage
  SHX3_2 = {}
  SHX3_2.radioMuted = true
  SHX3_2.playerSrc = SHX0_2
  SHX3_2.isMuted = SHX1_2
  SHX2_2(SHX3_2)
end
SHX18_1 = RegisterNetEvent
SHX19_1 = "a38ff88f92"
function SHX20_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = SHX1_1
  SHX3_2 = SHX3_2[SHX0_2]
  if not SHX3_2 then
    return
  end
  SHX4_2 = SHX3_2.players
  SHX4_2[SHX1_2] = SHX2_2
  SHX4_2 = SHX2_1
  if SHX0_2 == SHX4_2 then
    SHX4_2 = SHX14_1
    SHX5_2 = SHX1_2
    SHX6_2 = SHX2_2.name
    SHX7_2 = SHX2_2.sortOrder
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "41653b2e1e"
function SHX20_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2[SHX0_2]
  if not SHX2_2 then
    return
  end
  SHX3_2 = SHX2_2.players
  SHX3_2[SHX1_2] = nil
  SHX3_2 = SHX2_1
  if SHX0_2 == SHX3_2 then
    SHX3_2 = SHX15_1
    SHX4_2 = SHX1_2
    SHX3_2(SHX4_2)
  end
end
SHX18_1(SHX19_1, SHX20_1)
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = exports
  SHX0_2 = SHX0_2["pma-voice"]
  SHX1_2 = SHX0_2
  SHX0_2 = SHX0_2.setRadioChannel
  SHX2_2 = 0
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX12_1
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = SHX11_1
  SHX0_2()
  SHX0_2 = 0
  SHX2_1 = SHX0_2
  SHX0_2 = SHX10_1
  SHX0_2()
end
SHX19_1 = RegisterNetEvent
SHX20_1 = "4613b3b411"
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX18_1
  SHX0_2()
  SHX0_2 = {}
  SHX1_1 = SHX0_2
  SHX0_2 = SHX10_1
  SHX0_2()
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = RegisterNetEvent
SHX20_1 = "pma-voice:setTalkingOnRadio"
function SHX21_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX16_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX19_1(SHX20_1, SHX21_1)
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.insert
  SHX2_2 = SHX6_1
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = exports
  SHX1_2 = SHX1_2["pma-voice"]
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.overrideProximityRange
  SHX3_2 = SHX6_1
  SHX4_2 = #SHX3_2
  SHX3_2 = SHX6_1
  SHX3_2 = SHX3_2[SHX4_2]
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = table
  SHX0_2 = SHX0_2.remove
  SHX1_2 = SHX6_1
  SHX2_2 = SHX6_1
  SHX2_2 = #SHX2_2
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX6_1
  SHX1_2 = #SHX0_2
  SHX0_2 = SHX6_1
  SHX0_2 = SHX0_2[SHX1_2]
  if SHX0_2 then
    SHX0_2 = exports
    SHX0_2 = SHX0_2["pma-voice"]
    SHX1_2 = SHX0_2
    SHX0_2 = SHX0_2.overrideProximityRange
    SHX2_2 = SHX6_1
    SHX3_2 = #SHX2_2
    SHX2_2 = SHX6_1
    SHX2_2 = SHX2_2[SHX3_2]
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  else
    SHX0_2 = exports
    SHX0_2 = SHX0_2["pma-voice"]
    SHX1_2 = SHX0_2
    SHX0_2 = SHX0_2.clearProximityOverride
    SHX0_2(SHX1_2)
  end
end
SHX21_1 = false
SHX22_1 = AddEventHandler
SHX23_1 = "pma-voice:radioActive"
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX16_1
  SHX2_2 = GetPlayerServerId
  SHX3_2 = PlayerId
  SHX3_2 = SHX3_2()
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
  if SHX0_2 then
    SHX1_2 = SHX21_1
    if not SHX1_2 then
      SHX1_2 = SHX19_1
      SHX2_2 = 0.75
      SHX1_2(SHX2_2)
      SHX1_2 = true
      SHX21_1 = SHX1_2
    end
  else
    SHX1_2 = SHX21_1
    if SHX1_2 then
      SHX1_2 = SHX20_1
      SHX1_2()
      SHX1_2 = false
      SHX21_1 = SHX1_2
    end
  end
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = RMenu
SHX22_1 = SHX22_1.Add
SHX23_1 = "radios"
SHX24_1 = "mainmenu"
SHX25_1 = RageUI
SHX25_1 = SHX25_1.CreateMenu
SHX26_1 = "Radios"
SHX27_1 = "Main Menu"
SHX28_1 = CMG
SHX28_1 = SHX28_1.getRageUIMenuWidth
SHX28_1 = SHX28_1()
SHX29_1 = CMG
SHX29_1 = SHX29_1.getRageUIMenuHeight
SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1 = SHX29_1()
SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1)
SHX22_1(SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1)
SHX22_1 = RMenu
SHX22_1 = SHX22_1.Add
SHX23_1 = "radios"
SHX24_1 = "advancedeffects"
SHX25_1 = RageUI
SHX25_1 = SHX25_1.CreateSubMenu
SHX26_1 = RMenu
SHX27_1 = SHX26_1
SHX26_1 = SHX26_1.Get
SHX28_1 = "radios"
SHX29_1 = "mainmenu"
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1)
SHX27_1 = "Radios"
SHX28_1 = "Advanced Effects"
SHX29_1 = CMG
SHX29_1 = SHX29_1.getRageUIMenuWidth
SHX29_1 = SHX29_1()
SHX30_1 = CMG
SHX30_1 = SHX30_1.getRageUIMenuHeight
SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1 = SHX30_1()
SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1)
SHX22_1(SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1)
SHX22_1 = RMenu
SHX22_1 = SHX22_1.Add
SHX23_1 = "radios"
SHX24_1 = "channelinfo"
SHX25_1 = RageUI
SHX25_1 = SHX25_1.CreateSubMenu
SHX26_1 = RMenu
SHX27_1 = SHX26_1
SHX26_1 = SHX26_1.Get
SHX28_1 = "radios"
SHX29_1 = "mainmenu"
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1)
SHX27_1 = "Radios"
SHX28_1 = "Channel Information"
SHX29_1 = CMG
SHX29_1 = SHX29_1.getRageUIMenuWidth
SHX29_1 = SHX29_1()
SHX30_1 = CMG
SHX30_1 = SHX30_1.getRageUIMenuHeight
SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1 = SHX30_1()
SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1)
SHX22_1(SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1)
function SHX22_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = GetResourceKvpInt
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 <= 0 then
    SHX2_2 = SHX1_2
  end
  return SHX2_2
end
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = GetResourceKvpString
  SHX1_2 = "radios_advancedEffects"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 or "" == SHX0_2 then
    SHX1_2 = table
    SHX1_2 = SHX1_2.copy
    SHX2_2 = SHX0_1.advancedEffects
    return SHX1_2(SHX2_2)
  else
    SHX1_2 = json
    SHX1_2 = SHX1_2.decode
    SHX2_2 = SHX0_2
    return SHX1_2(SHX2_2)
  end
end
SHX24_1 = 0
SHX25_1 = SHX22_1
SHX26_1 = "radios_volume"
SHX27_1 = 10
SHX25_1 = SHX25_1(SHX26_1, SHX27_1)
SHX26_1 = -1
SHX27_1 = SHX22_1
SHX28_1 = "radios_leftChannelVolume"
SHX29_1 = 6
SHX27_1 = SHX27_1(SHX28_1, SHX29_1)
SHX28_1 = SHX22_1
SHX29_1 = "radios_rightChannelVolume"
SHX30_1 = 6
SHX28_1 = SHX28_1(SHX29_1, SHX30_1)
SHX29_1 = SHX23_1
SHX29_1 = SHX29_1()
SHX30_1 = false
function SHX31_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = SetAudioSubmixOutputVolumes
  SHX1_2 = SHX26_1
  SHX2_2 = 0
  SHX3_2 = SHX27_1
  SHX3_2 = SHX3_2 / 6
  SHX4_2 = SHX28_1
  SHX4_2 = SHX4_2 / 6
  SHX5_2 = 0.0
  SHX6_2 = 0.0
  SHX7_2 = 1.0
  SHX8_2 = 1.0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.advancedEffects
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = SetAudioSubmixEffectParamFloat
    SHX6_2 = SHX26_1
    SHX7_2 = 0
    SHX8_2 = GetHashKey
    SHX9_2 = SHX4_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX9_2 = SHX29_1
    SHX9_2 = SHX9_2[SHX4_2]
    SHX9_2 = SHX9_2 + 0.0
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  end
end
function SHX33_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SetResourceKvp
  SHX1_2 = "radios_advancedEffects"
  SHX2_2 = json
  SHX2_2 = SHX2_2.encode
  SHX3_2 = SHX29_1
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
function SHX34_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX3_2 = SHX8_1
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.hasRadioItem
    SHX3_2 = SHX3_2()
    if not SHX3_2 then
      SHX3_2 = notify
      SHX4_2 = "~r~You are missing a radio item."
      SHX3_2(SHX4_2)
      return
    end
  end
  SHX3_2 = SHX30_1
  if not SHX3_2 then
    SHX3_2 = SHX31_1
    SHX3_2()
    SHX3_2 = SHX32_1
    SHX3_2()
    SHX3_2 = true
    SHX30_1 = SHX3_2
  end
  SHX3_2 = SHX2_1
  if 0 ~= SHX3_2 then
    SHX3_2 = SHX18_1
    SHX3_2()
  end
  SHX3_2 = exports
  SHX3_2 = SHX3_2["pma-voice"]
  SHX4_2 = SHX3_2
  SHX3_2 = SHX3_2.setRadioChannel
  SHX5_2 = SHX0_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = exports
  SHX3_2 = SHX3_2["pma-voice"]
  SHX4_2 = SHX3_2
  SHX3_2 = SHX3_2.getRadioVolume
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 == SHX3_2 then
    SHX3_2 = exports
    SHX3_2 = SHX3_2["pma-voice"]
    SHX4_2 = SHX3_2
    SHX3_2 = SHX3_2.setRadioVolume
    SHX5_2 = SHX22_1
    SHX6_2 = "radios_volume"
    SHX7_2 = 10
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = SHX5_2 * 10
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = SHX12_1
  SHX4_2 = true
  SHX3_2(SHX4_2)
  SHX3_2 = SHX13_1
  SHX4_2 = SHX1_2.name
  SHX3_2(SHX4_2)
  SHX3_2 = pairs
  SHX4_2 = SHX1_2.players
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX14_1
    SHX10_2 = SHX7_2
    SHX11_2 = SHX8_2.name
    SHX12_2 = SHX8_2.sortOrder
    SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX9_2 = SHX8_2.isMuted
    if SHX9_2 then
      SHX9_2 = SHX17_1
      SHX10_2 = SHX7_2
      SHX11_2 = true
      SHX9_2(SHX10_2, SHX11_2)
    end
  end
  SHX2_1 = SHX0_2
  if SHX2_2 then
    SHX3_2 = ExecuteCommand
    SHX4_2 = "toggleradiomute"
    SHX3_2(SHX4_2)
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.syncRadioListNuiAppearance
  SHX3_2()
  SHX3_2 = SHX10_1
  SHX3_2()
end
function SHX35_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = 1
  SHX3_2 = 25
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = pairs
    SHX7_2 = SHX0_2
    SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
    for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
      SHX12_2 = SHX11_2.sortOrder
      if SHX12_2 == SHX5_2 then
        SHX12_2 = SHX1_2
        SHX13_2 = SHX11_2
        SHX12_2(SHX13_2)
      end
    end
  end
end
SHX36_1 = RageUI
SHX36_1 = SHX36_1.CreateWhile
SHX37_1 = 1.0
SHX38_1 = RMenu
SHX39_1 = SHX38_1
SHX38_1 = SHX38_1.Get
SHX40_1 = "radios"
SHX41_1 = "mainmenu"
SHX38_1 = SHX38_1(SHX39_1, SHX40_1, SHX41_1)
SHX39_1 = nil
function SHX40_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "radios"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "Available Channels"
    SHX0_3(SHX1_3)
    SHX0_3 = pairs
    SHX1_3 = SHX1_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX2_1
      SHX6_3 = SHX4_3 == SHX6_3
      SHX7_3 = string
      SHX7_3 = SHX7_3.format
      SHX8_3 = "Connected clients: %d"
      SHX9_3 = table
      SHX9_3 = SHX9_3.count
      SHX10_3 = SHX5_3.players
      SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3 = SHX9_3(SHX10_3)
      SHX7_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
      if SHX6_3 then
        SHX8_3 = {}
        SHX8_3.RightLabel = "(Selected)"
        if SHX8_3 then
          goto SHX_LABEL_31
        end
      end
      SHX8_3 = {}
      -- [FIX IF ERROR] Move ::SHX_LABEL_31:: outside nested blocks until all 'goto SHX_LABEL_31' can see it
      ::SHX_LABEL_31::
      SHX9_3 = RageUI
      SHX9_3 = SHX9_3.ButtonWithStyle
      SHX10_3 = SHX5_3.name
      SHX11_3 = SHX7_3
      SHX12_3 = SHX8_3
      SHX13_3 = true
      function SHX14_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
        if SHX2_4 then
          SHX3_4 = RMenu
          SHX4_4 = SHX3_4
          SHX3_4 = SHX3_4.Get
          SHX5_4 = "radios"
          SHX6_4 = "channelinfo"
          SHX3_4 = SHX3_4(SHX4_4, SHX5_4, SHX6_4)
          SHX4_4 = SHX3_4
          SHX3_4 = SHX3_4.SetSubtitle
          SHX5_4 = string
          SHX5_4 = SHX5_4.format
          SHX6_4 = "Viewing %s"
          SHX7_4 = SHX5_3.name
          SHX5_4, SHX6_4, SHX7_4 = SHX5_4(SHX6_4, SHX7_4)
          SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4)
          SHX3_4 = SHX4_3
          SHX24_1 = SHX3_4
        end
      end
      SHX15_3 = RMenu
      SHX16_3 = SHX15_3
      SHX15_3 = SHX15_3.Get
      SHX17_3 = "radios"
      SHX18_3 = "channelinfo"
      SHX15_3, SHX16_3, SHX17_3, SHX18_3 = SHX15_3(SHX16_3, SHX17_3, SHX18_3)
      SHX9_3(SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "Radio Settings"
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Slider
    SHX1_3 = "Total Volume"
    SHX2_3 = SHX25_1
    SHX3_3 = 10
    SHX4_3 = ""
    SHX5_3 = false
    SHX6_3 = {}
    SHX7_3 = {}
    SHX7_3.R = 0
    SHX7_3.G = 0
    SHX7_3.B = 0
    SHX7_3.A = 255
    SHX6_3.ProgressBackgroundColor = SHX7_3
    SHX7_3 = {}
    SHX7_3.R = 0
    SHX7_3.G = 117
    SHX7_3.B = 194
    SHX7_3.A = 255
    SHX6_3.ProgressColor = SHX7_3
    SHX7_3 = true
    function SHX8_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4, SHX5_4, SHX6_4
      SHX4_4 = SHX25_1
      if SHX3_4 ~= SHX4_4 and SHX3_4 > 0 then
        SHX25_1 = SHX3_4
        SHX4_4 = exports
        SHX4_4 = SHX4_4["pma-voice"]
        SHX5_4 = SHX4_4
        SHX4_4 = SHX4_4.setRadioVolume
        SHX6_4 = SHX25_1
        SHX6_4 = SHX6_4 * 10
        SHX4_4(SHX5_4, SHX6_4)
        SHX4_4 = SetResourceKvpInt
        SHX5_4 = "radios_volume"
        SHX6_4 = SHX25_1
        SHX4_4(SHX5_4, SHX6_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Slider
    SHX1_3 = "Left Channel Volume"
    SHX2_3 = SHX27_1
    SHX3_3 = 6
    SHX4_3 = ""
    SHX5_3 = false
    SHX6_3 = {}
    SHX7_3 = {}
    SHX7_3.R = 0
    SHX7_3.G = 0
    SHX7_3.B = 0
    SHX7_3.A = 255
    SHX6_3.ProgressBackgroundColor = SHX7_3
    SHX7_3 = {}
    SHX7_3.R = 0
    SHX7_3.G = 117
    SHX7_3.B = 194
    SHX7_3.A = 255
    SHX6_3.ProgressColor = SHX7_3
    SHX7_3 = true
    function SHX8_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4, SHX5_4, SHX6_4
      SHX4_4 = SHX27_1
      if SHX3_4 ~= SHX4_4 and SHX3_4 > 0 then
        SHX27_1 = SHX3_4
        SHX4_4 = SHX31_1
        SHX4_4()
        SHX4_4 = SetResourceKvpInt
        SHX5_4 = "radios_leftChannelVolume"
        SHX6_4 = SHX27_1
        SHX4_4(SHX5_4, SHX6_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Slider
    SHX1_3 = "Right Channel Volume"
    SHX2_3 = SHX28_1
    SHX3_3 = 6
    SHX4_3 = ""
    SHX5_3 = false
    SHX6_3 = {}
    SHX7_3 = {}
    SHX7_3.R = 0
    SHX7_3.G = 0
    SHX7_3.B = 0
    SHX7_3.A = 255
    SHX6_3.ProgressBackgroundColor = SHX7_3
    SHX7_3 = {}
    SHX7_3.R = 0
    SHX7_3.G = 117
    SHX7_3.B = 194
    SHX7_3.A = 255
    SHX6_3.ProgressColor = SHX7_3
    SHX7_3 = true
    function SHX8_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4, SHX5_4, SHX6_4
      SHX4_4 = SHX28_1
      if SHX3_4 ~= SHX4_4 and SHX3_4 > 0 then
        SHX28_1 = SHX3_4
        SHX4_4 = SHX31_1
        SHX4_4()
        SHX4_4 = SetResourceKvpInt
        SHX5_4 = "radios_rightChannelVolume"
        SHX6_4 = SHX28_1
        SHX4_4(SHX5_4, SHX6_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Advanced Effects"
    SHX2_3 = ""
    SHX3_3 = true
    function SHX4_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX5_3 = RMenu
    SHX6_3 = SHX5_3
    SHX5_3 = SHX5_3.Get
    SHX7_3 = "radios"
    SHX8_3 = "advancedeffects"
    SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "radios"
  SHX4_2 = "channelinfo"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX1_3 = SHX24_1
    SHX0_3 = SHX1_1
    SHX0_3 = SHX0_3[SHX1_3]
    if not SHX0_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.GoBack
      SHX1_3()
      return
    end
    SHX1_3 = SHX24_1
    SHX2_3 = SHX2_1
    if SHX1_3 ~= SHX2_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.Button
      SHX2_3 = "~b~Join Channel"
      SHX3_3 = nil
      SHX4_3 = true
      function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4
        if SHX2_4 then
          SHX3_4 = SHX34_1
          SHX4_4 = SHX24_1
          SHX5_4 = SHX0_3
          SHX6_4 = false
          SHX3_4(SHX4_4, SHX5_4, SHX6_4)
        end
      end
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    else
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.Button
      SHX2_3 = "~r~Leave Channel"
      SHX3_3 = nil
      SHX4_3 = true
      function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4
        if SHX2_4 then
          SHX3_4 = SHX18_1
          SHX3_4()
        end
      end
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    end
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Separator
    SHX2_3 = "Connected Clients"
    SHX1_3(SHX2_3)
    SHX1_3 = SHX35_1
    SHX2_3 = SHX0_3.players
    function SHX3_3(SHX0_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4
      SHX1_4 = RageUI
      SHX1_4 = SHX1_4.Button
      SHX2_4 = SHX0_4.name
      SHX3_4 = nil
      SHX4_4 = true
      function SHX5_4()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_5, SHX1_5
      end
      SHX6_4 = nil
      SHX1_4(SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4)
    end
    SHX1_3(SHX2_3, SHX3_3)
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "radios"
  SHX4_2 = "advancedeffects"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Frequency Range In (Low)"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX4_3 = tostring
    SHX5_3 = SHX29_1.freq_low
    SHX4_3 = SHX4_3(SHX5_3)
    SHX3_3.RightLabel = SHX4_3
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Frequency Range In (Low)"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5
          SHX1_5 = tonumber
          SHX2_5 = SHX0_5
          SHX1_5 = SHX1_5(SHX2_5)
          if not SHX1_5 then
            SHX2_5 = notify
            SHX3_5 = "~r~Inputted text could not be parsed as a number."
            SHX2_5(SHX3_5)
          elseif SHX1_5 < 60 then
            SHX2_5 = notify
            SHX3_5 = "~r~The minimum value this field can be is 60."
            SHX2_5(SHX3_5)
          else
            SHX2_5 = 999
            if SHX1_5 > SHX2_5 then
              SHX2_5 = notify
              SHX3_5 = "~r~The maximum value this field can be is 999."
              SHX2_5(SHX3_5)
            else
              SHX2_5 = SHX1_5 + 0.0
              SHX29_1.freq_low = SHX2_5
              SHX2_5 = SHX32_1
              SHX2_5()
              SHX2_5 = SHX33_1
              SHX2_5()
            end
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX6_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Frequency Range In (High)"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX4_3 = tostring
    SHX5_3 = SHX29_1.freq_hi
    SHX4_3 = SHX4_3(SHX5_3)
    SHX3_3.RightLabel = SHX4_3
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Frequency Range In (High)"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5
          SHX1_5 = tonumber
          SHX2_5 = SHX0_5
          SHX1_5 = SHX1_5(SHX2_5)
          if not SHX1_5 then
            SHX2_5 = notify
            SHX3_5 = "~r~Inputted text could not be parsed as a number."
            SHX2_5(SHX3_5)
          else
            SHX2_5 = 1000
            if SHX1_5 < SHX2_5 then
              SHX2_5 = notify
              SHX3_5 = "~r~The minimum value this field can be is 1000."
              SHX2_5(SHX3_5)
            else
              SHX2_5 = 6000
              if SHX1_5 > SHX2_5 then
                SHX2_5 = notify
                SHX3_5 = "~r~The maximum value this field can be is 6000."
                SHX2_5(SHX3_5)
              else
                SHX2_5 = SHX1_5 + 0.0
                SHX29_1.freq_hi = SHX2_5
                SHX2_5 = SHX32_1
                SHX2_5()
                SHX2_5 = SHX33_1
                SHX2_5()
              end
            end
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX6_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Ring Modulator (Frequency)"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX4_3 = tostring
    SHX5_3 = SHX29_1.rm_mod_freq
    SHX4_3 = SHX4_3(SHX5_3)
    SHX3_3.RightLabel = SHX4_3
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Ring Modulator (Frequency)"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5
          SHX1_5 = tonumber
          SHX2_5 = SHX0_5
          SHX1_5 = SHX1_5(SHX2_5)
          if not SHX1_5 then
            SHX2_5 = notify
            SHX3_5 = "~r~Inputted text could not be parsed as a number."
            SHX2_5(SHX3_5)
          elseif SHX1_5 < 0 then
            SHX2_5 = notify
            SHX3_5 = "~r~The minimum value this field can be is 0."
            SHX2_5(SHX3_5)
          else
            SHX2_5 = 10000
            if SHX1_5 > SHX2_5 then
              SHX2_5 = notify
              SHX3_5 = "~r~The maximum value this field can be is 10000."
              SHX2_5(SHX3_5)
            else
              SHX2_5 = SHX1_5 + 0.0
              SHX29_1.rm_mod_freq = SHX2_5
              SHX2_5 = SHX32_1
              SHX2_5()
              SHX2_5 = SHX33_1
              SHX2_5()
            end
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX6_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Ring Modulator (Mix)"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX4_3 = tostring
    SHX5_3 = SHX29_1.rm_mix
    SHX4_3 = SHX4_3(SHX5_3)
    SHX3_3.RightLabel = SHX4_3
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Ring Modulator (Mix)"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5
          SHX1_5 = tonumber
          SHX2_5 = SHX0_5
          SHX1_5 = SHX1_5(SHX2_5)
          if not SHX1_5 then
            SHX2_5 = notify
            SHX3_5 = "~r~Inputted text could not be parsed as a number."
            SHX2_5(SHX3_5)
          elseif SHX1_5 < 0 then
            SHX2_5 = notify
            SHX3_5 = "~r~The minimum value this field can be is 0."
            SHX2_5(SHX3_5)
          elseif SHX1_5 > 100 then
            SHX2_5 = notify
            SHX3_5 = "~r~The maximum value this field can be is 100."
            SHX2_5(SHX3_5)
          else
            SHX2_5 = SHX1_5 + 0.0
            SHX29_1.rm_mix = SHX2_5
            SHX2_5 = SHX32_1
            SHX2_5()
            SHX2_5 = SHX33_1
            SHX2_5()
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX6_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Destruction (Fudge)"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX4_3 = tostring
    SHX5_3 = SHX29_1.fudge
    SHX4_3 = SHX4_3(SHX5_3)
    SHX3_3.RightLabel = SHX4_3
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Destruction (Fudge)"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5
          SHX1_5 = tonumber
          SHX2_5 = SHX0_5
          SHX1_5 = SHX1_5(SHX2_5)
          if not SHX1_5 then
            SHX2_5 = notify
            SHX3_5 = "~r~Inputted text could not be parsed as a number."
            SHX2_5(SHX3_5)
          elseif SHX1_5 < 0 then
            SHX2_5 = notify
            SHX3_5 = "~r~The minimum value this field can be is 0."
            SHX2_5(SHX3_5)
          elseif SHX1_5 > 20 then
            SHX2_5 = notify
            SHX3_5 = "~r~The maximum value this field can be is 20."
            SHX2_5(SHX3_5)
          else
            SHX2_5 = SHX1_5 + 0.0
            SHX29_1.fudge = SHX2_5
            SHX2_5 = SHX32_1
            SHX2_5()
            SHX2_5 = SHX33_1
            SHX2_5()
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX6_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Frequency Range Out (Low)"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX4_3 = tostring
    SHX5_3 = SHX29_1.o_freq_lo
    SHX4_3 = SHX4_3(SHX5_3)
    SHX3_3.RightLabel = SHX4_3
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Frequency Range Out (Low)"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5
          SHX1_5 = tonumber
          SHX2_5 = SHX0_5
          SHX1_5 = SHX1_5(SHX2_5)
          if not SHX1_5 then
            SHX2_5 = notify
            SHX3_5 = "~r~Inputted text could not be parsed as a number."
            SHX2_5(SHX3_5)
          elseif SHX1_5 < 60 then
            SHX2_5 = notify
            SHX3_5 = "~r~The minimum value this field can be is 60."
            SHX2_5(SHX3_5)
          else
            SHX2_5 = 999
            if SHX1_5 > SHX2_5 then
              SHX2_5 = notify
              SHX3_5 = "~r~The maximum value this field can be is 999."
              SHX2_5(SHX3_5)
            else
              SHX2_5 = SHX1_5 + 0.0
              SHX29_1.o_freq_lo = SHX2_5
              SHX2_5 = SHX32_1
              SHX2_5()
              SHX2_5 = SHX33_1
              SHX2_5()
            end
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX6_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Frequency Range Out (High)"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX4_3 = tostring
    SHX5_3 = SHX29_1.o_freq_hi
    SHX4_3 = SHX4_3(SHX5_3)
    SHX3_3.RightLabel = SHX4_3
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Frequency Range Out (High)"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5
          SHX1_5 = tonumber
          SHX2_5 = SHX0_5
          SHX1_5 = SHX1_5(SHX2_5)
          if not SHX1_5 then
            SHX2_5 = notify
            SHX3_5 = "~r~Inputted text could not be parsed as a number."
            SHX2_5(SHX3_5)
          else
            SHX2_5 = 1000
            if SHX1_5 < SHX2_5 then
              SHX2_5 = notify
              SHX3_5 = "~r~The minimum value this field can be is 1000."
              SHX2_5(SHX3_5)
            else
              SHX2_5 = 6000
              if SHX1_5 > SHX2_5 then
                SHX2_5 = notify
                SHX3_5 = "~r~The maximum value this field can be is 6000."
                SHX2_5(SHX3_5)
              else
                SHX2_5 = SHX1_5 + 0.0
                SHX29_1.o_freq_hi = SHX2_5
                SHX2_5 = SHX32_1
                SHX2_5()
                SHX2_5 = SHX33_1
                SHX2_5()
              end
            end
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX6_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "~r~Reset To Default"
    SHX2_3 = ""
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = table
        SHX3_4 = SHX3_4.copy
        SHX4_4 = SHX0_1.advancedEffects
        SHX3_4 = SHX3_4(SHX4_4)
        SHX29_1 = SHX3_4
        SHX3_4 = SHX32_1
        SHX3_4()
        SHX3_4 = SHX33_1
        SHX3_4()
      end
    end
    SHX5_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX36_1(SHX37_1, SHX38_1, SHX39_1, SHX40_1)
SHX36_1 = RegisterCommand
SHX37_1 = "radios"
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = SHX9_1
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = notify
    SHX1_2 = "~r~You are missing a radio item."
    SHX0_2(SHX1_2)
    return
  end
  SHX0_2 = table
  SHX0_2 = SHX0_2.count
  SHX1_2 = SHX1_1
  SHX0_2 = SHX0_2(SHX1_2)
  if 0 == SHX0_2 then
    SHX0_2 = notify
    SHX1_2 = "~r~You have no available radio channels"
    SHX0_2(SHX1_2)
    return
  end
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = SHX1_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = table
    SHX7_2 = SHX7_2.insert
    SHX8_2 = SHX0_2
    SHX9_2 = {}
    SHX10_2 = SHX5_2
    SHX11_2 = SHX6_2.name
    SHX12_2 = SHX6_2.isPrimary
    SHX13_2 = table
    SHX13_2 = SHX13_2.count
    SHX14_2 = SHX6_2.players
    SHX13_2, SHX14_2 = SHX13_2(SHX14_2)
    SHX9_2[1] = SHX10_2
    SHX9_2[2] = SHX11_2
    SHX9_2[3] = SHX12_2
    SHX9_2[4] = SHX13_2
    SHX9_2[5] = SHX14_2
    SHX7_2(SHX8_2, SHX9_2)
  end
  SHX1_2 = TriggerEvent
  SHX2_2 = "CMGUI:showRadioWheel"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX39_1 = false
SHX36_1(SHX37_1, SHX38_1, SHX39_1)
SHX36_1 = RegisterKeyMapping
SHX37_1 = "radios"
SHX38_1 = "Open Radio Menu"
SHX39_1 = "KEYBOARD"
SHX40_1 = ""
SHX36_1(SHX37_1, SHX38_1, SHX39_1, SHX40_1)
SHX36_1 = Citizen
SHX36_1 = SHX36_1.CreateThread
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = exports
  SHX0_2 = SHX0_2["pma-voice"]
  SHX1_2 = SHX0_2
  SHX0_2 = SHX0_2.setVoiceProperty
  SHX2_2 = "micClicks"
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = exports
  SHX0_2 = SHX0_2["pma-voice"]
  SHX1_2 = SHX0_2
  SHX0_2 = SHX0_2.setRadioVolume
  SHX2_2 = SHX22_1
  SHX3_2 = "radios_volume"
  SHX4_2 = 10
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX2_2 * 10
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = CreateAudioSubmix
  SHX1_2 = "CMGRadio"
  SHX0_2 = SHX0_2(SHX1_2)
  SHX26_1 = SHX0_2
  SHX0_2 = SetAudioSubmixEffectRadioFx
  SHX1_2 = SHX26_1
  SHX2_2 = 0
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetAudioSubmixEffectParamInt
  SHX1_2 = SHX26_1
  SHX2_2 = 0
  SHX3_2 = -455129387
  SHX4_2 = 1
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SHX31_1
  SHX0_2()
  SHX0_2 = SHX32_1
  SHX0_2()
  SHX0_2 = AddAudioSubmixOutput
  SHX1_2 = SHX26_1
  SHX2_2 = 0
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = exports
  SHX0_2 = SHX0_2["pma-voice"]
  SHX1_2 = SHX0_2
  SHX0_2 = SHX0_2.setEffectSubmix
  SHX2_2 = "radio"
  SHX3_2 = SHX26_1
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.Wait
  SHX1_2 = 500
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.syncRadioListNuiAppearance
  SHX0_2()
  while true do
    SHX0_2 = SHX2_1
    if 0 ~= SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isEmergencyService
      SHX0_2 = SHX0_2()
      if SHX0_2 then
        SHX0_2 = exports
        SHX0_2 = SHX0_2["pma-voice"]
        SHX1_2 = SHX0_2
        SHX0_2 = SHX0_2.getRadioVolume
        SHX0_2 = SHX0_2(SHX1_2)
        if SHX0_2 <= 0.0 then
          SHX0_2 = SHX7_1
          SHX0_2 = SHX0_2 + 1
          SHX7_1 = SHX0_2
          SHX0_2 = SHX7_1
          SHX0_2 = SHX0_2 % 5
          if 0 == SHX0_2 then
            SHX0_2 = TriggerServerEvent
            SHX1_2 = "bd4ae98730"
            SHX2_2 = SHX7_1
            SHX2_2 = SHX2_2 * 2
            SHX0_2(SHX1_2, SHX2_2)
          end
        else
          SHX0_2 = 0
          SHX7_1 = SHX0_2
        end
      end
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 120000
    SHX0_2(SHX1_2)
  end
end
SHX36_1(SHX37_1)
SHX36_1 = AddEventHandler
SHX37_1 = "pma-voice:registerCustomSubmixes"
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.Wait
  SHX1_2 = 100
  SHX0_2(SHX1_2)
  SHX0_2 = exports
  SHX0_2 = SHX0_2["pma-voice"]
  SHX1_2 = SHX0_2
  SHX0_2 = SHX0_2.setEffectSubmix
  SHX2_2 = "radio"
  SHX3_2 = SHX26_1
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = RegisterNetEvent
SHX37_1 = "e9fd07f055"
function SHX38_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2
  SHX7_2 = SHX1_1
  SHX7_2 = SHX7_2[SHX0_2]
  if not SHX7_2 then
    SHX7_2 = SHX1_1
    SHX8_2 = {}
    SHX8_2.name = SHX1_2
    SHX8_2.players = SHX2_2
    SHX8_2.isPrimary = SHX4_2
    SHX8_2.switchGroup = SHX5_2
    SHX9_2 = SHX6_2 or SHX9_2
    if not SHX6_2 then
      SHX9_2 = false
    end
    SHX8_2.noRadioItemRequired = SHX9_2
    SHX7_2[SHX0_2] = SHX8_2
    SHX7_2 = SHX10_1
    SHX7_2()
    if SHX3_2 then
      SHX7_2 = Citizen
      SHX7_2 = SHX7_2.CreateThread
      function SHX8_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
        while true do
          SHX0_3 = GetIsLoadingScreenActive
          SHX0_3 = SHX0_3()
          if not SHX0_3 then
            break
          end
          SHX0_3 = Citizen
          SHX0_3 = SHX0_3.Wait
          SHX1_3 = 0
          SHX0_3(SHX1_3)
        end
        SHX0_3 = Citizen
        SHX0_3 = SHX0_3.Wait
        SHX1_3 = 2000
        SHX0_3(SHX1_3)
        SHX1_3 = SHX0_2
        SHX0_3 = SHX1_1
        SHX0_3 = SHX0_3[SHX1_3]
        if SHX0_3 then
          SHX1_3 = SHX0_3.noRadioItemRequired
          if not SHX1_3 then
            SHX1_3 = CMG
            SHX1_3 = SHX1_3.hasRadioItem
            SHX1_3 = SHX1_3()
            if not SHX1_3 then
              goto SHX_LABEL_41
            end
          end
          SHX1_3 = SHX34_1
          SHX2_3 = SHX0_2
          SHX3_3 = SHX0_3
          SHX4_3 = CMG
          SHX4_3 = SHX4_3.isEmergencyService
          SHX4_3 = SHX4_3()
          SHX4_3 = SHX0_3.noRadioItemRequired
          SHX4_3 = not SHX4_3 and SHX4_3
          SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_41:: outside nested blocks until all 'goto SHX_LABEL_41' can see it
        ::SHX_LABEL_41::
      end
      SHX7_2(SHX8_2)
    end
  end
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = RegisterNetEvent
SHX37_1 = "9af8e11caf"
function SHX38_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX2_1
  if SHX1_2 == SHX0_2 then
    SHX1_2 = SHX18_1
    SHX1_2()
  end
  SHX1_2 = SHX1_1
  SHX1_2[SHX0_2] = nil
  SHX1_2 = SHX10_1
  SHX1_2()
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = RegisterCommand
SHX37_1 = "toggleradiomute"
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX2_1
  if 0 ~= SHX0_2 then
    SHX0_2 = exports
    SHX0_2 = SHX0_2["pma-voice"]
    SHX1_2 = SHX0_2
    SHX0_2 = SHX0_2.getRadioVolume
    SHX0_2 = SHX0_2(SHX1_2)
    if 0 == SHX0_2 then
      SHX0_2 = exports
      SHX0_2 = SHX0_2["pma-voice"]
      SHX1_2 = SHX0_2
      SHX0_2 = SHX0_2.setRadioVolume
      SHX2_2 = SHX22_1
      SHX3_2 = "radios_volume"
      SHX4_2 = 10
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      SHX2_2 = SHX2_2 * 10
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = TriggerServerEvent
      SHX1_2 = "74fae4ec62"
      SHX2_2 = false
      SHX0_2(SHX1_2, SHX2_2)
    else
      SHX0_2 = exports
      SHX0_2 = SHX0_2["pma-voice"]
      SHX1_2 = SHX0_2
      SHX0_2 = SHX0_2.setRadioVolume
      SHX2_2 = 0
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = TriggerServerEvent
      SHX1_2 = "74fae4ec62"
      SHX2_2 = true
      SHX0_2(SHX1_2, SHX2_2)
    end
  end
end
SHX39_1 = false
SHX36_1(SHX37_1, SHX38_1, SHX39_1)
SHX36_1 = RegisterKeyMapping
SHX37_1 = "toggleradiomute"
SHX38_1 = "Mute Selected Radio"
SHX39_1 = "KEYBOARD"
SHX40_1 = ""
SHX36_1(SHX37_1, SHX38_1, SHX39_1, SHX40_1)
SHX36_1 = RegisterNetEvent
SHX37_1 = "f4406ef092"
function SHX38_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = SHX1_1
  SHX3_2 = SHX3_2[SHX0_2]
  if not SHX3_2 then
    return
  end
  SHX4_2 = SHX3_2.players
  SHX4_2 = SHX4_2[SHX1_2]
  if not SHX4_2 then
    return
  end
  SHX4_2.isMuted = SHX2_2
  SHX5_2 = SHX2_1
  if SHX0_2 == SHX5_2 then
    SHX5_2 = SHX17_1
    SHX6_2 = SHX1_2
    SHX7_2 = SHX2_2
    SHX5_2(SHX6_2, SHX7_2)
  end
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = RegisterNetEvent
SHX37_1 = "c96f59b76d"
function SHX38_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX1_2 = SHX2_1
    if SHX1_2 ~= SHX0_2 then
      SHX1_2 = SHX34_1
      SHX2_2 = SHX0_2
      SHX3_2 = SHX1_1
      SHX3_2 = SHX3_2[SHX0_2]
      SHX4_2 = false
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    end
  end
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = RegisterNetEvent
SHX37_1 = "24a888d2b3"
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX2_1
  if 0 ~= SHX0_2 then
    SHX0_2 = SHX18_1
    SHX0_2()
  end
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = AddEventHandler
SHX37_1 = "c9189814b6"
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "radios"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX36_1(SHX37_1, SHX38_1)
function SHX36_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.radio
    SHX1_2 = nil ~= SHX1_2
  end
  return SHX1_2
end
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  if SHX0_2 then
    SHX1_2 = SHX0_2.emergencyradio
    if nil ~= SHX1_2 then
      SHX1_2 = SHX0_2.emergencyradio
      SHX1_2 = SHX1_2[2]
      if SHX1_2 > 0 then
        SHX1_2 = true
        return SHX1_2
      end
    end
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getClientUserId
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getJobType
    SHX3_2 = SHX1_2
    SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
    if SHX2_2 and SHX3_2 and ("CID" == SHX3_2 or "Trident" == SHX3_2 or "CTSFO" == SHX3_2) then
      SHX4_2 = SHX36_1
      SHX5_2 = SHX0_2
      return SHX4_2(SHX5_2)
    end
  end
  SHX2_2 = false
  return SHX2_2
end
function SHX38_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX36_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX37_1
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.isEmergencyService
  SHX3_2 = SHX3_2()
  SHX3_2 = SHX2_2 or SHX3_2
  if not SHX3_2 or not SHX2_2 then
    SHX3_2 = SHX1_2
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.isInRadioChannel
  SHX4_2 = SHX4_2()
  if SHX4_2 then
    SHX4_2 = SHX8_1
    SHX5_2 = SHX2_1
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 and not SHX3_2 then
      SHX4_2 = SHX18_1
      SHX4_2()
    end
  end
  SHX3_1 = SHX1_2
  SHX4_1 = SHX2_2
  SHX4_2 = SHX10_1
  SHX4_2()
end
SHX39_1 = AddEventHandler
SHX40_1 = "b51e08118b"
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX38_1
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getClientInventoryItemList
  SHX1_2 = SHX1_2()
  SHX0_2(SHX1_2)
end
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = RegisterNetEvent
SHX40_1 = "96db39f973"
function SHX41_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX38_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = Citizen
SHX39_1 = SHX39_1.CreateThread
function SHX40_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  while true do
    SHX0_2 = {}
    SHX5_1 = SHX0_2
    SHX0_2 = pairs
    SHX1_2 = GetActivePlayers
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX1_2()
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = GetPlayerServerId
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 > 0 then
        SHX7_2 = Player
        SHX8_2 = SHX6_2
        SHX7_2 = SHX7_2(SHX8_2)
        SHX7_2 = SHX7_2.state
        SHX7_2 = SHX7_2.hasRadio
        if SHX7_2 then
          SHX7_2 = SHX5_1
          SHX7_2[SHX6_2] = true
        end
      end
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
SHX39_1(SHX40_1)
SHX39_1 = false
SHX40_1 = 0
SHX41_1 = false
SHX42_1 = RegisterNetEvent
SHX43_1 = "2ba3a046fc"
function SHX44_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX39_1
  if SHX1_2 then
    SHX1_2 = DeleteEntity
    SHX2_2 = SHX40_1
    SHX1_2(SHX2_2)
    SHX1_2 = StopAnimTask
    SHX2_2 = SHX0_2
    SHX3_2 = "molly@megaphone"
    SHX4_2 = "megaphone_clip"
    SHX5_2 = 1.0
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX1_2 = SHX20_1
    SHX1_2()
    SHX1_2 = false
    SHX39_1 = SHX1_2
  else
    SHX1_2 = true
    SHX39_1 = SHX1_2
    SHX1_2 = SHX19_1
    SHX2_2 = 25.0
    SHX1_2(SHX2_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.loadModel
    SHX2_2 = -1585551192
    SHX1_2(SHX2_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerCoords
    SHX1_2 = SHX1_2()
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.requestEntitySpawn
    SHX3_2 = "megaphone_object"
    SHX2_2(SHX3_2)
    SHX2_2 = CreateObject
    SHX3_2 = -1585551192
    SHX4_2 = SHX1_2.x
    SHX5_2 = SHX1_2.y
    SHX6_2 = SHX1_2.z
    SHX7_2 = true
    SHX8_2 = true
    SHX9_2 = false
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX40_1 = SHX2_2
    SHX2_2 = AttachEntityToEntity
    SHX3_2 = SHX40_1
    SHX4_2 = SHX0_2
    SHX5_2 = GetPedBoneIndex
    SHX6_2 = SHX0_2
    SHX7_2 = 28422
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX6_2 = 0.05
    SHX7_2 = 0.054
    SHX8_2 = -0.006
    SHX9_2 = -71.885498
    SHX10_2 = -13.0889
    SHX11_2 = -16.0242
    SHX12_2 = true
    SHX13_2 = true
    SHX14_2 = false
    SHX15_2 = true
    SHX16_2 = 1
    SHX17_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX2_2 = SetModelAsNoLongerNeeded
    SHX3_2 = -1585551192
    SHX2_2(SHX3_2)
  end
end
SHX42_1(SHX43_1, SHX44_1)
function SHX42_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = SHX39_1
  if SHX1_2 then
    SHX1_2 = IsEntityPlayingAnim
    SHX2_2 = SHX0_2.playerPed
    SHX3_2 = "molly@megaphone"
    SHX4_2 = "megaphone_clip"
    SHX5_2 = 3
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.loadAnimDict
      SHX2_2 = "molly@megaphone"
      SHX1_2(SHX2_2)
      SHX1_2 = TaskPlayAnim
      SHX2_2 = SHX0_2.playerPed
      SHX3_2 = "molly@megaphone"
      SHX4_2 = "megaphone_clip"
      SHX5_2 = 2.0
      SHX6_2 = 2.0
      SHX7_2 = -1
      SHX8_2 = 51
      SHX9_2 = 0
      SHX10_2 = false
      SHX11_2 = false
      SHX12_2 = false
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX1_2 = RemoveAnimDict
      SHX2_2 = "molly@megaphone"
      SHX1_2(SHX2_2)
    end
  end
end
SHX43_1 = CMG
SHX43_1 = SHX43_1.createThreadOnTick
SHX44_1 = SHX42_1
SHX45_1 = "Megaphone"
SHX43_1(SHX44_1, SHX45_1)
function SHX43_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX41_1
  if SHX0_2 then
    SHX0_2 = SHX20_1
    SHX0_2()
    SHX0_2 = notify
    SHX1_2 = "~r~Microphone deactivated."
    SHX0_2(SHX1_2)
    SHX0_2 = false
    SHX41_1 = SHX0_2
  end
end
function SHX44_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.DrawText3D
  SHX2_2 = SHX0_2[1]
  SHX3_2 = "\240\159\142\164"
  SHX4_2 = 1.0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = drawNativeNotification
  SHX2_2 = "Press ~INPUT_CONTEXT~ to "
  SHX3_2 = SHX41_1
  if SHX3_2 then
    SHX3_2 = "deactivate"
    if SHX3_2 then
      goto SHX_LABEL_16
    end
  end
  SHX3_2 = "activate"
  -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
  ::SHX_LABEL_16::
  SHX4_2 = " the microphone."
  SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2
  SHX1_2(SHX2_2)
  SHX1_2 = IsControlJustPressed
  SHX2_2 = 0
  SHX3_2 = 51
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = SHX41_1
    if SHX1_2 then
      SHX1_2 = SHX43_1
      SHX1_2()
    else
      SHX1_2 = SHX19_1
      SHX2_2 = SHX0_2[2]
      SHX1_2(SHX2_2)
      SHX1_2 = notify
      SHX2_2 = "~g~Microphone activated."
      SHX1_2(SHX2_2)
      SHX1_2 = true
      SHX41_1 = SHX1_2
    end
  end
end
SHX45_1 = Citizen
SHX45_1 = SHX45_1.CreateThread
function SHX46_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.microphones
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createArea
    SHX7_2 = "microphone_"
    SHX8_2 = tostring
    SHX9_2 = SHX4_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX7_2 = SHX7_2 .. SHX8_2
    SHX8_2 = SHX5_2[1]
    SHX9_2 = 0.5
    SHX10_2 = 1.0
    function SHX11_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX12_2 = SHX43_1
    SHX13_2 = SHX44_1
    SHX14_2 = SHX5_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
end
SHX45_1(SHX46_1)
SHX45_1 = AddEventHandler
SHX46_1 = "CMG:onDisplayVisiblityChange"
function SHX47_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if "radio" == SHX0_2 then
    SHX2_2 = SendNUIMessage
    SHX3_2 = {}
    SHX3_2.radioHide = true
    SHX3_2.visible = SHX1_2
    SHX2_2(SHX3_2)
  end
end
SHX45_1(SHX46_1, SHX47_1)
SHX45_1 = RegisterCommand
SHX46_1 = "switchradios"
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isInRadioChannel
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = notify
    SHX1_2 = "~r~You are not in a radio channel"
    SHX0_2(SHX1_2)
  end
  SHX1_2 = SHX2_1
  SHX0_2 = SHX1_1
  SHX0_2 = SHX0_2[SHX1_2]
  if SHX0_2 then
    SHX1_2 = SHX0_2.switchGroup
    if SHX1_2 then
      goto SHX_LABEL_21
    end
  end
  SHX1_2 = notify
  SHX2_2 = "~r~You have no channels to switch between."
  SHX1_2(SHX2_2)
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_21:: outside nested blocks until all 'goto SHX_LABEL_21' can see it
  ::SHX_LABEL_21::
  SHX1_2 = {}
  SHX2_2 = 1
  SHX3_2 = pairs
  SHX4_2 = SHX1_1
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.switchGroup
    SHX10_2 = SHX0_2.switchGroup
    if SHX9_2 == SHX10_2 then
      SHX9_2 = table
      SHX9_2 = SHX9_2.insert
      SHX10_2 = SHX1_2
      SHX11_2 = SHX7_2
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = SHX2_1
      if SHX7_2 == SHX9_2 then
        SHX2_2 = #SHX1_2
      end
    end
  end
  SHX3_2 = SHX2_2 + 1
  SHX3_2 = SHX1_2[SHX3_2]
  if not SHX3_2 then
    SHX3_2 = SHX1_2[1]
  end
  SHX4_2 = TriggerEvent
  SHX5_2 = "c96f59b76d"
  SHX6_2 = SHX3_2
  SHX4_2(SHX5_2, SHX6_2)
end
SHX48_1 = false
SHX45_1(SHX46_1, SHX47_1, SHX48_1)
SHX45_1 = RegisterKeyMapping
SHX46_1 = "switchradios"
SHX47_1 = "Switch Radio Group"
SHX48_1 = "KEYBOARD"
SHX49_1 = ""
SHX45_1(SHX46_1, SHX47_1, SHX48_1, SHX49_1)
