-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1
SHX0_1 = {}
SHX0_1.onJob = false
SHX1_1 = vector3
SHX2_1 = 423.28366088867
SHX3_1 = -611.52502441406
SHX4_1 = 28.499677658081
SHX1_1 = SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX0_1.spawnVehicleVector = SHX1_1
SHX1_1 = vector3
SHX2_1 = 429.52169799804
SHX3_1 = -587.45068359375
SHX4_1 = 29.499813079834
SHX1_1 = SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX0_1.startVector = SHX1_1
SHX0_1.tempMarker = 0
SHX0_1.tempVehicle = 0
SHX0_1.tempObject = 0
SHX0_1.cashEarned = 0
SHX0_1.stopNumber = 0
SHX1_1 = 15
SHX2_1 = CMG
SHX2_1 = SHX2_1.registerHudTimerBarProvider
SHX3_1 = "busJob"
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX0_1.onJob
  if not SHX1_2 then
    return
  end
  SHX1_2 = SHX0_2.push
  SHX2_2 = "~g~EARNED:"
  SHX3_2 = "\194\163"
  SHX4_2 = getMoneyStringFormatted
  SHX5_2 = SHX0_1.cashEarned
  SHX4_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2 .. SHX4_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX0_2.push
  SHX2_2 = "PACKAGES:"
  SHX3_2 = SHX0_1.stopNumber
  SHX4_2 = "/"
  SHX5_2 = SHX1_1
  SHX3_2 = SHX3_2 .. SHX4_2 .. SHX5_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RegisterNetEvent
SHX3_1 = "7332a52cba"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.requestEntitySpawn
  SHX1_2 = "busjob"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.spawnVehicle
  SHX1_2 = "bus"
  SHX2_2 = SHX0_1.spawnVehicleVector
  SHX2_2 = SHX2_2.x
  SHX3_2 = SHX0_1.spawnVehicleVector
  SHX3_2 = SHX3_2.y
  SHX4_2 = SHX0_1.spawnVehicleVector
  SHX4_2 = SHX4_2.z
  SHX5_2 = 343
  SHX6_2 = true
  SHX7_2 = true
  SHX8_2 = true
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_1.tempVehicle = SHX0_2
  SHX0_1.onJob = true
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setHudTimerBarProviderActive
  SHX1_2 = "busJob"
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.notify
  SHX1_2 = "~g~Bus Job started, exit the bus station and head to the first bus stop."
  SHX0_2(SHX1_2)
  while true do
    SHX0_2 = SHX0_1.onJob
    if not SHX0_2 then
      break
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setHudTimerBarProviderActive
  SHX1_2 = "busJob"
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RegisterNetEvent
SHX3_1 = "3ecacefd77"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.notify
  SHX1_2 = "~g~Shift complete"
  SHX0_2(SHX1_2)
  SHX0_2 = DeleteVehicle
  SHX1_2 = GetVehiclePedIsIn
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = false
  SHX1_2, SHX2_2, SHX3_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DeleteVehicle
  SHX1_2 = SHX0_1.tempVehicle
  SHX0_2(SHX1_2)
  SHX0_1.onJob = false
  SHX0_1.tempMarker = 0
  SHX0_1.tempBlip = nil
  SHX0_1.tempVehicle = 0
  SHX0_1.tempObject = 0
  SHX0_1.cashEarned = 0
  SHX0_1.stopNumber = 0
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RegisterNetEvent
SHX3_1 = "76c99145ae"
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = nil
  SHX2_2 = SHX0_1.tempVehicle
  SHX3_2 = SHX0_1.stopNumber
  SHX3_2 = SHX3_2 + 1
  SHX0_1.stopNumber = SHX3_2
  if SHX1_2 then
    SHX3_2 = SHX0_1.cashEarned
    SHX3_2 = SHX3_2 + SHX1_2
    SHX0_1.cashEarned = SHX3_2
  end
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    while true do
      SHX0_3 = SHX2_2
      if not SHX0_3 then
        break
      end
      SHX0_3 = SetVehicleEngineOn
      SHX1_3 = SHX2_2
      SHX2_3 = false
      SHX3_3 = true
      SHX4_3 = false
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX3_2(SHX4_2)
  SHX3_2 = SHX0_1.tempMarker
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.removeMarker
    SHX4_2 = SHX0_1.tempMarker
    SHX3_2(SHX4_2)
  end
  SHX3_2 = SetVehicleDoorOpen
  SHX4_2 = SHX2_2
  SHX5_2 = 0
  SHX6_2 = false
  SHX7_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = SetVehicleDoorOpen
  SHX4_2 = SHX2_2
  SHX5_2 = 1
  SHX6_2 = false
  SHX7_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = SetVehicleDoorOpen
  SHX4_2 = SHX2_2
  SHX5_2 = 2
  SHX6_2 = false
  SHX7_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = SetVehicleDoorOpen
  SHX4_2 = SHX2_2
  SHX5_2 = 3
  SHX6_2 = false
  SHX7_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = SetVehicleDoorOpen
  SHX4_2 = SHX2_2
  SHX5_2 = 4
  SHX6_2 = false
  SHX7_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = SetVehicleDoorOpen
  SHX4_2 = SHX2_2
  SHX5_2 = 5
  SHX6_2 = false
  SHX7_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.removeBlip
  SHX4_2 = SHX0_1.tempBlip
  SHX3_2(SHX4_2)
  SHX3_2 = SetTimeout
  SHX4_2 = 2500
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = SetVehicleDoorShut
    SHX1_3 = SHX2_2
    SHX2_3 = 0
    SHX3_3 = false
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX0_3 = SetVehicleDoorShut
    SHX1_3 = SHX2_2
    SHX2_3 = 1
    SHX3_3 = false
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX0_3 = SetVehicleDoorShut
    SHX1_3 = SHX2_2
    SHX2_3 = 2
    SHX3_3 = false
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX0_3 = SetVehicleDoorShut
    SHX1_3 = SHX2_2
    SHX2_3 = 3
    SHX3_3 = false
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX0_3 = SetVehicleDoorShut
    SHX1_3 = SHX2_2
    SHX2_3 = 4
    SHX3_3 = false
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX0_3 = SetVehicleDoorShut
    SHX1_3 = SHX2_2
    SHX2_3 = 5
    SHX3_3 = false
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX0_3 = nil
    SHX2_2 = SHX0_3
  end
  SHX3_2(SHX4_2, SHX5_2)
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RegisterNetEvent
SHX3_1 = "ea390002ee"
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.addBlip
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.y
  SHX4_2 = SHX0_2.z
  SHX5_2 = 1
  SHX6_2 = 5
  SHX7_2 = nil
  SHX8_2 = 1.0
  SHX9_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX0_1.tempBlip = SHX1_2
  SHX1_2 = SetBlipRoute
  SHX2_2 = SHX0_1.tempBlip
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.addMarker
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.y
  SHX4_2 = SHX0_2.z
  SHX4_2 = SHX4_2 - 1
  SHX5_2 = 2.0
  SHX6_2 = 2.0
  SHX7_2 = 1.0
  SHX8_2 = 200
  SHX9_2 = 20
  SHX10_2 = 0
  SHX11_2 = 50
  SHX12_2 = 50
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX0_1.tempMarker = SHX1_2
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = AddEventHandler
SHX3_1 = "CMG:onClientSpawn"
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_PICKUP~ to start your bus shift"
      SHX0_3(SHX1_3)
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3
      SHX0_3 = IsControlJustReleased
      SHX1_3 = 1
      SHX2_3 = 38
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = SHX0_1.onJob
        if not SHX0_3 then
          SHX0_3 = TriggerServerEvent
          SHX1_3 = "f94f6be633"
          SHX0_3(SHX1_3)
        end
      end
    end
    SHX5_2 = tCMG
    SHX5_2 = SHX5_2.addBlip
    SHX6_2 = SHX0_1.startVector
    SHX6_2 = SHX6_2.x
    SHX7_2 = SHX0_1.startVector
    SHX7_2 = SHX7_2.y
    SHX8_2 = SHX0_1.startVector
    SHX8_2 = SHX8_2.z
    SHX9_2 = 106
    SHX10_2 = 1
    SHX11_2 = "Bus Driver Job"
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX5_2 = tCMG
    SHX5_2 = SHX5_2.addMarker
    SHX6_2 = SHX0_1.startVector
    SHX6_2 = SHX6_2.x
    SHX7_2 = SHX0_1.startVector
    SHX7_2 = SHX7_2.y
    SHX8_2 = SHX0_1.startVector
    SHX8_2 = SHX8_2.z
    SHX8_2 = SHX8_2 - 1
    SHX9_2 = 1.0
    SHX10_2 = 1.0
    SHX11_2 = 1.0
    SHX12_2 = 255
    SHX13_2 = 0
    SHX14_2 = 0
    SHX15_2 = 70
    SHX16_2 = 50
    SHX17_2 = 39
    SHX18_2 = false
    SHX19_2 = false
    SHX20_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.createArea
    SHX6_2 = "bus"
    SHX7_2 = SHX0_1.startVector
    SHX8_2 = 1.5
    SHX9_2 = 6
    SHX10_2 = SHX2_2
    SHX11_2 = SHX3_2
    SHX12_2 = SHX4_2
    SHX13_2 = {}
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  end
end
SHX2_1(SHX3_1, SHX4_1)
