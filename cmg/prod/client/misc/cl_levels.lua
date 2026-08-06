-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = CMG
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX2_2 = SHX1_2 or SHX2_2
  if SHX1_2 then
    SHX2_2 = tonumber
    SHX3_2 = SHX1_2.level
    SHX2_2 = SHX2_2(SHX3_2)
  end
  if SHX2_2 then
    SHX3_2 = math
    SHX3_2 = SHX3_2.max
    SHX4_2 = 1
    SHX5_2 = math
    SHX5_2 = SHX5_2.floor
    SHX6_2 = SHX2_2
    SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
    return SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
  SHX3_2 = 1
  return SHX3_2
end
SHX2_1.getClientJobLevel = SHX3_1
SHX2_1 = RegisterNetEvent
SHX3_1 = "7d0acdab9a"
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_1 = SHX0_2
  SHX2_2 = pairs
  SHX3_2 = SHX0_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = nil
    SHX9_2 = nil
    SHX10_2 = SHX1_2[SHX6_2]
    if nil == SHX10_2 then
      SHX8_2 = 0
      SHX9_2 = 1
    else
      SHX10_2 = SHX1_2[SHX6_2]
      SHX8_2 = SHX10_2.xp
      SHX10_2 = math
      SHX10_2 = SHX10_2.max
      SHX11_2 = 1
      SHX12_2 = SHX1_2[SHX6_2]
      SHX12_2 = SHX12_2.level
      if not SHX12_2 then
        SHX12_2 = 1
      end
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
      SHX9_2 = SHX10_2
    end
    SHX10_2 = SHX1_1
    SHX11_2 = {}
    SHX11_2.type = SHX6_2
    SHX11_2.xp = SHX8_2
    SHX11_2.level = SHX9_2
    SHX12_2 = SHX7_2.name
    SHX11_2.name = SHX12_2
    SHX10_2[SHX6_2] = SHX11_2
  end
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RegisterNetEvent
SHX3_1 = "d896db57d4"
function SHX4_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX4_2 = AddPlayerXP
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX7_2 = SHX2_2
  SHX8_2 = SHX3_2
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
SHX2_1(SHX3_1, SHX4_1)
function SHX2_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX4_2 = {}
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX7_2 = SHX3_2
  SHX8_2 = 0
  while SHX7_2 > 0 do
    SHX9_2 = SHX0_2[SHX5_2]
    if not SHX9_2 then
      break
    end
    SHX10_2 = SHX9_2 - SHX6_2
    if SHX7_2 >= SHX10_2 then
      SHX11_2 = #SHX4_2
      SHX11_2 = SHX11_2 + 1
      SHX12_2 = {}
      SHX12_2.level = SHX5_2
      SHX12_2.xpFrom = SHX6_2
      SHX12_2.xpTo = SHX9_2
      SHX12_2.xpMax = SHX9_2
      SHX12_2.note = "LEVEL UP!"
      SHX12_2.awardPoints = 1
      SHX4_2[SHX11_2] = SHX12_2
      SHX7_2 = SHX7_2 - SHX10_2
      SHX5_2 = SHX5_2 + 1
      SHX6_2 = 0
      SHX8_2 = SHX8_2 + 1
    else
      SHX11_2 = #SHX4_2
      SHX11_2 = SHX11_2 + 1
      SHX12_2 = {}
      SHX12_2.level = SHX5_2
      SHX12_2.xpFrom = SHX6_2
      SHX13_2 = SHX6_2 + SHX7_2
      SHX12_2.xpTo = SHX13_2
      SHX12_2.xpMax = SHX9_2
      SHX4_2[SHX11_2] = SHX12_2
      SHX6_2 = SHX6_2 + SHX7_2
      SHX7_2 = 0
    end
  end
  SHX9_2 = SHX4_2
  SHX10_2 = SHX5_2
  SHX11_2 = SHX6_2
  SHX12_2 = SHX8_2
  return SHX9_2, SHX10_2, SHX11_2, SHX12_2
end
function SHX3_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = "~g~XP increased by %s!"
  SHX6_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  if SHX3_2 then
    SHX5_2 = table
    SHX5_2 = SHX5_2.count
    SHX6_2 = SHX3_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 > 0 then
      SHX5_2 = SHX4_2
      SHX6_2 = [[


Your Active Modifiers:]]
      SHX5_2 = SHX5_2 .. SHX6_2
      SHX4_2 = SHX5_2
      SHX5_2 = pairs
      SHX6_2 = SHX3_2
      SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
      for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
        SHX11_2 = SHX4_2
        SHX12_2 = "\n"
        SHX13_2 = string
        SHX13_2 = SHX13_2.format
        SHX14_2 = "%s (+%s XP)"
        SHX15_2 = SHX9_2
        SHX16_2 = SHX10_2
        SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
        SHX11_2 = SHX11_2 .. SHX12_2 .. SHX13_2
        SHX4_2 = SHX11_2
      end
    end
  end
  SHX5_2 = notify
  SHX6_2 = SHX4_2
  SHX5_2(SHX6_2)
  if SHX0_2 then
    SHX5_2 = SHX0_1
    SHX5_2 = SHX5_2[SHX0_2]
    if SHX5_2 then
      SHX5_2 = SHX1_1
      SHX5_2 = SHX5_2[SHX0_2]
      if SHX5_2 then
        SHX5_2 = SHX1_1
        SHX5_2 = SHX5_2[SHX0_2]
        SHX5_2 = SHX5_2.level
        SHX6_2 = SHX1_1
        SHX6_2 = SHX6_2[SHX0_2]
        SHX6_2 = SHX6_2.xp
        SHX7_2 = SHX0_1
        SHX7_2 = SHX7_2[SHX0_2]
        SHX7_2 = SHX7_2.xp_table
        if SHX7_2 then
          SHX8_2 = #SHX7_2
          if 0 ~= SHX8_2 then
            goto SHX_LABEL_63
          end
        end
        return
        -- [FIX IF ERROR] Move ::SHX_LABEL_63:: outside nested blocks until all 'goto SHX_LABEL_63' can see it
        ::SHX_LABEL_63::
        SHX8_2 = SHX2_1
        SHX9_2 = SHX7_2
        SHX10_2 = SHX5_2
        SHX11_2 = SHX6_2
        SHX12_2 = SHX1_2
        SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
        SHX12_2 = #SHX8_2
        if SHX12_2 > 0 then
          SHX12_2 = CMG
          SHX12_2 = SHX12_2.uiSendMessage
          SHX13_2 = {}
          SHX13_2.action = "XP_GAIN_STEPS"
          SHX14_2 = {}
          SHX15_2 = SHX1_1
          SHX15_2 = SHX15_2[SHX0_2]
          SHX15_2 = SHX15_2.name
          SHX14_2.label = SHX15_2
          SHX14_2.color = "yellow"
          SHX14_2.gained = SHX1_2
          SHX14_2.pointsBefore = SHX5_2
          SHX15_2 = SHX5_2 + SHX11_2
          SHX14_2.pointsAfter = SHX15_2
          SHX14_2.steps = SHX8_2
          SHX13_2.payload = SHX14_2
          SHX12_2(SHX13_2)
        end
        SHX12_2 = SHX1_1
        SHX12_2 = SHX12_2[SHX0_2]
        SHX12_2.xp = SHX10_2
        SHX12_2 = SHX1_1
        SHX12_2 = SHX12_2[SHX0_2]
        SHX12_2.level = SHX9_2
      end
    end
  end
end
AddPlayerXP = SHX3_1
SHX3_1 = RMenu
SHX3_1 = SHX3_1.Add
SHX4_1 = "levels"
SHX5_1 = "mainmenu"
SHX6_1 = RageUI
SHX6_1 = SHX6_1.CreateMenu
SHX7_1 = ""
SHX8_1 = "~b~CMG Level System"
SHX9_1 = CMG
SHX9_1 = SHX9_1.getRageUIMenuWidth
SHX9_1 = SHX9_1()
SHX10_1 = CMG
SHX10_1 = SHX10_1.getRageUIMenuHeight
SHX10_1 = SHX10_1()
SHX11_1 = "cmg_settingsui"
SHX12_1 = "cmg_settingsui"
SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1)
SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1)
SHX3_1 = {}
SHX3_1.cmg_pilot = "Pilot Job"
SHX3_1.cmg_trucking = "Trucking Job"
SHX4_1 = RageUI
SHX4_1 = SHX4_1.CreateWhile
SHX5_1 = 1.0
SHX6_1 = RMenu
SHX7_1 = SHX6_1
SHX6_1 = SHX6_1.Get
SHX8_1 = "levels"
SHX9_1 = "mainmenu"
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX7_1 = nil
function SHX8_1()
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
  SHX3_2 = "levels"
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
    SHX0_3 = pairs
    SHX1_3 = SHX1_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX3_1
      SHX6_3 = SHX6_3[SHX4_3]
      if SHX6_3 then
        SHX7_3 = SHX0_1
        SHX7_3 = SHX7_3[SHX4_3]
        SHX7_3 = SHX7_3.xp_table
        SHX8_3 = SHX5_3.level
        SHX7_3 = SHX7_3[SHX8_3]
        SHX8_3 = "Current XP: "
        SHX9_3 = tostring
        SHX10_3 = SHX5_3.xp
        SHX9_3 = SHX9_3(SHX10_3)
        SHX10_3 = [[

Next Level XP: ]]
        SHX11_3 = tostring
        SHX12_3 = SHX7_3
        SHX11_3 = SHX11_3(SHX12_3)
        SHX8_3 = SHX8_3 .. SHX9_3 .. SHX10_3 .. SHX11_3
        SHX9_3 = RageUI
        SHX9_3 = SHX9_3.ButtonWithStyle
        SHX10_3 = SHX6_3
        SHX11_3 = SHX8_3
        SHX12_3 = {}
        SHX13_3 = "Level "
        SHX14_3 = tostring
        SHX15_3 = SHX5_3.level
        SHX14_3 = SHX14_3(SHX15_3)
        SHX13_3 = SHX13_3 .. SHX14_3
        SHX12_3.RightLabel = SHX13_3
        SHX13_3 = true
        function SHX14_3()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_4, SHX1_4
        end
        SHX9_3(SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
      end
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX4_1(SHX5_1, SHX6_1, SHX7_1, SHX8_1)
SHX4_1 = RegisterCommand
SHX5_1 = "level"
function SHX6_1()
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
  SHX3_2 = "levels"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX7_1 = false
SHX4_1(SHX5_1, SHX6_1, SHX7_1)
