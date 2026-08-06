-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_purge"
SHX0_1 = SHX0_1(SHX1_1)
function SHX1_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX0_1.randomSpawnpoints
  SHX1_2 = math
  SHX1_2 = SHX1_2.random
  SHX2_2 = 1
  SHX3_2 = SHX0_1.randomSpawnpoints
  SHX3_2 = #SHX3_2
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX0_2 = SHX0_2[SHX1_2]
  return SHX0_2
end
SHX2_1 = false
SHX3_1 = {}
SHX4_1 = vector3
SHX5_1 = 0.0
SHX6_1 = 0.0
SHX7_1 = 0.0
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = 0
SHX6_1 = 0
SHX7_1 = CMG
function SHX8_1()
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
SHX7_1.hasSpawnProtection = SHX8_1
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = true
  SHX2_1 = SHX0_2
  SHX0_2 = SetTimeout
  SHX1_2 = 20000
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX2_1 = SHX0_3
  end
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = SetLocalPlayerAsGhost
    SHX1_3 = true
    SHX0_3(SHX1_3)
    while true do
      SHX0_3 = SHX2_1
      if not SHX0_3 then
        break
      end
      SHX0_3 = SetEntityProofs
      SHX1_3 = PlayerPedId
      SHX1_3 = SHX1_3()
      SHX2_3 = true
      SHX3_3 = true
      SHX4_3 = true
      SHX5_3 = true
      SHX6_3 = true
      SHX7_3 = true
      SHX8_3 = true
      SHX9_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      SHX0_3 = SetEntityAlpha
      SHX1_3 = PlayerPedId
      SHX1_3 = SHX1_3()
      SHX2_3 = 100
      SHX3_3 = false
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = SetEntityHealth
      SHX1_3 = PlayerPedId
      SHX1_3 = SHX1_3()
      SHX2_3 = 200
      SHX0_3(SHX1_3, SHX2_3)
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
    SHX0_3 = SetEntityAlpha
    SHX1_3 = PlayerPedId
    SHX1_3 = SHX1_3()
    SHX2_3 = 255
    SHX3_3 = false
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX0_3 = SetLocalPlayerAsGhost
    SHX1_3 = false
    SHX0_3(SHX1_3)
    SHX0_3 = ResetGhostedEntityAlpha
    SHX0_3()
    SHX0_3 = tCMG
    SHX0_3 = SHX0_3.notify
    SHX1_3 = "~g~Spawn protection ended!"
    SHX0_3(SHX1_3)
    SHX0_3 = SetEntityProofs
    SHX1_3 = PlayerPedId
    SHX1_3 = SHX1_3()
    SHX2_3 = false
    SHX3_3 = false
    SHX4_3 = false
    SHX5_3 = false
    SHX6_3 = false
    SHX7_3 = false
    SHX8_3 = false
    SHX9_3 = false
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
  end
  SHX0_2(SHX1_2)
end
SHX8_1 = RMenu
SHX8_1 = SHX8_1.Add
SHX9_1 = "purge"
SHX10_1 = "main"
SHX11_1 = RageUI
SHX11_1 = SHX11_1.CreateMenu
SHX12_1 = "Spawnpoint"
SHX13_1 = "Main Menu"
SHX14_1 = CMG
SHX14_1 = SHX14_1.getRageUIMenuWidth
SHX14_1 = SHX14_1()
SHX15_1 = CMG
SHX15_1 = SHX15_1.getRageUIMenuHeight
SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1 = SHX15_1()
SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1)
SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1)
SHX8_1 = RMenu
SHX8_1 = SHX8_1.Add
SHX9_1 = "purge"
SHX10_1 = "vehicles"
SHX11_1 = RageUI
SHX11_1 = SHX11_1.CreateMenu
SHX12_1 = ""
SHX13_1 = "Purchase Vehicles"
SHX14_1 = CMG
SHX14_1 = SHX14_1.getRageUIMenuWidth
SHX14_1 = SHX14_1()
SHX15_1 = CMG
SHX15_1 = SHX15_1.getRageUIMenuHeight
SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1 = SHX15_1()
SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1)
SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1)
SHX8_1 = vector3
SHX9_1 = -1011.0608520508
SHX10_1 = -2973.7270507812
SHX11_1 = 13.951969146729
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX9_1 = false
SHX10_1 = nil
SHX11_1 = nil
SHX12_1 = 0
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX10_1
  if SHX0_2 then
    SHX0_2 = DestroyCam
    SHX1_2 = SHX10_1
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = nil
    SHX10_1 = SHX0_2
  end
  SHX0_2 = SHX11_1
  if SHX0_2 then
    SHX0_2 = DestroyCam
    SHX1_2 = SHX11_1
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = nil
    SHX11_1 = SHX0_2
  end
  SHX0_2 = RenderScriptCams
  SHX1_2 = false
  SHX2_2 = false
  SHX3_2 = 0
  SHX4_2 = true
  SHX5_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = ClearFocus
  SHX0_2()
  SHX0_2 = TriggerScreenblurFadeOut
  SHX1_2 = 0.0
  SHX0_2(SHX1_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "purge"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = ClearTimecycleModifier
  SHX0_2()
  SHX0_2 = TriggerEvent
  SHX1_2 = "0cee493655"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSetFocus
  SHX1_2 = false
  SHX2_2 = false
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = SetEntityVisible
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetPlayerControl
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX3_2 = true
  SHX4_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.showAllDisplays
  SHX2_2 = "purgespawn"
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.showHud
  SHX1_2()
end
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = vector3
  SHX1_2 = -1011.0608520508
  SHX2_2 = -2973.7270507812
  SHX3_2 = 13.951969146729
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX8_1 = SHX0_2
  SHX0_2 = true
  SHX9_1 = SHX0_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.CloseAll
  SHX0_2()
end
SHX15_1 = RageUI
SHX15_1 = SHX15_1.CreateWhile
SHX16_1 = 1.0
SHX17_1 = RMenu
SHX18_1 = SHX17_1
SHX17_1 = SHX17_1.Get
SHX19_1 = "purge"
SHX20_1 = "main"
SHX17_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1)
SHX18_1 = nil
function SHX19_1()
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
  SHX3_2 = "purge"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Random Spawnpoint"
    SHX2_3 = ""
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4
      if SHX2_4 then
        SHX3_4 = true
        SHX9_1 = SHX3_4
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.CloseAll
        SHX3_4()
      end
    end
    SHX5_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Heathrow Airport"
    SHX2_3 = ""
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4
      if SHX2_4 then
        SHX3_4 = SHX14_1
        SHX3_4()
      end
    end
    SHX5_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Rebel Diner"
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
        SHX3_4 = vector3
        SHX4_4 = 1592.0364990234
        SHX5_4 = 6441.91015625
        SHX6_4 = 25.195180892944
        SHX3_4 = SHX3_4(SHX4_4, SHX5_4, SHX6_4)
        SHX8_1 = SHX3_4
        SHX3_4 = true
        SHX9_1 = SHX3_4
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.CloseAll
        SHX3_4()
      end
    end
    SHX5_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Lodges"
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
        SHX3_4 = vector3
        SHX4_4 = -730.63116455078
        SHX5_4 = 5811.7763671875
        SHX6_4 = 17.41862487793
        SHX3_4 = SHX3_4(SHX4_4, SHX5_4, SHX6_4)
        SHX8_1 = SHX3_4
        SHX3_4 = true
        SHX9_1 = SHX3_4
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.CloseAll
        SHX3_4()
      end
    end
    SHX5_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Sandy Airport"
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
        SHX3_4 = vector3
        SHX4_4 = 1754.6137695313
        SHX5_4 = 3286.3181152344
        SHX6_4 = 41.122856140137
        SHX3_4 = SHX3_4(SHX4_4, SHX5_4, SHX6_4)
        SHX8_1 = SHX3_4
        SHX3_4 = true
        SHX9_1 = SHX3_4
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.CloseAll
        SHX3_4()
      end
    end
    SHX5_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Jamestown"
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
        SHX3_4 = vector3
        SHX4_4 = 319.39431762695
        SHX5_4 = -2028.3155517578
        SHX6_4 = 20.698621749878
        SHX3_4 = SHX3_4(SHX4_4, SHX5_4, SHX6_4)
        SHX8_1 = SHX3_4
        SHX3_4 = true
        SHX9_1 = SHX3_4
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.CloseAll
        SHX3_4()
      end
    end
    SHX5_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Legion Square"
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
        SHX3_4 = vector3
        SHX4_4 = 187.81332397461
        SHX5_4 = -952.79168701172
        SHX6_4 = 30.09193611145
        SHX3_4 = SHX3_4(SHX4_4, SHX5_4, SHX6_4)
        SHX8_1 = SHX3_4
        SHX3_4 = true
        SHX9_1 = SHX3_4
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.CloseAll
        SHX3_4()
      end
    end
    SHX5_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Senora Highway"
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
        SHX3_4 = vector3
        SHX4_4 = 2784.3762207031
        SHX5_4 = 3477.5239257813
        SHX6_4 = 55.239120483398
        SHX3_4 = SHX3_4(SHX4_4, SHX5_4, SHX6_4)
        SHX8_1 = SHX3_4
        SHX3_4 = true
        SHX9_1 = SHX3_4
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.CloseAll
        SHX3_4()
      end
    end
    SHX5_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Shank Shop"
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
        SHX3_4 = vector3
        SHX4_4 = -3152.5024414063
        SHX5_4 = 1069.2584228516
        SHX6_4 = 20.674007415771
        SHX3_4 = SHX3_4(SHX4_4, SHX5_4, SHX6_4)
        SHX8_1 = SHX3_4
        SHX3_4 = true
        SHX9_1 = SHX3_4
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.CloseAll
        SHX3_4()
      end
    end
    SHX5_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "~r~Leave Purge"
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
        SHX3_4 = vector3
        SHX4_4 = -1011.0608520508
        SHX5_4 = -2973.7270507812
        SHX6_4 = 13.951969146729
        SHX3_4 = SHX3_4(SHX4_4, SHX5_4, SHX6_4)
        SHX8_1 = SHX3_4
        SHX3_4 = true
        SHX9_1 = SHX3_4
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.CloseAll
        SHX3_4()
        SHX3_4 = Citizen
        SHX3_4 = SHX3_4.Wait
        SHX4_4 = 5000
        SHX3_4(SHX4_4)
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.isPurge
        SHX3_4 = SHX3_4()
        if SHX3_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "f577a0908b"
          SHX3_4(SHX4_4)
        end
      end
    end
    SHX5_3 = nil
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
end
SHX15_1(SHX16_1, SHX17_1, SHX18_1, SHX19_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "9df078d914"
SHX15_1(SHX16_1)
SHX15_1 = AddEventHandler
SHX16_1 = "9df078d914"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = SHX13_1
  SHX1_2()
  SHX1_2 = SHX12_1
  SHX1_2 = SHX1_2 + 1
  SHX12_1 = SHX1_2
  SHX1_2 = SHX12_1
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.disableComa
  SHX2_2()
  SHX2_2 = ShutdownLoadingScreen
  SHX2_2()
  SHX2_2 = ShutdownLoadingScreenNui
  SHX2_2()
  SHX2_2 = SHX7_1
  SHX2_2()
  SHX2_2 = DoScreenFadeOut
  SHX3_2 = 250
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.hideAllDisplays
  SHX3_2 = "purgespawn"
  SHX2_2(SHX3_2)
  SHX2_2 = Wait
  SHX3_2 = 500
  SHX2_2(SHX3_2)
  SHX2_2 = TriggerScreenblurFadeIn
  SHX3_2 = 100.0
  SHX2_2(SHX3_2)
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2()
  SHX8_1 = SHX2_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.applySavedCustomisation
  SHX2_2()
  SHX2_2 = RequestCollisionAtCoord
  SHX3_2 = SHX8_1.x
  SHX4_2 = SHX8_1.y
  SHX5_2 = SHX8_1.z
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  while true do
    SHX3_2 = HaveAllStreamingRequestsCompleted
    SHX4_2 = PlayerPedId
    SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX4_2()
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    if 1 == SHX3_2 then
      break
    end
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX3_2 = SHX3_2 - SHX2_2
    SHX4_2 = 5000
    if not (SHX3_2 < SHX4_2) then
      break
    end
    SHX3_2 = Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
    SHX3_2 = print
    SHX4_2 = "[CMG] Waiting for streaming requests to complete!"
    SHX3_2(SHX4_2)
  end
  SHX3_2 = DoScreenFadeIn
  SHX4_2 = 1000
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  SHX4_2 = SetEntityCoordsNoOffset
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = SHX3_2.x
  SHX7_2 = SHX3_2.y
  SHX8_2 = 1200.0
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX4_2 = SetEntityVisible
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = false
  SHX7_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = FreezeEntityPosition
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.setPlayerCombatTimer
  SHX5_2 = 0
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  while true do
    SHX4_2 = SHX9_1
    if SHX4_2 then
      break
    end
    SHX4_2 = SHX12_1
    if SHX1_2 ~= SHX4_2 then
      return
    end
    SHX4_2 = RageUI
    SHX4_2 = SHX4_2.Visible
    SHX5_2 = RMenu
    SHX6_2 = SHX5_2
    SHX5_2 = SHX5_2.Get
    SHX7_2 = "purge"
    SHX8_2 = "main"
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX6_2 = true
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = false
  SHX9_1 = SHX4_2
  SHX4_2 = SetEntityVisible
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = true
  SHX7_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SetFocusPosAndVel
  SHX5_2 = SHX8_1.x
  SHX6_2 = SHX8_1.y
  SHX7_2 = SHX8_1.z
  SHX7_2 = SHX7_2 + 1000
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX4_2 = CreateCameraWithParams
  SHX5_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX6_2 = SHX8_1.x
  SHX7_2 = SHX8_1.y
  SHX8_2 = SHX8_1.z
  SHX8_2 = SHX8_2 + 1000
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 65.0
  SHX13_2 = false
  SHX14_2 = 2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX10_1 = SHX4_2
  SHX4_2 = SetCamActive
  SHX5_2 = SHX10_1
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = RenderScriptCams
  SHX5_2 = true
  SHX6_2 = true
  SHX7_2 = 0
  SHX8_2 = true
  SHX9_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = CreateCameraWithParams
  SHX5_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX6_2 = SHX8_1.x
  SHX7_2 = SHX8_1.y
  SHX8_2 = SHX8_1.z
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 65.0
  SHX13_2 = false
  SHX14_2 = 2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX11_1 = SHX4_2
  SHX4_2 = SetCamActiveWithInterp
  SHX5_2 = SHX11_1
  SHX6_2 = SHX10_1
  SHX7_2 = 5000
  SHX8_2 = 0
  SHX9_2 = 0
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = Wait
  SHX5_2 = 2500
  SHX4_2(SHX5_2)
  SHX4_2 = SHX12_1
  if SHX1_2 ~= SHX4_2 then
    return
  end
  SHX4_2 = ClearFocus
  SHX4_2()
  if not SHX0_2 then
    SHX4_2 = SetEntityCoords
    SHX5_2 = PlayerPedId
    SHX5_2 = SHX5_2()
    SHX6_2 = SHX8_1.x
    SHX7_2 = SHX8_1.y
    SHX8_2 = SHX8_1.z
    SHX9_2 = true
    SHX10_2 = false
    SHX11_2 = false
    SHX12_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.setPlayerCombatTimer
    SHX5_2 = 0
    SHX6_2 = false
    SHX4_2(SHX5_2, SHX6_2)
  end
  SHX4_2 = FreezeEntityPosition
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = TriggerScreenblurFadeOut
  SHX5_2 = 2000.0
  SHX4_2(SHX5_2)
  SHX4_2 = Wait
  SHX5_2 = 2000
  SHX4_2(SHX5_2)
  SHX4_2 = SHX12_1
  if SHX1_2 ~= SHX4_2 then
    return
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.applySavedCustomisation
  SHX4_2()
  SHX4_2 = SetEntityHealth
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = 200
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX13_1
  SHX4_2()
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = vector3
SHX16_1 = 196.10565185547
SHX17_1 = -934.40093994141
SHX18_1 = 29.686786651611
SHX15_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX16_1 = nil
SHX17_1 = 0
SHX18_1 = nil
SHX19_1 = 0
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2
  SHX0_2 = SHX16_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerCoords
    SHX0_2 = SHX0_2()
    SHX1_2 = SHX15_1
    SHX0_2 = SHX0_2 - SHX1_2
    SHX1_2 = 0.0
    SHX2_2 = SHX0_2.x
    if SHX2_2 > 0.0 then
      SHX2_2 = math
      SHX2_2 = SHX2_2.atan
      SHX3_2 = SHX0_2.y
      SHX4_2 = SHX0_2.x
      SHX3_2 = SHX3_2 / SHX4_2
      SHX2_2 = SHX2_2(SHX3_2)
      SHX3_2 = math
      SHX3_2 = SHX3_2.pi
      SHX4_2 = 180.0
      SHX3_2 = SHX4_2 / SHX3_2
      SHX3_2 = SHX2_2 * SHX3_2
      SHX4_2 = 270.0
      SHX1_2 = SHX4_2 - SHX3_2
    else
      SHX2_2 = SHX0_2.x
      if SHX2_2 < 0.0 then
        SHX2_2 = math
        SHX2_2 = SHX2_2.atan
        SHX3_2 = SHX0_2.y
        SHX4_2 = SHX0_2.x
        SHX4_2 = -SHX4_2
        SHX3_2 = SHX3_2 / SHX4_2
        SHX2_2 = SHX2_2(SHX3_2)
        SHX3_2 = math
        SHX3_2 = SHX3_2.pi
        SHX4_2 = 180.0
        SHX3_2 = SHX4_2 / SHX3_2
        SHX3_2 = SHX2_2 * SHX3_2
        SHX1_2 = SHX3_2 + 90.0
      end
    end
    SHX2_2 = Scaleform
    SHX3_2 = "mp_mission_name_freemode"
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.isPurge
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = "Press [E] to exit"
      if SHX3_2 then
        goto SHX_LABEL_64
      end
    end
    SHX3_2 = "Press [E] to enter"
    -- [FIX IF ERROR] Move ::SHX_LABEL_64:: outside nested blocks until all 'goto SHX_LABEL_64' can see it
    ::SHX_LABEL_64::
    SHX4_2 = SHX2_2.RunFunction
    SHX5_2 = "SET_MISSION_INFO"
    SHX6_2 = {}
    SHX7_2 = SHX3_2
    SHX8_2 = "CMG Purge"
    SHX9_2 = ""
    SHX10_2 = ""
    SHX11_2 = ""
    SHX12_2 = ""
    SHX13_2 = SHX19_1
    SHX14_2 = "0"
    SHX15_2 = ""
    SHX16_2 = ""
    SHX6_2[1] = SHX7_2
    SHX6_2[2] = SHX8_2
    SHX6_2[3] = SHX9_2
    SHX6_2[4] = SHX10_2
    SHX6_2[5] = SHX11_2
    SHX6_2[6] = SHX12_2
    SHX6_2[7] = SHX13_2
    SHX6_2[8] = SHX14_2
    SHX6_2[9] = SHX15_2
    SHX6_2[10] = SHX16_2
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = SHX2_2.Render3D
    SHX5_2 = SHX15_1
    SHX6_2 = vector3
    SHX7_2 = 0
    SHX8_2 = 0
    SHX9_2 = SHX1_2
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX7_2 = vector2
    SHX8_2 = 16.0
    SHX9_2 = 16.0
    SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX7_2(SHX8_2, SHX9_2)
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
    SHX4_2 = DrawMarker
    SHX5_2 = 1
    SHX6_2 = SHX15_1.x
    SHX7_2 = SHX15_1.y
    SHX8_2 = SHX15_1.z
    SHX8_2 = SHX8_2 - 1.0
    SHX9_2 = 0
    SHX10_2 = 0
    SHX11_2 = 0
    SHX12_2 = 0
    SHX13_2 = 0
    SHX14_2 = 0
    SHX15_2 = 12.50125
    SHX16_2 = 12.50125
    SHX17_2 = 5.208854166666667
    SHX18_2 = 255
    SHX19_2 = 0
    SHX20_2 = 0
    SHX21_2 = 200
    SHX22_2 = false
    SHX23_2 = false
    SHX24_2 = 0
    SHX25_2 = false
    SHX26_2 = nil
    SHX27_2 = nil
    SHX28_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
  end
end
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 51
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = GetGameTimer
    SHX0_2 = SHX0_2()
    SHX1_2 = SHX17_1
    SHX0_2 = SHX0_2 - SHX1_2
    SHX1_2 = 30000
    if SHX0_2 > SHX1_2 then
      SHX0_2 = GetGameTimer
      SHX0_2 = SHX0_2()
      SHX17_1 = SHX0_2
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isPurge
      SHX0_2 = SHX0_2()
      if SHX0_2 then
        SHX0_2 = TriggerServerEvent
        SHX1_2 = "f577a0908b"
        SHX0_2(SHX1_2)
      else
        SHX0_2 = TriggerServerEvent
        SHX1_2 = "6de350d017"
        SHX0_2(SHX1_2)
      end
    else
      SHX0_2 = notify
      SHX1_2 = "~r~Please wait 30 seconds before making this decision."
      SHX0_2(SHX1_2)
    end
  end
end
SHX22_1 = RegisterNetEvent
SHX23_1 = "9f08a8fc4a"
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = Scaleform
  SHX1_2 = "mp_mission_name_freemode"
  SHX0_2 = SHX0_2(SHX1_2)
  SHX16_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createArea
  SHX1_2 = "purge_enter_marker"
  SHX2_2 = SHX15_1
  SHX3_2 = 100.0
  SHX4_2 = 500.0
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
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
  SHX7_2 = SHX20_1
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createArea
  SHX1_2 = "purge_enter"
  SHX2_2 = SHX15_1
  SHX3_2 = 10.0
  SHX4_2 = 15.0
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
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
  SHX7_2 = SHX21_1
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.addBlip
  SHX1_2 = SHX15_1.x
  SHX2_2 = SHX15_1.y
  SHX3_2 = SHX15_1.z
  SHX4_2 = 429
  SHX5_2 = 1
  SHX6_2 = nil
  SHX7_2 = 1.5
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX18_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.announceMpBigMsg
  SHX1_2 = "~r~Purge event has started!"
  SHX2_2 = "To join go to Legion and enter the marker"
  SHX3_2 = 15000
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = RegisterNetEvent
SHX23_1 = "4c63b71a2c"
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.removeArea
  SHX1_2 = "purge_enter"
  SHX0_2(SHX1_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.removeArea
  SHX1_2 = "purge_enter_marker"
  SHX0_2(SHX1_2)
  SHX0_2 = SHX16_1
  if SHX0_2 then
    SHX0_2 = SetScaleformMovieAsNoLongerNeeded
    SHX1_2 = SHX16_1.Handle
    SHX0_2(SHX1_2)
  end
  SHX0_2 = SHX18_1
  if SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.removeBlip
    SHX1_2 = SHX18_1
    SHX0_2(SHX1_2)
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.announceMpBigMsg
  SHX1_2 = "~r~Purge event has ended"
  SHX2_2 = ""
  SHX3_2 = 15000
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = false
SHX23_1 = nil
SHX24_1 = 0
SHX25_1 = CMG
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX22_1
  return SHX0_2
end
SHX25_1.isPurge = SHX26_1
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = drawNativeNotification
  SHX1_2 = "Press ~INPUT_CONTEXT~ to leave purge"
  SHX0_2(SHX1_2)
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 51
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "f577a0908b"
    SHX0_2(SHX1_2)
  end
end
SHX26_1 = {}
SHX27_1 = {}
SHX28_1 = vector3
SHX29_1 = -962.74456787109
SHX30_1 = -2997.19921875
SHX31_1 = 12.949075035095
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX29_1 = vector3
SHX30_1 = -980.61328125
SHX31_1 = -2986.8991699219
SHX32_1 = 12.955061683655
SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1 = SHX29_1(SHX30_1, SHX31_1, SHX32_1)
SHX27_1[1] = SHX28_1
SHX27_1[2] = SHX29_1
SHX27_1[3] = SHX30_1
SHX27_1[4] = SHX31_1
SHX27_1[5] = SHX32_1
SHX27_1[6] = SHX33_1
SHX27_1[7] = SHX34_1
SHX27_1[8] = SHX35_1
SHX27_1[9] = SHX36_1
SHX27_1[10] = SHX37_1
SHX27_1[11] = SHX38_1
SHX27_1[12] = SHX39_1
SHX27_1[13] = SHX40_1
SHX27_1[14] = SHX41_1
SHX26_1.Legion = SHX27_1
SHX27_1 = {}
SHX28_1 = vector3
SHX29_1 = -959.15783691406
SHX30_1 = -2999.2453613281
SHX31_1 = 12.949075035095
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX29_1 = vector3
SHX30_1 = -977.72100830078
SHX31_1 = -2988.5090332031
SHX32_1 = 12.955062637329
SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1 = SHX29_1(SHX30_1, SHX31_1, SHX32_1)
SHX27_1[1] = SHX28_1
SHX27_1[2] = SHX29_1
SHX27_1[3] = SHX30_1
SHX27_1[4] = SHX31_1
SHX27_1[5] = SHX32_1
SHX27_1[6] = SHX33_1
SHX27_1[7] = SHX34_1
SHX27_1[8] = SHX35_1
SHX27_1[9] = SHX36_1
SHX27_1[10] = SHX37_1
SHX27_1[11] = SHX38_1
SHX27_1[12] = SHX39_1
SHX27_1[13] = SHX40_1
SHX27_1[14] = SHX41_1
SHX26_1.SmallArmsDealer = SHX27_1
SHX27_1 = {}
SHX28_1 = vector3
SHX29_1 = -956.20050048828
SHX30_1 = -3000.9567871094
SHX31_1 = 12.949075035095
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX29_1 = vector3
SHX30_1 = -974.57080078125
SHX31_1 = -2990.3208007812
SHX32_1 = 12.955067405701
SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1 = SHX29_1(SHX30_1, SHX31_1, SHX32_1)
SHX27_1[1] = SHX28_1
SHX27_1[2] = SHX29_1
SHX27_1[3] = SHX30_1
SHX27_1[4] = SHX31_1
SHX27_1[5] = SHX32_1
SHX27_1[6] = SHX33_1
SHX27_1[7] = SHX34_1
SHX27_1[8] = SHX35_1
SHX27_1[9] = SHX36_1
SHX27_1[10] = SHX37_1
SHX27_1[11] = SHX38_1
SHX27_1[12] = SHX39_1
SHX27_1[13] = SHX40_1
SHX27_1[14] = SHX41_1
SHX26_1.LargeArmsDealer = SHX27_1
SHX27_1 = {}
SHX28_1 = vector3
SHX29_1 = -953.56408691406
SHX30_1 = -3002.4162597656
SHX31_1 = 12.949075035095
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX29_1 = vector3
SHX30_1 = -971.30810546875
SHX31_1 = -2992.1850585938
SHX32_1 = 12.955067405701
SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1 = SHX29_1(SHX30_1, SHX31_1, SHX32_1)
SHX27_1[1] = SHX28_1
SHX27_1[2] = SHX29_1
SHX27_1[3] = SHX30_1
SHX27_1[4] = SHX31_1
SHX27_1[5] = SHX32_1
SHX27_1[6] = SHX33_1
SHX27_1[7] = SHX34_1
SHX27_1[8] = SHX35_1
SHX27_1[9] = SHX36_1
SHX27_1[10] = SHX37_1
SHX27_1[11] = SHX38_1
SHX27_1[12] = SHX39_1
SHX27_1[13] = SHX40_1
SHX27_1[14] = SHX41_1
SHX26_1.Rebel = SHX27_1
SHX27_1 = {}
SHX28_1 = vector3
SHX29_1 = -969.28405761719
SHX30_1 = -2997.3959960938
SHX31_1 = 12.955069313049
SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX27_1[1] = SHX28_1
SHX27_1[2] = SHX29_1
SHX27_1[3] = SHX30_1
SHX27_1[4] = SHX31_1
SHX27_1[5] = SHX32_1
SHX27_1[6] = SHX33_1
SHX27_1[7] = SHX34_1
SHX27_1[8] = SHX35_1
SHX27_1[9] = SHX36_1
SHX27_1[10] = SHX37_1
SHX27_1[11] = SHX38_1
SHX27_1[12] = SHX39_1
SHX27_1[13] = SHX40_1
SHX27_1[14] = SHX41_1
SHX26_1.Purge = SHX27_1
SHX27_1 = {}
SHX28_1 = nil
SHX29_1 = nil
SHX30_1 = nil
SHX31_1 = nil
function SHX32_1()
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
  SHX3_2 = "purge"
  SHX4_2 = "vehicles"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX33_1()
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
  SHX3_2 = "purge"
  SHX4_2 = "vehicles"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
SHX34_1 = RegisterNetEvent
SHX35_1 = "6de350d017"
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = true
  SHX22_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.initGreenzones
  SHX0_2()
  SHX0_2 = AddBlipForRadius
  SHX1_2 = 0.0
  SHX2_2 = 0.0
  SHX3_2 = 0.0
  SHX4_2 = 50000.0
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX23_1 = SHX0_2
  SHX0_2 = SetBlipColour
  SHX1_2 = SHX23_1
  SHX2_2 = 1
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetBlipAlpha
  SHX1_2 = SHX23_1
  SHX2_2 = 80
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "499112c90f"
  SHX0_2(SHX1_2)
  SHX0_2 = FreezeEntityPosition
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetEntityCoordsNoOffset
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = 0.0
  SHX3_2 = 0.0
  SHX4_2 = 0.0
  SHX5_2 = true
  SHX6_2 = false
  SHX7_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX0_2 = TriggerEvent
  SHX1_2 = "9df078d914"
  SHX0_2(SHX1_2)
  SHX0_2 = pairs
  SHX1_2 = SHX26_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = pairs
    SHX7_2 = SHX5_2
    SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
    for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
      SHX12_2 = "Purge "
      SHX13_2 = SHX4_2
      SHX14_2 = " "
      SHX15_2 = tostring
      SHX16_2 = SHX10_2
      SHX15_2 = SHX15_2(SHX16_2)
      SHX12_2 = SHX12_2 .. SHX13_2 .. SHX14_2 .. SHX15_2
      SHX13_2 = CMG
      SHX13_2 = SHX13_2.createGunStore
      SHX14_2 = SHX12_2
      SHX15_2 = SHX4_2
      SHX16_2 = SHX11_2
      SHX13_2(SHX14_2, SHX15_2, SHX16_2)
      SHX13_2 = table
      SHX13_2 = SHX13_2.insert
      SHX14_2 = SHX27_1
      SHX15_2 = SHX12_2
      SHX13_2(SHX14_2, SHX15_2)
    end
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createAtm
  SHX1_2 = "Purge"
  SHX2_2 = vector3
  SHX3_2 = -961.67938232422
  SHX4_2 = -3005.9426269531
  SHX5_2 = 13.945075035095
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createClothingMenu
  SHX1_2 = "Purge A"
  SHX2_2 = vector3
  SHX3_2 = -966.35815429688
  SHX4_2 = -3003.2653808594
  SHX5_2 = 13.945075035095
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createClothingMenu
  SHX1_2 = "Purge B"
  SHX2_2 = vector3
  SHX3_2 = -957.06579589844
  SHX4_2 = -3008.5339355469
  SHX5_2 = 13.945066452026
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX0_2 = vector3
  SHX1_2 = -960.60162353516
  SHX2_2 = -3013.6945800781
  SHX3_2 = 13.94508266449
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.createArea
  SHX2_2 = "cmg_purge_leave"
  SHX3_2 = SHX0_2
  SHX4_2 = 2.0
  SHX5_2 = 3.0
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX8_2 = SHX25_1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.addMarker
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.y
  SHX4_2 = SHX0_2.z
  SHX5_2 = 1.0
  SHX6_2 = 1.0
  SHX7_2 = 1.0
  SHX8_2 = 255
  SHX9_2 = 0
  SHX10_2 = 0
  SHX11_2 = 255
  SHX12_2 = 50.0
  SHX13_2 = 31
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX24_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.createNoVehicleZone
  SHX2_2 = vector3
  SHX3_2 = -960.293518
  SHX4_2 = -2991.571289
  SHX5_2 = 13.945061
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = 80.0
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX28_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.createGarage
  SHX2_2 = "Standard Garage"
  SHX3_2 = vector3
  SHX4_2 = -1040.0977783203
  SHX5_2 = -2948.8134765625
  SHX6_2 = 13.95180606842
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX29_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.createArea
  SHX2_2 = "purge_vehicles"
  SHX3_2 = SHX0_1.vehicleSelectCoords
  SHX4_2 = 2.5
  SHX5_2 = 2.5
  SHX6_2 = SHX32_1
  SHX7_2 = SHX33_1
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX9_2 = nil
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX30_1 = SHX1_2
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.addMarker
  SHX2_2 = SHX0_1.vehicleSelectCoords
  SHX2_2 = SHX2_2.x
  SHX3_2 = SHX0_1.vehicleSelectCoords
  SHX3_2 = SHX3_2.y
  SHX4_2 = SHX0_1.vehicleSelectCoords
  SHX4_2 = SHX4_2.z
  SHX5_2 = 1.0
  SHX6_2 = 1.0
  SHX7_2 = 1.0
  SHX8_2 = 0
  SHX9_2 = 255
  SHX10_2 = 0
  SHX11_2 = 200
  SHX12_2 = 50.0
  SHX13_2 = 36
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX31_1 = SHX1_2
  while true do
    SHX1_2 = GetGameTimer
    SHX1_2 = SHX1_2()
    SHX2_2 = SHX17_1
    SHX1_2 = SHX1_2 - SHX2_2
    SHX2_2 = 30000
    if not (SHX1_2 < SHX2_2) then
      break
    end
    SHX1_2 = drawNativeNotification
    SHX2_2 = "You have entered CMG Purge! To leave return to Legion or Disconnect."
    SHX1_2(SHX2_2)
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
end
SHX34_1(SHX35_1, SHX36_1)
function SHX34_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX5_1
  if 0 ~= SHX0_2 then
    SHX0_2 = RemoveBlip
    SHX1_2 = SHX5_1
    SHX0_2(SHX1_2)
    SHX0_2 = 0
    SHX5_1 = SHX0_2
  end
  SHX0_2 = SHX6_1
  if 0 ~= SHX0_2 then
    SHX0_2 = RemoveBlip
    SHX1_2 = SHX6_1
    SHX0_2(SHX1_2)
    SHX0_2 = 0
    SHX6_1 = SHX0_2
  end
end
SHX35_1 = RegisterNetEvent
SHX36_1 = "f577a0908b"
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = false
  SHX22_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.initGreenzones
  SHX0_2()
  SHX0_2 = RemoveBlip
  SHX1_2 = SHX23_1
  SHX0_2(SHX1_2)
  SHX0_2 = pairs
  SHX1_2 = SHX27_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.deleteGunStore
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.deleteAtm
  SHX1_2 = "Purge"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.deleteClothingMenu
  SHX1_2 = "Purge A"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.deleteClothingMenu
  SHX1_2 = "Purge B"
  SHX0_2(SHX1_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.removeArea
  SHX1_2 = "cmg_purge_leave"
  SHX0_2(SHX1_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.removeMarker
  SHX1_2 = SHX24_1
  SHX0_2(SHX1_2)
  SHX0_2 = SHX28_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.deleteNoVehicleZone
    SHX1_2 = SHX28_1
    SHX0_2(SHX1_2)
    SHX0_2 = nil
    SHX28_1 = SHX0_2
  end
  SHX0_2 = SHX29_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.deleteGarage
    SHX1_2 = SHX29_1
    SHX0_2(SHX1_2)
    SHX0_2 = nil
    SHX29_1 = SHX0_2
  end
  SHX0_2 = SHX30_1
  if SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.removeArea
    SHX1_2 = SHX30_1
    SHX0_2(SHX1_2)
  end
  SHX0_2 = SHX31_1
  if SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.removeMarker
    SHX1_2 = SHX31_1
    SHX0_2(SHX1_2)
  end
  SHX0_2 = SHX34_1
  SHX0_2()
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.teleport
  SHX1_2 = SHX15_1.x
  SHX2_2 = SHX15_1.y
  SHX3_2 = SHX15_1.z
  SHX4_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX35_1(SHX36_1, SHX37_1)
function SHX35_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isPurge
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = PlayerPedId
    SHX0_2 = SHX0_2()
    SHX1_2 = GetSelectedPedWeapon
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if 424444959 == SHX1_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.setWeapon
      SHX3_2 = SHX0_2
      SHX4_2 = -1569615261
      SHX5_2 = true
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX2_2 = notify
      SHX3_2 = "~r~You cannot use the homing launcher in the purge event!"
      SHX2_2(SHX3_2)
    end
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isDannyEvent
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = drawNativeText
    SHX1_2 = "~r~DANNY EVENT ACTIVE"
    SHX0_2(SHX1_2)
    SHX0_2 = PlayerPedId
    SHX0_2 = SHX0_2()
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getModelGender
    SHX1_2 = SHX1_2()
    SHX1_2 = "male" == SHX1_2
    if SHX1_2 then
      SHX2_2 = 11
      if SHX2_2 then
        goto SHX_LABEL_45
      end
    end
    SHX2_2 = 8
    -- [FIX IF ERROR] Move ::SHX_LABEL_45:: outside nested blocks until all 'goto SHX_LABEL_45' can see it
    ::SHX_LABEL_45::
    if SHX1_2 then
      SHX3_2 = 42
      if SHX3_2 then
        goto SHX_LABEL_51
      end
    end
    SHX3_2 = 42
    -- [FIX IF ERROR] Move ::SHX_LABEL_51:: outside nested blocks until all 'goto SHX_LABEL_51' can see it
    ::SHX_LABEL_51::
    SHX4_2 = GetPedDrawableVariation
    SHX5_2 = SHX0_2
    SHX6_2 = 2
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    if SHX4_2 == SHX2_2 then
      SHX4_2 = GetPedHairColor
      SHX5_2 = SHX0_2
      SHX4_2 = SHX4_2(SHX5_2)
      if SHX4_2 == SHX3_2 then
        goto SHX_LABEL_74
      end
    end
    SHX4_2 = SetPedComponentVariation
    SHX5_2 = SHX0_2
    SHX6_2 = 2
    SHX7_2 = SHX2_2
    SHX8_2 = 0
    SHX9_2 = 0
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX4_2 = SetPedHairColor
    SHX5_2 = SHX0_2
    SHX6_2 = SHX3_2
    SHX7_2 = 0
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    -- [FIX IF ERROR] Move ::SHX_LABEL_74:: outside nested blocks until all 'goto SHX_LABEL_74' can see it
    ::SHX_LABEL_74::
    SHX4_2 = GetSelectedPedWeapon
    SHX5_2 = SHX0_2
    SHX4_2 = SHX4_2(SHX5_2)
    if -1569615261 ~= SHX4_2 then
      SHX5_2 = GetWeapontypeGroup
      SHX6_2 = SHX4_2
      SHX5_2 = SHX5_2(SHX6_2)
      if -728555052 ~= SHX5_2 and 1548507267 ~= SHX5_2 and 416676503 ~= SHX5_2 then
        SHX6_2 = notify
        SHX7_2 = "~r~Only pistols and melees can be used in the danny event!"
        SHX6_2(SHX7_2)
        SHX6_2 = CMG
        SHX6_2 = SHX6_2.setWeapon
        SHX7_2 = SHX0_2
        SHX8_2 = -1569615261
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
      end
    end
  end
end
SHX36_1 = CMG
SHX36_1 = SHX36_1.createThreadOnTick
SHX37_1 = SHX35_1
SHX38_1 = "Danny Event"
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = RegisterNetEvent
SHX37_1 = "a54cb7192d"
function SHX38_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX19_1 = SHX0_2
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = AddEventHandler
SHX37_1 = "919aefda0c"
function SHX38_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isPurge
  SHX1_2 = SHX1_2()
  if SHX1_2 and 666 ~= SHX0_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "f577a0908b"
    SHX1_2(SHX2_2)
  end
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = RageUI
SHX36_1 = SHX36_1.CreateWhile
SHX37_1 = 1.0
SHX38_1 = RMenu
SHX39_1 = SHX38_1
SHX38_1 = SHX38_1.Get
SHX40_1 = "purge"
SHX41_1 = "vehicles"
SHX38_1 = SHX38_1(SHX39_1, SHX40_1, SHX41_1)
SHX39_1 = nil
function SHX40_1()
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
  SHX3_2 = "purge"
  SHX4_2 = "vehicles"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
    SHX0_3 = pairs
    SHX1_3 = SHX0_1.vehicles
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX3_1
      SHX6_3 = SHX6_3[SHX4_3]
      if not SHX6_3 then
        SHX6_3 = false
      end
      if SHX6_3 then
        SHX7_3 = "Spawn Vehicle"
        if SHX7_3 then
          goto SHX_LABEL_22
        end
      end
      SHX7_3 = string
      SHX7_3 = SHX7_3.format
      SHX8_3 = "\194\163%s"
      SHX9_3 = getMoneyStringFormatted
      SHX10_3 = SHX5_3.price
      SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3 = SHX9_3(SHX10_3)
      SHX7_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
      -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
      ::SHX_LABEL_22::
      SHX8_3 = RageUI
      SHX8_3 = SHX8_3.ButtonWithStyle
      SHX9_3 = SHX5_3.name
      SHX10_3 = nil
      SHX11_3 = {}
      SHX11_3.RightLabel = SHX7_3
      SHX12_3 = true
      function SHX13_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = SHX6_3
          if SHX3_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "da53690b26"
            SHX5_4 = SHX4_3
            SHX3_4(SHX4_4, SHX5_4)
          else
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "6fd6b5c896"
            SHX5_4 = SHX4_3
            SHX3_4(SHX4_4, SHX5_4)
          end
        end
      end
      SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
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
SHX36_1(SHX37_1, SHX38_1, SHX39_1, SHX40_1)
SHX36_1 = RegisterNetEvent
SHX37_1 = "c704e0f3f6"
function SHX38_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX0_2 or nil
  if not SHX0_2 then
    SHX1_2 = {}
  end
  SHX3_1 = SHX1_2
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = RegisterNetEvent
SHX37_1 = "da53690b26"
function SHX38_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.requestEntitySpawn
  SHX2_2 = "purge_vehicle"
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.spawnVehicle
  SHX2_2 = SHX0_2
  SHX3_2 = SHX0_1.vehicleSelectCoords
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX0_1.vehicleSelectCoords
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX0_1.vehicleSelectCoords
  SHX5_2 = SHX5_2.z
  SHX6_2 = 0.0
  SHX7_2 = true
  SHX8_2 = true
  SHX9_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getClientUserId
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    SHX3_2 = DecorSetInt
    SHX4_2 = SHX1_2
    SHX5_2 = "ac76c9d452"
    SHX6_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.applyMaxDefaultModsToVehicle
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
  SHX3_2 = SetVehRadioStation
  SHX4_2 = SHX1_2
  SHX5_2 = "OFF"
  SHX3_2(SHX4_2, SHX5_2)
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = CMG
SHX36_1 = SHX36_1.registerDevMenuItems
SHX37_1 = "Purge"
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Start Testing"
  SHX2_2 = ""
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = TriggerServerEvent
      SHX4_3 = "24b1dd195b"
      SHX3_3(SHX4_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = RegisterNetEvent
SHX37_1 = "90744d69da"
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "6de350d017"
  SHX0_2(SHX1_2)
  SHX0_2 = SetTimeout
  SHX1_2 = 2000
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX14_1
    SHX0_3()
  end
  SHX0_2(SHX1_2, SHX2_2)
end
SHX36_1(SHX37_1, SHX38_1)
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = TriggerEvent
  SHX1_2 = "371eab1d3a"
  SHX2_2 = {}
  SHX2_2.text = "You have entered the Purge Money Zone"
  SHX2_2.height = "200px"
  SHX2_2.width = "auto"
  SHX2_2.colour = "#FFF"
  SHX2_2.background = "#32CD32"
  SHX2_2.pos = "bottom-right"
  SHX2_2.icon = "success"
  SHX3_2 = 5000
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = TriggerEvent
  SHX1_2 = "371eab1d3a"
  SHX2_2 = {}
  SHX2_2.text = "You have left the Purge Money Zone"
  SHX2_2.height = "200px"
  SHX2_2.width = "auto"
  SHX2_2.colour = "#FFF"
  SHX2_2.background = "#32CD32"
  SHX2_2.pos = "bottom-right"
  SHX2_2.icon = "success"
  SHX3_2 = 5000
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX38_1 = RegisterNetEvent
SHX39_1 = "81a74b130d"
function SHX40_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = SHX34_1
  SHX1_2()
  SHX4_1 = SHX0_2
  SHX1_2 = AddBlipForRadius
  SHX2_2 = SHX4_1.x
  SHX3_2 = SHX4_1.y
  SHX4_2 = SHX4_1.z
  SHX5_2 = SHX0_1.moneyZoneRadius
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX5_1 = SHX1_2
  SHX1_2 = SetBlipColour
  SHX2_2 = SHX5_1
  SHX3_2 = 1
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetBlipPriority
  SHX2_2 = SHX5_1
  SHX3_2 = 2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetBlipAlpha
  SHX2_2 = SHX5_1
  SHX3_2 = 200
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.addBlip
  SHX2_2 = SHX4_1.x
  SHX3_2 = SHX4_1.y
  SHX4_2 = SHX4_1.z
  SHX5_2 = 500
  SHX6_2 = 3
  SHX7_2 = "Purge Money Zone"
  SHX8_2 = 1.2
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX6_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.createArea
  SHX2_2 = "purge_money_zone"
  SHX3_2 = SHX4_1
  SHX4_2 = SHX0_1.moneyZoneRadius
  SHX5_2 = 100.0
  SHX6_2 = SHX36_1
  SHX7_2 = SHX37_1
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX9_2 = {}
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
end
SHX38_1(SHX39_1, SHX40_1)
