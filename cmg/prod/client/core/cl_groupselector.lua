-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_groupselector"
SHX0_1 = SHX0_1(SHX1_1)
if not SHX0_1 then
  return
end
SHX1_1 = SHX0_1.selectors
SHX2_1 = {}
SHX3_1 = ""
SHX4_1 = 0
SHX5_1 = 0
SHX6_1 = {}
SHX7_1 = {}
SHX8_1 = {}
SHX9_1 = RMenu
SHX9_1 = SHX9_1.Add
SHX10_1 = "main"
SHX11_1 = "groupselector"
SHX12_1 = RageUI
SHX12_1 = SHX12_1.CreateMenu
SHX13_1 = ""
SHX14_1 = ""
SHX15_1 = CMG
SHX15_1 = SHX15_1.getRageUIMenuWidth
SHX15_1 = SHX15_1()
SHX16_1 = CMG
SHX16_1 = SHX16_1.getRageUIMenuHeight
SHX16_1 = SHX16_1()
SHX17_1 = "cmg_licenseui"
SHX18_1 = "cmg_licenseui"
SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1)
SHX9_1(SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1)
SHX9_1 = RMenu
SHX10_1 = SHX9_1
SHX9_1 = SHX9_1.Get
SHX11_1 = "main"
SHX12_1 = "groupselector"
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX10_1 = SHX9_1
SHX9_1 = SHX9_1.SetSubtitle
SHX11_1 = "~b~Job Selector"
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = AddEventHandler
SHX10_1 = "CMG:onClientSpawn"
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX1_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "e7a86c3e34"
    SHX2_2(SHX3_2)
  end
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "8938ae8828"
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX1_2 = pairs
  SHX2_2 = SHX6_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = tCMG
    SHX7_2 = SHX7_2.removeArea
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
  end
  SHX1_2 = pairs
  SHX2_2 = SHX7_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = tCMG
    SHX7_2 = SHX7_2.removeMarker
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
  end
  SHX1_2 = pairs
  SHX2_2 = SHX8_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = tCMG
    SHX7_2 = SHX7_2.removeBlip
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
  end
  SHX2_1 = SHX0_2
  function SHX1_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.isPurge
    SHX1_3 = SHX1_3()
    if not SHX1_3 then
      SHX1_3 = SHX0_3.selectorId
      SHX3_1 = SHX1_3
    end
  end
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.CloseAll
    SHX0_3()
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Visible
    SHX1_3 = RMenu
    SHX2_3 = SHX1_3
    SHX1_3 = SHX1_3.Get
    SHX3_3 = "main"
    SHX4_3 = "groupselector"
    SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    SHX2_3 = false
    SHX0_3(SHX1_3, SHX2_3)
  end
  function SHX3_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.isPurge
    SHX1_3 = SHX1_3()
    if not SHX1_3 then
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.isPlayerInPrison
      SHX1_3 = SHX1_3()
      if not SHX1_3 then
        SHX1_3 = IsControlJustPressed
        SHX2_3 = 1
        SHX3_3 = 38
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        if SHX1_3 then
          SHX2_3 = SHX0_3.selectorId
          SHX1_3 = SHX1_1
          SHX1_3 = SHX1_3[SHX2_3]
          SHX1_3 = SHX1_3.type
          SHX2_3 = RageUI
          SHX2_3 = SHX2_3.CloseAll
          SHX2_3()
          SHX2_3 = RMenu
          SHX3_3 = SHX2_3
          SHX2_3 = SHX2_3.Get
          SHX4_3 = "main"
          SHX5_3 = "groupselector"
          SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3)
          SHX3_3 = SHX2_3
          SHX2_3 = SHX2_3.SetSpriteBanner
          SHX4_3 = SHX0_1.selectorTypes
          SHX4_3 = SHX4_3[SHX1_3]
          SHX4_3 = SHX4_3._config
          SHX4_3 = SHX4_3.TextureDictionary
          SHX5_3 = SHX0_1.selectorTypes
          SHX5_3 = SHX5_3[SHX1_3]
          SHX5_3 = SHX5_3._config
          SHX5_3 = SHX5_3.texture
          SHX2_3(SHX3_3, SHX4_3, SHX5_3)
          SHX2_3 = RageUI
          SHX2_3 = SHX2_3.Visible
          SHX3_3 = RMenu
          SHX4_3 = SHX3_3
          SHX3_3 = SHX3_3.Get
          SHX5_3 = "main"
          SHX6_3 = "groupselector"
          SHX3_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3)
          SHX4_3 = RageUI
          SHX4_3 = SHX4_3.Visible
          SHX5_3 = RMenu
          SHX6_3 = SHX5_3
          SHX5_3 = SHX5_3.Get
          SHX7_3 = "cmgadminmenu"
          SHX8_3 = "groupselector"
          SHX5_3, SHX6_3, SHX7_3, SHX8_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3)
          SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3)
          SHX4_3 = not SHX4_3
          SHX2_3(SHX3_3, SHX4_3)
        end
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.DrawText3D
        SHX3_3 = SHX0_3.selectorId
        SHX2_3 = SHX1_1
        SHX2_3 = SHX2_3[SHX3_3]
        SHX2_3 = SHX2_3.position
        SHX3_3 = "Press [E] to open Job Selector."
        SHX4_3 = 0.3
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      end
    end
  end
  SHX4_2 = pairs
  SHX5_2 = SHX2_1
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = CMG
    SHX10_2 = SHX10_2.createArea
    SHX11_2 = "selector_"
    SHX12_2 = SHX8_2
    SHX11_2 = SHX11_2 .. SHX12_2
    SHX12_2 = SHX9_2.position
    SHX13_2 = 1.5
    SHX14_2 = 6
    SHX15_2 = SHX1_2
    SHX16_2 = SHX2_2
    SHX17_2 = SHX3_2
    SHX18_2 = {}
    SHX18_2.selectorId = SHX8_2
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX11_2 = tCMG
    SHX11_2 = SHX11_2.addPropMarker
    SHX12_2 = "bzzz_marker_job_blue_anim"
    SHX13_2 = SHX9_2.position
    SHX13_2 = SHX13_2.x
    SHX14_2 = SHX9_2.position
    SHX14_2 = SHX14_2.y
    SHX15_2 = SHX9_2.position
    SHX15_2 = SHX15_2.z
    SHX16_2 = 10.0
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX12_2 = tCMG
    SHX12_2 = SHX12_2.addBlip
    SHX13_2 = SHX9_2.position
    SHX13_2 = SHX13_2.x
    SHX14_2 = SHX9_2.position
    SHX14_2 = SHX14_2.y
    SHX15_2 = SHX9_2.position
    SHX15_2 = SHX15_2.z
    SHX16_2 = SHX9_2._config
    SHX16_2 = SHX16_2.blipid
    SHX17_2 = SHX9_2._config
    SHX17_2 = SHX17_2.blipcolor
    SHX18_2 = SHX9_2._config
    SHX18_2 = SHX18_2.name
    SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX13_2 = table
    SHX13_2 = SHX13_2.insert
    SHX14_2 = SHX6_1
    SHX15_2 = SHX10_2
    SHX13_2(SHX14_2, SHX15_2)
    SHX13_2 = table
    SHX13_2 = SHX13_2.insert
    SHX14_2 = SHX7_1
    SHX15_2 = SHX11_2
    SHX13_2(SHX14_2, SHX15_2)
    SHX13_2 = table
    SHX13_2 = SHX13_2.insert
    SHX14_2 = SHX8_1
    SHX15_2 = SHX12_2
    SHX13_2(SHX14_2, SHX15_2)
  end
end
SHX9_1(SHX10_1, SHX11_1)
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = SHX4_1
  if not (SHX0_2 > 0) then
    SHX0_2 = SHX5_1
    if not (SHX0_2 > 0) then
      goto SHX_LABEL_30
    end
  end
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.ButtonWithStyle
  SHX1_2 = "~y~Withdraw Paycheck"
  SHX2_2 = "You are next paid in "
  SHX3_2 = tostring
  SHX4_2 = SHX4_1
  SHX5_2 = 30
  SHX4_2 = SHX5_2 - SHX4_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = " minutes."
  SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2
  SHX3_2 = {}
  SHX4_2 = "\194\163"
  SHX5_2 = getMoneyStringFormatted
  SHX6_2 = SHX5_1
  SHX5_2 = SHX5_2(SHX6_2)
  SHX4_2 = SHX4_2 .. SHX5_2
  SHX3_2.RightLabel = SHX4_2
  SHX4_2 = true
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = SHX5_1
      if SHX3_3 > 0 then
        SHX3_3 = TriggerServerEvent
        SHX4_3 = "5c91c15de0"
        SHX3_3(SHX4_3)
      else
        SHX3_3 = notify
        SHX4_3 = "~r~You have no money to withdraw."
        SHX3_3(SHX4_3)
      end
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_30:: outside nested blocks until all 'goto SHX_LABEL_30' can see it
  ::SHX_LABEL_30::
end
SHX10_1 = CMG
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = SHX4_1
  if not (SHX0_2 > 0) then
    SHX0_2 = SHX5_1
    if not (SHX0_2 > 0) then
      goto SHX_LABEL_22
    end
  end
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.ButtonWithStyle
  SHX1_2 = "~y~Withdraw Casino Profits"
  SHX2_2 = ""
  SHX3_2 = {}
  SHX4_2 = "\194\163"
  SHX5_2 = getMoneyStringFormatted
  SHX6_2 = SHX5_1
  SHX5_2 = SHX5_2(SHX6_2)
  SHX4_2 = SHX4_2 .. SHX5_2
  SHX3_2.RightLabel = SHX4_2
  SHX4_2 = true
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = SHX5_1
      if SHX3_3 > 0 then
        SHX3_3 = TriggerServerEvent
        SHX4_3 = "5c91c15de0"
        SHX3_3(SHX4_3)
      else
        SHX3_3 = notify
        SHX4_3 = "~r~You have no money to withdraw."
        SHX3_3(SHX4_3)
      end
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
  ::SHX_LABEL_22::
end
SHX10_1.drawPaycheckButtonForCasinoOwner = SHX11_1
SHX10_1 = RageUI
SHX10_1 = SHX10_1.CreateWhile
SHX11_1 = 1.0
SHX12_1 = RMenu
SHX13_1 = SHX12_1
SHX12_1 = SHX12_1.Get
SHX14_1 = "main"
SHX15_1 = "groupselector"
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
  SHX3_2 = "main"
  SHX4_2 = "groupselector"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3
    SHX0_3 = SHX9_1
    SHX0_3()
    SHX0_3 = pairs
    SHX1_3 = SHX2_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX3_1
      if SHX4_3 == SHX6_3 then
        SHX6_3 = table
        SHX6_3 = SHX6_3.count
        SHX7_3 = SHX5_3.jobs
        SHX6_3 = SHX6_3(SHX7_3)
        if 0 ~= SHX6_3 then
          SHX6_3 = pairs
          SHX7_3 = SHX5_3.jobs
          SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3)
          for SHX10_3, SHX11_3 in SHX6_3, SHX7_3, SHX8_3, SHX9_3 do
            SHX12_3 = true
            SHX13_3 = SHX11_3[3]
            SHX14_3 = SHX11_3[4]
            if not SHX14_3 then
              SHX14_3 = ""
            end
            if SHX13_3 then
              SHX15_3 = CMG
              SHX15_3 = SHX15_3.hasClientPermission
              SHX16_3 = SHX13_3
              SHX15_3 = SHX15_3(SHX16_3)
              if not SHX15_3 then
                SHX12_3 = false
                SHX14_3 = "You do not have the required license for this job"
              end
            end
            if not SHX12_3 then
              if SHX12_3 then
                goto SHX_LABEL_66
              end
              SHX15_3 = SHX5_3._config
              SHX15_3 = SHX15_3.name
              if "Job Selector" ~= SHX15_3 then
                goto SHX_LABEL_66
              end
            end
            SHX15_3 = ""
            SHX16_3 = SHX11_3[1]
            if "Trucking" == SHX16_3 then
              SHX15_3 = "~g~ - Recommended for new players"
            end
            SHX16_3 = RageUI
            SHX16_3 = SHX16_3.ButtonWithStyle
            SHX17_3 = SHX11_3[1]
            SHX18_3 = SHX15_3
            SHX17_3 = SHX17_3 .. SHX18_3
            SHX18_3 = SHX14_3
            SHX19_3 = {}
            SHX19_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
            SHX20_3 = SHX12_3
            function SHX21_3(SHX0_4, SHX1_4, SHX2_4)
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX3_4, SHX4_4, SHX5_4, SHX6_4
              if SHX2_4 then
                SHX3_4 = TriggerServerEvent
                SHX4_4 = "09d233a638"
                SHX5_4 = SHX4_3
                SHX6_4 = SHX11_3
                SHX6_4 = SHX6_4[1]
                SHX3_4(SHX4_4, SHX5_4, SHX6_4)
              end
            end
            SHX22_3 = RMenu
            SHX23_3 = SHX22_3
            SHX22_3 = SHX22_3.Get
            SHX24_3 = "confirm"
            SHX25_3 = "groupselector"
            SHX22_3, SHX23_3, SHX24_3, SHX25_3 = SHX22_3(SHX23_3, SHX24_3, SHX25_3)
            SHX16_3(SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3)
            -- [FIX IF ERROR] Move ::SHX_LABEL_66:: outside nested blocks until all 'goto SHX_LABEL_66' can see it
            ::SHX_LABEL_66::
          end
        else
          SHX6_3 = RageUI
          SHX6_3 = SHX6_3.Separator
          SHX7_3 = "You have no available clock on ranks"
          SHX6_3(SHX7_3)
        end
        SHX6_3 = RageUI
        SHX6_3 = SHX6_3.ButtonWithStyle
        SHX7_3 = "Unemployed"
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
          
          local SHX3_4, SHX4_4, SHX5_4, SHX6_4
          if SHX2_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "09d233a638"
            SHX5_4 = SHX4_3
            SHX6_4 = "Unemployed"
            SHX3_4(SHX4_4, SHX5_4, SHX6_4)
          end
        end
        SHX12_3 = RMenu
        SHX13_3 = SHX12_3
        SHX12_3 = SHX12_3.Get
        SHX14_3 = "confirm"
        SHX15_3 = "groupselector"
        SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3 = SHX12_3(SHX13_3, SHX14_3, SHX15_3)
        SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3)
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
end
SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1)
SHX10_1 = RegisterNetEvent
SHX11_1 = "1d9acfa3dd"
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX5_1 = SHX0_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = RegisterNetEvent
SHX11_1 = "2f8f180e56"
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX5_1
  SHX1_2 = SHX1_2 + SHX0_2
  SHX5_1 = SHX1_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = RegisterNetEvent
SHX11_1 = "9a672bc0ac"
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX4_1 = SHX0_2
end
SHX10_1(SHX11_1, SHX12_1)
