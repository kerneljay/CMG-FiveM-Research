-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1
SHX0_1 = false
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = GetVehicleNumberOfWheels
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = 0
  SHX3_2 = 1
  SHX4_2 = SHX1_2
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = GetVehicleWheelSuspensionCompression
    SHX8_2 = SHX0_2
    SHX9_2 = SHX6_2 - 1
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX7_2 > 0.0 then
      SHX2_2 = SHX2_2 + 1
    end
  end
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = SHX1_2 / 2.0
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_2 = SHX2_2 > SHX3_2
  return SHX3_2
end
SHX2_1 = RegisterCommand
SHX3_1 = "flipcar"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2, SHX1_2 = SHX0_2()
  if 0 == SHX0_2 then
    SHX2_2 = notify
    SHX3_2 = "You are not in a vehicle"
    SHX2_2(SHX3_2)
    return
  end
  if not SHX1_2 then
    SHX2_2 = notify
    SHX3_2 = "You are not the driver of this vehicle"
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = GetIsVehicleEngineRunning
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = SetVehicleEngineOn
    SHX3_2 = SHX0_2
    SHX4_2 = false
    SHX5_2 = true
    SHX6_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  end
  SHX2_2 = SHX1_1
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = notify
    SHX3_2 = "Your vehicle does not require flipping"
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = SHX0_1
  if SHX2_2 then
    SHX2_2 = notify
    SHX3_2 = "Your vehicle is already waiting to be flipped"
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = true
  SHX0_1 = SHX2_2
  SHX2_2 = notify
  SHX3_2 = "Flipping your vehicle in 30 seconds. Please remain stationary"
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = GetEntityHealth
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = GetGameTimer
  SHX4_2 = SHX4_2()
  while true do
    SHX5_2 = GetGameTimer
    SHX5_2 = SHX5_2()
    SHX5_2 = SHX5_2 - SHX4_2
    SHX6_2 = 30000
    if not (SHX5_2 < SHX6_2) then
      break
    end
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getPlayerVehicle
    SHX5_2 = SHX5_2()
    if SHX5_2 ~= SHX0_2 then
      SHX5_2 = notify
      SHX6_2 = "Cancelling flip as you left the vehicle"
      SHX5_2(SHX6_2)
      SHX5_2 = false
      SHX0_1 = SHX5_2
      return
    end
    SHX5_2 = GetEntityHealth
    SHX6_2 = SHX2_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 ~= SHX3_2 then
      SHX5_2 = notify
      SHX6_2 = "Cancelling flip as you recieved damage"
      SHX5_2(SHX6_2)
      SHX5_2 = false
      SHX0_1 = SHX5_2
      return
    end
    SHX5_2 = GetEntitySpeed
    SHX6_2 = SHX0_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = 4.4704
    if SHX5_2 >= SHX6_2 then
      SHX5_2 = notify
      SHX6_2 = "Cancelling flip as you are not stationary"
      SHX5_2(SHX6_2)
      SHX5_2 = false
      SHX0_1 = SHX5_2
      return
    end
    SHX5_2 = GetIsVehicleEngineRunning
    SHX6_2 = SHX0_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX5_2 = notify
      SHX6_2 = "Cancelling flip as you turned the engine on"
      SHX5_2(SHX6_2)
      SHX5_2 = false
      SHX0_1 = SHX5_2
      return
    end
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  SHX5_2 = GetEntityCoords
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = SetEntityCoords
  SHX7_2 = SHX0_2
  SHX8_2 = SHX5_2.x
  SHX9_2 = SHX5_2.y
  SHX10_2 = SHX5_2.z
  SHX11_2 = true
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX6_2 = SetVehicleOnGroundProperly
  SHX7_2 = SHX0_2
  SHX6_2(SHX7_2)
  SHX6_2 = SetVehicleEngineOn
  SHX7_2 = SHX0_2
  SHX8_2 = true
  SHX9_2 = true
  SHX10_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX6_2 = notify
  SHX7_2 = "Your vehicle has been flipped"
  SHX6_2(SHX7_2)
  SHX6_2 = false
  SHX0_1 = SHX6_2
end
SHX5_1 = false
SHX2_1(SHX3_1, SHX4_1, SHX5_1)
