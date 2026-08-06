-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_licenseplate"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = SHX0_1.licenseChangerCoords
SHX2_1 = ""
SHX3_1 = {}
SHX4_1 = nil
SHX5_1 = RMenu
SHX5_1 = SHX5_1.Add
SHX6_1 = "main"
SHX7_1 = "dvla"
SHX8_1 = RageUI
SHX8_1 = SHX8_1.CreateMenu
SHX9_1 = ""
SHX10_1 = ""
SHX11_1 = CMG
SHX11_1 = SHX11_1.getRageUIMenuWidth
SHX11_1 = SHX11_1()
SHX12_1 = CMG
SHX12_1 = SHX12_1.getRageUIMenuHeight
SHX12_1 = SHX12_1()
SHX13_1 = "cmg_licenseplateui"
SHX14_1 = "cmg_licenseplateui"
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1)
SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX5_1 = RMenu
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.Get
SHX7_1 = "main"
SHX8_1 = "dvla"
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.SetSubtitle
SHX7_1 = "~b~DVLA"
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RMenu
SHX5_1 = SHX5_1.Add
SHX6_1 = "owned"
SHX7_1 = "dvla"
SHX8_1 = RageUI
SHX8_1 = SHX8_1.CreateSubMenu
SHX9_1 = RMenu
SHX10_1 = SHX9_1
SHX9_1 = SHX9_1.Get
SHX11_1 = "main"
SHX12_1 = "dvla"
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX10_1 = ""
SHX11_1 = ""
SHX12_1 = CMG
SHX12_1 = SHX12_1.getRageUIMenuWidth
SHX12_1 = SHX12_1()
SHX13_1 = CMG
SHX13_1 = SHX13_1.getRageUIMenuHeight
SHX13_1 = SHX13_1()
SHX14_1 = "cmg_licenseplateui"
SHX15_1 = "cmg_licenseplateui"
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX5_1 = RMenu
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.Get
SHX7_1 = "owned"
SHX8_1 = "dvla"
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.SetSubtitle
SHX7_1 = "~b~Owned license plates"
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RMenu
SHX5_1 = SHX5_1.Add
SHX6_1 = "owned_inuse"
SHX7_1 = "dvla"
SHX8_1 = RageUI
SHX8_1 = SHX8_1.CreateSubMenu
SHX9_1 = RMenu
SHX10_1 = SHX9_1
SHX9_1 = SHX9_1.Get
SHX11_1 = "owned"
SHX12_1 = "dvla"
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX10_1 = ""
SHX11_1 = ""
SHX12_1 = CMG
SHX12_1 = SHX12_1.getRageUIMenuWidth
SHX12_1 = SHX12_1()
SHX13_1 = CMG
SHX13_1 = SHX13_1.getRageUIMenuHeight
SHX13_1 = SHX13_1()
SHX14_1 = "cmg_licenseplateui"
SHX15_1 = "cmg_licenseplateui"
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX5_1 = RMenu
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.Get
SHX7_1 = "owned_inuse"
SHX8_1 = "dvla"
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.SetSubtitle
SHX7_1 = "~b~Owned license plates"
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RMenu
SHX5_1 = SHX5_1.Add
SHX6_1 = "owned_notinuse"
SHX7_1 = "dvla"
SHX8_1 = RageUI
SHX8_1 = SHX8_1.CreateSubMenu
SHX9_1 = RMenu
SHX10_1 = SHX9_1
SHX9_1 = SHX9_1.Get
SHX11_1 = "owned"
SHX12_1 = "dvla"
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX10_1 = ""
SHX11_1 = ""
SHX12_1 = CMG
SHX12_1 = SHX12_1.getRageUIMenuWidth
SHX12_1 = SHX12_1()
SHX13_1 = CMG
SHX13_1 = SHX13_1.getRageUIMenuHeight
SHX13_1 = SHX13_1()
SHX14_1 = "cmg_licenseplateui"
SHX15_1 = "cmg_licenseplateui"
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX5_1 = RMenu
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.Get
SHX7_1 = "owned_notinuse"
SHX8_1 = "dvla"
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.SetSubtitle
SHX7_1 = "~b~Owned license plates"
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RMenu
SHX5_1 = SHX5_1.Add
SHX6_1 = "individual_plate"
SHX7_1 = "dvla"
SHX8_1 = RageUI
SHX8_1 = SHX8_1.CreateSubMenu
SHX9_1 = RMenu
SHX10_1 = SHX9_1
SHX9_1 = SHX9_1.Get
SHX11_1 = "owned"
SHX12_1 = "dvla"
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX10_1 = ""
SHX11_1 = ""
SHX12_1 = CMG
SHX12_1 = SHX12_1.getRageUIMenuWidth
SHX12_1 = SHX12_1()
SHX13_1 = CMG
SHX13_1 = SHX13_1.getRageUIMenuHeight
SHX13_1 = SHX13_1()
SHX14_1 = "cmg_licenseplateui"
SHX15_1 = "cmg_licenseplateui"
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX5_1 = RMenu
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.Get
SHX7_1 = "individual_plate"
SHX8_1 = "dvla"
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.SetSubtitle
SHX7_1 = "~b~Plate management"
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RMenu
SHX5_1 = SHX5_1.Add
SHX6_1 = "vehicle_list"
SHX7_1 = "dvla"
SHX8_1 = RageUI
SHX8_1 = SHX8_1.CreateSubMenu
SHX9_1 = RMenu
SHX10_1 = SHX9_1
SHX9_1 = SHX9_1.Get
SHX11_1 = "owned"
SHX12_1 = "dvla"
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX10_1 = ""
SHX11_1 = ""
SHX12_1 = CMG
SHX12_1 = SHX12_1.getRageUIMenuWidth
SHX12_1 = SHX12_1()
SHX13_1 = CMG
SHX13_1 = SHX13_1.getRageUIMenuHeight
SHX13_1 = SHX13_1()
SHX14_1 = "cmg_licenseplateui"
SHX15_1 = "cmg_licenseplateui"
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX5_1 = RMenu
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.Get
SHX7_1 = "vehicle_list"
SHX8_1 = "dvla"
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.SetSubtitle
SHX7_1 = "~b~Choose which vehicle to apply this plate to!"
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RMenu
SHX5_1 = SHX5_1.Add
SHX6_1 = "confirm"
SHX7_1 = "dvla"
SHX8_1 = RageUI
SHX8_1 = SHX8_1.CreateMenu
SHX9_1 = ""
SHX10_1 = ""
SHX11_1 = CMG
SHX11_1 = SHX11_1.getRageUIMenuWidth
SHX11_1 = SHX11_1()
SHX12_1 = CMG
SHX12_1 = SHX12_1.getRageUIMenuHeight
SHX12_1 = SHX12_1()
SHX13_1 = "cmg_licenseplateui"
SHX14_1 = "cmg_licenseplateui"
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1)
SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX5_1 = RMenu
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.Get
SHX7_1 = "confirm"
SHX8_1 = "dvla"
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.SetSubtitle
SHX7_1 = "~b~Are you sure?"
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "9d793d59ff"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX8_2 = SHX6_2.license_plate
    SHX7_2 = SHX3_1
    SHX9_2 = SHX6_2.uuid
    SHX7_2[SHX8_2] = SHX9_2
  end
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = AddEventHandler
SHX6_1 = "CMG:onClientSpawn"
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX3_2()
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
      SHX3_3 = "main"
      SHX4_3 = "dvla"
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX2_3 = false
      SHX0_3(SHX1_3, SHX2_3)
    end
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 1
      SHX2_3 = 38
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.CloseAll
        SHX0_3()
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Visible
        SHX1_3 = RMenu
        SHX2_3 = SHX1_3
        SHX1_3 = SHX1_3.Get
        SHX3_3 = "main"
        SHX4_3 = "dvla"
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX2_3 = RageUI
        SHX2_3 = SHX2_3.Visible
        SHX3_3 = RMenu
        SHX4_3 = SHX3_3
        SHX3_3 = SHX3_3.Get
        SHX5_3 = "main"
        SHX6_3 = "dvla"
        SHX3_3, SHX4_3, SHX5_3, SHX6_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3)
        SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
        SHX2_3 = not SHX2_3
        SHX0_3(SHX1_3, SHX2_3)
      end
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.DrawText3D
      SHX1_3 = SHX1_1
      SHX2_3 = "Press [E] to open License Plate Management"
      SHX3_3 = 0.2
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    end
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.createArea
    SHX6_2 = "licenseplate"
    SHX7_2 = SHX1_1
    SHX8_2 = 1.5
    SHX9_2 = 6
    SHX10_2 = SHX2_2
    SHX11_2 = SHX3_2
    SHX12_2 = SHX4_2
    SHX13_2 = {}
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX5_2 = tCMG
    SHX5_2 = SHX5_2.addMarker
    SHX6_2 = SHX1_1.x
    SHX7_2 = SHX1_1.y
    SHX8_2 = SHX1_1.z
    SHX8_2 = SHX8_2 - 1
    SHX9_2 = 1.0
    SHX10_2 = 1.0
    SHX11_2 = 1.0
    SHX12_2 = 255
    SHX13_2 = 0
    SHX14_2 = 0
    SHX15_2 = 170
    SHX16_2 = 50
    SHX17_2 = 27
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX5_2 = tCMG
    SHX5_2 = SHX5_2.addBlip
    SHX6_2 = SHX1_1.x
    SHX7_2 = SHX1_1.y
    SHX8_2 = SHX1_1.z
    SHX9_2 = 606
    SHX10_2 = 2
    SHX11_2 = "Licence Plate Manager"
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  end
end
SHX5_1(SHX6_1, SHX7_1)
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = pairs
  SHX2_2 = SHX3_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    if SHX0_2 == SHX6_2 then
      return SHX5_2
    end
  end
end
SHX6_1 = RageUI
SHX6_1 = SHX6_1.CreateWhile
SHX7_1 = 1.0
SHX8_1 = RMenu
SHX9_1 = SHX8_1
SHX8_1 = SHX8_1.Get
SHX10_1 = "main"
SHX11_1 = "dvla"
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX9_1 = nil
function SHX10_1()
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
  SHX4_2 = "dvla"
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
    SHX1_3 = "Owned License Plates"
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
    SHX8_3 = "owned"
    SHX9_3 = "dvla"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Check Plate Availability"
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.GetRageInputText
        SHX4_4 = "Enter License Plate"
        SHX3_4 = SHX3_4(SHX4_4)
        if not SHX3_4 then
          SHX3_4 = ""
        end
        if "" ~= SHX3_4 then
          SHX4_4 = TriggerServerEvent
          SHX5_4 = "49c1072fac"
          SHX6_4 = SHX3_4
          SHX4_4(SHX5_4, SHX6_4)
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Redeem License Plate"
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.GetRageInputText
        SHX4_4 = "Enter License Plate"
        SHX3_4 = SHX3_4(SHX4_4)
        if not SHX3_4 then
          SHX3_4 = ""
        end
        if "" ~= SHX3_4 then
          SHX4_4 = TriggerServerEvent
          SHX5_4 = "3b8c5be385"
          SHX6_4 = string
          SHX6_4 = SHX6_4.upper
          SHX7_4 = SHX3_4
          SHX6_4, SHX7_4 = SHX6_4(SHX7_4)
          SHX4_4(SHX5_4, SHX6_4, SHX7_4)
        end
      end
    end
    SHX6_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Check Phone Number Availability"
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.GetRageInputText
        SHX4_4 = "Enter Phone Number"
        SHX3_4 = SHX3_4(SHX4_4)
        if "" ~= SHX3_4 then
          SHX4_4 = TriggerServerEvent
          SHX5_4 = "96fcc3ba5a"
          SHX6_4 = SHX3_4
          SHX4_4(SHX5_4, SHX6_4)
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Redeem Phone Number"
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.GetRageInputText
        SHX4_4 = "Enter Phone Number"
        SHX3_4 = SHX3_4(SHX4_4)
        if "" ~= SHX3_4 then
          SHX4_4 = TriggerServerEvent
          SHX5_4 = "924833014b"
          SHX6_4 = string
          SHX6_4 = SHX6_4.upper
          SHX7_4 = SHX3_4
          SHX6_4, SHX7_4 = SHX6_4(SHX7_4)
          SHX4_4(SHX5_4, SHX6_4, SHX7_4)
        end
      end
    end
    SHX6_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
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
  SHX3_2 = "owned"
  SHX4_2 = "dvla"
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
    SHX1_3 = "Equipped plates"
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
    SHX8_3 = "owned_inuse"
    SHX9_3 = "dvla"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Available plates"
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
    SHX8_3 = "owned_notinuse"
    SHX9_3 = "dvla"
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
  SHX3_2 = "confirm"
  SHX4_2 = "dvla"
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
      
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "main"
    SHX9_3 = "dvla"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
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
        SHX4_4 = "~r~Cancelled."
        SHX3_4(SHX4_4)
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "main"
    SHX9_3 = "dvla"
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
  SHX3_2 = "owned_inuse"
  SHX4_2 = "dvla"
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
    SHX1_3 = SHX3_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = CMG
      SHX6_3 = SHX6_3.getVehicleInfoFromUUID
      SHX7_3 = SHX5_3
      SHX6_3 = SHX6_3(SHX7_3)
      if SHX6_3 and 0 ~= SHX5_3 then
        SHX7_3 = RageUI
        SHX7_3 = SHX7_3.ButtonWithStyle
        SHX8_3 = SHX4_3
        SHX9_3 = "In use on "
        SHX10_3 = SHX6_3.name
        SHX9_3 = SHX9_3 .. SHX10_3
        SHX10_3 = {}
        SHX10_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
        SHX11_3 = true
        function SHX12_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4
          if SHX2_4 then
            SHX3_4 = SHX4_3
            SHX2_1 = SHX3_4
          end
        end
        SHX13_3 = nil
        SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
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
  SHX3_2 = "owned_notinuse"
  SHX4_2 = "dvla"
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
    SHX1_3 = SHX3_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      if 0 == SHX5_3 then
        SHX6_3 = RageUI
        SHX6_3 = SHX6_3.ButtonWithStyle
        SHX7_3 = SHX4_3
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
            SHX2_1 = SHX3_4
          end
        end
        SHX12_3 = RMenu
        SHX13_3 = SHX12_3
        SHX12_3 = SHX12_3.Get
        SHX14_3 = "individual_plate"
        SHX15_3 = "dvla"
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
  SHX3_2 = "individual_plate"
  SHX4_2 = "dvla"
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
    SHX1_3 = "Apply on Vehicle"
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = SHX4_1
        if SHX3_4 then
          SHX4_4 = SHX2_1
          SHX3_4 = SHX3_1
          SHX3_4 = SHX3_4[SHX4_4]
          if 0 == SHX3_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "aafd1f557c"
            SHX5_4 = SHX4_1
            SHX6_4 = SHX2_1
            SHX3_4(SHX4_4, SHX5_4, SHX6_4)
          else
            SHX3_4 = tCMG
            SHX3_4 = SHX3_4.notify
            SHX4_4 = "~r~Cannot apply this plate onto a vehicle, it is already in use!"
            SHX3_4(SHX4_4)
          end
          SHX3_4 = nil
          SHX4_1 = SHX3_4
        end
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "vehicle_list"
    SHX9_3 = "dvla"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX1_3 = SHX2_1
    SHX0_3 = SHX3_1
    SHX0_3 = SHX0_3[SHX1_3]
    if 0 == SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Sell to Player"
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
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "20eaf734bb"
          SHX5_4 = SHX2_1
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    else
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "~r~Cannot sell this plate, it is in use."
      SHX0_3(SHX1_3)
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
  SHX3_2 = "vehicle_list"
  SHX4_2 = "dvla"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3
    SHX0_3 = pairs
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.getVehicleInfoLookup
    SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3 = SHX1_3()
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX5_1
      SHX7_3 = SHX4_3
      SHX6_3 = SHX6_3(SHX7_3)
      if not SHX6_3 then
        SHX6_3 = "N/A"
      end
      SHX7_3 = RageUI
      SHX7_3 = SHX7_3.ButtonWithStyle
      SHX8_3 = SHX5_3.name
      SHX9_3 = "Current plate: "
      SHX10_3 = SHX6_3
      SHX9_3 = SHX9_3 .. SHX10_3
      SHX10_3 = {}
      SHX10_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX11_3 = true
      function SHX12_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4
        if SHX2_4 then
          SHX3_4 = SHX4_3
          SHX4_1 = SHX3_4
        end
      end
      SHX13_3 = RMenu
      SHX14_3 = SHX13_3
      SHX13_3 = SHX13_3.Get
      SHX15_3 = "individual_plate"
      SHX16_3 = "dvla"
      SHX13_3, SHX14_3, SHX15_3, SHX16_3 = SHX13_3(SHX14_3, SHX15_3, SHX16_3)
      SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
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
SHX6_1(SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "a4a422640d"
function SHX8_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2
  SHX3_2 = SHX3_1
  SHX3_2[SHX0_2] = SHX2_2
  SHX3_2 = SHX3_1
  SHX3_2[SHX1_2] = 0
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "724b8c37e4"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX3_1
  SHX1_2[SHX0_2] = 0
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "88371b8fc9"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX3_1
  SHX1_2[SHX0_2] = nil
end
SHX6_1(SHX7_1, SHX8_1)
