-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1
function SHX0_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = GetResourceKvpString
  SHX1_2 = "cmg_scope_horizontal"
  SHX0_2 = SHX0_2(SHX1_2)
  if nil == SHX0_2 or "" == SHX0_2 then
    SHX1_2 = 50
    return SHX1_2
  else
    SHX1_2 = tonumber
    SHX2_2 = SHX0_2
    return SHX1_2(SHX2_2)
  end
end
SHX1_1 = {}
SHX2_1 = SHX0_1
SHX2_1 = SHX2_1()
SHX3_1 = 1
SHX4_1 = 100
SHX5_1 = 1
for SHX6_1 = SHX3_1, SHX4_1, SHX5_1 do
  SHX7_1 = table
  SHX7_1 = SHX7_1.insert
  SHX8_1 = SHX1_1
  SHX9_1 = string
  SHX9_1 = SHX9_1.format
  SHX10_1 = "%d%%"
  SHX11_1 = SHX6_1
  SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1 = SHX9_1(SHX10_1, SHX11_1)
  SHX7_1(SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
end
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = GetResourceKvpString
  SHX1_2 = "cmg_scope_vertical"
  SHX0_2 = SHX0_2(SHX1_2)
  if nil == SHX0_2 or "" == SHX0_2 then
    SHX1_2 = 30
    return SHX1_2
  else
    SHX1_2 = tonumber
    SHX2_2 = SHX0_2
    return SHX1_2(SHX2_2)
  end
end
SHX4_1 = {}
SHX5_1 = SHX3_1
SHX5_1 = SHX5_1()
SHX6_1 = 1
SHX7_1 = 100
SHX8_1 = 1
for SHX9_1 = SHX6_1, SHX7_1, SHX8_1 do
  SHX10_1 = table
  SHX10_1 = SHX10_1.insert
  SHX11_1 = SHX4_1
  SHX12_1 = string
  SHX12_1 = SHX12_1.format
  SHX13_1 = "%d%%"
  SHX14_1 = SHX9_1
  SHX12_1, SHX13_1, SHX14_1, SHX15_1 = SHX12_1(SHX13_1, SHX14_1)
  SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
end
SHX6_1 = GetResourceKvpString
SHX7_1 = "cmg_scope_enabled"
SHX6_1 = SHX6_1(SHX7_1)
SHX6_1 = "true" == SHX6_1
SHX7_1 = false
SHX8_1 = RMenu
SHX8_1 = SHX8_1.Add
SHX9_1 = "scope"
SHX10_1 = "main"
SHX11_1 = RageUI
SHX11_1 = SHX11_1.CreateMenu
SHX12_1 = "Scope Settings"
SHX13_1 = "Main Menu"
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
SHX12_1 = "scope"
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
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "scope"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = true
    SHX7_1 = SHX0_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.List
    SHX1_3 = "Horizontal Position"
    SHX2_3 = SHX1_1
    SHX3_3 = SHX2_1
    SHX4_3 = "The horizontal position of the distance text"
    SHX5_3 = {}
    SHX6_3 = true
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4, SHX5_4, SHX6_4, SHX7_4
      SHX2_1 = SHX3_4
      if SHX1_4 then
        SHX4_4 = SetResourceKvp
        SHX5_4 = "cmg_scope_horizontal"
        SHX6_4 = tostring
        SHX7_4 = SHX3_4
        SHX6_4, SHX7_4 = SHX6_4(SHX7_4)
        SHX4_4(SHX5_4, SHX6_4, SHX7_4)
      end
    end
    function SHX8_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.List
    SHX1_3 = "Vertical Position"
    SHX2_3 = SHX4_1
    SHX3_3 = SHX5_1
    SHX4_3 = "The vertical position of the distance text"
    SHX5_3 = {}
    SHX6_3 = true
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4, SHX5_4, SHX6_4, SHX7_4
      SHX5_1 = SHX3_4
      if SHX1_4 then
        SHX4_4 = SetResourceKvp
        SHX5_4 = "cmg_scope_vertical"
        SHX6_4 = tostring
        SHX7_4 = SHX3_4
        SHX6_4, SHX7_4 = SHX6_4(SHX7_4)
        SHX4_4(SHX5_4, SHX6_4, SHX7_4)
      end
    end
    function SHX8_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Checkbox
    SHX1_3 = "Enabled"
    SHX2_3 = "Whether the distance should be shown when using a weapon scope"
    SHX3_3 = SHX6_1
    SHX4_3 = {}
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4, SHX5_4, SHX6_4, SHX7_4
      SHX6_1 = SHX3_4
      if SHX2_4 then
        SHX4_4 = SetResourceKvp
        SHX5_4 = "cmg_scope_enabled"
        SHX6_4 = tostring
        SHX7_4 = SHX3_4
        SHX6_4, SHX7_4 = SHX6_4(SHX7_4)
        SHX4_4(SHX5_4, SHX6_4, SHX7_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1)
SHX8_1 = RegisterCommand
SHX9_1 = "scope"
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
  SHX3_2 = "scope"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX11_1 = false
SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX8_1 = CMG
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetCurrentPedWeaponEntityIndex
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 == SHX1_2 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = {}
  SHX3_2 = -767279652
  SHX4_2 = -2101279869
  SHX5_2 = -1135289737
  SHX6_2 = 471997210
  SHX7_2 = 1528590652
  SHX2_2[1] = SHX3_2
  SHX2_2[2] = SHX4_2
  SHX2_2[3] = SHX5_2
  SHX2_2[4] = SHX6_2
  SHX2_2[5] = SHX7_2
  SHX3_2 = ipairs
  SHX4_2 = SHX2_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = HasWeaponGotWeaponComponent
    SHX10_2 = SHX1_2
    SHX11_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
    if SHX9_2 then
      SHX9_2 = true
      return SHX9_2
    end
  end
  SHX3_2 = GetSelectedPedWeapon
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = GetWeapontypeGroup
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = GetPedAmmoTypeFromWeapon
  SHX6_2 = SHX0_2
  SHX7_2 = SHX3_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  if -1212426201 == SHX4_2 and -1878508229 ~= SHX5_2 then
    SHX6_2 = true
    return SHX6_2
  end
  SHX6_2 = false
  return SHX6_2
end
SHX8_1.doesCurrentWeaponHaveScope = SHX9_1
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = GetGameplayCamCoord
  SHX0_2 = SHX0_2()
  SHX1_2 = GetGameplayCamRot
  SHX2_2 = 2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.rotationToDirection
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX2_2 * 500.0
  SHX3_2 = SHX0_2 + SHX3_2
  SHX4_2 = _ENV
  SHX5_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  SHX4_2 = SHX4_2[SHX5_2]
  SHX5_2 = SHX0_2.x
  SHX6_2 = SHX0_2.y
  SHX7_2 = SHX0_2.z
  SHX8_2 = SHX3_2.x
  SHX9_2 = SHX3_2.y
  SHX10_2 = SHX3_2.z
  SHX11_2 = -1
  SHX12_2 = PlayerPedId
  SHX12_2 = SHX12_2()
  SHX13_2 = 4
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX5_2 = GetShapeTestResult
  SHX6_2 = SHX4_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX5_2(SHX6_2)
  SHX10_2 = SHX0_2 - SHX7_2
  SHX10_2 = #SHX10_2
  return SHX10_2
end
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = SHX6_1
  if SHX0_2 then
    SHX0_2 = SHX7_1
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.doesCurrentWeaponHaveScope
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        goto SHX_LABEL_61
      end
      SHX0_2 = IsPlayerFreeAiming
      SHX1_2 = PlayerId
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX1_2()
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      if not SHX0_2 then
        goto SHX_LABEL_61
      end
    end
    SHX0_2 = SHX7_1
    if SHX0_2 then
      SHX0_2 = RageUI
      SHX0_2 = SHX0_2.Visible
      SHX1_2 = RMenu
      SHX2_2 = SHX1_2
      SHX1_2 = SHX1_2.Get
      SHX3_2 = "scope"
      SHX4_2 = "main"
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX7_1 = SHX0_2
    end
    SHX0_2 = math
    SHX0_2 = SHX0_2.round
    SHX1_2 = SHX8_1
    SHX1_2 = SHX1_2()
    SHX2_2 = 1
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    SHX1_2 = DrawAdvancedText
    SHX2_2 = SHX2_1
    SHX2_2 = SHX2_2 / 100.0
    SHX3_2 = SHX5_1
    SHX3_2 = SHX3_2 / 100.0
    SHX4_2 = 1.0
    SHX3_2 = SHX4_2 - SHX3_2
    SHX4_2 = 0.1
    SHX5_2 = 0.002
    SHX6_2 = 0.4
    SHX7_2 = string
    SHX7_2 = SHX7_2.format
    SHX8_2 = "%dm"
    SHX9_2 = SHX0_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 255
    SHX12_2 = 0
    SHX13_2 = 0
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_61:: outside nested blocks until all 'goto SHX_LABEL_61' can see it
  ::SHX_LABEL_61::
end
SHX10_1 = CMG
SHX10_1 = SHX10_1.createThreadOnTick
SHX11_1 = SHX9_1
SHX12_1 = "Sniper Scope Distance"
SHX10_1(SHX11_1, SHX12_1)
