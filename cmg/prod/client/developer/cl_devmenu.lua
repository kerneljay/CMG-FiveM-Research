-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1
SHX0_1 = "0.0.1784367447"
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = false
SHX5_1 = {}
SHX6_1 = {}
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = #SHX1_2
    SHX7_2 = SHX7_2 + 1
    SHX1_2[SHX7_2] = SHX6_2
  end
  SHX2_2 = table
  SHX2_2 = SHX2_2.sort
  SHX3_2 = SHX1_2
  function SHX4_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3, SHX4_3
    SHX2_3 = tostring
    SHX3_3 = SHX0_3
    SHX2_3 = SHX2_3(SHX3_3)
    SHX3_3 = SHX2_3
    SHX2_3 = SHX2_3.lower
    SHX2_3 = SHX2_3(SHX3_3)
    SHX3_3 = tostring
    SHX4_3 = SHX1_3
    SHX3_3 = SHX3_3(SHX4_3)
    SHX4_3 = SHX3_3
    SHX3_3 = SHX3_3.lower
    SHX3_3 = SHX3_3(SHX4_3)
    SHX2_3 = SHX2_3 < SHX3_3
    return SHX2_3
  end
  SHX2_2(SHX3_2, SHX4_2)
  return SHX1_2
end
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = {}
  SHX2_2 = ipairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = #SHX1_2
    SHX8_2 = SHX8_2 + 1
    SHX9_2 = {}
    SHX9_2.i = SHX6_2
    SHX10_2 = SHX7_2.key
    if SHX10_2 then
      SHX10_2 = tostring
      SHX11_2 = SHX7_2.key
      SHX10_2 = SHX10_2(SHX11_2)
      SHX11_2 = SHX10_2
      SHX10_2 = SHX10_2.lower
      SHX10_2 = SHX10_2(SHX11_2)
      if SHX10_2 then
        goto SHX_LABEL_24
      end
    end
    SHX10_2 = nil
    -- [FIX IF ERROR] Move ::SHX_LABEL_24:: outside nested blocks until all 'goto SHX_LABEL_24' can see it
    ::SHX_LABEL_24::
    SHX9_2.key = SHX10_2
    SHX10_2 = SHX7_2.cb
    if not SHX10_2 then
      SHX10_2 = SHX7_2
    end
    SHX9_2.cb = SHX10_2
    SHX1_2[SHX8_2] = SHX9_2
  end
  SHX2_2 = table
  SHX2_2 = SHX2_2.sort
  SHX3_2 = SHX1_2
  function SHX4_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3
    SHX2_3 = SHX0_3.key
    if SHX2_3 then
      SHX2_3 = SHX1_3.key
      if SHX2_3 then
        SHX2_3 = SHX0_3.key
        SHX3_3 = SHX1_3.key
        if SHX2_3 == SHX3_3 then
          SHX2_3 = SHX0_3.i
          SHX3_3 = SHX1_3.i
          SHX2_3 = SHX2_3 < SHX3_3
          return SHX2_3
        end
        SHX2_3 = SHX0_3.key
        SHX3_3 = SHX1_3.key
        SHX2_3 = SHX2_3 < SHX3_3
        return SHX2_3
      end
    end
    SHX2_3 = SHX0_3.key
    if SHX2_3 then
      SHX2_3 = SHX1_3.key
      if not SHX2_3 then
        SHX2_3 = true
        return SHX2_3
      end
    end
    SHX2_3 = SHX0_3.key
    if not SHX2_3 then
      SHX2_3 = SHX1_3.key
      if SHX2_3 then
        SHX2_3 = false
        return SHX2_3
      end
    end
    SHX2_3 = SHX0_3.i
    SHX3_3 = SHX1_3.i
    SHX2_3 = SHX2_3 < SHX3_3
    return SHX2_3
  end
  SHX2_2(SHX3_2, SHX4_2)
  return SHX1_2
end
SHX9_1 = RMenu
SHX9_1 = SHX9_1.Add
SHX10_1 = "devmenu"
SHX11_1 = "main"
SHX12_1 = RageUI
SHX12_1 = SHX12_1.CreateMenu
SHX13_1 = ""
SHX14_1 = "Developer Tools"
SHX15_1 = CMG
SHX15_1 = SHX15_1.getRageUIMenuWidth
SHX15_1 = SHX15_1()
SHX16_1 = CMG
SHX16_1 = SHX16_1.getRageUIMenuHeight
SHX16_1, SHX17_1, SHX18_1 = SHX16_1()
SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1)
SHX9_1(SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1)
SHX9_1 = RageUI
SHX9_1 = SHX9_1.CreateWhile
SHX10_1 = 1.0
SHX11_1 = RMenu
SHX12_1 = SHX11_1
SHX11_1 = SHX11_1.Get
SHX13_1 = "devmenu"
SHX14_1 = "main"
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX12_1 = nil
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = ipairs
  SHX1_2 = SHX7_1
  SHX2_2 = SHX1_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX1_2(SHX2_2)
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX1_1
    SHX6_2 = SHX6_2[SHX5_2]
    SHX7_2 = RageUI
    SHX7_2 = SHX7_2.IsVisible
    SHX8_2 = RMenu
    SHX9_2 = SHX8_2
    SHX8_2 = SHX8_2.Get
    SHX10_2 = "devmenu"
    SHX11_2 = SHX5_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX9_2 = true
    SHX10_2 = true
    SHX11_2 = true
    function SHX12_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
      SHX0_3 = SHX5_2
      if "main" == SHX0_3 then
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Separator
        SHX1_3 = string
        SHX1_3 = SHX1_3.format
        SHX2_3 = "Latest Commit: %s"
        SHX3_3 = SHX0_1
        SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3 = SHX1_3(SHX2_3, SHX3_3)
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      end
      SHX0_3 = ipairs
      SHX1_3 = SHX8_1
      SHX2_3 = SHX6_2
      SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3 = SHX1_3(SHX2_3)
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
        SHX6_3 = SHX5_3.cb
        SHX6_3()
      end
    end
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  end
end
SHX9_1(SHX10_1, SHX11_1, SHX12_1, SHX13_1)
SHX9_1 = CMG
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = stringsplit
  SHX2_2 = SHX0_2
  SHX3_2 = "/"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = "main"
  SHX3_2 = pairs
  SHX4_2 = SHX1_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX2_2
    SHX10_2 = "_"
    SHX11_2 = SHX8_2
    SHX9_2 = SHX9_2 .. SHX10_2 .. SHX11_2
    SHX2_2 = SHX9_2
  end
  return SHX2_2
end
SHX9_1.getDevMenuId = SHX10_1
SHX9_1 = CMG
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX2_2 = stringsplit
  SHX3_2 = SHX0_2
  SHX4_2 = "/"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = "main"
  SHX4_2 = SHX1_1
  SHX4_2 = SHX4_2[SHX3_2]
  if not SHX4_2 then
    SHX4_2 = SHX1_1
    SHX5_2 = {}
    SHX4_2[SHX3_2] = SHX5_2
  end
  SHX4_2 = #SHX2_2
  if 0 == SHX4_2 then
    SHX4_2 = table
    SHX4_2 = SHX4_2.insert
    SHX5_2 = SHX1_1.main
    SHX6_2 = {}
    SHX6_2.cb = SHX1_2
    SHX4_2(SHX5_2, SHX6_2)
    return
  end
  SHX4_2 = pairs
  SHX5_2 = SHX2_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX3_2
    SHX11_2 = "_"
    SHX12_2 = SHX9_2
    SHX10_2 = SHX10_2 .. SHX11_2 .. SHX12_2
    SHX11_2 = SHX1_1
    SHX11_2 = SHX11_2[SHX10_2]
    if not SHX11_2 then
      SHX11_2 = RMenu
      SHX11_2 = SHX11_2.Add
      SHX12_2 = "devmenu"
      SHX13_2 = SHX10_2
      SHX14_2 = RageUI
      SHX14_2 = SHX14_2.CreateSubMenu
      SHX15_2 = RMenu
      SHX16_2 = SHX15_2
      SHX15_2 = SHX15_2.Get
      SHX17_2 = "devmenu"
      SHX18_2 = SHX3_2
      SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2)
      SHX16_2 = ""
      SHX17_2 = SHX9_2
      SHX18_2 = CMG
      SHX18_2 = SHX18_2.getRageUIMenuWidth
      SHX18_2 = SHX18_2()
      SHX19_2 = CMG
      SHX19_2 = SHX19_2.getRageUIMenuHeight
      SHX19_2 = SHX19_2()
      SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX11_2 = table
      SHX11_2 = SHX11_2.insert
      SHX12_2 = SHX1_1
      SHX12_2 = SHX12_2[SHX3_2]
      SHX13_2 = {}
      SHX13_2.key = SHX9_2
      function SHX14_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.ButtonWithStyle
        SHX1_3 = SHX9_2
        SHX2_3 = ""
        SHX3_3 = {}
        SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
        SHX4_3 = true
        function SHX5_3()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_4, SHX1_4
        end
        SHX6_3 = RMenu
        SHX7_3 = SHX6_3
        SHX6_3 = SHX6_3.Get
        SHX8_3 = "devmenu"
        SHX9_3 = SHX10_2
        SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      end
      SHX13_2.cb = SHX14_2
      SHX11_2(SHX12_2, SHX13_2)
      SHX11_2 = SHX1_1
      SHX12_2 = {}
      SHX11_2[SHX10_2] = SHX12_2
    end
    SHX11_2 = #SHX2_2
    if SHX8_2 == SHX11_2 then
      SHX11_2 = table
      SHX11_2 = SHX11_2.insert
      SHX12_2 = SHX1_1
      SHX12_2 = SHX12_2[SHX10_2]
      SHX13_2 = {}
      SHX13_2.cb = SHX1_2
      SHX11_2(SHX12_2, SHX13_2)
    end
    SHX3_2 = SHX10_2
  end
end
SHX9_1.registerDevMenuItems = SHX10_1
SHX9_1 = CMG
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = GetResourceKvpString
  SHX3_2 = string
  SHX3_2 = SHX3_2.format
  SHX4_2 = "devmenu_state_%s"
  SHX5_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX3_2 = nil
  if SHX2_2 then
    SHX4_2 = #SHX2_2
    if SHX4_2 > 0 then
      SHX4_2 = json
      SHX4_2 = SHX4_2.decode
      SHX5_2 = SHX2_2
      SHX4_2 = SHX4_2(SHX5_2)
      SHX3_2 = SHX4_2
    end
  end
  if not SHX3_2 then
    SHX3_2 = SHX1_2
  end
  SHX4_2 = pairs
  SHX5_2 = SHX1_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX3_2[SHX8_2]
    if not SHX10_2 then
      SHX3_2[SHX8_2] = SHX9_2
    end
  end
  SHX4_2 = SHX2_1
  SHX4_2[SHX0_2] = SHX3_2
  SHX4_2 = SHX3_1
  SHX5_2 = table
  SHX5_2 = SHX5_2.copy
  SHX6_2 = SHX3_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX4_2[SHX0_2] = SHX5_2
  return SHX3_2
end
SHX9_1.registerDevMenuState = SHX10_1
SHX9_1 = CMG
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX5_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX9_1.registerDevMenuThread = SHX10_1
SHX9_1 = CMG
function SHX10_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2
  SHX4_2 = table
  SHX4_2 = SHX4_2.insert
  SHX5_2 = SHX6_1
  SHX6_2 = {}
  SHX6_2.name = SHX0_2
  SHX6_2.entityType = SHX1_2
  SHX6_2.debugInfoCallback = SHX2_2
  SHX6_2.editorButtonsCallback = SHX3_2
  SHX4_2(SHX5_2, SHX6_2)
end
SHX9_1.registerDevMenuEntityEditor = SHX10_1
SHX9_1 = CMG
SHX9_1 = SHX9_1.registerDevMenuState
SHX10_1 = "Display Options"
SHX11_1 = {}
SHX11_1.pedsEnabled = false
SHX11_1.vehiclesEnabled = false
SHX11_1.objectsEnabled = false
SHX9_1 = SHX9_1(SHX10_1, SHX11_1)
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = pairs
  SHX1_2 = SHX2_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = table
    SHX6_2 = SHX6_2.contentEquals
    SHX7_2 = SHX5_2
    SHX8_2 = SHX3_1
    SHX8_2 = SHX8_2[SHX4_2]
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    if not SHX6_2 then
      SHX6_2 = SetResourceKvp
      SHX7_2 = string
      SHX7_2 = SHX7_2.format
      SHX8_2 = "devmenu_state_%s"
      SHX9_2 = SHX4_2
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
      SHX8_2 = json
      SHX8_2 = SHX8_2.encode
      SHX9_2 = SHX5_2
      SHX8_2, SHX9_2 = SHX8_2(SHX9_2)
      SHX6_2(SHX7_2, SHX8_2, SHX9_2)
      SHX6_2 = SHX3_1
      SHX7_2 = table
      SHX7_2 = SHX7_2.copy
      SHX8_2 = SHX5_2
      SHX7_2 = SHX7_2(SHX8_2)
      SHX6_2[SHX4_2] = SHX7_2
    end
  end
end
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = SHX4_1
  if SHX0_2 then
    return
  end
  SHX0_2 = true
  SHX4_1 = SHX0_2
  SHX0_2 = pairs
  SHX1_2 = SHX5_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createThreadOnTick
    SHX7_2 = SHX5_2
    SHX8_2 = string
    SHX8_2 = SHX8_2.format
    SHX9_2 = "DevMenu %s"
    SHX10_2 = SHX4_2
    SHX8_2, SHX9_2, SHX10_2 = SHX8_2(SHX9_2, SHX10_2)
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  end
  while true do
    SHX0_2 = SHX10_1
    SHX0_2()
    SHX0_2 = Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
SHX12_1 = AddEventHandler
SHX13_1 = "onResourceStop"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX1_2 == SHX0_2 then
    SHX1_2 = SHX4_1
    if SHX1_2 then
      SHX1_2 = SHX10_1
      SHX1_2()
    end
  end
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterCommand
SHX13_1 = "devmenu"
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientUserId
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isDeveloper
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_13
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "devmenu"
  SHX5_2 = "main"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX11_1
  SHX1_2()
end
SHX15_1 = false
SHX12_1(SHX13_1, SHX14_1, SHX15_1)
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = GetScreenCoordFromWorldCoord
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.y
  SHX4_2 = SHX0_2.z
  return SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
SHX13_1 = CMG
function SHX14_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX12_1
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = SHX12_1
    SHX3_2 = vector3
    SHX4_2 = SHX1_2
    SHX5_2 = 0.0
    SHX6_2 = 0.0
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = SHX0_2 + SHX3_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = SHX12_1
      SHX3_2 = vector3
      SHX4_2 = SHX1_2
      SHX5_2 = 0.0
      SHX6_2 = 0.0
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = SHX0_2 - SHX3_2
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = SHX12_1
        SHX3_2 = vector3
        SHX4_2 = 0.0
        SHX5_2 = SHX1_2
        SHX6_2 = 0.0
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        SHX3_2 = SHX0_2 + SHX3_2
        SHX2_2 = SHX2_2(SHX3_2)
        if not SHX2_2 then
          SHX2_2 = SHX12_1
          SHX3_2 = vector3
          SHX4_2 = 0.0
          SHX5_2 = SHX1_2
          SHX6_2 = 0.0
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
          SHX3_2 = SHX0_2 - SHX3_2
          SHX2_2 = SHX2_2(SHX3_2)
          if not SHX2_2 then
            SHX2_2 = SHX12_1
            SHX3_2 = vector3
            SHX4_2 = 0.0
            SHX5_2 = 0.0
            SHX6_2 = SHX1_2
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
            SHX3_2 = SHX0_2 + SHX3_2
            SHX2_2 = SHX2_2(SHX3_2)
            if not SHX2_2 then
              SHX2_2 = SHX12_1
              SHX3_2 = vector3
              SHX4_2 = 0.0
              SHX5_2 = 0.0
              SHX6_2 = SHX1_2
              SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
              SHX3_2 = SHX0_2 - SHX3_2
              SHX2_2 = SHX2_2(SHX3_2)
            end
          end
        end
      end
    end
  end
  return SHX2_2
end
SHX13_1.isSphereOnScreen = SHX14_1
SHX13_1 = CMG
SHX13_1 = SHX13_1.registerDevMenuItems
SHX14_1 = "Displays"
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Player Debug"
  SHX2_2 = "Whether to draw information and activate the editor for players."
  SHX3_2 = SHX9_1.playersEnabled
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX9_1.playersEnabled = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Ped Debug"
  SHX2_2 = "Whether to draw information and activate the editor for peds."
  SHX3_2 = SHX9_1.pedsEnabled
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX9_1.pedsEnabled = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Vehicle Debug"
  SHX2_2 = "Whether to draw information and activate the editor for vehicles."
  SHX3_2 = SHX9_1.vehiclesEnabled
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX9_1.vehiclesEnabled = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Object Debug"
  SHX2_2 = "Whether to draw information and activate the editor for objects."
  SHX3_2 = SHX9_1.objectsEnabled
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX9_1.objectsEnabled = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX13_1(SHX14_1, SHX15_1)
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX12_1
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerCoords
    SHX3_2 = SHX3_2()
    SHX3_2 = SHX3_2 - SHX2_2
    SHX3_2 = #SHX3_2
    if not (SHX3_2 > 50.0) then
      goto SHX_LABEL_18
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_18:: outside nested blocks until all 'goto SHX_LABEL_18' can see it
  ::SHX_LABEL_18::
  SHX3_2 = ""
  SHX4_2 = pairs
  SHX5_2 = SHX6_1
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX9_2.entityType
    if "entity" ~= SHX10_2 then
      SHX10_2 = SHX9_2.entityType
      if SHX10_2 ~= SHX0_2 then
        goto SHX_LABEL_45
      end
    end
    SHX10_2 = SHX9_2.debugInfoCallback
    SHX11_2 = SHX1_2
    SHX10_2 = SHX10_2(SHX11_2)
    if "" ~= SHX10_2 then
      SHX11_2 = #SHX3_2
      if SHX11_2 > 0 then
        SHX11_2 = SHX3_2
        SHX12_2 = "\n"
        SHX11_2 = SHX11_2 .. SHX12_2
        SHX3_2 = SHX11_2
      end
      SHX11_2 = SHX3_2
      SHX12_2 = SHX10_2
      SHX11_2 = SHX11_2 .. SHX12_2
      SHX3_2 = SHX11_2
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_45:: outside nested blocks until all 'goto SHX_LABEL_45' can see it
    ::SHX_LABEL_45::
  end
  if "" ~= SHX3_2 then
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.DrawText3D
    SHX5_2 = SHX2_2
    SHX6_2 = SHX3_2
    SHX7_2 = 0.25
    SHX8_2 = nil
    SHX9_2 = true
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  end
end
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = SHX9_1.pedsEnabled
  if SHX0_2 then
    SHX0_2 = pairs
    SHX1_2 = GetGamePool
    SHX2_2 = "CPed"
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX1_2(SHX2_2)
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = SHX13_1
      SHX7_2 = "ped"
      SHX8_2 = SHX5_2
      SHX6_2(SHX7_2, SHX8_2)
    end
  end
  SHX0_2 = SHX9_1.vehiclesEnabled
  if SHX0_2 then
    SHX0_2 = pairs
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getAllVehicles
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX1_2()
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = SHX13_1
      SHX7_2 = "vehicle"
      SHX8_2 = SHX5_2
      SHX6_2(SHX7_2, SHX8_2)
    end
  end
  SHX0_2 = SHX9_1.objectsEnabled
  if SHX0_2 then
    SHX0_2 = pairs
    SHX1_2 = GetGamePool
    SHX2_2 = "CObject"
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX1_2(SHX2_2)
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = SHX13_1
      SHX7_2 = "object"
      SHX8_2 = SHX5_2
      SHX6_2(SHX7_2, SHX8_2)
    end
  end
end
SHX15_1 = CMG
SHX15_1 = SHX15_1.registerDevMenuThread
SHX16_1 = "Entity Debug"
SHX17_1 = SHX14_1
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = CMG
SHX15_1 = SHX15_1.isDevMode
SHX15_1 = SHX15_1()
if SHX15_1 then
  SHX15_1 = Citizen
  SHX15_1 = SHX15_1.CreateThread
  SHX16_1 = SHX11_1
  SHX15_1(SHX16_1)
end
SHX15_1 = CMG
SHX15_1 = SHX15_1.registerCommand
SHX16_1 = "latestcommit"
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = print
  SHX1_2 = string
  SHX1_2 = SHX1_2.format
  SHX2_2 = "Latest commit is: %s"
  SHX3_2 = SHX0_1
  SHX1_2, SHX2_2, SHX3_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX18_1 = true
SHX15_1(SHX16_1, SHX17_1, SHX18_1)
