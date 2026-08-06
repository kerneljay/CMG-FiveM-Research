-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1
SHX0_1 = CMG
SHX0_1.gangUseNui = true
SHX0_1 = CMG
SHX0_1.gangMembershipTiles = nil
SHX0_1 = 0
SHX1_1 = CMG
SHX1_1 = SHX1_1.loadModule
SHX2_1 = "cfg/cfg_gang"
SHX1_1 = SHX1_1(SHX2_1)
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangPinnedPlayers
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.gangPinnedPlayers
    return SHX0_2
  end
  SHX0_2 = GetResourceKvpString
  SHX1_2 = "cmg_gang_pinned"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = "{}"
  end
  SHX1_2 = json
  SHX1_2 = SHX1_2.decode
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = {}
  end
  SHX2_2 = {}
  SHX3_2 = pairs
  SHX4_2 = SHX1_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX8_2 = tonumber
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX2_2[SHX8_2] = true
  end
  return SHX2_2
end
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangCachedData
  if not SHX0_2 then
    SHX1_2 = {}
    return SHX1_2
  end
  SHX1_2 = SHX2_1
  SHX1_2 = SHX1_2()
  SHX2_2 = {}
  SHX3_2 = SHX0_2.members
  if SHX3_2 then
    SHX3_2 = pairs
    SHX4_2 = SHX0_2.members
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = tonumber
      SHX10_2 = SHX7_2
      SHX9_2 = SHX9_2(SHX10_2)
      if not SHX9_2 then
        SHX9_2 = SHX7_2
      end
      SHX10_2 = #SHX2_2
      SHX10_2 = SHX10_2 + 1
      SHX11_2 = {}
      SHX11_2.user_id = SHX9_2
      SHX12_2 = SHX8_2.name
      if not SHX12_2 then
        SHX12_2 = "Unknown"
      end
      SHX11_2.name = SHX12_2
      SHX12_2 = SHX8_2.lastLogin
      if not SHX12_2 then
        SHX12_2 = "Offline"
      end
      SHX11_2.lastLogin = SHX12_2
      SHX12_2 = SHX8_2.permissions
      if not SHX12_2 then
        SHX12_2 = {}
      end
      SHX11_2.permissions = SHX12_2
      SHX11_2.isGuest = false
      SHX12_2 = SHX1_2[SHX9_2]
      SHX12_2 = true == SHX12_2
      SHX11_2.isPinned = SHX12_2
      SHX12_2 = SHX8_2.gangRank
      SHX11_2.gangRank = SHX12_2
      SHX2_2[SHX10_2] = SHX11_2
    end
  end
  SHX3_2 = SHX0_2.guests
  if SHX3_2 then
    SHX3_2 = pairs
    SHX4_2 = SHX0_2.guests
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = tonumber
      SHX10_2 = SHX7_2
      SHX9_2 = SHX9_2(SHX10_2)
      if not SHX9_2 then
        SHX9_2 = SHX7_2
      end
      SHX10_2 = #SHX2_2
      SHX10_2 = SHX10_2 + 1
      SHX11_2 = {}
      SHX11_2.user_id = SHX9_2
      SHX12_2 = SHX8_2.name
      if not SHX12_2 then
        SHX12_2 = "Unknown"
      end
      SHX11_2.name = SHX12_2
      SHX11_2.lastLogin = "Offline"
      SHX12_2 = SHX8_2.permissions
      if not SHX12_2 then
        SHX12_2 = {}
      end
      SHX11_2.permissions = SHX12_2
      SHX11_2.isGuest = true
      SHX12_2 = SHX1_2[SHX9_2]
      SHX12_2 = true == SHX12_2
      SHX11_2.isPinned = SHX12_2
      SHX12_2 = SHX8_2.gangRank
      SHX11_2.gangRank = SHX12_2
      SHX2_2[SHX10_2] = SHX11_2
    end
  end
  SHX3_2 = SHX1_1
  if SHX3_2 then
    SHX3_2 = SHX1_1.permissions
    if SHX3_2 then
      SHX3_2 = SHX1_1.permissions
      SHX3_2 = #SHX3_2
      if SHX3_2 then
        goto SHX_LABEL_115
      end
    end
  end
  SHX3_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_115:: outside nested blocks until all 'goto SHX_LABEL_115' can see it
  ::SHX_LABEL_115::
  function SHX4_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX1_3 = SHX0_3.isGuest
    if SHX1_3 then
      SHX1_3 = -1
      return SHX1_3
    end
    SHX1_3 = 0
    SHX2_3 = pairs
    SHX3_3 = SHX0_3.permissions
    if not SHX3_3 then
      SHX3_3 = {}
    end
    SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3)
    for SHX6_3, SHX7_3 in SHX2_3, SHX3_3, SHX4_3, SHX5_3 do
      if SHX7_3 then
        SHX1_3 = SHX1_3 + 1
      end
    end
    SHX2_3 = SHX3_2
    if SHX2_3 > 0 then
      SHX2_3 = SHX3_2
      SHX2_3 = SHX1_3 / SHX2_3
      if SHX2_3 then
        goto SHX_LABEL_31
      end
    end
    SHX2_3 = 0
    -- [FIX IF ERROR] Move ::SHX_LABEL_31:: outside nested blocks until all 'goto SHX_LABEL_31' can see it
    ::SHX_LABEL_31::
    return SHX2_3
  end
  SHX5_2 = table
  SHX5_2 = SHX5_2.sort
  SHX6_2 = SHX2_2
  function SHX7_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX2_3 = SHX4_2
    SHX3_3 = SHX0_3
    SHX2_3 = SHX2_3(SHX3_3)
    SHX3_3 = SHX4_2
    SHX4_3 = SHX1_3
    SHX3_3 = SHX3_3(SHX4_3)
    if SHX2_3 ~= SHX3_3 then
      SHX4_3 = SHX2_3 > SHX3_3
      return SHX4_3
    end
    SHX4_3 = SHX0_3.user_id
    SHX5_3 = SHX1_3.user_id
    SHX4_3 = SHX4_3 < SHX5_3
    return SHX4_3
  end
  SHX5_2(SHX6_2, SHX7_2)
  return SHX2_2
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX1_1
  if SHX0_2 then
    SHX0_2 = SHX1_1.permissions
    if SHX0_2 then
      goto SHX_LABEL_10
    end
  end
  SHX0_2 = {}
  return SHX0_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX0_2 = {}
  SHX1_2 = ipairs
  SHX2_2 = SHX1_1.permissions
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = #SHX0_2
    SHX7_2 = SHX7_2 + 1
    SHX8_2 = {}
    SHX9_2 = SHX6_2.id
    SHX8_2.id = SHX9_2
    SHX9_2 = SHX6_2.name
    if not SHX9_2 then
      SHX9_2 = SHX6_2.id
    end
    SHX8_2.name = SHX9_2
    SHX9_2 = SHX6_2.description
    if not SHX9_2 then
      SHX9_2 = ""
    end
    SHX8_2.description = SHX9_2
    SHX0_2[SHX7_2] = SHX8_2
  end
  return SHX0_2
end
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.gangCachedData
  if SHX1_2 then
    SHX2_2 = SHX1_2.members
    if SHX2_2 then
      goto SHX_LABEL_10
    end
  end
  SHX2_2 = false
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getClientUserId
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX1_2.members
  SHX3_2 = SHX3_2[SHX2_2]
  if not SHX3_2 then
    SHX3_2 = SHX1_2.members
    SHX4_2 = tostring
    SHX5_2 = SHX2_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX3_2 = SHX3_2[SHX4_2]
  end
  if SHX3_2 then
    SHX4_2 = SHX3_2.permissions
    if SHX4_2 then
      goto SHX_LABEL_29
    end
  end
  SHX4_2 = false
  return SHX4_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_29:: outside nested blocks until all 'goto SHX_LABEL_29' can see it
  ::SHX_LABEL_29::
  SHX4_2 = SHX3_2.permissions
  SHX4_2 = SHX4_2[SHX0_2]
  SHX4_2 = SHX3_2.permissions
  SHX4_2 = SHX4_2.leader
  SHX4_2 = not SHX4_2
  SHX4_2 = SHX4_2 or SHX4_2
  return SHX4_2
end
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangCachedData
  if not SHX0_2 then
    SHX1_2 = nil
    return SHX1_2
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.gangRecognisedGangs
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.gangRecognisedGangs
    SHX2_2 = SHX0_2.id
    SHX1_2 = SHX1_2[SHX2_2]
    if SHX1_2 then
      goto SHX_LABEL_18
    end
  end
  SHX1_2 = nil
  -- [FIX IF ERROR] Move ::SHX_LABEL_18:: outside nested blocks until all 'goto SHX_LABEL_18' can see it
  ::SHX_LABEL_18::
  SHX2_2 = {}
  SHX3_2 = SHX1_1
  if SHX3_2 then
    SHX3_2 = SHX1_1.colourLookup
    if SHX3_2 then
      SHX3_2 = pairs
      SHX4_2 = SHX1_1.colourLookup
      SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
      for SHX7_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
        SHX8_2 = #SHX2_2
        SHX8_2 = SHX8_2 + 1
        SHX2_2[SHX8_2] = SHX7_2
      end
      SHX3_2 = table
      SHX3_2 = SHX3_2.sort
      SHX4_2 = SHX2_2
      SHX3_2(SHX4_2)
    end
  end
  SHX3_2 = nil
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getClientUserId
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX0_2.members
  if SHX5_2 then
    SHX5_2 = SHX0_2.members
    SHX5_2 = SHX5_2[SHX4_2]
    if not SHX5_2 then
      SHX5_2 = SHX0_2.members
      SHX6_2 = tostring
      SHX7_2 = SHX4_2
      SHX6_2 = SHX6_2(SHX7_2)
      SHX5_2 = SHX5_2[SHX6_2]
    end
    if SHX5_2 then
      SHX6_2 = type
      SHX7_2 = SHX5_2.colour
      SHX6_2 = SHX6_2(SHX7_2)
      if "string" == SHX6_2 then
        SHX6_2 = SHX1_1
        if SHX6_2 then
          SHX6_2 = SHX1_1.colourLookup
          if SHX6_2 then
            SHX6_2 = SHX1_1.colourLookup
            SHX7_2 = SHX5_2.colour
            SHX6_2 = SHX6_2[SHX7_2]
            if SHX6_2 then
              SHX3_2 = SHX5_2.colour
            end
          end
        end
      end
    end
  end
  if not SHX3_2 then
    SHX5_2 = GetResourceKvpString
    SHX6_2 = "cmg_gang_colour"
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = type
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if "string" == SHX6_2 then
      SHX6_2 = SHX1_1
      if SHX6_2 then
        SHX6_2 = SHX1_1.colourLookup
        if SHX6_2 then
          SHX6_2 = SHX1_1.colourLookup
          SHX6_2 = SHX6_2[SHX5_2]
          if SHX6_2 then
            SHX3_2 = SHX5_2
          end
        end
      end
    end
  end
  if not SHX3_2 then
    SHX3_2 = "Red"
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.gangClientSettings
  if not SHX5_2 then
    SHX5_2 = {}
  end
  SHX6_2 = {}
  SHX7_2 = SHX0_2.isAdvanced
  SHX7_2 = true == SHX7_2
  SHX6_2.isAdvanced = SHX7_2
  SHX7_2 = nil ~= SHX1_2
  SHX6_2.isRecognised = SHX7_2
  SHX7_2 = SHX5_1
  SHX8_2 = "leader"
  SHX7_2 = SHX7_2(SHX8_2)
  SHX6_2.isLeader = SHX7_2
  SHX7_2 = SHX5_1
  SHX8_2 = "security"
  SHX7_2 = SHX7_2(SHX8_2)
  SHX6_2.hasSecurity = SHX7_2
  SHX7_2 = SHX0_2.maxWithdraw
  if not SHX7_2 then
    SHX7_2 = 0
  end
  SHX6_2.maxWithdraw = SHX7_2
  SHX7_2 = SHX0_2.limitWithdrawDeposit
  SHX7_2 = true == SHX7_2
  SHX6_2.limitWithdrawDeposit = SHX7_2
  if SHX1_2 then
    SHX7_2 = SHX1_2.tagName
    if SHX7_2 then
      goto SHX_LABEL_147
    end
  end
  SHX7_2 = SHX0_2.tagName
  if not SHX7_2 then
    SHX7_2 = ""
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_147:: outside nested blocks until all 'goto SHX_LABEL_147' can see it
  ::SHX_LABEL_147::
  SHX6_2.tagName = SHX7_2
  if SHX1_2 then
    SHX7_2 = SHX1_2.turfColour
    if SHX7_2 then
      goto SHX_LABEL_154
    end
  end
  SHX7_2 = "Red"
  -- [FIX IF ERROR] Move ::SHX_LABEL_154:: outside nested blocks until all 'goto SHX_LABEL_154' can see it
  ::SHX_LABEL_154::
  SHX6_2.turfColour = SHX7_2
  SHX6_2.availableColours = SHX2_2
  SHX7_2 = SHX5_2.blips
  SHX7_2 = true == SHX7_2
  SHX6_2.blips = SHX7_2
  SHX7_2 = SHX5_2.pings
  SHX7_2 = true == SHX7_2
  SHX6_2.pings = SHX7_2
  SHX7_2 = SHX5_2.names
  SHX7_2 = true == SHX7_2
  SHX6_2.names = SHX7_2
  SHX6_2.personalBlipColour = SHX3_2
  return SHX6_2
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = {}
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.gangCachedData
  if SHX1_2 then
    SHX2_2 = ipairs
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getDrugTurfsUiPayload
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX3_2()
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = #SHX0_2
      SHX8_2 = SHX8_2 + 1
      SHX0_2[SHX8_2] = SHX7_2
    end
  end
  if not SHX1_2 then
    return SHX0_2
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.gangCapturedTurfs
  if not SHX2_2 then
    SHX2_2 = {}
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.gangRecognisedGangs
  if not SHX3_2 then
    SHX3_2 = {}
  end
  SHX4_2 = SHX1_1
  if SHX4_2 then
    SHX4_2 = SHX1_1.turfs
    if SHX4_2 then
      goto SHX_LABEL_42
    end
  end
  return SHX0_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_42:: outside nested blocks until all 'goto SHX_LABEL_42' can see it
  ::SHX_LABEL_42::
  SHX4_2 = SHX1_2.id
  SHX4_2 = SHX3_2[SHX4_2]
  if not SHX4_2 then
    return SHX0_2
  end
  SHX5_2 = ipairs
  SHX6_2 = SHX1_1.turfs
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = SHX10_2.name
    SHX11_2 = SHX2_2[SHX11_2]
    SHX12_2 = ""
    SHX13_2 = false
    if SHX11_2 then
      SHX14_2 = SHX11_2.ownedByGangId
      if SHX14_2 then
        SHX14_2 = SHX11_2.ownedByGangId
        SHX14_2 = SHX3_2[SHX14_2]
        if SHX14_2 then
          SHX14_2 = SHX11_2.ownedByGangId
          SHX14_2 = SHX3_2[SHX14_2]
          SHX14_2 = SHX14_2.name
          SHX12_2 = SHX14_2 or SHX12_2
          if not SHX14_2 then
            SHX12_2 = ""
          end
          SHX14_2 = SHX11_2.ownedByGangId
          SHX15_2 = SHX1_2.id
          SHX13_2 = SHX14_2 == SHX15_2
        end
      end
      SHX14_2 = SHX11_2.topGangName
      if SHX14_2 then
        SHX14_2 = SHX11_2.topGangName
        if "" ~= SHX14_2 then
          SHX12_2 = SHX11_2.topGangName
        end
      end
    end
    SHX14_2 = #SHX0_2
    SHX14_2 = SHX14_2 + 1
    SHX15_2 = {}
    SHX15_2.turfType = "street"
    SHX16_2 = SHX10_2.name
    SHX15_2.name = SHX16_2
    SHX15_2.ownedByGangName = SHX12_2
    SHX15_2.ownedByUs = SHX13_2
    if SHX11_2 then
      SHX16_2 = SHX11_2.ourStreetCred
      if SHX16_2 then
        goto SHX_LABEL_99
      end
    end
    SHX16_2 = 0
    -- [FIX IF ERROR] Move ::SHX_LABEL_99:: outside nested blocks until all 'goto SHX_LABEL_99' can see it
    ::SHX_LABEL_99::
    SHX15_2.ourStreetCred = SHX16_2
    if SHX11_2 then
      SHX16_2 = SHX11_2.topGangStreetCred
      if SHX16_2 then
        goto SHX_LABEL_106
      end
    end
    SHX16_2 = 0
    -- [FIX IF ERROR] Move ::SHX_LABEL_106:: outside nested blocks until all 'goto SHX_LABEL_106' can see it
    ::SHX_LABEL_106::
    SHX15_2.topGangStreetCred = SHX16_2
    if SHX11_2 then
      SHX16_2 = SHX11_2.topGangName
      if SHX16_2 then
        goto SHX_LABEL_113
      end
    end
    SHX16_2 = ""
    -- [FIX IF ERROR] Move ::SHX_LABEL_113:: outside nested blocks until all 'goto SHX_LABEL_113' can see it
    ::SHX_LABEL_113::
    SHX15_2.topGangName = SHX16_2
    SHX0_2[SHX14_2] = SHX15_2
  end
  return SHX0_2
end
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangCachedData
  if not SHX0_2 then
    SHX1_2 = {}
    return SHX1_2
  end
  SHX1_2 = {}
  SHX2_2 = SHX0_2.isAdvanced
  if SHX2_2 then
    SHX2_2 = #SHX1_2
    SHX2_2 = SHX2_2 + 1
    SHX3_2 = {}
    SHX3_2.id = 0
    SHX4_2 = string
    SHX4_2 = SHX4_2.format
    SHX5_2 = "%s (Default)"
    SHX6_2 = SHX0_2.name
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    SHX3_2.name = SHX4_2
    SHX1_2[SHX2_2] = SHX3_2
  end
  SHX2_2 = SHX0_2.additionalRadios
  if SHX2_2 then
    SHX2_2 = ipairs
    SHX3_2 = SHX0_2.additionalRadios
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = #SHX1_2
      SHX8_2 = SHX8_2 + 1
      SHX9_2 = {}
      SHX10_2 = SHX7_2.id
      SHX9_2.id = SHX10_2
      SHX10_2 = SHX7_2.name
      SHX9_2.name = SHX10_2
      SHX1_2[SHX8_2] = SHX9_2
    end
  end
  return SHX1_2
end
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangCachedData
  if not SHX0_2 then
    SHX1_2 = {}
    return SHX1_2
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.gangRecognisedGangs
  if not SHX1_2 then
    SHX1_2 = {}
  end
  SHX2_2 = SHX0_2.id
  SHX2_2 = SHX1_2[SHX2_2]
  if not SHX2_2 then
    SHX3_2 = {}
    return SHX3_2
  end
  SHX3_2 = {}
  SHX4_2 = pairs
  SHX5_2 = SHX1_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX0_2.id
    if SHX8_2 ~= SHX10_2 then
      SHX10_2 = SHX2_2.relationships
      if SHX10_2 then
        SHX10_2 = SHX2_2.relationships
        SHX10_2 = SHX10_2[SHX8_2]
        if SHX10_2 then
          goto SHX_LABEL_38
        end
      end
      SHX10_2 = "Neutral"
      -- [FIX IF ERROR] Move ::SHX_LABEL_38:: outside nested blocks until all 'goto SHX_LABEL_38' can see it
      ::SHX_LABEL_38::
      SHX11_2 = SHX9_2.relationships
      if SHX11_2 then
        SHX11_2 = SHX9_2.relationships
        SHX12_2 = SHX0_2.id
        SHX11_2 = SHX11_2[SHX12_2]
        if SHX11_2 then
          goto SHX_LABEL_47
        end
      end
      SHX11_2 = "Neutral"
      -- [FIX IF ERROR] Move ::SHX_LABEL_47:: outside nested blocks until all 'goto SHX_LABEL_47' can see it
      ::SHX_LABEL_47::
      SHX12_2 = #SHX3_2
      SHX12_2 = SHX12_2 + 1
      SHX13_2 = {}
      SHX13_2.gangId = SHX8_2
      SHX14_2 = SHX9_2.name
      if not SHX14_2 then
        SHX14_2 = "Gang "
        SHX15_2 = tostring
        SHX16_2 = SHX8_2
        SHX15_2 = SHX15_2(SHX16_2)
        SHX14_2 = SHX14_2 .. SHX15_2
      end
      SHX13_2.gangName = SHX14_2
      SHX13_2.ourRelationship = SHX10_2
      SHX13_2.theirRelationship = SHX11_2
      SHX3_2[SHX12_2] = SHX13_2
    end
  end
  SHX4_2 = table
  SHX4_2 = SHX4_2.sort
  SHX5_2 = SHX3_2
  function SHX6_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3
    SHX2_3 = SHX0_3.gangName
    SHX3_3 = SHX1_3.gangName
    SHX2_3 = SHX2_3 < SHX3_3
    return SHX2_3
  end
  SHX4_2(SHX5_2, SHX6_2)
  return SHX3_2
end
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangMembershipTiles
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.gangMembershipTiles
    SHX0_2 = #SHX0_2
    if SHX0_2 > 0 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.gangMembershipTiles
      return SHX0_2
    end
  end
  SHX0_2 = {}
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.gangCachedData
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.gangRecognisedGangs
  if not SHX2_2 then
    SHX2_2 = {}
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.gangCapturedTurfs
  if not SHX3_2 then
    SHX3_2 = {}
  end
  if SHX1_2 then
    SHX4_2 = 0
    SHX5_2 = SHX1_2.members
    if SHX5_2 then
      SHX5_2 = pairs
      SHX6_2 = SHX1_2.members
      SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
      for SHX9_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
        SHX4_2 = SHX4_2 + 1
      end
    end
    SHX5_2 = SHX1_2.guests
    if SHX5_2 then
      SHX5_2 = pairs
      SHX6_2 = SHX1_2.guests
      SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
      for SHX9_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
        SHX4_2 = SHX4_2 + 1
      end
    end
    SHX5_2 = SHX1_2.id
    SHX5_2 = SHX2_2[SHX5_2]
    SHX6_2 = 0
    SHX7_2 = pairs
    SHX8_2 = SHX3_2
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      SHX13_2 = SHX12_2.ownedByGangId
      SHX14_2 = SHX1_2.id
      if SHX13_2 == SHX14_2 then
        SHX6_2 = SHX6_2 + 1
      end
    end
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.gangOrgClientState
    SHX8_2 = SHX1_2.organised
    SHX8_2 = true == SHX8_2
    if not SHX8_2 and SHX7_2 then
      SHX9_2 = SHX7_2.hasOrgPack
      if true == SHX9_2 then
        SHX9_2 = SHX7_2.organised
        if true == SHX9_2 then
          SHX9_2 = CMG
          SHX9_2 = SHX9_2.getGangId
          SHX9_2 = SHX9_2()
          SHX10_2 = SHX1_2.id
          if SHX9_2 == SHX10_2 then
            SHX8_2 = true
          end
        end
      end
    end
    SHX9_2 = #SHX0_2
    SHX9_2 = SHX9_2 + 1
    SHX10_2 = {}
    SHX11_2 = SHX1_2.id
    SHX10_2.gangId = SHX11_2
    SHX11_2 = SHX1_2.name
    if not SHX11_2 then
      SHX11_2 = "Unknown"
    end
    SHX10_2.gangName = SHX11_2
    SHX10_2.memberCount = SHX4_2
    SHX11_2 = SHX1_2.isAdvanced
    SHX11_2 = true == SHX11_2
    SHX10_2.isAdvanced = SHX11_2
    SHX10_2.isOrganised = SHX8_2
    SHX11_2 = nil ~= SHX5_2
    SHX10_2.isRecognised = SHX11_2
    SHX10_2.isActive = true
    SHX10_2.role = "member"
    SHX11_2 = SHX1_2.displayMoney
    if not SHX11_2 then
      SHX11_2 = 0
    end
    SHX10_2.balance = SHX11_2
    if SHX5_2 then
      SHX11_2 = SHX5_2.tagName
      if SHX11_2 then
        goto SHX_LABEL_137
      end
    end
    SHX11_2 = SHX1_2.tagName
    if not SHX11_2 then
      SHX11_2 = ""
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_137:: outside nested blocks until all 'goto SHX_LABEL_137' can see it
    ::SHX_LABEL_137::
    SHX10_2.tagName = SHX11_2
    SHX10_2.turfsOwned = SHX6_2
    SHX0_2[SHX9_2] = SHX10_2
  end
  return SHX0_2
end
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = tonumber
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX0_2 = SHX1_2 or SHX0_2
  if not SHX1_2 then
    SHX0_2 = 1
  end
  if SHX0_2 < 1 then
    SHX0_2 = 1
  end
  SHX1_2 = 10000
  return SHX1_2
end
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangCachedData
  if not SHX0_2 then
    SHX1_2 = nil
    return SHX1_2
  end
  SHX1_2 = 0
  SHX2_2 = SHX0_2.members
  if SHX2_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX0_2.members
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX1_2 = SHX1_2 + 1
    end
  end
  SHX2_2 = SHX0_2.guests
  if SHX2_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX0_2.guests
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX1_2 = SHX1_2 + 1
    end
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getClientGangDepositFeeDisplayPercent
  SHX2_2 = SHX2_2()
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getClientUserId
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX0_2.members
  if SHX4_2 then
    SHX4_2 = SHX0_2.members
    SHX4_2 = SHX4_2[SHX3_2]
    if not SHX4_2 then
      SHX4_2 = SHX0_2.members
      SHX5_2 = tostring
      SHX6_2 = SHX3_2
      SHX5_2 = SHX5_2(SHX6_2)
      SHX4_2 = SHX4_2[SHX5_2]
    end
  end
  SHX5_2 = {}
  SHX5_2.deposit = false
  SHX5_2.withdraw = false
  SHX5_2.withdrawturf = false
  if SHX4_2 then
    SHX6_2 = SHX4_2.permissions
    if SHX6_2 then
      SHX6_2 = SHX4_2.permissions
      SHX6_2 = SHX6_2.deposit
      if not SHX6_2 then
        SHX6_2 = SHX4_2.permissions
        SHX6_2 = SHX6_2.leader
      end
      SHX5_2.deposit = SHX6_2
      SHX6_2 = SHX4_2.permissions
      SHX6_2 = SHX6_2.withdraw
      if not SHX6_2 then
        SHX6_2 = SHX4_2.permissions
        SHX6_2 = SHX6_2.leader
      end
      SHX5_2.withdraw = SHX6_2
      SHX6_2 = SHX4_2.permissions
      SHX6_2 = SHX6_2.withdrawturf
      if not SHX6_2 then
        SHX6_2 = SHX4_2.permissions
        SHX6_2 = SHX6_2.leader
      end
      SHX5_2.withdrawturf = SHX6_2
    end
  end
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getClientDisplayMoney
  SHX6_2, SHX7_2 = SHX6_2()
  SHX8_2 = 0
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.gangCapturedTurfs
  if not SHX9_2 then
    SHX9_2 = {}
  end
  SHX10_2 = pairs
  SHX11_2 = SHX9_2
  SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
  for SHX14_2, SHX15_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
    SHX16_2 = SHX15_2.ownedByGangId
    SHX17_2 = SHX0_2.id
    if SHX16_2 == SHX17_2 then
      SHX8_2 = SHX8_2 + 1
    end
  end
  SHX10_2 = tonumber
  SHX11_2 = SHX0_2.gangPublicLevel
  SHX10_2 = SHX10_2(SHX11_2)
  if not SHX10_2 then
    SHX10_2 = 1
  end
  SHX11_2 = tonumber
  SHX12_2 = SHX0_2.gangPublicXp
  SHX11_2 = SHX11_2(SHX12_2)
  if not SHX11_2 then
    SHX11_2 = 0
  end
  SHX12_2 = SHX11_1
  SHX13_2 = SHX10_2
  SHX12_2 = SHX12_2(SHX13_2)
  SHX13_2 = math
  SHX13_2 = SHX13_2.max
  SHX14_2 = 0
  SHX15_2 = SHX12_2 - SHX11_2
  SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
  SHX14_2 = tonumber
  SHX15_2 = SHX0_2.gangRpLevel
  SHX14_2 = SHX14_2(SHX15_2)
  if not SHX14_2 then
    SHX14_2 = 1
  end
  SHX15_2 = tonumber
  SHX16_2 = SHX0_2.gangRpXp
  SHX15_2 = SHX15_2(SHX16_2)
  if not SHX15_2 then
    SHX15_2 = 0
  end
  SHX16_2 = SHX11_1
  SHX17_2 = SHX14_2
  SHX16_2 = SHX16_2(SHX17_2)
  SHX17_2 = math
  SHX17_2 = SHX17_2.max
  SHX18_2 = 0
  SHX19_2 = SHX16_2 - SHX15_2
  SHX17_2 = SHX17_2(SHX18_2, SHX19_2)
  SHX18_2 = {}
  SHX19_2 = SHX0_2.name
  if not SHX19_2 then
    SHX19_2 = ""
  end
  SHX18_2.gangName = SHX19_2
  SHX18_2.turfsOwned = SHX8_2
  SHX19_2 = SHX0_2.displayMoney
  if not SHX19_2 then
    SHX19_2 = 0
  end
  SHX18_2.gangMoney = SHX19_2
  SHX18_2.totalMembers = SHX1_2
  SHX19_2 = CMG
  SHX19_2 = SHX19_2.getClientGangMaxMemberLimit
  SHX19_2 = SHX19_2()
  SHX18_2.maxMemberLimit = SHX19_2
  SHX18_2.gangXpLevel = SHX10_2
  SHX18_2.gangXpToNext = SHX13_2
  SHX18_2.gangXpCurrent = SHX11_2
  SHX18_2.rpXpLevel = SHX14_2
  SHX18_2.rpXpToNext = SHX17_2
  SHX18_2.rpXpCurrent = SHX15_2
  SHX19_2 = SHX0_2.announcements
  if not SHX19_2 then
    SHX19_2 = {}
  end
  SHX18_2.announcements = SHX19_2
  SHX18_2.depositFeePercent = SHX2_2
  SHX18_2.fundsPermissions = SHX5_2
  SHX19_2 = SHX7_2 or SHX19_2
  if not SHX7_2 then
    SHX19_2 = 0
  end
  SHX18_2.playerBankMoney = SHX19_2
  SHX19_2 = SHX0_2.requireWithdrawReason
  SHX19_2 = true == SHX19_2
  SHX18_2.requireWithdrawReason = SHX19_2
  SHX19_2 = CMG
  SHX19_2 = SHX19_2.gangActivityLeaderboard
  if not SHX19_2 then
    SHX19_2 = {}
  end
  SHX18_2.activityLeaderboard = SHX19_2
  SHX19_2 = CMG
  SHX19_2 = SHX19_2.gangActivityLeaderboardPending
  SHX19_2 = true == SHX19_2
  SHX18_2.activityLeaderboardLoading = SHX19_2
  return SHX18_2
end
SHX13_1 = CMG
SHX13_1.gangNuiOpen = false
SHX13_1 = CMG
SHX13_1.gangPaycheckNuiPreview = nil
SHX13_1 = CMG
SHX13_1.gangActivityLeaderboard = nil
SHX13_1 = CMG
SHX13_1.gangActivityLeaderboardPending = false
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangNuiOpen
  if not SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangCachedData
  if not SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2.gangActivityLeaderboardPending = true
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "cf2a446fae"
  SHX0_2(SHX1_2)
end
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangNuiOpen
  if not SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangCachedData
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2.gangActivityLeaderboard = nil
    SHX0_2 = CMG
    SHX0_2.gangActivityLeaderboardPending = false
    SHX0_2 = SHX10_1
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX1_2 = #SHX0_2
      if SHX1_2 > 0 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.uiSendMessage
        SHX2_2 = {}
        SHX2_2.action = "GANG_SET_DATA"
        SHX3_2 = {}
        SHX3_2.gangTiles = SHX0_2
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.gangPendingInvites
        if not SHX4_2 then
          SHX4_2 = {}
        end
        SHX3_2.pendingInvites = SHX4_2
        SHX3_2.currentPage = "gangs"
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.gangPaycheckNuiPreview
        SHX3_2.paycheckPreview = SHX4_2
        SHX2_2.payload = SHX3_2
        SHX1_2(SHX2_2)
        return
      end
    end
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.uiSendMessage
    SHX2_2 = {}
    SHX2_2.action = "GANG_SET_DATA"
    SHX3_2 = {}
    SHX4_2 = {}
    SHX3_2.gangTiles = SHX4_2
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.gangPendingInvites
    if not SHX4_2 then
      SHX4_2 = {}
    end
    SHX3_2.pendingInvites = SHX4_2
    SHX3_2.currentPage = "gangs"
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.gangPaycheckNuiPreview
    SHX3_2.paycheckPreview = SHX4_2
    SHX2_2.payload = SHX3_2
    SHX1_2(SHX2_2)
    return
  end
  SHX0_2 = SHX12_1
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX3_1
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX4_1
  SHX2_2 = SHX2_2()
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.gangOrgClientState
  SHX4_2 = {}
  SHX4_2.dashboard = SHX0_2
  SHX4_2.members = SHX1_2
  SHX4_2.permissionsConfig = SHX2_2
  SHX5_2 = SHX6_1
  SHX5_2 = SHX5_2()
  SHX4_2.settings = SHX5_2
  SHX5_2 = SHX7_1
  SHX5_2 = SHX5_2()
  SHX4_2.turfs = SHX5_2
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getNextMoneyTurfPayoutEpoch
  SHX5_2 = SHX5_2()
  SHX4_2.nextMoneyTurfPayout = SHX5_2
  SHX5_2 = SHX8_1
  SHX5_2 = SHX5_2()
  SHX4_2.radios = SHX5_2
  SHX5_2 = SHX9_1
  SHX5_2 = SHX5_2()
  SHX4_2.relationships = SHX5_2
  SHX5_2 = SHX10_1
  SHX5_2 = SHX5_2()
  SHX4_2.gangTiles = SHX5_2
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.gangPendingInvites
  if not SHX5_2 then
    SHX5_2 = {}
  end
  SHX4_2.pendingInvites = SHX5_2
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.gangPaycheckNuiPreview
  SHX4_2.paycheckPreview = SHX5_2
  if nil ~= SHX3_2 then
    SHX5_2 = {}
    SHX6_2 = pairs
    SHX7_2 = SHX3_2
    SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
    for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
      SHX5_2[SHX10_2] = SHX11_2
    end
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.getGangRankOutfitSlotMax
    SHX6_2 = SHX6_2()
    SHX5_2.rankOutfitSlotMax = SHX6_2
    SHX4_2.gangOrg = SHX5_2
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.uiSendMessage
  SHX6_2 = {}
  SHX6_2.action = "GANG_SET_DATA"
  SHX6_2.payload = SHX4_2
  SHX5_2(SHX6_2)
end
SHX15_1 = RegisterNetEvent
SHX16_1 = "89ec0abbf0"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = CMG
  SHX1_2.gangPaycheckNuiPreview = SHX0_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.gangNuiOpen
  if SHX1_2 then
    SHX1_2 = SHX14_1
    SHX1_2()
  end
end
SHX15_1(SHX16_1, SHX17_1)
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2.gangNuiOpen = true
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hideHud
  SHX0_2()
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "c4e52b6139"
  SHX0_2(SHX1_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "e78941ef83"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.type = "APP_TOGGLE"
  SHX1_2.app = "gang"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSetFocus
  SHX1_2 = true
  SHX2_2 = true
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "a058b23a4e"
  SHX0_2(SHX1_2)
  SHX0_2 = SHX13_1
  SHX0_2()
  SHX0_2 = SHX14_1
  SHX0_2()
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "3c3c3b9444"
  SHX0_2(SHX1_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "5b6e20cdd5"
  SHX0_2(SHX1_2)
end
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2.gangNuiOpen = false
  SHX0_2 = CMG
  SHX0_2.gangActivityLeaderboard = nil
  SHX0_2 = CMG
  SHX0_2.gangActivityLeaderboardPending = false
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.showHud
  SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.type = "APP_TOGGLE"
  SHX1_2.app = ""
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSetFocus
  SHX1_2 = false
  SHX2_2 = false
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX17_1 = CMG
SHX17_1 = SHX17_1.uiRegisterCallback
SHX18_1 = "gangRefreshPaycheckPreview"
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "c4e52b6139"
  SHX0_2(SHX1_2)
  SHX0_2 = {}
  return SHX0_2
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = CMG
SHX17_1 = SHX17_1.uiRegisterCallback
SHX18_1 = "gangClose"
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX16_1
  SHX0_2()
  SHX0_2 = {}
  return SHX0_2
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = CMG
SHX17_1 = SHX17_1.uiRegisterCallback
SHX18_1 = "gangInvitePlayer"
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.userId
    if not SHX1_2 then
      SHX1_2 = SHX0_2.permId
    end
  end
  if SHX1_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "a3ebe947dd"
    SHX4_2 = tonumber
    SHX5_2 = SHX1_2
    SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  end
  SHX2_2 = {}
  return SHX2_2
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = CMG
SHX17_1 = SHX17_1.uiRegisterCallback
SHX18_1 = "gangAcceptInvite"
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.gangName
  end
  SHX2_2 = SHX0_2 or SHX2_2
  if SHX0_2 then
    SHX2_2 = SHX0_2.isGuest
    SHX2_2 = true == SHX2_2
  end
  SHX3_2 = type
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if "string" == SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.gangAcceptInvite
    if SHX3_2 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.gangAcceptInvite
      SHX4_2 = SHX1_2
      SHX5_2 = SHX2_2
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = SHX14_1
      SHX3_2()
    end
  end
  SHX3_2 = {}
  return SHX3_2
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = CMG
SHX17_1 = SHX17_1.uiRegisterCallback
SHX18_1 = "gangPostAnnouncement"
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.title
  end
  SHX2_2 = SHX0_2 or SHX2_2
  if SHX0_2 then
    SHX2_2 = SHX0_2.description
  end
  SHX3_2 = type
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if "string" == SHX3_2 then
    SHX3_2 = type
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if "string" == SHX3_2 then
      goto SHX_LABEL_20
    end
  end
  SHX3_2 = {}
  return SHX3_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
  ::SHX_LABEL_20::
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "aee924bc24"
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = {}
  return SHX3_2
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = CMG
SHX17_1 = SHX17_1.uiRegisterCallback
SHX18_1 = "gangCreateGang"
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.name
  end
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "string" ~= SHX2_2 then
    SHX2_2 = {}
    return SHX2_2
  end
  SHX2_2 = string
  SHX2_2 = SHX2_2.gsub
  SHX3_2 = SHX1_2
  SHX4_2 = "^%s+"
  SHX5_2 = ""
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = string
  SHX2_2 = SHX2_2.gsub
  SHX3_2 = SHX1_2
  SHX4_2 = "%s+$"
  SHX5_2 = ""
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX2_2
  SHX2_2 = #SHX1_2
  if SHX2_2 < 1 then
    SHX2_2 = {}
    return SHX2_2
  end
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "36ca78a1b5"
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = {}
  return SHX2_2
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = CMG
SHX17_1 = SHX17_1.uiRegisterCallback
SHX18_1 = "gangDeclineInvite"
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.gangName
  end
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "string" == SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.gangDeclineInvite
    if SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.gangDeclineInvite
      SHX3_2 = SHX1_2
      SHX2_2(SHX3_2)
      SHX2_2 = SHX14_1
      SHX2_2()
    end
  end
  SHX2_2 = {}
  return SHX2_2
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = CMG
SHX17_1 = SHX17_1.uiRegisterCallback
SHX18_1 = "gangSearchPlayers"
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.query
  end
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "string" == SHX2_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "66ff06be33"
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
  end
  SHX2_2 = {}
  return SHX2_2
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = RegisterNetEvent
SHX18_1 = "c2f28c01bd"
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.action = "GANG_SEARCH_RESULT"
  SHX3_2 = {}
  SHX4_2 = SHX0_2 or SHX4_2
  if not SHX0_2 then
    SHX4_2 = {}
  end
  SHX3_2.players = SHX4_2
  SHX2_2.payload = SHX3_2
  SHX1_2(SHX2_2)
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = CMG
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  if not SHX1_2 or "" == SHX1_2 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.gangNuiOpen
  if SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.uiSendMessage
    SHX3_2 = {}
    SHX3_2.action = "GANG_NOTIFICATION"
    SHX4_2 = {}
    SHX4_2.success = SHX0_2
    SHX4_2.message = SHX1_2
    SHX3_2.payload = SHX4_2
    SHX2_2(SHX3_2)
  else
    if SHX0_2 then
      SHX2_2 = "~g~"
      if SHX2_2 then
        goto SHX_LABEL_28
      end
    end
    SHX2_2 = "~r~"
    -- [FIX IF ERROR] Move ::SHX_LABEL_28:: outside nested blocks until all 'goto SHX_LABEL_28' can see it
    ::SHX_LABEL_28::
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.notify
    SHX4_2 = SHX2_2
    SHX5_2 = SHX1_2
    SHX4_2 = SHX4_2 .. SHX5_2
    SHX3_2(SHX4_2)
  end
end
SHX17_1.showGangNuiNotify = SHX18_1
SHX17_1 = RegisterNetEvent
SHX18_1 = "bbe75200c0"
function SHX19_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.showGangNuiNotify
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2 or SHX4_2
  if not SHX1_2 then
    if SHX0_2 then
      SHX4_2 = "Invite sent."
      if SHX4_2 then
        goto SHX_LABEL_12
      end
    end
    SHX4_2 = "Failed to send invite."
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX2_2(SHX3_2, SHX4_2)
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = RegisterNetEvent
SHX18_1 = "38cce5f704"
function SHX19_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.showGangNuiNotify
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = AddEventHandler
SHX18_1 = "e394af4876"
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangNuiOpen
  if SHX0_2 then
    SHX0_2 = SHX14_1
    SHX0_2()
  end
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = AddEventHandler
SHX18_1 = "c89367ffd9"
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangNuiOpen
  if SHX0_2 then
    SHX0_2 = SHX14_1
    SHX0_2()
  end
end
SHX17_1(SHX18_1, SHX19_1)
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangCachedData
  if not SHX0_2 then
    return
  end
  SHX0_2 = SHX3_1
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX12_1
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX4_1
  SHX2_2 = SHX2_2()
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.uiSendMessage
  SHX4_2 = {}
  SHX4_2.action = "GANG_SET_DATA"
  SHX5_2 = {}
  SHX5_2.dashboard = SHX1_2
  SHX5_2.members = SHX0_2
  SHX5_2.permissionsConfig = SHX2_2
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.gangPaycheckNuiPreview
  SHX5_2.paycheckPreview = SHX6_2
  SHX4_2.payload = SHX5_2
  SHX3_2(SHX4_2)
end
SHX18_1 = RegisterNetEvent
SHX19_1 = "6998c9a240"
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangNuiOpen
  if SHX0_2 then
    SHX0_2 = SHX17_1
    SHX0_2()
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "f71d7949c0"
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangNuiOpen
  if SHX0_2 then
    SHX0_2 = SHX17_1
    SHX0_2()
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangPinMember"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.userId
    if not SHX1_2 then
      SHX1_2 = SHX0_2.user_id
    end
  end
  if not SHX1_2 then
    SHX2_2 = {}
    return SHX2_2
  end
  SHX2_2 = tonumber
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX1_2 = SHX2_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.gangPinnedPlayers
  if not SHX2_2 then
    SHX3_2 = GetResourceKvpString
    SHX4_2 = "cmg_gang_pinned"
    SHX3_2 = SHX3_2(SHX4_2)
    if not SHX3_2 then
      SHX3_2 = "{}"
    end
    SHX4_2 = json
    SHX4_2 = SHX4_2.decode
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    if not SHX4_2 then
      SHX4_2 = {}
    end
    SHX5_2 = {}
    SHX2_2 = SHX5_2
    SHX5_2 = pairs
    SHX6_2 = SHX4_2
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX10_2 = tonumber
      SHX11_2 = SHX9_2
      SHX10_2 = SHX10_2(SHX11_2)
      SHX2_2[SHX10_2] = true
    end
    SHX5_2 = CMG
    SHX5_2.gangPinnedPlayers = SHX2_2
  end
  if SHX1_2 then
    SHX3_2 = SHX2_2[SHX1_2]
    if SHX3_2 then
      SHX2_2[SHX1_2] = nil
    else
      SHX2_2[SHX1_2] = true
    end
  end
  SHX3_2 = SetResourceKvp
  SHX4_2 = "cmg_gang_pinned"
  SHX5_2 = json
  SHX5_2 = SHX5_2.encode
  SHX6_2 = SHX2_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX5_2(SHX6_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = TriggerEvent
  SHX4_2 = "e713d91b70"
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.gangCachedData
  if SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.gangCachedData
    SHX3_2 = SHX3_2.isAdvanced
    if SHX3_2 then
      SHX3_2 = GetResourceKvpString
      SHX4_2 = "cmg_gang_blips"
      SHX3_2 = SHX3_2(SHX4_2)
      SHX3_2 = "true" == SHX3_2
      if SHX3_2 then
        SHX4_2 = TriggerServerEvent
        SHX5_2 = "f9c26121e2"
        SHX6_2 = "own"
        SHX4_2(SHX5_2, SHX6_2)
      end
    end
  end
  SHX3_2 = SHX17_1
  SHX3_2()
  SHX3_2 = {}
  return SHX3_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangKickMember"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.userId
    if not SHX1_2 then
      SHX1_2 = SHX0_2.user_id
    end
  end
  if not SHX1_2 then
    SHX2_2 = {}
    return SHX2_2
  end
  SHX2_2 = tonumber
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX1_2 = SHX2_2
  SHX2_2 = SHX0_2.isGuest
  if SHX2_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "550d5b91c6"
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
  else
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "85c0cc23f6"
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
  end
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.SetTimeout
  SHX3_2 = 500
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX17_1
    SHX0_3()
  end
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = {}
  return SHX2_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangSetMemberPermission"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  if SHX0_2 then
    SHX1_2 = SHX0_2.userId
    if SHX1_2 then
      SHX1_2 = SHX0_2.permissionId
      if nil ~= SHX1_2 then
        SHX1_2 = TriggerServerEvent
        SHX2_2 = "a6cd82c68e"
        SHX3_2 = tonumber
        SHX4_2 = SHX0_2.userId
        SHX3_2 = SHX3_2(SHX4_2)
        SHX4_2 = SHX0_2.permissionId
        SHX5_2 = SHX0_2.enabled
        SHX5_2 = true == SHX5_2
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      end
    end
  end
  SHX1_2 = {}
  return SHX1_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangDeposit"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.amount
  end
  if nil == SHX1_2 then
    SHX2_2 = {}
    return SHX2_2
  end
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "36ba8d4574"
  SHX4_2 = tonumber
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    SHX4_2 = SHX1_2
  end
  SHX5_2 = SHX0_2.reason
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = {}
  return SHX2_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangDepositAll"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "8536953bae"
  SHX3_2 = SHX0_2 or SHX3_2
  if SHX0_2 then
    SHX3_2 = SHX0_2.reason
  end
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = {}
  return SHX1_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangWithdraw"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.amount
  end
  if nil == SHX1_2 then
    SHX2_2 = {}
    return SHX2_2
  end
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "21cfbc3c22"
  SHX4_2 = tonumber
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    SHX4_2 = SHX1_2
  end
  SHX5_2 = SHX0_2.reason
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = {}
  return SHX2_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangWithdrawAll"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "be7d1bceb0"
  SHX3_2 = SHX0_2 or SHX3_2
  if SHX0_2 then
    SHX3_2 = SHX0_2.reason
  end
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = {}
  return SHX1_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangWithdrawTurf"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.amount
  end
  if nil == SHX1_2 then
    SHX2_2 = {}
    return SHX2_2
  end
  SHX2_2 = tonumber
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 and SHX2_2 > 0 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "6aac8fd738"
    SHX5_2 = math
    SHX5_2 = SHX5_2.floor
    SHX6_2 = SHX2_2
    SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
  SHX3_2 = {}
  return SHX3_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangRequestContributions"
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "cef5792c69"
  SHX0_2(SHX1_2)
  SHX0_2 = {}
  return SHX0_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangRequestLogs"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  if SHX0_2 then
    SHX1_2 = SHX0_2.page
    if SHX1_2 then
      goto SHX_LABEL_7
    end
  end
  SHX1_2 = 1
  -- [FIX IF ERROR] Move ::SHX_LABEL_7:: outside nested blocks until all 'goto SHX_LABEL_7' can see it
  ::SHX_LABEL_7::
  if SHX0_2 then
    SHX2_2 = SHX0_2.hideTurf
    if SHX2_2 then
      goto SHX_LABEL_13
    end
  end
  SHX2_2 = false
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX3_2 = tonumber
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX1_2 = SHX3_2 or SHX1_2
  if not SHX3_2 then
    SHX1_2 = 1
  end
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "3f8f33322f"
  SHX5_2 = SHX1_2
  SHX6_2 = true == SHX2_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = {}
  return SHX3_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "38c659d0a7"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.gangCachedData
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.gangCachedData
    SHX1_2.displayMoney = SHX0_2
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.gangNuiOpen
  if SHX1_2 then
    SHX1_2 = SHX14_1
    SHX1_2()
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "bb3efd07e8"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.gangNuiOpen
  if SHX1_2 and SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.uiSendMessage
    SHX2_2 = {}
    SHX2_2.action = "GANG_SET_CONTRIBUTIONS"
    SHX3_2 = {}
    SHX3_2.contributions = SHX0_2
    SHX2_2.payload = SHX3_2
    SHX1_2(SHX2_2)
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "b6d14a58c2"
function SHX20_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.gangNuiOpen
  if not SHX3_2 then
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.uiSendMessage
  SHX4_2 = {}
  SHX4_2.action = "GANG_SET_LOGS"
  SHX5_2 = {}
  SHX5_2.pageNumber = SHX0_2
  SHX6_2 = SHX1_2 or SHX6_2
  if not SHX1_2 then
    SHX6_2 = {}
  end
  SHX5_2.logs = SHX6_2
  SHX6_2 = SHX2_2 or SHX6_2
  if not SHX2_2 then
    SHX6_2 = 0
  end
  SHX5_2.totalCount = SHX6_2
  SHX4_2.payload = SHX5_2
  SHX3_2(SHX4_2)
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangSetMaxWithdraw"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.amount
  end
  if nil ~= SHX1_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "b674c758b8"
    SHX4_2 = tonumber
    SHX5_2 = SHX1_2
    SHX4_2 = SHX4_2(SHX5_2)
    if not SHX4_2 then
      SHX4_2 = 0
    end
    SHX2_2(SHX3_2, SHX4_2)
  end
  SHX2_2 = {}
  return SHX2_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangSetLimitWithdrawDeposit"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.enabled
  end
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "58d834d15a"
  SHX4_2 = true == SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = {}
  return SHX2_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangSetRequireWithdrawReason"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.enabled
  end
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "5d7f40bb9d"
  SHX4_2 = true == SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = {}
  return SHX2_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangSetTag"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.tag
  end
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "string" == SHX2_2 then
    SHX2_2 = #SHX1_2
    if SHX2_2 > 0 then
      SHX2_2 = TriggerServerEvent
      SHX3_2 = "9dad3c2a94"
      SHX4_2 = SHX1_2
      SHX2_2(SHX3_2, SHX4_2)
    end
  end
  SHX2_2 = {}
  return SHX2_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangRenameGang"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.name
  end
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "string" == SHX2_2 then
    SHX2_2 = #SHX1_2
    if SHX2_2 > 0 then
      SHX2_2 = TriggerServerEvent
      SHX3_2 = "7a95907fc0"
      SHX4_2 = SHX1_2
      SHX2_2(SHX3_2, SHX4_2)
    end
  end
  SHX2_2 = {}
  return SHX2_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangPurchaseAdvancedLicense"
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "40cb8bd46d"
  SHX0_2(SHX1_2)
  SHX0_2 = {}
  return SHX0_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangSetTurfColour"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.colour
  end
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "string" == SHX2_2 then
    SHX2_2 = #SHX1_2
    if SHX2_2 > 0 then
      SHX2_2 = TriggerServerEvent
      SHX3_2 = "adb903a8eb"
      SHX4_2 = SHX1_2
      SHX2_2(SHX3_2, SHX4_2)
    end
  end
  SHX2_2 = {}
  return SHX2_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangSetPersonalBlipColour"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.colour
  end
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "string" ~= SHX2_2 or "" == SHX1_2 then
    SHX2_2 = {}
    return SHX2_2
  end
  SHX2_2 = SHX1_1
  if SHX2_2 then
    SHX2_2 = SHX1_1.colourLookup
    if SHX2_2 then
      SHX2_2 = SHX1_1.colourLookup
      SHX2_2 = SHX2_2[SHX1_2]
      if SHX2_2 then
        goto SHX_LABEL_27
      end
    end
  end
  SHX2_2 = {}
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_27:: outside nested blocks until all 'goto SHX_LABEL_27' can see it
  ::SHX_LABEL_27::
  SHX2_2 = SetResourceKvp
  SHX3_2 = "cmg_gang_colour"
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getClientUserId
  SHX2_2 = SHX2_2()
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.gangCachedData
  if SHX3_2 then
    SHX4_2 = SHX3_2.members
    if SHX4_2 and SHX2_2 then
      SHX4_2 = SHX3_2.members
      SHX4_2 = SHX4_2[SHX2_2]
      if not SHX4_2 then
        SHX4_2 = SHX3_2.members
        SHX5_2 = tostring
        SHX6_2 = SHX2_2
        SHX5_2 = SHX5_2(SHX6_2)
        SHX4_2 = SHX4_2[SHX5_2]
      end
      if SHX4_2 then
        SHX4_2.colour = SHX1_2
      end
    end
  end
  SHX4_2 = TriggerServerEvent
  SHX5_2 = "a74c553948"
  SHX6_2 = SHX1_2
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX14_1
  SHX4_2()
  SHX4_2 = {}
  return SHX4_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangToggleBlips"
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangClientSettings
  if not SHX0_2 then
    SHX1_2 = {}
    return SHX1_2
  end
  SHX1_2 = SHX0_2.blips
  SHX1_2 = not SHX1_2
  SHX0_2.blips = SHX1_2
  SHX1_2 = TriggerEvent
  SHX2_2 = "e713d91b70"
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.blips
  if SHX1_2 then
    SHX1_2 = "own"
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "f9c26121e2"
    SHX4_2 = SHX1_2
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  else
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "f9c26121e2"
    SHX3_2 = nil
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = SetResourceKvp
  SHX2_2 = "cmg_gang_blips"
  SHX3_2 = tostring
  SHX4_2 = SHX0_2.blips
  SHX3_2, SHX4_2, SHX5_2 = SHX3_2(SHX4_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX14_1
  SHX1_2()
  SHX1_2 = {}
  return SHX1_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangTogglePings"
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangClientSettings
  if not SHX0_2 then
    SHX1_2 = {}
    return SHX1_2
  end
  SHX1_2 = SHX0_2.pings
  SHX1_2 = not SHX1_2
  SHX0_2.pings = SHX1_2
  SHX1_2 = SetResourceKvp
  SHX2_2 = "cmg_gang_pings"
  SHX3_2 = tostring
  SHX4_2 = SHX0_2.pings
  SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SHX14_1
  SHX1_2()
  SHX1_2 = {}
  return SHX1_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangToggleNames"
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangClientSettings
  if not SHX0_2 then
    SHX1_2 = {}
    return SHX1_2
  end
  SHX1_2 = SHX0_2.names
  SHX1_2 = not SHX1_2
  SHX0_2.names = SHX1_2
  SHX1_2 = SetResourceKvp
  SHX2_2 = "cmg_gang_names"
  SHX3_2 = tostring
  SHX4_2 = SHX0_2.names
  SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SHX14_1
  SHX1_2()
  SHX1_2 = {}
  return SHX1_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangSetActiveGang"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = tonumber
    SHX2_2 = SHX0_2.gangId
    SHX1_2 = SHX1_2(SHX2_2)
  end
  if not SHX1_2 or SHX1_2 <= 0 then
    SHX2_2 = {}
    return SHX2_2
  end
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "bb20e42129"
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = TriggerEvent
  SHX3_2 = "e713d91b70"
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.gangClientSettings
  if not SHX2_2 then
    SHX2_2 = {}
  end
  SHX3_2 = SHX2_2.blips
  if SHX3_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "f9c26121e2"
    SHX5_2 = "own"
    SHX6_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
  SHX3_2 = {}
  return SHX3_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangLeaveGang"
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "4d87711de5"
  SHX0_2(SHX1_2)
  SHX0_2 = {}
  return SHX0_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangDisbandGang"
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "2b85de9de2"
  SHX0_2(SHX1_2)
  SHX0_2 = {}
  return SHX0_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangRenameRadioChannel"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.channelId
  end
  SHX2_2 = SHX0_2 or SHX2_2
  if SHX0_2 then
    SHX2_2 = SHX0_2.name
  end
  if nil ~= SHX1_2 then
    SHX3_2 = type
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if "string" == SHX3_2 then
      SHX3_2 = #SHX2_2
      if SHX3_2 > 0 then
        SHX3_2 = TriggerServerEvent
        SHX4_2 = "8a2894785e"
        SHX5_2 = tonumber
        SHX6_2 = SHX1_2
        SHX5_2 = SHX5_2(SHX6_2)
        SHX6_2 = SHX2_2
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      end
    end
  end
  SHX3_2 = {}
  return SHX3_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangPurchaseRadioChannel"
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "5b98fcee62"
  SHX0_2(SHX1_2)
  SHX0_2 = {}
  return SHX0_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
SHX18_1 = SHX18_1.uiRegisterCallback
SHX19_1 = "gangSetRelationship"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX1_2 = SHX0_2.gangId
  end
  SHX2_2 = SHX0_2 or SHX2_2
  if SHX0_2 then
    SHX2_2 = SHX0_2.relationship
  end
  if SHX1_2 then
    SHX3_2 = type
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if "string" == SHX3_2 then
      SHX3_2 = TriggerServerEvent
      SHX4_2 = "bdbde03161"
      SHX5_2 = tonumber
      SHX6_2 = SHX1_2
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = SHX2_2
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    end
  end
  SHX3_2 = {}
  return SHX3_2
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "f9904fb04b"
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangNuiOpen
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2.gangActivityLeaderboard = nil
    SHX0_2 = CMG
    SHX0_2.gangActivityLeaderboardPending = true
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.SetTimeout
    SHX1_2 = 100
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX14_1
      SHX0_3()
      SHX0_3 = SHX13_1
      SHX0_3()
    end
    SHX0_2(SHX1_2, SHX2_2)
  end
end
SHX18_1(SHX19_1, SHX20_1)
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = {}
  SHX2_2 = type
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "table" ~= SHX2_2 then
    return SHX1_2
  end
  SHX2_2 = 1
  SHX3_2 = #SHX0_2
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = #SHX1_2
    SHX6_2 = SHX6_2 + 1
    SHX7_2 = SHX0_2[SHX5_2]
    SHX1_2[SHX6_2] = SHX7_2
  end
  SHX2_2 = #SHX1_2
  if SHX2_2 > 0 then
    return SHX1_2
  end
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = type
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    if "table" == SHX8_2 then
      SHX8_2 = SHX7_2.userId
      if nil == SHX8_2 then
        SHX8_2 = SHX7_2.user_id
        if nil == SHX8_2 then
          goto SHX_LABEL_42
        end
      end
      SHX8_2 = #SHX1_2
      SHX8_2 = SHX8_2 + 1
      SHX1_2[SHX8_2] = SHX7_2
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_42:: outside nested blocks until all 'goto SHX_LABEL_42' can see it
    ::SHX_LABEL_42::
  end
  return SHX1_2
end
SHX19_1 = RegisterNetEvent
SHX20_1 = "b01ff8ce87"
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2.gangActivityLeaderboardPending = false
  SHX1_2 = CMG
  SHX2_2 = SHX18_1
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX1_2.gangActivityLeaderboard = SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.gangNuiOpen
  if SHX1_2 then
    SHX1_2 = SHX14_1
    SHX1_2()
  end
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = AddEventHandler
SHX20_1 = "238e25c639"
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangNuiOpen
  if SHX0_2 then
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.SetTimeout
    SHX1_2 = 100
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX14_1
      SHX0_3()
    end
    SHX0_2(SHX1_2, SHX2_2)
  end
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = RegisterNetEvent
SHX20_1 = "53c0495633"
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  if SHX0_2 then
    SHX2_2 = SHX0_2.gangs
    if SHX2_2 then
      goto SHX_LABEL_8
    end
  end
  SHX2_2 = nil
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX1_2.gangMembershipTiles = SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.gangNuiOpen
  if SHX1_2 then
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.SetTimeout
    SHX2_2 = 100
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX14_1
      SHX0_3()
    end
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = RegisterNetEvent
SHX20_1 = "4a773cc562"
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangNuiOpen
  if SHX0_2 then
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.SetTimeout
    SHX1_2 = 100
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX14_1
      SHX0_3()
    end
    SHX0_2(SHX1_2, SHX2_2)
  end
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = RegisterNetEvent
SHX20_1 = "e35812009c"
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangNuiOpen
  if SHX0_2 then
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.SetTimeout
    SHX1_2 = 100
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX14_1
      SHX0_3()
    end
    SHX0_2(SHX1_2, SHX2_2)
  end
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = RegisterNetEvent
SHX20_1 = "bdbde03161"
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangNuiOpen
  if SHX0_2 then
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.SetTimeout
    SHX1_2 = 100
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX14_1
      SHX0_3()
    end
    SHX0_2(SHX1_2, SHX2_2)
  end
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = RegisterNetEvent
SHX20_1 = "adb903a8eb"
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangNuiOpen
  if SHX0_2 then
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.SetTimeout
    SHX1_2 = 100
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX14_1
      SHX0_3()
    end
    SHX0_2(SHX1_2, SHX2_2)
  end
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = RegisterNetEvent
SHX20_1 = "d59e8e8fd8"
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangNuiOpen
  if SHX0_2 then
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.SetTimeout
    SHX1_2 = 100
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX14_1
      SHX0_3()
    end
    SHX0_2(SHX1_2, SHX2_2)
  end
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = RegisterNetEvent
SHX20_1 = "b674c758b8"
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangNuiOpen
  if SHX0_2 then
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.SetTimeout
    SHX1_2 = 100
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX14_1
      SHX0_3()
    end
    SHX0_2(SHX1_2, SHX2_2)
  end
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = RegisterNetEvent
SHX20_1 = "58d834d15a"
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangNuiOpen
  if SHX0_2 then
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.SetTimeout
    SHX1_2 = 100
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX14_1
      SHX0_3()
    end
    SHX0_2(SHX1_2, SHX2_2)
  end
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = RegisterNetEvent
SHX20_1 = "5d7f40bb9d"
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangNuiOpen
  if SHX0_2 then
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.SetTimeout
    SHX1_2 = 100
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX14_1
      SHX0_3()
    end
    SHX0_2(SHX1_2, SHX2_2)
  end
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = CMG
SHX19_1 = SHX19_1.uiRegisterCallback
SHX20_1 = "gangGetSkillCategories"
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangCachedData
  if not SHX0_2 then
    SHX1_2 = {}
    return SHX1_2
  end
  SHX1_2 = SHX0_2.gangPerksUnlocked
  if not SHX1_2 then
    SHX1_2 = {}
  end
  SHX2_2 = {}
  SHX3_2 = SHX1_1
  if SHX3_2 then
    SHX3_2 = SHX1_1.gangSkillCategories
    if SHX3_2 then
      SHX3_2 = ipairs
      SHX4_2 = SHX1_1.gangSkillCategories
      SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
      for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
        SHX9_2 = 0
        SHX10_2 = 0
        SHX11_2 = SHX1_1.gangSkills
        if SHX11_2 then
          SHX11_2 = pairs
          SHX12_2 = SHX1_1.gangSkills
          SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
          for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
            SHX17_2 = SHX16_2.skillCategory
            SHX18_2 = SHX8_2.id
            if SHX17_2 == SHX18_2 then
              SHX10_2 = SHX10_2 + 1
              SHX17_2 = SHX1_2[SHX15_2]
              if SHX17_2 then
                SHX9_2 = SHX9_2 + 1
              end
            end
          end
        end
        SHX11_2 = #SHX2_2
        SHX11_2 = SHX11_2 + 1
        SHX12_2 = {}
        SHX13_2 = SHX8_2.id
        SHX12_2.id = SHX13_2
        SHX13_2 = SHX8_2.title
        SHX12_2.title = SHX13_2
        SHX13_2 = SHX8_2.description
        SHX12_2.description = SHX13_2
        SHX13_2 = SHX8_2.requireRecognised
        SHX13_2 = true == SHX13_2
        SHX12_2.requireRecognised = SHX13_2
        SHX12_2.perksUsed = SHX9_2
        SHX12_2.perksMax = SHX10_2
        SHX13_2 = SHX8_2.id
        if "gang_rp" == SHX13_2 then
          SHX13_2 = SHX0_2.gangRpSkillPoints
          if SHX13_2 then
            goto SHX_LABEL_80
          end
          SHX13_2 = 0
          if SHX13_2 then
            goto SHX_LABEL_80
          end
        end
        SHX13_2 = SHX0_2.gangPublicSkillPoints
        if not SHX13_2 then
          SHX13_2 = 0
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_80:: outside nested blocks until all 'goto SHX_LABEL_80' can see it
        ::SHX_LABEL_80::
        SHX12_2.skillPoints = SHX13_2
        SHX2_2[SHX11_2] = SHX12_2
      end
    end
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.uiSendMessage
  SHX4_2 = {}
  SHX4_2.action = "GANG_SET_SKILL_CATEGORIES"
  SHX5_2 = {}
  SHX5_2.categories = SHX2_2
  SHX4_2.payload = SHX5_2
  SHX3_2(SHX4_2)
  SHX3_2 = {}
  return SHX3_2
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = CMG
SHX19_1 = SHX19_1.uiRegisterCallback
SHX20_1 = "gangSelectSkillTree"
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.gangCachedData
  if not SHX1_2 then
    SHX2_2 = {}
    return SHX2_2
  end
  SHX2_2 = SHX0_2 or SHX2_2
  if SHX0_2 then
    SHX2_2 = SHX0_2.categoryId
  end
  SHX3_2 = type
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if "string" ~= SHX3_2 then
    SHX3_2 = {}
    return SHX3_2
  end
  SHX3_2 = CMG
  SHX3_2.gangViewedSkillCategory = SHX2_2
  SHX3_2 = SHX1_2.gangPerksUnlocked
  if not SHX3_2 then
    SHX3_2 = {}
  end
  if "gang_rp" == SHX2_2 then
    SHX4_2 = SHX1_2.gangRpSkillPoints
    if SHX4_2 then
      goto SHX_LABEL_38
    end
    SHX4_2 = 0
    if SHX4_2 then
      goto SHX_LABEL_38
    end
  end
  SHX4_2 = SHX1_2.gangPublicSkillPoints
  if not SHX4_2 then
    SHX4_2 = 0
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_38:: outside nested blocks until all 'goto SHX_LABEL_38' can see it
  ::SHX_LABEL_38::
  SHX5_2 = {}
  SHX6_2 = {}
  SHX7_2 = SHX1_1
  if SHX7_2 then
    SHX7_2 = SHX1_1.gangSkills
    if SHX7_2 then
      SHX7_2 = pairs
      SHX8_2 = SHX1_1.gangSkills
      SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
      for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
        SHX13_2 = SHX12_2.skillCategory
        if SHX13_2 == SHX2_2 then
          SHX13_2 = SHX3_2[SHX11_2]
          SHX13_2 = true == SHX13_2
          SHX14_2 = #SHX5_2
          SHX14_2 = SHX14_2 + 1
          SHX15_2 = {}
          SHX15_2.id = SHX11_2
          SHX16_2 = SHX12_2.name
          if not SHX16_2 then
            SHX16_2 = SHX11_2
          end
          SHX15_2.title = SHX16_2
          SHX16_2 = SHX12_2.description
          SHX15_2.desc = SHX16_2
          SHX16_2 = SHX12_2.cost
          if not SHX16_2 then
            SHX16_2 = 1
          end
          SHX15_2.cost = SHX16_2
          SHX15_2.unlocked = SHX13_2
          SHX16_2 = SHX12_2.icon
          if not SHX16_2 then
            SHX16_2 = "bolt"
          end
          SHX15_2.icon = SHX16_2
          SHX16_2 = SHX12_2.implemented
          SHX16_2 = false ~= SHX16_2
          SHX15_2.implemented = SHX16_2
          SHX5_2[SHX14_2] = SHX15_2
        end
      end
    end
  end
  SHX7_2 = table
  SHX7_2 = SHX7_2.sort
  SHX8_2 = SHX5_2
  function SHX9_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3
    SHX2_3 = SHX0_3.id
    SHX3_3 = SHX1_3.id
    SHX2_3 = SHX2_3 < SHX3_3
    return SHX2_3
  end
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = SHX1_1
  if SHX7_2 then
    SHX7_2 = SHX1_1.gangSkillTrees
    if SHX7_2 then
      SHX7_2 = SHX1_1.gangSkillTrees
      SHX7_2 = SHX7_2[SHX2_2]
    end
  end
  if SHX7_2 then
    SHX8_2 = SHX7_2.edges
    if SHX8_2 then
      SHX8_2 = ipairs
      SHX9_2 = SHX7_2.edges
      SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
      for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
        SHX14_2 = #SHX6_2
        SHX14_2 = SHX14_2 + 1
        SHX15_2 = {}
        SHX16_2 = SHX13_2.from
        SHX15_2.from = SHX16_2
        SHX16_2 = SHX13_2.to
        SHX15_2.to = SHX16_2
        SHX6_2[SHX14_2] = SHX15_2
      end
    end
  end
  SHX8_2 = {}
  SHX9_2 = ipairs
  SHX10_2 = SHX6_2
  SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
  for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
    SHX15_2 = SHX14_2.to
    if SHX15_2 then
      SHX15_2 = SHX14_2.to
      SHX8_2[SHX15_2] = true
    end
  end
  SHX9_2 = nil
  SHX10_2 = ipairs
  SHX11_2 = SHX5_2
  SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
  for SHX14_2, SHX15_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
    SHX16_2 = SHX15_2.id
    SHX16_2 = SHX8_2[SHX16_2]
    if not SHX16_2 then
      SHX9_2 = SHX15_2.id
      break
    end
  end
  if not SHX9_2 then
    SHX10_2 = SHX5_2[1]
    if SHX10_2 then
      SHX10_2 = SHX5_2[1]
      SHX9_2 = SHX10_2.id
    end
  end
  SHX10_2 = SHX2_2
  SHX11_2 = SHX1_1
  if SHX11_2 then
    SHX11_2 = SHX1_1.gangSkillCategories
    if SHX11_2 then
      SHX11_2 = ipairs
      SHX12_2 = SHX1_1.gangSkillCategories
      SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
      for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
        SHX17_2 = SHX16_2.id
        if SHX17_2 == SHX2_2 then
          SHX10_2 = SHX16_2.title
          break
        end
      end
    end
  end
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.uiSendMessage
  SHX12_2 = {}
  SHX12_2.action = "GANG_OPEN_SKILL_TREE"
  SHX13_2 = {}
  SHX13_2.categoryId = SHX2_2
  SHX13_2.categoryTitle = SHX10_2
  SHX13_2.points = SHX4_2
  SHX13_2.nodes = SHX5_2
  SHX13_2.edges = SHX6_2
  SHX13_2.selectedNodeId = SHX9_2
  SHX12_2.payload = SHX13_2
  SHX11_2(SHX12_2)
  SHX11_2 = {}
  return SHX11_2
end
SHX19_1(SHX20_1, SHX21_1)
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangCachedData
  if SHX0_2 then
    SHX1_2 = SHX0_2.id
    if SHX1_2 then
      goto SHX_LABEL_9
    end
  end
  SHX1_2 = nil
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  return SHX1_2
end
SHX20_1 = CMG
SHX20_1 = SHX20_1.uiRegisterCallback
SHX21_1 = "gangOrgCreateRank"
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX19_1
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "dc44c30fb0"
    SHX3_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = {}
  return SHX1_2
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = CMG
SHX20_1 = SHX20_1.uiRegisterCallback
SHX21_1 = "gangOrgDeleteRank"
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX19_1
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX0_2 or SHX2_2
  if SHX0_2 then
    SHX2_2 = SHX0_2.rankName
  end
  if SHX1_2 then
    SHX3_2 = type
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if "string" == SHX3_2 then
      SHX3_2 = TriggerServerEvent
      SHX4_2 = "be906f2085"
      SHX5_2 = SHX1_2
      SHX6_2 = SHX2_2
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    end
  end
  SHX3_2 = {}
  return SHX3_2
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = CMG
SHX20_1 = SHX20_1.uiRegisterCallback
SHX21_1 = "gangOrgChangeRank"
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = SHX19_1
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX0_2 or SHX2_2
  if SHX0_2 then
    SHX2_2 = tonumber
    SHX3_2 = SHX0_2.userId
    SHX2_2 = SHX2_2(SHX3_2)
  end
  SHX3_2 = SHX0_2 or SHX3_2
  if SHX0_2 then
    SHX3_2 = SHX0_2.rankName
  end
  if SHX1_2 and SHX2_2 then
    SHX4_2 = type
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    if "string" == SHX4_2 then
      SHX4_2 = TriggerServerEvent
      SHX5_2 = "a310f50e5f"
      SHX6_2 = SHX1_2
      SHX7_2 = SHX2_2
      SHX8_2 = SHX3_2
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    end
  end
  SHX4_2 = {}
  return SHX4_2
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = CMG
SHX20_1 = SHX20_1.uiRegisterCallback
SHX21_1 = "gangOrgSetClockPoint"
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = SHX19_1
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerCoords
    SHX1_2 = SHX1_2()
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "3bcedbf249"
    SHX4_2 = SHX0_2
    SHX5_2 = {}
    SHX6_2 = SHX1_2.x
    SHX5_2.x = SHX6_2
    SHX6_2 = SHX1_2.y
    SHX5_2.y = SHX6_2
    SHX6_2 = SHX1_2.z
    SHX5_2.z = SHX6_2
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  end
  SHX1_2 = {}
  return SHX1_2
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = CMG
SHX20_1 = SHX20_1.uiRegisterCallback
SHX21_1 = "gangOrgClockOn"
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX19_1
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "6db7399c62"
    SHX3_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = {}
  return SHX1_2
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = CMG
SHX20_1 = SHX20_1.uiRegisterCallback
SHX21_1 = "gangOrgClockOff"
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "1117763922"
  SHX0_2(SHX1_2)
  SHX0_2 = {}
  return SHX0_2
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = CMG
SHX20_1 = SHX20_1.uiRegisterCallback
SHX21_1 = "gangOrgSaveRankOutfit"
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = SHX19_1
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX0_2 or SHX2_2
  if SHX0_2 then
    SHX2_2 = SHX0_2.rankName
  end
  SHX3_2 = SHX0_2 or SHX3_2
  if SHX0_2 then
    SHX3_2 = SHX0_2.update
    SHX3_2 = true == SHX3_2
  end
  if SHX0_2 then
    SHX4_2 = tonumber
    SHX5_2 = SHX0_2.outfitId
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      goto SHX_LABEL_21
    end
  end
  SHX4_2 = 1
  -- [FIX IF ERROR] Move ::SHX_LABEL_21:: outside nested blocks until all 'goto SHX_LABEL_21' can see it
  ::SHX_LABEL_21::
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getGangRankOutfitSlotMax
  SHX5_2 = SHX5_2()
  if SHX4_2 < 1 or SHX4_2 > SHX5_2 then
    SHX6_2 = {}
    return SHX6_2
  end
  if SHX1_2 then
    SHX6_2 = type
    SHX7_2 = SHX2_2
    SHX6_2 = SHX6_2(SHX7_2)
    if "string" == SHX6_2 then
      SHX6_2 = TriggerServerEvent
      SHX7_2 = "63443bd729"
      SHX8_2 = SHX1_2
      SHX9_2 = SHX2_2
      SHX10_2 = SHX3_2
      SHX11_2 = SHX4_2
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    end
  end
  SHX6_2 = {}
  return SHX6_2
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = CMG
SHX20_1 = SHX20_1.uiRegisterCallback
SHX21_1 = "gangBuySkillNode"
function SHX22_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX2_2 = SHX0_2.categoryId
  end
  SHX3_2 = SHX0_2 or SHX3_2
  if SHX0_2 then
    SHX3_2 = SHX0_2.nodeId
  end
  SHX4_2 = type
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2)
  if "string" == SHX4_2 then
    SHX4_2 = type
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    if "string" == SHX4_2 then
      goto SHX_LABEL_25
    end
  end
  if SHX1_2 then
    SHX4_2 = SHX1_2
    SHX5_2 = {}
    SHX5_2.ok = false
    SHX4_2(SHX5_2)
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_25:: outside nested blocks until all 'goto SHX_LABEL_25' can see it
  ::SHX_LABEL_25::
  SHX4_2 = TriggerServerEvent
  SHX5_2 = "ddad9cd813"
  SHX6_2 = SHX2_2
  SHX7_2 = SHX3_2
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  if SHX1_2 then
    SHX4_2 = SHX1_2
    SHX5_2 = {}
    SHX5_2.ok = true
    SHX4_2(SHX5_2)
  end
  SHX4_2 = {}
  return SHX4_2
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = RegisterNetEvent
SHX21_1 = "e1bb552050"
function SHX22_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.gangCachedData
  if SHX7_2 then
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.gangCachedData
    SHX7_2.gangPublicSkillPoints = SHX0_2
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.gangCachedData
    SHX8_2 = SHX6_2 or SHX8_2
    if not SHX6_2 then
      SHX8_2 = 0
    end
    SHX7_2.gangRpSkillPoints = SHX8_2
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.gangCachedData
    SHX7_2.gangPerksUnlocked = SHX1_2
    if nil ~= SHX2_2 then
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.gangCachedData
      SHX7_2.gangPublicLevel = SHX2_2
    end
    if nil ~= SHX3_2 then
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.gangCachedData
      SHX7_2.gangPublicXp = SHX3_2
    end
    if nil ~= SHX4_2 then
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.gangCachedData
      SHX7_2.gangRpLevel = SHX4_2
    end
    if nil ~= SHX5_2 then
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.gangCachedData
      SHX7_2.gangRpXp = SHX5_2
    end
  end
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.gangNuiOpen
  if SHX7_2 then
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.gangViewedSkillCategory
    if "gang_rp" == SHX7_2 then
      if SHX6_2 then
        goto SHX_LABEL_51
        SHX8_2 = SHX6_2 or SHX8_2
      end
      SHX8_2 = 0
      if SHX8_2 then
        goto SHX_LABEL_51
      end
    end
    SHX8_2 = SHX0_2
    -- [FIX IF ERROR] Move ::SHX_LABEL_51:: outside nested blocks until all 'goto SHX_LABEL_51' can see it
    ::SHX_LABEL_51::
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.uiSendMessage
    SHX10_2 = {}
    SHX10_2.action = "GANG_UPDATE_SKILL_TREE"
    SHX11_2 = {}
    SHX11_2.points = SHX8_2
    SHX12_2 = CMG
    SHX12_2 = SHX12_2.getClientGangMaxMemberLimit
    SHX12_2 = SHX12_2()
    SHX11_2.maxMemberLimit = SHX12_2
    SHX12_2 = CMG
    SHX12_2 = SHX12_2.getClientGangDepositFeeDisplayPercent
    SHX12_2 = SHX12_2()
    SHX11_2.depositFeePercent = SHX12_2
    function SHX12_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
      SHX0_3 = {}
      SHX1_3 = pairs
      SHX2_3 = SHX1_2
      if not SHX2_3 then
        SHX2_3 = {}
      end
      SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
      for SHX5_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
        SHX6_3 = #SHX0_3
        SHX6_3 = SHX6_3 + 1
        SHX7_3 = {}
        SHX7_3.id = SHX5_3
        SHX7_3.unlocked = true
        SHX0_3[SHX6_3] = SHX7_3
      end
      return SHX0_3
    end
    SHX12_2 = SHX12_2()
    SHX11_2.nodes = SHX12_2
    SHX10_2.payload = SHX11_2
    SHX9_2(SHX10_2)
    SHX9_2 = Citizen
    SHX9_2 = SHX9_2.SetTimeout
    SHX10_2 = 0
    function SHX11_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX14_1
      SHX0_3()
    end
    SHX9_2(SHX10_2, SHX11_2)
  end
end
SHX20_1(SHX21_1, SHX22_1)
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 166
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if not SHX0_2 then
    SHX0_2 = IsDisabledControlJustPressed
    SHX1_2 = 0
    SHX2_2 = 166
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if not SHX0_2 then
      goto SHX_LABEL_32
    end
  end
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX0_1
  SHX0_2 = SHX0_2 - SHX1_2
  if SHX0_2 < 100 then
    return
  end
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.isInComa
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    return
  end
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX0_1 = SHX0_2
  SHX0_2 = SHX15_1
  SHX0_2()
  -- [FIX IF ERROR] Move ::SHX_LABEL_32:: outside nested blocks until all 'goto SHX_LABEL_32' can see it
  ::SHX_LABEL_32::
end
SHX21_1 = Citizen
SHX21_1 = SHX21_1.CreateThread
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createThreadOnTick
  SHX1_2 = SHX20_1
  SHX2_2 = "Gang NUI Key Controls"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX21_1(SHX22_1)
