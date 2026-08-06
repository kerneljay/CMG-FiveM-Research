-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1
SHX0_1 = {}
SHX1_1 = {}
SHX1_1.name = "Community Pot"
SHX1_1.amount = 0
SHX1_1.hasAccess = false
SHX0_1.community_pot = SHX1_1
SHX1_1 = {}
SHX1_1.name = "Gold Command Pot"
SHX1_1.amount = 0
SHX1_1.hasAccess = false
SHX0_1.gc_pot = SHX1_1
SHX1_1 = {}
SHX1_1.name = "NHS High Command Pot"
SHX1_1.amount = 0
SHX1_1.hasAccess = false
SHX0_1.nhs_pot = SHX1_1
SHX1_1 = {}
SHX1_1.name = "HMP Headquarters Pot"
SHX1_1.amount = 0
SHX1_1.hasAccess = false
SHX0_1.hmp_pot = SHX1_1
SHX1_1 = {}
SHX1_1.name = "Event Team Pot"
SHX1_1.amount = 0
SHX1_1.hasAccess = false
SHX0_1.event_pot = SHX1_1
SHX1_1 = {}
SHX1_1.name = "Streamer Pot"
SHX1_1.amount = 0
SHX1_1.hasAccess = false
SHX0_1.streamer_pot = SHX1_1
SHX1_1 = nil
SHX2_1 = RMenu
SHX2_1 = SHX2_1.Add
SHX3_1 = "cmgsharedpots"
SHX4_1 = "mainmenu"
SHX5_1 = RageUI
SHX5_1 = SHX5_1.CreateMenu
SHX6_1 = ""
SHX7_1 = ""
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuWidth
SHX8_1 = SHX8_1()
SHX9_1 = CMG
SHX9_1 = SHX9_1.getRageUIMenuHeight
SHX9_1 = SHX9_1()
SHX10_1 = "cmg_atmui"
SHX11_1 = "cmg_atmui"
SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1)
SHX2_1(SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1)
SHX2_1 = RMenu
SHX3_1 = SHX2_1
SHX2_1 = SHX2_1.Get
SHX4_1 = "cmgsharedpots"
SHX5_1 = "mainmenu"
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX3_1 = SHX2_1
SHX2_1 = SHX2_1.SetSubtitle
SHX4_1 = "~b~Shared Pots"
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RMenu
SHX2_1 = SHX2_1.Add
SHX3_1 = "cmgsharedpots"
SHX4_1 = "submenu"
SHX5_1 = RageUI
SHX5_1 = SHX5_1.CreateSubMenu
SHX6_1 = RMenu
SHX7_1 = SHX6_1
SHX6_1 = SHX6_1.Get
SHX8_1 = "cmgsharedpots"
SHX9_1 = "mainmenu"
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX7_1 = ""
SHX8_1 = "~b~Shared Pot"
SHX9_1 = CMG
SHX9_1 = SHX9_1.getRageUIMenuWidth
SHX9_1 = SHX9_1()
SHX10_1 = CMG
SHX10_1 = SHX10_1.getRageUIMenuHeight
SHX10_1 = SHX10_1()
SHX11_1 = "cmg_atmui"
SHX12_1 = "cmg_atmui"
SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1)
SHX2_1(SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1)
SHX2_1 = RegisterNetEvent
SHX3_1 = "c17e64466e"
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX0_1
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX2_2.amount = SHX1_2
    SHX2_2.hasAccess = true
  end
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RageUI
SHX2_1 = SHX2_1.CreateWhile
SHX3_1 = 1.0
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "cmgsharedpots"
SHX7_1 = "mainmenu"
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
  SHX3_2 = "cmgsharedpots"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3
    SHX0_3 = pairs
    SHX1_3 = SHX0_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX5_3.hasAccess
      if SHX6_3 then
        SHX6_3 = RageUI
        SHX6_3 = SHX6_3.ButtonWithStyle
        SHX7_3 = SHX5_3.name
        SHX8_3 = ""
        SHX9_3 = {}
        SHX9_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
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
            SHX3_4 = SHX4_3
            SHX1_1 = SHX3_4
          end
        end
        SHX12_3 = RMenu
        SHX13_3 = SHX12_3
        SHX12_3 = SHX12_3.Get
        SHX14_3 = "cmgsharedpots"
        SHX15_3 = "submenu"
        SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX12_3(SHX13_3, SHX14_3, SHX15_3)
        SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
      end
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
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgsharedpots"
  SHX4_2 = "submenu"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX1_3 = SHX1_1
    SHX0_3 = SHX0_1
    SHX0_3 = SHX0_3[SHX1_3]
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Separator
    SHX2_3 = SHX0_3.name
    SHX3_3 = " Balance: ~g~\194\163"
    SHX4_3 = getMoneyStringFormatted
    SHX5_3 = SHX0_3.amount
    SHX4_3 = SHX4_3(SHX5_3)
    SHX2_3 = SHX2_3 .. SHX3_3 .. SHX4_3
    SHX1_3(SHX2_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Deposit"
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.GetRageInputText
        SHX4_4 = "Enter amount"
        SHX3_4 = SHX3_4(SHX4_4)
        SHX4_4 = tonumber
        SHX5_4 = SHX3_4
        SHX4_4 = SHX4_4(SHX5_4)
        if SHX4_4 then
          SHX4_4 = TriggerServerEvent
          SHX5_4 = "b37040220b"
          SHX6_4 = SHX1_1
          SHX7_4 = SHX3_4
          SHX4_4(SHX5_4, SHX6_4, SHX7_4)
        else
          SHX4_4 = tCMG
          SHX4_4 = SHX4_4.notify
          SHX5_4 = "~r~Invalid amount."
          SHX4_4(SHX5_4)
        end
      end
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Withdraw"
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.GetRageInputText
        SHX4_4 = "Enter amount"
        SHX3_4 = SHX3_4(SHX4_4)
        SHX4_4 = tonumber
        SHX5_4 = SHX3_4
        SHX4_4 = SHX4_4(SHX5_4)
        if SHX4_4 then
          SHX4_4 = TriggerServerEvent
          SHX5_4 = "41131bf015"
          SHX6_4 = SHX1_1
          SHX7_4 = SHX3_4
          SHX4_4(SHX5_4, SHX6_4, SHX7_4)
        else
          SHX4_4 = tCMG
          SHX4_4 = SHX4_4.notify
          SHX5_4 = "~r~Invalid amount."
          SHX4_4(SHX5_4)
        end
      end
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
SHX2_1(SHX3_1, SHX4_1, SHX5_1, SHX6_1)
SHX2_1 = RegisterNetEvent
SHX3_1 = "f8c5f8e5cb"
function SHX4_1()
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
  SHX3_2 = "cmgsharedpots"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "9b6076a268"
  SHX0_2(SHX1_2)
end
SHX2_1(SHX3_1, SHX4_1)
