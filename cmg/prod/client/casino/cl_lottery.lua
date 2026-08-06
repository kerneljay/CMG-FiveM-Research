-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1
SHX0_1 = 0
SHX1_1 = 0
SHX2_1 = 0
SHX3_1 = 0
SHX4_1 = 0
SHX5_1 = RMenu
SHX5_1 = SHX5_1.Add
SHX6_1 = "lottery"
SHX7_1 = "mainmenu"
SHX8_1 = RageUI
SHX8_1 = SHX8_1.CreateMenu
SHX9_1 = ""
SHX10_1 = "Main Menu"
SHX11_1 = CMG
SHX11_1 = SHX11_1.getRageUIMenuWidth
SHX11_1 = SHX11_1()
SHX12_1 = CMG
SHX12_1 = SHX12_1.getRageUIMenuHeight
SHX12_1 = SHX12_1()
SHX13_1 = "cmg_lotteryui"
SHX14_1 = "cmg_lotteryui"
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1)
SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1)
SHX5_1 = RageUI
SHX5_1 = SHX5_1.CreateWhile
SHX6_1 = 1.0
SHX7_1 = RMenu
SHX8_1 = SHX7_1
SHX7_1 = SHX7_1.Get
SHX9_1 = "lottery"
SHX10_1 = "mainmenu"
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX8_1 = nil
function SHX9_1()
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
  SHX3_2 = "lottery"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "------------------"
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "Pot \194\163"
    SHX2_3 = getMoneyStringFormatted
    SHX3_3 = SHX4_1
    SHX4_3 = SHX1_1
    SHX3_3 = SHX3_3 + SHX4_3
    SHX2_3 = SHX2_3(SHX3_3)
    SHX1_3 = SHX1_3 .. SHX2_3
    SHX0_3(SHX1_3)
    SHX0_3 = SHX2_1
    if SHX0_3 > 0 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = tostring
      SHX2_3 = SHX2_1
      SHX1_3 = SHX1_3(SHX2_3)
      SHX2_3 = " Participant"
      SHX3_3 = SHX2_1
      if SHX3_3 > 1 then
        SHX3_3 = "s"
        if SHX3_3 then
          goto SHX_LABEL_32
        end
      end
      SHX3_3 = ""
      -- [FIX IF ERROR] Move ::SHX_LABEL_32:: outside nested blocks until all 'goto SHX_LABEL_32' can see it
      ::SHX_LABEL_32::
      SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
      SHX0_3(SHX1_3)
    else
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "No Participants"
      SHX0_3(SHX1_3)
    end
    SHX0_3 = SHX3_1
    if SHX0_3 > 0 then
      SHX0_3 = math
      SHX0_3 = SHX0_3.floor
      SHX1_3 = SHX1_1
      SHX2_3 = SHX0_1
      SHX1_3 = SHX1_3 / SHX2_3
      SHX0_3 = SHX0_3(SHX1_3)
      SHX1_3 = SHX3_1
      if SHX1_3 > 1 then
        SHX1_3 = " tickets"
        if SHX1_3 then
          goto SHX_LABEL_56
        end
      end
      SHX1_3 = " ticket"
      -- [FIX IF ERROR] Move ::SHX_LABEL_56:: outside nested blocks until all 'goto SHX_LABEL_56' can see it
      ::SHX_LABEL_56::
      SHX2_3 = RageUI
      SHX2_3 = SHX2_3.Separator
      SHX3_3 = "You have purchased "
      SHX4_3 = tostring
      SHX5_3 = SHX3_1
      SHX4_3 = SHX4_3(SHX5_3)
      SHX5_3 = SHX1_3
      SHX6_3 = " ("
      SHX7_3 = tostring
      SHX8_3 = math
      SHX8_3 = SHX8_3.floor
      SHX9_3 = SHX3_1
      SHX9_3 = SHX9_3 / SHX0_3
      SHX9_3 = SHX9_3 * 100
      SHX8_3, SHX9_3 = SHX8_3(SHX9_3)
      SHX7_3 = SHX7_3(SHX8_3, SHX9_3)
      SHX8_3 = "%)"
      SHX3_3 = SHX3_3 .. SHX4_3 .. SHX5_3 .. SHX6_3 .. SHX7_3 .. SHX8_3
      SHX2_3(SHX3_3)
    else
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "You haven't purchased any tickets"
      SHX0_3(SHX1_3)
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "------------------"
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~Drawn on Sunday at 8:00PM UK Time"
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~Tickets can be purchased at a convenience store"
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~(You do not have to be online to be picked)"
    SHX0_3(SHX1_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "fd5f71f484"
function SHX7_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX0_1 = SHX0_2
  SHX1_1 = SHX1_2
  SHX2_1 = SHX2_2
  SHX4_1 = SHX3_2
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "e6b5e535c3"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX3_1 = SHX0_2
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterCommand
SHX6_1 = "lottery"
function SHX7_1()
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
  SHX3_2 = "lottery"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "f27bf34089"
  SHX0_2(SHX1_2)
end
SHX8_1 = false
SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX5_1 = CMG
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  return SHX0_2
end
SHX5_1.getLotteryTicketPrice = SHX6_1
