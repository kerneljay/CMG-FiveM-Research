-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1
SHX0_1 = {}
SHX0_1.active = false
SHX0_1.id = 0
SHX0_1.prop = 0
SHX0_1.inVehicle = false
SHX1_1 = {}
SHX2_1 = {}
SHX2_1.name = "CTSFO"
SHX2_1.model = -498279143
SHX3_1 = {}
SHX4_1 = -0.59
SHX5_1 = 0.29
SHX6_1 = 0.15
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX2_1.offSet = SHX3_1
SHX3_1 = {}
SHX4_1 = 0.16
SHX5_1 = 79.04
SHX6_1 = 41.39
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX2_1.rotation = SHX3_1
SHX2_1.boneIndex = 24818
SHX2_1.collision = true
SHX2_1.allowPistol = "hmp"
SHX2_1.animDict = "combat@combat_reactions@pistol_1h_hillbilly"
SHX2_1.animName = "180"
SHX3_1 = {}
SHX3_1.name = "Firearms"
SHX3_1.model = -374466906
SHX4_1 = {}
SHX5_1 = -0.59
SHX6_1 = 0.29
SHX7_1 = 0.15
SHX4_1[1] = SHX5_1
SHX4_1[2] = SHX6_1
SHX4_1[3] = SHX7_1
SHX3_1.offSet = SHX4_1
SHX4_1 = {}
SHX5_1 = 0.16
SHX6_1 = 79.04
SHX7_1 = 41.39
SHX4_1[1] = SHX5_1
SHX4_1[2] = SHX6_1
SHX4_1[3] = SHX7_1
SHX3_1.rotation = SHX4_1
SHX3_1.boneIndex = 24818
SHX3_1.collision = true
SHX3_1.allowPistol = "hmp"
SHX3_1.animDict = "combat@combat_reactions@pistol_1h_hillbilly"
SHX3_1.animName = "180"
SHX4_1 = {}
SHX4_1.name = "Long"
SHX4_1.model = 751198732
SHX5_1 = {}
SHX6_1 = -1.27
SHX7_1 = 0.31
SHX8_1 = -0.05
SHX5_1[1] = SHX6_1
SHX5_1[2] = SHX7_1
SHX5_1[3] = SHX8_1
SHX4_1.offSet = SHX5_1
SHX5_1 = {}
SHX6_1 = 1.0
SHX7_1 = 74.39
SHX8_1 = 41.39
SHX5_1[1] = SHX6_1
SHX5_1[2] = SHX7_1
SHX5_1[3] = SHX8_1
SHX4_1.rotation = SHX5_1
SHX4_1.boneIndex = 24818
SHX4_1.collision = false
SHX4_1.allowPistol = "none"
SHX4_1.animDict = "combat@combat_reactions@pistol_1h_hillbilly"
SHX4_1.animName = "180"
SHX5_1 = {}
SHX5_1.name = "Short"
SHX5_1.model = -1967882881
SHX6_1 = {}
SHX7_1 = -0.68
SHX8_1 = 0.22
SHX9_1 = 0.15
SHX6_1[1] = SHX7_1
SHX6_1[2] = SHX8_1
SHX6_1[3] = SHX9_1
SHX5_1.offSet = SHX6_1
SHX6_1 = {}
SHX7_1 = 0.52
SHX8_1 = 79.28
SHX9_1 = 41.39
SHX6_1[1] = SHX7_1
SHX6_1[2] = SHX8_1
SHX6_1[3] = SHX9_1
SHX5_1.rotation = SHX6_1
SHX5_1.boneIndex = 24818
SHX5_1.collision = true
SHX5_1.allowPistol = "none"
SHX5_1.animDict = "combat@combat_reactions@pistol_1h_hillbilly"
SHX5_1.animName = "180"
SHX1_1[1] = SHX2_1
SHX1_1[2] = SHX3_1
SHX1_1[3] = SHX4_1
SHX1_1[4] = SHX5_1
SHX2_1 = {}
SHX3_1 = 911657153
SHX4_1 = -273849285
SHX5_1 = -1206412243
SHX6_1 = 1093864856
SHX7_1 = 782720368
SHX8_1 = -976419591
SHX9_1 = 1838304326
SHX10_1 = 1313457450
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX2_1[5] = SHX7_1
SHX2_1[6] = SHX8_1
SHX2_1[7] = SHX9_1
SHX2_1[8] = SHX10_1
SHX3_1 = ""
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = DoesEntityExist
  SHX2_2 = SHX0_1.prop
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2 = SHX1_2()
    SHX2_2 = DetachEntity
    SHX3_2 = SHX0_1.prop
    SHX4_2 = false
    SHX5_2 = false
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = DeleteEntity
    SHX3_2 = SHX0_1.prop
    SHX2_2(SHX3_2)
    SHX0_1.id = 0
    SHX0_1.active = false
    SHX2_2 = ClearPedTasks
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
    SHX2_2 = ClearPedTasksImmediately
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
    SHX2_2 = SetWeaponAnimationOverride
    SHX3_2 = SHX1_2
    SHX4_2 = -455129387
    SHX2_2(SHX3_2, SHX4_2)
    if SHX0_2 then
      SHX2_2 = tCMG
      SHX2_2 = SHX2_2.notify
      SHX3_2 = "~g~Success~w~: Shield removed"
      SHX2_2(SHX3_2)
    end
  end
end
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX0_1.active
  if SHX3_2 then
    SHX3_2 = SHX4_1
    SHX4_2 = false
    SHX3_2(SHX4_2)
  end
  SHX0_1.id = SHX0_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadModel
  SHX4_2 = SHX1_1
  SHX4_2 = SHX4_2[SHX0_2]
  SHX4_2 = SHX4_2.model
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    return
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.requestEntitySpawn
  SHX5_2 = "police_shield"
  SHX6_2 = SHX3_2
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = CreateObject
  SHX5_2 = SHX3_2
  SHX6_2 = SHX2_2.x
  SHX7_2 = SHX2_2.y
  SHX8_2 = SHX2_2.z
  SHX9_2 = true
  SHX10_2 = true
  SHX11_2 = true
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX0_1.prop = SHX4_2
  while true do
    SHX4_2 = DoesEntityExist
    SHX5_2 = SHX0_1.prop
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      break
    end
    SHX4_2 = Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = SetModelAsNoLongerNeeded
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = SHX1_1
  SHX4_2 = SHX4_2[SHX0_2]
  SHX4_2 = SHX4_2.collision
  if not SHX4_2 then
    SHX4_2 = SetEntityCompletelyDisableCollision
    SHX5_2 = SHX0_1.prop
    SHX6_2 = true
    SHX7_2 = true
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  end
  SHX4_2 = SetWeaponAnimationOverride
  SHX5_2 = SHX1_2
  SHX6_2 = 1917483703
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadAnimDict
  SHX5_2 = SHX1_1
  SHX5_2 = SHX5_2[SHX0_2]
  SHX5_2 = SHX5_2.animDict
  SHX4_2(SHX5_2)
  SHX4_2 = TaskPlayAnim
  SHX5_2 = SHX1_2
  SHX6_2 = SHX1_1
  SHX6_2 = SHX6_2[SHX0_2]
  SHX6_2 = SHX6_2.animDict
  SHX7_2 = SHX1_1
  SHX7_2 = SHX7_2[SHX0_2]
  SHX7_2 = SHX7_2.animName
  SHX8_2 = 8.0
  SHX9_2 = -8.0
  SHX10_2 = -1
  SHX11_2 = 50
  SHX12_2 = 0.0
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX4_2 = RemoveAnimDict
  SHX5_2 = SHX1_1
  SHX5_2 = SHX5_2[SHX0_2]
  SHX5_2 = SHX5_2.animDict
  SHX4_2(SHX5_2)
  SHX4_2 = GetPedBoneIndex
  SHX5_2 = SHX1_2
  SHX6_2 = SHX1_1
  SHX6_2 = SHX6_2[SHX0_2]
  SHX6_2 = SHX6_2.boneIndex
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = AttachEntityToEntity
  SHX6_2 = SHX0_1.prop
  SHX7_2 = SHX1_2
  SHX8_2 = SHX4_2
  SHX9_2 = SHX1_1
  SHX9_2 = SHX9_2[SHX0_2]
  SHX9_2 = SHX9_2.offSet
  SHX9_2 = SHX9_2[1]
  SHX10_2 = SHX1_1
  SHX10_2 = SHX10_2[SHX0_2]
  SHX10_2 = SHX10_2.offSet
  SHX10_2 = SHX10_2[2]
  SHX11_2 = SHX1_1
  SHX11_2 = SHX11_2[SHX0_2]
  SHX11_2 = SHX11_2.offSet
  SHX11_2 = SHX11_2[3]
  SHX12_2 = SHX1_1
  SHX12_2 = SHX12_2[SHX0_2]
  SHX12_2 = SHX12_2.rotation
  SHX12_2 = SHX12_2[1]
  SHX13_2 = SHX1_1
  SHX13_2 = SHX13_2[SHX0_2]
  SHX13_2 = SHX13_2.rotation
  SHX13_2 = SHX13_2[2]
  SHX14_2 = SHX1_1
  SHX14_2 = SHX14_2[SHX0_2]
  SHX14_2 = SHX14_2.rotation
  SHX14_2 = SHX14_2[3]
  SHX15_2 = true
  SHX16_2 = true
  SHX17_2 = SHX1_1
  SHX17_2 = SHX17_2[SHX0_2]
  SHX17_2 = SHX17_2.collision
  SHX18_2 = false
  SHX19_2 = 1
  SHX20_2 = true
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX0_1.active = true
end
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX1_2 = SHX0_1.id
  SHX0_2 = SHX1_1
  SHX0_2 = SHX0_2[SHX1_2]
  SHX0_2 = SHX0_2.allowPistol
  if "hmp" == SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hasClientPermission
    SHX2_2 = "prisonguard.onduty.permission"
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = true
      return SHX1_2
  end
  elseif "police" == SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hasClientPermission
    SHX2_2 = "police.onduty.permission"
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = true
      return SHX1_2
    end
  end
  SHX1_2 = false
  return SHX1_2
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = SHX0_1.active
  if SHX0_2 then
    SHX0_2 = SHX0_1.id
    if 0 ~= SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getPlayerPed
      SHX0_2 = SHX0_2()
      SHX1_2 = IsPedInAnyVehicle
      SHX2_2 = SHX0_2
      SHX3_2 = true
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      if SHX1_2 then
        SHX1_2 = SHX0_1.inVehicle
        if not SHX1_2 then
          SHX1_2 = SetEntityCollision
          SHX2_2 = SHX0_1.prop
          SHX3_2 = false
          SHX4_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2)
          SHX0_1.inVehicle = true
          SHX2_2 = SHX0_1.id
          SHX1_2 = SHX1_1
          SHX1_2 = SHX1_2[SHX2_2]
          SHX1_2 = SHX1_2.collision
          if not SHX1_2 then
            SHX1_2 = SetEntityCollision
            SHX2_2 = SHX0_1.prop
            SHX3_2 = false
            SHX4_2 = true
            SHX1_2(SHX2_2, SHX3_2, SHX4_2)
          end
        end
      else
        SHX1_2 = SHX0_1.inVehicle
        if SHX1_2 then
          SHX1_2 = SetEntityCollision
          SHX2_2 = SHX0_1.prop
          SHX4_2 = SHX0_1.id
          SHX3_2 = SHX1_1
          SHX3_2 = SHX3_2[SHX4_2]
          SHX3_2 = SHX3_2.collision
          SHX4_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2)
          SHX2_2 = SHX0_1.id
          SHX1_2 = SHX1_1
          SHX1_2 = SHX1_2[SHX2_2]
          SHX1_2 = SHX1_2.collision
          if not SHX1_2 then
            SHX1_2 = SetEntityCompletelyDisableCollision
            SHX2_2 = SHX0_1.prop
            SHX3_2 = true
            SHX4_2 = true
            SHX1_2(SHX2_2, SHX3_2, SHX4_2)
          end
          SHX0_1.inVehicle = false
          SHX1_2 = Citizen
          SHX1_2 = SHX1_2.CreateThread
          function SHX2_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
            SHX0_3 = Wait
            SHX1_3 = 200
            SHX0_3(SHX1_3)
            SHX0_3 = TaskPlayAnim
            SHX1_3 = SHX0_2
            SHX3_3 = SHX0_1.id
            SHX2_3 = SHX1_1
            SHX2_3 = SHX2_3[SHX3_3]
            SHX2_3 = SHX2_3.animDict
            SHX4_3 = SHX0_1.id
            SHX3_3 = SHX1_1
            SHX3_3 = SHX3_3[SHX4_3]
            SHX3_3 = SHX3_3.animName
            SHX4_3 = 8.0
            SHX5_3 = -8.0
            SHX6_3 = -1
            SHX7_3 = 50
            SHX8_3 = 0.0
            SHX9_3 = false
            SHX10_3 = false
            SHX11_3 = false
            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
            SHX1_3 = SHX0_1.id
            SHX0_3 = SHX1_1
            SHX0_3 = SHX0_3[SHX1_3]
            SHX0_3 = SHX0_3.collision
            if not SHX0_3 then
              SHX0_3 = SetEntityCollision
              SHX1_3 = SHX0_1.prop
              SHX2_3 = false
              SHX3_3 = true
              SHX0_3(SHX1_3, SHX2_3, SHX3_3)
            end
          end
          SHX1_2(SHX2_2)
        end
      end
      SHX1_2 = SHX0_1.inVehicle
      if not SHX1_2 then
        SHX2_2 = SHX0_1.id
        SHX1_2 = SHX1_1
        SHX1_2 = SHX1_2[SHX2_2]
        if nil ~= SHX1_2 then
          SHX2_2 = SHX0_1.id
          SHX1_2 = SHX1_1
          SHX1_2 = SHX1_2[SHX2_2]
          SHX1_2 = SHX1_2.animDict
          if nil ~= SHX1_2 then
            SHX2_2 = SHX0_1.id
            SHX1_2 = SHX1_1
            SHX1_2 = SHX1_2[SHX2_2]
            SHX1_2 = SHX1_2.animName
            if nil ~= SHX1_2 then
              SHX1_2 = IsEntityPlayingAnim
              SHX2_2 = SHX0_2
              SHX4_2 = SHX0_1.id
              SHX3_2 = SHX1_1
              SHX3_2 = SHX3_2[SHX4_2]
              SHX3_2 = SHX3_2.animDict
              SHX5_2 = SHX0_1.id
              SHX4_2 = SHX1_1
              SHX4_2 = SHX4_2[SHX5_2]
              SHX4_2 = SHX4_2.animName
              SHX5_2 = 3
              SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
              if not SHX1_2 then
                SHX1_2 = tCMG
                SHX1_2 = SHX1_2.isInComa
                SHX1_2 = SHX1_2()
                if not SHX1_2 then
                  SHX1_2 = CMG
                  SHX1_2 = SHX1_2.isKnockedOut
                  SHX1_2 = SHX1_2()
                  if not SHX1_2 then
                    SHX1_2 = TaskPlayAnim
                    SHX2_2 = SHX0_2
                    SHX4_2 = SHX0_1.id
                    SHX3_2 = SHX1_1
                    SHX3_2 = SHX3_2[SHX4_2]
                    SHX3_2 = SHX3_2.animDict
                    SHX5_2 = SHX0_1.id
                    SHX4_2 = SHX1_1
                    SHX4_2 = SHX4_2[SHX5_2]
                    SHX4_2 = SHX4_2.animName
                    SHX5_2 = 8.0
                    SHX6_2 = -8.0
                    SHX7_2 = -1
                    SHX8_2 = 50
                    SHX9_2 = 0.0
                    SHX10_2 = false
                    SHX11_2 = false
                    SHX12_2 = false
                    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
                  end
                end
              end
            end
          end
        end
        SHX2_2 = SHX0_1.id
        SHX1_2 = SHX1_1
        SHX1_2 = SHX1_2[SHX2_2]
        SHX1_2 = SHX1_2.collision
        if not SHX1_2 then
          SHX1_2 = SetEntityCollision
          SHX2_2 = SHX0_1.prop
          SHX3_2 = false
          SHX4_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2)
        end
      end
      SHX1_2 = GetSelectedPedWeapon
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if -1569615261 ~= SHX1_2 then
        SHX2_2 = SHX6_1
        SHX2_2 = SHX2_2()
        if SHX2_2 then
          SHX2_2 = table
          SHX2_2 = SHX2_2.has
          SHX3_2 = SHX2_1
          SHX4_2 = SHX1_2
          SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
          if SHX2_2 then
            goto SHX_LABEL_160
          end
        end
        SHX2_2 = CMG
        SHX2_2 = SHX2_2.setWeapon
        SHX3_2 = SHX0_2
        SHX4_2 = -1569615261
        SHX5_2 = true
        SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_160:: outside nested blocks until all 'goto SHX_LABEL_160' can see it
      ::SHX_LABEL_160::
      SHX2_2 = DisableControlAction
      SHX3_2 = 0
      SHX4_2 = 210
      SHX5_2 = true
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX2_2 = DisableControlAction
      SHX3_2 = 1
      SHX4_2 = 210
      SHX5_2 = true
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX2_2 = DisableControlAction
      SHX3_2 = 0
      SHX4_2 = 36
      SHX5_2 = true
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX2_2 = DisableControlAction
      SHX3_2 = 1
      SHX4_2 = 36
      SHX5_2 = true
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX3_2 = SHX0_1.id
      SHX2_2 = SHX1_1
      SHX2_2 = SHX2_2[SHX3_2]
      SHX2_2 = SHX2_2.collision
      if not SHX2_2 then
        SHX2_2 = SetEntityCollision
        SHX3_2 = SHX0_1.prop
        SHX4_2 = false
        SHX5_2 = true
        SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      end
    end
  end
end
SHX8_1 = Citizen
SHX8_1 = SHX8_1.CreateThread
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = pairs
  SHX1_2 = SHX1_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX3_1
    if "" == SHX6_2 then
      SHX6_2 = SHX5_2.name
      SHX3_1 = SHX6_2
    else
      SHX6_2 = SHX3_1
      SHX7_2 = ", "
      SHX8_2 = SHX5_2.name
      SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
      SHX3_1 = SHX6_2
    end
  end
  SHX0_2 = TriggerEvent
  SHX1_2 = "chat:addSuggestion"
  SHX2_2 = "/shield"
  SHX3_2 = "Use a police shield"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createThreadOnTick
  SHX1_2 = SHX7_1
  SHX2_2 = "Police Shields"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX8_1(SHX9_1)
SHX8_1 = RMenu
SHX8_1 = SHX8_1.Add
SHX9_1 = "policeshields"
SHX10_1 = "main"
SHX11_1 = RageUI
SHX11_1 = SHX11_1.CreateMenu
SHX12_1 = "Police Shields"
SHX13_1 = "~b~Shield Management"
SHX14_1 = CMG
SHX14_1 = SHX14_1.getRageUIMenuWidth
SHX14_1 = SHX14_1()
SHX15_1 = CMG
SHX15_1 = SHX15_1.getRageUIMenuHeight
SHX15_1 = SHX15_1()
SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX8_1 = RageUI
SHX8_1 = SHX8_1.CreateWhile
SHX9_1 = 1.0
SHX10_1 = RMenu
SHX11_1 = SHX10_1
SHX10_1 = SHX10_1.Get
SHX12_1 = "policeshields"
SHX13_1 = "main"
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX11_1 = nil
function SHX12_1()
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
  SHX3_2 = "policeshields"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
    SHX0_3 = pairs
    SHX1_3 = SHX1_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = RageUI
      SHX6_3 = SHX6_3.Button
      SHX7_3 = SHX5_3.name
      SHX8_3 = " Shield"
      SHX7_3 = SHX7_3 .. SHX8_3
      SHX8_3 = "Use the "
      SHX9_3 = SHX5_3.name
      SHX10_3 = " Shield"
      SHX8_3 = SHX8_3 .. SHX9_3 .. SHX10_3
      SHX9_3 = true
      function SHX10_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4
        if SHX2_4 then
          SHX3_4 = SHX5_1
          SHX4_4 = SHX4_3
          SHX3_4(SHX4_4)
        end
      end
      SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3)
    end
    SHX0_3 = SHX0_1.active
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Button
      SHX1_3 = "Remove Shield"
      SHX2_3 = "Removes your current shield"
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
          SHX3_4 = SHX4_1
          SHX4_4 = true
          SHX3_4(SHX4_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
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
SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "a71cafbef1"
function SHX10_1()
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
  SHX3_2 = "policeshields"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX8_1(SHX9_1, SHX10_1)
