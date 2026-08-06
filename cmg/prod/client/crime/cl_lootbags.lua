-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1
SHX0_1 = {}
SHX1_1 = DecorRegister
SHX2_1 = "ece3aa29cb"
SHX3_1 = 3
SHX1_1(SHX2_1, SHX3_1)
SHX1_1 = DecorRegister
SHX2_1 = "b1457c1a26"
SHX3_1 = 2
SHX1_1(SHX2_1, SHX3_1)
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX1_2 = SHX1_2.xy
  SHX2_2 = SHX0_2.xy
  SHX1_2 = SHX1_2 - SHX2_2
  SHX1_2 = #SHX1_2
  if SHX1_2 > 100.0 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = 0
  SHX3_2 = pairs
  SHX4_2 = GetActivePlayers
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2()
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = GetPlayerPed
    SHX10_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2)
    if 0 ~= SHX9_2 then
      SHX10_2 = GetEntityCoords
      SHX11_2 = SHX9_2
      SHX12_2 = true
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
      SHX11_2 = SHX10_2.xy
      SHX12_2 = SHX0_2.xy
      SHX11_2 = SHX11_2 - SHX12_2
      SHX11_2 = #SHX11_2
      if SHX1_2 > SHX11_2 then
        SHX2_2 = SHX2_2 + 1
      end
    end
  end
  SHX3_2 = SHX2_2 < 3
  return SHX3_2
end
SHX2_1 = RegisterNetEvent
SHX3_1 = "28fa8ed339"
function SHX4_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadModel
  SHX4_2 = "prop_poly_bag_money"
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = CreateObject
  SHX5_2 = SHX3_2
  SHX6_2 = SHX1_2.x
  SHX7_2 = SHX1_2.y
  SHX8_2 = SHX1_2.z
  SHX9_2 = false
  SHX10_2 = true
  SHX11_2 = true
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX5_2 = DecorSetInt
  SHX6_2 = SHX4_2
  SHX7_2 = "5f7af1c5ce"
  SHX8_2 = SHX0_2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = DecorSetInt
  SHX6_2 = SHX4_2
  SHX7_2 = "ece3aa29cb"
  SHX8_2 = SHX2_2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = PlaceObjectOnGroundProperly
  SHX6_2 = SHX4_2
  SHX5_2(SHX6_2)
  SHX5_2 = SetModelAsNoLongerNeeded
  SHX6_2 = SHX3_2
  SHX5_2(SHX6_2)
  SHX5_2 = SHX0_1
  SHX5_2[SHX0_2] = SHX4_2
  SHX5_2 = SetTimeout
  SHX6_2 = 600000
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = TriggerEvent
    SHX1_3 = "cf4c4c9104"
    SHX2_3 = SHX0_2
    SHX0_3(SHX1_3, SHX2_3)
  end
  SHX5_2(SHX6_2, SHX7_2)
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RegisterNetEvent
SHX3_1 = "077a664824"
function SHX4_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadModel
  if SHX3_2 then
    SHX6_2 = "ch_prop_ch_bag_01a"
    if SHX6_2 then
      goto SHX_LABEL_9
    end
  end
  SHX6_2 = "xs_prop_arena_bag_01"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = CreateObject
  SHX7_2 = SHX5_2
  SHX8_2 = SHX1_2.x
  SHX9_2 = SHX1_2.y
  SHX10_2 = SHX1_2.z
  SHX11_2 = false
  SHX12_2 = true
  SHX13_2 = true
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX7_2 = DecorSetInt
  SHX8_2 = SHX6_2
  SHX9_2 = "5f7af1c5ce"
  SHX10_2 = SHX0_2
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = DecorSetInt
  SHX8_2 = SHX6_2
  SHX9_2 = "ece3aa29cb"
  SHX10_2 = SHX2_2
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  if SHX4_2 then
    SHX7_2 = DecorSetInt
    SHX8_2 = SHX6_2
    SHX9_2 = "12da94aa7e"
    SHX10_2 = SHX4_2
    SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  end
  if nil ~= SHX3_2 then
    SHX7_2 = DecorSetBool
    SHX8_2 = SHX6_2
    SHX9_2 = "b1457c1a26"
    SHX10_2 = true
    SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  end
  SHX7_2 = PlaceObjectOnGroundProperly
  SHX8_2 = SHX6_2
  SHX7_2(SHX8_2)
  SHX7_2 = SetObjectPhysicsParams
  SHX8_2 = SHX6_2
  SHX9_2 = 10
  SHX10_2 = 0
  SHX11_2 = 0
  SHX12_2 = 0
  SHX13_2 = 0
  SHX14_2 = 9.5
  SHX15_2 = 0
  SHX16_2 = 0
  SHX17_2 = 0
  SHX18_2 = 0
  SHX19_2 = 75.0
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX7_2 = SetModelAsNoLongerNeeded
  SHX8_2 = SHX5_2
  SHX7_2(SHX8_2)
  SHX7_2 = SHX0_1
  SHX7_2[SHX0_2] = SHX6_2
  SHX7_2 = SetTimeout
  SHX8_2 = 8000
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = DoesEntityExist
    SHX1_3 = SHX6_2
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 then
      SHX0_3 = SHX1_1
      SHX1_3 = SHX1_2
      SHX0_3 = SHX0_3(SHX1_3)
      if SHX0_3 then
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "6b115956c4"
        SHX2_3 = SHX0_2
        SHX3_3 = GetEntityCoords
        SHX4_3 = SHX6_2
        SHX5_3 = true
        SHX3_3, SHX4_3, SHX5_3 = SHX3_3(SHX4_3, SHX5_3)
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      end
    end
  end
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = SetTimeout
  SHX8_2 = 600000
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = TriggerEvent
    SHX1_3 = "cf4c4c9104"
    SHX2_3 = SHX0_2
    SHX0_3(SHX1_3, SHX2_3)
  end
  SHX7_2(SHX8_2, SHX9_2)
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RegisterNetEvent
SHX3_1 = "2121bcd4a4"
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = SHX0_1
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX3_2 = FreezeEntityPosition
    SHX4_2 = SHX2_2
    SHX5_2 = true
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = SetEntityCoordsNoOffset
    SHX4_2 = SHX2_2
    SHX5_2 = SHX1_2.x
    SHX6_2 = SHX1_2.y
    SHX7_2 = SHX1_2.z
    SHX8_2 = true
    SHX9_2 = false
    SHX10_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  end
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = {}
SHX3_1 = -1712051648
SHX2_1[SHX3_1] = true
SHX3_1 = 577194190
SHX2_1[SHX3_1] = true
SHX3_1 = CMG
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX2_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX1_2 = false
  end
  return SHX1_2
end
SHX3_1.isLootbagModel = SHX4_1
SHX3_1 = CMG
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.TriggerServerCallback
  SHX2_2 = "e6e9c9337e"
  SHX3_2 = SHX0_2
  return SHX1_2(SHX2_2, SHX3_2)
end
SHX3_1.isLootbagOwnerVigilante = SHX4_1
SHX3_1 = RegisterNetEvent
SHX4_1 = "cf4c4c9104"
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX2_2 = DoesEntityExist
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = DeleteEntity
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
    SHX2_2 = SHX0_1
    SHX2_2[SHX0_2] = nil
  end
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = AddEventHandler
SHX4_1 = "onResourceStop"
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX0_2 == SHX1_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX0_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = DeleteObject
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
    end
  end
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "5f6842bee3"
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = GetEntityCoords
  SHX2_2 = GetPlayerPed
  SHX3_2 = -1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX2_2(SHX3_2)
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX2_2 = SHX1_2 - SHX0_2
  SHX2_2 = #SHX2_2
  if SHX2_2 <= 15 then
    SHX3_2 = GetSoundId
    SHX3_2 = SHX3_2()
    SHX4_2 = PlaySoundFrontend
    SHX5_2 = SHX3_2
    SHX6_2 = "Object_Collect_Player"
    SHX7_2 = "GTAO_FM_Events_Soundset"
    SHX8_2 = true
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX4_2 = ReleaseSoundId
    SHX5_2 = SHX3_2
    SHX4_2(SHX5_2)
  end
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = AddEventHandler
SHX4_1 = "919aefda0c"
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = DecorGetInt
    SHX8_2 = SHX6_2
    SHX9_2 = "ece3aa29cb"
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX7_2 ~= SHX0_2 then
      SHX8_2 = DeleteEntity
      SHX9_2 = SHX6_2
      SHX8_2(SHX9_2)
      SHX8_2 = SHX0_1
      SHX8_2[SHX5_2] = nil
    end
  end
end
SHX3_1(SHX4_1, SHX5_1)
