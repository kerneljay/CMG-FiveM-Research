-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1
SHX0_1 = RegisterCommand
SHX1_1 = "bodybag"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.getNearestPlayer
  SHX1_2 = 3
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "a9ed481eb5"
    SHX3_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2)
  else
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.notify
    SHX2_2 = "No one dead nearby"
    SHX1_2(SHX2_2)
  end
end
SHX3_1 = false
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = RegisterNetEvent
SHX1_1 = "b955e95f23"
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getObjectId
  SHX2_2 = SHX0_2
  SHX3_2 = "bodybag_removeIfOwned"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = NetworkHasControlOfEntity
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        SHX2_2 = DeleteEntity
        SHX3_2 = SHX1_2
        SHX2_2(SHX3_2)
      end
    end
  end
end
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = RegisterNetEvent
SHX1_1 = "443fd5f66a"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = GetEntityCoords
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SetEntityVisible
  SHX3_2 = SHX0_2
  SHX4_2 = false
  SHX5_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadModel
  SHX3_2 = -825556356
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.requestEntitySpawn
  SHX4_2 = "nhs_bodybag_object"
  SHX5_2 = SHX1_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = CreateObject
  SHX4_2 = SHX2_2
  SHX5_2 = SHX1_2.x
  SHX6_2 = SHX1_2.y
  SHX7_2 = SHX1_2.z
  SHX8_2 = true
  SHX9_2 = true
  SHX10_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX4_2 = PlaceObjectOnGroundProperly
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = SetModelAsNoLongerNeeded
  SHX5_2 = SHX2_2
  SHX4_2(SHX5_2)
  SHX4_2 = ObjToNet
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = TriggerServerEvent
  SHX6_2 = "d4c90d6f7c"
  SHX7_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2)
  while true do
    SHX5_2 = GetEntityHealth
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.getPlayerPed
    SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX6_2()
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    if not (SHX5_2 <= 102) then
      break
    end
    SHX5_2 = Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  SHX5_2 = DeleteEntity
  SHX6_2 = SHX3_2
  SHX5_2(SHX6_2)
  SHX5_2 = SetEntityVisible
  SHX6_2 = SHX0_2
  SHX7_2 = true
  SHX8_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
end
SHX0_1(SHX1_1, SHX2_1)
