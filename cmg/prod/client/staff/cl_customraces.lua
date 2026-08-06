-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_customraces"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = RMenu
SHX1_1 = SHX1_1.Add
SHX2_1 = "customraces"
SHX3_1 = "mainmenu"
SHX4_1 = RageUI
SHX4_1 = SHX4_1.CreateMenu
SHX5_1 = ""
SHX6_1 = "~b~Main Menu"
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1 = SHX8_1()
SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX1_1(SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX1_1 = RMenu
SHX1_1 = SHX1_1.Add
SHX2_1 = "customraces"
SHX3_1 = "new"
SHX4_1 = RageUI
SHX4_1 = SHX4_1.CreateSubMenu
SHX5_1 = RMenu
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.Get
SHX7_1 = "customraces"
SHX8_1 = "mainmenu"
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX6_1 = ""
SHX7_1 = "~b~Setup New Race"
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuWidth
SHX8_1 = SHX8_1()
SHX9_1 = CMG
SHX9_1 = SHX9_1.getRageUIMenuHeight
SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1 = SHX9_1()
SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX1_1(SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX1_1 = RMenu
SHX1_1 = SHX1_1.Add
SHX2_1 = "customraces"
SHX3_1 = "selected"
SHX4_1 = RageUI
SHX4_1 = SHX4_1.CreateSubMenu
SHX5_1 = RMenu
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.Get
SHX7_1 = "customraces"
SHX8_1 = "mainmenu"
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX6_1 = ""
SHX7_1 = "~b~Selected Race"
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuWidth
SHX8_1 = SHX8_1()
SHX9_1 = CMG
SHX9_1 = SHX9_1.getRageUIMenuHeight
SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1 = SHX9_1()
SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX1_1(SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX1_1 = RMenu
SHX1_1 = SHX1_1.Add
SHX2_1 = "customraces"
SHX3_1 = "selectedsetup"
SHX4_1 = RageUI
SHX4_1 = SHX4_1.CreateSubMenu
SHX5_1 = RMenu
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.Get
SHX7_1 = "customraces"
SHX8_1 = "selected"
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX6_1 = ""
SHX7_1 = "~b~Selected Start Options"
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuWidth
SHX8_1 = SHX8_1()
SHX9_1 = CMG
SHX9_1 = SHX9_1.getRageUIMenuHeight
SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1 = SHX9_1()
SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX1_1(SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX1_1 = RMenu
SHX1_1 = SHX1_1.Add
SHX2_1 = "customraces"
SHX3_1 = "manage"
SHX4_1 = RageUI
SHX4_1 = SHX4_1.CreateSubMenu
SHX5_1 = RMenu
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.Get
SHX7_1 = "customraces"
SHX8_1 = "mainmenu"
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX6_1 = ""
SHX7_1 = "~b~Manage Race"
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuWidth
SHX8_1 = SHX8_1()
SHX9_1 = CMG
SHX9_1 = SHX9_1.getRageUIMenuHeight
SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1 = SHX9_1()
SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX1_1(SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX1_1 = {}
SHX1_1.name = nil
SHX1_1.startPosition = nil
SHX1_1.endPosition = nil
SHX2_1 = {}
SHX1_1.checkpoints = SHX2_1
SHX2_1 = {}
SHX3_1 = nil
SHX4_1 = {}
SHX4_1.numLaps = 1
SHX5_1 = nil
SHX6_1 = nil
SHX7_1 = nil
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = RequestScaleformMovie
  SHX1_2 = "INSTRUCTIONAL_BUTTONS"
  SHX0_2 = SHX0_2(SHX1_2)
  SHX7_1 = SHX0_2
  while true do
    SHX0_2 = HasScaleformMovieLoaded
    SHX1_2 = SHX7_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      break
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX9_1 = CreateThread
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX8_1
  SHX0_2()
end
SHX9_1(SHX10_1)
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1.name
  if SHX0_2 then
    SHX0_2 = SHX1_1.startPosition
    if SHX0_2 then
      SHX0_2 = SHX1_1.endPosition
      if SHX0_2 then
        SHX0_2 = SHX1_1.checkpoints
        SHX0_2 = #SHX0_2
        if SHX0_2 > 0 then
          SHX0_2 = true
          return SHX0_2
      end
    end
  end
  else
    SHX0_2 = false
    return SHX0_2
  end
end
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = pairs
  SHX2_2 = SHX2_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.position
    SHX7_2 = SHX0_2 - SHX7_2
    SHX7_2 = #SHX7_2
    SHX6_2.distance = SHX7_2
  end
  SHX1_2 = table
  SHX1_2 = SHX1_2.sort
  SHX2_2 = SHX2_1
  function SHX3_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3
    SHX2_3 = SHX0_3.distance
    SHX3_3 = SHX1_3.distance
    SHX2_3 = SHX2_3 < SHX3_3
    return SHX2_3
  end
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX1_1.startPosition
  if SHX1_2 then
    SHX1_2 = DrawMarker
    SHX2_2 = 4
    SHX3_2 = SHX1_1.startPosition
    SHX3_2 = SHX3_2.x
    SHX4_2 = SHX1_1.startPosition
    SHX4_2 = SHX4_2.y
    SHX5_2 = SHX1_1.startPosition
    SHX5_2 = SHX5_2.z
    SHX5_2 = SHX5_2 + 1.5
    SHX6_2 = 0.0
    SHX7_2 = 0.0
    SHX8_2 = 0.0
    SHX9_2 = 0.0
    SHX10_2 = 0.0
    SHX11_2 = 0.0
    SHX12_2 = 5.0
    SHX13_2 = 5.0
    SHX14_2 = 5.0
    SHX15_2 = 0
    SHX16_2 = 255
    SHX17_2 = 0
    SHX18_2 = 255
    SHX19_2 = false
    SHX20_2 = false
    SHX21_2 = 2
    SHX22_2 = false
    SHX23_2 = nil
    SHX24_2 = nil
    SHX25_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
  end
  SHX1_2 = SHX1_1.endPosition
  if SHX1_2 then
    SHX1_2 = DrawMarker
    SHX2_2 = 4
    SHX3_2 = SHX1_1.endPosition
    SHX3_2 = SHX3_2.x
    SHX4_2 = SHX1_1.endPosition
    SHX4_2 = SHX4_2.y
    SHX5_2 = SHX1_1.endPosition
    SHX5_2 = SHX5_2.z
    SHX5_2 = SHX5_2 + 1.5
    SHX6_2 = 0.0
    SHX7_2 = 0.0
    SHX8_2 = 0.0
    SHX9_2 = 0.0
    SHX10_2 = 0.0
    SHX11_2 = 0.0
    SHX12_2 = 5.0
    SHX13_2 = 5.0
    SHX14_2 = 5.0
    SHX15_2 = 255
    SHX16_2 = 0
    SHX17_2 = 0
    SHX18_2 = 255
    SHX19_2 = false
    SHX20_2 = false
    SHX21_2 = 2
    SHX22_2 = false
    SHX23_2 = nil
    SHX24_2 = nil
    SHX25_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
  end
  SHX1_2 = pairs
  SHX2_2 = SHX1_1.checkpoints
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.position
    SHX7_2 = SHX0_2 - SHX7_2
    SHX7_2 = #SHX7_2
    SHX8_2 = 500.0
    if SHX7_2 < SHX8_2 then
      SHX8_2 = DrawMarker
      SHX9_2 = 1
      SHX10_2 = SHX6_2.position
      SHX10_2 = SHX10_2.x
      SHX11_2 = SHX6_2.position
      SHX11_2 = SHX11_2.y
      SHX12_2 = SHX6_2.position
      SHX12_2 = SHX12_2.z
      SHX12_2 = SHX12_2 - 1.0
      SHX13_2 = 0.0
      SHX14_2 = 0.0
      SHX15_2 = 0.0
      SHX16_2 = 0.0
      SHX17_2 = 0.0
      SHX18_2 = 0.0
      SHX19_2 = 5.0
      SHX20_2 = 5.0
      SHX21_2 = 7.5
      SHX22_2 = 255
      SHX23_2 = 255
      SHX24_2 = 0
      SHX25_2 = 160
      SHX26_2 = false
      SHX27_2 = false
      SHX28_2 = 2
      SHX29_2 = false
      SHX30_2 = nil
      SHX31_2 = nil
      SHX32_2 = false
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2)
      SHX8_2 = DrawMarker
      SHX9_2 = 1
      SHX10_2 = SHX6_2.position
      SHX10_2 = SHX10_2.x
      SHX11_2 = SHX6_2.position
      SHX11_2 = SHX11_2.y
      SHX12_2 = SHX6_2.position
      SHX12_2 = SHX12_2.z
      SHX12_2 = SHX12_2 + 0.5
      SHX13_2 = 0.0
      SHX14_2 = 0.0
      SHX15_2 = 0.0
      SHX16_2 = 0.0
      SHX17_2 = 0.0
      SHX18_2 = 0.0
      SHX19_2 = SHX6_2.radius
      SHX19_2 = SHX19_2 * 2
      SHX20_2 = SHX6_2.radius
      SHX20_2 = SHX20_2 * 2
      SHX21_2 = 1.0
      SHX22_2 = 160
      SHX23_2 = 0
      SHX24_2 = 0
      SHX25_2 = 255
      SHX26_2 = false
      SHX27_2 = false
      SHX28_2 = 2
      SHX29_2 = false
      SHX30_2 = nil
      SHX31_2 = nil
      SHX32_2 = false
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2)
      if SHX7_2 < 50.0 then
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.DrawText3D
        SHX9_2 = SHX6_2.position
        SHX10_2 = tostring
        SHX11_2 = SHX5_2
        SHX10_2 = SHX10_2(SHX11_2)
        SHX11_2 = 1.0
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      end
    end
  end
end
SHX12_1 = RageUI
SHX12_1 = SHX12_1.CreateWhile
SHX13_1 = 1.0
SHX14_1 = RMenu
SHX15_1 = SHX14_1
SHX14_1 = SHX14_1.Get
SHX16_1 = "customraces"
SHX17_1 = "mainmenu"
SHX14_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX15_1 = nil
function SHX16_1()
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
  SHX3_2 = "customraces"
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
    SHX1_3 = "~b~Setup New Race"
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
      
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "customraces"
    SHX9_3 = "new"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
    SHX0_3 = SHX5_1
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "~g~Manage Active Race"
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
        
      end
      SHX6_3 = RMenu
      SHX7_3 = SHX6_3
      SHX6_3 = SHX6_3.Get
      SHX8_3 = "customraces"
      SHX9_3 = "manage"
      SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~Nearby Races"
    SHX0_3(SHX1_3)
    SHX0_3 = SHX10_1
    SHX0_3()
    SHX0_3 = pairs
    SHX1_3 = SHX2_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      if SHX4_3 > 5 then
        break
      end
      SHX6_3 = RageUI
      SHX6_3 = SHX6_3.ButtonWithStyle
      SHX7_3 = SHX5_3.name
      SHX8_3 = ""
      SHX9_3 = {}
      SHX10_3 = string
      SHX10_3 = SHX10_3.format
      SHX11_3 = "%sm away"
      SHX12_3 = math
      SHX12_3 = SHX12_3.floor
      SHX13_3 = SHX5_3.distance
      if not SHX13_3 then
        SHX13_3 = 0
      end
      SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX12_3(SHX13_3)
      SHX10_3 = SHX10_3(SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
      SHX9_3.RightLabel = SHX10_3
      SHX10_3 = true
      function SHX11_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4
        if SHX2_4 then
          SHX3_4 = SHX5_3
          SHX3_1 = SHX3_4
        end
      end
      SHX12_3 = RMenu
      SHX13_3 = SHX12_3
      SHX12_3 = SHX12_3.Get
      SHX14_3 = "customraces"
      SHX15_3 = "selected"
      SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX12_3(SHX13_3, SHX14_3, SHX15_3)
      SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "customraces"
  SHX4_2 = "new"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "~g~Create New Race"
    SHX2_3 = ""
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4
      if SHX2_4 then
        SHX3_4 = SHX9_1
        SHX3_4 = SHX3_4()
        if SHX3_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "0cdea4259b"
          SHX5_4 = SHX1_1
          SHX3_4(SHX4_4, SHX5_4)
          SHX3_4 = RageUI
          SHX3_4 = SHX3_4.GoBack
          SHX3_4()
        else
          SHX3_4 = notify
          SHX4_4 = "~r~Not all fields are configured. Please complete the setup."
          SHX3_4(SHX4_4)
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Name"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX4_3 = SHX1_1.name
    if SHX4_3 then
      SHX4_3 = string
      SHX4_3 = SHX4_3.format
      SHX5_3 = "~g~%s"
      SHX6_3 = SHX1_1.name
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3)
      if SHX4_3 then
        goto SHX_LABEL_25
      end
    end
    SHX4_3 = "~r~Not Configured"
    -- [FIX IF ERROR] Move ::SHX_LABEL_25:: outside nested blocks until all 'goto SHX_LABEL_25' can see it
    ::SHX_LABEL_25::
    SHX3_3.RightLabel = SHX4_3
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
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Enter Name"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5
          if SHX0_5 then
            SHX1_5 = #SHX0_5
            if SHX1_5 > 2 then
              SHX1_5 = #SHX0_5
              if SHX1_5 <= 50 then
                SHX1_1.name = SHX0_5
            end
          end
          else
            SHX1_5 = notify
            SHX2_5 = "~r~Invalid name. Must be between 3 and 50 characters."
            SHX1_5(SHX2_5)
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Start Point"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX4_3 = SHX1_1.startPosition
    if SHX4_3 then
      SHX4_3 = "~g~Configured"
      if SHX4_3 then
        goto SHX_LABEL_42
      end
    end
    SHX4_3 = "~r~Not Configured"
    -- [FIX IF ERROR] Move ::SHX_LABEL_42:: outside nested blocks until all 'goto SHX_LABEL_42' can see it
    ::SHX_LABEL_42::
    SHX3_3.RightLabel = SHX4_3
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.getPlayerCoords
        SHX3_4 = SHX3_4()
        SHX1_1.startPosition = SHX3_4
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "End Point"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX4_3 = SHX1_1.endPosition
    if SHX4_3 then
      SHX4_3 = "~g~Configured"
      if SHX4_3 then
        goto SHX_LABEL_59
      end
    end
    SHX4_3 = "~r~Not Configured"
    -- [FIX IF ERROR] Move ::SHX_LABEL_59:: outside nested blocks until all 'goto SHX_LABEL_59' can see it
    ::SHX_LABEL_59::
    SHX3_3.RightLabel = SHX4_3
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.getPlayerCoords
        SHX3_4 = SHX3_4()
        SHX1_1.endPosition = SHX3_4
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~Checkpoints"
    SHX0_3(SHX1_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getPlayerCoords
    SHX0_3 = SHX0_3()
    SHX1_3 = pairs
    SHX2_3 = SHX1_1.checkpoints
    SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
    for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
      SHX7_3 = math
      SHX7_3 = SHX7_3.floor
      SHX8_3 = SHX6_3.position
      SHX8_3 = SHX0_3 - SHX8_3
      SHX8_3 = #SHX8_3
      SHX7_3 = SHX7_3(SHX8_3)
      SHX8_3 = RageUI
      SHX8_3 = SHX8_3.ButtonWithStyle
      SHX9_3 = string
      SHX9_3 = SHX9_3.format
      SHX10_3 = "%s. Checkpoint"
      SHX11_3 = SHX5_3
      SHX9_3 = SHX9_3(SHX10_3, SHX11_3)
      SHX10_3 = ""
      SHX11_3 = {}
      SHX12_3 = string
      SHX12_3 = SHX12_3.format
      SHX13_3 = "%sm away"
      SHX14_3 = SHX7_3
      SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
      SHX11_3.RightLabel = SHX12_3
      SHX12_3 = true
      function SHX13_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4
        if SHX1_4 then
          SHX3_4 = drawNativeNotification
          SHX4_4 = [[
Press ~INPUT_FRONTEND_ACCEPT~ to edit the radius.
Press ~INPUT_FRONTEND_DELETE~ to remove this checkpoint.]]
          SHX3_4(SHX4_4)
          SHX3_4 = IsControlJustPressed
          SHX4_4 = 0
          SHX5_4 = 214
          SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
          if SHX3_4 then
            SHX3_4 = table
            SHX3_4 = SHX3_4.remove
            SHX4_4 = SHX1_1.checkpoints
            SHX5_4 = SHX5_3
            SHX3_4(SHX4_4, SHX5_4)
            SHX3_4 = notify
            SHX4_4 = "~r~Checkpoint removed."
            SHX3_4(SHX4_4)
          end
        end
        if SHX2_4 then
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.clientPrompt
          SHX4_4 = "Enter Radius (5.0 - 20.0)"
          SHX5_4 = ""
          function SHX6_4(SHX0_5)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX1_5, SHX2_5, SHX3_5, SHX4_5, SHX5_5
            SHX1_5 = tonumber
            SHX2_5 = SHX0_5
            SHX1_5 = SHX1_5(SHX2_5)
            if SHX1_5 and SHX1_5 >= 10.0 and SHX1_5 <= 20.0 then
              SHX2_5 = SHX1_1.checkpoints
              SHX3_5 = SHX5_3
              SHX2_5 = SHX2_5[SHX3_5]
              SHX3_5 = SHX1_5 + 0.0
              SHX2_5.radius = SHX3_5
              SHX2_5 = notify
              SHX3_5 = string
              SHX3_5 = SHX3_5.format
              SHX4_5 = "~g~Checkpoint radius set to %s."
              SHX5_5 = SHX1_5
              SHX3_5, SHX4_5, SHX5_5 = SHX3_5(SHX4_5, SHX5_5)
              SHX2_5(SHX3_5, SHX4_5, SHX5_5)
            else
              SHX2_5 = notify
              SHX3_5 = "~r~Invalid radius. Must be between 5.0 and 20.0."
              SHX2_5(SHX3_5)
            end
          end
          SHX3_4(SHX4_4, SHX5_4, SHX6_4)
        end
      end
      SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
    end
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Button
    SHX2_3 = "~b~Add Checkpoint"
    SHX3_3 = ""
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
        SHX3_4 = table
        SHX3_4 = SHX3_4.insert
        SHX4_4 = SHX1_1.checkpoints
        SHX5_4 = {}
        SHX6_4 = CMG
        SHX6_4 = SHX6_4.getPlayerCoords
        SHX6_4 = SHX6_4()
        SHX5_4.position = SHX6_4
        SHX5_4.radius = 10.0
        SHX3_4(SHX4_4, SHX5_4)
      end
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX1_3 = SHX11_1
    SHX1_3()
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "customraces"
  SHX4_2 = "selected"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = assert
    SHX1_3 = SHX3_1
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "~g~Setup Race"
    SHX2_3 = ""
    SHX3_3 = true
    function SHX4_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX5_3 = RMenu
    SHX6_3 = SHX5_3
    SHX5_3 = SHX5_3.Get
    SHX7_3 = "customraces"
    SHX8_3 = "selectedsetup"
    SHX5_3, SHX6_3, SHX7_3, SHX8_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "~r~Delete Race"
    SHX2_3 = ""
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "18d292e790"
        SHX5_4 = SHX3_1.id
        SHX3_4(SHX4_4, SHX5_4)
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.GoBack
        SHX3_4()
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "customraces"
  SHX4_2 = "selectedsetup"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = assert
    SHX1_3 = SHX3_1
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Number of Laps"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX4_3 = tostring
    SHX5_3 = SHX4_1.numLaps
    SHX4_3 = SHX4_3(SHX5_3)
    SHX3_3.RightLabel = SHX4_3
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
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Enter Number of Laps"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5
          SHX1_5 = tonumber
          SHX2_5 = SHX0_5
          SHX1_5 = SHX1_5(SHX2_5)
          if SHX1_5 and SHX1_5 > 0 and SHX1_5 <= 10 then
            SHX4_1.numLaps = SHX1_5
          else
            SHX2_5 = notify
            SHX3_5 = "~r~Invalid number of laps. Must between 1 and 10."
            SHX2_5(SHX3_5)
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "~g~Start Race"
    SHX2_3 = ""
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "459898e6ab"
        SHX5_4 = SHX3_1.id
        SHX6_4 = SHX4_1.numLaps
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "customraces"
  SHX4_2 = "manage"
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
    SHX0_3 = SHX5_1
    if not SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Visible
      SHX1_3 = RMenu
      SHX2_3 = SHX1_3
      SHX1_3 = SHX1_3.Get
      SHX3_3 = "customraces"
      SHX4_3 = "mainmenu"
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX2_3 = true
      SHX0_3(SHX1_3, SHX2_3)
      return
    end
    SHX0_3 = SHX5_1.hasStarted
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Button
      SHX1_3 = "~r~Stop Race"
      SHX2_3 = "Stops the race, submitting any winners."
      SHX3_3 = true
      function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "cc914ff479"
          SHX3_4(SHX4_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    else
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Button
      SHX1_3 = "~g~Fully Start"
      SHX2_3 = "Fully starts the race, including all players inside a vehicle inside of the start area"
      SHX3_3 = true
      function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "2bcb53bfd6"
          SHX3_4(SHX4_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "~y~Suitable Players"
      SHX0_3(SHX1_3)
      SHX0_3 = pairs
      SHX1_3 = GetActivePlayers
      SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX1_3()
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
      for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
        SHX6_3 = GetPlayerPed
        SHX7_3 = SHX5_3
        SHX6_3 = SHX6_3(SHX7_3)
        if 0 ~= SHX6_3 then
          SHX7_3 = GetVehiclePedIsUsing
          SHX8_3 = SHX6_3
          SHX7_3 = SHX7_3(SHX8_3)
          if 0 ~= SHX7_3 then
            SHX7_3 = GetEntityCoords
            SHX8_3 = SHX6_3
            SHX7_3 = SHX7_3(SHX8_3)
            SHX8_3 = SHX5_1.config
            SHX8_3 = SHX8_3.startPosition
            SHX8_3 = SHX7_3 - SHX8_3
            SHX8_3 = #SHX8_3
            SHX9_3 = SHX0_1.startAreaRadius
            if SHX8_3 < SHX9_3 then
              SHX8_3 = RageUI
              SHX8_3 = SHX8_3.ButtonWithStyle
              SHX9_3 = CMG
              SHX9_3 = SHX9_3.getPlayerName
              SHX10_3 = SHX5_3
              SHX9_3 = SHX9_3(SHX10_3)
              SHX10_3 = ""
              SHX11_3 = {}
              SHX12_3 = string
              SHX12_3 = SHX12_3.format
              SHX13_3 = "Temp ID: %s"
              SHX14_3 = GetPlayerServerId
              SHX15_3 = SHX5_3
              SHX14_3, SHX15_3 = SHX14_3(SHX15_3)
              SHX12_3 = SHX12_3(SHX13_3, SHX14_3, SHX15_3)
              SHX11_3.RightLabel = SHX12_3
              SHX12_3 = true
              function SHX13_3()
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX0_4, SHX1_4
              end
              SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
            end
          end
        end
      end
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX12_1(SHX13_1, SHX14_1, SHX15_1, SHX16_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "3c011b6464"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX2_1 = SHX0_2
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "f70b0b84ff"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.insert
  SHX2_2 = SHX2_1
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "21f1b1eb3e"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = SHX2_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.id
    if SHX7_2 == SHX0_2 then
      SHX7_2 = table
      SHX7_2 = SHX7_2.remove
      SHX8_2 = SHX2_1
      SHX9_2 = SHX5_2
      SHX7_2(SHX8_2, SHX9_2)
      break
    end
  end
end
SHX12_1(SHX13_1, SHX14_1)
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX0_2.config
  SHX2_2 = SHX2_2.startPosition
  SHX2_2 = SHX1_2 - SHX2_2
  SHX2_2 = #SHX2_2
  SHX3_2 = DrawMarker
  SHX4_2 = 1
  SHX5_2 = SHX0_2.config
  SHX5_2 = SHX5_2.startPosition
  SHX5_2 = SHX5_2.x
  SHX6_2 = SHX0_2.config
  SHX6_2 = SHX6_2.startPosition
  SHX6_2 = SHX6_2.y
  SHX7_2 = SHX0_2.config
  SHX7_2 = SHX7_2.startPosition
  SHX7_2 = SHX7_2.z
  SHX7_2 = SHX7_2 - 5.0
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = SHX0_1.startAreaRadius
  SHX14_2 = SHX14_2 * 2.0
  SHX15_2 = SHX0_1.startAreaRadius
  SHX15_2 = SHX15_2 * 2.0
  SHX16_2 = 8.0
  SHX17_2 = 255
  SHX18_2 = 255
  SHX19_2 = 0
  SHX20_2 = 200
  SHX21_2 = false
  SHX22_2 = false
  SHX23_2 = 2
  SHX24_2 = false
  SHX25_2 = nil
  SHX26_2 = nil
  SHX27_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
  SHX3_2 = SHX0_1.startAreaRadius
  if SHX2_2 < SHX3_2 then
    SHX3_2 = drawNativeText
    SHX4_2 = "~y~Waiting for host to start the game..."
    SHX3_2(SHX4_2)
  end
end
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  SHX2_2 = SHX0_2.config
  SHX2_2 = SHX2_2.endPosition
  if SHX2_2 then
    SHX2_2 = DrawMarker
    SHX3_2 = 4
    SHX4_2 = SHX0_2.config
    SHX4_2 = SHX4_2.endPosition
    SHX4_2 = SHX4_2.x
    SHX5_2 = SHX0_2.config
    SHX5_2 = SHX5_2.endPosition
    SHX5_2 = SHX5_2.y
    SHX6_2 = SHX0_2.config
    SHX6_2 = SHX6_2.endPosition
    SHX6_2 = SHX6_2.z
    SHX6_2 = SHX6_2 + 1.5
    SHX7_2 = 0.0
    SHX8_2 = 0.0
    SHX9_2 = 0.0
    SHX10_2 = 0.0
    SHX11_2 = 0.0
    SHX12_2 = 0.0
    SHX13_2 = 5.0
    SHX14_2 = 5.0
    SHX15_2 = 5.0
    SHX16_2 = 255
    SHX17_2 = 0
    SHX18_2 = 0
    SHX19_2 = 255
    SHX20_2 = false
    SHX21_2 = false
    SHX22_2 = 2
    SHX23_2 = false
    SHX24_2 = nil
    SHX25_2 = nil
    SHX26_2 = false
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX0_2.config
  SHX3_2 = SHX3_2.endPosition
  SHX3_2 = SHX2_2 - SHX3_2
  SHX3_2 = #SHX3_2
  if SHX3_2 < 10.0 then
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX1_2.lastSentCheckpointEventTime
    SHX4_2 = SHX3_2 - SHX4_2
    SHX5_2 = SHX0_1.delayBetweenEventsMsec
    if SHX4_2 > SHX5_2 then
      SHX4_2 = TriggerServerEvent
      SHX5_2 = "ca5022ad11"
      SHX4_2(SHX5_2)
      SHX1_2.lastSentCheckpointEventTime = SHX3_2
    end
  end
end
function SHX14_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2
  SHX3_2 = SHX0_2.config
  SHX3_2 = SHX3_2.checkpoints
  SHX4_2 = SHX2_2.checkpointIndex
  SHX3_2 = SHX3_2[SHX4_2]
  SHX4_2 = assert
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerCoords
  SHX4_2 = SHX4_2()
  SHX5_2 = norm
  SHX6_2 = SHX3_2.position
  SHX6_2 = SHX4_2 - SHX6_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = DrawMarker
  SHX7_2 = 20
  SHX8_2 = SHX4_2.x
  SHX9_2 = SHX4_2.y
  SHX10_2 = SHX4_2.z
  SHX10_2 = SHX10_2 + 0.75
  SHX11_2 = SHX5_2.x
  SHX12_2 = SHX5_2.y
  SHX13_2 = SHX5_2.z
  SHX14_2 = -90.0
  SHX15_2 = 0.0
  SHX16_2 = 0.0
  SHX17_2 = 1.0
  SHX18_2 = 1.0
  SHX19_2 = 1.0
  SHX20_2 = 255
  SHX21_2 = 255
  SHX22_2 = 0
  SHX23_2 = 100
  SHX24_2 = false
  SHX25_2 = false
  SHX26_2 = 2
  SHX27_2 = false
  SHX28_2 = nil
  SHX29_2 = nil
  SHX30_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
  SHX6_2 = DrawMarker
  SHX7_2 = 1
  SHX8_2 = SHX3_2.position
  SHX8_2 = SHX8_2.x
  SHX9_2 = SHX3_2.position
  SHX9_2 = SHX9_2.y
  SHX10_2 = SHX3_2.position
  SHX10_2 = SHX10_2.z
  SHX10_2 = SHX10_2 - 2.0
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = 0.0
  SHX15_2 = 0.0
  SHX16_2 = 0.0
  SHX17_2 = 5.0
  SHX18_2 = 5.0
  SHX19_2 = 6.5
  SHX20_2 = 255
  SHX21_2 = 255
  SHX22_2 = 0
  SHX23_2 = 100
  SHX24_2 = false
  SHX25_2 = false
  SHX26_2 = 2
  SHX27_2 = false
  SHX28_2 = nil
  SHX29_2 = nil
  SHX30_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getPlayerCoords
  SHX6_2 = SHX6_2()
  SHX7_2 = SHX3_2.position
  SHX7_2 = SHX6_2 - SHX7_2
  SHX7_2 = #SHX7_2
  SHX8_2 = SHX3_2.radius
  if SHX7_2 < SHX8_2 then
    SHX7_2 = GetGameTimer
    SHX7_2 = SHX7_2()
    SHX8_2 = SHX1_2.lastSentCheckpointEventTime
    SHX8_2 = SHX7_2 - SHX8_2
    SHX9_2 = SHX0_1.delayBetweenEventsMsec
    if SHX8_2 > SHX9_2 then
      SHX8_2 = TriggerServerEvent
      SHX9_2 = "352973cadc"
      SHX10_2 = SHX2_2.checkpointIndex
      SHX8_2(SHX9_2, SHX10_2)
      SHX1_2.lastSentCheckpointEventTime = SHX7_2
    end
  end
end
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2.config
  SHX2_2 = SHX2_2.checkpoints
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = DrawMarker
    SHX8_2 = 1
    SHX9_2 = SHX6_2.position
    SHX9_2 = SHX9_2.x
    SHX10_2 = SHX6_2.position
    SHX10_2 = SHX10_2.y
    SHX11_2 = SHX6_2.position
    SHX11_2 = SHX11_2.z
    SHX11_2 = SHX11_2 - 2.0
    SHX12_2 = 0.0
    SHX13_2 = 0.0
    SHX14_2 = 0.0
    SHX15_2 = 0.0
    SHX16_2 = 0.0
    SHX17_2 = 0.0
    SHX18_2 = 5.0
    SHX19_2 = 5.0
    SHX20_2 = 6.5
    SHX21_2 = 255
    SHX22_2 = 255
    SHX23_2 = 0
    SHX24_2 = 100
    SHX25_2 = false
    SHX26_2 = false
    SHX27_2 = 2
    SHX28_2 = false
    SHX29_2 = nil
    SHX30_2 = nil
    SHX31_2 = false
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
  end
end
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getLocalPlayerSrc
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX0_2.players
  SHX3_2 = SHX3_2[SHX2_2]
  if not SHX3_2 then
    SHX4_2 = SHX15_1
    SHX5_2 = SHX0_2
    SHX4_2(SHX5_2)
    return
  end
  SHX4_2 = {}
  SHX5_2 = pairs
  SHX6_2 = SHX0_2.players
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX10_2.distanceToNextCheckpoint = 0.0
    SHX11_2 = SHX0_2.config
    SHX11_2 = SHX11_2.checkpoints
    SHX12_2 = SHX10_2.checkpointIndex
    SHX11_2 = SHX11_2[SHX12_2]
    if SHX11_2 then
      SHX12_2 = GetPlayerFromServerId
      SHX13_2 = SHX9_2
      SHX12_2 = SHX12_2(SHX13_2)
      if SHX12_2 >= 0 then
        SHX13_2 = GetPlayerPed
        SHX14_2 = SHX12_2
        SHX13_2 = SHX13_2(SHX14_2)
        SHX14_2 = GetEntityCoords
        SHX15_2 = SHX13_2
        SHX16_2 = true
        SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
        SHX15_2 = SHX11_2.position
        SHX14_2 = SHX14_2 - SHX15_2
        SHX14_2 = #SHX14_2
        SHX10_2.distanceToNextCheckpoint = SHX14_2
      end
    end
    SHX12_2 = table
    SHX12_2 = SHX12_2.insert
    SHX13_2 = SHX4_2
    SHX14_2 = SHX10_2
    SHX12_2(SHX13_2, SHX14_2)
  end
  SHX5_2 = SHX0_1.sortPlayers
  SHX6_2 = SHX4_2
  SHX5_2(SHX6_2)
  SHX5_2 = "N/A"
  SHX6_2 = pairs
  SHX7_2 = SHX4_2
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    SHX12_2 = SHX11_2.source
    if SHX12_2 == SHX2_2 then
      SHX12_2 = tostring
      SHX13_2 = SHX10_2
      SHX12_2 = SHX12_2(SHX13_2)
      SHX5_2 = SHX12_2
      break
    end
  end
  SHX6_2 = SHX1_2.timers
  SHX6_2 = SHX6_2.push
  SHX7_2 = "~g~POSITION"
  SHX8_2 = SHX5_2
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SHX3_2.finishGameTime
  if not SHX6_2 then
    SHX6_2 = GetNetworkTime
    SHX6_2 = SHX6_2()
  end
  SHX7_2 = math
  SHX7_2 = SHX7_2.floor
  SHX8_2 = SHX0_2.startTime
  SHX8_2 = SHX6_2 - SHX8_2
  SHX8_2 = SHX8_2 / 1000
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = SHX7_2 % 60
  SHX9_2 = math
  SHX9_2 = SHX9_2.floor
  SHX10_2 = SHX7_2 / 60
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = SHX1_2.timers
  SHX10_2 = SHX10_2.push
  SHX11_2 = "~y~TIME"
  SHX12_2 = string
  SHX12_2 = SHX12_2.format
  SHX13_2 = "%s:%s"
  SHX14_2 = string
  SHX14_2 = SHX14_2.rpad
  SHX15_2 = tostring
  SHX16_2 = SHX9_2
  SHX15_2 = SHX15_2(SHX16_2)
  SHX16_2 = 2
  SHX17_2 = "0"
  SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2)
  SHX15_2 = string
  SHX15_2 = SHX15_2.rpad
  SHX16_2 = tostring
  SHX17_2 = SHX8_2
  SHX16_2 = SHX16_2(SHX17_2)
  SHX17_2 = 2
  SHX18_2 = "0"
  SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2)
  SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX10_2 = SHX1_2.timers
  SHX10_2 = SHX10_2.push
  SHX11_2 = "~y~CHECKPOINT"
  SHX12_2 = string
  SHX12_2 = SHX12_2.format
  SHX13_2 = "%s/%s"
  SHX14_2 = SHX3_2.checkpointIndex
  SHX14_2 = SHX14_2 - 1
  SHX15_2 = SHX0_2.config
  SHX15_2 = SHX15_2.checkpoints
  SHX15_2 = #SHX15_2
  SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2)
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX10_2 = SHX0_2.numLaps
  if SHX10_2 > 1 then
    SHX10_2 = SHX1_2.timers
    SHX10_2 = SHX10_2.push
    SHX11_2 = "~y~LAP"
    SHX12_2 = string
    SHX12_2 = SHX12_2.format
    SHX13_2 = "%s/%s"
    SHX14_2 = SHX3_2.numLapsDone
    SHX15_2 = SHX0_2.numLaps
    SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2)
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  end
  SHX10_2 = SHX3_2.finishGameTime
  if SHX10_2 then
    SHX10_2 = drawNativeText
    SHX11_2 = "~g~You have finished the game. Please wait."
    SHX10_2(SHX11_2)
    return
  end
  SHX10_2 = SHX3_2.checkpointIndex
  SHX11_2 = SHX0_2.config
  SHX11_2 = SHX11_2.checkpoints
  SHX11_2 = #SHX11_2
  if SHX10_2 > SHX11_2 then
    SHX10_2 = SHX13_1
    SHX11_2 = SHX0_2
    SHX12_2 = SHX1_2
    SHX10_2(SHX11_2, SHX12_2)
  else
    SHX10_2 = SHX14_1
    SHX11_2 = SHX0_2
    SHX12_2 = SHX1_2
    SHX13_2 = SHX3_2
    SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  end
  SHX10_2 = DisableControlAction
  SHX11_2 = 0
  SHX12_2 = 23
  SHX13_2 = true
  SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX10_2 = DisableControlAction
  SHX11_2 = 0
  SHX12_2 = 75
  SHX13_2 = true
  SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX10_2 = IsDisabledControlJustPressed
  SHX11_2 = 0
  SHX12_2 = 23
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
  if SHX10_2 then
    SHX10_2 = PlayerPedId
    SHX10_2 = SHX10_2()
    SHX11_2 = GetVehiclePedIsUsing
    SHX12_2 = SHX10_2
    SHX11_2 = SHX11_2(SHX12_2)
    if SHX11_2 and 0 ~= SHX11_2 then
      SHX12_2 = SetVehicleFixed
      SHX13_2 = SHX11_2
      SHX12_2(SHX13_2)
      SHX12_2 = SetVehicleDeformationFixed
      SHX13_2 = SHX11_2
      SHX12_2(SHX13_2)
      SHX12_2 = SetVehicleUndriveable
      SHX13_2 = SHX11_2
      SHX14_2 = false
      SHX12_2(SHX13_2, SHX14_2)
      SHX12_2 = SetVehicleEngineHealth
      SHX13_2 = SHX11_2
      SHX14_2 = 1000.0
      SHX12_2(SHX13_2, SHX14_2)
      SHX12_2 = SetVehicleEngineOn
      SHX13_2 = SHX11_2
      SHX14_2 = true
      SHX15_2 = true
      SHX16_2 = false
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      SHX12_2 = SHX0_2.config
      SHX12_2 = SHX12_2.checkpoints
      SHX13_2 = SHX3_2.checkpointIndex
      SHX13_2 = SHX13_2 - 1
      SHX12_2 = SHX12_2[SHX13_2]
      if SHX12_2 then
        SHX13_2 = SetEntityCoords
        SHX14_2 = SHX11_2
        SHX15_2 = SHX12_2.position
        SHX15_2 = SHX15_2.x
        SHX16_2 = SHX12_2.position
        SHX16_2 = SHX16_2.y
        SHX17_2 = SHX12_2.position
        SHX17_2 = SHX17_2.z
        SHX17_2 = SHX17_2 + 2.0
        SHX18_2 = false
        SHX19_2 = false
        SHX20_2 = false
        SHX21_2 = false
        SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
        SHX13_2 = SetEntityHeading
        SHX14_2 = SHX11_2
        SHX15_2 = 0.0
        SHX13_2(SHX14_2, SHX15_2)
        SHX13_2 = notify
        SHX14_2 = "~g~Vehicle repaired and reset to last checkpoint."
        SHX13_2(SHX14_2)
      else
        SHX13_2 = notify
        SHX14_2 = "~r~No checkpoint found to reset."
        SHX13_2(SHX14_2)
      end
    else
      SHX12_2 = notify
      SHX13_2 = "~r~You must be in a vehicle to use reset."
      SHX12_2(SHX13_2)
    end
  end
  SHX10_2 = SHX7_1
  if SHX10_2 then
    SHX10_2 = BeginScaleformMovieMethod
    SHX11_2 = SHX7_1
    SHX12_2 = "CLEAR_ALL"
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = EndScaleformMovieMethod
    SHX10_2()
    SHX10_2 = BeginScaleformMovieMethod
    SHX11_2 = SHX7_1
    SHX12_2 = "SET_CLEAR_SPACE"
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = ScaleformMovieMethodAddParamInt
    SHX11_2 = 200
    SHX10_2(SHX11_2)
    SHX10_2 = EndScaleformMovieMethod
    SHX10_2()
    SHX10_2 = BeginScaleformMovieMethod
    SHX11_2 = SHX7_1
    SHX12_2 = "SET_DATA_SLOT"
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = ScaleformMovieMethodAddParamInt
    SHX11_2 = 0
    SHX10_2(SHX11_2)
    SHX10_2 = _ENV
    SHX11_2 = "PushScaleformMovieMethodParameterButtonName"
    SHX10_2 = SHX10_2[SHX11_2]
    SHX11_2 = GetControlInstructionalButton
    SHX12_2 = 0
    SHX13_2 = 23
    SHX14_2 = true
    SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    SHX10_2 = PushScaleformMovieMethodParameterString
    SHX11_2 = "Reset Vehicle"
    SHX10_2(SHX11_2)
    SHX10_2 = EndScaleformMovieMethod
    SHX10_2()
    SHX10_2 = BeginScaleformMovieMethod
    SHX11_2 = SHX7_1
    SHX12_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = ScaleformMovieMethodAddParamInt
    SHX11_2 = 0
    SHX10_2(SHX11_2)
    SHX10_2 = EndScaleformMovieMethod
    SHX10_2()
    SHX10_2 = DrawScaleformMovieFullscreen
    SHX11_2 = SHX7_1
    SHX12_2 = 255
    SHX13_2 = 255
    SHX14_2 = 255
    SHX15_2 = 255
    SHX16_2 = 0
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  end
end
function SHX17_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX0_2.hasStarted
  if not SHX2_2 then
    SHX2_2 = SHX12_1
    SHX3_2 = SHX0_2
    SHX2_2(SHX3_2)
  else
    SHX2_2 = SHX16_1
    SHX3_2 = SHX0_2
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
  end
end
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX5_1
  if SHX0_2 then
    SHX0_2 = SHX6_1
    if SHX0_2 then
      SHX0_2 = SHX6_1.timers
      SHX0_2 = SHX0_2.reset
      SHX0_2()
      SHX0_2 = SHX17_1
      SHX1_2 = SHX5_1
      SHX2_2 = SHX6_1
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = SHX6_1.timers
      SHX0_2 = SHX0_2.draw
      SHX0_2()
    end
  end
end
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = AddBlipForCoord
  SHX2_2 = SHX0_2.config
  SHX2_2 = SHX2_2.startPosition
  SHX2_2 = SHX2_2.x
  SHX3_2 = SHX0_2.config
  SHX3_2 = SHX3_2.startPosition
  SHX3_2 = SHX3_2.y
  SHX4_2 = SHX0_2.config
  SHX4_2 = SHX4_2.startPosition
  SHX4_2 = SHX4_2.z
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = SetBlipSprite
  SHX3_2 = SHX1_2
  SHX4_2 = 38
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = AddBlipForRadius
  SHX3_2 = SHX0_2.config
  SHX3_2 = SHX3_2.startPosition
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX0_2.config
  SHX4_2 = SHX4_2.startPosition
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX0_2.config
  SHX5_2 = SHX5_2.startPosition
  SHX5_2 = SHX5_2.z
  SHX6_2 = SHX0_1.startAreaRadius
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetBlipAlpha
  SHX4_2 = SHX2_2
  SHX5_2 = 128
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = AddBlipForCoord
  SHX4_2 = SHX0_2.config
  SHX4_2 = SHX4_2.endPosition
  SHX4_2 = SHX4_2.x
  SHX5_2 = SHX0_2.config
  SHX5_2 = SHX5_2.endPosition
  SHX5_2 = SHX5_2.y
  SHX6_2 = SHX0_2.config
  SHX6_2 = SHX6_2.endPosition
  SHX6_2 = SHX6_2.z
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = SetBlipSprite
  SHX5_2 = SHX3_2
  SHX6_2 = 176
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = {}
  SHX5_2 = pairs
  SHX6_2 = SHX0_2.config
  SHX6_2 = SHX6_2.checkpoints
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = AddBlipForCoord
    SHX12_2 = SHX10_2.position
    SHX12_2 = SHX12_2.x
    SHX13_2 = SHX10_2.position
    SHX13_2 = SHX13_2.y
    SHX14_2 = SHX10_2.position
    SHX14_2 = SHX14_2.z
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    SHX12_2 = SetBlipScale
    SHX13_2 = SHX11_2
    SHX14_2 = 0.7
    SHX12_2(SHX13_2, SHX14_2)
    SHX12_2 = table
    SHX12_2 = SHX12_2.insert
    SHX13_2 = SHX4_2
    SHX14_2 = SHX11_2
    SHX12_2(SHX13_2, SHX14_2)
  end
  SHX5_2 = {}
  SHX5_2.startBlip = SHX1_2
  SHX5_2.startRadiusBlip = SHX2_2
  SHX5_2.endBlip = SHX3_2
  SHX5_2.checkpointBlips = SHX4_2
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.createTimerBars
  SHX6_2 = SHX6_2()
  SHX5_2.timers = SHX6_2
  SHX5_2.lastSentCheckpointEventTime = 0
  SHX6_1 = SHX5_2
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.createThreadOnTick
  SHX6_2 = SHX18_1
  SHX7_2 = "Custom Races"
  SHX5_2(SHX6_2, SHX7_2)
end
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.deleteThreadOnTick
  SHX2_2 = SHX18_1
  SHX1_2(SHX2_2)
  SHX1_2 = RemoveBlip
  SHX2_2 = SHX0_2.startBlip
  SHX1_2(SHX2_2)
  SHX1_2 = RemoveBlip
  SHX2_2 = SHX0_2.startRadiusBlip
  SHX1_2(SHX2_2)
  SHX1_2 = RemoveBlip
  SHX2_2 = SHX0_2.endBlip
  SHX1_2(SHX2_2)
  SHX1_2 = pairs
  SHX2_2 = SHX0_2.checkpointBlips
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = RemoveBlip
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
  end
  SHX1_2 = nil
  SHX6_1 = SHX1_2
end
SHX21_1 = RegisterNetEvent
SHX22_1 = "adaa6fbc31"
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX5_1 = SHX0_2
  SHX1_2 = SHX19_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = RegisterNetEvent
SHX22_1 = "95aea723be"
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX6_1
  if SHX0_2 then
    SHX0_2 = SHX20_1
    SHX1_2 = SHX6_1
    SHX0_2(SHX1_2)
  end
  SHX0_2 = nil
  SHX5_1 = SHX0_2
end
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = RegisterNetEvent
SHX22_1 = "2bcb53bfd6"
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = GetVehiclePedIsIn
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.showCountdownTimer
  SHX2_2 = 5
  SHX1_2(SHX2_2)
  SHX1_2 = SHX5_1
  if SHX1_2 then
    SHX5_1.hasStarted = true
    SHX5_1.startTime = SHX0_2
  end
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = GetVehiclePedIsIn
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
end
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = RegisterNetEvent
SHX22_1 = "68e67790dc"
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX5_1
  if SHX1_2 then
    SHX5_1.players = SHX0_2
  end
end
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = RegisterNetEvent
SHX22_1 = "82025c7089"
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX5_1
  if SHX1_2 then
    SHX1_2 = SHX5_1.players
    SHX1_2[SHX0_2] = nil
  end
end
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = RegisterNetEvent
SHX22_1 = "f9f8708d28"
function SHX23_1()
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
  SHX3_2 = "customraces"
  SHX4_2 = "manage"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = RegisterNetEvent
SHX22_1 = "a17bc2ff43"
function SHX23_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX5_1
  if SHX2_2 then
    SHX2_2 = SHX5_1.players
    SHX2_2 = SHX2_2[SHX0_2]
    if SHX2_2 then
      SHX2_2.finishGameTime = SHX1_2
    end
  end
end
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = RegisterNetEvent
SHX22_1 = "4c236bb354"
function SHX23_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX5_1
  if SHX2_2 then
    SHX2_2 = SHX5_1.players
    SHX2_2 = SHX2_2[SHX0_2]
    if SHX2_2 then
      SHX2_2.checkpointIndex = SHX1_2
    end
  end
end
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = RegisterNetEvent
SHX22_1 = "3f414022a1"
function SHX23_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX3_2 = SHX5_1
  if SHX3_2 then
    SHX3_2 = SHX5_1.players
    SHX3_2 = SHX3_2[SHX0_2]
    if SHX3_2 then
      SHX3_2.numLapsDone = SHX1_2
      SHX3_2.checkpointIndex = SHX2_2
    end
    SHX4_2 = SHX6_1
    if SHX4_2 then
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.getLocalPlayerSrc
      SHX4_2 = SHX4_2()
      if SHX4_2 == SHX0_2 and 1 == SHX2_2 then
        SHX4_2 = pairs
        SHX5_2 = SHX6_1.checkpointBlips
        SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
        for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
          SHX10_2 = SetBlipDisplay
          SHX11_2 = SHX9_2
          SHX12_2 = 2
          SHX10_2(SHX11_2, SHX12_2)
        end
      end
    end
  end
end
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = RegisterNetEvent
SHX22_1 = "a595cac93f"
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX6_1
  if SHX1_2 then
    SHX1_2 = SHX6_1.checkpointBlips
    SHX1_2 = SHX1_2[SHX0_2]
    if SHX1_2 then
      SHX2_2 = SetBlipDisplay
      SHX3_2 = SHX1_2
      SHX4_2 = 0
      SHX2_2(SHX3_2, SHX4_2)
      SHX2_2 = PlaySoundFrontend
      SHX3_2 = -1
      SHX4_2 = "RACE_PLACED"
      SHX5_2 = "HUD_AWARDS"
      SHX6_2 = false
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = AnimpostfxPlay
      SHX3_2 = "SuccessNeutral"
      SHX4_2 = 0
      SHX5_2 = false
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    end
  end
end
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = CMG
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX5_1
  if SHX0_2 then
    SHX0_2 = SHX5_1.players
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getLocalPlayerSrc
    SHX1_2 = SHX1_2()
    SHX0_2 = SHX0_2[SHX1_2]
    if SHX0_2 then
      SHX0_2 = true
      return SHX0_2
    end
  end
  SHX0_2 = false
  return SHX0_2
end
SHX21_1.isInCustomRace = SHX22_1
