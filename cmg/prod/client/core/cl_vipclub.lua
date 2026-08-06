-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "vipclubmenu"
SHX2_1 = "mainmenu"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateMenu
SHX4_1 = ""
SHX5_1 = ""
SHX6_1 = CMG
SHX6_1 = SHX6_1.getRageUIMenuWidth
SHX6_1 = SHX6_1()
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuHeight
SHX7_1 = SHX7_1()
SHX8_1 = "cmg_club"
SHX9_1 = "cmg_club"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX0_1 = RMenu
SHX1_1 = SHX0_1
SHX0_1 = SHX0_1.Get
SHX2_1 = "vipclubmenu"
SHX3_1 = "mainmenu"
SHX0_1 = SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX1_1 = SHX0_1
SHX0_1 = SHX0_1.SetSubtitle
SHX2_1 = "~b~CMG Club"
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "vipclubmenu"
SHX2_1 = "managesubscription"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateSubMenu
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "vipclubmenu"
SHX7_1 = "mainmenu"
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = ""
SHX6_1 = ""
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1 = SHX8_1()
SHX9_1 = "cmg_club"
SHX10_1 = "cmg_club"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX0_1 = RMenu
SHX1_1 = SHX0_1
SHX0_1 = SHX0_1.Get
SHX2_1 = "vipclubmenu"
SHX3_1 = "managesubscription"
SHX0_1 = SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX1_1 = SHX0_1
SHX0_1 = SHX0_1.SetSubtitle
SHX2_1 = "~b~CMG Club"
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "vipclubmenu"
SHX2_1 = "manageperks"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateSubMenu
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "vipclubmenu"
SHX7_1 = "mainmenu"
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = ""
SHX6_1 = ""
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1 = SHX8_1()
SHX9_1 = "cmg_club"
SHX10_1 = "cmg_club"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX0_1 = RMenu
SHX1_1 = SHX0_1
SHX0_1 = SHX0_1.Get
SHX2_1 = "vipclubmenu"
SHX3_1 = "manageperks"
SHX0_1 = SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX1_1 = SHX0_1
SHX0_1 = SHX0_1.SetSubtitle
SHX2_1 = "~b~CMG Club"
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "vipclubmenu"
SHX2_1 = "deathsounds"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateSubMenu
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "vipclubmenu"
SHX7_1 = "manageperks"
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = ""
SHX6_1 = ""
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1 = SHX8_1()
SHX9_1 = "cmg_club"
SHX10_1 = "cmg_club"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX0_1 = RMenu
SHX1_1 = SHX0_1
SHX0_1 = SHX0_1.Get
SHX2_1 = "vipclubmenu"
SHX3_1 = "deathsounds"
SHX0_1 = SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX1_1 = SHX0_1
SHX0_1 = SHX0_1.SetSubtitle
SHX2_1 = "~b~CMG Club"
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "vipclubmenu"
SHX2_1 = "vehicleextras"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateSubMenu
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "vipclubmenu"
SHX7_1 = "manageperks"
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = ""
SHX6_1 = ""
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1 = SHX8_1()
SHX9_1 = "cmg_club"
SHX10_1 = "cmg_club"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX0_1 = RMenu
SHX1_1 = SHX0_1
SHX0_1 = SHX0_1.Get
SHX2_1 = "vipclubmenu"
SHX3_1 = "vehicleextras"
SHX0_1 = SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX1_1 = SHX0_1
SHX0_1 = SHX0_1.SetSubtitle
SHX2_1 = "~b~CMG Club"
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "vipclubmenu"
SHX2_1 = "weather_time_manager"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateSubMenu
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "vipclubmenu"
SHX7_1 = "manageperks"
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = ""
SHX6_1 = ""
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1 = SHX8_1()
SHX9_1 = "cmg_club"
SHX10_1 = "cmg_club"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX0_1 = RMenu
SHX1_1 = SHX0_1
SHX0_1 = SHX0_1.Get
SHX2_1 = "vipclubmenu"
SHX3_1 = "weather_time_manager"
SHX0_1 = SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX1_1 = SHX0_1
SHX0_1 = SHX0_1.SetSubtitle
SHX2_1 = "~b~CMG Club"
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = {}
SHX0_1.hoursOfPlus = 0
SHX0_1.hoursOfPlatinum = 0
SHX0_1.hoursOfPlusGame = 0
SHX0_1.hoursOfPlatinumGame = 0
SHX1_1 = false
SHX2_1 = false
SHX3_1 = {}
SHX4_1 = 0
SHX5_1 = 0
SHX6_1 = 23
SHX7_1 = 1
for SHX8_1 = SHX5_1, SHX6_1, SHX7_1 do
  SHX3_1[SHX8_1] = SHX8_1
end
SHX5_1 = {}
SHX6_1 = 0
SHX7_1 = 59
SHX8_1 = 1
for SHX9_1 = SHX6_1, SHX7_1, SHX8_1 do
  SHX5_1[SHX9_1] = SHX9_1
end
SHX6_1 = 0
SHX7_1 = {}
SHX8_1 = 0
SHX9_1 = 59
SHX10_1 = 1
for SHX11_1 = SHX8_1, SHX9_1, SHX10_1 do
  SHX7_1[SHX11_1] = SHX11_1
end
SHX8_1 = 0
SHX9_1 = "cmg_club_time"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isPlusClub
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isPlatClub
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      return
    end
  end
  SHX0_2 = SetResourceKvp
  SHX1_2 = SHX9_1
  SHX2_2 = json
  SHX2_2 = SHX2_2.encode
  SHX3_2 = {}
  SHX4_2 = SHX1_1
  SHX3_2.override = SHX4_2
  SHX4_2 = SHX2_1
  SHX3_2.frozen = SHX4_2
  SHX4_2 = SHX4_1
  SHX3_2.hourIndex = SHX4_2
  SHX4_2 = SHX6_1
  SHX3_2.minuteIndex = SHX4_2
  SHX4_2 = SHX8_1
  SHX3_2.secondIndex = SHX4_2
  SHX2_2, SHX3_2, SHX4_2 = SHX2_2(SHX3_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = GetResourceKvpString
  SHX1_2 = SHX9_1
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    return
  end
  SHX1_2 = json
  SHX1_2 = SHX1_2.decode
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = type
  SHX3_2 = SHX1_2.hourIndex
  SHX2_2 = SHX2_2(SHX3_2)
  if "number" == SHX2_2 then
    SHX2_2 = SHX1_2.hourIndex
    if SHX2_2 >= 0 then
      SHX2_2 = SHX1_2.hourIndex
      if SHX2_2 <= 23 then
        SHX2_2 = SHX1_2.hourIndex
        SHX4_1 = SHX2_2
      end
    end
  end
  SHX2_2 = type
  SHX3_2 = SHX1_2.minuteIndex
  SHX2_2 = SHX2_2(SHX3_2)
  if "number" == SHX2_2 then
    SHX2_2 = SHX1_2.minuteIndex
    if SHX2_2 >= 0 then
      SHX2_2 = SHX1_2.minuteIndex
      if SHX2_2 <= 59 then
        SHX2_2 = SHX1_2.minuteIndex
        SHX6_1 = SHX2_2
      end
    end
  end
  SHX2_2 = type
  SHX3_2 = SHX1_2.secondIndex
  SHX2_2 = SHX2_2(SHX3_2)
  if "number" == SHX2_2 then
    SHX2_2 = SHX1_2.secondIndex
    if SHX2_2 >= 0 then
      SHX2_2 = SHX1_2.secondIndex
      if SHX2_2 <= 59 then
        SHX2_2 = SHX1_2.secondIndex
        SHX8_1 = SHX2_2
      end
    end
  end
  SHX2_2 = SHX1_2.frozen
  if true == SHX2_2 then
    SHX2_2 = true
    SHX2_1 = SHX2_2
  else
    SHX2_2 = SHX1_2.frozen
    if false == SHX2_2 then
      SHX2_2 = false
      SHX2_1 = SHX2_2
    end
  end
  SHX2_2 = SHX1_2.override
  if true == SHX2_2 then
    SHX2_2 = true
    SHX1_1 = SHX2_2
  else
    SHX2_2 = SHX1_2.override
    if false == SHX2_2 then
      SHX2_2 = false
      SHX1_1 = SHX2_2
    end
  end
end
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isPlusClub
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isPlatClub
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      return
    end
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setTimeFrozen
  SHX1_2 = SHX2_1
  SHX0_2(SHX1_2)
  SHX0_2 = SHX1_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.overrideTime
    SHX2_2 = SHX4_1
    SHX1_2 = SHX3_1
    SHX1_2 = SHX1_2[SHX2_2]
    SHX3_2 = SHX6_1
    SHX2_2 = SHX5_1
    SHX2_2 = SHX2_2[SHX3_2]
    SHX4_2 = SHX8_1
    SHX3_2 = SHX7_1
    SHX3_2 = SHX3_2[SHX4_2]
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  end
end
SHX13_1 = CMG
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1.hoursOfPlus
  if not (SHX0_2 > 0) then
    SHX0_2 = SHX0_1.hoursOfPlusGame
    if not (SHX0_2 > 0) then
      goto SHX_LABEL_10
    end
  end
  SHX0_2 = true
  return SHX0_2
  goto SHX_LABEL_12
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX0_2 = false
  return SHX0_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
end
SHX13_1.isPlusClub = SHX14_1
SHX13_1 = CMG
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1.hoursOfPlatinum
  if not (SHX0_2 > 0) then
    SHX0_2 = SHX0_1.hoursOfPlatinumGame
    if not (SHX0_2 > 0) then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.hasClientPermission
      SHX1_2 = "vipclub.free"
      SHX0_2 = SHX0_2(SHX1_2)
      if not SHX0_2 then
        goto SHX_LABEL_16
      end
    end
  end
  SHX0_2 = true
  return SHX0_2
  goto SHX_LABEL_18
  -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
  ::SHX_LABEL_16::
  SHX0_2 = false
  return SHX0_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_18:: outside nested blocks until all 'goto SHX_LABEL_18' can see it
  ::SHX_LABEL_18::
end
SHX13_1.isPlatClub = SHX14_1
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.CloseAll
  SHX0_2()
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "vipclubmenu"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Visible
  SHX3_2 = RMenu
  SHX4_2 = SHX3_2
  SHX3_2 = SHX3_2.Get
  SHX5_2 = "vipclubmenu"
  SHX6_2 = "mainmenu"
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = not SHX2_2
  SHX0_2(SHX1_2, SHX2_2)
end
SHX14_1 = RegisterCommand
SHX15_1 = "cmgclub"
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX13_1
  SHX0_2()
end
SHX17_1 = false
SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX14_1 = {}
SHX15_1 = {}
SHX15_1.checked = true
SHX15_1.soundId = "playDead"
SHX14_1.CMG = SHX15_1
SHX15_1 = {}
SHX15_1.checked = false
SHX15_1.soundId = "fortnite_death"
SHX14_1.Fortnite = SHX15_1
SHX15_1 = {}
SHX15_1.checked = false
SHX15_1.soundId = "roblox_death"
SHX14_1.Roblox = SHX15_1
SHX15_1 = {}
SHX15_1.checked = false
SHX15_1.soundId = "minecraft_death"
SHX14_1.Minecraft = SHX15_1
SHX15_1 = {}
SHX15_1.checked = false
SHX15_1.soundId = "pacman_death"
SHX14_1["Pac-Man"] = SHX15_1
SHX15_1 = {}
SHX15_1.checked = false
SHX15_1.soundId = "mario_death"
SHX14_1.Mario = SHX15_1
SHX15_1 = {}
SHX15_1.checked = false
SHX15_1.soundId = "csgo_death"
SHX14_1["CS:GO"] = SHX15_1
SHX15_1 = false
SHX16_1 = false
SHX17_1 = Citizen
SHX17_1 = SHX17_1.CreateThread
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX11_1
  SHX0_2()
  SHX0_2 = GetResourceKvpString
  SHX1_2 = "cmg_codhitmarkersounds"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = "false"
  end
  if "false" == SHX0_2 then
    SHX1_2 = false
    SHX15_1 = SHX1_2
    SHX1_2 = TriggerEvent
    SHX2_2 = "71e40f05bd"
    SHX1_2(SHX2_2)
  else
    SHX1_2 = true
    SHX15_1 = SHX1_2
    SHX1_2 = TriggerEvent
    SHX2_2 = "81a637c0d3"
    SHX1_2(SHX2_2)
  end
  SHX1_2 = GetResourceKvpString
  SHX2_2 = "cmg_killlistsetting"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = "false"
  end
  if "false" == SHX1_2 then
    SHX2_2 = false
    SHX16_1 = SHX2_2
  else
    SHX2_2 = true
    SHX16_1 = SHX2_2
  end
end
SHX17_1(SHX18_1)
SHX17_1 = AddEventHandler
SHX18_1 = "CMG:onClientSpawn"
function SHX19_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  if SHX1_2 then
    SHX2_2 = Wait
    SHX3_2 = 5000
    SHX2_2(SHX3_2)
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getDeathSound
    SHX2_2 = SHX2_2()
    SHX3_2 = "playDead"
    SHX4_2 = pairs
    SHX5_2 = SHX14_1
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
      SHX10_2 = SHX9_2.soundId
      if SHX10_2 == SHX2_2 then
        SHX3_2 = SHX8_2
      end
    end
    SHX4_2 = pairs
    SHX5_2 = SHX14_1
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
      if SHX3_2 ~= SHX8_2 then
        SHX9_2.checked = false
      else
        SHX9_2.checked = true
      end
    end
  end
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = CMG
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isPlusClub
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isPlatClub
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      goto SHX_LABEL_16
    end
  end
  SHX1_2 = SetResourceKvp
  SHX2_2 = "cmg_deathsound"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
  goto SHX_LABEL_20
  -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
  ::SHX_LABEL_16::
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.notify
  SHX2_2 = "~r~Cannot change deathsound, not a valid CMG Plus or Platinum subscriber."
  SHX1_2(SHX2_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
  ::SHX_LABEL_20::
end
SHX17_1.setDeathSound = SHX18_1
SHX17_1 = CMG
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isPlusClub
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isPlatClub
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      goto SHX_LABEL_26
    end
  end
  SHX0_2 = GetResourceKvpString
  SHX1_2 = "cmg_deathsound"
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "string" == SHX1_2 and "" ~= SHX0_2 then
    return SHX0_2
  else
    SHX1_2 = "playDead"
    return SHX1_2
    goto SHX_LABEL_28
    -- [FIX IF ERROR] Move ::SHX_LABEL_26:: outside nested blocks until all 'goto SHX_LABEL_26' can see it
    ::SHX_LABEL_26::
    SHX0_2 = "playDead"
    return SHX0_2
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_28:: outside nested blocks until all 'goto SHX_LABEL_28' can see it
  ::SHX_LABEL_28::
end
SHX17_1.getDeathSound = SHX18_1
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SendNUIMessage
  SHX2_2 = {}
  SHX2_2.transactionType = SHX0_2
  SHX1_2(SHX2_2)
end
SHX18_1 = RageUI
SHX18_1 = SHX18_1.CreateWhile
SHX19_1 = 1.0
SHX20_1 = RMenu
SHX21_1 = SHX20_1
SHX20_1 = SHX20_1.Get
SHX22_1 = "vipclubmenu"
SHX23_1 = "mainmenu"
SHX20_1 = SHX20_1(SHX21_1, SHX22_1, SHX23_1)
SHX21_1 = nil
function SHX22_1()
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
  SHX3_2 = "vipclubmenu"
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
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Manage Subscription"
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
      
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "vipclubmenu"
    SHX9_3 = "managesubscription"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.isPlusClub
    SHX0_3 = SHX0_3()
    if not SHX0_3 then
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.isPlatClub
      SHX0_3 = SHX0_3()
      if not SHX0_3 then
        goto SHX_LABEL_41
      end
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Manage Perks"
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
      
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "vipclubmenu"
    SHX9_3 = "manageperks"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    -- [FIX IF ERROR] Move ::SHX_LABEL_41:: outside nested blocks until all 'goto SHX_LABEL_41' can see it
    ::SHX_LABEL_41::
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
  SHX3_2 = "vipclubmenu"
  SHX4_2 = "managesubscription"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.hasClientPermission
    SHX1_3 = "vipclub.free"
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 then
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.isPlatClub
      SHX0_3 = SHX0_3()
      if SHX0_3 then
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Separator
        SHX1_3 = "~g~Platinum perks enabled due to staff rank!"
        SHX0_3(SHX1_3)
      end
    end
    SHX0_3 = ""
    SHX1_3 = SHX0_1.hoursOfPlus
    if SHX1_3 >= 10 then
      SHX0_3 = "~g~"
    else
      SHX1_3 = SHX0_1.hoursOfPlus
      if SHX1_3 < 10 then
        SHX1_3 = SHX0_1.hoursOfPlus
        if SHX1_3 > 3 then
          SHX0_3 = "~y~"
      end
      else
        SHX0_3 = "~r~"
      end
    end
    SHX1_3 = SHX0_1.hoursOfPlatinum
    if SHX1_3 >= 10 then
      SHX0_3 = "~g~"
    else
      SHX1_3 = SHX0_1.hoursOfPlatinum
      if SHX1_3 < 10 then
        SHX1_3 = SHX0_1.hoursOfPlatinum
        if SHX1_3 > 3 then
          SHX0_3 = "~y~"
      end
      else
        SHX0_3 = "~r~"
      end
    end
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Separator
    SHX2_3 = "Days remaining of Platinum Subscription: "
    SHX3_3 = SHX0_3
    SHX4_3 = math
    SHX4_3 = SHX4_3.floor
    SHX5_3 = SHX0_1.hoursOfPlatinum
    SHX5_3 = SHX5_3 / 24
    SHX5_3 = SHX5_3 * 100
    SHX4_3 = SHX4_3(SHX5_3)
    SHX4_3 = SHX4_3 / 100
    SHX5_3 = " days."
    SHX2_3 = SHX2_3 .. SHX3_3 .. SHX4_3 .. SHX5_3
    SHX1_3(SHX2_3)
    SHX1_3 = SHX0_1.hoursOfPlusGame
    if SHX1_3 >= 10 then
      SHX0_3 = "~g~"
    else
      SHX1_3 = SHX0_1.hoursOfPlusGame
      if SHX1_3 < 10 then
        SHX1_3 = SHX0_1.hoursOfPlusGame
        if SHX1_3 > 3 then
          SHX0_3 = "~y~"
      end
      else
        SHX0_3 = "~r~"
      end
    end
    SHX1_3 = SHX0_1.hoursOfPlatinumGame
    if SHX1_3 >= 10 then
      SHX0_3 = "~g~"
    else
      SHX1_3 = SHX0_1.hoursOfPlatinumGame
      if SHX1_3 < 10 then
        SHX1_3 = SHX0_1.hoursOfPlatinumGame
        if SHX1_3 > 3 then
          SHX0_3 = "~y~"
      end
      else
        SHX0_3 = "~r~"
      end
    end
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Separator
    SHX2_3 = "Days remaining of Platinum Rewards: "
    SHX3_3 = SHX0_3
    SHX4_3 = math
    SHX4_3 = SHX4_3.floor
    SHX5_3 = SHX0_1.hoursOfPlatinumGame
    SHX5_3 = SHX5_3 / 24
    SHX5_3 = SHX5_3 * 100
    SHX4_3 = SHX4_3(SHX5_3)
    SHX4_3 = SHX4_3 / 100
    SHX5_3 = " days."
    SHX2_3 = SHX2_3 .. SHX3_3 .. SHX4_3 .. SHX5_3
    SHX1_3(SHX2_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Separator
    SHX2_3 = "---"
    SHX1_3(SHX2_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Sell Platinum Subscription days."
    SHX3_3 = "~r~If you have already claimed your weekly kit, the first 7 of your subscription days may not be re-sold."
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
        SHX3_4 = tCMG
        SHX3_4 = SHX3_4.isInGreenzone
        SHX4_4 = false
        SHX3_4 = SHX3_4(SHX4_4)
        if SHX3_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "d9fb371b48"
          SHX5_4 = "Platinum"
          SHX3_4(SHX4_4, SHX5_4)
        else
          SHX3_4 = notify
          SHX4_4 = "~r~You must be in a greenzone to sell."
          SHX3_4(SHX4_4)
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
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "vipclubmenu"
  SHX4_2 = "manageperks"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Custom Death Sounds"
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
      
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "vipclubmenu"
    SHX9_3 = "deathsounds"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Vehicle Extras"
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
      
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "vipclubmenu"
    SHX9_3 = "vehicleextras"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Claim Weekly Kit"
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
        SHX3_4 = globalInPrison
        if not SHX3_4 then
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.isHandcuffed
          SHX3_4 = SHX3_4()
          if not SHX3_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "43b7dcfedd"
            SHX3_4(SHX4_4)
        end
        else
          SHX3_4 = notify
          SHX4_4 = "~r~You can not redeem a kit whilst in custody."
          SHX3_4(SHX4_4)
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    function SHX0_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4, SHX2_4, SHX3_4
      SHX0_4 = TriggerEvent
      SHX1_4 = "81a637c0d3"
      SHX0_4(SHX1_4)
      SHX0_4 = true
      SHX15_1 = SHX0_4
      SHX0_4 = CMG
      SHX0_4 = SHX0_4.setCODHitMarkerSetting
      SHX1_4 = SHX15_1
      SHX0_4(SHX1_4)
      SHX0_4 = tCMG
      SHX0_4 = SHX0_4.notify
      SHX1_4 = "~y~COD Hitmarkers now set to "
      SHX2_4 = tostring
      SHX3_4 = SHX15_1
      SHX2_4 = SHX2_4(SHX3_4)
      SHX1_4 = SHX1_4 .. SHX2_4
      SHX0_4(SHX1_4)
    end
    function SHX1_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4, SHX2_4, SHX3_4
      SHX0_4 = TriggerEvent
      SHX1_4 = "71e40f05bd"
      SHX0_4(SHX1_4)
      SHX0_4 = false
      SHX15_1 = SHX0_4
      SHX0_4 = CMG
      SHX0_4 = SHX0_4.setCODHitMarkerSetting
      SHX1_4 = SHX15_1
      SHX0_4(SHX1_4)
      SHX0_4 = tCMG
      SHX0_4 = SHX0_4.notify
      SHX1_4 = "~y~COD Hitmarkers now set to "
      SHX2_4 = tostring
      SHX3_4 = SHX15_1
      SHX2_4 = SHX2_4(SHX3_4)
      SHX1_4 = SHX1_4 .. SHX2_4
      SHX0_4(SHX1_4)
    end
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.Checkbox
    SHX3_3 = "Enable COD Hitmarkers"
    SHX4_3 = "~g~This adds 'hit marker' sound and image when shooting another player."
    SHX5_3 = SHX15_1
    SHX6_3 = {}
    SHX7_3 = RageUI
    SHX7_3 = SHX7_3.CheckboxStyle
    SHX7_3 = SHX7_3.Car
    SHX6_3.Style = SHX7_3
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
    end
    SHX8_3 = SHX0_3
    SHX9_3 = SHX1_3
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.Checkbox
    SHX3_3 = "Enable Kill List"
    SHX4_3 = "~g~This adds a kill list below your crosshair when you kill a player."
    SHX5_3 = SHX16_1
    SHX6_3 = {}
    SHX7_3 = RageUI
    SHX7_3 = SHX7_3.CheckboxStyle
    SHX7_3 = SHX7_3.Car
    SHX6_3.Style = SHX7_3
    function SHX7_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    function SHX8_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
      SHX0_4 = true
      SHX16_1 = SHX0_4
      SHX0_4 = CMG
      SHX0_4 = SHX0_4.setKillListSetting
      SHX1_4 = SHX16_1
      SHX0_4(SHX1_4)
    end
    function SHX9_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
      SHX0_4 = false
      SHX16_1 = SHX0_4
      SHX0_4 = CMG
      SHX0_4 = SHX0_4.setKillListSetting
      SHX1_4 = SHX16_1
      SHX0_4(SHX1_4)
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Time Editor"
    SHX4_3 = ""
    SHX5_3 = {}
    SHX5_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX6_3 = true
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
    end
    SHX8_3 = RMenu
    SHX9_3 = SHX8_3
    SHX8_3 = SHX8_3.Get
    SHX10_3 = "vipclubmenu"
    SHX11_3 = "weather_time_manager"
    SHX8_3, SHX9_3, SHX10_3, SHX11_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3)
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
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
  SHX3_2 = "vipclubmenu"
  SHX4_2 = "deathsounds"
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
    SHX1_3 = SHX14_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = RageUI
      SHX6_3 = SHX6_3.Checkbox
      SHX7_3 = SHX4_3
      SHX8_3 = ""
      SHX9_3 = SHX5_3.checked
      SHX10_3 = {}
      function SHX11_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      function SHX12_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4
        SHX0_4 = pairs
        SHX1_4 = SHX14_1
        SHX0_4, SHX1_4, SHX2_4, SHX3_4 = SHX0_4(SHX1_4)
        for SHX4_4, SHX5_4 in SHX0_4, SHX1_4, SHX2_4, SHX3_4 do
          SHX5_4.checked = false
        end
        SHX5_3.checked = true
        SHX0_4 = SHX17_1
        SHX1_4 = SHX5_3.soundId
        SHX0_4(SHX1_4)
        SHX0_4 = CMG
        SHX0_4 = SHX0_4.setDeathSound
        SHX1_4 = SHX5_3.soundId
        SHX0_4(SHX1_4)
      end
      function SHX13_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
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
  SHX3_2 = "vipclubmenu"
  SHX4_2 = "vehicleextras"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getPlayerVehicle
    SHX0_3 = SHX0_3()
    if 0 == SHX0_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.Separator
      SHX2_3 = "~r~Enter a vehicle to be able to use this menu"
      SHX1_3(SHX2_3)
      return
    end
    SHX1_3 = SetVehicleAutoRepairDisabled
    SHX2_3 = SHX0_3
    SHX3_3 = true
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = 1
    SHX2_3 = 99
    SHX3_3 = 1
    for SHX4_3 = SHX1_3, SHX2_3, SHX3_3 do
      SHX5_3 = DoesExtraExist
      SHX6_3 = SHX0_3
      SHX7_3 = SHX4_3
      SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
      if SHX5_3 then
        SHX5_3 = RageUI
        SHX5_3 = SHX5_3.Checkbox
        SHX6_3 = "Extra "
        SHX7_3 = SHX4_3
        SHX6_3 = SHX6_3 .. SHX7_3
        SHX7_3 = ""
        SHX8_3 = IsVehicleExtraTurnedOn
        SHX9_3 = SHX0_3
        SHX10_3 = SHX4_3
        SHX8_3 = SHX8_3(SHX9_3, SHX10_3)
        SHX9_3 = {}
        function SHX10_3()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_4, SHX1_4
        end
        function SHX11_3()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_4, SHX1_4, SHX2_4, SHX3_4
          SHX0_4 = SetVehicleExtra
          SHX1_4 = SHX0_3
          SHX2_4 = SHX4_3
          SHX3_4 = false
          SHX0_4(SHX1_4, SHX2_4, SHX3_4)
        end
        function SHX12_3()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_4, SHX1_4, SHX2_4, SHX3_4
          SHX0_4 = SetVehicleExtra
          SHX1_4 = SHX0_3
          SHX2_4 = SHX4_3
          SHX3_4 = true
          SHX0_4(SHX1_4, SHX2_4, SHX3_4)
        end
        SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
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
  SHX3_2 = "vipclubmenu"
  SHX4_2 = "weather_time_manager"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.BackspaceMenuCallback
    function SHX1_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Checkbox
    SHX1_3 = "Freeze Time"
    SHX2_3 = ""
    SHX3_3 = SHX2_1
    SHX4_3 = {}
    SHX5_3 = RageUI
    SHX5_3 = SHX5_3.CheckboxStyle
    SHX5_3 = SHX5_3.Car
    SHX4_3.Style = SHX5_3
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      SHX2_1 = SHX3_4
    end
    function SHX6_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
      SHX0_4 = CMG
      SHX0_4 = SHX0_4.setTimeFrozen
      SHX1_4 = true
      SHX0_4(SHX1_4)
      SHX0_4 = SHX10_1
      SHX0_4()
    end
    function SHX7_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
      SHX0_4 = CMG
      SHX0_4 = SHX0_4.setTimeFrozen
      SHX1_4 = false
      SHX0_4(SHX1_4)
      SHX0_4 = SHX10_1
      SHX0_4()
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    function SHX0_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4
      SHX0_4 = true
      SHX1_1 = SHX0_4
      SHX0_4 = CMG
      SHX0_4 = SHX0_4.overrideTime
      SHX2_4 = SHX4_1
      SHX1_4 = SHX3_1
      SHX1_4 = SHX1_4[SHX2_4]
      SHX3_4 = SHX6_1
      SHX2_4 = SHX5_1
      SHX2_4 = SHX2_4[SHX3_4]
      SHX4_4 = SHX8_1
      SHX3_4 = SHX7_1
      SHX3_4 = SHX3_4[SHX4_4]
      SHX0_4(SHX1_4, SHX2_4, SHX3_4)
      SHX0_4 = SHX10_1
      SHX0_4()
    end
    function SHX1_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4, SHX2_4, SHX3_4
      SHX0_4 = false
      SHX1_1 = SHX0_4
      SHX0_4 = DecorSetBool
      SHX1_4 = PlayerPedId
      SHX1_4 = SHX1_4()
      SHX2_4 = "a99d39faff"
      SHX3_4 = false
      SHX0_4(SHX1_4, SHX2_4, SHX3_4)
      SHX0_4 = CMG
      SHX0_4 = SHX0_4.cancelOverrideTimeWeather
      SHX0_4()
      SHX0_4 = SHX10_1
      SHX0_4()
    end
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.Checkbox
    SHX3_3 = "Override Time"
    SHX4_3 = ""
    SHX5_3 = SHX1_1
    SHX6_3 = {}
    SHX7_3 = RageUI
    SHX7_3 = SHX7_3.CheckboxStyle
    SHX7_3 = SHX7_3.Car
    SHX6_3.Style = SHX7_3
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      SHX1_1 = SHX3_4
    end
    SHX8_3 = SHX0_3
    SHX9_3 = SHX1_3
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.List
    SHX3_3 = "Hours"
    SHX4_3 = SHX3_1
    SHX5_3 = SHX4_1
    SHX6_3 = ""
    SHX7_3 = {}
    SHX8_3 = true
    function SHX9_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4
      SHX4_4 = SHX4_1
      if SHX3_4 ~= SHX4_4 then
        SHX4_1 = SHX3_4
        SHX4_4 = SHX1_1
        if SHX4_4 then
          SHX4_4 = CMG
          SHX4_4 = SHX4_4.overrideTime
          SHX6_4 = SHX4_1
          SHX5_4 = SHX3_1
          SHX5_4 = SHX5_4[SHX6_4]
          SHX7_4 = SHX6_1
          SHX6_4 = SHX5_1
          SHX6_4 = SHX6_4[SHX7_4]
          SHX8_4 = SHX8_1
          SHX7_4 = SHX7_1
          SHX7_4 = SHX7_4[SHX8_4]
          SHX4_4(SHX5_4, SHX6_4, SHX7_4)
        end
        SHX4_4 = SHX10_1
        SHX4_4()
      end
    end
    function SHX10_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX11_3 = nil
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.List
    SHX3_3 = "Minutes"
    SHX4_3 = SHX5_1
    SHX5_3 = SHX6_1
    SHX6_3 = ""
    SHX7_3 = {}
    SHX8_3 = true
    function SHX9_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4
      SHX4_4 = SHX6_1
      if SHX3_4 ~= SHX4_4 then
        SHX6_1 = SHX3_4
        SHX4_4 = SHX1_1
        if SHX4_4 then
          SHX4_4 = CMG
          SHX4_4 = SHX4_4.overrideTime
          SHX6_4 = SHX4_1
          SHX5_4 = SHX3_1
          SHX5_4 = SHX5_4[SHX6_4]
          SHX7_4 = SHX6_1
          SHX6_4 = SHX5_1
          SHX6_4 = SHX6_4[SHX7_4]
          SHX8_4 = SHX8_1
          SHX7_4 = SHX7_1
          SHX7_4 = SHX7_4[SHX8_4]
          SHX4_4(SHX5_4, SHX6_4, SHX7_4)
        end
        SHX4_4 = SHX10_1
        SHX4_4()
      end
    end
    function SHX10_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX11_3 = nil
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.List
    SHX3_3 = "Seconds"
    SHX4_3 = SHX7_1
    SHX5_3 = SHX8_1
    SHX6_3 = ""
    SHX7_3 = {}
    SHX8_3 = true
    function SHX9_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4
      SHX4_4 = SHX8_1
      if SHX3_4 ~= SHX4_4 then
        SHX8_1 = SHX3_4
        SHX4_4 = SHX1_1
        if SHX4_4 then
          SHX4_4 = CMG
          SHX4_4 = SHX4_4.overrideTime
          SHX6_4 = SHX4_1
          SHX5_4 = SHX3_1
          SHX5_4 = SHX5_4[SHX6_4]
          SHX7_4 = SHX6_1
          SHX6_4 = SHX5_1
          SHX6_4 = SHX6_4[SHX7_4]
          SHX8_4 = SHX8_1
          SHX7_4 = SHX7_1
          SHX7_4 = SHX7_4[SHX8_4]
          SHX4_4(SHX5_4, SHX6_4, SHX7_4)
        end
        SHX4_4 = SHX10_1
        SHX4_4()
      end
    end
    function SHX10_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX11_3 = nil
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
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
SHX18_1(SHX19_1, SHX20_1, SHX21_1, SHX22_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "7aab2694dd"
function SHX20_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2
  SHX4_2 = SHX0_1.hoursOfPlatinum
  if not (SHX1_2 > SHX4_2) then
    SHX4_2 = SHX0_1.hoursOfPlatinumGame
    if not (SHX3_2 > SHX4_2) then
      goto SHX_LABEL_11
    end
  end
  SHX4_2 = TriggerServerEvent
  SHX5_2 = "dd042dd67d"
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX0_1.hoursOfPlus = SHX0_2
  SHX0_1.hoursOfPlatinum = SHX1_2
  SHX0_1.hoursOfPlusGame = SHX2_2
  SHX0_1.hoursOfPlatinumGame = SHX3_2
  SHX4_2 = SHX12_1
  SHX4_2()
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "70e6fd77fe"
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1.hoursOfPlusGame
  if SHX0_2 > 0 then
    SHX0_2 = SHX0_1.hoursOfPlusGame
    SHX0_2 = SHX0_2 - 1
    SHX0_1.hoursOfPlusGame = SHX0_2
  else
    SHX0_2 = SHX0_1.hoursOfPlus
    SHX0_2 = SHX0_2 - 1
    SHX0_1.hoursOfPlus = SHX0_2
    SHX0_2 = SHX0_1.hoursOfPlus
    if SHX0_2 < 0 then
      SHX0_1.hoursOfPlus = 0
    end
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "8aaaa9e0cc"
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1.hoursOfPlatinumGame
  if SHX0_2 > 0 then
    SHX0_2 = SHX0_1.hoursOfPlatinumGame
    SHX0_2 = SHX0_2 - 1
    SHX0_1.hoursOfPlatinumGame = SHX0_2
  else
    SHX0_2 = SHX0_1.hoursOfPlatinum
    SHX0_2 = SHX0_2 - 1
    SHX0_1.hoursOfPlatinum = SHX0_2
    SHX0_2 = SHX0_1.hoursOfPlatinum
    if SHX0_2 < 0 then
      SHX0_1.hoursOfPlatinum = 0
    end
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = Citizen
SHX18_1 = SHX18_1.CreateThread
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isPlatClub
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = HasPedGotWeapon
      SHX1_2 = PlayerPedId
      SHX1_2 = SHX1_2()
      SHX2_2 = -72657034
      SHX3_2 = false
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      if not SHX0_2 then
        SHX0_2 = GiveWeaponToPed
        SHX1_2 = PlayerPedId
        SHX1_2 = SHX1_2()
        SHX2_2 = -72657034
        SHX3_2 = 0
        SHX4_2 = false
        SHX5_2 = false
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
        SHX0_2 = SetPlayerHasReserveParachute
        SHX1_2 = PlayerId
        SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2()
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      end
    end
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isPlusClub
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isPlatClub
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        goto SHX_LABEL_47
      end
    end
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerBucket
    SHX0_2 = SHX0_2()
    if 333 ~= SHX0_2 then
      SHX0_2 = SetVehicleDirtLevel
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerVehicle
      SHX1_2 = SHX1_2()
      SHX2_2 = 0.0
      SHX0_2(SHX1_2, SHX2_2)
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_47:: outside nested blocks until all 'goto SHX_LABEL_47' can see it
    ::SHX_LABEL_47::
    SHX0_2 = Wait
    SHX1_2 = 500
    SHX0_2(SHX1_2)
  end
end
SHX18_1(SHX19_1)
SHX18_1 = {}
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = pairs
  SHX1_2 = SHX18_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DrawAdvancedTextNoOutline
    SHX7_2 = 0.6
    SHX8_2 = 0.025 * SHX4_2
    SHX8_2 = 0.5 + SHX8_2
    SHX9_2 = 0.005
    SHX10_2 = 0.0028
    SHX11_2 = 0.45
    SHX12_2 = "Killed "
    SHX13_2 = SHX5_2.name
    SHX12_2 = SHX12_2 .. SHX13_2
    SHX13_2 = 255
    SHX14_2 = 255
    SHX15_2 = 255
    SHX16_2 = 255
    SHX17_2 = CMG
    SHX17_2 = SHX17_2.getFontId
    SHX18_2 = "Akrobat-Regular"
    SHX17_2 = SHX17_2(SHX18_2)
    SHX18_2 = 1
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  end
end
SHX20_1 = CMG
SHX20_1 = SHX20_1.createThreadOnTick
SHX21_1 = SHX19_1
SHX22_1 = "Kill List"
SHX20_1(SHX21_1, SHX22_1)
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = NetworkGetPlayerIndexFromPed
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 < 0 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = GetPlayerServerId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 <= 0 then
    SHX3_2 = false
    return SHX3_2
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.isPlayerABountyTarget
  SHX4_2 = SHX2_2
  return SHX3_2(SHX4_2)
end
SHX21_1 = RegisterNetEvent
SHX22_1 = "2244097108"
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX16_1
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isPlatClub
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.isPlusClub
      SHX1_2 = SHX1_2()
      if not SHX1_2 then
        SHX1_2 = SHX20_1
        SHX2_2 = SHX0_2
        SHX1_2 = SHX1_2(SHX2_2)
        if not SHX1_2 then
          goto SHX_LABEL_51
        end
      end
    end
    SHX1_2 = IsPedAPlayer
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = NetworkGetPlayerIndexFromPed
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 >= 0 then
        SHX2_2 = GetPlayerServerId
        SHX3_2 = SHX1_2
        SHX2_2 = SHX2_2(SHX3_2)
        if SHX2_2 >= 0 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.getPlayerName
          SHX4_2 = SHX1_2
          SHX3_2 = SHX3_2(SHX4_2)
          SHX4_2 = table
          SHX4_2 = SHX4_2.insert
          SHX5_2 = SHX18_1
          SHX6_2 = {}
          SHX6_2.name = SHX3_2
          SHX6_2.source = SHX2_2
          SHX4_2(SHX5_2, SHX6_2)
          SHX4_2 = SetTimeout
          SHX5_2 = 2000
          function SHX6_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
            SHX0_3 = pairs
            SHX1_3 = SHX18_1
            SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
            for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
              SHX6_3 = SHX2_2
              SHX7_3 = SHX5_3.source
              if SHX6_3 == SHX7_3 then
                SHX6_3 = table
                SHX6_3 = SHX6_3.remove
                SHX7_3 = SHX18_1
                SHX8_3 = SHX4_3
                SHX6_3(SHX7_3, SHX8_3)
              end
            end
          end
          SHX4_2(SHX5_2, SHX6_2)
        end
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_51:: outside nested blocks until all 'goto SHX_LABEL_51' can see it
  ::SHX_LABEL_51::
end
SHX21_1(SHX22_1, SHX23_1)
