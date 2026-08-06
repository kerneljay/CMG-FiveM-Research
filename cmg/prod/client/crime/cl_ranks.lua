-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1
SHX0_1 = {}
SHX1_1 = nil
SHX2_1 = CMG
SHX2_1.gangOrgClientState = nil
SHX2_1 = CMG
SHX2_1 = SHX2_1.registerDevMenuState
SHX3_1 = "GangOrg"
SHX4_1 = {}
SHX4_1.drawDebug = false
SHX2_1 = SHX2_1(SHX3_1, SHX4_1)
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX0_2
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = type
      SHX9_2 = SHX6_2
      SHX8_2 = SHX8_2(SHX9_2)
      if "number" == SHX8_2 and SHX7_2 then
        SHX8_2 = table
        SHX8_2 = SHX8_2.insert
        SHX9_2 = SHX1_2
        SHX10_2 = SHX6_2
        SHX8_2(SHX9_2, SHX10_2)
      end
    end
  end
  SHX2_2 = table
  SHX2_2 = SHX2_2.sort
  SHX3_2 = SHX1_2
  function SHX4_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3
    SHX2_3 = SHX0_3 < SHX1_3
    return SHX2_3
  end
  SHX2_2(SHX3_2, SHX4_2)
  return SHX1_2
end
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if not SHX0_2 then
    SHX1_2 = {}
    return SHX1_2
  end
  SHX1_2 = SHX0_2.components
  if SHX1_2 then
    SHX1_2 = {}
    SHX1_2[1] = SHX0_2
    return SHX1_2
  end
  return SHX0_2
end
SHX5_1 = {}
SHX6_1 = {}
SHX5_1.blips = SHX6_1
SHX6_1 = {}
SHX5_1.markets = SHX6_1
SHX6_1 = {}
SHX5_1.areas = SHX6_1
SHX5_1.currentOrg = -1
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = pairs
  SHX1_2 = SHX5_1.blips
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.removeBlip
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = pairs
  SHX1_2 = SHX5_1.markets
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.removeMarker
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = pairs
  SHX1_2 = SHX5_1.areas
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.removeArea
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX5_1.blips = SHX0_2
  SHX0_2 = {}
  SHX5_1.markets = SHX0_2
  SHX0_2 = {}
  SHX5_1.areas = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangOrgClientState
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getGangId
  SHX1_2 = SHX1_2()
  if SHX0_2 then
    SHX2_2 = SHX0_2.hasOrgPack
    if true == SHX2_2 then
      SHX2_2 = SHX0_2.isActiveGangContext
      if SHX2_2 then
        SHX2_2 = SHX0_2.clockOnPoint
        if SHX2_2 and SHX1_2 then
          goto SHX_LABEL_62
        end
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_62:: outside nested blocks until all 'goto SHX_LABEL_62' can see it
  ::SHX_LABEL_62::
  SHX2_2 = SHX0_2.clockOnPoint
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.gangCachedData
  if SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.gangCachedData
    SHX3_2 = SHX3_2.id
    if SHX3_2 == SHX1_2 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.gangCachedData
      SHX3_2 = SHX3_2.name
      if SHX3_2 then
        goto SHX_LABEL_78
      end
    end
  end
  SHX3_2 = "Gang"
  -- [FIX IF ERROR] Move ::SHX_LABEL_78:: outside nested blocks until all 'goto SHX_LABEL_78' can see it
  ::SHX_LABEL_78::
  SHX4_2 = tCMG
  SHX4_2 = SHX4_2.addMarker
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX7_2 = SHX7_2 - 1
  SHX8_2 = 1.0
  SHX9_2 = 1.0
  SHX10_2 = 1.0
  SHX11_2 = 20
  SHX12_2 = 255
  SHX13_2 = 90
  SHX14_2 = 200
  SHX15_2 = 50
  SHX16_2 = 1
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX5_2 = tCMG
  SHX5_2 = SHX5_2.addBlip
  SHX6_2 = SHX2_2.x
  SHX7_2 = SHX2_2.y
  SHX8_2 = SHX2_2.z
  SHX8_2 = SHX8_2 - 1
  SHX9_2 = 366
  SHX10_2 = 2
  SHX11_2 = SHX3_2
  SHX12_2 = 0.7
  SHX13_2 = true
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX6_2 = SHX1_2
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.createArea
  SHX8_2 = string
  SHX8_2 = SHX8_2.format
  SHX9_2 = "gang_org_clockon_%s"
  SHX10_2 = SHX6_2
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX9_2 = vector3
  SHX10_2 = SHX2_2.x
  SHX11_2 = SHX2_2.y
  SHX12_2 = SHX2_2.z
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX10_2 = 1.5
  SHX11_2 = 3.0
  function SHX12_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = SHX6_2
    SHX5_1.currentOrg = SHX0_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Visible
    SHX1_3 = RMenu
    SHX2_3 = SHX1_3
    SHX1_3 = SHX1_3.Get
    SHX3_3 = "organisations"
    SHX4_3 = "clockon"
    SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    SHX2_3 = true
    SHX0_3(SHX1_3, SHX2_3)
  end
  function SHX13_2()
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
    SHX3_3 = "organisations"
    SHX4_3 = "clockon"
    SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    SHX2_3 = false
    SHX0_3(SHX1_3, SHX2_3)
  end
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
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX8_2 = table
  SHX8_2 = SHX8_2.insert
  SHX9_2 = SHX5_1.blips
  SHX10_2 = SHX5_2
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = table
  SHX8_2 = SHX8_2.insert
  SHX9_2 = SHX5_1.markets
  SHX10_2 = SHX4_2
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = table
  SHX8_2 = SHX8_2.insert
  SHX9_2 = SHX5_1.areas
  SHX10_2 = SHX7_2
  SHX8_2(SHX9_2, SHX10_2)
end
SHX7_1 = RMenu
SHX7_1 = SHX7_1.Add
SHX8_1 = "organisations"
SHX9_1 = "clockon"
SHX10_1 = RageUI
SHX10_1 = SHX10_1.CreateMenu
SHX11_1 = ""
SHX12_1 = "Organisations Clock-On"
SHX13_1 = CMG
SHX13_1 = SHX13_1.getRageUIMenuWidth
SHX13_1 = SHX13_1()
SHX14_1 = CMG
SHX14_1 = SHX14_1.getRageUIMenuHeight
SHX14_1 = SHX14_1()
SHX15_1 = "cmg_orgs"
SHX16_1 = "cmg_orgs"
SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1)
SHX7_1(SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1)
SHX7_1 = RageUI
SHX7_1 = SHX7_1.CreateWhile
SHX8_1 = 1.0
SHX9_1 = RMenu
SHX10_1 = SHX9_1
SHX9_1 = SHX9_1.Get
SHX11_1 = "organisations"
SHX12_1 = "clockon"
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX10_1 = nil
function SHX11_1()
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
  SHX3_2 = "organisations"
  SHX4_2 = "clockon"
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
    SHX0_3 = SHX5_1.currentOrg
    if not SHX0_3 or -1 == SHX0_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.Separator
      SHX2_3 = "~r~Organisation not found."
      SHX1_3(SHX2_3)
      return
    end
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.getGangId
    SHX1_3 = SHX1_3()
    if SHX1_3 ~= SHX0_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.Separator
      SHX2_3 = "~r~You do not have permission to clock on to this organisation."
      SHX1_3(SHX2_3)
      return
    end
    SHX1_3 = SHX1_1
    if SHX1_3 == SHX0_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.Separator
      SHX2_3 = "~g~You are clocked on."
      SHX1_3(SHX2_3)
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.ButtonWithStyle
      SHX2_3 = "Clock Off"
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
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "89494969a3"
          SHX3_4(SHX4_4)
          SHX3_4 = nil
          SHX1_1 = SHX3_4
          SHX3_4 = SetPedComponentVariation
          SHX4_4 = PlayerPedId
          SHX4_4 = SHX4_4()
          SHX5_4 = 11
          SHX6_4 = 0
          SHX7_4 = 0
          SHX8_4 = 0
          SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
          SHX3_4 = TriggerEvent
          SHX4_4 = "e892eba4b7"
          SHX3_4(SHX4_4)
        end
      end
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    else
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.Separator
      SHX2_3 = "~r~You are not currently clocked on."
      SHX1_3(SHX2_3)
      SHX1_3 = SHX4_1
      SHX2_3 = SHX0_1
      SHX2_3 = SHX2_3[SHX0_3]
      SHX1_3 = SHX1_3(SHX2_3)
      SHX2_3 = SHX3_1
      SHX3_3 = SHX1_3
      SHX2_3 = SHX2_3(SHX3_3)
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.getGangRankOutfitSlotMax
      SHX3_3 = SHX3_3()
      SHX4_3 = {}
      SHX5_3 = ipairs
      SHX6_3 = SHX2_3
      SHX5_3, SHX6_3, SHX7_3, SHX8_3 = SHX5_3(SHX6_3)
      for SHX9_3, SHX10_3 in SHX5_3, SHX6_3, SHX7_3, SHX8_3 do
        if SHX10_3 <= SHX3_3 then
          SHX11_3 = #SHX4_3
          SHX11_3 = SHX11_3 + 1
          SHX4_3[SHX11_3] = SHX10_3
        end
      end
      SHX2_3 = SHX4_3
      SHX5_3 = #SHX2_3
      if 0 == SHX5_3 then
        SHX5_3 = RageUI
        SHX5_3 = SHX5_3.Separator
        SHX6_3 = "~r~No outfits available."
        SHX5_3(SHX6_3)
      else
        SHX5_3 = ipairs
        SHX6_3 = SHX2_3
        SHX5_3, SHX6_3, SHX7_3, SHX8_3 = SHX5_3(SHX6_3)
        for SHX9_3, SHX10_3 in SHX5_3, SHX6_3, SHX7_3, SHX8_3 do
          SHX11_3 = RageUI
          SHX11_3 = SHX11_3.ButtonWithStyle
          SHX12_3 = string
          SHX12_3 = SHX12_3.format
          SHX13_3 = "Clock On (Outfit %s)"
          SHX14_3 = SHX10_3
          SHX12_3 = SHX12_3(SHX13_3, SHX14_3)
          SHX13_3 = ""
          SHX14_3 = {}
          SHX14_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
          SHX15_3 = true
          function SHX16_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4, SHX4_4, SHX5_4
            if SHX2_4 then
              SHX3_4 = tCMG
              SHX3_4 = SHX3_4.setCustomization
              SHX5_4 = SHX10_3
              SHX4_4 = SHX1_3
              SHX4_4 = SHX4_4[SHX5_4]
              SHX5_4 = true
              SHX3_4(SHX4_4, SHX5_4)
              SHX3_4 = TriggerServerEvent
              SHX4_4 = "4cf1535b7c"
              SHX5_4 = SHX0_3
              SHX3_4(SHX4_4, SHX5_4)
              SHX3_4 = SHX0_3
              SHX1_1 = SHX3_4
              SHX3_4 = SHX0_3
              SHX5_1.currentOrg = SHX3_4
              SHX3_4 = TriggerEvent
              SHX4_4 = "f7b3a54a8f"
              SHX3_4(SHX4_4)
            end
          end
          SHX11_3(SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
        end
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
SHX7_1(SHX8_1, SHX9_1, SHX10_1, SHX11_1)
SHX7_1 = CMG
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1
  SHX0_2 = nil ~= SHX0_2
  return SHX0_2
end
SHX7_1.isClientClockedOnOrganisation = SHX8_1
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  if not SHX1_2 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = GetPedDrawableVariation
  SHX3_2 = SHX0_2
  SHX4_2 = 4
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = GetPedDrawableVariation
  SHX4_2 = SHX0_2
  SHX5_2 = 11
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  function SHX4_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
    if SHX0_3 then
      SHX1_3 = SHX0_3.components
      if SHX1_3 then
        goto SHX_LABEL_8
      end
    end
    SHX1_3 = false
    return SHX1_3
    -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
    ::SHX_LABEL_8::
    SHX1_3 = SHX0_3.components
    SHX1_3 = SHX1_3[4]
    SHX2_3 = SHX0_3.components
    SHX2_3 = SHX2_3[11]
    if not SHX1_3 or not SHX2_3 then
      SHX3_3 = false
      return SHX3_3
    end
    SHX3_3 = GetPedDrawableGlobalIndexFromCollection
    SHX4_3 = SHX0_2
    SHX5_3 = 4
    SHX6_3 = SHX1_3.collectionName
    SHX7_3 = SHX1_3.collectionIndex
    SHX3_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX4_3 = GetPedDrawableGlobalIndexFromCollection
    SHX5_3 = SHX0_2
    SHX6_3 = 11
    SHX7_3 = SHX2_3.collectionName
    SHX8_3 = SHX2_3.collectionIndex
    SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    SHX5_3 = SHX2_1.drawDebug
    if SHX5_3 then
      SHX5_3 = CMG
      SHX5_3 = SHX5_3.drawDebugText
      SHX6_3 = "Top: %s vs %s | Legs: %s vs %s"
      SHX7_3 = SHX3_2
      SHX8_3 = SHX4_3
      SHX9_3 = SHX2_2
      SHX10_3 = SHX3_3
      SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
    end
    SHX5_3 = SHX2_2
    SHX5_3 = SHX5_3 == SHX3_3
    return SHX5_3
  end
  SHX5_2 = SHX1_2.components
  if SHX5_2 then
    SHX5_2 = SHX4_2
    SHX6_2 = SHX1_2
    return SHX5_2(SHX6_2)
  end
  SHX5_2 = pairs
  SHX6_2 = SHX1_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = SHX4_2
    SHX12_2 = SHX10_2
    SHX11_2 = SHX11_2(SHX12_2)
    if SHX11_2 then
      SHX11_2 = true
      return SHX11_2
    end
  end
  SHX5_2 = false
  return SHX5_2
end
SHX8_1 = RegisterNetEvent
SHX9_1 = "656095f1f0"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX0_2 or nil
  if not SHX0_2 then
    SHX1_2 = {}
  end
  SHX0_1 = SHX1_2
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "6a730425f2"
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  if not SHX0_2 then
    return
  end
  SHX2_2 = SHX0_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "33422a179e"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "78494c1664"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  if not SHX0_2 then
    SHX1_2 = CMG
    SHX1_2.gangOrgClientState = nil
    SHX1_2 = nil
    SHX1_1 = SHX1_2
    SHX1_2 = TriggerEvent
    SHX2_2 = "238e25c639"
    SHX1_2(SHX2_2)
    SHX1_2 = SHX6_1
    SHX1_2()
    return
  end
  SHX1_2 = SHX0_2.hasOrgPack
  if false == SHX1_2 then
    SHX1_2 = CMG
    SHX1_2.gangOrgClientState = SHX0_2
  else
    SHX1_2 = SHX0_2.hasOrgPack
    if true == SHX1_2 then
      SHX1_2 = CMG
      SHX1_2.gangOrgClientState = SHX0_2
    else
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.gangOrgClientState
      if not SHX1_2 then
        SHX1_2 = {}
      end
      SHX2_2 = CMG
      SHX3_2 = {}
      SHX2_2.gangOrgClientState = SHX3_2
      SHX2_2 = pairs
      SHX3_2 = SHX1_2
      SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
      for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.gangOrgClientState
        SHX8_2[SHX6_2] = SHX7_2
      end
      SHX2_2 = pairs
      SHX3_2 = SHX0_2
      SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
      for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.gangOrgClientState
        SHX8_2[SHX6_2] = SHX7_2
      end
    end
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.gangOrgClientState
  if SHX1_2 then
    SHX2_2 = SHX1_2.hasOrgPack
    if false == SHX2_2 then
      SHX2_2 = nil
      SHX1_1 = SHX2_2
  end
  elseif SHX1_2 then
    SHX2_2 = SHX1_2.isClockedOn
    if SHX2_2 then
      SHX2_2 = SHX1_2.clockedGangId
      if SHX2_2 then
        SHX2_2 = SHX1_2.clockedGangId
        SHX1_1 = SHX2_2
    end
    else
      SHX2_2 = SHX1_2.isClockedOn
      if false == SHX2_2 then
        SHX2_2 = nil
        SHX1_1 = SHX2_2
      end
    end
  end
  SHX2_2 = TriggerEvent
  SHX3_2 = "238e25c639"
  SHX2_2(SHX3_2)
  SHX2_2 = SHX6_1
  SHX2_2()
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = Citizen
SHX8_1 = SHX8_1.CreateThread
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  while true do
    SHX0_2 = SHX2_1.drawDebug
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.drawDebugText
      SHX1_2 = "Clocked On: %s (GangID: %s)"
      SHX2_2 = SHX1_1
      SHX2_2 = not SHX2_2
      SHX2_2 = not SHX2_2
      SHX3_2 = SHX1_1
      if not SHX3_2 then
        SHX3_2 = "N/A"
      end
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    end
    SHX0_2 = PlayerPedId
    SHX0_2 = SHX0_2()
    SHX1_2 = nil
    SHX2_2 = pairs
    SHX3_2 = SHX0_1
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = SHX7_1
      SHX9_2 = SHX0_2
      SHX10_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      if SHX8_2 then
        SHX1_2 = SHX6_2
        break
      end
    end
    if SHX1_2 then
      SHX2_2 = SHX1_1
      if not SHX2_2 then
        SHX2_2 = CMG
        SHX2_2 = SHX2_2.showGangNuiNotify
        SHX3_2 = true
        SHX4_2 = "You have been clocked on to your gang rank outfit."
        SHX2_2(SHX3_2, SHX4_2)
        SHX2_2 = TriggerServerEvent
        SHX3_2 = "4cf1535b7c"
        SHX4_2 = SHX1_2
        SHX2_2(SHX3_2, SHX4_2)
        SHX1_1 = SHX1_2
        SHX2_2 = TriggerEvent
        SHX3_2 = "f7b3a54a8f"
        SHX2_2(SHX3_2)
    end
    elseif not SHX1_2 then
      SHX2_2 = SHX1_1
      if SHX2_2 then
        SHX2_2 = TriggerServerEvent
        SHX3_2 = "89494969a3"
        SHX2_2(SHX3_2)
        SHX2_2 = nil
        SHX1_1 = SHX2_2
        SHX2_2 = TriggerEvent
        SHX3_2 = "e892eba4b7"
        SHX2_2(SHX3_2)
        SHX2_2 = CMG
        SHX2_2 = SHX2_2.showGangNuiNotify
        SHX3_2 = false
        SHX4_2 = "You have been clocked off after removing your rank outfit."
        SHX2_2(SHX3_2, SHX4_2)
      end
    end
    SHX2_2 = Wait
    SHX3_2 = SHX2_1.drawDebug
    if SHX3_2 then
      SHX3_2 = 0
      if SHX3_2 then
        goto SHX_LABEL_78
      end
    end
    SHX3_2 = 10000
    -- [FIX IF ERROR] Move ::SHX_LABEL_78:: outside nested blocks until all 'goto SHX_LABEL_78' can see it
    ::SHX_LABEL_78::
    SHX2_2(SHX3_2)
  end
end
SHX8_1(SHX9_1)
SHX8_1 = CMG
SHX8_1 = SHX8_1.registerDevMenuItems
SHX9_1 = "GangOrg"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "View Debug"
  SHX2_2 = "Displays outfit clock debug"
  SHX3_2 = SHX2_1.drawDebug
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX2_1.drawDebug = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX8_1(SHX9_1, SHX10_1)
