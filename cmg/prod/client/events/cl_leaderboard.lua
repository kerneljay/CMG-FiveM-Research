-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = "Name"
SHX3_1 = "Kills"
SHX4_1 = "Deaths"
SHX5_1 = "Killstreak"
SHX6_1 = "KDR"
SHX1_1[1] = SHX2_1
SHX1_1[2] = SHX3_1
SHX1_1[3] = SHX4_1
SHX1_1[4] = SHX5_1
SHX1_1[5] = SHX6_1
SHX0_1.columns = SHX1_1
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = "Robbster"
SHX4_1 = "~b~BLUE TEAM"
SHX5_1 = ""
SHX6_1 = false
SHX7_1 = 5
SHX8_1 = 2
SHX9_1 = 0
SHX10_1 = "1.4"
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX2_1[5] = SHX7_1
SHX2_1[6] = SHX8_1
SHX2_1[7] = SHX9_1
SHX2_1[8] = SHX10_1
SHX3_1 = {}
SHX4_1 = "Thomas"
SHX5_1 = "~b~BLUE TEAM"
SHX6_1 = ""
SHX7_1 = false
SHX8_1 = 7
SHX9_1 = 5
SHX10_1 = 0
SHX11_1 = "0.5"
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX3_1[4] = SHX7_1
SHX3_1[5] = SHX8_1
SHX3_1[6] = SHX9_1
SHX3_1[7] = SHX10_1
SHX3_1[8] = SHX11_1
SHX4_1 = {}
SHX5_1 = "Arthur"
SHX6_1 = "~r~RED TEAM"
SHX7_1 = ""
SHX8_1 = false
SHX9_1 = 5
SHX10_1 = 0
SHX11_1 = 2
SHX12_1 = "0.5"
SHX4_1[1] = SHX5_1
SHX4_1[2] = SHX6_1
SHX4_1[3] = SHX7_1
SHX4_1[4] = SHX8_1
SHX4_1[5] = SHX9_1
SHX4_1[6] = SHX10_1
SHX4_1[7] = SHX11_1
SHX4_1[8] = SHX12_1
SHX5_1 = {}
SHX6_1 = "Robbster"
SHX7_1 = "~b~BLUE TEAM"
SHX8_1 = ""
SHX9_1 = false
SHX10_1 = 5
SHX11_1 = 0
SHX12_1 = 2
SHX13_1 = "1.4"
SHX5_1[1] = SHX6_1
SHX5_1[2] = SHX7_1
SHX5_1[3] = SHX8_1
SHX5_1[4] = SHX9_1
SHX5_1[5] = SHX10_1
SHX5_1[6] = SHX11_1
SHX5_1[7] = SHX12_1
SHX5_1[8] = SHX13_1
SHX6_1 = {}
SHX7_1 = "Thomas"
SHX8_1 = "~b~BLUE TEAM"
SHX9_1 = ""
SHX10_1 = false
SHX11_1 = 7
SHX12_1 = 5
SHX13_1 = 0
SHX14_1 = "0.5"
SHX6_1[1] = SHX7_1
SHX6_1[2] = SHX8_1
SHX6_1[3] = SHX9_1
SHX6_1[4] = SHX10_1
SHX6_1[5] = SHX11_1
SHX6_1[6] = SHX12_1
SHX6_1[7] = SHX13_1
SHX6_1[8] = SHX14_1
SHX7_1 = {}
SHX8_1 = "Arthur"
SHX9_1 = "~r~RED TEAM"
SHX10_1 = ""
SHX11_1 = false
SHX12_1 = 5
SHX13_1 = 2
SHX14_1 = 0
SHX15_1 = "0.5"
SHX7_1[1] = SHX8_1
SHX7_1[2] = SHX9_1
SHX7_1[3] = SHX10_1
SHX7_1[4] = SHX11_1
SHX7_1[5] = SHX12_1
SHX7_1[6] = SHX13_1
SHX7_1[7] = SHX14_1
SHX7_1[8] = SHX15_1
SHX8_1 = {}
SHX9_1 = "Robbster"
SHX10_1 = "~b~BLUE TEAM"
SHX11_1 = ""
SHX12_1 = false
SHX13_1 = 5
SHX14_1 = 2
SHX15_1 = 0
SHX16_1 = "1.4"
SHX8_1[1] = SHX9_1
SHX8_1[2] = SHX10_1
SHX8_1[3] = SHX11_1
SHX8_1[4] = SHX12_1
SHX8_1[5] = SHX13_1
SHX8_1[6] = SHX14_1
SHX8_1[7] = SHX15_1
SHX8_1[8] = SHX16_1
SHX9_1 = {}
SHX10_1 = "Thomas"
SHX11_1 = "~b~BLUE TEAM"
SHX12_1 = ""
SHX13_1 = false
SHX14_1 = 7
SHX15_1 = 5
SHX16_1 = 0
SHX17_1 = "0.5"
SHX9_1[1] = SHX10_1
SHX9_1[2] = SHX11_1
SHX9_1[3] = SHX12_1
SHX9_1[4] = SHX13_1
SHX9_1[5] = SHX14_1
SHX9_1[6] = SHX15_1
SHX9_1[7] = SHX16_1
SHX9_1[8] = SHX17_1
SHX10_1 = {}
SHX11_1 = "Arthur"
SHX12_1 = "~r~RED TEAM"
SHX13_1 = ""
SHX14_1 = false
SHX15_1 = 5
SHX16_1 = 2
SHX17_1 = 0
SHX18_1 = "0.5"
SHX10_1[1] = SHX11_1
SHX10_1[2] = SHX12_1
SHX10_1[3] = SHX13_1
SHX10_1[4] = SHX14_1
SHX10_1[5] = SHX15_1
SHX10_1[6] = SHX16_1
SHX10_1[7] = SHX17_1
SHX10_1[8] = SHX18_1
SHX1_1[1] = SHX2_1
SHX1_1[2] = SHX3_1
SHX1_1[3] = SHX4_1
SHX1_1[4] = SHX5_1
SHX1_1[5] = SHX6_1
SHX1_1[6] = SHX7_1
SHX1_1[7] = SHX8_1
SHX1_1[8] = SHX9_1
SHX1_1[9] = SHX10_1
SHX0_1.rows = SHX1_1
SHX1_1 = CMG
SHX1_1 = SHX1_1.registerCommand
SHX2_1 = "leaderboardtest"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isDevMode
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.createLeaderboard
    SHX1_2 = SHX0_1
    SHX0_2 = SHX0_2(SHX1_2)
    SHX1_2 = Wait
    SHX2_2 = 1000
    SHX1_2(SHX2_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.closeLeaderboard
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
end
SHX4_1 = false
SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX1_1 = 1
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = {}
SHX3_1.columns = SHX4_1
SHX4_1 = {}
SHX3_1.rows = SHX4_1
SHX4_1 = false
SHX5_1 = -1
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.floor
  SHX2_2 = SHX0_2 / 1000
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2 * 1000
  SHX0_2 = SHX0_2 - SHX2_2
  SHX2_2 = math
  SHX2_2 = SHX2_2.floor
  SHX3_2 = SHX1_2 / 60
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX2_2 * 60
  SHX1_2 = SHX1_2 - SHX3_2
  SHX3_2 = string
  SHX3_2 = SHX3_2.format
  SHX4_2 = "%02d:%02d:%04d"
  SHX5_2 = SHX2_2
  SHX6_2 = SHX1_2
  SHX7_2 = SHX0_2
  return SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
end
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = "th"
  if 1 == SHX0_2 then
    SHX1_2 = "st"
  end
  if 2 == SHX0_2 then
    SHX1_2 = "nd"
  end
  if 3 == SHX0_2 then
    SHX1_2 = "rd"
  end
  SHX2_2 = tostring
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2 .. SHX3_2
  return SHX2_2
end
SHX8_1 = CMG
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX2_1
  SHX1_2[SHX0_2] = false
end
SHX8_1.closeLeaderboard = SHX9_1
SHX8_1 = CMG
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX1_2 = Scaleform
  SHX2_2 = "SC_LEADERBOARD"
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2.RunFunction
  SHX3_2 = "SET_DISPLAY_TYPE"
  SHX4_2 = {}
  SHX5_2 = 1
  SHX4_2[1] = SHX5_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX0_2.title
  if SHX2_2 then
    SHX2_2 = SHX0_2.title
    if SHX2_2 then
      goto SHX_LABEL_18
    end
  end
  SHX2_2 = "CMG RP Event"
  -- [FIX IF ERROR] Move ::SHX_LABEL_18:: outside nested blocks until all 'goto SHX_LABEL_18' can see it
  ::SHX_LABEL_18::
  SHX3_2 = SHX1_2.RunFunction
  SHX4_2 = "SET_MULTIPLAYER_TITLE"
  SHX5_2 = {}
  SHX6_2 = SHX2_2
  SHX5_2[1] = SHX6_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SHX1_2.RunFunction
  SHX4_2 = "SET_TITLE"
  SHX5_2 = SHX0_2.columns
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = ipairs
  SHX4_2 = SHX0_2.rows
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2[3]
    if "" ~= SHX9_2 then
      SHX10_2 = "XXX"
      SHX11_2 = SHX9_2
      SHX10_2 = SHX10_2 .. SHX11_2
      SHX9_2 = SHX10_2
    end
    SHX10_2 = SHX0_2.formatTime
    if SHX10_2 then
      SHX10_2 = SHX6_1
      SHX11_2 = SHX8_2[8]
      SHX10_2 = SHX10_2(SHX11_2)
      SHX11_2 = SHX1_2.RunFunction
      SHX12_2 = "SET_SLOT"
      SHX13_2 = {}
      SHX14_2 = SHX7_2 - 1
      SHX15_2 = 1
      SHX16_2 = SHX8_2[1]
      SHX17_2 = SHX8_2[2]
      SHX18_2 = SHX9_2
      SHX19_2 = SHX8_2[5]
      SHX20_2 = SHX8_2[6]
      SHX21_2 = SHX8_2[7]
      SHX22_2 = SHX10_2
      SHX13_2[1] = SHX14_2
      SHX13_2[2] = SHX15_2
      SHX13_2[3] = SHX16_2
      SHX13_2[4] = SHX17_2
      SHX13_2[5] = SHX18_2
      SHX13_2[6] = SHX19_2
      SHX13_2[7] = SHX20_2
      SHX13_2[8] = SHX21_2
      SHX13_2[9] = SHX22_2
      SHX11_2(SHX12_2, SHX13_2)
    else
      SHX10_2 = SHX1_2.RunFunction
      SHX11_2 = "SET_SLOT"
      SHX12_2 = {}
      SHX13_2 = SHX7_2 - 1
      SHX14_2 = 1
      SHX15_2 = SHX8_2[1]
      SHX16_2 = SHX8_2[2]
      SHX17_2 = SHX9_2
      SHX18_2 = SHX8_2[5]
      SHX19_2 = SHX8_2[6]
      SHX20_2 = SHX8_2[7]
      SHX21_2 = SHX8_2[8]
      SHX12_2[1] = SHX13_2
      SHX12_2[2] = SHX14_2
      SHX12_2[3] = SHX15_2
      SHX12_2[4] = SHX16_2
      SHX12_2[5] = SHX17_2
      SHX12_2[6] = SHX18_2
      SHX12_2[7] = SHX19_2
      SHX12_2[8] = SHX20_2
      SHX12_2[9] = SHX21_2
      SHX10_2(SHX11_2, SHX12_2)
    end
    SHX10_2 = SHX8_2[4]
    if SHX10_2 then
      SHX10_2 = SHX1_2.RunFunction
      SHX11_2 = "SET_SLOT_STATE"
      SHX12_2 = {}
      SHX13_2 = SHX7_2 - 1
      SHX14_2 = 2
      SHX15_2 = 1
      SHX12_2[1] = SHX13_2
      SHX12_2[2] = SHX14_2
      SHX12_2[3] = SHX15_2
      SHX10_2(SHX11_2, SHX12_2)
    else
      SHX10_2 = SHX1_2.RunFunction
      SHX11_2 = "SET_SLOT_STATE"
      SHX12_2 = {}
      SHX13_2 = SHX7_2 - 1
      SHX14_2 = 0
      SHX15_2 = 1
      SHX12_2[1] = SHX13_2
      SHX12_2[2] = SHX14_2
      SHX12_2[3] = SHX15_2
      SHX10_2(SHX11_2, SHX12_2)
    end
  end
  SHX3_2 = SHX1_1
  SHX3_2 = SHX3_2 + 1
  SHX1_1 = SHX3_2
  SHX3_2 = CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3
    SHX1_3 = SHX1_1
    SHX0_3 = SHX2_1
    SHX0_3[SHX1_3] = true
    while true do
      SHX1_3 = SHX1_1
      SHX0_3 = SHX2_1
      SHX0_3 = SHX0_3[SHX1_3]
      if not SHX0_3 then
        break
      end
      SHX0_3 = table
      SHX0_3 = SHX0_3.count
      SHX1_3 = SHX3_1.rows
      SHX0_3 = SHX0_3(SHX1_3)
      SHX1_3 = 1
      SHX2_3 = SHX0_3
      SHX3_3 = 1
      for SHX4_3 = SHX1_3, SHX2_3, SHX3_3 do
        SHX5_3 = SHX3_1.rows
        SHX5_3 = SHX5_3[SHX4_3]
        SHX6_3 = SHX5_3[3]
        if "" ~= SHX6_3 then
          SHX7_3 = "XXX"
          SHX8_3 = SHX6_3
          SHX7_3 = SHX7_3 .. SHX8_3
          SHX6_3 = SHX7_3
        end
        SHX7_3 = SHX5_3[1]
        SHX8_3 = SHX3_1.formatPlace
        if SHX8_3 then
          SHX8_3 = SHX7_1
          SHX9_3 = SHX7_3
          SHX8_3 = SHX8_3(SHX9_3)
          SHX7_3 = SHX8_3
        end
        SHX8_3 = SHX5_3[8]
        SHX9_3 = SHX3_1.formatTime
        if SHX9_3 then
          SHX9_3 = SHX6_1
          SHX10_3 = SHX8_3
          SHX9_3 = SHX9_3(SHX10_3)
          SHX8_3 = SHX9_3
        end
        SHX9_3 = SHX1_2.RunFunction
        SHX10_3 = "SET_SLOT"
        SHX11_3 = {}
        SHX12_3 = SHX4_3 - 1
        SHX13_3 = 1
        SHX14_3 = SHX7_3
        SHX15_3 = SHX5_3[2]
        SHX16_3 = SHX6_3
        SHX17_3 = SHX5_3[5]
        SHX18_3 = SHX5_3[6]
        SHX19_3 = SHX5_3[7]
        SHX20_3 = SHX8_3
        SHX11_3[1] = SHX12_3
        SHX11_3[2] = SHX13_3
        SHX11_3[3] = SHX14_3
        SHX11_3[4] = SHX15_3
        SHX11_3[5] = SHX16_3
        SHX11_3[6] = SHX17_3
        SHX11_3[7] = SHX18_3
        SHX11_3[8] = SHX19_3
        SHX11_3[9] = SHX20_3
        SHX9_3(SHX10_3, SHX11_3)
        SHX9_3 = SHX5_3[4]
        if SHX9_3 then
          SHX9_3 = SHX1_2.RunFunction
          SHX10_3 = "SET_SLOT_STATE"
          SHX11_3 = {}
          SHX12_3 = SHX4_3 - 1
          SHX13_3 = 2
          SHX14_3 = 1
          SHX11_3[1] = SHX12_3
          SHX11_3[2] = SHX13_3
          SHX11_3[3] = SHX14_3
          SHX9_3(SHX10_3, SHX11_3)
        else
          SHX9_3 = SHX1_2.RunFunction
          SHX10_3 = "SET_SLOT_STATE"
          SHX11_3 = {}
          SHX12_3 = SHX4_3 - 1
          SHX13_3 = 0
          SHX14_3 = 1
          SHX11_3[1] = SHX12_3
          SHX11_3[2] = SHX13_3
          SHX11_3[3] = SHX14_3
          SHX9_3(SHX10_3, SHX11_3)
        end
        SHX9_3 = SHX5_1
        if SHX9_3 > 0 then
          SHX9_3 = SHX5_1
          if SHX4_3 >= SHX9_3 then
            break
          end
        end
      end
      SHX1_3 = SHX1_2.Render2D
      SHX1_3()
      SHX1_3 = Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
  end
  SHX3_2(SHX4_2)
  SHX3_2 = SHX1_1
  return SHX3_2
end
SHX8_1.createLeaderboard = SHX9_1
SHX8_1 = RegisterNetEvent
SHX9_1 = "a8ac0d4162"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX3_1 = SHX0_2
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = CMG
function SHX9_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX3_2 = nil
  SHX4_2 = pairs
  SHX5_2 = SHX3_1.rows
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX9_2.playerSrc
    if SHX10_2 == SHX0_2 then
      SHX3_2 = SHX8_2
    end
  end
  if -1 == SHX0_2 then
    SHX4_2 = pairs
    SHX5_2 = SHX3_1.rows
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
      SHX10_2 = SHX3_1.rows
      SHX10_2 = SHX10_2[SHX8_2]
      SHX10_2[SHX1_2] = SHX2_2
    end
  elseif SHX3_2 then
    if "+1" == SHX2_2 then
      SHX4_2 = SHX3_1.rows
      SHX4_2 = SHX4_2[SHX3_2]
      SHX5_2 = SHX3_1.rows
      SHX5_2 = SHX5_2[SHX3_2]
      SHX5_2 = SHX5_2[SHX1_2]
      SHX5_2 = SHX5_2 + 1
      SHX4_2[SHX1_2] = SHX5_2
      if 6 == SHX1_2 or 5 == SHX1_2 then
        SHX4_2 = SHX3_1.rows
        SHX4_2 = SHX4_2[SHX3_2]
        SHX4_2 = SHX4_2[6]
        SHX5_2 = type
        SHX6_2 = SHX4_2
        SHX5_2 = SHX5_2(SHX6_2)
        if "string" == SHX5_2 then
          SHX5_2 = print
          SHX6_2 = "[Error:updateScoreboard] Death is somehow a string, value is"
          SHX7_2 = SHX4_2
          SHX8_2 = "playerSrc,column,value ="
          SHX9_2 = SHX0_2
          SHX10_2 = SHX1_2
          SHX11_2 = SHX2_2
          SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
          SHX5_2 = print
          SHX6_2 = "leaderboard dump"
          SHX7_2 = dump
          SHX8_2 = SHX3_1
          SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX7_2(SHX8_2)
          SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        end
        if 0 == SHX4_2 then
          SHX4_2 = 1
        end
        SHX5_2 = tostring
        SHX6_2 = math
        SHX6_2 = SHX6_2.floor
        SHX7_2 = SHX3_1.rows
        SHX7_2 = SHX7_2[SHX3_2]
        SHX7_2 = SHX7_2[5]
        SHX7_2 = SHX7_2 / SHX4_2
        SHX7_2 = SHX7_2 * 100
        SHX6_2 = SHX6_2(SHX7_2)
        SHX6_2 = SHX6_2 / 100
        SHX5_2 = SHX5_2(SHX6_2)
        SHX6_2 = SHX3_1.columns
        SHX6_2 = SHX6_2[4]
        if "KDR" == SHX6_2 then
          SHX6_2 = SHX3_1.rows
          SHX6_2 = SHX6_2[SHX3_2]
          SHX6_2[7] = SHX5_2
        else
          SHX6_2 = SHX3_1.columns
          SHX6_2 = SHX6_2[5]
          if "KDR" == SHX6_2 then
            SHX6_2 = SHX3_1.rows
            SHX6_2 = SHX6_2[SHX3_2]
            SHX6_2[8] = SHX5_2
          end
        end
      end
    else
      SHX4_2 = SHX3_1.rows
      SHX4_2 = SHX4_2[SHX3_2]
      SHX4_2[SHX1_2] = SHX2_2
    end
    SHX4_2 = SHX3_1.sortAscending
    if SHX4_2 then
      SHX4_2 = table
      SHX4_2 = SHX4_2.sort
      SHX5_2 = SHX3_1.rows
      function SHX6_2(SHX0_3, SHX1_3)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX2_3, SHX3_3
        SHX2_3 = SHX3_1.sortColumn
        if not SHX2_3 then
          SHX2_3 = 5
        end
        SHX2_3 = SHX0_3[SHX2_3]
        SHX3_3 = SHX3_1.sortColumn
        if not SHX3_3 then
          SHX3_3 = 5
        end
        SHX3_3 = SHX1_3[SHX3_3]
        SHX2_3 = SHX2_3 < SHX3_3
        return SHX2_3
      end
      SHX4_2(SHX5_2, SHX6_2)
    else
      SHX4_2 = table
      SHX4_2 = SHX4_2.sort
      SHX5_2 = SHX3_1.rows
      function SHX6_2(SHX0_3, SHX1_3)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX2_3, SHX3_3
        SHX2_3 = SHX3_1.sortColumn
        if not SHX2_3 then
          SHX2_3 = 5
        end
        SHX2_3 = SHX0_3[SHX2_3]
        SHX3_3 = SHX3_1.sortColumn
        if not SHX3_3 then
          SHX3_3 = 5
        end
        SHX3_3 = SHX1_3[SHX3_3]
        SHX2_3 = SHX2_3 > SHX3_3
        return SHX2_3
      end
      SHX4_2(SHX5_2, SHX6_2)
    end
  else
    SHX4_2 = print
    SHX5_2 = "error: CMG:updateScoreboard couldn't find row with values"
    SHX6_2 = SHX0_2
    SHX7_2 = SHX1_2
    SHX8_2 = SHX2_2
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  end
end
SHX8_1.updateScoreboard = SHX9_1
SHX8_1 = RegisterNetEvent
SHX9_1 = "35a2f746a5"
function SHX10_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.updateScoreboard
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = CMG
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX4_1 = SHX0_2
end
SHX8_1.setPlayerCanOpenLeaderboard = SHX9_1
SHX8_1 = CMG
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX4_1
  return SHX0_2
end
SHX8_1.canPlayerOpenLeaderboard = SHX9_1
SHX8_1 = CMG
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX1_2 = {}
  SHX0_2.columns = SHX1_2
  SHX1_2 = {}
  SHX0_2.rows = SHX1_2
  SHX3_1 = SHX0_2
  SHX0_2 = -1
  SHX5_1 = SHX0_2
end
SHX8_1.clearLeaderboardData = SHX9_1
SHX8_1 = CMG
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = table
  SHX0_2 = SHX0_2.count
  SHX1_2 = SHX3_1.rows
  SHX0_2 = SHX0_2(SHX1_2)
  SHX0_2 = SHX0_2 > 0
  return SHX0_2
end
SHX8_1.isLeaderboardSetup = SHX9_1
SHX8_1 = CMG
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = pairs
  SHX2_2 = SHX3_1.rows
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.playerSrc
    SHX8_2 = SHX0_2.playerSrc
    if SHX7_2 == SHX8_2 then
      return
    end
  end
  SHX1_2 = table
  SHX1_2 = SHX1_2.insert
  SHX2_2 = SHX3_1.rows
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX8_1.addPlayerToLeaderboard = SHX9_1
SHX8_1 = CMG
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = SHX3_1.rows
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.playerSrc
    if SHX7_2 == SHX0_2 then
      SHX7_2 = table
      SHX7_2 = SHX7_2.remove
      SHX8_2 = SHX3_1.rows
      SHX9_2 = SHX5_2
      SHX7_2(SHX8_2, SHX9_2)
      break
    end
  end
end
SHX8_1.removePlayerFromLeaderboard = SHX9_1
SHX8_1 = false
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX4_1
  if SHX0_2 then
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 0
    SHX2_2 = 212
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = SHX8_1
      if not SHX0_2 then
        SHX0_2 = true
        SHX8_1 = SHX0_2
        SHX0_2 = Citizen
        SHX0_2 = SHX0_2.CreateThreadNow
        function SHX1_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3, SHX2_3
          SHX0_3 = CMG
          SHX0_3 = SHX0_3.createLeaderboard
          SHX1_3 = SHX3_1
          SHX0_3(SHX1_3)
          while true do
            SHX0_3 = SHX4_1
            if not SHX0_3 then
              break
            end
            SHX0_3 = IsControlPressed
            SHX1_3 = 0
            SHX2_3 = 212
            SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
            if not SHX0_3 then
              break
            end
            SHX0_3 = Wait
            SHX1_3 = 0
            SHX0_3(SHX1_3)
          end
          SHX0_3 = CMG
          SHX0_3 = SHX0_3.closeLeaderboard
          SHX1_3 = SHX1_1
          SHX0_3(SHX1_3)
          SHX0_3 = false
          SHX8_1 = SHX0_3
        end
        SHX0_2(SHX1_2)
      end
    end
  end
end
SHX10_1 = CMG
SHX10_1 = SHX10_1.createThreadOnTick
SHX11_1 = SHX9_1
SHX12_1 = "Event Leaderboard"
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = CMG
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX5_1 = SHX0_2
end
SHX10_1.setMaximumLeaderboardRows = SHX11_1
