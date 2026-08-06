-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_ipls"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = 0
SHX2_1 = 0
SHX3_1 = 0
function SHX4_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX4_2 = SHX1_1
  if SHX3_2 then
    SHX5_2 = -1
    if SHX5_2 then
      goto SHX_LABEL_8
    end
  end
  SHX5_2 = 1
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX4_2 = SHX4_2 + SHX5_2
  SHX1_1 = SHX4_2
  SHX4_2 = SHX0_2.iplNames
  if SHX4_2 then
    SHX4_2 = pairs
    SHX5_2 = SHX0_2.iplNames
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
      SHX10_2 = SHX1_2
      SHX11_2 = SHX9_2
      SHX10_2(SHX11_2)
      SHX10_2 = SHX2_1
      if SHX3_2 then
        SHX11_2 = -1
        if SHX11_2 then
          goto SHX_LABEL_28
        end
      end
      SHX11_2 = 1
      -- [FIX IF ERROR] Move ::SHX_LABEL_28:: outside nested blocks until all 'goto SHX_LABEL_28' can see it
      ::SHX_LABEL_28::
      SHX10_2 = SHX10_2 + SHX11_2
      SHX2_1 = SHX10_2
    end
  end
  SHX4_2 = SHX0_2.entitySetNames
  if SHX4_2 then
    SHX4_2 = pairs
    SHX5_2 = SHX0_2.entitySetNames
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
      SHX10_2 = SHX0_2.position
      SHX11_2 = SHX9_2.type
      if SHX11_2 then
        SHX11_2 = GetInteriorAtCoordsWithType
        SHX12_2 = SHX10_2.x
        SHX13_2 = SHX10_2.y
        SHX14_2 = SHX10_2.z
        SHX15_2 = SHX9_2.type
        SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
        if SHX11_2 then
          goto SHX_LABEL_58
        end
      end
      SHX11_2 = GetInteriorAtCoords
      SHX12_2 = SHX10_2.x
      SHX13_2 = SHX10_2.y
      SHX14_2 = SHX10_2.z
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
      -- [FIX IF ERROR] Move ::SHX_LABEL_58:: outside nested blocks until all 'goto SHX_LABEL_58' can see it
      ::SHX_LABEL_58::
      SHX12_2 = IsValidInterior
      SHX13_2 = SHX11_2
      SHX12_2 = SHX12_2(SHX13_2)
      if SHX12_2 then
        SHX12_2 = SHX9_2.request
        if SHX12_2 then
          SHX12_2 = pairs
          SHX13_2 = SHX9_2.request
          SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX12_2(SHX13_2)
          for SHX16_2, SHX17_2 in SHX12_2, SHX13_2, SHX14_2, SHX15_2 do
            SHX18_2 = SHX2_2
            SHX19_2 = SHX11_2
            SHX20_2 = SHX17_2
            SHX18_2(SHX19_2, SHX20_2)
            SHX18_2 = SHX3_1
            if SHX3_2 then
              SHX19_2 = -1
              if SHX19_2 then
                goto SHX_LABEL_81
              end
            end
            SHX19_2 = 1
            -- [FIX IF ERROR] Move ::SHX_LABEL_81:: outside nested blocks until all 'goto SHX_LABEL_81' can see it
            ::SHX_LABEL_81::
            SHX18_2 = SHX18_2 + SHX19_2
            SHX3_1 = SHX18_2
            SHX18_2 = SHX9_2.colour
            if SHX18_2 and not SHX3_2 then
              SHX18_2 = SetInteriorEntitySetColor
              SHX19_2 = SHX11_2
              SHX20_2 = SHX17_2
              SHX21_2 = SHX9_2.colour
              SHX18_2(SHX19_2, SHX20_2, SHX21_2)
            end
          end
        end
        SHX12_2 = SHX9_2.remove
        if SHX12_2 then
          SHX12_2 = pairs
          SHX13_2 = SHX9_2.remove
          SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX12_2(SHX13_2)
          for SHX16_2, SHX17_2 in SHX12_2, SHX13_2, SHX14_2, SHX15_2 do
            SHX18_2 = DeactivateInteriorEntitySet
            SHX19_2 = SHX11_2
            SHX20_2 = SHX17_2
            SHX18_2(SHX19_2, SHX20_2)
          end
        end
        SHX12_2 = RefreshInterior
        SHX13_2 = SHX11_2
        SHX12_2(SHX13_2)
      end
    end
  end
end
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX4_1
  SHX2_2 = SHX0_2
  SHX3_2 = RequestIpl
  SHX4_2 = ActivateInteriorEntitySet
  SHX5_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX4_1
  SHX2_2 = SHX0_2
  SHX3_2 = RemoveIpl
  SHX4_2 = DeactivateInteriorEntitySet
  SHX5_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
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
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = SetDeepOceanScaler
  SHX1_2 = 0.0
  SHX0_2(SHX1_2)
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.alwaysLoadedIplNames
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = RequestIpl
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.nearbyLocations
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createArea
    SHX7_2 = string
    SHX7_2 = SHX7_2.format
    SHX8_2 = "ipl_area_%s"
    SHX9_2 = SHX4_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    SHX8_2 = SHX5_2.position
    SHX9_2 = SHX5_2.radius
    SHX10_2 = SHX5_2.radius
    SHX11_2 = SHX5_1
    SHX12_2 = SHX6_1
    function SHX13_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX14_2 = SHX5_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
end
SHX7_1(SHX8_1)
SHX7_1 = CMG
SHX7_1 = SHX7_1.registerDevMenuItems
SHX8_1 = "IPLs"
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Separator
  SHX1_2 = string
  SHX1_2 = SHX1_2.format
  SHX2_2 = "Num Areas Active: %s"
  SHX3_2 = SHX1_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Separator
  SHX1_2 = string
  SHX1_2 = SHX1_2.format
  SHX2_2 = "Num IPLs Active: %s"
  SHX3_2 = SHX2_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Separator
  SHX1_2 = string
  SHX1_2 = SHX1_2.format
  SHX2_2 = "Num Entity Sets Active: %s"
  SHX3_2 = SHX3_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetRoomKeyForGameViewport
  SHX1_2 = SHX1_2()
  SHX2_2 = GetGameplayCamCoord
  SHX2_2 = SHX2_2()
  SHX3_2 = GetInteriorAtCoords
  SHX4_2 = SHX2_2.x
  SHX5_2 = SHX2_2.y
  SHX6_2 = SHX2_2.z
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = GetRoomKeyFromEntity
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = GetInteriorFromEntity
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = RageUI
  SHX6_2 = SHX6_2.ButtonWithStyle
  SHX7_2 = "Interior (Entity)"
  SHX8_2 = ""
  SHX9_2 = {}
  SHX10_2 = tostring
  SHX11_2 = SHX5_2
  SHX10_2 = SHX10_2(SHX11_2)
  SHX9_2.RightLabel = SHX10_2
  SHX10_2 = true
  function SHX11_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.copyToClipboard
      SHX4_3 = tostring
      SHX5_3 = SHX5_2
      SHX4_3, SHX5_3 = SHX4_3(SHX5_3)
      SHX3_3(SHX4_3, SHX5_3)
      SHX3_3 = notify
      SHX4_3 = "~g~Copied to clipboard."
      SHX3_3(SHX4_3)
    end
  end
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX6_2 = RageUI
  SHX6_2 = SHX6_2.ButtonWithStyle
  SHX7_2 = "Interior (Viewport)"
  SHX8_2 = ""
  SHX9_2 = {}
  SHX10_2 = tostring
  SHX11_2 = SHX3_2
  SHX10_2 = SHX10_2(SHX11_2)
  SHX9_2.RightLabel = SHX10_2
  SHX10_2 = true
  function SHX11_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.copyToClipboard
      SHX4_3 = tostring
      SHX5_3 = SHX3_2
      SHX4_3, SHX5_3 = SHX4_3(SHX5_3)
      SHX3_3(SHX4_3, SHX5_3)
      SHX3_3 = notify
      SHX4_3 = "~g~Copied to clipboard."
      SHX3_3(SHX4_3)
    end
  end
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX6_2 = RageUI
  SHX6_2 = SHX6_2.ButtonWithStyle
  SHX7_2 = "Room Key (Entity)"
  SHX8_2 = ""
  SHX9_2 = {}
  SHX10_2 = tostring
  SHX11_2 = SHX4_2
  SHX10_2 = SHX10_2(SHX11_2)
  SHX9_2.RightLabel = SHX10_2
  SHX10_2 = true
  function SHX11_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.copyToClipboard
      SHX4_3 = tostring
      SHX5_3 = SHX4_2
      SHX4_3, SHX5_3 = SHX4_3(SHX5_3)
      SHX3_3(SHX4_3, SHX5_3)
      SHX3_3 = notify
      SHX4_3 = "~g~Copied to clipboard."
      SHX3_3(SHX4_3)
    end
  end
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX6_2 = RageUI
  SHX6_2 = SHX6_2.ButtonWithStyle
  SHX7_2 = "Room Key (Viewport)"
  SHX8_2 = ""
  SHX9_2 = {}
  SHX10_2 = tostring
  SHX11_2 = SHX1_2
  SHX10_2 = SHX10_2(SHX11_2)
  SHX9_2.RightLabel = SHX10_2
  SHX10_2 = true
  function SHX11_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.copyToClipboard
      SHX4_3 = tostring
      SHX5_3 = SHX1_2
      SHX4_3, SHX5_3 = SHX4_3(SHX5_3)
      SHX3_3(SHX4_3, SHX5_3)
      SHX3_3 = notify
      SHX4_3 = "~g~Copied to clipboard."
      SHX3_3(SHX4_3)
    end
  end
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
end
SHX7_1(SHX8_1, SHX9_1)
