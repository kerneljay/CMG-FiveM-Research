-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1
SHX0_1 = {}
SHX1_1 = 1
SHX2_1 = 2
SHX3_1 = 3
SHX4_1 = 4
SHX5_1 = 5
SHX6_1 = 6
SHX7_1 = 7
SHX8_1 = 8
SHX9_1 = 9
SHX10_1 = 10
SHX0_1[1] = SHX1_1
SHX0_1[2] = SHX2_1
SHX0_1[3] = SHX3_1
SHX0_1[4] = SHX4_1
SHX0_1[5] = SHX5_1
SHX0_1[6] = SHX6_1
SHX0_1[7] = SHX7_1
SHX0_1[8] = SHX8_1
SHX0_1[9] = SHX9_1
SHX0_1[10] = SHX10_1
function SHX1_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.CloseAll
  SHX0_2()
end
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsAnyMenuOfTypeVisible
  SHX1_2 = "business"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = drawNativeNotification
    SHX1_2 = "Press ~INPUT_CONTEXT~ to use the cash register"
    SHX0_2(SHX1_2)
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 0
    SHX2_2 = 51
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = RageUI
      SHX0_2 = SHX0_2.Visible
      SHX1_2 = RMenu
      SHX2_2 = SHX1_2
      SHX1_2 = SHX1_2.Get
      SHX3_2 = "business"
      SHX4_2 = "waiter_mainmenu"
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX2_2 = true
      SHX0_2(SHX1_2, SHX2_2)
    end
  end
end
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX1_2 = SHX0_2.jobInfo
  SHX2_2 = {}
  SHX1_2.markers = SHX2_2
  SHX1_2 = SHX0_2.jobInfo
  SHX2_2 = {}
  SHX1_2.areas = SHX2_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2.jobMetadata
  SHX2_2 = SHX2_2.cashRegisterPositions
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = tCMG
    SHX7_2 = SHX7_2.addMarker
    SHX8_2 = SHX6_2.x
    SHX9_2 = SHX6_2.y
    SHX10_2 = SHX6_2.z
    SHX10_2 = SHX10_2 - 0.6
    SHX11_2 = 0.2
    SHX12_2 = 0.2
    SHX13_2 = 0.2
    SHX14_2 = 255
    SHX15_2 = 255
    SHX16_2 = 0
    SHX17_2 = 150
    SHX18_2 = 25.0
    SHX19_2 = 0
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX8_2 = table
    SHX8_2 = SHX8_2.insert
    SHX9_2 = SHX0_2.jobInfo
    SHX9_2 = SHX9_2.markers
    SHX10_2 = SHX7_2
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.createArea
    SHX9_2 = "business_waiter_"
    SHX10_2 = tostring
    SHX11_2 = SHX5_2
    SHX10_2 = SHX10_2(SHX11_2)
    SHX9_2 = SHX9_2 .. SHX10_2
    SHX10_2 = SHX6_2.xyz
    SHX11_2 = 1.0
    SHX12_2 = 1.5
    function SHX13_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX14_2 = SHX1_1
    SHX15_2 = SHX2_1
    SHX16_2 = {}
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX9_2 = table
    SHX9_2 = SHX9_2.insert
    SHX10_2 = SHX0_2.jobInfo
    SHX10_2 = SHX10_2.areas
    SHX11_2 = SHX8_2
    SHX9_2(SHX10_2, SHX11_2)
  end
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "bf3f551598"
  SHX1_2(SHX2_2)
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2.jobInfo
  SHX2_2 = SHX2_2.markers
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = tCMG
    SHX7_2 = SHX7_2.removeMarker
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
  end
  SHX1_2 = pairs
  SHX2_2 = SHX0_2.jobInfo
  SHX2_2 = SHX2_2.areas
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = tCMG
    SHX7_2 = SHX7_2.removeArea
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
  end
end
SHX6_1 = RMenu
SHX6_1 = SHX6_1.Add
SHX7_1 = "business"
SHX8_1 = "waiter_mainmenu"
SHX9_1 = RageUI
SHX9_1 = SHX9_1.CreateMenu
SHX10_1 = ""
SHX11_1 = "~b~CMG Business"
SHX12_1 = CMG
SHX12_1 = SHX12_1.getRageUIMenuWidth
SHX12_1 = SHX12_1()
SHX13_1 = CMG
SHX13_1 = SHX13_1.getRageUIMenuHeight
SHX13_1 = SHX13_1()
SHX14_1 = "cmg_marketui"
SHX15_1 = "cmg_marketui"
SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX6_1(SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1)
SHX6_1 = RMenu
SHX6_1 = SHX6_1.Add
SHX7_1 = "business"
SHX8_1 = "waiter_placeorder"
SHX9_1 = RageUI
SHX9_1 = SHX9_1.CreateSubMenu
SHX10_1 = RMenu
SHX11_1 = SHX10_1
SHX10_1 = SHX10_1.Get
SHX12_1 = "business"
SHX13_1 = "waiter_mainmenu"
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX11_1 = ""
SHX12_1 = "~b~CMG Business"
SHX13_1 = CMG
SHX13_1 = SHX13_1.getRageUIMenuWidth
SHX13_1 = SHX13_1()
SHX14_1 = CMG
SHX14_1 = SHX14_1.getRageUIMenuHeight
SHX14_1 = SHX14_1()
SHX15_1 = "cmg_marketui"
SHX16_1 = "cmg_marketui"
SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1)
SHX6_1(SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1)
SHX6_1 = RMenu
SHX6_1 = SHX6_1.Add
SHX7_1 = "business"
SHX8_1 = "waiter_additem"
SHX9_1 = RageUI
SHX9_1 = SHX9_1.CreateSubMenu
SHX10_1 = RMenu
SHX11_1 = SHX10_1
SHX10_1 = SHX10_1.Get
SHX12_1 = "business"
SHX13_1 = "waiter_placeorder"
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX11_1 = ""
SHX12_1 = "~b~CMG Business"
SHX13_1 = CMG
SHX13_1 = SHX13_1.getRageUIMenuWidth
SHX13_1 = SHX13_1()
SHX14_1 = CMG
SHX14_1 = SHX14_1.getRageUIMenuHeight
SHX14_1 = SHX14_1()
SHX15_1 = "cmg_marketui"
SHX16_1 = "cmg_marketui"
SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1)
SHX6_1(SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1)
SHX6_1 = RMenu
SHX6_1 = SHX6_1.Add
SHX7_1 = "business"
SHX8_1 = "waiter_additemamount"
SHX9_1 = RageUI
SHX9_1 = SHX9_1.CreateSubMenu
SHX10_1 = RMenu
SHX11_1 = SHX10_1
SHX10_1 = SHX10_1.Get
SHX12_1 = "business"
SHX13_1 = "waiter_additem"
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX11_1 = ""
SHX12_1 = "~b~CMG Business"
SHX13_1 = CMG
SHX13_1 = SHX13_1.getRageUIMenuWidth
SHX13_1 = SHX13_1()
SHX14_1 = CMG
SHX14_1 = SHX14_1.getRageUIMenuHeight
SHX14_1 = SHX14_1()
SHX15_1 = "cmg_marketui"
SHX16_1 = "cmg_marketui"
SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1)
SHX6_1(SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1)
function SHX6_1(SHX0_2)
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
    
    local SHX2_3, SHX3_3
    SHX2_3 = SHX0_3.orderId
    SHX3_3 = SHX1_3.orderId
    SHX2_3 = SHX2_3 > SHX3_3
    return SHX2_3
  end
  SHX1_2(SHX2_2, SHX3_2)
  return SHX0_2
end
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX0_2.locationInfo
  SHX2_2 = SHX2_2.jobMarker
  SHX1_2 = SHX1_2 - SHX2_2
  SHX1_2 = #SHX1_2
  SHX1_2 = SHX1_2 < 75.0
  return SHX1_2
end
SHX8_1 = RageUI
SHX8_1 = SHX8_1.CreateWhile
SHX9_1 = 1.0
SHX10_1 = RMenu
SHX11_1 = SHX10_1
SHX10_1 = SHX10_1.Get
SHX12_1 = "business"
SHX13_1 = "waiter_mainmenu"
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX11_1 = nil
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "business"
  SHX4_2 = "waiter_mainmenu"
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
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getUserBusinessData
    SHX1_3 = "waiter"
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 then
      SHX1_3 = SHX7_1
      SHX2_3 = SHX0_3
      SHX1_3 = SHX1_3(SHX2_3)
      if SHX1_3 then
        goto SHX_LABEL_16
      end
    end
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.CloseAll
    SHX1_3()
    return
    -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
    ::SHX_LABEL_16::
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "~g~Place Order"
    SHX3_3 = ""
    SHX4_3 = {}
    SHX4_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX5_3 = true
    function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = SHX0_3.jobInfo
        SHX4_4 = {}
        SHX3_4.addedItems = SHX4_4
      end
    end
    SHX7_3 = RMenu
    SHX8_3 = SHX7_3
    SHX7_3 = SHX7_3.Get
    SHX9_3 = "business"
    SHX10_3 = "waiter_placeorder"
    SHX7_3, SHX8_3, SHX9_3, SHX10_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3)
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "~y~View Orders"
    SHX3_3 = ""
    SHX4_3 = {}
    SHX4_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX5_3 = true
    function SHX6_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX7_3 = RMenu
    SHX8_3 = SHX7_3
    SHX7_3 = SHX7_3.Get
    SHX9_3 = "business"
    SHX10_3 = "waiter_vieworders"
    SHX7_3, SHX8_3, SHX9_3, SHX10_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3)
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "business"
  SHX4_2 = "waiter_placeorder"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getUserBusinessData
    SHX1_3 = "waiter"
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 then
      SHX1_3 = SHX7_1
      SHX2_3 = SHX0_3
      SHX1_3 = SHX1_3(SHX2_3)
      if SHX1_3 then
        goto SHX_LABEL_16
      end
    end
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.CloseAll
    SHX1_3()
    return
    -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
    ::SHX_LABEL_16::
    SHX1_3 = 0
    SHX2_3 = pairs
    SHX3_3 = SHX0_3.jobInfo
    SHX3_3 = SHX3_3.addedItems
    SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3)
    for SHX6_3, SHX7_3 in SHX2_3, SHX3_3, SHX4_3, SHX5_3 do
      SHX8_3 = SHX0_3.locationInfo
      SHX8_3 = SHX8_3.items
      SHX8_3 = SHX8_3[SHX6_3]
      SHX9_3 = CMG
      SHX9_3 = SHX9_3.getBusinessPriceOverrides
      SHX10_3 = SHX0_3.name
      SHX9_3 = SHX9_3(SHX10_3)
      SHX9_3 = SHX9_3[SHX6_3]
      if not SHX9_3 then
        SHX9_3 = SHX0_3.jobMetadata
        SHX9_3 = SHX9_3.sellableItems
        SHX9_3 = SHX9_3[SHX6_3]
      end
      SHX10_3 = SHX9_3 * SHX7_3
      SHX1_3 = SHX1_3 + SHX10_3
      SHX11_3 = RageUI
      SHX11_3 = SHX11_3.ButtonWithStyle
      SHX12_3 = tostring
      SHX13_3 = SHX7_3
      SHX12_3 = SHX12_3(SHX13_3)
      SHX13_3 = "x "
      SHX14_3 = SHX8_3[1]
      SHX12_3 = SHX12_3 .. SHX13_3 .. SHX14_3
      SHX13_3 = ""
      SHX14_3 = {}
      SHX15_3 = "\194\163"
      SHX16_3 = getMoneyStringFormatted
      SHX17_3 = SHX10_3
      SHX16_3 = SHX16_3(SHX17_3)
      SHX15_3 = SHX15_3 .. SHX16_3
      SHX14_3.RightLabel = SHX15_3
      SHX15_3 = true
      function SHX16_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      SHX11_3(SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
    end
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "~y~Add Item"
    SHX4_3 = ""
    SHX5_3 = {}
    SHX5_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX6_3 = true
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "e76e0858eb"
        SHX5_4 = SHX0_3.name
        SHX3_4(SHX4_4, SHX5_4)
      end
    end
    SHX8_3 = RMenu
    SHX9_3 = SHX8_3
    SHX8_3 = SHX8_3.Get
    SHX10_3 = "business"
    SHX11_3 = "waiter_additem"
    SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3)
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
    SHX2_3 = table
    SHX2_3 = SHX2_3.count
    SHX3_3 = SHX0_3.jobInfo
    SHX3_3 = SHX3_3.addedItems
    SHX2_3 = SHX2_3(SHX3_3)
    if SHX2_3 > 0 then
      SHX2_3 = RageUI
      SHX2_3 = SHX2_3.ButtonWithStyle
      SHX3_3 = "~g~Request Payment Now"
      SHX4_3 = "This takes payment now, and should be used for customers in the restaurant."
      SHX5_3 = {}
      SHX6_3 = "\194\163"
      SHX7_3 = getMoneyStringFormatted
      SHX8_3 = SHX1_3
      SHX7_3 = SHX7_3(SHX8_3)
      SHX6_3 = SHX6_3 .. SHX7_3
      SHX5_3.RightLabel = SHX6_3
      SHX6_3 = true
      function SHX7_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "79eec4ec28"
          SHX5_4 = SHX0_3.jobInfo
          SHX5_4 = SHX5_4.addedItems
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
      SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX2_3 = RageUI
      SHX2_3 = SHX2_3.ButtonWithStyle
      SHX3_3 = "~g~Request Payment Later"
      SHX4_3 = "This takes payment later, and should be used when delivering to a location outside the complex (takeaways)."
      SHX5_3 = {}
      SHX6_3 = "\194\163"
      SHX7_3 = getMoneyStringFormatted
      SHX8_3 = SHX1_3
      SHX7_3 = SHX7_3(SHX8_3)
      SHX6_3 = SHX6_3 .. SHX7_3
      SHX5_3.RightLabel = SHX6_3
      SHX6_3 = true
      function SHX7_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "09b7549346"
          SHX5_4 = SHX0_3.jobInfo
          SHX5_4 = SHX5_4.addedItems
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
      SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "business"
  SHX4_2 = "waiter_additem"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getUserBusinessData
    SHX1_3 = "waiter"
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 then
      SHX1_3 = SHX7_1
      SHX2_3 = SHX0_3
      SHX1_3 = SHX1_3(SHX2_3)
      if SHX1_3 then
        goto SHX_LABEL_16
      end
    end
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.CloseAll
    SHX1_3()
    return
    -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
    ::SHX_LABEL_16::
    SHX1_3 = pairs
    SHX2_3 = SHX0_3.jobMetadata
    SHX2_3 = SHX2_3.sellableItems
    SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
    for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
      SHX7_3 = SHX0_3.locationInfo
      SHX7_3 = SHX7_3.items
      SHX7_3 = SHX7_3[SHX5_3]
      if SHX7_3 then
        SHX8_3 = CMG
        SHX8_3 = SHX8_3.getBusinessPriceOverrides
        SHX9_3 = SHX0_3.name
        SHX8_3 = SHX8_3(SHX9_3)
        SHX8_3 = SHX8_3[SHX5_3]
        if not SHX8_3 then
          SHX8_3 = SHX6_3
        end
        SHX9_3 = RageUI
        SHX9_3 = SHX9_3.ButtonWithStyle
        SHX10_3 = "Add "
        SHX11_3 = SHX7_3[1]
        SHX10_3 = SHX10_3 .. SHX11_3
        SHX11_3 = ""
        SHX12_3 = {}
        SHX13_3 = "\194\163"
        SHX14_3 = getMoneyStringFormatted
        SHX15_3 = SHX8_3
        SHX14_3 = SHX14_3(SHX15_3)
        SHX13_3 = SHX13_3 .. SHX14_3
        SHX12_3.RightLabel = SHX13_3
        SHX13_3 = true
        function SHX14_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4
          if SHX2_4 then
            SHX3_4 = SHX0_3.jobInfo
            SHX4_4 = SHX5_3
            SHX3_4.lastPickedItemId = SHX4_4
            SHX3_4 = SHX0_3.jobInfo
            SHX3_4.pickedItemAmount = 1
          end
        end
        SHX15_3 = RMenu
        SHX16_3 = SHX15_3
        SHX15_3 = SHX15_3.Get
        SHX17_3 = "business"
        SHX18_3 = "waiter_additemamount"
        SHX15_3, SHX16_3, SHX17_3, SHX18_3 = SHX15_3(SHX16_3, SHX17_3, SHX18_3)
        SHX9_3(SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
      end
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "business"
  SHX4_2 = "waiter_additemamount"
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
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getUserBusinessData
    SHX1_3 = "waiter"
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 then
      SHX1_3 = SHX7_1
      SHX2_3 = SHX0_3
      SHX1_3 = SHX1_3(SHX2_3)
      if SHX1_3 then
        goto SHX_LABEL_16
      end
    end
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.CloseAll
    SHX1_3()
    return
    -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
    ::SHX_LABEL_16::
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.List
    SHX2_3 = "Amount To Add"
    SHX3_3 = SHX0_1
    SHX4_3 = SHX0_3.jobInfo
    SHX4_3 = SHX4_3.pickedItemAmount
    SHX5_3 = ""
    SHX6_3 = {}
    SHX7_3 = true
    function SHX8_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX0_3.jobInfo
      SHX4_4.pickedItemAmount = SHX3_4
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "~g~Add Item To Order"
    SHX3_3 = ""
    SHX4_3 = {}
    SHX4_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX5_3 = true
    function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = SHX0_3.jobInfo
        SHX3_4 = SHX3_4.addedItems
        SHX4_4 = SHX0_3.jobInfo
        SHX4_4 = SHX4_4.lastPickedItemId
        SHX5_4 = SHX0_3.jobInfo
        SHX6_4 = SHX5_4.pickedItemAmount
        SHX5_4 = SHX0_1
        SHX5_4 = SHX5_4[SHX6_4]
        SHX3_4[SHX4_4] = SHX5_4
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "e76e0858eb"
        SHX5_4 = SHX0_3.name
        SHX3_4(SHX4_4, SHX5_4)
      end
    end
    SHX7_3 = RMenu
    SHX8_3 = SHX7_3
    SHX7_3 = SHX7_3.Get
    SHX9_3 = "business"
    SHX10_3 = "waiter_placeorder"
    SHX7_3, SHX8_3, SHX9_3, SHX10_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3)
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1)
SHX8_1 = CMG
function SHX9_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = SHX0_2
  SHX3_2 = "_vieworders"
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX3_2 = SHX0_2
  SHX4_2 = "_vieworder"
  SHX3_2 = SHX3_2 .. SHX4_2
  if SHX1_2 then
    SHX4_2 = RMenu
    SHX4_2 = SHX4_2.Add
    SHX5_2 = "business"
    SHX6_2 = SHX2_2
    SHX7_2 = RageUI
    SHX7_2 = SHX7_2.CreateSubMenu
    SHX8_2 = RMenu
    SHX9_2 = SHX8_2
    SHX8_2 = SHX8_2.Get
    SHX10_2 = "business"
    SHX11_2 = SHX1_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX9_2 = ""
    SHX10_2 = "~b~CMG Business"
    SHX11_2 = CMG
    SHX11_2 = SHX11_2.getRageUIMenuWidth
    SHX11_2 = SHX11_2()
    SHX12_2 = CMG
    SHX12_2 = SHX12_2.getRageUIMenuHeight
    SHX12_2 = SHX12_2()
    SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  else
    SHX4_2 = RMenu
    SHX4_2 = SHX4_2.Add
    SHX5_2 = "business"
    SHX6_2 = SHX2_2
    SHX7_2 = RageUI
    SHX7_2 = SHX7_2.CreateMenu
    SHX8_2 = ""
    SHX9_2 = "~b~CMG Business"
    SHX10_2 = CMG
    SHX10_2 = SHX10_2.getRageUIMenuWidth
    SHX10_2 = SHX10_2()
    SHX11_2 = CMG
    SHX11_2 = SHX11_2.getRageUIMenuHeight
    SHX11_2, SHX12_2 = SHX11_2()
    SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  end
  SHX4_2 = RMenu
  SHX4_2 = SHX4_2.Add
  SHX5_2 = "business"
  SHX6_2 = SHX3_2
  SHX7_2 = RageUI
  SHX7_2 = SHX7_2.CreateSubMenu
  SHX8_2 = RMenu
  SHX9_2 = SHX8_2
  SHX8_2 = SHX8_2.Get
  SHX10_2 = "business"
  SHX11_2 = SHX2_2
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX9_2 = ""
  SHX10_2 = "~b~CMG Business"
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.getRageUIMenuWidth
  SHX11_2 = SHX11_2()
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.getRageUIMenuHeight
  SHX12_2 = SHX12_2()
  SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX4_2 = RageUI
  SHX4_2 = SHX4_2.CreateWhile
  SHX5_2 = 1.0
  SHX6_2 = RMenu
  SHX7_2 = SHX6_2
  SHX6_2 = SHX6_2.Get
  SHX8_2 = "business"
  SHX9_2 = SHX2_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX7_2 = nil
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.IsVisible
    SHX1_3 = RMenu
    SHX2_3 = SHX1_3
    SHX1_3 = SHX1_3.Get
    SHX3_3 = "business"
    SHX4_3 = SHX2_2
    SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    SHX2_3 = true
    SHX3_3 = false
    SHX4_3 = true
    function SHX5_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4, SHX14_4, SHX15_4, SHX16_4, SHX17_4
      SHX0_4 = CMG
      SHX0_4 = SHX0_4.getUserBusinessData
      SHX1_4 = SHX0_2
      SHX0_4 = SHX0_4(SHX1_4)
      if SHX0_4 then
        SHX1_4 = SHX0_2
        if "waiter" ~= SHX1_4 then
          goto SHX_LABEL_19
        end
        SHX1_4 = SHX7_1
        SHX2_4 = SHX0_4
        SHX1_4 = SHX1_4(SHX2_4)
        if SHX1_4 then
          goto SHX_LABEL_19
        end
      end
      SHX1_4 = RageUI
      SHX1_4 = SHX1_4.CloseAll
      SHX1_4()
      return
      -- [FIX IF ERROR] Move ::SHX_LABEL_19:: outside nested blocks until all 'goto SHX_LABEL_19' can see it
      ::SHX_LABEL_19::
      SHX1_4 = SHX0_4.state
      SHX1_4 = SHX1_4.orders
      SHX1_4 = #SHX1_4
      if 0 == SHX1_4 then
        SHX1_4 = RageUI
        SHX1_4 = SHX1_4.Separator
        SHX2_4 = "~r~No orders to display."
        SHX1_4(SHX2_4)
      end
      SHX1_4 = pairs
      SHX2_4 = SHX6_1
      SHX3_4 = SHX0_4.state
      SHX3_4 = SHX3_4.orders
      SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4, SHX14_4, SHX15_4, SHX16_4, SHX17_4 = SHX2_4(SHX3_4)
      SHX1_4, SHX2_4, SHX3_4, SHX4_4 = SHX1_4(SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4, SHX14_4, SHX15_4, SHX16_4, SHX17_4)
      for SHX5_4, SHX6_4 in SHX1_4, SHX2_4, SHX3_4, SHX4_4 do
        SHX7_4 = SHX6_4.isCompleted
        if SHX7_4 then
          SHX7_4 = "~g~"
          if SHX7_4 then
            goto SHX_LABEL_42
          end
        end
        SHX7_4 = "~y~"
        -- [FIX IF ERROR] Move ::SHX_LABEL_42:: outside nested blocks until all 'goto SHX_LABEL_42' can see it
        ::SHX_LABEL_42::
        SHX8_4 = RageUI
        SHX8_4 = SHX8_4.ButtonWithStyle
        SHX9_4 = SHX7_4
        SHX10_4 = "View Order #"
        SHX11_4 = tostring
        SHX12_4 = SHX6_4.orderId
        SHX11_4 = SHX11_4(SHX12_4)
        SHX9_4 = SHX9_4 .. SHX10_4 .. SHX11_4
        SHX10_4 = ""
        SHX11_4 = {}
        SHX11_4.RightLabel = "\226\134\146\226\134\146\226\134\146"
        SHX12_4 = true
        function SHX13_4(SHX0_5, SHX1_5, SHX2_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_5, SHX4_5
          if SHX2_5 then
            SHX3_5 = SHX0_4.jobInfo
            SHX4_5 = SHX6_4
            SHX3_5.selectedOrderInfo = SHX4_5
          end
        end
        SHX14_4 = RMenu
        SHX15_4 = SHX14_4
        SHX14_4 = SHX14_4.Get
        SHX16_4 = "business"
        SHX17_4 = SHX3_2
        SHX14_4, SHX15_4, SHX16_4, SHX17_4 = SHX14_4(SHX15_4, SHX16_4, SHX17_4)
        SHX8_4(SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4, SHX14_4, SHX15_4, SHX16_4, SHX17_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.IsVisible
    SHX1_3 = RMenu
    SHX2_3 = SHX1_3
    SHX1_3 = SHX1_3.Get
    SHX3_3 = "business"
    SHX4_3 = SHX3_2
    SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    SHX2_3 = true
    SHX3_3 = false
    SHX4_3 = true
    function SHX5_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4, SHX14_4, SHX15_4
      SHX0_4 = CMG
      SHX0_4 = SHX0_4.getUserBusinessData
      SHX1_4 = SHX0_2
      SHX0_4 = SHX0_4(SHX1_4)
      if SHX0_4 then
        SHX1_4 = SHX0_2
        if "waiter" ~= SHX1_4 then
          goto SHX_LABEL_19
        end
        SHX1_4 = SHX7_1
        SHX2_4 = SHX0_4
        SHX1_4 = SHX1_4(SHX2_4)
        if SHX1_4 then
          goto SHX_LABEL_19
        end
      end
      SHX1_4 = RageUI
      SHX1_4 = SHX1_4.CloseAll
      SHX1_4()
      return
      -- [FIX IF ERROR] Move ::SHX_LABEL_19:: outside nested blocks until all 'goto SHX_LABEL_19' can see it
      ::SHX_LABEL_19::
      SHX1_4 = SHX0_4.jobInfo
      SHX1_4 = SHX1_4.selectedOrderInfo
      SHX2_4 = SHX1_4.isCompleted
      if SHX2_4 then
        SHX2_4 = "~g~"
        if SHX2_4 then
          goto SHX_LABEL_28
        end
      end
      SHX2_4 = "~y~"
      -- [FIX IF ERROR] Move ::SHX_LABEL_28:: outside nested blocks until all 'goto SHX_LABEL_28' can see it
      ::SHX_LABEL_28::
      SHX3_4 = RageUI
      SHX3_4 = SHX3_4.Separator
      SHX4_4 = SHX2_4
      SHX5_4 = "Order #"
      SHX6_4 = tostring
      SHX7_4 = SHX1_4.orderId
      SHX6_4 = SHX6_4(SHX7_4)
      SHX7_4 = " - "
      SHX8_4 = SHX1_4.timeCreated
      SHX4_4 = SHX4_4 .. SHX5_4 .. SHX6_4 .. SHX7_4 .. SHX8_4
      SHX3_4(SHX4_4)
      SHX3_4 = SHX1_4.hasPaid
      if SHX3_4 then
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.Separator
        SHX4_4 = "~g~Payment Paid (Total \194\163"
        SHX5_4 = getMoneyStringFormatted
        SHX6_4 = SHX1_4.totalPrice
        SHX5_4 = SHX5_4(SHX6_4)
        SHX6_4 = ")"
        SHX4_4 = SHX4_4 .. SHX5_4 .. SHX6_4
        SHX3_4(SHX4_4)
      else
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.Separator
        SHX4_4 = "~r~Payment Pending (Total \194\163"
        SHX5_4 = getMoneyStringFormatted
        SHX6_4 = SHX1_4.totalPrice
        SHX5_4 = SHX5_4(SHX6_4)
        SHX6_4 = ")"
        SHX4_4 = SHX4_4 .. SHX5_4 .. SHX6_4
        SHX3_4(SHX4_4)
      end
      SHX3_4 = pairs
      SHX4_4 = SHX1_4.items
      SHX3_4, SHX4_4, SHX5_4, SHX6_4 = SHX3_4(SHX4_4)
      for SHX7_4, SHX8_4 in SHX3_4, SHX4_4, SHX5_4, SHX6_4 do
        SHX9_4 = SHX0_4.locationInfo
        SHX9_4 = SHX9_4.items
        SHX9_4 = SHX9_4[SHX7_4]
        SHX10_4 = RageUI
        SHX10_4 = SHX10_4.ButtonWithStyle
        SHX11_4 = tostring
        SHX12_4 = SHX8_4
        SHX11_4 = SHX11_4(SHX12_4)
        SHX12_4 = "x "
        SHX13_4 = SHX9_4[1]
        SHX11_4 = SHX11_4 .. SHX12_4 .. SHX13_4
        SHX12_4 = ""
        SHX13_4 = {}
        SHX14_4 = true
        function SHX15_4()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_5, SHX1_5
        end
        SHX10_4(SHX11_4, SHX12_4, SHX13_4, SHX14_4, SHX15_4)
      end
      SHX3_4 = SHX0_2
      if "manager" ~= SHX3_4 then
        SHX3_4 = SHX0_2
        if "waiter" ~= SHX3_4 then
          SHX3_4 = SHX0_2
          if "delivery" ~= SHX3_4 then
            goto SHX_LABEL_121
          end
        end
      end
      SHX3_4 = SHX1_4.hasPaid
      if not SHX3_4 then
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.ButtonWithStyle
        SHX4_4 = "~g~Request Nearby Payment"
        SHX5_4 = ""
        SHX6_4 = {}
        SHX6_4.RightLabel = "\226\134\146\226\134\146\226\134\146"
        SHX7_4 = true
        function SHX8_4(SHX0_5, SHX1_5, SHX2_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_5, SHX4_5, SHX5_5
          if SHX2_5 then
            SHX3_5 = TriggerServerEvent
            SHX4_5 = "d5eac1b64e"
            SHX5_5 = SHX1_4.orderId
            SHX3_5(SHX4_5, SHX5_5)
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
      else
        SHX3_4 = SHX1_4.isCompleted
        if not SHX3_4 then
          SHX3_4 = RageUI
          SHX3_4 = SHX3_4.ButtonWithStyle
          SHX4_4 = "~g~Mark As Completed"
          SHX5_4 = ""
          SHX6_4 = {}
          SHX6_4.RightLabel = "\226\134\146\226\134\146\226\134\146"
          SHX7_4 = true
          function SHX8_4(SHX0_5, SHX1_5, SHX2_5)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_5, SHX4_5, SHX5_5
            if SHX2_5 then
              SHX3_5 = TriggerServerEvent
              SHX4_5 = "9e28ed4893"
              SHX5_5 = SHX1_4.orderId
              SHX3_5(SHX4_5, SHX5_5)
              SHX1_4.isCompleted = true
            end
          end
          SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_121:: outside nested blocks until all 'goto SHX_LABEL_121' can see it
      ::SHX_LABEL_121::
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
  end
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
SHX8_1.addGenericBusinessOrderView = SHX9_1
SHX8_1 = CMG
SHX8_1 = SHX8_1.addGenericBusinessOrderView
SHX9_1 = "waiter"
SHX10_1 = "waiter_mainmenu"
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "7aa155f442"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getUserBusinessData
  SHX1_2 = "waiter"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = ExecuteCommand
    SHX1_2 = "e notepad"
    SHX0_2(SHX1_2)
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.Visible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "business"
    SHX4_2 = "waiter_mainmenu"
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX2_2 = true
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "bf3f551598"
    SHX0_2(SHX1_2)
  end
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = {}
SHX9_1 = {}
SHX9_1.init = SHX3_1
SHX9_1.tick = SHX4_1
SHX9_1.finish = SHX5_1
SHX9_1.next = "main"
SHX8_1.main = SHX9_1
SHX9_1 = CMG
SHX9_1 = SHX9_1.registerBusinessJob
SHX10_1 = "waiter"
SHX11_1 = nil
SHX12_1 = "main"
SHX13_1 = SHX8_1
SHX14_1 = nil
SHX9_1(SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1)
