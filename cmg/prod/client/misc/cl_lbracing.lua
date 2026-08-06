-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1
SHX0_1 = false
SHX1_1 = 10000
SHX2_1 = false
SHX3_1 = 990.0
SHX4_1 = CMG
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  return SHX0_2
end
SHX4_1.isLbRacingActive = SHX5_1
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = GetVehicleEngineHealth
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX3_1
  if SHX1_2 < SHX2_2 then
    SHX1_2 = true
    return SHX1_2
  end
  SHX1_2 = GetVehicleBodyHealth
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX3_1
  if SHX1_2 < SHX2_2 then
    SHX1_2 = true
    return SHX1_2
  end
  SHX1_2 = GetVehiclePetrolTankHealth
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX3_1
  if SHX1_2 < SHX2_2 then
    SHX1_2 = true
    return SHX1_2
  end
  SHX1_2 = false
  return SHX1_2
end
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  if 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = SHX4_1
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        goto SHX_LABEL_14
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_14:: outside nested blocks until all 'goto SHX_LABEL_14' can see it
  ::SHX_LABEL_14::
  SHX1_2 = table
  SHX1_2 = SHX1_2.unpack
  SHX2_2 = GetEntityVelocity
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX2_2(SHX3_2)
  SHX1_2, SHX2_2, SHX3_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SetVehicleEngineHealth
  SHX5_2 = SHX0_2
  SHX6_2 = 1000.0
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetVehicleBodyHealth
  SHX5_2 = SHX0_2
  SHX6_2 = 1000.0
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetVehiclePetrolTankHealth
  SHX5_2 = SHX0_2
  SHX6_2 = 1000.0
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetVehicleDeformationFixed
  SHX5_2 = SHX0_2
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.setVehicleFixedPreservingFuel
  SHX5_2 = SHX0_2
  SHX4_2(SHX5_2)
  SHX4_2 = SetEntityVelocity
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX7_2 = SHX2_2
  SHX8_2 = SHX3_2
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX2_1
  if SHX0_2 then
    return
  end
  SHX0_2 = true
  SHX2_1 = SHX0_2
  SHX0_2 = CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    while true do
      SHX0_3 = SHX0_1
      if not SHX0_3 then
        break
      end
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.getPlayerVehicle
      SHX0_3, SHX1_3 = SHX0_3()
      if 0 ~= SHX0_3 and SHX1_3 then
        SHX2_3 = SHX5_1
        SHX3_3 = SHX0_3
        SHX2_3(SHX3_3)
      end
      SHX2_3 = Wait
      SHX3_3 = SHX1_1
      SHX2_3(SHX3_3)
    end
    SHX0_3 = false
    SHX2_1 = SHX0_3
  end
  SHX0_2(SHX1_2)
end
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_1
  if SHX1_2 == SHX0_2 then
    return
  end
  SHX0_1 = SHX0_2
  if SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.setVehicleFailureDisabled
    SHX2_2 = true
    SHX1_2(SHX2_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.setGreenzonesDisabled
    SHX2_2 = true
    SHX1_2(SHX2_2)
    SHX1_2 = SHX6_1
    SHX1_2()
  else
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.setVehicleFailureDisabled
    SHX2_2 = false
    SHX1_2(SHX2_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.setGreenzonesDisabled
    SHX2_2 = false
    SHX1_2(SHX2_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerVehicle
    SHX1_2 = SHX1_2()
    if 0 ~= SHX1_2 then
      SHX2_2 = SetLocalPlayerAsGhost
      SHX3_2 = false
      SHX2_2(SHX3_2)
      SHX2_2 = SetNetworkVehicleAsGhost
      SHX3_2 = SHX1_2
      SHX4_2 = false
      SHX2_2(SHX3_2, SHX4_2)
    end
  end
end
SHX8_1 = RegisterNetEvent
SHX9_1 = "lb-racing:setParticipantsReady"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = print
  SHX1_2 = "setLbRacingActive"
  SHX2_2 = "true"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX7_1
  SHX1_2 = true
  SHX0_2(SHX1_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "lb-racing:raceFinished"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = print
  SHX1_2 = "setLbRacingActive"
  SHX2_2 = "false"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX7_1
  SHX1_2 = false
  SHX0_2(SHX1_2)
end
SHX8_1(SHX9_1, SHX10_1)
