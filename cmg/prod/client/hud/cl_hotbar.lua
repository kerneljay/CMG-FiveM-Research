-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_trapper"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = 9
SHX2_1 = false
SHX3_1 = -1
SHX4_1 = {}
SHX5_1 = {}
SHX6_1 = CMG
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "function" ~= SHX1_2 then
    return
  end
  SHX1_2 = table
  SHX1_2 = SHX1_2.insert
  SHX2_2 = SHX5_1
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX0_3 = SHX5_1
    SHX0_3 = #SHX0_3
    SHX1_3 = 1
    SHX2_3 = -1
    for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
      SHX4_3 = SHX5_1
      SHX4_3 = SHX4_3[SHX3_3]
      SHX5_3 = SHX0_2
      if SHX4_3 == SHX5_3 then
        SHX4_3 = table
        SHX4_3 = SHX4_3.remove
        SHX5_3 = SHX5_1
        SHX6_3 = SHX3_3
        SHX4_3(SHX5_3, SHX6_3)
        break
      end
    end
  end
  return SHX1_2
end
SHX6_1.onHotbarSelect = SHX7_1
SHX6_1 = CMG
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1
  if SHX0_2 >= 0 then
    SHX0_2 = SHX3_1
    SHX1_2 = SHX0_2 + 1
    SHX0_2 = SHX4_1
    SHX0_2 = SHX0_2[SHX1_2]
    return SHX0_2
  end
  SHX0_2 = nil
  return SHX0_2
end
SHX6_1.getCurrentHotbarItem = SHX7_1
function SHX6_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.uiSendMessage
  SHX3_2 = {}
  SHX3_2.action = SHX0_2
  SHX3_2.payload = SHX1_2
  SHX2_2(SHX3_2)
end
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
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
    if SHX0_3 then
      SHX2_3 = SHX0_3.name
      if SHX2_3 then
        SHX2_3 = string
        SHX2_3 = SHX2_3.lower
        SHX3_3 = SHX0_3.name
        SHX2_3 = SHX2_3(SHX3_3)
        if SHX2_3 then
          goto SHX_LABEL_13
        end
      end
    end
    SHX2_3 = ""
    -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
    ::SHX_LABEL_13::
    if SHX1_3 then
      SHX3_3 = SHX1_3.name
      if SHX3_3 then
        SHX3_3 = string
        SHX3_3 = SHX3_3.lower
        SHX4_3 = SHX1_3.name
        SHX3_3 = SHX3_3(SHX4_3)
        if SHX3_3 then
          goto SHX_LABEL_25
        end
      end
    end
    SHX3_3 = ""
    -- [FIX IF ERROR] Move ::SHX_LABEL_25:: outside nested blocks until all 'goto SHX_LABEL_25' can see it
    ::SHX_LABEL_25::
    SHX4_3 = SHX2_3 < SHX3_3
    return SHX4_3
  end
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = nil
  SHX1_2 = SHX3_1
  if SHX1_2 >= 0 then
    SHX1_2 = SHX3_1
    SHX2_2 = SHX1_2 + 1
    SHX1_2 = SHX4_1
    SHX0_2 = SHX1_2[SHX2_2]
  end
  SHX1_2 = ipairs
  SHX2_2 = SHX5_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2
    SHX8_2 = SHX3_1
    SHX9_2 = SHX0_2
    SHX7_2(SHX8_2, SHX9_2)
  end
end
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX7_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = 1
  SHX2_2 = SHX1_1
  SHX3_2 = 1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = SHX4_1
    SHX5_2[SHX4_2] = nil
  end
  SHX1_2 = 1
  SHX2_2 = math
  SHX2_2 = SHX2_2.min
  SHX3_2 = SHX1_1
  SHX4_2 = #SHX0_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = 1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = SHX4_1
    SHX6_2 = SHX0_2[SHX4_2]
    SHX5_2[SHX4_2] = SHX6_2
  end
  SHX1_2 = SHX3_1
  if SHX1_2 >= 0 then
    SHX1_2 = SHX3_1
    SHX2_2 = SHX1_2 + 1
    SHX1_2 = SHX4_1
    SHX1_2 = SHX1_2[SHX2_2]
    if nil == SHX1_2 then
      SHX1_2 = -1
      SHX3_1 = SHX1_2
      SHX1_2 = SHX6_1
      SHX2_2 = "HOTBAR_SET_SELECTED"
      SHX3_2 = {}
      SHX3_2.selectedIndex = -1
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = SHX8_1
      SHX1_2()
    end
  end
  SHX1_2 = SHX6_1
  SHX2_2 = "HOTBAR_SET_ITEMS"
  SHX3_2 = {}
  SHX3_2.items = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX10_1 = CMG
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX2_1
  if not SHX1_2 then
    return
  end
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "number" ~= SHX1_2 then
    return
  end
  if -1 == SHX0_2 then
    SHX1_2 = -1
    SHX3_1 = SHX1_2
    SHX1_2 = SHX6_1
    SHX2_2 = "HOTBAR_SET_SELECTED"
    SHX3_2 = {}
    SHX3_2.selectedIndex = -1
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX8_1
    SHX1_2()
    return
  end
  if not (SHX0_2 < 0) then
    SHX1_2 = SHX1_1
    if not (SHX0_2 >= SHX1_2) then
      goto SHX_LABEL_30
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_30:: outside nested blocks until all 'goto SHX_LABEL_30' can see it
  ::SHX_LABEL_30::
  SHX1_2 = SHX3_1
  if SHX1_2 == SHX0_2 then
    SHX1_2 = -1
    SHX3_1 = SHX1_2
    SHX1_2 = SHX6_1
    SHX2_2 = "HOTBAR_SET_SELECTED"
    SHX3_2 = {}
    SHX3_2.selectedIndex = -1
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX8_1
    SHX1_2()
    return
  end
  SHX2_2 = SHX0_2 + 1
  SHX1_2 = SHX4_1
  SHX1_2 = SHX1_2[SHX2_2]
  if nil == SHX1_2 then
    SHX1_2 = -1
    SHX3_1 = SHX1_2
    SHX1_2 = SHX6_1
    SHX2_2 = "HOTBAR_SET_SELECTED"
    SHX3_2 = {}
    SHX3_2.selectedIndex = -1
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX8_1
    SHX1_2()
    return
  end
  SHX3_1 = SHX0_2
  SHX1_2 = SHX6_1
  SHX2_2 = "HOTBAR_SET_SELECTED"
  SHX3_2 = {}
  SHX4_2 = SHX3_1
  SHX3_2.selectedIndex = SHX4_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX8_1
  SHX1_2()
end
SHX10_1.selectHotbarSlot = SHX11_1
SHX10_1 = 1
SHX11_1 = SHX1_1
SHX12_1 = 1
for SHX13_1 = SHX10_1, SHX11_1, SHX12_1 do
  SHX14_1 = RegisterCommand
  SHX15_1 = "cmg_hotbar:%d"
  SHX16_1 = SHX15_1
  SHX15_1 = SHX15_1.format
  SHX17_1 = SHX13_1
  SHX15_1 = SHX15_1(SHX16_1, SHX17_1)
  function SHX16_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_2, SHX1_2
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.selectHotbarSlot
    SHX1_2 = SHX13_1
    SHX1_2 = SHX1_2 - 1
    SHX0_2(SHX1_2)
  end
  SHX17_1 = false
  SHX14_1(SHX15_1, SHX16_1, SHX17_1)
  SHX14_1 = RegisterKeyMapping
  SHX15_1 = "cmg_hotbar:%d"
  SHX16_1 = SHX15_1
  SHX15_1 = SHX15_1.format
  SHX17_1 = SHX13_1
  SHX15_1 = SHX15_1(SHX16_1, SHX17_1)
  SHX16_1 = "Hotbar Slot %d"
  SHX17_1 = SHX16_1
  SHX16_1 = SHX16_1.format
  SHX18_1 = SHX13_1
  SHX16_1 = SHX16_1(SHX17_1, SHX18_1)
  SHX17_1 = "keyboard"
  SHX18_1 = tostring
  SHX19_1 = SHX13_1
  SHX18_1, SHX19_1 = SHX18_1(SHX19_1)
  SHX14_1(SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1)
end
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX0_2 = HudWeaponWheelIgnoreSelection
    SHX0_2()
  end
end
SHX11_1 = CMG
SHX11_1 = SHX11_1.createThreadOnTick
SHX12_1 = SHX10_1
SHX13_1 = "hotbarControls"
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = CMG
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  if SHX0_2 then
    SHX1_2 = true
    if SHX1_2 then
      goto SHX_LABEL_7
    end
  end
  SHX1_2 = false
  -- [FIX IF ERROR] Move ::SHX_LABEL_7:: outside nested blocks until all 'goto SHX_LABEL_7' can see it
  ::SHX_LABEL_7::
  SHX2_1 = SHX1_2
  SHX1_2 = SHX2_1
  if not SHX1_2 then
    SHX1_2 = -1
    SHX3_1 = SHX1_2
    SHX1_2 = SHX6_1
    SHX2_2 = "HOTBAR_SET_SELECTED"
    SHX3_2 = {}
    SHX3_2.selectedIndex = -1
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX8_1
    SHX1_2()
  end
  SHX1_2 = SHX6_1
  SHX2_2 = "HOTBAR_SET_ENABLED"
  SHX3_2 = {}
  SHX4_2 = SHX2_1
  SHX3_2.enabled = SHX4_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX11_1.setHotBarEnabled = SHX12_1
SHX11_1 = CMG
function SHX12_1()
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
SHX11_1.getHotBarEnabled = SHX12_1
SHX11_1 = AddEventHandler
SHX12_1 = "0c20c62dc8"
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientInventoryItemList
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX0_1.items
    SHX8_2 = SHX8_2[SHX6_2]
    if SHX8_2 then
      SHX8_2 = table
      SHX8_2 = SHX8_2.insert
      SHX9_2 = SHX1_2
      SHX10_2 = {}
      SHX11_2 = SHX7_2[1]
      SHX10_2.name = SHX11_2
      SHX10_2.icon = SHX6_2
      SHX11_2 = SHX7_2[2]
      SHX10_2.count = SHX11_2
      SHX8_2(SHX9_2, SHX10_2)
    end
  end
  SHX2_2 = SHX9_1
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
end
SHX11_1(SHX12_1, SHX13_1)
