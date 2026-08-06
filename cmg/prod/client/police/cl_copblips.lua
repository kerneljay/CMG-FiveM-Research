-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1
SHX0_1 = false
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = 0
SHX4_1 = {}
SHX5_1 = {}
SHX6_1 = false
SHX7_1 = false
SHX8_1 = false
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = pairs
  SHX1_2 = SHX1_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DoesBlipExist
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = RemoveBlip
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = {}
  SHX1_1 = SHX0_2
end
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  if SHX0_2 then
    SHX1_2 = SHX2_1
    SHX1_2 = SHX1_2[SHX0_2]
    if SHX1_2 then
      SHX1_2 = pairs
      SHX2_2 = SHX2_1
      SHX2_2 = SHX2_2[SHX0_2]
      SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
      for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
        SHX7_2 = DoesBlipExist
        SHX8_2 = SHX6_2
        SHX7_2 = SHX7_2(SHX8_2)
        if SHX7_2 then
          SHX7_2 = RemoveBlip
          SHX8_2 = SHX6_2
          SHX7_2(SHX8_2)
        end
      end
    end
    SHX1_2 = SHX2_1
    SHX1_2[SHX0_2] = nil
  else
    SHX1_2 = pairs
    SHX2_2 = SHX2_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = pairs
      SHX8_2 = SHX6_2
      SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
      for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
        SHX13_2 = DoesBlipExist
        SHX14_2 = SHX12_2
        SHX13_2 = SHX13_2(SHX14_2)
        if SHX13_2 then
          SHX13_2 = RemoveBlip
          SHX14_2 = SHX12_2
          SHX13_2(SHX14_2)
        end
      end
    end
    SHX1_2 = {}
    SHX2_1 = SHX1_2
  end
  SHX1_2 = {}
  SHX4_1 = SHX1_2
end
function SHX11_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX6_2 = DoesBlipExist
  SHX7_2 = SHX0_2
  SHX6_2 = SHX6_2(SHX7_2)
  if not SHX6_2 then
    SHX6_2 = AddBlipForEntity
    SHX7_2 = SHX1_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = table
    SHX7_2 = SHX7_2.insert
    SHX8_2 = SHX1_1
    SHX9_2 = SHX6_2
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = SetBlipSprite
    SHX8_2 = SHX6_2
    SHX9_2 = SHX4_2 or SHX9_2
    if not SHX4_2 then
      SHX9_2 = 1
    end
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = SetBlipScale
    SHX8_2 = SHX6_2
    SHX9_2 = 0.85
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = SetBlipAlpha
    SHX8_2 = SHX6_2
    SHX9_2 = 255
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = SetBlipColour
    SHX8_2 = SHX6_2
    SHX9_2 = SHX2_2
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = ShowHeadingIndicatorOnBlip
    SHX8_2 = SHX6_2
    SHX9_2 = true
    SHX7_2(SHX8_2, SHX9_2)
  else
    SHX6_2 = GetEntityHealth
    SHX7_2 = SHX1_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 > 102 then
      SHX6_2 = SetBlipSprite
      SHX7_2 = SHX0_2
      SHX8_2 = SHX4_2 or SHX8_2
      if not SHX4_2 then
        SHX8_2 = 1
      end
      SHX6_2(SHX7_2, SHX8_2)
    else
      SHX6_2 = SetBlipSprite
      SHX7_2 = SHX0_2
      SHX8_2 = SHX4_2 or SHX8_2
      if not SHX4_2 then
        SHX8_2 = 274
      end
      SHX6_2(SHX7_2, SHX8_2)
    end
    SHX6_2 = SetBlipScale
    SHX7_2 = SHX0_2
    SHX8_2 = 0.85
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = SetBlipAlpha
    SHX7_2 = SHX0_2
    SHX8_2 = 255
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = SetBlipColour
    SHX7_2 = SHX0_2
    SHX8_2 = SHX2_2
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = ShowHeadingIndicatorOnBlip
    SHX7_2 = SHX0_2
    SHX8_2 = true
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = SHX6_1
    if SHX6_2 then
      SHX6_2 = SetBlipCategory
      SHX7_2 = SHX0_2
      SHX8_2 = 7
      SHX6_2(SHX7_2, SHX8_2)
      SHX6_2 = BeginTextCommandSetBlipName
      SHX7_2 = "STRING"
      SHX6_2(SHX7_2)
      SHX6_2 = AddTextComponentSubstringPlayerName
      SHX7_2 = SHX5_2 or SHX7_2
      if not SHX5_2 then
        SHX7_2 = CMG
        SHX7_2 = SHX7_2.getPlayerName
        SHX8_2 = SHX3_2
        SHX7_2 = SHX7_2(SHX8_2)
      end
      SHX6_2(SHX7_2)
      SHX6_2 = EndTextCommandSetBlipName
      SHX7_2 = SHX0_2
      SHX6_2(SHX7_2)
    end
  end
end
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.isStaffRankShowingForPlayer
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = IsEntityVisible
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.clientGetPlayerIsStaff
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX2_2 = not SHX2_2
  end
  return SHX2_2
end
function SHX13_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX6_2 = SHX4_2 or nil
  if SHX4_2 then
    SHX6_2 = SHX5_1
    SHX6_2 = SHX6_2[SHX4_2]
  end
  if SHX4_2 then
    SHX7_2 = SHX5_1
    SHX7_2[SHX4_2] = SHX0_2
  end
  SHX7_2 = AddBlipForCoord
  SHX8_2 = SHX0_2.x
  SHX9_2 = SHX0_2.y
  SHX10_2 = SHX0_2.z
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  if SHX6_2 then
    SHX8_2 = SHX4_1
    SHX9_2 = SHX0_2 - SHX6_2
    SHX8_2[SHX7_2] = SHX9_2
  end
  SHX8_2 = SHX2_1
  SHX8_2 = SHX8_2[SHX5_2]
  if not SHX8_2 then
    SHX8_2 = SHX2_1
    SHX9_2 = {}
    SHX8_2[SHX5_2] = SHX9_2
  end
  SHX8_2 = table
  SHX8_2 = SHX8_2.insert
  SHX9_2 = SHX2_1
  SHX9_2 = SHX9_2[SHX5_2]
  SHX10_2 = SHX7_2
  SHX8_2(SHX9_2, SHX10_2)
  if 0 == SHX2_2 then
    SHX8_2 = 1
    if "taggedprisoners" == SHX5_2 then
      SHX8_2 = 280
    elseif "vigilante" == SHX5_2 then
      SHX8_2 = 774
    elseif 5 == SHX3_2 then
      SHX8_2 = 15
    end
    SHX9_2 = SetBlipSprite
    SHX10_2 = SHX7_2
    SHX11_2 = SHX8_2
    SHX9_2(SHX10_2, SHX11_2)
  else
    SHX8_2 = SetBlipSprite
    SHX9_2 = SHX7_2
    SHX10_2 = 274
    SHX8_2(SHX9_2, SHX10_2)
  end
  SHX8_2 = SetBlipScale
  SHX9_2 = SHX7_2
  SHX10_2 = 0.85
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = SetBlipAlpha
  SHX9_2 = SHX7_2
  SHX10_2 = 255
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = SetBlipColour
  SHX9_2 = SHX7_2
  SHX10_2 = SHX3_2
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = SetBlipRotation
  SHX9_2 = SHX7_2
  SHX10_2 = math
  SHX10_2 = SHX10_2.floor
  SHX11_2 = SHX1_2
  SHX10_2, SHX11_2 = SHX10_2(SHX11_2)
  SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX8_2 = ShowHeadingIndicatorOnBlip
  SHX9_2 = SHX7_2
  SHX10_2 = true
  SHX8_2(SHX9_2, SHX10_2)
end
SHX14_1 = RegisterCommand
SHX15_1 = "blipson"
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isEmergencyService
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = true
    SHX0_1 = SHX0_2
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.areBlipPlayerNamesEnabled
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = DisplayPlayerNameTagsOnBlips
      SHX1_2 = true
      SHX0_2(SHX1_2)
    end
  end
end
SHX17_1 = false
SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX14_1 = RegisterCommand
SHX15_1 = "blipsoff"
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = false
    SHX0_1 = SHX0_2
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.areBlipPlayerNamesEnabled
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = DisplayPlayerNameTagsOnBlips
      SHX1_2 = false
      SHX0_2(SHX1_2)
    end
    SHX0_2 = SHX9_1
    SHX0_2()
  end
end
SHX17_1 = false
SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "14f010530c"
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = false
    SHX0_1 = SHX0_2
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.areBlipPlayerNamesEnabled
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = DisplayPlayerNameTagsOnBlips
      SHX1_2 = false
      SHX0_2(SHX1_2)
    end
    SHX0_2 = SHX9_1
    SHX0_2()
    SHX0_2 = SHX10_1
    SHX1_2 = nil
    SHX0_2(SHX1_2)
  end
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = AddEventHandler
SHX15_1 = "e713d91b70"
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX9_1
  SHX0_2()
  SHX0_2 = SHX10_1
  SHX1_2 = nil
  SHX0_2(SHX1_2)
end
SHX14_1(SHX15_1, SHX16_1)
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX0_2 = table
  SHX0_2 = SHX0_2.count
  SHX1_2 = SHX2_1
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 > 0 then
    SHX0_2 = GetGameTimer
    SHX0_2 = SHX0_2()
    SHX1_2 = SHX3_1
    SHX1_2 = SHX0_2 - SHX1_2
    SHX1_2 = SHX1_2 / 1000.0
    if SHX1_2 < 1.0 then
      SHX2_2 = pairs
      SHX3_2 = SHX2_1
      SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
      for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
        SHX8_2 = pairs
        SHX9_2 = SHX7_2
        SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
        for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
          SHX14_2 = SHX4_1
          SHX14_2 = SHX14_2[SHX13_2]
          if SHX14_2 then
            SHX15_2 = GetBlipCoords
            SHX16_2 = SHX13_2
            SHX15_2 = SHX15_2(SHX16_2)
            SHX16_2 = SHX14_2 * SHX1_2
            SHX17_2 = SetBlipCoords
            SHX18_2 = SHX13_2
            SHX19_2 = SHX15_2.x
            SHX20_2 = SHX16_2.x
            SHX19_2 = SHX19_2 + SHX20_2
            SHX20_2 = SHX15_2.y
            SHX21_2 = SHX16_2.y
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = SHX15_2.z
            SHX22_2 = SHX16_2.z
            SHX21_2 = SHX21_2 + SHX22_2
            SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2)
          end
        end
      end
    end
    SHX3_1 = SHX0_2
  end
end
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.doesPlayerHaveRadioItem
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = SHX7_1
    if not SHX1_2 then
      goto SHX_LABEL_12
    end
  end
  SHX1_2 = true
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.clientGetUserIdFromSource
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getJobType
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
  SHX4_2 = "Vigilante" == SHX3_2
  return SHX4_2
end
SHX16_1 = Citizen
SHX16_1 = SHX16_1.CreateThread
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2
  while true do
    SHX0_2 = SHX0_1
    if not SHX0_2 then
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.isInComa
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.hasGangBlipsEnabled
        SHX0_2 = SHX0_2()
        if not SHX0_2 then
          SHX0_2 = SHX7_1
          if not SHX0_2 then
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.hasClientGroup
            SHX1_2 = "Vigilante"
            SHX0_2 = SHX0_2(SHX1_2)
            if not SHX0_2 then
              goto SHX_LABEL_422
            end
          end
        end
      end
    end
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.inArena
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.areBlipPlayerNamesEnabled
      SHX0_2 = SHX0_2()
      SHX6_1 = SHX0_2
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.hasGangBlipsEnabled
      SHX0_2 = SHX0_2()
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.isEmergencyService
      SHX1_2 = SHX1_2()
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.getPlayerPed
      SHX2_2 = SHX2_2()
      SHX3_2 = ipairs
      SHX4_2 = GetActivePlayers
      SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX4_2()
      SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
      for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
        SHX9_2 = GetPlayerPed
        SHX10_2 = SHX8_2
        SHX9_2 = SHX9_2(SHX10_2)
        if SHX9_2 ~= SHX2_2 then
          SHX10_2 = GetVehiclePedIsIn
          SHX11_2 = SHX9_2
          SHX12_2 = false
          SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
          SHX11_2 = GetBlipFromEntity
          SHX12_2 = SHX9_2
          SHX11_2 = SHX11_2(SHX12_2)
          if 0 ~= SHX10_2 then
            SHX12_2 = GetBlipFromEntity
            SHX13_2 = SHX10_2
            SHX12_2 = SHX12_2(SHX13_2)
            if SHX12_2 then
              goto SHX_LABEL_66
            end
          end
          SHX12_2 = 0
          -- [FIX IF ERROR] Move ::SHX_LABEL_66:: outside nested blocks until all 'goto SHX_LABEL_66' can see it
          ::SHX_LABEL_66::
          SHX13_2 = SHX11_2 or SHX13_2
          SHX13_2 = SHX12_2 or SHX13_2
          if (0 == SHX11_2 or not SHX11_2) and (0 == SHX12_2 or not SHX12_2) then
            SHX13_2 = 0
          end
          SHX14_2 = CMG
          SHX14_2 = SHX14_2.getPlayerServerId
          SHX15_2 = SHX8_2
          SHX14_2 = SHX14_2(SHX15_2)
          if SHX14_2 and SHX14_2 > 0 then
            SHX15_2 = SHX15_1
            SHX16_2 = SHX14_2
            SHX15_2 = SHX15_2(SHX16_2)
            if SHX15_2 then
              SHX15_2 = CMG
              SHX15_2 = SHX15_2.clientGetUserIdFromSource
              SHX16_2 = SHX14_2
              SHX15_2 = SHX15_2(SHX16_2)
              SHX16_2 = CMG
              SHX16_2 = SHX16_2.getJobType
              SHX17_2 = SHX15_2
              SHX16_2, SHX17_2 = SHX16_2(SHX17_2)
              SHX18_2 = CMG
              SHX18_2 = SHX18_2.getClientUserId
              SHX18_2 = SHX18_2()
              if SHX15_2 ~= SHX18_2 then
                SHX18_2 = false
                SHX19_2 = SHX12_1
                SHX20_2 = SHX9_2
                SHX21_2 = SHX14_2
                SHX19_2 = SHX19_2(SHX20_2, SHX21_2)
                if SHX19_2 then
                  SHX19_2 = SHX0_1
                  if SHX19_2 then
                    SHX19_2 = CMG
                    SHX19_2 = SHX19_2.hasRadioItem
                    SHX19_2 = SHX19_2()
                    if SHX19_2 and SHX1_2 then
                      if 0 ~= SHX10_2 then
                        SHX19_2 = 56
                        SHX20_2 = IsThisModelAHeli
                        SHX21_2 = GetEntityModel
                        SHX22_2 = SHX10_2
                        SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX21_2(SHX22_2)
                        SHX20_2 = SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
                        if SHX20_2 then
                          SHX19_2 = 15
                        end
                        SHX20_2 = SHX12_2 or SHX20_2
                        SHX20_2 = SHX11_2 or SHX20_2
                        if (0 == SHX12_2 or not SHX12_2) and (0 == SHX11_2 or not SHX11_2) then
                          SHX20_2 = 0
                        end
                        if 0 ~= SHX11_2 and 0 ~= SHX12_2 and SHX11_2 ~= SHX12_2 then
                          SHX21_2 = RemoveBlip
                          SHX22_2 = SHX11_2
                          SHX21_2(SHX22_2)
                          SHX20_2 = SHX12_2
                        end
                        if "metpd" == SHX16_2 and "NPAS" == SHX17_2 then
                          SHX21_2 = SHX11_1
                          SHX22_2 = SHX20_2
                          SHX23_2 = SHX10_2
                          SHX24_2 = 5
                          SHX25_2 = SHX8_2
                          SHX26_2 = SHX19_2
                          SHX27_2 = Player
                          SHX28_2 = SHX14_2
                          SHX27_2 = SHX27_2(SHX28_2)
                          SHX27_2 = SHX27_2.state
                          SHX27_2 = SHX27_2.blipName
                          SHX21_2(SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
                          SHX18_2 = true
                        elseif "metpd" == SHX16_2 then
                          SHX21_2 = SHX11_1
                          SHX22_2 = SHX20_2
                          SHX23_2 = SHX10_2
                          SHX24_2 = 3
                          SHX25_2 = SHX8_2
                          SHX26_2 = SHX19_2
                          SHX27_2 = Player
                          SHX28_2 = SHX14_2
                          SHX27_2 = SHX27_2(SHX28_2)
                          SHX27_2 = SHX27_2.state
                          SHX27_2 = SHX27_2.blipName
                          SHX21_2(SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
                          SHX18_2 = true
                        elseif "nhs" == SHX16_2 and "HEMS" == SHX17_2 then
                          SHX21_2 = SHX11_1
                          SHX22_2 = SHX13_2
                          SHX23_2 = SHX10_2
                          SHX24_2 = 44
                          SHX25_2 = SHX8_2
                          SHX26_2 = SHX19_2
                          SHX21_2(SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
                          SHX18_2 = true
                        elseif "nhs" == SHX16_2 then
                          SHX21_2 = SHX11_1
                          SHX22_2 = SHX13_2
                          SHX23_2 = SHX10_2
                          SHX24_2 = 2
                          SHX25_2 = SHX8_2
                          SHX26_2 = SHX19_2
                          SHX21_2(SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
                          SHX18_2 = true
                        end
                      elseif "metpd" == SHX16_2 and ("CID" == SHX17_2 or "Trident" == SHX17_2) then
                        SHX19_2 = SHX11_1
                        SHX20_2 = SHX13_2
                        SHX21_2 = SHX9_2
                        SHX22_2 = 8
                        SHX23_2 = SHX8_2
                        SHX24_2 = nil
                        SHX25_2 = Player
                        SHX26_2 = SHX14_2
                        SHX25_2 = SHX25_2(SHX26_2)
                        SHX25_2 = SHX25_2.state
                        SHX25_2 = SHX25_2.blipName
                        SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
                        SHX18_2 = true
                      elseif "metpd" == SHX16_2 and "NPAS" == SHX17_2 then
                        SHX19_2 = SHX11_1
                        SHX20_2 = SHX13_2
                        SHX21_2 = SHX9_2
                        SHX22_2 = 5
                        SHX23_2 = SHX8_2
                        SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2)
                        SHX18_2 = true
                      elseif "metpd" == SHX16_2 and "CTSFO" == SHX17_2 then
                        SHX19_2 = SHX11_1
                        SHX20_2 = SHX13_2
                        SHX21_2 = SHX9_2
                        SHX22_2 = 40
                        SHX23_2 = SHX8_2
                        SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2)
                        SHX18_2 = true
                      elseif "metpd" == SHX16_2 then
                        SHX19_2 = SHX11_1
                        SHX20_2 = SHX13_2
                        SHX21_2 = SHX9_2
                        SHX22_2 = 3
                        SHX23_2 = SHX8_2
                        SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2)
                        SHX18_2 = true
                      elseif "hmp" == SHX16_2 then
                        SHX19_2 = SHX11_1
                        SHX20_2 = SHX13_2
                        SHX21_2 = SHX9_2
                        SHX22_2 = 29
                        SHX23_2 = SHX8_2
                        SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2)
                        SHX18_2 = true
                      elseif "lfb" == SHX16_2 then
                        SHX19_2 = SHX11_1
                        SHX20_2 = SHX13_2
                        SHX21_2 = SHX9_2
                        SHX22_2 = 1
                        SHX23_2 = SHX8_2
                        SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2)
                        SHX18_2 = true
                      elseif "nhs" == SHX16_2 and "HEMS" == SHX17_2 then
                        SHX19_2 = SHX11_1
                        SHX20_2 = SHX13_2
                        SHX21_2 = SHX9_2
                        SHX22_2 = 44
                        SHX23_2 = SHX8_2
                        SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2)
                        SHX18_2 = true
                      elseif "nhs" == SHX16_2 then
                        SHX19_2 = SHX11_1
                        SHX20_2 = SHX13_2
                        SHX21_2 = SHX9_2
                        SHX22_2 = 2
                        SHX23_2 = SHX8_2
                        SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2)
                        SHX18_2 = true
                      elseif "borderforce" == SHX16_2 then
                        SHX19_2 = SHX11_1
                        SHX20_2 = SHX13_2
                        SHX21_2 = SHX9_2
                        SHX22_2 = 83
                        SHX23_2 = SHX8_2
                        SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2)
                        SHX18_2 = true
                      elseif "Vigilante" == SHX17_2 then
                        SHX19_2 = SHX11_1
                        SHX20_2 = SHX13_2
                        SHX21_2 = SHX9_2
                        SHX22_2 = 40
                        SHX23_2 = SHX8_2
                        SHX24_2 = 774
                        SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
                        SHX18_2 = true
                      end
                  end
                  else
                    SHX19_2 = tCMG
                    SHX19_2 = SHX19_2.isInComa
                    SHX19_2 = SHX19_2()
                    if SHX19_2 then
                      if "nhs" == SHX16_2 then
                        SHX19_2 = SHX11_1
                        SHX20_2 = SHX13_2
                        SHX21_2 = SHX9_2
                        SHX22_2 = 2
                        SHX23_2 = SHX8_2
                        SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2)
                        SHX18_2 = true
                      end
                    elseif SHX0_2 and not SHX1_2 then
                      SHX19_2 = CMG
                      SHX19_2 = SHX19_2.isPlayerInSelectedGang
                      SHX20_2 = SHX14_2
                      SHX19_2, SHX20_2 = SHX19_2(SHX20_2)
                      if SHX19_2 and "" == SHX16_2 then
                        SHX21_2 = CMG
                        SHX21_2 = SHX21_2.isGangBlipsPinnedOnly
                        SHX21_2 = SHX21_2()
                        if SHX21_2 then
                          SHX21_2 = CMG
                          SHX21_2 = SHX21_2.isPlayerPinnedInGang
                          SHX22_2 = CMG
                          SHX22_2 = SHX22_2.clientGetUserIdFromSource
                          SHX23_2 = SHX14_2
                          SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX22_2(SHX23_2)
                          SHX21_2 = SHX21_2(SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
                          if not SHX21_2 then
                            goto SHX_LABEL_371
                          end
                        end
                        SHX21_2 = SHX11_1
                        SHX22_2 = SHX13_2
                        SHX23_2 = SHX9_2
                        SHX24_2 = SHX20_2.blip
                        SHX25_2 = SHX8_2
                        SHX21_2(SHX22_2, SHX23_2, SHX24_2, SHX25_2)
                        SHX18_2 = true
                      end
                    end
                  end
                  -- [FIX IF ERROR] Move ::SHX_LABEL_371:: outside nested blocks until all 'goto SHX_LABEL_371' can see it
                  ::SHX_LABEL_371::
                  SHX19_2 = CMG
                  SHX19_2 = SHX19_2.hasClientGroup
                  SHX20_2 = "Vigilante"
                  SHX19_2 = SHX19_2(SHX20_2)
                  if SHX19_2 and "Vigilante" == SHX17_2 then
                    SHX19_2 = SHX11_1
                    SHX20_2 = SHX13_2
                    SHX21_2 = SHX9_2
                    SHX22_2 = 40
                    SHX23_2 = SHX8_2
                    SHX24_2 = 774
                    SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
                    SHX18_2 = true
                  end
                  SHX19_2 = SHX7_1
                  if SHX19_2 and "aa" == SHX16_2 then
                    SHX19_2 = SHX11_1
                    SHX20_2 = SHX13_2
                    SHX21_2 = SHX9_2
                    SHX22_2 = 5
                    SHX23_2 = SHX8_2
                    SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2)
                    SHX18_2 = true
                  end
                end
                if not SHX18_2 then
                  SHX19_2 = GetBlipFromEntity
                  SHX20_2 = SHX9_2
                  SHX19_2 = SHX19_2(SHX20_2)
                  if 0 ~= SHX19_2 then
                    SHX20_2 = RemoveBlip
                    SHX21_2 = SHX19_2
                    SHX20_2(SHX21_2)
                  end
                  if 0 ~= SHX10_2 then
                    SHX20_2 = GetBlipFromEntity
                    SHX21_2 = SHX10_2
                    SHX20_2 = SHX20_2(SHX21_2)
                    if 0 ~= SHX20_2 then
                      SHX21_2 = RemoveBlip
                      SHX22_2 = SHX20_2
                      SHX21_2(SHX22_2)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_422:: outside nested blocks until all 'goto SHX_LABEL_422' can see it
    ::SHX_LABEL_422::
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerVehicle
    SHX0_2 = SHX0_2()
    SHX0_2 = IsBigmapActive
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = IsPauseMenuActive
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.isCallManagerOpen
        SHX0_2 = 0 ~= SHX0_2 or SHX0_2
      end
    end
    if SHX0_2 then
      SHX1_2 = SHX8_1
      if not SHX1_2 then
        SHX1_2 = TriggerServerEvent
        SHX2_2 = "62f7fcbe38"
        SHX3_2 = true
        SHX1_2(SHX2_2, SHX3_2)
        SHX1_2 = true
        SHX8_1 = SHX1_2
      end
    else
      SHX1_2 = SHX8_1
      if SHX1_2 then
        SHX1_2 = TriggerServerEvent
        SHX2_2 = "62f7fcbe38"
        SHX3_2 = false
        SHX1_2(SHX2_2, SHX3_2)
        SHX1_2 = false
        SHX8_1 = SHX1_2
      end
    end
    SHX1_2 = Wait
    SHX2_2 = 100
    SHX1_2(SHX2_2)
  end
end
SHX16_1(SHX17_1)
SHX16_1 = CMG
SHX16_1 = SHX16_1.createThreadOnTick
SHX17_1 = SHX14_1
SHX18_1 = "Blips Extrapolation"
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = true
SHX17_1 = GetPlayerServerId
SHX18_1 = PlayerId
SHX18_1, SHX19_1, SHX20_1 = SHX18_1()
SHX17_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1)
SHX18_1 = CreateThread
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = Wait
  SHX1_2 = 20000
  SHX0_2(SHX1_2)
  SHX0_2 = false
  SHX16_1 = SHX0_2
end
SHX18_1(SHX19_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "00e0b9aa86"
function SHX20_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX3_2 = SHX16_1
  if not SHX3_2 then
    SHX3_2 = SHX10_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
    if SHX1_2 then
      SHX3_2 = true
      SHX0_1 = SHX3_2
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.areBlipPlayerNamesEnabled
      SHX3_2 = SHX3_2()
      if SHX3_2 then
        SHX3_2 = DisplayPlayerNameTagsOnBlips
        SHX4_2 = true
        SHX3_2(SHX4_2)
      end
    else
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.isEmergencyService
      SHX3_2 = SHX3_2()
      if not SHX3_2 then
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.hasGangBlipsEnabled
        SHX3_2 = SHX3_2()
        if SHX3_2 then
          goto SHX_LABEL_31
        end
      end
      return
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_31:: outside nested blocks until all 'goto SHX_LABEL_31' can see it
    ::SHX_LABEL_31::
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.hasRadioItem
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX3_2 = pairs
      SHX4_2 = SHX0_2
      SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
      for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
        SHX9_2 = SHX8_2[1]
        if SHX9_2 then
          SHX9_2 = SHX8_2[1]
          SHX10_2 = SHX17_1
          if SHX9_2 == SHX10_2 then
            goto SHX_LABEL_82
          end
          SHX9_2 = GetPlayerFromServerId
          SHX10_2 = SHX8_2[1]
          SHX9_2 = SHX9_2(SHX10_2)
          if -1 ~= SHX9_2 then
            goto SHX_LABEL_82
          end
        end
        SHX9_2 = SHX8_2[6]
        SHX10_2 = CMG
        SHX10_2 = SHX10_2.getPlayerBucket
        SHX10_2 = SHX10_2()
        if SHX9_2 == SHX10_2 then
          if "gang" == SHX2_2 then
            SHX9_2 = CMG
            SHX9_2 = SHX9_2.isGangBlipsPinnedOnly
            SHX9_2 = SHX9_2()
            if SHX9_2 then
              SHX9_2 = CMG
              SHX9_2 = SHX9_2.isPlayerPinnedInGang
              SHX10_2 = CMG
              SHX10_2 = SHX10_2.clientGetUserIdFromSource
              SHX11_2 = SHX8_2[1]
              SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX10_2(SHX11_2)
              SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
              if not SHX9_2 then
                goto SHX_LABEL_82
              end
            end
          end
          SHX9_2 = SHX13_1
          SHX10_2 = SHX8_2[2]
          SHX11_2 = SHX8_2[3]
          SHX12_2 = SHX8_2[4]
          SHX13_2 = SHX8_2[5]
          SHX14_2 = SHX8_2[1]
          SHX15_2 = SHX2_2
          SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_82:: outside nested blocks until all 'goto SHX_LABEL_82' can see it
        ::SHX_LABEL_82::
      end
    end
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = RegisterNetEvent
SHX19_1 = "193ee4e15e"
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  if not SHX0_2 then
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
    SHX0_2 = SHX9_1
    SHX0_2()
  end
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  return SHX0_2
end
SHX18_1.isEmergencyBlipsEnabled = SHX19_1
SHX18_1 = RegisterNetEvent
SHX19_1 = "dd39aa0311"
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = true
  SHX7_1 = SHX0_2
  SHX0_2 = SetTimeout
  SHX1_2 = 300000
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX7_1 = SHX0_3
  end
  SHX0_2(SHX1_2, SHX2_2)
end
SHX18_1(SHX19_1, SHX20_1)
