-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_identity"
SHX0_1 = SHX0_1(SHX1_1)
if not SHX0_1 then
  return
end
SHX1_1 = SHX0_1.identites
SHX2_1 = RMenu
SHX2_1 = SHX2_1.Add
SHX3_1 = "main"
SHX4_1 = "identity"
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
SHX10_1 = "cmg_cityhallui"
SHX11_1 = "cmg_cityhallui"
SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1)
SHX2_1(SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1)
SHX2_1 = RMenu
SHX3_1 = SHX2_1
SHX2_1 = SHX2_1.Get
SHX4_1 = "main"
SHX5_1 = "identity"
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX3_1 = SHX2_1
SHX2_1 = SHX2_1.SetSubtitle
SHX4_1 = "~b~Identity Services"
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = AddEventHandler
SHX3_1 = "CMG:onClientSpawn"
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_PICKUP~ to access the City Hall."
      SHX0_3(SHX1_3)
      SHX0_3 = PlaySound
      SHX1_3 = -1
      SHX2_3 = "SELECT"
      SHX3_3 = "HUD_MINI_GAME_SOUNDSET"
      SHX4_3 = false
      SHX5_3 = 0
      SHX6_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
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
      SHX0_3 = SHX0_3.CloseAll
      SHX0_3()
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Visible
      SHX1_3 = RMenu
      SHX2_3 = SHX1_3
      SHX1_3 = SHX1_3.Get
      SHX3_3 = "main"
      SHX4_3 = "identity"
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
      SHX2_3 = 51
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
        SHX4_3 = "identity"
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX2_3 = RageUI
        SHX2_3 = SHX2_3.Visible
        SHX3_3 = RMenu
        SHX4_3 = SHX3_3
        SHX3_3 = SHX3_3.Get
        SHX5_3 = "cmgadminmenu"
        SHX6_3 = "identity"
        SHX3_3, SHX4_3, SHX5_3, SHX6_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3)
        SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
        SHX2_3 = not SHX2_3
        SHX0_3(SHX1_3, SHX2_3)
      end
    end
    SHX5_2 = pairs
    SHX6_2 = SHX1_1
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.createArea
      SHX12_2 = "identity_"
      SHX13_2 = SHX9_2
      SHX12_2 = SHX12_2 .. SHX13_2
      SHX13_2 = SHX10_2
      SHX14_2 = 1.5
      SHX15_2 = 6
      SHX16_2 = SHX2_2
      SHX17_2 = SHX3_2
      SHX18_2 = SHX4_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX11_2 = tCMG
      SHX11_2 = SHX11_2.addMarker
      SHX12_2 = SHX10_2.x
      SHX13_2 = SHX10_2.y
      SHX14_2 = SHX10_2.z
      SHX14_2 = SHX14_2 - 0.2
      SHX15_2 = 0.5
      SHX16_2 = 0.5
      SHX17_2 = 0.5
      SHX18_2 = 0
      SHX19_2 = 50
      SHX20_2 = 255
      SHX21_2 = 170
      SHX22_2 = 50
      SHX23_2 = 20
      SHX24_2 = false
      SHX25_2 = false
      SHX26_2 = true
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
    end
    SHX5_2 = TriggerServerEvent
    SHX6_2 = "e58e55199b"
    SHX5_2(SHX6_2)
  end
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RageUI
SHX2_1 = SHX2_1.CreateWhile
SHX3_1 = 1.0
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "main"
SHX7_1 = "identity"
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
  SHX3_2 = "main"
  SHX4_2 = "identity"
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
    SHX1_3 = "Change your Identity"
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
        SHX4_4 = "509b447bd2"
        SHX3_4(SHX4_4)
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "confirm"
    SHX9_3 = "identity"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getClientBounty
    SHX0_3 = SHX0_3()
    if SHX0_3 > 0 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "~r~Pay Outstanding Bounty"
      SHX2_3 = ""
      SHX3_3 = {}
      SHX4_3 = "\194\163"
      SHX5_3 = getMoneyStringFormatted
      SHX6_3 = CMG
      SHX6_3 = SHX6_3.getClientBounty
      SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3()
      SHX5_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      SHX4_3 = SHX4_3 .. SHX5_3
      SHX3_3.RightLabel = SHX4_3
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
          SHX4_4 = "c9701a471a"
          SHX3_4(SHX4_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    end
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getOustandingHouseTaxAmount
    SHX0_3 = SHX0_3()
    if SHX0_3 > 0 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.ButtonWithStyle
      SHX2_3 = "~r~Pay Outstanding House Taxes"
      SHX3_3 = ""
      SHX4_3 = {}
      SHX5_3 = "\194\163"
      SHX6_3 = getMoneyStringFormatted
      SHX7_3 = SHX0_3
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
        
        local SHX3_4, SHX4_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "e58e55199b"
          SHX3_4(SHX4_4)
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
end
SHX2_1(SHX3_1, SHX4_1, SHX5_1, SHX6_1)
SHX2_1 = false
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = GetPlayerFromServerId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -1 == SHX1_2 then
    SHX2_2 = "CHAR_BLOCKED"
    SHX3_2 = nil
    return SHX2_2, SHX3_2
  end
  SHX2_2 = GetPlayerPed
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    SHX3_2 = "CHAR_BLOCKED"
    SHX4_2 = nil
    return SHX3_2, SHX4_2
  end
  SHX3_2 = RegisterPedheadshotTransparent
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = GetGameTimer
  SHX4_2 = SHX4_2()
  while true do
    SHX5_2 = IsPedheadshotReady
    SHX6_2 = SHX3_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      break
    end
    SHX5_2 = GetGameTimer
    SHX5_2 = SHX5_2()
    SHX5_2 = SHX5_2 - SHX4_2
    SHX6_2 = 2500
    if not (SHX5_2 > SHX6_2) then
      SHX5_2 = IsPedheadshotValid
      SHX6_2 = SHX3_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 then
        goto SHX_LABEL_45
      end
    end
    SHX5_2 = UnregisterPedheadshot
    SHX6_2 = SHX3_2
    SHX5_2(SHX6_2)
    SHX5_2 = "CHAR_BLOCKED"
    SHX6_2 = nil
    return SHX5_2, SHX6_2
    -- [FIX IF ERROR] Move ::SHX_LABEL_45:: outside nested blocks until all 'goto SHX_LABEL_45' can see it
    ::SHX_LABEL_45::
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  SHX5_2 = GetPedheadshotTxdString
  SHX6_2 = SHX3_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = SHX3_2
  return SHX5_2, SHX6_2
end
SHX4_1 = RegisterNetEvent
SHX5_1 = "24e267197d"
function SHX6_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2
  SHX9_2 = true
  SHX2_1 = SHX9_2
  SHX9_2 = RequestStreamedTextureDict
  SHX10_2 = "driving_licence"
  SHX11_2 = false
  SHX9_2(SHX10_2, SHX11_2)
  while true do
    SHX9_2 = HasStreamedTextureDictLoaded
    SHX10_2 = "driving_licence"
    SHX9_2 = SHX9_2(SHX10_2)
    if SHX9_2 then
      break
    end
    SHX9_2 = Citizen
    SHX9_2 = SHX9_2.Wait
    SHX10_2 = 0
    SHX9_2(SHX10_2)
  end
  SHX9_2 = SHX3_1
  SHX10_2 = SHX0_2
  SHX9_2, SHX10_2 = SHX9_2(SHX10_2)
  if SHX1_2 then
    SHX11_2 = "full"
    if SHX11_2 then
      goto SHX_LABEL_26
    end
  end
  SHX11_2 = "provisional"
  -- [FIX IF ERROR] Move ::SHX_LABEL_26:: outside nested blocks until all 'goto SHX_LABEL_26' can see it
  ::SHX_LABEL_26::
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.getFontId
  SHX13_2 = "Montserrat-Light"
  SHX12_2 = SHX12_2(SHX13_2)
  SHX13_2 = string
  SHX13_2 = SHX13_2.upper
  SHX14_2 = SHX2_2
  SHX13_2 = SHX13_2(SHX14_2)
  SHX2_2 = SHX13_2
  SHX13_2 = string
  SHX13_2 = SHX13_2.upper
  SHX14_2 = SHX3_2
  SHX13_2 = SHX13_2(SHX14_2)
  SHX3_2 = SHX13_2
  while true do
    SHX13_2 = SHX2_1
    if not SHX13_2 then
      break
    end
    SHX13_2 = DrawSprite
    SHX14_2 = "driving_licence"
    SHX15_2 = SHX11_2
    SHX16_2 = 0.13
    SHX17_2 = 0.5
    SHX18_2 = 0.35
    SHX19_2 = 0.35
    SHX20_2 = 0.0
    SHX21_2 = 255
    SHX22_2 = 255
    SHX23_2 = 255
    SHX24_2 = 255
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
    SHX13_2 = DrawSprite
    SHX14_2 = SHX9_2
    SHX15_2 = SHX9_2
    SHX16_2 = 0.048
    SHX17_2 = 0.49
    SHX18_2 = 0.052
    SHX19_2 = 0.11
    SHX20_2 = 0.0
    SHX21_2 = 255
    SHX22_2 = 255
    SHX23_2 = 255
    SHX24_2 = 255
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
    SHX13_2 = DrawAdvancedTextNoOutline
    SHX14_2 = 0.188
    SHX15_2 = 0.411
    SHX16_2 = 0.005
    SHX17_2 = 0.0028
    SHX18_2 = 0.2
    SHX19_2 = SHX2_2
    SHX20_2 = 70
    SHX21_2 = 70
    SHX22_2 = 71
    SHX23_2 = 255
    SHX24_2 = SHX12_2
    SHX25_2 = 1
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
    SHX13_2 = DrawAdvancedTextNoOutline
    SHX14_2 = 0.188
    SHX15_2 = 0.4245
    SHX16_2 = 0.005
    SHX17_2 = 0.0028
    SHX18_2 = 0.2
    SHX19_2 = SHX3_2
    SHX20_2 = 70
    SHX21_2 = 70
    SHX22_2 = 71
    SHX23_2 = 255
    SHX24_2 = SHX12_2
    SHX25_2 = 1
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
    SHX13_2 = DrawAdvancedTextNoOutline
    SHX14_2 = 0.188
    SHX15_2 = 0.4545
    SHX16_2 = 0.005
    SHX17_2 = 0.0028
    SHX18_2 = 0.2
    SHX19_2 = string
    SHX19_2 = SHX19_2.format
    SHX20_2 = "%s UNITED KINGDOM"
    SHX21_2 = SHX4_2
    SHX19_2 = SHX19_2(SHX20_2, SHX21_2)
    SHX20_2 = 70
    SHX21_2 = 70
    SHX22_2 = 71
    SHX23_2 = 255
    SHX24_2 = SHX12_2
    SHX25_2 = 1
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
    SHX13_2 = DrawAdvancedTextNoOutline
    SHX14_2 = 0.188
    SHX15_2 = 0.47
    SHX16_2 = 0.005
    SHX17_2 = 0.0028
    SHX18_2 = 0.2
    SHX19_2 = SHX6_2
    SHX20_2 = 70
    SHX21_2 = 70
    SHX22_2 = 71
    SHX23_2 = 255
    SHX24_2 = SHX12_2
    SHX25_2 = 1
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
    SHX13_2 = DrawAdvancedTextNoOutline
    SHX14_2 = 0.238
    SHX15_2 = 0.47
    SHX16_2 = 0.005
    SHX17_2 = 0.0028
    SHX18_2 = 0.2
    SHX19_2 = "DVLA"
    SHX20_2 = 70
    SHX21_2 = 70
    SHX22_2 = 71
    SHX23_2 = 255
    SHX24_2 = SHX12_2
    SHX25_2 = 1
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
    SHX13_2 = DrawAdvancedTextNoOutline
    SHX14_2 = 0.188
    SHX15_2 = 0.485
    SHX16_2 = 0.005
    SHX17_2 = 0.0028
    SHX18_2 = 0.2
    SHX19_2 = SHX7_2
    SHX20_2 = 70
    SHX21_2 = 70
    SHX22_2 = 71
    SHX23_2 = 255
    SHX24_2 = SHX12_2
    SHX25_2 = 1
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
    SHX13_2 = DrawAdvancedTextNoOutline
    SHX14_2 = 0.2
    SHX15_2 = 0.5
    SHX16_2 = 0.005
    SHX17_2 = 0.0028
    SHX18_2 = 0.2
    SHX19_2 = "CMG02072018BD9CV"
    SHX20_2 = 70
    SHX21_2 = 70
    SHX22_2 = 71
    SHX23_2 = 255
    SHX24_2 = SHX12_2
    SHX25_2 = 1
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
    SHX13_2 = DrawAdvancedTextNoOutline
    SHX14_2 = 0.188
    SHX15_2 = 0.556
    SHX16_2 = 0.005
    SHX17_2 = 0.0028
    SHX18_2 = 0.2
    SHX19_2 = "1 Victoria St, London SW1H 0ET"
    SHX20_2 = 70
    SHX21_2 = 70
    SHX22_2 = 71
    SHX23_2 = 255
    SHX24_2 = SHX12_2
    SHX25_2 = 1
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
    SHX13_2 = DrawAdvancedTextNoOutline
    SHX14_2 = 0.188
    SHX15_2 = 0.596
    SHX16_2 = 0.005
    SHX17_2 = 0.0028
    SHX18_2 = 0.2
    SHX19_2 = "AM/B/f/k/q"
    SHX20_2 = 70
    SHX21_2 = 70
    SHX22_2 = 71
    SHX23_2 = 255
    SHX24_2 = SHX12_2
    SHX25_2 = 1
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
    SHX13_2 = Citizen
    SHX13_2 = SHX13_2.Wait
    SHX14_2 = 0
    SHX13_2(SHX14_2)
  end
  SHX13_2 = SetStreamedTextureDictAsNoLongerNeeded
  SHX14_2 = "driving_licence"
  SHX13_2(SHX14_2)
  if SHX10_2 then
    SHX13_2 = UnregisterPedheadshot
    SHX14_2 = SHX10_2
    SHX13_2(SHX14_2)
  end
end
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = RegisterNetEvent
SHX5_1 = "d47617dc0c"
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX2_1 = SHX0_2
end
SHX4_1(SHX5_1, SHX6_1)
