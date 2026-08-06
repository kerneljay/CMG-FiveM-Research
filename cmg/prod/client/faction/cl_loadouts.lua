-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_loadouts"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = nil
SHX3_1 = 0
SHX4_1 = ""
SHX5_1 = RMenu
SHX5_1 = SHX5_1.Add
SHX6_1 = "loadouts"
SHX7_1 = "mainmenu"
SHX8_1 = RageUI
SHX8_1 = SHX8_1.CreateMenu
SHX9_1 = ""
SHX10_1 = "Loadouts"
SHX11_1 = CMG
SHX11_1 = SHX11_1.getRageUIMenuWidth
SHX11_1 = SHX11_1()
SHX12_1 = CMG
SHX12_1 = SHX12_1.getRageUIMenuHeight
SHX12_1 = SHX12_1()
SHX13_1 = "cmg_loadouts"
SHX14_1 = "cmg_loadouts"
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1)
SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX5_1 = RMenu
SHX5_1 = SHX5_1.Add
SHX6_1 = "loadouts"
SHX7_1 = "view"
SHX8_1 = RageUI
SHX8_1 = SHX8_1.CreateSubMenu
SHX9_1 = RMenu
SHX10_1 = SHX9_1
SHX9_1 = SHX9_1.Get
SHX11_1 = "loadouts"
SHX12_1 = "mainmenu"
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX10_1 = ""
SHX11_1 = "Loadouts"
SHX12_1 = CMG
SHX12_1 = SHX12_1.getRageUIMenuWidth
SHX12_1 = SHX12_1()
SHX13_1 = CMG
SHX13_1 = SHX13_1.getRageUIMenuHeight
SHX13_1 = SHX13_1()
SHX14_1 = "cmg_loadouts"
SHX15_1 = "cmg_loadouts"
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX5_1 = RageUI
SHX5_1 = SHX5_1.CreateWhile
SHX6_1 = 1.0
SHX7_1 = RMenu
SHX8_1 = SHX7_1
SHX7_1 = SHX7_1.Get
SHX9_1 = "loadouts"
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
  SHX3_2 = "loadouts"
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
    SHX1_3 = "~y~View Custom Loadouts"
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
      
      local SHX3_4
      if SHX2_4 then
        SHX3_4 = 0
        SHX3_1 = SHX3_4
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "loadouts"
    SHX9_3 = "view"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~g~Save Current Loadout"
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
        SHX4_4 = "ee12a1db92"
        SHX5_4 = SHX2_1
        SHX3_4(SHX4_4, SHX5_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "loadouts"
  SHX4_2 = "view"
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
    SHX1_3 = SHX2_1
    SHX0_3 = SHX1_1
    SHX0_3 = SHX0_3[SHX1_3]
    if SHX0_3 then
      SHX1_3 = #SHX0_3
      if 0 ~= SHX1_3 then
        goto SHX_LABEL_14
      end
    end
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Separator
    SHX2_3 = "~r~You have no saved loadouts in this category"
    SHX1_3(SHX2_3)
    return
    -- [FIX IF ERROR] Move ::SHX_LABEL_14:: outside nested blocks until all 'goto SHX_LABEL_14' can see it
    ::SHX_LABEL_14::
    SHX1_3 = pairs
    SHX2_3 = SHX0_3
    SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
    for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
      SHX7_3 = RageUI
      SHX7_3 = SHX7_3.ButtonWithStyle
      SHX8_3 = SHX6_3.name
      SHX9_3 = SHX4_1
      SHX10_3 = {}
      SHX11_3 = string
      SHX11_3 = SHX11_3.format
      SHX12_3 = "\194\163%s"
      SHX13_3 = SHX6_3.price
      SHX11_3 = SHX11_3(SHX12_3, SHX13_3)
      SHX10_3.RightLabel = SHX11_3
      SHX11_3 = true
      function SHX12_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
        if SHX1_4 then
          SHX3_4 = SHX3_1
          SHX4_4 = SHX5_3
          if SHX3_4 ~= SHX4_4 then
            SHX3_4 = SHX5_3
            SHX3_1 = SHX3_4
            SHX3_4 = ""
            SHX4_1 = SHX3_4
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "78e1192fb6"
            SHX5_4 = SHX2_1
            SHX6_4 = SHX5_3
            SHX7_4 = SHX6_3.items
            SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4)
          end
        end
        if SHX1_4 then
          SHX3_4 = drawNativeNotification
          SHX4_4 = "Press ~INPUT_FRONTEND_DELETE~ to delete this loadout"
          SHX3_4(SHX4_4)
          SHX3_4 = IsControlJustPressed
          SHX4_4 = 0
          SHX5_4 = 214
          SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
          if SHX3_4 then
            SHX3_4 = table
            SHX3_4 = SHX3_4.remove
            SHX4_4 = SHX0_3
            SHX5_4 = SHX5_3
            SHX3_4(SHX4_4, SHX5_4)
            SHX3_4 = SetResourceKvp
            SHX4_4 = "cmg_loadouts"
            SHX5_4 = json
            SHX5_4 = SHX5_4.encode
            SHX6_4 = SHX1_1
            SHX5_4, SHX6_4, SHX7_4 = SHX5_4(SHX6_4)
            SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4)
            SHX3_4 = notify
            SHX4_4 = "~r~Loadout removed successfully."
            SHX3_4(SHX4_4)
          end
        end
        if SHX2_4 then
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.isPlatClub
          SHX3_4 = SHX3_4()
          if SHX3_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "cbd7c161ac"
            SHX5_4 = SHX2_1
            SHX6_4 = SHX6_3.items
            SHX3_4(SHX4_4, SHX5_4, SHX6_4)
          else
            SHX3_4 = notify
            SHX4_4 = "~y~You need to be a subscriber of CMG Platinum to use this feature."
            SHX3_4(SHX4_4)
            SHX3_4 = notify
            SHX4_4 = "~y~Available @ store.cmgstudios.net"
            SHX3_4(SHX4_4)
          end
        end
      end
      SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1)
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX0_1.types
  SHX2_2 = SHX0_2.info
  SHX2_2 = SHX2_2.type
  SHX1_2 = SHX1_2[SHX2_2]
  if SHX1_2 then
    SHX2_2 = SHX1_2.permission
    if SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.hasClientPermission
      SHX3_2 = SHX1_2.permission
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        SHX2_2 = SHX0_2.info
        SHX2_2 = SHX2_2.type
        SHX2_1 = SHX2_2
        SHX3_2 = SHX2_1
        SHX2_2 = SHX1_1
        SHX2_2 = SHX2_2[SHX3_2]
        if SHX2_2 then
          SHX3_2 = #SHX2_2
          if SHX3_2 > 0 then
            SHX3_2 = TriggerServerEvent
            SHX4_2 = "fbc104fb05"
            SHX5_2 = SHX2_1
            SHX6_2 = SHX2_2
            SHX3_2(SHX4_2, SHX5_2, SHX6_2)
          end
        end
        SHX3_2 = RageUI
        SHX3_2 = SHX3_2.Visible
        SHX4_2 = RMenu
        SHX5_2 = SHX4_2
        SHX4_2 = SHX4_2.Get
        SHX6_2 = "loadouts"
        SHX7_2 = "mainmenu"
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
        SHX5_2 = true
        SHX3_2(SHX4_2, SHX5_2)
      else
        SHX2_2 = notify
        SHX3_2 = "~r~No permission to access loadouts here."
        SHX2_2(SHX3_2)
      end
    end
  end
end
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsAnyMenuOfTypeVisible
  SHX1_2 = "loadouts"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.CloseAll
    SHX0_2()
  end
end
SHX7_1 = Citizen
SHX7_1 = SHX7_1.CreateThread
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX0_2 = GetResourceKvpString
  SHX1_2 = "cmg_loadouts"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX1_2 = json
    SHX1_2 = SHX1_2.decode
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = {}
    end
    SHX1_1 = SHX1_2
  end
  SHX1_2 = pairs
  SHX2_2 = SHX0_1.locations
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.createArea
    SHX8_2 = "loadout_"
    SHX9_2 = tostring
    SHX10_2 = SHX5_2
    SHX9_2 = SHX9_2(SHX10_2)
    SHX8_2 = SHX8_2 .. SHX9_2
    SHX9_2 = SHX6_2.position
    SHX10_2 = 1.5
    SHX11_2 = 2.5
    SHX12_2 = SHX5_1
    SHX13_2 = SHX6_1
    function SHX14_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX15_2 = {}
    SHX15_2.info = SHX6_2
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX7_2 = tCMG
    SHX7_2 = SHX7_2.addMarker
    SHX8_2 = SHX6_2.position
    SHX8_2 = SHX8_2.x
    SHX9_2 = SHX6_2.position
    SHX9_2 = SHX9_2.y
    SHX10_2 = SHX6_2.position
    SHX10_2 = SHX10_2.z
    SHX10_2 = SHX10_2 - 0.2
    SHX11_2 = 0.5
    SHX12_2 = 0.5
    SHX13_2 = 0.5
    SHX14_2 = 255
    SHX15_2 = 165
    SHX16_2 = 0
    SHX17_2 = 170
    SHX18_2 = 50
    SHX19_2 = 20
    SHX20_2 = false
    SHX21_2 = false
    SHX22_2 = true
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  end
end
SHX7_1(SHX8_1)
SHX7_1 = RegisterNetEvent
SHX8_1 = "cbd7c161ac"
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.isInGunstore
    if SHX7_2 then
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.purchaseFromGunstore
      SHX8_2 = SHX6_2.gunstoreName
      SHX9_2 = SHX5_2
      SHX10_2 = SHX6_2.amount
      SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    else
      SHX7_2 = SHX6_2.isInMarket
      if SHX7_2 then
        SHX7_2 = CMG
        SHX7_2 = SHX7_2.purchaseFromMarket
        SHX8_2 = SHX6_2.marketName
        SHX9_2 = SHX5_2
        SHX10_2 = SHX6_2.amount
        SHX7_2(SHX8_2, SHX9_2, SHX10_2)
      end
    end
  end
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "53d18271be"
  SHX1_2(SHX2_2)
  SHX1_2 = notify
  SHX2_2 = "~g~Custom loadout equipped!"
  SHX1_2(SHX2_2)
end
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = RegisterNetEvent
SHX8_1 = "ee12a1db92"
function SHX9_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2[SHX0_2]
  if not SHX2_2 then
    SHX2_2 = SHX1_1
    SHX3_2 = {}
    SHX2_2[SHX0_2] = SHX3_2
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.clientPrompt
  SHX3_2 = "Enter Loadout Name"
  SHX4_2 = ""
  function SHX5_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX1_3 = #SHX0_3
    if SHX1_3 < 2 then
      SHX1_3 = notify
      SHX2_3 = "~r~Loadout name must be at least 2 characters."
      SHX1_3(SHX2_3)
      return
    end
    SHX1_3 = {}
    SHX1_3.name = SHX0_3
    SHX2_3 = SHX1_2
    SHX1_3.items = SHX2_3
    SHX2_3 = table
    SHX2_3 = SHX2_3.insert
    SHX4_3 = SHX0_2
    SHX3_3 = SHX1_1
    SHX3_3 = SHX3_3[SHX4_3]
    SHX4_3 = SHX1_3
    SHX2_3(SHX3_3, SHX4_3)
    SHX2_3 = SetResourceKvp
    SHX3_3 = "cmg_loadouts"
    SHX4_3 = json
    SHX4_3 = SHX4_3.encode
    SHX5_3 = SHX1_1
    SHX4_3, SHX5_3 = SHX4_3(SHX5_3)
    SHX2_3(SHX3_3, SHX4_3, SHX5_3)
    SHX2_3 = notify
    SHX3_3 = "~g~Loadout saved successfully!"
    SHX2_3(SHX3_3)
  end
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = RegisterNetEvent
SHX8_1 = "78e1192fb6"
function SHX9_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX3_1
  if SHX0_2 == SHX2_2 then
    SHX4_1 = SHX1_2
  end
end
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = RegisterNetEvent
SHX8_1 = "d39749e61b"
function SHX9_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX2_1
  if SHX2_2 == SHX0_2 then
    SHX2_2 = SHX1_1
    SHX2_2[SHX0_2] = SHX1_2
  end
end
SHX7_1(SHX8_1, SHX9_1)
