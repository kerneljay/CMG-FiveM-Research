-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1
SHX0_1 = -1
SHX1_1 = 1000
SHX2_1 = {}
SHX3_1 = false
SHX4_1 = false
SHX5_1 = {}
SHX6_1 = false
SHX7_1 = {}
SHX8_1 = nil
SHX9_1 = nil
SHX10_1 = nil
SHX11_1 = false
SHX12_1 = false
SHX13_1 = {}
SHX14_1 = {}
SHX15_1 = vector3
SHX16_1 = 988.996399
SHX17_1 = 57.600464
SHX18_1 = 79.980637
SHX15_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX14_1.tablePos = SHX15_1
SHX14_1.tableHeading = 58.000015258789
SHX14_1.distance = 1000.0
SHX14_1.tableModel = 146696221
SHX14_1.textureVariant = 2
SHX14_1.objectId = 0
SHX13_1[0] = SHX14_1
SHX14_1 = {}
SHX15_1 = vector3
SHX16_1 = 994.685547
SHX17_1 = 66.705116
SHX18_1 = 79.98053
SHX15_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX14_1.tablePos = SHX15_1
SHX14_1.tableHeading = 57.999980926514
SHX14_1.distance = 1000.0
SHX14_1.tableModel = 146696221
SHX14_1.textureVariant = 2
SHX14_1.objectId = 0
SHX13_1[1] = SHX14_1
SHX14_1 = {}
SHX15_1 = vector3
SHX16_1 = 988.979065
SHX17_1 = 75.723068
SHX18_1 = 79.990997
SHX15_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX14_1.tablePos = SHX15_1
SHX14_1.tableHeading = 328.0
SHX14_1.distance = 1000.0
SHX14_1.tableModel = 146696221
SHX14_1.textureVariant = 2
SHX14_1.objectId = 0
SHX13_1[2] = SHX14_1
SHX14_1 = {}
SHX15_1 = vec3
SHX16_1 = -1898.087524
SHX17_1 = 2075.5
SHX18_1 = 143.86203
SHX15_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX14_1.tablePos = SHX15_1
SHX14_1.tableHeading = 229.0
SHX14_1.distance = 1000.0
SHX14_1.tableModel = 146696221
SHX14_1.textureVariant = 2
SHX14_1.objectId = 0
SHX13_1[3] = SHX14_1
SHX2_1.coinflipTables = SHX13_1
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = -1
  SHX2_2 = 0
  SHX3_2 = SHX0_2
  SHX4_2 = 4
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX1_2 = SHX1_2 + 1
  end
  return SHX1_2
end
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if 0 == SHX0_2 then
    SHX1_2 = 3
    return SHX1_2
  end
  if 1 == SHX0_2 then
    SHX1_2 = 2
    return SHX1_2
  end
  if 2 == SHX0_2 then
    SHX1_2 = 1
    return SHX1_2
  end
  if 3 == SHX0_2 then
    SHX1_2 = 0
    return SHX1_2
  end
end
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if 1 == SHX0_2 then
    SHX1_2 = 1
    return SHX1_2
  end
  if 2 == SHX0_2 then
    SHX1_2 = 3
    return SHX1_2
  end
  if 3 == SHX0_2 then
    SHX1_2 = 5
    return SHX1_2
  end
  if 4 == SHX0_2 then
    SHX1_2 = 7
    return SHX1_2
  end
end
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if -1 ~= SHX0_2 then
    SHX1_2 = SHX0_2 % 4
    return SHX1_2
  else
    SHX1_2 = 100
    return SHX1_2
  end
end
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX13_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX2_1.coinflipTables
  SHX2_2 = SHX2_2[SHX1_2]
  SHX2_2 = SHX2_2.objectId
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = SHX16_1
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = SHX15_1
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = GetEntityBonePosition_2
    SHX6_2 = SHX2_2
    SHX7_2 = SHX4_2
    return SHX5_2(SHX6_2, SHX7_2)
  else
    SHX3_2 = vector3
    SHX4_2 = 0.0
    SHX5_2 = 0.0
    SHX6_2 = 0.0
    return SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
end
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = SHX13_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX2_1.coinflipTables
  SHX2_2 = SHX2_2[SHX1_2]
  SHX2_2 = SHX2_2.objectId
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = SHX16_1
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = SHX14_1
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX3_2 = SHX4_2 + 1
    if 3 == SHX3_2 then
      SHX4_2 = GetEntityBoneRotation
      SHX5_2 = SHX2_2
      SHX6_2 = SHX15_1
      SHX7_2 = SHX3_2
      SHX6_2, SHX7_2, SHX8_2 = SHX6_2(SHX7_2)
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX5_2 = vector3
      SHX6_2 = 0.0
      SHX7_2 = 0.0
      SHX8_2 = 40.0
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX4_2 = SHX4_2 + SHX5_2
      return SHX4_2
    else
      SHX4_2 = GetEntityBoneRotation
      SHX5_2 = SHX2_2
      SHX6_2 = SHX15_1
      SHX7_2 = SHX3_2
      SHX6_2, SHX7_2, SHX8_2 = SHX6_2(SHX7_2)
      return SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    end
  else
    SHX3_2 = vector3
    SHX4_2 = 0.0
    SHX5_2 = 0.0
    SHX6_2 = 0.0
    return SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
end
SHX19_1 = RegisterNetEvent
SHX20_1 = "44cf61eede"
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX5_1 = SHX0_2
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = Citizen
SHX19_1 = SHX19_1.CreateThread
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = Wait
  SHX1_2 = 1000
  SHX0_2(SHX1_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "0e78755a8d"
  SHX0_2(SHX1_2)
  SHX0_2 = 0
  SHX1_2 = SHX2_1.coinflipTables
  SHX1_2 = #SHX1_2
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = SHX2_1.coinflipTables
    SHX4_2 = SHX4_2[SHX3_2]
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.loadModel
    SHX6_2 = SHX4_2.tableModel
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX6_2 = SHX2_1.coinflipTables
      SHX6_2 = SHX6_2[SHX3_2]
      SHX7_2 = CreateObjectNoOffset
      SHX8_2 = SHX4_2.tableModel
      SHX9_2 = SHX4_2.tablePos
      SHX9_2 = SHX9_2.x
      SHX10_2 = SHX4_2.tablePos
      SHX10_2 = SHX10_2.y
      SHX11_2 = SHX4_2.tablePos
      SHX11_2 = SHX11_2.z
      SHX12_2 = false
      SHX13_2 = false
      SHX14_2 = false
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX6_2.objectId = SHX7_2
      SHX6_2 = SetModelAsNoLongerNeeded
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
      SHX6_2 = SetEntityHeading
      SHX7_2 = SHX2_1.coinflipTables
      SHX7_2 = SHX7_2[SHX3_2]
      SHX7_2 = SHX7_2.objectId
      SHX8_2 = SHX4_2.tableHeading
      SHX6_2(SHX7_2, SHX8_2)
      SHX6_2 = FreezeEntityPosition
      SHX7_2 = SHX2_1.coinflipTables
      SHX7_2 = SHX7_2[SHX3_2]
      SHX7_2 = SHX7_2.objectId
      SHX8_2 = true
      SHX6_2(SHX7_2, SHX8_2)
      SHX6_2 = SetObjectTextureVariation
      SHX7_2 = SHX2_1.coinflipTables
      SHX7_2 = SHX7_2[SHX3_2]
      SHX7_2 = SHX7_2.objectId
      SHX8_2 = SHX2_1.coinflipTables
      SHX8_2 = SHX8_2[SHX3_2]
      SHX8_2 = SHX8_2.textureVariant
      SHX6_2(SHX7_2, SHX8_2)
    end
  end
  while true do
    SHX0_2 = 1000
    SHX1_1 = SHX0_2
    SHX0_2 = -1
    SHX0_1 = SHX0_2
    SHX0_2 = GetEntityCoords
    SHX1_2 = PlayerPedId
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX1_2()
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX1_2 = 0
    SHX2_2 = SHX2_1.coinflipTables
    SHX2_2 = #SHX2_2
    SHX2_2 = SHX2_2 + 1
    SHX2_2 = SHX2_2 * 4
    SHX2_2 = SHX2_2 - 1
    SHX3_2 = 1
    for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
      SHX5_2 = SHX17_1
      SHX6_2 = SHX4_2
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = vector3
      SHX7_2 = 0.0
      SHX8_2 = 0.0
      SHX9_2 = 0.0
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
      if SHX5_2 ~= SHX6_2 then
        SHX6_2 = SHX0_2 - SHX5_2
        SHX6_2 = #SHX6_2
        SHX7_2 = SHX1_1
        if SHX6_2 < SHX7_2 then
          SHX1_1 = SHX6_2
          SHX0_1 = SHX4_2
        end
      end
    end
    SHX1_2 = Wait
    SHX2_2 = 100
    SHX1_2(SHX2_2)
  end
end
SHX19_1(SHX20_1)
SHX19_1 = AddEventHandler
SHX20_1 = "onResourceStop"
function SHX21_1(SHX0_2)
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
    SHX2_2 = SHX2_1.coinflipTables
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = DeleteObject
      SHX8_2 = SHX2_1.coinflipTables
      SHX8_2 = SHX8_2[SHX5_2]
      SHX8_2 = SHX8_2.objectId
      SHX7_2(SHX8_2)
    end
  end
end
SHX19_1(SHX20_1, SHX21_1)
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.CloseAll
  SHX1_2()
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "cmgcoinflip"
  SHX5_2 = "instructions"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.CloseAll
  SHX1_2()
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "cmgcoinflip"
  SHX5_2 = "mainmenu"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX21_1 = false
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = SHX12_1
    if SHX0_2 then
      SHX0_2 = TaskPlayAnim
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerPed
      SHX1_2 = SHX1_2()
      SHX2_2 = "anim_casino_b@amb@casino@games@shared@player@"
      SHX3_2 = "idle_cardgames"
      SHX4_2 = 1.0
      SHX5_2 = 1.0
      SHX6_2 = -1
      SHX7_2 = 0
      SHX8_2 = 0.0
      SHX9_2 = false
      SHX10_2 = false
      SHX11_2 = false
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    end
    SHX0_2 = SHX11_1
    if not SHX0_2 then
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 0
      SHX2_2 = 202
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if SHX0_2 then
        SHX0_2 = SHX6_1
        if not SHX0_2 then
          SHX0_2 = RageUI
          SHX0_2 = SHX0_2.Visible
          SHX1_2 = RMenu
          SHX2_2 = SHX1_2
          SHX1_2 = SHX1_2.Get
          SHX3_2 = "cmgcoinflip"
          SHX4_2 = "confirm"
          SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
          if not SHX0_2 then
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.loadAnimDict
            SHX1_2 = "anim_casino_b@amb@casino@games@shared@player@"
            SHX0_2 = SHX0_2(SHX1_2)
            SHX1_2 = TaskPlayAnim
            SHX2_2 = CMG
            SHX2_2 = SHX2_2.getPlayerPed
            SHX2_2 = SHX2_2()
            SHX3_2 = SHX0_2
            SHX4_2 = "sit_exit_left"
            SHX5_2 = 1.0
            SHX6_2 = 1.0
            SHX7_2 = 2500
            SHX8_2 = 0
            SHX9_2 = 0.0
            SHX10_2 = false
            SHX11_2 = false
            SHX12_2 = false
            SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
            SHX1_2 = RemoveAnimDict
            SHX2_2 = "anim_casino_b@amb@casino@games@shared@player@"
            SHX1_2(SHX2_2)
            SHX1_2 = tCMG
            SHX1_2 = SHX1_2.setCanAnim
            SHX2_2 = true
            SHX1_2(SHX2_2)
            SHX1_2 = false
            SHX3_1 = SHX1_2
            SHX1_2 = true
            SHX4_1 = SHX1_2
            SHX1_2 = SHX19_1
            SHX2_2 = false
            SHX1_2(SHX2_2)
            SHX1_2 = TriggerServerEvent
            SHX2_2 = "62da5de2d3"
            SHX3_2 = true
            SHX1_2(SHX2_2, SHX3_2)
            SHX1_2 = TriggerServerEvent
            SHX2_2 = "811c680e2f"
            SHX1_2(SHX2_2)
            SHX1_2 = {}
            SHX7_1 = SHX1_2
            SHX1_2 = false
            SHX12_1 = SHX1_2
            SHX1_2 = SetTimeout
            SHX2_2 = 5000
            function SHX3_2()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_3, SHX1_3
              SHX0_3 = false
              SHX4_1 = SHX0_3
            end
            SHX1_2(SHX2_2, SHX3_2)
          end
        end
      end
    end
    SHX0_2 = SHX1_1
    if SHX0_2 > 5 then
      SHX0_2 = ClearHelp
      SHX1_2 = true
      SHX0_2(SHX1_2)
      SHX0_2 = SHX19_1
      SHX1_2 = false
      SHX0_2(SHX1_2)
      SHX0_2 = false
      SHX21_1 = SHX0_2
      SHX0_2 = SHX3_1
      if SHX0_2 then
        SHX0_2 = tCMG
        SHX0_2 = SHX0_2.setCanAnim
        SHX1_2 = true
        SHX0_2(SHX1_2)
        SHX0_2 = false
        SHX3_1 = SHX0_2
        SHX0_2 = true
        SHX4_1 = SHX0_2
        SHX0_2 = SHX19_1
        SHX1_2 = false
        SHX0_2(SHX1_2)
        SHX0_2 = TriggerServerEvent
        SHX1_2 = "62da5de2d3"
        SHX2_2 = true
        SHX0_2(SHX1_2, SHX2_2)
        SHX0_2 = TriggerServerEvent
        SHX1_2 = "811c680e2f"
        SHX0_2(SHX1_2)
        SHX0_2 = false
        SHX12_1 = SHX0_2
        SHX0_2 = {}
        SHX7_1 = SHX0_2
      end
    end
  end
  SHX0_2 = SHX3_1
  if not SHX0_2 then
    SHX0_2 = SHX0_1
    if -1 ~= SHX0_2 then
      SHX0_2 = SHX1_1
      if SHX0_2 < 2 then
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 0
        SHX2_2 = 38
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if SHX0_2 then
          SHX0_2 = TriggerServerEvent
          SHX1_2 = "0e78755a8d"
          SHX0_2(SHX1_2)
          SHX1_2 = SHX0_1
          SHX0_2 = SHX5_1
          SHX0_2 = SHX0_2[SHX1_2]
          if false == SHX0_2 then
            SHX0_2 = TriggerServerEvent
            SHX1_2 = "e3209e9c43"
            SHX2_2 = SHX0_1
            SHX0_2(SHX1_2, SHX2_2)
          end
        end
      end
    end
  end
  SHX0_2 = SHX3_1
  if not SHX0_2 then
    SHX0_2 = SHX0_1
    if -1 ~= SHX0_2 then
      SHX0_2 = SHX1_1
      if SHX0_2 < 2 then
        SHX0_2 = SHX4_1
        if not SHX0_2 then
          SHX1_2 = SHX0_1
          SHX0_2 = SHX5_1
          SHX0_2 = SHX0_2[SHX1_2]
          if false == SHX0_2 then
            SHX0_2 = drawNativeNotification
            SHX1_2 = "Press ~INPUT_PICKUP~ to play Coinflip"
            SHX0_2(SHX1_2)
          else
            SHX0_2 = drawNativeNotification
            SHX1_2 = "This seat is taken."
            SHX0_2(SHX1_2)
          end
          SHX0_2 = SHX19_1
          SHX1_2 = true
          SHX0_2(SHX1_2)
          SHX0_2 = SHX21_1
          if not SHX0_2 then
            SHX0_2 = true
            SHX21_1 = SHX0_2
            SHX0_2 = PlaySoundFrontend
            SHX1_2 = -1
            SHX2_2 = "DLC_VW_RULES"
            SHX3_2 = "dlc_vw_table_games_frontend_sounds"
            SHX4_2 = true
            SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
            SHX0_2 = PlaySoundFrontend
            SHX1_2 = -1
            SHX2_2 = "DLC_VW_WIN_CHIPS"
            SHX3_2 = "dlc_vw_table_games_frontend_sounds"
            SHX4_2 = true
            SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
          end
        end
      end
    end
  end
end
SHX23_1 = CMG
SHX23_1 = SHX23_1.createThreadOnTick
SHX24_1 = SHX22_1
SHX25_1 = "Casino Coinflip Tick"
SHX23_1(SHX24_1, SHX25_1)
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if 0 == SHX0_2 then
    SHX1_2 = "sit_enter_left"
    return SHX1_2
  elseif 1 == SHX0_2 then
    SHX1_2 = "sit_enter_left_side"
    return SHX1_2
  elseif 2 == SHX0_2 then
    SHX1_2 = "sit_enter_right_side"
    return SHX1_2
  end
  SHX1_2 = "sit_enter_left"
  return SHX1_2
end
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX1_2 = true
  SHX6_1 = SHX1_2
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.setCanAnim
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = true
  SHX3_1 = SHX1_2
  SHX1_2 = true
  SHX4_1 = SHX1_2
  SHX1_2 = SetTimeout
  SHX2_2 = 2500
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX4_1 = SHX0_3
    SHX0_3 = SHX19_1
    SHX1_3 = false
    SHX0_3(SHX1_3)
    SHX0_3 = SHX20_1
    SHX1_3 = true
    SHX0_3(SHX1_3)
    SHX0_3 = true
    SHX12_1 = SHX0_3
  end
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = drawNativeNotification
  SHX2_2 = "Waiting for next game to start..."
  SHX1_2(SHX2_2)
  SHX1_2 = {}
  SHX2_2 = "anim_casino_b@amb@casino@games@blackjack@dealer"
  SHX3_2 = "anim_casino_b@amb@casino@games@shared@dealer@"
  SHX4_2 = "anim_casino_b@amb@casino@games@blackjack@player"
  SHX5_2 = "anim_casino_b@amb@casino@games@shared@player@"
  SHX1_2[1] = SHX2_2
  SHX1_2[2] = SHX3_2
  SHX1_2[3] = SHX4_2
  SHX1_2[4] = SHX5_2
  SHX2_2 = pairs
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.loadAnimDict
    SHX9_2 = SHX7_2
    SHX8_2(SHX9_2)
  end
  SHX2_2 = SHX13_1
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX2_1.coinflipTables
  SHX3_2 = SHX3_2[SHX2_2]
  SHX3_2 = SHX3_2.tablePos
  SHX4_2 = SHX16_1
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = GetAnimInitialOffsetPosition
  SHX6_2 = "anim_casino_b@amb@casino@games@shared@player@"
  SHX7_2 = SHX23_1
  SHX8_2 = SHX4_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = SHX3_2.x
  SHX9_2 = SHX3_2.y
  SHX10_2 = SHX3_2.z
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = 0.01
  SHX15_2 = 2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX6_2 = GetAnimInitialOffsetRotation
  SHX7_2 = "anim_casino_b@amb@casino@games@shared@player@"
  SHX8_2 = SHX23_1
  SHX9_2 = SHX4_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = SHX3_2.x
  SHX10_2 = SHX3_2.y
  SHX11_2 = SHX3_2.z
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = 0.0
  SHX15_2 = 0.01
  SHX16_2 = 2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX7_2 = TaskGoStraightToCoord
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.getPlayerPed
  SHX8_2 = SHX8_2()
  SHX9_2 = SHX5_2.x
  SHX10_2 = SHX5_2.y
  SHX11_2 = SHX5_2.z
  SHX12_2 = 1.0
  SHX13_2 = 5000
  SHX14_2 = SHX6_2.z
  SHX15_2 = 0.01
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX7_2 = Wait
  SHX8_2 = 500
  SHX7_2(SHX8_2)
  SHX7_2 = SHX17_1
  SHX8_2 = SHX0_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = SHX18_1
  SHX9_2 = SHX0_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = NetworkCreateSynchronisedScene
  SHX10_2 = SHX7_2.x
  SHX11_2 = SHX7_2.y
  SHX12_2 = SHX7_2.z
  SHX13_2 = SHX8_2.x
  SHX14_2 = SHX8_2.y
  SHX15_2 = SHX8_2.z
  SHX16_2 = 2
  SHX17_2 = true
  SHX18_2 = false
  SHX19_2 = 1065353216
  SHX20_2 = 0
  SHX21_2 = 1065353216
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX10_2 = NetworkAddPedToSynchronisedScene
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.getPlayerPed
  SHX11_2 = SHX11_2()
  SHX12_2 = SHX9_2
  SHX13_2 = "anim_casino_b@amb@casino@games@shared@player@"
  SHX14_2 = SHX23_1
  SHX15_2 = SHX4_2
  SHX14_2 = SHX14_2(SHX15_2)
  SHX15_2 = 2.0
  SHX16_2 = -2.0
  SHX17_2 = 13
  SHX18_2 = 16
  SHX19_2 = 2.0
  SHX20_2 = 0
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX10_2 = NetworkStartSynchronisedScene
  SHX11_2 = SHX9_2
  SHX10_2(SHX11_2)
  SHX10_2 = Citizen
  SHX10_2 = SHX10_2.InvokeNative
  SHX11_2 = 8773263032172758242
  SHX12_2 = -2124244681
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = Wait
  SHX11_2 = 6000
  SHX10_2(SHX11_2)
  SHX10_2 = NetworkCreateSynchronisedScene
  SHX11_2 = SHX7_2.x
  SHX12_2 = SHX7_2.y
  SHX13_2 = SHX7_2.z
  SHX14_2 = SHX8_2.x
  SHX15_2 = SHX8_2.y
  SHX16_2 = SHX8_2.z
  SHX17_2 = 2
  SHX18_2 = true
  SHX19_2 = true
  SHX20_2 = 1065353216
  SHX21_2 = 0
  SHX22_2 = 1065353216
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  Locali98f_55 = SHX10_2
  SHX10_2 = NetworkAddPedToSynchronisedScene
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.getPlayerPed
  SHX11_2 = SHX11_2()
  SHX12_2 = Locali98f_55
  SHX13_2 = "anim_casino_b@amb@casino@games@shared@player@"
  SHX14_2 = "idle_cardgames"
  SHX15_2 = 2.0
  SHX16_2 = -2.0
  SHX17_2 = 13
  SHX18_2 = 16
  SHX19_2 = 1148846080
  SHX20_2 = 0
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX10_2 = NetworkStartSynchronisedScene
  SHX11_2 = Locali98f_55
  SHX10_2(SHX11_2)
  SHX10_2 = StartAudioScene
  SHX11_2 = "DLC_VW_Casino_Table_Games"
  SHX10_2(SHX11_2)
  SHX10_2 = Citizen
  SHX10_2 = SHX10_2.InvokeNative
  SHX11_2 = 8773263032172758242
  SHX12_2 = -2124244681
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = false
  SHX6_1 = SHX10_2
end
SHX25_1 = RegisterNetEvent
SHX26_1 = "731deb5940"
function SHX27_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX1_2 then
    SHX3_2 = SHX1_2.betId
    SHX2_2 = SHX7_1
    SHX2_2[SHX3_2] = SHX1_2
  end
  SHX2_2 = SHX24_1
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
end
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = RMenu
SHX25_1 = SHX25_1.Add
SHX26_1 = "cmgcoinflip"
SHX27_1 = "instructions"
SHX28_1 = RageUI
SHX28_1 = SHX28_1.CreateMenu
SHX29_1 = ""
SHX30_1 = "~b~COINFLIP"
SHX31_1 = CMG
SHX31_1 = SHX31_1.getRageUIMenuWidth
SHX31_1 = SHX31_1()
SHX32_1 = CMG
SHX32_1 = SHX32_1.getRageUIMenuHeight
SHX32_1 = SHX32_1()
SHX33_1 = "cmg_coinflip"
SHX34_1 = "cmg_coinflip"
SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1)
SHX25_1(SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1)
SHX25_1 = RMenu
SHX25_1 = SHX25_1.Add
SHX26_1 = "cmgcoinflip"
SHX27_1 = "mainmenu"
SHX28_1 = RageUI
SHX28_1 = SHX28_1.CreateMenu
SHX29_1 = ""
SHX30_1 = "~b~COINFLIP"
SHX31_1 = CMG
SHX31_1 = SHX31_1.getRageUIMenuWidth
SHX31_1 = SHX31_1()
SHX32_1 = CMG
SHX32_1 = SHX32_1.getRageUIMenuHeight
SHX32_1 = SHX32_1()
SHX33_1 = "cmg_coinflip"
SHX34_1 = "cmg_coinflip"
SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1)
SHX25_1(SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1)
SHX25_1 = RMenu
SHX25_1 = SHX25_1.Add
SHX26_1 = "cmgcoinflip"
SHX27_1 = "confirm"
SHX28_1 = RageUI
SHX28_1 = SHX28_1.CreateSubMenu
SHX29_1 = RMenu
SHX30_1 = SHX29_1
SHX29_1 = SHX29_1.Get
SHX31_1 = "cmgcoinflip"
SHX32_1 = "mainmenu"
SHX29_1 = SHX29_1(SHX30_1, SHX31_1, SHX32_1)
SHX30_1 = ""
SHX31_1 = "~b~COINFLIP"
SHX32_1 = CMG
SHX32_1 = SHX32_1.getRageUIMenuWidth
SHX32_1 = SHX32_1()
SHX33_1 = CMG
SHX33_1 = SHX33_1.getRageUIMenuHeight
SHX33_1 = SHX33_1()
SHX34_1 = "cmg_coinflip"
SHX35_1 = "cmg_coinflip"
SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1)
SHX25_1(SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1)
SHX25_1 = RageUI
SHX25_1 = SHX25_1.CreateWhile
SHX26_1 = 1.0
SHX27_1 = RMenu
SHX28_1 = SHX27_1
SHX27_1 = SHX27_1.Get
SHX29_1 = "cmgcoinflip"
SHX30_1 = "instructions"
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX28_1 = nil
function SHX29_1()
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
  SHX3_2 = "cmgcoinflip"
  SHX4_2 = "instructions"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "Propose a bet, or accept a proposed bet."
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "Flip a coin against your opponent, winner takes all!"
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "Minimum \194\163100,000 per coinflip."
    SHX0_3(SHX1_3)
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
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgcoinflip"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Propose Bet"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.GetRageInputInt
        SHX4_4 = "Bet Amount"
        SHX3_4 = SHX3_4(SHX4_4)
        if SHX3_4 and SHX3_4 > 0 then
          SHX4_4 = TriggerServerEvent
          SHX5_4 = "b36ea66630"
          SHX6_4 = SHX3_4
          SHX4_4(SHX5_4, SHX6_4)
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "---"
    SHX0_3(SHX1_3)
    SHX0_3 = table
    SHX0_3 = SHX0_3.count
    SHX1_3 = SHX7_1
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 > 0 then
      SHX0_3 = pairs
      SHX1_3 = SHX7_1
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
      for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
        SHX6_3 = RageUI
        SHX6_3 = SHX6_3.ButtonWithStyle
        SHX7_3 = "~y~\194\163"
        SHX8_3 = getMoneyStringFormatted
        SHX9_3 = SHX5_3.betAmount
        SHX8_3 = SHX8_3(SHX9_3)
        SHX7_3 = SHX7_3 .. SHX8_3
        SHX8_3 = ""
        SHX9_3 = {}
        SHX10_3 = RageUI
        SHX10_3 = SHX10_3.BadgeStyle
        SHX10_3 = SHX10_3.GoldMedal
        SHX9_3.RightBadge = SHX10_3
        SHX10_3 = true
        function SHX11_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4, SHX5_4
          if SHX2_4 then
            SHX3_4 = SHX4_3
            SHX8_1 = SHX3_4
            SHX3_4 = "\194\163"
            SHX4_4 = getMoneyStringFormatted
            SHX5_4 = SHX5_3.betAmount
            SHX4_4 = SHX4_4(SHX5_4)
            SHX3_4 = SHX3_4 .. SHX4_4
            SHX9_1 = SHX3_4
            SHX3_4 = SHX5_3.user_id
            SHX4_4 = CMG
            SHX4_4 = SHX4_4.getClientUserId
            SHX4_4 = SHX4_4()
            if SHX3_4 == SHX4_4 then
              SHX3_4 = true
              SHX10_1 = SHX3_4
            else
              SHX3_4 = false
              SHX10_1 = SHX3_4
            end
          end
        end
        SHX12_3 = RMenu
        SHX13_3 = SHX12_3
        SHX12_3 = SHX12_3.Get
        SHX14_3 = "cmgcoinflip"
        SHX15_3 = "confirm"
        SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX12_3(SHX13_3, SHX14_3, SHX15_3)
        SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
      end
    else
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "~r~No pending bets."
      SHX0_3(SHX1_3)
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
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgcoinflip"
  SHX4_2 = "confirm"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX1_3 = SHX8_1
    SHX0_3 = SHX7_1
    SHX0_3 = SHX0_3[SHX1_3]
    if not SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.GoBack
      SHX0_3()
      return
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "Coinflip "
    SHX2_3 = SHX9_1
    SHX3_3 = "?"
    SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
    SHX0_3(SHX1_3)
    SHX0_3 = SHX10_1
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "~y~This is your pending proposal."
      SHX0_3(SHX1_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Cancel Bet"
      SHX2_3 = ""
      SHX3_3 = {}
      SHX4_3 = RageUI
      SHX4_3 = SHX4_3.BadgeStyle
      SHX4_3 = SHX4_3.Tick
      SHX3_3.RightBadge = SHX4_3
      SHX4_3 = true
      function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "62da5de2d3"
          SHX3_4(SHX4_4)
        end
      end
      SHX6_3 = RMenu
      SHX7_3 = SHX6_3
      SHX6_3 = SHX6_3.Get
      SHX8_3 = "cmgcoinflip"
      SHX9_3 = "mainmenu"
      SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Return"
      SHX2_3 = ""
      SHX3_3 = {}
      SHX4_3 = RageUI
      SHX4_3 = SHX4_3.BadgeStyle
      SHX4_3 = SHX4_3.Alert
      SHX3_3.RightBadge = SHX4_3
      SHX4_3 = true
      function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
      end
      SHX6_3 = RMenu
      SHX7_3 = SHX6_3
      SHX6_3 = SHX6_3.Get
      SHX8_3 = "cmgcoinflip"
      SHX9_3 = "mainmenu"
      SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    else
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Accept"
      SHX2_3 = ""
      SHX3_3 = {}
      SHX4_3 = RageUI
      SHX4_3 = SHX4_3.BadgeStyle
      SHX4_3 = SHX4_3.Tick
      SHX3_3.RightBadge = SHX4_3
      SHX4_3 = true
      function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "8f787c7423"
          SHX5_4 = SHX8_1
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
      SHX6_3 = RMenu
      SHX7_3 = SHX6_3
      SHX6_3 = SHX6_3.Get
      SHX8_3 = "cmgcoinflip"
      SHX9_3 = "mainmenu"
      SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Decline"
      SHX2_3 = ""
      SHX3_3 = {}
      SHX4_3 = RageUI
      SHX4_3 = SHX4_3.BadgeStyle
      SHX4_3 = SHX4_3.Alert
      SHX3_3.RightBadge = SHX4_3
      SHX4_3 = true
      function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
      end
      SHX6_3 = RMenu
      SHX7_3 = SHX6_3
      SHX6_3 = SHX6_3.Get
      SHX8_3 = "cmgcoinflip"
      SHX9_3 = "mainmenu"
      SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
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
SHX25_1(SHX26_1, SHX27_1, SHX28_1, SHX29_1)
SHX25_1 = AddEventHandler
SHX26_1 = "CMG:onClientSpawn"
function SHX27_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX1_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "0e78755a8d"
    SHX2_2(SHX3_2)
  end
end
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = RegisterNetEvent
SHX26_1 = "422fe636f4"
function SHX27_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX7_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = RegisterNetEvent
SHX26_1 = "66c3c7f283"
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX7_1
  SHX1_2[SHX0_2] = nil
end
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = RegisterNetEvent
SHX26_1 = "a135fcb71f"
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX7_1 = SHX0_2
end
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = RegisterNetEvent
SHX26_1 = "8f14d55f05"
function SHX27_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX2_2 = true
  SHX11_1 = SHX2_2
  SHX2_2 = SHX20_1
  SHX3_2 = false
  SHX2_2(SHX3_2)
  SHX2_2 = SendNUIMessage
  SHX3_2 = {}
  SHX3_2.transactionType = "jackpotroll"
  SHX2_2(SHX3_2)
  SHX2_2 = Scaleform
  SHX3_2 = "MP_BIG_MESSAGE_FREEMODE"
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = false
  SHX4_2 = false
  SHX5_2 = SetTimeout
  SHX6_2 = 10000
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = true
    SHX3_2 = SHX0_3
    SHX0_3 = SHX0_2
    if SHX0_3 then
      SHX0_3 = tCMG
      SHX0_3 = SHX0_3.notify
      SHX1_3 = "~g~ You won \194\163"
      SHX2_3 = getMoneyStringFormatted
      SHX3_3 = SHX1_2.amount
      SHX2_3 = SHX2_3(SHX3_3)
      SHX3_3 = "!"
      SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
      SHX0_3(SHX1_3)
      SHX0_3 = SendNUIMessage
      SHX1_3 = {}
      SHX1_3.transactionType = "playCasinoWin"
      SHX0_3(SHX1_3)
    else
      SHX0_3 = tCMG
      SHX0_3 = SHX0_3.notify
      SHX1_3 = "~r~ You lost \194\163"
      SHX2_3 = getMoneyStringFormatted
      SHX3_3 = SHX1_2.amount
      SHX2_3 = SHX2_3(SHX3_3)
      SHX3_3 = "!"
      SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
      SHX0_3(SHX1_3)
      SHX0_3 = SendNUIMessage
      SHX1_3 = {}
      SHX1_3.transactionType = "playCasinoLose"
      SHX0_3(SHX1_3)
    end
  end
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetTimeout
  SHX6_2 = 15000
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = true
    SHX4_2 = SHX0_3
  end
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = false
  SHX6_2 = 0.0
  SHX7_2 = 2.71828182846
  SHX8_2 = 0.0
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getPlayerCoords
  SHX9_2 = SHX9_2()
  while not SHX4_2 do
    SHX10_2 = GetFrameTime
    SHX10_2 = SHX10_2()
    SHX11_2 = 0.01 * SHX10_2
    SHX6_2 = SHX6_2 + SHX11_2
    SHX11_2 = -80 * SHX6_2
    SHX11_2 = SHX7_2 ^ SHX11_2
    SHX12_2 = 1
    SHX11_2 = SHX12_2 - SHX11_2
    SHX12_2 = SHX8_2 + 0.005
    if SHX11_2 > SHX12_2 then
      SHX8_2 = SHX11_2
      SHX5_2 = not SHX5_2
      SHX12_2 = GetSoundId
      SHX12_2 = SHX12_2()
      SHX13_2 = PlaySoundFromCoord
      SHX14_2 = SHX12_2
      SHX15_2 = "Spin_Single_Ticks"
      SHX16_2 = SHX9_2.x
      SHX17_2 = SHX9_2.y
      SHX18_2 = SHX9_2.z
      SHX19_2 = "dlc_vw_casino_lucky_wheel_sounds"
      SHX20_2 = false
      SHX21_2 = 0
      SHX22_2 = false
      SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
      SHX13_2 = SetTimeout
      SHX14_2 = 100
      function SHX15_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
        SHX0_3 = ReleaseSoundId
        SHX1_3 = SHX12_2
        SHX0_3(SHX1_3)
      end
      SHX13_2(SHX14_2, SHX15_2)
    end
    if SHX5_2 then
      if not SHX3_2 then
        SHX12_2 = SHX2_2.RunFunction
        SHX13_2 = "SHOW_SHARD_WASTED_MP_MESSAGE"
        SHX14_2 = {}
        SHX15_2 = SHX1_2.winner
        SHX16_2 = "Rolling..."
        SHX17_2 = 0
        SHX18_2 = false
        SHX19_2 = false
        SHX14_2[1] = SHX15_2
        SHX14_2[2] = SHX16_2
        SHX14_2[3] = SHX17_2
        SHX14_2[4] = SHX18_2
        SHX14_2[5] = SHX19_2
        SHX12_2(SHX13_2, SHX14_2)
      end
    elseif not SHX3_2 then
      SHX12_2 = SHX2_2.RunFunction
      SHX13_2 = "SHOW_SHARD_WASTED_MP_MESSAGE"
      SHX14_2 = {}
      SHX15_2 = SHX1_2.loser
      SHX16_2 = "Rolling..."
      SHX17_2 = 0
      SHX18_2 = false
      SHX19_2 = false
      SHX14_2[1] = SHX15_2
      SHX14_2[2] = SHX16_2
      SHX14_2[3] = SHX17_2
      SHX14_2[4] = SHX18_2
      SHX14_2[5] = SHX19_2
      SHX12_2(SHX13_2, SHX14_2)
    end
    if SHX3_2 then
      if SHX0_2 then
        SHX12_2 = SHX2_2.RunFunction
        SHX13_2 = "SHOW_SHARD_WASTED_MP_MESSAGE"
        SHX14_2 = {}
        SHX15_2 = SHX1_2.winner
        SHX16_2 = "~g~You WON!"
        SHX17_2 = 0
        SHX18_2 = false
        SHX19_2 = false
        SHX14_2[1] = SHX15_2
        SHX14_2[2] = SHX16_2
        SHX14_2[3] = SHX17_2
        SHX14_2[4] = SHX18_2
        SHX14_2[5] = SHX19_2
        SHX12_2(SHX13_2, SHX14_2)
      else
        SHX12_2 = SHX2_2.RunFunction
        SHX13_2 = "SHOW_SHARD_WASTED_MP_MESSAGE"
        SHX14_2 = {}
        SHX15_2 = SHX1_2.winner
        SHX16_2 = "~r~You LOST!"
        SHX17_2 = 0
        SHX18_2 = false
        SHX19_2 = false
        SHX14_2[1] = SHX15_2
        SHX14_2[2] = SHX16_2
        SHX14_2[3] = SHX17_2
        SHX14_2[4] = SHX18_2
        SHX14_2[5] = SHX19_2
        SHX12_2(SHX13_2, SHX14_2)
      end
    end
    SHX12_2 = SHX2_2.Render2D
    SHX12_2()
    SHX12_2 = Wait
    SHX13_2 = 0
    SHX12_2(SHX13_2)
  end
  SHX10_2 = SetScaleformMovieAsNoLongerNeeded
  SHX11_2 = SHX2_2.Handle
  SHX10_2(SHX11_2)
  SHX10_2 = {}
  SHX7_1 = SHX10_2
  SHX10_2 = SHX20_1
  SHX11_2 = true
  SHX10_2(SHX11_2)
  SHX10_2 = false
  SHX11_1 = SHX10_2
end
SHX25_1(SHX26_1, SHX27_1)
