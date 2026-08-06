-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_crosshair"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = false
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = 1
  SHX1_2 = 20
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = table
    SHX4_2 = SHX4_2.insert
    SHX5_2 = SHX0_1.menu
    SHX5_2 = SHX5_2.length
    SHX5_2 = SHX5_2.labels
    SHX6_2 = SHX3_2
    SHX7_2 = SHX3_2
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = table
    SHX4_2 = SHX4_2.insert
    SHX5_2 = SHX0_1.menu
    SHX5_2 = SHX5_2.thickness
    SHX5_2 = SHX5_2.labels
    SHX6_2 = SHX3_2
    SHX7_2 = SHX3_2
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = table
    SHX4_2 = SHX4_2.insert
    SHX5_2 = SHX0_1.menu
    SHX5_2 = SHX5_2.gap
    SHX5_2 = SHX5_2.labels
    SHX6_2 = SHX3_2
    SHX7_2 = SHX3_2
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  end
end
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = SHX2_1
  SHX0_2()
  SHX0_2 = GetResourceKvpInt
  SHX1_2 = "cmg_crosshair_enabled"
  SHX0_2 = SHX0_2(SHX1_2)
  if 0 == SHX0_2 then
    SHX1_2 = SHX0_1.options
    SHX1_2.enabled = 0
  else
    SHX1_2 = SHX0_1.options
    SHX1_2.enabled = SHX0_2
  end
  SHX1_2 = GetResourceKvpInt
  SHX2_2 = "cmg_gtaforce_crosshair_enabled"
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 == SHX1_2 then
    SHX2_2 = SHX0_1.options
    SHX2_2.forcedGtaCrosshair = 0
  else
    SHX2_2 = SHX0_1.options
    SHX2_2.forcedGtaCrosshair = SHX1_2
  end
  SHX2_2 = GetResourceKvpInt
  SHX3_2 = "cmg_crosshair_center_dot_enabled"
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    SHX3_2 = SHX0_1.options
    SHX3_2.centerDotEnabled = 1
  else
    SHX3_2 = SHX0_1.options
    SHX3_2.centerDotEnabled = SHX2_2
  end
  SHX3_2 = GetResourceKvpInt
  SHX4_2 = "cmg_crosshair_visibility"
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 == SHX3_2 then
    SHX4_2 = SHX0_1.options
    SHX4_2.visibility = 1
  else
    SHX4_2 = SHX0_1.options
    SHX4_2.visibility = SHX3_2
  end
  SHX4_2 = GetResourceKvpInt
  SHX5_2 = "cmg_crosshair_length"
  SHX4_2 = SHX4_2(SHX5_2)
  if 0 == SHX4_2 then
    SHX5_2 = SHX0_1.options
    SHX5_2 = SHX5_2.length
    SHX5_2.index = 1
    SHX5_2 = SHX0_1.options
    SHX5_2 = SHX5_2.length
    SHX5_2.value = 0.002
  else
    SHX5_2 = SHX0_1.options
    SHX5_2 = SHX5_2.length
    SHX5_2.index = SHX4_2
    SHX5_2 = SHX0_1.options
    SHX5_2 = SHX5_2.length
    SHX6_2 = SHX0_1.options
    SHX6_2 = SHX6_2.length
    SHX6_2 = SHX6_2.index
    SHX6_2 = SHX6_2 * 0.001
    SHX6_2 = 0.001 + SHX6_2
    SHX5_2.value = SHX6_2
  end
  SHX5_2 = GetResourceKvpInt
  SHX6_2 = "cmg_crosshair_thickness"
  SHX5_2 = SHX5_2(SHX6_2)
  if 0 == SHX5_2 then
    SHX6_2 = SHX0_1.options
    SHX6_2 = SHX6_2.thickness
    SHX6_2.index = 1
    SHX6_2 = SHX0_1.options
    SHX6_2 = SHX6_2.thickness
    SHX6_2.value = 0.001
  else
    SHX6_2 = SHX0_1.options
    SHX6_2 = SHX6_2.thickness
    SHX6_2.index = SHX5_2
    SHX6_2 = SHX0_1.options
    SHX6_2 = SHX6_2.thickness
    SHX7_2 = SHX0_1.options
    SHX7_2 = SHX7_2.thickness
    SHX7_2 = SHX7_2.index
    SHX7_2 = 0.002 * SHX7_2
    SHX6_2.value = SHX7_2
  end
  SHX6_2 = GetResourceKvpInt
  SHX7_2 = "cmg_crosshair_gap"
  SHX6_2 = SHX6_2(SHX7_2)
  if 0 == SHX6_2 then
    SHX7_2 = SHX0_1.options
    SHX7_2 = SHX7_2.gap
    SHX7_2.index = 1
    SHX7_2 = SHX0_1.options
    SHX7_2 = SHX7_2.gap
    SHX7_2.value = 0.0
  else
    SHX7_2 = SHX0_1.options
    SHX7_2 = SHX7_2.gap
    SHX7_2.index = SHX6_2
    SHX7_2 = SHX0_1.options
    SHX7_2 = SHX7_2.gap
    SHX8_2 = SHX0_1.options
    SHX8_2 = SHX8_2.gap
    SHX8_2 = SHX8_2.index
    SHX8_2 = SHX8_2 * 5.0E-4
    SHX8_2 = SHX8_2 - 5.0E-4
    SHX7_2.value = SHX8_2
  end
  SHX7_2 = GetResourceKvpInt
  SHX8_2 = "cmg_crosshair_red"
  SHX7_2 = SHX7_2(SHX8_2)
  if 0 == SHX7_2 then
    SHX8_2 = SHX0_1.options
    SHX8_2 = SHX8_2.colour
    SHX8_2.red = 150
  else
    SHX8_2 = SHX0_1.options
    SHX8_2 = SHX8_2.colour
    SHX8_2.red = SHX7_2
  end
  SHX8_2 = GetResourceKvpInt
  SHX9_2 = "cmg_crosshair_green"
  SHX8_2 = SHX8_2(SHX9_2)
  if 0 == SHX8_2 then
    SHX9_2 = SHX0_1.options
    SHX9_2 = SHX9_2.colour
    SHX9_2.green = 150
  else
    SHX9_2 = SHX0_1.options
    SHX9_2 = SHX9_2.colour
    SHX9_2.green = SHX8_2
  end
  SHX9_2 = GetResourceKvpInt
  SHX10_2 = "cmg_crosshair_blue"
  SHX9_2 = SHX9_2(SHX10_2)
  if 0 == SHX9_2 then
    SHX10_2 = SHX0_1.options
    SHX10_2 = SHX10_2.colour
    SHX10_2.blue = 150
  else
    SHX10_2 = SHX0_1.options
    SHX10_2 = SHX10_2.colour
    SHX10_2.blue = SHX9_2
  end
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SetResourceKvpInt
  SHX1_2 = "cmg_crosshair_enabled"
  SHX2_2 = SHX0_1.options
  SHX2_2 = SHX2_2.enabled
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetResourceKvpInt
  SHX1_2 = "cmg_gtaforce_crosshair_enabled"
  SHX2_2 = SHX0_1.options
  SHX2_2 = SHX2_2.forcedGtaCrosshair
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetResourceKvpInt
  SHX1_2 = "cmg_crosshair_center_dot_enabled"
  SHX2_2 = SHX0_1.options
  SHX2_2 = SHX2_2.centerDotEnabled
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetResourceKvpInt
  SHX1_2 = "cmg_crosshair_visibility"
  SHX2_2 = SHX0_1.options
  SHX2_2 = SHX2_2.visibility
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetResourceKvpInt
  SHX1_2 = "cmg_crosshair_length"
  SHX2_2 = SHX0_1.options
  SHX2_2 = SHX2_2.length
  SHX2_2 = SHX2_2.index
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetResourceKvpInt
  SHX1_2 = "cmg_crosshair_thickness"
  SHX2_2 = SHX0_1.options
  SHX2_2 = SHX2_2.thickness
  SHX2_2 = SHX2_2.index
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetResourceKvpInt
  SHX1_2 = "cmg_crosshair_gap"
  SHX2_2 = SHX0_1.options
  SHX2_2 = SHX2_2.gap
  SHX2_2 = SHX2_2.index
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetResourceKvpInt
  SHX1_2 = "cmg_crosshair_red"
  SHX2_2 = SHX0_1.options
  SHX2_2 = SHX2_2.colour
  SHX2_2 = SHX2_2.red
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetResourceKvpInt
  SHX1_2 = "cmg_crosshair_blue"
  SHX2_2 = SHX0_1.options
  SHX2_2 = SHX2_2.colour
  SHX2_2 = SHX2_2.blue
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetResourceKvpInt
  SHX1_2 = "cmg_crosshair_green"
  SHX2_2 = SHX0_1.options
  SHX2_2 = SHX2_2.colour
  SHX2_2 = SHX2_2.green
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.GetRageInputInt
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = type
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if "number" == SHX3_2 then
    SHX3_2 = 255
    if SHX2_2 <= SHX3_2 and SHX2_2 >= 1 then
      return SHX2_2
  end
  else
    return SHX1_2
  end
end
SHX6_1 = RMenu
SHX6_1 = SHX6_1.Add
SHX7_1 = "cmgcrosshair"
SHX8_1 = "main"
SHX9_1 = RageUI
SHX9_1 = SHX9_1.CreateMenu
SHX10_1 = "Crosshair"
SHX11_1 = "~b~CMG Crosshair Customisation "
SHX12_1 = CMG
SHX12_1 = SHX12_1.getRageUIMenuWidth
SHX12_1 = SHX12_1()
SHX13_1 = CMG
SHX13_1 = SHX13_1.getRageUIMenuHeight
SHX13_1 = SHX13_1()
SHX14_1 = nil
SHX15_1 = nil
SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX6_1(SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX6_1 = RageUI
SHX6_1 = SHX6_1.CreateWhile
SHX7_1 = 1.0
SHX8_1 = RMenu
SHX9_1 = SHX8_1
SHX8_1 = SHX8_1.Get
SHX10_1 = "cmgcrosshair"
SHX11_1 = "main"
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX9_1 = nil
function SHX10_1()
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
  SHX3_2 = "cmgcrosshair"
  SHX4_2 = "main"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX0_3 = SHX1_1
    if not SHX0_3 then
      SHX0_3 = true
      SHX1_1 = SHX0_3
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Checkbox
    SHX1_3 = "Use Custom Crosshair"
    SHX2_3 = ""
    SHX3_3 = SHX0_1.options
    SHX3_3 = SHX3_3.enabled
    SHX3_3 = 1 == SHX3_3
    SHX4_3 = {}
    function SHX5_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    function SHX6_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
      SHX0_4 = SHX0_1.options
      SHX0_4.enabled = 1
      SHX0_4 = SHX4_1
      SHX0_4()
    end
    function SHX7_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
      SHX0_4 = SHX0_1.options
      SHX0_4.enabled = 0
      SHX0_4 = SHX4_1
      SHX0_4()
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX0_3 = SHX0_1.options
    SHX0_3 = SHX0_3.enabled
    if 1 == SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "~b~Crosshair Options"
      SHX0_3(SHX1_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.List
      SHX1_3 = "Center Dot"
      SHX2_3 = {}
      SHX3_3 = "Enabled"
      SHX4_3 = "Disabled"
      SHX2_3[1] = SHX3_3
      SHX2_3[2] = SHX4_3
      SHX3_3 = SHX0_1.options
      SHX3_3 = SHX3_3.centerDotEnabled
      SHX4_3 = nil
      SHX5_3 = {}
      SHX6_3 = true
      function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX4_4
        if SHX1_4 then
          SHX4_4 = SHX0_1.options
          SHX4_4 = SHX4_4.centerDotEnabled
          if SHX4_4 ~= SHX3_4 then
            SHX4_4 = SHX0_1.options
            SHX4_4.centerDotEnabled = SHX3_4
            SHX4_4 = SHX4_1
            SHX4_4()
          end
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.List
      SHX1_3 = "Visibility"
      SHX2_3 = {}
      SHX3_3 = "Always"
      SHX4_3 = "While Aiming"
      SHX2_3[1] = SHX3_3
      SHX2_3[2] = SHX4_3
      SHX3_3 = SHX0_1.options
      SHX3_3 = SHX3_3.visibility
      SHX4_3 = nil
      SHX5_3 = {}
      SHX6_3 = true
      function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX4_4
        if SHX1_4 then
          SHX4_4 = SHX0_1.options
          SHX4_4 = SHX4_4.visibility
          if SHX4_4 ~= SHX3_4 then
            SHX4_4 = SHX0_1.options
            SHX4_4.visibility = SHX3_4
            SHX4_4 = SHX4_1
            SHX4_4()
          end
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.List
      SHX1_3 = "Length"
      SHX2_3 = SHX0_1.menu
      SHX2_3 = SHX2_3.length
      SHX2_3 = SHX2_3.labels
      SHX3_3 = SHX0_1.options
      SHX3_3 = SHX3_3.length
      SHX3_3 = SHX3_3.index
      SHX4_3 = nil
      SHX5_3 = {}
      SHX6_3 = true
      function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX4_4, SHX5_4
        if SHX1_4 then
          SHX4_4 = SHX0_1.options
          SHX4_4 = SHX4_4.length
          SHX4_4 = SHX4_4.index
          if SHX4_4 ~= SHX3_4 then
            SHX4_4 = SHX0_1.options
            SHX4_4 = SHX4_4.length
            SHX4_4.index = SHX3_4
            SHX4_4 = SHX0_1.options
            SHX4_4 = SHX4_4.length
            SHX5_4 = SHX3_4 * 0.001
            SHX5_4 = 0.001 + SHX5_4
            SHX4_4.value = SHX5_4
            SHX4_4 = SHX4_1
            SHX4_4()
          end
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.List
      SHX1_3 = "Thickness"
      SHX2_3 = SHX0_1.menu
      SHX2_3 = SHX2_3.thickness
      SHX2_3 = SHX2_3.labels
      SHX3_3 = SHX0_1.options
      SHX3_3 = SHX3_3.thickness
      SHX3_3 = SHX3_3.index
      SHX4_3 = nil
      SHX5_3 = {}
      SHX6_3 = true
      function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX4_4, SHX5_4
        if SHX1_4 then
          SHX4_4 = SHX0_1.options
          SHX4_4 = SHX4_4.thickness
          SHX4_4 = SHX4_4.index
          if SHX4_4 ~= SHX3_4 then
            SHX4_4 = SHX0_1.options
            SHX4_4 = SHX4_4.thickness
            SHX4_4.index = SHX3_4
            SHX4_4 = SHX0_1.options
            SHX4_4 = SHX4_4.thickness
            SHX5_4 = 0.002 * SHX3_4
            SHX4_4.value = SHX5_4
            SHX4_4 = SHX4_1
            SHX4_4()
          end
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.List
      SHX1_3 = "Gap"
      SHX2_3 = SHX0_1.menu
      SHX2_3 = SHX2_3.gap
      SHX2_3 = SHX2_3.labels
      SHX3_3 = SHX0_1.options
      SHX3_3 = SHX3_3.gap
      SHX3_3 = SHX3_3.index
      SHX4_3 = nil
      SHX5_3 = {}
      SHX6_3 = true
      function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX4_4, SHX5_4
        if SHX1_4 then
          SHX4_4 = SHX0_1.options
          SHX4_4 = SHX4_4.gap
          SHX4_4 = SHX4_4.index
          if SHX4_4 ~= SHX3_4 then
            SHX4_4 = SHX0_1.options
            SHX4_4 = SHX4_4.gap
            SHX4_4.index = SHX3_4
            SHX4_4 = SHX0_1.options
            SHX4_4 = SHX4_4.gap
            SHX5_4 = SHX3_4 * 5.0E-4
            SHX5_4 = SHX5_4 - 5.0E-4
            SHX4_4.value = SHX5_4
            SHX4_4 = SHX4_1
            SHX4_4()
          end
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.SliderProgress
      SHX1_3 = "Red ["
      SHX2_3 = SHX0_1.options
      SHX2_3 = SHX2_3.colour
      SHX2_3 = SHX2_3.red
      SHX3_3 = "]"
      SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
      SHX2_3 = SHX0_1.options
      SHX2_3 = SHX2_3.colour
      SHX2_3 = SHX2_3.red
      SHX3_3 = 255
      SHX4_3 = "Press ~b~ENTER~w~ to enter RGB Red value"
      SHX5_3 = {}
      SHX6_3 = {}
      SHX6_3.R = 186
      SHX6_3.G = 58
      SHX6_3.B = 48
      SHX6_3.A = 255
      SHX5_3.ProgressBackgroundColor = SHX6_3
      SHX6_3 = {}
      SHX6_3.R = 212
      SHX6_3.G = 66
      SHX6_3.B = 55
      SHX6_3.A = 255
      SHX5_3.ProgressColor = SHX6_3
      SHX6_3 = true
      function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX4_4, SHX5_4, SHX6_4, SHX7_4
        if SHX1_4 then
          SHX4_4 = IsControlJustPressed
          SHX5_4 = 0
          SHX6_4 = 22
          SHX4_4 = SHX4_4(SHX5_4, SHX6_4)
          if SHX4_4 then
            SHX4_4 = SHX0_1.options
            SHX4_4 = SHX4_4.colour
            SHX5_4 = SHX5_1
            SHX6_4 = "Enter Red Value (0-255)"
            SHX7_4 = SHX0_1.options
            SHX7_4 = SHX7_4.colour
            SHX7_4 = SHX7_4.red
            SHX5_4 = SHX5_4(SHX6_4, SHX7_4)
            SHX4_4.red = SHX5_4
            SHX4_4 = SHX4_1
            SHX4_4()
          else
            SHX4_4 = SHX0_1.options
            SHX4_4 = SHX4_4.colour
            SHX4_4 = SHX4_4.red
            if SHX3_4 ~= SHX4_4 then
              SHX4_4 = SHX0_1.options
              SHX4_4 = SHX4_4.colour
              SHX4_4.red = SHX3_4
              SHX4_4 = SHX4_1
              SHX4_4()
            end
          end
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.SliderProgress
      SHX1_3 = "Green ["
      SHX2_3 = SHX0_1.options
      SHX2_3 = SHX2_3.colour
      SHX2_3 = SHX2_3.green
      SHX3_3 = "]"
      SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
      SHX2_3 = SHX0_1.options
      SHX2_3 = SHX2_3.colour
      SHX2_3 = SHX2_3.green
      SHX3_3 = 255
      SHX4_3 = "Press ~b~ENTER~w~ to enter RGB Green value"
      SHX5_3 = {}
      SHX6_3 = {}
      SHX6_3.R = 48
      SHX6_3.G = 186
      SHX6_3.B = 108
      SHX6_3.A = 255
      SHX5_3.ProgressBackgroundColor = SHX6_3
      SHX6_3 = {}
      SHX6_3.R = 64
      SHX6_3.G = 230
      SHX6_3.B = 136
      SHX6_3.A = 255
      SHX5_3.ProgressColor = SHX6_3
      SHX6_3 = true
      function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX4_4, SHX5_4, SHX6_4, SHX7_4
        if SHX1_4 then
          SHX4_4 = IsControlJustPressed
          SHX5_4 = 0
          SHX6_4 = 22
          SHX4_4 = SHX4_4(SHX5_4, SHX6_4)
          if SHX4_4 then
            SHX4_4 = SHX0_1.options
            SHX4_4 = SHX4_4.colour
            SHX5_4 = SHX5_1
            SHX6_4 = "Enter Green Value (0-255)"
            SHX7_4 = SHX0_1.options
            SHX7_4 = SHX7_4.colour
            SHX7_4 = SHX7_4.green
            SHX5_4 = SHX5_4(SHX6_4, SHX7_4)
            SHX4_4.green = SHX5_4
            SHX4_4 = SHX4_1
            SHX4_4()
          else
            SHX4_4 = SHX0_1.options
            SHX4_4 = SHX4_4.colour
            SHX4_4 = SHX4_4.green
            if SHX3_4 ~= SHX4_4 then
              SHX4_4 = SHX0_1.options
              SHX4_4 = SHX4_4.colour
              SHX4_4.green = SHX3_4
              SHX4_4 = SHX4_1
              SHX4_4()
            end
          end
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.SliderProgress
      SHX1_3 = "Blue ["
      SHX2_3 = SHX0_1.options
      SHX2_3 = SHX2_3.colour
      SHX2_3 = SHX2_3.blue
      SHX3_3 = "]"
      SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
      SHX2_3 = SHX0_1.options
      SHX2_3 = SHX2_3.colour
      SHX2_3 = SHX2_3.blue
      SHX3_3 = 255
      SHX4_3 = "Press ~b~ENTER~w~ to enter RGB Blue value"
      SHX5_3 = {}
      SHX6_3 = {}
      SHX6_3.R = 48
      SHX6_3.G = 69
      SHX6_3.B = 186
      SHX6_3.A = 255
      SHX5_3.ProgressBackgroundColor = SHX6_3
      SHX6_3 = {}
      SHX6_3.R = 59
      SHX6_3.G = 86
      SHX6_3.B = 237
      SHX6_3.A = 255
      SHX5_3.ProgressColor = SHX6_3
      SHX6_3 = true
      function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX4_4, SHX5_4, SHX6_4, SHX7_4
        if SHX1_4 then
          SHX4_4 = IsControlJustPressed
          SHX5_4 = 0
          SHX6_4 = 22
          SHX4_4 = SHX4_4(SHX5_4, SHX6_4)
          if SHX4_4 then
            SHX4_4 = SHX0_1.options
            SHX4_4 = SHX4_4.colour
            SHX5_4 = SHX5_1
            SHX6_4 = "Enter Blue Value (0-255)"
            SHX7_4 = SHX0_1.options
            SHX7_4 = SHX7_4.colour
            SHX7_4 = SHX7_4.blue
            SHX5_4 = SHX5_4(SHX6_4, SHX7_4)
            SHX4_4.blue = SHX5_4
            SHX4_4 = SHX4_1
            SHX4_4()
          else
            SHX4_4 = SHX0_1.options
            SHX4_4 = SHX4_4.colour
            SHX4_4 = SHX4_4.blue
            if SHX3_4 ~= SHX4_4 then
              SHX4_4 = SHX0_1.options
              SHX4_4 = SHX4_4.colour
              SHX4_4.blue = SHX3_4
              SHX4_4 = SHX4_1
              SHX4_4()
            end
          end
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    else
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Checkbox
      SHX1_3 = "Keep GTA Crosshair Enabled"
      SHX2_3 = "Whether the GTA crosshair should be visible at all times."
      SHX3_3 = SHX0_1.options
      SHX3_3 = SHX3_3.forcedGtaCrosshair
      SHX3_3 = 1 == SHX3_3
      SHX4_3 = {}
      function SHX5_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      function SHX6_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
        SHX0_4 = SHX0_1.options
        SHX0_4.forcedGtaCrosshair = 1
        SHX0_4 = SHX4_1
        SHX0_4()
      end
      function SHX7_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
        SHX0_4 = SHX0_1.options
        SHX0_4.forcedGtaCrosshair = 0
        SHX0_4 = SHX4_1
        SHX0_4()
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX6_1(SHX7_1, SHX8_1, SHX9_1, SHX10_1)
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = SHX0_1.options
  SHX0_2 = SHX0_2.gap
  SHX0_2 = SHX0_2.value
  SHX1_2 = SHX0_1.options
  SHX1_2 = SHX1_2.length
  SHX1_2 = SHX1_2.value
  SHX2_2 = SHX0_1.options
  SHX2_2 = SHX2_2.thickness
  SHX2_2 = SHX2_2.value
  SHX3_2 = SHX0_1.options
  SHX3_2 = SHX3_2.colour
  SHX3_2 = SHX3_2.red
  SHX4_2 = SHX0_1.options
  SHX4_2 = SHX4_2.colour
  SHX4_2 = SHX4_2.green
  SHX5_2 = SHX0_1.options
  SHX5_2 = SHX5_2.colour
  SHX5_2 = SHX5_2.blue
  SHX6_2 = GetAspectRatio
  SHX7_2 = false
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = SHX0_1.options
  SHX7_2 = SHX7_2.centerDotEnabled
  if 1 == SHX7_2 then
    SHX7_2 = DrawRect
    SHX8_2 = 0.5
    SHX9_2 = 0.5
    SHX10_2 = SHX2_2 / 2
    SHX11_2 = SHX2_2 / 2
    SHX11_2 = SHX11_2 * SHX6_2
    SHX12_2 = SHX3_2
    SHX13_2 = SHX4_2
    SHX14_2 = SHX5_2
    SHX15_2 = 255
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  end
  SHX7_2 = DrawRect
  SHX8_2 = 0.5
  SHX8_2 = SHX8_2 - SHX0_2
  SHX9_2 = SHX1_2 / 2
  SHX8_2 = SHX8_2 - SHX9_2
  SHX9_2 = 0.5
  SHX10_2 = SHX1_2
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2
  SHX13_2 = SHX4_2
  SHX14_2 = SHX5_2
  SHX15_2 = 255
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX7_2 = DrawRect
  SHX8_2 = 0.5 + SHX0_2
  SHX9_2 = SHX1_2 / 2
  SHX8_2 = SHX8_2 + SHX9_2
  SHX9_2 = 0.5
  SHX10_2 = SHX1_2
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2
  SHX13_2 = SHX4_2
  SHX14_2 = SHX5_2
  SHX15_2 = 255
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX7_2 = DrawRect
  SHX8_2 = 0.5
  SHX9_2 = SHX0_2 * SHX6_2
  SHX10_2 = 0.5
  SHX9_2 = SHX10_2 - SHX9_2
  SHX10_2 = SHX1_2 * SHX6_2
  SHX10_2 = SHX10_2 / 2
  SHX9_2 = SHX9_2 - SHX10_2
  SHX10_2 = SHX2_2 / SHX6_2
  SHX11_2 = SHX1_2 * SHX6_2
  SHX12_2 = SHX3_2
  SHX13_2 = SHX4_2
  SHX14_2 = SHX5_2
  SHX15_2 = 255
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX7_2 = DrawRect
  SHX8_2 = 0.5
  SHX9_2 = SHX0_2 * SHX6_2
  SHX9_2 = 0.5 + SHX9_2
  SHX10_2 = SHX1_2 * SHX6_2
  SHX10_2 = SHX10_2 / 2
  SHX9_2 = SHX9_2 + SHX10_2
  SHX10_2 = SHX2_2 / SHX6_2
  SHX11_2 = SHX1_2 * SHX6_2
  SHX12_2 = SHX3_2
  SHX13_2 = SHX4_2
  SHX14_2 = SHX5_2
  SHX15_2 = 255
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX7_2 = HideHudComponentThisFrame
  SHX8_2 = 14
  SHX7_2(SHX8_2)
end
SHX7_1 = false
SHX8_1 = false
SHX9_1 = 0
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX0_1.options
  SHX0_2 = SHX0_2.enabled
  if 1 == SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.Visible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "cmgcrosshair"
    SHX4_2 = "main"
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
    if not SHX0_2 then
      SHX0_2 = SHX0_1.options
      SHX0_2 = SHX0_2.visibility
      if 1 ~= SHX0_2 then
        goto SHX_LABEL_33
      end
    end
    SHX0_2 = IsPlayerFreeAiming
    SHX1_2 = PlayerId
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2()
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.doesCurrentWeaponHaveScope
      SHX0_2 = SHX0_2()
    end
    if not SHX0_2 then
      SHX0_2 = SHX6_1
      SHX0_2()
      goto SHX_LABEL_78
      -- [FIX IF ERROR] Move ::SHX_LABEL_33:: outside nested blocks until all 'goto SHX_LABEL_33' can see it
      ::SHX_LABEL_33::
      SHX0_2 = IsPlayerFreeAiming
      SHX1_2 = PlayerId
      SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2()
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.doesCurrentWeaponHaveScope
        SHX0_2 = SHX0_2()
        if not SHX0_2 then
          SHX0_2 = SHX6_1
          SHX0_2()
        end
      end
    end
  else
    SHX0_2 = SHX0_1.options
    SHX0_2 = SHX0_2.forcedGtaCrosshair
    if 1 == SHX0_2 then
      SHX0_2 = SHX8_1
      if not SHX0_2 then
        SHX0_2 = ShowHudComponentThisFrame
        SHX1_2 = 14
        SHX0_2(SHX1_2)
      end
      SHX0_2 = false
      SHX8_1 = SHX0_2
      SHX0_2 = SHX7_1
      if not SHX0_2 then
        SHX0_2 = true
        SHX7_1 = SHX0_2
        SHX0_2 = GetConvarInt
        SHX1_2 = "profile_reticuleSize"
        SHX2_2 = -1
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        SHX1_2 = SHX9_1
        if SHX0_2 ~= SHX1_2 then
          SHX1_2 = true
          SHX8_1 = SHX1_2
          SHX9_1 = SHX0_2
        end
        SHX1_2 = SetTimeout
        SHX2_2 = 1000
        function SHX3_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3
          SHX0_3 = false
          SHX7_1 = SHX0_3
        end
        SHX1_2(SHX2_2, SHX3_2)
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_78:: outside nested blocks until all 'goto SHX_LABEL_78' can see it
  ::SHX_LABEL_78::
end
SHX11_1 = SHX3_1
SHX11_1()
SHX11_1 = CMG
SHX11_1 = SHX11_1.createThreadOnTick
SHX12_1 = SHX10_1
SHX13_1 = "Crosshair"
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = RegisterCommand
SHX12_1 = "crosshair"
function SHX13_1()
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
  SHX3_2 = "cmgcrosshair"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX14_1 = false
SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX11_1 = CMG
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = true
  SHX8_1 = SHX0_2
end
SHX11_1.setHideCrosshairNextFrameHack = SHX12_1
SHX11_1 = {}
SHX12_1 = false
SHX13_1 = CMG
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = true
  SHX12_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSetFocus
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.openMenu = true
  SHX2_2.type = SHX0_2
  SHX1_2(SHX2_2)
end
SHX13_1.openRadialMenu = SHX14_1
SHX13_1 = CMG
function SHX14_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX11_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX13_1.addRadialMenuHandler = SHX14_1
SHX13_1 = CMG
SHX13_1 = SHX13_1.uiRegisterCallback
SHX14_1 = "radialClick"
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2.itemid
  SHX2_2 = SHX0_2.menuName
  SHX3_2 = SHX11_1
  SHX3_2 = SHX3_2[SHX2_2]
  if SHX3_2 then
    SHX3_2 = SHX11_1
    SHX3_2 = SHX3_2[SHX2_2]
    SHX4_2 = SHX1_2
    SHX3_2(SHX4_2)
  end
end
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = CMG
SHX13_1 = SHX13_1.uiRegisterCallback
SHX14_1 = "radialClose"
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX12_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.uiSetFocus
    SHX1_2 = false
    SHX2_2 = false
    SHX3_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = false
    SHX12_1 = SHX0_2
  end
end
SHX13_1(SHX14_1, SHX15_1)
