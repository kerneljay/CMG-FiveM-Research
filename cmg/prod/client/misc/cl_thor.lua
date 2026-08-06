-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1
function SHX0_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = GetActivePlayers
  SHX1_2 = SHX1_2()
  SHX2_2 = -1
  SHX3_2 = -1
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = GetEntityCoords
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = ipairs
  SHX7_2 = SHX1_2
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    SHX12_2 = GetPlayerPed
    SHX13_2 = SHX11_2
    SHX12_2 = SHX12_2(SHX13_2)
    if SHX12_2 ~= SHX4_2 then
      SHX13_2 = GetEntityCoords
      SHX14_2 = SHX12_2
      SHX13_2 = SHX13_2(SHX14_2)
      SHX14_2 = SHX13_2 - SHX5_2
      SHX14_2 = #SHX14_2
      if -1 == SHX2_2 or SHX2_2 > SHX14_2 then
        SHX3_2 = SHX11_2
        SHX2_2 = SHX14_2
      end
    end
  end
  if -1 ~= SHX2_2 and SHX0_2 >= SHX2_2 then
    return SHX3_2
  else
    SHX6_2 = nil
    return SHX6_2
  end
end
SHX1_1 = RegisterNetEvent
SHX2_1 = "c714651523"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = FreezeEntityPosition
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = Wait
  SHX1_2 = 2500
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadAnimDict
  SHX1_2 = "ragdoll@human"
  SHX0_2(SHX1_2)
  SHX0_2 = TaskPlayAnim
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = "ragdoll@human"
  SHX3_2 = "electrocute"
  SHX4_2 = 3.0
  SHX5_2 = 1.0
  SHX6_2 = -1
  SHX7_2 = 1
  SHX8_2 = 0
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX0_2 = RemoveAnimDict
  SHX1_2 = "ragdoll@human"
  SHX0_2(SHX1_2)
  SHX0_2 = Wait
  SHX1_2 = 5000
  SHX0_2(SHX1_2)
  SHX0_2 = SetEntityHealth
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = 0
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = FreezeEntityPosition
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
SHX1_1(SHX2_1, SHX3_1)
SHX1_1 = RegisterNetEvent
SHX2_1 = "b96db67b48"
function SHX3_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2
  SHX2_2 = GetEntityCoords
  SHX3_2 = PlayerPedId
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2 = SHX3_2()
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
  SHX2_2 = SHX0_2 - SHX2_2
  SHX2_2 = #SHX2_2
  if SHX2_2 < 25.0 then
    SHX2_2 = SendNUIMessage
    SHX3_2 = {}
    SHX3_2.transactionType = "ulimitedpower"
    SHX2_2(SHX3_2)
    SHX2_2 = {}
    SHX3_2 = 0
    SHX4_2 = SHX1_2 - SHX0_2
    SHX5_2 = 1
    SHX6_2 = 10
    SHX7_2 = 1
    for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
      SHX9_2 = table
      SHX9_2 = SHX9_2.insert
      SHX10_2 = SHX2_2
      SHX11_2 = vector3
      SHX12_2 = SHX4_2.x
      SHX12_2 = SHX12_2 / 10
      SHX12_2 = SHX12_2 * SHX8_2
      SHX13_2 = SHX4_2.y
      SHX13_2 = SHX13_2 / 10
      SHX13_2 = SHX13_2 * SHX8_2
      SHX14_2 = SHX4_2.z
      SHX14_2 = SHX14_2 / 10
      SHX14_2 = SHX14_2 * SHX8_2
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
      SHX11_2 = SHX0_2 + SHX11_2
      SHX9_2(SHX10_2, SHX11_2)
    end
    SHX5_2 = {}
    SHX6_2 = pairs
    SHX7_2 = SHX2_2
    SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
    for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
      SHX12_2 = UseParticleFxAsset
      SHX13_2 = "core"
      SHX12_2(SHX13_2)
      SHX12_2 = StartParticleFxLoopedAtCoord
      SHX13_2 = "ent_dst_elec_crackle"
      SHX14_2 = SHX11_2.x
      SHX15_2 = SHX11_2.y
      SHX16_2 = SHX11_2.z
      SHX17_2 = 0.0
      SHX18_2 = 0.0
      SHX19_2 = 0.0
      SHX20_2 = 1.2
      SHX21_2 = false
      SHX22_2 = false
      SHX23_2 = false
      SHX24_2 = false
      SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
      SHX13_2 = table
      SHX13_2 = SHX13_2.insert
      SHX14_2 = SHX5_2
      SHX15_2 = SHX12_2
      SHX13_2(SHX14_2, SHX15_2)
    end
    while true do
      SHX6_2 = 150
      if not (SHX3_2 < SHX6_2) then
        break
      end
      SHX3_2 = SHX3_2 + 1
      SHX6_2 = pairs
      SHX7_2 = SHX2_2
      SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
      for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
        SHX12_2 = UseParticleFxAsset
        SHX13_2 = "core"
        SHX12_2(SHX13_2)
        SHX12_2 = StartParticleFxLoopedAtCoord
        SHX13_2 = "sp_foundry_sparks"
        SHX14_2 = SHX11_2.x
        SHX15_2 = SHX11_2.y
        SHX16_2 = SHX11_2.z
        SHX17_2 = 90.0
        SHX18_2 = 0.0
        SHX19_2 = 0.0
        SHX20_2 = 0.3
        SHX21_2 = false
        SHX22_2 = false
        SHX23_2 = false
        SHX24_2 = false
        SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
        SHX13_2 = UseParticleFxAsset
        SHX14_2 = "core"
        SHX13_2(SHX14_2)
        SHX13_2 = StartParticleFxLoopedAtCoord
        SHX14_2 = "ent_dst_elec_fire_sp"
        SHX15_2 = SHX11_2.x
        SHX16_2 = SHX11_2.y
        SHX17_2 = SHX11_2.z
        SHX18_2 = 0.0
        SHX19_2 = 0.0
        SHX20_2 = 0.0
        SHX21_2 = 1.0
        SHX22_2 = false
        SHX23_2 = false
        SHX24_2 = false
        SHX25_2 = false
        SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
        SHX14_2 = table
        SHX14_2 = SHX14_2.insert
        SHX15_2 = SHX5_2
        SHX16_2 = SHX12_2
        SHX14_2(SHX15_2, SHX16_2)
        SHX14_2 = table
        SHX14_2 = SHX14_2.insert
        SHX15_2 = SHX5_2
        SHX16_2 = SHX13_2
        SHX14_2(SHX15_2, SHX16_2)
      end
      SHX6_2 = Wait
      SHX7_2 = 50
      SHX6_2(SHX7_2)
      SHX6_2 = pairs
      SHX7_2 = SHX5_2
      SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
      for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
        SHX12_2 = RemoveParticleFx
        SHX13_2 = SHX11_2
        SHX14_2 = false
        SHX12_2(SHX13_2, SHX14_2)
      end
    end
  end
end
SHX1_1(SHX2_1, SHX3_1)
SHX1_1 = RegisterNetEvent
SHX2_1 = "63b35ed831"
function SHX3_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  SHX2_2 = GetEntityCoords
  SHX3_2 = PlayerPedId
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2 = SHX3_2()
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
  SHX2_2 = SHX0_2 - SHX2_2
  SHX2_2 = #SHX2_2
  if SHX2_2 < 25.0 then
    SHX2_2 = {}
    SHX3_2 = 0
    SHX4_2 = SHX1_2 - SHX0_2
    SHX5_2 = 1
    SHX6_2 = 10
    SHX7_2 = 1
    for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
      SHX9_2 = table
      SHX9_2 = SHX9_2.insert
      SHX10_2 = SHX2_2
      SHX11_2 = vector3
      SHX12_2 = SHX4_2.x
      SHX12_2 = SHX12_2 / 10
      SHX12_2 = SHX12_2 * SHX8_2
      SHX13_2 = SHX4_2.y
      SHX13_2 = SHX13_2 / 10
      SHX13_2 = SHX13_2 * SHX8_2
      SHX14_2 = SHX4_2.z
      SHX14_2 = SHX14_2 / 10
      SHX14_2 = SHX14_2 * SHX8_2
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
      SHX11_2 = SHX0_2 + SHX11_2
      SHX9_2(SHX10_2, SHX11_2)
    end
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.loadPtfx
    SHX6_2 = "core"
    SHX5_2(SHX6_2)
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.loadPtfx
    SHX6_2 = "scr_fbi3"
    SHX5_2(SHX6_2)
    SHX5_2 = SendNUIMessage
    SHX6_2 = {}
    SHX6_2.transactionType = "wrathofgod"
    SHX5_2(SHX6_2)
    SHX5_2 = {}
    SHX6_2 = {}
    SHX7_2 = {}
    SHX8_2 = pairs
    SHX9_2 = SHX2_2
    SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
    for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
      SHX14_2 = UseParticleFxAsset
      SHX15_2 = "core"
      SHX14_2(SHX15_2)
      SHX14_2 = StartParticleFxLoopedAtCoord
      SHX15_2 = "ent_dst_elec_crackle"
      SHX16_2 = SHX13_2.x
      SHX17_2 = SHX13_2.y
      SHX18_2 = SHX13_2.z
      SHX19_2 = 0.0
      SHX20_2 = 0.0
      SHX21_2 = 0.0
      SHX22_2 = 1.2
      SHX23_2 = false
      SHX24_2 = false
      SHX25_2 = false
      SHX26_2 = false
      SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
      SHX15_2 = table
      SHX15_2 = SHX15_2.insert
      SHX16_2 = SHX5_2
      SHX17_2 = SHX14_2
      SHX15_2(SHX16_2, SHX17_2)
    end
    while SHX3_2 < 20 do
      SHX3_2 = SHX3_2 + 1
      SHX8_2 = pairs
      SHX9_2 = SHX2_2
      SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
      for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
        SHX14_2 = UseParticleFxAsset
        SHX15_2 = "core"
        SHX14_2(SHX15_2)
        SHX14_2 = StartParticleFxLoopedAtCoord
        SHX15_2 = "sp_foundry_sparks"
        SHX16_2 = SHX13_2.x
        SHX17_2 = SHX13_2.y
        SHX18_2 = SHX13_2.z
        SHX19_2 = 90.0
        SHX20_2 = 0.0
        SHX21_2 = 0.0
        SHX22_2 = 0.0
        SHX23_2 = false
        SHX24_2 = false
        SHX25_2 = false
        SHX26_2 = false
        SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
        SHX15_2 = table
        SHX15_2 = SHX15_2.insert
        SHX16_2 = SHX5_2
        SHX17_2 = SHX14_2
        SHX15_2(SHX16_2, SHX17_2)
      end
      SHX8_2 = Wait
      SHX9_2 = 400
      SHX8_2(SHX9_2)
      SHX8_2 = pairs
      SHX9_2 = SHX5_2
      SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
      for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
        SHX14_2 = RemoveParticleFx
        SHX15_2 = SHX13_2
        SHX16_2 = false
        SHX14_2(SHX15_2, SHX16_2)
      end
      SHX8_2 = pairs
      SHX9_2 = SHX6_2
      SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
      for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
        SHX14_2 = RemoveParticleFx
        SHX15_2 = SHX13_2
        SHX16_2 = false
        SHX14_2(SHX15_2, SHX16_2)
      end
    end
    SHX8_2 = pairs
    SHX9_2 = SHX7_2
    SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
    for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
      SHX14_2 = RemoveParticleFx
      SHX15_2 = SHX13_2
      SHX16_2 = false
      SHX14_2(SHX15_2, SHX16_2)
    end
    SHX8_2 = RemoveNamedPtfxAsset
    SHX9_2 = "core"
    SHX8_2(SHX9_2)
    SHX8_2 = RemoveNamedPtfxAsset
    SHX9_2 = "scr_fbi3"
    SHX8_2(SHX9_2)
  end
end
SHX1_1(SHX2_1, SHX3_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.registerCommand
SHX2_1 = "theforce"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientUserId
  SHX0_2 = SHX0_2()
  if 1 == SHX0_2 then
    SHX0_2 = SHX0_1
    SHX1_2 = 10
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX1_2 = GetPlayerServerId
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if -1 ~= SHX1_2 then
        SHX2_2 = HasNamedPtfxAssetLoaded
        SHX3_2 = "core"
        SHX2_2 = SHX2_2(SHX3_2)
        if not SHX2_2 then
          SHX2_2 = RequestNamedPtfxAsset
          SHX3_2 = "core"
          SHX2_2(SHX3_2)
          while true do
            SHX2_2 = HasNamedPtfxAssetLoaded
            SHX3_2 = "core"
            SHX2_2 = SHX2_2(SHX3_2)
            if SHX2_2 then
              break
            end
            SHX2_2 = Wait
            SHX3_2 = 0
            SHX2_2(SHX3_2)
          end
        end
        SHX2_2 = 0
        SHX3_2 = GetEntityCoords
        SHX4_2 = PlayerPedId
        SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX4_2()
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
        SHX4_2 = GetPlayerPed
        SHX5_2 = SHX0_2
        SHX4_2 = SHX4_2(SHX5_2)
        SHX5_2 = GetEntityCoords
        SHX6_2 = SHX4_2
        SHX5_2 = SHX5_2(SHX6_2)
        SHX6_2 = {}
        SHX7_2 = SHX5_2 - SHX3_2
        SHX8_2 = TriggerServerEvent
        SHX9_2 = "9fd1729b1a"
        SHX10_2 = SHX1_2
        SHX11_2 = SHX3_2
        SHX12_2 = SHX5_2
        SHX13_2 = SHX7_2
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX8_2 = 1
        SHX9_2 = 10
        SHX10_2 = 1
        for SHX11_2 = SHX8_2, SHX9_2, SHX10_2 do
          SHX12_2 = table
          SHX12_2 = SHX12_2.insert
          SHX13_2 = SHX6_2
          SHX14_2 = vector3
          SHX15_2 = SHX7_2.x
          SHX15_2 = SHX15_2 / 10
          SHX15_2 = SHX15_2 * SHX11_2
          SHX16_2 = SHX7_2.y
          SHX16_2 = SHX16_2 / 10
          SHX16_2 = SHX16_2 * SHX11_2
          SHX17_2 = SHX7_2.z
          SHX17_2 = SHX17_2 / 10
          SHX17_2 = SHX17_2 * SHX11_2
          SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2)
          SHX14_2 = SHX3_2 + SHX14_2
          SHX12_2(SHX13_2, SHX14_2)
        end
        SHX8_2 = SendNUIMessage
        SHX9_2 = {}
        SHX9_2.transactionType = "ulimitedpower"
        SHX8_2(SHX9_2)
        SHX8_2 = FreezeEntityPosition
        SHX9_2 = PlayerPedId
        SHX9_2 = SHX9_2()
        SHX10_2 = true
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.loadAnimDict
        SHX9_2 = "anim@amb@clubhouse@bar@drink@idle_a"
        SHX8_2(SHX9_2)
        SHX8_2 = TaskPlayAnim
        SHX9_2 = CMG
        SHX9_2 = SHX9_2.getPlayerPed
        SHX9_2 = SHX9_2()
        SHX10_2 = "anim@amb@clubhouse@bar@drink@idle_a"
        SHX11_2 = "idle_a_bartender"
        SHX12_2 = 3.0
        SHX13_2 = 1.0
        SHX14_2 = -1
        SHX15_2 = 1
        SHX16_2 = 0
        SHX17_2 = false
        SHX18_2 = false
        SHX19_2 = false
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
        SHX8_2 = RemoveAnimDict
        SHX9_2 = "anim@amb@clubhouse@bar@drink@idle_a"
        SHX8_2(SHX9_2)
        SHX8_2 = {}
        SHX9_2 = pairs
        SHX10_2 = SHX6_2
        SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
        for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
          SHX15_2 = UseParticleFxAsset
          SHX16_2 = "core"
          SHX15_2(SHX16_2)
          SHX15_2 = StartParticleFxLoopedAtCoord
          SHX16_2 = "ent_dst_elec_crackle"
          SHX17_2 = SHX14_2.x
          SHX18_2 = SHX14_2.y
          SHX19_2 = SHX14_2.z
          SHX20_2 = 0.0
          SHX21_2 = 0.0
          SHX22_2 = 0.0
          SHX23_2 = 1.2
          SHX24_2 = false
          SHX25_2 = false
          SHX26_2 = false
          SHX27_2 = false
          SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
          SHX16_2 = table
          SHX16_2 = SHX16_2.insert
          SHX17_2 = SHX8_2
          SHX18_2 = SHX15_2
          SHX16_2(SHX17_2, SHX18_2)
        end
        while true do
          SHX9_2 = 150
          if not (SHX2_2 < SHX9_2) then
            break
          end
          SHX2_2 = SHX2_2 + 1
          SHX9_2 = pairs
          SHX10_2 = SHX6_2
          SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
          for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
            SHX15_2 = UseParticleFxAsset
            SHX16_2 = "core"
            SHX15_2(SHX16_2)
            SHX15_2 = StartParticleFxLoopedAtCoord
            SHX16_2 = "sp_foundry_sparks"
            SHX17_2 = SHX14_2.x
            SHX18_2 = SHX14_2.y
            SHX19_2 = SHX14_2.z
            SHX20_2 = 90.0
            SHX21_2 = 0.0
            SHX22_2 = 0.0
            SHX23_2 = 0.3
            SHX24_2 = false
            SHX25_2 = false
            SHX26_2 = false
            SHX27_2 = false
            SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
            SHX16_2 = UseParticleFxAsset
            SHX17_2 = "core"
            SHX16_2(SHX17_2)
            SHX16_2 = StartParticleFxLoopedAtCoord
            SHX17_2 = "ent_dst_elec_fire_sp"
            SHX18_2 = SHX14_2.x
            SHX19_2 = SHX14_2.y
            SHX20_2 = SHX14_2.z
            SHX21_2 = 0.0
            SHX22_2 = 0.0
            SHX23_2 = 0.0
            SHX24_2 = 1.0
            SHX25_2 = false
            SHX26_2 = false
            SHX27_2 = false
            SHX28_2 = false
            SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
            SHX17_2 = table
            SHX17_2 = SHX17_2.insert
            SHX18_2 = SHX8_2
            SHX19_2 = SHX15_2
            SHX17_2(SHX18_2, SHX19_2)
            SHX17_2 = table
            SHX17_2 = SHX17_2.insert
            SHX18_2 = SHX8_2
            SHX19_2 = SHX16_2
            SHX17_2(SHX18_2, SHX19_2)
          end
          SHX9_2 = Wait
          SHX10_2 = 50
          SHX9_2(SHX10_2)
          SHX9_2 = pairs
          SHX10_2 = SHX8_2
          SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
          for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
            SHX15_2 = RemoveParticleFx
            SHX16_2 = SHX14_2
            SHX17_2 = false
            SHX15_2(SHX16_2, SHX17_2)
          end
        end
        SHX9_2 = RemoveNamedPtfxAsset
        SHX10_2 = "core"
        SHX9_2(SHX10_2)
        SHX9_2 = FreezeEntityPosition
        SHX10_2 = PlayerPedId
        SHX10_2 = SHX10_2()
        SHX11_2 = false
        SHX9_2(SHX10_2, SHX11_2)
        SHX9_2 = ClearPedTasks
        SHX10_2 = PlayerPedId
        SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX10_2()
        SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
      else
        SHX2_2 = drawNativeNotification
        SHX3_2 = "~r~No one nearby to use the force on!"
        SHX2_2(SHX3_2)
      end
    else
      SHX1_2 = drawNativeNotification
      SHX2_2 = "~r~No one nearby to use the force on!"
      SHX1_2(SHX2_2)
    end
  end
end
SHX4_1 = false
SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX1_1 = RegisterNetEvent
SHX2_1 = "b47f9b0085"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetEntityCoords
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = -1686040670
  SHX3_2 = RequestModel
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
  while true do
    SHX3_2 = HasModelLoaded
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = -1692214353
  SHX4_2 = RequestModel
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  while true do
    SHX4_2 = HasModelLoaded
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      break
    end
    SHX4_2 = Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.requestEntitySpawn
  SHX5_2 = "kidnap_ped"
  SHX4_2(SHX5_2)
  SHX4_2 = CreatePed
  SHX5_2 = 0
  SHX6_2 = SHX2_2
  SHX7_2 = SHX1_2.x
  SHX7_2 = SHX7_2 + 1.0
  SHX8_2 = SHX1_2.y
  SHX9_2 = SHX1_2.z
  SHX10_2 = 0.0
  SHX11_2 = true
  SHX12_2 = true
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX5_2 = SetBlockingOfNonTemporaryEvents
  SHX6_2 = SHX4_2
  SHX7_2 = true
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetPedCanRagdoll
  SHX6_2 = SHX4_2
  SHX7_2 = false
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.requestEntitySpawn
  SHX6_2 = "kidnap_ped2"
  SHX5_2(SHX6_2)
  SHX5_2 = CreatePed
  SHX6_2 = 0
  SHX7_2 = SHX3_2
  SHX8_2 = SHX1_2.x
  SHX8_2 = SHX8_2 + 1.0
  SHX9_2 = SHX1_2.y
  SHX10_2 = SHX1_2.z
  SHX11_2 = 0.0
  SHX12_2 = true
  SHX13_2 = true
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX6_2 = SetBlockingOfNonTemporaryEvents
  SHX7_2 = SHX5_2
  SHX8_2 = true
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetPedCanRagdoll
  SHX7_2 = SHX5_2
  SHX8_2 = false
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = -1346687836
  SHX7_2 = GetClosestVehicle
  SHX8_2 = SHX1_2.x
  SHX9_2 = SHX1_2.y
  SHX10_2 = SHX1_2.z
  SHX11_2 = 15.0
  SHX12_2 = SHX6_2
  SHX13_2 = 70
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX8_2 = DoesEntityExist
  SHX9_2 = SHX7_2
  SHX8_2 = SHX8_2(SHX9_2)
  if not SHX8_2 then
    SHX8_2 = RequestModel
    SHX9_2 = SHX6_2
    SHX8_2(SHX9_2)
    while true do
      SHX8_2 = HasModelLoaded
      SHX9_2 = SHX6_2
      SHX8_2 = SHX8_2(SHX9_2)
      if SHX8_2 then
        break
      end
      SHX8_2 = Wait
      SHX9_2 = 0
      SHX8_2(SHX9_2)
    end
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.requestEntitySpawn
    SHX9_2 = "kidnap"
    SHX8_2(SHX9_2)
    SHX8_2 = CreateVehicle
    SHX9_2 = SHX6_2
    SHX10_2 = SHX1_2.x
    SHX10_2 = SHX10_2 + 3.0
    SHX11_2 = SHX1_2.y
    SHX11_2 = SHX11_2 + 1.0
    SHX12_2 = SHX1_2.z
    SHX13_2 = 0.0
    SHX14_2 = true
    SHX15_2 = false
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX7_2 = SHX8_2
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.initLocalVehicle
    SHX9_2 = SHX7_2
    SHX8_2(SHX9_2)
  end
  SHX8_2 = GetEntityCoords
  SHX9_2 = SHX7_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = GetEntityRotation
  SHX10_2 = SHX7_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = "random@kidnap_girl"
  SHX11_2 = RequestAnimDict
  SHX12_2 = SHX10_2
  SHX11_2(SHX12_2)
  while true do
    SHX11_2 = HasAnimDictLoaded
    SHX12_2 = SHX10_2
    SHX11_2 = SHX11_2(SHX12_2)
    if SHX11_2 then
      break
    end
    SHX11_2 = Wait
    SHX12_2 = 0
    SHX11_2(SHX12_2)
  end
  SHX11_2 = NetworkCreateSynchronisedScene
  SHX12_2 = SHX8_2.x
  SHX13_2 = SHX8_2.y
  SHX14_2 = SHX8_2.z
  SHX15_2 = SHX9_2.x
  SHX16_2 = SHX9_2.y
  SHX17_2 = SHX9_2.z
  SHX18_2 = 2
  SHX19_2 = false
  SHX20_2 = false
  SHX21_2 = 1.0
  SHX22_2 = 0
  SHX23_2 = 1.0
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  SHX12_2 = NetworkAddPedToSynchronisedScene
  SHX13_2 = SHX5_2
  SHX14_2 = SHX11_2
  SHX15_2 = SHX10_2
  SHX16_2 = "ig_1_guy1_drag_into_van"
  SHX17_2 = 8.0
  SHX18_2 = -4.0
  SHX19_2 = 1
  SHX20_2 = 16
  SHX21_2 = 0
  SHX22_2 = 0
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX12_2 = NetworkAddPedToSynchronisedScene
  SHX13_2 = SHX4_2
  SHX14_2 = SHX11_2
  SHX15_2 = SHX10_2
  SHX16_2 = "ig_1_guy2_drag_into_van"
  SHX17_2 = 8.0
  SHX18_2 = -4.0
  SHX19_2 = 1
  SHX20_2 = 16
  SHX21_2 = 0
  SHX22_2 = 0
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX12_2 = NetworkAddPedToSynchronisedScene
  SHX13_2 = SHX0_2
  SHX14_2 = SHX11_2
  SHX15_2 = SHX10_2
  SHX16_2 = "ig_1_girl_drag_into_van"
  SHX17_2 = 8.0
  SHX18_2 = -4.0
  SHX19_2 = 1
  SHX20_2 = 16
  SHX21_2 = 0
  SHX22_2 = 0
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX12_2 = NetworkAddEntityToSynchronisedScene
  SHX13_2 = SHX7_2
  SHX14_2 = SHX11_2
  SHX15_2 = SHX10_2
  SHX16_2 = "drag_into_van_burr"
  SHX17_2 = 1.0
  SHX18_2 = 1.0
  SHX19_2 = 1
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX12_2 = NetworkStartSynchronisedScene
  SHX13_2 = SHX11_2
  SHX12_2(SHX13_2)
  SHX12_2 = PlayAmbientSpeech1
  SHX13_2 = SHX4_2
  SHX14_2 = "GENERIC_SHOCKED_HIGH"
  SHX15_2 = "SPEECH_PARAMS_FORCE"
  SHX12_2(SHX13_2, SHX14_2, SHX15_2)
  SHX12_2 = Wait
  SHX13_2 = GetAnimDuration
  SHX14_2 = SHX10_2
  SHX15_2 = "drag_into_van_burr"
  SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
  SHX13_2 = SHX13_2 * 1000
  SHX12_2(SHX13_2)
  SHX12_2 = ClearPedTasks
  SHX13_2 = SHX0_2
  SHX12_2(SHX13_2)
  SHX12_2 = DeleteEntity
  SHX13_2 = SHX4_2
  SHX12_2(SHX13_2)
  SHX12_2 = DeleteEntity
  SHX13_2 = SHX5_2
  SHX12_2(SHX13_2)
  SHX12_2 = DeleteEntity
  SHX13_2 = SHX7_2
  SHX12_2(SHX13_2)
end
SHX1_1(SHX2_1, SHX3_1)
