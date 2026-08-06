-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1
SHX0_1 = false
SHX1_1 = false
SHX2_1 = nil
SHX3_1 = false
SHX4_1 = nil
SHX5_1 = false
SHX6_1 = false
SHX7_1 = false
SHX8_1 = CMG
function SHX9_1()
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
SHX8_1.isKnockedOut = SHX9_1
SHX8_1 = RegisterNetEvent
SHX9_1 = "playRussianRoulette"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = GetEntityCoords
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2, SHX3_2, SHX4_2 = SHX2_2()
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = SHX1_2 - SHX0_2
  SHX2_2 = #SHX2_2
  if SHX2_2 <= 15 then
    SHX3_2 = SendNUIMessage
    SHX4_2 = {}
    SHX4_2.transactionType = "playRussianRoulette"
    SHX3_2(SHX4_2)
  end
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "playEmptyGun"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = GetEntityCoords
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2, SHX3_2, SHX4_2 = SHX2_2()
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = SHX1_2 - SHX0_2
  SHX2_2 = #SHX2_2
  if SHX2_2 <= 15 then
    SHX3_2 = SendNUIMessage
    SHX4_2 = {}
    SHX4_2.transactionType = "emptygun"
    SHX3_2(SHX4_2)
  end
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = CreateTimecycleModifier
SHX9_1 = "knockout"
SHX8_1(SHX9_1)
SHX8_1 = SetTimecycleModifierVar
SHX9_1 = "knockout"
SHX10_1 = "postfx_noise"
SHX11_1 = 0.5
SHX12_1 = 0.0
SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1)
SHX8_1 = SetTimecycleModifierVar
SHX9_1 = "knockout"
SHX10_1 = "postfx_noise_size"
SHX11_1 = 0.5
SHX12_1 = 0.0
SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1)
SHX8_1 = SetTimecycleModifierVar
SHX9_1 = "knockout"
SHX10_1 = "screen_blur_intensity"
SHX11_1 = 1.0
SHX12_1 = 0.0
SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1)
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = GetVehicleClass
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 18 == SHX1_2 then
    SHX1_2 = true
    return SHX1_2
  end
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = IsThisModelAHeli
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = true
    return SHX2_2
  end
  SHX2_2 = false
  return SHX2_2
end
SHX9_1 = tCMG
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getClosestVehicle
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX3_2 = IsEntityAVehicle
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      if not SHX1_2 then
        SHX3_2 = SHX8_1
        SHX4_2 = SHX2_2
        SHX3_2 = SHX3_2(SHX4_2)
        if not SHX3_2 then
          goto SHX_LABEL_45
        end
      end
      SHX3_2 = 1
      SHX4_2 = math
      SHX4_2 = SHX4_2.max
      SHX5_2 = GetVehicleMaxNumberOfPassengers
      SHX6_2 = SHX2_2
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = 3
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      SHX5_2 = 1
      for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
        SHX7_2 = IsVehicleSeatFree
        SHX8_2 = SHX2_2
        SHX9_2 = SHX6_2
        SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
        if SHX7_2 then
          SHX7_2 = SetPedIntoVehicle
          SHX8_2 = CMG
          SHX8_2 = SHX8_2.getPlayerPed
          SHX8_2 = SHX8_2()
          SHX9_2 = SHX2_2
          SHX10_2 = SHX6_2
          SHX7_2(SHX8_2, SHX9_2, SHX10_2)
          SHX7_2 = true
          return SHX7_2
        end
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_45:: outside nested blocks until all 'goto SHX_LABEL_45' can see it
  ::SHX_LABEL_45::
  SHX3_2 = false
  return SHX3_2
end
SHX9_1.putInNearestVehicleAsPassenger = SHX10_1
SHX9_1 = tCMG
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getObjectId
  SHX2_2 = SHX0_2
  SHX3_2 = "putInNetVehicleAsPassenger"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX2_2 = IsEntityAVehicle
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = 1
      SHX3_2 = GetVehicleMaxNumberOfPassengers
      SHX4_2 = SHX1_2
      SHX3_2 = SHX3_2(SHX4_2)
      SHX4_2 = 1
      for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
        SHX6_2 = IsVehicleSeatFree
        SHX7_2 = SHX1_2
        SHX8_2 = SHX5_2
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
        if SHX6_2 then
          SHX6_2 = SetPedIntoVehicle
          SHX7_2 = CMG
          SHX7_2 = SHX7_2.getPlayerPed
          SHX7_2 = SHX7_2()
          SHX8_2 = SHX1_2
          SHX9_2 = SHX5_2
          SHX6_2(SHX7_2, SHX8_2, SHX9_2)
          SHX6_2 = true
          return SHX6_2
        end
      end
    end
  end
  SHX2_2 = false
  return SHX2_2
end
SHX9_1.putInNetVehicleAsPassenger = SHX10_1
SHX9_1 = tCMG
function SHX10_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.getVehicleAtPosition
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = IsEntityAVehicle
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if SHX4_2 then
    SHX4_2 = 1
    SHX5_2 = GetVehicleMaxNumberOfPassengers
    SHX6_2 = SHX3_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = 1
    for SHX7_2 = SHX4_2, SHX5_2, SHX6_2 do
      SHX8_2 = IsVehicleSeatFree
      SHX9_2 = SHX3_2
      SHX10_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      if SHX8_2 then
        SHX8_2 = SetPedIntoVehicle
        SHX9_2 = CMG
        SHX9_2 = SHX9_2.getPlayerPed
        SHX9_2 = SHX9_2()
        SHX10_2 = SHX3_2
        SHX11_2 = SHX7_2
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
        SHX8_2 = true
        return SHX8_2
      end
    end
  end
  SHX4_2 = false
  return SHX4_2
end
SHX9_1.putInVehiclePositionAsPassenger = SHX10_1
SHX9_1 = {}
SHX10_1 = {}
SHX11_1 = "switch@franklin@bed"
SHX12_1 = "sleep_loop"
SHX10_1[1] = SHX11_1
SHX10_1[2] = SHX12_1
SHX11_1 = {}
SHX12_1 = "switch@trevor@bed"
SHX13_1 = "bed_sleep_floyd"
SHX11_1[1] = SHX12_1
SHX11_1[2] = SHX13_1
SHX9_1[1] = SHX10_1
SHX9_1[2] = SHX11_1
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = math
  SHX0_2 = SHX0_2.random
  SHX1_2 = 1
  SHX2_2 = SHX9_1
  SHX2_2 = #SHX2_2
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_2 = SHX9_1
  SHX0_2 = SHX1_2[SHX0_2]
  return SHX0_2
end
SHX11_1 = RegisterNetEvent
SHX12_1 = "8e08db8961"
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isPurge
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.inArena
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = tCMG
        SHX0_2 = SHX0_2.setCanAnim
        SHX1_2 = false
        SHX0_2(SHX1_2)
        SHX0_2 = SetTimecycleModifier
        SHX1_2 = "knockout"
        SHX0_2(SHX1_2)
        SHX0_2 = true
        SHX0_1 = SHX0_2
        SHX0_2 = SHX10_1
        SHX0_2 = SHX0_2()
        SHX2_1 = SHX0_2
        SHX0_2 = TriggerServerEvent
        SHX1_2 = "f0adea3789"
        SHX0_2(SHX1_2)
        SHX0_2 = tCMG
        SHX0_2 = SHX0_2.notify
        SHX1_2 = "~r~You have been knocked out!"
        SHX0_2(SHX1_2)
      end
    end
  end
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = RegisterNetEvent
SHX12_1 = "259d5b120c"
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = PlayerPedId
    SHX0_2 = SHX0_2()
    SHX1_2 = SetEntityCollision
    SHX2_2 = SHX0_2
    SHX3_2 = true
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = FreezeEntityPosition
    SHX2_2 = SHX0_2
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX2_1
    if SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getTunableValue
      SHX2_2 = "ragdoll_knockout"
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = ClearPedTasksImmediately
        SHX2_2 = SHX0_2
        SHX1_2(SHX2_2)
      else
        SHX1_2 = StopAnimTask
        SHX2_2 = SHX0_2
        SHX3_2 = SHX2_1
        SHX3_2 = SHX3_2[1]
        SHX4_2 = SHX2_1
        SHX4_2 = SHX4_2[2]
        SHX5_2 = 1.0
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      end
    end
    SHX1_2 = SHX1_1
    if SHX1_2 then
      SHX1_2 = TriggerEvent
      SHX2_2 = "TriggerTazer"
      SHX1_2(SHX2_2)
      SHX1_2 = false
      SHX1_1 = SHX1_2
    end
    SHX1_2 = ClearTimecycleModifier
    SHX1_2()
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.setCanAnim
    SHX2_2 = true
    SHX1_2(SHX2_2)
    SHX1_2 = false
    SHX0_1 = SHX1_2
    SHX1_2 = nil
    SHX2_1 = SHX1_2
  end
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = CMG
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_1 = SHX0_2
end
SHX11_1.setKnockoutTasersAfter = SHX12_1
SHX11_1 = RegisterNetEvent
SHX12_1 = "21d21b8eb5"
SHX11_1(SHX12_1)
SHX11_1 = AddEventHandler
SHX12_1 = "21d21b8eb5"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX4_1 = SHX0_2
  SHX1_2 = SHX5_1
  SHX1_2 = not SHX1_2
  SHX5_1 = SHX1_2
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = RegisterNetEvent
SHX12_1 = "2ce9e6535d"
SHX11_1(SHX12_1)
SHX11_1 = AddEventHandler
SHX12_1 = "2ce9e6535d"
function SHX13_1()
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
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = RegisterNetEvent
SHX12_1 = "ccbe891b9b"
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = false
  SHX1_2 = SetTimeout
  SHX2_2 = 10000
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = true
    SHX0_2 = SHX0_3
  end
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setDrawingInventoryUI
  SHX2_2 = false
  SHX1_2(SHX2_2)
  while not SHX0_2 do
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isDrawingInventoryUI
    SHX1_2 = SHX1_2()
    if SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.setDrawingInventoryUI
      SHX2_2 = false
      SHX1_2(SHX2_2)
    end
    SHX1_2 = Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
end
SHX11_1(SHX12_1, SHX13_1)
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "8c66af1a00"
  SHX0_2(SHX1_2)
end
GetFounderPerks = SHX11_1
SHX11_1 = TriggerEvent
SHX12_1 = "chat:addSuggestion"
SHX13_1 = "/s60"
SHX14_1 = "Authorise a new Section 60 order"
SHX15_1 = {}
SHX16_1 = {}
SHX16_1.name = "Radius"
SHX16_1.help = "In metres"
SHX17_1 = {}
SHX17_1.name = "Duration"
SHX17_1.help = "In Minutes"
SHX15_1[1] = SHX16_1
SHX15_1[2] = SHX17_1
SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX11_1 = {}
SHX12_1 = RegisterNetEvent
SHX13_1 = "63d1315723"
function SHX14_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX3_2 = AddBlipForCoord
  SHX4_2 = SHX0_2.x
  SHX5_2 = SHX0_2.y
  SHX6_2 = SHX0_2.z
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = AddBlipForRadius
  SHX5_2 = SHX0_2.x
  SHX6_2 = SHX0_2.y
  SHX7_2 = SHX0_2.z
  SHX8_2 = SHX1_2 + 0.0
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = 61
  SHX6_2 = SetBlipSprite
  SHX7_2 = SHX3_2
  SHX8_2 = 526
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetBlipColour
  SHX7_2 = SHX3_2
  SHX8_2 = SHX5_2
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetBlipScale
  SHX7_2 = SHX3_2
  SHX8_2 = 1.0
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = BeginTextCommandSetBlipName
  SHX7_2 = "STRING"
  SHX6_2(SHX7_2)
  SHX6_2 = AddTextComponentSubstringPlayerName
  SHX7_2 = "Section 60"
  SHX6_2(SHX7_2)
  SHX6_2 = EndTextCommandSetBlipName
  SHX7_2 = SHX3_2
  SHX6_2(SHX7_2)
  SHX6_2 = SetBlipAlpha
  SHX7_2 = SHX4_2
  SHX8_2 = 80
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetBlipColour
  SHX7_2 = SHX4_2
  SHX8_2 = SHX5_2
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SHX11_1
  SHX7_2 = {}
  SHX8_2 = SHX4_2
  SHX9_2 = SHX3_2
  SHX7_2[1] = SHX8_2
  SHX7_2[2] = SHX9_2
  SHX6_2[SHX2_2] = SHX7_2
  SHX6_2 = GetStreetNameAtCoord
  SHX7_2 = SHX0_2.x
  SHX8_2 = SHX0_2.y
  SHX9_2 = SHX0_2.z
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX7_2 = GetStreetNameFromHashKey
  SHX8_2 = SHX6_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = TriggerEvent
  SHX9_2 = "371eab1d3a"
  SHX10_2 = {}
  SHX11_2 = "Metropolitan Police: <br/>A Section 60 has been authorised for the area of"
  SHX12_2 = SHX7_2
  SHX13_2 = ".<br/><br/>This gives officers the power to search any person or vehicle in the area, without any grounds. <br/><br/>This has been authorised in line with legislation."
  SHX11_2 = SHX11_2 .. SHX12_2 .. SHX13_2
  SHX10_2.text = SHX11_2
  SHX10_2.height = "auto"
  SHX10_2.width = "auto"
  SHX10_2.colour = "#FFF"
  SHX10_2.background = "#3287cd"
  SHX10_2.pos = "bottom-right"
  SHX10_2.icon = "success"
  SHX11_2 = 100000
  SHX8_2(SHX9_2, SHX10_2, SHX11_2)
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "0e40bd25ed"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX11_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX1_2 = SHX11_1
    SHX1_2 = SHX1_2[SHX0_2]
    SHX2_2 = SHX1_2[2]
    SHX3_2 = SHX1_2[1]
    SHX4_2 = RemoveBlip
    SHX5_2 = SHX2_2
    SHX4_2(SHX5_2)
    SHX4_2 = RemoveBlip
    SHX5_2 = SHX3_2
    SHX4_2(SHX5_2)
  end
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = false
SHX13_1 = CMG
SHX13_1 = SHX13_1.registerCommand
SHX14_1 = "+handsup"
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isSittingOnChair
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = true
    SHX12_1 = SHX0_2
  end
end
SHX16_1 = false
SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX13_1 = CMG
SHX13_1 = SHX13_1.registerCommand
SHX14_1 = "-handsup"
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX12_1 = SHX0_2
end
SHX16_1 = false
SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX13_1 = RegisterKeyMapping
SHX14_1 = "+handsup"
SHX15_1 = "Hands Up"
SHX16_1 = "KEYBOARD"
SHX17_1 = "X"
SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1)
SHX13_1 = 0
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = IsPedReloading
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = GetIsTaskActive
    SHX2_2 = SHX0_2
    SHX3_2 = 298
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if not SHX1_2 then
      SHX1_2 = GetGameTimer
      SHX1_2 = SHX1_2()
      SHX2_2 = SHX13_1
      SHX1_2 = SHX1_2 - SHX2_2
      SHX1_2 = SHX1_2 < 100
    end
  end
  return SHX1_2
end
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX0_2 = SHX5_1
  if SHX0_2 then
    SHX0_2 = SHX4_1
    if nil ~= SHX0_2 then
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 21
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = GetPlayerPed
      SHX1_2 = GetPlayerFromServerId
      SHX2_2 = SHX4_1
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX1_2(SHX2_2)
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerPed
      SHX1_2 = SHX1_2()
      if 0 ~= SHX0_2 and 0 ~= SHX1_2 and SHX1_2 ~= SHX0_2 then
        SHX2_2 = GetEntityHealth
        SHX3_2 = SHX1_2
        SHX2_2 = SHX2_2(SHX3_2)
        if not (SHX2_2 <= 102) then
          SHX2_2 = GetEntityHealth
          SHX3_2 = SHX0_2
          SHX2_2 = SHX2_2(SHX3_2)
          if not (SHX2_2 <= 102) then
            goto SHX_LABEL_40
          end
        end
        SHX2_2 = TriggerEvent
        SHX3_2 = "2ce9e6535d"
        SHX2_2(SHX3_2)
        goto SHX_LABEL_57
        -- [FIX IF ERROR] Move ::SHX_LABEL_40:: outside nested blocks until all 'goto SHX_LABEL_40' can see it
        ::SHX_LABEL_40::
        SHX2_2 = AttachEntityToEntity
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = 4103
        SHX6_2 = 11816
        SHX7_2 = 0.48
        SHX8_2 = 0.0
        SHX9_2 = 0.0
        SHX10_2 = 0.0
        SHX11_2 = 0.0
        SHX12_2 = false
        SHX13_2 = false
        SHX14_2 = false
        SHX15_2 = false
        SHX16_2 = 0
        SHX17_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_57:: outside nested blocks until all 'goto SHX_LABEL_57' can see it
      ::SHX_LABEL_57::
      SHX2_2 = true
      SHX6_1 = SHX2_2
  end
  else
    SHX0_2 = SHX6_1
    if SHX0_2 then
      SHX0_2 = DetachEntity
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerPed
      SHX1_2 = SHX1_2()
      SHX2_2 = true
      SHX3_2 = false
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = false
      SHX6_1 = SHX0_2
    end
  end
  SHX0_2 = IsControlPressed
  SHX1_2 = 0
  SHX2_2 = 45
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = GetGameTimer
    SHX0_2 = SHX0_2()
    SHX13_1 = SHX0_2
  end
  SHX0_2 = SHX12_1
  if not SHX0_2 then
    SHX0_2 = IsControlPressed
    SHX1_2 = 0
    SHX2_2 = 27
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if not SHX0_2 then
      goto SHX_LABEL_174
    end
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isUsingKeyboard
    SHX1_2 = 2
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      goto SHX_LABEL_174
    end
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isSurrendering
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.isInComa
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isHandcuffed
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.isPlayingEmote
        SHX0_2 = SHX0_2()
        if SHX0_2 then
          SHX0_2 = IsPedUsingAnyScenario
          SHX1_2 = PlayerPedId
          SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX1_2()
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
          if SHX0_2 then
            goto SHX_LABEL_174
          end
        end
        SHX0_2 = tCMG
        SHX0_2 = SHX0_2.canAnim
        SHX0_2 = SHX0_2()
        if not SHX0_2 then
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.isTazedByRevive
          SHX0_2 = SHX0_2()
          if not SHX0_2 then
            goto SHX_LABEL_174
          end
        end
        SHX0_2 = DisablePlayerFiring
        SHX1_2 = PlayerId
        SHX1_2 = SHX1_2()
        SHX2_2 = true
        SHX0_2(SHX1_2, SHX2_2)
        SHX0_2 = DisableControlAction
        SHX1_2 = 0
        SHX2_2 = 22
        SHX3_2 = true
        SHX0_2(SHX1_2, SHX2_2, SHX3_2)
        SHX0_2 = DisableControlAction
        SHX1_2 = 0
        SHX2_2 = 25
        SHX3_2 = true
        SHX0_2(SHX1_2, SHX2_2, SHX3_2)
        SHX0_2 = DisableControlAction
        SHX1_2 = 0
        SHX2_2 = 154
        SHX3_2 = true
        SHX0_2(SHX1_2, SHX2_2, SHX3_2)
        SHX0_2 = IsEntityDead
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.getPlayerPed
        SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX1_2()
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
        if not SHX0_2 then
          SHX0_2 = SHX3_1
          if not SHX0_2 then
            SHX0_2 = SHX14_1
            SHX1_2 = PlayerPedId
            SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX1_2()
            SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
            if not SHX0_2 then
              SHX0_2 = true
              SHX3_1 = SHX0_2
              SHX0_2 = Citizen
              SHX0_2 = SHX0_2.CreateThread
              function SHX1_2()
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
                SHX0_3 = CMG
                SHX0_3 = SHX0_3.loadAnimDict
                SHX1_3 = "missminuteman_1ig_2"
                SHX0_3(SHX1_3)
                SHX0_3 = TaskPlayAnim
                SHX1_3 = CMG
                SHX1_3 = SHX1_3.getPlayerPed
                SHX1_3 = SHX1_3()
                SHX2_3 = "missminuteman_1ig_2"
                SHX3_3 = "handsup_enter"
                SHX4_3 = 7.0
                SHX5_3 = 1.0
                SHX6_3 = -1
                SHX7_3 = 50
                SHX8_3 = 0
                SHX9_3 = false
                SHX10_3 = false
                SHX11_3 = false
                SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
                SHX0_3 = RemoveAnimDict
                SHX1_3 = "missminuteman_1ig_2"
                SHX0_3(SHX1_3)
              end
              SHX0_2(SHX1_2)
            end
          end
        end
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_174:: outside nested blocks until all 'goto SHX_LABEL_174' can see it
  ::SHX_LABEL_174::
  SHX0_2 = IsControlJustReleased
  SHX1_2 = 1
  SHX2_2 = 323
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if not SHX0_2 then
    SHX0_2 = IsControlJustReleased
    SHX1_2 = 1
    SHX2_2 = 27
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if not SHX0_2 then
      goto SHX_LABEL_256
    end
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isSurrendering
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = SHX3_1
    if SHX0_2 then
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.isInComa
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.isHandcuffed
        SHX0_2 = SHX0_2()
        if not SHX0_2 then
          SHX0_2 = tCMG
          SHX0_2 = SHX0_2.canAnim
          SHX0_2 = SHX0_2()
          if not SHX0_2 then
            SHX1_2 = SHX3_1
            if SHX1_2 then
              SHX1_2 = IsEntityPlayingAnim
              SHX2_2 = PlayerPedId
              SHX2_2 = SHX2_2()
              SHX3_2 = "missminuteman_1ig_2"
              SHX4_2 = "handsup_enter"
              SHX5_2 = 3
              SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
              if SHX1_2 then
                SHX0_2 = true
              end
            end
          end
          if SHX0_2 then
            SHX1_2 = false
            SHX3_1 = SHX1_2
            SHX1_2 = CreateThread
            function SHX2_2()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_3, SHX1_3, SHX2_3, SHX3_3
              SHX0_3 = false
              SHX1_3 = CreateThread
              function SHX2_3()
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX0_4, SHX1_4
                SHX0_4 = Wait
                SHX1_4 = 1000
                SHX0_4(SHX1_4)
                SHX0_4 = true
                SHX0_3 = SHX0_4
              end
              SHX1_3(SHX2_3)
              while not SHX0_3 do
                SHX1_3 = DisablePlayerFiring
                SHX2_3 = PlayerId
                SHX2_3 = SHX2_3()
                SHX3_3 = true
                SHX1_3(SHX2_3, SHX3_3)
                SHX1_3 = Wait
                SHX2_3 = 0
                SHX1_3(SHX2_3)
              end
            end
            SHX1_2(SHX2_2)
            SHX1_2 = DisableControlAction
            SHX2_2 = 0
            SHX3_2 = 21
            SHX4_2 = true
            SHX1_2(SHX2_2, SHX3_2, SHX4_2)
            SHX1_2 = DisableControlAction
            SHX2_2 = 0
            SHX3_2 = 137
            SHX4_2 = true
            SHX1_2(SHX2_2, SHX3_2, SHX4_2)
            SHX1_2 = PlayerPedId
            SHX1_2 = SHX1_2()
            SHX2_2 = SHX14_1
            SHX3_2 = SHX1_2
            SHX2_2 = SHX2_2(SHX3_2)
            if SHX2_2 then
              SHX2_2 = StopAnimTask
              SHX3_2 = SHX1_2
              SHX4_2 = "missminuteman_1ig_2"
              SHX5_2 = "handsup_enter"
              SHX6_2 = 1.0
              SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
            else
              SHX2_2 = ClearPedTasks
              SHX3_2 = SHX1_2
              SHX2_2(SHX3_2)
            end
          end
        end
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_256:: outside nested blocks until all 'goto SHX_LABEL_256' can see it
  ::SHX_LABEL_256::
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isStaffedOnClient
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = TriggerEvent
      SHX1_2 = "259d5b120c"
      SHX0_2(SHX1_2)
    else
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.isInComa
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = SHX2_1
        if SHX0_2 then
          SHX0_2 = PlayerPedId
          SHX0_2 = SHX0_2()
          SHX1_2 = CMG
          SHX1_2 = SHX1_2.getTunableValue
          SHX2_2 = "ragdoll_knockout"
          SHX1_2 = SHX1_2(SHX2_2)
          if SHX1_2 then
            SHX1_2 = SetPedToRagdoll
            SHX2_2 = SHX0_2
            SHX3_2 = -1
            SHX4_2 = -1
            SHX5_2 = 0
            SHX6_2 = false
            SHX7_2 = true
            SHX8_2 = false
            SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
          else
            SHX1_2 = IsEntityPlayingAnim
            SHX2_2 = SHX0_2
            SHX3_2 = SHX2_1
            SHX3_2 = SHX3_2[1]
            SHX4_2 = SHX2_1
            SHX4_2 = SHX4_2[2]
            SHX5_2 = 3
            SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
            if not SHX1_2 then
              SHX1_2 = CMG
              SHX1_2 = SHX1_2.loadAnimDict
              SHX2_2 = SHX2_1
              SHX2_2 = SHX2_2[1]
              SHX1_2(SHX2_2)
              SHX1_2 = GetEntityCoords
              SHX2_2 = SHX0_2
              SHX3_2 = true
              SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
              SHX2_2 = SetEntityCollision
              SHX3_2 = SHX0_2
              SHX4_2 = false
              SHX5_2 = false
              SHX2_2(SHX3_2, SHX4_2, SHX5_2)
              SHX2_2 = FreezeEntityPosition
              SHX3_2 = SHX0_2
              SHX4_2 = true
              SHX2_2(SHX3_2, SHX4_2)
              SHX2_2 = GetGroundZFor_3dCoord
              SHX3_2 = SHX1_2.x
              SHX4_2 = SHX1_2.y
              SHX5_2 = SHX1_2.z
              SHX6_2 = 0
              SHX7_2 = false
              SHX2_2, SHX3_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
              if SHX2_2 then
                SHX4_2 = vector3
                SHX5_2 = SHX1_2.x
                SHX6_2 = SHX1_2.y
                SHX7_2 = SHX3_2 + 0.3
                SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
                SHX1_2 = SHX4_2
              end
              SHX4_2 = TaskPlayAnimAdvanced
              SHX5_2 = SHX0_2
              SHX6_2 = SHX2_1
              SHX6_2 = SHX6_2[1]
              SHX7_2 = SHX2_1
              SHX7_2 = SHX7_2[2]
              SHX8_2 = SHX1_2.x
              SHX9_2 = SHX1_2.y
              SHX10_2 = SHX1_2.z
              SHX11_2 = 0.0
              SHX12_2 = 0.0
              SHX13_2 = 0.0
              SHX14_2 = 3.0
              SHX15_2 = 1.0
              SHX16_2 = -1
              SHX17_2 = 1
              SHX18_2 = 0.0
              SHX19_2 = 0
              SHX20_2 = 0
              SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
              SHX4_2 = RemoveAnimDict
              SHX5_2 = SHX2_1
              SHX5_2 = SHX5_2[1]
              SHX4_2(SHX5_2)
            end
          end
        end
      end
    end
  end
end
SHX16_1 = CMG
SHX16_1 = SHX16_1.createThreadOnTick
SHX17_1 = SHX15_1
SHX18_1 = "Police Drag"
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RMenu
SHX16_1 = SHX16_1.Add
SHX17_1 = "policehandbook"
SHX18_1 = "main"
SHX19_1 = RageUI
SHX19_1 = SHX19_1.CreateMenu
SHX20_1 = "Police Handbook"
SHX21_1 = "~b~Officer Handbook"
SHX22_1 = CMG
SHX22_1 = SHX22_1.getRageUIMenuWidth
SHX22_1 = SHX22_1()
SHX23_1 = CMG
SHX23_1 = SHX23_1.getRageUIMenuHeight
SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1 = SHX23_1()
SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1)
SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1)
SHX16_1 = RageUI
SHX16_1 = SHX16_1.CreateWhile
SHX17_1 = 1.0
SHX18_1 = RMenu
SHX19_1 = SHX18_1
SHX18_1 = SHX18_1.Get
SHX20_1 = "policehandbook"
SHX21_1 = "main"
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = nil
function SHX20_1()
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
  SHX3_2 = "policehandbook"
  SHX4_2 = "main"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Arrest"
    SHX2_3 = nil
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = TriggerEvent
        SHX4_4 = "371eab1d3a"
        SHX5_4 = {}
        SHX5_4.text = "The time now is ___. <br/>You are currently under arrest on suspision of ___. <br/>You do not have to say anything. But, it may harm your defence if you do not mention when questioned something which you later rely on in court. <br/>Anything you do say may be given in evidence. <br/>Do you understand?. <br/>The necessities for your arrest are to ___."
        SHX5_4.height = "auto"
        SHX5_4.width = "auto"
        SHX5_4.colour = "#FFF"
        SHX5_4.background = "#3287cd"
        SHX5_4.pos = "bottom-right"
        SHX5_4.icon = "success"
        SHX6_4 = 100000
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Search - GOWISELY"
    SHX2_3 = nil
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = TriggerEvent
        SHX4_4 = "371eab1d3a"
        SHX5_4 = {}
        SHX5_4.text = "Before you stop and search someone you must remember GO-WISELY. <br/>You do not have to use this after arrest. <br/>Grounds: for the search. <br/>Object: of the search. <br/>Warrant card: If not in uniform. <br/>Identity: I am PC ___. <br/>Station: attached to ___ Police Station. <br/>Entitlement: Entitled to a copy of this search up to ___ months. <br/>Legal power: Searching under s1 PACE (1984) / s23 MODA (1971). <br/>You: You are currently detained for the purpose of a search."
        SHX5_4.height = "auto"
        SHX5_4.width = "auto"
        SHX5_4.colour = "#FFF"
        SHX5_4.background = "#3287cd"
        SHX5_4.pos = "bottom-right"
        SHX5_4.icon = "success"
        SHX6_4 = 100000
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "PACE - Key Legislation"
    SHX2_3 = nil
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = TriggerEvent
        SHX4_4 = "371eab1d3a"
        SHX5_4 = {}
        SHX5_4.text = "Police and Criminal Evidence Act 1984  - PACE.<br/> Section 1 - Stop and search (Stolen property, prohibited articles, weapons, articles used to commit an offence.<br/>Section 17 - Entry for the purpose of life and arrest<br/> Section 18 - Entry to search after an arrest <br/>Section 19 - Power of seizure<br/> Section 24 - Power of arrest <br/> Section 32 - Search after an arrest"
        SHX5_4.height = "auto"
        SHX5_4.width = "auto"
        SHX5_4.colour = "#FFF"
        SHX5_4.background = "#3287cd"
        SHX5_4.pos = "bottom-right"
        SHX5_4.icon = "success"
        SHX6_4 = 100000
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Identify Codes"
    SHX2_3 = nil
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = TriggerEvent
        SHX4_4 = "371eab1d3a"
        SHX5_4 = {}
        SHX5_4.text = "IC1:~s~ White - North European. <br/>IC2: White - South European. <br/>IC3: Black. <br/>IC4: Asian. <br/>IC5: Chinese, Japanese or other South East Asian. <br/>IC6: Arabic or North African. <br/>IC9: Unknown"
        SHX5_4.height = "auto"
        SHX5_4.width = "auto"
        SHX5_4.colour = "#FFF"
        SHX5_4.background = "#3287cd"
        SHX5_4.pos = "bottom-right"
        SHX5_4.icon = "success"
        SHX6_4 = 100000
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Traffic Offence Report"
    SHX2_3 = nil
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = TriggerEvent
        SHX4_4 = "371eab1d3a"
        SHX5_4 = {}
        SHX5_4.text = "I am reporting you for consideration of the question of prosecuting you for the offence(s) of ___. <br/><br/>You do not have to say anything but it may harm your defence if you do not mention NOW something which you may later rely on in court. Anything you do say may be given in evidence. <br/><br/>You are not under arrest - you are entitled to legal advice and you are not obliged to remain with me."
        SHX5_4.height = "auto"
        SHX5_4.width = "auto"
        SHX5_4.colour = "#FFF"
        SHX5_4.background = "#3287cd"
        SHX5_4.pos = "bottom-right"
        SHX5_4.icon = "success"
        SHX6_4 = 100000
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Initial Phase Pursuit"
    SHX2_3 = nil
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = TriggerEvent
        SHX4_4 = "371eab1d3a"
        SHX5_4 = {}
        SHX5_4.text = "VEHICLE DESCRIPTION: MAKE/MODEL/VRM. <br/>LOCATION & DIRECTION: ___. <br/>SPEED: ___. <br/>VEHICLE DENSITY: LOW/MED/HIGH. <br/>PEDESTRIAN DENSITY: LOW/MED/HIGH. <br/>ROAD CONDITIONS: WET/DRY/DIRT. <br/>WEATHER: CLEAR/LIGHT/DARK. <br/>VISIBILITY: CLEAR/MED/LOW. <br/>DRIVER CLASSIFICATION: IPP/ADV/TPAC. <br/>POLICE VEHICLE: MARKED/UNMARKED"
        SHX5_4.height = "auto"
        SHX5_4.width = "auto"
        SHX5_4.colour = "#FFF"
        SHX5_4.background = "#3287cd"
        SHX5_4.pos = "bottom-right"
        SHX5_4.icon = "success"
        SHX6_4 = 100000
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Warning Markers"
    SHX2_3 = nil
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = TriggerEvent
        SHX4_4 = "371eab1d3a"
        SHX5_4 = {}
        SHX5_4.text = "FI: FIREARMS. <br/>WE: WEAPONS. <br/>XP: EXPLOSIVES. <br/>VI: VIOLENT. <br/>CO: CONTAGIOUS. <br/>ES: ESCAPER. <br/>AG: ALLEGES. <br/>AT: AILMENT. <br/>SU: SUICIDAL. <br/>MH: MENTAL HEALTH. <br/>DR: DRUGS. <br/>IM: MALE IMPERSONATOR. <br/>IF: FEMALE IMPERSONATOR"
        SHX5_4.height = "auto"
        SHX5_4.width = "auto"
        SHX5_4.colour = "#FFF"
        SHX5_4.background = "#3287cd"
        SHX5_4.pos = "bottom-right"
        SHX5_4.icon = "success"
        SHX6_4 = 100000
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "s136 - Mental Healt Act"
    SHX2_3 = nil
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = TriggerEvent
        SHX4_4 = "371eab1d3a"
        SHX5_4 = {}
        SHX5_4.text = "A constable may take a person to (or keep at) a place of a safety. <br/>This can be done without a warrant if: The individual appears to have a mental disorder, and they are in any place other than a house, flat or room where a person is living, or garden or garage that only one household has access to, and they are in need of immediate care or control. <br/><br/>A registered medical practitioner/healthcare professional must be consulted if practicable to do so."
        SHX5_4.height = "auto"
        SHX5_4.width = "auto"
        SHX5_4.colour = "#FFF"
        SHX5_4.background = "#3287cd"
        SHX5_4.pos = "bottom-right"
        SHX5_4.icon = "success"
        SHX6_4 = 100000
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Arrest Necessities"
    SHX2_3 = nil
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = TriggerEvent
        SHX4_4 = "371eab1d3a"
        SHX5_4 = {}
        SHX5_4.text = "You require at least two of the following necessities to arrest a suspect: <br/><br/>Investigation: conduct a prompt and effective. <br/>Disappearance: prevent the prosecution being hindered. <br/>Child or Vulnerable person: to protect a. <br/>Obstruction: of the highway unlawfully (preventing). <br/>Physical Injury: prevent to themselves or other person. <br/>Public Decency: prevent an offence being committed against. <br/>Loss or Damage: prevent to property. <br/>Address: enable to be ascertained (not readily available). <br/>Name: enable to be ascertained (not readily available)."
        SHX5_4.height = "auto"
        SHX5_4.width = "auto"
        SHX5_4.colour = "#FFF"
        SHX5_4.background = "#3287cd"
        SHX5_4.pos = "bottom-right"
        SHX5_4.icon = "success"
        SHX6_4 = 100000
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
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
SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1)
SHX16_1 = TriggerEvent
SHX17_1 = "chat:addSuggestion"
SHX18_1 = "/handbook"
SHX19_1 = "Toggle the Police Handbook"
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "1e098f4492"
function SHX18_1()
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
  SHX3_2 = "policehandbook"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "playBreathalyserSound"
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.SetTimeout
  SHX2_2 = 10000
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getPlayerCoords
    SHX0_3 = SHX0_3()
    SHX1_3 = SHX0_2
    SHX1_3 = SHX0_3 - SHX1_3
    SHX1_3 = #SHX1_3
    if SHX1_3 <= 15 then
      SHX2_3 = SendNUIMessage
      SHX3_3 = {}
      SHX3_3.transactionType = "breathalyser"
      SHX2_3(SHX3_3)
    end
  end
  SHX1_2(SHX2_2, SHX3_2)
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = TriggerEvent
SHX17_1 = "chat:addSuggestion"
SHX18_1 = "/breathalyse"
SHX19_1 = "Breathalyse the nearest person"
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "a9f0d96ed7"
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX2_2 = SHX1_2
  SHX3_2 = RequestAnimDict
  SHX4_2 = "weapons@first_person@aim_rng@generic@projectile@shared@core"
  SHX3_2(SHX4_2)
  while true do
    SHX3_2 = HasAnimDictLoaded
    SHX4_2 = "weapons@first_person@aim_rng@generic@projectile@shared@core"
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = TaskPlayAnim
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2 = SHX4_2()
  SHX5_2 = "weapons@first_person@aim_rng@generic@projectile@shared@core"
  SHX6_2 = "idlerng_med"
  SHX7_2 = 1.0
  SHX8_2 = -1
  SHX9_2 = 10000
  SHX10_2 = 50
  SHX11_2 = 0
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX3_2 = RemoveAnimDict
  SHX4_2 = "weapons@first_person@aim_rng@generic@projectile@shared@core"
  SHX3_2(SHX4_2)
  SHX3_2 = RageUI
  SHX3_2 = SHX3_2.Text
  SHX4_2 = {}
  SHX5_2 = "~w~You are now ~b~breathalysing ~b~"
  SHX6_2 = SHX2_2
  SHX7_2 = "~w~, please wait for the results."
  SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2
  SHX4_2.message = SHX5_2
  SHX3_2(SHX4_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.SetTimeout
  SHX4_2 = 10000
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = SHX0_2
    if SHX0_3 < 36 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Text
      SHX1_3 = {}
      SHX2_3 = "~w~The suspect has provided a legal breathalyser sample of ~b~"
      SHX3_3 = SHX0_2
      SHX4_3 = " ~w~\194\181g/100ml."
      SHX2_3 = SHX2_3 .. SHX3_3 .. SHX4_3
      SHX1_3.message = SHX2_3
      SHX0_3(SHX1_3)
    else
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Text
      SHX1_3 = {}
      SHX2_3 = "~w~The suspect has provided an illegal breathalyser sample of ~b~"
      SHX3_3 = SHX0_2
      SHX4_3 = " ~w~\194\181g/100ml."
      SHX2_3 = SHX2_3 .. SHX3_3 .. SHX4_3
      SHX1_3.message = SHX2_3
      SHX0_3(SHX1_3)
    end
  end
  SHX3_2(SHX4_2, SHX5_2)
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "a1907f9798"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Text
  SHX1_2 = {}
  SHX1_2.message = "~w~You are currently being ~b~breathalysed ~w~by a police officer."
  SHX0_2(SHX1_2)
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "13984c04c7"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = IsPedInAnyVehicle
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if not SHX1_2 then
    SHX1_2 = GetEntityCoords
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = GetActivePlayers
    SHX2_2 = SHX2_2()
    SHX3_2 = pairs
    SHX4_2 = SHX2_2
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = GetPlayerPed
      SHX10_2 = SHX8_2
      SHX9_2 = SHX9_2(SHX10_2)
      if SHX9_2 ~= SHX0_2 then
        SHX9_2 = GetEntityCoords
        SHX10_2 = GetPlayerPed
        SHX11_2 = SHX8_2
        SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX10_2(SHX11_2)
        SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        SHX10_2 = SHX1_2 - SHX9_2
        SHX10_2 = #SHX10_2
        if SHX10_2 < 3.0 then
          SHX11_2 = GetPlayerServerId
          SHX12_2 = SHX8_2
          SHX11_2 = SHX11_2(SHX12_2)
          SHX12_2 = TriggerServerEvent
          SHX13_2 = "191ff5f709"
          SHX14_2 = SHX11_2
          SHX12_2(SHX13_2, SHX14_2)
          break
        end
      end
    end
  end
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = TriggerEvent
SHX17_1 = "chat:addSuggestion"
SHX18_1 = "/wc"
SHX19_1 = "Flash your police warrant card."
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = TriggerEvent
SHX17_1 = "chat:addSuggestion"
SHX18_1 = "/wca"
SHX19_1 = "Flash your police warrant card."
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "2fa574f29e"
function SHX18_1()
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
  SHX3_2 = "warrant_card_object"
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
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = vector3
SHX17_1 = 463.30804443359
SHX18_1 = -1007.4953613281
SHX19_1 = 35.930892944336
SHX16_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX17_1 = {}
SHX18_1 = "Commander"
SHX19_1 = "Dep. Asst. Commissioner"
SHX20_1 = "Assistant Commissioner"
SHX21_1 = "Deputy Commissioner"
SHX22_1 = "Commissioner"
SHX23_1 = "ctcommand"
SHX17_1[1] = SHX18_1
SHX17_1[2] = SHX19_1
SHX17_1[3] = SHX20_1
SHX17_1[4] = SHX21_1
SHX17_1[5] = SHX22_1
SHX17_1[6] = SHX23_1
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = 1
  SHX1_2 = SHX17_1
  SHX1_2 = #SHX1_2
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.hasClientGroup
    SHX5_2 = SHX17_1
    SHX5_2 = SHX5_2[SHX3_2]
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      SHX4_2 = true
      return SHX4_2
    end
  end
  SHX0_2 = false
  return SHX0_2
end
SHX19_1 = RMenu
SHX19_1 = SHX19_1.Add
SHX20_1 = "goldcommandwarrants"
SHX21_1 = "main"
SHX22_1 = RageUI
SHX22_1 = SHX22_1.CreateMenu
SHX23_1 = ""
SHX24_1 = "Gold Command: Warrants"
SHX25_1 = CMG
SHX25_1 = SHX25_1.getRageUIMenuWidth
SHX25_1 = SHX25_1()
SHX26_1 = CMG
SHX26_1 = SHX26_1.getRageUIMenuHeight
SHX26_1 = SHX26_1()
SHX27_1 = "cmg_jobselectorui"
SHX28_1 = "metpd"
SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1 = SHX22_1(SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1)
SHX19_1(SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1)
SHX19_1 = RageUI
SHX19_1 = SHX19_1.CreateWhile
SHX20_1 = 1.0
SHX21_1 = RMenu
SHX22_1 = SHX21_1
SHX21_1 = SHX21_1.Get
SHX23_1 = "goldcommandwarrants"
SHX24_1 = "main"
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX22_1 = nil
function SHX23_1()
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
  SHX3_2 = "goldcommandwarrants"
  SHX4_2 = "main"
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
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Take UK GOV Warrant"
    SHX2_3 = "House raid warrant (one per use)."
    SHX3_3 = {}
    SHX3_3.RightLabel = "\226\134\146"
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "864baba06d"
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX19_1(SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX19_1 = TriggerEvent
SHX20_1 = "chat:addSuggestion"
SHX21_1 = "/warrants"
SHX22_1 = "Open Gold Command warrant menu (on duty)."
SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX19_1 = RegisterCommand
SHX20_1 = "warrants"
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX18_1
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.notify
    SHX1_2 = "~r~You are not authorised to use this."
    SHX0_2(SHX1_2)
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "police.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.notify
    SHX1_2 = "~r~You must be on duty."
    SHX0_2(SHX1_2)
    return
  end
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "goldcommandwarrants"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX22_1 = false
SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX19_1 = false
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  function SHX0_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = drawNativeNotification
    SHX1_3 = "Press ~INPUT_PICKUP~ for Gold Command warrants"
    SHX0_3(SHX1_3)
  end
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Visible
    SHX1_3 = RMenu
    SHX2_3 = SHX1_3
    SHX1_3 = SHX1_3.Get
    SHX3_3 = "goldcommandwarrants"
    SHX4_3 = "main"
    SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    SHX2_3 = false
    SHX0_3(SHX1_3, SHX2_3)
  end
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = IsControlJustPressed
    SHX1_3 = 1
    SHX2_3 = 51
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
    if SHX0_3 then
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.hasClientPermission
      SHX1_3 = "police.onduty.permission"
      SHX0_3 = SHX0_3(SHX1_3)
      if not SHX0_3 then
        SHX0_3 = tCMG
        SHX0_3 = SHX0_3.notify
        SHX1_3 = "~r~You must be on duty."
        SHX0_3(SHX1_3)
        return
      end
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Visible
      SHX1_3 = RMenu
      SHX2_3 = SHX1_3
      SHX1_3 = SHX1_3.Get
      SHX3_3 = "goldcommandwarrants"
      SHX4_3 = "main"
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX2_3 = true
      SHX0_3(SHX1_3, SHX2_3)
    end
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.createArea
  SHX4_2 = "goldcommand_warrant_pickup"
  SHX5_2 = SHX16_1
  SHX6_2 = 1.5
  SHX7_2 = 6
  SHX8_2 = SHX0_2
  SHX9_2 = SHX1_2
  SHX10_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.setNamedMarker
  SHX4_2 = "goldcommand_warrant_pickup"
  SHX5_2 = SHX16_1.x
  SHX6_2 = SHX16_1.y
  SHX7_2 = SHX16_1.z
  SHX7_2 = SHX7_2 - 0.98
  SHX8_2 = 1.0001
  SHX9_2 = 1.0001
  SHX10_2 = 0.5001
  SHX11_2 = 215
  SHX12_2 = 190
  SHX13_2 = 120
  SHX14_2 = 200
  SHX15_2 = 20.0
  SHX16_2 = 27
  SHX17_2 = true
  SHX18_2 = false
  SHX19_2 = false
  SHX20_2 = nil
  SHX21_2 = nil
  SHX22_2 = 0.0
  SHX23_2 = 0.0
  SHX24_2 = 0.0
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
end
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.removeArea
  SHX1_2 = "goldcommand_warrant_pickup"
  SHX0_2(SHX1_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.removeNamedMarker
  SHX1_2 = "goldcommand_warrant_pickup"
  SHX0_2(SHX1_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "goldcommandwarrants"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX18_1
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = SHX19_1
    if not SHX0_2 then
      SHX0_2 = SHX20_1
      SHX0_2()
      SHX0_2 = true
      SHX19_1 = SHX0_2
    end
  else
    SHX0_2 = SHX19_1
    if SHX0_2 then
      SHX0_2 = SHX21_1
      SHX0_2()
      SHX0_2 = false
      SHX19_1 = SHX0_2
    end
  end
end
SHX23_1 = RMenu
SHX23_1 = SHX23_1.Add
SHX24_1 = "vehicleExtraMenu"
SHX25_1 = "main"
SHX26_1 = RageUI
SHX26_1 = SHX26_1.CreateMenu
SHX27_1 = "Vehicle Extra Menu"
SHX28_1 = "~b~Development"
SHX29_1 = CMG
SHX29_1 = SHX29_1.getRageUIMenuWidth
SHX29_1 = SHX29_1()
SHX30_1 = CMG
SHX30_1 = SHX30_1.getRageUIMenuHeight
SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1 = SHX30_1()
SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1)
SHX23_1(SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1)
SHX23_1 = RegisterCommand
SHX24_1 = "extras"
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientUserId
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isDeveloper
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = RageUI
      SHX1_2 = SHX1_2.Visible
      SHX2_2 = RMenu
      SHX3_2 = SHX2_2
      SHX2_2 = SHX2_2.Get
      SHX4_2 = "vehicleExtraMenu"
      SHX5_2 = "main"
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX3_2 = true
      SHX1_2(SHX2_2, SHX3_2)
    end
  end
end
SHX26_1 = false
SHX23_1(SHX24_1, SHX25_1, SHX26_1)
SHX23_1 = RageUI
SHX23_1 = SHX23_1.CreateWhile
SHX24_1 = 1.0
SHX25_1 = RMenu
SHX26_1 = SHX25_1
SHX25_1 = SHX25_1.Get
SHX27_1 = "vehicleExtraMenu"
SHX28_1 = "main"
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
  SHX3_2 = "vehicleExtraMenu"
  SHX4_2 = "main"
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
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getPlayerVehicle
    SHX0_3 = SHX0_3()
    if 0 ~= SHX0_3 then
      SHX1_3 = RMenu
      SHX2_3 = SHX1_3
      SHX1_3 = SHX1_3.Get
      SHX3_3 = "vehicleExtraMenu"
      SHX4_3 = "main"
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX2_3 = SHX1_3
      SHX1_3 = SHX1_3.SetSubtitle
      SHX3_3 = "Vehicle Model: "
      SHX4_3 = GetDisplayNameFromVehicleModel
      SHX5_3 = GetEntityModel
      SHX6_3 = SHX0_3
      SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX5_3(SHX6_3)
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      SHX3_3 = SHX3_3 .. SHX4_3
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = 1
      SHX2_3 = 12
      SHX3_3 = 1
      for SHX4_3 = SHX1_3, SHX2_3, SHX3_3 do
        SHX5_3 = DoesExtraExist
        SHX6_3 = SHX0_3
        SHX7_3 = SHX4_3
        SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
        if SHX5_3 then
          SHX5_3 = IsVehicleExtraTurnedOn
          SHX6_3 = SHX0_3
          SHX7_3 = SHX4_3
          SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
          if SHX5_3 then
            SHX5_3 = RageUI
            SHX5_3 = SHX5_3.Button
            SHX6_3 = "Disable Extra "
            SHX7_3 = SHX4_3
            SHX6_3 = SHX6_3 .. SHX7_3
            SHX7_3 = nil
            SHX8_3 = true
            function SHX9_3(SHX0_4, SHX1_4, SHX2_4)
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX3_4, SHX4_4, SHX5_4, SHX6_4
              if SHX2_4 then
                SHX3_4 = SetVehicleExtra
                SHX4_4 = SHX0_3
                SHX5_4 = SHX4_3
                SHX6_4 = true
                SHX3_4(SHX4_4, SHX5_4, SHX6_4)
              end
            end
            SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3)
          else
            SHX5_3 = RageUI
            SHX5_3 = SHX5_3.Button
            SHX6_3 = "Enable Extra "
            SHX7_3 = SHX4_3
            SHX6_3 = SHX6_3 .. SHX7_3
            SHX7_3 = nil
            SHX8_3 = true
            function SHX9_3(SHX0_4, SHX1_4, SHX2_4)
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX3_4, SHX4_4, SHX5_4, SHX6_4
              if SHX2_4 then
                SHX3_4 = SetVehicleExtra
                SHX4_4 = SHX0_3
                SHX5_4 = SHX4_3
                SHX6_4 = false
                SHX3_4(SHX4_4, SHX5_4, SHX6_4)
              end
            end
            SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3)
          end
        end
      end
    end
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
SHX23_1 = RMenu
SHX23_1 = SHX23_1.Add
SHX24_1 = "incidentsupportunit"
SHX25_1 = "main"
SHX26_1 = RageUI
SHX26_1 = SHX26_1.CreateMenu
SHX27_1 = "Incident Support Unit"
SHX28_1 = "~b~Control Panel"
SHX29_1 = CMG
SHX29_1 = SHX29_1.getRageUIMenuWidth
SHX29_1 = SHX29_1()
SHX30_1 = CMG
SHX30_1 = SHX30_1.getRageUIMenuHeight
SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1 = SHX30_1()
SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1)
SHX23_1(SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1)
SHX23_1 = {}
SHX23_1.active = false
SHX23_1.signUp = false
SHX23_1.flashing = false
SHX23_1.accidentSign = false
SHX23_1.aheadSign = false
SHX24_1 = RageUI
SHX24_1 = SHX24_1.CreateWhile
SHX25_1 = 1.0
SHX26_1 = RMenu
SHX27_1 = SHX26_1
SHX26_1 = SHX26_1.Get
SHX28_1 = "incidentsupportunit"
SHX29_1 = "main"
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1)
SHX27_1 = nil
function SHX28_1()
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
  SHX3_2 = "incidentsupportunit"
  SHX4_2 = "main"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getPlayerVehicle
    SHX0_3 = SHX0_3()
    SHX1_3 = GetEntityModel
    SHX2_3 = SHX0_3
    SHX1_3 = SHX1_3(SHX2_3)
    if 1462516421 == SHX1_3 then
      SHX23_1.active = true
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.Checkbox
      SHX2_3 = "Vehicle Sign Up"
      SHX3_3 = "Toggle the vehicle sign on/off"
      SHX4_3 = SHX23_1.signUp
      SHX5_3 = {}
      SHX6_3 = RageUI
      SHX6_3 = SHX6_3.CheckboxStyle
      SHX6_3 = SHX6_3.Car
      SHX5_3.Style = SHX6_3
      function SHX6_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX4_4, SHX5_4, SHX6_4, SHX7_4
        if SHX1_4 then
          SHX4_4 = SHX23_1.signUp
          if SHX4_4 then
            SHX4_4 = RageUI
            SHX4_4 = SHX4_4.Text
            SHX5_4 = {}
            SHX6_4 = string
            SHX6_4 = SHX6_4.format
            SHX7_4 = "~w~Sign is now ~g~~h~up"
            SHX6_4 = SHX6_4(SHX7_4)
            SHX5_4.message = SHX6_4
            SHX4_4(SHX5_4)
            SHX4_4 = SetVehicleExtra
            SHX5_4 = SHX0_3
            SHX6_4 = 12
            SHX7_4 = false
            SHX4_4(SHX5_4, SHX6_4, SHX7_4)
            SHX4_4 = SetVehicleExtra
            SHX5_4 = SHX0_3
            SHX6_4 = 11
            SHX7_4 = true
            SHX4_4(SHX5_4, SHX6_4, SHX7_4)
            SHX4_4 = SetVehicleExtra
            SHX5_4 = SHX0_3
            SHX6_4 = 5
            SHX7_4 = true
            SHX4_4(SHX5_4, SHX6_4, SHX7_4)
            SHX4_4 = SetVehicleExtra
            SHX5_4 = SHX0_3
            SHX6_4 = 6
            SHX7_4 = true
            SHX4_4(SHX5_4, SHX6_4, SHX7_4)
          else
            SHX4_4 = RageUI
            SHX4_4 = SHX4_4.Text
            SHX5_4 = {}
            SHX6_4 = string
            SHX6_4 = SHX6_4.format
            SHX7_4 = "~w~Sign is now ~g~~h~down"
            SHX6_4 = SHX6_4(SHX7_4)
            SHX5_4.message = SHX6_4
            SHX4_4(SHX5_4)
            SHX4_4 = SetVehicleExtra
            SHX5_4 = SHX0_3
            SHX6_4 = 12
            SHX7_4 = true
            SHX4_4(SHX5_4, SHX6_4, SHX7_4)
            SHX4_4 = SetVehicleExtra
            SHX5_4 = SHX0_3
            SHX6_4 = 5
            SHX7_4 = true
            SHX4_4(SHX5_4, SHX6_4, SHX7_4)
            SHX4_4 = SetVehicleExtra
            SHX5_4 = SHX0_3
            SHX6_4 = 6
            SHX7_4 = true
            SHX4_4(SHX5_4, SHX6_4, SHX7_4)
            SHX4_4 = SetVehicleExtra
            SHX5_4 = SHX0_3
            SHX6_4 = 11
            SHX7_4 = false
            SHX4_4(SHX5_4, SHX6_4, SHX7_4)
          end
        end
        SHX23_1.signUp = SHX3_4
      end
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      SHX1_3 = SHX23_1.signUp
      if SHX1_3 then
        SHX1_3 = RageUI
        SHX1_3 = SHX1_3.Checkbox
        SHX2_3 = "Accident Message"
        SHX3_3 = "Toggle the vehicle accident sign on/off"
        SHX4_3 = SHX23_1.accidentSign
        SHX5_3 = {}
        SHX6_3 = RageUI
        SHX6_3 = SHX6_3.CheckboxStyle
        SHX6_3 = SHX6_3.Car
        SHX5_3.Style = SHX6_3
        function SHX6_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX4_4, SHX5_4, SHX6_4, SHX7_4
          if SHX1_4 then
            SHX4_4 = SHX23_1.accidentSign
            if SHX4_4 then
              SHX4_4 = RageUI
              SHX4_4 = SHX4_4.Text
              SHX5_4 = {}
              SHX6_4 = string
              SHX6_4 = SHX6_4.format
              SHX7_4 = "~w~Accident Message is now ~g~~h~on"
              SHX6_4 = SHX6_4(SHX7_4)
              SHX5_4.message = SHX6_4
              SHX4_4(SHX5_4)
              SHX4_4 = SetVehicleExtra
              SHX5_4 = SHX0_3
              SHX6_4 = 6
              SHX7_4 = false
              SHX4_4(SHX5_4, SHX6_4, SHX7_4)
            else
              SHX4_4 = RageUI
              SHX4_4 = SHX4_4.Text
              SHX5_4 = {}
              SHX6_4 = string
              SHX6_4 = SHX6_4.format
              SHX7_4 = "~w~Accident Message now ~g~~h~off"
              SHX6_4 = SHX6_4(SHX7_4)
              SHX5_4.message = SHX6_4
              SHX4_4(SHX5_4)
              SHX4_4 = SetVehicleExtra
              SHX5_4 = SHX0_3
              SHX6_4 = 6
              SHX7_4 = true
              SHX4_4(SHX5_4, SHX6_4, SHX7_4)
              SHX23_1.flashing = false
            end
          end
          SHX23_1.accidentSign = SHX3_4
        end
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
        SHX1_3 = RageUI
        SHX1_3 = SHX1_3.Checkbox
        SHX2_3 = "Ahead Message"
        SHX3_3 = "Toggle the vehicle ahead sign on/off"
        SHX4_3 = SHX23_1.aheadSign
        SHX5_3 = {}
        SHX6_3 = RageUI
        SHX6_3 = SHX6_3.CheckboxStyle
        SHX6_3 = SHX6_3.Car
        SHX5_3.Style = SHX6_3
        function SHX6_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX4_4, SHX5_4, SHX6_4, SHX7_4
          if SHX1_4 then
            SHX4_4 = SHX23_1.aheadSign
            if SHX4_4 then
              SHX4_4 = RageUI
              SHX4_4 = SHX4_4.Text
              SHX5_4 = {}
              SHX6_4 = string
              SHX6_4 = SHX6_4.format
              SHX7_4 = "~w~Ahead Message is now ~g~~h~on"
              SHX6_4 = SHX6_4(SHX7_4)
              SHX5_4.message = SHX6_4
              SHX4_4(SHX5_4)
              SHX4_4 = SetVehicleExtra
              SHX5_4 = SHX0_3
              SHX6_4 = 5
              SHX7_4 = false
              SHX4_4(SHX5_4, SHX6_4, SHX7_4)
            else
              SHX4_4 = RageUI
              SHX4_4 = SHX4_4.Text
              SHX5_4 = {}
              SHX6_4 = string
              SHX6_4 = SHX6_4.format
              SHX7_4 = "~w~Ahead Message now ~g~~h~off"
              SHX6_4 = SHX6_4(SHX7_4)
              SHX5_4.message = SHX6_4
              SHX4_4(SHX5_4)
              SHX4_4 = SetVehicleExtra
              SHX5_4 = SHX0_3
              SHX6_4 = 5
              SHX7_4 = true
              SHX4_4(SHX5_4, SHX6_4, SHX7_4)
            end
          end
          SHX23_1.aheadSign = SHX3_4
        end
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
        SHX1_3 = RageUI
        SHX1_3 = SHX1_3.Checkbox
        SHX2_3 = "Matrix Flash"
        SHX3_3 = "Toggle the flashing of the matrix sign ahead sign on/off"
        SHX4_3 = SHX23_1.flashing
        SHX5_3 = {}
        SHX6_3 = RageUI
        SHX6_3 = SHX6_3.CheckboxStyle
        SHX6_3 = SHX6_3.Car
        SHX5_3.Style = SHX6_3
        function SHX6_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX4_4, SHX5_4, SHX6_4, SHX7_4
          if SHX1_4 then
            SHX4_4 = SHX23_1.flashing
            if SHX4_4 then
              SHX4_4 = RageUI
              SHX4_4 = SHX4_4.Text
              SHX5_4 = {}
              SHX6_4 = string
              SHX6_4 = SHX6_4.format
              SHX7_4 = "~w~Flashing is now ~g~~h~enabled"
              SHX6_4 = SHX6_4(SHX7_4)
              SHX5_4.message = SHX6_4
              SHX4_4(SHX5_4)
              SHX23_1.flashing = true
              SHX23_1.active = true
            else
              SHX4_4 = RageUI
              SHX4_4 = SHX4_4.Text
              SHX5_4 = {}
              SHX6_4 = string
              SHX6_4 = SHX6_4.format
              SHX7_4 = "~w~Flashing now ~g~~h~disabled"
              SHX6_4 = SHX6_4(SHX7_4)
              SHX5_4.message = SHX6_4
              SHX4_4(SHX5_4)
            end
          end
          SHX23_1.flashing = SHX3_4
        end
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      end
    end
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
SHX24_1(SHX25_1, SHX26_1, SHX27_1, SHX28_1)
SHX24_1 = RegisterCommand
SHX25_1 = "isu"
function SHX26_1()
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
  SHX3_2 = "incidentsupportunit"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX27_1 = false
SHX24_1(SHX25_1, SHX26_1, SHX27_1)
SHX24_1 = RegisterNetEvent
SHX25_1 = "a3b5d904fa"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.setCanAnim
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadAnimDict
  SHX1_2 = "custom@police"
  SHX0_2(SHX1_2)
  SHX0_2 = TaskPlayAnim
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = "custom@police"
  SHX3_2 = "police"
  SHX4_2 = 8.0
  SHX5_2 = 8.0
  SHX6_2 = -1
  SHX7_2 = 0
  SHX8_2 = 0.0
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX0_2 = RemoveAnimDict
  SHX1_2 = "custom@police"
  SHX0_2(SHX1_2)
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  while true do
    SHX1_2 = GetGameTimer
    SHX1_2 = SHX1_2()
    SHX1_2 = SHX1_2 - SHX0_2
    SHX2_2 = 10000
    if not (SHX1_2 < SHX2_2) then
      break
    end
    SHX1_2 = IsDisabledControlJustPressed
    SHX2_2 = 0
    SHX3_2 = 73
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = TriggerServerEvent
      SHX2_2 = "9593b2d7eb"
      SHX1_2(SHX2_2)
      return
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.setCanAnim
  SHX2_2 = true
  SHX1_2(SHX2_2)
end
SHX24_1(SHX25_1, SHX26_1)
SHX24_1 = false
SHX25_1 = RegisterNetEvent
SHX26_1 = "a31306b7df"
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX1_2 = GetPlayerFromServerId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -1 == SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerPed
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  SHX4_2 = true
  SHX24_1 = SHX4_2
  SHX4_2 = tCMG
  SHX4_2 = SHX4_2.setCanAnim
  SHX5_2 = false
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadAnimDict
  SHX5_2 = "custom@suspect"
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2 = SHX4_2()
  SHX5_2 = AttachEntityToEntity
  SHX6_2 = SHX4_2
  SHX7_2 = SHX2_2
  SHX8_2 = -1
  SHX9_2 = -0.05
  SHX10_2 = 0.5
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = 0.0
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = false
  SHX18_2 = false
  SHX19_2 = 2
  SHX20_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX5_2 = TaskPlayAnim
  SHX6_2 = SHX4_2
  SHX7_2 = "custom@suspect"
  SHX8_2 = "suspect"
  SHX9_2 = 8.0
  SHX10_2 = 8.0
  SHX11_2 = -1
  SHX12_2 = 2
  SHX13_2 = 0.0
  SHX14_2 = false
  SHX15_2 = false
  SHX16_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX5_2 = RemoveAnimDict
  SHX6_2 = "custom@suspect"
  SHX5_2(SHX6_2)
  SHX5_2 = GetGameTimer
  SHX5_2 = SHX5_2()
  while true do
    SHX6_2 = GetGameTimer
    SHX6_2 = SHX6_2()
    SHX6_2 = SHX6_2 - SHX5_2
    SHX7_2 = 10000
    if not (SHX6_2 < SHX7_2) then
      break
    end
    SHX6_2 = SHX24_1
    if not SHX6_2 then
      SHX6_2 = SetEntityCoordsNoOffset
      SHX7_2 = SHX4_2
      SHX8_2 = SHX3_2.x
      SHX9_2 = SHX3_2.y
      SHX10_2 = SHX3_2.z
      SHX11_2 = true
      SHX12_2 = false
      SHX13_2 = false
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      return
    end
    SHX6_2 = Citizen
    SHX6_2 = SHX6_2.Wait
    SHX7_2 = 0
    SHX6_2(SHX7_2)
  end
  SHX6_2 = SetEntityCoordsNoOffset
  SHX7_2 = SHX4_2
  SHX8_2 = SHX3_2.x
  SHX9_2 = SHX3_2.y
  SHX10_2 = SHX3_2.z
  SHX11_2 = true
  SHX12_2 = false
  SHX13_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX6_2 = false
  SHX24_1 = SHX6_2
  SHX6_2 = tCMG
  SHX6_2 = SHX6_2.setCanAnim
  SHX7_2 = true
  SHX6_2(SHX7_2)
  SHX6_2 = DetachEntity
  SHX7_2 = SHX4_2
  SHX8_2 = false
  SHX9_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = ClearPedTasks
  SHX7_2 = SHX4_2
  SHX6_2(SHX7_2)
end
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = RegisterNetEvent
SHX26_1 = "9593b2d7eb"
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = false
  SHX24_1 = SHX0_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.setCanAnim
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = DetachEntity
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = ClearPedTasks
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = ""
SHX26_1 = ""
SHX27_1 = false
SHX28_1 = ""
SHX29_1 = ""
SHX30_1 = false
SHX31_1 = RegisterNetEvent
SHX32_1 = "93866d3aa7"
function SHX33_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX25_1 = SHX1_2
  SHX26_1 = SHX0_2
  SHX2_2 = true
  SHX27_1 = SHX2_2
end
SHX31_1(SHX32_1, SHX33_1)
SHX31_1 = RegisterNetEvent
SHX32_1 = "7c137db0a7"
function SHX33_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX28_1 = SHX1_2
  SHX29_1 = SHX0_2
  SHX2_2 = true
  SHX30_1 = SHX2_2
end
SHX31_1(SHX32_1, SHX33_1)
SHX31_1 = CMG
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX26_1
  return SHX0_2
end
SHX31_1.getPoliceCallsign = SHX32_1
SHX31_1 = CMG
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX25_1
  return SHX0_2
end
SHX31_1.getPoliceRank = SHX32_1
SHX31_1 = CMG
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX27_1
  return SHX0_2
end
SHX31_1.hasPoliceCallsign = SHX32_1
SHX31_1 = CMG
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX29_1
  return SHX0_2
end
SHX31_1.getHmpCallsign = SHX32_1
SHX31_1 = CMG
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX28_1
  return SHX0_2
end
SHX31_1.getHmpRank = SHX32_1
SHX31_1 = CMG
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX30_1
  return SHX0_2
end
SHX31_1.hasHmpCallsign = SHX32_1
SHX31_1 = 0
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = IsPedShooting
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = GetSelectedPedWeapon
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = GetMaxAmmo
    SHX3_2 = SHX0_2
    SHX4_2 = SHX1_2
    SHX2_2, SHX3_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX4_2 = GetWeapontypeGroup
    SHX5_2 = SHX1_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX3_2 >= 1 and -728555052 ~= SHX4_2 and 1548507267 ~= SHX4_2 then
      SHX5_2 = GetGameTimer
      SHX5_2 = SHX5_2()
      SHX31_1 = SHX5_2
    end
  end
end
SHX33_1 = CMG
SHX33_1 = SHX33_1.createThreadOnTick
SHX34_1 = SHX32_1
SHX35_1 = "GSR Logging"
SHX33_1(SHX34_1, SHX35_1)
SHX33_1 = tCMG
function SHX34_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX31_1
  SHX0_2 = 0 ~= SHX0_2
  return SHX0_2
end
SHX33_1.hasRecentlyShotGun = SHX34_1
SHX33_1 = AddEventHandler
SHX34_1 = "CMG:onClientSpawn"
function SHX35_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = 0
  SHX31_1 = SHX0_2
  SHX0_2 = SHX22_1
  SHX0_2()
end
SHX33_1(SHX34_1, SHX35_1)
SHX33_1 = RMenu
SHX33_1 = SHX33_1.Add
SHX34_1 = "trainingWorlds"
SHX35_1 = "mainmenu"
SHX36_1 = RageUI
SHX36_1 = SHX36_1.CreateMenu
SHX37_1 = "Training Worlds"
SHX38_1 = "Main Menu"
SHX39_1 = CMG
SHX39_1 = SHX39_1.getRageUIMenuWidth
SHX39_1 = SHX39_1()
SHX40_1 = CMG
SHX40_1 = SHX40_1.getRageUIMenuHeight
SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1 = SHX40_1()
SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1 = SHX36_1(SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1)
SHX33_1(SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1)
SHX33_1 = {}
SHX34_1 = false
SHX35_1 = RegisterNetEvent
SHX36_1 = "2ea6f8c095"
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX34_1 = SHX0_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "trainingWorlds"
  SHX5_2 = "mainmenu"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
SHX35_1(SHX36_1, SHX37_1)
SHX35_1 = RageUI
SHX35_1 = SHX35_1.CreateWhile
SHX36_1 = 1.0
SHX37_1 = RMenu
SHX38_1 = SHX37_1
SHX37_1 = SHX37_1.Get
SHX39_1 = "trainingWorlds"
SHX40_1 = "mainmenu"
SHX37_1 = SHX37_1(SHX38_1, SHX39_1, SHX40_1)
SHX38_1 = nil
function SHX39_1()
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
  SHX3_2 = "trainingWorlds"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3
    SHX0_3 = false
    SHX1_3 = pairs
    SHX2_3 = SHX33_1
    SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
    for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
      SHX7_3 = string
      SHX7_3 = SHX7_3.format
      SHX8_3 = "Created by %s (%s) - Bucket %s"
      SHX9_3 = SHX6_3.ownerName
      SHX10_3 = SHX6_3.ownerUserId
      SHX11_3 = SHX6_3.bucket
      SHX7_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      SHX8_3 = SHX6_3.bucket
      SHX9_3 = CMG
      SHX9_3 = SHX9_3.getPlayerBucket
      SHX9_3 = SHX9_3()
      SHX8_3 = SHX8_3 == SHX9_3
      if SHX8_3 then
        SHX9_3 = {}
        SHX9_3.RightLabel = "(Joined)"
        if SHX9_3 then
          goto SHX_LABEL_30
        end
      end
      SHX9_3 = {}
      -- [FIX IF ERROR] Move ::SHX_LABEL_30:: outside nested blocks until all 'goto SHX_LABEL_30' can see it
      ::SHX_LABEL_30::
      SHX10_3 = RageUI
      SHX10_3 = SHX10_3.ButtonWithStyle
      SHX11_3 = SHX6_3.name
      SHX12_3 = SHX7_3
      SHX13_3 = SHX9_3
      SHX14_3 = true
      function SHX15_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX1_4 then
          SHX3_4 = SHX34_1
          if SHX3_4 then
            SHX3_4 = drawNativeNotification
            SHX4_4 = "Press ~INPUT_FRONTEND_DELETE~ to delete this world"
            SHX3_4(SHX4_4)
            SHX3_4 = IsControlJustPressed
            SHX4_4 = 0
            SHX5_4 = 214
            SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
            if SHX3_4 then
              SHX3_4 = TriggerServerEvent
              SHX4_4 = "4604d8f037"
              SHX5_4 = SHX5_3
              SHX3_4(SHX4_4, SHX5_4)
            end
          end
        end
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "aca49a8fe3"
          SHX5_4 = SHX5_3
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
      SHX10_3(SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
      if SHX8_3 then
        SHX0_3 = SHX8_3
      end
    end
    if SHX0_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.ButtonWithStyle
      SHX2_3 = "~r~Leave Training World"
      SHX3_3 = nil
      SHX4_3 = {}
      SHX5_3 = true
      function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "069d0e3824"
          SHX3_4(SHX4_4)
        end
      end
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    end
    SHX1_3 = SHX34_1
    if SHX1_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.ButtonWithStyle
      SHX2_3 = "~b~Create Training World"
      SHX3_3 = nil
      SHX4_3 = {}
      SHX5_3 = true
      function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "e8f086540e"
          SHX3_4(SHX4_4)
        end
      end
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    end
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
SHX35_1(SHX36_1, SHX37_1, SHX38_1, SHX39_1)
SHX35_1 = RegisterNetEvent
SHX36_1 = "d8e38d17a0"
function SHX37_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX33_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX35_1(SHX36_1, SHX37_1)
SHX35_1 = RegisterNetEvent
SHX36_1 = "059d49db3b"
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX33_1 = SHX0_2
end
SHX35_1(SHX36_1, SHX37_1)
SHX35_1 = RegisterNetEvent
SHX36_1 = "4604d8f037"
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX33_1
  SHX1_2[SHX0_2] = nil
end
SHX35_1(SHX36_1, SHX37_1)
SHX35_1 = RegisterNetEvent
SHX36_1 = "f2c7fa6207"
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = {}
  SHX33_1 = SHX0_2
  SHX0_2 = false
  SHX34_1 = SHX0_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "trainingWorlds"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
SHX35_1(SHX36_1, SHX37_1)
SHX35_1 = CMG
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = pairs
  SHX1_2 = SHX33_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.bucket
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.getPlayerBucket
    SHX7_2 = SHX7_2()
    if SHX6_2 == SHX7_2 then
      SHX6_2 = true
      return SHX6_2
    end
  end
  SHX0_2 = false
  return SHX0_2
end
SHX35_1.isInTrainingWorld = SHX36_1
SHX35_1 = false
SHX36_1 = 0
function SHX37_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX6_2 = SHX5_2 / 100
  SHX6_2 = SHX2_2 * SHX6_2
  SHX7_2 = SHX5_2 / 100
  SHX7_2 = SHX2_2 * SHX7_2
  SHX7_2 = SHX7_2 / 2
  SHX7_2 = SHX0_2 - SHX7_2
  SHX8_2 = SHX2_2 / 2
  SHX0_2 = SHX7_2 - SHX8_2
  SHX7_2 = DrawRect
  SHX8_2 = SHX0_2 + SHX6_2
  SHX9_2 = SHX1_2
  SHX10_2 = SHX6_2
  SHX11_2 = SHX3_2
  SHX12_2 = SHX4_2[1]
  SHX13_2 = SHX4_2[2]
  SHX14_2 = SHX4_2[3]
  SHX15_2 = SHX4_2[4]
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
end
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "police.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "prisonguard.onduty.permission"
    SHX0_2 = SHX0_2(SHX1_2)
  end
  if SHX0_2 then
    SHX1_2 = IsControlPressed
    SHX2_2 = 0
    SHX3_2 = 19
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = IsControlJustPressed
      SHX2_2 = 0
      SHX3_2 = 47
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      if SHX1_2 then
        SHX1_2 = SHX35_1
        if not SHX1_2 then
          SHX1_2 = tCMG
          SHX1_2 = SHX1_2.canAnim
          SHX1_2 = SHX1_2()
          if SHX1_2 then
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.getPlayerVehicle
            SHX1_2 = SHX1_2()
            if 0 == SHX1_2 then
              SHX1_2 = CMG
              SHX1_2 = SHX1_2.getClosestVehicleIncludingPed
              SHX2_2 = 3.5
              SHX3_2 = true
              SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2)
              if 0 ~= SHX1_2 and 0 ~= SHX2_2 then
                if -1 == SHX3_2 or 0 == SHX3_2 then
                  SHX5_2 = 1.5
                  if SHX4_2 < SHX5_2 then
                    SHX5_2 = NetworkGetPlayerIndexFromPed
                    SHX6_2 = SHX2_2
                    SHX5_2 = SHX5_2(SHX6_2)
                    if SHX5_2 >= 0 then
                      SHX6_2 = GetPlayerServerId
                      SHX7_2 = SHX5_2
                      SHX6_2 = SHX6_2(SHX7_2)
                      if SHX6_2 > 0 then
                        SHX7_2 = TriggerServerEvent
                        SHX8_2 = "e435663fa4"
                        SHX9_2 = SHX6_2
                        SHX7_2(SHX8_2, SHX9_2)
                      end
                    end
                  else
                    SHX5_2 = notify
                    SHX6_2 = "~r~Closest player is too far away."
                    SHX5_2(SHX6_2)
                  end
                else
                  SHX5_2 = notify
                  SHX6_2 = "~r~Closest player is not in the front seats."
                  SHX5_2(SHX6_2)
                end
              else
                SHX5_2 = notify
                SHX6_2 = "~r~No vehicle found with a player."
                SHX5_2(SHX6_2)
              end
            end
          end
        end
      end
    end
  end
  SHX1_2 = SHX36_1
  if 0 ~= SHX1_2 then
    SHX1_2 = SHX37_1
    SHX2_2 = 0.475
    SHX3_2 = 0.8
    SHX4_2 = 0.138
    SHX5_2 = 0.012750000000000001
    SHX6_2 = {}
    SHX7_2 = 255
    SHX8_2 = 47
    SHX9_2 = 27
    SHX10_2 = 255
    SHX6_2[1] = SHX7_2
    SHX6_2[2] = SHX8_2
    SHX6_2[3] = SHX9_2
    SHX6_2[4] = SHX10_2
    SHX7_2 = GetGameTimer
    SHX7_2 = SHX7_2()
    SHX8_2 = SHX36_1
    SHX7_2 = SHX7_2 - SHX8_2
    SHX7_2 = SHX7_2 / 1500
    SHX7_2 = SHX7_2 * 100
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  end
end
SHX39_1 = CMG
SHX39_1 = SHX39_1.createThreadOnTick
SHX40_1 = SHX38_1
SHX41_1 = "Pull Civ Out Vehicle"
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = RegisterNetEvent
SHX40_1 = "464de6911c"
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX36_1 = SHX0_2
end
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = RegisterNetEvent
SHX40_1 = "70fe1c273d"
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = 0
  SHX36_1 = SHX0_2
end
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = RegisterNetEvent
SHX40_1 = "d61cf70cd5"
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX36_1 = SHX0_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = ClearPedTasksImmediately
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 0
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadAnimDict
  SHX2_2 = "veh@break_in@0h@p_m_zero@"
  SHX1_2(SHX2_2)
  SHX1_2 = TaskPlayAnim
  SHX2_2 = SHX0_2
  SHX3_2 = "veh@break_in@0h@p_m_zero@"
  SHX4_2 = "std_force_entry_ds"
  SHX5_2 = 8.0
  SHX6_2 = -8.0
  SHX7_2 = -1
  SHX8_2 = 48
  SHX9_2 = 0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX1_2 = RemoveAnimDict
  SHX2_2 = "veh@break_in@0h@p_m_zero@"
  SHX1_2(SHX2_2)
end
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = RegisterNetEvent
SHX40_1 = "66ca0790fb"
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = StopAnimTask
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = "veh@break_in@0h@p_m_zero@"
  SHX3_2 = "std_force_entry_ds"
  SHX4_2 = 1.0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = 0
  SHX36_1 = SHX0_2
end
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = RegisterNetEvent
SHX40_1 = "02fd20c813"
function SHX41_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = GetPlayerFromServerId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -1 == SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerPed
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    return
  end
  SHX3_2 = GetVehiclePedIsUsing
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 == SHX3_2 then
    return
  end
  SHX4_2 = true
  SHX35_1 = SHX4_2
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = GetPedRelationshipGroupHash
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = GetPedRelationshipGroupHash
  SHX7_2 = SHX2_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = GetRelationshipBetweenGroups
  SHX8_2 = SHX5_2
  SHX9_2 = SHX6_2
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX8_2 = GetRelationshipBetweenGroups
  SHX9_2 = SHX6_2
  SHX10_2 = SHX5_2
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX9_2 = SetRelationshipBetweenGroups
  SHX10_2 = 5
  SHX11_2 = SHX5_2
  SHX12_2 = SHX6_2
  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = SetRelationshipBetweenGroups
  SHX10_2 = 5
  SHX11_2 = SHX6_2
  SHX12_2 = SHX5_2
  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = SetPedCanBeDraggedOut
  SHX10_2 = SHX2_2
  SHX11_2 = true
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = TaskEnterVehicle
  SHX10_2 = SHX4_2
  SHX11_2 = SHX3_2
  SHX12_2 = -1
  SHX13_2 = 0
  SHX14_2 = 1.0
  SHX15_2 = 524288
  SHX16_2 = 0
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX9_2 = GetGameTimer
  SHX9_2 = SHX9_2()
  while true do
    SHX10_2 = GetVehiclePedIsIn
    SHX11_2 = SHX2_2
    SHX12_2 = false
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
    if 0 == SHX10_2 then
      break
    end
    SHX10_2 = GetGameTimer
    SHX10_2 = SHX10_2()
    SHX10_2 = SHX10_2 - SHX9_2
    SHX11_2 = 2500
    if SHX10_2 > SHX11_2 then
      break
    end
    SHX10_2 = Citizen
    SHX10_2 = SHX10_2.Wait
    SHX11_2 = 0
    SHX10_2(SHX11_2)
  end
  SHX10_2 = SetPedCanBeDraggedOut
  SHX11_2 = SHX2_2
  SHX12_2 = false
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = SetRelationshipBetweenGroups
  SHX11_2 = SHX7_2
  SHX12_2 = SHX5_2
  SHX13_2 = SHX6_2
  SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX10_2 = SetRelationshipBetweenGroups
  SHX11_2 = SHX8_2
  SHX12_2 = SHX6_2
  SHX13_2 = SHX5_2
  SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX10_2 = false
  SHX35_1 = SHX10_2
end
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = RegisterNetEvent
SHX40_1 = "188c2532af"
function SHX41_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SetNewWaypoint
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.y
  SHX1_2(SHX2_2, SHX3_2)
end
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = false
SHX40_1 = RegisterNetEvent
SHX41_1 = "e0ea4a3f43"
function SHX42_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX0_2 = SHX39_1
  if SHX0_2 then
    SHX0_2 = false
    SHX39_1 = SHX0_2
    return
  end
  SHX0_2 = true
  SHX39_1 = SHX0_2
  SHX0_2 = "amb@world_human_paparazzi@male@base"
  SHX1_2 = "base"
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = 0
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.hasClientGroup
  SHX5_2 = "CID"
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.loadModel
    SHX5_2 = 680380202
    SHX4_2(SHX5_2)
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getPlayerCoords
    SHX4_2 = SHX4_2()
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.requestEntitySpawn
    SHX6_2 = "police_camera"
    SHX5_2(SHX6_2)
    SHX5_2 = CreateObject
    SHX6_2 = 680380202
    SHX7_2 = SHX4_2.x
    SHX8_2 = SHX4_2.y
    SHX9_2 = SHX4_2.z
    SHX10_2 = true
    SHX11_2 = false
    SHX12_2 = false
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX3_2 = SHX5_2
    SHX5_2 = AttachEntityToEntity
    SHX6_2 = SHX3_2
    SHX7_2 = SHX2_2
    SHX8_2 = GetPedBoneIndex
    SHX9_2 = SHX2_2
    SHX10_2 = 28422
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    SHX9_2 = 0.0
    SHX10_2 = 0.0
    SHX11_2 = 0.0
    SHX12_2 = 0.0
    SHX13_2 = 0.0
    SHX14_2 = 0.0
    SHX15_2 = true
    SHX16_2 = true
    SHX17_2 = false
    SHX18_2 = true
    SHX19_2 = 1
    SHX20_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    SHX5_2 = SetModelAsNoLongerNeeded
    SHX6_2 = 680380202
    SHX5_2(SHX6_2)
  end
  SHX4_2 = false
  SHX5_2 = 0
  SHX6_2 = false
  SHX7_2 = 0
  SHX8_2 = 0
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = SetCamViewModeForContext
    SHX1_3 = 0
    SHX2_3 = SHX5_2
    SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.showAllDisplays
    SHX1_3 = "policecamera"
    SHX0_3(SHX1_3)
    SHX0_3 = SetPedPropIndex
    SHX1_3 = SHX2_2
    SHX2_3 = 0
    SHX3_3 = SHX7_2
    SHX4_3 = SHX8_2
    SHX5_3 = false
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
  end
  while true do
    SHX10_2 = SHX39_1
    if not SHX10_2 then
      break
    end
    SHX10_2 = tCMG
    SHX10_2 = SHX10_2.canAnim
    SHX10_2 = SHX10_2()
    if not SHX10_2 then
      break
    end
    SHX10_2 = CMG
    SHX10_2 = SHX10_2.getPlayerVehicle
    SHX10_2 = SHX10_2()
    if 0 ~= SHX10_2 then
      break
    end
    SHX10_2 = IsEntityPlayingAnim
    SHX11_2 = SHX2_2
    SHX12_2 = SHX0_2
    SHX13_2 = SHX1_2
    SHX14_2 = 3
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    if not SHX10_2 then
      SHX10_2 = CMG
      SHX10_2 = SHX10_2.hasClientGroup
      SHX11_2 = "CID"
      SHX10_2 = SHX10_2(SHX11_2)
      if not SHX10_2 then
        SHX10_2 = CMG
        SHX10_2 = SHX10_2.loadAnimDict
        SHX11_2 = SHX0_2
        SHX10_2(SHX11_2)
        SHX10_2 = TaskPlayAnim
        SHX11_2 = SHX2_2
        SHX12_2 = SHX0_2
        SHX13_2 = SHX1_2
        SHX14_2 = 2.0
        SHX15_2 = 2.0
        SHX16_2 = -1
        SHX17_2 = 51
        SHX18_2 = 0
        SHX19_2 = false
        SHX20_2 = false
        SHX21_2 = false
        SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
        SHX10_2 = RemoveAnimDict
        SHX11_2 = SHX0_2
        SHX10_2(SHX11_2)
      end
    end
    if SHX4_2 then
      if not SHX6_2 then
        SHX10_2 = drawNativeNotification
        SHX11_2 = [[
Press ~INPUT_THROW_GRENADE~ to exit camera
Press ~INPUT_CONTEXT~ to take photograph]]
        SHX10_2(SHX11_2)
      else
        SHX10_2 = ClearHelp
        SHX11_2 = true
        SHX10_2(SHX11_2)
        SHX10_2 = HideHudNotificationsThisFrame
        SHX10_2()
      end
      SHX10_2 = SetEntityLocallyInvisible
      SHX11_2 = SHX2_2
      SHX10_2(SHX11_2)
      if 0 ~= SHX3_2 then
        SHX10_2 = SetEntityLocallyInvisible
        SHX11_2 = SHX3_2
        SHX10_2(SHX11_2)
      end
      SHX10_2 = SetCamViewModeForContext
      SHX11_2 = 0
      SHX12_2 = 4
      SHX10_2(SHX11_2, SHX12_2)
      SHX10_2 = IsControlJustPressed
      SHX11_2 = 0
      SHX12_2 = 51
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
      if SHX10_2 and not SHX6_2 then
        SHX6_2 = true
        SHX10_2 = Citizen
        SHX10_2 = SHX10_2.CreateThread
        function SHX11_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3, SHX2_3, SHX3_3
          SHX0_3 = Citizen
          SHX0_3 = SHX0_3.Wait
          SHX1_3 = 250
          SHX0_3(SHX1_3)
          SHX0_3 = CMG
          SHX0_3 = SHX0_3.requestScreenshotUpload
          SHX1_3 = "https://cdn.cmgstudios.net/content/upld/upload2.php"
          SHX2_3 = "files[]"
          function SHX3_3(SHX0_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX1_4, SHX2_4, SHX3_4
            SHX1_4 = false
            SHX6_2 = SHX1_4
            SHX1_4 = TriggerServerEvent
            SHX2_4 = "025a5e7ea1"
            SHX3_4 = SHX0_4
            SHX1_4(SHX2_4, SHX3_4)
          end
          SHX0_3(SHX1_3, SHX2_3, SHX3_3)
        end
        SHX10_2(SHX11_2)
      end
    else
      SHX10_2 = drawNativeNotification
      SHX11_2 = "Press ~INPUT_THROW_GRENADE~ to enter camera"
      SHX10_2(SHX11_2)
    end
    SHX10_2 = IsControlJustPressed
    SHX11_2 = 0
    SHX12_2 = 58
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
    if SHX10_2 then
      SHX4_2 = not SHX4_2
      if SHX4_2 then
        SHX10_2 = GetCamViewModeForContext
        SHX11_2 = 0
        SHX10_2 = SHX10_2(SHX11_2)
        SHX5_2 = SHX10_2
        SHX10_2 = CMG
        SHX10_2 = SHX10_2.hideAllDisplays
        SHX11_2 = "policecamera"
        SHX10_2(SHX11_2)
        SHX10_2 = GetPedPropIndex
        SHX11_2 = SHX2_2
        SHX12_2 = 0
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
        SHX7_2 = SHX10_2
        SHX10_2 = GetPedPropTextureIndex
        SHX11_2 = SHX2_2
        SHX12_2 = 0
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
        SHX8_2 = SHX10_2
        SHX10_2 = ClearPedProp
        SHX11_2 = SHX2_2
        SHX12_2 = 0
        SHX10_2(SHX11_2, SHX12_2)
      else
        SHX10_2 = SHX9_2
        SHX10_2()
      end
    end
    SHX10_2 = Citizen
    SHX10_2 = SHX10_2.Wait
    SHX11_2 = 0
    SHX10_2(SHX11_2)
  end
  if SHX4_2 then
    SHX10_2 = SHX9_2
    SHX10_2()
  end
  SHX10_2 = StopAnimTask
  SHX11_2 = SHX2_2
  SHX12_2 = SHX0_2
  SHX13_2 = SHX1_2
  SHX14_2 = 1.0
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX10_2 = DeleteEntity
  SHX11_2 = SHX3_2
  SHX10_2(SHX11_2)
  SHX10_2 = false
  SHX39_1 = SHX10_2
end
SHX40_1(SHX41_1, SHX42_1)
SHX40_1 = {}
SHX41_1 = {}
SHX42_1 = vector3
SHX43_1 = 450.529144
SHX44_1 = -1028.21094
SHX45_1 = 32.74495
SHX42_1 = SHX42_1(SHX43_1, SHX44_1, SHX45_1)
SHX41_1.position = SHX42_1
SHX41_1.heading = 187.0
SHX42_1 = {}
SHX43_1 = vector3
SHX44_1 = 459.051819
SHX45_1 = -1027.14771
SHX46_1 = 32.74495
SHX43_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1)
SHX42_1.position = SHX43_1
SHX42_1.heading = 187.0
SHX43_1 = {}
SHX44_1 = vector3
SHX45_1 = 467.526
SHX46_1 = -1026.09058
SHX47_1 = 32.74495
SHX44_1 = SHX44_1(SHX45_1, SHX46_1, SHX47_1)
SHX43_1.position = SHX44_1
SHX43_1.heading = 187.0
SHX44_1 = {}
SHX45_1 = vector3
SHX46_1 = 484.770721
SHX47_1 = -1024.14661
SHX48_1 = 32.9292374
SHX45_1 = SHX45_1(SHX46_1, SHX47_1, SHX48_1)
SHX44_1.position = SHX45_1
SHX44_1.heading = 187.0
SHX45_1 = {}
SHX46_1 = vector3
SHX47_1 = 493.179
SHX48_1 = -1023.09766
SHX49_1 = 32.9292374
SHX46_1 = SHX46_1(SHX47_1, SHX48_1, SHX49_1)
SHX45_1.position = SHX46_1
SHX45_1.heading = 187.0
SHX46_1 = {}
SHX47_1 = vector3
SHX48_1 = 476.2486
SHX49_1 = -1025.19336
SHX50_1 = 32.876
SHX47_1 = SHX47_1(SHX48_1, SHX49_1, SHX50_1)
SHX46_1.position = SHX47_1
SHX46_1.heading = 187.0
SHX40_1[1] = SHX41_1
SHX40_1[2] = SHX42_1
SHX40_1[3] = SHX43_1
SHX40_1[4] = SHX44_1
SHX40_1[5] = SHX45_1
SHX40_1[6] = SHX46_1
SHX41_1 = vector3
SHX42_1 = 461.96771240234
SHX43_1 = -1028.4676513672
SHX44_1 = 33.133514404297
SHX41_1 = SHX41_1(SHX42_1, SHX43_1, SHX44_1)
SHX42_1 = {}
function SHX43_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = pairs
  SHX1_2 = SHX40_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CreateObjectNoOffset
    SHX7_2 = -911526563
    SHX8_2 = SHX5_2.position
    SHX8_2 = SHX8_2.x
    SHX9_2 = SHX5_2.position
    SHX9_2 = SHX9_2.y
    SHX10_2 = SHX5_2.position
    SHX10_2 = SHX10_2.z
    SHX11_2 = false
    SHX12_2 = false
    SHX13_2 = false
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX7_2 = SetEntityHeading
    SHX8_2 = SHX6_2
    SHX9_2 = SHX5_2.heading
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = FreezeEntityPosition
    SHX8_2 = SHX6_2
    SHX9_2 = true
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = SetEntityVisible
    SHX8_2 = SHX6_2
    SHX9_2 = false
    SHX10_2 = false
    SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX7_2 = table
    SHX7_2 = SHX7_2.insert
    SHX8_2 = SHX42_1
    SHX9_2 = SHX6_2
    SHX7_2(SHX8_2, SHX9_2)
  end
end
function SHX44_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = pairs
  SHX1_2 = SHX42_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DeleteEntity
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX42_1 = SHX0_2
end
SHX45_1 = CMG
SHX45_1 = SHX45_1.createArea
SHX46_1 = "fake_fences"
SHX47_1 = SHX41_1
SHX48_1 = 100.0
SHX49_1 = 50.0
SHX50_1 = SHX43_1
SHX51_1 = SHX44_1
function SHX52_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX53_1 = {}
SHX45_1(SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1)
SHX45_1 = 678
SHX46_1 = 679
SHX47_1 = 0
SHX48_1 = vector3
SHX49_1 = -2196.599609375
SHX50_1 = 3068.681640625
SHX51_1 = 32.955951690674
SHX48_1 = SHX48_1(SHX49_1, SHX50_1, SHX51_1)
SHX49_1 = CMG
function SHX50_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX45_1
  return SHX0_2
end
SHX49_1.getTrainingGroundsBucket = SHX50_1
SHX49_1 = CMG
function SHX50_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX46_1
  return SHX0_2
end
SHX49_1.getHMPTrainingGroundsBucket = SHX50_1
SHX49_1 = AddEventHandler
SHX50_1 = "62fa42ee34"
function SHX51_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if "SCO19 Training Grounds" == SHX0_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "b88749a675"
    SHX1_2(SHX2_2)
  end
end
SHX49_1(SHX50_1, SHX51_1)
SHX49_1 = AddEventHandler
SHX50_1 = "919aefda0c"
function SHX51_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = SHX45_1
  if SHX0_2 == SHX1_2 then
    SHX1_2 = 0
    SHX47_1 = SHX1_2
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isInTrainingGrounds
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isInTrainingWorld
    SHX1_2 = SHX1_2()
  end
  if SHX1_2 then
    SHX2_2 = SHX7_1
    if not SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.createGunStore
      SHX3_2 = "Training Large Arms"
      SHX4_2 = "policeLargeArms"
      SHX5_2 = vector3
      SHX6_2 = -1948.7639160156
      SHX7_2 = 3019.4665527344
      SHX8_2 = 31.820279846191
      SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.createGunStore
      SHX3_2 = "Training Small Arms"
      SHX4_2 = "policeSmallArms"
      SHX5_2 = vector3
      SHX6_2 = -1952.6622314453
      SHX7_2 = 3021.583984375
      SHX8_2 = 31.820279846191
      SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX2_2 = true
      SHX7_1 = SHX2_2
    end
  else
    SHX2_2 = SHX7_1
    if SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.deleteGunStore
      SHX3_2 = "Training Large Arms"
      SHX2_2(SHX3_2)
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.deleteGunStore
      SHX3_2 = "Training Small Arms"
      SHX2_2(SHX3_2)
      SHX2_2 = false
      SHX7_1 = SHX2_2
    end
  end
end
SHX49_1(SHX50_1, SHX51_1)
function SHX49_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerBucket
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX45_1
  if SHX0_2 ~= SHX1_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX48_1
  SHX0_2 = SHX0_2 - SHX1_2
  SHX0_2 = #SHX0_2
  SHX1_2 = 750.0
  if SHX0_2 < SHX1_2 then
    SHX1_2 = 0
    SHX47_1 = SHX1_2
    return
  end
  SHX1_2 = SHX47_1
  if 0 == SHX1_2 then
    SHX1_2 = notify
    SHX2_2 = "~y~You will be kicked from training grounds in 5 seconds. Please return."
    SHX1_2(SHX2_2)
    SHX1_2 = GetGameTimer
    SHX1_2 = SHX1_2()
    SHX47_1 = SHX1_2
    return
  end
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX47_1
  SHX1_2 = SHX1_2 - SHX2_2
  SHX2_2 = 5000
  if SHX1_2 > SHX2_2 then
    SHX1_2 = notify
    SHX2_2 = "~r~You have been kicked from training grounds for going too far away."
    SHX1_2(SHX2_2)
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "ee2c49d787"
    SHX1_2(SHX2_2)
    SHX1_2 = 0
    SHX47_1 = SHX1_2
  end
end
SHX50_1 = CMG
SHX50_1 = SHX50_1.createThreadOnTick
SHX51_1 = SHX49_1
SHX52_1 = "Training Grounds"
SHX50_1(SHX51_1, SHX52_1)
SHX50_1 = CMG
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerBucket
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX45_1
  SHX0_2 = SHX0_2 == SHX1_2
  return SHX0_2
end
SHX50_1.isInTrainingGrounds = SHX51_1
SHX50_1 = AddEventHandler
SHX51_1 = "b51e08118b"
function SHX52_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX22_1
  SHX0_2()
end
SHX50_1(SHX51_1, SHX52_1)
SHX50_1 = {}
SHX51_1 = vector3
SHX52_1 = 472.66070556641
SHX53_1 = -985.42517089844
SHX54_1 = 24.914979934692
SHX51_1 = SHX51_1(SHX52_1, SHX53_1, SHX54_1)
SHX52_1 = vector3
SHX53_1 = -1074.2965087891
SHX54_1 = -823.36840820312
SHX55_1 = 11.035833358765
SHX52_1 = SHX52_1(SHX53_1, SHX54_1, SHX55_1)
SHX53_1 = vector3
SHX54_1 = 1858.0747070312
SHX55_1 = 3697.7080078125
SHX56_1 = 34.26692199707
SHX53_1 = SHX53_1(SHX54_1, SHX55_1, SHX56_1)
SHX54_1 = vector3
SHX55_1 = -448.13220214844
SHX56_1 = 6008.2236328125
SHX57_1 = 31.716361999512
SHX54_1 = SHX54_1(SHX55_1, SHX56_1, SHX57_1)
SHX55_1 = vector3
SHX56_1 = 1784.0445556641
SHX57_1 = 2543.3447265625
SHX58_1 = 45.797943115234
SHX55_1 = SHX55_1(SHX56_1, SHX57_1, SHX58_1)
SHX56_1 = vector3
SHX57_1 = 1557.6273193359
SHX58_1 = 810.14892578125
SHX59_1 = 78.693084716797
SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1 = SHX56_1(SHX57_1, SHX58_1, SHX59_1)
SHX50_1[1] = SHX51_1
SHX50_1[2] = SHX52_1
SHX50_1[3] = SHX53_1
SHX50_1[4] = SHX54_1
SHX50_1[5] = SHX55_1
SHX50_1[6] = SHX56_1
SHX50_1[7] = SHX57_1
SHX50_1[8] = SHX58_1
SHX50_1[9] = SHX59_1
SHX50_1[10] = SHX60_1
SHX50_1[11] = SHX61_1
SHX50_1[12] = SHX62_1
SHX50_1[13] = SHX63_1
SHX50_1[14] = SHX64_1
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "police.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "prisonguard.onduty.permission"
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      return
    end
  end
  SHX0_2 = drawNativeNotification
  SHX1_2 = "Press ~INPUT_CONTEXT_SECONDARY~ to drop off any evidence bags."
  SHX0_2(SHX1_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 44
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 52
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = IsDisabledControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 52
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "dcb45454ac"
    SHX0_2(SHX1_2)
  end
end
SHX52_1 = Citizen
SHX52_1 = SHX52_1.CreateThread
function SHX53_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = pairs
  SHX1_2 = SHX50_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createArea
    SHX7_2 = string
    SHX7_2 = SHX7_2.format
    SHX8_2 = "evidencebag_dropoff_%s"
    SHX9_2 = SHX4_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    SHX8_2 = SHX5_2
    SHX9_2 = 2.0
    SHX10_2 = 2.5
    function SHX11_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX12_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX13_2 = SHX51_1
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.addMarker
    SHX7_2 = SHX5_2.x
    SHX8_2 = SHX5_2.y
    SHX9_2 = SHX5_2.z
    SHX9_2 = SHX9_2 - 1.0
    SHX10_2 = 1.0
    SHX11_2 = 1.0
    SHX12_2 = 1.0
    SHX13_2 = 255
    SHX14_2 = 165
    SHX15_2 = 0
    SHX16_2 = 170
    SHX17_2 = 50
    SHX18_2 = 27
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  end
end
SHX52_1(SHX53_1)
SHX52_1 = RegisterNetEvent
SHX53_1 = "678da4b471"
function SHX54_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = true
  SHX1_2 = false
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.CreateThread
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    while true do
      SHX0_3 = SHX1_2
      if SHX0_3 then
        break
      end
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_JUMP~ in the correct area to unseal the bag."
      SHX0_3(SHX1_3)
      SHX0_3 = Citizen
      SHX0_3 = SHX0_3.Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX2_2(SHX3_2)
  SHX2_2 = true
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.minigameCircularProgressBar
  SHX4_2 = {}
  SHX4_2.Difficulty = "Medium"
  SHX4_2.Timeout = 25000
  function SHX5_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3
    SHX0_2 = SHX0_3
    SHX1_3 = false
    SHX2_2 = SHX1_3
  end
  SHX4_2.onComplete = SHX5_2
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX0_2 = SHX0_3
    SHX0_3 = false
    SHX2_2 = SHX0_3
  end
  SHX4_2.onTimeout = SHX5_2
  SHX3_2(SHX4_2)
  while SHX2_2 do
    SHX3_2 = drawNativeText
    SHX4_2 = "Unseal the bag."
    SHX3_2(SHX4_2)
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX1_2 = true
  if SHX0_2 then
    SHX3_2 = PlaySoundFrontend
    SHX4_2 = -1
    SHX5_2 = "HACKING_CLICK_BAD"
    SHX6_2 = ""
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX3_2 = notify
    SHX4_2 = "~g~You succesfully unsealed the evidence bag."
    SHX3_2(SHX4_2)
  else
    SHX3_2 = PlaySoundFrontend
    SHX4_2 = -1
    SHX5_2 = "HACKING_SUCCESS"
    SHX6_2 = ""
    SHX7_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX3_2 = notify
    SHX4_2 = "~r~You failed to unseal the evidence bag."
    SHX3_2(SHX4_2)
  end
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "c5002dc873"
  SHX5_2 = SHX0_2
  SHX3_2(SHX4_2, SHX5_2)
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = {}
SHX53_1 = 3
SHX54_1 = nil
SHX55_1 = RMenu
SHX55_1 = SHX55_1.Add
SHX56_1 = "police"
SHX57_1 = "selectofficers"
SHX58_1 = RageUI
SHX58_1 = SHX58_1.CreateMenu
SHX59_1 = ""
SHX60_1 = "~b~Officers Involved"
SHX61_1 = CMG
SHX61_1 = SHX61_1.getRageUIMenuWidth
SHX61_1 = SHX61_1()
SHX62_1 = CMG
SHX62_1 = SHX62_1.getRageUIMenuHeight
SHX62_1 = SHX62_1()
SHX63_1 = "cmg_jobselectorui"
SHX64_1 = "metpd"
SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1 = SHX58_1(SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1)
SHX55_1(SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1)
function SHX55_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = SHX54_1
  if SHX0_2 then
    return
  end
  SHX0_2 = true
  SHX54_1 = SHX0_2
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = SHX52_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    if SHX6_2 then
      SHX7_2 = tonumber
      SHX8_2 = SHX5_2
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX7_2 then
        SHX8_2 = #SHX0_2
        SHX8_2 = SHX8_2 + 1
        SHX0_2[SHX8_2] = SHX7_2
      end
    end
  end
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "6710146a17"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.CloseAll
  SHX1_2()
end
SHX56_1 = RageUI
SHX56_1 = SHX56_1.CreateWhile
SHX57_1 = 1.0
SHX58_1 = RMenu
SHX59_1 = SHX58_1
SHX58_1 = SHX58_1.Get
SHX60_1 = "police"
SHX61_1 = "selectofficers"
SHX58_1 = SHX58_1(SHX59_1, SHX60_1, SHX61_1)
SHX59_1 = nil
function SHX60_1()
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
  SHX3_2 = "police"
  SHX4_2 = "selectofficers"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = string
    SHX1_3 = SHX1_3.format
    SHX2_3 = "~y~Pick up to %s helping officers to share XP / arrests with."
    SHX3_3 = SHX53_1
    SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX1_3(SHX2_3, SHX3_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
    SHX0_3 = 0
    SHX1_3 = pairs
    SHX2_3 = SHX52_1
    SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
    for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
      if SHX6_3 then
        SHX0_3 = SHX0_3 + 1
      end
    end
    SHX1_3 = pairs
    SHX2_3 = SHX52_1
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
        SHX8_3 = SHX53_1
        SHX8_3 = SHX0_3 >= SHX8_3 and SHX8_3
        SHX9_3 = string
        SHX9_3 = SHX9_3.format
        SHX10_3 = "%s [%s]"
        SHX11_3 = CMG
        SHX11_3 = SHX11_3.getPlayerName
        SHX12_3 = SHX7_3
        SHX11_3 = SHX11_3(SHX12_3)
        SHX12_3 = SHX5_3
        SHX9_3 = SHX9_3(SHX10_3, SHX11_3, SHX12_3)
        SHX10_3 = RageUI
        SHX10_3 = SHX10_3.Checkbox
        SHX11_3 = SHX9_3
        SHX12_3 = ""
        SHX13_3 = SHX6_3
        SHX14_3 = {}
        SHX15_3 = not SHX8_3
        SHX14_3.Enabled = SHX15_3
        function SHX15_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX4_4, SHX5_4
          SHX4_4 = SHX6_3
          if SHX3_4 ~= SHX4_4 then
            if SHX3_4 then
              SHX4_4 = SHX0_3
              SHX5_4 = SHX53_1
              if SHX4_4 >= SHX5_4 then
                return
              end
            end
            SHX5_4 = SHX5_3
            SHX4_4 = SHX52_1
            SHX4_4[SHX5_4] = SHX3_4
          end
        end
        SHX10_3(SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
      end
    end
    SHX1_3 = SHX0_3 + 1
    SHX2_3 = string
    SHX2_3 = SHX2_3.format
    SHX3_3 = "Confirm, XP/arrests split %s ways."
    SHX4_3 = SHX1_3
    SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
    SHX3_3 = RageUI
    SHX3_3 = SHX3_3.ButtonWithStyle
    SHX4_3 = "~g~Confirm"
    SHX5_3 = SHX2_3
    SHX6_3 = {}
    SHX6_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX7_3 = true
    function SHX8_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4
      if SHX2_4 then
        SHX3_4 = SHX55_1
        SHX3_4()
      end
    end
    SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    SHX3_3 = RageUI
    SHX3_3 = SHX3_3.ButtonWithStyle
    SHX4_3 = "~b~Skip, keep XP to myself"
    SHX5_3 = "Award full XP and arrest stat to you only."
    SHX6_3 = {}
    SHX6_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX7_3 = true
    function SHX8_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4
      if SHX2_4 then
        SHX3_4 = pairs
        SHX4_4 = SHX52_1
        SHX3_4, SHX4_4, SHX5_4, SHX6_4 = SHX3_4(SHX4_4)
        for SHX7_4 in SHX3_4, SHX4_4, SHX5_4, SHX6_4 do
          SHX8_4 = SHX52_1
          SHX8_4[SHX7_4] = false
        end
        SHX3_4 = SHX55_1
        SHX3_4()
      end
    end
    SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
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
SHX56_1(SHX57_1, SHX58_1, SHX59_1, SHX60_1)
SHX56_1 = RegisterNetEvent
SHX57_1 = "0d3ff1e19d"
function SHX58_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = {}
  SHX52_1 = SHX2_2
  SHX2_2 = type
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "table" == SHX2_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX0_2
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = tonumber
      SHX9_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2)
      if SHX8_2 then
        SHX9_2 = tostring
        SHX10_2 = SHX8_2
        SHX9_2 = SHX9_2(SHX10_2)
        SHX10_2 = SHX52_1
        SHX10_2[SHX9_2] = false
      end
    end
  end
  SHX2_2 = tonumber
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = 3
  end
  SHX53_1 = SHX2_2
  SHX2_2 = false
  SHX54_1 = SHX2_2
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Visible
  SHX3_2 = RMenu
  SHX4_2 = SHX3_2
  SHX3_2 = SHX3_2.Get
  SHX5_2 = "police"
  SHX6_2 = "selectofficers"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
end
SHX56_1(SHX57_1, SHX58_1)
