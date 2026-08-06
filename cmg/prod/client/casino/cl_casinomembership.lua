-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = 944.34539794922
SHX4_1 = 61.159976959229
SHX5_1 = 80.902641296387
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.pedPosition = SHX2_1
SHX1_1.pedHeading = 150.0
SHX2_1 = vector3
SHX3_1 = 943.46997070312
SHX4_1 = 59.663074493408
SHX5_1 = 79.922641296387
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.entryPosition = SHX2_1
SHX0_1[1] = SHX1_1
SHX1_1 = RMenu
SHX1_1 = SHX1_1.Add
SHX2_1 = "cmgcasinomembership"
SHX3_1 = "casino"
SHX4_1 = RageUI
SHX4_1 = SHX4_1.CreateMenu
SHX5_1 = ""
SHX6_1 = ""
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1 = SHX8_1()
SHX9_1 = "shopui_title_casino"
SHX10_1 = "shopui_title_casino"
SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX1_1(SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX1_1 = RMenu
SHX2_1 = SHX1_1
SHX1_1 = SHX1_1.Get
SHX3_1 = "cmgcasinomembership"
SHX4_1 = "casino"
SHX1_1 = SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX2_1 = SHX1_1
SHX1_1 = SHX1_1.SetSubtitle
SHX3_1 = "~b~MEMBERSHIP"
SHX1_1(SHX2_1, SHX3_1)
SHX1_1 = RMenu
SHX1_1 = SHX1_1.Add
SHX2_1 = "cmgcasinomembership"
SHX3_1 = "confirmadd"
SHX4_1 = RageUI
SHX4_1 = SHX4_1.CreateSubMenu
SHX5_1 = RMenu
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.Get
SHX7_1 = "cmgcasinomembership"
SHX8_1 = "casino"
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX6_1 = ""
SHX7_1 = "~b~Are you sure?"
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuWidth
SHX8_1 = SHX8_1()
SHX9_1 = CMG
SHX9_1 = SHX9_1.getRageUIMenuHeight
SHX9_1, SHX10_1 = SHX9_1()
SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX1_1(SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX1_1 = RMenu
SHX1_1 = SHX1_1.Add
SHX2_1 = "cmgcasinomembership"
SHX3_1 = "confirmremove"
SHX4_1 = RageUI
SHX4_1 = SHX4_1.CreateSubMenu
SHX5_1 = RMenu
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.Get
SHX7_1 = "cmgcasinomembership"
SHX8_1 = "casino"
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX6_1 = ""
SHX7_1 = "~b~Are you sure?"
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuWidth
SHX8_1 = SHX8_1()
SHX9_1 = CMG
SHX9_1 = SHX9_1.getRageUIMenuHeight
SHX9_1, SHX10_1 = SHX9_1()
SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX1_1(SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX1_1 = RageUI
SHX1_1 = SHX1_1.CreateWhile
SHX2_1 = 1.0
SHX3_1 = RMenu
SHX4_1 = SHX3_1
SHX3_1 = SHX3_1.Get
SHX5_1 = "cmgcasinomembership"
SHX6_1 = "casino"
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX4_1 = nil
function SHX5_1()
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
  SHX3_2 = "cmgcasinomembership"
  SHX4_2 = "casino"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Purchase High Rollers Membership (\194\16310,000,000)"
    SHX2_3 = "~g~Allows you to sit at High-Rollers only seats."
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
    SHX8_3 = "cmgcasinomembership"
    SHX9_3 = "confirmadd"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Remove High Rollers Membership (\194\1630)"
    SHX2_3 = "~r~This is an irrevocable action, you will not receive any money in return."
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
    SHX8_3 = "cmgcasinomembership"
    SHX9_3 = "confirmremove"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
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
  SHX3_2 = "cmgcasinomembership"
  SHX4_2 = "confirmadd"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = false
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "No"
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
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = tCMG
        SHX3_4 = SHX3_4.notify
        SHX4_4 = "~y~Cancelled!"
        SHX3_4(SHX4_4)
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "cmgcasinomembership"
    SHX9_3 = "casino"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Yes"
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
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "9ba72c4963"
        SHX3_4(SHX4_4)
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "cmgcasinomembership"
    SHX9_3 = "casino"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
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
  SHX3_2 = "cmgcasinomembership"
  SHX4_2 = "confirmremove"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = false
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "No"
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
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = tCMG
        SHX3_4 = SHX3_4.notify
        SHX4_4 = "~y~Cancelled!"
        SHX3_4(SHX4_4)
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "cmgcasinomembership"
    SHX9_3 = "casino"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Yes"
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
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "10427dae18"
        SHX3_4(SHX4_4)
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "cmgcasinomembership"
    SHX9_3 = "casino"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
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
SHX1_1(SHX2_1, SHX3_1, SHX4_1, SHX5_1)
function SHX1_1(SHX0_2)
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
  SHX4_2 = "cmgcasinomembership"
  SHX5_2 = "casino"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX2_1 = Citizen
SHX2_1 = SHX2_1.CreateThread
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createDynamicPed
    SHX7_2 = -1156746507
    SHX8_2 = SHX5_2.pedPosition
    SHX9_2 = 175.0
    SHX10_2 = true
    SHX11_2 = "mini@strip_club@idles@bouncer@base"
    SHX12_2 = "base"
    SHX13_2 = 75.0
    SHX14_2 = nil
    function SHX15_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
      SHX1_3 = SetEntityCanBeDamaged
      SHX2_3 = SHX0_3
      SHX3_3 = false
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = SetPedAsEnemy
      SHX2_3 = SHX0_3
      SHX3_3 = false
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = SetBlockingOfNonTemporaryEvents
      SHX2_3 = SHX0_3
      SHX3_3 = true
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = SetPedResetFlag
      SHX2_3 = SHX0_3
      SHX3_3 = 249
      SHX4_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX1_3 = SetPedConfigFlag
      SHX2_3 = SHX0_3
      SHX3_3 = 185
      SHX4_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX1_3 = SetPedConfigFlag
      SHX2_3 = SHX0_3
      SHX3_3 = 108
      SHX4_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX1_3 = SetPedCanEvasiveDive
      SHX2_3 = SHX0_3
      SHX3_3 = false
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = SetPedCanRagdollFromPlayerImpact
      SHX2_3 = SHX0_3
      SHX3_3 = false
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = SetPedConfigFlag
      SHX2_3 = SHX0_3
      SHX3_3 = 208
      SHX4_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX1_3 = SetEntityCoordsNoOffset
      SHX2_3 = SHX0_3
      SHX3_3 = SHX5_2.pedPosition
      SHX3_3 = SHX3_3.x
      SHX4_3 = SHX5_2.pedPosition
      SHX4_3 = SHX4_3.y
      SHX5_3 = SHX5_2.pedPosition
      SHX5_3 = SHX5_3.z
      SHX6_3 = true
      SHX7_3 = false
      SHX8_3 = false
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
      SHX1_3 = SetEntityHeading
      SHX2_3 = SHX0_3
      SHX3_3 = SHX5_2.pedHeading
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = FreezeEntityPosition
      SHX2_3 = SHX0_3
      SHX3_3 = true
      SHX1_3(SHX2_3, SHX3_3)
    end
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  end
end
SHX2_1(SHX3_1)
SHX2_1 = AddEventHandler
SHX3_1 = "CMG:onClientSpawn"
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX1_1
      SHX1_3 = true
      SHX0_3(SHX1_3)
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX1_1
      SHX1_3 = false
      SHX0_3(SHX1_3)
    end
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX5_2 = pairs
    SHX6_2 = SHX0_1
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = tCMG
      SHX11_2 = SHX11_2.addBlip
      SHX12_2 = SHX10_2.entryPosition
      SHX12_2 = SHX12_2.x
      SHX13_2 = SHX10_2.entryPosition
      SHX13_2 = SHX13_2.y
      SHX14_2 = SHX10_2.entryPosition
      SHX14_2 = SHX14_2.z
      SHX15_2 = 682
      SHX16_2 = 0
      SHX17_2 = "Casino Memberships"
      SHX18_2 = 0.7
      SHX19_2 = true
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX11_2 = tCMG
      SHX11_2 = SHX11_2.addMarker
      SHX12_2 = SHX10_2.entryPosition
      SHX12_2 = SHX12_2.x
      SHX13_2 = SHX10_2.entryPosition
      SHX13_2 = SHX13_2.y
      SHX14_2 = SHX10_2.entryPosition
      SHX14_2 = SHX14_2.z
      SHX15_2 = 1.0
      SHX16_2 = 1.0
      SHX17_2 = 1.0
      SHX18_2 = 138
      SHX19_2 = 43
      SHX20_2 = 226
      SHX21_2 = 70
      SHX22_2 = 50
      SHX23_2 = 27
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.createArea
      SHX12_2 = "casinomembership_"
      SHX13_2 = SHX9_2
      SHX12_2 = SHX12_2 .. SHX13_2
      SHX13_2 = SHX10_2.entryPosition
      SHX14_2 = 1.5
      SHX15_2 = 6
      SHX16_2 = SHX2_2
      SHX17_2 = SHX3_2
      SHX18_2 = SHX4_2
      SHX19_2 = {}
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    end
  end
end
SHX2_1(SHX3_1, SHX4_1)
