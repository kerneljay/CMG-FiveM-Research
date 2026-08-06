-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1
SHX0_1 = false
SHX1_1 = false
SHX2_1 = 0
SHX3_1 = false
SHX4_1 = 0
SHX5_1 = false
SHX6_1 = 0
SHX7_1 = 0
SHX8_1 = false
SHX9_1 = DisableControlAction
SHX10_1 = 0
SHX11_1 = 0
SHX12_1 = 4000
SHX13_1 = 2500
SHX14_1 = 6000
SHX15_1 = CMG
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  return SHX0_2
end
SHX15_1.isHandcuffed = SHX16_1
SHX15_1 = exports
SHX16_1 = "isHandcuffed"
SHX17_1 = tCMG
SHX17_1 = SHX17_1.isHandcuffed
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = TriggerEvent
SHX16_1 = "chat:addSuggestion"
SHX17_1 = "/cuff"
SHX18_1 = "Cuff the nearest player"
SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX15_1 = TriggerEvent
SHX16_1 = "chat:addSuggestion"
SHX17_1 = "/frontcuff"
SHX18_1 = "Frontcuff the nearest player"
SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX15_1 = RegisterKeyMapping
SHX16_1 = "cuff"
SHX17_1 = "Handcuff"
SHX18_1 = "keyboard"
SHX19_1 = "F11"
SHX15_1(SHX16_1, SHX17_1, SHX18_1, SHX19_1)
SHX15_1 = {}
SHX16_1 = vector3
SHX17_1 = 460.67126464844
SHX18_1 = -995.552734375
SHX19_1 = 24.915018081665
SHX16_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX17_1 = vector3
SHX18_1 = 459.45010375977
SHX19_1 = -1001.6173095703
SHX20_1 = 24.914978027344
SHX17_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1)
SHX18_1 = vector3
SHX19_1 = -1072.6063232422
SHX20_1 = -824.88726806641
SHX21_1 = 5.479706287384
SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX15_1[1] = SHX16_1
SHX15_1[2] = SHX17_1
SHX15_1[3] = SHX18_1
SHX15_1[4] = SHX19_1
SHX15_1[5] = SHX20_1
SHX15_1[6] = SHX21_1
SHX15_1[7] = SHX22_1
SHX15_1[8] = SHX23_1
SHX15_1[9] = SHX24_1
SHX15_1[10] = SHX25_1
SHX15_1[11] = SHX26_1
SHX15_1[12] = SHX27_1
SHX15_1[13] = SHX28_1
SHX15_1[14] = SHX29_1
SHX15_1[15] = SHX30_1
SHX15_1[16] = SHX31_1
SHX15_1[17] = SHX32_1
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.setCanOpenPhone
    SHX1_2 = true
    SHX0_2(SHX1_2)
  end
end
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.setCanOpenPhone
    SHX1_2 = false
    SHX0_2(SHX1_2)
  end
end
SHX18_1 = pairs
SHX19_1 = SHX15_1
SHX18_1, SHX19_1, SHX20_1, SHX21_1 = SHX18_1(SHX19_1)
for SHX22_1, SHX23_1 in SHX18_1, SHX19_1, SHX20_1, SHX21_1 do
  SHX24_1 = CMG
  SHX24_1 = SHX24_1.createArea
  SHX25_1 = "phone_allowed_"
  SHX26_1 = tostring
  SHX27_1 = SHX22_1
  SHX26_1 = SHX26_1(SHX27_1)
  SHX25_1 = SHX25_1 .. SHX26_1
  SHX26_1 = SHX23_1
  SHX27_1 = 5.0
  SHX28_1 = 5.0
  SHX29_1 = SHX16_1
  SHX30_1 = SHX17_1
  function SHX31_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_2, SHX1_2
  end
  SHX32_1 = {}
  SHX24_1(SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1)
end
SHX18_1 = false
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = 7
  SHX1_2 = 38
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = SHX9_1
    SHX5_2 = 0
    SHX6_2 = SHX3_2
    SHX7_2 = true
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  end
end
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX18_1
  if not SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.setCanAnim
    SHX1_2 = false
    SHX0_2(SHX1_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.createThreadOnTick
    SHX1_2 = SHX19_1
    SHX2_2 = "Disable Controls Whilst Cuffing"
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = true
    SHX18_1 = SHX0_2
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.setSwitchGunEnabled
    SHX1_2 = false
    SHX0_2(SHX1_2)
  end
end
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX18_1
  if SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.setCanAnim
    SHX1_2 = true
    SHX0_2(SHX1_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.deleteThreadOnTick
    SHX1_2 = SHX19_1
    SHX0_2(SHX1_2)
    SHX0_2 = false
    SHX18_1 = SHX0_2
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.setSwitchGunEnabled
    SHX1_2 = true
    SHX0_2(SHX1_2)
  end
end
SHX22_1 = RegisterNetEvent
SHX23_1 = "979a90e0cf"
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX1_2 = TriggerEvent
  SHX2_2 = "259d5b120c"
  SHX1_2(SHX2_2)
  SHX1_2 = SHX20_1
  SHX1_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.setWeapon
  SHX3_2 = SHX1_2
  SHX4_2 = -273849285
  SHX5_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = GetPlayerPed
  SHX3_2 = GetPlayerFromServerId
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX3_2(SHX4_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX3_2 = true
  SHX5_1 = SHX3_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadAnimDict
  SHX4_2 = "mp_arrest_paired"
  SHX3_2(SHX4_2)
  SHX3_2 = AttachEntityToEntity
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2
  SHX6_2 = 11816
  SHX7_2 = -0.1
  SHX8_2 = 0.45
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 20.0
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = 20
  SHX18_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX3_2 = TaskPlayAnim
  SHX4_2 = SHX1_2
  SHX5_2 = "mp_arrest_paired"
  SHX6_2 = "crook_p2_back_left"
  SHX7_2 = 8.0
  SHX8_2 = -8.0
  SHX9_2 = 5500
  SHX10_2 = 33
  SHX11_2 = 0
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX3_2 = RemoveAnimDict
  SHX4_2 = "mp_arrest_paired"
  SHX3_2(SHX4_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.Wait
  SHX4_2 = 4000
  SHX3_2(SHX4_2)
  SHX3_2 = DetachEntity
  SHX4_2 = SHX1_2
  SHX5_2 = true
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = false
  SHX5_1 = SHX3_2
  SHX3_2 = SHX21_1
  SHX3_2()
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = RegisterNetEvent
SHX23_1 = "c22d4065c2"
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = SHX20_1
  SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadAnimDict
  SHX2_2 = "mp_arrest_paired"
  SHX1_2(SHX2_2)
  SHX1_2 = TaskPlayAnim
  SHX2_2 = SHX0_2
  SHX3_2 = "mp_arrest_paired"
  SHX4_2 = "cop_p2_back_left"
  SHX5_2 = 8.0
  SHX6_2 = -8.0
  SHX7_2 = 5500
  SHX8_2 = 33
  SHX9_2 = 0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX1_2 = RemoveAnimDict
  SHX2_2 = "mp_arrest_paired"
  SHX1_2(SHX2_2)
  SHX1_2 = math
  SHX1_2 = SHX1_2.floor
  SHX2_2 = GetAnimDuration
  SHX3_2 = "mp_arrest_paired"
  SHX4_2 = "cop_p2_back_left"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX2_2 * 1000
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = Wait
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = SHX21_1
  SHX2_2()
end
SHX22_1(SHX23_1, SHX24_1)
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  if SHX0_2 then
    SHX1_2 = SHX2_1
    if 0 ~= SHX1_2 then
      SHX1_2 = SetEntityVisible
      SHX2_2 = SHX2_1
      SHX3_2 = false
      SHX4_2 = false
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DetachEntity
      SHX2_2 = SHX2_1
      SHX3_2 = true
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX2_1
      SHX1_2(SHX2_2)
    end
    SHX1_2 = false
    SHX3_1 = SHX1_2
    SHX1_2 = 0
    SHX4_1 = SHX1_2
    SHX1_2 = 0
    SHX2_1 = SHX1_2
    return
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = -1281059971
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = GetEntityCoords
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2 = SHX3_2()
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.requestEntitySpawn
  SHX4_2 = "cuff_object"
  SHX3_2(SHX4_2)
  SHX3_2 = CreateObject
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX8_2 = true
  SHX9_2 = true
  SHX10_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX4_1 = SHX3_2
  SHX3_2 = SetModelAsNoLongerNeeded
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
  SHX3_2 = true
  SHX3_1 = SHX3_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.syncNetworkId
  SHX4_2 = ObjToNet
  SHX5_2 = SHX4_1
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX4_2(SHX5_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX3_2 = SHX1_1
  if SHX3_2 then
    SHX3_2 = AttachEntityToEntity
    SHX4_2 = SHX4_1
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getPlayerPed
    SHX5_2 = SHX5_2()
    SHX6_2 = GetPedBoneIndex
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.getPlayerPed
    SHX7_2 = SHX7_2()
    SHX8_2 = 60309
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX7_2 = -0.058
    SHX8_2 = 0.005
    SHX9_2 = 0.09
    SHX10_2 = 290.0
    SHX11_2 = 95.0
    SHX12_2 = 120.0
    SHX13_2 = true
    SHX14_2 = false
    SHX15_2 = false
    SHX16_2 = false
    SHX17_2 = 0
    SHX18_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  else
    SHX3_2 = AttachEntityToEntity
    SHX4_2 = SHX4_1
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getPlayerPed
    SHX5_2 = SHX5_2()
    SHX6_2 = GetPedBoneIndex
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.getPlayerPed
    SHX7_2 = SHX7_2()
    SHX8_2 = 60309
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX7_2 = -0.055
    SHX8_2 = 0.06
    SHX9_2 = 0.04
    SHX10_2 = 265.0
    SHX11_2 = 155.0
    SHX12_2 = 80.0
    SHX13_2 = true
    SHX14_2 = false
    SHX15_2 = false
    SHX16_2 = false
    SHX17_2 = 0
    SHX18_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  end
  SHX3_2 = SHX4_1
  SHX2_1 = SHX3_2
end
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = SetEnableHandcuffs
  SHX3_2 = SHX1_2
  SHX4_2 = SHX0_1
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetPedCanPlayGestureAnims
  SHX3_2 = SHX1_2
  SHX4_2 = SHX0_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetPedPathCanUseLadders
  SHX3_2 = SHX1_2
  SHX4_2 = SHX0_2
  SHX2_2(SHX3_2, SHX4_2)
  if SHX0_2 then
    SHX2_2 = SetPedStealthMovement
    SHX3_2 = SHX1_2
    SHX4_2 = false
    SHX5_2 = ""
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  end
  SHX2_2 = ClearPedTasks
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
end
SHX24_1 = RegisterNetEvent
SHX25_1 = "667b6c018e"
function SHX26_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX2_2 = TriggerEvent
  SHX3_2 = "259d5b120c"
  SHX2_2(SHX3_2)
  SHX2_2 = true
  SHX5_1 = SHX2_2
  SHX0_1 = SHX1_2
  SHX2_2 = globalInPrison
  if not SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.setCanOpenPhone
    SHX3_2 = SHX0_1
    SHX3_2 = not SHX3_2
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX0_1
  if SHX2_2 then
    SHX2_2 = 0
    SHX6_1 = SHX2_2
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX3_2 = math
    SHX3_2 = SHX3_2.random
    SHX4_2 = 5000
    SHX5_2 = 45000
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX2_2 = SHX2_2 + SHX3_2
    SHX7_1 = SHX2_2
    SHX2_2 = false
    SHX8_1 = SHX2_2
    SHX2_2 = TriggerEvent
    SHX3_2 = "56e6172373"
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = TriggerEvent
    SHX3_2 = "2a70dddd80"
    SHX2_2(SHX3_2)
  end
  SHX1_1 = SHX0_2
  SHX2_2 = SHX22_1
  SHX3_2 = SHX0_1
  SHX3_2 = not SHX3_2
  SHX2_2(SHX3_2)
  if SHX0_2 then
    SHX2_2 = SHX0_1
    if SHX2_2 then
      SHX2_2 = tCMG
      SHX2_2 = SHX2_2.playAnim
      SHX3_2 = true
      SHX4_2 = {}
      SHX5_2 = {}
      SHX6_2 = "anim@move_m@prisoner_cuffed"
      SHX7_2 = "idle"
      SHX8_2 = 1
      SHX5_2[1] = SHX6_2
      SHX5_2[2] = SHX7_2
      SHX5_2[3] = SHX8_2
      SHX4_2[1] = SHX5_2
      SHX5_2 = true
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    end
  end
  SHX2_2 = SHX0_1
  if SHX2_2 and not SHX0_2 then
    SHX2_2 = Wait
    SHX3_2 = 3000
    SHX2_2(SHX3_2)
    SHX2_2 = SHX23_1
    SHX3_2 = false
    SHX2_2(SHX3_2)
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.CreateThread
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
      SHX0_3 = Wait
      SHX1_3 = 1000
      SHX0_3(SHX1_3)
      SHX0_3 = SHX0_2
      if SHX0_3 then
        SHX0_3 = tCMG
        SHX0_3 = SHX0_3.playAnim
        SHX1_3 = true
        SHX2_3 = {}
        SHX3_3 = {}
        SHX4_3 = "anim@move_m@prisoner_cuffed"
        SHX5_3 = "idle"
        SHX6_3 = 1
        SHX3_3[1] = SHX4_3
        SHX3_3[2] = SHX5_3
        SHX3_3[3] = SHX6_3
        SHX2_3[1] = SHX3_3
        SHX3_3 = true
        SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      else
        SHX0_3 = tCMG
        SHX0_3 = SHX0_3.playAnim
        SHX1_3 = true
        SHX2_3 = {}
        SHX3_3 = {}
        SHX4_3 = "mp_arresting"
        SHX5_3 = "idle"
        SHX6_3 = 1
        SHX3_3[1] = SHX4_3
        SHX3_3[2] = SHX5_3
        SHX3_3[3] = SHX6_3
        SHX2_3[1] = SHX3_3
        SHX3_3 = true
        SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      end
    end
    SHX2_2(SHX3_2)
  else
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.stopAnim
    SHX3_2 = true
    SHX2_2(SHX3_2)
    SHX2_2 = SHX23_1
    SHX3_2 = true
    SHX2_2(SHX3_2)
    SHX2_2 = ClearPedTasks
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerPed
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX3_2()
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX2_2 = UncuffPed
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerPed
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX3_2()
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX2_2 = SetPedUsingActionMode
    SHX3_2 = PlayerPedId
    SHX3_2 = SHX3_2()
    SHX4_2 = false
    SHX5_2 = -1
    SHX6_2 = "DEFAULT_ACTION"
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  end
  SHX2_2 = false
  SHX5_1 = SHX2_2
end
SHX24_1(SHX25_1, SHX26_1)
SHX24_1 = RegisterNetEvent
SHX25_1 = "edd7dc445b"
function SHX26_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = true
  SHX5_1 = SHX1_2
  SHX1_2 = SHX0_1
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.setCanOpenPhone
    SHX2_2 = true
    SHX1_2(SHX2_2)
  end
  SHX1_2 = false
  SHX0_1 = SHX1_2
  SHX1_1 = SHX0_2
  SHX1_2 = SHX22_1
  SHX2_2 = SHX0_1
  SHX2_2 = not SHX2_2
  SHX1_2(SHX2_2)
  if SHX0_2 then
    SHX1_2 = SHX0_1
    if SHX1_2 then
      SHX1_2 = tCMG
      SHX1_2 = SHX1_2.playAnim
      SHX2_2 = true
      SHX3_2 = {}
      SHX4_2 = {}
      SHX5_2 = "anim@move_m@prisoner_cuffed"
      SHX6_2 = "idle"
      SHX7_2 = 1
      SHX4_2[1] = SHX5_2
      SHX4_2[2] = SHX6_2
      SHX4_2[3] = SHX7_2
      SHX3_2[1] = SHX4_2
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    end
  end
  SHX1_2 = GetEntityAttachedTo
  SHX2_2 = PlayerPedId
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX2_2()
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = IsPedAPlayer
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = TriggerEvent
      SHX3_2 = "2ce9e6535d"
      SHX2_2(SHX3_2)
    end
  end
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.stopAnim
  SHX3_2 = true
  SHX2_2(SHX3_2)
  SHX2_2 = SHX23_1
  SHX3_2 = true
  SHX2_2(SHX3_2)
  SHX2_2 = ClearPedTasks
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX3_2()
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = UncuffPed
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX3_2()
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = false
  SHX5_1 = SHX2_2
end
SHX24_1(SHX25_1, SHX26_1)
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = false
  SHX1_2 = true
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.minigameCircularProgressBar
  SHX3_2 = {}
  SHX3_2.Difficulty = "VeryHard"
  SHX3_2.Timeout = 10000
  function SHX4_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3
    SHX0_2 = SHX0_3
    SHX1_3 = false
    SHX1_2 = SHX1_3
  end
  SHX3_2.onComplete = SHX4_2
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX0_2 = SHX0_3
    SHX0_3 = false
    SHX1_2 = SHX0_3
    SHX0_3 = notify
    SHX1_3 = "~r~You have failed to break out in time."
    SHX0_3(SHX1_3)
  end
  SHX3_2.onTimeout = SHX4_2
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadAnimDict
  SHX3_2 = "misschinese2_crystalmazemcs1_cs"
  SHX2_2(SHX3_2)
  while SHX1_2 do
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.isHandcuffed
    SHX2_2 = SHX2_2()
    if not SHX2_2 then
      SHX0_2 = false
      break
    end
    SHX2_2 = IsEntityPlayingAnim
    SHX3_2 = PlayerPedId
    SHX3_2 = SHX3_2()
    SHX4_2 = "misschinese2_crystalmazemcs1_cs"
    SHX5_2 = "dance_loop_tao"
    SHX6_2 = 3
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    if not SHX2_2 then
      SHX2_2 = TaskPlayAnim
      SHX3_2 = PlayerPedId
      SHX3_2 = SHX3_2()
      SHX4_2 = "misschinese2_crystalmazemcs1_cs"
      SHX5_2 = "dance_loop_tao"
      SHX6_2 = 8.0
      SHX7_2 = -8.0
      SHX8_2 = -1
      SHX9_2 = 1
      SHX10_2 = 1.0
      SHX11_2 = false
      SHX12_2 = false
      SHX13_2 = false
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = RemoveAnimDict
  SHX3_2 = "misschinese2_crystalmazemcs1_cs"
  SHX2_2(SHX3_2)
  SHX2_2 = ClearPedTasks
  SHX3_2 = PlayerPedId
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX3_2()
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  if SHX0_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "79e57a55d8"
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX6_1
  SHX2_2 = SHX2_2 + 1
  SHX6_1 = SHX2_2
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX3_2 = math
  SHX3_2 = SHX3_2.random
  SHX4_2 = 30000
  SHX5_2 = 90000
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX2_2 = SHX2_2 + SHX3_2
  SHX7_1 = SHX2_2
  SHX2_2 = false
  SHX8_1 = SHX2_2
end
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = SHX9_1
    SHX1_2 = 0
    SHX2_2 = 24
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = SHX9_1
    SHX1_2 = 0
    SHX2_2 = 25
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = SHX9_1
    SHX1_2 = 0
    SHX2_2 = 47
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = SHX9_1
    SHX1_2 = 0
    SHX2_2 = 58
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = SHX9_1
    SHX1_2 = 0
    SHX2_2 = 23
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = SHX9_1
    SHX1_2 = 0
    SHX2_2 = 263
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = SHX9_1
    SHX1_2 = 0
    SHX2_2 = 264
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = SHX9_1
    SHX1_2 = 0
    SHX2_2 = 257
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = SHX9_1
    SHX1_2 = 0
    SHX2_2 = 140
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = SHX9_1
    SHX1_2 = 0
    SHX2_2 = 141
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = SHX9_1
    SHX1_2 = 0
    SHX2_2 = 142
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = SHX9_1
    SHX1_2 = 0
    SHX2_2 = 143
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = SHX9_1
    SHX1_2 = 0
    SHX2_2 = 75
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = SHX9_1
    SHX1_2 = 27
    SHX2_2 = 75
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = SHX9_1
    SHX1_2 = 0
    SHX2_2 = 22
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = SHX9_1
    SHX1_2 = 0
    SHX2_2 = 170
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = 12
    SHX1_2 = 17
    SHX2_2 = 1
    for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
      SHX4_2 = SHX9_1
      SHX5_2 = 0
      SHX6_2 = SHX3_2
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    end
    SHX0_2 = SHX5_1
    if not SHX0_2 then
      SHX0_2 = SetPedStealthMovement
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerPed
      SHX1_2 = SHX1_2()
      SHX2_2 = false
      SHX3_2 = ""
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getPlayerPed
      SHX0_2 = SHX0_2()
      SHX1_2 = IsPedStill
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = SHX1_1
        if SHX1_2 then
          SHX1_2 = IsEntityPlayingAnim
          SHX2_2 = SHX0_2
          SHX3_2 = "anim@move_m@prisoner_cuffed"
          SHX4_2 = "idle"
          SHX5_2 = 3
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
          if not SHX1_2 then
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.loadAnimDict
            SHX2_2 = "anim@move_m@prisoner_cuffed"
            SHX1_2(SHX2_2)
            SHX1_2 = tCMG
            SHX1_2 = SHX1_2.playAnim
            SHX2_2 = true
            SHX3_2 = {}
            SHX4_2 = {}
            SHX5_2 = "anim@move_m@prisoner_cuffed"
            SHX6_2 = "idle"
            SHX7_2 = 1
            SHX4_2[1] = SHX5_2
            SHX4_2[2] = SHX6_2
            SHX4_2[3] = SHX7_2
            SHX3_2[1] = SHX4_2
            SHX4_2 = true
            SHX1_2(SHX2_2, SHX3_2, SHX4_2)
            SHX1_2 = RemoveAnimDict
            SHX2_2 = "anim@move_m@prisoner_cuffed"
            SHX1_2(SHX2_2)
          end
        else
          SHX1_2 = IsEntityPlayingAnim
          SHX2_2 = SHX0_2
          SHX3_2 = "mp_arresting"
          SHX4_2 = "idle"
          SHX5_2 = 3
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
          if not SHX1_2 then
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.loadAnimDict
            SHX2_2 = "mp_arresting"
            SHX1_2(SHX2_2)
            SHX1_2 = tCMG
            SHX1_2 = SHX1_2.playAnim
            SHX2_2 = true
            SHX3_2 = {}
            SHX4_2 = {}
            SHX5_2 = "mp_arresting"
            SHX6_2 = "idle"
            SHX7_2 = 1
            SHX4_2[1] = SHX5_2
            SHX4_2[2] = SHX6_2
            SHX4_2[3] = SHX7_2
            SHX3_2[1] = SHX4_2
            SHX4_2 = true
            SHX1_2(SHX2_2, SHX3_2, SHX4_2)
            SHX1_2 = RemoveAnimDict
            SHX2_2 = "mp_arresting"
            SHX1_2(SHX2_2)
          end
        end
      end
    end
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerVehicle
    SHX0_2 = SHX0_2()
    if 0 ~= SHX0_2 then
      SHX0_2 = SHX3_1
      if SHX0_2 then
        SHX0_2 = SHX4_1
        if 0 ~= SHX0_2 then
          SHX0_2 = SetEntityVisible
          SHX1_2 = SHX4_1
          SHX2_2 = false
          SHX3_2 = false
          SHX0_2(SHX1_2, SHX2_2, SHX3_2)
          SHX0_2 = false
          SHX3_1 = SHX0_2
        end
      end
    else
      SHX0_2 = SHX3_1
      if not SHX0_2 then
        SHX0_2 = SHX4_1
        if 0 ~= SHX0_2 then
          SHX0_2 = SetEntityVisible
          SHX1_2 = SHX4_1
          SHX2_2 = true
          SHX3_2 = false
          SHX0_2(SHX1_2, SHX2_2, SHX3_2)
          SHX0_2 = true
          SHX3_1 = SHX0_2
        end
      end
    end
    SHX0_2 = GetSelectedPedWeapon
    SHX1_2 = PlayerPedId
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX1_2()
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    if -1569615261 ~= SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.setWeapon
      SHX1_2 = PlayerPedId
      SHX1_2 = SHX1_2()
      SHX2_2 = -1569615261
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    end
    SHX0_2 = PlayerPedId
    SHX0_2 = SHX0_2()
    SHX1_2 = GetGameTimer
    SHX1_2 = SHX1_2()
    SHX2_2 = IsPedSprinting
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = GetEntityAttachedTo
      SHX3_2 = SHX0_2
      SHX2_2 = SHX2_2(SHX3_2)
      if 0 == SHX2_2 then
        SHX2_2 = SHX11_1
        if SHX1_2 >= SHX2_2 then
          SHX2_2 = SHX10_1
          SHX3_2 = GetFrameTime
          SHX3_2 = SHX3_2()
          SHX3_2 = SHX3_2 * 1000.0
          SHX2_2 = SHX2_2 + SHX3_2
          SHX10_1 = SHX2_2
          SHX2_2 = SHX10_1
          SHX3_2 = SHX12_1
          if SHX2_2 >= SHX3_2 then
            SHX2_2 = ShakeGameplayCam
            SHX3_2 = "SMALL_EXPLOSION_SHAKE"
            SHX4_2 = 0.1
            SHX2_2(SHX3_2, SHX4_2)
            SHX2_2 = SetPedToRagdoll
            SHX3_2 = SHX0_2
            SHX4_2 = SHX13_1
            SHX5_2 = SHX13_1
            SHX6_2 = 0
            SHX7_2 = false
            SHX8_2 = false
            SHX9_2 = false
            SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
            SHX2_2 = SHX14_1
            SHX2_2 = SHX1_2 + SHX2_2
            SHX11_1 = SHX2_2
            SHX2_2 = 0
            SHX10_1 = SHX2_2
          end
        end
    end
    else
      SHX2_2 = SHX10_1
      if SHX2_2 > 0 then
        SHX2_2 = math
        SHX2_2 = SHX2_2.max
        SHX3_2 = 0
        SHX4_2 = SHX10_1
        SHX5_2 = GetFrameTime
        SHX5_2 = SHX5_2()
        SHX5_2 = SHX5_2 * 1000.0
        SHX5_2 = SHX5_2 * 2.0
        SHX4_2 = SHX4_2 - SHX5_2
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
        SHX10_1 = SHX2_2
      end
    end
    SHX2_2 = SHX8_1
    if not SHX2_2 then
      SHX2_2 = SHX6_1
      if SHX2_2 < 20 then
        SHX2_2 = GetGameTimer
        SHX2_2 = SHX2_2()
        SHX3_2 = SHX7_1
        if SHX2_2 > SHX3_2 then
          SHX2_2 = IsPedStill
          SHX3_2 = SHX0_2
          SHX2_2 = SHX2_2(SHX3_2)
          if SHX2_2 then
            SHX2_2 = GetEntityAttachedTo
            SHX3_2 = SHX0_2
            SHX2_2 = SHX2_2(SHX3_2)
            if 0 == SHX2_2 then
              SHX2_2 = drawNativeNotification
              SHX3_2 = "Press ~INPUT_VEH_DUCK~ to attempt breaking out of cuffs"
              SHX2_2(SHX3_2)
              SHX2_2 = IsControlJustPressed
              SHX3_2 = 0
              SHX4_2 = 73
              SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
              if SHX2_2 then
                SHX2_2 = true
                SHX8_1 = SHX2_2
                SHX2_2 = Citizen
                SHX2_2 = SHX2_2.CreateThread
                SHX3_2 = SHX24_1
                SHX2_2(SHX3_2)
              end
            end
          end
        end
      end
    end
  end
end
SHX26_1 = CMG
SHX26_1 = SHX26_1.createThreadOnTick
SHX27_1 = SHX25_1
SHX28_1 = "Cuff Control Disabling"
SHX26_1(SHX27_1, SHX28_1)
SHX26_1 = RegisterNetEvent
SHX27_1 = "ce0419a8ee"
function SHX28_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX2_2 = SHX20_1
  SHX2_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadAnimDict
  SHX3_2 = "mp_arresting"
  SHX2_2(SHX3_2)
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.playAnim
  SHX3_2 = false
  SHX4_2 = {}
  SHX5_2 = {}
  SHX6_2 = "mp_arresting"
  SHX7_2 = "a_uncuff"
  SHX8_2 = 1
  SHX5_2[1] = SHX6_2
  SHX5_2[2] = SHX7_2
  SHX5_2[3] = SHX8_2
  SHX4_2[1] = SHX5_2
  SHX5_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = GetPlayerPed
  SHX3_2 = GetPlayerFromServerId
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX3_2(SHX4_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  if 0 ~= SHX2_2 then
    if SHX1_2 then
      SHX3_2 = AttachEntityToEntity
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.getPlayerPed
      SHX4_2 = SHX4_2()
      SHX5_2 = SHX2_2
      SHX6_2 = 11816
      SHX7_2 = 0.0
      SHX8_2 = 0.6
      SHX9_2 = 0.0
      SHX10_2 = 0.0
      SHX11_2 = 0.0
      SHX12_2 = 180.0
      SHX13_2 = false
      SHX14_2 = false
      SHX15_2 = false
      SHX16_2 = false
      SHX17_2 = 0
      SHX18_2 = false
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    else
      SHX3_2 = AttachEntityToEntity
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.getPlayerPed
      SHX4_2 = SHX4_2()
      SHX5_2 = SHX2_2
      SHX6_2 = 11816
      SHX7_2 = 0.0
      SHX8_2 = -0.75
      SHX9_2 = 0.0
      SHX10_2 = 0.0
      SHX11_2 = 0.0
      SHX12_2 = 0.0
      SHX13_2 = false
      SHX14_2 = false
      SHX15_2 = false
      SHX16_2 = false
      SHX17_2 = 0
      SHX18_2 = false
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    end
    SHX3_2 = Wait
    SHX4_2 = 5000
    SHX3_2(SHX4_2)
    SHX3_2 = DetachEntity
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getPlayerPed
    SHX4_2 = SHX4_2()
    SHX5_2 = true
    SHX6_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
  SHX3_2 = SHX21_1
  SHX3_2()
end
SHX26_1(SHX27_1, SHX28_1)
SHX26_1 = RegisterNetEvent
SHX27_1 = "b88765332f"
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = GetEntityCoords
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2, SHX3_2, SHX4_2 = SHX2_2()
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = SHX1_2 - SHX0_2
  SHX2_2 = #SHX2_2
  if SHX2_2 <= 15 then
    SHX3_2 = SendNUIMessage
    SHX4_2 = {}
    SHX4_2.transactionType = "playHandcuff"
    SHX3_2(SHX4_2)
  end
end
SHX26_1(SHX27_1, SHX28_1)
SHX26_1 = RegisterNetEvent
SHX27_1 = "f5674fc7a7"
function SHX28_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX20_1
  SHX0_2()
  SHX0_2 = Wait
  SHX1_2 = 5000
  SHX0_2(SHX1_2)
  SHX0_2 = SHX21_1
  SHX0_2()
end
SHX26_1(SHX27_1, SHX28_1)
