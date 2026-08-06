-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1
SHX0_1 = RegisterCommand
SHX1_1 = "piggy"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "piggy.whitelisted"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerPed
    SHX0_2 = SHX0_2()
    SHX1_2 = IsPedInAnyPoliceVehicle
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.loadModel
      SHX2_2 = -1323586730
      SHX1_2 = SHX1_2(SHX2_2)
      SHX2_2 = GetOffsetFromEntityInWorldCoords
      SHX3_2 = SHX0_2
      SHX4_2 = 0.0
      SHX5_2 = 1.0
      SHX6_2 = 0.0
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = GetEntityHeading
      SHX4_2 = SHX0_2
      SHX3_2 = SHX3_2(SHX4_2)
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.requestEntitySpawn
      SHX5_2 = "pig_ped"
      SHX6_2 = SHX2_2
      SHX4_2(SHX5_2, SHX6_2)
      SHX4_2 = CreatePed
      SHX5_2 = 28
      SHX6_2 = SHX1_2
      SHX7_2 = SHX2_2.x
      SHX8_2 = SHX2_2.y
      SHX9_2 = SHX2_2.z
      SHX10_2 = SHX3_2
      SHX11_2 = true
      SHX12_2 = true
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX5_2 = SetModelAsNoLongerNeeded
      SHX6_2 = SHX1_2
      SHX5_2(SHX6_2)
      SHX5_2 = Wait
      SHX6_2 = 2000
      SHX5_2(SHX6_2)
      SHX5_2 = DoesEntityExist
      SHX6_2 = SHX4_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 then
        SHX5_2 = SetBlockingOfNonTemporaryEvents
        SHX6_2 = SHX4_2
        SHX7_2 = true
        SHX5_2(SHX6_2, SHX7_2)
        SHX5_2 = SetPedMoveRateOverride
        SHX6_2 = SHX4_2
        SHX7_2 = 38.0
        SHX5_2(SHX6_2, SHX7_2)
        SHX5_2 = GiveWeaponToPed
        SHX6_2 = SHX4_2
        SHX7_2 = GetHashKey
        SHX8_2 = "WEAPON_ANIMAL"
        SHX7_2 = SHX7_2(SHX8_2)
        SHX8_2 = 200
        SHX9_2 = true
        SHX10_2 = true
        SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
        SHX5_2 = {}
        SHX6_2 = 0
        SHX7_2 = 3
        SHX8_2 = 5
        SHX9_2 = 46
        SHX5_2[1] = SHX6_2
        SHX5_2[2] = SHX7_2
        SHX5_2[3] = SHX8_2
        SHX5_2[4] = SHX9_2
        SHX6_2 = pairs
        SHX7_2 = SHX5_2
        SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
        for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
          SHX12_2 = SetPedFleeAttributes
          SHX13_2 = SHX4_2
          SHX14_2 = SHX11_2
          SHX15_2 = true
          SHX12_2(SHX13_2, SHX14_2, SHX15_2)
        end
        SHX6_2 = AddBlipForEntity
        SHX7_2 = SHX4_2
        SHX6_2 = SHX6_2(SHX7_2)
        SHX7_2 = 61
        SHX8_2 = SetBlipSprite
        SHX9_2 = SHX6_2
        SHX10_2 = 526
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = SetBlipColour
        SHX9_2 = SHX6_2
        SHX10_2 = SHX7_2
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = SetBlipScale
        SHX9_2 = SHX6_2
        SHX10_2 = 1.0
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = BeginTextCommandSetBlipName
        SHX9_2 = "STRING"
        SHX8_2(SHX9_2)
        SHX8_2 = AddTextComponentSubstringPlayerName
        SHX9_2 = "Piggy"
        SHX8_2(SHX9_2)
        SHX8_2 = EndTextCommandSetBlipName
        SHX9_2 = SHX6_2
        SHX8_2(SHX9_2)
        SHX8_2 = SetBlipAsFriendly
        SHX9_2 = SHX6_2
        SHX10_2 = true
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = SetBlipBright
        SHX9_2 = SHX6_2
        SHX10_2 = true
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = TaskFollowToOffsetOfEntity
        SHX9_2 = SHX4_2
        SHX10_2 = CMG
        SHX10_2 = SHX10_2.getPlayerPed
        SHX10_2 = SHX10_2()
        SHX11_2 = 0.0
        SHX12_2 = 0.0
        SHX13_2 = 0.0
        SHX14_2 = 7.0
        SHX15_2 = -1
        SHX16_2 = 10.0
        SHX17_2 = true
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      end
    end
  end
end
SHX3_1 = false
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = RegisterCommand
SHX1_1 = "rat"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "rat.whitelisted"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerPed
    SHX0_2 = SHX0_2()
    SHX1_2 = IsPedInAnyPoliceVehicle
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.loadModel
      SHX2_2 = -1011537562
      SHX1_2 = SHX1_2(SHX2_2)
      SHX2_2 = GetOffsetFromEntityInWorldCoords
      SHX3_2 = SHX0_2
      SHX4_2 = 0.0
      SHX5_2 = 1.0
      SHX6_2 = 0.0
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = GetEntityHeading
      SHX4_2 = SHX0_2
      SHX3_2 = SHX3_2(SHX4_2)
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.requestEntitySpawn
      SHX5_2 = "rat_ped"
      SHX6_2 = SHX2_2
      SHX4_2(SHX5_2, SHX6_2)
      SHX4_2 = CreatePed
      SHX5_2 = 28
      SHX6_2 = SHX1_2
      SHX7_2 = SHX2_2.x
      SHX8_2 = SHX2_2.y
      SHX9_2 = SHX2_2.z
      SHX10_2 = SHX3_2
      SHX11_2 = true
      SHX12_2 = true
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX5_2 = SetModelAsNoLongerNeeded
      SHX6_2 = SHX1_2
      SHX5_2(SHX6_2)
      SHX5_2 = Wait
      SHX6_2 = 2000
      SHX5_2(SHX6_2)
      SHX5_2 = DoesEntityExist
      SHX6_2 = SHX4_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 then
        SHX5_2 = SetBlockingOfNonTemporaryEvents
        SHX6_2 = SHX4_2
        SHX7_2 = true
        SHX5_2(SHX6_2, SHX7_2)
        SHX5_2 = SetPedMoveRateOverride
        SHX6_2 = SHX4_2
        SHX7_2 = 38.0
        SHX5_2(SHX6_2, SHX7_2)
        SHX5_2 = GiveWeaponToPed
        SHX6_2 = SHX4_2
        SHX7_2 = GetHashKey
        SHX8_2 = "WEAPON_ANIMAL"
        SHX7_2 = SHX7_2(SHX8_2)
        SHX8_2 = 200
        SHX9_2 = true
        SHX10_2 = true
        SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
        SHX5_2 = {}
        SHX6_2 = 0
        SHX7_2 = 3
        SHX8_2 = 5
        SHX9_2 = 46
        SHX5_2[1] = SHX6_2
        SHX5_2[2] = SHX7_2
        SHX5_2[3] = SHX8_2
        SHX5_2[4] = SHX9_2
        SHX6_2 = pairs
        SHX7_2 = SHX5_2
        SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
        for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
          SHX12_2 = SetPedFleeAttributes
          SHX13_2 = SHX4_2
          SHX14_2 = SHX11_2
          SHX15_2 = true
          SHX12_2(SHX13_2, SHX14_2, SHX15_2)
        end
        SHX6_2 = AddBlipForEntity
        SHX7_2 = SHX4_2
        SHX6_2 = SHX6_2(SHX7_2)
        SHX7_2 = 61
        SHX8_2 = SetBlipSprite
        SHX9_2 = SHX6_2
        SHX10_2 = 526
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = SetBlipColour
        SHX9_2 = SHX6_2
        SHX10_2 = SHX7_2
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = SetBlipScale
        SHX9_2 = SHX6_2
        SHX10_2 = 1.0
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = BeginTextCommandSetBlipName
        SHX9_2 = "STRING"
        SHX8_2(SHX9_2)
        SHX8_2 = AddTextComponentSubstringPlayerName
        SHX9_2 = "Piggy"
        SHX8_2(SHX9_2)
        SHX8_2 = EndTextCommandSetBlipName
        SHX9_2 = SHX6_2
        SHX8_2(SHX9_2)
        SHX8_2 = SetBlipAsFriendly
        SHX9_2 = SHX6_2
        SHX10_2 = true
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = SetBlipBright
        SHX9_2 = SHX6_2
        SHX10_2 = true
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = TaskFollowToOffsetOfEntity
        SHX9_2 = SHX4_2
        SHX10_2 = CMG
        SHX10_2 = SHX10_2.getPlayerPed
        SHX10_2 = SHX10_2()
        SHX11_2 = 0.0
        SHX12_2 = 0.0
        SHX13_2 = 0.0
        SHX14_2 = 7.0
        SHX15_2 = -1
        SHX16_2 = 10.0
        SHX17_2 = true
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      end
    end
  end
end
SHX3_1 = false
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
