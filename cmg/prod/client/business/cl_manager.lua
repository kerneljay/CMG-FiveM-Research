-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1
function SHX0_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "bf3f551598"
  SHX0_2(SHX1_2)
end
function SHX1_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX3_1 = RMenu
SHX3_1 = SHX3_1.Add
SHX4_1 = "business"
SHX5_1 = "manager_mainmenu"
SHX6_1 = RageUI
SHX6_1 = SHX6_1.CreateMenu
SHX7_1 = ""
SHX8_1 = "~b~CMG Business"
SHX9_1 = CMG
SHX9_1 = SHX9_1.getRageUIMenuWidth
SHX9_1 = SHX9_1()
SHX10_1 = CMG
SHX10_1 = SHX10_1.getRageUIMenuHeight
SHX10_1 = SHX10_1()
SHX11_1 = "cmg_marketui"
SHX12_1 = "cmg_marketui"
SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1)
SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1)
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateWhile
SHX4_1 = 1.0
SHX5_1 = RMenu
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.Get
SHX7_1 = "business"
SHX8_1 = "manager_mainmenu"
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX6_1 = nil
function SHX7_1()
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
  SHX4_2 = "manager_mainmenu"
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
    SHX1_3 = "manager"
    SHX0_3 = SHX0_3(SHX1_3)
    if not SHX0_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.CloseAll
      SHX1_3()
      return
    end
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "~g~View Stock"
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
      
      local SHX3_4, SHX4_4, SHX5_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "c195715473"
        SHX5_4 = true
        SHX3_4(SHX4_4, SHX5_4)
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.CloseAll
        SHX3_4()
      end
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
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
    SHX10_3 = "manager_vieworders"
    SHX7_3, SHX8_3, SHX9_3, SHX10_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3)
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "7aa155f442"
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getUserBusinessData
  SHX1_2 = "manager"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.Visible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "business"
    SHX4_2 = "manager_mainmenu"
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX2_2 = true
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "bf3f551598"
    SHX0_2(SHX1_2)
  end
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = {}
SHX4_1 = {}
SHX4_1.init = SHX0_1
SHX4_1.tick = SHX1_1
SHX4_1.finish = SHX2_1
SHX4_1.next = "main"
SHX3_1.main = SHX4_1
SHX4_1 = CMG
SHX4_1 = SHX4_1.registerBusinessJob
SHX5_1 = "manager"
SHX6_1 = nil
SHX7_1 = "main"
SHX8_1 = SHX3_1
SHX9_1 = nil
SHX4_1(SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1)
SHX4_1 = Citizen
SHX4_1 = SHX4_1.Wait
SHX5_1 = 0
SHX4_1(SHX5_1)
SHX4_1 = CMG
SHX4_1 = SHX4_1.addGenericBusinessOrderView
SHX5_1 = "manager"
SHX6_1 = "manager_mainmenu"
SHX4_1(SHX5_1, SHX6_1)
