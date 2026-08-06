-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_jewelryHeist"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = RMenu
SHX1_1 = SHX1_1.Add
SHX2_1 = "cmgSellJewelry"
SHX3_1 = "main"
SHX4_1 = RageUI
SHX4_1 = SHX4_1.CreateMenu
SHX5_1 = ""
SHX6_1 = "~b~Sell Jewelry"
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1 = SHX8_1()
SHX9_1 = "shopui_title_arenawar"
SHX10_1 = "shopui_title_arenawar"
SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX1_1(SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX1_1 = nil
SHX2_1 = RageUI
SHX2_1 = SHX2_1.CreateWhile
SHX3_1 = 1.0
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "cmgSellJewelry"
SHX7_1 = "main"
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = nil
function SHX6_1()
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
  SHX3_2 = "cmgSellJewelry"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
    SHX0_3 = 1
    SHX1_3 = SHX0_1.jewelryItems
    SHX1_3 = #SHX1_3
    SHX2_3 = 1
    for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
      SHX4_3 = RageUI
      SHX4_3 = SHX4_3.ButtonWithStyle
      SHX5_3 = SHX0_1.jewelryItems
      SHX5_3 = SHX5_3[SHX3_3]
      SHX5_3 = SHX5_3.name
      SHX6_3 = ""
      SHX7_3 = {}
      SHX8_3 = "\194\163"
      SHX9_3 = getMoneyStringFormatted
      SHX10_3 = SHX0_1.jewelryItems
      SHX10_3 = SHX10_3[SHX3_3]
      SHX10_3 = SHX10_3.sellPrice
      SHX9_3 = SHX9_3(SHX10_3)
      SHX8_3 = SHX8_3 .. SHX9_3
      SHX7_3.RightLabel = SHX8_3
      SHX8_3 = true
      function SHX9_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
        if SHX1_4 then
          SHX3_4 = SHX3_3
          SHX1_1 = SHX3_4
        end
        if SHX2_4 then
          SHX3_4 = TriggerEvent
          SHX4_4 = "963a1f4ac7"
          SHX3_4(SHX4_4)
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "e468a1e124"
          SHX5_4 = SHX1_1
          SHX6_4 = SHX0_1.jewelryItems
          SHX7_4 = SHX1_1
          SHX6_4 = SHX6_4[SHX7_4]
          SHX6_4 = SHX6_4.sellPrice
          SHX3_4(SHX4_4, SHX5_4, SHX6_4)
        end
      end
      SHX10_3 = nil
      SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
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
SHX2_1(SHX3_1, SHX4_1, SHX5_1, SHX6_1)
SHX2_1 = Citizen
SHX2_1 = SHX2_1.CreateThread
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  function SHX0_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Visible
    SHX1_3 = RMenu
    SHX2_3 = SHX1_3
    SHX1_3 = SHX1_3.Get
    SHX3_3 = "cmgSellJewelry"
    SHX4_3 = "main"
    SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    SHX2_3 = true
    SHX0_3(SHX1_3, SHX2_3)
  end
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Visible
    SHX1_3 = RMenu
    SHX2_3 = SHX1_3
    SHX1_3 = SHX1_3.Get
    SHX3_3 = "cmgSellJewelry"
    SHX4_3 = "main"
    SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    SHX2_3 = false
    SHX0_3(SHX1_3, SHX2_3)
  end
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX3_2 = 1
  SHX4_2 = SHX0_1.jewelrySellLocs
  SHX4_2 = #SHX4_2
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = tCMG
    SHX7_2 = SHX7_2.addMarker
    SHX8_2 = SHX0_1.jewelrySellLocs
    SHX8_2 = SHX8_2[SHX6_2]
    SHX8_2 = SHX8_2.coords
    SHX8_2 = SHX8_2.x
    SHX9_2 = SHX0_1.jewelrySellLocs
    SHX9_2 = SHX9_2[SHX6_2]
    SHX9_2 = SHX9_2.coords
    SHX9_2 = SHX9_2.y
    SHX10_2 = SHX0_1.jewelrySellLocs
    SHX10_2 = SHX10_2[SHX6_2]
    SHX10_2 = SHX10_2.coords
    SHX10_2 = SHX10_2.z
    SHX10_2 = SHX10_2 - 0.9
    SHX11_2 = 0.8
    SHX12_2 = 0.8
    SHX13_2 = 0.8
    SHX14_2 = 200
    SHX15_2 = 0
    SHX16_2 = 0
    SHX17_2 = 255
    SHX18_2 = 30
    SHX19_2 = 27
    SHX20_2 = false
    SHX21_2 = false
    SHX22_2 = false
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
    SHX7_2 = tCMG
    SHX7_2 = SHX7_2.addBlip
    SHX8_2 = SHX0_1.jewelrySellLocs
    SHX8_2 = SHX8_2[SHX6_2]
    SHX8_2 = SHX8_2.coords
    SHX8_2 = SHX8_2.x
    SHX9_2 = SHX0_1.jewelrySellLocs
    SHX9_2 = SHX9_2[SHX6_2]
    SHX9_2 = SHX9_2.coords
    SHX9_2 = SHX9_2.y
    SHX10_2 = SHX0_1.jewelrySellLocs
    SHX10_2 = SHX10_2[SHX6_2]
    SHX10_2 = SHX10_2.coords
    SHX10_2 = SHX10_2.z
    SHX11_2 = 618
    SHX12_2 = 46
    SHX13_2 = "Sell Jewelry"
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.addBlipContext
    SHX9_2 = "Civilian"
    SHX10_2 = SHX7_2
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.createArea
    SHX9_2 = "sellJewelry_"
    SHX10_2 = SHX6_2
    SHX9_2 = SHX9_2 .. SHX10_2
    SHX10_2 = SHX0_1.jewelrySellLocs
    SHX10_2 = SHX10_2[SHX6_2]
    SHX10_2 = SHX10_2.coords
    SHX11_2 = 2.0
    SHX12_2 = 5.0
    SHX13_2 = SHX0_2
    SHX14_2 = SHX1_2
    SHX15_2 = SHX2_2
    SHX16_2 = {}
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  end
end
SHX2_1(SHX3_1)
