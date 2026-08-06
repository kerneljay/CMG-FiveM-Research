-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_turf"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = 40
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = {}
SHX5_1 = false
SHX6_1 = false
SHX7_1 = 0
SHX8_1 = 0
SHX9_1 = 0
SHX10_1 = 10.0
SHX11_1 = {}
SHX12_1 = {}
SHX13_1 = CMG
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX6_1
  if not SHX0_2 then
    SHX0_2 = SHX5_1
  end
  return SHX0_2
end
SHX13_1.isInTurfContest = SHX14_1
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if -1569615261 == SHX0_2 or 126349499 == SHX0_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = GetWeapontypeGroup
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -728555052 == SHX1_2 or -1609580060 == SHX1_2 or 1548507267 == SHX1_2 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = true
  return SHX2_2
end
function SHX14_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX0_2
  SHX4_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = SHX2_2 - SHX1_2
  SHX3_2 = #SHX3_2
  SHX4_2 = 37.5
  if SHX3_2 >= SHX4_2 then
    SHX3_2 = "~r~Turf capture cancelled, you got too far!"
    return SHX3_2
  end
  SHX3_2 = math
  SHX3_2 = SHX3_2.abs
  SHX4_2 = SHX2_2.z
  SHX5_2 = SHX1_2.z
  SHX4_2 = SHX4_2 - SHX5_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX10_1
  if SHX3_2 > SHX4_2 then
    SHX3_2 = "~r~Turf capture cancelled, you got too high!"
    return SHX3_2
  end
  SHX3_2 = IsPedInAnyVehicle
  SHX4_2 = SHX0_2
  SHX5_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 then
    SHX3_2 = "~r~Turf capture cancelled, exit your vehicle!"
    return SHX3_2
  end
  SHX3_2 = GetEntityHealth
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 <= 102 then
    SHX3_2 = "~r~Turf capture failed, you died"
    return SHX3_2
  end
  SHX3_2 = SHX13_1
  SHX4_2 = GetSelectedPedWeapon
  SHX5_2 = SHX0_2
  SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if not SHX3_2 then
    SHX3_2 = "~r~Turf capture cancelled: you need a proper weapon to take a turf!"
    return SHX3_2
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.isPlayingEmote
  SHX3_2 = SHX3_2()
  if SHX3_2 then
    SHX3_2 = "~r~Turf capture cancelled: emotes cannot be used while capturing!"
    return SHX3_2
  end
  SHX3_2 = nil
  return SHX3_2
end
function SHX15_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX0_2
  SHX4_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = SHX2_2 - SHX1_2
  SHX3_2 = #SHX3_2
  SHX4_2 = 37.5
  if SHX3_2 >= SHX4_2 then
    SHX3_2 = false
    return SHX3_2
  end
  SHX3_2 = math
  SHX3_2 = SHX3_2.abs
  SHX4_2 = SHX2_2.z
  SHX5_2 = SHX1_2.z
  SHX4_2 = SHX4_2 - SHX5_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX10_1
  if SHX3_2 > SHX4_2 then
    SHX3_2 = false
    return SHX3_2
  end
  SHX3_2 = GetEntityHealth
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 <= 102 then
    SHX3_2 = false
    return SHX3_2
  end
  SHX3_2 = IsPedInAnyVehicle
  SHX4_2 = SHX0_2
  SHX5_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 then
    SHX3_2 = false
    return SHX3_2
  end
  SHX3_2 = SHX13_1
  SHX4_2 = GetSelectedPedWeapon
  SHX5_2 = SHX0_2
  SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if not SHX3_2 then
    SHX3_2 = false
    return SHX3_2
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.isPlayingEmote
  SHX3_2 = SHX3_2()
  if SHX3_2 then
    SHX3_2 = false
    return SHX3_2
  end
  SHX3_2 = true
  return SHX3_2
end
SHX16_1 = CMG
SHX16_1 = SHX16_1.keySortedPairs
SHX17_1 = SHX0_1.locations
SHX16_1, SHX17_1, SHX18_1, SHX19_1 = SHX16_1(SHX17_1)
for SHX20_1, SHX21_1 in SHX16_1, SHX17_1, SHX18_1, SHX19_1 do
  SHX22_1 = table
  SHX22_1 = SHX22_1.insert
  SHX23_1 = SHX3_1
  SHX24_1 = {}
  SHX24_1.locationName = SHX20_1
  SHX24_1.owned = false
  SHX24_1.gangOwner = "N/A"
  SHX24_1.commission = 0
  SHX24_1.profit = 0
  SHX22_1(SHX23_1, SHX24_1)
  SHX22_1 = table
  SHX22_1 = SHX22_1.insert
  SHX23_1 = SHX11_1
  SHX24_1 = {}
  SHX25_1 = SHX21_1.turfCoords
  SHX24_1.position = SHX25_1
  SHX25_1 = SHX21_1.turfRadius
  SHX24_1.distance = SHX25_1
  SHX22_1(SHX23_1, SHX24_1)
  SHX22_1 = SHX21_1.moneyTurf
  if not SHX22_1 then
    SHX22_1 = #SHX3_1
    SHX23_1 = {}
    SHX23_1.locationName = SHX20_1
    SHX24_1 = SHX21_1.traderCoords
    SHX23_1.position = SHX24_1
    SHX23_1.distance = 100
    SHX23_1.commissionRate = 0
    SHX12_1[SHX22_1] = SHX23_1
  end
end
SHX16_1 = CMG
SHX16_1 = SHX16_1.registerDevMenuState
SHX17_1 = "turf"
SHX18_1 = {}
SHX18_1.quickCapturing = false
SHX18_1.ignoreCooldown = false
SHX16_1 = SHX16_1(SHX17_1, SHX18_1)
SHX17_1 = 0
SHX18_1 = RegisterNetEvent
SHX19_1 = "7caa981020"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX17_1 = SHX0_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX17_1
  return SHX0_2
end
SHX18_1.getNextMoneyTurfPayoutEpoch = SHX19_1
SHX18_1 = CMG
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = pairs
  SHX2_2 = SHX3_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.locationName
    if SHX7_2 == SHX0_2 then
      SHX7_2 = SHX6_2.gangOwner
      SHX8_2 = SHX6_2.profit
      return SHX7_2, SHX8_2
    end
  end
  SHX1_2 = error
  SHX2_2 = string
  SHX2_2 = SHX2_2.format
  SHX3_2 = "Invalid turf location provided, %s does not exist."
  SHX4_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
SHX18_1.getTurfOwnerAndProfit = SHX19_1
SHX18_1 = Citizen
SHX18_1 = SHX18_1.CreateThread
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = {}
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.keySortedPairs
  SHX2_2 = SHX0_1.locations
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = tCMG
    SHX7_2 = SHX7_2.addBlip
    SHX8_2 = SHX6_2.mapCoords
    SHX8_2 = SHX8_2.x
    SHX9_2 = SHX6_2.mapCoords
    SHX9_2 = SHX9_2.y
    SHX10_2 = SHX6_2.mapCoords
    SHX10_2 = SHX10_2.z
    SHX11_2 = SHX6_2.mapSpriteId
    SHX12_2 = SHX6_2.mapColour
    SHX13_2 = SHX6_2.name
    SHX14_2 = SHX6_2.mapScale
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.addBlipContext
    SHX9_2 = "Civilian"
    SHX10_2 = SHX7_2
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = table
    SHX8_2 = SHX8_2.insert
    SHX9_2 = SHX0_2
    SHX10_2 = {}
    SHX11_2 = SHX6_2.name
    SHX10_2.title = SHX11_2
    SHX11_2 = SHX6_2.areaType
    SHX10_2.type = SHX11_2
    SHX11_2 = SHX6_2.areaColour
    SHX10_2.colour = SHX11_2
    SHX10_2.id = 1
    SHX11_2 = SHX6_2.areaCoords
    SHX10_2.position = SHX11_2
    SHX11_2 = SHX6_2.areaRadius
    SHX10_2.blipsize = SHX11_2
    SHX11_2 = SHX6_2.areaWidth
    SHX10_2.width = SHX11_2
    SHX11_2 = SHX6_2.areaHeight
    SHX10_2.height = SHX11_2
    SHX8_2(SHX9_2, SHX10_2)
  end
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = nil
    SHX8_2 = SHX6_2.type
    if "radius" == SHX8_2 then
      SHX8_2 = AddBlipForRadius
      SHX9_2 = SHX6_2.position
      SHX9_2 = SHX9_2.x
      SHX10_2 = SHX6_2.position
      SHX10_2 = SHX10_2.y
      SHX11_2 = SHX6_2.position
      SHX11_2 = SHX11_2.z
      SHX12_2 = SHX6_2.blipsize
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX7_2 = SHX8_2
    else
      SHX8_2 = SHX6_2.type
      if "area" == SHX8_2 then
        SHX8_2 = AddBlipForArea
        SHX9_2 = SHX6_2.position
        SHX9_2 = SHX9_2.x
        SHX10_2 = SHX6_2.position
        SHX10_2 = SHX10_2.y
        SHX11_2 = SHX6_2.position
        SHX11_2 = SHX11_2.z
        SHX12_2 = SHX6_2.width
        SHX13_2 = SHX6_2.height
        SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX7_2 = SHX8_2
        SHX8_2 = SetBlipRotation
        SHX9_2 = SHX7_2
        SHX10_2 = 0.0
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = SetBlipSprite
        SHX9_2 = SHX7_2
        SHX10_2 = 608
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = SetBlipAsShortRange
        SHX9_2 = SHX7_2
        SHX10_2 = true
        SHX8_2(SHX9_2, SHX10_2)
      else
        SHX8_2 = error
        SHX9_2 = string
        SHX9_2 = SHX9_2.format
        SHX10_2 = "Invalid type %s specified for %s zone"
        SHX11_2 = SHX6_2.type
        SHX12_2 = SHX6_2.title
        SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      end
    end
    SHX8_2 = SetBlipColour
    SHX9_2 = SHX7_2
    SHX10_2 = SHX6_2.colour
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = SetBlipAlpha
    SHX9_2 = SHX7_2
    SHX10_2 = 180
    SHX8_2(SHX9_2, SHX10_2)
  end
end
SHX18_1(SHX19_1)
SHX18_1 = AddEventHandler
SHX19_1 = "CMG:onClientSpawn"
function SHX20_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX1_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "5b6e20cdd5"
    SHX2_2(SHX3_2)
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "da072a0288"
    SHX2_2(SHX3_2)
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "71f97ba18f"
    SHX2_2(SHX3_2)
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "a87702a8ec"
    SHX2_2(SHX3_2)
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "e6dba9aa45"
function SHX20_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX3_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX2_2.gangOwner = SHX1_2
  SHX2_2 = TriggerEvent
  SHX3_2 = "e394af4876"
  SHX2_2(SHX3_2)
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "1ad2c58ae3"
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX5_1 = SHX0_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "c680350573"
function SHX20_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX3_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX2_2.owned = SHX1_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "b584e10b3d"
function SHX20_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX2_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "e9971176c5"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX3_1
    SHX7_2 = SHX7_2[SHX5_2]
    if SHX7_2 then
      SHX7_2 = SHX3_1
      SHX7_2 = SHX7_2[SHX5_2]
      SHX8_2 = SHX6_2.gangOwner
      SHX7_2.gangOwner = SHX8_2
      SHX7_2 = SHX3_1
      SHX7_2 = SHX7_2[SHX5_2]
      SHX8_2 = SHX6_2.ownership
      SHX7_2.owned = SHX8_2
      SHX7_2 = SHX3_1
      SHX7_2 = SHX7_2[SHX5_2]
      SHX7_2 = SHX7_2.locationName
      SHX8_2 = SHX7_2 or SHX8_2
      if SHX7_2 then
        SHX8_2 = SHX0_1.locations
        SHX8_2 = SHX8_2[SHX7_2]
      end
      SHX9_2 = SHX12_1
      SHX9_2 = SHX9_2[SHX5_2]
      if SHX9_2 then
        if SHX8_2 then
          SHX9_2 = SHX8_2.moneyTurf
          if SHX9_2 then
            goto SHX_LABEL_40
          end
        end
        SHX9_2 = SHX12_1
        SHX9_2 = SHX9_2[SHX5_2]
        SHX10_2 = SHX6_2.commission
        if not SHX10_2 then
          SHX10_2 = 0
        end
        SHX9_2.commissionRate = SHX10_2
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_40:: outside nested blocks until all 'goto SHX_LABEL_40' can see it
    ::SHX_LABEL_40::
  end
  SHX1_2 = TriggerEvent
  SHX2_2 = "e394af4876"
  SHX1_2(SHX2_2)
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = AddEventHandler
SHX19_1 = "5afc35de9e"
function SHX20_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX5_2 = pairs
  SHX6_2 = SHX12_1
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = SHX10_2.locationName
    if "heroin" == SHX11_2 then
      SHX12_2 = SHX0_2 or SHX12_2
      if not SHX0_2 then
        SHX12_2 = 0
      end
      SHX10_2.commissionRate = SHX12_2
    elseif "large_arms" == SHX11_2 then
      SHX12_2 = SHX1_2 or SHX12_2
      if not SHX1_2 then
        SHX12_2 = 0
      end
      SHX10_2.commissionRate = SHX12_2
    elseif "lsd_north" == SHX11_2 then
      SHX12_2 = SHX2_2 or SHX12_2
      if not SHX2_2 then
        SHX12_2 = 0
      end
      SHX10_2.commissionRate = SHX12_2
    elseif "lsd_south" == SHX11_2 then
      SHX12_2 = SHX3_2 or SHX12_2
      if not SHX3_2 then
        SHX12_2 = 0
      end
      SHX10_2.commissionRate = SHX12_2
    elseif "black_market" == SHX11_2 then
      SHX12_2 = SHX4_2 or SHX12_2
      if not SHX4_2 then
        SHX12_2 = 0
      end
      SHX10_2.commissionRate = SHX12_2
    end
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "36a11b5878"
function SHX20_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX3_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX2_2.profit = SHX3_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = {}
  SHX1_2 = ipairs
  SHX2_2 = SHX3_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX0_1.locations
    SHX8_2 = SHX6_2.locationName
    SHX7_2 = SHX7_2[SHX8_2]
    if SHX7_2 then
      SHX8_2 = SHX7_2.name
      if SHX8_2 then
        goto SHX_LABEL_16
      end
    end
    SHX8_2 = SHX6_2.locationName
    -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
    ::SHX_LABEL_16::
    SHX9_2 = SHX6_2.gangOwner
    if not SHX9_2 or "N/A" == SHX9_2 then
      SHX9_2 = ""
    end
    SHX10_2 = #SHX0_2
    SHX10_2 = SHX10_2 + 1
    SHX11_2 = {}
    SHX11_2.turfType = "capture"
    SHX11_2.name = SHX8_2
    SHX11_2.ownedByGangName = SHX9_2
    SHX12_2 = SHX6_2.owned
    SHX12_2 = true == SHX12_2
    SHX11_2.ownedByUs = SHX12_2
    SHX11_2.ourStreetCred = 0
    SHX11_2.topGangStreetCred = 0
    SHX11_2.topGangName = ""
    SHX12_2 = math
    SHX12_2 = SHX12_2.floor
    SHX13_2 = SHX6_2.profit
    if not SHX13_2 then
      SHX13_2 = 0
    end
    SHX12_2 = SHX12_2(SHX13_2)
    SHX11_2.captureProfit = SHX12_2
    SHX12_2 = SHX7_2 or SHX12_2
    if SHX7_2 then
      SHX12_2 = SHX7_2.moneyTurf
      SHX12_2 = true == SHX12_2
    end
    SHX11_2.moneyTurf = SHX12_2
    if SHX7_2 then
      SHX12_2 = SHX7_2.payoutAmount
      if SHX12_2 then
        goto SHX_LABEL_61
      end
    end
    SHX12_2 = 0
    -- [FIX IF ERROR] Move ::SHX_LABEL_61:: outside nested blocks until all 'goto SHX_LABEL_61' can see it
    ::SHX_LABEL_61::
    SHX11_2.payoutAmount = SHX12_2
    SHX0_2[SHX10_2] = SHX11_2
  end
  return SHX0_2
end
SHX18_1.getDrugTurfsUiPayload = SHX19_1
SHX18_1 = CMG
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = ipairs
  SHX3_2 = SHX11_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.position
    SHX8_2 = SHX0_2 - SHX8_2
    SHX8_2 = #SHX8_2
    SHX9_2 = SHX7_2.distance
    if SHX8_2 < SHX9_2 then
      SHX8_2 = SHX3_1
      SHX8_2 = SHX8_2[SHX6_2]
      SHX9_2 = SHX8_2 or SHX9_2
      if SHX8_2 then
        SHX9_2 = SHX0_1.locations
        SHX10_2 = SHX8_2.locationName
        SHX9_2 = SHX9_2[SHX10_2]
      end
      SHX10_2 = IsPedInAnyVehicle
      SHX11_2 = SHX1_2
      SHX12_2 = false
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
      if SHX10_2 and SHX9_2 then
        SHX10_2 = SHX9_2.moneyTurf
        if SHX10_2 then
          SHX10_2 = false
          return SHX10_2
        end
      end
      SHX10_2 = true
      return SHX10_2
    end
  end
  SHX2_2 = false
  return SHX2_2
end
SHX18_1.isPlayerInTurf = SHX19_1
SHX18_1 = Citizen
SHX18_1 = SHX18_1.CreateThread
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX0_2 = pairs
  SHX1_2 = SHX11_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.addMarker
    SHX7_2 = SHX5_2.position
    SHX7_2 = SHX7_2.x
    SHX8_2 = SHX5_2.position
    SHX8_2 = SHX8_2.y
    SHX9_2 = SHX5_2.position
    SHX9_2 = SHX9_2.z
    SHX10_2 = 0.7
    SHX11_2 = 0.7
    SHX12_2 = 0.5
    SHX13_2 = 200
    SHX14_2 = 50
    SHX15_2 = 0
    SHX16_2 = 200
    SHX17_2 = 50
    SHX18_2 = 24
    SHX19_2 = false
    SHX20_2 = false
    SHX21_2 = true
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  end
  SHX0_2 = pairs
  SHX1_2 = SHX12_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.addMarker
    SHX7_2 = SHX5_2.position
    SHX7_2 = SHX7_2.x
    SHX8_2 = SHX5_2.position
    SHX8_2 = SHX8_2.y
    SHX9_2 = SHX5_2.position
    SHX9_2 = SHX9_2.z
    SHX10_2 = 0.7
    SHX11_2 = 0.7
    SHX12_2 = 0.5
    SHX13_2 = 0
    SHX14_2 = 50
    SHX15_2 = 200
    SHX16_2 = 200
    SHX17_2 = 50
    SHX18_2 = 30
    SHX19_2 = false
    SHX20_2 = false
    SHX21_2 = true
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  end
end
SHX18_1(SHX19_1)
SHX18_1 = -1
SHX19_1 = GetGameTimer
SHX19_1 = SHX19_1()
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.GetRageInputText
  SHX2_2 = "Enter new commission rate(0-"
  SHX3_2 = tostring
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = "%) (Only enter a number, no %): "
  SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2
  SHX3_2 = "10"
  return SHX1_2(SHX2_2, SHX3_2)
end
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3
    function SHX0_3(SHX0_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_4, SHX2_4, SHX3_4, SHX4_4
      SHX1_4 = RequestScaleformMovie
      SHX2_4 = SHX0_4
      SHX1_4 = SHX1_4(SHX2_4)
      while true do
        SHX2_4 = HasScaleformMovieLoaded
        SHX3_4 = SHX1_4
        SHX2_4 = SHX2_4(SHX3_4)
        if SHX2_4 then
          break
        end
        SHX2_4 = Citizen
        SHX2_4 = SHX2_4.Wait
        SHX3_4 = 0
        SHX2_4(SHX3_4)
      end
      SHX2_4 = BeginScaleformMovieMethod
      SHX3_4 = SHX1_4
      SHX4_4 = "SHOW_SHARD_WASTED_MP_MESSAGE"
      SHX2_4(SHX3_4, SHX4_4)
      SHX2_4 = _ENV
      SHX3_4 = "ScaleformMovieMethodAddParamTextureNameString"
      SHX2_4 = SHX2_4[SHX3_4]
      SHX3_4 = "~g~Press E to capture this turf!"
      SHX2_4(SHX3_4)
      SHX2_4 = EndScaleformMovieMethod
      SHX2_4()
      return SHX1_4
    end
    Initialize = SHX0_3
    SHX0_3 = Initialize
    SHX1_3 = "mp_big_message_freemode"
    SHX0_3 = SHX0_3(SHX1_3)
    while true do
      SHX1_3 = SHX18_1
      if -1 == SHX1_3 then
        break
      end
      SHX1_3 = 0.5
      SHX2_3 = 0.35
      SHX3_3 = 1.0
      SHX4_3 = SHX3_3
      SHX5_3 = DrawScaleformMovie
      SHX6_3 = SHX0_3
      SHX7_3 = SHX1_3
      SHX8_3 = SHX2_3
      SHX9_3 = SHX3_3
      SHX10_3 = SHX4_3
      SHX11_3 = 0
      SHX12_3 = 0
      SHX13_3 = 0
      SHX14_3 = 0
      SHX15_3 = 0
      SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
      SHX5_3 = Wait
      SHX6_3 = 0
      SHX5_3(SHX6_3)
    end
  end
  SHX0_2(SHX1_2)
end
SHX22_1 = AddEventHandler
SHX23_1 = "CMG:onClientSpawn"
function SHX24_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2
  if SHX1_2 then
    function SHX2_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
      SHX1_3 = PlaySound
      SHX2_3 = -1
      SHX3_3 = "Hit"
      SHX4_3 = "RESPAWN_SOUNDSET"
      SHX5_3 = false
      SHX6_3 = 0
      SHX7_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX1_3 = SHX21_1
      SHX1_3()
      SHX1_3 = SHX0_3.turfId
      SHX18_1 = SHX1_3
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = -1
      SHX18_1 = SHX0_3
    end
    function SHX4_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3
      SHX1_3 = IsControlJustPressed
      SHX2_3 = 1
      SHX3_3 = 51
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if SHX1_3 then
        SHX1_3 = IsPedInAnyVehicle
        SHX2_3 = PlayerPedId
        SHX2_3 = SHX2_3()
        SHX3_3 = false
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        if SHX1_3 then
          SHX1_3 = notify
          SHX2_3 = "~r~You're in a vehicle so you can't take this turf."
          SHX1_3(SHX2_3)
          SHX1_3 = Wait
          SHX2_3 = 500
          SHX1_3(SHX2_3)
          return
        end
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.isInGang
        SHX1_3 = SHX1_3()
        if not SHX1_3 then
          SHX1_3 = notify
          SHX2_3 = "~r~You need to be in a gang to capture a turf!"
          SHX1_3(SHX2_3)
        else
          SHX1_3 = SHX13_1
          SHX2_3 = GetSelectedPedWeapon
          SHX3_3 = PlayerPedId
          SHX3_3 = SHX3_3()
          SHX2_3, SHX3_3 = SHX2_3(SHX3_3)
          SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
          if not SHX1_3 then
            SHX1_3 = notify
            SHX2_3 = "~r~You need a proper weapon to capture a turf!"
            SHX1_3(SHX2_3)
          else
            SHX1_3 = CMG
            SHX1_3 = SHX1_3.isPlayingEmote
            SHX1_3 = SHX1_3()
            if SHX1_3 then
              SHX1_3 = notify
              SHX2_3 = "~r~You cannot capture a turf while using an emote!"
              SHX1_3(SHX2_3)
            else
              SHX1_3 = CMG
              SHX1_3 = SHX1_3.getPlayerBucket
              SHX1_3 = SHX1_3()
              if 0 ~= SHX1_3 then
                SHX1_3 = notify
                SHX2_3 = "~r~You cannot capture turfs outside the main world."
                SHX1_3(SHX2_3)
              else
                SHX1_3 = SHX6_1
                if not SHX1_3 then
                  SHX1_3 = TriggerServerEvent
                  SHX2_3 = "5b6e20cdd5"
                  SHX1_3(SHX2_3)
                  SHX1_3 = TriggerServerEvent
                  SHX2_3 = "e416519612"
                  SHX3_3 = SHX0_3.turfId
                  SHX1_3(SHX2_3, SHX3_3)
                end
              end
            end
          end
        end
        SHX1_3 = Wait
        SHX2_3 = 1000
        SHX1_3(SHX2_3)
      end
    end
    SHX5_2 = pairs
    SHX6_2 = SHX11_1
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.createArea
      SHX12_2 = "turf_"
      SHX13_2 = SHX9_2
      SHX12_2 = SHX12_2 .. SHX13_2
      SHX13_2 = SHX10_2.position
      SHX14_2 = 1.5
      SHX15_2 = 6
      SHX16_2 = SHX2_2
      SHX17_2 = SHX3_2
      SHX18_2 = SHX4_2
      SHX19_2 = {}
      SHX19_2.turfId = SHX9_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    end
    SHX5_2 = SHX0_1.locations
    SHX5_2 = SHX5_2.meth
    if SHX5_2 then
      SHX6_2 = SHX5_2.turfRadius
      SHX6_2 = SHX6_2 * 2
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.createArea
      SHX8_2 = "turf_meth_audio"
      SHX9_2 = SHX5_2.turfCoords
      SHX10_2 = SHX6_2
      SHX11_2 = SHX6_2
      function SHX12_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
        SHX0_3 = StartAudioScene
        SHX1_3 = "CHARACTER_CHANGE_IN_SKY_SCENE"
        SHX0_3(SHX1_3)
      end
      function SHX13_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
        SHX0_3 = StopAudioScene
        SHX1_3 = "CHARACTER_CHANGE_IN_SKY_SCENE"
        SHX0_3(SHX1_3)
      end
      function SHX14_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      SHX15_2 = {}
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    end
    function SHX6_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
      SHX1_3 = PlaySound
      SHX2_3 = -1
      SHX3_3 = "Hit"
      SHX4_3 = "RESPAWN_SOUNDSET"
      SHX5_3 = false
      SHX6_3 = 0
      SHX7_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX2_3 = SHX0_3.turfId
      SHX1_3 = SHX3_1
      SHX1_3 = SHX1_3[SHX2_3]
      SHX1_3 = SHX1_3.owned
      if SHX1_3 then
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.setInGUI
        SHX2_3 = true
        SHX1_3(SHX2_3)
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.setCursor
        SHX2_3 = 1
        SHX1_3(SHX2_3)
        SHX0_3.draw = true
      end
    end
    function SHX7_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.setInGUI
      SHX2_3 = false
      SHX1_3(SHX2_3)
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.setCursor
      SHX2_3 = 0
      SHX1_3(SHX2_3)
      SHX0_3.draw = false
    end
    function SHX8_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3
      SHX1_3 = SHX0_3.draw
      if SHX1_3 then
        SHX1_3 = SHX0_3.locationName
        SHX2_3 = DrawRect
        SHX3_3 = 0.484
        SHX4_3 = 0.47
        SHX5_3 = 0.185
        SHX6_3 = 0.206
        SHX7_3 = 0
        SHX8_3 = 0
        SHX9_3 = 0
        SHX10_3 = 150
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
        SHX2_3 = DrawRect
        SHX3_3 = 0.484
        SHX4_3 = 0.348
        SHX5_3 = 0.185
        SHX6_3 = 0.036
        SHX7_3 = 0
        SHX8_3 = 0
        SHX9_3 = 0
        SHX10_3 = 150
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
        SHX2_3 = DrawRect
        SHX3_3 = 0.484
        SHX4_3 = 0.365
        SHX5_3 = 0.185
        SHX6_3 = -0.002
        SHX7_3 = 255
        SHX8_3 = 17
        SHX9_3 = 23
        SHX10_3 = 150
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
        SHX2_3 = DrawAdvancedText
        SHX3_3 = 0.578
        SHX4_3 = 0.349
        SHX5_3 = 0.005
        SHX6_3 = 0.0028
        SHX7_3 = 0.437
        SHX8_3 = "CMG Trader Manager"
        SHX9_3 = 255
        SHX10_3 = 255
        SHX11_3 = 255
        SHX12_3 = 255
        SHX13_3 = 4
        SHX14_3 = 0
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
        SHX2_3 = DrawAdvancedText
        SHX3_3 = 0.578
        SHX4_3 = 0.414
        SHX5_3 = 0.005
        SHX6_3 = 0.0028
        SHX7_3 = 0.318
        SHX8_3 = "a commission, you can set the commission rate here. Set it too high"
        SHX9_3 = 255
        SHX10_3 = 255
        SHX11_3 = 255
        SHX12_3 = 255
        SHX13_3 = 4
        SHX14_3 = 0
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
        if "large_arms" == SHX1_3 then
          SHX2_3 = DrawAdvancedText
          SHX3_3 = 0.58
          SHX4_3 = 0.395
          SHX5_3 = 0.005
          SHX6_3 = 0.0028
          SHX7_3 = 0.318
          SHX8_3 = "Everytime someone buys weapons at your owned gun dealer, you earn "
          SHX9_3 = 255
          SHX10_3 = 255
          SHX11_3 = 255
          SHX12_3 = 255
          SHX13_3 = 4
          SHX14_3 = 0
          SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
        else
          SHX2_3 = DrawAdvancedText
          SHX3_3 = 0.58
          SHX4_3 = 0.395
          SHX5_3 = 0.005
          SHX6_3 = 0.0028
          SHX7_3 = 0.318
          SHX8_3 = "Everytime someone sells drugs at your owned trader, you earn "
          SHX9_3 = 255
          SHX10_3 = 255
          SHX11_3 = 255
          SHX12_3 = 255
          SHX13_3 = 4
          SHX14_3 = 0
          SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
        end
        SHX2_3 = DrawAdvancedText
        SHX3_3 = 0.586
        SHX4_3 = 0.432
        SHX5_3 = 0.005
        SHX6_3 = 0.0028
        SHX7_3 = 0.318
        SHX8_3 = "and your turf may come under attack a lot, so be prepared."
        SHX9_3 = 255
        SHX10_3 = 255
        SHX11_3 = 255
        SHX12_3 = 255
        SHX13_3 = 4
        SHX14_3 = 0
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
        SHX2_3 = DrawAdvancedText
        SHX3_3 = 0.568
        SHX4_3 = 0.476
        SHX5_3 = 0.005
        SHX6_3 = 0.0028
        SHX7_3 = 0.4
        SHX8_3 = "Current Commission Rate: "
        SHX9_3 = 255
        SHX10_3 = 255
        SHX11_3 = 255
        SHX12_3 = 255
        SHX13_3 = 4
        SHX14_3 = 0
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
        SHX2_3 = DrawAdvancedText
        SHX3_3 = 0.622
        SHX4_3 = 0.476
        SHX5_3 = 0.005
        SHX6_3 = 0.0028
        SHX7_3 = 0.4
        SHX8_3 = tostring
        SHX10_3 = SHX0_3.turfId
        SHX9_3 = SHX12_1
        SHX9_3 = SHX9_3[SHX10_3]
        if SHX9_3 then
          SHX10_3 = SHX0_3.turfId
          SHX9_3 = SHX12_1
          SHX9_3 = SHX9_3[SHX10_3]
          SHX9_3 = SHX9_3.commissionRate
          if SHX9_3 then
            goto SHX_LABEL_141
          end
        end
        SHX9_3 = 0
        -- [FIX IF ERROR] Move ::SHX_LABEL_141:: outside nested blocks until all 'goto SHX_LABEL_141' can see it
        ::SHX_LABEL_141::
        SHX8_3 = SHX8_3(SHX9_3)
        SHX9_3 = 255
        SHX10_3 = 255
        SHX11_3 = 255
        SHX12_3 = 255
        SHX13_3 = 4
        SHX14_3 = 0
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
        SHX2_3 = DrawRect
        SHX3_3 = 0.482
        SHX4_3 = 0.526
        SHX5_3 = 0.065
        SHX6_3 = 0.046
        SHX7_3 = SHX7_1
        SHX8_3 = SHX9_1
        SHX9_3 = SHX8_1
        SHX10_3 = 150
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
        SHX2_3 = DrawAdvancedText
        SHX3_3 = 0.578
        SHX4_3 = 0.53
        SHX5_3 = 0.005
        SHX6_3 = 0.0028
        SHX7_3 = 0.426
        SHX8_3 = "Set New Rate"
        SHX9_3 = 255
        SHX10_3 = 46
        SHX11_3 = 71
        SHX12_3 = 255
        SHX13_3 = 4
        SHX14_3 = 0
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
        SHX2_3 = CursorInArea
        SHX3_3 = 0.44
        SHX4_3 = 0.51
        SHX5_3 = 0.5
        SHX6_3 = 0.55
        SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
        if SHX2_3 then
          SHX2_3 = 0
          SHX7_1 = SHX2_3
          SHX2_3 = 165
          SHX9_1 = SHX2_3
          SHX2_3 = 71
          SHX8_1 = SHX2_3
          SHX2_3 = IsControlJustPressed
          SHX3_3 = 1
          SHX4_3 = 329
          SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
          if not SHX2_3 then
            SHX2_3 = IsDisabledControlJustPressed
            SHX3_3 = 1
            SHX4_3 = 329
            SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
          end
          if SHX2_3 then
            SHX2_3 = PlaySound
            SHX3_3 = -1
            SHX4_3 = "SELECT"
            SHX5_3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            SHX6_3 = false
            SHX7_3 = 0
            SHX8_3 = true
            SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
            SHX2_3 = 25
            if "large_arms" == SHX1_3 or "black_market" == SHX1_3 then
              SHX3_3 = CMG
              SHX4_3 = "getClientGangPublicTurfCommissionBonusPercent"
              SHX3_3 = SHX3_3[SHX4_3]
              SHX3_3 = SHX3_3()
              SHX2_3 = 10 + SHX3_3
            end
            SHX3_3 = SHX20_1
            SHX4_3 = SHX2_3
            SHX3_3 = SHX3_3(SHX4_3)
            if nil ~= SHX3_3 then
              SHX4_3 = tonumber
              SHX5_3 = SHX3_3
              SHX4_3 = SHX4_3(SHX5_3)
              if SHX4_3 then
                SHX4_3 = math
                SHX4_3 = SHX4_3.floor
                SHX5_3 = tonumber
                SHX6_3 = SHX3_3
                SHX5_3 = SHX5_3(SHX6_3)
                if not SHX5_3 then
                  SHX5_3 = 0
                end
                SHX4_3 = SHX4_3(SHX5_3)
                if SHX2_3 >= SHX4_3 and SHX4_3 >= 0 then
                  SHX5_3 = GetGameTimer
                  SHX5_3 = SHX5_3()
                  SHX6_3 = SHX19_1
                  SHX6_3 = SHX6_3 + 30000
                  if SHX5_3 > SHX6_3 then
                    SHX5_3 = GetGameTimer
                    SHX5_3 = SHX5_3()
                    SHX19_1 = SHX5_3
                    SHX6_3 = SHX0_3.turfId
                    SHX5_3 = SHX12_1
                    SHX5_3 = SHX5_3[SHX6_3]
                    if SHX5_3 then
                      SHX6_3 = SHX0_3.turfId
                      SHX5_3 = SHX12_1
                      SHX5_3 = SHX5_3[SHX6_3]
                      SHX5_3.commissionRate = SHX4_3
                    end
                    if "heroin" == SHX1_3 then
                      SHX5_3 = TriggerServerEvent
                      SHX6_3 = "23c2933768"
                      SHX7_3 = SHX4_3
                      SHX5_3(SHX6_3, SHX7_3)
                    elseif "large_arms" == SHX1_3 then
                      SHX5_3 = TriggerServerEvent
                      SHX6_3 = "d56d15f766"
                      SHX7_3 = SHX4_3
                      SHX5_3(SHX6_3, SHX7_3)
                    elseif "lsd_north" == SHX1_3 then
                      SHX5_3 = TriggerServerEvent
                      SHX6_3 = "c0fc226c26"
                      SHX7_3 = SHX4_3
                      SHX5_3(SHX6_3, SHX7_3)
                    elseif "lsd_south" == SHX1_3 then
                      SHX5_3 = TriggerServerEvent
                      SHX6_3 = "f6678085a0"
                      SHX7_3 = SHX4_3
                      SHX5_3(SHX6_3, SHX7_3)
                    elseif "black_market" == SHX1_3 then
                      SHX5_3 = TriggerServerEvent
                      SHX6_3 = "2531ee9dbf"
                      SHX7_3 = SHX4_3
                      SHX5_3(SHX6_3, SHX7_3)
                    end
                  else
                    SHX5_3 = notify
                    SHX6_3 = "~r~Rate limit, please wait 30s to change the commission."
                    SHX5_3(SHX6_3)
                  end
                end
              end
            end
          end
        else
          SHX2_3 = 0
          SHX7_1 = SHX2_3
          SHX2_3 = 0
          SHX9_1 = SHX2_3
          SHX2_3 = 0
          SHX8_1 = SHX2_3
        end
      end
    end
    SHX9_2 = pairs
    SHX10_2 = SHX12_1
    SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
    for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
      SHX15_2 = SHX0_1.locations
      SHX16_2 = SHX14_2.locationName
      SHX15_2 = SHX15_2[SHX16_2]
      if SHX15_2 then
        SHX16_2 = SHX15_2.moneyTurf
        if SHX16_2 then
          goto SHX_LABEL_80
        end
      end
      SHX16_2 = CMG
      SHX16_2 = SHX16_2.createArea
      SHX17_2 = "turfmanager_"
      SHX18_2 = SHX13_2
      SHX17_2 = SHX17_2 .. SHX18_2
      SHX18_2 = SHX14_2.position
      SHX19_2 = 1.5
      SHX20_2 = 6
      SHX21_2 = SHX6_2
      SHX22_2 = SHX7_2
      SHX23_2 = SHX8_2
      SHX24_2 = {}
      SHX25_2 = SHX14_2.locationName
      SHX24_2.locationName = SHX25_2
      SHX24_2.turfId = SHX13_2
      SHX24_2.draw = false
      SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
      -- [FIX IF ERROR] Move ::SHX_LABEL_80:: outside nested blocks until all 'goto SHX_LABEL_80' can see it
      ::SHX_LABEL_80::
    end
  end
end
SHX22_1(SHX23_1, SHX24_1)
function SHX22_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX3_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX2_2.owned = true
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "b7983f45aa"
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "2ca4f37fe2"
  SHX2_2 = SHX1_1
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = SHX16_1.quickCapturing
  if SHX0_2 then
    SHX0_2 = 10
    if SHX0_2 then
      goto SHX_LABEL_8
    end
  end
  SHX0_2 = SHX0_1.timeToTakeTurfSecs
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getGangPublicCaptureTimeReductionPercent
  SHX1_2 = SHX1_2()
  SHX2_2 = math
  SHX2_2 = SHX2_2.max
  SHX3_2 = 30
  SHX4_2 = math
  SHX4_2 = SHX4_2.floor
  SHX5_2 = SHX1_2 / 100
  SHX6_2 = 1
  SHX5_2 = SHX6_2 - SHX5_2
  SHX5_2 = SHX0_2 * SHX5_2
  SHX4_2, SHX5_2, SHX6_2 = SHX4_2(SHX5_2)
  return SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
function SHX25_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = SHX2_1
  SHX3_2 = SHX3_2[SHX1_2]
  if SHX3_2 then
    SHX3_2 = true
    SHX6_1 = SHX3_2
    SHX3_2 = SHX24_1
    SHX3_2 = SHX3_2()
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.CreateThread
    function SHX5_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3
      while true do
        SHX0_3 = SHX3_2
        if 0 == SHX0_3 then
          break
        end
        SHX0_3 = SHX6_1
        if not SHX0_3 then
          break
        end
        SHX1_3 = SHX1_1
        SHX0_3 = SHX4_1
        SHX0_3 = SHX0_3[SHX1_3]
        if not SHX0_3 then
          SHX0_3 = SHX3_2
          SHX0_3 = SHX0_3 - 1
          SHX3_2 = SHX0_3
        end
        SHX0_3 = Wait
        SHX1_3 = 1000
        SHX0_3(SHX1_3)
      end
      SHX0_3 = SHX6_1
      if SHX0_3 then
        SHX0_3 = SHX22_1
        SHX1_3 = SHX0_2
        SHX2_3 = SHX1_2
        SHX0_3(SHX1_3, SHX2_3)
      end
      SHX0_3 = false
      SHX6_1 = SHX0_3
    end
    SHX4_2(SHX5_2)
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.CreateThread
    function SHX5_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
      SHX0_3 = tCMG
      SHX0_3 = SHX0_3.addMarker
      SHX1_3 = SHX2_2.x
      SHX2_3 = SHX2_2.y
      SHX3_3 = SHX2_2.z
      SHX3_3 = SHX3_3 - 10
      SHX4_3 = 75
      SHX5_3 = 75
      SHX6_3 = 18
      SHX7_3 = 0
      SHX8_3 = 200
      SHX9_3 = 0
      SHX10_3 = 35
      SHX11_3 = 1000
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      SHX1_3 = AddBlipForRadius
      SHX2_3 = SHX2_2.x
      SHX3_3 = SHX2_2.y
      SHX4_3 = SHX2_2.z
      SHX5_3 = 37.5
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      SHX2_3 = SetBlipColour
      SHX3_3 = SHX1_3
      SHX4_3 = 69
      SHX2_3(SHX3_3, SHX4_3)
      SHX2_3 = SetBlipAlpha
      SHX3_3 = SHX1_3
      SHX4_3 = 50
      SHX2_3(SHX3_3, SHX4_3)
      while true do
        SHX2_3 = SHX6_1
        if not SHX2_3 then
          break
        end
        SHX2_3 = SHX14_1
        SHX3_3 = CMG
        SHX3_3 = SHX3_3.getPlayerPed
        SHX3_3 = SHX3_3()
        SHX4_3 = SHX2_2
        SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
        if SHX2_3 then
          SHX3_3 = notify
          SHX4_3 = SHX2_3
          SHX3_3(SHX4_3)
          SHX3_3 = false
          SHX6_1 = SHX3_3
          SHX3_3 = TriggerServerEvent
          SHX4_3 = "539b6c4260"
          SHX5_3 = SHX1_2
          SHX6_3 = "Attackers"
          SHX7_3 = true
          SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
        end
        SHX3_3 = Wait
        SHX4_3 = 1000
        SHX3_3(SHX4_3)
      end
      SHX2_3 = tCMG
      SHX2_3 = SHX2_3.removeMarker
      SHX3_3 = SHX0_3
      SHX2_3(SHX3_3)
      SHX2_3 = RemoveBlip
      SHX3_3 = SHX1_3
      SHX2_3(SHX3_3)
    end
    SHX4_2(SHX5_2)
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.CreateThread
    function SHX5_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
      while true do
        SHX0_3 = SHX6_1
        if not SHX0_3 then
          break
        end
        SHX1_3 = SHX1_2
        SHX0_3 = SHX4_1
        SHX0_3 = SHX0_3[SHX1_3]
        if not SHX0_3 then
          SHX0_3 = DrawAdvancedText
          SHX1_3 = 0.931
          SHX2_3 = 0.915
          SHX3_3 = 0.005
          SHX4_3 = 0.0028
          SHX5_3 = 0.49
          SHX6_3 = "Time remaining till capture: "
          SHX7_3 = SHX3_2
          SHX8_3 = " seconds!"
          SHX6_3 = SHX6_3 .. SHX7_3 .. SHX8_3
          SHX7_3 = 23
          SHX8_3 = 255
          SHX9_3 = 141
          SHX10_3 = 255
          SHX11_3 = 7
          SHX12_3 = 0
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
        else
          SHX0_3 = DrawAdvancedText
          SHX1_3 = 0.931
          SHX2_3 = 0.886
          SHX3_3 = 0.005
          SHX4_3 = 0.0028
          SHX5_3 = 0.49
          SHX6_3 = "Capture blocked, kill enemies to continue timer."
          SHX7_3 = 255
          SHX8_3 = 23
          SHX9_3 = 141
          SHX10_3 = 255
          SHX11_3 = 7
          SHX12_3 = 0
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
        end
        SHX0_3 = Wait
        SHX1_3 = 0
        SHX0_3(SHX1_3)
      end
    end
    SHX4_2(SHX5_2)
  end
end
SHX26_1 = RegisterNetEvent
SHX27_1 = "4d614a25fe"
function SHX28_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = true
  SHX6_1 = SHX2_2
  SHX1_1 = SHX1_2
  SHX2_2 = SHX25_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = SHX11_1
  SHX5_2 = SHX5_2[SHX0_2]
  SHX5_2 = SHX5_2.position
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
SHX26_1(SHX27_1, SHX28_1)
function SHX26_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = SHX3_1
  SHX3_2 = SHX3_2[SHX0_2]
  SHX3_2 = SHX3_2.owned
  if SHX3_2 then
    SHX3_2 = notify
    SHX4_2 = "~r~You already own this turf!"
    SHX3_2(SHX4_2)
  else
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "20f19e1daa"
    SHX5_2 = SHX0_2
    SHX6_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = SHX24_1
    SHX3_2 = SHX3_2()
    while true do
      SHX4_2 = SHX2_1
      SHX4_2 = SHX4_2[SHX2_2]
      if nil ~= SHX4_2 then
        break
      end
      SHX4_2 = Wait
      SHX5_2 = 0
      SHX4_2(SHX5_2)
    end
    SHX4_2 = SHX2_1
    SHX4_2 = SHX4_2[SHX2_2]
    if SHX4_2 then
      SHX4_2 = true
      SHX6_1 = SHX4_2
      SHX4_2 = Citizen
      SHX4_2 = SHX4_2.CreateThread
      function SHX5_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3
        while true do
          SHX0_3 = SHX3_2
          if 0 == SHX0_3 then
            break
          end
          SHX0_3 = SHX6_1
          if not SHX0_3 then
            break
          end
          SHX1_3 = SHX2_2
          SHX0_3 = SHX4_1
          SHX0_3 = SHX0_3[SHX1_3]
          if not SHX0_3 then
            SHX0_3 = SHX3_2
            SHX0_3 = SHX0_3 - 1
            SHX3_2 = SHX0_3
          end
          SHX0_3 = Wait
          SHX1_3 = 1000
          SHX0_3(SHX1_3)
        end
        SHX0_3 = SHX6_1
        if SHX0_3 then
          SHX0_3 = SHX22_1
          SHX1_3 = SHX0_2
          SHX2_3 = SHX2_2
          SHX0_3(SHX1_3, SHX2_3)
        end
        SHX0_3 = false
        SHX6_1 = SHX0_3
      end
      SHX4_2(SHX5_2)
      SHX4_2 = Citizen
      SHX4_2 = SHX4_2.CreateThread
      function SHX5_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
        SHX0_3 = tCMG
        SHX0_3 = SHX0_3.addMarker
        SHX1_3 = SHX1_2.x
        SHX2_3 = SHX1_2.y
        SHX3_3 = SHX1_2.z
        SHX3_3 = SHX3_3 - 10
        SHX4_3 = 75
        SHX5_3 = 75
        SHX6_3 = 18
        SHX7_3 = 0
        SHX8_3 = 200
        SHX9_3 = 0
        SHX10_3 = 35
        SHX11_3 = 1000
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
        SHX1_3 = AddBlipForRadius
        SHX2_3 = SHX1_2.x
        SHX3_3 = SHX1_2.y
        SHX4_3 = SHX1_2.z
        SHX5_3 = 37.5
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
        SHX2_3 = SetBlipColour
        SHX3_3 = SHX1_3
        SHX4_3 = 69
        SHX2_3(SHX3_3, SHX4_3)
        SHX2_3 = SetBlipAlpha
        SHX3_3 = SHX1_3
        SHX4_3 = 50
        SHX2_3(SHX3_3, SHX4_3)
        while true do
          SHX2_3 = SHX6_1
          if not SHX2_3 then
            break
          end
          SHX2_3 = SHX14_1
          SHX3_3 = CMG
          SHX3_3 = SHX3_3.getPlayerPed
          SHX3_3 = SHX3_3()
          SHX4_3 = SHX1_2
          SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
          if SHX2_3 then
            SHX3_3 = notify
            SHX4_3 = SHX2_3
            SHX3_3(SHX4_3)
            SHX3_3 = false
            SHX6_1 = SHX3_3
            SHX3_3 = TriggerServerEvent
            SHX4_3 = "539b6c4260"
            SHX5_3 = SHX2_2
            SHX6_3 = "Attackers"
            SHX7_3 = true
            SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
          end
          SHX3_3 = Wait
          SHX4_3 = 2000
          SHX3_3(SHX4_3)
        end
        SHX2_3 = tCMG
        SHX2_3 = SHX2_3.removeMarker
        SHX3_3 = SHX0_3
        SHX2_3(SHX3_3)
        SHX2_3 = RemoveBlip
        SHX3_3 = SHX1_3
        SHX2_3(SHX3_3)
      end
      SHX4_2(SHX5_2)
      SHX4_2 = Citizen
      SHX4_2 = SHX4_2.CreateThread
      function SHX5_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
        while true do
          SHX0_3 = SHX6_1
          if not SHX0_3 then
            break
          end
          SHX1_3 = SHX2_2
          SHX0_3 = SHX4_1
          SHX0_3 = SHX0_3[SHX1_3]
          if not SHX0_3 then
            SHX0_3 = DrawAdvancedText
            SHX1_3 = 0.931
            SHX2_3 = 0.915
            SHX3_3 = 0.005
            SHX4_3 = 0.0028
            SHX5_3 = 0.49
            SHX6_3 = "Time remaining till capture: "
            SHX7_3 = SHX3_2
            SHX8_3 = " seconds!"
            SHX6_3 = SHX6_3 .. SHX7_3 .. SHX8_3
            SHX7_3 = 23
            SHX8_3 = 255
            SHX9_3 = 141
            SHX10_3 = 255
            SHX11_3 = 7
            SHX12_3 = 0
            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
          else
            SHX0_3 = DrawAdvancedText
            SHX1_3 = 0.931
            SHX2_3 = 0.886
            SHX3_3 = 0.005
            SHX4_3 = 0.0028
            SHX5_3 = 0.49
            SHX6_3 = "Capture blocked, kill enemies to continue timer."
            SHX7_3 = 255
            SHX8_3 = 23
            SHX9_3 = 141
            SHX10_3 = 255
            SHX11_3 = 7
            SHX12_3 = 0
            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
          end
          SHX0_3 = Wait
          SHX1_3 = 0
          SHX0_3(SHX1_3)
        end
      end
      SHX4_2(SHX5_2)
    end
  end
end
SHX27_1 = RegisterNetEvent
SHX28_1 = "d11bd04ad0"
function SHX29_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  if not SHX1_2 then
    SHX3_2 = SHX26_1
    SHX4_2 = SHX0_2
    SHX5_2 = SHX11_1
    SHX5_2 = SHX5_2[SHX0_2]
    SHX5_2 = SHX5_2.position
    SHX6_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  else
    SHX3_2 = notify
    SHX4_2 = "~r~Turf already owned!"
    SHX3_2(SHX4_2)
  end
end
SHX27_1(SHX28_1, SHX29_1)
function SHX27_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2
  SHX5_2 = SHX24_1
  SHX5_2 = SHX5_2()
  SHX6_2 = Citizen
  SHX6_2 = SHX6_2.CreateThread
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    while true do
      SHX0_3 = SHX5_2
      if 0 == SHX0_3 then
        break
      end
      SHX0_3 = SHX5_1
      if not SHX0_3 then
        break
      end
      SHX1_3 = SHX1_2
      SHX0_3 = SHX4_1
      SHX0_3 = SHX0_3[SHX1_3]
      if not SHX0_3 then
        SHX0_3 = SHX5_2
        SHX0_3 = SHX0_3 - 1
        SHX5_2 = SHX0_3
      end
      SHX0_3 = Wait
      SHX1_3 = 1000
      SHX0_3(SHX1_3)
    end
    SHX0_3 = SHX23_1
    SHX0_3()
    SHX0_3 = false
    SHX5_1 = SHX0_3
  end
  SHX6_2(SHX7_2)
  SHX6_2 = Citizen
  SHX6_2 = SHX6_2.CreateThread
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    while true do
      SHX0_3 = SHX5_1
      if not SHX0_3 then
        break
      end
      SHX1_3 = SHX1_2
      SHX0_3 = SHX4_1
      SHX0_3 = SHX0_3[SHX1_3]
      if not SHX0_3 then
        SHX0_3 = DrawAdvancedText
        SHX1_3 = 0.931
        SHX2_3 = 0.915
        SHX3_3 = 0.005
        SHX4_3 = 0.0028
        SHX5_3 = 0.49
        SHX6_3 = "Time remaining till capture: "
        SHX7_3 = SHX5_2
        SHX8_3 = " seconds!"
        SHX6_3 = SHX6_3 .. SHX7_3 .. SHX8_3
        SHX7_3 = 23
        SHX8_3 = 255
        SHX9_3 = 141
        SHX10_3 = 255
        SHX11_3 = 7
        SHX12_3 = 0
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      else
        SHX0_3 = DrawAdvancedText
        SHX1_3 = 0.931
        SHX2_3 = 0.886
        SHX3_3 = 0.005
        SHX4_3 = 0.0028
        SHX5_3 = 0.49
        SHX6_3 = "Capture blocked, kill enemies to continue timer."
        SHX7_3 = 255
        SHX8_3 = 23
        SHX9_3 = 141
        SHX10_3 = 255
        SHX11_3 = 7
        SHX12_3 = 0
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      end
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX6_2(SHX7_2)
  SHX6_2 = Citizen
  SHX6_2 = SHX6_2.CreateThread
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
    SHX0_3 = tCMG
    SHX0_3 = SHX0_3.addMarker
    SHX1_3 = SHX2_2
    SHX2_3 = SHX3_2
    SHX3_3 = SHX4_2
    SHX3_3 = SHX3_3 - 10
    SHX4_3 = 75
    SHX5_3 = 75
    SHX6_3 = 75
    SHX7_3 = 0
    SHX8_3 = 200
    SHX9_3 = 0
    SHX10_3 = 50
    SHX11_3 = 1000
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
    SHX1_3 = vector3
    SHX3_3 = SHX0_2
    SHX2_3 = SHX11_1
    SHX2_3 = SHX2_3[SHX3_3]
    SHX2_3 = SHX2_3.position
    SHX2_3 = SHX2_3.x
    SHX4_3 = SHX0_2
    SHX3_3 = SHX11_1
    SHX3_3 = SHX3_3[SHX4_3]
    SHX3_3 = SHX3_3.position
    SHX3_3 = SHX3_3.y
    SHX5_3 = SHX0_2
    SHX4_3 = SHX11_1
    SHX4_3 = SHX4_3[SHX5_3]
    SHX4_3 = SHX4_3.position
    SHX4_3 = SHX4_3.z
    SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    while true do
      SHX2_3 = SHX5_1
      if not SHX2_3 then
        break
      end
      SHX2_3 = CMG
      SHX2_3 = SHX2_3.getPlayerPed
      SHX2_3 = SHX2_3()
      SHX3_3 = GetEntityHealth
      SHX4_3 = SHX2_3
      SHX3_3 = SHX3_3(SHX4_3)
      if SHX3_3 <= 102 then
        SHX3_3 = notify
        SHX4_3 = "~r~Turf defense failed, you died"
        SHX3_3(SHX4_3)
        SHX3_3 = false
        SHX5_1 = SHX3_3
        SHX3_3 = TriggerServerEvent
        SHX4_3 = "539b6c4260"
        SHX5_3 = SHX1_2
        SHX6_3 = "Defenders"
        SHX7_3 = false
        SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      else
        SHX3_3 = SHX15_1
        SHX4_3 = SHX2_3
        SHX5_3 = SHX1_3
        SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
        if SHX3_3 then
          SHX3_3 = TriggerServerEvent
          SHX4_3 = "539b6c4260"
          SHX5_3 = SHX1_2
          SHX6_3 = "Defenders"
          SHX7_3 = true
          SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
        else
          SHX3_3 = TriggerServerEvent
          SHX4_3 = "539b6c4260"
          SHX5_3 = SHX1_2
          SHX6_3 = "Defenders"
          SHX7_3 = false
          SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
        end
      end
      SHX3_3 = Wait
      SHX4_3 = 1000
      SHX3_3(SHX4_3)
    end
    SHX2_3 = tCMG
    SHX2_3 = SHX2_3.removeMarker
    SHX3_3 = SHX0_3
    SHX2_3(SHX3_3)
  end
  SHX6_2(SHX7_2)
end
SHX28_1 = RegisterNetEvent
SHX29_1 = "75bfa7b124"
function SHX30_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_1 = SHX1_2
  SHX2_2 = true
  SHX5_1 = SHX2_2
  SHX2_2 = pairs
  SHX3_2 = SHX11_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    if SHX6_2 == SHX0_2 then
      SHX7_2 = SHX27_1
      SHX8_2 = SHX6_2
      SHX9_2 = SHX1_2
      SHX10_2 = SHX11_1
      SHX10_2 = SHX10_2[SHX6_2]
      SHX10_2 = SHX10_2.position
      SHX10_2 = SHX10_2.x
      SHX11_2 = SHX11_1
      SHX11_2 = SHX11_2[SHX6_2]
      SHX11_2 = SHX11_2.position
      SHX11_2 = SHX11_2.y
      SHX12_2 = SHX11_1
      SHX12_2 = SHX12_2[SHX6_2]
      SHX12_2 = SHX12_2.position
      SHX12_2 = SHX12_2.z
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    end
  end
end
SHX28_1(SHX29_1, SHX30_1)
SHX28_1 = RegisterNetEvent
SHX29_1 = "d642fa2574"
function SHX30_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX4_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX28_1(SHX29_1, SHX30_1)
SHX28_1 = RegisterNetEvent
SHX29_1 = "2ca4f37fe2"
function SHX30_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX5_1 = SHX0_2
end
SHX28_1(SHX29_1, SHX30_1)
SHX28_1 = false
SHX29_1 = CMG
SHX29_1 = SHX29_1.registerDevMenuItems
SHX30_1 = "Turf"
function SHX31_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Quick Turf Capturing"
  SHX2_2 = "Captures a turf in 10 seconds."
  SHX3_2 = SHX16_1.quickCapturing
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX16_1.quickCapturing = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Ignore Capture Cooldown"
  SHX2_2 = string
  SHX2_2 = SHX2_2.format
  SHX3_2 = "Whether to globally ignore the capture cooldown of %s when capturing a turf."
  SHX4_2 = SHX0_1.captureCooldownSecs
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = SHX16_1.ignoreCooldown
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3, SHX5_3, SHX6_3
    SHX4_3 = SHX28_1
    if SHX4_3 ~= SHX3_3 then
      SHX4_3 = TriggerServerEvent
      SHX5_3 = "b07e69e2b9"
      SHX6_3 = SHX3_3
      SHX4_3(SHX5_3, SHX6_3)
      SHX28_1 = SHX3_3
    end
    SHX16_1.ignoreCooldown = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX29_1(SHX30_1, SHX31_1)
