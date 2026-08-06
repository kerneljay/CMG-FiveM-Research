-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_backpacks"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = nil
SHX2_1 = nil
SHX3_1 = nil
SHX4_1 = false
SHX5_1 = {}
SHX6_1 = nil
SHX7_1 = CMG
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1
  return SHX0_2
end
SHX7_1.getCurrentBackpack = SHX8_1
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "string" ~= SHX1_2 then
    return SHX0_2
  end
  SHX1_2 = string
  SHX1_2 = SHX1_2.gsub
  SHX2_2 = SHX0_2
  SHX3_2 = "^%s*(.-)%s*$"
  SHX4_2 = "%1"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  return SHX1_2
end
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  if nil == SHX0_2 then
    SHX1_2 = nil
    return SHX1_2
  end
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "number" == SHX1_2 then
    SHX1_2 = math
    SHX1_2 = SHX1_2.floor
    SHX2_2 = SHX0_2 + 0.5
    return SHX1_2(SHX2_2)
  end
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "string" == SHX1_2 then
    SHX1_2 = tonumber
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX2_2 = math
      SHX2_2 = SHX2_2.floor
      SHX3_2 = SHX1_2 + 0.5
      return SHX2_2(SHX3_2)
    end
  end
  SHX1_2 = nil
  return SHX1_2
end
function SHX9_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = SHX7_1
  SHX3_2 = SHX1_2.collectionName
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX8_1
  SHX4_2 = SHX1_2.localIndex
  SHX3_2 = SHX3_2(SHX4_2)
  if nil == SHX3_2 then
    return
  end
  SHX4_2 = SetPedCollectionComponentVariation
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2.componentId
  SHX7_2 = SHX2_2
  SHX8_2 = SHX3_2
  SHX9_2 = SHX1_2.textureIndex
  if not SHX9_2 then
    SHX9_2 = 0
  end
  SHX10_2 = 0
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
end
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = SHX1_2.componentId
  SHX3_2 = GetPedDrawableVariation
  SHX4_2 = SHX0_2
  SHX5_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = SHX7_1
  SHX5_2 = GetPedCollectionNameFromDrawable
  SHX6_2 = SHX0_2
  SHX7_2 = SHX2_2
  SHX8_2 = SHX3_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX5_2 = SHX8_1
  SHX6_2 = GetPedCollectionLocalIndexFromDrawable
  SHX7_2 = SHX0_2
  SHX8_2 = SHX2_2
  SHX9_2 = SHX3_2
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX6_2 = SHX7_1
  SHX7_2 = SHX1_2.collectionName
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = SHX8_1
  SHX8_2 = SHX1_2.localIndex
  SHX7_2 = SHX7_2(SHX8_2)
  if SHX4_2 ~= SHX6_2 or SHX5_2 ~= SHX7_2 then
    SHX8_2 = false
    return SHX8_2
  end
  SHX8_2 = GetPedTextureVariation
  SHX9_2 = SHX0_2
  SHX10_2 = SHX2_2
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX9_2 = SHX1_2.textureIndex
  if not SHX9_2 then
    SHX9_2 = 0
  end
  if SHX8_2 ~= SHX9_2 then
    SHX8_2 = false
    return SHX8_2
  end
  SHX8_2 = true
  return SHX8_2
end
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX0_2[1]
  SHX2_2 = SHX0_2[2]
  SHX3_2 = SHX0_2[3]
  SHX4_2 = SHX0_2[4]
  SHX5_2 = SHX9_1
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getPlayerPed
  SHX6_2 = SHX6_2()
  SHX7_2 = {}
  SHX7_2.componentId = SHX1_2
  SHX7_2.collectionName = SHX2_2
  SHX7_2.localIndex = SHX3_2
  SHX7_2.textureIndex = SHX4_2
  SHX5_2(SHX6_2, SHX7_2)
end
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX1_1
  if nil ~= SHX0_2 then
    SHX0_2 = SetPedComponentVariation
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2 = SHX1_2()
    SHX2_2 = 5
    SHX3_2 = 0
    SHX4_2 = 0
    SHX5_2 = 2
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = nil
    SHX1_1 = SHX0_2
    SHX0_2 = nil
    SHX2_1 = SHX0_2
  end
end
SHX13_1 = RegisterNetEvent
SHX14_1 = "f0b530372d"
function SHX15_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_1 = SHX5_2
  SHX6_2 = {}
  SHX6_2.componentId = SHX0_2
  SHX6_2.collectionName = SHX1_2
  SHX6_2.localIndex = SHX2_2
  SHX6_2.textureIndex = SHX3_2
  SHX2_1 = SHX6_2
  SHX6_2 = SHX9_1
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.getPlayerPed
  SHX7_2 = SHX7_2()
  SHX8_2 = SHX2_1
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = tCMG
  SHX6_2 = SHX6_2.notify
  SHX7_2 = "~g~"
  SHX8_2 = SHX5_2
  SHX9_2 = " Purchased"
  SHX7_2 = SHX7_2 .. SHX8_2 .. SHX9_2
  SHX6_2(SHX7_2)
  SHX6_2 = nil
  SHX3_1 = SHX6_2
end
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = RegisterNetEvent
SHX14_1 = "0ffed0ef12"
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX12_1
  SHX0_2()
end
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = RegisterCommand
SHX14_1 = "storebackpack"
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX1_1
  if nil ~= SHX0_2 then
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "0297cd29eb"
    SHX2_2 = SHX1_1
    SHX3_2 = true
    SHX4_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  end
end
SHX16_1 = false
SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX13_1 = AddEventHandler
SHX14_1 = "CMG:onClientSpawn"
function SHX15_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2
  if SHX1_2 then
    function SHX2_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
      SHX1_3 = tCMG
      SHX1_3 = SHX1_3.getCustomization
      SHX1_3 = SHX1_3()
      SHX3_1 = SHX1_3
      SHX1_3 = SHX0_3.storeName
      SHX6_1 = SHX1_3
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.Visible
      SHX2_3 = RMenu
      SHX3_3 = SHX2_3
      SHX2_3 = SHX2_3.Get
      SHX4_3 = "backpacks"
      SHX5_3 = "mainmenu"
      SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3)
      SHX3_3 = true
      SHX1_3(SHX2_3, SHX3_3)
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Visible
      SHX1_3 = RMenu
      SHX2_3 = SHX1_3
      SHX1_3 = SHX1_3.Get
      SHX3_3 = "backpacks"
      SHX4_3 = "mainmenu"
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX2_3 = false
      SHX0_3(SHX1_3, SHX2_3)
      SHX0_3 = nil
      SHX6_1 = SHX0_3
      SHX0_3 = SHX3_1
      if SHX0_3 then
        SHX0_3 = tCMG
        SHX0_3 = SHX0_3.setCustomization
        SHX1_3 = SHX3_1
        SHX0_3(SHX1_3)
      end
      SHX0_3 = nil
      SHX3_1 = SHX0_3
    end
    SHX4_2 = pairs
    SHX5_2 = SHX0_1.stores
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
      SHX10_2 = pairs
      SHX11_2 = SHX9_2
      SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
      for SHX14_2, SHX15_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
        if "_config" == SHX14_2 then
          SHX16_2 = table
          SHX16_2 = SHX16_2.unpack
          SHX17_2 = SHX15_2
          SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX16_2(SHX17_2)
          if SHX23_2 then
            SHX24_2 = tCMG
            SHX24_2 = SHX24_2.addBlip
            SHX25_2 = SHX16_2
            SHX26_2 = SHX17_2
            SHX27_2 = SHX18_2
            SHX28_2 = SHX19_2
            SHX29_2 = SHX20_2
            SHX30_2 = SHX21_2
            SHX24_2(SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
          end
          SHX24_2 = tCMG
          SHX24_2 = SHX24_2.addMarker
          SHX25_2 = SHX16_2
          SHX26_2 = SHX17_2
          SHX27_2 = SHX18_2
          SHX28_2 = 1.0
          SHX29_2 = 1.0
          SHX30_2 = 1.0
          SHX31_2 = 255
          SHX32_2 = 0
          SHX33_2 = 0
          SHX34_2 = 170
          SHX35_2 = 50
          SHX36_2 = 27
          SHX24_2(SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2)
          SHX24_2 = CMG
          SHX24_2 = SHX24_2.createArea
          SHX25_2 = "backpack_"
          SHX26_2 = SHX8_2
          SHX25_2 = SHX25_2 .. SHX26_2
          SHX26_2 = vector3
          SHX27_2 = SHX16_2
          SHX28_2 = SHX17_2
          SHX29_2 = SHX18_2
          SHX26_2 = SHX26_2(SHX27_2, SHX28_2, SHX29_2)
          SHX27_2 = 1.5
          SHX28_2 = 6
          SHX29_2 = SHX2_2
          SHX30_2 = SHX3_2
          function SHX31_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3
          end
          SHX32_2 = {}
          SHX32_2.storeName = SHX8_2
          SHX24_2(SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2)
        end
      end
    end
  end
end
SHX13_1(SHX14_1, SHX15_1)
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = SHX2_1
  if not SHX0_2 then
    SHX0_2 = SHX4_1
    if SHX0_2 then
      SHX0_2 = LocalPlayer
      SHX0_2 = SHX0_2.state
      SHX1_2 = SHX0_2
      SHX0_2 = SHX0_2.set
      SHX2_2 = "hasBackpack"
      SHX3_2 = nil
      SHX4_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      SHX0_2 = false
      SHX4_1 = SHX0_2
    end
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 1885233650 == SHX1_2 then
    SHX2_2 = SHX4_1
    if SHX2_2 then
      SHX2_2 = LocalPlayer
      SHX2_2 = SHX2_2.state
      SHX3_2 = SHX2_2
      SHX2_2 = SHX2_2.set
      SHX4_2 = "hasBackpack"
      SHX5_2 = nil
      SHX6_2 = true
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = false
      SHX4_1 = SHX2_2
    end
    SHX2_2 = SHX10_1
    SHX3_2 = SHX0_2
    SHX4_2 = SHX2_1
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if not SHX2_2 then
      SHX2_2 = SHX9_1
      SHX3_2 = SHX0_2
      SHX4_2 = SHX2_1
      SHX2_2(SHX3_2, SHX4_2)
    end
  else
    SHX2_2 = SHX4_1
    if not SHX2_2 then
      SHX2_2 = LocalPlayer
      SHX2_2 = SHX2_2.state
      SHX3_2 = SHX2_2
      SHX2_2 = SHX2_2.set
      SHX4_2 = "hasBackpack"
      SHX5_2 = true
      SHX6_2 = true
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = true
      SHX4_1 = SHX2_2
    end
  end
end
SHX14_1 = CMG
SHX14_1 = SHX14_1.createThreadOnTick
SHX15_1 = SHX13_1
SHX16_1 = "Backpack Object"
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = AddStateBagChangeHandler
SHX15_1 = "hasBackpack"
SHX16_1 = nil
function SHX17_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX3_2 = tonumber
  SHX4_2 = stringsplit
  SHX5_2 = SHX0_2
  SHX6_2 = ":"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX4_2[2]
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 and SHX2_2 then
    SHX4_2 = SHX5_1
    SHX4_2 = SHX4_2[SHX3_2]
    if not SHX4_2 then
      SHX4_2 = SHX5_1
      SHX4_2[SHX3_2] = 0
      SHX4_2 = GetGameTimer
      SHX4_2 = SHX4_2()
      while true do
        SHX5_2 = SHX5_1
        SHX5_2 = SHX5_2[SHX3_2]
        if not SHX5_2 then
          break
        end
        SHX5_2 = GetGameTimer
        SHX5_2 = SHX5_2()
        SHX5_2 = SHX5_2 - SHX4_2
        SHX6_2 = 5000
        if SHX5_2 > SHX6_2 then
          SHX5_2 = SHX5_1
          SHX5_2[SHX3_2] = nil
          return
        end
        SHX5_2 = GetPlayerFromServerId
        SHX6_2 = SHX3_2
        SHX5_2 = SHX5_2(SHX6_2)
        if -1 ~= SHX5_2 then
          SHX6_2 = GetPlayerPed
          SHX7_2 = SHX5_2
          SHX6_2 = SHX6_2(SHX7_2)
          if 0 ~= SHX6_2 then
            SHX7_2 = GetEntityCoords
            SHX8_2 = SHX6_2
            SHX9_2 = true
            SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
            SHX8_2 = CMG
            SHX8_2 = SHX8_2.loadModel
            SHX9_2 = -86518587
            SHX8_2(SHX9_2)
            SHX8_2 = CreateObject
            SHX9_2 = -86518587
            SHX10_2 = SHX7_2.x
            SHX11_2 = SHX7_2.y
            SHX12_2 = SHX7_2.z
            SHX13_2 = false
            SHX14_2 = false
            SHX15_2 = false
            SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
            SHX9_2 = AttachEntityToEntity
            SHX10_2 = SHX8_2
            SHX11_2 = SHX6_2
            SHX12_2 = GetPedBoneIndex
            SHX13_2 = SHX6_2
            SHX14_2 = 10706
            SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
            SHX13_2 = 0.0
            SHX14_2 = -0.25
            SHX15_2 = -0.4
            SHX16_2 = 0.0
            SHX17_2 = 0.0
            SHX18_2 = 0.0
            SHX19_2 = false
            SHX20_2 = false
            SHX21_2 = false
            SHX22_2 = false
            SHX23_2 = 2
            SHX24_2 = true
            SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
            SHX9_2 = SetModelAsNoLongerNeeded
            SHX10_2 = -86518587
            SHX9_2(SHX10_2)
            SHX9_2 = SHX5_1
            SHX9_2[SHX3_2] = SHX8_2
            return
          end
        end
        SHX6_2 = Citizen
        SHX6_2 = SHX6_2.Wait
        SHX7_2 = 0
        SHX6_2(SHX7_2)
      end
  end
  elseif SHX3_2 and not SHX2_2 then
    SHX4_2 = SHX5_1
    SHX4_2 = SHX4_2[SHX3_2]
    if SHX4_2 then
      SHX4_2 = DeleteEntity
      SHX5_2 = SHX5_1
      SHX5_2 = SHX5_2[SHX3_2]
      SHX4_2(SHX5_2)
      SHX4_2 = SHX5_1
      SHX4_2[SHX3_2] = nil
    end
  end
end
SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX14_1 = AddEventHandler
SHX15_1 = "playerDropped"
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX5_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX1_2 = DeleteEntity
    SHX2_2 = SHX5_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX1_2(SHX2_2)
    SHX1_2 = SHX5_1
    SHX1_2[SHX0_2] = nil
  end
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = AddEventHandler
SHX15_1 = "onResourceStop"
function SHX16_1(SHX0_2)
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
    SHX2_2 = SHX5_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = DeleteEntity
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
    end
  end
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = RMenu
SHX14_1 = SHX14_1.Add
SHX15_1 = "backpacks"
SHX16_1 = "mainmenu"
SHX17_1 = RageUI
SHX17_1 = SHX17_1.CreateMenu
SHX18_1 = ""
SHX19_1 = "Backpacks"
SHX20_1 = CMG
SHX20_1 = SHX20_1.getRageUIMenuWidth
SHX20_1 = SHX20_1()
SHX21_1 = CMG
SHX21_1 = SHX21_1.getRageUIMenuHeight
SHX21_1 = SHX21_1()
SHX22_1 = "cmg_backpackui"
SHX23_1 = "cmg_backpackui"
SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX14_1(SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX14_1 = RageUI
SHX14_1 = SHX14_1.CreateWhile
SHX15_1 = 1.0
SHX16_1 = RMenu
SHX17_1 = SHX16_1
SHX16_1 = SHX16_1.Get
SHX18_1 = "backpacks"
SHX19_1 = "mainmenu"
SHX16_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX17_1 = nil
function SHX18_1()
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
  SHX3_2 = "backpacks"
  SHX4_2 = "mainmenu"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
    SHX0_3 = pairs
    SHX1_3 = SHX0_1.stores
    SHX2_3 = SHX6_1
    SHX1_3 = SHX1_3[SHX2_3]
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      if "_config" ~= SHX4_3 then
        SHX6_3 = RageUI
        SHX6_3 = SHX6_3.ButtonWithStyle
        SHX7_3 = SHX4_3
        SHX8_3 = ""
        SHX9_3 = {}
        SHX10_3 = string
        SHX10_3 = SHX10_3.format
        SHX11_3 = "\194\163%s"
        SHX12_3 = getMoneyStringFormatted
        SHX13_3 = SHX5_3[5]
        SHX12_3, SHX13_3 = SHX12_3(SHX13_3)
        SHX10_3 = SHX10_3(SHX11_3, SHX12_3, SHX13_3)
        SHX9_3.RightLabel = SHX10_3
        SHX10_3 = true
        function SHX11_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4
          if SHX1_4 then
            SHX3_4 = SHX11_1
            SHX4_4 = SHX5_3
            SHX3_4(SHX4_4)
          end
          if SHX2_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "a52bcd08f0"
            SHX5_4 = SHX5_3
            SHX5_4 = SHX5_4[1]
            SHX6_4 = SHX5_3
            SHX6_4 = SHX6_4[2]
            SHX7_4 = SHX5_3
            SHX7_4 = SHX7_4[3]
            SHX8_4 = SHX5_3
            SHX8_4 = SHX8_4[4]
            SHX9_4 = SHX4_3
            SHX10_4 = SHX5_3
            SHX10_4 = SHX10_4[5]
            SHX11_4 = SHX5_3
            SHX11_4 = SHX11_4[6]
            SHX12_4 = SHX6_1
            SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4)
          end
        end
        SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      end
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
SHX14_1(SHX15_1, SHX16_1, SHX17_1, SHX18_1)
