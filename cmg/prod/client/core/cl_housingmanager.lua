-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1
SHX0_1 = false
SHX1_1 = nil
SHX2_1 = RegisterNetEvent
SHX3_1 = "86e1c60d27"
function SHX4_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  if nil ~= SHX0_2 then
    SHX3_2 = pairs
    SHX4_2 = SHX0_2
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = RemoveIpl
      SHX10_2 = SHX8_2
      SHX9_2(SHX10_2)
    end
  end
  if nil ~= SHX1_2 then
    SHX3_2 = pairs
    SHX4_2 = SHX1_2
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = RequestIpl
      SHX10_2 = SHX8_2
      SHX9_2(SHX10_2)
    end
  end
  if nil ~= SHX2_2 then
    SHX3_2 = pairs
    SHX4_2 = SHX2_2
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = SHX8_2.position
      SHX10_2 = GetInteriorAtCoordsWithType
      SHX11_2 = SHX9_2.x
      SHX12_2 = SHX9_2.y
      SHX13_2 = SHX9_2.z
      SHX14_2 = SHX8_2.type
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX11_2 = IsValidInterior
      SHX12_2 = SHX10_2
      SHX11_2 = SHX11_2(SHX12_2)
      if SHX11_2 then
        SHX11_2 = SHX8_2.request
        if SHX11_2 then
          SHX11_2 = pairs
          SHX12_2 = SHX8_2.request
          SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
          for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
            SHX17_2 = ActivateInteriorEntitySet
            SHX18_2 = SHX10_2
            SHX19_2 = SHX16_2
            SHX17_2(SHX18_2, SHX19_2)
          end
        end
        SHX11_2 = SHX8_2.remove
        if SHX11_2 then
          SHX11_2 = pairs
          SHX12_2 = SHX8_2.remove
          SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
          for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
            SHX17_2 = DeactivateInteriorEntitySet
            SHX18_2 = SHX10_2
            SHX19_2 = SHX16_2
            SHX17_2(SHX18_2, SHX19_2)
          end
        end
        SHX11_2 = RefreshInterior
        SHX12_2 = SHX10_2
        SHX11_2(SHX12_2)
      end
    end
  end
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RegisterNetEvent
SHX3_1 = "66dd8aed8f"
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX0_1 = SHX0_2
  SHX1_1 = SHX1_2
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = table
function SHX3_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = {}
  SHX3_2 = pairs
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if SHX8_2 == SHX1_2 then
    else
      SHX9_2 = #SHX2_2
      SHX9_2 = SHX9_2 + 1
      SHX2_2[SHX9_2] = SHX8_2
    end
  end
  SHX0_2 = SHX2_2
  return SHX2_2
end
SHX2_1.delete = SHX3_1
SHX2_1 = CMG
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  SHX1_2 = SHX1_1
  return SHX0_2, SHX1_2
end
SHX2_1.isInHouse = SHX3_1
