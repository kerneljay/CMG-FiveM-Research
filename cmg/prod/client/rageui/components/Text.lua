-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1
function SHX0_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = BeginTextCommandGetWidth
  SHX4_2 = "CELL_EMAIL_BCON"
  SHX3_2(SHX4_2)
  SHX3_2 = AddTextComponentSubstringPlayerName
  SHX4_2 = SHX0_2
  SHX3_2(SHX4_2)
  SHX3_2 = SetTextFont
  SHX4_2 = SHX1_2 or SHX4_2
  if not SHX1_2 then
    SHX4_2 = 0
  end
  SHX3_2(SHX4_2)
  SHX3_2 = SetTextScale
  SHX4_2 = 1.0
  SHX5_2 = SHX2_2 or SHX5_2
  if not SHX2_2 then
    SHX5_2 = 0
  end
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = EndTextCommandGetWidth
  SHX4_2 = true
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_2 = SHX3_2 * 1920
  return SHX3_2
end
MeasureStringWidth = SHX0_1
function SHX0_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = 0
  SHX3_2 = SHX0_2
  SHX2_2 = SHX0_2.gmatch
  SHX4_2 = "[%z\001-\127\194-\244][\128-\191]*"
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2)
  for SHX6_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX1_2 = SHX1_2 + 1
  end
  return SHX1_2
end
GetCharacterCount = SHX0_1
function SHX0_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = GetCharacterCount
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 < 100 then
    SHX2_2 = AddTextComponentSubstringPlayerName
    SHX3_2 = SHX0_2
    SHX2_2(SHX3_2)
  else
    SHX2_2 = SHX1_2 % 100
    if 0 == SHX2_2 then
      SHX2_2 = SHX1_2 / 100
      if SHX2_2 then
        goto SHX_LABEL_22
      end
    end
    SHX2_2 = SHX1_2 / 100
    SHX2_2 = SHX2_2 + 1
    -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
    ::SHX_LABEL_22::
    SHX3_2 = 0
    SHX4_2 = SHX2_2
    SHX5_2 = 1
    for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
      SHX7_2 = AddTextComponentSubstringPlayerName
      SHX9_2 = SHX0_2
      SHX8_2 = SHX0_2.sub
      SHX10_2 = SHX6_2 * 100
      SHX11_2 = SHX6_2 * 100
      SHX11_2 = SHX11_2 + 100
      SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    end
  end
end
AddText = SHX0_1
function SHX0_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX13_2 = tostring
  SHX14_2 = SHX0_2
  SHX13_2 = SHX13_2(SHX14_2)
  SHX14_2 = tonumber
  SHX15_2 = SHX1_2
  SHX14_2 = SHX14_2(SHX15_2)
  if not SHX14_2 then
    SHX14_2 = 0
  end
  SHX14_2 = SHX14_2 / 1920
  SHX15_2 = tonumber
  SHX16_2 = SHX2_2
  SHX15_2 = SHX15_2(SHX16_2)
  if not SHX15_2 then
    SHX15_2 = 0
  end
  SHX2_2 = SHX15_2 / 1080
  SHX1_2 = SHX14_2
  SHX0_2 = SHX13_2
  SHX13_2 = SetTextFont
  SHX14_2 = SHX3_2 or SHX14_2
  if not SHX3_2 then
    SHX14_2 = 0
  end
  SHX13_2(SHX14_2)
  SHX13_2 = SetTextScale
  SHX14_2 = 1.0
  SHX15_2 = SHX4_2 or SHX15_2
  if not SHX4_2 then
    SHX15_2 = 0
  end
  SHX13_2(SHX14_2, SHX15_2)
  SHX13_2 = SetTextColour
  SHX14_2 = tonumber
  SHX15_2 = SHX5_2
  SHX14_2 = SHX14_2(SHX15_2)
  if not SHX14_2 then
    SHX14_2 = 255
  end
  SHX15_2 = tonumber
  SHX16_2 = SHX6_2
  SHX15_2 = SHX15_2(SHX16_2)
  if not SHX15_2 then
    SHX15_2 = 255
  end
  SHX16_2 = tonumber
  SHX17_2 = SHX7_2
  SHX16_2 = SHX16_2(SHX17_2)
  if not SHX16_2 then
    SHX16_2 = 255
  end
  SHX17_2 = tonumber
  SHX18_2 = SHX8_2
  SHX17_2 = SHX17_2(SHX18_2)
  if not SHX17_2 then
    SHX17_2 = 255
  end
  SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  if SHX10_2 then
    SHX13_2 = SetTextDropShadow
    SHX13_2()
  end
  if SHX11_2 then
    SHX13_2 = SetTextOutline
    SHX13_2()
  end
  if nil ~= SHX9_2 then
    if 1 == SHX9_2 or "Center" == SHX9_2 or "Centre" == SHX9_2 then
      SHX13_2 = SetTextCentre
      SHX14_2 = true
      SHX13_2(SHX14_2)
    elseif 2 == SHX9_2 or "Right" == SHX9_2 then
      SHX13_2 = SetTextRightJustify
      SHX14_2 = true
      SHX13_2(SHX14_2)
    end
  end
  SHX13_2 = tonumber
  SHX14_2 = SHX12_2
  SHX13_2 = SHX13_2(SHX14_2)
  if SHX13_2 then
    SHX13_2 = tonumber
    SHX14_2 = SHX12_2
    SHX13_2 = SHX13_2(SHX14_2)
    if 0 ~= SHX13_2 then
      if 1 == SHX9_2 or "Center" == SHX9_2 or "Centre" == SHX9_2 then
        SHX13_2 = SetTextWrap
        SHX14_2 = SHX12_2 / 1920
        SHX14_2 = SHX14_2 / 2
        SHX14_2 = SHX1_2 - SHX14_2
        SHX15_2 = SHX12_2 / 1920
        SHX15_2 = SHX15_2 / 2
        SHX15_2 = SHX1_2 + SHX15_2
        SHX13_2(SHX14_2, SHX15_2)
      elseif 2 == SHX9_2 or "Right" == SHX9_2 then
        SHX13_2 = SetTextWrap
        SHX14_2 = 0
        SHX15_2 = SHX1_2
        SHX13_2(SHX14_2, SHX15_2)
      else
        SHX13_2 = SetTextWrap
        SHX14_2 = SHX1_2
        SHX15_2 = SHX12_2 / 1920
        SHX15_2 = SHX1_2 + SHX15_2
        SHX13_2(SHX14_2, SHX15_2)
      end
  end
  elseif 2 == SHX9_2 or "Right" == SHX9_2 then
    SHX13_2 = SetTextWrap
    SHX14_2 = 0
    SHX15_2 = SHX1_2
    SHX13_2(SHX14_2, SHX15_2)
  end
  SHX13_2 = BeginTextCommandLineCount
  SHX14_2 = "CELL_EMAIL_BCON"
  SHX13_2(SHX14_2)
  SHX13_2 = AddText
  SHX14_2 = SHX0_2
  SHX13_2(SHX14_2)
  SHX13_2 = EndTextCommandLineCount
  SHX14_2 = SHX1_2
  SHX15_2 = SHX2_2
  return SHX13_2(SHX14_2, SHX15_2)
end
GetLineCount = SHX0_1
function SHX0_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX13_2 = tostring
  SHX14_2 = SHX0_2
  SHX13_2 = SHX13_2(SHX14_2)
  SHX14_2 = tonumber
  SHX15_2 = SHX1_2
  SHX14_2 = SHX14_2(SHX15_2)
  if not SHX14_2 then
    SHX14_2 = 0
  end
  SHX14_2 = SHX14_2 / 1920
  SHX15_2 = tonumber
  SHX16_2 = SHX2_2
  SHX15_2 = SHX15_2(SHX16_2)
  if not SHX15_2 then
    SHX15_2 = 0
  end
  SHX2_2 = SHX15_2 / 1080
  SHX1_2 = SHX14_2
  SHX0_2 = SHX13_2
  SHX13_2 = SetTextFont
  SHX14_2 = SHX3_2 or SHX14_2
  if not SHX3_2 then
    SHX14_2 = 0
  end
  SHX13_2(SHX14_2)
  SHX13_2 = SetTextScale
  SHX14_2 = 1.0
  SHX15_2 = SHX4_2 or SHX15_2
  if not SHX4_2 then
    SHX15_2 = 0
  end
  SHX13_2(SHX14_2, SHX15_2)
  SHX13_2 = SetTextColour
  SHX14_2 = tonumber
  SHX15_2 = SHX5_2
  SHX14_2 = SHX14_2(SHX15_2)
  if not SHX14_2 then
    SHX14_2 = 255
  end
  SHX15_2 = tonumber
  SHX16_2 = SHX6_2
  SHX15_2 = SHX15_2(SHX16_2)
  if not SHX15_2 then
    SHX15_2 = 255
  end
  SHX16_2 = tonumber
  SHX17_2 = SHX7_2
  SHX16_2 = SHX16_2(SHX17_2)
  if not SHX16_2 then
    SHX16_2 = 255
  end
  SHX17_2 = tonumber
  SHX18_2 = SHX8_2
  SHX17_2 = SHX17_2(SHX18_2)
  if not SHX17_2 then
    SHX17_2 = 255
  end
  SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  if SHX10_2 then
    SHX13_2 = SetTextDropShadow
    SHX13_2()
  end
  if SHX11_2 then
    SHX13_2 = SetTextOutline
    SHX13_2()
  end
  if nil ~= SHX9_2 then
    if 1 == SHX9_2 or "Center" == SHX9_2 or "Centre" == SHX9_2 then
      SHX13_2 = SetTextCentre
      SHX14_2 = true
      SHX13_2(SHX14_2)
    elseif 2 == SHX9_2 or "Right" == SHX9_2 then
      SHX13_2 = SetTextRightJustify
      SHX14_2 = true
      SHX13_2(SHX14_2)
    end
  end
  SHX13_2 = tonumber
  SHX14_2 = SHX12_2
  SHX13_2 = SHX13_2(SHX14_2)
  if SHX13_2 then
    SHX13_2 = tonumber
    SHX14_2 = SHX12_2
    SHX13_2 = SHX13_2(SHX14_2)
    if 0 ~= SHX13_2 then
      if 1 == SHX9_2 or "Center" == SHX9_2 or "Centre" == SHX9_2 then
        SHX13_2 = SetTextWrap
        SHX14_2 = SHX12_2 / 1920
        SHX14_2 = SHX14_2 / 2
        SHX14_2 = SHX1_2 - SHX14_2
        SHX15_2 = SHX12_2 / 1920
        SHX15_2 = SHX15_2 / 2
        SHX15_2 = SHX1_2 + SHX15_2
        SHX13_2(SHX14_2, SHX15_2)
      elseif 2 == SHX9_2 or "Right" == SHX9_2 then
        SHX13_2 = SetTextWrap
        SHX14_2 = 0
        SHX15_2 = SHX1_2
        SHX13_2(SHX14_2, SHX15_2)
      else
        SHX13_2 = SetTextWrap
        SHX14_2 = SHX1_2
        SHX15_2 = SHX12_2 / 1920
        SHX15_2 = SHX1_2 + SHX15_2
        SHX13_2(SHX14_2, SHX15_2)
      end
  end
  elseif 2 == SHX9_2 or "Right" == SHX9_2 then
    SHX13_2 = SetTextWrap
    SHX14_2 = 0
    SHX15_2 = SHX1_2
    SHX13_2(SHX14_2, SHX15_2)
  end
  SHX13_2 = BeginTextCommandDisplayText
  SHX14_2 = "CELL_EMAIL_BCON"
  SHX13_2(SHX14_2)
  SHX13_2 = AddText
  SHX14_2 = SHX0_2
  SHX13_2(SHX14_2)
  SHX13_2 = EndTextCommandDisplayText
  SHX14_2 = SHX1_2
  SHX15_2 = SHX2_2
  SHX13_2(SHX14_2, SHX15_2)
end
RenderText = SHX0_1
