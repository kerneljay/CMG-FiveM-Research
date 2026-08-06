-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_billboards"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = 0
SHX3_1 = false
SHX4_1 = nil
SHX5_1 = 1
SHX6_1 = {}
SHX7_1 = 1
SHX8_1 = SHX0_1.numRenderTargets
SHX9_1 = 1
for SHX10_1 = SHX7_1, SHX8_1, SHX9_1 do
  SHX11_1 = table
  SHX11_1 = SHX11_1.insert
  SHX12_1 = SHX6_1
  SHX13_1 = SHX10_1
  SHX11_1(SHX12_1, SHX13_1)
end
SHX7_1 = {}
SHX8_1 = RMenu
SHX8_1 = SHX8_1.Add
SHX9_1 = "billboards"
SHX10_1 = "mainmenu"
SHX11_1 = RageUI
SHX11_1 = SHX11_1.CreateMenu
SHX12_1 = ""
SHX13_1 = "CMG Billboards"
SHX14_1 = CMG
SHX14_1 = SHX14_1.getRageUIMenuWidth
SHX14_1 = SHX14_1()
SHX15_1 = CMG
SHX15_1 = SHX15_1.getRageUIMenuHeight
SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1 = SHX15_1()
SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1)
SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1)
SHX8_1 = RMenu
SHX8_1 = SHX8_1.Add
SHX9_1 = "billboards"
SHX10_1 = "available"
SHX11_1 = RageUI
SHX11_1 = SHX11_1.CreateSubMenu
SHX12_1 = RMenu
SHX13_1 = SHX12_1
SHX12_1 = SHX12_1.Get
SHX14_1 = "billboards"
SHX15_1 = "mainmenu"
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX13_1 = ""
SHX14_1 = "CMG Billboards"
SHX15_1 = CMG
SHX15_1 = SHX15_1.getRageUIMenuWidth
SHX15_1 = SHX15_1()
SHX16_1 = CMG
SHX16_1 = SHX16_1.getRageUIMenuHeight
SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1 = SHX16_1()
SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1)
SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1)
SHX8_1 = RMenu
SHX8_1 = SHX8_1.Add
SHX9_1 = "billboards"
SHX10_1 = "purchase"
SHX11_1 = RageUI
SHX11_1 = SHX11_1.CreateSubMenu
SHX12_1 = RMenu
SHX13_1 = SHX12_1
SHX12_1 = SHX12_1.Get
SHX14_1 = "billboards"
SHX15_1 = "available"
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX13_1 = ""
SHX14_1 = "CMG Billboards"
SHX15_1 = CMG
SHX15_1 = SHX15_1.getRageUIMenuWidth
SHX15_1 = SHX15_1()
SHX16_1 = CMG
SHX16_1 = SHX16_1.getRageUIMenuHeight
SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1 = SHX16_1()
SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1)
SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1)
SHX8_1 = RMenu
SHX8_1 = SHX8_1.Add
SHX9_1 = "billboards"
SHX10_1 = "owned"
SHX11_1 = RageUI
SHX11_1 = SHX11_1.CreateSubMenu
SHX12_1 = RMenu
SHX13_1 = SHX12_1
SHX12_1 = SHX12_1.Get
SHX14_1 = "billboards"
SHX15_1 = "mainmenu"
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX13_1 = ""
SHX14_1 = "CMG Billboards"
SHX15_1 = CMG
SHX15_1 = SHX15_1.getRageUIMenuWidth
SHX15_1 = SHX15_1()
SHX16_1 = CMG
SHX16_1 = SHX16_1.getRageUIMenuHeight
SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1 = SHX16_1()
SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1)
SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1)
SHX8_1 = RMenu
SHX8_1 = SHX8_1.Add
SHX9_1 = "billboards"
SHX10_1 = "editowned"
SHX11_1 = RageUI
SHX11_1 = SHX11_1.CreateSubMenu
SHX12_1 = RMenu
SHX13_1 = SHX12_1
SHX12_1 = SHX12_1.Get
SHX14_1 = "billboards"
SHX15_1 = "owned"
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX13_1 = ""
SHX14_1 = "CMG Billboards"
SHX15_1 = CMG
SHX15_1 = SHX15_1.getRageUIMenuWidth
SHX15_1 = SHX15_1()
SHX16_1 = CMG
SHX16_1 = SHX16_1.getRageUIMenuHeight
SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1 = SHX16_1()
SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1)
SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1)
SHX8_1 = CMG
SHX8_1 = SHX8_1.registerDevMenuState
SHX9_1 = "Billboards"
SHX10_1 = {}
SHX10_1.enabled = false
SHX8_1 = SHX8_1(SHX9_1, SHX10_1)
SHX9_1 = nil
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = true
  SHX3_1 = SHX1_2
  SHX1_2 = SHX2_1
  if 0 == SHX1_2 then
    SHX1_2 = CreateCam
    SHX2_2 = "DEFAULT_SCRIPTED_CAMERA"
    SHX3_2 = true
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX2_1 = SHX1_2
    SHX1_2 = SetCamActive
    SHX2_2 = SHX2_1
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = RenderScriptCams
    SHX2_2 = true
    SHX3_2 = false
    SHX4_2 = 0
    SHX5_2 = false
    SHX6_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  end
  SHX1_2 = SHX4_1
  if SHX1_2 ~= SHX0_2 then
    SHX1_2 = SHX0_1.locations
    SHX1_2 = SHX1_2[SHX0_2]
    SHX2_2 = SetCamCoord
    SHX3_2 = SHX2_1
    SHX4_2 = SHX1_2.cameraPosition
    SHX4_2 = SHX4_2.x
    SHX5_2 = SHX1_2.cameraPosition
    SHX5_2 = SHX5_2.y
    SHX6_2 = SHX1_2.cameraPosition
    SHX6_2 = SHX6_2.z
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = PointCamAtCoord
    SHX3_2 = SHX2_1
    SHX4_2 = SHX1_2.centerPosition
    SHX4_2 = SHX4_2.x
    SHX5_2 = SHX1_2.centerPosition
    SHX5_2 = SHX5_2.y
    SHX6_2 = SHX1_2.centerPosition
    SHX6_2 = SHX6_2.z
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = SetFocusPosAndVel
    SHX3_2 = SHX1_2.cameraPosition
    SHX3_2 = SHX3_2.x
    SHX4_2 = SHX1_2.cameraPosition
    SHX4_2 = SHX4_2.y
    SHX5_2 = SHX1_2.cameraPosition
    SHX5_2 = SHX5_2.z
    SHX6_2 = 0.0
    SHX7_2 = 0.0
    SHX8_2 = 0.0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX2_2 = PlayerPedId
    SHX2_2 = SHX2_2()
    SHX3_2 = SHX9_1
    if not SHX3_2 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.getPlayerCoords
      SHX3_2 = SHX3_2()
      SHX9_1 = SHX3_2
    end
    SHX3_2 = SetEntityCoords
    SHX4_2 = SHX2_2
    SHX5_2 = SHX1_2.cameraPosition
    SHX5_2 = SHX5_2.x
    SHX6_2 = SHX1_2.cameraPosition
    SHX6_2 = SHX6_2.y
    SHX7_2 = SHX1_2.cameraPosition
    SHX7_2 = SHX7_2.z
    SHX7_2 = SHX7_2 - 2.0
    SHX8_2 = true
    SHX9_2 = false
    SHX10_2 = false
    SHX11_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX3_2 = FreezeEntityPosition
    SHX4_2 = SHX2_2
    SHX5_2 = true
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = SetEntityVisible
    SHX4_2 = SHX2_2
    SHX5_2 = false
    SHX6_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX4_1 = SHX0_2
  end
end
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  if not SHX0_2 or "" == SHX0_2 then
    SHX1_2 = nil
    return SHX1_2
  end
  SHX1_2 = false
  SHX2_2 = pairs
  SHX3_2 = SHX0_1.allowedUrls
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = string
    SHX8_2 = SHX8_2.starts
    SHX9_2 = SHX0_2
    SHX10_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    if SHX8_2 then
      SHX1_2 = true
      break
    end
  end
  if not SHX1_2 then
    SHX2_2 = nil
    return SHX2_2
  end
  SHX2_2 = string
  SHX2_2 = SHX2_2.sub
  SHX3_2 = SHX0_2
  SHX4_2 = #SHX0_2
  SHX4_2 = SHX4_2 - 3
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = table
  SHX3_2 = SHX3_2.has
  SHX4_2 = SHX0_1.allowedExtensions
  SHX5_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if not SHX3_2 then
    SHX3_2 = nil
    return SHX3_2
  end
  return SHX0_2
end
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  while 0 ~= SHX1_2 do
    SHX2_2 = SHX1_2
    SHX1_2 = SHX0_2 % SHX1_2
    SHX0_2 = SHX2_2
  end
  return SHX0_2
end
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = SHX12_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = string
  SHX3_2 = SHX3_2.format
  SHX4_2 = "%s:%s"
  SHX5_2 = math
  SHX5_2 = SHX5_2.floor
  SHX6_2 = SHX0_2 / SHX2_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = math
  SHX6_2 = SHX6_2.floor
  SHX7_2 = SHX1_2 / SHX2_2
  SHX6_2, SHX7_2 = SHX6_2(SHX7_2)
  return SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
end
SHX14_1 = RageUI
SHX14_1 = SHX14_1.CreateWhile
SHX15_1 = 1.0
SHX16_1 = RMenu
SHX17_1 = SHX16_1
SHX16_1 = SHX16_1.Get
SHX18_1 = "billboards"
SHX19_1 = "mainmenu"
SHX16_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX17_1 = nil
function SHX18_1()
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
  SHX3_2 = "billboards"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~g~View Available"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX4_3 = true
    function SHX5_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "billboards"
    SHX9_3 = "available"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~y~View Owned"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX4_3 = true
    function SHX5_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "billboards"
    SHX9_3 = "owned"
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
  SHX3_2 = "billboards"
  SHX4_2 = "available"
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
      SHX0_4 = false
      SHX3_1 = SHX0_4
    end
    SHX0_3(SHX1_3)
    SHX0_3 = false
    SHX1_3 = pairs
    SHX2_3 = SHX0_1.locations
    SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
    for SHX5_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
      SHX6_3 = SHX1_1
      SHX6_3 = SHX6_3[SHX5_3]
      if not SHX6_3 then
        SHX6_3 = RageUI
        SHX6_3 = SHX6_3.ButtonWithStyle
        SHX7_3 = SHX5_3
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
          
          local SHX3_4, SHX4_4
          if SHX1_4 then
            SHX3_4 = SHX10_1
            SHX4_4 = SHX5_3
            SHX3_4(SHX4_4)
          end
        end
        SHX12_3 = RMenu
        SHX13_3 = SHX12_3
        SHX12_3 = SHX12_3.Get
        SHX14_3 = "billboards"
        SHX15_3 = "purchase"
        SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX12_3(SHX13_3, SHX14_3, SHX15_3)
        SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
        SHX0_3 = true
      end
    end
    if not SHX0_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.Separator
      SHX2_3 = "~r~There are no available billboards for sale."
      SHX1_3(SHX2_3)
      SHX1_3 = false
      SHX3_1 = SHX1_3
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
  SHX3_2 = "billboards"
  SHX4_2 = "purchase"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = SHX0_1.locations
    SHX1_3 = SHX4_1
    SHX0_3 = SHX0_3[SHX1_3]
    if SHX0_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.Separator
      SHX2_3 = "~y~Name: "
      SHX3_3 = SHX4_1
      SHX2_3 = SHX2_3 .. SHX3_3
      SHX1_3(SHX2_3)
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.List
      SHX2_3 = "Rent Duration"
      SHX3_3 = SHX0_1.rentDurations
      SHX4_3 = SHX5_1
      SHX5_3 = ""
      SHX6_3 = {}
      SHX7_3 = true
      function SHX8_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX4_4
        SHX4_4 = SHX5_1
        if SHX3_4 ~= SHX4_4 then
          SHX5_1 = SHX3_4
        end
      end
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.ButtonWithStyle
      SHX2_3 = "~g~Confirm Purchase"
      SHX3_3 = ""
      SHX4_3 = {}
      SHX5_3 = "\194\163"
      SHX6_3 = getMoneyStringFormatted
      SHX7_3 = SHX0_3.price
      SHX6_3 = SHX6_3(SHX7_3)
      SHX5_3 = SHX5_3 .. SHX6_3
      SHX4_3.RightLabel = SHX5_3
      SHX5_3 = true
      function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "d5e3e2d189"
          SHX5_4 = SHX4_1
          SHX6_4 = SHX5_1
          SHX3_4(SHX4_4, SHX5_4, SHX6_4)
        end
      end
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
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
  SHX3_2 = "billboards"
  SHX4_2 = "owned"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3
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
      SHX0_4 = false
      SHX3_1 = SHX0_4
    end
    SHX0_3(SHX1_3)
    SHX0_3 = false
    SHX1_3 = pairs
    SHX2_3 = SHX0_1.locations
    SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
    for SHX5_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
      SHX6_3 = SHX1_1
      SHX6_3 = SHX6_3[SHX5_3]
      if SHX6_3 then
        SHX7_3 = SHX6_3.ownerUserId
        SHX8_3 = CMG
        SHX8_3 = SHX8_3.getClientUserId
        SHX8_3 = SHX8_3()
        if SHX7_3 == SHX8_3 then
          SHX7_3 = "~g~"
          SHX8_3 = SHX6_3.pendingURL
          if SHX8_3 then
            SHX8_3 = SHX6_3.denied
            if SHX8_3 then
              SHX7_3 = "~r~"
            else
              SHX7_3 = "~y~"
            end
          end
          SHX8_3 = SHX7_3
          SHX9_3 = SHX5_3
          SHX8_3 = SHX8_3 .. SHX9_3
          SHX9_3 = ""
          SHX10_3 = SHX6_3.pendingURL
          if SHX10_3 then
            SHX10_3 = SHX6_3.denied
            if SHX10_3 then
              SHX9_3 = "Your requested image has been denied."
            else
              SHX9_3 = "An image is pending approval for this billboard."
            end
          end
          SHX10_3 = RageUI
          SHX10_3 = SHX10_3.ButtonWithStyle
          SHX11_3 = SHX8_3
          SHX12_3 = SHX9_3
          SHX13_3 = {}
          SHX13_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
          SHX14_3 = true
          function SHX15_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4, SHX4_4
            if SHX1_4 then
              SHX3_4 = SHX10_1
              SHX4_4 = SHX5_3
              SHX3_4(SHX4_4)
            end
          end
          SHX16_3 = RMenu
          SHX17_3 = SHX16_3
          SHX16_3 = SHX16_3.Get
          SHX18_3 = "billboards"
          SHX19_3 = "editowned"
          SHX16_3, SHX17_3, SHX18_3, SHX19_3 = SHX16_3(SHX17_3, SHX18_3, SHX19_3)
          SHX10_3(SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
          SHX0_3 = true
        end
      end
    end
    if not SHX0_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.Separator
      SHX2_3 = "~r~You do not own any billboards."
      SHX1_3(SHX2_3)
      SHX1_3 = false
      SHX3_1 = SHX1_3
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
  SHX3_2 = "billboards"
  SHX4_2 = "editowned"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    SHX0_3 = "Only CMG Image URLs are allowed. Once uploaded your image will be reviewed by staff and either approved or rejected."
    SHX2_3 = SHX4_1
    SHX1_3 = SHX1_1
    SHX1_3 = SHX1_3[SHX2_3]
    if SHX1_3 then
      SHX2_3 = SHX1_3.pendingURL
      if SHX2_3 then
        SHX2_3 = SHX1_3.denied
        if SHX2_3 then
          SHX2_3 = RageUI
          SHX2_3 = SHX2_3.Separator
          SHX3_3 = "~r~URL is denied."
          SHX2_3(SHX3_3)
          SHX2_3 = SHX0_3
          SHX3_3 = string
          SHX3_3 = SHX3_3.format
          SHX4_3 = [[


~r~Denied Image URL:
%s]]
          SHX5_3 = SHX1_3.pendingURL
          SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
          SHX2_3 = SHX2_3 .. SHX3_3
          SHX0_3 = SHX2_3
        else
          SHX2_3 = RageUI
          SHX2_3 = SHX2_3.Separator
          SHX3_3 = "~r~URL is pending approval."
          SHX2_3(SHX3_3)
          SHX2_3 = SHX0_3
          SHX3_3 = string
          SHX3_3 = SHX3_3.format
          SHX4_3 = [[


~y~Pending Image URL:
%s]]
          SHX5_3 = SHX1_3.pendingURL
          SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
          SHX2_3 = SHX2_3 .. SHX3_3
          SHX0_3 = SHX2_3
        end
      else
        SHX2_3 = RageUI
        SHX2_3 = SHX2_3.Separator
        SHX3_3 = "~g~No upload is pending for this billboard."
        SHX2_3(SHX3_3)
      end
      SHX2_3 = SHX1_3.rentedUntil
      if SHX2_3 then
        SHX2_3 = RageUI
        SHX2_3 = SHX2_3.Separator
        SHX3_3 = "~y~Rent End: "
        SHX4_3 = SHX1_3.rentedUntil
        SHX3_3 = SHX3_3 .. SHX4_3
        SHX2_3(SHX3_3)
      end
    end
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Change Image URL"
    SHX4_3 = SHX0_3
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
      
      local SHX3_4, SHX4_4, SHX5_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "500907f3d9"
        SHX5_4 = SHX4_1
        SHX3_4(SHX4_4, SHX5_4)
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Test Image URL"
    SHX4_3 = "Test what an image would look like on the billboard. This will only show the image for you and will persist after exiting the menu."
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Testing Image URL"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5
          SHX1_5 = SHX11_1
          SHX2_5 = SHX0_5
          SHX1_5 = SHX1_5(SHX2_5)
          if not SHX1_5 then
            SHX1_5 = notify
            SHX2_5 = source
            SHX3_5 = "~r~Image URL is not allowed. Please use an image uploaded to the CMG CDN."
            SHX1_5(SHX2_5, SHX3_5)
            return
          end
          SHX1_3.imageURL = SHX0_5
          SHX1_5 = notify
          SHX2_5 = "~y~Applied testing image to billboard."
          SHX1_5(SHX2_5)
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.Separator
    SHX3_3 = "~y~Suggested Image Sizes"
    SHX2_3(SHX3_3)
    SHX2_3 = string
    SHX2_3 = SHX2_3.format
    SHX3_3 = "This should be the aspect ratio of the image that is uploaded and used on the billboard. Any other resolution may cause padding or other negative visual effects. All images are rendered at a resolution of %sx%s for performance reasons."
    SHX4_3 = SHX0_1.renderWidth
    SHX5_3 = SHX0_1.renderHeight
    SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3)
    SHX3_3 = RageUI
    SHX3_3 = SHX3_3.ButtonWithStyle
    SHX4_3 = "Image Aspect Ratio"
    SHX5_3 = SHX2_3
    SHX6_3 = {}
    SHX7_3 = SHX13_1
    SHX8_3 = SHX0_1.renderWidth
    SHX9_3 = SHX0_1.renderHeight
    SHX7_3 = SHX7_3(SHX8_3, SHX9_3)
    SHX6_3.RightLabel = SHX7_3
    SHX7_3 = true
    function SHX8_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    SHX3_3 = SHX0_1.locations
    SHX4_3 = SHX4_1
    SHX3_3 = SHX3_3[SHX4_3]
    SHX4_3 = "This is the real aspect ratio of the billboard. This should be used whilst creating the image, and then once finished scaled into the above Image Aspect Ratio."
    SHX5_3 = RageUI
    SHX5_3 = SHX5_3.ButtonWithStyle
    SHX6_3 = "Development Aspect Ratio"
    SHX7_3 = SHX4_3
    SHX8_3 = {}
    SHX9_3 = SHX13_1
    SHX10_3 = math
    SHX10_3 = SHX10_3.floor
    SHX11_3 = SHX3_3.widthDifference
    SHX10_3 = SHX10_3(SHX11_3)
    SHX11_3 = math
    SHX11_3 = SHX11_3.floor
    SHX12_3 = SHX3_3.heightDifference
    SHX11_3, SHX12_3 = SHX11_3(SHX12_3)
    SHX9_3 = SHX9_3(SHX10_3, SHX11_3, SHX12_3)
    SHX8_3.RightLabel = SHX9_3
    SHX9_3 = true
    function SHX10_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
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
SHX14_1(SHX15_1, SHX16_1, SHX17_1, SHX18_1)
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX2_1
  if 0 ~= SHX0_2 then
    SHX0_2 = SHX3_1
    if SHX0_2 then
      SHX0_2 = RageUI
      SHX0_2 = SHX0_2.IsAnyMenuOfTypeVisible
      SHX1_2 = "billboards"
      SHX0_2 = SHX0_2(SHX1_2)
      if SHX0_2 then
        goto SHX_LABEL_62
      end
    end
    SHX0_2 = ClearFocus
    SHX0_2()
    SHX0_2 = RenderScriptCams
    SHX1_2 = false
    SHX2_2 = false
    SHX3_2 = 0
    SHX4_2 = false
    SHX5_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = SetCamActive
    SHX1_2 = SHX2_1
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = DestroyCam
    SHX1_2 = SHX2_1
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = 0
    SHX2_1 = SHX0_2
    SHX0_2 = false
    SHX3_1 = SHX0_2
    SHX0_2 = nil
    SHX4_1 = SHX0_2
    SHX0_2 = SHX9_1
    if SHX0_2 then
      SHX0_2 = PlayerPedId
      SHX0_2 = SHX0_2()
      SHX1_2 = SetEntityCoords
      SHX2_2 = SHX0_2
      SHX3_2 = SHX9_1.x
      SHX4_2 = SHX9_1.y
      SHX5_2 = SHX9_1.z
      SHX6_2 = true
      SHX7_2 = false
      SHX8_2 = false
      SHX9_2 = false
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      SHX1_2 = FreezeEntityPosition
      SHX2_2 = SHX0_2
      SHX3_2 = false
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = SetEntityVisible
      SHX2_2 = SHX0_2
      SHX3_2 = true
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = nil
      SHX9_1 = SHX1_2
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_62:: outside nested blocks until all 'goto SHX_LABEL_62' can see it
  ::SHX_LABEL_62::
end
SHX15_1 = CMG
SHX15_1 = SHX15_1.createThreadOnTick
SHX16_1 = SHX14_1
SHX17_1 = "Billboards"
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "f9f7560728"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_1 = SHX0_2
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "225ac5d18d"
function SHX17_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX1_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "fe74003b10"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX4_1 = SHX0_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "billboards"
  SHX5_2 = "editowned"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "6c0990449f"
function SHX17_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX2_2.pendingURL = SHX1_2
    SHX2_2.denied = false
  end
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "a1b2d8e125"
function SHX17_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX2_2.pendingURL = SHX1_2
    SHX2_2.denied = true
  end
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "e916ea16dc"
function SHX17_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX3_2 = SHX2_2.pendingURL
    if SHX3_2 == SHX1_2 then
      SHX2_2.pendingURL = nil
    end
    SHX2_2.imageURL = SHX1_2
    SHX2_2.denied = false
  end
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "5835cbdb37"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX1_1
    SHX7_2 = SHX7_2[SHX5_2]
    if SHX7_2 then
      SHX7_2.rentedUntil = SHX6_2
    end
  end
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "295be4ac29"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX1_1
  SHX1_2[SHX0_2] = nil
end
SHX15_1(SHX16_1, SHX17_1)
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = string
  SHX1_2 = SHX1_2.format
  SHX2_2 = "hypnonema_texture_renderer%02d"
  SHX3_2 = SHX0_2
  return SHX1_2(SHX2_2, SHX3_2)
end
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = SHX0_2.renderData
  if not SHX2_2 then
    SHX2_2 = nil
    SHX3_2 = pairs
    SHX4_2 = SHX7_1
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = SHX8_2.appliedImageURL
      if SHX9_2 == SHX1_2 then
        SHX2_2 = SHX8_2
        SHX9_2 = table
        SHX9_2 = SHX9_2.remove
        SHX10_2 = SHX7_1
        SHX11_2 = SHX7_2
        SHX9_2(SHX10_2, SHX11_2)
        break
      end
    end
    if not SHX2_2 then
      SHX3_2 = table
      SHX3_2 = SHX3_2.remove
      SHX4_2 = SHX7_1
      SHX3_2 = SHX3_2(SHX4_2)
      SHX2_2 = SHX3_2
    end
    if not SHX2_2 then
      SHX3_2 = table
      SHX3_2 = SHX3_2.remove
      SHX4_2 = SHX6_1
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX4_2 = false
        return SHX4_2
      end
      SHX4_2 = {}
      SHX4_2.id = SHX3_2
      SHX2_2 = SHX4_2
    end
    SHX0_2.renderData = SHX2_2
  end
  SHX2_2 = SHX0_2.scaleform
  if not SHX2_2 then
    SHX2_2 = SHX15_1
    SHX3_2 = SHX0_2.renderData
    SHX3_2 = SHX3_2.id
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = RequestScaleformMovie
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX0_2.scaleform = SHX3_2
    SHX3_2 = SHX0_2.renderData
    SHX4_2 = "billboard_texture_"
    SHX5_2 = tostring
    SHX6_2 = SHX0_2.renderData
    SHX6_2 = SHX6_2.id
    SHX5_2 = SHX5_2(SHX6_2)
    SHX4_2 = SHX4_2 .. SHX5_2
    SHX3_2.textureName = SHX4_2
  end
  SHX2_2 = SHX0_2.scaleform
  if SHX2_2 then
    SHX2_2 = HasScaleformMovieLoaded
    SHX3_2 = SHX0_2.scaleform
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = true
      return SHX2_2
    end
  end
  SHX2_2 = false
  return SHX2_2
end
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2.scaleform
  if SHX1_2 then
    SHX1_2 = SetScaleformMovieAsNoLongerNeeded
    SHX2_2 = SHX0_2.scaleform
    SHX1_2(SHX2_2)
    SHX0_2.scaleform = nil
  end
  SHX1_2 = SHX0_2.renderData
  if SHX1_2 then
    SHX1_2 = table
    SHX1_2 = SHX1_2.insert
    SHX2_2 = SHX7_1
    SHX3_2 = SHX0_2.renderData
    SHX1_2(SHX2_2, SHX3_2)
    SHX0_2.renderData = nil
  end
end
SHX18_1 = vector3
SHX19_1 = 180.0
SHX20_1 = -90.0
SHX21_1 = 0.0
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = vector2
SHX20_1 = 25.0
SHX21_1 = 24.8
SHX19_1 = SHX19_1(SHX20_1, SHX21_1)
SHX20_1 = "billboards"
SHX21_1 = CreateRuntimeTxd
SHX22_1 = SHX20_1
SHX21_1 = SHX21_1(SHX22_1)
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2
  SHX2_2 = SHX0_2.name
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = SHX0_1.placeholderImageURL
  if SHX1_2 then
    SHX3_2 = SHX1_2.imageURL
    if SHX3_2 then
      SHX2_2 = SHX1_2.imageURL
    end
  end
  SHX3_2 = SHX16_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if not SHX3_2 then
    return
  end
  SHX3_2 = SHX0_2.renderData
  SHX4_2 = SHX3_2.dui
  if not SHX4_2 then
    SHX4_2 = CreateDui
    SHX5_2 = SHX2_2
    SHX6_2 = SHX0_1.renderWidth
    SHX7_2 = SHX0_1.renderHeight
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX3_2.dui = SHX4_2
  else
    SHX4_2 = SHX3_2.appliedImageURL
    if not SHX4_2 then
      SHX4_2 = IsDuiAvailable
      SHX5_2 = SHX3_2.dui
      SHX4_2 = SHX4_2(SHX5_2)
      if SHX4_2 then
        SHX4_2 = GetDuiHandle
        SHX5_2 = SHX3_2.dui
        SHX4_2 = SHX4_2(SHX5_2)
        SHX5_2 = CreateRuntimeTextureFromDuiHandle
        SHX6_2 = SHX21_1
        SHX7_2 = SHX3_2.textureName
        SHX8_2 = SHX4_2
        SHX5_2(SHX6_2, SHX7_2, SHX8_2)
        SHX3_2.appliedImageURL = SHX2_2
      end
      return
    else
      SHX4_2 = SHX3_2.appliedImageURL
      if SHX4_2 ~= SHX2_2 then
        SHX4_2 = SetDuiUrl
        SHX5_2 = SHX3_2.dui
        SHX6_2 = SHX2_2
        SHX4_2(SHX5_2, SHX6_2)
        SHX3_2.appliedImageURL = nil
      end
    end
  end
  SHX4_2 = PushScaleformMovieFunction
  SHX5_2 = SHX0_2.scaleform
  SHX6_2 = "SET_TEXTURE"
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = PushScaleformMovieMethodParameterString
  SHX5_2 = SHX20_1
  SHX4_2(SHX5_2)
  SHX4_2 = PushScaleformMovieMethodParameterString
  SHX5_2 = SHX3_2.textureName
  SHX4_2(SHX5_2)
  SHX4_2 = PushScaleformMovieFunctionParameterInt
  SHX5_2 = 0
  SHX4_2(SHX5_2)
  SHX4_2 = PushScaleformMovieFunctionParameterInt
  SHX5_2 = 0
  SHX4_2(SHX5_2)
  SHX4_2 = PushScaleformMovieFunctionParameterInt
  SHX5_2 = 1280
  SHX4_2(SHX5_2)
  SHX4_2 = PushScaleformMovieFunctionParameterInt
  SHX5_2 = 720
  SHX4_2(SHX5_2)
  SHX4_2 = PopScaleformMovieFunctionVoid
  SHX4_2()
  SHX4_2 = SetScriptGfxDrawOrder
  SHX5_2 = 4
  SHX4_2(SHX5_2)
  SHX4_2 = SetScriptGfxDrawBehindPausemenu
  SHX5_2 = true
  SHX4_2(SHX5_2)
  SHX4_2 = SHX0_2.info
  SHX5_2 = SHX8_1.enabled
  if SHX5_2 then
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.drawAxisOnPoint
    SHX6_2 = SHX4_2.max
    SHX7_2 = 10
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.drawAxisOnPoint
    SHX6_2 = SHX4_2.min
    SHX7_2 = 10
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = DrawMarker
    SHX6_2 = 28
    SHX7_2 = SHX4_2.max
    SHX7_2 = SHX7_2.x
    SHX8_2 = SHX4_2.max
    SHX8_2 = SHX8_2.y
    SHX9_2 = SHX4_2.max
    SHX9_2 = SHX9_2.z
    SHX10_2 = 0.0
    SHX11_2 = 0.0
    SHX12_2 = 0.0
    SHX13_2 = 0.0
    SHX14_2 = 0.0
    SHX15_2 = 0.0
    SHX16_2 = 0.125
    SHX17_2 = 0.125
    SHX18_2 = 0.125
    SHX19_2 = 255
    SHX20_2 = 0
    SHX21_2 = 0
    SHX22_2 = 255
    SHX23_2 = false
    SHX24_2 = false
    SHX25_2 = 2
    SHX26_2 = false
    SHX27_2 = nil
    SHX28_2 = nil
    SHX29_2 = false
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
    SHX5_2 = DrawMarker
    SHX6_2 = 28
    SHX7_2 = SHX4_2.min
    SHX7_2 = SHX7_2.x
    SHX8_2 = SHX4_2.min
    SHX8_2 = SHX8_2.y
    SHX9_2 = SHX4_2.min
    SHX9_2 = SHX9_2.z
    SHX10_2 = 0.0
    SHX11_2 = 0.0
    SHX12_2 = 0.0
    SHX13_2 = 0.0
    SHX14_2 = 0.0
    SHX15_2 = 0.0
    SHX16_2 = 0.125
    SHX17_2 = 0.125
    SHX18_2 = 0.125
    SHX19_2 = 255
    SHX20_2 = 0
    SHX21_2 = 0
    SHX22_2 = 255
    SHX23_2 = false
    SHX24_2 = false
    SHX25_2 = 2
    SHX26_2 = false
    SHX27_2 = nil
    SHX28_2 = nil
    SHX29_2 = false
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.drawHeadingFromPoint
    SHX6_2 = SHX4_2.max
    SHX7_2 = math
    SHX7_2 = SHX7_2.rad
    SHX8_2 = SHX4_2.heading
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = 20.0
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  end
  SHX5_2 = SHX4_2.max
  SHX6_2 = SHX0_2.distance
  SHX7_2 = SHX0_1.minLodDistance
  if SHX6_2 > SHX7_2 then
    SHX6_2 = SHX0_2.distance
    SHX7_2 = SHX0_1.minLodDistance
    SHX6_2 = SHX6_2 - SHX7_2
    SHX7_2 = math
    SHX7_2 = SHX7_2.min
    SHX8_2 = SHX0_1.maxLodDistance
    SHX9_2 = SHX0_1.minLodDistance
    SHX8_2 = SHX8_2 - SHX9_2
    SHX8_2 = SHX6_2 / SHX8_2
    SHX9_2 = 1.0
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    SHX8_2 = SHX0_1.lodDistanceOffset
    SHX8_2 = SHX8_2 * SHX7_2
    SHX9_2 = vector3
    SHX10_2 = SHX5_2.x
    SHX11_2 = SHX4_2.forward
    SHX11_2 = SHX11_2.x
    SHX11_2 = SHX8_2 * SHX11_2
    SHX10_2 = SHX10_2 + SHX11_2
    SHX11_2 = SHX5_2.y
    SHX12_2 = SHX4_2.forward
    SHX12_2 = SHX12_2.y
    SHX12_2 = SHX8_2 * SHX12_2
    SHX11_2 = SHX11_2 + SHX12_2
    SHX12_2 = SHX5_2.z
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX5_2 = SHX9_2
  end
  SHX6_2 = DrawScaleformMovie_3d
  SHX7_2 = SHX0_2.scaleform
  SHX8_2 = SHX5_2.x
  SHX9_2 = SHX5_2.y
  SHX10_2 = SHX5_2.z
  SHX11_2 = SHX18_1.x
  SHX12_2 = SHX4_2.heading
  SHX13_2 = SHX18_1.y
  SHX12_2 = SHX12_2 + SHX13_2
  SHX13_2 = SHX18_1.z
  SHX14_2 = 0.1
  SHX15_2 = 0.1
  SHX16_2 = 0.1
  SHX17_2 = SHX4_2.widthDifference
  SHX18_2 = SHX19_1.x
  SHX17_2 = SHX17_2 / SHX18_2
  SHX18_2 = SHX4_2.heightDifference
  SHX19_2 = SHX19_1.y
  SHX18_2 = SHX18_2 / SHX19_2
  SHX19_2 = 1.0
  SHX20_2 = 2
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX6_2 = SetTextRenderId
  SHX7_2 = GetDefaultScriptRendertargetRenderId
  SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2 = SHX7_2()
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
  SHX6_2 = SetScriptGfxDrawBehindPausemenu
  SHX7_2 = false
  SHX6_2(SHX7_2)
end
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = nil
  SHX4_1 = SHX0_2
  SHX0_2 = SHX4_1
  if not SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.Visible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "billboards"
    SHX4_2 = "mainmenu"
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX2_2 = true
    SHX0_2(SHX1_2, SHX2_2)
  end
end
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX4_1
  if not SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.CloseAll
    SHX0_2()
  end
end
SHX25_1 = Citizen
SHX25_1 = SHX25_1.CreateThread
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.locations
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createArea
    SHX7_2 = "billboard_"
    SHX8_2 = SHX4_2
    SHX7_2 = SHX7_2 .. SHX8_2
    SHX8_2 = SHX5_2.cameraPosition
    SHX9_2 = 500.0
    SHX10_2 = 500.0
    function SHX11_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX12_2 = SHX17_1
    SHX13_2 = SHX22_1
    SHX14_2 = {}
    SHX14_2.name = SHX4_2
    SHX14_2.info = SHX5_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createDynamicPed
  SHX1_2 = 826475330
  SHX2_2 = SHX0_1.pedLocation
  SHX2_2 = SHX2_2.xyz
  SHX3_2 = SHX0_1.pedLocation
  SHX3_2 = SHX3_2.w
  SHX4_2 = true
  SHX5_2 = nil
  SHX6_2 = nil
  SHX7_2 = 25.0
  SHX8_2 = nil
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.addMarker
  SHX1_2 = SHX0_1.buyMarker
  SHX1_2 = SHX1_2.x
  SHX2_2 = SHX0_1.buyMarker
  SHX2_2 = SHX2_2.y
  SHX3_2 = SHX0_1.buyMarker
  SHX3_2 = SHX3_2.z
  SHX4_2 = 1.0
  SHX5_2 = 1.0
  SHX6_2 = 1.0
  SHX7_2 = 255
  SHX8_2 = 0
  SHX9_2 = 0
  SHX10_2 = 170
  SHX11_2 = 50
  SHX12_2 = 27
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createArea
  SHX1_2 = "billboards_location"
  SHX2_2 = SHX0_1.buyMarker
  SHX3_2 = 1.5
  SHX4_2 = 5.0
  SHX5_2 = SHX23_1
  SHX6_2 = SHX24_1
  SHX7_2 = nil
  SHX8_2 = nil
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
SHX25_1(SHX26_1)
SHX25_1 = CMG
SHX25_1 = SHX25_1.registerDevMenuItems
SHX26_1 = "Billboards"
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Enabled"
  SHX2_2 = "Whether to draw debug information for billboards."
  SHX3_2 = SHX8_1.enabled
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX8_1.enabled = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Separator
  SHX1_2 = "~y~Testing Helpers"
  SHX0_2(SHX1_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Open Remote Menu"
  SHX2_2 = "Opens the menu without having to run to the city hall."
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    if SHX2_3 then
      SHX3_3 = RageUI
      SHX3_3 = SHX3_3.Visible
      SHX4_3 = RMenu
      SHX5_3 = SHX4_3
      SHX4_3 = SHX4_3.Get
      SHX6_3 = "billboards"
      SHX7_3 = "mainmenu"
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3)
      SHX5_3 = true
      SHX3_3(SHX4_3, SHX5_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Fake URL Update"
  SHX2_2 = "Sends a fake URL update event to the local client for the closest billboard."
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    if SHX2_3 then
      SHX3_3 = nil
      SHX4_3 = 1000.0
      SHX5_3 = pairs
      SHX6_3 = SHX0_1.locations
      SHX5_3, SHX6_3, SHX7_3, SHX8_3 = SHX5_3(SHX6_3)
      for SHX9_3, SHX10_3 in SHX5_3, SHX6_3, SHX7_3, SHX8_3 do
        SHX11_3 = CMG
        SHX11_3 = SHX11_3.getPlayerCoords
        SHX11_3 = SHX11_3()
        SHX12_3 = SHX10_3.max
        SHX11_3 = SHX11_3 - SHX12_3
        SHX11_3 = #SHX11_3
        if SHX4_3 > SHX11_3 then
          SHX3_3 = SHX9_3
          SHX4_3 = SHX11_3
        end
      end
      if not SHX3_3 then
        SHX5_3 = notify
        SHX6_3 = "~r~No nearby billboard found."
        SHX5_3(SHX6_3)
        return
      end
      SHX5_3 = CMG
      SHX5_3 = SHX5_3.clientPrompt
      SHX6_3 = "Image URL"
      SHX7_3 = ""
      function SHX8_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4, SHX3_4, SHX4_4
        SHX1_4 = TriggerEvent
        SHX2_4 = "e916ea16dc"
        SHX3_4 = SHX3_3
        SHX4_4 = SHX0_4
        SHX1_4(SHX2_4, SHX3_4, SHX4_4)
        SHX1_4 = notify
        SHX2_4 = string
        SHX2_4 = SHX2_4.format
        SHX3_4 = "~g~Sent URL update to %s"
        SHX4_4 = SHX3_3
        SHX2_4, SHX3_4, SHX4_4 = SHX2_4(SHX3_4, SHX4_4)
        SHX1_4(SHX2_4, SHX3_4, SHX4_4)
      end
      SHX5_3(SHX6_3, SHX7_3, SHX8_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Separator
  SHX1_2 = "~y~Configuration"
  SHX0_2(SHX1_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.ButtonWithStyle
  SHX1_2 = "Rotation X"
  SHX2_2 = "A value that is added on top of the billboard scaleform rotation X component."
  SHX3_2 = {}
  SHX4_2 = tostring
  SHX5_2 = SHX18_1.x
  SHX4_2 = SHX4_2(SHX5_2)
  SHX3_2.RightLabel = SHX4_2
  SHX4_2 = true
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.clientPrompt
      SHX4_3 = "Enter X"
      SHX5_3 = ""
      function SHX6_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4
        SHX1_4 = tonumber
        SHX2_4 = SHX0_4
        SHX1_4 = SHX1_4(SHX2_4)
        if SHX1_4 then
          SHX2_4 = vector3
          SHX3_4 = SHX1_4
          SHX4_4 = SHX18_1.y
          SHX5_4 = SHX18_1.z
          SHX2_4 = SHX2_4(SHX3_4, SHX4_4, SHX5_4)
          SHX18_1 = SHX2_4
        end
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.ButtonWithStyle
  SHX1_2 = "Rotation Y"
  SHX2_2 = "A value that is added on top of the billboard scaleform rotation Y component."
  SHX3_2 = {}
  SHX4_2 = tostring
  SHX5_2 = SHX18_1.y
  SHX4_2 = SHX4_2(SHX5_2)
  SHX3_2.RightLabel = SHX4_2
  SHX4_2 = true
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.clientPrompt
      SHX4_3 = "Enter Y"
      SHX5_3 = ""
      function SHX6_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4
        SHX1_4 = tonumber
        SHX2_4 = SHX0_4
        SHX1_4 = SHX1_4(SHX2_4)
        if SHX1_4 then
          SHX2_4 = vector3
          SHX3_4 = SHX18_1.x
          SHX4_4 = SHX1_4
          SHX5_4 = SHX18_1.z
          SHX2_4 = SHX2_4(SHX3_4, SHX4_4, SHX5_4)
          SHX18_1 = SHX2_4
        end
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.ButtonWithStyle
  SHX1_2 = "Rotation Z"
  SHX2_2 = "A value that is added on top of the billboard scaleform rotation Z component."
  SHX3_2 = {}
  SHX4_2 = tostring
  SHX5_2 = SHX18_1.z
  SHX4_2 = SHX4_2(SHX5_2)
  SHX3_2.RightLabel = SHX4_2
  SHX4_2 = true
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.clientPrompt
      SHX4_3 = "Enter Z"
      SHX5_3 = ""
      function SHX6_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4
        SHX1_4 = tonumber
        SHX2_4 = SHX0_4
        SHX1_4 = SHX1_4(SHX2_4)
        if SHX1_4 then
          SHX2_4 = vector3
          SHX3_4 = SHX18_1.x
          SHX4_4 = SHX18_1.y
          SHX5_4 = SHX1_4
          SHX2_4 = SHX2_4(SHX3_4, SHX4_4, SHX5_4)
          SHX18_1 = SHX2_4
        end
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.ButtonWithStyle
  SHX1_2 = "Aspect Ratio X"
  SHX2_2 = "A value that is used to scale the image width onto the render target."
  SHX3_2 = {}
  SHX4_2 = tostring
  SHX5_2 = SHX19_1.x
  SHX4_2 = SHX4_2(SHX5_2)
  SHX3_2.RightLabel = SHX4_2
  SHX4_2 = true
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.clientPrompt
      SHX4_3 = "Enter X"
      SHX5_3 = ""
      function SHX6_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4, SHX3_4, SHX4_4
        SHX1_4 = tonumber
        SHX2_4 = SHX0_4
        SHX1_4 = SHX1_4(SHX2_4)
        if SHX1_4 then
          SHX2_4 = vector2
          SHX3_4 = SHX1_4
          SHX4_4 = SHX19_1.y
          SHX2_4 = SHX2_4(SHX3_4, SHX4_4)
          SHX19_1 = SHX2_4
        end
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.ButtonWithStyle
  SHX1_2 = "Aspect Ratio Y"
  SHX2_2 = "A value that is used to scale the image height onto the render target."
  SHX3_2 = {}
  SHX4_2 = tostring
  SHX5_2 = SHX19_1.y
  SHX4_2 = SHX4_2(SHX5_2)
  SHX3_2.RightLabel = SHX4_2
  SHX4_2 = true
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.clientPrompt
      SHX4_3 = "Enter Y"
      SHX5_3 = ""
      function SHX6_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4, SHX3_4, SHX4_4
        SHX1_4 = tonumber
        SHX2_4 = SHX0_4
        SHX1_4 = SHX1_4(SHX2_4)
        if SHX1_4 then
          SHX2_4 = vector2
          SHX3_4 = SHX19_1.x
          SHX4_4 = SHX1_4
          SHX2_4 = SHX2_4(SHX3_4, SHX4_4)
          SHX19_1 = SHX2_4
        end
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX25_1(SHX26_1, SHX27_1)
