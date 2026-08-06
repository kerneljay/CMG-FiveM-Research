-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_news"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = 70.0
SHX2_1 = 5.0
SHX3_1 = 10.0
SHX4_1 = 8.0
SHX5_1 = 8.0
SHX6_1 = SHX1_1 + SHX2_1
SHX6_1 = SHX6_1 * 0.5
SHX7_1 = 1
SHX8_1 = 0.0
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = GetOffsetFromEntityInWorldCoords
  SHX3_2 = SHX1_2
  SHX4_2 = 0.0
  SHX5_2 = 0.0
  SHX6_2 = -5.0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SHX0_1.items
  SHX3_2 = SHX3_2[SHX0_2]
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadModel
  SHX5_2 = SHX3_2.model
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.requestEntitySpawn
  SHX5_2 = "news_item_object"
  SHX6_2 = SHX0_2
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = CreateObject
  SHX5_2 = SHX3_2.model
  SHX6_2 = SHX2_2.x
  SHX7_2 = SHX2_2.y
  SHX8_2 = SHX2_2.z
  SHX9_2 = true
  SHX10_2 = true
  SHX11_2 = true
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX5_2 = SHX3_2.boneId
  SHX6_2 = SHX3_2.position
  SHX7_2 = SHX3_2.rotation
  SHX8_2 = SetEntityCollision
  SHX9_2 = SHX4_2
  SHX10_2 = false
  SHX11_2 = true
  SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX8_2 = AttachEntityToEntity
  SHX9_2 = SHX4_2
  SHX10_2 = SHX1_2
  SHX11_2 = GetPedBoneIndex
  SHX12_2 = SHX1_2
  SHX13_2 = SHX5_2
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
  SHX12_2 = SHX6_2.x
  SHX13_2 = SHX6_2.y
  SHX14_2 = SHX6_2.z
  SHX15_2 = SHX7_2.x
  SHX16_2 = SHX7_2.y
  SHX17_2 = SHX7_2.z
  SHX18_2 = true
  SHX19_2 = true
  SHX20_2 = false
  SHX21_2 = true
  SHX22_2 = 0
  SHX23_2 = true
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.loadAnimDict
  SHX9_2 = SHX3_2.animations
  SHX9_2 = SHX9_2.dict
  SHX8_2(SHX9_2)
  SHX8_2 = TaskPlayAnim
  SHX9_2 = SHX1_2
  SHX10_2 = SHX3_2.animations
  SHX10_2 = SHX10_2.dict
  SHX11_2 = SHX3_2.animations
  SHX11_2 = SHX11_2.name
  SHX12_2 = 1.0
  SHX13_2 = -1
  SHX14_2 = -1
  SHX15_2 = 50
  SHX16_2 = 0
  SHX17_2 = true
  SHX18_2 = true
  SHX19_2 = true
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX8_2 = RemoveAnimDict
  SHX9_2 = SHX3_2.animations
  SHX9_2 = SHX9_2.dict
  SHX8_2(SHX9_2)
  SHX8_2 = ""
  if "camera" == SHX0_2 then
    SHX8_2 = [[
~s~. 
 
Press ~r~[E]~s~ to enter recording mode~s~]]
  end
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.notifyPicture
  SHX10_2 = "bbcnotification"
  SHX11_2 = "notification"
  SHX12_2 = "You are now holding a ~r~"
  SHX13_2 = SHX0_1.items
  SHX13_2 = SHX13_2[SHX0_2]
  SHX13_2 = SHX13_2.formalName
  SHX14_2 = SHX8_2
  SHX15_2 = "~s~."
  SHX12_2 = SHX12_2 .. SHX13_2 .. SHX14_2 .. SHX15_2
  SHX13_2 = "BBC News"
  SHX14_2 = "Equipment"
  SHX15_2 = nil
  SHX16_2 = nil
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX9_2 = SHX0_1.items
  SHX9_2 = SHX9_2[SHX0_2]
  SHX9_2.holding = true
  SHX9_2 = Wait
  SHX10_2 = 1000
  SHX9_2(SHX10_2)
  SHX9_2 = SHX0_1.items
  SHX9_2 = SHX9_2[SHX0_2]
  SHX10_2 = ObjToNet
  SHX11_2 = SHX4_2
  SHX10_2 = SHX10_2(SHX11_2)
  SHX9_2.netId = SHX10_2
  SHX9_2 = SetNetworkIdExistsOnAllMachines
  SHX10_2 = SHX0_1.items
  SHX10_2 = SHX10_2[SHX0_2]
  SHX10_2 = SHX10_2.netId
  SHX11_2 = true
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = NetworkUseHighPrecisionBlending
  SHX10_2 = SHX0_1.items
  SHX10_2 = SHX10_2[SHX0_2]
  SHX10_2 = SHX10_2.netId
  SHX11_2 = true
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = SetNetworkIdCanMigrate
  SHX10_2 = SHX0_1.items
  SHX10_2 = SHX10_2[SHX0_2]
  SHX10_2 = SHX10_2.netId
  SHX11_2 = false
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = SetModelAsNoLongerNeeded
  SHX10_2 = SHX3_2.model
  SHX9_2(SHX10_2)
end
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = SHX0_1.items
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = SHX1_2.holding
  if SHX1_2 then
    SHX1_2 = ClearPedSecondaryTask
    SHX2_2 = PlayerPedId
    SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX2_2()
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX1_2 = DetachEntity
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getObjectId
    SHX3_2 = SHX0_1.items
    SHX3_2 = SHX3_2[SHX0_2]
    SHX3_2 = SHX3_2.netId
    SHX4_2 = "removeNewsItem (1)"
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if not SHX2_2 then
      SHX2_2 = 0
    end
    SHX3_2 = true
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DeleteEntity
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getObjectId
    SHX3_2 = SHX0_1.items
    SHX3_2 = SHX3_2[SHX0_2]
    SHX3_2 = SHX3_2.netId
    SHX4_2 = "removeNewsItem (2)"
    SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX1_2 = SHX0_1.items
    SHX1_2 = SHX1_2[SHX0_2]
    SHX1_2.netId = nil
    SHX1_2 = SHX0_1.items
    SHX1_2 = SHX1_2[SHX0_2]
    SHX1_2.holding = false
    SHX1_2 = SHX0_1.items
    SHX1_2 = SHX1_2[SHX0_2]
    SHX1_2.using = false
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.showAllDisplays
    SHX2_2 = "news"
    SHX1_2(SHX2_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.notifyPicture
    SHX2_2 = "bbcnotification"
    SHX3_2 = "notification"
    SHX4_2 = "You have put away the ~r~"
    SHX5_2 = SHX0_1.items
    SHX5_2 = SHX5_2[SHX0_2]
    SHX5_2 = SHX5_2.formalName
    SHX6_2 = "~s~."
    SHX4_2 = SHX4_2 .. SHX5_2 .. SHX6_2
    SHX5_2 = "BBC News"
    SHX6_2 = "Equipment"
    SHX7_2 = nil
    SHX8_2 = nil
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  end
end
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.items
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX10_1
    SHX7_2 = SHX4_2
    SHX6_2(SHX7_2)
  end
end
SHX12_1 = RegisterNetEvent
SHX13_1 = "f55afa9558"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX0_1.items
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = SHX1_2.holding
  if not SHX1_2 then
    SHX1_2 = SHX11_1
    SHX1_2()
    SHX1_2 = SHX9_1
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  else
    SHX1_2 = SHX10_1
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
end
SHX12_1(SHX13_1, SHX14_1)
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = tostring
  SHX1_2 = GetClockHours
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = tostring
  SHX2_2 = GetClockMinutes
  SHX2_2, SHX3_2, SHX4_2 = SHX2_2()
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  if SHX0_2 < 10 then
    SHX2_2 = "0"
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2 .. SHX3_2
    SHX0_2 = SHX2_2
  end
  if SHX1_2 < 10 then
    SHX2_2 = "0"
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2 .. SHX3_2
    SHX1_2 = SHX2_2
  end
  SHX2_2 = SHX0_2
  SHX3_2 = " "
  SHX4_2 = SHX1_2
  SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2
  return SHX2_2
end
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = pairs
  SHX2_2 = SHX0_1.items
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX0_1.items
    SHX7_2 = SHX7_2[SHX5_2]
    SHX7_2 = SHX7_2.holding
    if SHX7_2 then
      SHX7_2 = IsEntityPlayingAnim
      SHX8_2 = SHX0_2
      SHX9_2 = SHX0_1.items
      SHX9_2 = SHX9_2[SHX5_2]
      SHX9_2 = SHX9_2.animations
      SHX9_2 = SHX9_2.dict
      SHX10_2 = SHX0_1.items
      SHX10_2 = SHX10_2[SHX5_2]
      SHX10_2 = SHX10_2.animations
      SHX10_2 = SHX10_2.name
      SHX11_2 = 3
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      if not SHX7_2 then
        SHX7_2 = CMG
        SHX7_2 = SHX7_2.loadAnimDict
        SHX8_2 = SHX0_1.items
        SHX8_2 = SHX8_2[SHX5_2]
        SHX8_2 = SHX8_2.animations
        SHX8_2 = SHX8_2.dict
        SHX7_2(SHX8_2)
        SHX7_2 = TaskPlayAnim
        SHX8_2 = SHX0_2
        SHX9_2 = SHX0_1.items
        SHX9_2 = SHX9_2[SHX5_2]
        SHX9_2 = SHX9_2.animations
        SHX9_2 = SHX9_2.dict
        SHX10_2 = SHX0_1.items
        SHX10_2 = SHX10_2[SHX5_2]
        SHX10_2 = SHX10_2.animations
        SHX10_2 = SHX10_2.name
        SHX11_2 = 1.0
        SHX12_2 = -1
        SHX13_2 = -1
        SHX14_2 = 50
        SHX15_2 = 0
        SHX16_2 = false
        SHX17_2 = false
        SHX18_2 = false
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
        SHX7_2 = RemoveAnimDict
        SHX8_2 = SHX0_1.items
        SHX8_2 = SHX8_2[SHX5_2]
        SHX8_2 = SHX8_2.animations
        SHX8_2 = SHX8_2.dict
        SHX7_2(SHX8_2)
      end
      SHX7_2 = DisablePlayerFiring
      SHX8_2 = PlayerId
      SHX8_2 = SHX8_2()
      SHX9_2 = true
      SHX7_2(SHX8_2, SHX9_2)
      SHX7_2 = DisableControlAction
      SHX8_2 = 0
      SHX9_2 = 25
      SHX10_2 = true
      SHX7_2(SHX8_2, SHX9_2, SHX10_2)
      SHX7_2 = DisableControlAction
      SHX8_2 = 0
      SHX9_2 = 44
      SHX10_2 = true
      SHX7_2(SHX8_2, SHX9_2, SHX10_2)
      SHX7_2 = DisableControlAction
      SHX8_2 = 0
      SHX9_2 = 37
      SHX10_2 = true
      SHX7_2(SHX8_2, SHX9_2, SHX10_2)
      SHX7_2 = SetCurrentPedWeapon
      SHX8_2 = SHX0_2
      SHX9_2 = GetHashKey
      SHX10_2 = "WEAPON_UNARMED"
      SHX9_2 = SHX9_2(SHX10_2)
      SHX10_2 = true
      SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    end
  end
  SHX1_2 = SHX0_1.items
  SHX1_2 = SHX1_2.camera
  SHX1_2 = SHX1_2.using
  if SHX1_2 then
    SHX1_2 = HasStreamedTextureDictLoaded
    SHX2_2 = "bbcnews"
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = RequestStreamedTextureDict
      SHX2_2 = "bbcnews"
      SHX3_2 = true
      SHX1_2(SHX2_2, SHX3_2)
      while true do
        SHX1_2 = HasStreamedTextureDictLoaded
        SHX2_2 = "bbcnews"
        SHX1_2 = SHX1_2(SHX2_2)
        if SHX1_2 then
          break
        end
        SHX1_2 = print
        SHX2_2 = "stuck loading"
        SHX3_2 = "bbcnews"
        SHX1_2(SHX2_2, SHX3_2)
        SHX1_2 = Wait
        SHX2_2 = 0
        SHX1_2(SHX2_2)
      end
    end
    SHX1_2 = DrawSprite
    SHX2_2 = "bbcnews"
    SHX3_2 = SHX0_1.textures
    SHX4_2 = SHX7_1
    SHX3_2 = SHX3_2[SHX4_2]
    SHX3_2 = SHX3_2.textureName
    SHX4_2 = 0.5
    SHX5_2 = 0.5
    SHX6_2 = 1.0
    SHX7_2 = 1.0
    SHX8_2 = 0.0
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 255
    SHX12_2 = 255
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX1_2 = SHX0_1.textures
    SHX2_2 = SHX7_1
    SHX1_2 = SHX1_2[SHX2_2]
    SHX1_2 = SHX1_2.textureName
    if "bbcnews" == SHX1_2 then
      SHX1_2 = DrawAdvancedText
      SHX2_2 = 0.3575
      SHX3_2 = 0.936
      SHX4_2 = 0.0
      SHX5_2 = 0.0
      SHX6_2 = 0.75
      SHX7_2 = SHX12_1
      SHX7_2 = SHX7_2()
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 255
      SHX12_2 = 2
      SHX13_2 = 0
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    end
    SHX1_2 = SHX0_1.textures
    SHX2_2 = SHX7_1
    SHX1_2 = SHX1_2[SHX2_2]
    SHX1_2 = SHX1_2.textureName
    if "skynews" == SHX1_2 then
      SHX1_2 = DrawAdvancedText
      SHX2_2 = 0.187
      SHX3_2 = 0.935
      SHX4_2 = 0.0
      SHX5_2 = 0.0
      SHX6_2 = 0.6
      SHX7_2 = SHX12_1
      SHX7_2 = SHX7_2()
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 255
      SHX12_2 = 2
      SHX13_2 = 0
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    end
  end
end
SHX14_1 = CMG
SHX14_1 = SHX14_1.createThreadOnTick
SHX15_1 = SHX13_1
SHX16_1 = "News"
SHX14_1(SHX15_1, SHX16_1)
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = HideHelpTextThisFrame
  SHX0_2()
  SHX0_2 = HideHudAndRadarThisFrame
  SHX0_2()
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 1
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 2
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 3
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 4
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 6
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 7
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 8
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 9
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 13
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 11
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 12
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 15
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 18
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 19
  SHX0_2(SHX1_2)
end
function SHX15_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = GetDisabledControlNormal
  SHX3_2 = 0
  SHX4_2 = 220
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = GetDisabledControlNormal
  SHX4_2 = 0
  SHX5_2 = 221
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = GetCamRot
  SHX5_2 = SHX0_2
  SHX6_2 = 2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  if 0.0 ~= SHX2_2 or 0.0 ~= SHX3_2 then
    SHX5_2 = SHX4_2.z
    SHX6_2 = SHX2_2 * -1.0
    SHX7_2 = SHX5_1
    SHX6_2 = SHX6_2 * SHX7_2
    SHX7_2 = SHX1_2 + 0.1
    SHX6_2 = SHX6_2 * SHX7_2
    SHX5_2 = SHX5_2 + SHX6_2
    SHX8_1 = SHX5_2
    SHX5_2 = math
    SHX5_2 = SHX5_2.max
    SHX6_2 = math
    SHX6_2 = SHX6_2.min
    SHX7_2 = 20.0
    SHX8_2 = SHX4_2.x
    SHX9_2 = SHX3_2 * -1.0
    SHX10_2 = SHX4_1
    SHX9_2 = SHX9_2 * SHX10_2
    SHX10_2 = SHX1_2 + 0.1
    SHX9_2 = SHX9_2 * SHX10_2
    SHX8_2 = SHX8_2 + SHX9_2
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX7_2 = -89.5
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX6_2 = SetCamRot
    SHX7_2 = SHX0_2
    SHX8_2 = SHX5_2
    SHX9_2 = 0.0
    SHX10_2 = SHX8_1
    SHX11_2 = 2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  end
end
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = IsPedSittingInAnyVehicle
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = IsControlJustPressed
    SHX3_2 = 0
    SHX4_2 = 241
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = math
      SHX2_2 = SHX2_2.max
      SHX3_2 = SHX6_1
      SHX4_2 = SHX3_1
      SHX3_2 = SHX3_2 - SHX4_2
      SHX4_2 = SHX2_1
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      SHX6_1 = SHX2_2
    end
    SHX2_2 = IsControlJustPressed
    SHX3_2 = 0
    SHX4_2 = 242
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = math
      SHX2_2 = SHX2_2.min
      SHX3_2 = SHX6_1
      SHX4_2 = SHX3_1
      SHX3_2 = SHX3_2 + SHX4_2
      SHX4_2 = SHX1_1
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      SHX6_1 = SHX2_2
    end
    SHX2_2 = GetCamFov
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = math
    SHX3_2 = SHX3_2.abs
    SHX4_2 = SHX6_1
    SHX4_2 = SHX4_2 - SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = 0.1
    if SHX3_2 < SHX4_2 then
      SHX6_1 = SHX2_2
    end
    SHX3_2 = SetCamFov
    SHX4_2 = SHX0_2
    SHX5_2 = SHX6_1
    SHX5_2 = SHX5_2 - SHX2_2
    SHX5_2 = SHX5_2 * 0.05
    SHX5_2 = SHX2_2 + SHX5_2
    SHX3_2(SHX4_2, SHX5_2)
  else
    SHX2_2 = IsControlJustPressed
    SHX3_2 = 0
    SHX4_2 = 17
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = math
      SHX2_2 = SHX2_2.max
      SHX3_2 = SHX6_1
      SHX4_2 = SHX3_1
      SHX3_2 = SHX3_2 - SHX4_2
      SHX4_2 = SHX2_1
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      SHX6_1 = SHX2_2
    end
    SHX2_2 = IsControlJustPressed
    SHX3_2 = 0
    SHX4_2 = 16
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = math
      SHX2_2 = SHX2_2.min
      SHX3_2 = SHX6_1
      SHX4_2 = SHX3_1
      SHX3_2 = SHX3_2 + SHX4_2
      SHX4_2 = SHX1_1
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      SHX6_1 = SHX2_2
    end
    SHX2_2 = GetCamFov
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = math
    SHX3_2 = SHX3_2.abs
    SHX4_2 = SHX6_1
    SHX4_2 = SHX4_2 - SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = 0.1
    if SHX3_2 < SHX4_2 then
      SHX6_1 = SHX2_2
    end
    SHX3_2 = SetCamFov
    SHX4_2 = SHX0_2
    SHX5_2 = SHX6_1
    SHX5_2 = SHX5_2 - SHX2_2
    SHX5_2 = SHX5_2 * 0.05
    SHX5_2 = SHX2_2 + SHX5_2
    SHX3_2(SHX4_2, SHX5_2)
  end
end
SHX17_1 = Citizen
SHX17_1 = SHX17_1.CreateThread
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  while true do
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
    SHX0_2 = SHX0_1.items
    SHX0_2 = SHX0_2.camera
    SHX0_2 = SHX0_2.holding
    if SHX0_2 then
      SHX0_2 = IsControlJustReleased
      SHX1_2 = 1
      SHX2_2 = 38
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if SHX0_2 then
        SHX0_2 = SHX0_1.items
        SHX0_2 = SHX0_2.camera
        SHX0_2.using = true
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.hideAllDisplays
        SHX1_2 = "news"
        SHX0_2(SHX1_2)
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.notifyPicture
        SHX1_2 = "bbcnotification"
        SHX2_2 = "notification"
        SHX3_2 = "Press ~r~LEFT ALT ~s~to change overlay or ~r~BACKSPACE ~s~to exit recording mode."
        SHX4_2 = "BBC News"
        SHX5_2 = "Now Recording"
        SHX6_2 = nil
        SHX7_2 = nil
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
        SHX0_2 = SetTimecycleModifier
        SHX1_2 = "default"
        SHX0_2(SHX1_2)
        SHX0_2 = SetTimecycleModifierStrength
        SHX1_2 = 0.3
        SHX0_2(SHX1_2)
        SHX0_2 = PlayerPedId
        SHX0_2 = SHX0_2()
        SHX1_2 = GetVehiclePedIsIn
        SHX2_2 = SHX0_2
        SHX3_2 = false
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        SHX2_2 = CreateCam
        SHX3_2 = "DEFAULT_SCRIPTED_FLY_CAMERA"
        SHX4_2 = true
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
        SHX3_2 = AttachCamToEntity
        SHX4_2 = SHX2_2
        SHX5_2 = SHX0_2
        SHX6_2 = 0.0
        SHX7_2 = 0.5
        SHX8_2 = 0.65
        SHX9_2 = true
        SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX3_2 = SetCamRot
        SHX4_2 = SHX2_2
        SHX5_2 = 2.0
        SHX6_2 = 1.0
        SHX7_2 = GetEntityHeading
        SHX8_2 = SHX0_2
        SHX7_2 = SHX7_2(SHX8_2)
        SHX8_2 = 2
        SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX3_2 = SetCamFov
        SHX4_2 = SHX2_2
        SHX5_2 = SHX6_1
        SHX3_2(SHX4_2, SHX5_2)
        SHX3_2 = RenderScriptCams
        SHX4_2 = true
        SHX5_2 = false
        SHX6_2 = 0
        SHX7_2 = true
        SHX8_2 = false
        SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX3_2 = EndScaleformMovieMethod
        SHX3_2()
        while true do
          SHX3_2 = SHX0_1.items
          SHX3_2 = SHX3_2.camera
          SHX3_2 = SHX3_2.using
          if not SHX3_2 then
            break
          end
          SHX3_2 = IsEntityDead
          SHX4_2 = SHX0_2
          SHX3_2 = SHX3_2(SHX4_2)
          if SHX3_2 then
            break
          end
          SHX3_2 = GetVehiclePedIsIn
          SHX4_2 = SHX0_2
          SHX5_2 = false
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
          if SHX3_2 ~= SHX1_2 then
            break
          end
          SHX3_2 = IsControlJustReleased
          SHX4_2 = 1
          SHX5_2 = 19
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
          if SHX3_2 then
            SHX3_2 = PlaySoundFrontend
            SHX4_2 = -1
            SHX5_2 = "SELECT"
            SHX6_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            SHX7_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
            SHX3_2 = SHX7_1
            if SHX3_2 <= 7 then
              SHX3_2 = SHX7_1
              SHX3_2 = SHX3_2 + 1
              SHX7_1 = SHX3_2
            else
              SHX3_2 = 1
              SHX7_1 = SHX3_2
            end
          end
          SHX3_2 = IsControlJustReleased
          SHX4_2 = 1
          SHX5_2 = 177
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
          if SHX3_2 then
            SHX3_2 = PlaySoundFrontend
            SHX4_2 = -1
            SHX5_2 = "SELECT"
            SHX6_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            SHX7_2 = false
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
            SHX3_2 = SHX0_1.items
            SHX3_2 = SHX3_2.camera
            SHX3_2.using = false
            SHX3_2 = CMG
            SHX3_2 = SHX3_2.showAllDisplays
            SHX4_2 = "news"
            SHX3_2(SHX4_2)
          end
          SHX3_2 = SetEntityRotation
          SHX4_2 = SHX0_2
          SHX5_2 = 0
          SHX6_2 = 0
          SHX7_2 = SHX8_1
          SHX8_2 = 2
          SHX9_2 = true
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
          SHX3_2 = SHX1_1
          SHX4_2 = SHX2_1
          SHX3_2 = SHX3_2 - SHX4_2
          SHX4_2 = 1.0
          SHX3_2 = SHX4_2 / SHX3_2
          SHX4_2 = SHX6_1
          SHX5_2 = SHX2_1
          SHX4_2 = SHX4_2 - SHX5_2
          SHX3_2 = SHX3_2 * SHX4_2
          SHX4_2 = SHX15_1
          SHX5_2 = SHX2_2
          SHX6_2 = SHX3_2
          SHX4_2(SHX5_2, SHX6_2)
          SHX4_2 = SHX16_1
          SHX5_2 = SHX2_2
          SHX4_2(SHX5_2)
          SHX4_2 = SHX14_1
          SHX4_2()
          SHX4_2 = GetGameplayCamRelativeHeading
          SHX4_2 = SHX4_2()
          SHX5_2 = GetGameplayCamRelativePitch
          SHX5_2 = SHX5_2()
          if SHX5_2 < -70.0 then
            SHX5_2 = -70.0
          elseif SHX5_2 > 42.0 then
            SHX5_2 = 42.0
          end
          SHX6_2 = SHX5_2 + 70.0
          SHX5_2 = SHX6_2 / 112.0
          SHX6_2 = -180.0
          if SHX4_2 < SHX6_2 then
            SHX4_2 = -180.0
          else
            SHX6_2 = 180.0
            if SHX4_2 > SHX6_2 then
              SHX4_2 = 180.0
            end
          end
          SHX6_2 = SHX4_2 + 180.0
          SHX4_2 = SHX6_2 / 360.0
          SHX6_2 = SetTaskMoveNetworkSignalFloat
          SHX7_2 = SHX0_2
          SHX8_2 = "Pitch"
          SHX9_2 = SHX5_2
          SHX6_2(SHX7_2, SHX8_2, SHX9_2)
          SHX6_2 = SetTaskMoveNetworkSignalFloat
          SHX7_2 = SHX0_2
          SHX8_2 = "Heading"
          SHX9_2 = SHX4_2 * -1.0
          SHX9_2 = SHX9_2 + 1.0
          SHX6_2(SHX7_2, SHX8_2, SHX9_2)
          SHX6_2 = Wait
          SHX7_2 = 0
          SHX6_2(SHX7_2)
        end
        SHX3_2 = SHX0_1.items
        SHX3_2 = SHX3_2.camera
        SHX3_2.using = false
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.showAllDisplays
        SHX4_2 = "news"
        SHX3_2(SHX4_2)
        SHX3_2 = ClearTimecycleModifier
        SHX3_2()
        SHX3_2 = SHX1_1
        SHX4_2 = SHX2_1
        SHX3_2 = SHX3_2 + SHX4_2
        SHX3_2 = SHX3_2 * 0.5
        SHX6_1 = SHX3_2
        SHX3_2 = RenderScriptCams
        SHX4_2 = false
        SHX5_2 = false
        SHX6_2 = 0
        SHX7_2 = true
        SHX8_2 = false
        SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX3_2 = DestroyCam
        SHX4_2 = SHX2_2
        SHX5_2 = false
        SHX3_2(SHX4_2, SHX5_2)
        SHX3_2 = SetNightvision
        SHX4_2 = false
        SHX3_2(SHX4_2)
        SHX3_2 = SetSeethrough
        SHX4_2 = false
        SHX3_2(SHX4_2)
      end
    end
  end
end
SHX17_1(SHX18_1)
