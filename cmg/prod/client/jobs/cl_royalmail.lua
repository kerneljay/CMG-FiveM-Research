-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/homes"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX1_1.onJob = false
SHX2_1 = vector3
SHX3_1 = -17.703647613525
SHX4_1 = -696.84149169922
SHX5_1 = 32.344856262207
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.spawnVehicleVector = SHX2_1
SHX2_1 = vector3
SHX3_1 = -19.447393417358
SHX4_1 = -705.32580566406
SHX5_1 = 32.338104248046
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.startVector = SHX2_1
SHX1_1.tempMarker = 0
SHX1_1.tempBlip = 0
SHX1_1.tempVehicle = 0
SHX1_1.tempObject = 0
SHX1_1.cashEarned = 0
SHX1_1.stopNumber = 0
SHX2_1 = 15
SHX3_1 = CMG
SHX3_1 = SHX3_1.registerHudTimerBarProvider
SHX4_1 = "royalMailJob"
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX1_1.onJob
  if not SHX1_2 then
    return
  end
  SHX1_2 = SHX0_2.push
  SHX2_2 = "~g~EARNED:"
  SHX3_2 = "\194\163"
  SHX4_2 = getMoneyStringFormatted
  SHX5_2 = SHX1_1.cashEarned
  SHX4_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2 .. SHX4_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX0_2.push
  SHX2_2 = "PACKAGES:"
  SHX3_2 = SHX1_1.stopNumber
  SHX4_2 = "/"
  SHX5_2 = SHX2_1
  SHX3_2 = SHX3_2 .. SHX4_2 .. SHX5_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "206b328a55"
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.requestEntitySpawn
  SHX1_2 = "royalmail"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.spawnVehicle
  SHX1_2 = "boxville2"
  SHX2_2 = SHX1_1.spawnVehicleVector
  SHX2_2 = SHX2_2.x
  SHX3_2 = SHX1_1.spawnVehicleVector
  SHX3_2 = SHX3_2.y
  SHX4_2 = SHX1_1.spawnVehicleVector
  SHX4_2 = SHX4_2.z
  SHX5_2 = 343
  SHX6_2 = true
  SHX7_2 = true
  SHX8_2 = true
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX1_1.tempVehicle = SHX0_2
  SHX1_1.onJob = true
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setHudTimerBarProviderActive
  SHX1_2 = "royalMailJob"
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.notify
  SHX1_2 = "~g~Postal Service Job started, exit the car park on your left and head to your first drop off point."
  SHX0_2(SHX1_2)
  while true do
    SHX0_2 = SHX1_1.onJob
    if not SHX0_2 then
      break
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setHudTimerBarProviderActive
  SHX1_2 = "royalMailJob"
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "4c5794cec0"
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.notify
  SHX1_2 = "~g~Shift complete."
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
  SHX1_2 = SHX1_1.tempVehicle
  SHX0_2(SHX1_2)
  SHX1_1.onJob = false
  SHX1_1.tempMarker = 0
  SHX1_1.tempBlip = 0
  SHX1_1.tempVehicle = 0
  SHX1_1.tempObject = 0
  SHX1_1.cashEarned = 0
  SHX1_1.stopNumber = 0
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "6d6033a0ac"
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = SHX1_1.tempVehicle
  SHX3_2 = SHX1_1.stopNumber
  SHX3_2 = SHX3_2 + 1
  SHX1_1.stopNumber = SHX3_2
  if SHX1_2 then
    SHX3_2 = SHX1_1.cashEarned
    SHX3_2 = SHX3_2 + SHX1_2
    SHX1_1.cashEarned = SHX3_2
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
      if 0 == SHX0_3 then
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
  SHX3_2 = SHX1_1.tempMarker
  if SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.removeMarker
    SHX4_2 = SHX1_1.tempMarker
    SHX3_2(SHX4_2)
  end
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
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX1_1.tempObject
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = DeleteObject
    SHX4_2 = SHX1_1.tempObject
    SHX3_2(SHX4_2)
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadModel
  SHX4_2 = "prop_drug_package"
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = CreateObject
  SHX5_2 = SHX3_2
  SHX6_2 = SHX0_2.x
  SHX7_2 = SHX0_2.y
  SHX8_2 = SHX0_2.z
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = true
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX1_1.tempObject = SHX4_2
  SHX4_2 = PlaceObjectOnGroundProperly
  SHX5_2 = SHX1_1.tempObject
  SHX4_2(SHX5_2)
  SHX4_2 = SetModelAsNoLongerNeeded
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = RemoveBlip
  SHX5_2 = SHX1_1.tempBlip
  SHX4_2(SHX5_2)
  SHX4_2 = SetTimeout
  SHX5_2 = 2500
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
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
    SHX0_3 = 0
    SHX2_2 = SHX0_3
  end
  SHX4_2(SHX5_2, SHX6_2)
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "c179928962"
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = AddBlipForCoord
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.y
  SHX4_2 = SHX0_2.z
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_1.tempBlip = SHX1_2
  SHX1_2 = SetBlipSprite
  SHX2_2 = SHX1_1.tempBlip
  SHX3_2 = 1
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetBlipRoute
  SHX2_2 = SHX1_1.tempBlip
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
  SHX1_1.tempMarker = SHX1_2
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = AddEventHandler
SHX4_1 = "CMG:onClientSpawn"
function SHX5_1(SHX0_2, SHX1_2)
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
      SHX1_3 = "Press ~INPUT_PICKUP~ to start your Postal Service job"
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
        SHX0_3 = SHX1_1.onJob
        if not SHX0_3 then
          SHX0_3 = TriggerServerEvent
          SHX1_3 = "3afd3b06f0"
          SHX0_3(SHX1_3)
        end
      end
    end
    SHX5_2 = tCMG
    SHX5_2 = SHX5_2.addBlip
    SHX6_2 = SHX1_1.startVector
    SHX6_2 = SHX6_2.x
    SHX7_2 = SHX1_1.startVector
    SHX7_2 = SHX7_2.y
    SHX8_2 = SHX1_1.startVector
    SHX8_2 = SHX8_2.z
    SHX9_2 = 67
    SHX10_2 = 1
    SHX11_2 = "Postal Service Job"
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX5_2 = tCMG
    SHX5_2 = SHX5_2.addMarker
    SHX6_2 = SHX1_1.startVector
    SHX6_2 = SHX6_2.x
    SHX7_2 = SHX1_1.startVector
    SHX7_2 = SHX7_2.y
    SHX8_2 = SHX1_1.startVector
    SHX8_2 = SHX8_2.z
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
    SHX6_2 = "royalmail"
    SHX7_2 = SHX1_1.startVector
    SHX8_2 = 1.5
    SHX9_2 = 6
    SHX10_2 = SHX2_2
    SHX11_2 = SHX3_2
    SHX12_2 = SHX4_2
    SHX13_2 = {}
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  end
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = RMenu
SHX3_1 = SHX3_1.Add
SHX4_1 = "cmgmail"
SHX5_1 = "write"
SHX6_1 = RageUI
SHX6_1 = SHX6_1.CreateMenu
SHX7_1 = "CMG Mail Service"
SHX8_1 = "~b~CMG Mail Service"
SHX9_1 = CMG
SHX9_1 = SHX9_1.getRageUIMenuWidth
SHX9_1 = SHX9_1()
SHX10_1 = CMG
SHX10_1 = SHX10_1.getRageUIMenuHeight
SHX10_1, SHX11_1, SHX12_1, SHX13_1 = SHX10_1()
SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1)
SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1)
SHX3_1 = RMenu
SHX3_1 = SHX3_1.Add
SHX4_1 = "cmgmail"
SHX5_1 = "address"
SHX6_1 = RageUI
SHX6_1 = SHX6_1.CreateSubMenu
SHX7_1 = RMenu
SHX8_1 = SHX7_1
SHX7_1 = SHX7_1.Get
SHX9_1 = "cmgmail"
SHX10_1 = "write"
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX8_1 = "CMG Mail Service"
SHX9_1 = "~b~CMG Mail Service"
SHX10_1 = CMG
SHX10_1 = SHX10_1.getRageUIMenuWidth
SHX10_1 = SHX10_1()
SHX11_1 = CMG
SHX11_1 = SHX11_1.getRageUIMenuHeight
SHX11_1, SHX12_1, SHX13_1 = SHX11_1()
SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1)
SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1)
SHX3_1 = ""
SHX4_1 = ""
SHX5_1 = ""
SHX6_1 = ""
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = SHX0_1.homes
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SHX6_1
    if "" ~= SHX6_2 then
      SHX6_2 = string
      SHX6_2 = SHX6_2.match
      SHX7_2 = string
      SHX7_2 = SHX7_2.lower
      SHX8_2 = SHX5_2
      SHX7_2 = SHX7_2(SHX8_2)
      SHX8_2 = string
      SHX8_2 = SHX8_2.lower
      SHX9_2 = SHX6_1
      SHX8_2, SHX9_2 = SHX8_2(SHX9_2)
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
      if not SHX6_2 then
        goto SHX_LABEL_28
      end
    end
    SHX6_2 = table
    SHX6_2 = SHX6_2.insert
    SHX7_2 = SHX0_2
    SHX8_2 = SHX5_2
    SHX6_2(SHX7_2, SHX8_2)
    -- [FIX IF ERROR] Move ::SHX_LABEL_28:: outside nested blocks until all 'goto SHX_LABEL_28' can see it
    ::SHX_LABEL_28::
  end
  SHX1_2 = table
  SHX1_2 = SHX1_2.sort
  SHX2_2 = SHX0_2
  function SHX3_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3
    SHX2_3 = SHX0_3 < SHX1_3
    return SHX2_3
  end
  SHX1_2(SHX2_2, SHX3_2)
  return SHX0_2
end
SHX8_1 = RageUI
SHX8_1 = SHX8_1.CreateWhile
SHX9_1 = 1.0
SHX10_1 = RMenu
SHX11_1 = SHX10_1
SHX10_1 = SHX10_1.Get
SHX12_1 = "cmgmail"
SHX13_1 = "write"
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX11_1 = nil
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgmail"
  SHX4_2 = "write"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "Signed by "
    SHX2_3 = SHX4_1
    SHX1_3 = SHX1_3 .. SHX2_3
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "Delivery Address is "
    SHX2_3 = SHX5_1
    SHX1_3 = SHX1_3 .. SHX2_3
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~y~Edit Message"
    SHX2_3 = SHX3_1
    SHX3_3 = {}
    SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
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
        SHX4_4 = "Edit Message"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5
          SHX1_5 = #SHX0_5
          if not (SHX1_5 < 3) then
            SHX1_5 = #SHX0_5
            SHX2_5 = 500
            if not (SHX1_5 > SHX2_5) then
              goto SHX_LABEL_12
            end
          end
          SHX1_5 = notify
          SHX2_5 = "~r~The message must be between 3 and 500 characters."
          SHX1_5(SHX2_5)
          goto SHX_LABEL_13
          -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
          ::SHX_LABEL_12::
          SHX3_1 = SHX0_5
          -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
          ::SHX_LABEL_13::
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~y~Edit Signature"
    SHX2_3 = SHX3_1
    SHX3_3 = {}
    SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
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
        SHX4_4 = "Edit Signature"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5
          SHX1_5 = #SHX0_5
          if 0 == SHX1_5 then
            SHX1_5 = CMG
            SHX1_5 = SHX1_5.getPlayerName
            SHX2_5 = PlayerId
            SHX2_5 = SHX2_5()
            SHX1_5 = SHX1_5(SHX2_5)
            SHX4_1 = SHX1_5
          else
            SHX1_5 = #SHX0_5
            if SHX1_5 > 20 then
              SHX1_5 = notify
              SHX2_5 = "~r~The signature must be between 1 and 20 characters."
              SHX1_5(SHX2_5)
            else
              SHX4_1 = SHX0_5
            end
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~y~Select Address"
    SHX2_3 = SHX3_1
    SHX3_3 = {}
    SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX4_3 = true
    function SHX5_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "cmgmail"
    SHX9_3 = "address"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~g~Submit Letter"
    SHX2_3 = SHX3_1
    SHX3_3 = {}
    SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
      if SHX2_4 then
        SHX3_4 = SHX0_1.homes
        SHX4_4 = SHX5_1
        SHX3_4 = SHX3_4[SHX4_4]
        if not SHX3_4 then
          SHX3_4 = notify
          SHX4_4 = "~r~You must select a house address to send to."
          SHX3_4(SHX4_4)
        else
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "a9f5519239"
          SHX5_4 = SHX3_1
          SHX6_4 = SHX4_1
          SHX7_4 = SHX5_1
          SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4)
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgmail"
  SHX4_2 = "address"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
    SHX0_3 = drawNativeNotification
    SHX1_3 = "Press ~INPUT_FRONTEND_X~ to search for an address."
    SHX0_3(SHX1_3)
    SHX0_3 = IsControlJustPressed
    SHX1_3 = 0
    SHX2_3 = 203
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
    if SHX0_3 then
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.clientPrompt
      SHX1_3 = "House Name"
      SHX2_3 = ""
      function SHX3_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4
        SHX6_1 = SHX0_4
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    end
    SHX0_3 = pairs
    SHX1_3 = SHX7_1
    SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3 = SHX1_3()
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = RageUI
      SHX6_3 = SHX6_3.ButtonWithStyle
      SHX7_3 = SHX5_3
      SHX8_3 = ""
      SHX9_3 = {}
      SHX9_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX10_3 = true
      function SHX11_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4
        if SHX2_4 then
          SHX3_4 = SHX5_3
          SHX5_1 = SHX3_4
          SHX3_4 = RageUI
          SHX3_4 = SHX3_4.GoBack
          SHX3_4()
        end
      end
      SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "5a1808605d"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX3_1
  if "" ~= SHX0_2 then
    SHX0_2 = notify
    SHX1_2 = "~y~This letter is using saved information from the last write."
    SHX0_2(SHX1_2)
  else
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerName
    SHX1_2 = PlayerId
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2()
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
    SHX4_1 = SHX0_2
  end
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgmail"
  SHX4_2 = "write"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX8_1(SHX9_1, SHX10_1)
