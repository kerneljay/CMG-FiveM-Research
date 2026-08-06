-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1
SHX0_1 = {}
SHX1_1 = 1
SHX2_1 = CMG
function SHX3_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX9_2 = 0
  if not SHX7_2 then
    SHX11_2 = SHX1_1
    SHX10_2 = SHX0_1
    SHX12_2 = {}
    SHX12_2.entity = SHX9_2
    SHX12_2.modelHash = SHX0_2
    SHX12_2.position = SHX1_2
    SHX12_2.heading = SHX2_2
    SHX12_2.static = SHX3_2
    SHX12_2.animDict = SHX4_2
    SHX12_2.animName = SHX5_2
    SHX12_2.minDistance = SHX6_2
    SHX12_2.distanceToPlayer = 0.0
    SHX12_2.cb = SHX8_2
    SHX12_2.created = false
    SHX10_2[SHX11_2] = SHX12_2
    SHX10_2 = SHX1_1
    SHX10_2 = SHX10_2 + 1
    SHX1_1 = SHX10_2
  else
    SHX10_2 = CMG
    SHX10_2 = SHX10_2.loadModel
    SHX11_2 = SHX0_2
    SHX10_2 = SHX10_2(SHX11_2)
    SHX0_2 = SHX10_2 or SHX0_2
    if not SHX10_2 then
      SHX0_2 = 0
    end
    if not SHX0_2 or 0 == SHX0_2 then
      SHX10_2 = print
      SHX11_2 = "failed to spawn dynamic ped, invalid model"
      SHX10_2(SHX11_2)
      return
    end
    SHX10_2 = CreatePed
    SHX11_2 = 26
    SHX12_2 = SHX0_2
    SHX13_2 = SHX1_2.x
    SHX14_2 = SHX1_2.y
    SHX15_2 = SHX1_2.z
    SHX16_2 = SHX2_2
    SHX17_2 = false
    SHX18_2 = false
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX9_2 = SHX10_2
    SHX10_2 = SHX0_1
    SHX10_2 = SHX10_2[SHX7_2]
    SHX10_2.entity = SHX9_2
  end
  SHX10_2 = SetModelAsNoLongerNeeded
  SHX11_2 = SHX0_2
  SHX10_2(SHX11_2)
  if SHX3_2 then
    SHX10_2 = SetEntityCanBeDamaged
    SHX11_2 = SHX9_2
    SHX12_2 = false
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = SetPedAsEnemy
    SHX11_2 = SHX9_2
    SHX12_2 = false
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = SetEntityHeading
    SHX11_2 = SHX9_2
    SHX12_2 = SHX2_2
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = SetBlockingOfNonTemporaryEvents
    SHX11_2 = SHX9_2
    SHX12_2 = true
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = SetPedResetFlag
    SHX11_2 = SHX9_2
    SHX12_2 = 249
    SHX13_2 = true
    SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    SHX10_2 = SetPedConfigFlag
    SHX11_2 = SHX9_2
    SHX12_2 = 185
    SHX13_2 = true
    SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    SHX10_2 = SetPedConfigFlag
    SHX11_2 = SHX9_2
    SHX12_2 = 108
    SHX13_2 = true
    SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    SHX10_2 = SetPedCanEvasiveDive
    SHX11_2 = SHX9_2
    SHX12_2 = false
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = SetPedCanRagdollFromPlayerImpact
    SHX11_2 = SHX9_2
    SHX12_2 = false
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = SetPedConfigFlag
    SHX11_2 = SHX9_2
    SHX12_2 = 208
    SHX13_2 = true
    SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    SHX10_2 = SetEntityCollision
    SHX11_2 = SHX9_2
    SHX12_2 = false
    SHX13_2 = false
    SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    SHX10_2 = FreezeEntityPosition
    SHX11_2 = SHX9_2
    SHX12_2 = true
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = SetEntityCoordsNoOffset
    SHX11_2 = SHX9_2
    SHX12_2 = SHX1_2.x
    SHX13_2 = SHX1_2.y
    SHX14_2 = SHX1_2.z
    SHX15_2 = false
    SHX16_2 = false
    SHX17_2 = false
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  end
  if SHX4_2 and SHX5_2 then
    SHX10_2 = CMG
    SHX10_2 = SHX10_2.loadAnimDict
    SHX11_2 = SHX4_2
    SHX10_2(SHX11_2)
    SHX10_2 = TaskPlayAnim
    SHX11_2 = SHX9_2
    SHX12_2 = SHX4_2
    SHX13_2 = SHX5_2
    SHX14_2 = 8.0
    SHX15_2 = 0.0
    SHX16_2 = -1
    SHX17_2 = 1
    SHX18_2 = 0
    SHX19_2 = false
    SHX20_2 = false
    SHX21_2 = false
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    SHX10_2 = RemoveAnimDict
    SHX11_2 = SHX4_2
    SHX10_2(SHX11_2)
  end
  SHX10_2 = type
  SHX11_2 = SHX8_2
  SHX10_2 = SHX10_2(SHX11_2)
  if "function" == SHX10_2 and 0 ~= SHX9_2 then
    SHX10_2 = SHX8_2
    SHX11_2 = SHX9_2
    SHX10_2(SHX11_2)
  end
  return SHX9_2
end
SHX2_1.createDynamicPed = SHX3_1
SHX2_1 = Citizen
SHX2_1 = SHX2_1.CreateThread
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = Wait
  SHX1_2 = 5000
  SHX0_2(SHX1_2)
  while true do
    SHX0_2 = GetEntityCoords
    SHX1_2 = PlayerPedId
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX1_2()
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX1_2 = pairs
    SHX2_2 = SHX0_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = SHX0_1
      SHX7_2 = SHX7_2[SHX5_2]
      SHX8_2 = SHX6_2.position
      SHX8_2 = SHX8_2 - SHX0_2
      SHX8_2 = #SHX8_2
      SHX7_2.distanceToPlayer = SHX8_2
      SHX7_2 = SHX0_1
      SHX7_2 = SHX7_2[SHX5_2]
      SHX7_2 = SHX7_2.distanceToPlayer
      SHX8_2 = SHX6_2.minDistance
      if SHX7_2 <= SHX8_2 then
        SHX7_2 = SHX6_2.created
        if not SHX7_2 then
          SHX7_2 = CMG
          SHX7_2 = SHX7_2.createDynamicPed
          SHX8_2 = SHX6_2.modelHash
          SHX9_2 = SHX6_2.position
          SHX10_2 = SHX6_2.heading
          SHX11_2 = SHX6_2.static
          SHX12_2 = SHX6_2.animDict
          SHX13_2 = SHX6_2.animName
          SHX14_2 = SHX6_2.minDistance
          SHX15_2 = SHX5_2
          SHX16_2 = SHX6_2.cb
          SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
          SHX7_2 = SHX0_1
          SHX7_2 = SHX7_2[SHX5_2]
          SHX7_2.created = true
        end
      else
        SHX7_2 = SHX6_2.created
        if SHX7_2 then
          SHX7_2 = DoesEntityExist
          SHX8_2 = SHX6_2.entity
          SHX7_2 = SHX7_2(SHX8_2)
          if SHX7_2 then
            SHX7_2 = DeleteEntity
            SHX8_2 = SHX6_2.entity
            SHX7_2(SHX8_2)
            SHX7_2 = SHX0_1
            SHX7_2 = SHX7_2[SHX5_2]
            SHX7_2.created = false
          end
        end
      end
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 1000
    SHX1_2(SHX2_2)
  end
end
SHX2_1(SHX3_1)
SHX2_1 = AddEventHandler
SHX3_1 = "onResourceStop"
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX1_2 == SHX0_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX0_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = DoesEntityExist
      SHX8_2 = SHX6_2.entity
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX7_2 then
        SHX7_2 = DeleteEntity
        SHX8_2 = SHX6_2.entity
        SHX7_2(SHX8_2)
      end
    end
  end
end
SHX2_1(SHX3_1, SHX4_1)
