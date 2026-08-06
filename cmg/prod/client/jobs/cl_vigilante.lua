-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_vigilante"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.loadModule
SHX2_1 = "cfg/weapons"
SHX1_1 = SHX1_1(SHX2_1)
SHX2_1 = CMG
SHX2_1 = SHX2_1.loadModule
SHX3_1 = "cfg/cfg_gunstore"
SHX2_1 = SHX2_1(SHX3_1)
SHX3_1 = 0
SHX4_1 = {}
SHX5_1 = {}
SHX6_1 = {}
SHX7_1 = {}
SHX8_1 = false
SHX9_1 = {}
SHX10_1 = nil
SHX11_1 = {}
SHX12_1 = {}
SHX13_1 = 0
SHX14_1 = false
SHX15_1 = CMG
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX13_1
  return SHX0_2
end
SHX15_1.getClientVigilanteLevel = SHX16_1
SHX15_1 = RegisterNetEvent
SHX16_1 = "CMG:updateVigilanteStats"
function SHX17_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX13_1 = SHX0_2
  SHX2_2 = true
  SHX14_1 = SHX2_2
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "f20ef77560"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX3_1 = SHX0_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.refreshMoneyUI
  SHX1_2()
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = CMG
function SHX16_1()
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
SHX15_1.getClientBounty = SHX16_1
SHX15_1 = CMG
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1.cityPosition
  SHX1_2 = SHX0_1.cityRadius
  return SHX0_2, SHX1_2
end
SHX15_1.getCityPositionAndRadius = SHX16_1
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX0_2.iconBlip
  if SHX1_2 then
    SHX1_2 = RemoveBlip
    SHX2_2 = SHX0_2.iconBlip
    SHX1_2(SHX2_2)
    SHX0_2.iconBlip = nil
  end
  SHX1_2 = SHX0_2.radiusBlip
  if SHX1_2 then
    SHX1_2 = RemoveBlip
    SHX2_2 = SHX0_2.radiusBlip
    SHX1_2(SHX2_2)
    SHX0_2.radiusBlip = nil
  end
end
SHX16_1 = RegisterNetEvent
SHX17_1 = "6ecaac4327"
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = pairs
  SHX2_2 = SHX4_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX0_2[SHX5_2]
    if not SHX7_2 then
      SHX7_2 = SHX15_1
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
      SHX7_2 = SHX4_1
      SHX7_2[SHX5_2] = nil
    end
  end
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX4_1
    SHX7_2 = SHX7_2[SHX5_2]
    if not SHX7_2 then
      SHX8_2 = SHX4_1
      SHX8_2[SHX5_2] = SHX6_2
    else
      SHX8_2 = SHX6_2.name
      SHX7_2.name = SHX8_2
      SHX8_2 = SHX6_2.totalOutstanding
      SHX7_2.totalOutstanding = SHX8_2
      SHX8_2 = SHX6_2.offenses
      SHX7_2.offenses = SHX8_2
    end
  end
  SHX1_2 = pairs
  SHX2_2 = SHX5_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.clientGetUserIdFromSource
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX7_2 = SHX4_1
      SHX7_2 = SHX7_2[SHX6_2]
      if SHX7_2 then
        goto SHX_LABEL_52
      end
    end
    SHX7_2 = SHX5_1
    SHX7_2[SHX5_2] = nil
    -- [FIX IF ERROR] Move ::SHX_LABEL_52:: outside nested blocks until all 'goto SHX_LABEL_52' can see it
    ::SHX_LABEL_52::
  end
  SHX1_2 = TriggerEvent
  SHX2_2 = "CMG:fetchVigilanteAppData"
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
end
SHX16_1(SHX17_1, SHX18_1)
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = pairs
  SHX1_2 = SHX4_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX15_1
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
end
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2.radiusBlip
  if SHX1_2 then
    SHX1_2 = SHX0_2.iconBlip
    if SHX1_2 then
      goto SHX_LABEL_8
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX1_2 = SHX0_2.isVisible
  if false == SHX1_2 then
    SHX1_2 = SetBlipDisplay
    SHX2_2 = SHX0_2.radiusBlip
    SHX3_2 = 0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SetBlipDisplay
    SHX2_2 = SHX0_2.iconBlip
    SHX3_2 = 0
    SHX1_2(SHX2_2, SHX3_2)
  else
    SHX1_2 = SetBlipDisplay
    SHX2_2 = SHX0_2.radiusBlip
    SHX3_2 = 2
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SetBlipDisplay
    SHX2_2 = SHX0_2.iconBlip
    SHX3_2 = 2
    SHX1_2(SHX2_2, SHX3_2)
  end
end
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = SHX4_1
  SHX2_2 = SHX2_2[SHX0_2]
  if not SHX2_2 then
    return
  end
  SHX3_2 = #SHX1_2
  SHX4_2 = 0.1
  SHX3_2 = SHX3_2 < SHX4_2
  SHX4_2 = SHX15_1
  SHX5_2 = SHX2_2
  SHX4_2(SHX5_2)
  while true do
    SHX4_2 = SHX14_1
    if SHX4_2 then
      break
    end
    SHX4_2 = Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = SHX15_1
  SHX5_2 = SHX2_2
  SHX4_2(SHX5_2)
  SHX4_2 = SHX0_1.levels
  SHX5_2 = SHX13_1
  SHX4_2 = SHX4_2[SHX5_2]
  SHX5_2 = math
  SHX5_2 = SHX5_2.random
  SHX6_2 = SHX0_1.targetSuspectedInaccuracy
  SHX6_2 = -SHX6_2
  SHX7_2 = SHX4_2.circleScale
  SHX6_2 = SHX6_2 * SHX7_2
  SHX7_2 = SHX0_1.targetSuspectedInaccuracy
  SHX8_2 = SHX4_2.circleScale
  SHX7_2 = SHX7_2 * SHX8_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = math
  SHX6_2 = SHX6_2.random
  SHX7_2 = SHX0_1.targetSuspectedInaccuracy
  SHX7_2 = -SHX7_2
  SHX8_2 = SHX4_2.circleScale
  SHX7_2 = SHX7_2 * SHX8_2
  SHX8_2 = SHX0_1.targetSuspectedInaccuracy
  SHX9_2 = SHX4_2.circleScale
  SHX8_2 = SHX8_2 * SHX9_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = vector3
  SHX8_2 = SHX5_2
  SHX9_2 = SHX6_2
  SHX10_2 = 0.0
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = SHX1_2 + SHX7_2
  if not SHX3_2 then
    SHX8_2 = AddBlipForRadius
    SHX9_2 = SHX7_2.x
    SHX10_2 = SHX7_2.y
    SHX11_2 = SHX7_2.z
    SHX12_2 = SHX0_1.targetSuspectedRadius
    SHX13_2 = SHX4_2.circleScale
    SHX12_2 = SHX12_2 * SHX13_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX2_2.radiusBlip = SHX8_2
    SHX8_2 = SetBlipColour
    SHX9_2 = SHX2_2.radiusBlip
    SHX10_2 = 47
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = SetBlipAlpha
    SHX9_2 = SHX2_2.radiusBlip
    SHX10_2 = 100
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = SetBlipPriority
    SHX9_2 = SHX2_2.radiusBlip
    SHX10_2 = 0
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = AddBlipForCoord
    SHX9_2 = SHX7_2.x
    SHX10_2 = SHX7_2.y
    SHX11_2 = SHX7_2.z
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX2_2.iconBlip = SHX8_2
    SHX8_2 = SetBlipSprite
    SHX9_2 = SHX2_2.iconBlip
    SHX10_2 = 774
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = SetBlipColour
    SHX9_2 = SHX2_2.iconBlip
    SHX10_2 = 1
    SHX8_2(SHX9_2, SHX10_2)
  end
  SHX8_2 = SHX17_1
  SHX9_2 = SHX2_2
  SHX8_2(SHX9_2)
  SHX2_2.lastLocation = SHX7_2
  if SHX3_2 then
    SHX2_2.lastPing = 0
  else
    SHX8_2 = GetGameTimer
    SHX8_2 = SHX8_2()
    SHX2_2.lastPing = SHX8_2
  end
end
SHX19_1 = RegisterNetEvent
SHX20_1 = "d9ca742ca3"
SHX21_1 = SHX18_1
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = RegisterNetEvent
SHX20_1 = "f80b5289a6"
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = SHX16_1
  SHX1_2()
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX18_1
    SHX8_2 = SHX5_2
    SHX9_2 = SHX6_2
    SHX7_2(SHX8_2, SHX9_2)
  end
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = RegisterNetEvent
SHX20_1 = "a4053df785"
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.bases
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = AddBlipForRadius
    SHX7_2 = SHX5_2.position
    SHX7_2 = SHX7_2.x
    SHX8_2 = SHX5_2.position
    SHX8_2 = SHX8_2.y
    SHX9_2 = SHX5_2.position
    SHX9_2 = SHX9_2.z
    SHX10_2 = SHX5_2.radius
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX5_2.radiusBlip = SHX6_2
    SHX6_2 = SetBlipColour
    SHX7_2 = SHX5_2.radiusBlip
    SHX8_2 = 5
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = SetBlipAlpha
    SHX7_2 = SHX5_2.radiusBlip
    SHX8_2 = 150
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.addBlip
    SHX7_2 = SHX5_2.position
    SHX7_2 = SHX7_2.x
    SHX8_2 = SHX5_2.position
    SHX8_2 = SHX8_2.y
    SHX9_2 = SHX5_2.position
    SHX9_2 = SHX9_2.z
    SHX10_2 = 492
    SHX11_2 = 59
    SHX12_2 = "Vigilante Base"
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX5_2.iconBlip = SHX6_2
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createGunStore
    SHX7_2 = string
    SHX7_2 = SHX7_2.format
    SHX8_2 = "vigilante_gunstore_%s"
    SHX9_2 = SHX4_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    SHX8_2 = "Vigilante"
    SHX9_2 = SHX5_2.gunstoreLocation
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX5_2.gunstoreId = SHX6_2
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createClothingMenu
    SHX7_2 = string
    SHX7_2 = SHX7_2.format
    SHX8_2 = "vigilante_clothing_%s"
    SHX9_2 = SHX4_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    SHX8_2 = SHX5_2.clothingLocation
    SHX6_2(SHX7_2, SHX8_2)
  end
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = RegisterNetEvent
SHX20_1 = "a5ae8ef365"
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX16_1
  SHX0_2()
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.bases
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.radiusBlip
    if SHX6_2 then
      SHX6_2 = RemoveBlip
      SHX7_2 = SHX5_2.radiusBlip
      SHX6_2(SHX7_2)
      SHX5_2.radiusBlip = nil
    end
    SHX6_2 = SHX5_2.iconBlip
    if SHX6_2 then
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.removeBlip
      SHX7_2 = SHX5_2.iconBlip
      SHX6_2(SHX7_2)
      SHX5_2.iconBlip = nil
    end
    SHX6_2 = SHX5_2.dropMarker
    if SHX6_2 then
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.removeMarker
      SHX7_2 = SHX5_2.dropMarker
      SHX6_2(SHX7_2)
      SHX5_2.dropMarker = nil
    end
    SHX6_2 = SHX5_2.gunstoreId
    if SHX6_2 then
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.deleteGunStore
      SHX7_2 = SHX5_2.gunstoreId
      SHX6_2(SHX7_2)
      SHX5_2.gunstoreId = nil
    end
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.deleteClothingMenu
    SHX7_2 = string
    SHX7_2 = SHX7_2.format
    SHX8_2 = "vigilante_clothing_%s"
    SHX9_2 = SHX4_2
    SHX7_2, SHX8_2, SHX9_2 = SHX7_2(SHX8_2, SHX9_2)
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  end
end
SHX19_1(SHX20_1, SHX21_1)
function SHX19_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX2_2 = IsEntityVisible
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = HasEntityClearLosToEntity
    SHX3_2 = PlayerPedId
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX0_2
    SHX5_2 = 17
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    if SHX2_2 then
      goto SHX_LABEL_15
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
  ::SHX_LABEL_15::
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX0_2
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = GetScreenCoordFromWorldCoord
  SHX4_2 = SHX2_2.x
  SHX5_2 = SHX2_2.y
  SHX6_2 = SHX2_2.z
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  if not SHX3_2 then
    return
  end
  SHX3_2 = GetPedBoneIndex
  SHX4_2 = SHX0_2
  SHX5_2 = 31086
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = GetPedBoneIndex
  SHX5_2 = SHX0_2
  SHX6_2 = 11816
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = GetWorldPositionOfEntityBone
  SHX6_2 = SHX0_2
  SHX7_2 = SHX3_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = GetWorldPositionOfEntityBone
  SHX7_2 = SHX0_2
  SHX8_2 = SHX4_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = GetScreenCoordFromWorldCoord
  SHX8_2 = SHX5_2.x
  SHX9_2 = SHX5_2.y
  SHX10_2 = SHX5_2.z
  SHX7_2, SHX8_2, SHX9_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX10_2 = GetScreenCoordFromWorldCoord
  SHX11_2 = SHX6_2.x
  SHX12_2 = SHX6_2.y
  SHX13_2 = SHX6_2.z
  SHX10_2, SHX11_2, SHX12_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX13_2 = SHX7_2 or SHX13_2
  SHX13_2 = SHX10_2 or SHX13_2
  if SHX7_2 and SHX10_2 then
    SHX13_2 = SHX12_2 - SHX9_2
    SHX14_2 = 0.025
    SHX13_2 = SHX13_2 > SHX14_2
  end
  SHX14_2 = CMG
  SHX14_2 = SHX14_2.getPlayerCoords
  SHX14_2 = SHX14_2()
  SHX14_2 = SHX2_2 - SHX14_2
  SHX14_2 = #SHX14_2
  SHX14_2 = SHX14_2 < 30.0
  if not SHX13_2 and not SHX14_2 then
    return
  end
  SHX15_2 = GetGameTimer
  SHX15_2 = SHX15_2()
  SHX16_2 = SHX5_1
  SHX16_2 = SHX16_2[SHX1_2]
  if SHX16_2 then
    SHX17_2 = SHX15_2 - SHX16_2
    SHX18_2 = 5000
    if not (SHX17_2 > SHX18_2) then
      goto SHX_LABEL_93
    end
  end
  SHX17_2 = notify
  SHX18_2 = "~y~A target has been identified and tagged."
  SHX17_2(SHX18_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_93:: outside nested blocks until all 'goto SHX_LABEL_93' can see it
  ::SHX_LABEL_93::
  SHX17_2 = SHX5_1
  SHX17_2[SHX1_2] = SHX15_2
  SHX17_2 = CMG
  SHX17_2 = SHX17_2.isPositionInGreenzone
  SHX18_2 = SHX2_2
  SHX17_2 = SHX17_2(SHX18_2)
  if SHX17_2 then
    return
  end
  SHX17_2 = SHX6_1
  SHX17_2 = SHX17_2[SHX1_2]
  if SHX17_2 then
    SHX18_2 = SHX15_2 - SHX17_2
    SHX19_2 = 10000
    if not (SHX18_2 > SHX19_2) then
      goto SHX_LABEL_117
    end
  end
  SHX18_2 = TriggerServerEvent
  SHX19_2 = "535f18d011"
  SHX20_2 = SHX1_2
  SHX18_2(SHX19_2, SHX20_2)
  SHX18_2 = SHX6_1
  SHX18_2[SHX1_2] = SHX15_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_117:: outside nested blocks until all 'goto SHX_LABEL_117' can see it
  ::SHX_LABEL_117::
end
SHX20_1 = vector2
SHX21_1 = 0.2
SHX22_1 = 0.4
SHX20_1 = SHX20_1(SHX21_1, SHX22_1)
function SHX21_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX3_2 = SHX7_1
  SHX3_2 = SHX3_2[SHX0_2]
  if not SHX3_2 then
    SHX4_2 = RegisterPedheadshot_3
    SHX5_2 = SHX0_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX3_2 = SHX4_2
    SHX4_2 = SHX7_1
    SHX4_2[SHX0_2] = SHX3_2
  end
  SHX4_2 = IsPedheadshotReady
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if SHX4_2 then
    SHX4_2 = IsPedheadshotValid
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      goto SHX_LABEL_23
    end
  end
  SHX4_2 = false
  return SHX4_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
  ::SHX_LABEL_23::
  SHX4_2 = GetPedheadshotTxdString
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    SHX5_2 = false
    return SHX5_2
  end
  SHX5_2 = fullPlayerListData
  SHX5_2 = SHX5_2[SHX2_2]
  if not SHX5_2 then
    SHX5_2 = false
    return SHX5_2
  end
  SHX5_2 = fullPlayerListData
  SHX5_2 = SHX5_2[SHX2_2]
  SHX5_2 = SHX5_2[2]
  SHX6_2 = GetActiveScreenResolution
  SHX6_2, SHX7_2 = SHX6_2()
  SHX8_2 = SHX7_2 / SHX6_2
  SHX9_2 = SHX1_2 - 1
  SHX9_2 = SHX9_2 * 0.15
  SHX10_2 = DrawRect
  SHX11_2 = SHX20_1.x
  SHX12_2 = SHX20_1.y
  SHX12_2 = SHX12_2 + SHX9_2
  SHX13_2 = SHX8_2 * 0.18
  SHX14_2 = 0.18
  SHX15_2 = 0
  SHX16_2 = 0
  SHX17_2 = 0
  SHX18_2 = 255
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX10_2 = DrawSprite
  SHX11_2 = SHX4_2
  SHX12_2 = SHX4_2
  SHX13_2 = 0.2
  SHX14_2 = SHX20_1.y
  SHX14_2 = SHX14_2 + SHX9_2
  SHX15_2 = SHX8_2 * 0.14
  SHX16_2 = 0.14
  SHX17_2 = 0.0
  SHX18_2 = 255
  SHX19_2 = 255
  SHX20_2 = 255
  SHX21_2 = 255
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.DrawText
  SHX11_2 = SHX20_1.x
  SHX12_2 = SHX20_1.y
  SHX12_2 = SHX12_2 + 0.06
  SHX13_2 = SHX9_2 * 1.02
  SHX12_2 = SHX12_2 + SHX13_2
  SHX13_2 = SHX5_2
  SHX14_2 = 0.25
  SHX15_2 = 0
  SHX16_2 = 0
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  if 1 == SHX1_2 then
    SHX10_2 = DrawRect
    SHX11_2 = SHX20_1.x
    SHX12_2 = SHX20_1.y
    SHX12_2 = SHX12_2 - 0.1
    SHX13_2 = SHX8_2 * 0.18
    SHX14_2 = 0.03
    SHX15_2 = 0
    SHX16_2 = 0
    SHX17_2 = 0
    SHX18_2 = 255
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX10_2 = CMG
    SHX10_2 = SHX10_2.DrawText
    SHX11_2 = SHX20_1.x
    SHX12_2 = SHX20_1.y
    SHX12_2 = SHX12_2 - 0.105
    SHX13_2 = "WANTED"
    SHX14_2 = 0.4
    SHX15_2 = 0
    SHX16_2 = 0
    SHX17_2 = {}
    SHX18_2 = 255
    SHX19_2 = 0
    SHX20_2 = 0
    SHX21_2 = 255
    SHX17_2[1] = SHX18_2
    SHX17_2[2] = SHX19_2
    SHX17_2[3] = SHX20_2
    SHX17_2[4] = SHX21_2
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  end
  SHX10_2 = true
  return SHX10_2
end
SHX22_1 = CMG
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = pairs
  SHX2_2 = SHX7_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = DoesEntityExist
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2)
    if not SHX7_2 or SHX0_2 then
      SHX7_2 = UnregisterPedheadshot
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
      SHX7_2 = SHX7_1
      SHX7_2[SHX5_2] = nil
    end
  end
end
SHX22_1.unregisterVigilanteHeadshots = SHX23_1
SHX22_1 = CMG
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientGroup
  SHX1_2 = "Vigilante"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    return
  end
  SHX0_2 = 1
  SHX1_2 = pairs
  SHX2_2 = SHX4_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.getClientUserSource
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX7_2 = GetPlayerFromServerId
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX7_2 >= 0 then
        SHX8_2 = GetPlayerPed
        SHX9_2 = SHX7_2
        SHX8_2 = SHX8_2(SHX9_2)
        if 0 ~= SHX8_2 then
          SHX9_2 = SHX19_1
          SHX10_2 = SHX8_2
          SHX11_2 = SHX6_2
          SHX9_2(SHX10_2, SHX11_2)
          SHX9_2 = SHX21_1
          SHX10_2 = SHX8_2
          SHX11_2 = SHX0_2
          SHX12_2 = SHX5_2
          SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
          if SHX9_2 then
            SHX0_2 = SHX0_2 + 1
          end
        end
      end
    end
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.unregisterVigilanteHeadshots
  SHX2_2 = false
  SHX1_2(SHX2_2)
end
SHX22_1.runVigilanteTargetCheckThisFrame = SHX23_1
SHX22_1 = CMG
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.clientGetUserIdFromSource
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX2_2 = SHX4_1
    SHX2_2 = SHX2_2[SHX1_2]
    if SHX2_2 then
      SHX2_2 = true
      return SHX2_2
    end
  end
  SHX2_2 = false
  return SHX2_2
end
SHX22_1.isPlayerABountyTarget = SHX23_1
SHX22_1 = CMG
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX5_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX1_2 = true
    if SHX1_2 then
      goto SHX_LABEL_9
    end
  end
  SHX1_2 = false
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  return SHX1_2
end
SHX22_1.isPlayerTaggedForBounty = SHX23_1
SHX22_1 = CMG
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX5_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX2_2 = SHX2_2 - SHX1_2
    SHX3_2 = SHX0_1.tagLongIdsDurationMsec
    if SHX2_2 < SHX3_2 then
      SHX2_2 = true
      return SHX2_2
    end
  end
  SHX2_2 = false
  return SHX2_2
end
SHX22_1.shouldShowTagForBounty = SHX23_1
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = AddBlipForEntity
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SetBlipAsShortRange
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetBlipDisplay
  SHX3_2 = SHX1_2
  SHX4_2 = 9
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetBlipSprite
  SHX3_2 = SHX1_2
  SHX4_2 = 480
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetBlipColour
  SHX3_2 = SHX1_2
  SHX4_2 = 28
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.addBlipContext
  SHX3_2 = "Vigilante"
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX23_1 = pairs
SHX24_1 = SHX0_1.bases
SHX23_1, SHX24_1, SHX25_1, SHX26_1 = SHX23_1(SHX24_1)
for SHX27_1, SHX28_1 in SHX23_1, SHX24_1, SHX25_1, SHX26_1 do
  SHX29_1 = CMG
  SHX29_1 = SHX29_1.createDynamicPed
  SHX30_1 = SHX0_1.pedModels
  SHX30_1 = SHX30_1.dropoff
  SHX31_1 = SHX28_1.pedLocation
  SHX31_1 = SHX31_1.xyz
  SHX32_1 = SHX28_1.pedLocation
  SHX32_1 = SHX32_1.w
  SHX33_1 = true
  SHX34_1 = "amb@world_human_hang_out_street@male_c@idle_a"
  SHX35_1 = "idle_b"
  SHX36_1 = 100.0
  SHX37_1 = false
  SHX38_1 = SHX22_1
  SHX29_1(SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1)
  SHX29_1 = CMG
  SHX29_1 = SHX29_1.createDynamicPed
  SHX30_1 = SHX0_1.pedModels
  SHX30_1 = SHX30_1.gunstore
  SHX31_1 = SHX28_1.gunstorePedLocation
  SHX31_1 = SHX31_1.xyz
  SHX32_1 = SHX28_1.gunstorePedLocation
  SHX32_1 = SHX32_1.w
  SHX33_1 = true
  SHX34_1 = "anim@miss@low@fin@vagos@"
  SHX35_1 = "idle_ped05"
  SHX36_1 = 100.0
  SHX37_1 = false
  SHX38_1 = SHX22_1
  SHX29_1(SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1)
  SHX29_1 = CMG
  SHX29_1 = SHX29_1.createDynamicPed
  SHX30_1 = SHX0_1.pedModels
  SHX30_1 = SHX30_1.market
  SHX31_1 = SHX28_1.marketPedLocation
  SHX31_1 = SHX31_1.xyz
  SHX32_1 = SHX28_1.marketPedLocation
  SHX32_1 = SHX32_1.w
  SHX33_1 = true
  SHX34_1 = "amb@world_human_hang_out_street@male_c@idle_a"
  SHX35_1 = "idle_b"
  SHX36_1 = 100.0
  SHX37_1 = false
  SHX38_1 = SHX22_1
  SHX29_1(SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1)
  SHX29_1 = CMG
  SHX29_1 = SHX29_1.createDynamicPed
  SHX30_1 = SHX0_1.pedModels
  SHX30_1 = SHX30_1.clockon
  SHX31_1 = SHX28_1.groupSelectorPedLocation
  SHX31_1 = SHX31_1.xyz
  SHX32_1 = SHX28_1.groupSelectorPedLocation
  SHX32_1 = SHX32_1.w
  SHX33_1 = true
  SHX34_1 = "amb@world_human_hang_out_street@male_c@idle_a"
  SHX35_1 = "idle_b"
  SHX36_1 = 100.0
  SHX37_1 = false
  SHX38_1 = SHX22_1
  SHX29_1(SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1)
end
SHX23_1 = AddEventHandler
SHX24_1 = "onResourceStop"
function SHX25_1(SHX0_2)
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
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.unregisterVigilanteHeadshots
    SHX2_2 = true
    SHX1_2(SHX2_2)
  end
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = RMenu
SHX23_1 = SHX23_1.Add
SHX24_1 = "vigilante"
SHX25_1 = "selectnearby"
SHX26_1 = RageUI
SHX26_1 = SHX26_1.CreateMenu
SHX27_1 = ""
SHX28_1 = "Vigilante Select Nearby"
SHX29_1 = CMG
SHX29_1 = SHX29_1.getRageUIMenuWidth
SHX29_1 = SHX29_1()
SHX30_1 = CMG
SHX30_1 = SHX30_1.getRageUIMenuHeight
SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1 = SHX30_1()
SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1)
SHX23_1(SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1)
SHX23_1 = RageUI
SHX23_1 = SHX23_1.CreateWhile
SHX24_1 = 1.0
SHX25_1 = RMenu
SHX26_1 = SHX25_1
SHX25_1 = SHX25_1.Get
SHX27_1 = "vigilante"
SHX28_1 = "selectnearby"
SHX25_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1)
SHX26_1 = nil
function SHX27_1()
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
  SHX3_2 = "vigilante"
  SHX4_2 = "selectnearby"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~Select players to share bounty with."
    SHX0_3(SHX1_3)
    SHX0_3 = 0
    SHX1_3 = pairs
    SHX2_3 = SHX9_1
    SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
    for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
      SHX7_3 = GetPlayerFromServerId
      SHX8_3 = tonumber
      SHX9_3 = SHX5_3
      SHX8_3 = SHX8_3(SHX9_3)
      if not SHX8_3 then
        SHX8_3 = 0
      end
      SHX7_3 = SHX7_3(SHX8_3)
      if SHX7_3 >= 0 then
        SHX8_3 = RageUI
        SHX8_3 = SHX8_3.Checkbox
        SHX9_3 = string
        SHX9_3 = SHX9_3.format
        SHX10_3 = "%s [%s]"
        SHX11_3 = CMG
        SHX11_3 = SHX11_3.getPlayerName
        SHX12_3 = SHX7_3
        SHX11_3 = SHX11_3(SHX12_3)
        SHX12_3 = SHX5_3
        SHX9_3 = SHX9_3(SHX10_3, SHX11_3, SHX12_3)
        SHX10_3 = ""
        SHX11_3 = SHX6_3
        SHX12_3 = {}
        function SHX13_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX4_4, SHX5_4
          SHX4_4 = SHX6_3
          if SHX3_4 ~= SHX4_4 then
            SHX4_4 = SHX5_3
            SHX5_4 = CMG
            SHX5_4 = SHX5_4.getLocalPlayerSrc
            SHX5_4 = SHX5_4()
            if SHX4_4 ~= SHX5_4 then
              SHX5_4 = SHX5_3
              SHX4_4 = SHX9_1
              SHX4_4[SHX5_4] = SHX3_4
            end
          end
        end
        SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
        if SHX6_3 then
          SHX0_3 = SHX0_3 + 1
        end
      end
    end
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "~g~Proceed With Jailing"
    SHX3_3 = string
    SHX3_3 = SHX3_3.format
    SHX4_3 = "You may share your bounty with up to %s additional vigilantes."
    SHX5_3 = SHX0_1.maxNumOtherPlayersToShareWith
    SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
    SHX4_3 = {}
    SHX4_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX5_3 = SHX0_1.maxNumOtherPlayersToShareWith
    SHX5_3 = SHX5_3 + 1
    SHX5_3 = SHX0_3 <= SHX5_3
    function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4
      if SHX2_4 then
        SHX3_4 = true
        SHX10_1 = SHX3_4
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.CloseAll
        SHX3_4()
      end
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
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
SHX23_1(SHX24_1, SHX25_1, SHX26_1, SHX27_1)
SHX23_1 = RegisterNetEvent
SHX24_1 = "c3caa6977b"
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.startCircularProgressBar
  SHX2_2 = ""
  SHX3_2 = SHX0_2 or SHX3_2
  if not SHX0_2 then
    SHX3_2 = SHX0_1.jailCountdownMsec
  end
  SHX4_2 = nil
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = RegisterNetEvent
SHX24_1 = "b30fc1bd9d"
function SHX25_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX2_2 = pairs
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX1_2[SHX6_2] = false
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getLocalPlayerSrc
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX1_2[SHX2_2]
  if nil ~= SHX3_2 then
    SHX1_2[SHX2_2] = true
  end
  SHX3_2 = tostring
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX1_2[SHX3_2]
  if nil ~= SHX4_2 then
    SHX1_2[SHX3_2] = true
  end
  SHX9_1 = SHX1_2
  SHX4_2 = false
  SHX10_1 = SHX4_2
  SHX4_2 = RageUI
  SHX4_2 = SHX4_2.Visible
  SHX5_2 = RMenu
  SHX6_2 = SHX5_2
  SHX5_2 = SHX5_2.Get
  SHX7_2 = "vigilante"
  SHX8_2 = "selectnearby"
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  while true do
    SHX4_2 = SHX10_1
    if nil == SHX4_2 then
      return
    end
    SHX4_2 = SHX10_1
    if SHX4_2 then
      break
    end
    SHX4_2 = Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = TriggerServerEvent
  SHX5_2 = "63e5e5694b"
  SHX6_2 = SHX0_2
  SHX4_2(SHX5_2, SHX6_2)
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = RegisterNetEvent
SHX24_1 = "59804b2139"
function SHX25_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.isUsingDelGun
  SHX3_2 = SHX3_2()
  if not SHX3_2 then
    SHX3_2 = GetSelectedPedWeapon
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if -1569615261 ~= SHX3_2 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.setWeapon
      SHX4_2 = SHX2_2
      SHX5_2 = -1569615261
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = Wait
      SHX4_2 = 2000
      SHX3_2(SHX4_2)
    end
  end
  SHX3_2 = TaskStartScenarioInPlace
  SHX4_2 = SHX2_2
  SHX5_2 = "WORLD_HUMAN_CLIPBOARD"
  SHX6_2 = 0
  SHX7_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = type
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_2 = SHX1_2 or SHX3_2
  if not ("number" == SHX3_2 and SHX1_2 > 0) or not SHX1_2 then
    SHX3_2 = SHX0_1.jailCountdownMsec
  end
  SHX4_2 = true
  SHX8_1 = SHX4_2
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.CreateThread
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.startCircularProgressBar
    SHX1_3 = ""
    SHX2_3 = SHX3_2
    SHX3_3 = nil
    function SHX4_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    SHX0_3 = SHX8_1
    if SHX0_3 then
      SHX0_3 = SHX0_2
      if SHX0_3 then
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "917a7ba88e"
        SHX2_3 = SHX0_2
        SHX3_3 = SHX9_1
        SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      end
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.CloseAll
    SHX0_3()
    SHX0_3 = false
    SHX8_1 = SHX0_3
  end
  SHX4_2(SHX5_2)
  if not SHX0_2 then
    return
  end
  SHX4_2 = GetPlayerFromServerId
  SHX5_2 = tonumber
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2)
  if not SHX5_2 then
    SHX5_2 = 0
  end
  SHX4_2 = SHX4_2(SHX5_2)
  if SHX4_2 < 0 then
    return
  end
  SHX5_2 = GetPlayerPed
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  if 0 == SHX5_2 or SHX5_2 == SHX2_2 then
    return
  end
  SHX6_2 = GetGameTimer
  SHX6_2 = SHX6_2()
  while true do
    SHX7_2 = SHX8_1
    if not SHX7_2 then
      break
    end
    SHX7_2 = GetGameTimer
    SHX7_2 = SHX7_2()
    SHX8_2 = IsPedUsingScenario
    SHX9_2 = PlayerPedId
    SHX9_2 = SHX9_2()
    SHX10_2 = "WORLD_HUMAN_CLIPBOARD"
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    if SHX8_2 then
      SHX6_2 = SHX7_2
    end
    SHX8_2 = SHX7_2 - SHX6_2
    SHX9_2 = 1000
    SHX8_2 = SHX8_2 > SHX9_2
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.getPlayerCoords
    SHX9_2 = SHX9_2()
    SHX10_2 = GetEntityCoords
    SHX11_2 = SHX5_2
    SHX12_2 = true
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
    SHX9_2 = SHX9_2 - SHX10_2
    SHX9_2 = #SHX9_2
    if not (SHX9_2 > 10.0) then
      SHX10_2 = IsEntityDead
      SHX11_2 = SHX2_2
      SHX10_2 = SHX10_2(SHX11_2)
      if not SHX10_2 then
        SHX10_2 = IsEntityDead
        SHX11_2 = SHX5_2
        SHX10_2 = SHX10_2(SHX11_2)
        if not SHX10_2 then
          SHX10_2 = IsPedRagdoll
          SHX11_2 = SHX2_2
          SHX10_2 = SHX10_2(SHX11_2)
          if not SHX10_2 then
            SHX10_2 = IsPedRagdoll
            SHX11_2 = SHX5_2
            SHX10_2 = SHX10_2(SHX11_2)
            if not (SHX10_2 or SHX8_2) then
              goto SHX_LABEL_127
            end
          end
        end
      end
    end
    SHX10_2 = TriggerServerEvent
    SHX11_2 = "8fc9bde106"
    SHX12_2 = SHX0_2
    SHX10_2(SHX11_2, SHX12_2)
    do break end
    -- [FIX IF ERROR] Move ::SHX_LABEL_127:: outside nested blocks until all 'goto SHX_LABEL_127' can see it
    ::SHX_LABEL_127::
    SHX10_2 = Wait
    SHX11_2 = 0
    SHX10_2(SHX11_2)
  end
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = RegisterNetEvent
SHX24_1 = "8fc9bde106"
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = ClearPedTasks
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.stopCircularProgressBar
  SHX0_2()
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.CloseAll
  SHX0_2()
  SHX0_2 = false
  SHX8_1 = SHX0_2
  SHX0_2 = notify
  SHX1_2 = "~r~You or the target are no longer in a suitable situation to jail."
  SHX0_2(SHX1_2)
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = RegisterNetEvent
SHX24_1 = "003eadf2da"
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if "vigilantelicense" == SHX0_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "e7a86c3e34"
    SHX1_2(SHX2_2)
  end
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = RegisterNetEvent
SHX24_1 = "f1dae6cf3d"
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if "vigilantelicense" == SHX0_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "e7a86c3e34"
    SHX1_2(SHX2_2)
  end
  if "Vigilante" == SHX0_2 then
    SHX1_2 = TriggerEvent
    SHX2_2 = "e713d91b70"
    SHX1_2(SHX2_2)
  end
end
SHX23_1(SHX24_1, SHX25_1)
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "792bb741c8"
  SHX1_2(SHX2_2)
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "67e7dfc964"
  SHX1_2(SHX2_2)
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = SHX4_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = true
    SHX9_2 = SHX7_2.isVisible
    if nil ~= SHX9_2 then
      SHX8_2 = SHX7_2.isVisible
    end
    SHX9_2 = 0
    SHX10_2 = -1
    SHX11_2 = SHX7_2.lastPing
    if SHX11_2 then
      SHX11_2 = SHX7_2.lastPing
      if SHX11_2 > 0 then
        SHX11_2 = math
        SHX11_2 = SHX11_2.floor
        SHX12_2 = GetGameTimer
        SHX12_2 = SHX12_2()
        SHX13_2 = SHX7_2.lastPing
        SHX12_2 = SHX12_2 - SHX13_2
        SHX12_2 = SHX12_2 / 1000.0
        SHX11_2 = SHX11_2(SHX12_2)
        SHX9_2 = SHX11_2
        SHX11_2 = SHX7_2.lastLocation
        if SHX11_2 then
          SHX11_2 = math
          SHX11_2 = SHX11_2.floor
          SHX12_2 = SHX7_2.lastLocation
          SHX13_2 = CMG
          SHX13_2 = SHX13_2.getPlayerCoords
          SHX13_2 = SHX13_2()
          SHX12_2 = SHX12_2 - SHX13_2
          SHX12_2 = #SHX12_2
          SHX11_2 = SHX11_2(SHX12_2)
          SHX10_2 = SHX11_2
        end
      end
    end
    SHX11_2 = table
    SHX11_2 = SHX11_2.insert
    SHX12_2 = SHX1_2
    SHX13_2 = {}
    SHX14_2 = SHX7_2.name
    SHX13_2.name = SHX14_2
    SHX14_2 = SHX7_2.offenses
    SHX13_2.offenses = SHX14_2
    SHX14_2 = SHX7_2.totalOutstanding
    SHX13_2.totalOutstanding = SHX14_2
    SHX13_2.lastPing = SHX9_2
    SHX13_2.distance = SHX10_2
    SHX13_2.visible = SHX8_2
    SHX13_2.userId = SHX6_2
    SHX11_2(SHX12_2, SHX13_2)
  end
  SHX2_2 = table
  SHX2_2 = SHX2_2.sort
  SHX3_2 = SHX1_2
  function SHX4_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3
    SHX2_3 = SHX0_3.name
    SHX3_3 = SHX1_3.name
    SHX2_3 = SHX2_3 < SHX3_3
    return SHX2_3
  end
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = TriggerEvent
  SHX3_2 = "CMG:updateVigilanteTargets"
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = TriggerEvent
  SHX3_2 = "CMG:setVigilanteAppConfig"
  SHX4_2 = SHX0_1.levels
  SHX2_2(SHX3_2, SHX4_2)
  if SHX0_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "4499b42011"
    SHX2_2(SHX3_2)
  end
end
SHX24_1 = AddEventHandler
SHX25_1 = "CMG:fetchVigilanteAppData"
SHX26_1 = SHX23_1
SHX24_1(SHX25_1, SHX26_1)
SHX24_1 = AddEventHandler
SHX25_1 = "CMG:toggleVigilanteTargetVisibility"
function SHX26_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX4_1
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX2_2.isVisible = SHX1_2
    SHX3_2 = SHX23_1
    SHX4_2 = true
    SHX3_2(SHX4_2)
    SHX3_2 = SHX17_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  end
end
SHX24_1(SHX25_1, SHX26_1)
SHX24_1 = RegisterNetEvent
SHX25_1 = "517cbfa8cc"
function SHX26_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.announceMpBigMsg
  SHX2_2 = "LEVEL UP"
  SHX3_2 = "You have levelled up to level "
  SHX4_2 = tostring
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = "!"
  SHX3_2 = SHX3_2 .. SHX4_2 .. SHX5_2
  SHX4_2 = 10000
  SHX5_2 = nil
  SHX6_2 = nil
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX24_1(SHX25_1, SHX26_1)
SHX24_1 = 0
SHX25_1 = 0
SHX26_1 = {}
SHX27_1 = {}
SHX28_1 = {}
SHX29_1 = 1
function SHX30_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = IsNamedRendertargetRegistered
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = RegisterNamedRendertarget
    SHX3_2 = SHX0_2
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
  end
  SHX2_2 = IsNamedRendertargetLinked
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = LinkNamedRendertarget
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
  end
  SHX2_2 = IsNamedRendertargetLinked
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = GetNamedRendertargetRenderId
    SHX3_2 = SHX0_2
    return SHX2_2(SHX3_2)
  else
    SHX2_2 = 0
    return SHX2_2
  end
end
function SHX31_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = SHX0_1.statsBoardModel
  SHX1_2(SHX2_2)
  SHX1_2 = CreateObject
  SHX2_2 = SHX0_1.statsBoardModel
  SHX3_2 = SHX0_2.position
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX0_2.position
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX0_2.position
  SHX5_2 = SHX5_2.z
  SHX6_2 = false
  SHX7_2 = false
  SHX8_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX24_1 = SHX1_2
  SHX1_2 = SetModelAsNoLongerNeeded
  SHX2_2 = SHX0_1.statsBoardModel
  SHX1_2(SHX2_2)
  SHX1_2 = SetEntityHeading
  SHX2_2 = SHX24_1
  SHX3_2 = SHX0_2.position
  SHX3_2 = SHX3_2.w
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityLodDist
  SHX2_2 = SHX24_1
  SHX3_2 = 75
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX30_1
  SHX2_2 = "cmgtv9"
  SHX3_2 = SHX0_1.statsBoardModel
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX25_1 = SHX1_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "8573debb45"
  SHX1_2(SHX2_2)
end
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = DeleteEntity
  SHX1_2 = SHX24_1
  SHX0_2(SHX1_2)
  SHX0_2 = 0
  SHX24_1 = SHX0_2
  SHX0_2 = ReleaseNamedRendertarget
  SHX1_2 = "cmgtv9"
  SHX0_2(SHX1_2)
  SHX0_2 = 0
  SHX25_1 = SHX0_2
end
SHX33_1 = {}
SHX34_1 = {}
SHX35_1 = 255
SHX36_1 = 215
SHX37_1 = 0
SHX34_1[1] = SHX35_1
SHX34_1[2] = SHX36_1
SHX34_1[3] = SHX37_1
SHX35_1 = {}
SHX36_1 = 192
SHX37_1 = 192
SHX38_1 = 192
SHX35_1[1] = SHX36_1
SHX35_1[2] = SHX37_1
SHX35_1[3] = SHX38_1
SHX36_1 = {}
SHX37_1 = 140
SHX38_1 = 120
SHX39_1 = 83
SHX36_1[1] = SHX37_1
SHX36_1[2] = SHX38_1
SHX36_1[3] = SHX39_1
SHX37_1 = {}
SHX38_1 = 140
SHX39_1 = 120
SHX40_1 = 83
SHX37_1[1] = SHX38_1
SHX37_1[2] = SHX39_1
SHX37_1[3] = SHX40_1
SHX38_1 = {}
SHX39_1 = 140
SHX40_1 = 120
SHX41_1 = 83
SHX38_1[1] = SHX39_1
SHX38_1[2] = SHX40_1
SHX38_1[3] = SHX41_1
SHX39_1 = {}
SHX40_1 = 140
SHX41_1 = 120
SHX42_1 = 83
SHX39_1[1] = SHX40_1
SHX39_1[2] = SHX41_1
SHX39_1[3] = SHX42_1
SHX40_1 = {}
SHX41_1 = 140
SHX42_1 = 120
SHX43_1 = 83
SHX40_1[1] = SHX41_1
SHX40_1[2] = SHX42_1
SHX40_1[3] = SHX43_1
SHX41_1 = {}
SHX42_1 = 140
SHX43_1 = 120
SHX44_1 = 83
SHX41_1[1] = SHX42_1
SHX41_1[2] = SHX43_1
SHX41_1[3] = SHX44_1
SHX42_1 = {}
SHX43_1 = 140
SHX44_1 = 120
SHX45_1 = 83
SHX42_1[1] = SHX43_1
SHX42_1[2] = SHX44_1
SHX42_1[3] = SHX45_1
SHX43_1 = {}
SHX44_1 = 140
SHX45_1 = 120
SHX46_1 = 83
SHX43_1[1] = SHX44_1
SHX43_1[2] = SHX45_1
SHX43_1[3] = SHX46_1
SHX33_1[1] = SHX34_1
SHX33_1[2] = SHX35_1
SHX33_1[3] = SHX36_1
SHX33_1[4] = SHX37_1
SHX33_1[5] = SHX38_1
SHX33_1[6] = SHX39_1
SHX33_1[7] = SHX40_1
SHX33_1[8] = SHX41_1
SHX33_1[9] = SHX42_1
SHX33_1[10] = SHX43_1
function SHX34_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  SHX1_2 = SHX0_2.distance
  if SHX1_2 > 50.0 then
    return
  end
  SHX1_2 = SetTextRenderId
  SHX2_2 = SHX25_1
  SHX1_2(SHX2_2)
  SHX1_2 = SetScriptGfxDrawOrder
  SHX2_2 = 4
  SHX1_2(SHX2_2)
  SHX1_2 = SetScriptGfxDrawBehindPausemenu
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = "Top Arrests"
  SHX2_2 = SHX26_1
  SHX3_2 = SHX29_1
  if 2 == SHX3_2 then
    SHX1_2 = "Top Earnings"
    SHX2_2 = SHX27_1
  else
    SHX3_2 = SHX29_1
    if 3 == SHX3_2 then
      SHX1_2 = "Top Largest Bounties"
      SHX2_2 = SHX28_1
    end
  end
  SHX3_2 = DrawAdvancedText
  SHX4_2 = 0.6
  SHX5_2 = 0.0
  SHX6_2 = 0.005
  SHX7_2 = 0.0028
  SHX8_2 = 0.7
  SHX9_2 = SHX1_2
  SHX10_2 = 248
  SHX11_2 = 246
  SHX12_2 = 240
  SHX13_2 = 200
  SHX14_2 = 4
  SHX15_2 = 0
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX3_2 = DrawAdvancedText
  SHX4_2 = 0.15
  SHX5_2 = 0.17
  SHX6_2 = 0.005
  SHX7_2 = 0.0028
  SHX8_2 = 0.4
  SHX9_2 = "Name"
  SHX10_2 = 248
  SHX11_2 = 246
  SHX12_2 = 240
  SHX13_2 = 255
  SHX14_2 = 4
  SHX15_2 = 1
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX3_2 = DrawAdvancedText
  SHX4_2 = 0.5
  SHX5_2 = 0.17
  SHX6_2 = 0.005
  SHX7_2 = 0.0028
  SHX8_2 = 0.4
  SHX9_2 = "Perm ID"
  SHX10_2 = 248
  SHX11_2 = 246
  SHX12_2 = 240
  SHX13_2 = 255
  SHX14_2 = 4
  SHX15_2 = 1
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX3_2 = DrawAdvancedText
  SHX4_2 = 0.9
  SHX5_2 = 0.17
  SHX6_2 = 0.005
  SHX7_2 = 0.0028
  SHX8_2 = 0.4
  SHX9_2 = "Amount"
  SHX10_2 = 248
  SHX11_2 = 246
  SHX12_2 = 240
  SHX13_2 = 255
  SHX14_2 = 4
  SHX15_2 = 1
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX3_2 = DrawRect
  SHX4_2 = 0.5
  SHX5_2 = 0.26
  SHX6_2 = 0.95
  SHX7_2 = 0.005
  SHX8_2 = 248
  SHX9_2 = 246
  SHX10_2 = 240
  SHX11_2 = 255
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = pairs
  SHX4_2 = SHX2_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX33_1
    SHX9_2 = SHX9_2[SHX7_2]
    if SHX9_2 and SHX8_2 then
      SHX10_2 = DrawAdvancedText
      SHX11_2 = 0.15
      SHX12_2 = 0.07 * SHX7_2
      SHX12_2 = 0.205 + SHX12_2
      SHX13_2 = 0.005
      SHX14_2 = 0.0028
      SHX15_2 = 0.34
      SHX16_2 = SHX8_2[1]
      SHX17_2 = SHX9_2[1]
      SHX18_2 = SHX9_2[2]
      SHX19_2 = SHX9_2[3]
      SHX20_2 = 255
      SHX21_2 = 4
      SHX22_2 = 1
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
      SHX10_2 = DrawAdvancedText
      SHX11_2 = 0.5
      SHX12_2 = 0.07 * SHX7_2
      SHX12_2 = 0.205 + SHX12_2
      SHX13_2 = 0.005
      SHX14_2 = 0.0028
      SHX15_2 = 0.35
      SHX16_2 = SHX8_2[2]
      SHX17_2 = SHX9_2[1]
      SHX18_2 = SHX9_2[2]
      SHX19_2 = SHX9_2[3]
      SHX20_2 = 255
      SHX21_2 = 4
      SHX22_2 = 1
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
      SHX10_2 = SHX29_1
      if 1 ~= SHX10_2 then
        SHX10_2 = "\194\163"
        SHX11_2 = getMoneyStringFormatted
        SHX12_2 = SHX8_2[3]
        SHX11_2 = SHX11_2(SHX12_2)
        SHX10_2 = SHX10_2 .. SHX11_2
        if SHX10_2 then
          goto SHX_LABEL_148
        end
      end
      SHX10_2 = SHX8_2[3]
      -- [FIX IF ERROR] Move ::SHX_LABEL_148:: outside nested blocks until all 'goto SHX_LABEL_148' can see it
      ::SHX_LABEL_148::
      SHX11_2 = DrawAdvancedText
      SHX12_2 = 0.9
      SHX13_2 = 0.07 * SHX7_2
      SHX13_2 = 0.205 + SHX13_2
      SHX14_2 = 0.005
      SHX15_2 = 0.0028
      SHX16_2 = 0.35
      SHX17_2 = SHX10_2
      SHX18_2 = SHX9_2[1]
      SHX19_2 = SHX9_2[2]
      SHX20_2 = SHX9_2[3]
      SHX21_2 = 255
      SHX22_2 = 4
      SHX23_2 = 1
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
    end
  end
  SHX3_2 = SetTextRenderId
  SHX4_2 = GetDefaultScriptRendertargetRenderId
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX4_2()
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  SHX3_2 = SetScriptGfxDrawBehindPausemenu
  SHX4_2 = false
  SHX3_2(SHX4_2)
  SHX3_2 = SHX0_2.distance
  SHX4_2 = 2.5
  if SHX3_2 < SHX4_2 then
    SHX3_2 = drawNativeNotification
    SHX4_2 = "Press ~INPUT_CONTEXT~ to switch page"
    SHX3_2(SHX4_2)
    SHX3_2 = IsControlJustPressed
    SHX4_2 = 0
    SHX5_2 = 51
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if SHX3_2 then
      SHX3_2 = TriggerServerEvent
      SHX4_2 = "f6d938d757"
      SHX3_2(SHX4_2)
    end
  end
end
SHX35_1 = pairs
SHX36_1 = SHX0_1.statsBoardLocations
SHX35_1, SHX36_1, SHX37_1, SHX38_1 = SHX35_1(SHX36_1)
for SHX39_1, SHX40_1 in SHX35_1, SHX36_1, SHX37_1, SHX38_1 do
  SHX41_1 = CMG
  SHX41_1 = SHX41_1.createArea
  SHX42_1 = "vigilante_tv_"
  SHX43_1 = tostring
  SHX44_1 = SHX39_1
  SHX43_1 = SHX43_1(SHX44_1)
  SHX42_1 = SHX42_1 .. SHX43_1
  SHX43_1 = SHX40_1.xyz
  SHX44_1 = 100.0
  SHX45_1 = 500.0
  SHX46_1 = SHX31_1
  SHX47_1 = SHX32_1
  SHX48_1 = SHX34_1
  SHX49_1 = {}
  SHX49_1.position = SHX40_1
  SHX41_1(SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1)
end
SHX35_1 = AddEventHandler
SHX36_1 = "onResourceStop"
function SHX37_1(SHX0_2)
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
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX24_1
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX24_1
      SHX1_2(SHX2_2)
    end
  end
end
SHX35_1(SHX36_1, SHX37_1)
SHX35_1 = RegisterNetEvent
SHX36_1 = "534ad5c8ab"
function SHX37_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX26_1 = SHX0_2
  SHX27_1 = SHX1_2
  SHX28_1 = SHX2_2
  SHX29_1 = SHX3_2
end
SHX35_1(SHX36_1, SHX37_1)
SHX35_1 = RegisterNetEvent
SHX36_1 = "f6d938d757"
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX29_1 = SHX0_2
end
SHX35_1(SHX36_1, SHX37_1)
SHX35_1 = RegisterNetEvent
SHX36_1 = "aac7394dd7"
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = ClearPedTasks
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX0_2(SHX1_2)
end
SHX35_1(SHX36_1, SHX37_1)
function SHX35_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientGroup
  SHX1_2 = "Vigilante"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.shouldSkipSavedPosition
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isUsingDelGun
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    return
  end
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 6768186 == SHX1_2 then
    return
  end
  SHX1_2 = GetSelectedPedWeapon
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -1569615261 == SHX1_2 then
    return
  end
  SHX2_2 = SHX11_1
  SHX2_2 = SHX2_2[SHX1_2]
  if SHX2_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.hasClientPermission
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if not SHX3_2 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.setWeapon
      SHX4_2 = SHX0_2
      SHX5_2 = -1569615261
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = notify
      SHX4_2 = "~r~You are not of a high enough level to use this gun."
      SHX3_2(SHX4_2)
      return
    end
  end
  SHX3_2 = SHX12_1
  SHX3_2 = SHX3_2[SHX1_2]
  if not SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setWeapon
    SHX4_2 = SHX0_2
    SHX5_2 = -1569615261
    SHX6_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = notify
    SHX4_2 = "~r~You can only use vigilante weapons while clocked on."
    SHX3_2(SHX4_2)
  end
end
SHX36_1 = CMG
SHX36_1 = SHX36_1.createThreadOnTick
SHX37_1 = SHX35_1
SHX38_1 = "Vigilante"
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = RegisterNetEvent
SHX37_1 = "e9d0792f35"
function SHX38_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  if SHX2_2 then
    SHX3_2 = "~g~The vigilante has provided proof for the legitimacy of your arrest."
    if SHX3_2 then
      goto SHX_LABEL_7
    end
  end
  SHX3_2 = "~r~The vigilante has not provided any other information."
  -- [FIX IF ERROR] Move ::SHX_LABEL_7:: outside nested blocks until all 'goto SHX_LABEL_7' can see it
  ::SHX_LABEL_7::
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.notifyPicture
  SHX5_2 = "polnotification"
  SHX6_2 = "vigilante"
  SHX7_2 = string
  SHX7_2 = SHX7_2.format
  SHX8_2 = [[
~y~Name: %s
Temp ID: %s

%s]]
  SHX9_2 = SHX1_2
  SHX10_2 = SHX0_2
  SHX11_2 = SHX3_2
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX8_2 = "Vigilante Card"
  SHX9_2 = "~y~User Information"
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = RegisterNetEvent
SHX37_1 = "f4da8f66cc"
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = 1409747695
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.requestEntitySpawn
  SHX3_2 = "vigilante_card_object"
  SHX2_2(SHX3_2)
  SHX2_2 = CreateObject
  SHX3_2 = SHX1_2
  SHX4_2 = 0
  SHX5_2 = 0
  SHX6_2 = 0
  SHX7_2 = true
  SHX8_2 = true
  SHX9_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  while true do
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = SetModelAsNoLongerNeeded
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
  SHX3_2 = FreezeEntityPosition
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = AttachEntityToEntity
  SHX4_2 = SHX2_2
  SHX5_2 = SHX0_2
  SHX6_2 = GetPedBoneIndex
  SHX7_2 = SHX0_2
  SHX8_2 = 58866
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = 0.03
  SHX8_2 = -0.05
  SHX9_2 = -0.044
  SHX10_2 = 0.0
  SHX11_2 = 90.0
  SHX12_2 = 25.0
  SHX13_2 = true
  SHX14_2 = true
  SHX15_2 = false
  SHX16_2 = true
  SHX17_2 = 1
  SHX18_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX3_2 = Wait
  SHX4_2 = 3000
  SHX3_2(SHX4_2)
  SHX3_2 = DeleteObject
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = CMG
SHX36_1 = SHX36_1.registerDevMenuItems
SHX37_1 = "Vigilante"
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Set Bounty Amount"
  SHX2_2 = ""
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = TriggerServerEvent
      SHX4_3 = "969fa69817"
      SHX3_3(SHX4_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = Citizen
SHX36_1 = SHX36_1.CreateThread
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = pairs
  SHX1_2 = SHX1_1.weapons
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.ammo
    if "plastic" == SHX6_2 then
      SHX6_2 = GetHashKey
      SHX7_2 = SHX4_2
      SHX6_2 = SHX6_2(SHX7_2)
      SHX7_2 = SHX5_2.class
      if "SMG" == SHX7_2 then
        SHX7_2 = SHX11_1
        SHX7_2[SHX6_2] = "vigilantesting.whitelisted"
      else
        SHX7_2 = SHX5_2.class
        if "AR" == SHX7_2 then
          SHX7_2 = SHX11_1
          SHX7_2[SHX6_2] = "vigilantespar16.whitelisted"
        else
          SHX7_2 = SHX5_2.subType
          if "musket" == SHX7_2 then
            SHX7_2 = SHX11_1
            SHX7_2[SHX6_2] = "vigilantemosin.whitelisted"
          end
        end
      end
    end
  end
  SHX0_2 = SHX2_1.CMGGunStores
  if SHX0_2 then
    SHX0_2 = SHX2_1.CMGGunStores
    SHX0_2 = SHX0_2.Vigilante
  end
  if SHX0_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX0_2
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      if "_config" ~= SHX5_2 then
        SHX7_2 = string
        SHX7_2 = SHX7_2.find
        SHX8_2 = SHX5_2
        SHX9_2 = "^item|"
        SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
        if not SHX7_2 then
          SHX7_2 = GetHashKey
          SHX8_2 = SHX5_2
          SHX7_2 = SHX7_2(SHX8_2)
          SHX8_2 = SHX12_1
          SHX8_2[SHX7_2] = true
        end
      end
    end
  end
end
SHX36_1(SHX37_1)
SHX36_1 = false
SHX37_1 = "vigiJammer"
SHX38_1 = RegisterNetEvent
SHX39_1 = "f69c81fc30"
function SHX40_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX36_1 = SHX0_2
  if SHX0_2 and SHX1_2 and SHX1_2 > 0 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.addHudDurationTimer
    SHX3_2 = SHX37_1
    SHX4_2 = "Vigilante Jammer"
    SHX5_2 = SHX1_2
    SHX6_2 = nil
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  else
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.removeHudTimer
    SHX3_2 = SHX37_1
    SHX2_2(SHX3_2)
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.refreshMoneyUI
  SHX2_2()
end
SHX38_1(SHX39_1, SHX40_1)
SHX38_1 = CMG
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX36_1
  return SHX0_2
end
SHX38_1.isBountyJammed = SHX39_1
SHX38_1 = {}
SHX39_1 = DecorRegister
SHX40_1 = "f1f74bea1b"
SHX41_1 = 3
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = RegisterNetEvent
SHX40_1 = "3bf0c6ee80"
function SHX41_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadModel
  SHX3_2 = "amkzw_medic_skeleton"
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = CreateObject
  SHX4_2 = SHX2_2
  SHX5_2 = SHX1_2.x
  SHX6_2 = SHX1_2.y
  SHX7_2 = SHX1_2.z
  SHX8_2 = false
  SHX9_2 = true
  SHX10_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX4_2 = FreezeEntityPosition
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = PlaceObjectOnGroundProperly
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = SetEntityRotation
  SHX5_2 = SHX3_2
  SHX6_2 = -90.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 2
  SHX10_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX4_2 = DecorSetInt
  SHX5_2 = SHX3_2
  SHX6_2 = "f1f74bea1b"
  SHX7_2 = SHX0_2
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SetModelAsNoLongerNeeded
  SHX5_2 = SHX2_2
  SHX4_2(SHX5_2)
  SHX4_2 = SHX38_1
  SHX4_2[SHX0_2] = SHX3_2
  SHX4_2 = SetTimeout
  SHX5_2 = 600000
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX1_3 = SHX0_2
    SHX0_3 = SHX38_1
    SHX0_3[SHX1_3] = nil
    SHX0_3 = DeleteObject
    SHX1_3 = SHX3_2
    SHX0_3(SHX1_3)
  end
  SHX4_2(SHX5_2, SHX6_2)
end
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = RegisterNetEvent
SHX40_1 = "3b9fdf5c44"
function SHX41_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX38_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = SHX38_1
    SHX2_2[SHX0_2] = nil
    SHX2_2 = DeleteObject
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
  end
end
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = AddEventHandler
SHX40_1 = "onResourceStop"
function SHX41_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX0_2 == SHX1_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX38_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = DeleteObject
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
    end
    SHX1_2 = {}
    SHX38_1 = SHX1_2
  end
end
SHX39_1(SHX40_1, SHX41_1)
