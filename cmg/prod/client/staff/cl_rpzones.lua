-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1
SHX0_1 = {}
SHX1_1 = 5
SHX2_1 = 10
SHX3_1 = 20
SHX4_1 = 30
SHX5_1 = 40
SHX6_1 = 50
SHX7_1 = 75
SHX8_1 = 100
SHX9_1 = 150
SHX10_1 = 200
SHX11_1 = 250
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
SHX0_1[11] = SHX11_1
SHX1_1 = {}
SHX2_1 = 10
SHX3_1 = 20
SHX4_1 = 30
SHX5_1 = 40
SHX6_1 = 50
SHX7_1 = 75
SHX8_1 = 100
SHX9_1 = 150
SHX10_1 = 200
SHX1_1[1] = SHX2_1
SHX1_1[2] = SHX3_1
SHX1_1[3] = SHX4_1
SHX1_1[4] = SHX5_1
SHX1_1[5] = SHX6_1
SHX1_1[6] = SHX7_1
SHX1_1[7] = SHX8_1
SHX1_1[8] = SHX9_1
SHX1_1[9] = SHX10_1
SHX2_1 = {}
SHX3_1 = {}
SHX3_1.melee = false
SHX3_1.throwable = false
SHX3_1.pistol = false
SHX3_1.shotgun = false
SHX3_1.mg = false
SHX3_1.smg = false
SHX3_1.rifle = false
SHX3_1.sniper = false
SHX3_1.heavy = false
SHX2_1.weapons = SHX3_1
SHX3_1 = {}
SHX4_1 = #SHX0_1
SHX4_1 = SHX0_1[SHX4_1]
SHX3_1.speed = SHX4_1
SHX3_1.disableTrolling = true
SHX3_1.disableDamage = false
SHX3_1.delete = false
SHX3_1.emptyDelete = false
SHX3_1.car = false
SHX3_1.helicopter = false
SHX3_1.plane = false
SHX3_1.boat = false
SHX3_1.bicycle = false
SHX2_1.vehicles = SHX3_1
SHX2_1.disableDamage = false
SHX2_1.disableCollision = false
SHX2_1.blipGloballyVisible = true
SHX2_1.disableMusicAudio = false
SHX3_1 = SHX1_1[1]
SHX2_1.radius = SHX3_1
SHX3_1 = {}
SHX4_1 = false
SHX5_1 = {}
SHX6_1 = false
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.copy
  SHX2_2 = SHX2_1
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX1_2.position = SHX2_2
  if SHX0_2 then
    SHX2_2 = GetBlipCoords
    SHX3_2 = GetFirstBlipInfoId
    SHX4_2 = 8
    SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX1_2.position = SHX2_2
  end
  SHX2_2 = SHX1_2.radius
  SHX2_2 = SHX2_2 + 0.0
  SHX1_2.radius = SHX2_2
  SHX2_2 = SHX1_2.vehicles
  SHX3_2 = SHX1_2.vehicles
  SHX3_2 = SHX3_2.speed
  SHX3_2 = SHX3_2 + 0.0
  SHX2_2.speed = SHX3_2
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "ef32c544d1"
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX0_2.bucketId
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerBucket
  SHX2_2 = SHX2_2()
  SHX1_2 = SHX1_2 == SHX2_2
  return SHX1_2
end
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = nil
  SHX1_2 = 100.0
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_2 = pairs
  SHX4_2 = SHX3_1
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.position
    SHX9_2 = SHX9_2.xy
    SHX10_2 = SHX2_2.xy
    SHX9_2 = SHX9_2 - SHX10_2
    SHX9_2 = #SHX9_2
    if SHX1_2 > SHX9_2 then
      SHX10_2 = SHX8_1
      SHX11_2 = SHX8_2
      SHX10_2 = SHX10_2(SHX11_2)
      if SHX10_2 then
        SHX0_2 = SHX8_2.uuid
        SHX1_2 = SHX9_2
      end
    end
  end
  if SHX0_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "01669fc121"
    SHX5_2 = SHX0_2
    SHX3_2(SHX4_2, SHX5_2)
  end
end
SHX10_1 = RMenu
SHX10_1 = SHX10_1.Add
SHX11_1 = "rpzones"
SHX12_1 = "mainmenu"
SHX13_1 = RageUI
SHX13_1 = SHX13_1.CreateMenu
SHX14_1 = ""
SHX15_1 = "~b~Main Menu"
SHX16_1 = CMG
SHX16_1 = SHX16_1.getRageUIMenuWidth
SHX16_1 = SHX16_1()
SHX17_1 = CMG
SHX17_1 = SHX17_1.getRageUIMenuHeight
SHX17_1 = SHX17_1()
SHX18_1 = "cmg_adminui"
SHX19_1 = "cmg_adminui"
SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1)
SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1)
SHX10_1 = RMenu
SHX10_1 = SHX10_1.Add
SHX11_1 = "rpzones"
SHX12_1 = "weapons"
SHX13_1 = RageUI
SHX13_1 = SHX13_1.CreateSubMenu
SHX14_1 = RMenu
SHX15_1 = SHX14_1
SHX14_1 = SHX14_1.Get
SHX16_1 = "rpzones"
SHX17_1 = "mainmenu"
SHX14_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX15_1 = ""
SHX16_1 = "~b~Weapons"
SHX17_1 = CMG
SHX17_1 = SHX17_1.getRageUIMenuWidth
SHX17_1 = SHX17_1()
SHX18_1 = CMG
SHX18_1 = SHX18_1.getRageUIMenuHeight
SHX18_1 = SHX18_1()
SHX19_1 = "cmg_adminui"
SHX20_1 = "cmg_adminui"
SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1)
SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1)
SHX10_1 = RMenu
SHX10_1 = SHX10_1.Add
SHX11_1 = "rpzones"
SHX12_1 = "vehicles"
SHX13_1 = RageUI
SHX13_1 = SHX13_1.CreateSubMenu
SHX14_1 = RMenu
SHX15_1 = SHX14_1
SHX14_1 = SHX14_1.Get
SHX16_1 = "rpzones"
SHX17_1 = "mainmenu"
SHX14_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX15_1 = ""
SHX16_1 = "~b~Vehicles"
SHX17_1 = CMG
SHX17_1 = SHX17_1.getRageUIMenuWidth
SHX17_1 = SHX17_1()
SHX18_1 = CMG
SHX18_1 = SHX18_1.getRageUIMenuHeight
SHX18_1 = SHX18_1()
SHX19_1 = "cmg_adminui"
SHX20_1 = "cmg_adminui"
SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1)
SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1)
SHX10_1 = RageUI
SHX10_1 = SHX10_1.CreateWhile
SHX11_1 = 1.0
SHX12_1 = RMenu
SHX13_1 = SHX12_1
SHX12_1 = SHX12_1.Get
SHX14_1 = "rpzones"
SHX15_1 = "mainmenu"
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX13_1 = nil
function SHX14_1()
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
  SHX3_2 = "rpzones"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "Creation"
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Weapons"
    SHX2_3 = "Configuration options related to weapons."
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
    SHX8_3 = "rpzones"
    SHX9_3 = "weapons"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Vehicles"
    SHX2_3 = "Configure options relating to vehicles."
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
    SHX8_3 = "rpzones"
    SHX9_3 = "vehicles"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Checkbox
    SHX1_3 = "Disable Damage"
    SHX2_3 = "Disables damage to players, this has the same affect as a greenzone."
    SHX3_3 = SHX2_1.disableDamage
    SHX4_3 = {}
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      SHX2_1.disableDamage = SHX3_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Checkbox
    SHX1_3 = "Disable Collision"
    SHX2_3 = "Disables collision between vehicles, this has the same affect as a greenzone."
    SHX3_3 = SHX2_1.disableCollision
    SHX4_3 = {}
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      SHX2_1.disableCollision = SHX3_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Checkbox
    SHX1_3 = "Display Zone Globally"
    SHX2_3 = "Whether this zone should display on the main map. If disabled, it only shows on the minimap when nearby."
    SHX3_3 = SHX2_1.blipGloballyVisible
    SHX4_3 = {}
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      SHX2_1.blipGloballyVisible = SHX3_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.List
    SHX1_3 = "Radius (m)"
    SHX2_3 = SHX1_1
    SHX3_3 = table
    SHX3_3 = SHX3_3.find
    SHX4_3 = SHX1_1
    SHX5_3 = SHX2_1.radius
    SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
    if not SHX3_3 then
      SHX3_3 = 1
    end
    SHX4_3 = "The distance in meters of the RP zone to create. Please be mindful and start small."
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
      SHX4_4 = SHX1_1
      SHX4_4 = SHX4_4[SHX3_4]
      SHX2_1.radius = SHX4_4
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
    SHX1_3 = "Disable Music Audio"
    SHX2_3 = "Mutes all DJ Menu audio whilst inside of an RP zone. Does not prevent the placement of a DJ Menu set."
    SHX3_3 = SHX2_1.disableMusicAudio
    SHX4_3 = {}
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      SHX2_1.disableMusicAudio = SHX3_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~b~Create Zone"
    SHX2_3 = "Creates the zone with the settings you have provided."
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
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = SHX7_1
        SHX4_4 = false
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = IsWaypointActive
    SHX0_3 = SHX0_3()
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "~b~Create Zone At Waypoint"
      SHX2_3 = "Creates the zone with the settings you have provided at the location of the waypoint."
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
        
        local SHX3_4, SHX4_4
        if SHX2_4 then
          SHX3_4 = SHX7_1
          SHX4_4 = true
          SHX3_4(SHX4_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~r~Delete Closest Zone"
    SHX2_3 = "Deletes the closest zone within 100 meters."
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
      
      local SHX3_4
      if SHX2_4 then
        SHX3_4 = SHX9_1
        SHX3_4()
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
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
  SHX3_2 = "rpzones"
  SHX4_2 = "weapons"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Checkbox
    SHX1_3 = "Enable Melee"
    SHX2_3 = "Sets whether guns under the melee category are allowed."
    SHX3_3 = SHX2_1.weapons
    SHX3_3 = SHX3_3.melee
    SHX4_3 = {}
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX2_1.weapons
      SHX4_4.melee = SHX3_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Checkbox
    SHX1_3 = "Enable Throwable"
    SHX2_3 = "Sets whether guns under the throwable category are allowed."
    SHX3_3 = SHX2_1.weapons
    SHX3_3 = SHX3_3.throwable
    SHX4_3 = {}
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX2_1.weapons
      SHX4_4.throwable = SHX3_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Checkbox
    SHX1_3 = "Enable Pistol"
    SHX2_3 = "Sets whether guns under the pistol category are allowed."
    SHX3_3 = SHX2_1.weapons
    SHX3_3 = SHX3_3.pistol
    SHX4_3 = {}
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX2_1.weapons
      SHX4_4.pistol = SHX3_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Checkbox
    SHX1_3 = "Enable Shotgun"
    SHX2_3 = "Sets whether guns under the shotgun category are allowed."
    SHX3_3 = SHX2_1.weapons
    SHX3_3 = SHX3_3.shotgun
    SHX4_3 = {}
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX2_1.weapons
      SHX4_4.shotgun = SHX3_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Checkbox
    SHX1_3 = "Enable LMG"
    SHX2_3 = "Sets whether guns under the LMG category are allowed."
    SHX3_3 = SHX2_1.weapons
    SHX3_3 = SHX3_3.mg
    SHX4_3 = {}
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX2_1.weapons
      SHX4_4.mg = SHX3_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Checkbox
    SHX1_3 = "Enable SMG"
    SHX2_3 = "Sets whether guns under the SMG category are allowed."
    SHX3_3 = SHX2_1.weapons
    SHX3_3 = SHX3_3.smg
    SHX4_3 = {}
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX2_1.weapons
      SHX4_4.smg = SHX3_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Checkbox
    SHX1_3 = "Enable Rifle"
    SHX2_3 = "Sets whether guns under the rifle category are allowed."
    SHX3_3 = SHX2_1.weapons
    SHX3_3 = SHX3_3.rifle
    SHX4_3 = {}
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX2_1.weapons
      SHX4_4.rifle = SHX3_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Checkbox
    SHX1_3 = "Enable Sniper"
    SHX2_3 = "Sets whether guns under the sniper category are allowed."
    SHX3_3 = SHX2_1.weapons
    SHX3_3 = SHX3_3.sniper
    SHX4_3 = {}
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX2_1.weapons
      SHX4_4.sniper = SHX3_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Checkbox
    SHX1_3 = "Enable Heavy"
    SHX2_3 = "Sets whether guns under the heavy category are allowed."
    SHX3_3 = SHX2_1.weapons
    SHX3_3 = SHX3_3.heavy
    SHX4_3 = {}
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX2_1.weapons
      SHX4_4.heavy = SHX3_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
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
  SHX3_2 = "rpzones"
  SHX4_2 = "vehicles"
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
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.List
    SHX1_3 = "Speed (mph)"
    SHX2_3 = SHX0_1
    SHX3_3 = table
    SHX3_3 = SHX3_3.find
    SHX4_3 = SHX0_1
    SHX5_3 = SHX2_1.vehicles
    SHX5_3 = SHX5_3.speed
    SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
    if not SHX3_3 then
      SHX3_3 = 1
    end
    SHX4_3 = "Sets the maximum speed allowed in the zone in MPH."
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
      SHX4_4 = SHX2_1.vehicles
      SHX5_4 = SHX0_1
      SHX5_4 = SHX5_4[SHX3_4]
      SHX4_4.speed = SHX5_4
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
    SHX1_3 = "Disable Trolling"
    SHX2_3 = "Disables vehicles horns, parachutes, boosts, cargo hooks, jumping and animations."
    SHX3_3 = SHX2_1.vehicles
    SHX3_3 = SHX3_3.disableTrolling
    SHX4_3 = {}
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX2_1.vehicles
      SHX4_4.disableTrolling = SHX3_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Checkbox
    SHX1_3 = "Disable Damage"
    SHX2_3 = "Prevents vehicles being damaged, instantly repairs engine health."
    SHX3_3 = SHX2_1.vehicles
    SHX3_3 = SHX3_3.disableDamage
    SHX4_3 = {}
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX2_1.vehicles
      SHX4_4.disableDamage = SHX3_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Checkbox
    SHX1_3 = "Empty Deletion"
    SHX2_3 = "Sets whether empty vehicles are deleted after a minute of no driver being present."
    SHX3_3 = SHX2_1.vehicles
    SHX3_3 = SHX3_3.emptyDelete
    SHX4_3 = {}
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX2_1.vehicles
      SHX4_4.emptyDelete = SHX3_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Checkbox
    SHX1_3 = "Use Driver Deletion"
    SHX2_3 = "Sets whether vehicles with a driver should be instantly deleted."
    SHX3_3 = SHX2_1.vehicles
    SHX3_3 = SHX3_3.delete
    SHX4_3 = {}
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX2_1.vehicles
      SHX4_4.delete = SHX3_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = SHX2_1.vehicles
    SHX0_3 = SHX0_3.delete
    if SHX0_3 then
      SHX0_3 = "Delete"
      if SHX0_3 then
        goto SHX_LABEL_69
      end
    end
    SHX0_3 = "Disable"
    -- [FIX IF ERROR] Move ::SHX_LABEL_69:: outside nested blocks until all 'goto SHX_LABEL_69' can see it
    ::SHX_LABEL_69::
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Checkbox
    SHX2_3 = string
    SHX2_3 = SHX2_3.format
    SHX3_3 = "%s Car"
    SHX4_3 = SHX0_3
    SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
    SHX3_3 = "Sets whether this applies to vehicles under the car category."
    SHX4_3 = SHX2_1.vehicles
    SHX4_3 = SHX4_3.car
    SHX5_3 = {}
    function SHX6_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX2_1.vehicles
      SHX4_4.car = SHX3_4
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Checkbox
    SHX2_3 = string
    SHX2_3 = SHX2_3.format
    SHX3_3 = "%s Helicopter"
    SHX4_3 = SHX0_3
    SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
    SHX3_3 = "Sets whether this applies to vehicles under the helicopter category."
    SHX4_3 = SHX2_1.vehicles
    SHX4_3 = SHX4_3.helicopter
    SHX5_3 = {}
    function SHX6_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX2_1.vehicles
      SHX4_4.helicopter = SHX3_4
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Checkbox
    SHX2_3 = string
    SHX2_3 = SHX2_3.format
    SHX3_3 = "%s Plane"
    SHX4_3 = SHX0_3
    SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
    SHX3_3 = "Sets whether this applies to vehicles under the plane category."
    SHX4_3 = SHX2_1.vehicles
    SHX4_3 = SHX4_3.plane
    SHX5_3 = {}
    function SHX6_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX2_1.vehicles
      SHX4_4.plane = SHX3_4
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Checkbox
    SHX2_3 = string
    SHX2_3 = SHX2_3.format
    SHX3_3 = "%s Boat"
    SHX4_3 = SHX0_3
    SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
    SHX3_3 = "Sets whether this applies to vehicles under the boat category."
    SHX4_3 = SHX2_1.vehicles
    SHX4_3 = SHX4_3.boat
    SHX5_3 = {}
    function SHX6_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX2_1.vehicles
      SHX4_4.boat = SHX3_4
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Checkbox
    SHX2_3 = string
    SHX2_3 = SHX2_3.format
    SHX3_3 = "%s Bicycle"
    SHX4_3 = SHX0_3
    SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
    SHX3_3 = "Sets whether this applies to vehicles under the bicycle category."
    SHX4_3 = SHX2_1.vehicles
    SHX4_3 = SHX4_3.bicycle
    SHX5_3 = {}
    function SHX6_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX2_1.vehicles
      SHX4_4.bicycle = SHX3_4
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
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
SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1)
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX0_2.blip
  if not SHX1_2 then
    SHX1_2 = AddBlipForRadius
    SHX2_2 = SHX0_2.position
    SHX2_2 = SHX2_2.x
    SHX3_2 = SHX0_2.position
    SHX3_2 = SHX3_2.y
    SHX4_2 = SHX0_2.position
    SHX4_2 = SHX4_2.z
    SHX5_2 = SHX0_2.radius
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2.blip = SHX1_2
    SHX1_2 = SetBlipColour
    SHX2_2 = SHX0_2.blip
    SHX3_2 = 27
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SetBlipAlpha
    SHX2_2 = SHX0_2.blip
    SHX3_2 = 180
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SetBlipDisplay
    SHX2_2 = SHX0_2.blip
    SHX3_2 = SHX0_2.blipGloballyVisible
    if SHX3_2 then
      SHX3_2 = 8
      if SHX3_2 then
        goto SHX_LABEL_31
      end
    end
    SHX3_2 = 5
    -- [FIX IF ERROR] Move ::SHX_LABEL_31:: outside nested blocks until all 'goto SHX_LABEL_31' can see it
    ::SHX_LABEL_31::
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = SHX0_2.vehicles
  SHX1_2 = SHX1_2.speed
  if SHX1_2 then
    SHX1_2 = SHX0_2.speedHandle
    if not SHX1_2 then
      SHX1_2 = AddRoadNodeSpeedZone
      SHX2_2 = SHX0_2.position
      SHX2_2 = SHX2_2.x
      SHX3_2 = SHX0_2.position
      SHX3_2 = SHX3_2.y
      SHX4_2 = SHX0_2.position
      SHX4_2 = SHX4_2.z
      SHX5_2 = SHX0_2.radius
      SHX6_2 = SHX0_2.vehicles
      SHX6_2 = SHX6_2.speed
      SHX6_2 = SHX6_2 * 0.44704
      SHX7_2 = false
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX0_2.speedHandle = SHX1_2
    end
  end
end
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX0_2.blip
  if SHX1_2 then
    SHX1_2 = RemoveBlip
    SHX2_2 = SHX0_2.blip
    SHX1_2(SHX2_2)
    SHX0_2.blip = nil
  end
  SHX1_2 = SHX0_2.vehicles
  SHX1_2 = SHX1_2.speed
  if SHX1_2 then
    SHX1_2 = SHX0_2.speedHandle
    if SHX1_2 then
      SHX1_2 = RemoveRoadNodeSpeedZone
      SHX2_2 = SHX0_2.speedHandle
      SHX1_2(SHX2_2)
      SHX0_2.speedHandle = nil
    end
  end
end
SHX12_1 = RegisterNetEvent
SHX13_1 = "ef32c544d1"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2.bucketId
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerBucket
  SHX2_2 = SHX2_2()
  if SHX1_2 == SHX2_2 then
    SHX1_2 = SHX10_1
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
  SHX1_2 = table
  SHX1_2 = SHX1_2.add
  SHX2_2 = SHX3_1
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "01669fc121"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = SHX3_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.uuid
    if SHX7_2 == SHX0_2 then
      SHX7_2 = SHX11_1
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
      SHX7_2 = table
      SHX7_2 = SHX7_2.remove
      SHX8_2 = SHX3_1
      SHX9_2 = SHX5_2
      SHX7_2(SHX8_2, SHX9_2)
      break
    end
  end
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = AddEventHandler
SHX13_1 = "919aefda0c"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = pairs
  SHX2_2 = SHX3_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.bucketId
    if SHX7_2 == SHX0_2 then
      SHX7_2 = SHX10_1
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
    else
      SHX7_2 = SHX11_1
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
    end
  end
end
SHX12_1(SHX13_1, SHX14_1)
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = GetWeapontypeGroup
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX0_2.weapons
  SHX4_2 = SHX4_2.melee
  if not SHX4_2 and -728555052 == SHX3_2 then
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.setWeapon
    SHX5_2 = SHX2_2
    SHX6_2 = -1569615261
    SHX4_2(SHX5_2, SHX6_2)
  else
    SHX4_2 = SHX0_2.weapons
    SHX4_2 = SHX4_2.throwable
    if not SHX4_2 and 1548507267 == SHX3_2 then
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.setWeapon
      SHX5_2 = SHX2_2
      SHX6_2 = -1569615261
      SHX4_2(SHX5_2, SHX6_2)
    else
      SHX4_2 = SHX0_2.weapons
      SHX4_2 = SHX4_2.pistol
      if not SHX4_2 and 416676503 == SHX3_2 then
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.setWeapon
        SHX5_2 = SHX2_2
        SHX6_2 = -1569615261
        SHX4_2(SHX5_2, SHX6_2)
      else
        SHX4_2 = SHX0_2.weapons
        SHX4_2 = SHX4_2.shotgun
        if not SHX4_2 and 860033945 == SHX3_2 then
          SHX4_2 = CMG
          SHX4_2 = SHX4_2.setWeapon
          SHX5_2 = SHX2_2
          SHX6_2 = -1569615261
          SHX4_2(SHX5_2, SHX6_2)
        else
          SHX4_2 = SHX0_2.weapons
          SHX4_2 = SHX4_2.mg
          if not SHX4_2 and 1159398588 == SHX3_2 then
            SHX4_2 = CMG
            SHX4_2 = SHX4_2.setWeapon
            SHX5_2 = SHX2_2
            SHX6_2 = -1569615261
            SHX4_2(SHX5_2, SHX6_2)
          else
            SHX4_2 = SHX0_2.weapons
            SHX4_2 = SHX4_2.smg
            if not SHX4_2 and -957766203 == SHX3_2 then
              SHX4_2 = CMG
              SHX4_2 = SHX4_2.setWeapon
              SHX5_2 = SHX2_2
              SHX6_2 = -1569615261
              SHX4_2(SHX5_2, SHX6_2)
            else
              SHX4_2 = SHX0_2.weapons
              SHX4_2 = SHX4_2.rifle
              if not SHX4_2 and 970310034 == SHX3_2 then
                SHX4_2 = CMG
                SHX4_2 = SHX4_2.setWeapon
                SHX5_2 = SHX2_2
                SHX6_2 = -1569615261
                SHX4_2(SHX5_2, SHX6_2)
              else
                SHX4_2 = SHX0_2.weapons
                SHX4_2 = SHX4_2.sniper
                if not SHX4_2 and -1212426201 == SHX3_2 then
                  SHX4_2 = CMG
                  SHX4_2 = SHX4_2.setWeapon
                  SHX5_2 = SHX2_2
                  SHX6_2 = -1569615261
                  SHX4_2(SHX5_2, SHX6_2)
                else
                  SHX4_2 = SHX0_2.weapons
                  SHX4_2 = SHX4_2.heavy
                  if not SHX4_2 and -1569042529 == SHX3_2 then
                    SHX4_2 = CMG
                    SHX4_2 = SHX4_2.setWeapon
                    SHX5_2 = SHX2_2
                    SHX6_2 = -1569615261
                    SHX4_2(SHX5_2, SHX6_2)
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = DeleteEntity
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 32
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 33
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 34
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 35
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 71
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 72
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SetVehicleEngineOn
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX4_2 = true
  SHX5_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = IsVehicleDamaged
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = GetVehicleBodyHealth
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = 1000.0
    SHX1_2 = GetVehicleEngineHealth
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = 1000.0
    SHX1_2 = GetVehiclePetrolTankHealth
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = 1000.0
    SHX1_2 = GetEntityHealth
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = 1000.0
    SHX1_2 = AreAllVehicleWindowsIntact
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX1_2 = SHX1_2 < SHX2_2 or SHX1_2
  end
  return SHX1_2
end
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX0_2.vehicles
  SHX2_2 = SHX2_2.disableTrolling
  if SHX2_2 then
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = 86
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = 101
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = 102
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = 103
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = 350
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = 351
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = 352
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = 353
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = IsVehicleParachuteActive
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = SetVehicleForwardSpeed
      SHX3_2 = SHX1_2
      SHX4_2 = 0.0
      SHX2_2(SHX3_2, SHX4_2)
    end
    SHX2_2 = SetCargobobHookCanAttach
    SHX3_2 = SHX1_2
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = SetVehicleRocketBoostPercentage
    SHX3_2 = SHX1_2
    SHX4_2 = 0.0
    SHX2_2(SHX3_2, SHX4_2)
  end
  SHX2_2 = SHX0_2.vehicles
  SHX2_2 = SHX2_2.disableDamage
  if SHX2_2 then
    SHX2_2 = SHX15_1
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = SetVehicleEngineHealth
      SHX3_2 = SHX1_2
      SHX4_2 = 9999
      SHX2_2(SHX3_2, SHX4_2)
      SHX2_2 = SetVehiclePetrolTankHealth
      SHX3_2 = SHX1_2
      SHX4_2 = 9999
      SHX2_2(SHX3_2, SHX4_2)
      SHX2_2 = SetVehicleFixed
      SHX3_2 = SHX1_2
      SHX2_2(SHX3_2)
    end
  end
  SHX2_2 = SHX0_2.vehicles
  SHX2_2 = SHX2_2.delete
  if SHX2_2 then
    SHX2_2 = SHX13_1
    if SHX2_2 then
      goto SHX_LABEL_90
    end
  end
  SHX2_2 = SHX14_1
  -- [FIX IF ERROR] Move ::SHX_LABEL_90:: outside nested blocks until all 'goto SHX_LABEL_90' can see it
  ::SHX_LABEL_90::
  SHX3_2 = GetEntityModel
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX0_2.vehicles
  SHX4_2 = SHX4_2.helicopter
  if SHX4_2 then
    SHX4_2 = IsThisModelAHeli
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      SHX4_2 = SHX2_2
      SHX5_2 = SHX1_2
      SHX4_2(SHX5_2)
  end
  else
    SHX4_2 = SHX0_2.vehicles
    SHX4_2 = SHX4_2.plane
    if SHX4_2 then
      SHX4_2 = IsThisModelAPlane
      SHX5_2 = SHX3_2
      SHX4_2 = SHX4_2(SHX5_2)
      if SHX4_2 then
        SHX4_2 = SHX2_2
        SHX5_2 = SHX1_2
        SHX4_2(SHX5_2)
    end
    else
      SHX4_2 = SHX0_2.vehicles
      SHX4_2 = SHX4_2.boat
      if SHX4_2 then
        SHX4_2 = IsThisModelABoat
        SHX5_2 = SHX3_2
        SHX4_2 = SHX4_2(SHX5_2)
        if SHX4_2 then
          SHX4_2 = SHX2_2
          SHX5_2 = SHX1_2
          SHX4_2(SHX5_2)
      end
      else
        SHX4_2 = SHX0_2.vehicles
        SHX4_2 = SHX4_2.bicycle
        if SHX4_2 then
          SHX4_2 = IsThisModelABicycle
          SHX5_2 = SHX3_2
          SHX4_2 = SHX4_2(SHX5_2)
          if SHX4_2 then
            SHX4_2 = SHX2_2
            SHX5_2 = SHX1_2
            SHX4_2(SHX5_2)
        end
        else
          SHX4_2 = SHX0_2.vehicles
          SHX4_2 = SHX4_2.car
          if SHX4_2 then
            SHX4_2 = IsThisModelACar
            SHX5_2 = SHX3_2
            SHX4_2 = SHX4_2(SHX5_2)
            if not SHX4_2 then
              SHX4_2 = IsThisModelABike
              SHX5_2 = SHX3_2
              SHX4_2 = SHX4_2(SHX5_2)
              if not SHX4_2 then
                goto SHX_LABEL_162
              end
            end
            SHX4_2 = SHX2_2
            SHX5_2 = SHX1_2
            SHX4_2(SHX5_2)
          end
        end
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_162:: outside nested blocks until all 'goto SHX_LABEL_162' can see it
  ::SHX_LABEL_162::
end
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = pairs
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getAllVehicles
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX2_2()
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = NetworkGetEntityIsNetworked
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = GetEntityCoords
      SHX8_2 = SHX6_2
      SHX9_2 = true
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
      SHX7_2 = SHX7_2.xy
      SHX8_2 = SHX0_2.position
      SHX8_2 = SHX8_2.xy
      SHX7_2 = SHX7_2 - SHX8_2
      SHX7_2 = #SHX7_2
      SHX8_2 = SHX0_2.radius
      SHX7_2 = SHX7_2 < SHX8_2
      SHX8_2 = GetPedInVehicleSeat
      SHX9_2 = SHX6_2
      SHX10_2 = -1
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      if 0 == SHX8_2 and SHX7_2 then
        SHX9_2 = SHX5_1
        SHX9_2 = SHX9_2[SHX6_2]
        if not SHX9_2 then
          SHX9_2 = SHX5_1
          SHX10_2 = GetGameTimer
          SHX10_2 = SHX10_2()
          SHX9_2[SHX6_2] = SHX10_2
        end
      else
        SHX9_2 = SHX5_1
        SHX9_2 = SHX9_2[SHX6_2]
        if SHX9_2 then
          SHX9_2 = SHX5_1
          SHX9_2[SHX6_2] = nil
        end
      end
    end
  end
  SHX1_2 = pairs
  SHX2_2 = SHX5_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = DoesEntityExist
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2)
    if not SHX7_2 then
      SHX7_2 = SHX5_1
      SHX7_2[SHX5_2] = nil
    else
      SHX7_2 = GetGameTimer
      SHX7_2 = SHX7_2()
      SHX7_2 = SHX7_2 - SHX6_2
      SHX8_2 = 60000
      if SHX7_2 > SHX8_2 then
        SHX7_2 = NetworkHasControlOfEntity
        SHX8_2 = SHX5_2
        SHX7_2 = SHX7_2(SHX8_2)
        if SHX7_2 then
          SHX7_2 = DeleteEntity
          SHX8_2 = SHX5_2
          SHX7_2(SHX8_2)
        end
      end
    end
  end
end
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX3_2 = SetEntityInvincible
  SHX4_2 = SHX1_2
  SHX5_2 = SHX0_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetPlayerInvincible
  SHX4_2 = SHX2_2
  SHX5_2 = SHX0_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetEntityProofs
  SHX4_2 = SHX1_2
  SHX5_2 = SHX0_2
  SHX6_2 = SHX0_2
  SHX7_2 = SHX0_2
  SHX8_2 = SHX0_2
  SHX9_2 = SHX0_2
  SHX10_2 = SHX0_2
  SHX11_2 = SHX0_2
  SHX12_2 = SHX0_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX3_2 = SetEntityCanBeDamaged
  SHX4_2 = SHX1_2
  SHX5_2 = not SHX0_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetPedCanRagdoll
  SHX4_2 = SHX1_2
  SHX5_2 = not SHX0_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetPedCanRagdollFromPlayerImpact
  SHX4_2 = SHX1_2
  SHX5_2 = not SHX0_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = ClearPedBloodDamage
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
  SHX3_2 = ResetPedVisibleDamage
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
  SHX3_2 = ClearPedLastWeaponDamage
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
end
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = GetCurrentPedWeapon
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = 0
  SHX4_2 = false
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  if 0 ~= SHX2_2 and 1953687840 ~= SHX2_2 then
    SHX3_2 = SHX12_1
    SHX4_2 = SHX0_2
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerVehicle
  SHX3_2, SHX4_2 = SHX3_2()
  if 0 ~= SHX3_2 and SHX4_2 then
    SHX5_2 = SHX16_1
    SHX6_2 = SHX0_2
    SHX7_2 = SHX3_2
    SHX5_2(SHX6_2, SHX7_2)
  end
  SHX5_2 = SHX0_2.vehicles
  SHX5_2 = SHX5_2.emptyDelete
  if SHX5_2 then
    SHX5_2 = SHX17_1
    SHX6_2 = SHX0_2
    SHX5_2(SHX6_2)
  end
  SHX5_2 = SHX0_2.disableDamage
  if SHX5_2 then
    SHX5_2 = SHX18_1
    SHX6_2 = true
    SHX5_2(SHX6_2)
  end
  SHX5_2 = SHX0_2.disableCollision
  if SHX5_2 then
    SHX5_2 = SetLocalPlayerAsGhost
    SHX6_2 = true
    SHX5_2(SHX6_2)
  end
end
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = false
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.inEvent
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    return
  end
  SHX2_2 = ipairs
  SHX3_2 = SHX3_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX1_2.xy
    SHX9_2 = SHX7_2.position
    SHX9_2 = SHX9_2.xy
    SHX8_2 = SHX8_2 - SHX9_2
    SHX8_2 = #SHX8_2
    SHX9_2 = SHX7_2.radius
    if SHX8_2 < SHX9_2 then
      SHX8_2 = SHX8_1
      SHX9_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2)
      if SHX8_2 then
        SHX0_2 = true
        SHX8_2 = SHX19_1
        SHX9_2 = SHX7_2
        SHX8_2(SHX9_2)
        SHX8_2 = SHX4_1
        if not SHX8_2 then
          SHX8_2 = TriggerEvent
          SHX9_2 = "371eab1d3a"
          SHX10_2 = {}
          SHX10_2.text = "You have entered a Temporary RP Zone"
          SHX10_2.height = "200px"
          SHX10_2.width = "auto"
          SHX10_2.colour = "#FFF"
          SHX10_2.background = "#32CD32"
          SHX10_2.pos = "bottom-right"
          SHX10_2.icon = "success"
          SHX11_2 = 5000
          SHX8_2(SHX9_2, SHX10_2, SHX11_2)
          SHX8_2 = Citizen
          SHX8_2 = SHX8_2.CreateThread
          function SHX9_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3, SHX2_3
            SHX0_3 = GetGameTimer
            SHX0_3 = SHX0_3()
            while true do
              SHX1_3 = GetGameTimer
              SHX1_3 = SHX1_3()
              SHX1_3 = SHX1_3 - SHX0_3
              SHX2_3 = 5000
              if not (SHX1_3 < SHX2_3) then
                break
              end
              SHX1_3 = SHX4_1
              if not SHX1_3 then
                break
              end
              SHX1_3 = drawNativeText
              SHX2_3 = "~q~ENTERED TEMPORARY RP ZONE"
              SHX1_3(SHX2_3)
              SHX1_3 = Citizen
              SHX1_3 = SHX1_3.Wait
              SHX2_3 = 0
              SHX1_3(SHX2_3)
            end
          end
          SHX8_2(SHX9_2)
        end
        SHX8_2 = SHX7_2.disableMusicAudio
        if SHX8_2 then
          SHX8_2 = true
          SHX6_1 = SHX8_2
        end
        SHX8_2 = true
        SHX4_1 = SHX8_2
      end
    end
  end
  SHX2_2 = SHX4_1
  if SHX2_2 and not SHX0_2 then
    SHX2_2 = TriggerEvent
    SHX3_2 = "371eab1d3a"
    SHX4_2 = {}
    SHX4_2.text = "You have left the Temporary RP Zone"
    SHX4_2.height = "60px"
    SHX4_2.width = "auto"
    SHX4_2.colour = "#FFF"
    SHX4_2.background = "#ff0000"
    SHX4_2.pos = "bottom-right"
    SHX4_2.icon = "bad"
    SHX5_2 = 5000
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = SHX18_1
    SHX3_2 = false
    SHX2_2(SHX3_2)
    SHX2_2 = SetLocalPlayerAsGhost
    SHX3_2 = false
    SHX2_2(SHX3_2)
    SHX2_2 = false
    SHX4_1 = SHX2_2
    SHX2_2 = false
    SHX6_1 = SHX2_2
  end
end
SHX21_1 = CMG
SHX21_1 = SHX21_1.createThreadOnTick
SHX22_1 = SHX20_1
SHX23_1 = "RP Zones Tick"
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = {}
SHX22_1 = {}
SHX23_1 = vector3
SHX24_1 = 923.70379638672
SHX25_1 = 47.972114562988
SHX26_1 = 81.106307983398
SHX23_1 = SHX23_1(SHX24_1, SHX25_1, SHX26_1)
SHX22_1.position = SHX23_1
SHX22_1.radius = 18.0
SHX21_1[1] = SHX22_1
SHX22_1 = 0
SHX23_1 = {}
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = table
  SHX0_2 = SHX0_2.clear
  SHX1_2 = SHX23_1
  SHX0_2(SHX1_2)
end
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX22_1
  SHX2_2 = SHX1_2 - SHX2_2
  SHX3_2 = 1000
  if SHX2_2 < SHX3_2 then
    return
  end
  SHX22_1 = SHX1_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerVehicle
  SHX2_2, SHX3_2 = SHX2_2()
  SHX4_2 = pairs
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getAllVehicles
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX5_2()
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = GetEntityCoords
    SHX11_2 = SHX9_2
    SHX12_2 = true
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
    SHX11_2 = SHX0_2.position
    SHX10_2 = SHX10_2 - SHX11_2
    SHX10_2 = #SHX10_2
    SHX11_2 = SHX0_2.radius
    SHX10_2 = SHX10_2 < SHX11_2
    SHX11_2 = SHX23_1
    SHX11_2 = SHX11_2[SHX9_2]
    if SHX10_2 then
      if not SHX11_2 then
        SHX12_2 = SHX23_1
        SHX12_2[SHX9_2] = SHX1_2
      end
      if SHX3_2 and SHX2_2 == SHX9_2 then
        SHX12_2 = CMG
        SHX12_2 = SHX12_2.announceMpBigMsg
        SHX13_2 = "~r~WARNING"
        SHX14_2 = "You are in a no car zone! Please exit within 5 seconds."
        SHX15_2 = 1250
        SHX16_2 = false
        SHX17_2 = true
        SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      end
    elseif SHX11_2 then
      SHX12_2 = SHX23_1
      SHX12_2[SHX9_2] = nil
    end
  end
  SHX4_2 = pairs
  SHX5_2 = SHX23_1
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX1_2 - SHX9_2
    SHX11_2 = 5000
    if SHX10_2 > SHX11_2 then
      SHX10_2 = NetworkHasControlOfEntity
      SHX11_2 = SHX8_2
      SHX10_2 = SHX10_2(SHX11_2)
      if SHX10_2 then
        SHX10_2 = DeleteEntity
        SHX11_2 = SHX8_2
        SHX10_2(SHX11_2)
      end
    end
  end
end
SHX26_1 = pairs
SHX27_1 = SHX21_1
SHX26_1, SHX27_1, SHX28_1, SHX29_1 = SHX26_1(SHX27_1)
for SHX30_1, SHX31_1 in SHX26_1, SHX27_1, SHX28_1, SHX29_1 do
  SHX32_1 = CMG
  SHX32_1 = SHX32_1.createArea
  SHX33_1 = "nocarzones_"
  SHX34_1 = tostring
  SHX35_1 = SHX30_1
  SHX34_1 = SHX34_1(SHX35_1)
  SHX33_1 = SHX33_1 .. SHX34_1
  SHX34_1 = SHX31_1.position
  SHX35_1 = SHX31_1.radius
  SHX35_1 = SHX35_1 + 2.0
  SHX36_1 = 10.0
  function SHX37_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_2, SHX1_2
  end
  SHX38_1 = SHX24_1
  SHX39_1 = SHX25_1
  SHX40_1 = SHX31_1
  SHX32_1(SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1)
end
SHX26_1 = false
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX26_1 = SHX0_2
end
function SHX28_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = true
  SHX26_1 = SHX0_2
end
SHX29_1 = CMG
function SHX30_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.generateUUID
  SHX3_2 = "novehicleoverridezone"
  SHX4_2 = 5
  SHX5_2 = "alphanumeric"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.createArea
  SHX4_2 = "novehicleoverridezone_"
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2 .. SHX5_2
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX7_2 = 1000.0
  SHX8_2 = SHX28_1
  SHX9_2 = SHX27_1
  function SHX10_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX11_2 = {}
  return SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
end
SHX29_1.createNoVehicleOverrideZone = SHX30_1
SHX29_1 = false
function SHX30_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX29_1 = SHX0_2
end
function SHX31_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerBucket
  SHX1_2 = SHX1_2()
  if 0 ~= SHX1_2 then
    return
  end
  SHX1_2 = SHX26_1
  if SHX1_2 then
    return
  end
  SHX1_2 = GetInteriorFromEntity
  SHX2_2 = PlayerPedId
  SHX2_2, SHX3_2, SHX4_2 = SHX2_2()
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = SHX0_2.interior
  if SHX2_2 then
    SHX2_2 = SHX0_2.interior
    if not SHX2_2 or 0 == SHX1_2 or 217602 == SHX1_2 then
      goto SHX_LABEL_35
    end
  end
  SHX2_2 = true
  SHX29_1 = SHX2_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerVehicle
  SHX2_2 = SHX2_2()
  if 0 ~= SHX2_2 then
    SHX3_2 = DeleteEntity
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_35:: outside nested blocks until all 'goto SHX_LABEL_35' can see it
  ::SHX_LABEL_35::
end
SHX32_1 = CMG
function SHX33_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.generateUUID
  SHX4_2 = "novehiclezones"
  SHX5_2 = 5
  SHX6_2 = "alphanumeric"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.createArea
  SHX5_2 = "novehiclezone_"
  SHX6_2 = SHX3_2
  SHX5_2 = SHX5_2 .. SHX6_2
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX8_2 = 1000.0
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX10_2 = SHX30_1
  SHX11_2 = SHX31_1
  SHX12_2 = {}
  SHX12_2.interior = SHX2_2
  return SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
SHX32_1.createNoVehicleZone = SHX33_1
SHX32_1 = CMG
function SHX33_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX30_1
  SHX1_2()
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.removeArea
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX32_1.deleteNoVehicleZone = SHX33_1
SHX32_1 = false
function SHX33_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX32_1 = SHX0_2
end
function SHX34_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = GetInteriorFromEntity
  SHX2_2 = PlayerPedId
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX2_2()
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX0_2.interior
  if SHX2_2 then
    SHX2_2 = SHX0_2.interior
    if not SHX2_2 or 0 == SHX1_2 or 217602 == SHX1_2 then
      goto SHX_LABEL_24
    end
  end
  SHX2_2 = true
  SHX32_1 = SHX2_2
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = SetCurrentPedWeapon
  SHX4_2 = SHX2_2
  SHX5_2 = -1569615261
  SHX6_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_24:: outside nested blocks until all 'goto SHX_LABEL_24' can see it
  ::SHX_LABEL_24::
end
SHX35_1 = CMG
function SHX36_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.generateUUID
  SHX4_2 = "noweaponzones"
  SHX5_2 = 5
  SHX6_2 = "alphanumeric"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.createArea
  SHX5_2 = "noweaponzone_"
  SHX6_2 = SHX3_2
  SHX5_2 = SHX5_2 .. SHX6_2
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX8_2 = 1000.0
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX10_2 = SHX33_1
  SHX11_2 = SHX34_1
  SHX12_2 = {}
  SHX12_2.interior = SHX2_2
  return SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
SHX35_1.createNoWeaponZone = SHX36_1
SHX35_1 = CMG
function SHX36_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX30_1
  SHX1_2()
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.removeArea
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX35_1.deleteNoVehicleZone = SHX36_1
SHX35_1 = CMG
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX29_1
  return SHX0_2
end
SHX35_1.isInsideNoVehicleZone = SHX36_1
SHX35_1 = CMG
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX32_1
  return SHX0_2
end
SHX35_1.isInsideNoWeaponZone = SHX36_1
SHX35_1 = CMG
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX6_1
  return SHX0_2
end
SHX35_1.isInNoMusicRPZone = SHX36_1
