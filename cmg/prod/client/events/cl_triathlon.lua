-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/events/cfg_triathlon"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = ""
SHX3_1 = {}
SHX3_1.isParachuting = false
SHX3_1.isOnBMX = false
SHX3_1.isRunning = false
SHX3_1.isInRace = false
SHX3_1.closetCheckpoint = nil
SHX3_1.hasFinished = false
SHX3_1.currentCheckpoint = 0
SHX3_1.currentCheckpointId = 0
SHX3_1.checkpointDistance = 0.0
SHX4_1 = nil
SHX5_1 = {}
SHX6_1 = {}
SHX7_1 = {}
SHX8_1 = {}
SHX9_1 = Citizen
SHX9_1 = SHX9_1.CreateThread
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.triathlon
  SHX1_2 = SHX1_2.races
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = SHX1_1
    SHX5_2 = #SHX5_2
    SHX6_2 = SHX5_2 + 1
    SHX5_2 = SHX1_1
    SHX5_2[SHX6_2] = SHX4_2
  end
end
SHX9_1(SHX10_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "b703d69501"
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX2_1 = SHX0_2
  SHX3_1.isInRace = true
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "e3ef1bd162"
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX0_2 = 1
  SHX1_2 = SHX0_1.triathlon
  SHX1_2 = SHX1_2.races
  SHX2_2 = SHX2_1
  SHX1_2 = SHX1_2[SHX2_2]
  SHX1_2 = SHX1_2.checkpoints
  SHX1_2 = #SHX1_2
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = SHX0_1.triathlon
    SHX4_2 = SHX4_2.races
    SHX5_2 = SHX2_1
    SHX4_2 = SHX4_2[SHX5_2]
    SHX4_2 = SHX4_2.checkpoints
    SHX4_2 = SHX4_2[SHX3_2]
    SHX5_2 = SHX0_1.triathlon
    SHX5_2 = SHX5_2.races
    SHX6_2 = SHX2_1
    SHX5_2 = SHX5_2[SHX6_2]
    SHX5_2 = SHX5_2.cycle
    SHX6_2 = SHX7_1
    SHX7_2 = CreateCheckpoint
    SHX8_2 = 13
    SHX9_2 = SHX4_2.x
    SHX10_2 = SHX4_2.y
    SHX11_2 = SHX4_2.z
    SHX12_2 = SHX5_2.x
    SHX13_2 = SHX5_2.y
    SHX14_2 = SHX5_2.z
    SHX15_2 = 50.0
    SHX16_2 = 255
    SHX17_2 = 255
    SHX18_2 = 0
    SHX19_2 = 127
    SHX20_2 = 0
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    SHX6_2[SHX3_2] = SHX7_2
  end
  SHX0_2 = SHX2_1
  if "Vinewood Sign" == SHX0_2 then
    SHX0_2 = 0
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.loadModel
    SHX2_2 = 1867879106
    SHX1_2(SHX2_2)
    SHX1_2 = 1
    SHX2_2 = 12
    SHX3_2 = 1
    for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
      SHX5_2 = CreateObject
      SHX6_2 = 1867879106
      SHX7_2 = 847.02429199219 + SHX0_2
      SHX8_2 = 1290.3720703125
      SHX8_2 = SHX8_2 - SHX0_2
      SHX9_2 = 359.15859985352
      SHX10_2 = false
      SHX11_2 = true
      SHX12_2 = true
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX6_2 = SetEntityHeading
      SHX7_2 = SHX5_2
      SHX8_2 = 308.5
      SHX6_2(SHX7_2, SHX8_2)
      SHX6_2 = FreezeEntityPosition
      SHX7_2 = SHX5_2
      SHX8_2 = true
      SHX6_2(SHX7_2, SHX8_2)
      SHX6_2 = PlaceObjectOnGroundProperly
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
      SHX6_2 = SHX8_1
      SHX6_2 = #SHX6_2
      SHX7_2 = SHX6_2 + 1
      SHX6_2 = SHX8_1
      SHX6_2[SHX7_2] = SHX5_2
      SHX0_2 = SHX0_2 + 2
    end
    SHX1_2 = SetModelAsNoLongerNeeded
    SHX2_2 = 1867879106
    SHX1_2(SHX2_2)
  end
end
SHX9_1(SHX10_1, SHX11_1)
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = AddBlipForCoord
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.y
  SHX4_2 = SHX0_2.z
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = SetBlipSprite
  SHX3_2 = SHX1_2
  SHX4_2 = 38
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = CreateCheckpoint
  SHX3_2 = 9
  SHX4_2 = SHX0_2.x
  SHX5_2 = SHX0_2.y
  SHX6_2 = SHX0_2.z
  SHX6_2 = SHX6_2 - 1.0
  SHX7_2 = 0
  SHX8_2 = 0
  SHX9_2 = 0
  SHX10_2 = 10.0
  SHX11_2 = 255
  SHX12_2 = 255
  SHX13_2 = 0
  SHX14_2 = 127
  SHX15_2 = 0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX5_1.finish = SHX2_2
  SHX6_1.finish = SHX1_2
end
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = AddBlipForCoord
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.y
  SHX4_2 = SHX0_2.z
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = SetBlipSprite
  SHX3_2 = SHX1_2
  SHX4_2 = 226
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetBlipRoute
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX0_1.triathlon
  SHX2_2 = SHX2_2.races
  SHX3_2 = SHX2_1
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2 = SHX2_2.finish
  SHX3_2 = CreateCheckpoint
  SHX4_2 = 0
  SHX5_2 = SHX0_2.x
  SHX6_2 = SHX0_2.y
  SHX7_2 = SHX0_2.z
  SHX7_2 = SHX7_2 - 1.0
  SHX8_2 = SHX2_2.x
  SHX9_2 = SHX2_2.y
  SHX10_2 = SHX2_2.z
  SHX11_2 = 10.0
  SHX12_2 = 255
  SHX13_2 = 255
  SHX14_2 = 0
  SHX15_2 = 127
  SHX16_2 = 0
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX5_1.bmxTo = SHX3_2
  SHX3_2 = SetCheckpointCylinderHeight
  SHX4_2 = SHX5_1.bmxTo
  SHX5_2 = 40.0
  SHX6_2 = 140.0
  SHX7_2 = 25.0
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX6_1.bmxTo = SHX1_2
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = GetEntityModel
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.getPlayerVehicle
    SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3()
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    if 1131912276 == SHX0_3 then
      SHX0_3 = DeleteEntity
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.getPlayerVehicle
      SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3()
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      SHX3_1.isOnBMX = false
      SHX3_1.isRunning = true
      SHX0_3 = DeleteCheckpoint
      SHX1_3 = SHX5_1.bmxTo
      SHX0_3(SHX1_3)
      SHX0_3 = RemoveBlip
      SHX1_3 = SHX6_1.bmxTo
      SHX0_3(SHX1_3)
      SHX0_3 = tCMG
      SHX0_3 = SHX0_3.removeArea
      SHX1_3 = "cmg_triathlon_race_bmxTo"
      SHX0_3(SHX1_3)
      SHX0_3 = PlaySoundFrontend
      SHX1_3 = -1
      SHX2_3 = "RACE_PLACED"
      SHX3_3 = "HUD_AWARDS"
      SHX4_3 = false
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      SHX0_3 = SHX9_1
      SHX1_3 = SHX0_1.triathlon
      SHX1_3 = SHX1_3.races
      SHX2_3 = SHX2_1
      SHX1_3 = SHX1_3[SHX2_3]
      SHX1_3 = SHX1_3.finish
      SHX0_3(SHX1_3)
    end
  end
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.createArea
  SHX7_2 = "cmg_triathlon_race_bmxTo"
  SHX8_2 = SHX0_2
  SHX9_2 = 6.0
  SHX10_2 = 6
  SHX11_2 = SHX3_2
  SHX12_2 = SHX4_2
  SHX13_2 = SHX5_2
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
end
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = SHX3_1.currentCheckpointId
  if 0 ~= SHX0_2 then
    SHX0_2 = DeleteCheckpoint
    SHX1_2 = SHX3_1.currentCheckpointId
    SHX0_2(SHX1_2)
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.removeArea
    SHX1_2 = "cmg_triathlon_race_"
    SHX2_2 = SHX3_1.currentCheckpointId
    SHX1_2 = SHX1_2 .. SHX2_2
    SHX0_2(SHX1_2)
  end
  SHX0_2 = SHX3_1.currentCheckpoint
  if 1 ~= SHX0_2 then
    SHX0_2 = SHX3_1.currentCheckpoint
    SHX0_2 = SHX0_2 + 1
    SHX3_1.currentCheckpoint = SHX0_2
  end
  SHX0_2 = SHX3_1.currentCheckpoint
  SHX1_2 = SHX0_1.triathlon
  SHX1_2 = SHX1_2.races
  SHX2_2 = SHX2_1
  SHX1_2 = SHX1_2[SHX2_2]
  SHX1_2 = SHX1_2.extraCheckpoints
  SHX1_2 = #SHX1_2
  if SHX0_2 > SHX1_2 then
    return
  end
  SHX0_2 = SHX0_1.triathlon
  SHX0_2 = SHX0_2.races
  SHX1_2 = SHX2_1
  SHX0_2 = SHX0_2[SHX1_2]
  SHX0_2 = SHX0_2.extraCheckpoints
  SHX1_2 = SHX3_1.currentCheckpoint
  SHX0_2 = SHX0_2[SHX1_2]
  SHX1_2 = SHX0_1.triathlon
  SHX1_2 = SHX1_2.races
  SHX2_2 = SHX2_1
  SHX1_2 = SHX1_2[SHX2_2]
  SHX1_2 = SHX1_2.extraCheckpoints
  SHX2_2 = SHX3_1.currentCheckpoint
  SHX2_2 = SHX2_2 + 1
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = CreateCheckpoint
  SHX3_2 = 0
  SHX4_2 = SHX0_2.x
  SHX5_2 = SHX0_2.y
  SHX6_2 = SHX0_2.z
  SHX6_2 = SHX6_2 - 1.0
  SHX7_2 = SHX1_2.x
  SHX8_2 = SHX1_2.y
  SHX9_2 = SHX1_2.z
  SHX10_2 = 10.0
  SHX11_2 = 255
  SHX12_2 = 255
  SHX13_2 = 0
  SHX14_2 = 127
  SHX15_2 = 0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX3_1.currentCheckpointId = SHX2_2
  SHX2_2 = SHX3_1.currentCheckpoint
  if 1 == SHX2_2 then
    SHX3_1.currentCheckpoint = 2
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX0_1.triathlon
  SHX3_2 = SHX3_2.races
  SHX4_2 = SHX2_1
  SHX3_2 = SHX3_2[SHX4_2]
  SHX3_2 = SHX3_2.extraCheckpoints
  SHX4_2 = SHX3_1.currentCheckpoint
  SHX4_2 = SHX4_2 + 1
  SHX3_2 = SHX3_2[SHX4_2]
  SHX2_2 = SHX2_2 - SHX3_2
  SHX2_2 = #SHX2_2
  SHX3_1.checkpointDistance = SHX2_2
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = GetEntityModel
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.getPlayerVehicle
    SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3()
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    if 1131912276 == SHX0_3 then
      SHX0_3 = SHX11_1
      SHX0_3()
      SHX0_3 = PlaySoundFrontend
      SHX1_3 = -1
      SHX2_3 = "RACE_PLACED"
      SHX3_3 = "HUD_AWARDS"
      SHX4_3 = false
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    end
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
    
    local SHX0_3, SHX1_3
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.createArea
  SHX6_2 = "cmg_triathlon_race_"
  SHX7_2 = SHX3_1.currentCheckpointId
  SHX6_2 = SHX6_2 .. SHX7_2
  SHX7_2 = SHX0_2
  SHX8_2 = 6.0
  SHX9_2 = 6
  SHX10_2 = SHX2_2
  SHX11_2 = SHX3_2
  SHX12_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
SHX12_1 = RegisterNetEvent
SHX13_1 = "cdbc466c3d"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX4_1 = SHX0_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.stopEventSequence
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX3_1.isParachuting = true
  SHX1_2 = AddBlipForCoord
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.y
  SHX4_2 = SHX0_2.z
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = SetBlipSprite
  SHX3_2 = SHX1_2
  SHX4_2 = 226
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX0_1.triathlon
  SHX2_2 = SHX2_2.races
  SHX3_2 = SHX2_1
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2 = SHX2_2.run
  SHX3_2 = CreateCheckpoint
  SHX4_2 = 0
  SHX5_2 = SHX0_2.x
  SHX6_2 = SHX0_2.y
  SHX7_2 = SHX0_2.z
  SHX7_2 = SHX7_2 - 1.0
  SHX8_2 = SHX2_2.x
  SHX9_2 = SHX2_2.y
  SHX10_2 = SHX2_2.z
  SHX11_2 = 10.0
  SHX12_2 = 255
  SHX13_2 = 255
  SHX14_2 = 0
  SHX15_2 = 127
  SHX16_2 = 0
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX5_1.bmx = SHX3_2
  SHX3_2 = SetCheckpointCylinderHeight
  SHX4_2 = SHX5_1.bmx
  SHX5_2 = 40.0
  SHX6_2 = 70.0
  SHX7_2 = 25.0
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX6_1.bmx = SHX1_2
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.loadModel
    SHX1_3 = 1131912276
    SHX0_3(SHX1_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.spawnVehicle
    SHX1_3 = 1131912276
    SHX2_3 = SHX0_2.x
    SHX3_3 = SHX0_2.y
    SHX4_3 = SHX0_2.z
    SHX5_3 = 10.0
    SHX6_3 = true
    SHX7_3 = true
    SHX8_3 = true
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    SHX0_3 = SetModelAsNoLongerNeeded
    SHX1_3 = 1131912276
    SHX0_3(SHX1_3)
    SHX3_1.isParachuting = false
    SHX3_1.isOnBMX = true
    SHX0_3 = DeleteCheckpoint
    SHX1_3 = SHX5_1.bmx
    SHX0_3(SHX1_3)
    SHX0_3 = RemoveBlip
    SHX1_3 = SHX6_1.bmx
    SHX0_3(SHX1_3)
    SHX0_3 = tCMG
    SHX0_3 = SHX0_3.removeArea
    SHX1_3 = "cmg_triathlon_race_bmx"
    SHX0_3(SHX1_3)
    SHX0_3 = PlaySoundFrontend
    SHX1_3 = -1
    SHX2_3 = "RACE_PLACED"
    SHX3_3 = "HUD_AWARDS"
    SHX4_3 = false
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    SHX0_3 = SHX10_1
    SHX1_3 = SHX0_1.triathlon
    SHX1_3 = SHX1_3.races
    SHX2_3 = SHX2_1
    SHX1_3 = SHX1_3[SHX2_3]
    SHX1_3 = SHX1_3.run
    SHX0_3(SHX1_3)
    SHX0_3 = SHX11_1
    SHX0_3()
  end
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.createArea
  SHX7_2 = "cmg_triathlon_race_bmx"
  SHX8_2 = SHX0_2
  SHX9_2 = 6.0
  SHX10_2 = 6
  SHX11_2 = SHX3_2
  SHX12_2 = SHX4_2
  SHX13_2 = SHX5_2
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "a8589480c9"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.showCountdownTimer
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = {}
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = true
  SHX1_2 = Scaleform
  SHX2_2 = "MIDSIZED_MESSAGE"
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2.RunFunction
  SHX3_2 = "SHOW_SHARD_MIDSIZED_MESSAGE"
  SHX4_2 = {}
  SHX5_2 = "~y~TRIATHLON"
  SHX6_2 = "RIDE TO THE CHECKPOINT!"
  SHX7_2 = 5
  SHX8_2 = true
  SHX9_2 = false
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX4_2[5] = SHX9_2
  SHX2_2(SHX3_2, SHX4_2)
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
      SHX0_3 = SHX0_2
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX1_2.Render2D
      SHX0_3()
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX2_2(SHX3_2)
  SHX2_2 = Wait
  SHX3_2 = 5000
  SHX2_2(SHX3_2)
  SHX0_2 = false
end
SHX12_1.bmx = SHX13_1
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = true
  SHX1_2 = Scaleform
  SHX2_2 = "MIDSIZED_MESSAGE"
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2.RunFunction
  SHX3_2 = "SHOW_SHARD_MIDSIZED_MESSAGE"
  SHX4_2 = {}
  SHX5_2 = "~y~TRIATHLON"
  SHX6_2 = "RUN TO THE FINISH!"
  SHX7_2 = 5
  SHX8_2 = true
  SHX9_2 = false
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX4_2[5] = SHX9_2
  SHX2_2(SHX3_2, SHX4_2)
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
      SHX0_3 = SHX0_2
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX1_2.Render2D
      SHX0_3()
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX2_2(SHX3_2)
  SHX2_2 = Wait
  SHX3_2 = 5000
  SHX2_2(SHX3_2)
  SHX0_2 = false
end
SHX12_1.runto = SHX13_1
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = true
  SHX2_2 = Scaleform
  SHX3_2 = "MIDSIZED_MESSAGE"
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX2_2.RunFunction
  SHX4_2 = "SHOW_SHARD_MIDSIZED_MESSAGE"
  SHX5_2 = {}
  SHX6_2 = "~y~TRIATHLON"
  SHX7_2 = SHX0_2
  SHX8_2 = 5
  SHX9_2 = true
  SHX10_2 = false
  SHX5_2[1] = SHX6_2
  SHX5_2[2] = SHX7_2
  SHX5_2[3] = SHX8_2
  SHX5_2[4] = SHX9_2
  SHX5_2[5] = SHX10_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    while true do
      SHX0_3 = SHX1_2
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX2_2.Render2D
      SHX0_3()
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX3_2(SHX4_2)
  SHX3_2 = Wait
  SHX4_2 = 5000
  SHX3_2(SHX4_2)
  SHX1_2 = false
end
SHX12_1.finish = SHX13_1
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = true
  SHX1_2 = Scaleform
  SHX2_2 = "MIDSIZED_MESSAGE"
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2.RunFunction
  SHX3_2 = "SHOW_SHARD_MIDSIZED_MESSAGE"
  SHX4_2 = {}
  SHX5_2 = "~y~TRIATHLON"
  SHX6_2 = "PARACHUTE THROUGH THE CHECKPOINTS TO THE BMX!"
  SHX7_2 = 5
  SHX8_2 = true
  SHX9_2 = false
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX4_2[5] = SHX9_2
  SHX2_2(SHX3_2, SHX4_2)
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
      SHX0_3 = SHX0_2
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX1_2.Render2D
      SHX0_3()
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX2_2(SHX3_2)
  SHX2_2 = Wait
  SHX3_2 = 5000
  SHX2_2(SHX3_2)
  SHX0_2 = false
end
SHX12_1.para = SHX13_1
SHX13_1 = RegisterNetEvent
SHX14_1 = "d9697d34f9"
function SHX15_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX12_1
  SHX2_2 = SHX2_2[SHX0_2]
  if nil ~= SHX2_2 then
    SHX2_2 = SHX12_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX3_2 = table
    SHX3_2 = SHX3_2.unpack
    SHX4_2 = SHX1_2 or SHX4_2
    if not SHX1_2 then
      SHX4_2 = {}
    end
    SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = RegisterNetEvent
SHX14_1 = "f1c217712f"
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = true
  SHX1_2 = Scaleform
  SHX2_2 = "MIDSIZED_MESSAGE"
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2.RunFunction
  SHX3_2 = "SHOW_SHARD_MIDSIZED_MESSAGE"
  SHX4_2 = {}
  SHX5_2 = "~y~TRIATHLON"
  SHX6_2 = "EVENT IS ENDING IN 30 SECONDS"
  SHX7_2 = 5
  SHX8_2 = true
  SHX9_2 = false
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX4_2[5] = SHX9_2
  SHX2_2(SHX3_2, SHX4_2)
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
      SHX0_3 = SHX0_2
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX1_2.Render2D
      SHX0_3()
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX2_2(SHX3_2)
  SHX2_2 = Wait
  SHX3_2 = 5000
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.showCountdownTimer
  SHX3_2 = 31
  SHX2_2(SHX3_2)
  SHX0_2 = false
  SHX2_2 = SHX3_1.hasFinished
  if not SHX2_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "07033c0723"
    SHX4_2 = currentEvent
    SHX4_2 = SHX4_2.minigameId
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = false
SHX14_1 = Citizen
SHX14_1 = SHX14_1.CreateThread
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  while true do
    SHX0_2 = SHX3_1.isParachuting
    if SHX0_2 then
      SHX0_2 = SHX2_1
      if nil ~= SHX0_2 then
        SHX0_2 = GetEntityCoords
        SHX1_2 = PlayerPedId
        SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX1_2()
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
        SHX1_2 = 1
        SHX2_2 = SHX0_1.triathlon
        SHX2_2 = SHX2_2.races
        SHX3_2 = SHX2_1
        SHX2_2 = SHX2_2[SHX3_2]
        SHX2_2 = SHX2_2.checkpoints
        SHX2_2 = #SHX2_2
        SHX3_2 = 1
        for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
          SHX5_2 = SHX0_1.triathlon
          SHX5_2 = SHX5_2.races
          SHX6_2 = SHX2_1
          SHX5_2 = SHX5_2[SHX6_2]
          SHX5_2 = SHX5_2.checkpoints
          SHX5_2 = SHX5_2[SHX4_2]
          SHX6_2 = SHX0_2 - SHX5_2
          SHX6_2 = #SHX6_2
          if SHX6_2 <= 25.0 then
            SHX6_2 = SHX13_1
            if not SHX6_2 then
              SHX6_2 = PlaySoundFrontend
              SHX7_2 = -1
              SHX8_2 = "RACE_PLACED"
              SHX9_2 = "HUD_AWARDS"
              SHX10_2 = false
              SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
              SHX6_2 = true
              SHX13_1 = SHX6_2
              SHX6_2 = SetTimeout
              SHX7_2 = 500
              function SHX8_2()
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX0_3, SHX1_3
                SHX0_3 = false
                SHX13_1 = SHX0_3
              end
              SHX6_2(SHX7_2, SHX8_2)
            end
            SHX6_2 = DeleteCheckpoint
            SHX7_2 = SHX7_1
            SHX7_2 = SHX7_2[SHX4_2]
            SHX6_2(SHX7_2)
            SHX6_2 = SHX7_1
            SHX6_2[SHX4_2] = nil
          end
        end
      end
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 150
    SHX0_2(SHX1_2)
  end
end
SHX14_1(SHX15_1)
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1.isParachuting
  if SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.Text
    SHX1_2 = {}
    SHX1_2.message = "Press LMB or F to deploy parachute"
    SHX0_2(SHX1_2)
  end
end
SHX15_1 = CMG
SHX15_1 = SHX15_1.createThreadOnTick
SHX16_1 = SHX14_1
SHX17_1 = "Triathlon Deploy"
SHX15_1(SHX16_1, SHX17_1)
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2
  SHX0_2 = SHX3_1.isParachuting
  if SHX0_2 then
    SHX0_2 = SHX4_1
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerCoords
    SHX1_2 = SHX1_2()
    SHX2_2 = SHX0_2 - SHX1_2
    SHX3_2 = #SHX2_2
    SHX2_2 = SHX2_2 / SHX3_2
    SHX3_2 = DrawMarker
    SHX4_2 = 2
    SHX5_2 = SHX1_2.x
    SHX6_2 = SHX1_2.y
    SHX7_2 = SHX1_2.z
    SHX7_2 = SHX7_2 + 1.0
    SHX8_2 = SHX2_2.x
    SHX9_2 = SHX2_2.y
    SHX10_2 = SHX2_2.z
    SHX11_2 = 90.0
    SHX12_2 = 0
    SHX13_2 = 0
    SHX14_2 = 1.0
    SHX15_2 = 1.0
    SHX16_2 = 1.0
    SHX17_2 = 0
    SHX18_2 = 0
    SHX19_2 = 255
    SHX20_2 = 150
    SHX21_2 = false
    SHX22_2 = false
    SHX23_2 = 2
    SHX24_2 = false
    SHX25_2 = nil
    SHX26_2 = nil
    SHX27_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
  end
end
SHX16_1 = CMG
SHX16_1 = SHX16_1.createThreadOnTick
SHX17_1 = SHX15_1
SHX18_1 = "Triathlon Direction Marker"
SHX16_1(SHX17_1, SHX18_1)
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = SHX3_1.isInRace
  if SHX0_2 then
    SHX0_2 = IsPedInParachuteFreeFall
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX1_2()
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    if SHX0_2 then
      SHX0_2 = HasEntityCollidedWithAnything
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerPed
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX1_2()
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      if not SHX0_2 then
        SHX0_2 = ApplyForceToEntity
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.getPlayerPed
        SHX1_2 = SHX1_2()
        SHX2_2 = 1
        SHX3_2 = 0.0
        SHX4_2 = 75.0
        SHX5_2 = 2.5
        SHX6_2 = 0.0
        SHX7_2 = 0.0
        SHX8_2 = 0.0
        SHX9_2 = 0
        SHX10_2 = true
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX14_2 = true
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      end
    end
    SHX0_2 = DisableControlAction
    SHX1_2 = 2
    SHX2_2 = 37
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisablePlayerFiring
    SHX1_2 = PlayerId
    SHX1_2 = SHX1_2()
    SHX2_2 = true
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 106
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 45
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 24
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 263
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 140
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 75
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 27
    SHX2_2 = 75
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.setWeapon
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = -1569615261
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerPed
    SHX0_2 = SHX0_2()
    SHX1_2 = SetEntityInvincible
    SHX2_2 = SHX0_2
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SetPlayerInvincible
    SHX2_2 = PlayerId
    SHX2_2 = SHX2_2()
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SetPedCanRagdoll
    SHX2_2 = SHX0_2
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = ClearPedBloodDamage
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
    SHX1_2 = ResetPedVisibleDamage
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
    SHX1_2 = ClearPedLastWeaponDamage
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
    SHX1_2 = SetEntityProofs
    SHX2_2 = SHX0_2
    SHX3_2 = true
    SHX4_2 = true
    SHX5_2 = true
    SHX6_2 = true
    SHX7_2 = true
    SHX8_2 = true
    SHX9_2 = true
    SHX10_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX1_2 = SetEntityCanBeDamaged
    SHX2_2 = SHX0_2
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX17_1 = CMG
SHX17_1 = SHX17_1.createThreadOnTick
SHX18_1 = SHX16_1
SHX19_1 = "Triathlon Parachute"
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = CMG
SHX17_1 = SHX17_1.registerCommand
SHX18_1 = "heading"
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = print
  SHX1_2 = GetEntityHeading
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
  SHX0_2(SHX1_2, SHX2_2)
end
SHX20_1 = false
SHX17_1(SHX18_1, SHX19_1, SHX20_1)
SHX17_1 = RegisterNetEvent
SHX18_1 = "c1cdf22c86"
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = DeleteCheckpoint
  SHX1_2 = SHX5_1.finish
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveBlip
  SHX1_2 = SHX6_1.finish
  SHX0_2(SHX1_2)
  SHX0_2 = PlaySoundFrontend
  SHX1_2 = -1
  SHX2_2 = "ScreenFlash"
  SHX3_2 = "WastedSounds"
  SHX4_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX3_1.isRunning = false
  SHX3_1.isInRace = false
  SHX3_1.hasFinished = true
end
SHX17_1(SHX18_1, SHX19_1)
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = currentEvent
  SHX0_2.isActive = false
  SHX0_2 = pairs
  SHX1_2 = SHX5_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DeleteCheckpoint
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX5_1 = SHX0_2
  SHX0_2 = pairs
  SHX1_2 = SHX6_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = RemoveBlip
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX6_1 = SHX0_2
  SHX0_2 = pairs
  SHX1_2 = SHX7_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DeleteCheckpoint
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX3_1.isInRace = false
end
SHX18_1 = AddEventHandler
SHX19_1 = "e27d89983c"
SHX20_1 = SHX17_1
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = Citizen
SHX18_1 = SHX18_1.CreateThread
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  while true do
    SHX0_2 = SHX3_1.isInRace
    if SHX0_2 then
      SHX0_2 = SHX2_1
      if SHX0_2 then
        SHX0_2 = SHX3_1.currentCheckpoint
        if nil ~= SHX0_2 then
          SHX0_2 = SHX0_1.triathlon
          SHX0_2 = SHX0_2.races
          SHX1_2 = SHX2_1
          SHX0_2 = SHX0_2[SHX1_2]
          SHX0_2 = SHX0_2.extraCheckpoints
          if SHX0_2 then
            SHX0_2 = SHX0_1.triathlon
            SHX0_2 = SHX0_2.races
            SHX1_2 = SHX2_1
            SHX0_2 = SHX0_2[SHX1_2]
            SHX0_2 = SHX0_2.extraCheckpoints
            SHX1_2 = SHX3_1.currentCheckpoint
            SHX0_2 = SHX0_2[SHX1_2]
            if SHX0_2 then
              SHX0_2 = CMG
              SHX0_2 = SHX0_2.getPlayerCoords
              SHX0_2 = SHX0_2()
              SHX1_2 = SHX0_1.triathlon
              SHX1_2 = SHX1_2.races
              SHX2_2 = SHX2_1
              SHX1_2 = SHX1_2[SHX2_2]
              SHX1_2 = SHX1_2.extraCheckpoints
              SHX2_2 = SHX3_1.currentCheckpoint
              SHX1_2 = SHX1_2[SHX2_2]
              SHX0_2 = SHX0_2 - SHX1_2
              SHX0_2 = #SHX0_2
              SHX1_2 = SHX3_1.checkpointDistance
              if SHX0_2 >= SHX1_2 then
                SHX0_2 = SHX0_1.triathlon
                SHX0_2 = SHX0_2.races
                SHX1_2 = SHX2_1
                SHX0_2 = SHX0_2[SHX1_2]
                SHX0_2 = SHX0_2.extraCheckpoints
                SHX1_2 = SHX3_1.currentCheckpoint
                SHX0_2 = SHX0_2[SHX1_2]
                SHX1_2 = SetEntityCoords
                SHX2_2 = PlayerPedId
                SHX2_2 = SHX2_2()
                SHX3_2 = SHX0_2.x
                SHX4_2 = SHX0_2.y
                SHX5_2 = SHX0_2.z
                SHX6_2 = false
                SHX7_2 = false
                SHX8_2 = false
                SHX9_2 = false
                SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
                SHX1_2 = GetEntityModel
                SHX2_2 = CMG
                SHX2_2 = SHX2_2.getPlayerVehicle
                SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX2_2()
                SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
                if 1131912276 ~= SHX1_2 then
                  SHX1_2 = SHX0_1.triathlon
                  SHX1_2 = SHX1_2.races
                  SHX2_2 = SHX2_1
                  SHX1_2 = SHX1_2[SHX2_2]
                  SHX1_2 = SHX1_2.extraCheckpoints
                  SHX2_2 = SHX3_1.currentCheckpoint
                  SHX1_2 = SHX1_2[SHX2_2]
                  SHX2_2 = CMG
                  SHX2_2 = SHX2_2.spawnVehicle
                  SHX3_2 = 1131912276
                  SHX4_2 = SHX1_2.x
                  SHX5_2 = SHX1_2.y
                  SHX6_2 = SHX1_2.z
                  SHX7_2 = 10.0
                  SHX8_2 = true
                  SHX9_2 = true
                  SHX10_2 = true
                  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
                end
              end
            end
          end
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 2000
    SHX0_2(SHX1_2)
  end
end
SHX18_1(SHX19_1)
