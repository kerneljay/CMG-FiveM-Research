-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_wheelchair"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.loadModule
SHX2_1 = "cfg/cfg_forcedequipment"
SHX1_1 = SHX1_1(SHX2_1)
SHX1_1 = SHX1_1.types
SHX1_1 = SHX1_1.wheelchair
SHX1_1 = SHX1_1.defaultDurationSeconds
SHX2_1 = nil
SHX3_1 = nil
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX2_1
  if not SHX0_2 then
    SHX0_2 = GetHashKey
    SHX1_2 = SHX0_1.spawnName
    SHX0_2 = SHX0_2(SHX1_2)
    SHX2_1 = SHX0_2
  end
  SHX0_2 = SHX2_1
  return SHX0_2
end
SHX5_1 = CMG
function SHX6_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = SHX4_1
  SHX2_2 = SHX2_2()
  if not SHX2_2 then
    SHX3_2 = 0
    return SHX3_2
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.spawnVehicle
  SHX4_2 = SHX0_1.spawnName
  SHX5_2 = SHX0_2.x
  SHX6_2 = SHX0_2.y
  SHX7_2 = SHX0_2.z
  SHX8_2 = SHX1_2 or SHX8_2
  if not SHX1_2 then
    SHX8_2 = 0.0
  end
  SHX9_2 = false
  SHX10_2 = true
  SHX11_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  if SHX3_2 and 0 ~= SHX3_2 then
    SHX4_2 = SetVehicleOnGroundProperly
    SHX5_2 = SHX3_2
    SHX4_2(SHX5_2)
  end
  SHX4_2 = SHX3_2 or SHX4_2
  if not SHX3_2 then
    SHX4_2 = 0
  end
  return SHX4_2
end
SHX5_1.spawnWheelchairVehicle = SHX6_1
SHX5_1 = CMG
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  if SHX0_2 and 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_12
    end
  end
  SHX1_2 = false
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX1_2 = SHX4_1
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX1_2 or SHX2_2
  if SHX1_2 then
    SHX2_2 = GetEntityModel
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX2_2 = SHX2_2 == SHX1_2
  end
  return SHX2_2
end
SHX5_1.isWheelchairVehicle = SHX6_1
SHX5_1 = CMG
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isForcedEquipment
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isForcedEquipment
    SHX1_2 = "wheelchair"
    SHX0_2 = SHX0_2(SHX1_2)
  end
  return SHX0_2
end
SHX5_1.isForcedWheelchair = SHX6_1
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX3_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      goto SHX_LABEL_10
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX0_2 = NetworkGetNetworkIdFromEntity
  SHX1_2 = SHX3_1
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 and 0 ~= SHX0_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "ce24d993d8"
    SHX3_2 = "wheelchair"
    SHX4_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  else
    SHX1_2 = CreateThread
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3
      SHX0_3 = Wait
      SHX1_3 = 100
      SHX0_3(SHX1_3)
      SHX0_3 = SHX3_1
      if SHX0_3 then
        SHX0_3 = DoesEntityExist
        SHX1_3 = SHX3_1
        SHX0_3 = SHX0_3(SHX1_3)
        if SHX0_3 then
          SHX0_3 = NetworkGetNetworkIdFromEntity
          SHX1_3 = SHX3_1
          SHX0_3 = SHX0_3(SHX1_3)
          SHX0_2 = SHX0_3
          SHX0_3 = SHX0_2
          if SHX0_3 then
            SHX0_3 = SHX0_2
            if 0 ~= SHX0_3 then
              SHX0_3 = TriggerServerEvent
              SHX1_3 = "ce24d993d8"
              SHX2_3 = "wheelchair"
              SHX3_3 = SHX0_2
              SHX0_3(SHX1_3, SHX2_3, SHX3_3)
            end
          end
        end
      end
    end
    SHX1_2(SHX2_2)
  end
end
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX3_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getPlayerPed
      SHX0_2 = SHX0_2()
      SHX1_2 = GetVehiclePedIsIn
      SHX2_2 = SHX0_2
      SHX3_2 = false
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      SHX2_2 = SHX3_1
      if SHX1_2 == SHX2_2 then
        SHX1_2 = TaskLeaveVehicle
        SHX2_2 = SHX0_2
        SHX3_2 = SHX3_1
        SHX4_2 = 16
        SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      end
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX3_1
      SHX1_2(SHX2_2)
    end
  end
  SHX0_2 = nil
  SHX3_1 = SHX0_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "607b2e0073"
  SHX2_2 = "wheelchair"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "895f60bda9"
  SHX2_2 = "wheelchair"
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX7_1()
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    while true do
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.isForcedEquipment
      if not SHX0_3 then
        break
      end
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.isForcedEquipment
      SHX1_3 = "wheelchair"
      SHX0_3 = SHX0_3(SHX1_3)
      if not SHX0_3 then
        break
      end
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.getPlayerPed
      SHX0_3 = SHX0_3()
      SHX1_3 = GetVehiclePedIsIn
      SHX2_3 = SHX0_3
      SHX3_3 = false
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if 0 ~= SHX1_3 then
        SHX2_3 = CMG
        SHX2_3 = SHX2_3.isWheelchairVehicle
        SHX3_3 = SHX1_3
        SHX2_3 = SHX2_3(SHX3_3)
        if SHX2_3 then
          SHX2_3 = DisableControlAction
          SHX3_3 = 0
          SHX4_3 = 75
          SHX5_3 = true
          SHX2_3(SHX3_3, SHX4_3, SHX5_3)
        end
      end
      SHX2_3 = Wait
      SHX3_3 = 0
      SHX2_3(SHX3_3)
    end
  end
  SHX0_2(SHX1_2)
end
SHX8_1 = RegisterNetEvent
SHX9_1 = "0b5b9ba4db"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.removeForcedEquipment
  SHX1_2 = "wheelchair"
  SHX0_2(SHX1_2)
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX3_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getPlayerPed
      SHX0_2 = SHX0_2()
      if 0 ~= SHX0_2 then
        SHX1_2 = GetVehiclePedIsIn
        SHX2_2 = SHX0_2
        SHX3_2 = false
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        SHX2_2 = SHX3_1
        if SHX1_2 == SHX2_2 then
          SHX1_2 = TaskLeaveVehicle
          SHX2_2 = SHX0_2
          SHX3_2 = SHX3_1
          SHX4_2 = 16
          SHX1_2(SHX2_2, SHX3_2, SHX4_2)
        end
      end
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX3_1
      SHX1_2(SHX2_2)
    end
  end
  SHX0_2 = nil
  SHX3_1 = SHX0_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "607b2e0073"
  SHX2_2 = "wheelchair"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "05e4b09a9e"
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = GetEntityCoords
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = GetEntityHeading
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.requestEntitySpawn
  SHX6_2 = "wheelchair"
  SHX5_2(SHX6_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.spawnWheelchairVehicle
  SHX6_2 = SHX3_2
  SHX7_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  if 0 == SHX5_2 then
    SHX6_2 = notify
    SHX7_2 = "~r~Failed to spawn wheelchair."
    SHX6_2(SHX7_2)
    return
  end
  SHX6_2 = SetPedIntoVehicle
  SHX7_2 = SHX2_2
  SHX8_2 = SHX5_2
  SHX9_2 = -1
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX3_1 = SHX5_2
  SHX6_2 = SHX5_1
  SHX6_2()
  SHX6_2 = SHX0_2 or SHX6_2
  if not SHX0_2 then
    SHX6_2 = SHX1_1
  end
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.addForcedEquipment
  SHX8_2 = "wheelchair"
  SHX9_2 = SHX6_2
  SHX10_2 = SHX6_1
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = SHX7_1
  SHX7_2()
  if not SHX1_2 then
    SHX7_2 = notify
    SHX8_2 = "~g~A wheelchair has been provided for you. You must use it for "
    SHX9_2 = math
    SHX9_2 = SHX9_2.ceil
    SHX10_2 = SHX6_2 / 60
    SHX9_2 = SHX9_2(SHX10_2)
    SHX10_2 = " minutes."
    SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2
    SHX7_2(SHX8_2)
  end
end
SHX8_1(SHX9_1, SHX10_1)
