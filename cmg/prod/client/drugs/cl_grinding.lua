-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1
SHX0_1 = false
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = vector3
SHX5_1 = 2304.98828125
SHX6_1 = 5135.8110351563
SHX7_1 = 51.296546936035
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.position = SHX4_1
SHX3_1.radius = 100
SHX2_1.mining = SHX3_1
SHX3_1 = {}
SHX4_1 = vector3
SHX5_1 = 1580.9086914062
SHX6_1 = 3581.8850097656
SHX7_1 = 34.838912963867
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.position = SHX4_1
SHX3_1.radius = 10
SHX2_1.processing = SHX3_1
SHX1_1.Heroin = SHX2_1
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = vector3
SHX5_1 = 5382.7719726562
SHX6_1 = -5251.4077148438
SHX7_1 = 34.086650848389
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.position = SHX4_1
SHX3_1.radius = 100
SHX2_1.mining = SHX3_1
SHX3_1 = {}
SHX4_1 = vector3
SHX5_1 = -2087.8676757812
SHX6_1 = 2630.2211914062
SHX7_1 = 3.083966255188
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.position = SHX4_1
SHX3_1.radius = 35
SHX2_1.processing = SHX3_1
SHX3_1 = {}
SHX4_1 = vector3
SHX5_1 = 481.53744506836
SHX6_1 = -3254.2009277344
SHX7_1 = 6.069260597229
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.position = SHX4_1
SHX3_1.radius = 35
SHX2_1.refinery = SHX3_1
SHX1_1.LSD = SHX2_1
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = vector3
SHX5_1 = -593.01190185546
SHX6_1 = 2077.3544921875
SHX7_1 = 131.38098144532
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.position = SHX4_1
SHX3_1.radius = 10
SHX2_1.mining = SHX3_1
SHX3_1 = {}
SHX4_1 = vector3
SHX5_1 = 2711.3342285156
SHX6_1 = 1519.6458740234
SHX7_1 = 24.500577926636
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.position = SHX4_1
SHX3_1.radius = 50
SHX2_1.processing = SHX3_1
SHX1_1.Gold = SHX2_1
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = vector3
SHX5_1 = 382.52517700195
SHX6_1 = 2893.7443847656
SHX7_1 = 43.554821014404
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.position = SHX4_1
SHX3_1.radius = 100
SHX2_1.mining = SHX3_1
SHX3_1 = {}
SHX4_1 = vector3
SHX5_1 = 2645.3518066406
SHX6_1 = 2814.0886230469
SHX7_1 = 33.947082519531
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.position = SHX4_1
SHX3_1.radius = 100
SHX2_1.processing = SHX3_1
SHX1_1.Diamond = SHX2_1
SHX2_1 = CMG
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = SHX1_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = pairs
    SHX8_2 = SHX6_2
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      SHX13_2 = table
      SHX13_2 = SHX13_2.insert
      SHX14_2 = SHX0_2
      SHX15_2 = SHX12_2
      SHX13_2(SHX14_2, SHX15_2)
    end
  end
  return SHX0_2
end
SHX2_1.getGrindingAreas = SHX3_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX1_2 = "amb@world_human_clipboard@male@base"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadAnimDict
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = TaskPlayAnim
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = "base"
  SHX6_2 = 8.0
  SHX7_2 = 8.0
  SHX8_2 = -1
  SHX9_2 = 1
  SHX10_2 = 1.0
  SHX11_2 = false
  SHX12_2 = false
  SHX13_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX2_2 = RemoveAnimDict
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = 1027109416
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadModel
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
  SHX3_2 = CreateObject
  SHX4_2 = SHX2_2
  SHX5_2 = 0.0
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = false
  SHX9_2 = false
  SHX10_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX4_2 = SetModelAsNoLongerNeeded
  SHX5_2 = SHX2_2
  SHX4_2(SHX5_2)
  SHX4_2 = AttachEntityToEntity
  SHX5_2 = SHX3_2
  SHX6_2 = SHX0_2
  SHX7_2 = GetPedBoneIndex
  SHX8_2 = SHX0_2
  SHX9_2 = 26610
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX8_2 = -0.05
  SHX9_2 = -0.05
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 20.0
  SHX13_2 = -110.0
  SHX14_2 = false
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = true
  SHX18_2 = 2
  SHX19_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  return SHX3_2
end
SHX3_1 = RegisterNetEvent
SHX4_1 = "29863bd721"
function SHX5_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX3_2 = SHX0_1
  if not SHX3_2 then
    SHX3_2 = true
    SHX0_1 = SHX3_2
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX4_2 = PlayerPedId
    SHX4_2 = SHX4_2()
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getPlayerCoords
    SHX5_2 = SHX5_2()
    SHX6_2 = GetEntityHeading
    SHX7_2 = SHX4_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = 0
    if "WORLD_HUMAN_CLIPBOARD" == SHX0_2 then
      SHX8_2 = CMG
      SHX8_2 = SHX8_2.getModelGender
      SHX8_2 = SHX8_2()
      if "female" == SHX8_2 then
        SHX8_2 = SHX2_1
        SHX9_2 = SHX4_2
        SHX8_2 = SHX8_2(SHX9_2)
        SHX7_2 = SHX8_2
    end
    else
      SHX8_2 = TaskStartScenarioInPlace
      SHX9_2 = SHX4_2
      SHX10_2 = SHX0_2
      SHX11_2 = 0
      SHX12_2 = true
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    end
    SHX8_2 = nil
    if SHX1_2 then
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.loadPtfx
      SHX10_2 = "core"
      SHX9_2(SHX10_2)
      SHX9_2 = UseParticleFxAsset
      SHX10_2 = "core"
      SHX9_2(SHX10_2)
      SHX9_2 = GetEntityCoords
      SHX10_2 = SHX4_2
      SHX9_2 = SHX9_2(SHX10_2)
      SHX10_2 = StartParticleFxLoopedAtCoord
      SHX11_2 = "ent_amb_smoke_foundry"
      SHX12_2 = SHX9_2.x
      SHX13_2 = SHX9_2.y
      SHX14_2 = SHX9_2.z
      SHX14_2 = SHX14_2 - 3
      SHX15_2 = 0.0
      SHX16_2 = 0.0
      SHX17_2 = 0.0
      SHX18_2 = 1.0
      SHX19_2 = false
      SHX20_2 = false
      SHX21_2 = false
      SHX22_2 = false
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
      SHX8_2 = SHX10_2
      SHX10_2 = RemoveNamedPtfxAsset
      SHX11_2 = "core"
      SHX10_2(SHX11_2)
    end
    SHX9_2 = SHX2_2
    if not SHX9_2 or SHX9_2 < 1 then
      SHX9_2 = 10000
      SHX10_2 = CMG
      SHX10_2 = SHX10_2.isPlatClub
      SHX10_2 = SHX10_2()
      if SHX10_2 then
        SHX9_2 = 7500
      end
    end
    SHX10_2 = CreateThread
    function SHX11_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.startCircularProgressBar
      SHX1_3 = ""
      SHX2_3 = SHX9_2
      SHX3_3 = nil
      function SHX4_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    end
    SHX10_2(SHX11_2)
    while true do
      SHX10_2 = SHX3_2 + SHX9_2
      SHX11_2 = GetGameTimer
      SHX11_2 = SHX11_2()
      if not (SHX10_2 > SHX11_2) then
        break
      end
      SHX10_2 = Wait
      SHX11_2 = 0
      SHX10_2(SHX11_2)
    end
    if 0 ~= SHX7_2 then
      SHX10_2 = DeleteEntity
      SHX11_2 = SHX7_2
      SHX10_2(SHX11_2)
    end
    SHX10_2 = ClearPedTasksImmediately
    SHX11_2 = SHX4_2
    SHX10_2(SHX11_2)
    SHX10_2 = SetEntityHeading
    SHX11_2 = SHX4_2
    SHX12_2 = SHX6_2
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = SetEntityCoordsNoOffset
    SHX11_2 = SHX4_2
    SHX12_2 = SHX5_2.x
    SHX13_2 = SHX5_2.y
    SHX14_2 = SHX5_2.z
    SHX15_2 = true
    SHX16_2 = false
    SHX17_2 = false
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    if SHX1_2 then
      SHX10_2 = RemoveParticleFx
      SHX11_2 = SHX8_2
      SHX12_2 = false
      SHX10_2(SHX11_2, SHX12_2)
    end
    SHX10_2 = false
    SHX0_1 = SHX10_2
  end
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "7418fc87b2"
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = SHX0_1
  if not SHX0_2 then
    SHX0_2 = true
    SHX0_1 = SHX0_2
    SHX0_2 = GetGameTimer
    SHX0_2 = SHX0_2()
    SHX1_2 = RequestAnimDict
    SHX2_2 = "melee@large_wpn@streamed_core"
    SHX1_2(SHX2_2)
    while true do
      SHX1_2 = HasAnimDictLoaded
      SHX2_2 = "melee@large_wpn@streamed_core"
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        break
      end
      SHX1_2 = Wait
      SHX2_2 = 0
      SHX1_2(SHX2_2)
    end
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2 = SHX1_2()
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.loadModel
    SHX3_2 = 260873931
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.requestEntitySpawn
    SHX4_2 = "grinding_pickaxe"
    SHX3_2(SHX4_2)
    SHX3_2 = CreateObject
    SHX4_2 = SHX2_2
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = true
    SHX9_2 = true
    SHX10_2 = true
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX4_2 = AttachEntityToEntity
    SHX5_2 = SHX3_2
    SHX6_2 = SHX1_2
    SHX7_2 = GetPedBoneIndex
    SHX8_2 = SHX1_2
    SHX9_2 = 57005
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    SHX8_2 = 0.18
    SHX9_2 = -0.02
    SHX10_2 = -0.02
    SHX11_2 = 350.0
    SHX12_2 = 100.0
    SHX13_2 = 140.0
    SHX14_2 = true
    SHX15_2 = true
    SHX16_2 = false
    SHX17_2 = true
    SHX18_2 = 1
    SHX19_2 = true
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX4_2 = SetModelAsNoLongerNeeded
    SHX5_2 = SHX2_2
    SHX4_2(SHX5_2)
    SHX4_2 = 10000
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.isPlatClub
    SHX5_2 = SHX5_2()
    if SHX5_2 then
      SHX4_2 = 7500
    end
    SHX5_2 = CreateThread
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.startCircularProgressBar
      SHX1_3 = ""
      SHX2_3 = SHX4_2
      SHX3_3 = nil
      function SHX4_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    end
    SHX5_2(SHX6_2)
    while true do
      SHX5_2 = SHX0_2 + SHX4_2
      SHX6_2 = GetGameTimer
      SHX6_2 = SHX6_2()
      if not (SHX5_2 > SHX6_2) then
        break
      end
      while true do
        SHX5_2 = IsEntityPlayingAnim
        SHX6_2 = CMG
        SHX6_2 = SHX6_2.getPlayerPed
        SHX6_2 = SHX6_2()
        SHX7_2 = "melee@large_wpn@streamed_core"
        SHX8_2 = "ground_attack_on_spot"
        SHX9_2 = 3
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        if 1 ~= SHX5_2 then
          break
        end
        SHX5_2 = Wait
        SHX6_2 = 0
        SHX5_2(SHX6_2)
      end
      SHX5_2 = TaskPlayAnim
      SHX6_2 = SHX1_2
      SHX7_2 = "melee@large_wpn@streamed_core"
      SHX8_2 = "ground_attack_on_spot"
      SHX9_2 = 8.0
      SHX10_2 = 8.0
      SHX11_2 = 1250
      SHX12_2 = 80
      SHX13_2 = 0
      SHX14_2 = false
      SHX15_2 = false
      SHX16_2 = false
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      SHX5_2 = Wait
      SHX6_2 = 0
      SHX5_2(SHX6_2)
    end
    SHX5_2 = RemoveAnimDict
    SHX6_2 = "melee@large_wpn@streamed_core"
    SHX5_2(SHX6_2)
    SHX5_2 = DeleteEntity
    SHX6_2 = SHX3_2
    SHX5_2(SHX6_2)
    SHX5_2 = ClearPedTasksImmediately
    SHX6_2 = SHX1_2
    SHX5_2(SHX6_2)
    SHX5_2 = false
    SHX0_1 = SHX5_2
  else
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.notify
    SHX1_2 = "~r~Mining currently in progress."
    SHX0_2(SHX1_2)
  end
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = false
SHX4_1 = 0
SHX5_1 = false
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = pairs
  SHX1_2 = GetGamePool
  SHX2_2 = "CObject"
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX1_2(SHX2_2)
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = GetEntityModel
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if 1027109416 == SHX6_2 then
      SHX6_2 = SetEntityAsMissionEntity
      SHX7_2 = SHX5_2
      SHX8_2 = false
      SHX9_2 = false
      SHX6_2(SHX7_2, SHX8_2, SHX9_2)
      SHX6_2 = DeleteEntity
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
  end
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2 = SHX0_2()
  if 0 ~= SHX0_2 then
    SHX0_2 = false
    return SHX0_2
  end
  SHX0_2 = GetEntityHealth
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 <= 102 then
    SHX0_2 = false
    return SHX0_2
  end
  SHX0_2 = GetEntitySpeed
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 >= 5.0 then
    SHX0_2 = false
    return SHX0_2
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isEmergencyService
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientGroup
    SHX1_2 = "Vigilante"
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      goto SHX_LABEL_37
    end
  end
  SHX0_2 = false
  return SHX0_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_37:: outside nested blocks until all 'goto SHX_LABEL_37' can see it
  ::SHX_LABEL_37::
  SHX0_2 = true
  return SHX0_2
end
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  if SHX0_2 then
    SHX1_2 = SHX7_1
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      return
    end
  end
  SHX5_1 = SHX0_2
  SHX1_2 = notify
  if SHX0_2 then
    SHX2_2 = "~g~"
    if SHX2_2 then
      goto SHX_LABEL_16
    end
  end
  SHX2_2 = "~r~"
  -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
  ::SHX_LABEL_16::
  SHX3_2 = "Grinding has been toggled "
  if SHX0_2 then
    SHX4_2 = "on."
    if SHX4_2 then
      goto SHX_LABEL_23
    end
  end
  SHX4_2 = "off."
  -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
  ::SHX_LABEL_23::
  SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2
  SHX1_2(SHX2_2)
  SHX1_2 = clearNativeText
  SHX1_2()
end
SHX9_1 = false
SHX10_1 = CMG
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX9_1
  return SHX0_2
end
SHX10_1.isInGrindingArea = SHX11_1
SHX10_1 = AddEventHandler
SHX11_1 = "CMG:onClientSpawn"
function SHX12_1(SHX0_2, SHX1_2)
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
      
      local SHX1_3
      SHX1_3 = true
      SHX9_1 = SHX1_3
      SHX0_3.nearby = true
      SHX1_3 = SHX3_1
      if not SHX1_3 then
        SHX1_3 = SHX0_3.drug
        if "LSD" == SHX1_3 then
          SHX1_3 = SHX0_3.type
          if "mining" == SHX1_3 then
            SHX1_3 = true
            SHX3_1 = SHX1_3
          end
        end
      end
    end
    function SHX3_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3
      SHX1_3 = false
      SHX9_1 = SHX1_3
      SHX0_3.nearby = false
      SHX1_3 = false
      SHX5_1 = SHX1_3
    end
    function SHX4_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
      SHX1_3 = SHX0_3.nearby
      if SHX1_3 then
        SHX1_3 = SHX5_1
        if SHX1_3 then
          SHX1_3 = SHX7_1
          SHX1_3 = SHX1_3()
          if not SHX1_3 then
            SHX1_3 = SHX8_1
            SHX2_3 = false
            SHX1_3(SHX2_3)
          end
        end
        SHX1_3 = IsControlJustReleased
        SHX2_3 = 0
        SHX3_3 = 38
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        if SHX1_3 then
          SHX1_3 = SHX8_1
          SHX2_3 = SHX5_1
          SHX2_3 = not SHX2_3
          SHX1_3(SHX2_3)
        end
        SHX1_3 = SHX5_1
        if SHX1_3 then
          SHX1_3 = drawNativeText
          SHX2_3 = "~g~Grinding mode enabled."
          SHX1_3(SHX2_3)
          SHX1_3 = CMG
          SHX1_3 = SHX1_3.getSelectedEntity
          SHX1_3 = SHX1_3()
          if SHX1_3 then
            SHX2_3 = DoesEntityExist
            SHX3_3 = SHX1_3
            SHX2_3 = SHX2_3(SHX3_3)
            if SHX2_3 then
              SHX2_3 = CMG
              SHX2_3 = SHX2_3.isLootbagModel
              SHX3_3 = GetEntityModel
              SHX4_3 = SHX1_3
              SHX3_3, SHX4_3, SHX5_3 = SHX3_3(SHX4_3)
              SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3)
              if SHX2_3 then
                goto SHX_LABEL_69
              end
            end
          end
          SHX2_3 = SHX0_1
          if not SHX2_3 then
            SHX2_3 = SHX6_1
            SHX2_3()
            SHX2_3 = GetGameTimer
            SHX2_3 = SHX2_3()
            SHX3_3 = SHX4_1
            SHX2_3 = SHX2_3 - SHX3_3
            SHX3_3 = 1000
            if SHX2_3 > SHX3_3 then
              SHX2_3 = TriggerServerEvent
              SHX3_3 = "90f12939da"
              SHX4_3 = SHX0_3.drug
              SHX5_3 = SHX0_3.type
              SHX2_3(SHX3_3, SHX4_3, SHX5_3)
              SHX2_3 = GetGameTimer
              SHX2_3 = SHX2_3()
              SHX4_1 = SHX2_3
            end
          end
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_69:: outside nested blocks until all 'goto SHX_LABEL_69' can see it
      ::SHX_LABEL_69::
    end
    SHX5_2 = pairs
    SHX6_2 = SHX1_1
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = pairs
      SHX12_2 = SHX10_2
      SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
      for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
        SHX17_2 = CMG
        SHX17_2 = SHX17_2.createArea
        SHX18_2 = SHX9_2
        SHX19_2 = "_"
        SHX20_2 = SHX15_2
        SHX18_2 = SHX18_2 .. SHX19_2 .. SHX20_2
        SHX19_2 = SHX16_2.position
        SHX20_2 = SHX16_2.radius
        SHX21_2 = 6
        SHX22_2 = SHX2_2
        SHX23_2 = SHX3_2
        SHX24_2 = SHX4_2
        SHX25_2 = {}
        SHX25_2.drug = SHX9_2
        SHX25_2.type = SHX15_2
        SHX25_2.nearby = false
        SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
      end
    end
  end
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = RegisterNetEvent
SHX11_1 = "772437c583"
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = notify
  SHX1_2 = "~r~You can not grind any more as your inventory is full."
  SHX0_2(SHX1_2)
  SHX0_2 = SHX8_1
  SHX1_2 = false
  SHX0_2(SHX1_2)
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = {}
SHX11_1 = vector3
SHX12_1 = -2538.2626953125
SHX13_1 = 2538.5344238281
SHX14_1 = 1.5569897890091
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX12_1 = vector3
SHX13_1 = -2539.4194335938
SHX14_1 = 2539.9475097656
SHX15_1 = 1.7244160175323
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX13_1 = vector3
SHX14_1 = -2538.71484375
SHX15_1 = 2543.5520019531
SHX16_1 = 1.0692403316498
SHX13_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX14_1 = vector3
SHX15_1 = -2533.0373535156
SHX16_1 = 2542.5346679688
SHX17_1 = 0.32451114058495
SHX14_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX15_1 = vector3
SHX16_1 = -2527.6525878906
SHX17_1 = 2537.4482421875
SHX18_1 = 0.56682348251343
SHX15_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX16_1 = vector3
SHX17_1 = -2523.6909179688
SHX18_1 = 2529.111328125
SHX19_1 = 1.4954501390457
SHX16_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX17_1 = vector3
SHX18_1 = -2525.0510253906
SHX19_1 = 2531.9443359375
SHX20_1 = 0.9762516617775
SHX17_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1)
SHX18_1 = vector3
SHX19_1 = -2526.4099121094
SHX20_1 = 2525.73828125
SHX21_1 = 1.6228685379028
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = vector3
SHX20_1 = -2533.9858398438
SHX21_1 = 2521.1958007813
SHX22_1 = 3.1568129062653
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX20_1 = vector3
SHX21_1 = -2543.078125
SHX22_1 = 2522.0473632813
SHX23_1 = 3.0881731510162
SHX20_1 = SHX20_1(SHX21_1, SHX22_1, SHX23_1)
SHX21_1 = vector3
SHX22_1 = -2550.4807128906
SHX23_1 = 2524.4438476563
SHX24_1 = 3.1460916996002
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX22_1 = vector3
SHX23_1 = -2553.2941894531
SHX24_1 = 2529.9609375
SHX25_1 = 2.8802394866943
SHX22_1 = SHX22_1(SHX23_1, SHX24_1, SHX25_1)
SHX23_1 = vector3
SHX24_1 = -2530.7827148438
SHX25_1 = 2530.3264160156
SHX26_1 = 1.5112105607986
SHX23_1 = SHX23_1(SHX24_1, SHX25_1, SHX26_1)
SHX24_1 = vector3
SHX25_1 = -2530.287109375
SHX26_1 = 2523.9948730469
SHX27_1 = 2.4006836414337
SHX24_1 = SHX24_1(SHX25_1, SHX26_1, SHX27_1)
SHX25_1 = vector3
SHX26_1 = -2521.775390625
SHX27_1 = 2524.0747070313
SHX28_1 = 1.6176110506058
SHX25_1, SHX26_1, SHX27_1, SHX28_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1)
SHX10_1[1] = SHX11_1
SHX10_1[2] = SHX12_1
SHX10_1[3] = SHX13_1
SHX10_1[4] = SHX14_1
SHX10_1[5] = SHX15_1
SHX10_1[6] = SHX16_1
SHX10_1[7] = SHX17_1
SHX10_1[8] = SHX18_1
SHX10_1[9] = SHX19_1
SHX10_1[10] = SHX20_1
SHX10_1[11] = SHX21_1
SHX10_1[12] = SHX22_1
SHX10_1[13] = SHX23_1
SHX10_1[14] = SHX24_1
SHX10_1[15] = SHX25_1
SHX10_1[16] = SHX26_1
SHX10_1[17] = SHX27_1
SHX10_1[18] = SHX28_1
SHX11_1 = Citizen
SHX11_1 = SHX11_1.CreateThread
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  while true do
    SHX0_2 = SHX3_1
    if SHX0_2 then
      break
    end
    SHX0_2 = Wait
    SHX1_2 = 100
    SHX0_2(SHX1_2)
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadModel
  SHX1_2 = "a_c_hen"
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = pairs
  SHX2_2 = SHX10_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = CreatePed
    SHX8_2 = 5
    SHX9_2 = SHX0_2
    SHX10_2 = SHX6_2.x
    SHX11_2 = SHX6_2.y
    SHX12_2 = SHX6_2.z
    SHX13_2 = 0.0
    SHX14_2 = false
    SHX15_2 = true
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX8_2 = SetEntityInvincible
    SHX9_2 = SHX7_2
    SHX10_2 = true
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = SetBlockingOfNonTemporaryEvents
    SHX9_2 = SHX7_2
    SHX10_2 = true
    SHX8_2(SHX9_2, SHX10_2)
  end
  SHX1_2 = SetModelAsNoLongerNeeded
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX11_1(SHX12_1)
