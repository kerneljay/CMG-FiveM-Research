-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/heists/cfg_heist"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = RegisterNetEvent
RegisterHeistEvent = SHX1_1
function SHX1_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "6342feb8da"
  SHX0_2(SHX1_2)
end
SHX2_1 = vector3
SHX3_1 = 707.01
SHX4_1 = -966.64
SHX5_1 = 30.41
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX3_1 = vector3
SHX4_1 = 707.95
SHX5_1 = -960.6
SHX6_1 = 30.4
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX4_1 = vector3
SHX5_1 = 717.9912109375
SHX6_1 = -982.55493164062
SHX7_1 = 24.130674362183
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
function SHX5_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.isDevMode
  SHX3_2 = SHX3_2()
  if SHX3_2 then
    SHX3_2 = SHX0_2
    SHX4_2 = SHX1_2
    SHX3_2(SHX4_2)
  else
    SHX3_2 = pcall
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    SHX3_2, SHX4_2 = SHX3_2(SHX4_2, SHX5_2)
    if not SHX3_2 then
      if SHX2_2 then
        SHX5_2 = TriggerServerEvent
        SHX6_2 = "6c3cf6a94e"
        SHX7_2 = true
        SHX5_2(SHX6_2, SHX7_2)
      end
      SHX5_2 = error
      SHX6_2 = SHX4_2
      SHX5_2(SHX6_2)
    end
  end
end
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setGameplayTask
  SHX2_2 = true
  SHX3_2 = GetFrameCount
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX3_2()
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadResourceFile
  SHX2_2 = GetCurrentResourceName
  SHX2_2 = SHX2_2()
  SHX3_2 = string
  SHX3_2 = SHX3_2.format
  SHX4_2 = "cfg/heists/client/cfg_%s.lua"
  SHX5_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.setGameplayTask
  SHX3_2 = false
  SHX4_2 = GetFrameCount
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2()
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = assert
  SHX3_2 = nil ~= SHX1_2
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = "Failed to read bank heist setup file (name: %s)"
  SHX6_2 = SHX0_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = load
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = assert
  SHX4_2 = nil ~= SHX2_2
  SHX5_2 = string
  SHX5_2 = SHX5_2.format
  SHX6_2 = "Failed to load chunks for bank heist setup (name: %s)"
  SHX7_2 = SHX0_2
  SHX5_2, SHX6_2, SHX7_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = pcall
  SHX4_2 = SHX2_2
  SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
  SHX5_2 = assert
  SHX6_2 = SHX3_2
  SHX7_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2)
  return SHX4_2
end
SHX7_1 = nil
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = ipairs
  SHX2_2 = GetGamePool
  SHX3_2 = "CPed"
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX2_2(SHX3_2)
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SetPedDropsWeaponsWhenDead
    SHX8_2 = SHX6_2
    SHX9_2 = false
    SHX7_2(SHX8_2, SHX9_2)
  end
  SHX1_2 = ipairs
  SHX2_2 = GetGamePool
  SHX3_2 = "CPickup"
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX2_2(SHX3_2)
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = RemovePickup
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
    SHX7_2 = DeleteEntity
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
  end
  SHX1_2 = SHX0_2.usedWeapons
  if SHX1_2 then
    SHX1_2 = type
    SHX2_2 = SHX0_2.usedWeapons
    SHX1_2 = SHX1_2(SHX2_2)
    if "table" == SHX1_2 then
      SHX1_2 = PlayerPedId
      SHX1_2 = SHX1_2()
      SHX2_2 = ipairs
      SHX3_2 = SHX0_2.usedWeapons
      SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
      for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
        SHX8_2 = HasPedGotWeapon
        SHX9_2 = SHX1_2
        SHX10_2 = SHX7_2
        SHX11_2 = false
        SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
        if SHX8_2 then
          SHX8_2 = RemoveWeaponFromPed
          SHX9_2 = SHX1_2
          SHX10_2 = SHX7_2
          SHX8_2(SHX9_2, SHX10_2)
        end
        SHX8_2 = SetCanPedEquipWeapon
        SHX9_2 = SHX1_2
        SHX10_2 = SHX7_2
        SHX11_2 = false
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
        SHX8_2 = ToggleUsePickupsForPlayer
        SHX9_2 = PlayerId
        SHX9_2 = SHX9_2()
        SHX10_2 = SHX7_2
        SHX11_2 = false
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      end
    end
  end
end
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  while true do
    SHX0_2 = SHX7_1
    if not SHX0_2 then
      break
    end
    SHX0_2 = SHX7_1.stageIndex
    if SHX0_2 then
      SHX0_2 = SHX7_1.stages
      SHX1_2 = SHX7_1.stageIndex
      SHX0_2 = SHX0_2[SHX1_2]
      SHX1_2 = SHX7_1.stageSetup
      if not SHX1_2 then
        SHX1_2 = print
        SHX2_2 = string
        SHX2_2 = SHX2_2.format
        SHX3_2 = "Switching stage (stage: %s)"
        SHX4_2 = SHX0_2.name
        SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2)
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
        SHX1_2 = SHX7_1.prevStageIndex
        if SHX1_2 then
          SHX1_2 = SHX7_1.stages
          SHX2_2 = SHX7_1.prevStageIndex
          SHX1_2 = SHX1_2[SHX2_2]
          SHX2_2 = SHX1_2.clean
          if SHX2_2 then
            SHX2_2 = SHX7_1.inited
            SHX3_2 = SHX7_1.prevStageIndex
            SHX2_2 = SHX2_2[SHX3_2]
            if SHX2_2 then
              SHX2_2 = print
              SHX3_2 = string
              SHX3_2 = SHX3_2.format
              SHX4_2 = "Cleaning previous stage (prevStage: %s)"
              SHX5_2 = SHX1_2.name
              SHX3_2, SHX4_2, SHX5_2 = SHX3_2(SHX4_2, SHX5_2)
              SHX2_2(SHX3_2, SHX4_2, SHX5_2)
              SHX2_2 = SHX5_1
              SHX3_2 = SHX1_2.clean
              SHX4_2 = SHX7_1.info
              SHX5_2 = true
              SHX2_2(SHX3_2, SHX4_2, SHX5_2)
            end
          end
        end
        SHX1_2 = SHX0_2.init
        if SHX1_2 then
          SHX1_2 = print
          SHX2_2 = string
          SHX2_2 = SHX2_2.format
          SHX3_2 = "Initialising stage (stage: %s)"
          SHX4_2 = SHX0_2.name
          SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2)
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
          SHX1_2 = SHX5_1
          SHX2_2 = SHX0_2.init
          SHX3_2 = SHX7_1.info
          SHX4_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2)
          SHX1_2 = SHX7_1.inited
          SHX2_2 = SHX7_1.stageIndex
          SHX1_2[SHX2_2] = true
          SHX1_2 = print
          SHX2_2 = string
          SHX2_2 = SHX2_2.format
          SHX3_2 = "Finished initialising stage (stage: %s)"
          SHX4_2 = SHX0_2.name
          SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2)
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
        end
        SHX1_2 = SHX7_1.info
        SHX2_2 = GetGameTimer
        SHX2_2 = SHX2_2()
        SHX1_2.lastInit = SHX2_2
        SHX7_1.stageSetup = true
        SHX1_2 = print
        SHX2_2 = string
        SHX2_2 = SHX2_2.format
        SHX3_2 = "Finished switching stage (stage: %s)"
        SHX4_2 = SHX0_2.name
        SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2)
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      end
      SHX1_2 = SHX8_1
      SHX2_2 = SHX7_1.info
      SHX1_2(SHX2_2)
      SHX1_2 = SHX0_2.run
      if SHX1_2 then
        SHX1_2 = SHX5_1
        SHX2_2 = SHX0_2.run
        SHX3_2 = SHX7_1.info
        SHX4_2 = true
        SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      end
      SHX1_2 = SHX0_2.isFinishStage
      if SHX1_2 then
        SHX1_2 = SHX7_1.isLeaving
        if not SHX1_2 then
          SHX1_2 = CMG
          SHX1_2 = SHX1_2.getPlayerCoords
          SHX1_2 = SHX1_2()
          SHX2_2 = SHX2_1
          SHX1_2 = SHX1_2 - SHX2_2
          SHX1_2 = #SHX1_2
          if SHX1_2 < 15.0 then
            SHX1_2 = TriggerServerEvent
            SHX2_2 = "6c3cf6a94e"
            SHX3_2 = false
            SHX1_2(SHX2_2, SHX3_2)
            SHX7_1.isLeaving = true
          end
        end
      end
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX10_1 = RegisterNetEvent
SHX11_1 = "fb4882a7e3"
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = print
  SHX2_2 = string
  SHX2_2 = SHX2_2.format
  SHX3_2 = "Received new setup request (name: %s)"
  SHX4_2 = SHX0_2.name
  SHX2_2, SHX3_2, SHX4_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SHX6_1
  SHX2_2 = SHX0_2.name
  SHX1_2 = SHX1_2(SHX2_2)
  SHX7_1 = SHX1_2
  SHX7_1.info = SHX0_2
  SHX7_1.isLeaving = false
  SHX7_1.stageSetup = false
  SHX1_2 = {}
  SHX7_1.inited = SHX1_2
  SHX1_2 = ExecuteCommand
  SHX2_2 = "hideids"
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setRedzoneTimerDisabled
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.setRedzoneTimerDisabled
    SHX2_2 = true
    SHX1_2(SHX2_2)
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setTime
  SHX2_2 = SHX0_2.time
  SHX2_2 = SHX2_2.hour
  SHX3_2 = SHX0_2.time
  SHX3_2 = SHX3_2.minute
  SHX4_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setWeather
  SHX2_2 = SHX0_2.weather
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setPolice
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.CreateThreadNow
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = GetGameTimer
    SHX0_3 = SHX0_3()
    while true do
      SHX1_3 = GetGameTimer
      SHX1_3 = SHX1_3()
      SHX1_3 = SHX1_3 - SHX0_3
      SHX2_3 = 10000
      if not (SHX1_3 < SHX2_3) then
        break
      end
      SHX1_3 = drawNativeNotification
      SHX2_3 = "You can return to the factory office at any time to exit the setup"
      SHX1_3(SHX2_3)
      SHX1_3 = Citizen
      SHX1_3 = SHX1_3.Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
  end
  SHX1_2(SHX2_2)
  SHX1_2 = SHX9_1
  SHX1_2()
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = RegisterNetEvent
SHX11_1 = "0b3ad3a2af"
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX7_1
  if not SHX1_2 then
    return
  end
  SHX1_2 = ipairs
  SHX2_2 = SHX7_1.stages
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.name
    if SHX7_2 == SHX0_2 then
      SHX7_2 = SHX7_1.stageIndex
      SHX7_1.prevStageIndex = SHX7_2
      SHX7_1.stageIndex = SHX5_2
      break
    end
  end
  SHX7_1.stageSetup = false
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = RegisterNetEvent
SHX11_1 = "db46bf9497"
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX7_1
  if not SHX1_2 then
    return
  end
  SHX1_2 = print
  SHX2_2 = string
  SHX2_2 = SHX2_2.format
  SHX3_2 = "Received player removed (server: %d)"
  SHX4_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = table
  SHX1_2 = SHX1_2.find
  SHX2_2 = SHX7_1.info
  SHX2_2 = SHX2_2.players
  SHX3_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX2_2 = table
    SHX2_2 = SHX2_2.remove
    SHX3_2 = SHX7_1.info
    SHX3_2 = SHX3_2.players
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX10_1(SHX11_1, SHX12_1)
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = print
  SHX3_2 = string
  SHX3_2 = SHX3_2.format
  SHX4_2 = "Started invoking leaveSetup(%s, %s)"
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX2_2 = assert
  SHX3_2 = SHX7_1
  SHX4_2 = "Unable to leave non-existant setup"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.hideAllDisplays
  SHX3_2 = "setupleave"
  SHX2_2(SHX3_2)
  SHX2_2 = SetPlayerControl
  SHX3_2 = PlayerId
  SHX3_2 = SHX3_2()
  SHX4_2 = true
  SHX5_2 = 0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = SHX7_1.stages
  SHX3_2 = SHX7_1.stageIndex
  SHX2_2 = SHX2_2[SHX3_2]
  SHX3_2 = SHX2_2.clean
  if SHX3_2 then
    SHX3_2 = SHX7_1.inited
    SHX4_2 = SHX7_1.stageIndex
    SHX3_2 = SHX3_2[SHX4_2]
    if SHX3_2 then
      SHX3_2 = SHX5_1
      SHX4_2 = SHX2_2.clean
      SHX5_2 = SHX7_1.info
      SHX6_2 = false
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    end
  end
  SHX3_2 = SHX7_1.finish
  if SHX3_2 then
    SHX3_2 = SHX5_1
    SHX4_2 = SHX7_1.finish
    SHX5_2 = SHX7_1.info
    SHX6_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
  SHX3_2 = nil
  SHX7_1 = SHX3_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.setPolice
  SHX4_2 = false
  SHX3_2(SHX4_2)
  SHX3_2 = SwitchOutPlayer
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = 0
  SHX6_2 = 1
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.Wait
  SHX4_2 = 5000
  SHX3_2(SHX4_2)
  SHX3_2 = SetEntityCoords
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX3_1.x
  SHX6_2 = SHX3_1.y
  SHX7_2 = SHX3_1.z
  SHX8_2 = false
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = SwitchInPlayer
  SHX4_2 = PlayerPedId
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX4_2()
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = GetGameTimer
  SHX3_2 = SHX3_2()
  while true do
    SHX4_2 = IsPlayerSwitchInProgress
    SHX4_2 = SHX4_2()
    if not SHX4_2 then
      break
    end
    SHX4_2 = GetGameTimer
    SHX4_2 = SHX4_2()
    SHX4_2 = SHX4_2 - SHX3_2
    SHX5_2 = 10000
    if SHX4_2 > SHX5_2 then
      SHX4_2 = StopPlayerSwitch
      SHX4_2()
      SHX4_2 = print
      SHX5_2 = "Breaking out of player switch in leaveSetup"
      SHX4_2(SHX5_2)
      break
    end
    SHX4_2 = SwitchInPlayer
    SHX5_2 = PlayerPedId
    SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX5_2()
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX4_2 = print
    SHX5_2 = "Waiting for player switch to complete in leaveSetup..."
    SHX4_2(SHX5_2)
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = SetPlayerControl
  SHX5_2 = PlayerId
  SHX5_2 = SHX5_2()
  SHX6_2 = true
  SHX7_2 = 0
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.showAllDisplays
  SHX5_2 = "setupleave"
  SHX4_2(SHX5_2)
  SHX4_2 = ExecuteCommand
  SHX5_2 = "showids"
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.setRedzoneTimerDisabled
  if SHX4_2 then
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.setRedzoneTimerDisabled
    SHX5_2 = false
    SHX4_2(SHX5_2)
  end
  SHX4_2 = TriggerEvent
  SHX5_2 = "193ee4e15e"
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.announceMpBigMsg
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX7_2 = 10000
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SHX1_1
  SHX4_2()
  SHX4_2 = print
  SHX5_2 = string
  SHX5_2 = SHX5_2.format
  SHX6_2 = "Finished invoking leaveSetup"
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX5_2(SHX6_2)
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
end
SHX11_1 = RegisterNetEvent
SHX12_1 = "6c3cf6a94e"
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = print
  SHX3_2 = string
  SHX3_2 = SHX3_2.format
  SHX4_2 = "Receieved leave setup request (title: %s subtitle: %s)"
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX10_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = nil
SHX12_1 = false
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = print
  SHX2_2 = string
  SHX2_2 = SHX2_2.format
  SHX3_2 = "Started invoking transitionToSetup(%s)"
  SHX4_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX1_2 = assert
  SHX2_2 = SHX11_1
  SHX3_2 = "A valid transition table is required to transition"
  SHX1_2(SHX2_2, SHX3_2)
  SHX11_1.moving = true
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "bankheistssetup"
  SHX5_2 = "mainmenu"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX11_1.camera
  if SHX1_2 then
    SHX1_2 = SetCamActive
    SHX2_2 = SHX11_1.camera
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = RenderScriptCams
    SHX2_2 = false
    SHX3_2 = false
    SHX4_2 = 0
    SHX5_2 = false
    SHX6_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX1_2 = DestroyCam
    SHX2_2 = SHX11_1.camera
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
    SHX11_1.camera = nil
  end
  SHX11_1.setupNumber = SHX0_2
  SHX1_2 = SHX11_1.isHost
  if SHX1_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "9f645124da"
    SHX3_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = SHX0_1.setups
  SHX1_2 = SHX1_2[SHX0_2]
  SHX2_2 = SwitchOutPlayer
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = 0
  SHX5_2 = 1
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 1000
  SHX2_2(SHX3_2)
  SHX2_2 = SetEntityCoords
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX1_2.position
  SHX4_2 = SHX4_2.x
  SHX5_2 = SHX1_2.position
  SHX5_2 = SHX5_2.y
  SHX6_2 = SHX1_2.position
  SHX6_2 = SHX6_2.z
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX10_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX2_2 = SetEntityHeading
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX1_2.heading
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetEntityVisible
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = false
  SHX5_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = SwitchInPlayer
  SHX3_2 = PlayerPedId
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX3_2()
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  while true do
    SHX3_2 = IsPlayerSwitchInProgress
    SHX3_2 = SHX3_2()
    if not SHX3_2 then
      break
    end
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX3_2 = SHX3_2 - SHX2_2
    SHX4_2 = 10000
    if SHX3_2 > SHX4_2 then
      SHX3_2 = StopPlayerSwitch
      SHX3_2()
      SHX3_2 = print
      SHX4_2 = "Breaking out of player switch in transitionToSetup"
      SHX3_2(SHX4_2)
      break
    end
    SHX3_2 = SwitchInPlayer
    SHX4_2 = PlayerPedId
    SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX4_2()
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX3_2 = print
    SHX4_2 = "Waiting for player switch to complete in transitionToSetup..."
    SHX3_2(SHX4_2)
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = BeginScaleformMovieMethod
  SHX4_2 = SHX11_1.scaleform
  SHX5_2 = "SET_MENU_TITLE"
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = BeginTextCommandScaleformString
  SHX4_2 = "STRING"
  SHX3_2(SHX4_2)
  SHX3_2 = AddTextComponentSubstringKeyboardDisplay
  SHX4_2 = SHX1_2.title
  SHX3_2(SHX4_2)
  SHX3_2 = EndTextCommandScaleformString
  SHX3_2()
  SHX3_2 = EndScaleformMovieMethod
  SHX3_2()
  SHX3_2 = BeginScaleformMovieMethod
  SHX4_2 = SHX11_1.scaleform
  SHX5_2 = "SET_MENU_HELP_TEXT"
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = BeginTextCommandScaleformString
  SHX4_2 = "STRING"
  SHX3_2(SHX4_2)
  SHX3_2 = AddTextComponentSubstringKeyboardDisplay
  SHX4_2 = SHX1_2.description
  SHX3_2(SHX4_2)
  SHX3_2 = EndTextCommandScaleformString
  SHX3_2()
  SHX3_2 = EndScaleformMovieMethod
  SHX3_2()
  SHX3_2 = CreateCamWithParams
  SHX4_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX5_2 = SHX1_2.position
  SHX5_2 = SHX5_2.x
  SHX6_2 = SHX1_2.position
  SHX6_2 = SHX6_2.y
  SHX7_2 = SHX1_2.position
  SHX7_2 = SHX7_2.z
  SHX8_2 = SHX1_2.rotation
  SHX8_2 = SHX8_2.x
  SHX9_2 = SHX1_2.rotation
  SHX9_2 = SHX9_2.y
  SHX10_2 = SHX1_2.rotation
  SHX10_2 = SHX10_2.z
  SHX11_2 = 70.0
  SHX12_2 = false
  SHX13_2 = 2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX11_1.camera = SHX3_2
  SHX3_2 = SetCamActive
  SHX4_2 = SHX11_1.camera
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = RenderScriptCams
  SHX4_2 = true
  SHX5_2 = false
  SHX6_2 = 0
  SHX7_2 = false
  SHX8_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX11_1.moving = false
  SHX3_2 = print
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = "Finished invoking transitionToSetup"
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX4_2(SHX5_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
end
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = print
  SHX2_2 = string
  SHX2_2 = SHX2_2.format
  SHX3_2 = "Started invoking exitSetupSelection(%s)"
  SHX4_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = assert
  SHX2_2 = SHX11_1
  SHX3_2 = "A valid transition is required to exit setup selection"
  SHX1_2(SHX2_2, SHX3_2)
  while true do
    SHX1_2 = SHX11_1.moving
    if not SHX1_2 then
      break
    end
    SHX1_2 = print
    SHX2_2 = "Waiting for transition to stop moving in exitSetupSelection..."
    SHX1_2(SHX2_2)
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "bankheistssetup"
  SHX5_2 = "mainmenu"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX11_1.camera
  if SHX1_2 then
    SHX1_2 = SetCamActive
    SHX2_2 = SHX11_1.camera
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = RenderScriptCams
    SHX2_2 = false
    SHX3_2 = false
    SHX4_2 = 0
    SHX5_2 = false
    SHX6_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX1_2 = DestroyCam
    SHX2_2 = SHX11_1.camera
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
    SHX11_1.camera = nil
  end
  SHX1_2 = SetScaleformMovieAsNoLongerNeeded
  SHX2_2 = SHX11_1.scaleform
  SHX1_2(SHX2_2)
  SHX11_1.scaleform = nil
  SHX1_2 = SwitchOutPlayer
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = 0
  SHX4_2 = 1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 5000
  SHX1_2(SHX2_2)
  if SHX0_2 then
    SHX1_2 = SetEntityCoords
    SHX2_2 = PlayerPedId
    SHX2_2 = SHX2_2()
    SHX3_2 = SHX4_1.x
    SHX4_2 = SHX4_1.y
    SHX5_2 = SHX4_1.z
    SHX6_2 = false
    SHX7_2 = false
    SHX8_2 = false
    SHX9_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  else
    SHX1_2 = SetEntityCoords
    SHX2_2 = PlayerPedId
    SHX2_2 = SHX2_2()
    SHX3_2 = SHX2_1.x
    SHX4_2 = SHX2_1.y
    SHX5_2 = SHX2_1.z
    SHX6_2 = false
    SHX7_2 = false
    SHX8_2 = false
    SHX9_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  end
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityVisible
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = true
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SwitchInPlayer
  SHX2_2 = PlayerPedId
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX2_2()
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  while true do
    SHX2_2 = IsPlayerSwitchInProgress
    SHX2_2 = SHX2_2()
    if not SHX2_2 then
      break
    end
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX2_2 = SHX2_2 - SHX1_2
    SHX3_2 = 10000
    if SHX2_2 > SHX3_2 then
      SHX2_2 = StopPlayerSwitch
      SHX2_2()
      SHX2_2 = print
      SHX3_2 = "Breaking out of player switch in exitSetupSelection"
      SHX2_2(SHX3_2)
      break
    end
    SHX2_2 = SwitchInPlayer
    SHX3_2 = PlayerPedId
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX3_2()
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX2_2 = print
    SHX3_2 = "Waiting for player switch to complete in exitSetupSelection..."
    SHX2_2(SHX3_2)
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SetPlayerControl
  SHX3_2 = PlayerId
  SHX3_2 = SHX3_2()
  SHX4_2 = true
  SHX5_2 = 0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = AnimpostfxStop
  SHX3_2 = "MP_OrbitalCannon"
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.showAllDisplays
  SHX3_2 = "setupselection"
  SHX2_2(SHX3_2)
  SHX2_2 = nil
  SHX11_1 = SHX2_2
  if not SHX0_2 then
    SHX2_2 = SHX1_1
    SHX2_2()
  end
  SHX2_2 = print
  SHX3_2 = string
  SHX3_2 = SHX3_2.format
  SHX4_2 = "Finished invoking exitSetupSelection"
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX3_2(SHX4_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
end
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = print
  SHX2_2 = string
  SHX2_2 = SHX2_2.format
  SHX3_2 = "Started invoking enterSetupSelection(%s)"
  SHX4_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  if SHX0_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "66789e23ac"
    SHX1_2(SHX2_2)
  end
  SHX1_2 = SetPlayerControl
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX3_2 = false
  SHX4_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = AnimpostfxPlay
  SHX2_2 = "MP_OrbitalCannon"
  SHX3_2 = 0
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hideAllDisplays
  SHX2_2 = "setupselection"
  SHX1_2(SHX2_2)
  SHX1_2 = {}
  SHX11_1 = SHX1_2
  SHX11_1.isHost = SHX0_2
  SHX1_2 = {}
  SHX11_1.players = SHX1_2
  SHX11_1.setupNumber = 1
  SHX1_2 = RequestScaleformMovie
  SHX2_2 = "ORBITAL_CANNON_CAM"
  SHX1_2 = SHX1_2(SHX2_2)
  SHX11_1.scaleform = SHX1_2
  while true do
    SHX1_2 = HasScaleformMovieLoaded
    SHX2_2 = SHX11_1.scaleform
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      break
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX11_1.scaleform
  SHX3_2 = "SET_STATE"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 1
  SHX1_2(SHX2_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 0
  SHX1_2(SHX2_2)
  SHX1_2 = SHX13_1
  SHX2_2 = SHX11_1.setupNumber
  SHX1_2(SHX2_2)
  while true do
    SHX1_2 = SHX11_1
    if not SHX1_2 then
      break
    end
    SHX1_2 = SHX11_1.camera
    if SHX1_2 then
      SHX1_2 = SHX11_1.isHost
      if SHX1_2 then
        SHX1_2 = SHX11_1.blockInteraction
        if not SHX1_2 then
          SHX1_2 = IsDisabledControlJustPressed
          SHX2_2 = 0
          SHX3_2 = 174
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
          if SHX1_2 then
            SHX1_2 = SHX11_1.setupNumber
            SHX1_2 = SHX1_2 - 1
            if SHX1_2 > 0 then
              SHX1_2 = SHX13_1
              SHX2_2 = SHX11_1.setupNumber
              SHX2_2 = SHX2_2 - 1
              SHX1_2(SHX2_2)
            end
          end
          SHX1_2 = IsDisabledControlJustPressed
          SHX2_2 = 0
          SHX3_2 = 175
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
          if SHX1_2 then
            SHX1_2 = SHX11_1.setupNumber
            SHX1_2 = SHX1_2 + 1
            SHX2_2 = SHX0_1.setups
            SHX2_2 = #SHX2_2
            if SHX1_2 <= SHX2_2 then
              SHX1_2 = SHX13_1
              SHX2_2 = SHX11_1.setupNumber
              SHX2_2 = SHX2_2 + 1
              SHX1_2(SHX2_2)
            end
          end
        end
      end
      SHX1_2 = SHX11_1.blockInteraction
      if not SHX1_2 then
        SHX1_2 = IsDisabledControlJustPressed
        SHX2_2 = 0
        SHX3_2 = 200
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if SHX1_2 then
          SHX1_2 = TriggerServerEvent
          SHX2_2 = "fcbc43097b"
          SHX1_2(SHX2_2)
          SHX1_2 = print
          SHX2_2 = string
          SHX2_2 = SHX2_2.format
          SHX3_2 = "Finished invoking enterSetupSelection"
          SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX2_2(SHX3_2)
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
          return
        end
      end
      SHX1_2 = DrawScaleformMovieFullscreen
      SHX2_2 = SHX11_1.scaleform
      SHX3_2 = 255
      SHX4_2 = 255
      SHX5_2 = 255
      SHX6_2 = 255
      SHX7_2 = 0
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX1_2 = SHX0_1.setups
      SHX2_2 = SHX11_1.setupNumber
      SHX1_2 = SHX1_2[SHX2_2]
      if SHX1_2 then
        SHX2_2 = CMG
        SHX2_2 = SHX2_2.DrawText
        SHX3_2 = 0.5
        SHX4_2 = 0.9
        SHX5_2 = "~r~This setup is part of the ~h~"
        SHX6_2 = SHX1_2.series
        SHX7_2 = "~h~ series."
        SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2
        SHX6_2 = 0.8
        SHX7_2 = nil
        SHX8_2 = 0
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
      SHX2_2 = RageUI
      SHX2_2 = SHX2_2.Visible
      SHX3_2 = RMenu
      SHX4_2 = SHX3_2
      SHX3_2 = SHX3_2.Get
      SHX5_2 = "bankheistssetup"
      SHX6_2 = "mainmenu"
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX4_2 = true
      SHX2_2(SHX3_2, SHX4_2)
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
end
SHX16_1 = RMenu
SHX16_1 = SHX16_1.Add
SHX17_1 = "bankheistssetup"
SHX18_1 = "mainmenu"
SHX19_1 = RageUI
SHX19_1 = SHX19_1.CreateMenu
SHX20_1 = "Heist Setup"
SHX21_1 = "Main Menu"
SHX22_1 = CMG
SHX22_1 = SHX22_1.getRageUIMenuWidth
SHX22_1 = SHX22_1()
SHX23_1 = CMG
SHX23_1 = SHX23_1.getRageUIMenuHeight
SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1 = SHX23_1()
SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1)
SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1)
SHX16_1 = RageUI
SHX16_1 = SHX16_1.CreateWhile
SHX17_1 = 1.0
SHX18_1 = RMenu
SHX19_1 = SHX18_1
SHX18_1 = SHX18_1.Get
SHX20_1 = "bankheistssetup"
SHX21_1 = "mainmenu"
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = nil
function SHX20_1()
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
  SHX3_2 = "bankheistssetup"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
    SHX0_3 = SHX11_1
    if not SHX0_3 then
      return
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = string
    SHX1_3 = SHX1_3.format
    SHX2_3 = "Joined Players (%d/10)"
    SHX3_3 = SHX11_1.players
    SHX3_3 = #SHX3_3
    SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3 = SHX1_3(SHX2_3, SHX3_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
    SHX0_3 = ipairs
    SHX1_3 = SHX11_1.players
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = RageUI
      SHX6_3 = SHX6_3.ButtonWithStyle
      SHX7_3 = SHX5_3.name
      SHX8_3 = ""
      SHX9_3 = {}
      SHX10_3 = SHX5_3.isHost
      if SHX10_3 then
        SHX10_3 = "HOST"
        if SHX10_3 then
          goto SHX_LABEL_31
        end
      end
      SHX10_3 = "CREW"
      -- [FIX IF ERROR] Move ::SHX_LABEL_31:: outside nested blocks until all 'goto SHX_LABEL_31' can see it
      ::SHX_LABEL_31::
      SHX9_3.RightLabel = SHX10_3
      SHX10_3 = true
      function SHX11_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
    end
    SHX0_3 = SHX11_1.blockInteraction
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "Waiting for heist preparation..."
      SHX0_3(SHX1_3)
    else
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "Heist Options"
      SHX0_3(SHX1_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Button
      SHX1_3 = "~b~Buy Full Armour"
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
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "9c0126b3c7"
          SHX3_4(SHX4_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      SHX0_3 = SHX11_1.isHost
      if SHX0_3 then
        SHX0_3 = SHX11_1.players
        SHX0_3 = #SHX0_3
        if SHX0_3 < 10 then
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.Button
          SHX1_3 = "~b~Invite Player"
          SHX2_3 = ""
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
              SHX3_4 = CMG
              SHX3_4 = SHX3_4.clientPrompt
              SHX4_4 = "User's Perm Id"
              SHX5_4 = ""
              function SHX6_4(SHX0_5)
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX1_5, SHX2_5, SHX3_5, SHX4_5
                SHX1_5 = tonumber
                SHX2_5 = SHX0_5
                SHX1_5 = SHX1_5(SHX2_5)
                if SHX1_5 then
                  SHX2_5 = TriggerServerEvent
                  SHX3_5 = "e35887ab2f"
                  SHX4_5 = SHX1_5
                  SHX2_5(SHX3_5, SHX4_5)
                end
              end
              SHX3_4(SHX4_4, SHX5_4, SHX6_4)
            end
          end
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        end
        SHX0_3 = SHX0_1.setups
        SHX1_3 = SHX11_1.setupNumber
        SHX0_3 = SHX0_3[SHX1_3]
        SHX1_3 = CMG
        SHX2_3 = "getClientGangRpHeistSetupCostAfterDiscount"
        SHX1_3 = SHX1_3[SHX2_3]
        SHX2_3 = SHX0_3.cost
        SHX1_3 = SHX1_3(SHX2_3)
        SHX2_3 = RageUI
        SHX2_3 = SHX2_3.Button
        SHX3_3 = string
        SHX3_3 = SHX3_3.format
        SHX4_3 = "~b~Start Heist (\194\163%s)"
        SHX5_3 = getMoneyStringFormatted
        SHX6_3 = SHX1_3
        SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3 = SHX5_3(SHX6_3)
        SHX3_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
        SHX4_3 = ""
        SHX5_3 = true
        function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4, SHX5_4
          if SHX2_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "ed75e47264"
            SHX5_4 = SHX11_1.setupNumber
            SHX3_4(SHX4_4, SHX5_4)
          end
        end
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      else
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Separator
        SHX1_3 = "Waiting for host..."
        SHX0_3(SHX1_3)
      end
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1)
SHX16_1 = RMenu
SHX17_1 = SHX16_1
SHX16_1 = SHX16_1.Get
SHX18_1 = "bankheistssetup"
SHX19_1 = "mainmenu"
SHX16_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX17_1 = SHX16_1
SHX16_1 = SHX16_1.AddInstructionButton
SHX18_1 = {}
SHX19_1 = "~INPUT_CELLPHONE_CANCEL~"
SHX20_1 = "Exit Selection"
SHX18_1[1] = SHX19_1
SHX18_1[2] = SHX20_1
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RMenu
SHX17_1 = SHX16_1
SHX16_1 = SHX16_1.Get
SHX18_1 = "bankheistssetup"
SHX19_1 = "mainmenu"
SHX16_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX17_1 = SHX16_1
SHX16_1 = SHX16_1.AddInstructionButton
SHX18_1 = {}
SHX19_1 = "~INPUT_CELLPHONE_RIGHT~"
SHX20_1 = "Next Setup"
SHX18_1[1] = SHX19_1
SHX18_1[2] = SHX20_1
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RMenu
SHX17_1 = SHX16_1
SHX16_1 = SHX16_1.Get
SHX18_1 = "bankheistssetup"
SHX19_1 = "mainmenu"
SHX16_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX17_1 = SHX16_1
SHX16_1 = SHX16_1.AddInstructionButton
SHX18_1 = {}
SHX19_1 = "~INPUT_CELLPHONE_LEFT~"
SHX20_1 = "Previous Setup"
SHX18_1[1] = SHX19_1
SHX18_1[2] = SHX20_1
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "cbe753a39d"
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX11_1
  if not SHX2_2 then
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.CreateThreadNow
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX15_1
      SHX1_3 = false
      SHX0_3(SHX1_3)
    end
    SHX2_2(SHX3_2)
    SHX2_2 = assert
    SHX3_2 = SHX11_1
    SHX4_2 = "Attempted to set transition information to an invalid table"
    SHX2_2(SHX3_2, SHX4_2)
    SHX11_1.players = SHX0_2
    SHX11_1.setupNumber = SHX1_2
  else
    SHX11_1.players = SHX0_2
    SHX2_2 = SHX11_1.setupNumber
    if SHX2_2 ~= SHX1_2 then
      SHX2_2 = SHX11_1.isHost
      if not SHX2_2 then
        SHX2_2 = SHX13_1
        SHX3_2 = SHX1_2
        SHX2_2(SHX3_2)
      end
    end
  end
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "fcbc43097b"
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX14_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "ed75e47264"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = assert
  SHX1_2 = SHX11_1
  SHX2_2 = "Attempted to block interaction for an invalid transition"
  SHX0_2(SHX1_2, SHX2_2)
  SHX11_1.blockInteraction = true
  SHX0_2 = BeginTextCommandBusyspinnerOn
  SHX1_2 = "CELEB_WPLYRS"
  SHX0_2(SHX1_2)
  SHX0_2 = EndTextCommandBusyspinnerOn
  SHX1_2 = 4
  SHX0_2(SHX1_2)
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.Wait
  SHX1_2 = 15000
  SHX0_2(SHX1_2)
  SHX0_2 = BusyspinnerOff
  SHX0_2()
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "252fb6769b"
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX12_1
  if SHX1_2 then
    SHX1_2 = false
    SHX12_1 = SHX1_2
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = true
  SHX12_1 = SHX1_2
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  while true do
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX2_2 = SHX2_2 - SHX1_2
    SHX3_2 = 10000
    if not (SHX2_2 < SHX3_2) then
      break
    end
    SHX2_2 = SHX12_1
    if not SHX2_2 then
      return
    end
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.notify
    SHX3_2 = string
    SHX3_2 = SHX3_2.format
    SHX4_2 = "%s has invited you to a setup, press (~y~Y~w~) to accept (~r~L~w~) to refuse"
    SHX5_2 = SHX0_2
    SHX3_2, SHX4_2, SHX5_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = IsControlJustPressed
    SHX3_2 = 0
    SHX4_2 = 246
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = tCMG
      SHX2_2 = SHX2_2.notify
      SHX3_2 = "~g~Request Accepted"
      SHX2_2(SHX3_2)
      SHX2_2 = TriggerServerEvent
      SHX3_2 = "de439b7711"
      SHX2_2(SHX3_2)
      SHX2_2 = false
      SHX12_1 = SHX2_2
    else
      SHX2_2 = IsControlJustPressed
      SHX3_2 = 0
      SHX4_2 = 182
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if SHX2_2 then
        SHX2_2 = tCMG
        SHX2_2 = SHX2_2.notify
        SHX3_2 = "~g~Request Refused"
        SHX2_2(SHX3_2)
        SHX2_2 = false
        SHX12_1 = SHX2_2
      end
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = false
  SHX12_1 = SHX2_2
end
SHX16_1(SHX17_1, SHX18_1)
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX11_1
  if not SHX0_2 then
    SHX0_2 = SHX7_1
    if SHX0_2 then
      SHX0_2 = SHX7_1.isLeaving
      if not SHX0_2 then
        SHX0_2 = drawNativeNotification
        SHX1_2 = "Press ~INPUT_PICKUP~ to exit setup"
        SHX0_2(SHX1_2)
        SHX0_2 = DisableControlAction
        SHX1_2 = 0
        SHX2_2 = 38
        SHX3_2 = true
        SHX0_2(SHX1_2, SHX2_2, SHX3_2)
        SHX0_2 = IsDisabledControlJustPressed
        SHX1_2 = 0
        SHX2_2 = 38
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if SHX0_2 then
          SHX0_2 = TriggerServerEvent
          SHX1_2 = "6c3cf6a94e"
          SHX2_2 = false
          SHX0_2(SHX1_2, SHX2_2)
          SHX7_1.isLeaving = true
        end
      end
    else
      SHX0_2 = drawNativeNotification
      SHX1_2 = "Press ~INPUT_PICKUP~ to enter setups"
      SHX0_2(SHX1_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 38
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = IsDisabledControlJustPressed
      SHX1_2 = 0
      SHX2_2 = 38
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.isEmergencyService
        SHX0_2 = SHX0_2()
        if SHX0_2 then
          SHX0_2 = notify
          SHX1_2 = "~r~You can not be clocked on to enter the bank heist."
          SHX0_2(SHX1_2)
        else
          SHX0_2 = Citizen
          SHX0_2 = SHX0_2.CreateThreadNow
          function SHX1_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3
            SHX0_3 = SHX15_1
            SHX1_3 = true
            SHX0_3(SHX1_3)
          end
          SHX0_2(SHX1_2)
        end
      end
    end
  end
end
SHX17_1 = tCMG
SHX17_1 = SHX17_1.addMarker
SHX18_1 = SHX2_1.x
SHX19_1 = SHX2_1.y
SHX20_1 = SHX2_1.z
SHX21_1 = 0.5
SHX22_1 = 0.5
SHX23_1 = 0.5
SHX24_1 = 10
SHX25_1 = 255
SHX26_1 = 81
SHX27_1 = 170
SHX28_1 = 50
SHX29_1 = 2
SHX30_1 = false
SHX31_1 = false
SHX32_1 = true
SHX17_1(SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1)
SHX17_1 = CMG
SHX17_1 = SHX17_1.addBlipContext
SHX18_1 = "Civilian"
SHX19_1 = tCMG
SHX19_1 = SHX19_1.addBlip
SHX20_1 = SHX2_1.x
SHX21_1 = SHX2_1.y
SHX22_1 = SHX2_1.z
SHX23_1 = 363
SHX24_1 = 26
SHX25_1 = "Heist Setup Factory"
SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1)
SHX17_1(SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1)
SHX17_1 = CMG
SHX17_1 = SHX17_1.createArea
SHX18_1 = "bankheists_select_setups"
SHX19_1 = SHX2_1
SHX20_1 = 2.0
SHX21_1 = 5.0
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX24_1 = SHX16_1
SHX25_1 = nil
SHX17_1(SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1)
SHX17_1 = {}
SHX17_1.state = "INACTIVE"
SHX17_1.lastStateChange = 0
SHX18_1 = {}
SHX18_1.scaleform = nil
SHX18_1.buttons = nil
SHX18_1.lives = nil
SHX18_1.text = nil
SHX18_1.type = nil
SHX17_1.hacking = SHX18_1
SHX18_1 = {}
SHX17_1.trollies = SHX18_1
SHX17_1.lastHurt = 0
SHX17_1.lootedAmount = 0
SHX17_1.alarmDisabled = false
SHX18_1 = false
SHX19_1 = false
SHX20_1 = false
SHX21_1 = CMG
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX11_1
  SHX0_2 = nil ~= SHX0_2
  return SHX0_2
end
SHX21_1.isPlayerInBankHeistSetup = SHX22_1
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = print
  SHX2_2 = string
  SHX2_2 = SHX2_2.format
  SHX3_2 = "[BankHeist] %s"
  SHX4_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
SHX22_1 = RegisterNetEvent
SHX23_1 = "f074d4afdf"
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.announceMpSmallMsg
  SHX1_2 = "ALERT"
  SHX2_2 = "An alarm has been triggered at the Bank of England"
  SHX3_2 = 9
  SHX4_2 = 10000
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = RegisterNetEvent
SHX23_1 = "bb09d4cd38"
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX17_1.alarmDisabled = SHX0_2
end
SHX22_1(SHX23_1, SHX24_1)
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "police.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = SHX17_1.alarmDisabled
    if not SHX0_2 then
      SHX0_2 = SHX17_1.state
      if "INACTIVE" ~= SHX0_2 then
        SHX0_2 = drawNativeNotification
        SHX1_2 = "Press ~INPUT_PICKUP~ to turn off the alarm"
        SHX0_2(SHX1_2)
      end
    end
  end
end
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "police.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = SHX17_1.alarmDisabled
    if not SHX0_2 then
      SHX0_2 = SHX17_1.state
      if "INACTIVE" ~= SHX0_2 then
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 0
        SHX2_2 = 38
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if SHX0_2 then
          SHX0_2 = TriggerServerEvent
          SHX1_2 = "bb09d4cd38"
          SHX0_2(SHX1_2)
        end
      end
    end
  end
end
SHX24_1 = CMG
SHX24_1 = SHX24_1.createArea
SHX25_1 = "bankheists_alarm_disable"
SHX26_1 = SHX0_1.alarmDisablePos
SHX27_1 = 2.0
SHX28_1 = 2.0
SHX29_1 = SHX22_1
function SHX30_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX31_1 = SHX23_1
SHX32_1 = nil
SHX24_1(SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1)
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = GetResourceKvpInt
  SHX1_2 = "cmg_bankheists_lastdone"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX1_2 = type
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if "number" == SHX1_2 and SHX0_2 > 0 then
      SHX1_2 = SHX0_1.playerDelayBetweenHeists
      SHX2_2 = GetCloudTimeAsInt
      SHX2_2 = SHX2_2()
      SHX2_2 = SHX2_2 - SHX0_2
      SHX1_2 = SHX1_2 - SHX2_2
      SHX2_2 = math
      SHX2_2 = SHX2_2.floor
      SHX3_2 = SHX1_2 / 60
      SHX2_2 = SHX2_2(SHX3_2)
      SHX3_2 = math
      SHX3_2 = SHX3_2.floor
      SHX4_2 = SHX2_2 / 60
      SHX3_2 = SHX3_2(SHX4_2)
      SHX4_2 = math
      SHX4_2 = SHX4_2.floor
      SHX5_2 = SHX3_2 / 24
      SHX4_2 = SHX4_2(SHX5_2)
      if SHX4_2 > 0 then
        SHX5_2 = SHX3_2 * 60
        SHX2_2 = SHX2_2 - SHX5_2
        SHX5_2 = SHX4_2 * 24
        SHX3_2 = SHX3_2 - SHX5_2
        SHX5_2 = string
        SHX5_2 = SHX5_2.format
        SHX6_2 = "%dd %dh %dm"
        SHX7_2 = SHX4_2
        SHX8_2 = SHX3_2
        SHX9_2 = SHX2_2
        return SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      elseif SHX3_2 > 0 then
        SHX5_2 = SHX3_2 * 60
        SHX2_2 = SHX2_2 - SHX5_2
        SHX5_2 = string
        SHX5_2 = SHX5_2.format
        SHX6_2 = "%dh %dm"
        SHX7_2 = SHX3_2
        SHX8_2 = SHX2_2
        return SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      else
        SHX5_2 = string
        SHX5_2 = SHX5_2.format
        SHX6_2 = "%dm"
        SHX7_2 = SHX2_2
        return SHX5_2(SHX6_2, SHX7_2)
      end
  end
  else
    SHX1_2 = "no time"
    return SHX1_2
  end
end
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = GetResourceKvpInt
  SHX1_2 = "cmg_bankheists_lastdone"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX1_2 = type
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if "number" == SHX1_2 and SHX0_2 > 0 then
      SHX1_2 = GetCloudTimeAsInt
      SHX1_2 = SHX1_2()
      SHX1_2 = SHX1_2 - SHX0_2
      SHX2_2 = 1800
      if not (SHX1_2 < SHX2_2) then
        SHX2_2 = SHX0_1.playerDelayBetweenHeists
        if not (SHX1_2 > SHX2_2) then
          goto SHX_LABEL_26
        end
      end
      SHX2_2 = false
      return SHX2_2
      goto SHX_LABEL_39
      -- [FIX IF ERROR] Move ::SHX_LABEL_26:: outside nested blocks until all 'goto SHX_LABEL_26' can see it
      ::SHX_LABEL_26::
      SHX2_2 = drawNativeNotification
      SHX3_2 = string
      SHX3_2 = SHX3_2.format
      SHX4_2 = "You can not interact with a heist for another %s"
      SHX5_2 = SHX24_1
      SHX5_2 = SHX5_2()
      SHX3_2, SHX4_2, SHX5_2 = SHX3_2(SHX4_2, SHX5_2)
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX2_2 = true
      return SHX2_2
  end
  else
    SHX1_2 = false
    return SHX1_2
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_39:: outside nested blocks until all 'goto SHX_LABEL_39' can see it
  ::SHX_LABEL_39::
end
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SetResourceKvpInt
  SHX1_2 = "cmg_bankheists_lastdone"
  SHX2_2 = GetCloudTimeAsInt
  SHX2_2 = SHX2_2()
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setPlayerCombatTimer
  SHX1_2 = 300
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SetScaleformMovieAsNoLongerNeeded
  SHX2_2 = SHX17_1.hacking
  SHX2_2 = SHX2_2.scaleform
  SHX1_2(SHX2_2)
  SHX1_2 = SetScaleformMovieAsNoLongerNeeded
  SHX2_2 = SHX17_1.hacking
  SHX2_2 = SHX2_2.buttons
  SHX1_2(SHX2_2)
  SHX1_2 = SHX17_1.hacking
  SHX1_2.scaleform = nil
  SHX1_2 = SHX17_1.hacking
  SHX1_2.buttons = nil
  SHX1_2 = SHX17_1.hacking
  SHX1_2.lives = nil
  SHX1_2 = SHX17_1.hacking
  SHX1_2.text = nil
  SHX1_2 = SHX17_1.hacking
  SHX1_2.type = nil
  if SHX0_2 then
    SHX1_2 = SetPlayerControl
    SHX2_2 = PlayerId
    SHX2_2 = SHX2_2()
    SHX3_2 = true
    SHX4_2 = 0
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = FreezeEntityPosition
    SHX2_2 = PlayerPedId
    SHX2_2 = SHX2_2()
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.showAllDisplays
    SHX2_2 = "bankheisthacking"
    SHX1_2(SHX2_2)
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "42aa1d4e55"
    SHX1_2(SHX2_2)
  end
end
function SHX28_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX27_1
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = true
  SHX1_2 = TriggerEvent
  SHX2_2 = "ultra-voltlab"
  SHX3_2 = 60
  function SHX4_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX2_3 = false
    SHX0_2 = SHX2_3
    SHX2_3 = SHX21_1
    SHX3_3 = string
    SHX3_3 = SHX3_3.format
    SHX4_3 = "Received voltlab callback (status: %sd message: %s)"
    SHX5_3 = SHX0_3
    SHX6_3 = SHX1_3
    SHX3_3, SHX4_3, SHX5_3, SHX6_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    if 1 == SHX0_3 then
      SHX2_3 = SHX26_1
      SHX2_3()
      SHX2_3 = TriggerServerEvent
      SHX3_3 = "59cbb58053"
      SHX2_3(SHX3_3)
    else
      SHX2_3 = TriggerServerEvent
      SHX3_3 = "42aa1d4e55"
      SHX2_3(SHX3_3)
    end
    SHX2_3 = SetPlayerControl
    SHX3_3 = PlayerId
    SHX3_3 = SHX3_3()
    SHX4_3 = true
    SHX5_3 = 0
    SHX2_3(SHX3_3, SHX4_3, SHX5_3)
    SHX2_3 = FreezeEntityPosition
    SHX3_3 = PlayerPedId
    SHX3_3 = SHX3_3()
    SHX4_3 = false
    SHX2_3(SHX3_3, SHX4_3)
    SHX2_3 = CMG
    SHX2_3 = SHX2_3.showAllDisplays
    SHX3_3 = "bankheisthacking"
    SHX2_3(SHX3_3)
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SHX17_1.hacking
  SHX1_2.type = 2
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    while true do
      SHX0_3 = SHX0_2
      if not SHX0_3 then
        break
      end
      SHX0_3 = DisablePlayerFiring
      SHX1_3 = PlayerId
      SHX1_3 = SHX1_3()
      SHX2_3 = true
      SHX0_3(SHX1_3, SHX2_3)
      SHX0_3 = DisableControlAction
      SHX1_3 = 0
      SHX2_3 = 24
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = DisableControlAction
      SHX1_3 = 0
      SHX2_3 = 25
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = Citizen
      SHX0_3 = SHX0_3.Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX1_2(SHX2_2)
end
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hideAllDisplays
  SHX1_2 = "bankheisthacking"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestScaleformMovieInteractive
  SHX1_2 = "HACKING_PC"
  SHX0_2 = SHX0_2(SHX1_2)
  while true do
    SHX1_2 = HasScaleformMovieLoaded
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      break
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = SHX17_1.hacking
  SHX1_2.scaleform = SHX0_2
  SHX1_2 = SetPlayerControl
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX3_2 = false
  SHX4_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX17_1.hacking
  SHX2_2 = SHX2_2.scaleform
  SHX3_2 = "SET_LABELS"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "Local Disk (C:)"
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "Network"
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "External Device (F:)"
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "sonic.exe"
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "keyhack.exe"
  SHX1_2(SHX2_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX17_1.hacking
  SHX2_2 = SHX2_2.scaleform
  SHX3_2 = "SET_BACKGROUND"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 0
  SHX1_2(SHX2_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX17_1.hacking
  SHX2_2 = SHX2_2.scaleform
  SHX3_2 = "ADD_PROGRAM"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ScaleformMovieMethodAddParamFloat
  SHX2_2 = 1.0
  SHX1_2(SHX2_2)
  SHX1_2 = ScaleformMovieMethodAddParamFloat
  SHX2_2 = 4.0
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "My Computer"
  SHX1_2(SHX2_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX17_1.hacking
  SHX2_2 = SHX2_2.scaleform
  SHX3_2 = "ADD_PROGRAM"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ScaleformMovieMethodAddParamFloat
  SHX2_2 = 6.0
  SHX1_2(SHX2_2)
  SHX1_2 = ScaleformMovieMethodAddParamFloat
  SHX2_2 = 6.0
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "Power Off"
  SHX1_2(SHX2_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX17_1.hacking
  SHX2_2 = SHX2_2.scaleform
  SHX3_2 = "SET_COLUMN_SPEED"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 0
  SHX1_2(SHX2_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 255
  SHX1_2(SHX2_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX17_1.hacking
  SHX2_2 = SHX2_2.scaleform
  SHX3_2 = "SET_COLUMN_SPEED"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 1
  SHX1_2(SHX2_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 255
  SHX1_2(SHX2_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX17_1.hacking
  SHX2_2 = SHX2_2.scaleform
  SHX3_2 = "SET_COLUMN_SPEED"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 2
  SHX1_2(SHX2_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 255
  SHX1_2(SHX2_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX17_1.hacking
  SHX2_2 = SHX2_2.scaleform
  SHX3_2 = "SET_COLUMN_SPEED"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 3
  SHX1_2(SHX2_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 255
  SHX1_2(SHX2_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX17_1.hacking
  SHX2_2 = SHX2_2.scaleform
  SHX3_2 = "SET_COLUMN_SPEED"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 4
  SHX1_2(SHX2_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 255
  SHX1_2(SHX2_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX17_1.hacking
  SHX2_2 = SHX2_2.scaleform
  SHX3_2 = "SET_COLUMN_SPEED"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 5
  SHX1_2(SHX2_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 255
  SHX1_2(SHX2_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX17_1.hacking
  SHX2_2 = SHX2_2.scaleform
  SHX3_2 = "SET_COLUMN_SPEED"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 6
  SHX1_2(SHX2_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 255
  SHX1_2(SHX2_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX17_1.hacking
  SHX2_2 = SHX2_2.scaleform
  SHX3_2 = "SET_COLUMN_SPEED"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 7
  SHX1_2(SHX2_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 255
  SHX1_2(SHX2_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = SHX17_1.hacking
  SHX1_2.lives = 5
  SHX1_2 = SHX17_1.hacking
  SHX2_2 = SHX0_1.terminalHack
  SHX2_2 = SHX2_2.words
  SHX3_2 = math
  SHX3_2 = SHX3_2.random
  SHX4_2 = 1
  SHX5_2 = SHX0_1.terminalHack
  SHX5_2 = SHX5_2.words
  SHX5_2 = #SHX5_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX2_2 = SHX2_2[SHX3_2]
  SHX1_2.text = SHX2_2
  SHX1_2 = SHX17_1.hacking
  SHX1_2.type = 1
end
function SHX30_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = DisablePlayerFiring
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 24
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 25
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DrawScaleformMovieFullscreen
  SHX1_2 = SHX17_1.hacking
  SHX1_2 = SHX1_2.scaleform
  SHX2_2 = 255
  SHX3_2 = 255
  SHX4_2 = 255
  SHX5_2 = 255
  SHX6_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = DrawScaleformMovieFullscreen
  SHX1_2 = SHX17_1.hacking
  SHX1_2 = SHX1_2.buttons
  SHX2_2 = 255
  SHX3_2 = 255
  SHX4_2 = 255
  SHX5_2 = 255
  SHX6_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = BeginScaleformMovieMethod
  SHX1_2 = SHX17_1.hacking
  SHX1_2 = SHX1_2.scaleform
  SHX2_2 = "SET_CURSOR"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = ScaleformMovieMethodAddParamFloat
  SHX1_2 = GetDisabledControlNormal
  SHX2_2 = 0
  SHX3_2 = 239
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = ScaleformMovieMethodAddParamFloat
  SHX1_2 = GetDisabledControlNormal
  SHX2_2 = 0
  SHX3_2 = 240
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = EndScaleformMovieMethod
  SHX0_2()
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 24
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = IsDisabledControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 24
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = BeginScaleformMovieMethod
    SHX1_2 = SHX17_1.hacking
    SHX1_2 = SHX1_2.scaleform
    SHX2_2 = "SET_INPUT_EVENT_SELECT"
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = SHX17_1.hacking
    SHX1_2 = EndScaleformMovieMethodReturnValue
    SHX1_2 = SHX1_2()
    SHX0_2.returnValue = SHX1_2
    SHX0_2 = PlaySoundFrontend
    SHX1_2 = -1
    SHX2_2 = "HACKING_CLICK"
    SHX3_2 = ""
    SHX4_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  end
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 25
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = IsDisabledControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 25
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = BeginScaleformMovieMethod
    SHX1_2 = SHX17_1.hacking
    SHX1_2 = SHX1_2.scaleform
    SHX2_2 = "SET_INPUT_EVENT_BACK"
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = EndScaleformMovieMethod
    SHX0_2()
    SHX0_2 = PlaySoundFrontend
    SHX1_2 = -1
    SHX2_2 = "HACKING_CLICK"
    SHX3_2 = ""
    SHX4_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  end
  SHX0_2 = SHX17_1.hacking
  SHX0_2 = SHX0_2.lives
  if SHX0_2 <= 0 then
    SHX0_2 = SHX27_1
    SHX1_2 = true
    SHX0_2(SHX1_2)
    return
  end
  SHX0_2 = IsScaleformMovieMethodReturnValueReady
  SHX1_2 = SHX17_1.hacking
  SHX1_2 = SHX1_2.returnValue
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = GetScaleformMovieMethodReturnValueInt
    SHX1_2 = SHX17_1.hacking
    SHX1_2 = SHX1_2.returnValue
    SHX0_2 = SHX0_2(SHX1_2)
    if 82 == SHX0_2 then
      SHX1_2 = PlaySoundFrontend
      SHX2_2 = -1
      SHX3_2 = "HACKING_CLICK_BAD"
      SHX4_2 = ""
      SHX5_2 = false
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    elseif 83 == SHX0_2 then
      SHX1_2 = BeginScaleformMovieMethod
      SHX2_2 = SHX17_1.hacking
      SHX2_2 = SHX2_2.scaleform
      SHX3_2 = "RUN_PROGRAM"
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = ScaleformMovieMethodAddParamFloat
      SHX2_2 = 83.0
      SHX1_2(SHX2_2)
      SHX1_2 = EndScaleformMovieMethod
      SHX1_2()
      SHX1_2 = BeginScaleformMovieMethod
      SHX2_2 = SHX17_1.hacking
      SHX2_2 = SHX2_2.scaleform
      SHX3_2 = "SET_ROULETTE_WORD"
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = _ENV
      SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
      SHX1_2 = SHX1_2[SHX2_2]
      SHX2_2 = SHX17_1.hacking
      SHX2_2 = SHX2_2.text
      SHX1_2(SHX2_2)
      SHX1_2 = EndScaleformMovieMethod
      SHX1_2()
    elseif 87 == SHX0_2 then
      SHX1_2 = SHX17_1.hacking
      SHX2_2 = SHX17_1.hacking
      SHX2_2 = SHX2_2.lives
      SHX2_2 = SHX2_2 - 1
      SHX1_2.lives = SHX2_2
      SHX1_2 = BeginScaleformMovieMethod
      SHX2_2 = SHX17_1.hacking
      SHX2_2 = SHX2_2.scaleform
      SHX3_2 = "SET_ROULETTE_WORD"
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = _ENV
      SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString"
      SHX1_2 = SHX1_2[SHX2_2]
      SHX2_2 = SHX17_1.hacking
      SHX2_2 = SHX2_2.text
      SHX1_2(SHX2_2)
      SHX1_2 = EndScaleformMovieMethod
      SHX1_2()
      SHX1_2 = BeginScaleformMovieMethod
      SHX2_2 = SHX17_1.hacking
      SHX2_2 = SHX2_2.scaleform
      SHX3_2 = "SET_LIVES"
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = ScaleformMovieMethodAddParamInt
      SHX2_2 = SHX17_1.hacking
      SHX2_2 = SHX2_2.lives
      SHX1_2(SHX2_2)
      SHX1_2 = ScaleformMovieMethodAddParamInt
      SHX2_2 = 5
      SHX1_2(SHX2_2)
      SHX1_2 = EndScaleformMovieMethod
      SHX1_2()
      SHX1_2 = PlaySoundFrontend
      SHX2_2 = -1
      SHX3_2 = "HACKING_CLICK_BAD"
      SHX4_2 = ""
      SHX5_2 = false
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    elseif 86 == SHX0_2 then
      SHX1_2 = PlaySoundFrontend
      SHX2_2 = -1
      SHX3_2 = "HACKING_SUCCESS"
      SHX4_2 = ""
      SHX5_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = Citizen
      SHX1_2 = SHX1_2.CreateThread
      function SHX2_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3
        SHX0_3 = BeginScaleformMovieMethod
        SHX1_3 = SHX17_1.hacking
        SHX1_3 = SHX1_3.scaleform
        SHX2_3 = "SET_ROULETTE_OUTCOME"
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = ScaleformMovieMethodAddParamBool
        SHX1_3 = true
        SHX0_3(SHX1_3)
        SHX0_3 = _ENV
        SHX1_3 = "ScaleformMovieMethodAddParamTextureNameString"
        SHX0_3 = SHX0_3[SHX1_3]
        SHX1_3 = "BRUTEFORCE SUCCESSFUL!"
        SHX0_3(SHX1_3)
        SHX0_3 = EndScaleformMovieMethod
        SHX0_3()
        SHX0_3 = Citizen
        SHX0_3 = SHX0_3.Wait
        SHX1_3 = 2500
        SHX0_3(SHX1_3)
        SHX0_3 = BeginScaleformMovieMethod
        SHX1_3 = SHX17_1.hacking
        SHX1_3 = SHX1_3.scaleform
        SHX2_3 = "CLOSE_APP"
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = EndScaleformMovieMethod
        SHX0_3()
        SHX0_3 = BeginScaleformMovieMethod
        SHX1_3 = SHX17_1.hacking
        SHX1_3 = SHX1_3.scaleform
        SHX2_3 = "OPEN_LOADING_PROGRESS"
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = ScaleformMovieMethodAddParamBool
        SHX1_3 = true
        SHX0_3(SHX1_3)
        SHX0_3 = EndScaleformMovieMethod
        SHX0_3()
        SHX0_3 = BeginScaleformMovieMethod
        SHX1_3 = SHX17_1.hacking
        SHX1_3 = SHX1_3.scaleform
        SHX2_3 = "SET_LOADING_PROGRESS"
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = ScaleformMovieMethodAddParamInt
        SHX1_3 = 35
        SHX0_3(SHX1_3)
        SHX0_3 = EndScaleformMovieMethod
        SHX0_3()
        SHX0_3 = BeginScaleformMovieMethod
        SHX1_3 = SHX17_1.hacking
        SHX1_3 = SHX1_3.scaleform
        SHX2_3 = "SET_LOADING_TIME"
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = ScaleformMovieMethodAddParamInt
        SHX1_3 = 35
        SHX0_3(SHX1_3)
        SHX0_3 = EndScaleformMovieMethod
        SHX0_3()
        SHX0_3 = BeginScaleformMovieMethod
        SHX1_3 = SHX17_1.hacking
        SHX1_3 = SHX1_3.scaleform
        SHX2_3 = "SET_LOADING_MESSAGE"
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = _ENV
        SHX1_3 = "ScaleformMovieMethodAddParamTextureNameString"
        SHX0_3 = SHX0_3[SHX1_3]
        SHX1_3 = "Writing data to buffer.."
        SHX0_3(SHX1_3)
        SHX0_3 = ScaleformMovieMethodAddParamFloat
        SHX1_3 = 2.0
        SHX0_3(SHX1_3)
        SHX0_3 = EndScaleformMovieMethod
        SHX0_3()
        SHX0_3 = Citizen
        SHX0_3 = SHX0_3.Wait
        SHX1_3 = 2500
        SHX0_3(SHX1_3)
        SHX0_3 = BeginScaleformMovieMethod
        SHX1_3 = SHX17_1.hacking
        SHX1_3 = SHX1_3.scaleform
        SHX2_3 = "SET_LOADING_MESSAGE"
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = _ENV
        SHX1_3 = "ScaleformMovieMethodAddParamTextureNameString"
        SHX0_3 = SHX0_3[SHX1_3]
        SHX1_3 = "Executing malicious code.."
        SHX0_3(SHX1_3)
        SHX0_3 = ScaleformMovieMethodAddParamFloat
        SHX1_3 = 2.0
        SHX0_3(SHX1_3)
        SHX0_3 = EndScaleformMovieMethod
        SHX0_3()
        SHX0_3 = BeginScaleformMovieMethod
        SHX1_3 = SHX17_1.hacking
        SHX1_3 = SHX1_3.scaleform
        SHX2_3 = "SET_LOADING_TIME"
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = ScaleformMovieMethodAddParamInt
        SHX1_3 = 15
        SHX0_3(SHX1_3)
        SHX0_3 = EndScaleformMovieMethod
        SHX0_3()
        SHX0_3 = BeginScaleformMovieMethod
        SHX1_3 = SHX17_1.hacking
        SHX1_3 = SHX1_3.scaleform
        SHX2_3 = "SET_LOADING_PROGRESS"
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = ScaleformMovieMethodAddParamInt
        SHX1_3 = 75
        SHX0_3(SHX1_3)
        SHX0_3 = EndScaleformMovieMethod
        SHX0_3()
        SHX0_3 = Citizen
        SHX0_3 = SHX0_3.Wait
        SHX1_3 = 1500
        SHX0_3(SHX1_3)
        SHX0_3 = SHX28_1
        SHX0_3()
      end
      SHX1_2(SHX2_2)
    elseif 6 == SHX0_2 then
      SHX1_2 = Citizen
      SHX1_2 = SHX1_2.Wait
      SHX2_2 = 500
      SHX1_2(SHX2_2)
      SHX1_2 = SHX27_1
      SHX2_2 = true
      SHX1_2(SHX2_2)
    end
  end
end
function SHX31_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX17_1.hacking
  SHX1_2 = RequestScaleformMovie
  SHX2_2 = "instructional_buttons"
  SHX1_2 = SHX1_2(SHX2_2)
  SHX0_2.buttons = SHX1_2
  while true do
    SHX0_2 = HasScaleformMovieLoaded
    SHX1_2 = SHX17_1.hacking
    SHX1_2 = SHX1_2.buttons
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      break
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = BeginScaleformMovieMethod
  SHX1_2 = SHX17_1.hacking
  SHX1_2 = SHX1_2.buttons
  SHX2_2 = "CLEAR_ALL"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = EndScaleformMovieMethod
  SHX0_2()
  SHX0_2 = BeginScaleformMovieMethod
  SHX1_2 = SHX17_1.hacking
  SHX1_2 = SHX1_2.buttons
  SHX2_2 = "SET_DATA_SLOT"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = ScaleformMovieMethodAddParamInt
  SHX1_2 = 0
  SHX0_2(SHX1_2)
  SHX0_2 = _ENV
  SHX1_2 = "ScaleformMovieMethodAddParamPlayerNameString"
  SHX0_2 = SHX0_2[SHX1_2]
  SHX1_2 = "~INPUT_ATTACK~"
  SHX0_2(SHX1_2)
  SHX0_2 = BeginTextCommandScaleformString
  SHX1_2 = "STRING"
  SHX0_2(SHX1_2)
  SHX0_2 = AddTextComponentSubstringKeyboardDisplay
  SHX1_2 = "Click / Select"
  SHX0_2(SHX1_2)
  SHX0_2 = EndTextCommandScaleformString
  SHX0_2()
  SHX0_2 = EndScaleformMovieMethod
  SHX0_2()
  SHX0_2 = BeginScaleformMovieMethod
  SHX1_2 = SHX17_1.hacking
  SHX1_2 = SHX1_2.buttons
  SHX2_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = EndScaleformMovieMethod
  SHX0_2()
  SHX0_2 = BeginScaleformMovieMethod
  SHX1_2 = SHX17_1.hacking
  SHX1_2 = SHX1_2.buttons
  SHX2_2 = "SET_BACKGROUND_COLOUR"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = ScaleformMovieMethodAddParamInt
  SHX1_2 = 0
  SHX0_2(SHX1_2)
  SHX0_2 = ScaleformMovieMethodAddParamInt
  SHX1_2 = 0
  SHX0_2(SHX1_2)
  SHX0_2 = ScaleformMovieMethodAddParamInt
  SHX1_2 = 0
  SHX0_2(SHX1_2)
  SHX0_2 = ScaleformMovieMethodAddParamInt
  SHX1_2 = 80
  SHX0_2(SHX1_2)
  SHX0_2 = EndScaleformMovieMethod
  SHX0_2()
end
SHX32_1 = RegisterNetEvent
SHX33_1 = "8ad4db1275"
function SHX34_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isPlayerInBankHeistSetup
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    return
  end
  SHX0_2 = FreezeEntityPosition
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX29_1
  SHX0_2()
  SHX0_2 = SHX31_1
  SHX0_2()
end
SHX32_1(SHX33_1, SHX34_1)
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX25_1
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    SHX1_2 = drawNativeNotification
    SHX2_2 = "Press ~INPUT_PICKUP~ to plant thermite"
    SHX1_2(SHX2_2)
    SHX1_2 = IsControlJustPressed
    SHX2_2 = 0
    SHX3_2 = 38
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = TriggerServerEvent
      SHX2_2 = "40cac5cefd"
      SHX3_2 = SHX0_2
      SHX1_2(SHX2_2, SHX3_2)
    end
  end
end
function SHX33_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX25_1
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = drawNativeNotification
    SHX1_2 = "Press ~INPUT_PICKUP~ to begin hacking"
    SHX0_2(SHX1_2)
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 0
    SHX2_2 = 38
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = TriggerServerEvent
      SHX1_2 = "8ad4db1275"
      SHX0_2(SHX1_2)
    end
  end
end
function SHX34_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX25_1
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = drawNativeNotification
    SHX1_2 = "Press ~INPUT_PICKUP~ to open the safe"
    SHX0_2(SHX1_2)
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 0
    SHX2_2 = 38
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = TriggerServerEvent
      SHX1_2 = "13c85b0cd6"
      SHX0_2(SHX1_2)
    end
  end
end
function SHX35_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = SHX17_1.trollies
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX3_2 = SHX2_2.handle
    if SHX3_2 then
      SHX3_2 = tonumber
      SHX4_2 = SHX2_2.state
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        SHX3_2 = DeleteEntity
        SHX4_2 = SHX2_2.handle
        SHX3_2(SHX4_2)
        SHX2_2.handle = nil
      end
      return
    else
      SHX3_2 = tonumber
      SHX4_2 = SHX2_2.state
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        return
      end
    end
  end
  SHX3_2 = SHX20_1
  if not SHX3_2 then
    return
  end
  if SHX2_2 then
    SHX3_2 = SHX2_2.state
    if "LOOTED" == SHX3_2 then
      SHX3_2 = 769923921
      if SHX3_2 then
        goto SHX_LABEL_38
      end
    end
  end
  SHX3_2 = SHX1_2.model
  -- [FIX IF ERROR] Move ::SHX_LABEL_38:: outside nested blocks until all 'goto SHX_LABEL_38' can see it
  ::SHX_LABEL_38::
  SHX4_2 = IsModelValid
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if SHX4_2 then
    SHX4_2 = HasModelLoaded
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      goto SHX_LABEL_52
    end
  end
  SHX4_2 = RequestModel
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_52:: outside nested blocks until all 'goto SHX_LABEL_52' can see it
  ::SHX_LABEL_52::
  SHX4_2 = GetInteriorAtCoords
  SHX5_2 = SHX1_2.position
  SHX5_2 = SHX5_2.x
  SHX6_2 = SHX1_2.position
  SHX6_2 = SHX6_2.y
  SHX7_2 = SHX1_2.position
  SHX7_2 = SHX7_2.z
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = IsValidInterior
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  if SHX5_2 then
    SHX5_2 = IsInteriorReady
    SHX6_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      goto SHX_LABEL_71
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_71:: outside nested blocks until all 'goto SHX_LABEL_71' can see it
  ::SHX_LABEL_71::
  SHX5_2 = CreateObjectNoOffset
  SHX6_2 = SHX3_2
  SHX7_2 = SHX1_2.position
  SHX7_2 = SHX7_2.x
  SHX8_2 = SHX1_2.position
  SHX8_2 = SHX8_2.y
  SHX9_2 = SHX1_2.position
  SHX9_2 = SHX9_2.z
  SHX9_2 = SHX9_2 - 0.53
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX6_2 = FreezeEntityPosition
  SHX7_2 = SHX5_2
  SHX8_2 = true
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SHX1_2.heading
  if 0 ~= SHX6_2 then
    SHX6_2 = SetEntityHeading
    SHX7_2 = SHX5_2
    SHX8_2 = GetEntityHeading
    SHX9_2 = SHX5_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX9_2 = SHX1_2.heading
    SHX8_2 = SHX8_2 + SHX9_2
    SHX6_2(SHX7_2, SHX8_2)
  end
  SHX6_2 = SetModelAsNoLongerNeeded
  SHX7_2 = SHX3_2
  SHX6_2(SHX7_2)
  SHX6_2 = SHX21_1
  SHX7_2 = string
  SHX7_2 = SHX7_2.format
  SHX8_2 = "Created trolly %d with model %d"
  SHX9_2 = SHX0_2
  SHX10_2 = SHX3_2
  SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  if SHX2_2 then
    SHX2_2.handle = SHX5_2
    SHX2_2.config = SHX1_2
  else
    SHX6_2 = SHX17_1.trollies
    SHX7_2 = {}
    SHX7_2.handle = SHX5_2
    SHX7_2.config = SHX1_2
    SHX7_2.state = nil
    SHX6_2[SHX0_2] = SHX7_2
  end
end
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = ipairs
  SHX1_2 = SHX0_1.trollies
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX35_1
    SHX7_2 = SHX4_2
    SHX8_2 = SHX5_2
    SHX6_2(SHX7_2, SHX8_2)
  end
  SHX0_2 = SHX17_1.state
  if "DONE_HACKING" ~= SHX0_2 then
    return
  end
  SHX0_2 = nil
  SHX1_2 = 10.0
  SHX2_2 = pairs
  SHX3_2 = SHX17_1.trollies
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.config
    if SHX8_2 then
      SHX8_2 = CMG
      SHX8_2 = SHX8_2.getPlayerCoords
      SHX8_2 = SHX8_2()
      SHX9_2 = SHX7_2.config
      SHX9_2 = SHX9_2.position
      SHX8_2 = SHX8_2 - SHX9_2
      SHX8_2 = #SHX8_2
      if SHX1_2 > SHX8_2 then
        SHX9_2 = SHX7_2.state
        if not SHX9_2 then
          SHX0_2 = SHX7_2
          SHX1_2 = SHX8_2
        end
      end
    end
  end
  if SHX0_2 and SHX1_2 < 2.0 then
    SHX2_2 = SHX25_1
    SHX2_2 = SHX2_2()
    if not SHX2_2 then
      SHX2_2 = drawNativeNotification
      SHX3_2 = string
      SHX3_2 = SHX3_2.format
      SHX4_2 = "Press ~INPUT_PICKUP~ to steal the %s"
      SHX5_2 = SHX0_2.config
      SHX5_2 = SHX5_2.name
      SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX3_2(SHX4_2, SHX5_2)
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      SHX2_2 = IsControlJustPressed
      SHX3_2 = 0
      SHX4_2 = 38
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if SHX2_2 then
        SHX2_2 = TriggerServerEvent
        SHX3_2 = "8939f8d91f"
        SHX4_2 = table
        SHX4_2 = SHX4_2.find
        SHX5_2 = SHX0_1.trollies
        SHX6_2 = SHX0_2.config
        SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX4_2(SHX5_2, SHX6_2)
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      end
    end
  end
  SHX2_2 = SHX20_1
  if SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.createTimerBars
    SHX2_2 = SHX2_2()
    SHX3_2 = SHX2_2.push
    SHX4_2 = "~g~TOTAL TAKE~w~"
    SHX5_2 = string
    SHX5_2 = SHX5_2.format
    SHX6_2 = "\194\163%s"
    SHX7_2 = getMoneyStringFormatted
    SHX8_2 = SHX17_1.lootedAmount
    SHX7_2, SHX8_2, SHX9_2 = SHX7_2(SHX8_2)
    SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX3_2 = SHX17_1.state
    if "DONE_HACKING" == SHX3_2 then
      SHX3_2 = SHX2_2.push
      SHX4_2 = "~b~TIME TO GAS~w~"
      SHX5_2 = tostring
      SHX6_2 = math
      SHX6_2 = SHX6_2.floor
      SHX7_2 = SHX0_1.timeToGas
      SHX8_2 = GetGameTimer
      SHX8_2 = SHX8_2()
      SHX9_2 = SHX17_1.lastStateChange
      SHX8_2 = SHX8_2 - SHX9_2
      SHX7_2 = SHX7_2 - SHX8_2
      SHX7_2 = SHX7_2 / 1000
      SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
      SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    end
    SHX3_2 = SHX2_2.draw
    SHX3_2()
  end
end
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = pairs
  SHX1_2 = SHX17_1.trollies
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DeleteEntity
    SHX7_2 = SHX5_2.handle
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX17_1.trollies = SHX0_2
end
SHX38_1 = RegisterNetEvent
SHX39_1 = "370ccb3860"
function SHX40_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = 0
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  while true do
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX3_2 = SHX3_2 - SHX2_2
    SHX4_2 = 37000
    if not (SHX3_2 < SHX4_2) then
      break
    end
    SHX3_2 = math
    SHX3_2 = SHX3_2.floor
    SHX4_2 = GetGameTimer
    SHX4_2 = SHX4_2()
    SHX4_2 = SHX4_2 - SHX2_2
    SHX4_2 = SHX4_2 / 37000
    SHX4_2 = SHX4_2 * SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = SHX3_2 - SHX1_2
    if SHX4_2 > 0 then
      SHX1_2 = SHX3_2
      SHX5_2 = SHX17_1.lootedAmount
      SHX5_2 = SHX5_2 + SHX4_2
      SHX17_1.lootedAmount = SHX5_2
    end
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 50
    SHX5_2(SHX6_2)
  end
end
SHX38_1(SHX39_1, SHX40_1)
SHX38_1 = RegisterNetEvent
SHX39_1 = "8939f8d91f"
function SHX40_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isPlayerInBankHeistSetup
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    return
  end
  SHX1_2 = SHX26_1
  SHX1_2()
  SHX1_2 = SHX17_1.trollies
  SHX1_2 = SHX1_2[SHX0_2]
  SHX2_2 = GetEntityModel
  SHX3_2 = SHX1_2.handle
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = GetEntityCoords
  SHX4_2 = SHX1_2.handle
  SHX5_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = GetEntityRotation
  SHX5_2 = SHX1_2.handle
  SHX6_2 = 2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = DeleteEntity
  SHX6_2 = SHX1_2.handle
  SHX5_2(SHX6_2)
  SHX1_2.handle = nil
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.requestEntitySpawn
  SHX6_2 = "bankheist_trolly"
  SHX7_2 = SHX2_2
  SHX8_2 = SHX3_2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = CreateObjectNoOffset
  SHX6_2 = SHX2_2
  SHX7_2 = SHX3_2.x
  SHX8_2 = SHX3_2.y
  SHX9_2 = SHX3_2.z
  SHX10_2 = true
  SHX11_2 = true
  SHX12_2 = true
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getPlayerPed
  SHX6_2 = SHX6_2()
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.getPlayerCoords
  SHX7_2 = SHX7_2()
  SHX8_2 = tCMG
  SHX8_2 = SHX8_2.setCanAnim
  SHX9_2 = false
  SHX8_2(SHX9_2)
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.loadModel
  SHX9_2 = -944468481
  SHX8_2(SHX9_2)
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.loadAnimDict
  SHX9_2 = "anim@heists@ornate_bank@grab_cash"
  SHX8_2(SHX9_2)
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.requestEntitySpawn
  SHX9_2 = "bankheist_lootbag"
  SHX8_2(SHX9_2)
  SHX8_2 = CreateObject
  SHX9_2 = -944468481
  SHX10_2 = SHX7_2.x
  SHX11_2 = SHX7_2.y
  SHX12_2 = SHX7_2.z
  SHX13_2 = true
  SHX14_2 = true
  SHX15_2 = false
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX9_2 = NetworkCreateSynchronisedScene
  SHX10_2 = SHX3_2.x
  SHX11_2 = SHX3_2.y
  SHX12_2 = SHX3_2.z
  SHX13_2 = SHX4_2.x
  SHX14_2 = SHX4_2.y
  SHX15_2 = SHX4_2.z
  SHX16_2 = 2
  SHX17_2 = false
  SHX18_2 = false
  SHX19_2 = 1065353216
  SHX20_2 = 0
  SHX21_2 = 1.3
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX10_2 = NetworkAddPedToSynchronisedScene
  SHX11_2 = SHX6_2
  SHX12_2 = SHX9_2
  SHX13_2 = "anim@heists@ornate_bank@grab_cash"
  SHX14_2 = "intro"
  SHX15_2 = 1.5
  SHX16_2 = -4.0
  SHX17_2 = 1
  SHX18_2 = 16
  SHX19_2 = 1148846080
  SHX20_2 = 0
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX10_2 = NetworkAddEntityToSynchronisedScene
  SHX11_2 = SHX8_2
  SHX12_2 = SHX9_2
  SHX13_2 = "anim@heists@ornate_bank@grab_cash"
  SHX14_2 = "bag_intro"
  SHX15_2 = 4.0
  SHX16_2 = -8.0
  SHX17_2 = 1
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX10_2 = SetPedComponentVariation
  SHX11_2 = SHX6_2
  SHX12_2 = 5
  SHX13_2 = 0
  SHX14_2 = 0
  SHX15_2 = 0
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX10_2 = NetworkStartSynchronisedScene
  SHX11_2 = SHX9_2
  SHX10_2(SHX11_2)
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.loadModel
  SHX11_2 = SHX1_2.config
  SHX11_2 = SHX11_2.handModel
  SHX10_2(SHX11_2)
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.requestEntitySpawn
  SHX11_2 = "bankheist_hand_object"
  SHX12_2 = SHX1_2.config
  SHX12_2 = SHX12_2.handModel
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = CreateObject
  SHX11_2 = SHX1_2.config
  SHX11_2 = SHX11_2.handModel
  SHX12_2 = SHX7_2.x
  SHX13_2 = SHX7_2.y
  SHX14_2 = SHX7_2.z
  SHX15_2 = true
  SHX16_2 = true
  SHX17_2 = false
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX11_2 = FreezeEntityPosition
  SHX12_2 = SHX10_2
  SHX13_2 = true
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = SetEntityInvincible
  SHX12_2 = SHX10_2
  SHX13_2 = true
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = SetEntityNoCollisionEntity
  SHX12_2 = SHX10_2
  SHX13_2 = SHX6_2
  SHX14_2 = false
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = SetEntityVisible
  SHX12_2 = SHX10_2
  SHX13_2 = false
  SHX14_2 = false
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = AttachEntityToEntity
  SHX12_2 = SHX10_2
  SHX13_2 = SHX6_2
  SHX14_2 = GetPedBoneIndex
  SHX15_2 = SHX6_2
  SHX16_2 = 60309
  SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
  SHX15_2 = 0.0
  SHX16_2 = 0.0
  SHX17_2 = 0.0
  SHX18_2 = 0.0
  SHX19_2 = 0.0
  SHX20_2 = 0.0
  SHX21_2 = false
  SHX22_2 = false
  SHX23_2 = false
  SHX24_2 = false
  SHX25_2 = 0
  SHX26_2 = true
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
  SHX11_2 = SetModelAsNoLongerNeeded
  SHX12_2 = SHX1_2.config
  SHX12_2 = SHX12_2.handModel
  SHX11_2(SHX12_2)
  SHX11_2 = Citizen
  SHX11_2 = SHX11_2.CreateThread
  function SHX12_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = GetGameTimer
    SHX0_3 = SHX0_3()
    while true do
      SHX1_3 = GetGameTimer
      SHX1_3 = SHX1_3()
      SHX1_3 = SHX1_3 - SHX0_3
      SHX2_3 = 37000
      if not (SHX1_3 < SHX2_3) then
        break
      end
      SHX1_3 = DisableControlAction
      SHX2_3 = 0
      SHX3_3 = 73
      SHX4_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX1_3 = HasAnimEventFired
      SHX2_3 = SHX6_2
      SHX3_3 = 726137971
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if SHX1_3 then
        SHX1_3 = IsEntityVisible
        SHX2_3 = SHX10_2
        SHX1_3 = SHX1_3(SHX2_3)
        if not SHX1_3 then
          SHX1_3 = SetEntityVisible
          SHX2_3 = SHX10_2
          SHX3_3 = true
          SHX4_3 = false
          SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        end
      end
      SHX1_3 = HasAnimEventFired
      SHX2_3 = SHX6_2
      SHX3_3 = -1157608532
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if SHX1_3 then
        SHX1_3 = IsEntityVisible
        SHX2_3 = SHX10_2
        SHX1_3 = SHX1_3(SHX2_3)
        if SHX1_3 then
          SHX1_3 = SetEntityVisible
          SHX2_3 = SHX10_2
          SHX3_3 = false
          SHX4_3 = false
          SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        end
      end
      SHX1_3 = Citizen
      SHX1_3 = SHX1_3.Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
  end
  SHX11_2(SHX12_2)
  SHX11_2 = NetworkCreateSynchronisedScene
  SHX12_2 = SHX3_2.x
  SHX13_2 = SHX3_2.y
  SHX14_2 = SHX3_2.z
  SHX15_2 = SHX4_2.x
  SHX16_2 = SHX4_2.y
  SHX17_2 = SHX4_2.z
  SHX18_2 = 2
  SHX19_2 = false
  SHX20_2 = false
  SHX21_2 = 1065353216
  SHX22_2 = 0
  SHX23_2 = 1.3
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  SHX12_2 = NetworkAddPedToSynchronisedScene
  SHX13_2 = SHX6_2
  SHX14_2 = SHX11_2
  SHX15_2 = "anim@heists@ornate_bank@grab_cash"
  SHX16_2 = "grab"
  SHX17_2 = 1.5
  SHX18_2 = -4.0
  SHX19_2 = 1
  SHX20_2 = 16
  SHX21_2 = 1148846080
  SHX22_2 = 0
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX12_2 = NetworkAddEntityToSynchronisedScene
  SHX13_2 = SHX8_2
  SHX14_2 = SHX11_2
  SHX15_2 = "anim@heists@ornate_bank@grab_cash"
  SHX16_2 = "bag_grab"
  SHX17_2 = 4.0
  SHX18_2 = -8.0
  SHX19_2 = 1
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX12_2 = NetworkAddEntityToSynchronisedScene
  SHX13_2 = SHX5_2
  SHX14_2 = SHX11_2
  SHX15_2 = "anim@heists@ornate_bank@grab_cash"
  SHX16_2 = "cart_cash_dissapear"
  SHX17_2 = 4.0
  SHX18_2 = -8.0
  SHX19_2 = 1
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX12_2 = NetworkStartSynchronisedScene
  SHX13_2 = SHX11_2
  SHX12_2(SHX13_2)
  SHX12_2 = Citizen
  SHX12_2 = SHX12_2.Wait
  SHX13_2 = 37000
  SHX12_2(SHX13_2)
  SHX12_2 = NetworkCreateSynchronisedScene
  SHX13_2 = SHX3_2.x
  SHX14_2 = SHX3_2.y
  SHX15_2 = SHX3_2.z
  SHX16_2 = SHX4_2.x
  SHX17_2 = SHX4_2.y
  SHX18_2 = SHX4_2.z
  SHX19_2 = 2
  SHX20_2 = false
  SHX21_2 = false
  SHX22_2 = 1065353216
  SHX23_2 = 0
  SHX24_2 = 1.3
  SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
  SHX13_2 = NetworkAddPedToSynchronisedScene
  SHX14_2 = SHX6_2
  SHX15_2 = SHX12_2
  SHX16_2 = "anim@heists@ornate_bank@grab_cash"
  SHX17_2 = "exit"
  SHX18_2 = 1.5
  SHX19_2 = -4.0
  SHX20_2 = 1
  SHX21_2 = 16
  SHX22_2 = 1148846080
  SHX23_2 = 0
  SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  SHX13_2 = NetworkAddEntityToSynchronisedScene
  SHX14_2 = SHX8_2
  SHX15_2 = SHX12_2
  SHX16_2 = "anim@heists@ornate_bank@grab_cash"
  SHX17_2 = "bag_exit"
  SHX18_2 = 4.0
  SHX19_2 = -8.0
  SHX20_2 = 1
  SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX13_2 = NetworkStartSynchronisedScene
  SHX14_2 = SHX12_2
  SHX13_2(SHX14_2)
  SHX13_2 = DeleteEntity
  SHX14_2 = SHX5_2
  SHX13_2(SHX14_2)
  SHX13_2 = DeleteObject
  SHX14_2 = SHX8_2
  SHX13_2(SHX14_2)
  SHX13_2 = DeleteObject
  SHX14_2 = SHX10_2
  SHX13_2(SHX14_2)
  SHX13_2 = SetModelAsNoLongerNeeded
  SHX14_2 = -944468481
  SHX13_2(SHX14_2)
  SHX13_2 = RemoveAnimDict
  SHX14_2 = "anim@heists@ornate_bank@grab_cash"
  SHX13_2(SHX14_2)
  SHX13_2 = tCMG
  SHX13_2 = SHX13_2.setCanAnim
  SHX14_2 = true
  SHX13_2(SHX14_2)
end
SHX38_1(SHX39_1, SHX40_1)
SHX38_1 = RegisterNetEvent
SHX39_1 = "98e8823c20"
function SHX40_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isPlayerInBankHeistSetup
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    return
  end
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX17_1.trollies
    SHX7_2 = SHX7_2[SHX5_2]
    if SHX7_2 then
      SHX7_2 = SHX17_1.trollies
      SHX7_2 = SHX7_2[SHX5_2]
      SHX7_2.state = SHX6_2
    else
      SHX7_2 = SHX17_1.trollies
      SHX8_2 = {}
      SHX8_2.state = SHX6_2
      SHX7_2[SHX5_2] = SHX8_2
    end
  end
end
SHX38_1(SHX39_1, SHX40_1)
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = 10000.0
  SHX2_2 = -1
  SHX3_2 = pairs
  SHX4_2 = SHX0_1.staffDoors
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.position
    SHX9_2 = SHX0_2 - SHX9_2
    SHX9_2 = #SHX9_2
    if SHX1_2 > SHX9_2 then
      SHX1_2 = SHX9_2
      SHX2_2 = SHX7_2
    end
  end
  SHX3_2 = SHX1_2
  SHX4_2 = SHX2_2
  return SHX3_2, SHX4_2
end
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX17_1.state
  if "INACTIVE" == SHX0_2 then
    SHX0_2 = SHX38_1
    SHX0_2, SHX1_2 = SHX0_2()
    if SHX0_2 < 2.0 then
      SHX2_2 = SHX32_1
      SHX3_2 = SHX1_2
      SHX2_2(SHX3_2)
    end
    SHX2_2 = table
    SHX2_2 = SHX2_2.count
    SHX3_2 = SHX17_1.trollies
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 > 0 then
      SHX2_2 = SHX37_1
      SHX2_2()
    end
  else
    SHX0_2 = SHX17_1.state
    if "DONE_THERMITE" == SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getPlayerCoords
      SHX0_2 = SHX0_2()
      SHX1_2 = SHX0_1.safeDoorButton
      SHX0_2 = SHX0_2 - SHX1_2
      SHX0_2 = #SHX0_2
      if SHX0_2 < 1.0 then
        SHX0_2 = SHX34_1
        SHX0_2()
      end
    else
      SHX0_2 = SHX17_1.state
      if "PENDING_HACKING" == SHX0_2 then
        SHX0_2 = SHX17_1.hacking
        SHX0_2 = SHX0_2.scaleform
        if nil ~= SHX0_2 then
          SHX0_2 = SHX30_1
          SHX0_2()
        end
      else
        SHX0_2 = SHX17_1.state
        if "DONE_SAFE" == SHX0_2 then
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.getPlayerCoords
          SHX0_2 = SHX0_2()
          SHX1_2 = SHX0_1.vaultDoorHack
          SHX0_2 = SHX0_2 - SHX1_2
          SHX0_2 = #SHX0_2
          if SHX0_2 < 1.0 then
            SHX0_2 = SHX33_1
            SHX0_2()
          end
        end
      end
    end
  end
  SHX0_2 = SHX17_1.state
  if "INACTIVE" ~= SHX0_2 then
    SHX0_2 = SHX17_1.state
    if "PENDING_THERMITE" ~= SHX0_2 then
      SHX0_2 = SHX38_1
      SHX0_2 = SHX0_2()
      if SHX0_2 < 50.0 then
        SHX0_2 = SHX36_1
        SHX0_2()
      end
    end
  end
end
function SHX40_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.staffDoors
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.position
    SHX7_2 = GetClosestObjectOfType
    SHX8_2 = SHX6_2.x
    SHX9_2 = SHX6_2.y
    SHX10_2 = SHX6_2.z
    SHX11_2 = 5.0
    SHX12_2 = SHX5_2.model
    SHX13_2 = false
    SHX14_2 = false
    SHX15_2 = false
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    if 0 == SHX7_2 then
      SHX8_2 = GetClosestObjectOfType
      SHX9_2 = SHX6_2.x
      SHX10_2 = SHX6_2.y
      SHX11_2 = SHX6_2.z
      SHX12_2 = 5.0
      SHX13_2 = SHX5_2.staffDoorThermiteModel
      SHX14_2 = false
      SHX15_2 = false
      SHX16_2 = false
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      SHX7_2 = SHX8_2
    end
    if 0 ~= SHX7_2 then
      SHX8_2 = SHX17_1.state
      if "INACTIVE" ~= SHX8_2 then
        SHX8_2 = SHX17_1.state
        if "PENDING_THERMITE" ~= SHX8_2 then
          goto SHX_LABEL_60
        end
      end
      SHX8_2 = FreezeEntityPosition
      SHX9_2 = SHX7_2
      SHX10_2 = true
      SHX8_2(SHX9_2, SHX10_2)
      SHX8_2 = GetEntityModel
      SHX9_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2)
      SHX9_2 = SHX0_1.staffDoorThermiteModel
      if SHX8_2 == SHX9_2 then
        SHX8_2 = RemoveModelSwap
        SHX9_2 = SHX6_2.x
        SHX10_2 = SHX6_2.y
        SHX11_2 = SHX6_2.z
        SHX12_2 = 5.0
        SHX13_2 = SHX5_2.model
        SHX14_2 = SHX0_1.staffDoorThermiteModel
        SHX15_2 = false
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
        SHX8_2 = SHX21_1
        SHX9_2 = "Removing model swap for staff door"
        SHX8_2(SHX9_2)
        goto SHX_LABEL_82
        -- [FIX IF ERROR] Move ::SHX_LABEL_60:: outside nested blocks until all 'goto SHX_LABEL_60' can see it
        ::SHX_LABEL_60::
        SHX8_2 = FreezeEntityPosition
        SHX9_2 = SHX7_2
        SHX10_2 = false
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = GetEntityModel
        SHX9_2 = SHX7_2
        SHX8_2 = SHX8_2(SHX9_2)
        SHX9_2 = SHX5_2.model
        if SHX8_2 == SHX9_2 then
          SHX8_2 = CreateModelSwap
          SHX9_2 = SHX6_2.x
          SHX10_2 = SHX6_2.y
          SHX11_2 = SHX6_2.z
          SHX12_2 = 5.0
          SHX13_2 = SHX5_2.model
          SHX14_2 = SHX0_1.staffDoorThermiteModel
          SHX15_2 = true
          SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
          SHX8_2 = SHX21_1
          SHX9_2 = "Creating model swap for staff door"
          SHX8_2(SHX9_2)
        end
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_82:: outside nested blocks until all 'goto SHX_LABEL_82' can see it
    ::SHX_LABEL_82::
  end
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.lockedDoors
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = GetClosestObjectOfType
    SHX7_2 = SHX5_2.position
    SHX7_2 = SHX7_2.x
    SHX8_2 = SHX5_2.position
    SHX8_2 = SHX8_2.y
    SHX9_2 = SHX5_2.position
    SHX9_2 = SHX9_2.z
    SHX10_2 = 5.0
    SHX11_2 = SHX5_2.model
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    if 0 ~= SHX6_2 then
      SHX7_2 = FreezeEntityPosition
      SHX8_2 = SHX6_2
      SHX9_2 = SHX17_1.state
      SHX9_2 = "DONE_HACKING" ~= SHX9_2
      SHX7_2(SHX8_2, SHX9_2)
    end
  end
  SHX0_2 = GetClosestObjectOfType
  SHX1_2 = SHX0_1.safeDoor
  SHX1_2 = SHX1_2.x
  SHX2_2 = SHX0_1.safeDoor
  SHX2_2 = SHX2_2.y
  SHX3_2 = SHX0_1.safeDoor
  SHX3_2 = SHX3_2.z
  SHX4_2 = 5.0
  SHX5_2 = SHX0_1.safeDoorModel
  SHX6_2 = false
  SHX7_2 = false
  SHX8_2 = false
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX1_2 = DoesEntityExist
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX2_2 = FreezeEntityPosition
    SHX3_2 = SHX0_2
    SHX4_2 = true
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = SHX17_1.state
    if "DONE_SAFE" ~= SHX2_2 then
      SHX2_2 = SHX17_1.state
      if "PENDING_HACKING" ~= SHX2_2 then
        SHX2_2 = SHX17_1.state
        if "DONE_HACKING" ~= SHX2_2 then
          goto SHX_LABEL_164
        end
      end
    end
    SHX2_2 = GetEntityHeading
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not (SHX2_2 <= 75.0) then
      SHX3_2 = 320.0
      if not (SHX2_2 >= SHX3_2) then
        goto SHX_LABEL_182
      end
    end
    SHX3_2 = SetEntityHeading
    SHX4_2 = SHX0_2
    SHX5_2 = GetFrameTime
    SHX5_2 = SHX5_2()
    SHX5_2 = 15.0 * SHX5_2
    SHX5_2 = SHX2_2 - SHX5_2
    SHX3_2(SHX4_2, SHX5_2)
    goto SHX_LABEL_182
    -- [FIX IF ERROR] Move ::SHX_LABEL_164:: outside nested blocks until all 'goto SHX_LABEL_164' can see it
    ::SHX_LABEL_164::
    SHX2_2 = GetEntityHeading
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = 315.0
    if not (SHX2_2 >= SHX3_2) then
      SHX3_2 = 70.55
      if not (SHX2_2 <= SHX3_2) then
        goto SHX_LABEL_182
      end
    end
    SHX3_2 = SetEntityHeading
    SHX4_2 = SHX0_2
    SHX5_2 = GetFrameTime
    SHX5_2 = SHX5_2()
    SHX5_2 = 10.0 * SHX5_2
    SHX5_2 = SHX2_2 + SHX5_2
    SHX3_2(SHX4_2, SHX5_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_182:: outside nested blocks until all 'goto SHX_LABEL_182' can see it
  ::SHX_LABEL_182::
end
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = ipairs
  SHX1_2 = SHX17_1.alarms
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = StopSound
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
    SHX6_2 = ReleaseSoundId
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX17_1.alarms = nil
  SHX17_1.alarmLastFlashed = nil
  SHX0_2 = ReleaseNamedScriptAudioBank
  SHX1_2 = "ALARM_BELL_02"
  SHX0_2(SHX1_2)
  SHX0_2 = SHX21_1
  SHX1_2 = "Removing alarm audio"
  SHX0_2(SHX1_2)
end
function SHX42_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = SHX17_1.alarms
  if SHX0_2 then
    SHX0_2 = GetGameTimer
    SHX0_2 = SHX0_2()
    SHX1_2 = SHX17_1.alarmLastFlashed
    SHX0_2 = SHX0_2 - SHX1_2
    SHX1_2 = 500
    if SHX0_2 > SHX1_2 then
      SHX0_2 = ipairs
      SHX1_2 = SHX0_1.alarms
      SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
      for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
        SHX6_2 = DrawLightWithRange
        SHX7_2 = SHX5_2.x
        SHX7_2 = SHX7_2 - 0.5
        SHX8_2 = SHX5_2.y
        SHX8_2 = SHX8_2 - 0.5
        SHX9_2 = SHX5_2.z
        SHX10_2 = 255
        SHX11_2 = 0
        SHX12_2 = 0
        SHX13_2 = 5.0
        SHX14_2 = 5.0
        SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        SHX6_2 = DrawLightWithRange
        SHX7_2 = SHX5_2.x
        SHX7_2 = SHX7_2 + 0.5
        SHX8_2 = SHX5_2.y
        SHX8_2 = SHX8_2 + 0.5
        SHX9_2 = SHX5_2.z
        SHX10_2 = 255
        SHX11_2 = 0
        SHX12_2 = 0
        SHX13_2 = 5.0
        SHX14_2 = 5.0
        SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        SHX6_2 = DrawLightWithRange
        SHX7_2 = SHX5_2.x
        SHX8_2 = SHX5_2.y
        SHX9_2 = SHX5_2.z
        SHX10_2 = 255
        SHX11_2 = 0
        SHX12_2 = 0
        SHX13_2 = 5.0
        SHX14_2 = 5.0
        SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      end
      SHX0_2 = GetGameTimer
      SHX0_2 = SHX0_2()
      SHX17_1.alarmLastFlashed = SHX0_2
    end
  else
    SHX0_2 = RequestScriptAudioBank
    SHX1_2 = "ALARM_BELL_02"
    SHX2_2 = false
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = {}
      SHX17_1.alarms = SHX0_2
      SHX0_2 = GetGameTimer
      SHX0_2 = SHX0_2()
      SHX17_1.alarmLastFlashed = SHX0_2
      SHX0_2 = ipairs
      SHX1_2 = SHX0_1.alarms
      SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
      for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
        SHX6_2 = GetSoundId
        SHX6_2 = SHX6_2()
        SHX7_2 = PlaySoundFromCoord
        SHX8_2 = SHX6_2
        SHX9_2 = "Bell_02"
        SHX10_2 = SHX5_2.x
        SHX11_2 = SHX5_2.y
        SHX12_2 = SHX5_2.z
        SHX13_2 = "ALARMS_SOUNDSET"
        SHX14_2 = false
        SHX15_2 = 0
        SHX16_2 = false
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
        SHX7_2 = table
        SHX7_2 = SHX7_2.insert
        SHX8_2 = SHX17_1.alarms
        SHX9_2 = SHX6_2
        SHX7_2(SHX8_2, SHX9_2)
      end
      SHX0_2 = SHX21_1
      SHX1_2 = "Creating alarm audio"
      SHX0_2(SHX1_2)
    end
  end
end
function SHX43_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = SHX17_1.gases
  if SHX0_2 then
    SHX0_2 = GetGameTimer
    SHX0_2 = SHX0_2()
    SHX1_2 = SHX17_1.lastHurt
    SHX0_2 = SHX0_2 - SHX1_2
    SHX1_2 = 150
    if SHX0_2 > SHX1_2 then
      SHX0_2 = PlayerPedId
      SHX0_2 = SHX0_2()
      SHX1_2 = SetEntityHealth
      SHX2_2 = SHX0_2
      SHX3_2 = GetEntityHealth
      SHX4_2 = SHX0_2
      SHX3_2 = SHX3_2(SHX4_2)
      SHX3_2 = SHX3_2 - 1
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = GetGameTimer
      SHX1_2 = SHX1_2()
      SHX17_1.lastHurt = SHX1_2
    end
  else
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.loadPtfx
    SHX1_2 = "core"
    SHX0_2(SHX1_2)
    SHX0_2 = {}
    SHX17_1.gases = SHX0_2
    SHX0_2 = ipairs
    SHX1_2 = SHX0_1.gases
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = UseParticleFxAsset
      SHX7_2 = "core"
      SHX6_2(SHX7_2)
      SHX6_2 = StartParticleFxLoopedAtCoord
      SHX7_2 = "exp_grd_grenade_smoke"
      SHX8_2 = SHX5_2.position
      SHX8_2 = SHX8_2.x
      SHX9_2 = SHX5_2.position
      SHX9_2 = SHX9_2.y
      SHX10_2 = SHX5_2.position
      SHX10_2 = SHX10_2.z
      SHX11_2 = 0.0
      SHX12_2 = 0.0
      SHX13_2 = 0.0
      SHX14_2 = SHX5_2.scale
      SHX15_2 = false
      SHX16_2 = false
      SHX17_2 = false
      SHX18_2 = false
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX7_2 = table
      SHX7_2 = SHX7_2.insert
      SHX8_2 = SHX17_1.gases
      SHX9_2 = SHX6_2
      SHX7_2(SHX8_2, SHX9_2)
    end
    SHX0_2 = RemoveNamedPtfxAsset
    SHX1_2 = "core"
    SHX0_2(SHX1_2)
    SHX0_2 = SHX21_1
    SHX1_2 = "Creating gas particle"
    SHX0_2(SHX1_2)
  end
end
function SHX44_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = ipairs
  SHX1_2 = SHX17_1.gases
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = StopParticleFxLooped
    SHX7_2 = SHX5_2
    SHX8_2 = false
    SHX6_2(SHX7_2, SHX8_2)
  end
  SHX17_1.gases = nil
  SHX17_1.lastHurt = 0
  SHX0_2 = RemoveNamedPtfxAsset
  SHX1_2 = "core"
  SHX0_2(SHX1_2)
  SHX0_2 = SHX21_1
  SHX1_2 = "Removing gas particle"
  SHX0_2(SHX1_2)
end
function SHX45_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = GetRoomKeyFromEntity
  SHX1_2 = PlayerPedId
  SHX1_2, SHX2_2, SHX3_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = 0 ~= SHX0_2
  SHX1_2 = SHX38_1
  SHX1_2 = SHX1_2()
  SHX2_2 = 150.0
  SHX2_2 = SHX1_2 < SHX2_2
  SHX18_1 = SHX2_2
  SHX2_2 = SHX1_2 < 60.0 and SHX2_2
  SHX19_1 = SHX2_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX2_2 = SHX2_2.z
  SHX2_2 = SHX2_2 < 102.0 and SHX2_2
  SHX20_1 = SHX2_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.isPlayerInBankHeistSetup
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    SHX2_2 = SHX17_1.state
    if "INACTIVE" ~= SHX2_2 then
      SHX17_1.state = "INACTIVE"
      SHX2_2 = SHX21_1
      SHX3_2 = "Setting state to INACTIVE as in setup"
      SHX2_2(SHX3_2)
    end
  else
    SHX2_2 = SHX39_1
    SHX2_2()
  end
  SHX2_2 = SHX19_1
  if SHX2_2 then
    SHX2_2 = SHX40_1
    SHX2_2()
  end
  SHX2_2 = SHX17_1.state
  if "GAS_VAULT" == SHX2_2 then
    SHX2_2 = SHX20_1
    if SHX2_2 then
      goto SHX_LABEL_67
    end
  end
  SHX2_2 = SHX17_1.gases
  if SHX2_2 then
    SHX2_2 = SHX44_1
    SHX2_2()
    goto SHX_LABEL_69
    -- [FIX IF ERROR] Move ::SHX_LABEL_67:: outside nested blocks until all 'goto SHX_LABEL_67' can see it
    ::SHX_LABEL_67::
    SHX2_2 = SHX43_1
    SHX2_2()
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_69:: outside nested blocks until all 'goto SHX_LABEL_69' can see it
  ::SHX_LABEL_69::
  SHX2_2 = SHX17_1.state
  if "INACTIVE" ~= SHX2_2 then
    SHX2_2 = SHX18_1
    if SHX2_2 then
      SHX2_2 = SHX17_1.alarmDisabled
      if not SHX2_2 then
        goto SHX_LABEL_84
      end
    end
  end
  SHX2_2 = SHX17_1.alarms
  if SHX2_2 then
    SHX2_2 = SHX41_1
    SHX2_2()
    goto SHX_LABEL_86
    -- [FIX IF ERROR] Move ::SHX_LABEL_84:: outside nested blocks until all 'goto SHX_LABEL_84' can see it
    ::SHX_LABEL_84::
    SHX2_2 = SHX42_1
    SHX2_2()
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_86:: outside nested blocks until all 'goto SHX_LABEL_86' can see it
  ::SHX_LABEL_86::
end
SHX46_1 = CMG
SHX46_1 = SHX46_1.createThreadOnTick
SHX47_1 = SHX45_1
SHX48_1 = "Bank Heist"
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = RegisterNetEvent
SHX47_1 = "dd054c89ec"
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isPlayerInBankHeistSetup
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    return
  end
  SHX17_1.state = SHX0_2
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX17_1.lastStateChange = SHX1_2
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = RegisterNetEvent
SHX47_1 = "40cac5cefd"
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isPlayerInBankHeistSetup
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    return
  end
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.setCanAnim
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setPlayerCombatTimer
  SHX2_2 = 300
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadAnimDict
  SHX2_2 = "anim@heists@ornate_bank@thermal_charge"
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = "hei_p_m_bag_var22_arm_s"
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = "hei_prop_heist_thermite"
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_1.staffDoors
  SHX1_2 = SHX1_2[SHX0_2]
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = SetEntityHeading
  SHX4_2 = SHX2_2
  SHX5_2 = SHX1_2.thermiteHeading
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = GetEntityRotation
  SHX4_2 = SHX2_2
  SHX5_2 = 2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = SHX1_2.thermitePosition
  SHX5_2 = NetworkCreateSynchronisedScene
  SHX6_2 = SHX4_2.x
  SHX7_2 = SHX4_2.y
  SHX8_2 = SHX4_2.z
  SHX9_2 = SHX3_2.x
  SHX10_2 = SHX3_2.y
  SHX11_2 = SHX3_2.z
  SHX12_2 = 2
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = 1065353216
  SHX16_2 = 0
  SHX17_2 = 1.3
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.requestEntitySpawn
  SHX7_2 = "bankheist_thermite_bag"
  SHX8_2 = SHX0_2
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = CreateObject
  SHX7_2 = -944468481
  SHX8_2 = SHX4_2.x
  SHX9_2 = SHX4_2.y
  SHX10_2 = SHX4_2.z
  SHX11_2 = true
  SHX12_2 = true
  SHX13_2 = false
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX7_2 = SetEntityCollision
  SHX8_2 = SHX6_2
  SHX9_2 = false
  SHX10_2 = true
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = NetworkAddPedToSynchronisedScene
  SHX8_2 = SHX2_2
  SHX9_2 = SHX5_2
  SHX10_2 = "anim@heists@ornate_bank@thermal_charge"
  SHX11_2 = "thermal_charge"
  SHX12_2 = 1.5
  SHX13_2 = -4.0
  SHX14_2 = 1
  SHX15_2 = 16
  SHX16_2 = 1148846080
  SHX17_2 = 0
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX7_2 = NetworkAddEntityToSynchronisedScene
  SHX8_2 = SHX6_2
  SHX9_2 = SHX5_2
  SHX10_2 = "anim@heists@ornate_bank@thermal_charge"
  SHX11_2 = "bag_thermal_charge"
  SHX12_2 = 4.0
  SHX13_2 = -8.0
  SHX14_2 = 1
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX7_2 = NetworkStartSynchronisedScene
  SHX8_2 = SHX5_2
  SHX7_2(SHX8_2)
  SHX7_2 = Citizen
  SHX7_2 = SHX7_2.Wait
  SHX8_2 = 1500
  SHX7_2(SHX8_2)
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.getPlayerCoords
  SHX7_2 = SHX7_2()
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.requestEntitySpawn
  SHX9_2 = "bankheist_thermite_object"
  SHX10_2 = SHX0_2
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = CreateObject
  SHX9_2 = 865563579
  SHX10_2 = SHX7_2.x
  SHX11_2 = SHX7_2.y
  SHX12_2 = SHX7_2.z
  SHX12_2 = SHX12_2 + 0.2
  SHX13_2 = true
  SHX14_2 = true
  SHX15_2 = true
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX9_2 = SetEntityCollision
  SHX10_2 = SHX8_2
  SHX11_2 = false
  SHX12_2 = false
  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = SetEntityCompletelyDisableCollision
  SHX10_2 = SHX8_2
  SHX11_2 = false
  SHX12_2 = false
  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = AttachEntityToEntity
  SHX10_2 = SHX8_2
  SHX11_2 = SHX2_2
  SHX12_2 = GetPedBoneIndex
  SHX13_2 = SHX2_2
  SHX14_2 = 28422
  SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
  SHX13_2 = 0
  SHX14_2 = 0
  SHX15_2 = 0
  SHX16_2 = 0
  SHX17_2 = 0
  SHX18_2 = 200.0
  SHX19_2 = true
  SHX20_2 = true
  SHX21_2 = false
  SHX22_2 = true
  SHX23_2 = 1
  SHX24_2 = true
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
  SHX9_2 = Citizen
  SHX9_2 = SHX9_2.Wait
  SHX10_2 = 4000
  SHX9_2(SHX10_2)
  SHX9_2 = DeleteEntity
  SHX10_2 = SHX6_2
  SHX9_2(SHX10_2)
  SHX9_2 = SetPedComponentVariation
  SHX10_2 = SHX2_2
  SHX11_2 = 5
  SHX12_2 = 45
  SHX13_2 = 0
  SHX14_2 = 0
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX9_2 = DetachEntity
  SHX10_2 = SHX8_2
  SHX11_2 = true
  SHX12_2 = true
  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = FreezeEntityPosition
  SHX10_2 = SHX8_2
  SHX11_2 = true
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = SetEntityCollision
  SHX10_2 = SHX8_2
  SHX11_2 = false
  SHX12_2 = false
  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = SetEntityCompletelyDisableCollision
  SHX10_2 = SHX8_2
  SHX11_2 = false
  SHX12_2 = false
  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = NetworkStopSynchronisedScene
  SHX10_2 = SHX5_2
  SHX9_2(SHX10_2)
  SHX9_2 = tCMG
  SHX9_2 = SHX9_2.setCanAnim
  SHX10_2 = true
  SHX9_2(SHX10_2)
  SHX9_2 = TaskPlayAnim
  SHX10_2 = SHX2_2
  SHX11_2 = "anim@heists@ornate_bank@thermal_charge"
  SHX12_2 = "cover_eyes_intro"
  SHX13_2 = 8.0
  SHX14_2 = 8.0
  SHX15_2 = 1000
  SHX16_2 = 36
  SHX17_2 = 1
  SHX18_2 = false
  SHX19_2 = false
  SHX20_2 = false
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX9_2 = TaskPlayAnim
  SHX10_2 = SHX2_2
  SHX11_2 = "anim@heists@ornate_bank@thermal_charge"
  SHX12_2 = "cover_eyes_loop"
  SHX13_2 = 8.0
  SHX14_2 = 8.0
  SHX15_2 = 10000
  SHX16_2 = 49
  SHX17_2 = 1
  SHX18_2 = false
  SHX19_2 = false
  SHX20_2 = false
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX9_2 = Citizen
  SHX9_2 = SHX9_2.Wait
  SHX10_2 = 10000
  SHX9_2(SHX10_2)
  SHX9_2 = ClearPedTasks
  SHX10_2 = SHX2_2
  SHX9_2(SHX10_2)
  SHX9_2 = DeleteEntity
  SHX10_2 = SHX8_2
  SHX9_2(SHX10_2)
  SHX9_2 = SetModelAsNoLongerNeeded
  SHX10_2 = "hei_prop_heist_thermite"
  SHX9_2(SHX10_2)
  SHX9_2 = SetModelAsNoLongerNeeded
  SHX10_2 = "hei_p_m_bag_var22_arm_s"
  SHX9_2(SHX10_2)
  SHX9_2 = RemoveAnimDict
  SHX10_2 = "anim@heists@ornate_bank@thermal_charge"
  SHX9_2(SHX10_2)
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = RegisterNetEvent
SHX47_1 = "1cbffefd47"
function SHX48_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isPlayerInBankHeistSetup
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadPtfx
  SHX1_2 = "scr_ornate_heist"
  SHX0_2(SHX1_2)
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.staffDoors
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
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
      SHX0_3 = UseParticleFxAsset
      SHX1_3 = "scr_ornate_heist"
      SHX0_3(SHX1_3)
      SHX0_3 = StartParticleFxLoopedAtCoord
      SHX1_3 = "scr_heist_ornate_thermal_burn"
      SHX2_3 = SHX5_2.thermiteParticle
      SHX2_3 = SHX2_3.x
      SHX3_3 = SHX5_2.thermiteParticle
      SHX3_3 = SHX3_3.y
      SHX4_3 = SHX5_2.thermiteParticle
      SHX4_3 = SHX4_3.z
      SHX5_3 = 0.0
      SHX6_3 = 0.0
      SHX7_3 = 0.0
      SHX8_3 = 1.0
      SHX9_3 = false
      SHX10_3 = false
      SHX11_3 = false
      SHX12_3 = false
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX1_3 = Citizen
      SHX1_3 = SHX1_3.Wait
      SHX2_3 = 10000
      SHX1_3(SHX2_3)
      SHX1_3 = StopParticleFxLooped
      SHX2_3 = SHX0_3
      SHX3_3 = false
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = RemoveNamedPtfxAsset
      SHX2_3 = "scr_ornate_heist"
      SHX1_3(SHX2_3)
    end
    SHX6_2(SHX7_2)
  end
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = AddEventHandler
SHX47_1 = "onResourceStop"
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX1_2 == SHX0_2 then
    SHX1_2 = SHX7_1
    if SHX1_2 then
      SHX1_2 = SHX7_1.stages
      SHX2_2 = SHX7_1.stageIndex
      SHX1_2 = SHX1_2[SHX2_2]
      SHX2_2 = SHX1_2.clean
      if SHX2_2 then
        SHX2_2 = SHX1_2.clean
        SHX3_2 = SHX7_1.info
        SHX2_2(SHX3_2)
      end
      SHX2_2 = SHX7_1.finish
      if SHX2_2 then
        SHX2_2 = SHX7_1.finish
        SHX3_2 = SHX7_1.info
        SHX2_2(SHX3_2)
      end
    end
  end
  SHX1_2 = SHX37_1
  SHX1_2()
  SHX1_2 = SetPlayerControl
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX3_2 = true
  SHX4_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = RMenu
SHX46_1 = SHX46_1.Add
SHX47_1 = "sellBankHeistItems"
SHX48_1 = "main"
SHX49_1 = RageUI
SHX49_1 = SHX49_1.CreateMenu
SHX50_1 = ""
SHX51_1 = "~b~Sell Stolen Bank Items"
SHX52_1 = CMG
SHX52_1 = SHX52_1.getRageUIMenuWidth
SHX52_1 = SHX52_1()
SHX53_1 = CMG
SHX53_1 = SHX53_1.getRageUIMenuHeight
SHX53_1 = SHX53_1()
SHX54_1 = "cmg_blackmarket"
SHX55_1 = "cmg_blackmarket"
SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1 = SHX49_1(SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1)
SHX46_1(SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1)
SHX46_1 = RageUI
SHX46_1 = SHX46_1.CreateWhile
SHX47_1 = 1.0
SHX48_1 = RMenu
SHX49_1 = SHX48_1
SHX48_1 = SHX48_1.Get
SHX50_1 = "sellBankHeistItems"
SHX51_1 = "main"
SHX48_1 = SHX48_1(SHX49_1, SHX50_1, SHX51_1)
SHX49_1 = nil
function SHX50_1()
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
  SHX3_2 = "sellBankHeistItems"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    SHX0_3 = pairs
    SHX1_3 = SHX0_1.sellableItems
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = RageUI
      SHX6_3 = SHX6_3.ButtonWithStyle
      SHX7_3 = SHX4_3
      SHX8_3 = ""
      SHX9_3 = {}
      SHX10_3 = "\194\163"
      SHX11_3 = getMoneyStringFormatted
      SHX12_3 = SHX0_1.payouts
      SHX12_3 = SHX12_3[SHX5_3]
      SHX11_3 = SHX11_3(SHX12_3)
      SHX10_3 = SHX10_3 .. SHX11_3
      SHX9_3.RightLabel = SHX10_3
      SHX10_3 = true
      function SHX11_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "5e35771e2b"
          SHX5_4 = SHX5_3
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
      SHX12_3 = nil
      SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
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
SHX46_1(SHX47_1, SHX48_1, SHX49_1, SHX50_1)
function SHX46_1()
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
  SHX3_2 = "sellBankHeistItems"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX47_1()
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
  SHX3_2 = "sellBankHeistItems"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
SHX48_1 = 0
function SHX49_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadModel
  SHX1_2 = SHX0_1.safeTerminal
  SHX1_2 = SHX1_2.model
  SHX0_2(SHX1_2)
  SHX0_2 = CreateObjectNoOffset
  SHX1_2 = SHX0_1.safeTerminal
  SHX1_2 = SHX1_2.model
  SHX2_2 = SHX0_1.safeTerminal
  SHX2_2 = SHX2_2.position
  SHX2_2 = SHX2_2.x
  SHX3_2 = SHX0_1.safeTerminal
  SHX3_2 = SHX3_2.position
  SHX3_2 = SHX3_2.y
  SHX4_2 = SHX0_1.safeTerminal
  SHX4_2 = SHX4_2.position
  SHX4_2 = SHX4_2.z
  SHX5_2 = false
  SHX6_2 = false
  SHX7_2 = false
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX48_1 = SHX0_2
  SHX0_2 = SetEntityHeading
  SHX1_2 = SHX48_1
  SHX2_2 = SHX0_1.safeTerminal
  SHX2_2 = SHX2_2.position
  SHX2_2 = SHX2_2.w
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = FreezeEntityPosition
  SHX1_2 = SHX48_1
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetModelAsNoLongerNeeded
  SHX1_2 = SHX0_1.safeTerminal
  SHX1_2 = SHX1_2.model
  SHX0_2(SHX1_2)
end
function SHX50_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = DeleteEntity
  SHX1_2 = SHX48_1
  SHX0_2(SHX1_2)
  SHX0_2 = 0
  SHX48_1 = SHX0_2
end
SHX51_1 = Citizen
SHX51_1 = SHX51_1.CreateThread
function SHX52_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.addMarker
  SHX1_2 = SHX0_1.sellLocation
  SHX1_2 = SHX1_2.x
  SHX2_2 = SHX0_1.sellLocation
  SHX2_2 = SHX2_2.y
  SHX3_2 = SHX0_1.sellLocation
  SHX3_2 = SHX3_2.z
  SHX3_2 = SHX3_2 - 0.9
  SHX4_2 = 0.8
  SHX5_2 = 0.8
  SHX6_2 = 0.8
  SHX7_2 = 200
  SHX8_2 = 0
  SHX9_2 = 0
  SHX10_2 = 255
  SHX11_2 = 30
  SHX12_2 = 27
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.addBlip
  SHX1_2 = SHX0_1.sellLocation
  SHX1_2 = SHX1_2.x
  SHX2_2 = SHX0_1.sellLocation
  SHX2_2 = SHX2_2.y
  SHX3_2 = SHX0_1.sellLocation
  SHX3_2 = SHX3_2.z
  SHX4_2 = 618
  SHX5_2 = 46
  SHX6_2 = "Sell Stolen Bank Items"
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.addBlipContext
  SHX2_2 = "Civilian"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.createArea
  SHX2_2 = "sellBankHeistItems"
  SHX3_2 = SHX0_1.sellLocation
  SHX4_2 = 2.0
  SHX5_2 = 5.0
  SHX6_2 = SHX46_1
  SHX7_2 = SHX47_1
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX9_2 = {}
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.createArea
  SHX2_2 = "bankheist_fakeTerminalObject"
  SHX3_2 = SHX0_1.safeTerminal
  SHX3_2 = SHX3_2.position
  SHX3_2 = SHX3_2.xyz
  SHX4_2 = 50.0
  SHX5_2 = 20.0
  SHX6_2 = SHX49_1
  SHX7_2 = SHX50_1
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX9_2 = {}
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
end
SHX51_1(SHX52_1)
