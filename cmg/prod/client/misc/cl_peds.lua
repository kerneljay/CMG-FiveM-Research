-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "cmgpedsmenu"
SHX2_1 = "main"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateMenu
SHX4_1 = ""
SHX5_1 = "CMG Peds Menu"
SHX6_1 = CMG
SHX6_1 = SHX6_1.getRageUIMenuWidth
SHX6_1 = SHX6_1()
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuHeight
SHX7_1 = SHX7_1()
SHX8_1 = "cmg_peds"
SHX9_1 = "cmg_peds"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/ped_cfg/peds"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = nil
SHX3_1 = nil
SHX4_1 = true
SHX5_1 = {}
SHX6_1 = {}
SHX7_1 = 0
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = GetEntityHeading
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.setCustomization
  SHX4_2 = {}
  SHX4_2.model = SHX0_2
  SHX3_2(SHX4_2)
  SHX3_2 = SetEntityHeading
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = Wait
  SHX4_2 = 100
  SHX3_2(SHX4_2)
  SHX3_2 = SetEntityMaxHealth
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2 = SHX4_2()
  SHX5_2 = 200
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetEntityHealth
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2 = SHX4_2()
  SHX5_2 = 200
  SHX3_2(SHX4_2, SHX5_2)
end
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.setCustomization
  SHX1_2 = SHX2_1
  SHX0_2(SHX1_2)
end
SHX10_1 = RageUI
SHX10_1 = SHX10_1.CreateWhile
SHX11_1 = 1.0
SHX12_1 = RMenu
SHX13_1 = SHX12_1
SHX12_1 = SHX12_1.Get
SHX14_1 = "cmgpedsmenu"
SHX15_1 = "main"
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
  SHX3_2 = "cmgpedsmenu"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = SHX2_1
    if nil == SHX0_3 then
      SHX0_3 = SHX3_1
      if nil == SHX0_3 then
        goto SHX_LABEL_20
      end
      SHX0_3 = tCMG
      SHX0_3 = SHX0_3.getCustomization
      SHX0_3 = SHX0_3()
      SHX1_3 = SHX2_1
      if SHX0_3 == SHX1_3 then
        goto SHX_LABEL_20
      end
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Reset"
    SHX2_3 = nil
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
        SHX3_4 = SHX9_1
        SHX3_4()
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
    ::SHX_LABEL_20::
    SHX0_3 = 1
    SHX1_3 = SHX1_1
    SHX1_3 = #SHX1_3
    SHX2_3 = 1
    for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
      SHX4_3 = RageUI
      SHX4_3 = SHX4_3.Button
      SHX5_3 = SHX1_1
      SHX5_3 = SHX5_3[SHX3_3]
      SHX5_3 = SHX5_3[2]
      SHX6_3 = nil
      SHX7_3 = true
      function SHX8_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = GetEntityHealth
          SHX4_4 = CMG
          SHX4_4 = SHX4_4.getPlayerPed
          SHX4_4, SHX5_4 = SHX4_4()
          SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
          if SHX3_4 > 102 then
            SHX3_4 = SHX8_1
            SHX5_4 = SHX3_3
            SHX4_4 = SHX1_1
            SHX4_4 = SHX4_4[SHX5_4]
            SHX4_4 = SHX4_4[1]
            SHX3_4(SHX4_4)
          else
            SHX3_4 = tCMG
            SHX3_4 = SHX3_4.notify
            SHX4_4 = "~r~You try to change ped, but then remember you are dead."
            SHX3_4(SHX4_4)
          end
        end
      end
      SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3)
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
SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1)
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "cmgpedsmenu"
  SHX5_2 = "main"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX11_1 = RegisterNetEvent
SHX12_1 = "f2a45f46ba"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2
  SHX1_2 = 1
  SHX2_2 = SHX5_1
  SHX2_2 = #SHX2_2
  SHX3_2 = 1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = tCMG
    SHX5_2 = SHX5_2.removeArea
    SHX6_2 = SHX5_1
    SHX6_2 = SHX6_2[SHX4_2]
    SHX5_2(SHX6_2)
    SHX5_2 = SHX5_1
    SHX5_2[SHX4_2] = nil
  end
  SHX1_2 = 1
  SHX2_2 = SHX6_1
  SHX2_2 = #SHX2_2
  SHX3_2 = 1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = tCMG
    SHX5_2 = SHX5_2.removeMarker
    SHX6_2 = SHX6_1
    SHX6_2 = SHX6_2[SHX4_2]
    SHX5_2(SHX6_2)
  end
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX2_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3
    SHX1_3 = SHX0_1.peds
    SHX2_3 = SHX0_3.menu_id
    SHX1_3 = SHX1_3[SHX2_3]
    SHX1_1 = SHX1_3
    SHX1_3 = SHX4_1
    if SHX1_3 then
      SHX1_3 = tCMG
      SHX1_3 = SHX1_3.getCustomization
      SHX1_3 = SHX1_3()
      SHX2_1 = SHX1_3
      SHX1_3 = GetEntityHealth
      SHX2_3 = CMG
      SHX2_3 = SHX2_3.getPlayerPed
      SHX2_3 = SHX2_3()
      SHX1_3 = SHX1_3(SHX2_3)
      SHX7_1 = SHX1_3
    end
    SHX1_3 = SHX10_1
    SHX2_3 = true
    SHX1_3(SHX2_3)
    SHX1_3 = false
    SHX4_1 = SHX1_3
  end
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = SHX10_1
    SHX1_3 = false
    SHX0_3(SHX1_3)
    SHX0_3 = true
    SHX4_1 = SHX0_3
    SHX0_3 = SetEntityHealth
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.getPlayerPed
    SHX1_3 = SHX1_3()
    SHX2_3 = SHX7_1
    SHX0_3(SHX1_3, SHX2_3)
  end
  SHX4_2 = 1
  SHX5_2 = #SHX0_2
  SHX6_2 = 1
  for SHX7_2 = SHX4_2, SHX5_2, SHX6_2 do
    SHX8_2 = SHX0_2[SHX7_2]
    SHX9_2 = SHX8_2[1]
    SHX10_2 = string
    SHX10_2 = SHX10_2.format
    SHX11_2 = "pedmenu_%s_%s"
    SHX12_2 = SHX9_2
    SHX13_2 = SHX7_2
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    SHX11_2 = CMG
    SHX11_2 = SHX11_2.createArea
    SHX12_2 = SHX10_2
    SHX13_2 = SHX8_2[2]
    SHX14_2 = 1.25
    SHX15_2 = 6
    SHX16_2 = SHX2_2
    SHX17_2 = SHX3_2
    SHX18_2 = SHX1_2
    SHX19_2 = {}
    SHX19_2.menu_id = SHX9_2
    SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX11_2 = tCMG
    SHX11_2 = SHX11_2.addMarker
    SHX12_2 = SHX8_2[2]
    SHX12_2 = SHX12_2.x
    SHX13_2 = SHX8_2[2]
    SHX13_2 = SHX13_2.y
    SHX14_2 = SHX8_2[2]
    SHX14_2 = SHX14_2.z
    SHX14_2 = SHX14_2 - 1
    SHX15_2 = 0.7
    SHX16_2 = 0.7
    SHX17_2 = 0.5
    SHX18_2 = 0
    SHX19_2 = 255
    SHX20_2 = 125
    SHX21_2 = 125
    SHX22_2 = 50
    SHX23_2 = 27
    SHX24_2 = false
    SHX25_2 = false
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
    SHX12_2 = SHX5_1
    SHX12_2 = #SHX12_2
    SHX13_2 = SHX12_2 + 1
    SHX12_2 = SHX5_1
    SHX12_2[SHX13_2] = SHX10_2
    SHX12_2 = SHX6_1
    SHX12_2 = #SHX12_2
    SHX13_2 = SHX12_2 + 1
    SHX12_2 = SHX6_1
    SHX12_2[SHX13_2] = SHX11_2
  end
end
SHX11_1(SHX12_1, SHX13_1)
