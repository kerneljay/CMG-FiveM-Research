-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_inventory"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.loadModule
SHX2_1 = "cfg/weapons"
SHX1_1 = SHX1_1(SHX2_1)
SHX2_1 = GetResourceKvpString
SHX3_1 = "cmg_legacy_inventory"
SHX2_1 = SHX2_1(SHX3_1)
SHX2_1 = "1" == SHX2_1
SHX3_1 = false
SHX4_1 = false
SHX5_1 = nil
SHX6_1 = nil
SHX7_1 = false
SHX8_1 = false
SHX9_1 = 0
SHX10_1 = 0
SHX11_1 = nil
SHX12_1 = nil
SHX13_1 = vector3
SHX14_1 = 0.0
SHX15_1 = 0.0
SHX16_1 = 0.0
SHX13_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX14_1 = vector3
SHX15_1 = 0.0
SHX16_1 = 0.0
SHX17_1 = 0.0
SHX14_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX15_1 = 0
SHX16_1 = nil
SHX17_1 = nil
SHX18_1 = nil
SHX19_1 = 14
SHX20_1 = 0
SHX21_1 = 0
SHX22_1 = false
SHX23_1 = 0.0
SHX24_1 = 0.0
SHX25_1 = false
SHX26_1 = false
SHX27_1 = false
SHX28_1 = 0.0
SHX29_1 = nil
SHX30_1 = false
function SHX31_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = TriggerEvent
    SHX1_3 = "2a70dddd80"
    SHX0_3(SHX1_3)
  end
  SHX0_2(SHX1_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "72490db2b8"
  SHX0_2(SHX1_2)
end
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.type = "INVENTORY_SET_GIVE_REQUEST"
  SHX2_2 = {}
  SHX1_2.info = SHX2_2
  SHX0_2(SHX1_2)
end
function SHX33_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.setCursor
    SHX2_2 = 1
    SHX1_2(SHX2_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.setInGUI
    SHX2_2 = true
    SHX1_2(SHX2_2)
  else
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.setCursor
    SHX2_2 = 0
    SHX1_2(SHX2_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.setInGUI
    SHX2_2 = false
    SHX1_2(SHX2_2)
    SHX1_2 = SHX31_1
    SHX1_2()
  end
end
function SHX34_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isPauseMenuOpen
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    return
  end
  if SHX0_2 then
    SHX1_2 = SHX3_1
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.uiSendMessage
      SHX2_2 = {}
      SHX2_2.type = "APP_TOGGLE"
      SHX2_2.app = "inventory"
      SHX1_2(SHX2_2)
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.uiSetFocus
      SHX2_2 = true
      SHX3_2 = true
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  end
  elseif not SHX0_2 then
    SHX1_2 = SHX3_1
    if SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.uiSendMessage
      SHX2_2 = {}
      SHX2_2.type = "APP_TOGGLE"
      SHX3_2 = tCMG
      SHX3_2 = SHX3_2.isInComa
      SHX3_2 = SHX3_2()
      if SHX3_2 then
        SHX3_2 = "deathscreen"
        if SHX3_2 then
          goto SHX_LABEL_45
        end
      end
      SHX3_2 = ""
      -- [FIX IF ERROR] Move ::SHX_LABEL_45:: outside nested blocks until all 'goto SHX_LABEL_45' can see it
      ::SHX_LABEL_45::
      SHX2_2.app = SHX3_2
      SHX1_2(SHX2_2)
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.uiSetFocus
      SHX2_2 = false
      SHX3_2 = false
      SHX4_2 = false
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = SHX32_1
      SHX1_2()
      SHX1_2 = SHX31_1
      SHX1_2()
    end
  end
end
SHX35_1 = CMG
function SHX36_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if SHX0_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.isInComa
    SHX1_2 = SHX1_2()
    if SHX1_2 then
      return
    end
  end
  SHX1_2 = SHX2_1
  if SHX1_2 then
    SHX1_2 = SHX33_1
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  else
    SHX1_2 = SHX34_1
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
  SHX3_1 = SHX0_2
end
SHX35_1.setDrawingInventoryUI = SHX36_1
SHX35_1 = CMG
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1
  return SHX0_2
end
SHX35_1.isDrawingInventoryUI = SHX36_1
function SHX35_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientEventData
  SHX1_2 = "SpellingBeeClientData"
  SHX0_2 = SHX0_2(SHX1_2)
  SHX0_2 = SHX0_2.minigameName
  if "Spelling Bee" == SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isUsingKeyboard
  SHX1_2 = 2
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.isInComa
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isHandcuffed
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = SHX4_1
        if not SHX0_2 then
          SHX0_2 = SHX7_1
          if not SHX0_2 then
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.setDrawingInventoryUI
            SHX1_2 = SHX3_1
            SHX1_2 = not SHX1_2
            SHX0_2(SHX1_2)
          else
            SHX0_2 = tCMG
            SHX0_2 = SHX0_2.notify
            SHX1_2 = "~r~Cannot open inventory right before a restart!"
            SHX0_2(SHX1_2)
          end
        end
      end
    end
  end
end
SHX36_1 = RegisterCommand
SHX37_1 = "inventory"
SHX38_1 = SHX35_1
SHX39_1 = false
SHX36_1(SHX37_1, SHX38_1, SHX39_1)
SHX36_1 = RegisterKeyMapping
SHX37_1 = "inventory"
SHX38_1 = "Open Inventory"
SHX39_1 = "KEYBOARD"
SHX40_1 = "L"
SHX36_1(SHX37_1, SHX38_1, SHX39_1, SHX40_1)
SHX36_1 = CMG
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX5_1
  return SHX0_2
end
SHX36_1.getClientInventoryItemList = SHX37_1
SHX36_1 = CMG
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX5_1
  if SHX1_2 then
    SHX1_2 = SHX5_1
    SHX1_2 = SHX1_2[SHX0_2]
    if SHX1_2 then
      SHX1_2 = SHX5_1
      SHX1_2 = SHX1_2[SHX0_2]
      SHX1_2 = SHX1_2[2]
      if SHX1_2 > 0 then
        SHX1_2 = true
        return SHX1_2
      end
    end
  end
  SHX1_2 = false
  return SHX1_2
end
SHX36_1.hasClientInventoryItem = SHX37_1
function SHX36_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = string
  SHX1_2 = SHX1_2.match
  SHX2_2 = SHX0_2
  SHX3_2 = "WEAPON_"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if not SHX1_2 then
    SHX1_2 = SHX0_1.ammoItems
    SHX1_2 = SHX1_2[SHX0_2]
  end
  return SHX1_2
end
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SHX36_1
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = true
      return SHX6_2
    end
  end
  SHX1_2 = false
  return SHX1_2
end
function SHX38_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX4_2 = 0
  SHX5_2 = {}
  SHX6_2 = pairs
  SHX7_2 = SHX1_2
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    SHX12_2 = SHX11_2[3]
    SHX13_2 = SHX11_2[2]
    SHX12_2 = SHX12_2 * SHX13_2
    SHX13_2 = {}
    SHX14_2 = SHX11_2[1]
    SHX13_2.name = SHX14_2
    SHX13_2.itemId = SHX10_2
    SHX14_2 = SHX11_2[2]
    SHX13_2.amount = SHX14_2
    SHX13_2.combinedMass = SHX12_2
    SHX14_2 = SHX1_1.weapons
    SHX14_2 = SHX14_2[SHX10_2]
    if SHX14_2 then
      SHX15_2 = {}
      SHX15_2.id = SHX10_2
      SHX16_2 = SHX14_2.name
      SHX15_2.name = SHX16_2
      SHX16_2 = SHX14_2.class
      SHX15_2.class = SHX16_2
      SHX16_2 = SHX14_2.subType
      SHX15_2.subType = SHX16_2
      SHX16_2 = SHX14_2.ammo
      SHX15_2.ammo = SHX16_2
      SHX15_2.amount = 0
      SHX13_2.weapon = SHX15_2
    end
    SHX15_2 = table
    SHX15_2 = SHX15_2.insert
    SHX16_2 = SHX5_2
    SHX17_2 = SHX13_2
    SHX15_2(SHX16_2, SHX17_2)
    SHX4_2 = SHX4_2 + SHX12_2
  end
  SHX6_2 = {}
  SHX6_2.currentMass = SHX4_2
  SHX6_2.maximumMass = SHX2_2
  SHX6_2.items = SHX5_2
  SHX6_2.displayName = SHX3_2
  SHX7_2 = SHX37_1
  SHX8_2 = SHX1_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX6_2.hasEquippableItem = SHX7_2
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.uiSendMessage
  SHX8_2 = {}
  SHX9_2 = "INVENTORY_SET_"
  SHX10_2 = SHX0_2
  SHX9_2 = SHX9_2 .. SHX10_2
  SHX8_2.type = SHX9_2
  SHX8_2.info = SHX6_2
  SHX7_2(SHX8_2)
  if "SECONDARY" == SHX0_2 then
    SHX6_1 = SHX1_2
    SHX17_1 = SHX6_2
    SHX24_1 = SHX2_2
  else
    SHX5_1 = SHX1_2
    SHX16_1 = SHX6_2
    SHX23_1 = SHX2_2
  end
  SHX7_2 = TriggerEvent
  SHX8_2 = "0c20c62dc8"
  SHX7_2(SHX8_2)
end
function SHX39_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX3_2 = "INVENTORY_SET_"
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2 .. SHX4_2
  SHX2_2.type = SHX3_2
  SHX2_2.info = nil
  SHX1_2(SHX2_2)
  if "SECONDARY" == SHX0_2 then
    SHX1_2 = nil
    SHX6_1 = SHX1_2
    SHX1_2 = nil
    SHX17_1 = SHX1_2
  else
    SHX1_2 = nil
    SHX5_1 = SHX1_2
    SHX1_2 = nil
    SHX17_1 = SHX1_2
  end
end
SHX40_1 = RegisterNetEvent
SHX41_1 = "96db39f973"
function SHX42_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX38_1
  SHX3_2 = "PRIMARY"
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = "Player"
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX0_2.dirtycash
  if SHX2_2 then
    SHX2_2 = TriggerEvent
    SHX3_2 = "dba3e00154"
    SHX4_2 = SHX0_2.dirtycash
    SHX4_2 = SHX4_2[2]
    SHX2_2(SHX3_2, SHX4_2)
  else
    SHX2_2 = TriggerEvent
    SHX3_2 = "dba3e00154"
    SHX4_2 = 0
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX40_1(SHX41_1, SHX42_1)
SHX40_1 = RegisterNetEvent
SHX41_1 = "e669d94aae"
function SHX42_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX5_2 = SHX38_1
  SHX6_2 = "SECONDARY"
  SHX7_2 = SHX0_2
  SHX8_2 = SHX1_2
  SHX9_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  if not SHX3_2 then
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.setDrawingInventoryUI
    SHX6_2 = true
    SHX5_2(SHX6_2)
  end
  if SHX2_2 then
    SHX12_1 = SHX2_2
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getPlayerCoords
    SHX5_2 = SHX5_2()
    SHX13_1 = SHX5_2
    if "notmytrunk" == SHX2_2 then
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.getPlayerCoords
      SHX5_2 = SHX5_2()
      SHX14_1 = SHX5_2
    end
    SHX5_2 = string
    SHX5_2 = SHX5_2.match
    SHX6_2 = SHX2_2
    SHX7_2 = "player_"
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    if SHX5_2 then
      SHX5_2 = string
      SHX5_2 = SHX5_2.gsub
      SHX6_2 = SHX2_2
      SHX7_2 = "player_"
      SHX8_2 = ""
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX6_2 = tonumber
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        SHX15_1 = SHX6_2
      end
    else
      SHX5_2 = 0
      SHX15_1 = SHX5_2
    end
  end
end
SHX40_1(SHX41_1, SHX42_1)
SHX40_1 = RegisterNetEvent
SHX41_1 = "9b370c2caf"
function SHX42_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = true
  SHX7_1 = SHX0_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    while true do
      SHX0_3 = SHX39_1
      SHX1_3 = "SECONDARY"
      SHX0_3(SHX1_3)
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.setDrawingInventoryUI
      SHX1_3 = false
      SHX0_3(SHX1_3)
      SHX0_3 = Wait
      SHX1_3 = 50
      SHX0_3(SHX1_3)
    end
  end
  SHX0_2(SHX1_2)
end
SHX40_1(SHX41_1, SHX42_1)
SHX40_1 = AddEventHandler
SHX41_1 = "2a70dddd80"
function SHX42_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX39_1
  SHX1_2 = "SECONDARY"
  SHX0_2(SHX1_2)
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.setDrawingInventoryUI
    SHX1_2 = false
    SHX0_2(SHX1_2)
  end
  SHX0_2 = nil
  SHX12_1 = SHX0_2
  SHX0_2 = nil
  SHX11_1 = SHX0_2
end
SHX40_1(SHX41_1, SHX42_1)
SHX40_1 = AddEventHandler
SHX41_1 = "a7ce3135a0"
function SHX42_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX4_1
  if SHX0_2 then
    return
  end
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.getNearestVehicle
  SHX1_2 = 6
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX1_2 = GetEntityModel
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getVehicleIdFromModel
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX3_2 = tCMG
      SHX3_2 = SHX3_2.getVehicleInfos
      SHX4_2 = SHX0_2
      SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
      SHX5_2 = DecorGetInt
      SHX6_2 = SHX0_2
      SHX7_2 = "0a6cf607ed"
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.getClientUserId
      SHX6_2 = SHX6_2()
      if SHX3_2 == SHX6_2 and SHX4_2 == SHX2_2 and SHX5_2 > 0 then
        SHX6_2 = CMG
        SHX6_2 = SHX6_2.setDrawingInventoryUI
        SHX7_2 = true
        SHX6_2(SHX7_2)
        SHX11_1 = SHX0_2
        if 1927688563 == SHX5_2 then
          SHX6_2 = NetworkGetNetworkIdFromEntity
          SHX7_2 = SHX0_2
          SHX6_2 = SHX6_2(SHX7_2)
          if SHX6_2 > 0 then
            SHX7_2 = CMGclient
            SHX7_2 = SHX7_2.openVehicleScriptedTrunk
            SHX8_2 = {}
            SHX9_2 = SHX6_2
            SHX8_2[1] = SHX9_2
            SHX7_2(SHX8_2)
          else
            SHX7_2 = tCMG
            SHX7_2 = SHX7_2.notify
            SHX8_2 = "~r~You are unable to open this vehicle boot."
            SHX7_2(SHX8_2)
          end
        else
          SHX6_2 = print
          SHX7_2 = "[CMG Trunks] calling OpenVehicleTrunk: "
          SHX8_2 = tostring
          SHX9_2 = SHX5_2
          SHX8_2 = SHX8_2(SHX9_2)
          SHX7_2 = SHX7_2 .. SHX8_2
          SHX6_2(SHX7_2)
          SHX6_2 = CMGclient
          SHX6_2 = SHX6_2.OpenVehicleTrunk
          SHX7_2 = {}
          SHX8_2 = SHX5_2
          SHX7_2[1] = SHX8_2
          SHX6_2(SHX7_2)
        end
      else
        SHX6_2 = tCMG
        SHX6_2 = SHX6_2.notify
        SHX7_2 = "~r~You don't have the keys to this vehicle"
        SHX6_2(SHX7_2)
      end
    else
      SHX3_2 = tCMG
      SHX3_2 = SHX3_2.notify
      SHX4_2 = "~r~You don't have the keys to this vehicle!"
      SHX3_2(SHX4_2)
    end
  else
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.notify
    SHX2_2 = "~r~No vehicle nearby"
    SHX1_2(SHX2_2)
  end
end
SHX40_1(SHX41_1, SHX42_1)
SHX40_1 = nil
function SHX41_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  if -1 == SHX0_2 then
    SHX1_2 = SHX40_1
    if not SHX1_2 then
      SHX1_2 = vector3
      SHX2_2 = 0
      SHX3_2 = 0
      SHX4_2 = 0
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    end
    return SHX1_2
  else
    SHX1_2 = GetEntityCoords
    SHX2_2 = SHX0_2
    return SHX1_2(SHX2_2)
  end
end
function SHX42_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX11_1
  if nil ~= SHX0_2 then
    SHX0_2 = SHX6_1
    if SHX0_2 then
      SHX0_2 = GetEntityCoords
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerPed
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2()
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX41_1
      SHX2_2 = SHX11_1
      SHX1_2 = SHX1_2(SHX2_2)
      SHX2_2 = SHX0_2 - SHX1_2
      SHX2_2 = #SHX2_2
      if SHX2_2 > 10.0 then
        SHX3_2 = nil
        SHX11_1 = SHX3_2
        SHX3_2 = nil
        SHX40_1 = SHX3_2
        SHX3_2 = SHX31_1
        SHX3_2()
      end
    end
  end
  SHX0_2 = SHX12_1
  if "house" == SHX0_2 then
    SHX0_2 = SHX6_1
    if SHX0_2 then
      SHX0_2 = GetEntityCoords
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerPed
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2()
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX13_1
      SHX2_2 = SHX0_2 - SHX1_2
      SHX2_2 = #SHX2_2
      if SHX2_2 > 5.0 then
        SHX3_2 = SHX31_1
        SHX3_2()
      end
    end
  end
  SHX0_2 = SHX12_1
  if "notmytrunk" == SHX0_2 then
    SHX0_2 = SHX6_1
    if SHX0_2 then
      SHX0_2 = GetEntityCoords
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerPed
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2()
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX14_1
      SHX2_2 = SHX0_2 - SHX1_2
      SHX2_2 = #SHX2_2
      if SHX2_2 > 5.0 then
        SHX3_2 = SHX31_1
        SHX3_2()
      end
    end
  end
  SHX0_2 = SHX15_1
  if 0 ~= SHX0_2 then
    SHX0_2 = SHX6_1
    if SHX0_2 then
      SHX0_2 = GetEntityCoords
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerPed
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2()
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = GetPlayerFromServerId
      SHX2_2 = SHX15_1
      SHX1_2 = SHX1_2(SHX2_2)
      SHX2_2 = 1000.0
      if SHX1_2 >= 0 then
        SHX3_2 = GetEntityCoords
        SHX4_2 = GetPlayerPed
        SHX5_2 = SHX1_2
        SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        SHX4_2 = SHX0_2 - SHX3_2
        SHX2_2 = #SHX4_2
      end
      if SHX2_2 > 5.0 then
        SHX3_2 = SHX31_1
        SHX3_2()
      end
    end
  end
  SHX0_2 = SHX11_1
  if nil == SHX0_2 then
    SHX0_2 = SHX12_1
    if "trunk" == SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.setDrawingInventoryUI
      SHX1_2 = false
      SHX0_2(SHX1_2)
    end
  end
end
SHX43_1 = CMG
function SHX44_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = GetEntityCoords
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2)
  SHX40_1 = SHX0_2
  SHX0_2 = -1
  SHX11_1 = SHX0_2
end
SHX43_1.setOpeningBootFromGarage = SHX44_1
function SHX43_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getWeapons
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX2_2()
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX1_1.weapons
    SHX7_2 = SHX7_2[SHX5_2]
    if SHX7_2 then
      SHX8_2 = string
      SHX8_2 = SHX8_2.starts
      SHX9_2 = SHX5_2
      SHX10_2 = "GADGET_"
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      if not SHX8_2 then
        SHX8_2 = table
        SHX8_2 = SHX8_2.insert
        SHX9_2 = SHX0_2
        SHX10_2 = {}
        SHX10_2.id = SHX5_2
        SHX11_2 = SHX7_2.name
        SHX10_2.name = SHX11_2
        SHX11_2 = SHX7_2.class
        SHX10_2.class = SHX11_2
        SHX11_2 = SHX7_2.subType
        SHX10_2.subType = SHX11_2
        SHX11_2 = SHX7_2.ammo
        SHX10_2.ammo = SHX11_2
        SHX11_2 = SHX6_2.ammo
        SHX10_2.amount = SHX11_2
        SHX8_2(SHX9_2, SHX10_2)
      end
    end
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.type = "INVENTORY_SET_EQUIPPED_WEAPONS"
  SHX2_2.info = SHX0_2
  SHX1_2(SHX2_2)
  SHX18_1 = SHX0_2
end
function SHX44_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = string
  SHX1_2 = SHX1_2.match
  SHX2_2 = SHX0_2
  SHX3_2 = "WEAPON_"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = 2
    return SHX1_2
  else
    SHX1_2 = SHX0_1.ammoItems
    SHX1_2 = SHX1_2[SHX0_2]
    if SHX1_2 then
      SHX1_2 = 1
      return SHX1_2
    else
      SHX1_2 = 0
      return SHX1_2
    end
  end
end
function SHX45_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = SHX22_1
  if SHX0_2 then
    return
  end
  SHX0_2 = true
  SHX22_1 = SHX0_2
  SHX0_2 = SHX5_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = sortAlphabetically
  SHX1_2 = SHX5_1
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = table
  SHX1_2 = SHX1_2.sort
  SHX2_2 = SHX0_2
  function SHX3_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3, SHX4_3
    SHX2_3 = SHX44_1
    SHX3_3 = SHX0_3.title
    SHX2_3 = SHX2_3(SHX3_3)
    SHX3_3 = SHX44_1
    SHX4_3 = SHX1_3.title
    SHX3_3 = SHX3_3(SHX4_3)
    SHX2_3 = SHX2_3 > SHX3_3
    return SHX2_3
  end
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX8_2 = SHX6_2.title
    SHX7_2 = SHX5_1
    SHX7_2 = SHX7_2[SHX8_2]
    if SHX7_2 then
      SHX8_2 = SHX6_2.title
      SHX7_2 = SHX5_1
      SHX7_2 = SHX7_2[SHX8_2]
      SHX7_2 = SHX7_2[2]
      if SHX7_2 > 0 then
        SHX7_2 = SHX36_1
        SHX8_2 = SHX6_2.title
        SHX7_2 = SHX7_2(SHX8_2)
        if SHX7_2 then
          SHX7_2 = CMGclient
          SHX7_2 = SHX7_2.useInventoryItem
          SHX8_2 = {}
          SHX9_2 = SHX6_2.title
          SHX10_2 = -1
          SHX8_2[1] = SHX9_2
          SHX8_2[2] = SHX10_2
          SHX7_2(SHX8_2)
          SHX7_2 = Citizen
          SHX7_2 = SHX7_2.Wait
          SHX8_2 = 250
          SHX7_2(SHX8_2)
        end
      end
    end
    SHX7_2 = SHX3_1
    if not SHX7_2 then
      break
    end
    SHX7_2 = SHX5_1
    if not SHX7_2 then
      break
    end
    SHX7_2 = table
    SHX7_2 = SHX7_2.count
    SHX8_2 = SHX5_1
    SHX7_2 = SHX7_2(SHX8_2)
    if 0 == SHX7_2 then
      break
    end
    SHX7_2 = SHX30_1
    if SHX7_2 then
      break
    end
  end
  SHX1_2 = false
  SHX22_1 = SHX1_2
end
function SHX46_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX30_1
  if not SHX2_2 then
    SHX2_2 = CMGclient
    SHX2_2 = SHX2_2.moveChestToClient
    SHX3_2 = {}
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    SHX3_2[1] = SHX4_2
    SHX3_2[2] = SHX5_2
    SHX2_2(SHX3_2)
  end
end
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX22_1
  if SHX0_2 then
    return
  end
  SHX0_2 = true
  SHX22_1 = SHX0_2
  SHX0_2 = SHX6_1
  if SHX0_2 then
    SHX0_2 = SHX5_1
    if SHX0_2 then
      goto SHX_LABEL_14
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_14:: outside nested blocks until all 'goto SHX_LABEL_14' can see it
  ::SHX_LABEL_14::
  SHX0_2 = sortAlphabetically
  SHX1_2 = SHX6_1
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = table
  SHX1_2 = SHX1_2.sort
  SHX2_2 = SHX0_2
  function SHX3_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3, SHX4_3
    SHX2_3 = SHX44_1
    SHX3_3 = SHX0_3.title
    SHX2_3 = SHX2_3(SHX3_3)
    SHX3_3 = SHX44_1
    SHX4_3 = SHX1_3.title
    SHX3_3 = SHX3_3(SHX4_3)
    SHX2_3 = SHX2_3 > SHX3_3
    return SHX2_3
  end
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX8_2 = SHX6_2.title
    SHX7_2 = SHX6_1
    SHX7_2 = SHX7_2[SHX8_2]
    if SHX7_2 then
      SHX8_2 = SHX6_2.title
      SHX7_2 = SHX6_1
      SHX7_2 = SHX7_2[SHX8_2]
      SHX7_2 = SHX7_2[2]
      if SHX7_2 > 0 then
        SHX7_2 = SHX46_1
        SHX8_2 = SHX6_2.title
        SHX9_2 = SHX6_2.value
        SHX9_2 = SHX9_2[2]
        SHX7_2(SHX8_2, SHX9_2)
        SHX7_2 = Citizen
        SHX7_2 = SHX7_2.Wait
        SHX8_2 = 250
        SHX7_2(SHX8_2)
      end
    end
    SHX7_2 = SHX3_1
    if not SHX7_2 then
      break
    end
    SHX7_2 = SHX5_1
    if not SHX7_2 then
      break
    end
    SHX7_2 = SHX6_1
    if not SHX7_2 then
      break
    end
    SHX7_2 = table
    SHX7_2 = SHX7_2.count
    SHX8_2 = SHX6_1
    SHX7_2 = SHX7_2(SHX8_2)
    if 0 == SHX7_2 then
      break
    end
  end
  SHX1_2 = false
  SHX22_1 = SHX1_2
end
function SHX48_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX12_1
  if "business" == SHX2_2 then
    SHX2_2 = SHX29_1
    if SHX2_2 then
      SHX2_2 = SHX29_1
      SHX3_2 = SHX0_2
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = notify
        SHX3_2 = "~r~The business does not except this item."
        SHX2_2(SHX3_2)
        return
      end
    end
  end
  SHX2_2 = SHX30_1
  if not SHX2_2 then
    SHX2_2 = CMGclient
    SHX2_2 = SHX2_2.moveClientToChest
    SHX3_2 = {}
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    SHX3_2[1] = SHX4_2
    SHX3_2[2] = SHX5_2
    SHX2_2(SHX3_2)
  end
end
function SHX49_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX22_1
  if SHX0_2 then
    return
  end
  SHX0_2 = true
  SHX22_1 = SHX0_2
  SHX0_2 = SHX6_1
  if SHX0_2 then
    SHX0_2 = SHX5_1
    if SHX0_2 then
      goto SHX_LABEL_14
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_14:: outside nested blocks until all 'goto SHX_LABEL_14' can see it
  ::SHX_LABEL_14::
  SHX0_2 = sortAlphabetically
  SHX1_2 = SHX5_1
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = table
  SHX1_2 = SHX1_2.sort
  SHX2_2 = SHX0_2
  function SHX3_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3, SHX4_3
    SHX2_3 = SHX44_1
    SHX3_3 = SHX0_3.title
    SHX2_3 = SHX2_3(SHX3_3)
    SHX3_3 = SHX44_1
    SHX4_3 = SHX1_3.title
    SHX3_3 = SHX3_3(SHX4_3)
    SHX2_3 = SHX2_3 > SHX3_3
    return SHX2_3
  end
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.getPlayerCombatTimer
    SHX7_2 = SHX7_2()
    if SHX7_2 > 0 then
      break
    end
    SHX7_2 = SHX6_2.title
    if "dirtycash" == SHX7_2 then
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.isPlayerInRedZone
      SHX7_2 = SHX7_2()
      if SHX7_2 then
        goto SHX_LABEL_60
      end
    end
    SHX8_2 = SHX6_2.title
    SHX7_2 = SHX5_1
    SHX7_2 = SHX7_2[SHX8_2]
    if SHX7_2 then
      SHX8_2 = SHX6_2.title
      SHX7_2 = SHX5_1
      SHX7_2 = SHX7_2[SHX8_2]
      SHX7_2 = SHX7_2[2]
      if SHX7_2 > 0 then
        SHX7_2 = SHX48_1
        SHX8_2 = SHX6_2.title
        SHX9_2 = SHX6_2.value
        SHX9_2 = SHX9_2[2]
        SHX7_2(SHX8_2, SHX9_2)
        SHX7_2 = Citizen
        SHX7_2 = SHX7_2.Wait
        SHX8_2 = 250
        SHX7_2(SHX8_2)
        goto SHX_LABEL_63
        -- [FIX IF ERROR] Move ::SHX_LABEL_60:: outside nested blocks until all 'goto SHX_LABEL_60' can see it
        ::SHX_LABEL_60::
        SHX7_2 = notify
        SHX8_2 = "~r~Could not transfer all dirty cash as you are inside a redzone."
        SHX7_2(SHX8_2)
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_63:: outside nested blocks until all 'goto SHX_LABEL_63' can see it
    ::SHX_LABEL_63::
    SHX7_2 = SHX3_1
    if not SHX7_2 then
      break
    end
    SHX7_2 = SHX5_1
    if not SHX7_2 then
      break
    end
    SHX7_2 = SHX6_1
    if not SHX7_2 then
      break
    end
    SHX7_2 = table
    SHX7_2 = SHX7_2.count
    SHX8_2 = SHX5_1
    SHX7_2 = SHX7_2(SHX8_2)
    if 0 == SHX7_2 then
      break
    end
  end
  SHX1_2 = false
  SHX22_1 = SHX1_2
end
function SHX50_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX1_1.weapons
  SHX1_2 = SHX25_1
  SHX0_2 = SHX0_2[SHX1_2]
  SHX1_2 = SHX0_1.ammoItems
  SHX2_2 = SHX25_1
  SHX1_2 = SHX1_2[SHX2_2]
  if not SHX1_2 then
    if SHX0_2 then
      SHX1_2 = SHX0_2.ammo
    end
    SHX1_2 = "modelammo" == SHX1_2 or SHX1_2
  end
  return SHX1_2
end
SHX51_1 = {}
SHX51_1["Dirty Cash"] = true
function SHX52_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX51_1
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX2_2 = "\194\163"
    SHX3_2 = getMoneyStringFormatted
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX2_2 = SHX2_2 .. SHX3_2
    return SHX2_2
  else
    return SHX1_2
  end
end
function SHX53_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = sortAlphabetically
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = #SHX2_2
  SHX4_2 = SHX19_1
  SHX4_2 = SHX1_2 * SHX4_2
  SHX5_2 = {}
  SHX6_2 = SHX4_2 + 1
  SHX7_2 = math
  SHX7_2 = SHX7_2.min
  SHX8_2 = SHX19_1
  SHX8_2 = SHX4_2 + SHX8_2
  SHX9_2 = SHX3_2
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX8_2 = 1
  for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
    SHX10_2 = table
    SHX10_2 = SHX10_2.insert
    SHX11_2 = SHX5_2
    SHX12_2 = SHX2_2[SHX9_2]
    SHX10_2(SHX11_2, SHX12_2)
  end
  return SHX5_2
end
function SHX54_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX25_1
  if SHX0_2 then
    SHX0_2 = SHX5_1
    if SHX0_2 then
      SHX1_2 = SHX25_1
      SHX0_2 = SHX5_1
      SHX0_2 = SHX0_2[SHX1_2]
      if SHX0_2 then
        SHX1_2 = SHX25_1
        SHX0_2 = SHX5_1
        SHX0_2 = SHX0_2[SHX1_2]
        SHX0_2 = SHX0_2[2]
        return SHX0_2
    end
  end
  else
    SHX0_2 = SHX26_1
    if SHX0_2 then
      SHX0_2 = SHX6_1
      if SHX0_2 then
        SHX1_2 = SHX26_1
        SHX0_2 = SHX6_1
        SHX0_2 = SHX0_2[SHX1_2]
        if SHX0_2 then
          SHX1_2 = SHX26_1
          SHX0_2 = SHX6_1
          SHX0_2 = SHX0_2[SHX1_2]
          SHX0_2 = SHX0_2[2]
          return SHX0_2
        end
      end
    end
  end
  SHX0_2 = 0
  return SHX0_2
end
function SHX55_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2
  SHX3_2 = GetPlayerFromServerId
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if -1 == SHX3_2 then
    return
  end
  SHX4_2 = GetPlayerPed
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if 0 == SHX4_2 then
    return
  end
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getPlayerCoords
  SHX6_2 = SHX6_2()
  SHX7_2 = GetEntityCoords
  SHX8_2 = SHX4_2
  SHX9_2 = true
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX8_2 = false
  SHX9_2 = -8
  SHX10_2 = 8
  SHX11_2 = 1
  for SHX12_2 = SHX9_2, SHX10_2, SHX11_2 do
    SHX13_2 = SHX12_2 / 10.0
    SHX14_2 = vector3
    SHX15_2 = 0.0
    SHX16_2 = 0.0
    SHX17_2 = SHX13_2
    SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2)
    SHX14_2 = SHX6_2 + SHX14_2
    SHX15_2 = vector3
    SHX16_2 = 0.0
    SHX17_2 = 0.0
    SHX18_2 = SHX13_2
    SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2)
    SHX15_2 = SHX7_2 + SHX15_2
    SHX16_2 = _ENV
    SHX17_2 = "StartExpensiveSynchronousShapeTestLosProbe"
    SHX16_2 = SHX16_2[SHX17_2]
    SHX17_2 = SHX14_2.x
    SHX18_2 = SHX14_2.y
    SHX19_2 = SHX14_2.z
    SHX20_2 = SHX15_2.x
    SHX21_2 = SHX15_2.y
    SHX22_2 = SHX15_2.z
    SHX23_2 = 17
    SHX24_2 = SHX5_2
    SHX25_2 = 7
    SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
    SHX17_2 = GetShapeTestResult
    SHX18_2 = SHX16_2
    SHX17_2, SHX18_2 = SHX17_2(SHX18_2)
    if 0 == SHX18_2 then
      SHX8_2 = true
      break
    end
  end
  if not SHX8_2 then
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.getTunableValue
    SHX10_2 = "disable_transfer_walls"
    SHX9_2 = SHX9_2(SHX10_2)
    if not SHX9_2 then
      SHX9_2 = notify
      SHX10_2 = "~r~You can not transfer items between solid objects."
      SHX9_2(SHX10_2)
      return
    end
  end
  SHX9_2 = CMGclient
  SHX9_2 = SHX9_2.giveToNearestPlayer
  SHX10_2 = {}
  SHX11_2 = SHX0_2
  SHX12_2 = SHX1_2
  SHX13_2 = SHX2_2
  SHX10_2[1] = SHX11_2
  SHX10_2[2] = SHX12_2
  SHX10_2[3] = SHX13_2
  SHX9_2(SHX10_2)
end
function SHX56_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = SHX27_1
  if SHX2_2 then
    return
  end
  SHX2_2 = {}
  SHX3_2 = true
  SHX27_1 = SHX3_2
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
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.getPlayerCoords
      SHX11_2 = SHX11_2()
      SHX10_2 = SHX10_2 - SHX11_2
      SHX10_2 = #SHX10_2
      if SHX10_2 <= 5.0 then
        SHX10_2 = CMG
        SHX10_2 = SHX10_2.getPlayerPed
        SHX10_2 = SHX10_2()
        if SHX9_2 ~= SHX10_2 then
          SHX10_2 = GetPlayerServerId
          SHX11_2 = SHX8_2
          SHX10_2 = SHX10_2(SHX11_2)
          SHX11_2 = CMG
          SHX11_2 = SHX11_2.isPlayerInSelectedGang
          SHX12_2 = SHX10_2
          SHX11_2 = SHX11_2(SHX12_2)
          if SHX11_2 then
            SHX11_2 = CMG
            SHX11_2 = SHX11_2.getPlayerName
            SHX12_2 = SHX8_2
            SHX11_2 = SHX11_2(SHX12_2)
            if SHX11_2 then
              goto SHX_LABEL_52
            end
          end
          SHX11_2 = ""
          -- [FIX IF ERROR] Move ::SHX_LABEL_52:: outside nested blocks until all 'goto SHX_LABEL_52' can see it
          ::SHX_LABEL_52::
          SHX2_2[SHX10_2] = SHX11_2
        end
      end
    end
  end
  SHX3_2 = table
  SHX3_2 = SHX3_2.count
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 == SHX3_2 then
    SHX3_2 = false
    SHX27_1 = SHX3_2
    SHX3_2 = notify
    SHX4_2 = "~r~No players nearby"
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = tCMG
    SHX0_3 = SHX0_3.promptUserList
    SHX1_3 = SHX2_2
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 then
      SHX1_3 = SHX2_2
      SHX1_3 = SHX1_3[SHX0_3]
      if SHX1_3 then
        goto SHX_LABEL_17
      end
    end
    SHX1_3 = false
    SHX27_1 = SHX1_3
    SHX1_3 = notify
    SHX2_3 = "~r~Give selection cancelled"
    SHX1_3(SHX2_3)
    return
    -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
    ::SHX_LABEL_17::
    SHX1_3 = false
    SHX27_1 = SHX1_3
    SHX1_3 = SHX30_1
    if not SHX1_3 then
      SHX1_3 = SHX55_1
      SHX2_3 = SHX0_2
      SHX3_3 = SHX0_3
      SHX4_3 = SHX1_2
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    end
  end
  SHX3_2(SHX4_2)
end
SHX57_1 = CMG
function SHX58_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = 0
  SHX1_2 = SHX5_1
  if SHX1_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX5_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = SHX6_2[3]
      SHX8_2 = SHX6_2[2]
      SHX7_2 = SHX7_2 * SHX8_2
      SHX0_2 = SHX0_2 + SHX7_2
    end
  end
  SHX1_2 = SHX23_1
  SHX1_2 = SHX1_2 - SHX0_2
  return SHX1_2
end
SHX57_1.getSpaceInFirstChest = SHX58_1
SHX57_1 = CMG
function SHX58_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = 0
  SHX1_2 = SHX6_1
  if SHX1_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX6_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = SHX6_2[3]
      SHX8_2 = SHX6_2[2]
      SHX7_2 = SHX7_2 * SHX8_2
      SHX0_2 = SHX0_2 + SHX7_2
    end
  end
  SHX1_2 = SHX24_1
  SHX1_2 = SHX1_2 - SHX0_2
  return SHX1_2
end
SHX57_1.getSpaceInSecondChest = SHX58_1
function SHX57_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2
  SHX0_2 = IsDisabledControlJustReleased
  SHX1_2 = 0
  SHX2_2 = 200
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.setDrawingInventoryUI
    SHX1_2 = false
    SHX0_2(SHX1_2)
    return
  end
  SHX0_2 = DrawRect
  SHX1_2 = 0.5
  SHX2_2 = 0.53
  SHX3_2 = 0.572
  SHX4_2 = 0.508
  SHX5_2 = 0
  SHX6_2 = 0
  SHX7_2 = 0
  SHX8_2 = 150
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2 = DrawAdvancedText
  SHX1_2 = 0.593
  SHX2_2 = 0.233
  SHX3_2 = 0.005
  SHX4_2 = 0.0028
  SHX5_2 = 0.66
  SHX6_2 = "CMG INVENTORY"
  SHX7_2 = 255
  SHX8_2 = 255
  SHX9_2 = 255
  SHX10_2 = 255
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.getFontId
  SHX12_2 = "Akrobat-ExtraBold"
  SHX11_2 = SHX11_2(SHX12_2)
  SHX12_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX0_2 = DrawRect
  SHX1_2 = 0.5
  SHX2_2 = 0.24
  SHX3_2 = 0.572
  SHX4_2 = 0.058
  SHX5_2 = 0
  SHX6_2 = 0
  SHX7_2 = 0
  SHX8_2 = 225
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2 = DrawRect
  SHX1_2 = 0.342
  SHX2_2 = 0.536
  SHX3_2 = 0.215
  SHX4_2 = 0.436
  SHX5_2 = 0
  SHX6_2 = 0
  SHX7_2 = 0
  SHX8_2 = 150
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2 = DrawRect
  SHX1_2 = 0.659
  SHX2_2 = 0.537
  SHX3_2 = 0.215
  SHX4_2 = 0.436
  SHX5_2 = 0
  SHX6_2 = 0
  SHX7_2 = 0
  SHX8_2 = 150
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2 = SHX50_1
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.575
    SHX2_2 = 0.364
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.325
    SHX6_2 = "Use"
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 6
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.615
    SHX2_2 = 0.364
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.325
    SHX6_2 = "Use All"
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 6
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  else
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.594
    SHX2_2 = 0.364
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.4
    SHX6_2 = "Use"
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 6
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  end
  SHX0_2 = DrawAdvancedText
  SHX1_2 = 0.594
  SHX2_2 = 0.454
  SHX3_2 = 0.005
  SHX4_2 = 0.0028
  SHX5_2 = 0.4
  SHX6_2 = "Move"
  SHX7_2 = 255
  SHX8_2 = 255
  SHX9_2 = 255
  SHX10_2 = 255
  SHX11_2 = 6
  SHX12_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX0_2 = DrawAdvancedText
  SHX1_2 = 0.575
  SHX2_2 = 0.545
  SHX3_2 = 0.005
  SHX4_2 = 0.0028
  SHX5_2 = 0.325
  SHX6_2 = "Move X"
  SHX7_2 = 255
  SHX8_2 = 255
  SHX9_2 = 255
  SHX10_2 = 255
  SHX11_2 = 6
  SHX12_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX0_2 = DrawAdvancedText
  SHX1_2 = 0.615
  SHX2_2 = 0.545
  SHX3_2 = 0.005
  SHX4_2 = 0.0028
  SHX5_2 = 0.325
  SHX6_2 = "Move All"
  SHX7_2 = 255
  SHX8_2 = 255
  SHX9_2 = 255
  SHX10_2 = 255
  SHX11_2 = 6
  SHX12_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX0_2 = DrawAdvancedText
  SHX1_2 = 0.575
  SHX2_2 = 0.634
  SHX3_2 = 0.005
  SHX4_2 = 0.0028
  SHX5_2 = 0.35
  SHX6_2 = "Give X"
  SHX7_2 = 255
  SHX8_2 = 255
  SHX9_2 = 255
  SHX10_2 = 255
  SHX11_2 = 6
  SHX12_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX0_2 = DrawAdvancedText
  SHX1_2 = 0.615
  SHX2_2 = 0.634
  SHX3_2 = 0.005
  SHX4_2 = 0.0028
  SHX5_2 = 0.35
  SHX6_2 = "Give All"
  SHX7_2 = 255
  SHX8_2 = 255
  SHX9_2 = 255
  SHX10_2 = 255
  SHX11_2 = 6
  SHX12_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX0_2 = DrawAdvancedText
  SHX1_2 = 0.594
  SHX2_2 = 0.722
  SHX3_2 = 0.005
  SHX4_2 = 0.0028
  SHX5_2 = 0.4
  SHX6_2 = "Trash"
  SHX7_2 = 255
  SHX8_2 = 255
  SHX9_2 = 255
  SHX10_2 = 255
  SHX11_2 = 6
  SHX12_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX0_2 = DrawAdvancedText
  SHX1_2 = 0.488
  SHX2_2 = 0.335
  SHX3_2 = 0.005
  SHX4_2 = 0.0028
  SHX5_2 = 0.366
  SHX6_2 = "Amount"
  SHX7_2 = 255
  SHX8_2 = 255
  SHX9_2 = 255
  SHX10_2 = 255
  SHX11_2 = 4
  SHX12_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX0_2 = DrawAdvancedText
  SHX1_2 = 0.404
  SHX2_2 = 0.335
  SHX3_2 = 0.005
  SHX4_2 = 0.0028
  SHX5_2 = 0.366
  SHX6_2 = "Item Name"
  SHX7_2 = 255
  SHX8_2 = 255
  SHX9_2 = 255
  SHX10_2 = 255
  SHX11_2 = 4
  SHX12_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX0_2 = DrawAdvancedText
  SHX1_2 = 0.521
  SHX2_2 = 0.335
  SHX3_2 = 0.005
  SHX4_2 = 0.0028
  SHX5_2 = 0.366
  SHX6_2 = "Weight"
  SHX7_2 = 255
  SHX8_2 = 255
  SHX9_2 = 255
  SHX10_2 = 255
  SHX11_2 = 4
  SHX12_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX0_2 = DrawAdvancedText
  SHX1_2 = 0.833
  SHX2_2 = 0.776
  SHX3_2 = 0.005
  SHX4_2 = 0.0028
  SHX5_2 = 0.288
  SHX6_2 = "[Press L to close]"
  SHX7_2 = 255
  SHX8_2 = 255
  SHX9_2 = 255
  SHX10_2 = 255
  SHX11_2 = 4
  SHX12_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX0_2 = DrawRect
  SHX1_2 = 0.5
  SHX2_2 = 0.273
  SHX3_2 = 0.572
  SHX4_2 = 0.0079999999999999
  SHX5_2 = 0
  SHX6_2 = 168
  SHX7_2 = 255
  SHX8_2 = 150
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 200
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX5_1
  if SHX0_2 then
    SHX0_2 = table
    SHX0_2 = SHX0_2.count
    SHX1_2 = SHX5_1
    SHX0_2 = SHX0_2(SHX1_2)
    SHX1_2 = SHX19_1
    if SHX0_2 > SHX1_2 then
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.528
      SHX2_2 = 0.742
      SHX3_2 = 0.005
      SHX4_2 = 8.0E-4
      SHX5_2 = 0.4
      SHX6_2 = "Next"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = CursorInArea
      SHX1_2 = 0.412
      SHX2_2 = 0.432
      SHX3_2 = 0.72
      SHX4_2 = 0.76
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
          if not SHX0_2 then
            goto SHX_LABEL_333
          end
        end
        SHX0_2 = math
        SHX0_2 = SHX0_2.floor
        SHX1_2 = table
        SHX1_2 = SHX1_2.count
        SHX2_2 = SHX5_1
        SHX1_2 = SHX1_2(SHX2_2)
        SHX2_2 = SHX19_1
        SHX1_2 = SHX1_2 / SHX2_2
        SHX0_2 = SHX0_2(SHX1_2)
        SHX1_2 = math
        SHX1_2 = SHX1_2.min
        SHX2_2 = SHX20_1
        SHX2_2 = SHX2_2 + 1
        SHX3_2 = SHX0_2
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        SHX20_1 = SHX1_2
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_333:: outside nested blocks until all 'goto SHX_LABEL_333' can see it
      ::SHX_LABEL_333::
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.349
      SHX2_2 = 0.742
      SHX3_2 = 0.005
      SHX4_2 = 8.0E-4
      SHX5_2 = 0.4
      SHX6_2 = "Previous"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = CursorInArea
      SHX1_2 = 0.239
      SHX2_2 = 0.269
      SHX3_2 = 0.72
      SHX4_2 = 0.76
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
          if not SHX0_2 then
            goto SHX_LABEL_375
          end
        end
        SHX0_2 = math
        SHX0_2 = SHX0_2.max
        SHX1_2 = SHX20_1
        SHX1_2 = SHX1_2 - 1
        SHX2_2 = 0
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        SHX20_1 = SHX0_2
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_375:: outside nested blocks until all 'goto SHX_LABEL_375' can see it
  ::SHX_LABEL_375::
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setInGUI
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = SHX6_1
  if not SHX0_2 then
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.758
    SHX2_2 = 0.525
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.49
    SHX6_2 = "2nd Inventory not available"
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 118
    SHX11_2 = 6
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  else
    SHX0_2 = SHX12_1
    if nil ~= SHX0_2 then
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.805
      SHX2_2 = 0.335
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.366
      SHX6_2 = "Amount"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.721
      SHX2_2 = 0.335
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.366
      SHX6_2 = "Item Name"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.838
      SHX2_2 = 0.335
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.366
      SHX6_2 = "Weight"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = 0.026
      SHX1_2 = 0.026
      SHX2_2 = 0
      SHX3_2 = 0
      SHX4_2 = pairs
      SHX5_2 = SHX6_1
      SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
      for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
        SHX10_2 = table
        SHX10_2 = SHX10_2.unpack
        SHX11_2 = SHX9_2
        SHX10_2, SHX11_2, SHX12_2 = SHX10_2(SHX11_2)
        SHX13_2 = SHX11_2 * SHX12_2
        SHX3_2 = SHX3_2 + SHX13_2
      end
      SHX4_2 = SHX53_1
      SHX5_2 = SHX6_1
      SHX6_2 = SHX21_1
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      SHX5_2 = #SHX4_2
      if 0 == SHX5_2 then
        SHX5_2 = 0
        SHX21_1 = SHX5_2
      end
      SHX5_2 = pairs
      SHX6_2 = SHX4_2
      SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
      for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
        SHX11_2 = SHX10_2.title
        SHX12_2 = SHX10_2.value
        SHX13_2 = table
        SHX13_2 = SHX13_2.unpack
        SHX14_2 = SHX12_2
        SHX13_2, SHX14_2, SHX15_2 = SHX13_2(SHX14_2)
        SHX16_2 = DrawAdvancedText
        SHX17_2 = 0.721
        SHX18_2 = SHX2_2 * SHX1_2
        SHX18_2 = 0.36 + SHX18_2
        SHX19_2 = 0.005
        SHX20_2 = 0.0028
        SHX21_2 = 0.366
        SHX22_2 = SHX13_2
        SHX23_2 = 255
        SHX24_2 = 255
        SHX25_2 = 255
        SHX26_2 = 255
        SHX27_2 = 4
        SHX28_2 = 0
        SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
        SHX16_2 = DrawAdvancedText
        SHX17_2 = 0.838
        SHX18_2 = SHX2_2 * SHX1_2
        SHX18_2 = 0.36 + SHX18_2
        SHX19_2 = 0.005
        SHX20_2 = 0.0028
        SHX21_2 = 0.366
        SHX22_2 = tostring
        SHX23_2 = SHX15_2 * SHX14_2
        SHX22_2 = SHX22_2(SHX23_2)
        SHX23_2 = "kg"
        SHX22_2 = SHX22_2 .. SHX23_2
        SHX23_2 = 255
        SHX24_2 = 255
        SHX25_2 = 255
        SHX26_2 = 255
        SHX27_2 = 4
        SHX28_2 = 0
        SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
        SHX16_2 = DrawAdvancedText
        SHX17_2 = 0.805
        SHX18_2 = SHX2_2 * SHX1_2
        SHX18_2 = 0.36 + SHX18_2
        SHX19_2 = 0.005
        SHX20_2 = 0.0028
        SHX21_2 = 0.366
        SHX22_2 = SHX52_1
        SHX23_2 = SHX13_2
        SHX24_2 = SHX14_2
        SHX22_2 = SHX22_2(SHX23_2, SHX24_2)
        SHX23_2 = 255
        SHX24_2 = 255
        SHX25_2 = 255
        SHX26_2 = 255
        SHX27_2 = 4
        SHX28_2 = 0
        SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
        SHX16_2 = CursorInArea
        SHX17_2 = 0.5513
        SHX18_2 = 0.7584
        SHX19_2 = SHX2_2 * SHX1_2
        SHX19_2 = 0.3435 + SHX19_2
        SHX20_2 = SHX2_2 * SHX1_2
        SHX20_2 = 0.369 + SHX20_2
        SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2)
        if SHX16_2 then
          SHX16_2 = DrawRect
          SHX17_2 = 0.659
          SHX18_2 = SHX2_2 + 1
          SHX18_2 = SHX0_2 * SHX18_2
          SHX18_2 = 0.331 + SHX18_2
          SHX19_2 = 0.215
          SHX20_2 = 0.026
          SHX21_2 = 0
          SHX22_2 = 168
          SHX23_2 = 255
          SHX24_2 = 150
          SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
          SHX16_2 = IsControlJustPressed
          SHX17_2 = 1
          SHX18_2 = 329
          SHX16_2 = SHX16_2(SHX17_2, SHX18_2)
          if not SHX16_2 then
            SHX16_2 = IsDisabledControlJustPressed
            SHX17_2 = 1
            SHX18_2 = 329
            SHX16_2 = SHX16_2(SHX17_2, SHX18_2)
          end
          if SHX16_2 then
            SHX16_2 = PlaySound
            SHX17_2 = -1
            SHX18_2 = "SELECT"
            SHX19_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            SHX20_2 = false
            SHX21_2 = 0
            SHX22_2 = true
            SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
            SHX16_2 = SHX22_1
            if not SHX16_2 then
              SHX26_1 = SHX11_2
              SHX16_2 = false
              SHX25_1 = SHX16_2
              SHX28_1 = SHX15_2
              SHX16_2 = true
              SHX22_1 = SHX16_2
              SHX16_2 = Citizen
              SHX16_2 = SHX16_2.CreateThread
              function SHX17_2()
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX0_3, SHX1_3
                SHX0_3 = Wait
                SHX1_3 = 250
                SHX0_3(SHX1_3)
                SHX0_3 = false
                SHX22_1 = SHX0_3
              end
              SHX16_2(SHX17_2)
            end
          end
        else
          SHX16_2 = SHX26_1
          if SHX11_2 == SHX16_2 then
            SHX16_2 = DrawRect
            SHX17_2 = 0.659
            SHX18_2 = SHX2_2 + 1
            SHX18_2 = SHX0_2 * SHX18_2
            SHX18_2 = 0.331 + SHX18_2
            SHX19_2 = 0.215
            SHX20_2 = 0.026
            SHX21_2 = 0
            SHX22_2 = 168
            SHX23_2 = 255
            SHX24_2 = 150
            SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
          end
        end
        SHX2_2 = SHX2_2 + 1
      end
      SHX5_2 = SHX24_1
      SHX5_2 = SHX3_2 / SHX5_2
      SHX6_2 = 0.5
      if SHX5_2 > SHX6_2 then
        SHX5_2 = SHX24_1
        SHX5_2 = SHX3_2 / SHX5_2
        SHX6_2 = 0.9
        if SHX5_2 > SHX6_2 then
          SHX5_2 = DrawAdvancedText
          SHX6_2 = 0.833
          SHX7_2 = 0.307
          SHX8_2 = 0.005
          SHX9_2 = 0.0028
          SHX10_2 = 0.366
          SHX11_2 = "Weight: "
          SHX12_2 = SHX3_2
          SHX13_2 = "/"
          SHX14_2 = SHX24_1
          SHX15_2 = "kg"
          SHX11_2 = SHX11_2 .. SHX12_2 .. SHX13_2 .. SHX14_2 .. SHX15_2
          SHX12_2 = 255
          SHX13_2 = 50
          SHX14_2 = 0
          SHX15_2 = 255
          SHX16_2 = 4
          SHX17_2 = 0
          SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
        else
          SHX5_2 = DrawAdvancedText
          SHX6_2 = 0.833
          SHX7_2 = 0.307
          SHX8_2 = 0.005
          SHX9_2 = 0.0028
          SHX10_2 = 0.366
          SHX11_2 = "Weight: "
          SHX12_2 = SHX3_2
          SHX13_2 = "/"
          SHX14_2 = SHX24_1
          SHX15_2 = "kg"
          SHX11_2 = SHX11_2 .. SHX12_2 .. SHX13_2 .. SHX14_2 .. SHX15_2
          SHX12_2 = 255
          SHX13_2 = 165
          SHX14_2 = 0
          SHX15_2 = 255
          SHX16_2 = 4
          SHX17_2 = 0
          SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
        end
      else
        SHX5_2 = DrawAdvancedText
        SHX6_2 = 0.833
        SHX7_2 = 0.307
        SHX8_2 = 0.005
        SHX9_2 = 0.0028
        SHX10_2 = 0.366
        SHX11_2 = "Weight: "
        SHX12_2 = SHX3_2
        SHX13_2 = "/"
        SHX14_2 = SHX24_1
        SHX15_2 = "kg"
        SHX11_2 = SHX11_2 .. SHX12_2 .. SHX13_2 .. SHX14_2 .. SHX15_2
        SHX12_2 = 255
        SHX13_2 = 255
        SHX14_2 = 153
        SHX15_2 = 255
        SHX16_2 = 4
        SHX17_2 = 0
        SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      end
      SHX5_2 = table
      SHX5_2 = SHX5_2.count
      SHX6_2 = SHX4_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 > 0 then
        SHX5_2 = DrawAdvancedText
        SHX6_2 = 0.6165
        SHX7_2 = 0.2885
        SHX8_2 = 0.06
        SHX9_2 = 0.022
        SHX10_2 = 0.32
        SHX11_2 = "Loot All"
        SHX12_2 = 255
        SHX13_2 = 255
        SHX14_2 = 255
        SHX15_2 = 255
        SHX16_2 = 4
        SHX17_2 = 0
        SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
        SHX5_2 = CursorInAreaRect
        SHX6_2 = 0.5765
        SHX7_2 = 0.302
        SHX8_2 = 0.05
        SHX9_2 = 0.022
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        if SHX5_2 then
          SHX5_2 = DrawRect
          SHX6_2 = 0.5765
          SHX7_2 = 0.302
          SHX8_2 = 0.05
          SHX9_2 = 0.022
          SHX10_2 = 0
          SHX11_2 = 168
          SHX12_2 = 255
          SHX13_2 = 150
          SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
          SHX5_2 = IsControlJustPressed
          SHX6_2 = 1
          SHX7_2 = 329
          SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
          if not SHX5_2 then
            SHX5_2 = IsDisabledControlJustPressed
            SHX6_2 = 1
            SHX7_2 = 329
            SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
          end
          if SHX5_2 then
            SHX5_2 = PlaySound
            SHX6_2 = -1
            SHX7_2 = "SELECT"
            SHX8_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            SHX9_2 = false
            SHX10_2 = 0
            SHX11_2 = true
            SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
            SHX5_2 = Citizen
            SHX5_2 = SHX5_2.CreateThread
            SHX6_2 = SHX47_1
            SHX5_2(SHX6_2)
          end
        else
          SHX5_2 = DrawRect
          SHX6_2 = 0.5765
          SHX7_2 = 0.302
          SHX8_2 = 0.05
          SHX9_2 = 0.022
          SHX10_2 = 0
          SHX11_2 = 0
          SHX12_2 = 0
          SHX13_2 = 150
          SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        end
      end
      SHX5_2 = SHX5_1
      if SHX5_2 then
        SHX5_2 = table
        SHX5_2 = SHX5_2.count
        SHX6_2 = SHX5_1
        SHX5_2 = SHX5_2(SHX6_2)
        if SHX5_2 > 0 then
          SHX5_2 = SHX6_1
          if SHX5_2 then
            SHX5_2 = DrawAdvancedText
            SHX6_2 = 0.3865
            SHX7_2 = 0.2885
            SHX8_2 = 0.06
            SHX9_2 = 0.022
            SHX10_2 = 0.32
            SHX11_2 = "Transfer All"
            SHX12_2 = 255
            SHX13_2 = 255
            SHX14_2 = 255
            SHX15_2 = 255
            SHX16_2 = 4
            SHX17_2 = 0
            SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
            SHX5_2 = CursorInAreaRect
            SHX6_2 = 0.34650000000000003
            SHX7_2 = 0.302
            SHX8_2 = 0.05
            SHX9_2 = 0.022
            SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
            if SHX5_2 then
              SHX5_2 = DrawRect
              SHX6_2 = 0.34650000000000003
              SHX7_2 = 0.302
              SHX8_2 = 0.05
              SHX9_2 = 0.022
              SHX10_2 = 0
              SHX11_2 = 168
              SHX12_2 = 255
              SHX13_2 = 150
              SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
              SHX5_2 = IsControlJustPressed
              SHX6_2 = 1
              SHX7_2 = 329
              SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
              if not SHX5_2 then
                SHX5_2 = IsDisabledControlJustPressed
                SHX6_2 = 1
                SHX7_2 = 329
                SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
              end
              if SHX5_2 then
                SHX5_2 = PlaySound
                SHX6_2 = -1
                SHX7_2 = "SELECT"
                SHX8_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
                SHX9_2 = false
                SHX10_2 = 0
                SHX11_2 = true
                SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
                SHX5_2 = CMG
                SHX5_2 = SHX5_2.getPlayerCombatTimer
                SHX5_2 = SHX5_2()
                if SHX5_2 > 0 then
                  SHX5_2 = notify
                  SHX6_2 = "~r~You can not store items whilst in combat."
                  SHX5_2(SHX6_2)
                else
                  SHX5_2 = Citizen
                  SHX5_2 = SHX5_2.CreateThread
                  SHX6_2 = SHX49_1
                  SHX5_2(SHX6_2)
                end
              end
            else
              SHX5_2 = DrawRect
              SHX6_2 = 0.34650000000000003
              SHX7_2 = 0.302
              SHX8_2 = 0.05
              SHX9_2 = 0.022
              SHX10_2 = 0
              SHX11_2 = 0
              SHX12_2 = 0
              SHX13_2 = 150
              SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
            end
          end
        end
      end
      SHX5_2 = table
      SHX5_2 = SHX5_2.count
      SHX6_2 = SHX6_1
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = SHX19_1
      if SHX5_2 > SHX6_2 then
        SHX5_2 = DrawAdvancedText
        SHX6_2 = 0.847
        SHX7_2 = 0.742
        SHX8_2 = 0.005
        SHX9_2 = 8.0E-4
        SHX10_2 = 0.4
        SHX11_2 = "Next"
        SHX12_2 = 255
        SHX13_2 = 255
        SHX14_2 = 255
        SHX15_2 = 255
        SHX16_2 = 6
        SHX17_2 = 0
        SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
        SHX5_2 = CursorInArea
        SHX6_2 = 0.742
        SHX7_2 = 0.755
        SHX8_2 = 0.72
        SHX9_2 = 0.76
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        if SHX5_2 then
          SHX5_2 = IsControlJustPressed
          SHX6_2 = 1
          SHX7_2 = 329
          SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
          if not SHX5_2 then
            SHX5_2 = IsDisabledControlJustPressed
            SHX6_2 = 1
            SHX7_2 = 329
            SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
            if not SHX5_2 then
              goto SHX_LABEL_916
            end
          end
          SHX5_2 = math
          SHX5_2 = SHX5_2.floor
          SHX6_2 = table
          SHX6_2 = SHX6_2.count
          SHX7_2 = SHX6_1
          SHX6_2 = SHX6_2(SHX7_2)
          SHX7_2 = SHX19_1
          SHX6_2 = SHX6_2 / SHX7_2
          SHX5_2 = SHX5_2(SHX6_2)
          SHX6_2 = math
          SHX6_2 = SHX6_2.min
          SHX7_2 = SHX21_1
          SHX7_2 = SHX7_2 + 1
          SHX8_2 = SHX5_2
          SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
          SHX21_1 = SHX6_2
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_916:: outside nested blocks until all 'goto SHX_LABEL_916' can see it
        ::SHX_LABEL_916::
        SHX5_2 = DrawAdvancedText
        SHX6_2 = 0.668
        SHX7_2 = 0.742
        SHX8_2 = 0.005
        SHX9_2 = 8.0E-4
        SHX10_2 = 0.4
        SHX11_2 = "Previous"
        SHX12_2 = 255
        SHX13_2 = 255
        SHX14_2 = 255
        SHX15_2 = 255
        SHX16_2 = 6
        SHX17_2 = 0
        SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
        SHX5_2 = CursorInArea
        SHX6_2 = 0.557
        SHX7_2 = 0.58
        SHX8_2 = 0.72
        SHX9_2 = 0.76
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        if SHX5_2 then
          SHX5_2 = IsControlJustPressed
          SHX6_2 = 1
          SHX7_2 = 329
          SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
          if not SHX5_2 then
            SHX5_2 = IsDisabledControlJustPressed
            SHX6_2 = 1
            SHX7_2 = 329
            SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
            if not SHX5_2 then
              goto SHX_LABEL_958
            end
          end
          SHX5_2 = math
          SHX5_2 = SHX5_2.max
          SHX6_2 = SHX21_1
          SHX6_2 = SHX6_2 - 1
          SHX7_2 = 0
          SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
          SHX21_1 = SHX5_2
        end
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_958:: outside nested blocks until all 'goto SHX_LABEL_958' can see it
  ::SHX_LABEL_958::
  SHX0_2 = SHX50_1
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = CursorInArea
    SHX1_2 = 0.4598
    SHX2_2 = 0.498
    SHX3_2 = 0.3283
    SHX4_2 = 0.3848
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
    if SHX0_2 then
      SHX0_2 = DrawRect
      SHX1_2 = 0.48
      SHX2_2 = 0.36
      SHX3_2 = 0.0375
      SHX4_2 = 0.056
      SHX5_2 = 0
      SHX6_2 = 168
      SHX7_2 = 255
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 1
      SHX2_2 = 329
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if not SHX0_2 then
        SHX0_2 = IsDisabledControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      end
      if SHX0_2 then
        SHX0_2 = PlaySound
        SHX1_2 = -1
        SHX2_2 = "SELECT"
        SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        SHX4_2 = false
        SHX5_2 = 0
        SHX6_2 = true
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        SHX0_2 = SHX22_1
        if not SHX0_2 then
          SHX0_2 = SHX30_1
          if not SHX0_2 then
            SHX0_2 = tonumber
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.GetRageInputText
            SHX2_2 = "Enter amount: (Blank to cancel)"
            SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2 = SHX1_2(SHX2_2)
            SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
            if not SHX0_2 then
              SHX0_2 = 1
            end
            SHX1_2 = SHX25_1
            if SHX1_2 then
              SHX1_2 = CMGclient
              SHX1_2 = SHX1_2.useInventoryItem
              SHX2_2 = {}
              SHX3_2 = SHX25_1
              SHX4_2 = SHX0_2
              SHX2_2[1] = SHX3_2
              SHX2_2[2] = SHX4_2
              SHX1_2(SHX2_2)
            else
              SHX1_2 = SHX26_1
              if SHX1_2 then
                SHX1_2 = SHX12_1
                if nil ~= SHX1_2 then
                  SHX1_2 = SHX6_1
                  if SHX1_2 then
                    SHX1_2 = CMGclient
                    SHX1_2 = SHX1_2.useInventoryItem
                    SHX2_2 = {}
                    SHX3_2 = SHX26_1
                    SHX4_2 = SHX0_2
                    SHX2_2[1] = SHX3_2
                    SHX2_2[2] = SHX4_2
                    SHX1_2(SHX2_2)
                end
              end
              else
                SHX1_2 = tCMG
                SHX1_2 = SHX1_2.notify
                SHX2_2 = "~r~No item selected!"
                SHX1_2(SHX2_2)
              end
            end
          end
        end
        SHX0_2 = true
        SHX22_1 = SHX0_2
        SHX0_2 = Citizen
        SHX0_2 = SHX0_2.CreateThread
        function SHX1_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3
          SHX0_3 = Wait
          SHX1_3 = 250
          SHX0_3(SHX1_3)
          SHX0_3 = false
          SHX22_1 = SHX0_3
        end
        SHX0_2(SHX1_2)
      end
    else
      SHX0_2 = DrawRect
      SHX1_2 = 0.48
      SHX2_2 = 0.36
      SHX3_2 = 0.0375
      SHX4_2 = 0.056
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    end
    SHX0_2 = CursorInArea
    SHX1_2 = 0.5004
    SHX2_2 = 0.5333
    SHX3_2 = 0.3283
    SHX4_2 = 0.3848
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
    if SHX0_2 then
      SHX0_2 = DrawRect
      SHX1_2 = 0.52
      SHX2_2 = 0.36
      SHX3_2 = 0.0375
      SHX4_2 = 0.056
      SHX5_2 = 0
      SHX6_2 = 168
      SHX7_2 = 255
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 1
      SHX2_2 = 329
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if not SHX0_2 then
        SHX0_2 = IsDisabledControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      end
      if SHX0_2 then
        SHX0_2 = PlaySound
        SHX1_2 = -1
        SHX2_2 = "SELECT"
        SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        SHX4_2 = false
        SHX5_2 = 0
        SHX6_2 = true
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        SHX0_2 = SHX22_1
        if not SHX0_2 then
          SHX0_2 = SHX30_1
          if not SHX0_2 then
            SHX0_2 = SHX25_1
            if SHX0_2 then
              SHX0_2 = CMGclient
              SHX0_2 = SHX0_2.useInventoryItem
              SHX1_2 = {}
              SHX2_2 = SHX25_1
              SHX3_2 = -1
              SHX1_2[1] = SHX2_2
              SHX1_2[2] = SHX3_2
              SHX0_2(SHX1_2)
            else
              SHX0_2 = SHX26_1
              if SHX0_2 then
                SHX0_2 = SHX12_1
                if nil ~= SHX0_2 then
                  SHX0_2 = SHX6_1
                  if SHX0_2 then
                    SHX0_2 = CMGclient
                    SHX0_2 = SHX0_2.useInventoryItem
                    SHX1_2 = {}
                    SHX2_2 = SHX26_1
                    SHX3_2 = -1
                    SHX1_2[1] = SHX2_2
                    SHX1_2[2] = SHX3_2
                    SHX0_2(SHX1_2)
                end
              end
              else
                SHX0_2 = tCMG
                SHX0_2 = SHX0_2.notify
                SHX1_2 = "~r~No item selected!"
                SHX0_2(SHX1_2)
              end
            end
          end
        end
        SHX0_2 = true
        SHX22_1 = SHX0_2
        SHX0_2 = Citizen
        SHX0_2 = SHX0_2.CreateThread
        function SHX1_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3
          SHX0_3 = Wait
          SHX1_3 = 250
          SHX0_3(SHX1_3)
          SHX0_3 = false
          SHX22_1 = SHX0_3
        end
        SHX0_2(SHX1_2)
      end
    else
      SHX0_2 = DrawRect
      SHX1_2 = 0.52
      SHX2_2 = 0.36
      SHX3_2 = 0.0375
      SHX4_2 = 0.056
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    end
  else
    SHX0_2 = CursorInArea
    SHX1_2 = 0.4598
    SHX2_2 = 0.5333
    SHX3_2 = 0.3283
    SHX4_2 = 0.3848
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
    if SHX0_2 then
      SHX0_2 = DrawRect
      SHX1_2 = 0.5
      SHX2_2 = 0.36
      SHX3_2 = 0.075
      SHX4_2 = 0.056
      SHX5_2 = 0
      SHX6_2 = 168
      SHX7_2 = 255
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 1
      SHX2_2 = 329
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if not SHX0_2 then
        SHX0_2 = IsDisabledControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      end
      if SHX0_2 then
        SHX0_2 = PlaySound
        SHX1_2 = -1
        SHX2_2 = "SELECT"
        SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        SHX4_2 = false
        SHX5_2 = 0
        SHX6_2 = true
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        SHX0_2 = SHX22_1
        if not SHX0_2 then
          SHX0_2 = SHX30_1
          if not SHX0_2 then
            SHX0_2 = SHX25_1
            if SHX0_2 then
              SHX0_2 = CMGclient
              SHX0_2 = SHX0_2.useInventoryItem
              SHX1_2 = {}
              SHX2_2 = SHX25_1
              SHX3_2 = 1
              SHX1_2[1] = SHX2_2
              SHX1_2[2] = SHX3_2
              SHX0_2(SHX1_2)
            else
              SHX0_2 = SHX26_1
              if SHX0_2 then
                SHX0_2 = SHX12_1
                if nil ~= SHX0_2 then
                  SHX0_2 = SHX6_1
                  if SHX0_2 then
                    SHX0_2 = CMGclient
                    SHX0_2 = SHX0_2.useInventoryItem
                    SHX1_2 = {}
                    SHX2_2 = SHX26_1
                    SHX3_2 = 1
                    SHX1_2[1] = SHX2_2
                    SHX1_2[2] = SHX3_2
                    SHX0_2(SHX1_2)
                end
              end
              else
                SHX0_2 = tCMG
                SHX0_2 = SHX0_2.notify
                SHX1_2 = "~r~No item selected!"
                SHX0_2(SHX1_2)
              end
            end
          end
        end
        SHX0_2 = true
        SHX22_1 = SHX0_2
        SHX0_2 = Citizen
        SHX0_2 = SHX0_2.CreateThread
        function SHX1_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3
          SHX0_3 = Wait
          SHX1_3 = 250
          SHX0_3(SHX1_3)
          SHX0_3 = false
          SHX22_1 = SHX0_3
        end
        SHX0_2(SHX1_2)
      end
    else
      SHX0_2 = DrawRect
      SHX1_2 = 0.5
      SHX2_2 = 0.36
      SHX3_2 = 0.075
      SHX4_2 = 0.056
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    end
  end
  SHX0_2 = CursorInArea
  SHX1_2 = 0.4598
  SHX2_2 = 0.5333
  SHX3_2 = 0.418
  SHX4_2 = 0.4709
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  if SHX0_2 then
    SHX0_2 = DrawRect
    SHX1_2 = 0.5
    SHX2_2 = 0.45
    SHX3_2 = 0.075
    SHX4_2 = 0.056
    SHX5_2 = 0
    SHX6_2 = 168
    SHX7_2 = 255
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 1
    SHX2_2 = 329
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if not SHX0_2 then
      SHX0_2 = IsDisabledControlJustPressed
      SHX1_2 = 1
      SHX2_2 = 329
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    end
    if SHX0_2 then
      SHX0_2 = PlaySound
      SHX1_2 = -1
      SHX2_2 = "SELECT"
      SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      SHX4_2 = false
      SHX5_2 = 0
      SHX6_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX0_2 = SHX22_1
      if not SHX0_2 then
        SHX0_2 = SHX6_1
        if SHX0_2 then
          SHX0_2 = SHX25_1
          if SHX0_2 then
            SHX0_2 = SHX12_1
            if nil ~= SHX0_2 then
              SHX0_2 = SHX6_1
              if SHX0_2 then
                SHX0_2 = CMG
                SHX0_2 = SHX0_2.getPlayerCombatTimer
                SHX0_2 = SHX0_2()
                if SHX0_2 > 0 then
                  SHX0_2 = notify
                  SHX1_2 = "~r~You can not store items whilst in combat."
                  SHX0_2(SHX1_2)
                else
                  SHX0_2 = SHX25_1
                  if "dirtycash" == SHX0_2 then
                    SHX0_2 = CMG
                    SHX0_2 = SHX0_2.isPlayerInRedZone
                    SHX0_2 = SHX0_2()
                    if SHX0_2 then
                      SHX0_2 = notify
                      SHX1_2 = "~r~You can not store dirty cash inside a redzone."
                      SHX0_2(SHX1_2)
                  end
                  else
                    SHX0_2 = SHX48_1
                    SHX1_2 = SHX25_1
                    SHX2_2 = 1
                    SHX0_2(SHX1_2, SHX2_2)
                  end
                end
            end
          end
          else
            SHX0_2 = SHX26_1
            if SHX0_2 then
              SHX0_2 = SHX12_1
              if nil ~= SHX0_2 then
                SHX0_2 = SHX6_1
                if SHX0_2 then
                  SHX0_2 = SHX46_1
                  SHX1_2 = SHX26_1
                  SHX2_2 = 1
                  SHX0_2(SHX1_2, SHX2_2)
              end
            end
            else
              SHX0_2 = tCMG
              SHX0_2 = SHX0_2.notify
              SHX1_2 = "~r~No item selected!"
              SHX0_2(SHX1_2)
            end
          end
        else
          SHX0_2 = tCMG
          SHX0_2 = SHX0_2.notify
          SHX1_2 = "~r~No second inventory available!"
          SHX0_2(SHX1_2)
        end
      end
      SHX0_2 = true
      SHX22_1 = SHX0_2
      SHX0_2 = Citizen
      SHX0_2 = SHX0_2.CreateThread
      function SHX1_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
        SHX0_3 = Wait
        SHX1_3 = 250
        SHX0_3(SHX1_3)
        SHX0_3 = false
        SHX22_1 = SHX0_3
      end
      SHX0_2(SHX1_2)
    end
  else
    SHX0_2 = DrawRect
    SHX1_2 = 0.5
    SHX2_2 = 0.45
    SHX3_2 = 0.075
    SHX4_2 = 0.056
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  end
  SHX0_2 = CursorInArea
  SHX1_2 = 0.4598
  SHX2_2 = 0.498
  SHX3_2 = 0.5042
  SHX4_2 = 0.5666
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  if SHX0_2 then
    SHX0_2 = DrawRect
    SHX1_2 = 0.48
    SHX2_2 = 0.54
    SHX3_2 = 0.0375
    SHX4_2 = 0.056
    SHX5_2 = 0
    SHX6_2 = 168
    SHX7_2 = 255
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 1
    SHX2_2 = 329
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if not SHX0_2 then
      SHX0_2 = IsDisabledControlJustPressed
      SHX1_2 = 1
      SHX2_2 = 329
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    end
    if SHX0_2 then
      SHX0_2 = PlaySound
      SHX1_2 = -1
      SHX2_2 = "SELECT"
      SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      SHX4_2 = false
      SHX5_2 = 0
      SHX6_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX0_2 = tonumber
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.GetRageInputText
      SHX2_2 = "Enter amount: (Blank to cancel)"
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2 = SHX1_2(SHX2_2)
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
      if not SHX0_2 then
        SHX0_2 = 1
      end
      SHX1_2 = SHX22_1
      if not SHX1_2 then
        SHX1_2 = SHX6_1
        if SHX1_2 then
          SHX1_2 = SHX25_1
          if SHX1_2 then
            SHX1_2 = SHX12_1
            if nil ~= SHX1_2 then
              SHX1_2 = SHX6_1
              if SHX1_2 then
                SHX1_2 = CMG
                SHX1_2 = SHX1_2.getPlayerCombatTimer
                SHX1_2 = SHX1_2()
                if SHX1_2 > 0 then
                  SHX1_2 = notify
                  SHX2_2 = "~r~You can not store items whilst in combat."
                  SHX1_2(SHX2_2)
                else
                  SHX1_2 = SHX25_1
                  if "dirtycash" == SHX1_2 then
                    SHX1_2 = CMG
                    SHX1_2 = SHX1_2.isPlayerInRedZone
                    SHX1_2 = SHX1_2()
                    if SHX1_2 then
                      SHX1_2 = notify
                      SHX2_2 = "~r~You can not store dirty cash inside a redzone."
                      SHX1_2(SHX2_2)
                  end
                  else
                    SHX1_2 = SHX48_1
                    SHX2_2 = SHX25_1
                    SHX3_2 = SHX0_2
                    SHX1_2(SHX2_2, SHX3_2)
                  end
                end
            end
          end
          else
            SHX1_2 = SHX26_1
            if SHX1_2 then
              SHX1_2 = SHX12_1
              if nil ~= SHX1_2 then
                SHX1_2 = SHX6_1
                if SHX1_2 then
                  SHX1_2 = SHX46_1
                  SHX2_2 = SHX26_1
                  SHX3_2 = SHX0_2
                  SHX1_2(SHX2_2, SHX3_2)
              end
            end
            else
              SHX1_2 = tCMG
              SHX1_2 = SHX1_2.notify
              SHX2_2 = "~r~No item selected!"
              SHX1_2(SHX2_2)
            end
          end
        else
          SHX1_2 = tCMG
          SHX1_2 = SHX1_2.notify
          SHX2_2 = "~r~No second inventory available!"
          SHX1_2(SHX2_2)
        end
      end
      SHX1_2 = true
      SHX22_1 = SHX1_2
      SHX1_2 = Citizen
      SHX1_2 = SHX1_2.CreateThread
      function SHX2_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
        SHX0_3 = Wait
        SHX1_3 = 250
        SHX0_3(SHX1_3)
        SHX0_3 = false
        SHX22_1 = SHX0_3
      end
      SHX1_2(SHX2_2)
    end
  else
    SHX0_2 = DrawRect
    SHX1_2 = 0.48
    SHX2_2 = 0.54
    SHX3_2 = 0.0375
    SHX4_2 = 0.056
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  end
  SHX0_2 = CursorInArea
  SHX1_2 = 0.5004
  SHX2_2 = 0.5333
  SHX3_2 = 0.5042
  SHX4_2 = 0.5666
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  if SHX0_2 then
    SHX0_2 = DrawRect
    SHX1_2 = 0.52
    SHX2_2 = 0.54
    SHX3_2 = 0.0375
    SHX4_2 = 0.056
    SHX5_2 = 0
    SHX6_2 = 168
    SHX7_2 = 255
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 1
    SHX2_2 = 329
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if not SHX0_2 then
      SHX0_2 = IsDisabledControlJustPressed
      SHX1_2 = 1
      SHX2_2 = 329
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    end
    if SHX0_2 then
      SHX0_2 = PlaySound
      SHX1_2 = -1
      SHX2_2 = "SELECT"
      SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      SHX4_2 = false
      SHX5_2 = 0
      SHX6_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX0_2 = SHX22_1
      if not SHX0_2 then
        SHX0_2 = SHX6_1
        if SHX0_2 then
          SHX0_2 = SHX25_1
          if SHX0_2 then
            SHX0_2 = SHX12_1
            if nil ~= SHX0_2 then
              SHX0_2 = SHX6_1
              if SHX0_2 then
                SHX0_2 = CMG
                SHX0_2 = SHX0_2.getSpaceInSecondChest
                SHX0_2 = SHX0_2()
                SHX1_2 = SHX54_1
                SHX1_2 = SHX1_2()
                SHX2_2 = SHX54_1
                SHX2_2 = SHX2_2()
                SHX3_2 = SHX28_1
                SHX2_2 = SHX2_2 * SHX3_2
                if SHX0_2 < SHX2_2 then
                  SHX2_2 = math
                  SHX2_2 = SHX2_2.floor
                  SHX3_2 = SHX28_1
                  SHX3_2 = SHX0_2 / SHX3_2
                  SHX2_2 = SHX2_2(SHX3_2)
                  SHX1_2 = SHX2_2
                end
                if SHX1_2 > 0 then
                  SHX2_2 = CMG
                  SHX2_2 = SHX2_2.getPlayerCombatTimer
                  SHX2_2 = SHX2_2()
                  if SHX2_2 > 0 then
                    SHX2_2 = notify
                    SHX3_2 = "~r~You can not store items whilst in combat."
                    SHX2_2(SHX3_2)
                  else
                    SHX2_2 = SHX25_1
                    if "dirtycash" == SHX2_2 then
                      SHX2_2 = CMG
                      SHX2_2 = SHX2_2.isPlayerInRedZone
                      SHX2_2 = SHX2_2()
                      if SHX2_2 then
                        SHX2_2 = notify
                        SHX3_2 = "~r~You can not store dirty cash inside a redzone."
                        SHX2_2(SHX3_2)
                    end
                    else
                      SHX2_2 = SHX48_1
                      SHX3_2 = SHX25_1
                      SHX4_2 = SHX1_2
                      SHX2_2(SHX3_2, SHX4_2)
                    end
                  end
                else
                  SHX2_2 = tCMG
                  SHX2_2 = SHX2_2.notify
                  SHX3_2 = "~r~Not enough space in secondary chest!"
                  SHX2_2(SHX3_2)
                end
            end
          end
          else
            SHX0_2 = SHX26_1
            if SHX0_2 then
              SHX0_2 = SHX12_1
              if nil ~= SHX0_2 then
                SHX0_2 = SHX6_1
                if SHX0_2 then
                  SHX0_2 = CMG
                  SHX0_2 = SHX0_2.getSpaceInFirstChest
                  SHX0_2 = SHX0_2()
                  SHX1_2 = SHX54_1
                  SHX1_2 = SHX1_2()
                  SHX2_2 = SHX54_1
                  SHX2_2 = SHX2_2()
                  SHX3_2 = SHX28_1
                  SHX2_2 = SHX2_2 * SHX3_2
                  if SHX0_2 < SHX2_2 then
                    SHX2_2 = math
                    SHX2_2 = SHX2_2.floor
                    SHX3_2 = SHX28_1
                    SHX3_2 = SHX0_2 / SHX3_2
                    SHX2_2 = SHX2_2(SHX3_2)
                    SHX1_2 = SHX2_2
                  end
                  if SHX1_2 > 0 then
                    SHX2_2 = SHX46_1
                    SHX3_2 = SHX26_1
                    SHX4_2 = SHX1_2
                    SHX2_2(SHX3_2, SHX4_2)
                  else
                    SHX2_2 = tCMG
                    SHX2_2 = SHX2_2.notify
                    SHX3_2 = "~r~Not enough space in secondary chest!"
                    SHX2_2(SHX3_2)
                  end
              end
            end
            else
              SHX0_2 = tCMG
              SHX0_2 = SHX0_2.notify
              SHX1_2 = "~r~No item selected!"
              SHX0_2(SHX1_2)
            end
          end
        else
          SHX0_2 = tCMG
          SHX0_2 = SHX0_2.notify
          SHX1_2 = "~r~No second inventory available!"
          SHX0_2(SHX1_2)
        end
      end
      SHX0_2 = true
      SHX22_1 = SHX0_2
      SHX0_2 = Citizen
      SHX0_2 = SHX0_2.CreateThread
      function SHX1_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
        SHX0_3 = Wait
        SHX1_3 = 250
        SHX0_3(SHX1_3)
        SHX0_3 = false
        SHX22_1 = SHX0_3
      end
      SHX0_2(SHX1_2)
    end
  else
    SHX0_2 = DrawRect
    SHX1_2 = 0.52
    SHX2_2 = 0.54
    SHX3_2 = 0.0375
    SHX4_2 = 0.056
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  end
  SHX0_2 = CursorInArea
  SHX1_2 = 0.4598
  SHX2_2 = 0.498
  SHX3_2 = 0.5931
  SHX4_2 = 0.6477
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  if SHX0_2 then
    SHX0_2 = DrawRect
    SHX1_2 = 0.48
    SHX2_2 = 0.63
    SHX3_2 = 0.0375
    SHX4_2 = 0.056
    SHX5_2 = 0
    SHX6_2 = 168
    SHX7_2 = 255
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 1
    SHX2_2 = 329
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if not SHX0_2 then
      SHX0_2 = IsDisabledControlJustPressed
      SHX1_2 = 1
      SHX2_2 = 329
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    end
    if SHX0_2 then
      SHX0_2 = PlaySound
      SHX1_2 = -1
      SHX2_2 = "SELECT"
      SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      SHX4_2 = false
      SHX5_2 = 0
      SHX6_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX0_2 = tonumber
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.GetRageInputText
      SHX2_2 = "Amount to give (max: "
      SHX3_2 = tostring
      SHX4_2 = SHX54_1
      SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2 = SHX4_2()
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
      SHX4_2 = ")"
      SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2 = SHX1_2(SHX2_2)
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
      if not SHX0_2 then
        SHX0_2 = 0
      end
      if SHX0_2 > 0 then
        SHX1_2 = SHX22_1
        if not SHX1_2 then
          SHX1_2 = SHX25_1
          if SHX1_2 then
            SHX1_2 = SHX56_1
            SHX2_2 = SHX25_1
            SHX3_2 = SHX0_2
            SHX1_2(SHX2_2, SHX3_2)
          else
            SHX1_2 = SHX26_1
            if SHX1_2 then
              SHX1_2 = SHX56_1
              SHX2_2 = SHX26_1
              SHX3_2 = SHX0_2
              SHX1_2(SHX2_2, SHX3_2)
            else
              SHX1_2 = tCMG
              SHX1_2 = SHX1_2.notify
              SHX2_2 = "~r~No item selected!"
              SHX1_2(SHX2_2)
            end
          end
        end
      else
        SHX1_2 = notify
        SHX2_2 = "~r~Amount must be at least 1 or more."
        SHX1_2(SHX2_2)
      end
      SHX1_2 = true
      SHX22_1 = SHX1_2
      SHX1_2 = Citizen
      SHX1_2 = SHX1_2.CreateThread
      function SHX2_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
        SHX0_3 = Wait
        SHX1_3 = 250
        SHX0_3(SHX1_3)
        SHX0_3 = false
        SHX22_1 = SHX0_3
      end
      SHX1_2(SHX2_2)
    end
  else
    SHX0_2 = DrawRect
    SHX1_2 = 0.48
    SHX2_2 = 0.63
    SHX3_2 = 0.0375
    SHX4_2 = 0.056
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  end
  SHX0_2 = CursorInArea
  SHX1_2 = 0.5004
  SHX2_2 = 0.5333
  SHX3_2 = 0.5931
  SHX4_2 = 0.6477
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  if SHX0_2 then
    SHX0_2 = DrawRect
    SHX1_2 = 0.52
    SHX2_2 = 0.63
    SHX3_2 = 0.0375
    SHX4_2 = 0.056
    SHX5_2 = 0
    SHX6_2 = 168
    SHX7_2 = 255
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 1
    SHX2_2 = 329
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if not SHX0_2 then
      SHX0_2 = IsDisabledControlJustPressed
      SHX1_2 = 1
      SHX2_2 = 329
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    end
    if SHX0_2 then
      SHX0_2 = PlaySound
      SHX1_2 = -1
      SHX2_2 = "SELECT"
      SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      SHX4_2 = false
      SHX5_2 = 0
      SHX6_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX0_2 = SHX22_1
      if not SHX0_2 then
        SHX0_2 = SHX25_1
        if SHX0_2 then
          SHX0_2 = SHX56_1
          SHX1_2 = SHX25_1
          SHX2_2 = -1
          SHX0_2(SHX1_2, SHX2_2)
        else
          SHX0_2 = SHX26_1
          if SHX0_2 then
            SHX0_2 = SHX56_1
            SHX1_2 = SHX26_1
            SHX2_2 = -1
            SHX0_2(SHX1_2, SHX2_2)
          else
            SHX0_2 = tCMG
            SHX0_2 = SHX0_2.notify
            SHX1_2 = "~r~No item selected!"
            SHX0_2(SHX1_2)
          end
        end
      end
      SHX0_2 = true
      SHX22_1 = SHX0_2
      SHX0_2 = Citizen
      SHX0_2 = SHX0_2.CreateThread
      function SHX1_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
        SHX0_3 = Wait
        SHX1_3 = 250
        SHX0_3(SHX1_3)
        SHX0_3 = false
        SHX22_1 = SHX0_3
      end
      SHX0_2(SHX1_2)
    end
  else
    SHX0_2 = DrawRect
    SHX1_2 = 0.52
    SHX2_2 = 0.63
    SHX3_2 = 0.0375
    SHX4_2 = 0.056
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  end
  SHX0_2 = CursorInArea
  SHX1_2 = 0.4598
  SHX2_2 = 0.5333
  SHX3_2 = 0.6831
  SHX4_2 = 0.7377
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  if SHX0_2 then
    SHX0_2 = DrawRect
    SHX1_2 = 0.5
    SHX2_2 = 0.72
    SHX3_2 = 0.075
    SHX4_2 = 0.056
    SHX5_2 = 0
    SHX6_2 = 168
    SHX7_2 = 255
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 1
    SHX2_2 = 329
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if not SHX0_2 then
      SHX0_2 = IsDisabledControlJustPressed
      SHX1_2 = 1
      SHX2_2 = 329
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    end
    if SHX0_2 then
      SHX0_2 = PlaySound
      SHX1_2 = -1
      SHX2_2 = "SELECT"
      SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      SHX4_2 = false
      SHX5_2 = 0
      SHX6_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX0_2 = SHX22_1
      if not SHX0_2 then
        SHX0_2 = SHX30_1
        if not SHX0_2 then
          SHX0_2 = SHX25_1
          if SHX0_2 then
            SHX0_2 = tonumber
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.GetRageInputText
            SHX2_2 = "Amount to trash (max: "
            SHX3_2 = tostring
            SHX4_2 = SHX54_1
            SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2 = SHX4_2()
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
            SHX4_2 = ")"
            SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2
            SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2 = SHX1_2(SHX2_2)
            SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
            if not SHX0_2 then
              SHX0_2 = 0
            end
            if SHX0_2 > 0 then
              SHX1_2 = CMGclient
              SHX1_2 = SHX1_2.trashItem
              SHX2_2 = {}
              SHX3_2 = SHX25_1
              SHX4_2 = SHX0_2
              SHX2_2[1] = SHX3_2
              SHX2_2[2] = SHX4_2
              SHX1_2(SHX2_2)
            else
              SHX1_2 = notify
              SHX2_2 = "~r~Invalid amount entered"
              SHX1_2(SHX2_2)
            end
          else
            SHX0_2 = SHX26_1
            if SHX0_2 then
              SHX0_2 = tCMG
              SHX0_2 = SHX0_2.notify
              SHX1_2 = "~r~Please move the item to your inventory to trash"
              SHX0_2(SHX1_2)
            else
              SHX0_2 = tCMG
              SHX0_2 = SHX0_2.notify
              SHX1_2 = "~r~No item selected!"
              SHX0_2(SHX1_2)
            end
          end
        end
      end
      SHX0_2 = true
      SHX22_1 = SHX0_2
      SHX0_2 = Citizen
      SHX0_2 = SHX0_2.CreateThread
      function SHX1_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
        SHX0_3 = Wait
        SHX1_3 = 250
        SHX0_3(SHX1_3)
        SHX0_3 = false
        SHX22_1 = SHX0_3
      end
      SHX0_2(SHX1_2)
    end
  else
    SHX0_2 = DrawRect
    SHX1_2 = 0.5
    SHX2_2 = 0.72
    SHX3_2 = 0.075
    SHX4_2 = 0.056
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  end
  SHX0_2 = 0.026
  SHX1_2 = 0.026
  SHX2_2 = 0
  SHX3_2 = 0
  SHX4_2 = SHX5_1
  if SHX4_2 then
    SHX4_2 = pairs
    SHX5_2 = SHX5_1
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
      SHX10_2 = table
      SHX10_2 = SHX10_2.unpack
      SHX11_2 = SHX9_2
      SHX10_2, SHX11_2, SHX12_2 = SHX10_2(SHX11_2)
      SHX13_2 = SHX11_2 * SHX12_2
      SHX3_2 = SHX3_2 + SHX13_2
    end
  end
  SHX4_2 = SHX53_1
  SHX5_2 = SHX5_1
  SHX6_2 = SHX20_1
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = #SHX4_2
  if 0 == SHX5_2 then
    SHX5_2 = 0
    SHX20_1 = SHX5_2
  end
  SHX5_2 = false
  SHX6_2 = pairs
  SHX7_2 = SHX4_2
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    SHX12_2 = SHX11_2.title
    SHX13_2 = SHX11_2.value
    SHX14_2 = table
    SHX14_2 = SHX14_2.unpack
    SHX15_2 = SHX13_2
    SHX14_2, SHX15_2, SHX16_2 = SHX14_2(SHX15_2)
    SHX17_2 = DrawAdvancedText
    SHX18_2 = 0.404
    SHX19_2 = SHX2_2 * SHX1_2
    SHX19_2 = 0.36 + SHX19_2
    SHX20_2 = 0.005
    SHX21_2 = 0.0028
    SHX22_2 = 0.366
    SHX23_2 = SHX14_2
    SHX24_2 = 255
    SHX25_2 = 255
    SHX26_2 = 255
    SHX27_2 = 255
    SHX28_2 = 4
    SHX29_2 = 0
    SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
    SHX17_2 = DrawAdvancedText
    SHX18_2 = 0.521
    SHX19_2 = SHX2_2 * SHX1_2
    SHX19_2 = 0.36 + SHX19_2
    SHX20_2 = 0.005
    SHX21_2 = 0.0028
    SHX22_2 = 0.366
    SHX23_2 = tostring
    SHX24_2 = SHX16_2 * SHX15_2
    SHX23_2 = SHX23_2(SHX24_2)
    SHX24_2 = "kg"
    SHX23_2 = SHX23_2 .. SHX24_2
    SHX24_2 = 255
    SHX25_2 = 255
    SHX26_2 = 255
    SHX27_2 = 255
    SHX28_2 = 4
    SHX29_2 = 0
    SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
    SHX17_2 = DrawAdvancedText
    SHX18_2 = 0.488
    SHX19_2 = SHX2_2 * SHX1_2
    SHX19_2 = 0.36 + SHX19_2
    SHX20_2 = 0.005
    SHX21_2 = 0.0028
    SHX22_2 = 0.366
    SHX23_2 = SHX52_1
    SHX24_2 = SHX14_2
    SHX25_2 = SHX15_2
    SHX23_2 = SHX23_2(SHX24_2, SHX25_2)
    SHX24_2 = 255
    SHX25_2 = 255
    SHX26_2 = 255
    SHX27_2 = 255
    SHX28_2 = 4
    SHX29_2 = 0
    SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
    SHX17_2 = CursorInArea
    SHX18_2 = 0.2343
    SHX19_2 = 0.4484
    SHX20_2 = SHX2_2 * SHX1_2
    SHX20_2 = 0.3435 + SHX20_2
    SHX21_2 = SHX2_2 * SHX1_2
    SHX21_2 = 0.369 + SHX21_2
    SHX17_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    if SHX17_2 then
      SHX17_2 = DrawRect
      SHX18_2 = 0.342
      SHX19_2 = SHX2_2 + 1
      SHX19_2 = SHX0_2 * SHX19_2
      SHX19_2 = 0.331 + SHX19_2
      SHX20_2 = 0.215
      SHX21_2 = 0.026
      SHX22_2 = 0
      SHX23_2 = 168
      SHX24_2 = 255
      SHX25_2 = 150
      SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
      SHX17_2 = IsControlJustPressed
      SHX18_2 = 1
      SHX19_2 = 329
      SHX17_2 = SHX17_2(SHX18_2, SHX19_2)
      if not SHX17_2 then
        SHX17_2 = IsDisabledControlJustPressed
        SHX18_2 = 1
        SHX19_2 = 329
        SHX17_2 = SHX17_2(SHX18_2, SHX19_2)
      end
      if SHX17_2 then
        SHX17_2 = PlaySound
        SHX18_2 = -1
        SHX19_2 = "SELECT"
        SHX20_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        SHX21_2 = false
        SHX22_2 = 0
        SHX23_2 = true
        SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
        SHX25_1 = SHX12_2
        SHX28_1 = SHX16_2
        SHX17_2 = false
        SHX26_1 = SHX17_2
      end
    else
      SHX17_2 = SHX25_1
      if SHX12_2 == SHX17_2 then
        SHX17_2 = DrawRect
        SHX18_2 = 0.342
        SHX19_2 = SHX2_2 + 1
        SHX19_2 = SHX0_2 * SHX19_2
        SHX19_2 = 0.331 + SHX19_2
        SHX20_2 = 0.215
        SHX21_2 = 0.026
        SHX22_2 = 0
        SHX23_2 = 168
        SHX24_2 = 255
        SHX25_2 = 150
        SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
      end
    end
    SHX17_2 = SHX36_1
    SHX18_2 = SHX12_2
    SHX17_2 = SHX17_2(SHX18_2)
    if SHX17_2 then
      SHX5_2 = true
    end
    SHX2_2 = SHX2_2 + 1
  end
  SHX6_2 = SHX23_1
  SHX6_2 = SHX3_2 / SHX6_2
  SHX7_2 = 0.5
  if SHX6_2 > SHX7_2 then
    SHX6_2 = SHX23_1
    SHX6_2 = SHX3_2 / SHX6_2
    SHX7_2 = 0.9
    if SHX6_2 > SHX7_2 then
      SHX6_2 = DrawAdvancedText
      SHX7_2 = 0.516
      SHX8_2 = 0.307
      SHX9_2 = 0.005
      SHX10_2 = 0.0028
      SHX11_2 = 0.366
      SHX12_2 = "Weight: "
      SHX13_2 = SHX3_2
      SHX14_2 = "/"
      SHX15_2 = SHX23_1
      SHX16_2 = "kg"
      SHX12_2 = SHX12_2 .. SHX13_2 .. SHX14_2 .. SHX15_2 .. SHX16_2
      SHX13_2 = 255
      SHX14_2 = 50
      SHX15_2 = 0
      SHX16_2 = 255
      SHX17_2 = 4
      SHX18_2 = 0
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    else
      SHX6_2 = DrawAdvancedText
      SHX7_2 = 0.516
      SHX8_2 = 0.307
      SHX9_2 = 0.005
      SHX10_2 = 0.0028
      SHX11_2 = 0.366
      SHX12_2 = "Weight: "
      SHX13_2 = SHX3_2
      SHX14_2 = "/"
      SHX15_2 = SHX23_1
      SHX16_2 = "kg"
      SHX12_2 = SHX12_2 .. SHX13_2 .. SHX14_2 .. SHX15_2 .. SHX16_2
      SHX13_2 = 255
      SHX14_2 = 165
      SHX15_2 = 0
      SHX16_2 = 255
      SHX17_2 = 4
      SHX18_2 = 0
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    end
  else
    SHX6_2 = DrawAdvancedText
    SHX7_2 = 0.516
    SHX8_2 = 0.307
    SHX9_2 = 0.005
    SHX10_2 = 0.0028
    SHX11_2 = 0.366
    SHX12_2 = "Weight: "
    SHX13_2 = SHX3_2
    SHX14_2 = "/"
    SHX15_2 = SHX23_1
    SHX16_2 = "kg"
    SHX12_2 = SHX12_2 .. SHX13_2 .. SHX14_2 .. SHX15_2 .. SHX16_2
    SHX13_2 = 255
    SHX14_2 = 255
    SHX15_2 = 255
    SHX16_2 = 255
    SHX17_2 = 4
    SHX18_2 = 0
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  end
  if SHX5_2 then
    SHX6_2 = DrawAdvancedText
    SHX7_2 = 0.2995
    SHX8_2 = 0.2885
    SHX9_2 = 0.06
    SHX10_2 = 0.022
    SHX11_2 = 0.32
    SHX12_2 = "Equip All"
    SHX13_2 = 255
    SHX14_2 = 255
    SHX15_2 = 255
    SHX16_2 = 255
    SHX17_2 = 4
    SHX18_2 = 0
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX6_2 = CursorInAreaRect
    SHX7_2 = 0.2595
    SHX8_2 = 0.302
    SHX9_2 = 0.05
    SHX10_2 = 0.022
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    if SHX6_2 then
      SHX6_2 = DrawRect
      SHX7_2 = 0.2595
      SHX8_2 = 0.302
      SHX9_2 = 0.05
      SHX10_2 = 0.022
      SHX11_2 = 0
      SHX12_2 = 168
      SHX13_2 = 255
      SHX14_2 = 150
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX6_2 = IsControlJustPressed
      SHX7_2 = 1
      SHX8_2 = 329
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      if not SHX6_2 then
        SHX6_2 = IsDisabledControlJustPressed
        SHX7_2 = 1
        SHX8_2 = 329
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      end
      if SHX6_2 then
        SHX6_2 = PlaySound
        SHX7_2 = -1
        SHX8_2 = "SELECT"
        SHX9_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        SHX10_2 = false
        SHX11_2 = 0
        SHX12_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
        SHX6_2 = Citizen
        SHX6_2 = SHX6_2.CreateThread
        SHX7_2 = SHX45_1
        SHX6_2(SHX7_2)
      end
    else
      SHX6_2 = DrawRect
      SHX7_2 = 0.2595
      SHX8_2 = 0.302
      SHX9_2 = 0.05
      SHX10_2 = 0.022
      SHX11_2 = 0
      SHX12_2 = 0
      SHX13_2 = 0
      SHX14_2 = 150
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    end
  end
end
function SHX58_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2
  SHX1_2 = GetPlayerFromServerId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 >= 0 then
    SHX2_2 = GetPlayerPed
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if 0 ~= SHX2_2 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.getPlayerPed
      SHX3_2 = SHX3_2()
      if SHX2_2 ~= SHX3_2 then
        SHX3_2 = GetEntityCoords
        SHX4_2 = SHX2_2
        SHX5_2 = true
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        SHX4_2 = DrawMarker
        SHX5_2 = 2
        SHX6_2 = SHX3_2.x
        SHX7_2 = SHX3_2.y
        SHX8_2 = SHX3_2.z
        SHX8_2 = SHX8_2 + 1.1
        SHX9_2 = 0.0
        SHX10_2 = 0.0
        SHX11_2 = 0.0
        SHX12_2 = 0.0
        SHX13_2 = -180.0
        SHX14_2 = 0.0
        SHX15_2 = 0.4
        SHX16_2 = 0.4
        SHX17_2 = 0.4
        SHX18_2 = 0
        SHX19_2 = 168
        SHX20_2 = 255
        SHX21_2 = 125
        SHX22_2 = false
        SHX23_2 = true
        SHX24_2 = 2
        SHX25_2 = false
        SHX26_2 = nil
        SHX27_2 = nil
        SHX28_2 = false
        SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
      end
    end
  end
end
function SHX59_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.disableStandardControlsForUI
  SHX0_2()
  SHX0_2 = SHX10_1
  if 0 ~= SHX0_2 then
    SHX0_2 = SHX58_1
    SHX1_2 = SHX10_1
    SHX0_2(SHX1_2)
  end
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX9_1
  SHX0_2 = SHX0_2 - SHX1_2
  SHX1_2 = 250
  if SHX0_2 > SHX1_2 then
    SHX0_2 = SHX43_1
    SHX0_2()
    SHX0_2 = GetGameTimer
    SHX0_2 = SHX0_2()
    SHX9_1 = SHX0_2
  end
  SHX0_2 = 1
  SHX1_2 = 6
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = DisableControlAction
    SHX5_2 = 0
    SHX6_2 = SHX3_2
    SHX7_2 = true
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  end
  SHX0_2 = IsDisabledControlJustReleased
  SHX1_2 = 0
  SHX2_2 = 200
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = SHX35_1
    SHX0_2()
  end
end
function SHX60_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX6_1
  if SHX0_2 then
    SHX0_2 = SHX42_1
    SHX0_2()
  end
  SHX0_2 = SHX3_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = GetEntityHealth
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 <= 102 then
    SHX0_2 = SHX31_1
    SHX0_2()
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.setDrawingInventoryUI
    SHX1_2 = false
    SHX0_2(SHX1_2)
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isNewPlayer
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = drawNativeNotification
    SHX1_2 = "Press ~INPUT_3008C430~ to toggle the inventory."
    SHX0_2(SHX1_2)
  end
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX0_2 = SHX57_1
    SHX0_2()
  else
    SHX0_2 = SHX59_1
    SHX0_2()
  end
end
SHX61_1 = CMG
SHX61_1 = SHX61_1.createThreadOnTick
SHX62_1 = SHX60_1
SHX63_1 = "Inventory UI"
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = RegisterNetEvent
SHX62_1 = "b53722ec4c"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX4_1 = SHX0_2
  if SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.setDrawingInventoryUI
    SHX2_2 = false
    SHX1_2(SHX2_2)
    SHX1_2 = SHX31_1
    SHX1_2()
  end
end
SHX61_1(SHX62_1, SHX63_1)
function SHX61_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  if not SHX0_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.clientPrompt
    SHX4_2 = "Enter Amount"
    SHX5_2 = ""
    function SHX6_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3
      if SHX0_3 then
        SHX1_3 = tonumber
        SHX2_3 = SHX0_3
        SHX1_3 = SHX1_3(SHX2_3)
        if SHX1_3 then
          goto SHX_LABEL_12
        end
      end
      SHX1_3 = notify
      SHX2_3 = "~r~Unable to parse input amount."
      SHX1_3(SHX2_3)
      return
      -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
      ::SHX_LABEL_12::
      SHX1_3 = SHX2_2
      SHX2_3 = tonumber
      SHX3_3 = SHX0_3
      SHX2_3, SHX3_3 = SHX2_3(SHX3_3)
      SHX1_3(SHX2_3, SHX3_3)
    end
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  elseif -1 == SHX0_2 then
    SHX3_2 = SHX1_2.selectedInventoryName
    if "Player" == SHX3_2 then
      SHX3_2 = SHX5_1
      if SHX3_2 then
        SHX4_2 = SHX1_2.selectedItemId
        SHX3_2 = SHX5_1
        SHX3_2 = SHX3_2[SHX4_2]
        if SHX3_2 then
          SHX4_2 = SHX1_2.selectedItemId
          SHX3_2 = SHX5_1
          SHX3_2 = SHX3_2[SHX4_2]
          SHX3_2 = SHX3_2[2]
          SHX5_2 = SHX1_2.selectedItemId
          SHX4_2 = SHX5_1
          SHX4_2 = SHX4_2[SHX5_2]
          SHX4_2 = SHX4_2[3]
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.getSpaceInSecondChest
          SHX5_2 = SHX5_2()
          SHX6_2 = SHX3_2 * SHX4_2
          if SHX5_2 < SHX6_2 then
            SHX6_2 = math
            SHX6_2 = SHX6_2.floor
            SHX7_2 = SHX5_2 / SHX4_2
            SHX6_2 = SHX6_2(SHX7_2)
            SHX3_2 = SHX6_2
          end
          SHX6_2 = SHX2_2
          SHX7_2 = SHX3_2
          SHX6_2(SHX7_2)
        end
      end
    else
      SHX3_2 = SHX6_1
      if SHX3_2 then
        SHX4_2 = SHX1_2.selectedItemId
        SHX3_2 = SHX6_1
        SHX3_2 = SHX3_2[SHX4_2]
        if SHX3_2 then
          SHX4_2 = SHX1_2.selectedItemId
          SHX3_2 = SHX6_1
          SHX3_2 = SHX3_2[SHX4_2]
          SHX3_2 = SHX3_2[2]
          SHX5_2 = SHX1_2.selectedItemId
          SHX4_2 = SHX6_1
          SHX4_2 = SHX4_2[SHX5_2]
          SHX4_2 = SHX4_2[3]
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.getSpaceInFirstChest
          SHX5_2 = SHX5_2()
          SHX6_2 = SHX3_2 * SHX4_2
          if SHX5_2 < SHX6_2 then
            SHX6_2 = math
            SHX6_2 = SHX6_2.floor
            SHX7_2 = SHX5_2 / SHX4_2
            SHX6_2 = SHX6_2(SHX7_2)
            SHX3_2 = SHX6_2
          end
          SHX6_2 = SHX2_2
          SHX7_2 = SHX3_2
          SHX6_2(SHX7_2)
        end
      end
    end
  else
    SHX3_2 = SHX2_2
    SHX4_2 = SHX0_2
    SHX3_2(SHX4_2)
  end
end
function SHX62_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX0_2.selectedItemId
  if not SHX2_2 then
    SHX2_2 = notify
    SHX3_2 = "~r~No item selected."
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = SHX61_1
  SHX3_2 = SHX1_2
  SHX4_2 = SHX0_2
  function SHX5_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3
    if not (SHX0_3 <= 0) then
      SHX1_3 = math
      SHX1_3 = SHX1_3.type
      SHX2_3 = SHX0_3
      SHX1_3 = SHX1_3(SHX2_3)
      if "integer" == SHX1_3 then
        goto SHX_LABEL_13
      end
    end
    SHX1_3 = notify
    SHX2_3 = "~r~Input amount must be a positive whole number."
    SHX1_3(SHX2_3)
    return
    -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
    ::SHX_LABEL_13::
    SHX1_3 = SHX0_2.selectedInventoryName
    if "Player" == SHX1_3 then
      SHX1_3 = SHX6_1
      if SHX1_3 then
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.getPlayerCombatTimer
        SHX1_3 = SHX1_3()
        if SHX1_3 > 0 then
          SHX1_3 = notify
          SHX2_3 = "~r~You can not store items whilst in combat."
          SHX1_3(SHX2_3)
        else
          SHX1_3 = SHX0_2.selectedItemId
          if "dirtycash" == SHX1_3 then
            SHX1_3 = CMG
            SHX1_3 = SHX1_3.isPlayerInRedZone
            SHX1_3 = SHX1_3()
            if SHX1_3 then
              SHX1_3 = notify
              SHX2_3 = "~r~You can not store dirty cash inside a redzone."
              SHX1_3(SHX2_3)
          end
          else
            SHX1_3 = SHX48_1
            SHX2_3 = SHX0_2.selectedItemId
            SHX3_3 = SHX0_3
            SHX1_3(SHX2_3, SHX3_3)
          end
        end
      else
        SHX1_3 = notify
        SHX2_3 = "~r~No secondary inventory selected."
        SHX1_3(SHX2_3)
      end
    else
      SHX1_3 = SHX46_1
      SHX2_3 = SHX0_2.selectedItemId
      SHX3_3 = SHX0_3
      SHX1_3(SHX2_3, SHX3_3)
    end
  end
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
function SHX63_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX0_2.selectedItemId
  if not SHX2_2 then
    SHX2_2 = notify
    SHX3_2 = "~r~No item selected."
    SHX2_2(SHX3_2)
  else
    SHX2_2 = SHX0_2.selectedInventoryName
    if "Player" == SHX2_2 then
      SHX2_2 = CMGclient
      SHX2_2 = SHX2_2.useInventoryItem
      SHX3_2 = {}
      SHX4_2 = SHX0_2.selectedItemId
      SHX5_2 = SHX1_2
      SHX3_2[1] = SHX4_2
      SHX3_2[2] = SHX5_2
      SHX2_2(SHX3_2)
    else
      SHX2_2 = CMGclient
      SHX2_2 = SHX2_2.useInventoryItem
      SHX3_2 = {}
      SHX4_2 = SHX0_2.selectedItemId
      SHX5_2 = SHX1_2
      SHX3_2[1] = SHX4_2
      SHX3_2[2] = SHX5_2
      SHX2_2(SHX3_2)
    end
  end
end
function SHX64_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX2_2 = SHX0_2.selectedItemId
  if not SHX2_2 then
    SHX2_2 = notify
    SHX3_2 = "~r~No item selected."
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = SHX0_2.selectedInventoryName
  if "Player" ~= SHX2_2 then
    SHX2_2 = notify
    SHX3_2 = "~r~Please move the item to your inventory to give."
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = {}
  SHX3_2 = pairs
  SHX4_2 = GetActivePlayers
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX4_2()
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = GetPlayerPed
    SHX10_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2)
    if 0 ~= SHX9_2 then
      SHX10_2 = GetEntityCoords
      SHX11_2 = SHX9_2
      SHX12_2 = true
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.getPlayerCoords
      SHX11_2 = SHX11_2()
      SHX10_2 = SHX10_2 - SHX11_2
      SHX10_2 = #SHX10_2
      if SHX10_2 < 5.0 then
        SHX10_2 = PlayerPedId
        SHX10_2 = SHX10_2()
        if SHX9_2 ~= SHX10_2 then
          SHX10_2 = GetPlayerServerId
          SHX11_2 = SHX8_2
          SHX10_2 = SHX10_2(SHX11_2)
          SHX11_2 = table
          SHX11_2 = SHX11_2.insert
          SHX12_2 = SHX2_2
          SHX13_2 = {}
          SHX13_2.permId = SHX10_2
          SHX14_2 = CMG
          SHX14_2 = SHX14_2.isPlayerInSelectedGang
          SHX15_2 = SHX10_2
          SHX14_2 = SHX14_2(SHX15_2)
          if SHX14_2 then
            SHX14_2 = CMG
            SHX14_2 = SHX14_2.getPlayerName
            SHX15_2 = SHX8_2
            SHX14_2 = SHX14_2(SHX15_2)
            if SHX14_2 then
              goto SHX_LABEL_65
            end
          end
          SHX14_2 = ""
          -- [FIX IF ERROR] Move ::SHX_LABEL_65:: outside nested blocks until all 'goto SHX_LABEL_65' can see it
          ::SHX_LABEL_65::
          SHX13_2.name = SHX14_2
          SHX11_2(SHX12_2, SHX13_2)
        end
      end
    end
  end
  SHX3_2 = #SHX2_2
  if 0 == SHX3_2 then
    SHX3_2 = notify
    SHX4_2 = "~r~No nearby players."
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.uiSendMessage
  SHX4_2 = {}
  SHX4_2.type = "INVENTORY_SET_GIVE_REQUEST"
  SHX5_2 = {}
  SHX5_2.players = SHX2_2
  SHX6_2 = {}
  SHX7_2 = SHX0_2.selectedItemId
  SHX6_2.selectedItemId = SHX7_2
  SHX6_2.giveAmount = SHX1_2
  SHX5_2.request = SHX6_2
  SHX4_2.info = SHX5_2
  SHX3_2(SHX4_2)
end
function SHX65_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX32_1
  SHX1_2()
  SHX1_2 = SHX55_1
  SHX2_2 = SHX0_2.selectedItemId
  SHX3_2 = SHX0_2.selectedPermId
  SHX4_2 = SHX0_2.giveAmount
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
function SHX66_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX0_2.selectedItemId
  if not SHX2_2 then
    SHX2_2 = notify
    SHX3_2 = "~r~No item selected."
    SHX2_2(SHX3_2)
  else
    SHX2_2 = SHX0_2.selectedInventoryName
    if "Player" ~= SHX2_2 then
      SHX2_2 = notify
      SHX3_2 = "~r~Please move the item to your inventory to trash."
      SHX2_2(SHX3_2)
    else
      SHX2_2 = CMGclient
      SHX2_2 = SHX2_2.trashItem
      SHX3_2 = {}
      SHX4_2 = SHX0_2.selectedItemId
      SHX5_2 = SHX1_2
      SHX3_2[1] = SHX4_2
      SHX3_2[2] = SHX5_2
      SHX2_2(SHX3_2)
    end
  end
end
function SHX67_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "23e533401c"
  SHX3_2 = true
  SHX4_2 = false
  SHX5_2 = SHX0_2.id
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
function SHX68_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = ExecuteCommand
  SHX1_2 = "storeallweapons"
  SHX0_2(SHX1_2)
end
SHX69_1 = {}
function SHX70_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX63_1
  SHX2_2 = SHX0_2
  SHX3_2 = SHX0_2.moveAmount
  SHX1_2(SHX2_2, SHX3_2)
end
SHX69_1.use = SHX70_1
function SHX70_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX63_1
  SHX2_2 = SHX0_2
  SHX3_2 = -1
  SHX1_2(SHX2_2, SHX3_2)
end
SHX69_1.use_all = SHX70_1
function SHX70_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX62_1
  SHX2_2 = SHX0_2
  SHX3_2 = SHX0_2.moveAmount
  SHX1_2(SHX2_2, SHX3_2)
end
SHX69_1.move = SHX70_1
function SHX70_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX62_1
  SHX2_2 = SHX0_2
  SHX3_2 = -1
  SHX1_2(SHX2_2, SHX3_2)
end
SHX69_1.move_all = SHX70_1
function SHX70_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX64_1
  SHX2_2 = SHX0_2
  SHX3_2 = SHX0_2.moveAmount
  SHX1_2(SHX2_2, SHX3_2)
end
SHX69_1.give = SHX70_1
function SHX70_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX64_1
  SHX2_2 = SHX0_2
  SHX3_2 = -1
  SHX1_2(SHX2_2, SHX3_2)
end
SHX69_1.give_all = SHX70_1
function SHX70_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX66_1
  SHX2_2 = SHX0_2
  SHX3_2 = SHX0_2.moveAmount
  SHX1_2(SHX2_2, SHX3_2)
end
SHX69_1.drop = SHX70_1
function SHX70_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX66_1
  SHX2_2 = SHX0_2
  SHX3_2 = -1
  SHX1_2(SHX2_2, SHX3_2)
end
SHX69_1.drop_all = SHX70_1
SHX69_1.equip_all = SHX45_1
SHX69_1.loot_all = SHX47_1
SHX69_1.give_result = SHX65_1
SHX69_1.store = SHX67_1
SHX69_1.store_all = SHX68_1
SHX69_1.transfer_all = SHX49_1
SHX70_1 = Citizen
SHX70_1 = SHX70_1.Wait
SHX71_1 = 0
SHX70_1(SHX71_1)
SHX70_1 = CMG
SHX70_1 = SHX70_1.uiRegisterCallback
SHX71_1 = "inventoryCommand"
function SHX72_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX8_1
  if not SHX1_2 then
    SHX1_2 = SHX3_1
    if SHX1_2 then
      goto SHX_LABEL_8
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX2_2 = SHX0_2.command
  SHX1_2 = SHX69_1
  SHX1_2 = SHX1_2[SHX2_2]
  if SHX1_2 then
    SHX2_2 = SHX30_1
    if not SHX2_2 then
      SHX2_2 = true
      SHX8_1 = SHX2_2
      SHX2_2 = SHX1_2
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
      SHX2_2 = false
      SHX8_1 = SHX2_2
    end
  end
end
SHX70_1(SHX71_1, SHX72_1)
SHX70_1 = CMG
SHX70_1 = SHX70_1.uiRegisterCallback
SHX71_1 = "onNearbyHover"
function SHX72_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX0_2.enabled
  if SHX1_2 then
    SHX1_2 = SHX0_2.permId
    SHX10_1 = SHX1_2
  else
    SHX1_2 = 0
    SHX10_1 = SHX1_2
  end
end
SHX70_1(SHX71_1, SHX72_1)
SHX70_1 = CMG
SHX70_1 = SHX70_1.uiRegisterCallback
SHX71_1 = "inventoryInitialRequest"
function SHX72_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.type = "INVENTORY_SET_PRIMARY"
  SHX2_2 = SHX16_1
  SHX1_2.info = SHX2_2
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.type = "INVENTORY_SET_SECONDARY"
  SHX2_2 = SHX17_1
  SHX1_2.info = SHX2_2
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.type = "INVENTORY_SET_EQUIPPED_WEAPONS"
  SHX2_2 = SHX18_1
  SHX1_2.info = SHX2_2
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.type = "INVENTORY_SET_OPACITY"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getInventoryOpacity
  SHX2_2 = SHX2_2()
  SHX1_2.info = SHX2_2
  SHX0_2(SHX1_2)
end
SHX70_1(SHX71_1, SHX72_1)
SHX70_1 = CMG
SHX70_1 = SHX70_1.uiRegisterCallback
SHX71_1 = "inventoryClosed"
function SHX72_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setDrawingInventoryUI
  SHX1_2 = false
  SHX0_2(SHX1_2)
end
SHX70_1(SHX71_1, SHX72_1)
SHX70_1 = false
SHX71_1 = {}
SHX72_1 = "amb@medic@standing@kneel@base"
SHX73_1 = "base"
SHX71_1[1] = SHX72_1
SHX71_1[2] = SHX73_1
SHX72_1 = RegisterNetEvent
SHX73_1 = "c0eaa53e37"
function SHX74_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = SHX70_1
  if SHX0_2 then
    return
  end
  SHX0_2 = true
  SHX70_1 = SHX0_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.setCanAnim
  SHX1_2 = false
  SHX0_2(SHX1_2)
  while true do
    SHX0_2 = SHX3_1
    if not SHX0_2 then
      break
    end
    SHX0_2 = PlayerPedId
    SHX0_2 = SHX0_2()
    SHX1_2 = IsEntityPlayingAnim
    SHX2_2 = SHX0_2
    SHX3_2 = SHX71_1
    SHX3_2 = SHX3_2[1]
    SHX4_2 = SHX71_1
    SHX4_2 = SHX4_2[2]
    SHX5_2 = 3
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.loadAnimDict
      SHX2_2 = SHX71_1
      SHX2_2 = SHX2_2[1]
      SHX1_2(SHX2_2)
      SHX1_2 = TaskPlayAnim
      SHX2_2 = SHX0_2
      SHX3_2 = SHX71_1
      SHX3_2 = SHX3_2[1]
      SHX4_2 = SHX71_1
      SHX4_2 = SHX4_2[2]
      SHX5_2 = 2.0
      SHX6_2 = -2.0
      SHX7_2 = -1
      SHX8_2 = 1
      SHX9_2 = 1.0
      SHX10_2 = false
      SHX11_2 = false
      SHX12_2 = false
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX1_2 = RemoveAnimDict
      SHX2_2 = SHX71_1
      SHX2_2 = SHX2_2[1]
      SHX1_2(SHX2_2)
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = IsEntityPlayingAnim
  SHX2_2 = SHX0_2
  SHX3_2 = SHX71_1
  SHX3_2 = SHX3_2[1]
  SHX4_2 = SHX71_1
  SHX4_2 = SHX4_2[2]
  SHX5_2 = 3
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  if SHX1_2 then
    SHX1_2 = StopAnimTask
    SHX2_2 = SHX0_2
    SHX3_2 = SHX71_1
    SHX3_2 = SHX3_2[1]
    SHX4_2 = SHX71_1
    SHX4_2 = SHX4_2[2]
    SHX5_2 = 1.0
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  end
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.setCanAnim
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = false
  SHX70_1 = SHX1_2
end
SHX72_1(SHX73_1, SHX74_1)
SHX72_1 = CMG
function SHX73_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX3_1
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.setDrawingInventoryUI
    SHX2_2 = false
    SHX1_2(SHX2_2)
  end
  SHX1_2 = SetResourceKvp
  SHX2_2 = "cmg_legacy_inventory"
  if SHX0_2 then
    SHX3_2 = "1"
    if SHX3_2 then
      goto SHX_LABEL_16
    end
  end
  SHX3_2 = "0"
  -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
  ::SHX_LABEL_16::
  SHX1_2(SHX2_2, SHX3_2)
  SHX2_1 = SHX0_2
end
SHX72_1.setLegacyInventoryEnabled = SHX73_1
SHX72_1 = CMG
function SHX73_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX2_1
  return SHX0_2
end
SHX72_1.isLegacyInventoryEnabled = SHX73_1
SHX72_1 = CMG
function SHX73_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX29_1 = SHX0_2
end
SHX72_1.setInventoryBusinessCb = SHX73_1
SHX72_1 = CMG
function SHX73_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX30_1 = SHX0_2
end
SHX72_1.setInventoryTransferDisabled = SHX73_1
SHX72_1 = vector2
SHX73_1 = 0.105
SHX74_1 = 0.302
SHX72_1 = SHX72_1(SHX73_1, SHX74_1)
SHX73_1 = nil
SHX74_1 = false
SHX75_1 = nil
SHX76_1 = CMG
function SHX77_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX73_1
  SHX0_2 = nil ~= SHX0_2
  return SHX0_2
end
SHX76_1.isUserListPromptActive = SHX77_1
function SHX76_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = SHX73_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = DrawRect
  SHX1_2 = SHX72_1.x
  SHX2_2 = SHX72_1.y
  SHX2_2 = SHX2_2 - 0.029
  SHX3_2 = 0.14
  SHX4_2 = 0.0069999999999999
  SHX5_2 = 0
  SHX6_2 = 168
  SHX7_2 = 255
  SHX8_2 = 150
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2 = DrawRect
  SHX1_2 = SHX72_1.x
  SHX2_2 = SHX72_1.y
  SHX2_2 = SHX2_2 - 0.0185
  SHX3_2 = table
  SHX3_2 = SHX3_2.count
  SHX4_2 = SHX73_1
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_2 = SHX3_2 / 2
  SHX3_2 = SHX3_2 * 0.035
  SHX2_2 = SHX2_2 + SHX3_2
  SHX3_2 = 0.14
  SHX4_2 = table
  SHX4_2 = SHX4_2.count
  SHX5_2 = SHX73_1
  SHX4_2 = SHX4_2(SHX5_2)
  SHX4_2 = SHX4_2 * 0.035
  SHX4_2 = 0.015 + SHX4_2
  SHX5_2 = 0
  SHX6_2 = 0
  SHX7_2 = 0
  SHX8_2 = 150
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2 = 0
  SHX1_2 = pairs
  SHX2_2 = SHX73_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = DrawAdvancedText
    SHX8_2 = SHX72_1.x
    SHX8_2 = SHX8_2 + 0.0325
    SHX9_2 = SHX72_1.y
    SHX9_2 = SHX9_2 + 0.005
    SHX10_2 = SHX0_2 * 0.035
    SHX9_2 = SHX9_2 + SHX10_2
    SHX10_2 = 0.005
    SHX11_2 = 0.0028
    SHX12_2 = 0.366
    SHX13_2 = string
    SHX13_2 = SHX13_2.format
    SHX14_2 = "[%s] %s"
    SHX15_2 = SHX5_2
    SHX16_2 = SHX6_2
    SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
    SHX14_2 = 255
    SHX15_2 = 255
    SHX16_2 = 255
    SHX17_2 = 255
    SHX18_2 = 4
    SHX19_2 = 1
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX7_2 = CursorInAreaRect
    SHX8_2 = SHX72_1.x
    SHX9_2 = SHX72_1.y
    SHX10_2 = SHX0_2 * 0.035
    SHX9_2 = SHX9_2 + SHX10_2
    SHX10_2 = 0.13
    SHX11_2 = 0.03
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    if SHX7_2 then
      SHX7_2 = DrawRect
      SHX8_2 = SHX72_1.x
      SHX9_2 = SHX72_1.y
      SHX10_2 = SHX0_2 * 0.035
      SHX9_2 = SHX9_2 + SHX10_2
      SHX10_2 = 0.13
      SHX11_2 = 0.03
      SHX12_2 = 0
      SHX13_2 = 168
      SHX14_2 = 255
      SHX15_2 = 150
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX7_2 = SHX58_1
      SHX8_2 = SHX5_2
      SHX7_2(SHX8_2)
      SHX7_2 = IsControlJustPressed
      SHX8_2 = 0
      SHX9_2 = 329
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
      if not SHX7_2 then
        SHX7_2 = IsDisabledControlJustPressed
        SHX8_2 = 0
        SHX9_2 = 329
        SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
      end
      if SHX7_2 then
        SHX7_2 = true
        SHX74_1 = SHX7_2
        SHX75_1 = SHX5_2
        break
      end
    else
      SHX7_2 = DrawRect
      SHX8_2 = SHX72_1.x
      SHX9_2 = SHX72_1.y
      SHX10_2 = SHX0_2 * 0.035
      SHX9_2 = SHX9_2 + SHX10_2
      SHX10_2 = 0.13
      SHX11_2 = 0.03
      SHX12_2 = 0
      SHX13_2 = 0
      SHX14_2 = 0
      SHX15_2 = 225
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    end
    SHX0_2 = SHX0_2 + 1
  end
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 202
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = IsDisabledControlJustReleased
  SHX2_2 = 0
  SHX3_2 = 202
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if not SHX1_2 then
    SHX1_2 = SHX3_1
    if SHX1_2 then
      goto SHX_LABEL_159
    end
  end
  SHX1_2 = true
  SHX74_1 = SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_159:: outside nested blocks until all 'goto SHX_LABEL_159' can see it
  ::SHX_LABEL_159::
end
SHX77_1 = CMG
SHX77_1 = SHX77_1.createThreadOnTick
SHX78_1 = SHX76_1
SHX79_1 = "User List Prompt"
SHX77_1(SHX78_1, SHX79_1)
SHX77_1 = tCMG
function SHX78_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX73_1
  if SHX1_2 then
    return
  end
  SHX73_1 = SHX0_2
  SHX1_2 = false
  SHX74_1 = SHX1_2
  SHX1_2 = nil
  SHX75_1 = SHX1_2
  while true do
    SHX1_2 = SHX74_1
    if SHX1_2 then
      break
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = nil
  SHX73_1 = SHX1_2
  SHX1_2 = SHX75_1
  return SHX1_2
end
SHX77_1.promptUserList = SHX78_1
SHX77_1 = {}
SHX77_1.musket = 1654440677
SHX77_1.combatmg = 2144741730
SHX78_1 = {}
SHX78_1.Melee = -1786099057
SHX78_1.Pistol = 453432689
SHX78_1.SMG = 736523883
SHX78_1.AR = -1074790547
SHX78_1.Heavy = -1634596898
function SHX79_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2
  SHX3_2 = GetPlayerFromServerId
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = GetPlayerFromServerId
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  if -1 == SHX3_2 or -1 == SHX4_2 then
    return
  end
  SHX5_2 = GetPlayerPed
  SHX6_2 = SHX3_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = GetPlayerPed
  SHX7_2 = SHX4_2
  SHX6_2 = SHX6_2(SHX7_2)
  if 0 == SHX5_2 or 0 == SHX6_2 then
    return
  end
  SHX7_2 = GetPedBoneIndex
  SHX8_2 = SHX5_2
  SHX9_2 = 57005
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX8_2 = GetPedBoneIndex
  SHX9_2 = SHX6_2
  SHX10_2 = 57005
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  if -1 == SHX7_2 or -1 == SHX8_2 then
    return
  end
  SHX9_2 = GetWorldPositionOfEntityBone
  SHX10_2 = SHX5_2
  SHX11_2 = SHX7_2
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX10_2 = SHX2_2
  SHX11_2 = SHX9_2
  SHX10_2 = SHX10_2(SHX11_2)
  if 0 == SHX10_2 then
    return
  end
  SHX11_2 = FreezeEntityPosition
  SHX12_2 = SHX10_2
  SHX13_2 = true
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = SetEntityCollision
  SHX12_2 = SHX10_2
  SHX13_2 = false
  SHX14_2 = false
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = GetEntityCoords
  SHX12_2 = SHX10_2
  SHX13_2 = true
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
  SHX12_2 = GetEntityCoords
  SHX13_2 = SHX6_2
  SHX14_2 = true
  SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
  SHX11_2 = SHX11_2 - SHX12_2
  SHX11_2 = #SHX11_2
  SHX12_2 = GetGameTimer
  SHX12_2 = SHX12_2()
  while true do
    SHX13_2 = math
    SHX13_2 = SHX13_2.min
    SHX14_2 = 1.0
    SHX15_2 = GetGameTimer
    SHX15_2 = SHX15_2()
    SHX15_2 = SHX15_2 - SHX12_2
    SHX15_2 = SHX15_2 / 1500.0
    SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
    if SHX13_2 >= 1.0 then
      break
    end
    SHX14_2 = DoesEntityExist
    SHX15_2 = SHX5_2
    SHX14_2 = SHX14_2(SHX15_2)
    if not SHX14_2 then
      break
    end
    SHX14_2 = DoesEntityExist
    SHX15_2 = SHX6_2
    SHX14_2 = SHX14_2(SHX15_2)
    if not SHX14_2 then
      break
    end
    SHX14_2 = GetEntityCoords
    SHX15_2 = SHX5_2
    SHX16_2 = true
    SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
    SHX15_2 = GetWorldPositionOfEntityBone
    SHX16_2 = SHX6_2
    SHX17_2 = SHX8_2
    SHX15_2 = SHX15_2(SHX16_2, SHX17_2)
    SHX16_2 = SHX14_2 - SHX15_2
    SHX16_2 = #SHX16_2
    SHX17_2 = math
    SHX17_2 = SHX17_2.min
    SHX18_2 = SHX16_2
    SHX19_2 = SHX13_2 * SHX11_2
    SHX19_2 = SHX11_2 - SHX19_2
    SHX17_2 = SHX17_2(SHX18_2, SHX19_2)
    SHX18_2 = norm
    SHX19_2 = SHX14_2 - SHX15_2
    SHX18_2 = SHX18_2(SHX19_2)
    SHX19_2 = SHX18_2 * SHX17_2
    SHX19_2 = SHX15_2 + SHX19_2
    SHX20_2 = SetEntityCoordsNoOffset
    SHX21_2 = SHX10_2
    SHX22_2 = SHX19_2.x
    SHX23_2 = SHX19_2.y
    SHX24_2 = SHX19_2.z
    SHX25_2 = true
    SHX26_2 = true
    SHX27_2 = true
    SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
    SHX20_2 = Wait
    SHX21_2 = 0
    SHX20_2(SHX21_2)
  end
  SHX13_2 = DeleteEntity
  SHX14_2 = SHX10_2
  SHX13_2(SHX14_2)
end
SHX80_1 = RegisterNetEvent
SHX81_1 = "7498201c14"
function SHX82_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX4_2 = SHX77_1
  SHX4_2 = SHX4_2[SHX3_2]
  if not SHX4_2 then
    SHX5_2 = SHX78_1
    SHX4_2 = SHX5_2[SHX2_2]
  end
  if not SHX4_2 then
    SHX4_2 = SHX78_1.Pistol
  end
  SHX5_2 = SHX79_1
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  function SHX8_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.loadWeaponAsset
    SHX2_3 = SHX4_2
    SHX1_3(SHX2_3)
    SHX1_3 = CreateWeaponObject
    SHX2_3 = SHX4_2
    SHX3_3 = 0
    SHX4_3 = SHX0_3.x
    SHX5_3 = SHX0_3.y
    SHX6_3 = SHX0_3.z
    SHX7_3 = true
    SHX8_3 = 1.0
    SHX9_3 = false
    return SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
  end
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
end
SHX80_1(SHX81_1, SHX82_1)
SHX80_1 = RegisterNetEvent
SHX81_1 = "0cf82783fa"
function SHX82_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = SHX79_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  function SHX6_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.loadModel
    SHX2_3 = SHX2_2
    SHX1_3(SHX2_3)
    SHX1_3 = CreateObjectNoOffset
    SHX2_3 = SHX2_2
    SHX3_3 = SHX0_3.x
    SHX4_3 = SHX0_3.y
    SHX5_3 = SHX0_3.z
    SHX6_3 = false
    SHX7_3 = false
    SHX8_3 = false
    return SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
  end
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
end
SHX80_1(SHX81_1, SHX82_1)
