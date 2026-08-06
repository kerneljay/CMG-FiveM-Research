-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_fuel"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = Citizen
SHX1_1 = SHX1_1.CreateThread
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.stations
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.addBlip
    SHX7_2 = SHX5_2.x
    SHX8_2 = SHX5_2.y
    SHX9_2 = SHX5_2.z
    SHX10_2 = 361
    SHX11_2 = 4
    SHX12_2 = "Petrol Station"
    SHX13_2 = 0.6
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  end
end
SHX1_1(SHX2_1)
SHX1_1 = 0
SHX2_1 = false
SHX3_1 = 0.0
SHX4_1 = 0.0
SHX5_1 = false
SHX6_1 = CMG
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "number" == SHX2_2 and SHX1_2 >= 0 and SHX1_2 <= 100 then
    SHX2_2 = SetVehicleFuelLevel
    SHX3_2 = SHX0_2
    SHX4_2 = SHX1_2 + 0.0
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = DecorSetFloat
    SHX3_2 = SHX0_2
    SHX4_2 = "145eb2f935"
    SHX5_2 = GetVehicleFuelLevel
    SHX6_2 = SHX0_2
    SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  end
end
SHX6_1.setVehicleFuel = SHX7_1
SHX6_1 = CMG
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = nil
  if 0 ~= SHX0_2 then
    SHX2_2 = DecorExistOn
    SHX3_2 = SHX0_2
    SHX4_2 = "145eb2f935"
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.getVehicleFuel
      SHX3_2 = SHX0_2
      SHX2_2 = SHX2_2(SHX3_2)
      SHX1_2 = SHX2_2
    end
  end
  SHX2_2 = SetVehicleFixed
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  if SHX1_2 then
    SHX2_2 = type
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if "number" == SHX2_2 and SHX1_2 == SHX1_2 then
      SHX2_2 = math
      SHX2_2 = SHX2_2.huge
      if SHX1_2 ~= SHX2_2 then
        SHX2_2 = math
        SHX2_2 = SHX2_2.huge
        SHX2_2 = -SHX2_2
        if SHX1_2 ~= SHX2_2 and SHX1_2 >= 0 and SHX1_2 <= 100 then
          SHX2_2 = CMG
          SHX2_2 = SHX2_2.setVehicleFuel
          SHX3_2 = SHX0_2
          SHX4_2 = SHX1_2
          SHX2_2(SHX3_2, SHX4_2)
        end
      end
    end
  end
end
SHX6_1.setVehicleFixedPreservingFuel = SHX7_1
function SHX6_1(SHX0_2, SHX1_2)
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
  SHX4_2 = SHX0_2 * SHX2_2
  SHX4_2 = SHX4_2 + 0.5
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_2 = SHX3_2 / SHX2_2
  return SHX3_2
end
SHX7_1 = CMG
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = DecorGetFloat
  SHX2_2 = SHX0_2
  SHX3_2 = "145eb2f935"
  return SHX1_2(SHX2_2, SHX3_2)
end
SHX7_1.getVehicleFuel = SHX8_1
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientDisplayMoney
  SHX0_2, SHX1_2 = SHX0_2()
  SHX2_2 = SHX0_2 + SHX1_2
  return SHX2_2
end
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = DecorExistOn
  SHX2_2 = SHX0_2
  SHX3_2 = "145eb2f935"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.setVehicleFuel
    SHX2_2 = SHX0_2
    SHX3_2 = math
    SHX3_2 = SHX3_2.random
    SHX4_2 = 200
    SHX5_2 = 800
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = SHX3_2 / 10
    SHX1_2(SHX2_2, SHX3_2)
  else
    SHX1_2 = SHX5_1
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.setVehicleFuel
      SHX2_2 = SHX0_2
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.getVehicleFuel
      SHX4_2 = SHX0_2
      SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX3_2(SHX4_2)
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX1_2 = true
      SHX5_1 = SHX1_2
    end
  end
  SHX1_2 = GetIsVehicleEngineRunning
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = SHX0_1.fuelUsage
    SHX2_2 = SHX6_1
    SHX3_2 = GetVehicleCurrentRpm
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = 1
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX1_2 = SHX1_2[SHX2_2]
    if not SHX1_2 then
      SHX1_2 = 1.0
    end
    SHX2_2 = SHX0_1.classes
    SHX3_2 = GetVehicleClass
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX2_2 = SHX2_2[SHX3_2]
    if not SHX2_2 then
      SHX2_2 = 1.0
    end
    SHX2_2 = SHX1_2 * SHX2_2
    SHX2_2 = SHX2_2 / 10
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getMechanicFuelUsageReductionPercent
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX3_2 / 100
    SHX5_2 = 1
    SHX4_2 = SHX5_2 - SHX4_2
    SHX2_2 = SHX2_2 * SHX4_2
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.setVehicleFuel
    SHX5_2 = SHX0_2
    SHX6_2 = GetVehicleFuelLevel
    SHX7_2 = SHX0_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX6_2 = SHX6_2 - SHX2_2
    SHX4_2(SHX5_2, SHX6_2)
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getVehicleFuel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "number" == SHX2_2 and SHX1_2 == SHX1_2 then
    SHX2_2 = math
    SHX2_2 = SHX2_2.huge
    if SHX1_2 ~= SHX2_2 then
      SHX2_2 = math
      SHX2_2 = SHX2_2.huge
      SHX2_2 = -SHX2_2
      if SHX1_2 ~= SHX2_2 then
        goto SHX_LABEL_100
      end
    end
  end
  SHX1_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_100:: outside nested blocks until all 'goto SHX_LABEL_100' can see it
  ::SHX_LABEL_100::
  SHX2_2 = SendNUIMessage
  SHX3_2 = {}
  SHX3_2.showFuel = true
  SHX3_2.fuel = SHX1_2
  SHX2_2(SHX3_2)
end
SHX9_1 = Citizen
SHX9_1 = SHX9_1.CreateThread
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = DecorRegister
  SHX1_2 = "145eb2f935"
  SHX2_2 = 1
  SHX0_2(SHX1_2, SHX2_2)
  while true do
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
    SHX0_2 = PlayerPedId
    SHX0_2 = SHX0_2()
    SHX1_2 = IsPedInAnyVehicle
    SHX2_2 = SHX0_2
    SHX3_2 = true
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.inEvent
      SHX1_2 = SHX1_2()
      if not SHX1_2 then
        SHX1_2 = GetVehiclePedIsIn
        SHX2_2 = SHX0_2
        SHX3_2 = false
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        SHX2_2 = GetPedInVehicleSeat
        SHX3_2 = SHX1_2
        SHX4_2 = -1
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
        if SHX2_2 == SHX0_2 then
          SHX2_2 = SHX8_1
          SHX3_2 = SHX1_2
          SHX2_2(SHX3_2)
        end
    end
    else
      SHX1_2 = SHX5_1
      if SHX1_2 then
        SHX1_2 = false
        SHX5_1 = SHX1_2
      end
    end
  end
end
SHX9_1(SHX10_1)
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = GetEntityCoords
  SHX1_2 = PlayerPedId
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX1_2 = {}
  SHX2_2 = ipairs
  SHX3_2 = GetGamePool
  SHX4_2 = "CObject"
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX3_2(SHX4_2)
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = GetEntityModel
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX9_2 = SHX0_1.pumpModels
    SHX9_2 = SHX9_2[SHX8_2]
    if SHX9_2 then
      SHX9_2 = table
      SHX9_2 = SHX9_2.insert
      SHX10_2 = SHX1_2
      SHX11_2 = SHX7_2
      SHX9_2(SHX10_2, SHX11_2)
    end
  end
  SHX2_2 = 0
  SHX3_2 = 1000
  SHX4_2 = pairs
  SHX5_2 = SHX1_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = GetEntityCoords
    SHX11_2 = SHX9_2
    SHX10_2 = SHX10_2(SHX11_2)
    SHX10_2 = SHX0_2 - SHX10_2
    SHX10_2 = #SHX10_2
    if SHX3_2 > SHX10_2 then
      SHX3_2 = SHX10_2
      SHX2_2 = SHX9_2
    end
  end
  SHX4_2 = SHX2_2
  SHX5_2 = SHX3_2
  return SHX4_2, SHX5_2
end
SHX10_1 = {}
SHX11_1 = Citizen
SHX11_1 = SHX11_1.CreateThread
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.dynamicPumps
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.loadModel
    SHX7_2 = SHX5_2[1]
    SHX6_2(SHX7_2)
    SHX6_2 = SHX5_2[2]
    SHX7_2 = CreateObject
    SHX8_2 = SHX5_2[1]
    SHX9_2 = SHX6_2.x
    SHX10_2 = SHX6_2.y
    SHX11_2 = SHX6_2.z
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX8_2 = FreezeEntityPosition
    SHX9_2 = SHX7_2
    SHX10_2 = true
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = SetEntityCanBeDamaged
    SHX9_2 = SHX7_2
    SHX10_2 = false
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = SetEntityProofs
    SHX9_2 = SHX7_2
    SHX10_2 = true
    SHX11_2 = true
    SHX12_2 = true
    SHX13_2 = true
    SHX14_2 = true
    SHX15_2 = true
    SHX16_2 = true
    SHX17_2 = true
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX8_2 = SetModelAsNoLongerNeeded
    SHX9_2 = SHX5_2[1]
    SHX8_2(SHX9_2)
    SHX8_2 = table
    SHX8_2 = SHX8_2.insert
    SHX9_2 = SHX10_1
    SHX10_2 = SHX7_2
    SHX8_2(SHX9_2, SHX10_2)
  end
  while true do
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 250
    SHX0_2(SHX1_2)
    SHX0_2 = SHX9_1
    SHX0_2, SHX1_2 = SHX0_2()
    SHX2_2 = 2.5
    if SHX1_2 < SHX2_2 then
      SHX1_1 = SHX0_2
    elseif SHX1_2 < 10.0 then
      SHX2_2 = 0
      SHX1_1 = SHX2_2
      SHX2_2 = Citizen
      SHX2_2 = SHX2_2.Wait
      SHX3_2 = 500
      SHX2_2(SHX3_2)
    elseif SHX1_2 < 50.0 then
      SHX2_2 = 0
      SHX1_1 = SHX2_2
      SHX2_2 = Citizen
      SHX2_2 = SHX2_2.Wait
      SHX3_2 = 2500
      SHX2_2(SHX3_2)
    else
      SHX2_2 = 0
      SHX1_1 = SHX2_2
      SHX2_2 = Citizen
      SHX2_2 = SHX2_2.Wait
      SHX3_2 = 5000
      SHX2_2(SHX3_2)
    end
  end
end
SHX11_1(SHX12_1)
SHX11_1 = AddEventHandler
SHX12_1 = "onResourceStop"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX1_2 == SHX0_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX10_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = DeleteEntity
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
    end
  end
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = AddEventHandler
SHX12_1 = "fuel:startFuelUpTick"
function SHX13_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX3_2 = GetVehicleFuelLevel
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_1 = SHX3_2
  SHX3_2 = GetVehicleClass
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_2 = 18 == SHX3_2
  while true do
    SHX4_2 = SHX2_1
    if not SHX4_2 then
      break
    end
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = 500
    SHX4_2(SHX5_2)
    SHX4_2 = DecorGetFloat
    SHX5_2 = SHX2_2
    SHX6_2 = "145eb2f935"
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    SHX5_2 = math
    SHX5_2 = SHX5_2.random
    SHX6_2 = 10
    SHX7_2 = 20
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = SHX5_2 / 10.0
    SHX6_2 = SHX5_2 * 10
    if not SHX0_2 then
      SHX7_2 = GetAmmoInPedWeapon
      SHX8_2 = SHX1_2
      SHX9_2 = 883325847
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
      SHX8_2 = SHX5_2 * 100
      SHX7_2 = SHX7_2 - SHX8_2
      if SHX7_2 >= 0 then
        SHX7_2 = SHX4_2 + SHX5_2
        SHX3_1 = SHX7_2
        SHX7_2 = SetPedAmmo
        SHX8_2 = SHX1_2
        SHX9_2 = 883325847
        SHX10_2 = math
        SHX10_2 = SHX10_2.floor
        SHX11_2 = GetAmmoInPedWeapon
        SHX12_2 = SHX1_2
        SHX13_2 = 883325847
        SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
        SHX12_2 = SHX5_2 * 100
        SHX11_2 = SHX11_2 - SHX12_2
        SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      else
        SHX7_2 = false
        SHX2_1 = SHX7_2
      end
    else
      SHX7_2 = SHX4_2 + SHX5_2
      SHX3_1 = SHX7_2
    end
    SHX7_2 = SHX3_1
    if SHX7_2 > 100.0 then
      SHX7_2 = 100.0
      SHX3_1 = SHX7_2
      SHX7_2 = false
      SHX2_1 = SHX7_2
    end
    if SHX0_2 and not SHX3_2 then
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.TriggerServerCallback
      SHX8_2 = "49e51ddb66"
      SHX9_2 = math
      SHX9_2 = SHX9_2.floor
      SHX10_2 = SHX6_2
      SHX9_2 = SHX9_2(SHX10_2)
      SHX10_2 = "fuel"
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
      if SHX7_2 then
        SHX8_2 = SHX4_1
        SHX8_2 = SHX8_2 + SHX6_2
        SHX4_1 = SHX8_2
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.setVehicleFuel
        SHX9_2 = SHX2_2
        SHX10_2 = SHX3_1
        SHX8_2(SHX9_2, SHX10_2)
      else
        SHX8_2 = false
        SHX2_1 = SHX8_2
      end
    else
      SHX7_2 = SHX4_1
      SHX7_2 = SHX7_2 + SHX6_2
      SHX4_1 = SHX7_2
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.setVehicleFuel
      SHX8_2 = SHX2_2
      SHX9_2 = SHX3_1
      SHX7_2(SHX8_2, SHX9_2)
    end
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.clearBlockingVehicleCounter
    SHX8_2 = SHX2_2
    SHX7_2(SHX8_2)
  end
  SHX4_2 = DecorGetInt
  SHX5_2 = SHX2_2
  SHX6_2 = "0a6cf607ed"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  if SHX4_2 > 0 then
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getVehicleFuel
    SHX6_2 = SHX2_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = TriggerServerEvent
    SHX7_2 = "486c23d750"
    SHX8_2 = SHX4_2
    SHX9_2 = math
    SHX9_2 = SHX9_2.floor
    SHX10_2 = SHX5_2 * 1000
    SHX9_2 = SHX9_2(SHX10_2)
    SHX9_2 = SHX9_2 / 1000
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  end
  SHX5_2 = 0.0
  SHX4_1 = SHX5_2
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = AddEventHandler
SHX12_1 = "fuel:refuelFromPump"
function SHX13_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX3_2 = TaskTurnPedToFaceEntity
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2
  SHX6_2 = 1000
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.Wait
  SHX4_2 = 1000
  SHX3_2(SHX4_2)
  SHX3_2 = SetCurrentPedWeapon
  SHX4_2 = SHX1_2
  SHX5_2 = -1569615261
  SHX6_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadAnimDict
  SHX4_2 = "timetable@gardener@filling_can"
  SHX3_2(SHX4_2)
  SHX3_2 = TaskPlayAnim
  SHX4_2 = SHX1_2
  SHX5_2 = "timetable@gardener@filling_can"
  SHX6_2 = "gar_ig_5_filling_can"
  SHX7_2 = 2.0
  SHX8_2 = 8.0
  SHX9_2 = -1
  SHX10_2 = 50
  SHX11_2 = 0
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX3_2 = TriggerEvent
  SHX4_2 = "fuel:startFuelUpTick"
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX7_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  while true do
    SHX3_2 = SHX2_1
    if not SHX3_2 then
      break
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 1
    SHX3_2(SHX4_2)
    SHX3_2 = pairs
    SHX4_2 = SHX0_1.disabledKeys
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = DisableControlAction
      SHX10_2 = 0
      SHX11_2 = SHX8_2
      SHX12_2 = true
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    end
    SHX3_2 = GetEntityCoords
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX0_2 then
      SHX4_2 = GetEntityCoords
      SHX5_2 = SHX0_2
      SHX4_2 = SHX4_2(SHX5_2)
      SHX5_2 = ""
      SHX6_2 = "\n"
      SHX7_2 = SHX0_1.translations
      SHX7_2 = SHX7_2.TotalCost
      SHX8_2 = ": ~g~\194\163"
      SHX9_2 = getMoneyStringFormatted
      SHX10_2 = math
      SHX10_2 = SHX10_2.floor
      SHX11_2 = SHX6_1
      SHX12_2 = SHX4_1
      SHX13_2 = 1
      SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX11_2(SHX12_2, SHX13_2)
      SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2 .. SHX9_2
      SHX5_2 = SHX6_2
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.DrawText3D
      SHX7_2 = SHX4_2
      SHX8_2 = SHX0_1.translations
      SHX8_2 = SHX8_2.CancelFuelingPump
      SHX9_2 = SHX5_2
      SHX8_2 = SHX8_2 .. SHX9_2
      SHX9_2 = 0.35
      SHX10_2 = 4
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.DrawText3D
      SHX7_2 = vector3
      SHX8_2 = 0.0
      SHX9_2 = 0.0
      SHX10_2 = 0.5
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
      SHX7_2 = SHX3_2 + SHX7_2
      SHX8_2 = SHX6_1
      SHX9_2 = SHX3_1
      SHX10_2 = 1
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX9_2 = "%"
      SHX8_2 = SHX8_2 .. SHX9_2
      SHX9_2 = 0.35
      SHX10_2 = 4
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    else
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.DrawText3D
      SHX5_2 = vector3
      SHX6_2 = 0.0
      SHX7_2 = 0.0
      SHX8_2 = 0.5
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX5_2 = SHX3_2 + SHX5_2
      SHX6_2 = SHX0_1.translations
      SHX6_2 = SHX6_2.CancelFuelingJerryCan
      SHX7_2 = [[

Gas can: ~g~]]
      SHX8_2 = SHX6_1
      SHX9_2 = GetAmmoInPedWeapon
      SHX10_2 = SHX1_2
      SHX11_2 = 883325847
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = SHX9_2 / 4500
      SHX9_2 = SHX9_2 * 100
      SHX10_2 = 1
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX9_2 = "% | Vehicle: "
      SHX10_2 = SHX6_1
      SHX11_2 = SHX3_1
      SHX12_2 = 1
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
      SHX11_2 = "%"
      SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2 .. SHX9_2 .. SHX10_2 .. SHX11_2
      SHX7_2 = 0.35
      SHX8_2 = 4
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    end
    SHX4_2 = IsEntityPlayingAnim
    SHX5_2 = SHX1_2
    SHX6_2 = "timetable@gardener@filling_can"
    SHX7_2 = "gar_ig_5_filling_can"
    SHX8_2 = 3
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    if not SHX4_2 then
      SHX4_2 = TaskPlayAnim
      SHX5_2 = SHX1_2
      SHX6_2 = "timetable@gardener@filling_can"
      SHX7_2 = "gar_ig_5_filling_can"
      SHX8_2 = 2.0
      SHX9_2 = 8.0
      SHX10_2 = -1
      SHX11_2 = 50
      SHX12_2 = 0
      SHX13_2 = false
      SHX14_2 = false
      SHX15_2 = false
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    end
    SHX4_2 = IsControlJustReleased
    SHX5_2 = 0
    SHX6_2 = 38
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    if not SHX4_2 then
      SHX4_2 = DoesEntityExist
      SHX5_2 = GetPedInVehicleSeat
      SHX6_2 = SHX2_2
      SHX7_2 = -1
      SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX5_2(SHX6_2, SHX7_2)
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      if not SHX4_2 then
        SHX4_2 = SHX1_1
        if 0 == SHX4_2 then
          goto SHX_LABEL_188
        end
        SHX4_2 = GetEntityHealth
        SHX5_2 = SHX0_2
        SHX4_2 = SHX4_2(SHX5_2)
        if not (SHX4_2 <= 0) then
          goto SHX_LABEL_188
        end
      end
    end
    SHX4_2 = false
    SHX2_1 = SHX4_2
    -- [FIX IF ERROR] Move ::SHX_LABEL_188:: outside nested blocks until all 'goto SHX_LABEL_188' can see it
    ::SHX_LABEL_188::
  end
  SHX3_2 = ClearPedTasks
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
  SHX3_2 = RemoveAnimDict
  SHX4_2 = "timetable@gardener@filling_can"
  SHX3_2(SHX4_2)
end
SHX11_1(SHX12_1, SHX13_1)
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetModelDimensions
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
  SHX4_2 = vector3
  SHX5_2 = 0.0
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SHX4_2 - SHX2_2
  SHX4_2 = #SHX4_2
  SHX5_2 = vector3
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = SHX5_2 - SHX3_2
  SHX5_2 = #SHX5_2
  SHX6_2 = 2.5
  if SHX4_2 > SHX6_2 and SHX4_2 < 20.0 then
    return SHX4_2
  else
    SHX6_2 = 2.5
    if SHX5_2 > SHX6_2 and SHX5_2 < 20.0 then
      return SHX5_2
    end
  end
  SHX6_2 = 2.5
  return SHX6_2
end
SHX12_1 = Citizen
SHX12_1 = SHX12_1.CreateThread
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  while true do
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 1
    SHX0_2(SHX1_2)
    SHX0_2 = PlayerPedId
    SHX0_2 = SHX0_2()
    SHX1_2 = SHX2_1
    if not SHX1_2 then
      SHX1_2 = SHX1_1
      if 0 ~= SHX1_2 then
        SHX1_2 = GetEntityHealth
        SHX2_2 = SHX1_1
        SHX1_2 = SHX1_2(SHX2_2)
        if SHX1_2 > 0 then
          goto SHX_LABEL_26
        end
      end
      SHX1_2 = GetSelectedPedWeapon
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if 883325847 == SHX1_2 then
        SHX1_2 = SHX1_1
        if 0 == SHX1_2 then
          -- [FIX IF ERROR] Move ::SHX_LABEL_26:: outside nested blocks until all 'goto SHX_LABEL_26' can see it
          ::SHX_LABEL_26::
          SHX1_2 = IsPedInAnyVehicle
          SHX2_2 = SHX0_2
          SHX3_2 = true
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
          if SHX1_2 then
            SHX1_2 = GetPedInVehicleSeat
            SHX2_2 = GetVehiclePedIsIn
            SHX3_2 = SHX0_2
            SHX4_2 = false
            SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
            SHX3_2 = -1
            SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
            if SHX1_2 == SHX0_2 then
              SHX1_2 = GetEntityCoords
              SHX2_2 = SHX1_1
              SHX1_2 = SHX1_2(SHX2_2)
              SHX2_2 = CMG
              SHX2_2 = SHX2_2.DrawText3D
              SHX3_2 = vector3
              SHX4_2 = 0.0
              SHX5_2 = 0.0
              SHX6_2 = 1.2
              SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
              SHX3_2 = SHX1_2 + SHX3_2
              SHX4_2 = SHX0_1.translations
              SHX4_2 = SHX4_2.ExitVehicle
              SHX5_2 = 0.35
              SHX6_2 = 4
              SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          end
          else
            SHX1_2 = GetPlayersLastVehicle
            SHX1_2 = SHX1_2()
            SHX2_2 = GetEntityCoords
            SHX3_2 = SHX1_2
            SHX2_2 = SHX2_2(SHX3_2)
            SHX3_2 = DoesEntityExist
            SHX4_2 = SHX1_2
            SHX3_2 = SHX3_2(SHX4_2)
            if SHX3_2 then
              SHX3_2 = GetEntityCoords
              SHX4_2 = SHX0_2
              SHX3_2 = SHX3_2(SHX4_2)
              SHX3_2 = SHX3_2 - SHX2_2
              SHX3_2 = #SHX3_2
              SHX4_2 = SHX11_1
              SHX5_2 = SHX1_2
              SHX4_2 = SHX4_2(SHX5_2)
              if SHX3_2 < SHX4_2 then
                SHX3_2 = DoesEntityExist
                SHX4_2 = GetPedInVehicleSeat
                SHX5_2 = SHX1_2
                SHX6_2 = -1
                SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX4_2(SHX5_2, SHX6_2)
                SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
                if not SHX3_2 then
                  SHX3_2 = GetEntityCoords
                  SHX4_2 = SHX1_1
                  SHX3_2 = SHX3_2(SHX4_2)
                  SHX4_2 = true
                  SHX5_2 = GetSelectedPedWeapon
                  SHX6_2 = SHX0_2
                  SHX5_2 = SHX5_2(SHX6_2)
                  if 883325847 == SHX5_2 then
                    SHX3_2 = SHX2_2
                    SHX5_2 = GetAmmoInPedWeapon
                    SHX6_2 = SHX0_2
                    SHX7_2 = 883325847
                    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
                    if SHX5_2 < 100 then
                      SHX4_2 = false
                    end
                  end
                  SHX5_2 = GetVehicleFuelLevel
                  SHX6_2 = SHX1_2
                  SHX5_2 = SHX5_2(SHX6_2)
                  if SHX5_2 < 95 and SHX4_2 then
                    SHX5_2 = SHX7_1
                    SHX5_2 = SHX5_2()
                    if SHX5_2 > 0 then
                      SHX6_2 = CMG
                      SHX6_2 = SHX6_2.DrawText3D
                      SHX7_2 = vector3
                      SHX8_2 = 0.0
                      SHX9_2 = 0.0
                      SHX10_2 = 1.2
                      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
                      SHX7_2 = SHX3_2 + SHX7_2
                      SHX8_2 = SHX0_1.translations
                      SHX8_2 = SHX8_2.EToRefuel
                      SHX9_2 = 0.35
                      SHX10_2 = 4
                      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
                      SHX6_2 = IsControlJustReleased
                      SHX7_2 = 0
                      SHX8_2 = 38
                      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
                      if SHX6_2 then
                        SHX6_2 = true
                        SHX2_1 = SHX6_2
                        SHX6_2 = TriggerEvent
                        SHX7_2 = "fuel:refuelFromPump"
                        SHX8_2 = SHX1_1
                        SHX9_2 = SHX0_2
                        SHX10_2 = SHX1_2
                        SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
                      end
                    else
                      SHX6_2 = CMG
                      SHX6_2 = SHX6_2.DrawText3D
                      SHX7_2 = vector3
                      SHX8_2 = 0.0
                      SHX9_2 = 0.0
                      SHX10_2 = 1.2
                      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
                      SHX7_2 = SHX3_2 + SHX7_2
                      SHX8_2 = SHX0_1.translations
                      SHX8_2 = SHX8_2.NotEnoughCash
                      SHX9_2 = 0.35
                      SHX10_2 = 4
                      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
                    end
                  elseif not SHX4_2 then
                    SHX5_2 = CMG
                    SHX5_2 = SHX5_2.DrawText3D
                    SHX6_2 = vector3
                    SHX7_2 = 0.0
                    SHX8_2 = 0.0
                    SHX9_2 = 1.2
                    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
                    SHX6_2 = SHX3_2 + SHX6_2
                    SHX7_2 = SHX0_1.translations
                    SHX7_2 = SHX7_2.JerryCanEmpty
                    SHX8_2 = 0.35
                    SHX9_2 = 4
                    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
                  else
                    SHX5_2 = CMG
                    SHX5_2 = SHX5_2.DrawText3D
                    SHX6_2 = vector3
                    SHX7_2 = 0.0
                    SHX8_2 = 0.0
                    SHX9_2 = 1.2
                    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
                    SHX6_2 = SHX3_2 + SHX6_2
                    SHX7_2 = SHX0_1.translations
                    SHX7_2 = SHX7_2.FullTank
                    SHX8_2 = 0.35
                    SHX9_2 = 4
                    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
                  end
                end
            end
            else
              SHX3_2 = SHX1_1
              if 0 ~= SHX3_2 then
                SHX3_2 = GetEntityCoords
                SHX4_2 = SHX1_1
                SHX3_2 = SHX3_2(SHX4_2)
                SHX4_2 = SHX7_1
                SHX4_2 = SHX4_2()
                SHX5_2 = SHX0_1.jerryCanCost
                if SHX4_2 >= SHX5_2 then
                  SHX5_2 = HasPedGotWeapon
                  SHX6_2 = SHX0_2
                  SHX7_2 = 883325847
                  SHX8_2 = false
                  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
                  if not SHX5_2 then
                    SHX5_2 = CMG
                    SHX5_2 = SHX5_2.DrawText3D
                    SHX6_2 = vector3
                    SHX7_2 = 0.0
                    SHX8_2 = 0.0
                    SHX9_2 = 1.2
                    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
                    SHX6_2 = SHX3_2 + SHX6_2
                    SHX7_2 = SHX0_1.translations
                    SHX7_2 = SHX7_2.PurchaseJerryCan
                    SHX8_2 = 0.35
                    SHX9_2 = 4
                    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
                    SHX5_2 = IsControlJustReleased
                    SHX6_2 = 0
                    SHX7_2 = 38
                    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
                    if SHX5_2 then
                      SHX5_2 = CMG
                      SHX5_2 = SHX5_2.TriggerServerCallback
                      SHX6_2 = "49e51ddb66"
                      SHX7_2 = SHX0_1.jerryCanCost
                      SHX8_2 = "fuel"
                      SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
                      if SHX5_2 then
                        SHX6_2 = GiveWeaponToPed
                        SHX7_2 = SHX0_2
                        SHX8_2 = 883325847
                        SHX9_2 = 4500
                        SHX10_2 = false
                        SHX11_2 = true
                        SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
                      end
                    end
                  else
                    SHX5_2 = SHX6_1
                    SHX6_2 = SHX0_1.fuelCost
                    SHX7_2 = GetAmmoInPedWeapon
                    SHX8_2 = SHX0_2
                    SHX9_2 = 883325847
                    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
                    SHX7_2 = SHX7_2 / 4500
                    SHX8_2 = 1
                    SHX7_2 = SHX8_2 - SHX7_2
                    SHX6_2 = SHX6_2 * SHX7_2
                    SHX5_2 = SHX5_2(SHX6_2)
                    if SHX5_2 > 0 then
                      SHX6_2 = CMG
                      SHX6_2 = SHX6_2.DrawText3D
                      SHX7_2 = vector3
                      SHX8_2 = 0.0
                      SHX9_2 = 0.0
                      SHX10_2 = 1.2
                      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
                      SHX7_2 = SHX3_2 + SHX7_2
                      SHX8_2 = SHX0_1.translations
                      SHX8_2 = SHX8_2.RefillJerryCan
                      SHX9_2 = SHX5_2
                      SHX8_2 = SHX8_2 .. SHX9_2
                      SHX9_2 = 0.35
                      SHX10_2 = 4
                      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
                      SHX6_2 = IsControlJustReleased
                      SHX7_2 = 0
                      SHX8_2 = 38
                      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
                      if SHX6_2 then
                        SHX6_2 = CMG
                        SHX6_2 = SHX6_2.TriggerServerCallback
                        SHX7_2 = "49e51ddb66"
                        SHX8_2 = math
                        SHX8_2 = SHX8_2.floor
                        SHX9_2 = SHX5_2
                        SHX8_2 = SHX8_2(SHX9_2)
                        SHX9_2 = "fuel"
                        SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
                        if SHX6_2 then
                          SHX7_2 = SetPedAmmo
                          SHX8_2 = SHX0_2
                          SHX9_2 = 883325847
                          SHX10_2 = 4500
                          SHX7_2(SHX8_2, SHX9_2, SHX10_2)
                        end
                      end
                    else
                      SHX6_2 = CMG
                      SHX6_2 = SHX6_2.DrawText3D
                      SHX7_2 = vector3
                      SHX8_2 = 0.0
                      SHX9_2 = 0.0
                      SHX10_2 = 1.2
                      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
                      SHX7_2 = SHX3_2 + SHX7_2
                      SHX8_2 = SHX0_1.translations
                      SHX8_2 = SHX8_2.JerryCanFull
                      SHX9_2 = 0.35
                      SHX10_2 = 4
                      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
                    end
                  end
                else
                  SHX5_2 = CMG
                  SHX5_2 = SHX5_2.DrawText3D
                  SHX6_2 = vector3
                  SHX7_2 = 0.0
                  SHX8_2 = 0.0
                  SHX9_2 = 1.2
                  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
                  SHX6_2 = SHX3_2 + SHX6_2
                  SHX7_2 = SHX0_1.translations
                  SHX7_2 = SHX7_2.NotEnoughCash
                  SHX8_2 = 0.35
                  SHX9_2 = 4
                  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
                end
              else
                SHX3_2 = Citizen
                SHX3_2 = SHX3_2.Wait
                SHX4_2 = 250
                SHX3_2(SHX4_2)
              end
            end
          end
      end
    end
    else
      SHX1_2 = Citizen
      SHX1_2 = SHX1_2.Wait
      SHX2_2 = 250
      SHX1_2(SHX2_2)
    end
  end
end
SHX12_1(SHX13_1)
SHX12_1 = Citizen
SHX12_1 = SHX12_1.CreateThread
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RequestStreamedTextureDict
  SHX1_2 = "regplates"
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  while true do
    SHX0_2 = HasStreamedTextureDictLoaded
    SHX1_2 = "regplates"
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      break
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 1
    SHX0_2(SHX1_2)
  end
  SHX0_2 = AddReplaceTexture
  SHX1_2 = "vehshare"
  SHX2_2 = "plate01"
  SHX3_2 = "regplates"
  SHX4_2 = "plate01"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = AddReplaceTexture
  SHX1_2 = "vehshare"
  SHX2_2 = "plate01_n"
  SHX3_2 = "regplates"
  SHX4_2 = "plate01_n"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = AddReplaceTexture
  SHX1_2 = "vehshare"
  SHX2_2 = "plate02"
  SHX3_2 = "regplates"
  SHX4_2 = "plate02"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = AddReplaceTexture
  SHX1_2 = "vehshare"
  SHX2_2 = "plate02_n"
  SHX3_2 = "regplates"
  SHX4_2 = "plate02_n"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = AddReplaceTexture
  SHX1_2 = "vehshare"
  SHX2_2 = "plate03"
  SHX3_2 = "regplates"
  SHX4_2 = "plate03"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = AddReplaceTexture
  SHX1_2 = "vehshare"
  SHX2_2 = "plate03_n"
  SHX3_2 = "regplates"
  SHX4_2 = "plate03_n"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = AddReplaceTexture
  SHX1_2 = "vehshare"
  SHX2_2 = "plate04"
  SHX3_2 = "regplates"
  SHX4_2 = "plate04"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = AddReplaceTexture
  SHX1_2 = "vehshare"
  SHX2_2 = "plate04_n"
  SHX3_2 = "regplates"
  SHX4_2 = "plate04_n"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = AddReplaceTexture
  SHX1_2 = "vehshare"
  SHX2_2 = "plate05"
  SHX3_2 = "regplates"
  SHX4_2 = "plate05"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = AddReplaceTexture
  SHX1_2 = "vehshare"
  SHX2_2 = "plate05_n"
  SHX3_2 = "regplates"
  SHX4_2 = "plate05_n"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX12_1(SHX13_1)
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = string
  SHX1_2 = SHX1_2.format
  SHX2_2 = "Fuel Amount: %s%%"
  SHX3_2 = math
  SHX3_2 = SHX3_2.round
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getVehicleFuel
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = 1
  SHX3_2, SHX4_2, SHX5_2 = SHX3_2(SHX4_2, SHX5_2)
  return SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX13_1 = CMG
SHX13_1 = SHX13_1.registerDevMenuEntityEditor
SHX14_1 = "Fuel"
SHX15_1 = "vehicle"
SHX16_1 = SHX12_1
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1)
