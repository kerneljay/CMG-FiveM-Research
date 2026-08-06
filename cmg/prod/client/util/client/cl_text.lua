-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1
SHX0_1 = CMG
function SHX1_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  function SHX5_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.DrawText3D
    SHX2_3 = SHX0_3.coords
    SHX3_3 = SHX0_3.text
    SHX4_3 = 0.2
    SHX1_3(SHX2_3, SHX3_3, SHX4_3)
  end
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.generateUUID
  SHX7_2 = "3dtext"
  SHX8_2 = 8
  SHX9_2 = "alphanumeric"
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.createArea
  SHX8_2 = "3dtext_"
  SHX9_2 = SHX6_2
  SHX8_2 = SHX8_2 .. SHX9_2
  SHX9_2 = vector3
  SHX10_2 = SHX1_2
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX10_2 = SHX4_2
  SHX11_2 = 6.0
  function SHX12_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
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
  SHX15_2 = {}
  SHX16_2 = vector3
  SHX17_2 = SHX1_2
  SHX18_2 = SHX2_2
  SHX19_2 = SHX3_2
  SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2)
  SHX15_2.coords = SHX16_2
  SHX15_2.text = SHX0_2
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
end
SHX0_1.add3DTextForCoord = SHX1_1
SHX0_1 = CMG
function SHX1_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX2_2 = AddTextEntry
  SHX3_2 = "instructionalText"
  SHX4_2 = SHX0_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetFloatingHelpTextWorldPosition
  SHX3_2 = 1
  SHX4_2 = SHX1_2.x
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX1_2.z
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SetFloatingHelpTextStyle
  SHX3_2 = 1
  SHX4_2 = 1
  SHX5_2 = 2
  SHX6_2 = -1
  SHX7_2 = 3
  SHX8_2 = 0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX2_2 = BeginTextCommandDisplayHelp
  SHX3_2 = "instructionalText"
  SHX2_2(SHX3_2)
  SHX2_2 = AddTextComponentSubstringPlayerName
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  SHX2_2 = EndTextCommandDisplayHelp
  SHX3_2 = 2
  SHX4_2 = false
  SHX5_2 = false
  SHX6_2 = -1
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX0_1.drawFloatingHelpText = SHX1_1
SHX0_1 = CMG
function SHX1_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX6_2 = GetScreenCoordFromWorldCoord
  SHX7_2 = SHX0_2.x
  SHX8_2 = SHX0_2.y
  SHX9_2 = SHX0_2.z
  SHX9_2 = SHX9_2 + 0.25
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX6_2, SHX7_2, SHX8_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  if not SHX6_2 then
    return
  end
  SHX9_2 = SetTextScale
  SHX10_2 = SHX2_2
  SHX11_2 = SHX2_2
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = SetTextFont
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.getFontId
  SHX11_2 = "Akrobat-ExtraBold"
  SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX10_2(SHX11_2)
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  if SHX5_2 then
    SHX9_2 = SetTextColour
    SHX10_2 = SHX5_2[1]
    SHX11_2 = SHX5_2[2]
    SHX12_2 = SHX5_2[3]
    SHX13_2 = SHX5_2[4]
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  else
    SHX9_2 = SetTextColour
    SHX10_2 = 255
    SHX11_2 = 255
    SHX12_2 = 255
    SHX13_2 = 255
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  end
  SHX9_2 = SetTextCentre
  SHX10_2 = true
  SHX9_2(SHX10_2)
  SHX9_2 = SetTextDropshadow
  SHX10_2 = 0
  SHX11_2 = 0
  SHX12_2 = 0
  SHX13_2 = 0
  SHX14_2 = 55
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX9_2 = SetTextDropShadow
  SHX9_2()
  SHX9_2 = BeginTextCommandDisplayText
  SHX10_2 = "STRING"
  SHX9_2(SHX10_2)
  SHX9_2 = _ENV
  SHX10_2 = "AddTextComponentSubstringTextLabelHashKey"
  SHX9_2 = SHX9_2[SHX10_2]
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.allocateTextEntry
  SHX11_2 = SHX1_2
  SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX10_2(SHX11_2)
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX9_2 = EndTextCommandDisplayText
  SHX10_2 = SHX7_2
  SHX11_2 = SHX8_2
  SHX9_2(SHX10_2, SHX11_2)
  if SHX4_2 then
    SHX9_2 = stringsplit
    SHX10_2 = SHX1_2
    SHX11_2 = "\n"
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX10_2 = 0.0
    SHX11_2 = pairs
    SHX12_2 = SHX9_2
    SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
    for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
      SHX17_2 = BeginTextCommandGetWidth
      SHX18_2 = "STRING"
      SHX17_2(SHX18_2)
      SHX17_2 = AddTextComponentSubstringPlayerName
      SHX18_2 = SHX16_2
      SHX17_2(SHX18_2)
      SHX17_2 = EndTextCommandGetWidth
      SHX18_2 = true
      SHX17_2 = SHX17_2(SHX18_2)
      SHX18_2 = math
      SHX18_2 = SHX18_2.max
      SHX19_2 = SHX10_2
      SHX20_2 = SHX17_2
      SHX18_2 = SHX18_2(SHX19_2, SHX20_2)
      SHX10_2 = SHX18_2
    end
    SHX11_2 = CMG
    SHX11_2 = SHX11_2.getTextHeight
    SHX12_2 = SHX2_2
    SHX13_2 = #SHX9_2
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
    SHX12_2 = DrawRect
    SHX13_2 = SHX7_2
    SHX14_2 = SHX11_2 / 2.15
    SHX14_2 = SHX8_2 + SHX14_2
    SHX15_2 = SHX10_2 * SHX2_2
    SHX16_2 = SHX11_2
    SHX17_2 = 41
    SHX18_2 = 41
    SHX19_2 = 41
    SHX20_2 = 125
    SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  end
end
SHX0_1.DrawText3D = SHX1_1
SHX0_1 = CMG
function SHX1_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = 0.08 * SHX0_2
  SHX2_2 = SHX2_2 * SHX1_2
  return SHX2_2
end
SHX0_1.getTextHeight = SHX1_1
SHX0_1 = CMG
function SHX1_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX8_2 = SetTextScale
  SHX9_2 = SHX3_2
  SHX10_2 = SHX3_2
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = SetTextFont
  SHX9_2 = SHX4_2 or SHX9_2
  if not SHX4_2 then
    SHX9_2 = 0
  end
  SHX8_2(SHX9_2)
  if SHX5_2 then
    SHX8_2 = SetTextJustification
    SHX9_2 = SHX5_2
    SHX8_2(SHX9_2)
  end
  if SHX6_2 then
    SHX8_2 = SetTextColour
    SHX9_2 = SHX6_2[1]
    SHX10_2 = SHX6_2[2]
    SHX11_2 = SHX6_2[3]
    SHX12_2 = SHX6_2[4]
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  else
    SHX8_2 = SetTextColour
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 255
    SHX12_2 = 255
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  end
  if SHX7_2 then
    SHX8_2 = SetTextDropshadow
    SHX9_2 = 0
    SHX10_2 = 0
    SHX11_2 = 0
    SHX12_2 = 0
    SHX13_2 = 55
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX8_2 = SetTextDropShadow
    SHX8_2()
    SHX8_2 = SetTextOutline
    SHX8_2()
  end
  SHX8_2 = BeginTextCommandDisplayText
  SHX9_2 = "STRING"
  SHX8_2(SHX9_2)
  SHX8_2 = AddTextComponentSubstringPlayerName
  SHX9_2 = SHX2_2
  SHX8_2(SHX9_2)
  SHX8_2 = EndTextCommandDisplayText
  SHX9_2 = SHX0_2
  SHX10_2 = SHX1_2
  SHX8_2(SHX9_2, SHX10_2)
end
SHX0_1.DrawText = SHX1_1
function SHX0_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX12_2 = SetTextFont
  SHX13_2 = SHX10_2
  SHX12_2(SHX13_2)
  SHX12_2 = SetTextScale
  SHX13_2 = SHX4_2
  SHX14_2 = SHX4_2
  SHX12_2(SHX13_2, SHX14_2)
  SHX12_2 = SetTextJustification
  SHX13_2 = SHX11_2
  SHX12_2(SHX13_2)
  SHX12_2 = SetTextColour
  SHX13_2 = SHX6_2
  SHX14_2 = SHX7_2
  SHX15_2 = SHX8_2
  SHX16_2 = SHX9_2
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX12_2 = SetTextDropshadow
  SHX13_2 = 0
  SHX14_2 = 0
  SHX15_2 = 0
  SHX16_2 = 0
  SHX17_2 = 255
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX12_2 = SetTextDropShadow
  SHX12_2()
  SHX12_2 = SetTextOutline
  SHX12_2()
  SHX12_2 = BeginTextCommandDisplayText
  SHX13_2 = "STRING"
  SHX12_2(SHX13_2)
  SHX12_2 = AddTextComponentSubstringPlayerName
  SHX13_2 = SHX5_2
  SHX12_2(SHX13_2)
  SHX12_2 = EndTextCommandDisplayText
  SHX13_2 = SHX0_2 - 0.1
  SHX13_2 = SHX13_2 + SHX2_2
  SHX14_2 = SHX1_2 - 0.02
  SHX14_2 = SHX14_2 + SHX3_2
  SHX12_2(SHX13_2, SHX14_2)
end
DrawAdvancedText = SHX0_1
function SHX0_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX12_2 = SetTextFont
  SHX13_2 = SHX10_2
  SHX12_2(SHX13_2)
  SHX12_2 = SetTextScale
  SHX13_2 = SHX4_2
  SHX14_2 = SHX4_2
  SHX12_2(SHX13_2, SHX14_2)
  SHX12_2 = SetTextJustification
  SHX13_2 = SHX11_2
  SHX12_2(SHX13_2)
  SHX12_2 = SetTextColour
  SHX13_2 = SHX6_2
  SHX14_2 = SHX7_2
  SHX15_2 = SHX8_2
  SHX16_2 = SHX9_2
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX12_2 = SetTextDropShadow
  SHX12_2()
  SHX12_2 = BeginTextCommandDisplayText
  SHX13_2 = "STRING"
  SHX12_2(SHX13_2)
  SHX12_2 = AddTextComponentSubstringPlayerName
  SHX13_2 = SHX5_2
  SHX12_2(SHX13_2)
  SHX12_2 = EndTextCommandDisplayText
  SHX13_2 = SHX0_2 - 0.1
  SHX13_2 = SHX13_2 + SHX2_2
  SHX14_2 = SHX1_2 - 0.02
  SHX14_2 = SHX14_2 + SHX3_2
  SHX12_2(SHX13_2, SHX14_2)
end
DrawAdvancedTextNoOutline = SHX0_1
function SHX0_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX6_2 = SetTextFont
  SHX7_2 = 0
  SHX6_2(SHX7_2)
  SHX6_2 = SetTextScale
  SHX7_2 = SHX3_2
  SHX8_2 = SHX3_2
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetTextColour
  SHX7_2 = 254
  SHX8_2 = 254
  SHX9_2 = 254
  SHX10_2 = 255
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  if SHX4_2 then
    SHX6_2 = SetTextWrap
    SHX7_2 = SHX1_2 - SHX5_2
    SHX8_2 = SHX1_2
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = SetTextRightJustify
    SHX7_2 = true
    SHX6_2(SHX7_2)
  end
  SHX6_2 = BeginTextCommandDisplayText
  SHX7_2 = "STRING"
  SHX6_2(SHX7_2)
  SHX6_2 = AddTextComponentSubstringPlayerName
  SHX7_2 = SHX0_2
  SHX6_2(SHX7_2)
  SHX6_2 = EndTextCommandDisplayText
  SHX7_2 = SHX1_2
  SHX8_2 = SHX2_2
  SHX6_2(SHX7_2, SHX8_2)
end
DrawGTAText = SHX0_1
SHX0_1 = RegisterNetEvent
SHX1_1 = "408b84e9ad"
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.notify
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = 0
SHX1_1 = {}
SHX2_1 = 100
SHX3_1 = 1
SHX4_1 = SHX2_1
SHX5_1 = 1
for SHX6_1 = SHX3_1, SHX4_1, SHX5_1 do
  SHX7_1 = table
  SHX7_1 = SHX7_1.insert
  SHX8_1 = SHX1_1
  SHX9_1 = {}
  SHX10_1 = GetHashKey
  SHX11_1 = string
  SHX11_1 = SHX11_1.format
  SHX12_1 = "BUFFER_%s"
  SHX13_1 = SHX6_1
  SHX11_1, SHX12_1, SHX13_1 = SHX11_1(SHX12_1, SHX13_1)
  SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
  SHX11_1 = ""
  SHX9_1[1] = SHX10_1
  SHX9_1[2] = SHX11_1
  SHX7_1(SHX8_1, SHX9_1)
end
SHX3_1 = CMG
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = assert
  SHX2_2 = SHX0_1
  SHX3_2 = SHX2_1
  SHX2_2 = SHX2_2 < SHX3_2
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_1
  SHX1_2 = SHX1_2 + 1
  SHX0_1 = SHX1_2
  SHX2_2 = SHX0_1
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = SHX1_2[2]
  if SHX2_2 ~= SHX0_2 then
    SHX2_2 = AddTextEntryByHash
    SHX3_2 = SHX1_2[1]
    SHX4_2 = SHX0_2
    SHX2_2(SHX3_2, SHX4_2)
    SHX1_2[2] = SHX0_2
  end
  SHX2_2 = SHX1_2[1]
  return SHX2_2
end
SHX3_1.allocateTextEntry = SHX4_1
SHX3_1 = Citizen
SHX3_1 = SHX3_1.CreateThread
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  while true do
    SHX0_2 = 0
    SHX0_1 = SHX0_2
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX3_1(SHX4_1)
