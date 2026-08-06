-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1
SHX0_1 = "anim@mp_fireworks"
SHX1_1 = -1118757580
SHX2_1 = false
SHX3_1 = TriggerEvent
SHX4_1 = "chat:addSuggestion"
SHX5_1 = "/firework"
SHX6_1 = "Lights a firework box"
SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "9e8cc9d4c6"
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2 = SHX0_2()
  if 0 == SHX0_2 then
    SHX0_2 = GetEntityHealth
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX1_2()
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    if SHX0_2 > 102 then
      SHX0_2 = SHX2_1
      if not SHX0_2 then
        SHX0_2 = true
        SHX2_1 = SHX0_2
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.loadAnimDict
        SHX1_2 = "anim@mp_fireworks"
        SHX0_2(SHX1_2)
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.loadModel
        SHX1_2 = SHX1_1
        SHX0_2(SHX1_2)
        SHX0_2 = GetOffsetFromEntityInWorldCoords
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.getPlayerPed
        SHX1_2 = SHX1_2()
        SHX2_2 = 0.0
        SHX3_2 = 0.5
        SHX4_2 = 0.0
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
        SHX1_2 = GetOffsetFromEntityInWorldCoords
        SHX2_2 = CMG
        SHX2_2 = SHX2_2.getPlayerPed
        SHX2_2 = SHX2_2()
        SHX3_2 = 0.0
        SHX4_2 = 0.5
        SHX5_2 = -2.5
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
        SHX2_2 = TaskPlayAnim
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.getPlayerPed
        SHX3_2 = SHX3_2()
        SHX4_2 = SHX0_1
        SHX5_2 = "place_firework_3_box"
        SHX6_2 = -1
        SHX7_2 = -8.0
        SHX8_2 = 3000
        SHX9_2 = 0
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = RemoveAnimDict
        SHX3_2 = "anim@mp_fireworks"
        SHX2_2(SHX3_2)
        SHX2_2 = Wait
        SHX3_2 = 1000
        SHX2_2(SHX3_2)
        SHX2_2 = CMG
        SHX2_2 = SHX2_2.requestEntitySpawn
        SHX3_2 = "firework_box_object"
        SHX2_2(SHX3_2)
        SHX2_2 = CreateObject
        SHX3_2 = SHX1_1
        SHX4_2 = SHX0_2.x
        SHX5_2 = SHX0_2.y
        SHX6_2 = SHX0_2.z
        SHX7_2 = true
        SHX8_2 = false
        SHX9_2 = false
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX3_2 = PlaceObjectOnGroundProperly
        SHX4_2 = SHX2_2
        SHX3_2(SHX4_2)
        SHX3_2 = FreezeEntityPosition
        SHX4_2 = SHX2_2
        SHX5_2 = true
        SHX3_2(SHX4_2, SHX5_2)
        SHX3_2 = SetModelAsNoLongerNeeded
        SHX4_2 = SHX1_1
        SHX3_2(SHX4_2)
        SHX3_2 = Wait
        SHX4_2 = 3000
        SHX3_2(SHX4_2)
        SHX3_2 = TriggerServerEvent
        SHX4_2 = "656f5e70a8"
        SHX5_2 = SHX1_2
        SHX3_2(SHX4_2, SHX5_2)
        SHX3_2 = Wait
        SHX4_2 = 10000
        SHX3_2(SHX4_2)
        SHX3_2 = DeleteEntity
        SHX4_2 = SHX2_2
        SHX3_2(SHX4_2)
        SHX3_2 = false
        SHX2_1 = SHX3_2
    end
  end
  else
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.notify
    SHX1_2 = "You are ~r~not able ~w~to use a ~r~firework box ~w~right now."
    SHX0_2(SHX1_2)
  end
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = CMG
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadPtfx
  SHX3_2 = "scr_indep_fireworks"
  SHX2_2(SHX3_2)
  SHX2_2 = UseParticleFxAsset
  SHX3_2 = "scr_indep_fireworks"
  SHX2_2(SHX3_2)
  SHX2_2 = 100
  if SHX1_2 then
    SHX2_2 = SHX1_2
  end
  SHX3_2 = 1
  SHX4_2 = SHX2_2
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = math
    SHX7_2 = SHX7_2.random
    SHX7_2 = SHX7_2()
    SHX8_2 = math
    SHX8_2 = SHX8_2.random
    SHX8_2 = SHX8_2()
    SHX9_2 = math
    SHX9_2 = SHX9_2.random
    SHX9_2 = SHX9_2()
    SHX10_2 = math
    SHX10_2 = SHX10_2.random
    SHX11_2 = -5
    SHX12_2 = 5
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
    SHX11_2 = math
    SHX11_2 = SHX11_2.random
    SHX11_2 = SHX11_2()
    SHX10_2 = SHX10_2 + SHX11_2
    SHX11_2 = math
    SHX11_2 = SHX11_2.random
    SHX12_2 = -5
    SHX13_2 = 5
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
    SHX12_2 = math
    SHX12_2 = SHX12_2.random
    SHX12_2 = SHX12_2()
    SHX11_2 = SHX11_2 + SHX12_2
    SHX12_2 = math
    SHX12_2 = SHX12_2.random
    SHX13_2 = 5
    SHX14_2 = 25
    SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
    SHX13_2 = math
    SHX13_2 = SHX13_2.random
    SHX13_2 = SHX13_2()
    SHX12_2 = SHX12_2 + SHX13_2
    SHX13_2 = UseParticleFxAsset
    SHX14_2 = "scr_indep_fireworks"
    SHX13_2(SHX14_2)
    SHX13_2 = StartNetworkedParticleFxNonLoopedAtCoord
    SHX14_2 = "scr_indep_firework_trailburst"
    SHX15_2 = SHX0_2.x
    SHX15_2 = SHX15_2 + SHX10_2
    SHX16_2 = SHX0_2.y
    SHX16_2 = SHX16_2 + SHX11_2
    SHX17_2 = SHX0_2.z
    SHX17_2 = SHX17_2 + SHX12_2
    SHX18_2 = 0.0
    SHX19_2 = 0.0
    SHX20_2 = 0.0
    SHX21_2 = 1.0
    SHX22_2 = false
    SHX23_2 = false
    SHX24_2 = false
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
    SHX13_2 = SetParticleFxNonLoopedColour
    SHX14_2 = SHX7_2
    SHX15_2 = SHX8_2
    SHX16_2 = SHX9_2
    SHX13_2(SHX14_2, SHX15_2, SHX16_2)
    SHX13_2 = Wait
    SHX14_2 = math
    SHX14_2 = SHX14_2.random
    SHX15_2 = 150
    SHX16_2 = 300
    SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX14_2(SHX15_2, SHX16_2)
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
  end
  SHX3_2 = RemoveNamedPtfxAsset
  SHX4_2 = "scr_indep_fireworks"
  SHX3_2(SHX4_2)
end
SHX3_1.startFireworksAtCoord = SHX4_1
SHX3_1 = RegisterNetEvent
SHX4_1 = "9078dfe5bb"
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.startFireworksAtCoord
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = nil
SHX4_1 = RegisterNetEvent
SHX5_1 = "4e630ebd93"
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  if SHX0_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.addBlip
    SHX2_2 = -407.36
    SHX3_2 = 1189.33
    SHX4_2 = 325.62
    SHX5_2 = 0
    SHX6_2 = 27
    SHX7_2 = nil
    SHX8_2 = 1.0
    SHX9_2 = false
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX3_1 = SHX1_2
    SHX1_2 = SetBlipRoute
    SHX2_2 = SHX3_1
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
  else
    SHX1_2 = SHX3_1
    if SHX1_2 then
      SHX1_2 = tCMG
      SHX1_2 = SHX1_2.removeBlip
      SHX2_2 = SHX3_1
      SHX1_2(SHX2_2)
      SHX1_2 = nil
      SHX3_1 = SHX1_2
    end
  end
end
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = nil
SHX5_1 = false
SHX6_1 = 0
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.CreateThreadNow
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
    SHX0_3 = SHX6_1
    while true do
      SHX1_3 = SHX4_1
      if not SHX1_3 then
        break
      end
      SHX1_3 = SHX4_1
      SHX1_3 = SHX1_3[SHX0_3]
      if not SHX1_3 then
        break
      end
      SHX1_3 = UseParticleFxAsset
      SHX2_3 = "scr_indep_fireworks"
      SHX1_3(SHX2_3)
      SHX1_3 = StartParticleFxLoopedAtCoord
      SHX2_3 = "scr_indep_firework_fountain"
      SHX3_3 = SHX0_2.x
      SHX4_3 = SHX0_2.y
      SHX5_3 = SHX0_2.z
      SHX6_3 = 0.0
      SHX7_3 = 0.0
      SHX8_3 = 0.0
      SHX9_3 = SHX1_2
      SHX10_3 = false
      SHX11_3 = false
      SHX12_3 = false
      SHX13_3 = false
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
      SHX2_3 = Citizen
      SHX2_3 = SHX2_3.Wait
      SHX3_3 = 5000
      SHX2_3(SHX3_3)
      SHX2_3 = StopParticleFxLooped
      SHX3_3 = SHX1_3
      SHX4_3 = false
      SHX2_3(SHX3_3, SHX4_3)
    end
  end
  SHX2_2(SHX3_2)
end
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.CreateThreadNow
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
    SHX0_3 = SHX6_1
    while true do
      SHX1_3 = SHX4_1
      if not SHX1_3 then
        break
      end
      SHX1_3 = SHX4_1
      SHX1_3 = SHX1_3[SHX0_3]
      if not SHX1_3 then
        break
      end
      SHX1_3 = UseParticleFxAsset
      SHX2_3 = "scr_indep_fireworks"
      SHX1_3(SHX2_3)
      SHX1_3 = StartParticleFxLoopedAtCoord
      SHX2_3 = "scr_indep_firework_starburst"
      SHX3_3 = SHX0_2.x
      SHX4_3 = SHX0_2.y
      SHX5_3 = SHX0_2.z
      SHX6_3 = 0.0
      SHX7_3 = 0.0
      SHX8_3 = 0.0
      SHX9_3 = SHX1_2
      SHX10_3 = math
      SHX10_3 = SHX10_3.random
      SHX10_3 = SHX10_3()
      SHX10_3 = SHX10_3 * 2.0
      SHX9_3 = SHX9_3 * SHX10_3
      SHX10_3 = false
      SHX11_3 = false
      SHX12_3 = false
      SHX13_3 = false
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
      SHX2_3 = Citizen
      SHX2_3 = SHX2_3.Wait
      SHX3_3 = math
      SHX3_3 = SHX3_3.random
      SHX4_3 = 500
      SHX5_3 = 2500
      SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3 = SHX3_3(SHX4_3, SHX5_3)
      SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
      SHX2_3 = StopParticleFxLooped
      SHX3_3 = SHX1_3
      SHX4_3 = false
      SHX2_3(SHX3_3, SHX4_3)
    end
  end
  SHX2_2(SHX3_2)
end
function SHX9_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.CreateThreadNow
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
    SHX0_3 = SHX6_1
    while true do
      SHX1_3 = SHX4_1
      if not SHX1_3 then
        break
      end
      SHX1_3 = SHX4_1
      SHX1_3 = SHX1_3[SHX0_3]
      if not SHX1_3 then
        break
      end
      SHX1_3 = UseParticleFxAsset
      SHX2_3 = "scr_indep_fireworks"
      SHX1_3(SHX2_3)
      SHX1_3 = StartParticleFxLoopedAtCoord
      SHX2_3 = "scr_indep_firework_trailburst"
      SHX3_3 = SHX0_2.x
      SHX4_3 = SHX0_2.y
      SHX5_3 = SHX0_2.z
      SHX6_3 = 0.0
      SHX7_3 = 0.0
      SHX8_3 = 0.0
      SHX9_3 = SHX1_2
      SHX10_3 = math
      SHX10_3 = SHX10_3.random
      SHX10_3 = SHX10_3()
      SHX10_3 = SHX10_3 * 2.0
      SHX9_3 = SHX9_3 * SHX10_3
      SHX10_3 = false
      SHX11_3 = false
      SHX12_3 = false
      SHX13_3 = false
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
      SHX2_3 = Citizen
      SHX2_3 = SHX2_3.Wait
      SHX3_3 = math
      SHX3_3 = SHX3_3.random
      SHX4_3 = 500
      SHX5_3 = 2500
      SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3 = SHX3_3(SHX4_3, SHX5_3)
      SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
      SHX2_3 = StopParticleFxLooped
      SHX3_3 = SHX1_3
      SHX4_3 = false
      SHX2_3(SHX3_3, SHX4_3)
    end
  end
  SHX2_2(SHX3_2)
end
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX2_2 = math
  SHX2_2 = SHX2_2.random
  SHX2_2 = SHX2_2()
  SHX2_2 = SHX2_2 - 0.5
  SHX2_2 = SHX2_2 * SHX1_2
  SHX2_2 = SHX2_2 * 2
  SHX3_2 = math
  SHX3_2 = SHX3_2.random
  SHX3_2 = SHX3_2()
  SHX3_2 = SHX3_2 - 0.5
  SHX3_2 = SHX3_2 * SHX1_2
  SHX3_2 = SHX3_2 * 2
  SHX4_2 = math
  SHX4_2 = SHX4_2.random
  SHX4_2 = SHX4_2()
  SHX4_2 = SHX4_2 * 75.0
  SHX5_2 = vector3
  SHX6_2 = SHX0_2.x
  SHX6_2 = SHX6_2 + SHX2_2
  SHX7_2 = SHX0_2.y
  SHX7_2 = SHX7_2 + SHX3_2
  SHX8_2 = SHX0_2.z
  SHX8_2 = SHX8_2 + 25.0
  SHX8_2 = SHX8_2 + SHX4_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = SHX0_2 - SHX5_2
  SHX5_2 = #SHX5_2
  SHX6_2 = ShootSingleBulletBetweenCoords
  SHX7_2 = SHX0_2.x
  SHX8_2 = SHX0_2.y
  SHX9_2 = SHX0_2.z
  SHX10_2 = SHX0_2.x
  SHX10_2 = SHX10_2 + SHX2_2
  SHX11_2 = SHX0_2.y
  SHX11_2 = SHX11_2 + SHX3_2
  SHX12_2 = SHX0_2.z
  SHX12_2 = SHX12_2 + SHX4_2
  SHX12_2 = SHX12_2 + 25.0
  SHX13_2 = 10
  SHX14_2 = true
  SHX15_2 = 2138347493
  SHX16_2 = 0
  SHX17_2 = true
  SHX18_2 = false
  SHX19_2 = SHX5_2 * 2.0
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
end
function SHX11_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.CreateThreadNow
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = SHX6_1
    while true do
      SHX1_3 = SHX4_1
      if not SHX1_3 then
        break
      end
      SHX1_3 = SHX4_1
      SHX1_3 = SHX1_3[SHX0_3]
      if not SHX1_3 then
        break
      end
      SHX1_3 = SHX10_1
      SHX2_3 = SHX0_2
      SHX3_3 = SHX1_2
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = Citizen
      SHX1_3 = SHX1_3.Wait
      SHX2_3 = SHX2_2
      SHX1_3(SHX2_3)
    end
  end
  SHX3_2(SHX4_2)
end
SHX12_1 = {}
SHX13_1 = vector3
SHX14_1 = -421.4
SHX15_1 = 1108.81
SHX16_1 = 332.53
SHX13_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX14_1 = vector3
SHX15_1 = -436.92
SHX16_1 = 1112.98
SHX17_1 = 332.54
SHX14_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX15_1 = vector3
SHX16_1 = -401.12
SHX17_1 = 1100.29
SHX18_1 = 332.53
SHX15_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX16_1 = vector3
SHX17_1 = -458.45
SHX18_1 = 1115.95
SHX19_1 = 332.55
SHX16_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX17_1 = vector3
SHX18_1 = -413.05
SHX19_1 = 1097.44
SHX20_1 = 332.53
SHX17_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1)
SHX18_1 = vector3
SHX19_1 = -449.77
SHX20_1 = 1107.41
SHX21_1 = 332.53
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = vector3
SHX20_1 = -431.66
SHX21_1 = 1101.79
SHX22_1 = 340.52
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX20_1 = vector3
SHX21_1 = -401.41
SHX22_1 = 1092.78
SHX23_1 = 343.85
SHX20_1 = SHX20_1(SHX21_1, SHX22_1, SHX23_1)
SHX21_1 = vector3
SHX22_1 = -439.14
SHX23_1 = 1075.14
SHX24_1 = 352.42
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX22_1 = vector3
SHX23_1 = -462.21
SHX24_1 = 1109.73
SHX25_1 = 343.85
SHX22_1, SHX23_1, SHX24_1, SHX25_1 = SHX22_1(SHX23_1, SHX24_1, SHX25_1)
SHX12_1[1] = SHX13_1
SHX12_1[2] = SHX14_1
SHX12_1[3] = SHX15_1
SHX12_1[4] = SHX16_1
SHX12_1[5] = SHX17_1
SHX12_1[6] = SHX18_1
SHX12_1[7] = SHX19_1
SHX12_1[8] = SHX20_1
SHX12_1[9] = SHX21_1
SHX12_1[10] = SHX22_1
SHX12_1[11] = SHX23_1
SHX12_1[12] = SHX24_1
SHX12_1[13] = SHX25_1
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  while true do
    SHX0_2 = SHX5_1
    if not SHX0_2 then
      break
    end
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerCoords
    SHX0_2 = SHX0_2()
    SHX1_2 = ipairs
    SHX2_2 = SHX12_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = SHX0_2 - SHX6_2
      SHX7_2 = #SHX7_2
      if SHX7_2 < 10.0 then
        SHX7_2 = SetEntityCoords
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.getPlayerPed
        SHX8_2 = SHX8_2()
        SHX9_2 = -410.52
        SHX10_2 = 1181.81
        SHX11_2 = 325.59
        SHX12_2 = false
        SHX13_2 = false
        SHX14_2 = false
        SHX15_2 = false
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
        break
      end
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
end
SHX14_1 = RegisterNetEvent
SHX15_1 = "698a9bf67f"
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadPtfx
  SHX2_2 = "scr_indep_fireworks"
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadWeaponAsset
  SHX2_2 = "weapon_firework"
  SHX1_2(SHX2_2)
  SHX1_2 = SHX4_1
  if not SHX1_2 then
    SHX1_2 = {}
    SHX4_1 = SHX1_2
  end
  SHX1_2 = SHX4_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX1_2 = SHX4_1
    SHX2_2 = {}
    SHX1_2[SHX0_2] = SHX2_2
  end
  SHX6_1 = SHX0_2
  SHX1_2 = SHX5_1
  if not SHX1_2 then
    SHX1_2 = true
    SHX5_1 = SHX1_2
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.CreateThreadNow
    SHX2_2 = SHX13_1
    SHX1_2(SHX2_2)
  end
  if 1 == SHX0_2 then
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -421.4
    SHX4_2 = 1108.81
    SHX5_2 = 332.53
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -436.92
    SHX4_2 = 1112.98
    SHX5_2 = 332.54
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -401.12
    SHX4_2 = 1100.29
    SHX5_2 = 332.53
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -458.45
    SHX4_2 = 1115.95
    SHX5_2 = 332.55
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
  elseif 2 == SHX0_2 then
    SHX1_2 = SHX4_1
    SHX1_2[1] = nil
    SHX1_2 = SHX11_1
    SHX2_2 = vector3
    SHX3_2 = -413.05
    SHX4_2 = 1097.44
    SHX5_2 = 332.53
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 25.0
    SHX4_2 = 1000
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = SHX11_1
    SHX2_2 = vector3
    SHX3_2 = -449.77
    SHX4_2 = 1107.41
    SHX5_2 = 332.53
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 25.0
    SHX4_2 = 1000
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  elseif 3 == SHX0_2 then
    SHX1_2 = SHX8_1
    SHX2_2 = vector3
    SHX3_2 = -431.66
    SHX4_2 = 1101.79
    SHX5_2 = 340.52
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX8_1
    SHX2_2 = vector3
    SHX3_2 = -401.41
    SHX4_2 = 1092.78
    SHX5_2 = 343.85
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX8_1
    SHX2_2 = vector3
    SHX3_2 = -439.14
    SHX4_2 = 1075.14
    SHX5_2 = 352.42
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX8_1
    SHX2_2 = vector3
    SHX3_2 = -462.21
    SHX4_2 = 1109.73
    SHX5_2 = 343.85
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
  elseif 4 == SHX0_2 then
    SHX1_2 = SHX4_1
    SHX1_2[2] = nil
    SHX1_2 = SHX4_1
    SHX1_2[3] = nil
  elseif 5 == SHX0_2 then
    SHX1_2 = SHX9_1
    SHX2_2 = vector3
    SHX3_2 = -431.66
    SHX4_2 = 1101.79
    SHX5_2 = 340.52
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX9_1
    SHX2_2 = vector3
    SHX3_2 = -401.41
    SHX4_2 = 1092.78
    SHX5_2 = 343.85
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX9_1
    SHX2_2 = vector3
    SHX3_2 = -439.14
    SHX4_2 = 1075.14
    SHX5_2 = 352.42
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX9_1
    SHX2_2 = vector3
    SHX3_2 = -462.21
    SHX4_2 = 1109.73
    SHX5_2 = 343.85
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
  elseif 6 == SHX0_2 then
    SHX1_2 = SHX4_1
    SHX1_2[5] = nil
  elseif 7 == SHX0_2 then
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -413.05
    SHX4_2 = 1097.44
    SHX5_2 = 332.53
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 1.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -449.77
    SHX4_2 = 1107.41
    SHX5_2 = 332.53
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 1.0
    SHX1_2(SHX2_2, SHX3_2)
  elseif 8 == SHX0_2 then
    SHX1_2 = SHX4_1
    SHX1_2[7] = nil
    SHX1_2 = SHX11_1
    SHX2_2 = vector3
    SHX3_2 = -401.41
    SHX4_2 = 1092.78
    SHX5_2 = 343.85
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 100.0
    SHX4_2 = 400
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = SHX11_1
    SHX2_2 = vector3
    SHX3_2 = -439.14
    SHX4_2 = 1075.14
    SHX5_2 = 352.42
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 100.0
    SHX4_2 = 400
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = SHX11_1
    SHX2_2 = vector3
    SHX3_2 = -462.21
    SHX4_2 = 1109.73
    SHX5_2 = 343.85
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 100.0
    SHX4_2 = 400
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  elseif 9 == SHX0_2 then
    SHX1_2 = SHX4_1
    SHX1_2[8] = nil
  elseif 10 == SHX0_2 then
    SHX1_2 = SHX8_1
    SHX2_2 = vector3
    SHX3_2 = -431.66
    SHX4_2 = 1101.79
    SHX5_2 = 340.52
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 4.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX8_1
    SHX2_2 = vector3
    SHX3_2 = -401.41
    SHX4_2 = 1092.78
    SHX5_2 = 343.85
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 4.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX8_1
    SHX2_2 = vector3
    SHX3_2 = -439.14
    SHX4_2 = 1075.14
    SHX5_2 = 352.42
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 4.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX8_1
    SHX2_2 = vector3
    SHX3_2 = -462.21
    SHX4_2 = 1109.73
    SHX5_2 = 343.85
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 4.0
    SHX1_2(SHX2_2, SHX3_2)
  elseif 11 == SHX0_2 then
    SHX1_2 = SHX4_1
    SHX1_2[10] = nil
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -421.4
    SHX4_2 = 1108.81
    SHX5_2 = 332.53
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -436.92
    SHX4_2 = 1112.98
    SHX5_2 = 332.54
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -401.12
    SHX4_2 = 1100.29
    SHX5_2 = 332.53
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -458.45
    SHX4_2 = 1115.95
    SHX5_2 = 332.55
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX9_1
    SHX2_2 = vector3
    SHX3_2 = -431.66
    SHX4_2 = 1101.79
    SHX5_2 = 340.52
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 4.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX9_1
    SHX2_2 = vector3
    SHX3_2 = -401.41
    SHX4_2 = 1092.78
    SHX5_2 = 343.85
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 4.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX9_1
    SHX2_2 = vector3
    SHX3_2 = -439.14
    SHX4_2 = 1075.14
    SHX5_2 = 352.42
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 4.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX9_1
    SHX2_2 = vector3
    SHX3_2 = -462.21
    SHX4_2 = 1109.73
    SHX5_2 = 343.85
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 4.0
    SHX1_2(SHX2_2, SHX3_2)
  elseif 12 == SHX0_2 then
    SHX1_2 = SHX4_1
    SHX1_2[11] = nil
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -421.4
    SHX4_2 = 1108.81
    SHX5_2 = 332.53
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -436.92
    SHX4_2 = 1112.98
    SHX5_2 = 332.54
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -401.12
    SHX4_2 = 1100.29
    SHX5_2 = 332.53
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -458.45
    SHX4_2 = 1115.95
    SHX5_2 = 332.55
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX11_1
    SHX2_2 = vector3
    SHX3_2 = -413.05
    SHX4_2 = 1097.44
    SHX5_2 = 332.53
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 25.0
    SHX4_2 = 1000
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = SHX11_1
    SHX2_2 = vector3
    SHX3_2 = -449.77
    SHX4_2 = 1107.41
    SHX5_2 = 332.53
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 25.0
    SHX4_2 = 1000
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  elseif 13 == SHX0_2 then
    SHX1_2 = SHX4_1
    SHX1_2[12] = nil
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -413.05
    SHX4_2 = 1097.44
    SHX5_2 = 332.53
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 1.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -449.77
    SHX4_2 = 1107.41
    SHX5_2 = 332.53
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 1.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX9_1
    SHX2_2 = vector3
    SHX3_2 = -431.66
    SHX4_2 = 1101.79
    SHX5_2 = 340.52
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 4.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX9_1
    SHX2_2 = vector3
    SHX3_2 = -401.41
    SHX4_2 = 1092.78
    SHX5_2 = 343.85
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 4.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX9_1
    SHX2_2 = vector3
    SHX3_2 = -439.14
    SHX4_2 = 1075.14
    SHX5_2 = 352.42
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 4.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX9_1
    SHX2_2 = vector3
    SHX3_2 = -462.21
    SHX4_2 = 1109.73
    SHX5_2 = 343.85
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 4.0
    SHX1_2(SHX2_2, SHX3_2)
  elseif 14 == SHX0_2 then
    SHX1_2 = SHX4_1
    SHX1_2[13] = nil
    SHX1_2 = SHX11_1
    SHX2_2 = vector3
    SHX3_2 = -401.41
    SHX4_2 = 1092.78
    SHX5_2 = 343.85
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 100.0
    SHX4_2 = 400
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = SHX11_1
    SHX2_2 = vector3
    SHX3_2 = -439.14
    SHX4_2 = 1075.14
    SHX5_2 = 352.42
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 100.0
    SHX4_2 = 400
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = SHX11_1
    SHX2_2 = vector3
    SHX3_2 = -462.21
    SHX4_2 = 1109.73
    SHX5_2 = 343.85
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 100.0
    SHX4_2 = 400
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  elseif 15 == SHX0_2 then
    SHX1_2 = SHX4_1
    SHX1_2[14] = nil
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -413.05
    SHX4_2 = 1097.44
    SHX5_2 = 332.53
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -449.77
    SHX4_2 = 1107.41
    SHX5_2 = 332.53
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -421.4
    SHX4_2 = 1108.81
    SHX5_2 = 332.53
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -436.92
    SHX4_2 = 1112.98
    SHX5_2 = 332.54
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -401.12
    SHX4_2 = 1100.29
    SHX5_2 = 332.53
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -458.45
    SHX4_2 = 1115.95
    SHX5_2 = 332.55
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -383.67
    SHX4_2 = 1185.89
    SHX5_2 = 325.79
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX7_1
    SHX2_2 = vector3
    SHX3_2 = -430.62
    SHX4_2 = 1197.46
    SHX5_2 = 325.64
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = 2.0
    SHX1_2(SHX2_2, SHX3_2)
  elseif 16 == SHX0_2 then
    SHX1_2 = SHX4_1
    SHX1_2[15] = nil
    SHX1_2 = false
    SHX5_1 = SHX1_2
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 5000
    SHX1_2(SHX2_2)
    SHX1_2 = nil
    SHX4_1 = SHX1_2
    SHX1_2 = 0
    SHX6_1 = SHX1_2
  end
end
SHX14_1(SHX15_1, SHX16_1)
