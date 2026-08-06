-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1
SHX0_1 = require
SHX1_1 = "glm"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = 0
SHX5_1 = 0
SHX6_1 = vector3
SHX7_1 = 0.0
SHX8_1 = 0.0
SHX9_1 = 0.0
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX7_1 = 0
SHX8_1 = {}
SHX9_1 = {}
SHX10_1 = {}
SHX11_1 = 0
SHX12_1 = {}
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX11_1
  SHX2_2 = SHX1_2 - SHX2_2
  SHX3_2 = 2500
  if SHX2_2 > SHX3_2 then
    SHX2_2 = print
    SHX3_2 = "[CMG ELS] "
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2 .. SHX4_2
    SHX2_2(SHX3_2)
    SHX11_1 = SHX1_2
  end
end
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = false
  SHX2_2 = SHX0_2.accurateLights
  if SHX2_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX0_2.config
    SHX3_2 = SHX3_2.extras
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX7_2 = SetVehicleExtra
      SHX8_2 = SHX0_2.entity
      SHX9_2 = SHX6_2
      SHX10_2 = true
      SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    end
  end
  SHX2_2 = pairs
  SHX3_2 = SHX0_2.pattern
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.enabled
    if SHX8_2 then
      SHX1_2 = true
      SHX8_2 = SHX7_2.stages
      SHX9_2 = SHX7_2.current
      SHX8_2 = SHX8_2[SHX9_2]
      SHX9_2 = SHX0_2.accurateLights
      if SHX9_2 then
        SHX9_2 = 1
        SHX10_2 = SHX8_2.Extras
        SHX10_2 = #SHX10_2
        SHX11_2 = 1
        for SHX12_2 = SHX9_2, SHX10_2, SHX11_2 do
          SHX13_2 = SetVehicleExtra
          SHX14_2 = SHX0_2.entity
          SHX15_2 = SHX8_2.Extras
          SHX15_2 = SHX15_2[SHX12_2]
          SHX16_2 = false
          SHX13_2(SHX14_2, SHX15_2, SHX16_2)
        end
      end
      SHX9_2 = SHX4_1
      SHX10_2 = SHX7_2.updated
      SHX9_2 = SHX9_2 - SHX10_2
      SHX10_2 = SHX8_2.Milliseconds
      if SHX9_2 > SHX10_2 then
        SHX9_2 = SHX7_2.current
        SHX9_2 = SHX9_2 + 1
        SHX7_2.current = SHX9_2
        SHX9_2 = SHX7_2.current
        SHX10_2 = SHX7_2.stages
        SHX10_2 = #SHX10_2
        if SHX9_2 > SHX10_2 then
          SHX7_2.current = 1
        end
        SHX9_2 = SHX7_2.stages
        SHX10_2 = SHX7_2.current
        SHX9_2 = SHX9_2[SHX10_2]
        SHX10_2 = SHX1_1.MoveToPattern
        SHX11_2 = SHX0_2.entity
        SHX12_2 = SHX8_2
        SHX13_2 = SHX9_2
        SHX10_2(SHX11_2, SHX12_2, SHX13_2)
        SHX8_2 = SHX9_2
        SHX10_2 = SHX4_1
        SHX7_2.updated = SHX10_2
      end
      SHX9_2 = SHX0_2.config
      SHX9_2 = SHX9_2.version
      if 1 == SHX9_2 then
        SHX9_2 = SHX1_1.DrawGlobalLighting
        SHX10_2 = SHX0_2
        SHX11_2 = SHX8_2
        SHX9_2(SHX10_2, SHX11_2)
      else
        SHX9_2 = SHX1_1.DrawDirectionalLighting
        SHX10_2 = SHX0_2
        SHX11_2 = SHX8_2
        SHX9_2(SHX10_2, SHX11_2)
      end
    end
  end
  if SHX1_2 then
    SHX2_2 = SetVehicleEngineOn
    SHX3_2 = SHX0_2.entity
    SHX4_2 = true
    SHX5_2 = true
    SHX6_2 = false
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  end
end
SHX1_1.CheckPatterns = SHX14_1
function SHX14_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX3_2 = 1
  SHX4_2 = SHX1_2.Extras
  SHX4_2 = #SHX4_2
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = SetVehicleExtra
    SHX8_2 = SHX0_2
    SHX9_2 = SHX1_2.Extras
    SHX9_2 = SHX9_2[SHX6_2]
    SHX10_2 = true
    SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  end
  SHX3_2 = 1
  SHX4_2 = SHX2_2.Extras
  SHX4_2 = #SHX4_2
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = SetVehicleExtra
    SHX8_2 = SHX0_2
    SHX9_2 = SHX2_2.Extras
    SHX9_2 = SHX9_2[SHX6_2]
    SHX10_2 = false
    SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  end
end
SHX1_1.MoveToPattern = SHX14_1
function SHX14_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX2_2 = ipairs
  SHX3_2 = SHX1_2.Extras
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX0_2.config
    SHX8_2 = SHX8_2.extras
    SHX8_2 = SHX8_2[SHX7_2]
    if not SHX8_2 then
      SHX9_2 = SHX13_1
      SHX10_2 = "Entity "
      SHX11_2 = tostring
      SHX12_2 = SHX0_2.entity
      SHX11_2 = SHX11_2(SHX12_2)
      SHX12_2 = " with model "
      SHX13_2 = GetEntityModel
      SHX14_2 = SHX0_2.entity
      SHX13_2 = SHX13_2(SHX14_2)
      SHX14_2 = " has a NULL config for extra "
      SHX15_2 = tostring
      SHX16_2 = SHX7_2
      SHX15_2 = SHX15_2(SHX16_2)
      SHX10_2 = SHX10_2 .. SHX11_2 .. SHX12_2 .. SHX13_2 .. SHX14_2 .. SHX15_2
      SHX9_2(SHX10_2)
      break
    end
    SHX9_2 = GetOffsetFromEntityInWorldCoords
    SHX10_2 = SHX0_2.entity
    SHX11_2 = SHX8_2.offset
    SHX11_2 = SHX11_2.x
    SHX12_2 = SHX8_2.offset
    SHX12_2 = SHX12_2.y
    SHX13_2 = SHX8_2.offset
    SHX13_2 = SHX13_2.z
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX10_2 = SHX8_2.colour
    if "red" == SHX10_2 then
      SHX10_2 = DrawLightWithRangeAndShadow
      SHX11_2 = SHX9_2.x
      SHX12_2 = SHX9_2.y
      SHX13_2 = SHX9_2.z
      SHX14_2 = 255
      SHX15_2 = 0
      SHX16_2 = 0
      SHX17_2 = 50.0
      SHX18_2 = 0.26
      SHX19_2 = 1.0
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    else
      SHX10_2 = SHX8_2.colour
      if "blue" == SHX10_2 then
        SHX10_2 = DrawLightWithRangeAndShadow
        SHX11_2 = SHX9_2.x
        SHX12_2 = SHX9_2.y
        SHX13_2 = SHX9_2.z
        SHX14_2 = 0
        SHX15_2 = 15
        SHX16_2 = 255
        SHX17_2 = 50.0
        SHX18_2 = 0.26
        SHX19_2 = 1.0
        SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      else
        SHX10_2 = SHX8_2.colour
        if "green" == SHX10_2 then
          SHX10_2 = DrawLightWithRangeAndShadow
          SHX11_2 = SHX9_2.x
          SHX12_2 = SHX9_2.y
          SHX13_2 = SHX9_2.z
          SHX14_2 = 0
          SHX15_2 = 255
          SHX16_2 = 0
          SHX17_2 = 50.0
          SHX18_2 = 0.26
          SHX19_2 = 1.0
          SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
        else
          SHX10_2 = SHX8_2.colour
          if "amber" == SHX10_2 then
            SHX10_2 = DrawLightWithRangeAndShadow
            SHX11_2 = SHX9_2.x
            SHX12_2 = SHX9_2.y
            SHX13_2 = SHX9_2.z
            SHX14_2 = 255
            SHX15_2 = 194
            SHX16_2 = 0
            SHX17_2 = 50.0
            SHX18_2 = 0.26
            SHX19_2 = 1.0
            SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
          else
            SHX10_2 = SHX8_2.colour
            if "white" == SHX10_2 then
              SHX10_2 = DrawLightWithRangeAndShadow
              SHX11_2 = SHX9_2.x
              SHX12_2 = SHX9_2.y
              SHX13_2 = SHX9_2.z
              SHX14_2 = 255
              SHX15_2 = 255
              SHX16_2 = 255
              SHX17_2 = 50.0
              SHX18_2 = 0.26
              SHX19_2 = 1.0
              SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
            end
          end
        end
      end
    end
  end
end
SHX1_1.DrawGlobalLighting = SHX14_1
function SHX14_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2
  SHX2_2 = GetEntityMatrix
  SHX3_2 = SHX0_2.entity
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  SHX6_2 = mat3x3
  SHX7_2 = SHX2_2
  SHX8_2 = SHX3_2
  SHX9_2 = SHX4_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX7_2 = ipairs
  SHX8_2 = SHX1_2.Extras
  SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
  for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
    SHX13_2 = SHX0_2.config
    SHX13_2 = SHX13_2.extras
    SHX13_2 = SHX13_2[SHX12_2]
    SHX14_2 = ipairs
    SHX15_2 = SHX13_2
    SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX14_2(SHX15_2)
    for SHX18_2, SHX19_2 in SHX14_2, SHX15_2, SHX16_2, SHX17_2 do
      SHX20_2 = SHX19_2.offset
      SHX20_2 = SHX20_2.x
      SHX20_2 = SHX3_2 * SHX20_2
      SHX20_2 = SHX5_2 + SHX20_2
      SHX21_2 = SHX19_2.offset
      SHX21_2 = SHX21_2.y
      SHX21_2 = SHX2_2 * SHX21_2
      SHX20_2 = SHX20_2 + SHX21_2
      SHX21_2 = SHX19_2.offset
      SHX21_2 = SHX21_2.z
      SHX21_2 = SHX4_2 * SHX21_2
      SHX20_2 = SHX20_2 + SHX21_2
      SHX21_2 = SHX0_1.rotate
      SHX22_2 = SHX6_2
      SHX23_2 = SHX19_2.direction
      SHX24_2 = SHX4_2
      SHX21_2 = SHX21_2(SHX22_2, SHX23_2, SHX24_2)
      SHX21_2 = SHX21_2[1]
      SHX22_2 = SHX19_2.colour
      if "red" == SHX22_2 then
        SHX22_2 = DrawSpotLight
        SHX23_2 = SHX20_2.x
        SHX24_2 = SHX20_2.y
        SHX25_2 = SHX20_2.z
        SHX26_2 = SHX21_2.x
        SHX27_2 = SHX21_2.y
        SHX28_2 = SHX21_2.z
        SHX29_2 = 255
        SHX30_2 = 0
        SHX31_2 = 0
        SHX32_2 = 60.0
        SHX33_2 = 1.0
        SHX34_2 = 0.0
        SHX35_2 = 45.0
        SHX36_2 = 100.0
        SHX22_2(SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2)
      else
        SHX22_2 = SHX19_2.colour
        if "blue" == SHX22_2 then
          SHX22_2 = DrawSpotLight
          SHX23_2 = SHX20_2.x
          SHX24_2 = SHX20_2.y
          SHX25_2 = SHX20_2.z
          SHX26_2 = SHX21_2.x
          SHX27_2 = SHX21_2.y
          SHX28_2 = SHX21_2.z
          SHX29_2 = 0
          SHX30_2 = 15
          SHX31_2 = 255
          SHX32_2 = 60.0
          SHX33_2 = 1.0
          SHX34_2 = 0.0
          SHX35_2 = 45.0
          SHX36_2 = 100.0
          SHX22_2(SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2)
        else
          SHX22_2 = SHX19_2.colour
          if "green" == SHX22_2 then
            SHX22_2 = DrawSpotLight
            SHX23_2 = SHX20_2.x
            SHX24_2 = SHX20_2.y
            SHX25_2 = SHX20_2.z
            SHX26_2 = SHX21_2.x
            SHX27_2 = SHX21_2.y
            SHX28_2 = SHX21_2.z
            SHX29_2 = 0
            SHX30_2 = 255
            SHX31_2 = 0
            SHX32_2 = 60.0
            SHX33_2 = 1.0
            SHX34_2 = 0.0
            SHX35_2 = 45.0
            SHX36_2 = 100.0
            SHX22_2(SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2)
          else
            SHX22_2 = SHX19_2.colour
            if "amber" == SHX22_2 then
              SHX22_2 = DrawSpotLight
              SHX23_2 = SHX20_2.x
              SHX24_2 = SHX20_2.y
              SHX25_2 = SHX20_2.z
              SHX26_2 = SHX21_2.x
              SHX27_2 = SHX21_2.y
              SHX28_2 = SHX21_2.z
              SHX29_2 = 255
              SHX30_2 = 194
              SHX31_2 = 0
              SHX32_2 = 60.0
              SHX33_2 = 1.0
              SHX34_2 = 0.0
              SHX35_2 = 45.0
              SHX36_2 = 100.0
              SHX22_2(SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2)
            else
              SHX22_2 = SHX19_2.colour
              if "white" == SHX22_2 then
                SHX22_2 = DrawSpotLight
                SHX23_2 = SHX20_2.x
                SHX24_2 = SHX20_2.y
                SHX25_2 = SHX20_2.z
                SHX26_2 = SHX21_2.x
                SHX27_2 = SHX21_2.y
                SHX28_2 = SHX21_2.z
                SHX29_2 = 255
                SHX30_2 = 255
                SHX31_2 = 255
                SHX32_2 = 60.0
                SHX33_2 = 1.0
                SHX34_2 = 0.0
                SHX35_2 = 45.0
                SHX36_2 = 100.0
                SHX22_2(SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2)
              end
            end
          end
        end
      end
    end
  end
end
SHX1_1.DrawDirectionalLighting = SHX14_1
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2.stage
  if 0 == SHX1_2 then
    SHX1_2 = SHX0_2.pattern
    SHX2_2 = 303108068
    SHX1_2 = SHX1_2[SHX2_2]
    SHX1_2.enabled = false
    SHX1_2 = SHX1_1.OnPatternDisable
    SHX2_2 = SHX0_2
    SHX3_2 = 303108068
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX0_2.pattern
    SHX2_2 = -910931556
    SHX1_2 = SHX1_2[SHX2_2]
    SHX1_2.enabled = false
    SHX1_2 = SHX1_1.OnPatternDisable
    SHX2_2 = SHX0_2
    SHX3_2 = -910931556
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX0_2.pattern
    SHX2_2 = -383838148
    SHX1_2 = SHX1_2[SHX2_2]
    SHX1_2.enabled = false
    SHX1_2 = SHX1_1.OnPatternDisable
    SHX2_2 = SHX0_2
    SHX3_2 = -383838148
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX0_2.siren
    SHX1_2.tone = 0
    SHX1_2 = SHX1_1.OnSirenChange
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
    SHX1_2 = SetVehicleSiren
    SHX2_2 = SHX0_2.entity
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
  else
    SHX1_2 = SHX0_2.stage
    if 1 == SHX1_2 then
      SHX1_2 = SHX0_2.pattern
      SHX2_2 = 303108068
      SHX1_2 = SHX1_2[SHX2_2]
      SHX1_2.enabled = true
      SHX1_2 = SetVehicleSiren
      SHX2_2 = SHX0_2.entity
      SHX3_2 = true
      SHX1_2(SHX2_2, SHX3_2)
    end
  end
end
SHX1_1.OnStageChange = SHX14_1
function SHX14_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX2_2 = SHX0_2.pattern
  SHX2_2 = SHX2_2[SHX1_2]
  SHX3_2 = SHX2_2.enabled
  if not SHX3_2 then
    SHX3_2 = {}
    SHX4_2 = pairs
    SHX5_2 = SHX2_2.stages
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
      SHX10_2 = 1
      SHX11_2 = SHX9_2.Extras
      SHX11_2 = #SHX11_2
      SHX12_2 = 1
      for SHX13_2 = SHX10_2, SHX11_2, SHX12_2 do
        SHX14_2 = SHX9_2.Extras
        SHX14_2 = SHX14_2[SHX13_2]
        SHX15_2 = SHX3_2[SHX14_2]
        if not SHX15_2 then
          SHX15_2 = SetVehicleExtra
          SHX16_2 = SHX0_2.entity
          SHX17_2 = SHX14_2
          SHX18_2 = true
          SHX15_2(SHX16_2, SHX17_2, SHX18_2)
          SHX3_2[SHX14_2] = true
        end
      end
    end
  end
end
SHX1_1.OnPatternDisable = SHX14_1
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = SHX0_2.entity
  if not SHX1_2 then
    return
  end
  SHX1_2 = SHX0_2.bullhorn
  SHX1_2 = SHX1_2.enabled
  if SHX1_2 then
    SHX1_2 = SHX0_2.bullhorn
    SHX1_2 = SHX1_2.handle
    if nil == SHX1_2 then
      SHX1_2 = SHX0_2.config
      SHX1_2 = SHX1_2.sounds
      SHX1_2 = SHX1_2.mainHorn
      SHX1_2 = SHX1_2.audioString
      SHX2_2 = SHX0_2.bullhorn
      SHX3_2 = GetSoundId
      SHX3_2 = SHX3_2()
      SHX2_2.handle = SHX3_2
      SHX2_2 = IsCustomSound
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        SHX2_2 = PlaySoundFromEntity
        SHX3_2 = SHX0_2.bullhorn
        SHX3_2 = SHX3_2.handle
        SHX4_2 = SHX1_2
        SHX5_2 = SHX0_2.entity
        SHX6_2 = "DLC_XSIRENS_SOUNDSET"
        SHX7_2 = false
        SHX8_2 = 0
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      else
        SHX2_2 = PlaySoundFromEntity
        SHX3_2 = SHX0_2.bullhorn
        SHX3_2 = SHX3_2.handle
        SHX4_2 = SHX1_2
        SHX5_2 = SHX0_2.entity
        SHX6_2 = nil
        SHX7_2 = false
        SHX8_2 = 0
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
    end
  else
    SHX1_2 = SHX0_2.bullhorn
    SHX1_2 = SHX1_2.handle
    if nil ~= SHX1_2 then
      SHX1_2 = StopSound
      SHX2_2 = SHX0_2.bullhorn
      SHX2_2 = SHX2_2.handle
      SHX1_2(SHX2_2)
      SHX1_2 = ReleaseSoundId
      SHX2_2 = SHX0_2.bullhorn
      SHX2_2 = SHX2_2.handle
      SHX1_2(SHX2_2)
      SHX1_2 = SHX0_2.bullhorn
      SHX1_2.handle = nil
    end
  end
end
SHX1_1.OnBullhornChange = SHX14_1
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = SHX0_2.entity
  if not SHX1_2 then
    return
  end
  SHX1_2 = SHX0_2.siren
  SHX1_2 = SHX1_2.tone
  if 0 ~= SHX1_2 then
    SHX1_2 = SHX0_2.siren
    SHX1_2 = SHX1_2.selected
    SHX2_2 = SHX0_2.siren
    SHX2_2 = SHX2_2.tone
    if SHX1_2 ~= SHX2_2 then
      SHX1_2 = SHX0_2.siren
      SHX1_2 = SHX1_2.handle
      if nil ~= SHX1_2 then
        SHX1_2 = StopSound
        SHX2_2 = SHX0_2.siren
        SHX2_2 = SHX2_2.handle
        SHX1_2(SHX2_2)
        SHX1_2 = ReleaseSoundId
        SHX2_2 = SHX0_2.siren
        SHX2_2 = SHX2_2.handle
        SHX1_2(SHX2_2)
      end
      SHX1_2 = GetSirenNameFromIndex
      SHX2_2 = SHX0_2
      SHX3_2 = SHX0_2.siren
      SHX3_2 = SHX3_2.tone
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      SHX2_2 = SHX0_2.siren
      SHX3_2 = GetSoundId
      SHX3_2 = SHX3_2()
      SHX2_2.handle = SHX3_2
      SHX2_2 = IsCustomSound
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        SHX2_2 = PlaySoundFromEntity
        SHX3_2 = SHX0_2.siren
        SHX3_2 = SHX3_2.handle
        SHX4_2 = SHX1_2
        SHX5_2 = SHX0_2.entity
        SHX6_2 = "DLC_XSIRENS_SOUNDSET"
        SHX7_2 = false
        SHX8_2 = 0
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      else
        SHX2_2 = PlaySoundFromEntity
        SHX3_2 = SHX0_2.siren
        SHX3_2 = SHX3_2.handle
        SHX4_2 = SHX1_2
        SHX5_2 = SHX0_2.entity
        SHX6_2 = nil
        SHX7_2 = false
        SHX8_2 = 0
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
    end
  else
    SHX1_2 = SHX0_2.siren
    SHX1_2 = SHX1_2.handle
    if nil ~= SHX1_2 then
      SHX1_2 = StopSound
      SHX2_2 = SHX0_2.siren
      SHX2_2 = SHX2_2.handle
      SHX1_2(SHX2_2)
      SHX1_2 = ReleaseSoundId
      SHX2_2 = SHX0_2.siren
      SHX2_2 = SHX2_2.handle
      SHX1_2(SHX2_2)
      SHX1_2 = SHX0_2.siren
      SHX1_2.handle = nil
    end
  end
  SHX1_2 = SHX0_2.siren
  SHX2_2 = SHX0_2.siren
  SHX2_2 = SHX2_2.tone
  SHX1_2.selected = SHX2_2
end
SHX1_1.OnSirenChange = SHX14_1
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = SHX0_2.pattern
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = pairs
    SHX9_2 = SHX7_2.stages
    SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
    for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
      SHX14_2 = pairs
      SHX15_2 = SHX13_2.Extras
      SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX14_2(SHX15_2)
      for SHX18_2, SHX19_2 in SHX14_2, SHX15_2, SHX16_2, SHX17_2 do
        SHX20_2 = SHX1_2[SHX19_2]
        if not SHX20_2 then
          SHX20_2 = SetVehicleExtra
          SHX21_2 = SHX0_2.entity
          SHX22_2 = SHX19_2
          SHX23_2 = true
          SHX20_2(SHX21_2, SHX22_2, SHX23_2)
          SHX1_2[SHX19_2] = true
        end
      end
    end
  end
end
SHX1_1.InitLights = SHX14_1
function SHX14_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  if 1 == SHX1_2 then
    SHX2_2 = SHX0_2.config
    SHX2_2 = SHX2_2.sounds
    SHX2_2 = SHX2_2.srnTone1
    SHX2_2 = SHX2_2.audioString
    return SHX2_2
  elseif 2 == SHX1_2 then
    SHX2_2 = SHX0_2.config
    SHX2_2 = SHX2_2.sounds
    SHX2_2 = SHX2_2.srnTone2
    SHX2_2 = SHX2_2.audioString
    return SHX2_2
  elseif 3 == SHX1_2 then
    SHX2_2 = SHX0_2.config
    SHX2_2 = SHX2_2.sounds
    SHX2_2 = SHX2_2.srnTone3
    SHX2_2 = SHX2_2.audioString
    return SHX2_2
  elseif 4 == SHX1_2 then
    SHX2_2 = SHX0_2.config
    SHX2_2 = SHX2_2.sounds
    SHX2_2 = SHX2_2.srnTone4
    SHX2_2 = SHX2_2.audioString
    return SHX2_2
  end
  SHX2_2 = nil
  return SHX2_2
end
GetSirenNameFromIndex = SHX14_1
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = string
  SHX1_2 = SHX1_2.match
  SHX2_2 = SHX0_2
  SHX3_2 = "siren_met"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if not SHX1_2 then
    SHX1_2 = IsAmbulanceSound
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
  end
  return SHX1_2
end
IsCustomSound = SHX14_1
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = string
  SHX1_2 = SHX1_2.match
  SHX2_2 = SHX0_2
  SHX3_2 = "siren_nhs"
  return SHX1_2(SHX2_2, SHX3_2)
end
IsAmbulanceSound = SHX14_1
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX4_1 = SHX0_2
  SHX0_2 = ProcessCurrentVehicle
  SHX0_2()
  SHX0_2 = CheckVehicleStates
  SHX0_2()
  SHX0_2 = ProcessVehicleLights
  SHX0_2()
end
SHX15_1 = Citizen
SHX15_1 = SHX15_1.CreateThread
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = PerformInitialisation
  SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createThreadOnTick
  SHX1_2 = SHX14_1
  SHX2_2 = "ELS"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX15_1(SHX16_1)
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX0_2 = GetCurrentResourceName
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadResourceFile
  SHX2_2 = SHX0_2
  SHX3_2 = "cfg/els/config.json"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = json
  SHX2_2 = SHX2_2.decode
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    return
  end
  SHX2_1 = SHX2_2
  SHX3_2 = {}
  SHX2_1.Pattern = SHX3_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadResourceFile
  SHX4_2 = SHX0_2
  SHX5_2 = "cfg/els/primary.json"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = SHX2_1.Pattern
  SHX5_2 = 303108068
  SHX6_2 = json
  SHX6_2 = SHX6_2.decode
  SHX7_2 = SHX3_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX4_2[SHX5_2] = SHX6_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadResourceFile
  SHX5_2 = SHX0_2
  SHX6_2 = "cfg/els/secondary.json"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = SHX2_1.Pattern
  SHX6_2 = -910931556
  SHX7_2 = json
  SHX7_2 = SHX7_2.decode
  SHX8_2 = SHX4_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX5_2[SHX6_2] = SHX7_2
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadResourceFile
  SHX6_2 = SHX0_2
  SHX7_2 = "cfg/els/warning.json"
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = SHX2_1.Pattern
  SHX7_2 = -383838148
  SHX8_2 = json
  SHX8_2 = SHX8_2.decode
  SHX9_2 = SHX5_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX6_2[SHX7_2] = SHX8_2
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.loadResourceFile
  SHX7_2 = SHX0_2
  SHX8_2 = "cfg/els/vcfs.json"
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = json
  SHX7_2 = SHX7_2.decode
  SHX8_2 = SHX6_2
  SHX7_2 = SHX7_2(SHX8_2)
  if not SHX7_2 then
    return
  end
  SHX8_2 = ipairs
  SHX9_2 = SHX7_2
  SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
  for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
    SHX14_2 = CMG
    SHX14_2 = SHX14_2.loadResourceFile
    SHX15_2 = SHX0_2
    SHX16_2 = "cfg/els/vcf/"
    SHX17_2 = SHX13_2
    SHX18_2 = ".xml"
    SHX16_2 = SHX16_2 .. SHX17_2 .. SHX18_2
    SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
    if SHX14_2 then
      SHX15_2 = GetHashKey
      SHX16_2 = SHX13_2
      SHX15_2 = SHX15_2(SHX16_2)
      SHX16_2 = IsModelInCdimage
      SHX17_2 = SHX15_2
      SHX16_2 = SHX16_2(SHX17_2)
      if SHX16_2 then
        SHX16_2 = pcall
        function SHX17_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
          SHX0_3 = GetVehicleFromXML
          SHX1_3 = SHX14_2
          SHX2_3 = SHX13_2
          SHX0_3, SHX1_3 = SHX0_3(SHX1_3, SHX2_3)
          if SHX0_3 then
            SHX3_3 = SHX15_2
            SHX2_3 = SHX3_1
            SHX2_3[SHX3_3] = SHX0_3
          else
            SHX2_3 = WriteLoadError
            SHX3_3 = SHX13_2
            SHX4_3 = SHX1_3
            SHX2_3(SHX3_3, SHX4_3)
          end
        end
        SHX16_2, SHX17_2 = SHX16_2(SHX17_2)
        if not SHX16_2 then
          SHX18_2 = WriteLoadError
          SHX19_2 = SHX13_2
          SHX20_2 = SHX17_2
          SHX18_2(SHX19_2, SHX20_2)
        end
      else
        SHX16_2 = CMG
        SHX16_2 = SHX16_2.getVehicleIdFromModel
        SHX17_2 = SHX15_2
        SHX16_2 = SHX16_2(SHX17_2)
        if not SHX16_2 then
          SHX16_2 = WriteLoadError
          SHX17_2 = SHX13_2
          SHX18_2 = "Vehicle model does not exist in the game or in garages config"
          SHX16_2(SHX17_2, SHX18_2)
        end
      end
    else
      SHX15_2 = WriteLoadError
      SHX16_2 = SHX13_2
      SHX17_2 = "File does not exist"
      SHX15_2(SHX16_2, SHX17_2)
    end
  end
  SHX8_2 = collectgarbage
  SHX9_2 = "collect"
  SHX8_2(SHX9_2)
  SHX8_2 = RequestScriptAudioBank
  SHX9_2 = "DLC_XSIRENS\\XSIRENS_ONE"
  SHX10_2 = false
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = DecorRegister
  SHX9_2 = "c102c26beb"
  SHX10_2 = 2
  SHX8_2(SHX9_2, SHX10_2)
end
PerformInitialisation = SHX15_1
function SHX15_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX12_1
  SHX2_2[SHX0_2] = SHX1_2
end
WriteLoadError = SHX15_1
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX5_1 = SHX0_2
  SHX0_2 = GetEntityCoords
  SHX1_2 = SHX5_1
  SHX2_2 = true
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX6_1 = SHX0_2
  SHX0_2 = GetVehiclePedIsIn
  SHX1_2 = SHX5_1
  SHX2_2 = false
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX7_1 = SHX0_2
  SHX0_2 = SHX7_1
  if 0 == SHX0_2 then
    return
  end
  SHX0_2 = NetworkGetEntityIsNetworked
  SHX1_2 = SHX7_1
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    return
  end
  SHX0_2 = GetPedInVehicleSeat
  SHX1_2 = SHX7_1
  SHX2_2 = -1
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_2 = SHX5_1
  SHX0_2 = SHX0_2 == SHX1_2
  SHX1_2 = ProcessCivilianVehicle
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX7_1
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX3_1
  if SHX2_2 then
    SHX2_2 = SHX3_1
    SHX2_2 = SHX2_2[SHX1_2]
    if SHX2_2 then
      goto SHX_LABEL_47
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_47:: outside nested blocks until all 'goto SHX_LABEL_47' can see it
  ::SHX_LABEL_47::
  if SHX0_2 then
    SHX2_2 = IsEntityInWater
    SHX3_2 = SHX7_1
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = IsThisModelABoat
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = DisableCurrentVehicle
        SHX2_2()
        return
    end
    else
      SHX2_2 = DecorGetBool
      SHX3_2 = SHX7_1
      SHX4_2 = "c102c26beb"
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if not SHX2_2 then
        SHX2_2 = GetSavedVehicleStateUsingEntity
        SHX3_2 = SHX7_1
        SHX2_2 = SHX2_2(SHX3_2)
        if SHX2_2 then
          SHX3_2 = SHX1_1.InitLights
          SHX4_2 = SHX2_2
          SHX3_2(SHX4_2)
          SHX3_2 = DecorSetBool
          SHX4_2 = SHX7_1
          SHX5_2 = "c102c26beb"
          SHX6_2 = true
          SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        end
      end
    end
  else
    SHX2_2 = GetPedInVehicleSeat
    SHX3_2 = SHX7_1
    SHX4_2 = 0
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX3_2 = SHX5_1
    if SHX2_2 ~= SHX3_2 then
      return
    end
  end
  SHX2_2 = DisableControlAction
  SHX3_2 = 0
  SHX4_2 = 81
  SHX5_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = DisableControlAction
  SHX3_2 = 0
  SHX4_2 = 82
  SHX5_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = DisableControlAction
  SHX3_2 = 0
  SHX4_2 = 83
  SHX5_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = DisableControlAction
  SHX3_2 = 0
  SHX4_2 = 84
  SHX5_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = DisableControlAction
  SHX3_2 = 0
  SHX4_2 = 85
  SHX5_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = SetVehRadioStation
  SHX3_2 = SHX7_1
  SHX4_2 = "OFF"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetVehicleRadioEnabled
  SHX3_2 = SHX7_1
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetVehicleHasMutedSirens
  SHX3_2 = SHX7_1
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = GetLastInputMethod
  SHX3_2 = 0
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Keyboard
    SHX4_2 = SHX4_2.StageChange
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Keyboard
    SHX4_2 = SHX4_2.Bullhorn
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Keyboard
    SHX4_2 = SHX4_2.Siren
    SHX4_2 = SHX4_2.ToneOne
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Keyboard
    SHX4_2 = SHX4_2.Siren
    SHX4_2 = SHX4_2.ToneTwo
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Keyboard
    SHX4_2 = SHX4_2.Siren
    SHX4_2 = SHX4_2.ToneThree
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Keyboard
    SHX4_2 = SHX4_2.Pattern
    SHX4_2 = SHX4_2.Primary
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Keyboard
    SHX4_2 = SHX4_2.Pattern
    SHX4_2 = SHX4_2.Secondary
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Keyboard
    SHX4_2 = SHX4_2.Pattern
    SHX4_2 = SHX4_2.Warning
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = IsDisabledControlJustPressed
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Keyboard
    SHX4_2 = SHX4_2.StageChange
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = OnKeyStageChange
      SHX2_2()
    end
    SHX2_2 = IsDisabledControlJustPressed
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Keyboard
    SHX4_2 = SHX4_2.Bullhorn
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 and SHX0_2 then
      SHX2_2 = OnKeyBullhorn
      SHX3_2 = true
      SHX2_2(SHX3_2)
    end
    SHX2_2 = IsDisabledControlJustReleased
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Keyboard
    SHX4_2 = SHX4_2.Bullhorn
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 and SHX0_2 then
      SHX2_2 = OnKeyBullhorn
      SHX3_2 = false
      SHX2_2(SHX3_2)
    end
    SHX2_2 = IsDisabledControlJustPressed
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Keyboard
    SHX4_2 = SHX4_2.Siren
    SHX4_2 = SHX4_2.ToneOne
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = OnKeySiren
      SHX3_2 = 1
      SHX4_2 = true
      SHX2_2(SHX3_2, SHX4_2)
    end
    SHX2_2 = IsDisabledControlJustReleased
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Keyboard
    SHX4_2 = SHX4_2.Siren
    SHX4_2 = SHX4_2.ToneOne
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = OnKeySiren
      SHX3_2 = 0
      SHX4_2 = false
      SHX2_2(SHX3_2, SHX4_2)
    end
    SHX2_2 = IsDisabledControlJustPressed
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Keyboard
    SHX4_2 = SHX4_2.Siren
    SHX4_2 = SHX4_2.ToneTwo
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = OnKeySiren
      SHX3_2 = 2
      SHX4_2 = true
      SHX2_2(SHX3_2, SHX4_2)
    end
    SHX2_2 = IsDisabledControlJustReleased
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Keyboard
    SHX4_2 = SHX4_2.Siren
    SHX4_2 = SHX4_2.ToneTwo
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = OnKeySiren
      SHX3_2 = 0
      SHX4_2 = false
      SHX2_2(SHX3_2, SHX4_2)
    end
    SHX2_2 = IsDisabledControlJustPressed
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Keyboard
    SHX4_2 = SHX4_2.Siren
    SHX4_2 = SHX4_2.ToneThree
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = OnKeySiren
      SHX3_2 = 3
      SHX4_2 = true
      SHX2_2(SHX3_2, SHX4_2)
    end
    SHX2_2 = IsDisabledControlJustReleased
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Keyboard
    SHX4_2 = SHX4_2.Siren
    SHX4_2 = SHX4_2.ToneThree
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = OnKeySiren
      SHX3_2 = 0
      SHX4_2 = false
      SHX2_2(SHX3_2, SHX4_2)
    end
    SHX2_2 = IsDisabledControlJustPressed
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Keyboard
    SHX4_2 = SHX4_2.Siren
    SHX4_2 = SHX4_2.ToneFour
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = OnKeySiren
      SHX3_2 = 4
      SHX4_2 = true
      SHX2_2(SHX3_2, SHX4_2)
    end
    SHX2_2 = IsDisabledControlJustReleased
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Keyboard
    SHX4_2 = SHX4_2.Siren
    SHX4_2 = SHX4_2.ToneFour
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = OnKeySiren
      SHX3_2 = 0
      SHX4_2 = false
      SHX2_2(SHX3_2, SHX4_2)
    end
    SHX2_2 = IsDisabledControlJustPressed
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Keyboard
    SHX4_2 = SHX4_2.Pattern
    SHX4_2 = SHX4_2.Primary
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = OnKeyPattern
      SHX3_2 = 303108068
      SHX2_2(SHX3_2)
    end
    SHX2_2 = IsDisabledControlJustPressed
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Keyboard
    SHX4_2 = SHX4_2.Pattern
    SHX4_2 = SHX4_2.Secondary
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = OnKeyPattern
      SHX3_2 = -910931556
      SHX2_2(SHX3_2)
    end
    SHX2_2 = IsDisabledControlJustPressed
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Keyboard
    SHX4_2 = SHX4_2.Pattern
    SHX4_2 = SHX4_2.Warning
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = OnKeyPattern
      SHX3_2 = -383838148
      SHX2_2(SHX3_2)
    end
  else
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Controller
    SHX4_2 = SHX4_2.StageChange
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Controller
    SHX4_2 = SHX4_2.Bullhorn
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Controller
    SHX4_2 = SHX4_2.Siren
    SHX4_2 = SHX4_2.ToneOne
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Controller
    SHX4_2 = SHX4_2.Siren
    SHX4_2 = SHX4_2.ToneTwo
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Controller
    SHX4_2 = SHX4_2.Siren
    SHX4_2 = SHX4_2.ToneThree
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = IsDisabledControlJustPressed
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Controller
    SHX4_2 = SHX4_2.StageChange
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = OnKeyStageChange
      SHX2_2()
    end
    SHX2_2 = IsDisabledControlJustPressed
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Controller
    SHX4_2 = SHX4_2.Bullhorn
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 and SHX0_2 then
      SHX2_2 = OnKeyBullhorn
      SHX3_2 = true
      SHX2_2(SHX3_2)
    end
    SHX2_2 = IsDisabledControlJustReleased
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Controller
    SHX4_2 = SHX4_2.Bullhorn
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 and SHX0_2 then
      SHX2_2 = OnKeyBullhorn
      SHX3_2 = false
      SHX2_2(SHX3_2)
    end
    SHX2_2 = IsDisabledControlJustPressed
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Controller
    SHX4_2 = SHX4_2.Siren
    SHX4_2 = SHX4_2.ToneOne
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = OnKeySiren
      SHX3_2 = 1
      SHX4_2 = true
      SHX2_2(SHX3_2, SHX4_2)
    end
    SHX2_2 = IsDisabledControlJustReleased
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Controller
    SHX4_2 = SHX4_2.Siren
    SHX4_2 = SHX4_2.ToneOne
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = OnKeySiren
      SHX3_2 = 0
      SHX4_2 = false
      SHX2_2(SHX3_2, SHX4_2)
    end
    SHX2_2 = IsDisabledControlJustPressed
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Controller
    SHX4_2 = SHX4_2.Siren
    SHX4_2 = SHX4_2.ToneTwo
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = OnKeySiren
      SHX3_2 = 2
      SHX4_2 = true
      SHX2_2(SHX3_2, SHX4_2)
    end
    SHX2_2 = IsDisabledControlJustReleased
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Controller
    SHX4_2 = SHX4_2.Siren
    SHX4_2 = SHX4_2.ToneTwo
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = OnKeySiren
      SHX3_2 = 0
      SHX4_2 = false
      SHX2_2(SHX3_2, SHX4_2)
    end
    SHX2_2 = IsDisabledControlJustPressed
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Controller
    SHX4_2 = SHX4_2.Siren
    SHX4_2 = SHX4_2.ToneThree
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = OnKeySiren
      SHX3_2 = 3
      SHX4_2 = true
      SHX2_2(SHX3_2, SHX4_2)
    end
    SHX2_2 = IsDisabledControlJustReleased
    SHX3_2 = 0
    SHX4_2 = SHX2_1.Controller
    SHX4_2 = SHX4_2.Siren
    SHX4_2 = SHX4_2.ToneThree
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = OnKeySiren
      SHX3_2 = 0
      SHX4_2 = false
      SHX2_2(SHX3_2, SHX4_2)
    end
  end
end
ProcessCurrentVehicle = SHX15_1
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = GetLastInputMethod
  SHX2_2 = 0
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 or not SHX0_2 then
    return
  end
  SHX1_2 = IsControlJustPressed
  SHX2_2 = 0
  SHX3_2 = SHX2_1.Keyboard
  SHX3_2 = SHX3_2.IndicatorLeft
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = GetVehicleIndicatorLights
    SHX2_2 = SHX7_1
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = 1 ~= SHX1_2
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "CMGELS:indicatorChange"
    SHX5_2 = 1
    SHX6_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
  SHX1_2 = IsControlJustPressed
  SHX2_2 = 0
  SHX3_2 = SHX2_1.Keyboard
  SHX3_2 = SHX3_2.IndicatorRight
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = GetVehicleIndicatorLights
    SHX2_2 = SHX7_1
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = 2 ~= SHX1_2
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "CMGELS:indicatorChange"
    SHX5_2 = 2
    SHX6_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
end
ProcessCivilianVehicle = SHX15_1
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = pairs
  SHX1_2 = SHX9_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = SHX8_1
    SHX5_2 = SHX5_2[SHX4_2]
    SHX6_2 = GetEntityCoords
    SHX7_2 = SHX5_2.entity
    SHX8_2 = true
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX7_2 = SHX6_1
    SHX6_2 = SHX6_2 - SHX7_2
    SHX6_2 = #SHX6_2
    if SHX6_2 < 50.0 then
      SHX5_2.accurateLights = true
    else
      SHX5_2.accurateLights = false
    end
    SHX6_2 = SetVehicleAutoRepairDisabled
    SHX7_2 = SHX5_2.entity
    SHX8_2 = true
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = SetVehicleHasMutedSirens
    SHX7_2 = SHX5_2.entity
    SHX8_2 = true
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = SHX1_1.CheckPatterns
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
end
ProcessVehicleLights = SHX15_1
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = GetSavedVehicleStateUsingEntity
  SHX1_2 = SHX7_1
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    return
  end
  SHX1_2 = SHX0_2.stage
  SHX1_2 = SHX1_2 + 1
  SHX0_2.stage = SHX1_2
  SHX1_2 = SHX0_2.stage
  if 3 == SHX1_2 then
    SHX0_2.stage = 0
  end
  SHX1_2 = SHX1_1.OnStageChange
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = PlaySoundFrontend
  SHX2_2 = -1
  SHX3_2 = "NAV_UP_DOWN"
  SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
  SHX5_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "CMGELS:changeStage"
  SHX3_2 = SHX0_2.stage
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX0_2.stage
  if 1 == SHX1_2 then
    SHX1_2 = IsAmbulanceSound
    SHX2_2 = SHX0_2.config
    SHX2_2 = SHX2_2.sounds
    SHX2_2 = SHX2_2.srnTone1
    SHX2_2 = SHX2_2.audioString
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = Citizen
      SHX1_2 = SHX1_2.CreateThreadNow
      SHX2_2 = PlayNineNineModeSound
      SHX1_2(SHX2_2)
    end
  end
end
OnKeyStageChange = SHX15_1
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = GetSavedVehicleStateUsingEntity
  SHX2_2 = SHX7_1
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = SHX1_2.config
  SHX2_2 = SHX2_2.sounds
  SHX2_2 = SHX2_2.mainHorn
  if SHX2_2 then
    SHX2_2 = SHX1_2.config
    SHX2_2 = SHX2_2.sounds
    SHX2_2 = SHX2_2.mainHorn
    SHX2_2 = SHX2_2.audioString
    if "" ~= SHX2_2 then
      goto SHX_LABEL_19
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_19:: outside nested blocks until all 'goto SHX_LABEL_19' can see it
  ::SHX_LABEL_19::
  SHX2_2 = SHX1_2.bullhorn
  SHX2_2 = SHX2_2.enabled
  if SHX2_2 == SHX0_2 then
    return
  end
  SHX2_2 = SHX1_2.bullhorn
  SHX2_2.enabled = SHX0_2
  SHX2_2 = SHX1_1.OnBullhornChange
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "CMGELS:toggleBullhorn"
  SHX4_2 = SHX0_2
  SHX2_2(SHX3_2, SHX4_2)
end
OnKeyBullhorn = SHX15_1
function SHX15_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = GetSavedVehicleStateUsingEntity
  SHX3_2 = SHX7_1
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    return
  end
  SHX3_2 = SHX2_2.stage
  if 0 == SHX3_2 then
    return
  end
  SHX3_2 = GetSirenNameFromIndex
  SHX4_2 = SHX2_2
  SHX5_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if "UNUSED" == SHX3_2 then
    return
  end
  if not SHX1_2 then
    SHX3_2 = SHX2_2.stage
    if 2 ~= SHX3_2 then
      return
    end
  end
  SHX3_2 = SHX2_2.siren
  SHX3_2 = SHX3_2.tone
  if SHX3_2 == SHX0_2 then
    SHX0_2 = 0
  end
  SHX3_2 = SHX2_2.siren
  SHX3_2.tone = SHX0_2
  SHX3_2 = SHX1_1.OnSirenChange
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "CMGELS:toggleSiren"
  SHX5_2 = SHX0_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SHX2_2.siren
  SHX3_2 = SHX3_2.tone
  if 0 ~= SHX3_2 then
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.CreateThreadNow
    SHX4_2 = PlaySirenSwitchSound
    SHX3_2(SHX4_2)
  end
end
OnKeySiren = SHX15_1
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = GetSavedVehicleStateUsingEntity
  SHX2_2 = SHX7_1
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = SHX1_2.pattern
  SHX2_2 = SHX2_2[SHX0_2]
  SHX3_2 = SHX2_2.enabled
  SHX3_2 = not SHX3_2
  SHX2_2.enabled = SHX3_2
  SHX3_2 = SHX2_2.enabled
  if not SHX3_2 then
    SHX3_2 = SHX1_1.OnPatternDisable
    SHX4_2 = SHX1_2
    SHX5_2 = SHX0_2
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = PlaySoundFrontend
  SHX4_2 = -1
  SHX5_2 = "NAV_UP_DOWN"
  SHX6_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
  SHX7_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = GetIndexFromPattern
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = TriggerServerEvent
  SHX5_2 = "CMGELS:patternChange"
  SHX6_2 = SHX3_2
  SHX7_2 = SHX2_2.enabled
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
end
OnKeyPattern = SHX15_1
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = GetSavedVehicleStateUsingEntity
  SHX1_2 = SHX7_1
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    return
  end
  SHX1_2 = SHX0_2.bullhorn
  SHX1_2 = SHX1_2.enabled
  if SHX1_2 then
    SHX1_2 = SHX0_2.bullhorn
    SHX1_2.enabled = false
    SHX1_2 = SHX1_1.OnBullhornChange
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "CMGELS:toggleBullhorn"
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = SHX0_2.siren
  SHX1_2 = SHX1_2.tone
  if 0 == SHX1_2 then
    SHX1_2 = SHX0_2.stage
    if 0 == SHX1_2 then
      goto SHX_LABEL_35
    end
  end
  SHX0_2.stage = 0
  SHX1_2 = SHX1_1.OnStageChange
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "CMGELS:changeStage"
  SHX3_2 = 0
  SHX1_2(SHX2_2, SHX3_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_35:: outside nested blocks until all 'goto SHX_LABEL_35' can see it
  ::SHX_LABEL_35::
end
DisableCurrentVehicle = SHX15_1
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  while true do
    SHX0_2 = RequestScriptAudioBank
    SHX1_2 = "DLC_ELSAUDIO\\ELSAUDIO_ONE"
    SHX2_2 = false
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      break
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = PlaySoundFrontend
  SHX1_2 = -1
  SHX2_2 = "999sound"
  SHX3_2 = "dlc_elsaudio_sounds"
  SHX4_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.Wait
  SHX1_2 = 1000
  SHX0_2(SHX1_2)
  SHX0_2 = ReleaseNamedScriptAudioBank
  SHX1_2 = "DLC_ELSAUDIO\\ELSAUDIO_ONE"
  SHX0_2(SHX1_2)
end
PlayNineNineModeSound = SHX15_1
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  while true do
    SHX0_2 = RequestScriptAudioBank
    SHX1_2 = "DLC_ELSAUDIO\\ELSAUDIO_ONE"
    SHX2_2 = false
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      break
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = PlaySoundFrontend
  SHX1_2 = -1
  SHX2_2 = "sirenswitch"
  SHX3_2 = "dlc_elsaudio_sounds"
  SHX4_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.Wait
  SHX1_2 = 500
  SHX0_2(SHX1_2)
  SHX0_2 = ReleaseNamedScriptAudioBank
  SHX1_2 = "DLC_ELSAUDIO\\ELSAUDIO_ONE"
  SHX0_2(SHX1_2)
end
PlaySirenSwitchSound = SHX15_1
function SHX15_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = string
  SHX2_2 = SHX2_2.format
  SHX3_2 = "els_%s"
  SHX4_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = AddStateBagChangeHandler
  SHX4_2 = SHX2_2
  SHX5_2 = nil
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX3_3 = tonumber
    SHX4_3 = stringsplit
    SHX5_3 = SHX0_3
    SHX6_3 = ":"
    SHX4_3 = SHX4_3(SHX5_3, SHX6_3)
    SHX4_3 = SHX4_3[2]
    SHX3_3 = SHX3_3(SHX4_3)
    SHX4_3 = type
    SHX5_3 = SHX2_3
    SHX4_3 = SHX4_3(SHX5_3)
    if "table" == SHX4_3 then
      SHX4_3 = SHX1_2
      SHX5_3 = SHX3_3
      SHX6_3 = table
      SHX6_3 = SHX6_3.unpack
      SHX7_3 = SHX2_3
      SHX6_3, SHX7_3 = SHX6_3(SHX7_3)
      SHX4_3(SHX5_3, SHX6_3, SHX7_3)
    else
      SHX4_3 = SHX1_2
      SHX5_3 = SHX3_3
      SHX6_3 = SHX2_3
      SHX4_3(SHX5_3, SHX6_3)
    end
  end
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
end
SHX16_1 = SHX15_1
SHX17_1 = "stage"
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX3_1
  if not SHX2_2 then
    return
  end
  SHX2_2 = GetSavedVehicleState
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    return
  end
  SHX2_2.stage = SHX1_2
  SHX3_2 = SHX1_1.OnStageChange
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = SHX15_1
SHX17_1 = "siren"
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = SHX3_1
  if not SHX2_2 then
    return
  end
  SHX2_2 = GetSavedVehicleState
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    return
  end
  SHX3_2 = SHX2_2.siren
  SHX3_2.tone = SHX1_2
  SHX3_2 = SHX1_1.OnSirenChange
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "CMGELS:toggleBullhorn"
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX3_1
  if not SHX2_2 then
    return
  end
  SHX2_2 = GetSavedVehicleState
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    return
  end
  SHX3_2 = SHX2_2.entity
  if SHX3_2 then
    SHX3_2 = GetPedInVehicleSeat
    SHX4_2 = SHX2_2.entity
    SHX5_2 = -1
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX4_2 = SHX5_1
    if SHX3_2 ~= SHX4_2 then
      goto SHX_LABEL_22
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
  ::SHX_LABEL_22::
  SHX3_2 = SHX2_2.bullhorn
  SHX3_2.enabled = SHX1_2
  SHX3_2 = SHX1_1.OnBullhornChange
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = SHX15_1
SHX17_1 = "primary"
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = SHX3_1
  if not SHX2_2 then
    return
  end
  SHX2_2 = GetSavedVehicleState
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    return
  end
  SHX3_2 = GetPatternFromIndex
  SHX4_2 = 1
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX2_2.pattern
  SHX4_2 = SHX4_2[SHX3_2]
  SHX4_2.enabled = SHX1_2
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = SHX15_1
SHX17_1 = "secondary"
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = SHX3_1
  if not SHX2_2 then
    return
  end
  SHX2_2 = GetSavedVehicleState
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    return
  end
  SHX3_2 = GetPatternFromIndex
  SHX4_2 = 2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX2_2.pattern
  SHX4_2 = SHX4_2[SHX3_2]
  SHX4_2.enabled = SHX1_2
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = SHX15_1
SHX17_1 = "warning"
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = SHX3_1
  if not SHX2_2 then
    return
  end
  SHX2_2 = GetSavedVehicleState
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    return
  end
  SHX3_2 = GetPatternFromIndex
  SHX4_2 = 3
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX2_2.pattern
  SHX4_2 = SHX4_2[SHX3_2]
  SHX4_2.enabled = SHX1_2
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "CMGELS:indicatorChange"
function SHX18_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = NetworkDoesNetworkIdExist
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    return
  end
  SHX3_2 = NetworkGetEntityFromNetworkId
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 == SHX3_2 then
    return
  end
  if 1 == SHX1_2 then
    SHX4_2 = SetVehicleIndicatorLights
    SHX5_2 = SHX3_2
    SHX6_2 = 0
    SHX7_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = SetVehicleIndicatorLights
    SHX5_2 = SHX3_2
    SHX6_2 = 1
    SHX7_2 = SHX2_2
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  elseif 2 == SHX1_2 then
    SHX4_2 = SetVehicleIndicatorLights
    SHX5_2 = SHX3_2
    SHX6_2 = 0
    SHX7_2 = SHX2_2
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = SetVehicleIndicatorLights
    SHX5_2 = SHX3_2
    SHX6_2 = 1
    SHX7_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  end
end
SHX16_1(SHX17_1, SHX18_1)
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX8_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    return SHX1_2
  end
  SHX2_2 = {}
  SHX1_2 = SHX2_2
  SHX1_2.stage = 0
  SHX1_2.accurateLights = false
  SHX2_2 = {}
  SHX1_2.siren = SHX2_2
  SHX2_2 = SHX1_2.siren
  SHX2_2.tone = 0
  SHX2_2 = {}
  SHX1_2.bullhorn = SHX2_2
  SHX2_2 = SHX1_2.bullhorn
  SHX2_2.enabled = false
  SHX2_2 = {}
  SHX1_2.pattern = SHX2_2
  SHX2_2 = SHX1_2.pattern
  SHX3_2 = 303108068
  SHX4_2 = {}
  SHX2_2[SHX3_2] = SHX4_2
  SHX2_2 = SHX1_2.pattern
  SHX3_2 = 303108068
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2.enabled = false
  SHX2_2 = SHX1_2.pattern
  SHX3_2 = 303108068
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2.current = 1
  SHX2_2 = SHX1_2.pattern
  SHX3_2 = 303108068
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2.updated = 0
  SHX2_2 = SHX1_2.pattern
  SHX3_2 = 303108068
  SHX2_2 = SHX2_2[SHX3_2]
  SHX3_2 = SHX2_1.Pattern
  SHX4_2 = 303108068
  SHX3_2 = SHX3_2[SHX4_2]
  SHX2_2.stages = SHX3_2
  SHX2_2 = SHX1_2.pattern
  SHX3_2 = -910931556
  SHX4_2 = {}
  SHX2_2[SHX3_2] = SHX4_2
  SHX2_2 = SHX1_2.pattern
  SHX3_2 = -910931556
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2.enabled = false
  SHX2_2 = SHX1_2.pattern
  SHX3_2 = -910931556
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2.current = 1
  SHX2_2 = SHX1_2.pattern
  SHX3_2 = -910931556
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2.updated = 0
  SHX2_2 = SHX1_2.pattern
  SHX3_2 = -910931556
  SHX2_2 = SHX2_2[SHX3_2]
  SHX3_2 = SHX2_1.Pattern
  SHX4_2 = -910931556
  SHX3_2 = SHX3_2[SHX4_2]
  SHX2_2.stages = SHX3_2
  SHX2_2 = SHX1_2.pattern
  SHX3_2 = -383838148
  SHX4_2 = {}
  SHX2_2[SHX3_2] = SHX4_2
  SHX2_2 = SHX1_2.pattern
  SHX3_2 = -383838148
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2.enabled = false
  SHX2_2 = SHX1_2.pattern
  SHX3_2 = -383838148
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2.current = 1
  SHX2_2 = SHX1_2.pattern
  SHX3_2 = -383838148
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2.updated = 0
  SHX2_2 = SHX1_2.pattern
  SHX3_2 = -383838148
  SHX2_2 = SHX2_2[SHX3_2]
  SHX3_2 = SHX2_1.Pattern
  SHX4_2 = -383838148
  SHX3_2 = SHX3_2[SHX4_2]
  SHX2_2.stages = SHX3_2
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX1_2.createTime = SHX2_2
  SHX2_2 = NetworkDoesEntityExistWithNetworkId
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = NetworkGetEntityFromNetworkId
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = LoadConfigurationIntoState
    SHX4_2 = SHX1_2
    SHX5_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if not SHX3_2 then
      SHX3_2 = nil
      return SHX3_2
    end
    SHX1_2.entity = SHX2_2
  end
  SHX2_2 = SHX8_1
  SHX2_2[SHX0_2] = SHX1_2
  return SHX1_2
end
GetSavedVehicleState = SHX16_1
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = NetworkGetNetworkIdFromEntity
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 == SHX1_2 then
    SHX2_2 = nil
    return SHX2_2
  end
  SHX2_2 = GetSavedVehicleState
  SHX3_2 = SHX1_2
  return SHX2_2(SHX3_2)
end
GetSavedVehicleStateUsingEntity = SHX16_1
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX8_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX1_2 = true
    return SHX1_2
  else
    SHX1_2 = false
    return SHX1_2
  end
end
DoesVehicleStateExist = SHX16_1
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = NetworkGetNetworkIdFromEntity
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 == SHX1_2 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = DoesVehicleStateExist
  SHX3_2 = SHX1_2
  return SHX2_2(SHX3_2)
end
DoesVehicleStateExistUsingEntity = SHX16_1
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = pairs
  SHX1_2 = SHX9_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DoesEntityExist
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if not SHX6_2 then
      SHX6_2 = VehicleLeftScope
      SHX7_2 = SHX4_2
      SHX8_2 = SHX8_1
      SHX8_2 = SHX8_2[SHX4_2]
      SHX6_2(SHX7_2, SHX8_2)
      SHX6_2 = SHX8_1
      SHX6_2[SHX4_2] = nil
    end
  end
  SHX0_2 = pairs
  SHX1_2 = SHX8_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX9_1
    SHX6_2 = SHX6_2[SHX4_2]
    if not SHX6_2 then
      SHX6_2 = NetworkDoesEntityExistWithNetworkId
      SHX7_2 = SHX4_2
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        SHX6_2 = VehicleEnteredScope
        SHX7_2 = SHX4_2
        SHX8_2 = SHX5_2
        SHX6_2(SHX7_2, SHX8_2)
      else
        SHX6_2 = SHX5_2.createTime
        if SHX6_2 then
          SHX6_2 = SHX4_1
          SHX7_2 = SHX5_2.createTime
          SHX6_2 = SHX6_2 - SHX7_2
          SHX7_2 = 10000
          if SHX6_2 > SHX7_2 then
            SHX6_2 = SHX8_1
            SHX6_2[SHX4_2] = nil
          end
        end
      end
    end
  end
end
CheckVehicleStates = SHX16_1
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = NetworkGetEntityFromNetworkId
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    return
  end
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = SHX13_1
    SHX4_2 = "Invalid entity "
    SHX5_2 = tostring
    SHX6_2 = SHX2_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = " returned from the network id"
    SHX4_2 = SHX4_2 .. SHX5_2 .. SHX6_2
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = SHX1_2.config
  if not SHX3_2 then
    SHX3_2 = LoadConfigurationIntoState
    SHX4_2 = SHX1_2
    SHX5_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if not SHX3_2 then
      return
    end
  end
  SHX3_2 = SHX9_1
  SHX3_2[SHX0_2] = SHX2_2
  SHX1_2.entity = SHX2_2
  SHX3_2 = SetVehicleAutoRepairDisabled
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetVehicleHasMutedSirens
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = pairs
  SHX4_2 = SHX2_1.Pattern
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX1_2.pattern
    SHX9_2 = SHX9_2[SHX7_2]
    SHX9_2 = SHX9_2.enabled
    if SHX9_2 then
      SHX9_2 = SetVehicleSiren
      SHX10_2 = SHX2_2
      SHX11_2 = true
      SHX9_2(SHX10_2, SHX11_2)
    end
  end
  SHX3_2 = SHX1_2.siren
  SHX3_2 = SHX3_2.tone
  if 0 ~= SHX3_2 then
    SHX3_2 = SHX1_2.siren
    SHX3_2 = SHX3_2.handle
    if not SHX3_2 then
      SHX3_2 = SHX1_1.OnSirenChange
      SHX4_2 = SHX1_2
      SHX3_2(SHX4_2)
    end
  end
end
VehicleEnteredScope = SHX16_1
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX9_1
  SHX2_2[SHX0_2] = nil
  SHX2_2 = SHX1_2.siren
  SHX2_2 = SHX2_2.tone
  if 0 ~= SHX2_2 then
    SHX2_2 = SHX1_2.siren
    SHX2_2 = SHX2_2.handle
    if SHX2_2 then
      SHX2_2 = StopSound
      SHX3_2 = SHX1_2.siren
      SHX3_2 = SHX3_2.handle
      SHX2_2(SHX3_2)
      SHX2_2 = ReleaseSoundId
      SHX3_2 = SHX1_2.siren
      SHX3_2 = SHX3_2.handle
      SHX2_2(SHX3_2)
      SHX2_2 = SHX1_2.siren
      SHX2_2.handle = nil
      SHX2_2 = SHX1_2.siren
      SHX2_2.selected = nil
    end
  end
  SHX2_2 = SHX1_2.bullhorn
  SHX2_2 = SHX2_2.enabled
  if SHX2_2 then
    SHX2_2 = SHX1_2.bullhorn
    SHX2_2 = SHX2_2.handle
    if SHX2_2 then
      SHX2_2 = StopSound
      SHX3_2 = SHX1_2.bullhorn
      SHX3_2 = SHX3_2.handle
      SHX2_2(SHX3_2)
      SHX2_2 = ReleaseSoundId
      SHX3_2 = SHX1_2.bullhorn
      SHX3_2 = SHX3_2.handle
      SHX2_2(SHX3_2)
      SHX2_2 = SHX1_2.bullhorn
      SHX2_2.handle = nil
      SHX2_2 = SHX1_2.bullhorn
      SHX2_2.enabled = false
    end
  end
  SHX1_2.entity = nil
end
VehicleLeftScope = SHX16_1
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = GetEntityModel
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    SHX3_2 = SHX13_1
    SHX4_2 = "Entity "
    SHX5_2 = tostring
    SHX6_2 = SHX1_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = " has a invalid model (0)"
    SHX4_2 = SHX4_2 .. SHX5_2 .. SHX6_2
    SHX3_2(SHX4_2)
    SHX3_2 = false
    return SHX3_2
  end
  SHX3_2 = SHX3_1
  SHX3_2 = SHX3_2[SHX2_2]
  if not SHX3_2 then
    SHX4_2 = SHX13_1
    SHX5_2 = "Entity "
    SHX6_2 = tostring
    SHX7_2 = SHX1_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = " with model "
    SHX8_2 = tostring
    SHX9_2 = SHX2_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX9_2 = " does not have an VCF defined."
    SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2 .. SHX8_2 .. SHX9_2
    SHX4_2(SHX5_2)
    SHX4_2 = false
    return SHX4_2
  end
  SHX0_2.config = SHX3_2
  SHX4_2 = SHX0_2.config
  SHX4_2 = SHX4_2.pattern
  SHX5_2 = 303108068
  SHX4_2 = SHX4_2[SHX5_2]
  if SHX4_2 then
    SHX5_2 = SHX0_2.pattern
    SHX6_2 = 303108068
    SHX5_2 = SHX5_2[SHX6_2]
    SHX5_2.stages = SHX4_2
  end
  SHX5_2 = SHX0_2.config
  SHX5_2 = SHX5_2.pattern
  SHX6_2 = -910931556
  SHX5_2 = SHX5_2[SHX6_2]
  if SHX5_2 then
    SHX6_2 = SHX0_2.pattern
    SHX7_2 = -910931556
    SHX6_2 = SHX6_2[SHX7_2]
    SHX6_2.stages = SHX5_2
  end
  SHX6_2 = SHX0_2.config
  SHX6_2 = SHX6_2.pattern
  SHX7_2 = -383838148
  SHX6_2 = SHX6_2[SHX7_2]
  if SHX6_2 then
    SHX7_2 = SHX0_2.pattern
    SHX8_2 = -383838148
    SHX7_2 = SHX7_2[SHX8_2]
    SHX7_2.stages = SHX6_2
  end
  SHX7_2 = true
  return SHX7_2
end
LoadConfigurationIntoState = SHX16_1
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if 303108068 == SHX0_2 then
    SHX1_2 = 1
    return SHX1_2
  elseif -910931556 == SHX0_2 then
    SHX1_2 = 2
    return SHX1_2
  elseif -383838148 == SHX0_2 then
    SHX1_2 = 3
    return SHX1_2
  end
end
GetIndexFromPattern = SHX16_1
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if 1 == SHX0_2 then
    SHX1_2 = 303108068
    return SHX1_2
  elseif 2 == SHX0_2 then
    SHX1_2 = -910931556
    return SHX1_2
  elseif 3 == SHX0_2 then
    SHX1_2 = -383838148
    return SHX1_2
  end
end
GetPatternFromIndex = SHX16_1
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if 303108068 == SHX0_2 then
    SHX1_2 = "PRIMARY"
    return SHX1_2
  elseif -910931556 == SHX0_2 then
    SHX1_2 = "SECONDARY"
    return SHX1_2
  elseif -383838148 == SHX0_2 then
    SHX1_2 = "WARNING"
    return SHX1_2
  end
end
GetPatternNameFromPattern = SHX16_1
SHX16_1 = CMG
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = DoesVehicleStateExistUsingEntity
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = GetSavedVehicleStateUsingEntity
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX2_2 = pairs
      SHX3_2 = SHX1_2.pattern
      SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
      for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
        SHX8_2 = SHX7_2.enabled
        if SHX8_2 then
          SHX8_2 = true
          return SHX8_2
        end
      end
    end
  end
  SHX1_2 = false
  return SHX1_2
end
SHX16_1.elsDoesVehicleHaveLightsEnabled = SHX17_1
SHX16_1 = CMG
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX3_1
  SHX2_2 = SHX2_2[SHX1_2]
  if SHX2_2 then
    SHX2_2 = true
    return SHX2_2
  else
    SHX2_2 = false
    return SHX2_2
  end
end
SHX16_1.elsDoesVehicleHaveConfig = SHX17_1
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = ipairs
  SHX3_2 = SHX1_2.kids
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = string
    SHX8_2 = SHX8_2.upper
    SHX9_2 = string
    SHX9_2 = SHX9_2.sub
    SHX10_2 = SHX7_2.name
    SHX11_2 = 1
    SHX12_2 = -3
    SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    if "EXTRA" == SHX8_2 then
      SHX8_2 = SHX7_2.attr
      SHX8_2 = SHX8_2.AllowEnvLight
      if "true" == SHX8_2 then
        SHX8_2 = {}
        SHX9_2 = vector3
        SHX10_2 = tonumber
        SHX11_2 = SHX7_2.attr
        SHX11_2 = SHX11_2.OffsetX
        SHX10_2 = SHX10_2(SHX11_2)
        if not SHX10_2 then
          SHX10_2 = 0.0
        end
        SHX11_2 = tonumber
        SHX12_2 = SHX7_2.attr
        SHX12_2 = SHX12_2.OffsetY
        SHX11_2 = SHX11_2(SHX12_2)
        if not SHX11_2 then
          SHX11_2 = 0.0
        end
        SHX12_2 = tonumber
        SHX13_2 = SHX7_2.attr
        SHX13_2 = SHX13_2.OffsetZ
        SHX12_2 = SHX12_2(SHX13_2)
        if not SHX12_2 then
          SHX12_2 = 0.0
        end
        SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
        SHX8_2.offset = SHX9_2
        SHX9_2 = string
        SHX9_2 = SHX9_2.lower
        SHX10_2 = SHX7_2.attr
        SHX10_2 = SHX10_2.Color
        SHX9_2 = SHX9_2(SHX10_2)
        SHX8_2.colour = SHX9_2
        SHX9_2 = tonumber
        SHX10_2 = string
        SHX10_2 = SHX10_2.sub
        SHX11_2 = SHX7_2.name
        SHX12_2 = -2
        SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2, SHX12_2)
        SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        if SHX9_2 then
          SHX10_2 = SHX0_2.extras
          SHX10_2[SHX9_2] = SHX8_2
        end
      end
    end
  end
  SHX2_2 = SHX0_2.version
  if SHX2_2 then
    SHX2_2 = error
    SHX3_2 = "A VCF version has already been specified"
    SHX2_2(SHX3_2)
  else
    SHX0_2.version = 1
  end
end
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = {}
  SHX2_2 = ipairs
  SHX3_2 = SHX0_2.kids
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.name
    if "Light" == SHX8_2 then
      SHX8_2 = {}
      SHX9_2 = vector3
      SHX10_2 = tonumber
      SHX11_2 = SHX7_2.attr
      SHX11_2 = SHX11_2.OffsetX
      SHX10_2 = SHX10_2(SHX11_2)
      if not SHX10_2 then
        SHX10_2 = 0.0
      end
      SHX11_2 = tonumber
      SHX12_2 = SHX7_2.attr
      SHX12_2 = SHX12_2.OffsetY
      SHX11_2 = SHX11_2(SHX12_2)
      if not SHX11_2 then
        SHX11_2 = 0.0
      end
      SHX12_2 = tonumber
      SHX13_2 = SHX7_2.attr
      SHX13_2 = SHX13_2.OffsetZ
      SHX12_2 = SHX12_2(SHX13_2)
      if not SHX12_2 then
        SHX12_2 = 0.0
      end
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
      SHX8_2.offset = SHX9_2
      SHX9_2 = SHX8_2.offset
      if not SHX9_2 then
        SHX9_2 = error
        SHX10_2 = "Failed to get offset for extra light"
        SHX9_2(SHX10_2)
      end
      SHX9_2 = tonumber
      SHX10_2 = SHX7_2.attr
      SHX10_2 = SHX10_2.Direction
      SHX9_2 = SHX9_2(SHX10_2)
      SHX8_2.direction = SHX9_2
      SHX9_2 = SHX8_2.direction
      if not SHX9_2 then
        SHX9_2 = error
        SHX10_2 = "Failed to get direction for extra light"
        SHX9_2(SHX10_2)
      else
        SHX9_2 = SHX0_1.rad
        SHX10_2 = SHX8_2.direction
        SHX9_2 = SHX9_2(SHX10_2)
        SHX8_2.direction = SHX9_2
      end
      SHX9_2 = SHX7_2.attr
      SHX9_2 = SHX9_2.Colour
      SHX8_2.colour = SHX9_2
      SHX9_2 = SHX8_2.colour
      if not SHX9_2 then
        SHX9_2 = error
        SHX10_2 = "Failed to get colour for extra light"
        SHX9_2(SHX10_2)
      end
      SHX9_2 = table
      SHX9_2 = SHX9_2.insert
      SHX10_2 = SHX1_2
      SHX11_2 = SHX8_2
      SHX9_2(SHX10_2, SHX11_2)
    end
  end
  return SHX1_2
end
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = ipairs
  SHX3_2 = SHX1_2.kids
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.name
    if "Extra" == SHX8_2 then
      SHX8_2 = tonumber
      SHX9_2 = SHX7_2.attr
      SHX9_2 = SHX9_2.Number
      SHX8_2 = SHX8_2(SHX9_2)
      if SHX8_2 then
        SHX9_2 = SHX0_2.extras
        SHX10_2 = SHX17_1
        SHX11_2 = SHX7_2
        SHX10_2 = SHX10_2(SHX11_2)
        SHX9_2[SHX8_2] = SHX10_2
      end
    end
  end
  SHX2_2 = SHX0_2.version
  if SHX2_2 then
    SHX2_2 = error
    SHX3_2 = "A VCF version has already been specified"
    SHX2_2(SHX3_2)
  else
    SHX0_2.version = 2
  end
end
function SHX19_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = ipairs
  SHX3_2 = SHX1_2.kids
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.name
    if "MainHorn" == SHX8_2 then
      SHX8_2 = SHX0_2.sounds
      SHX9_2 = {}
      SHX10_2 = SHX7_2.attr
      SHX10_2 = SHX10_2.AudioString
      SHX9_2.audioString = SHX10_2
      SHX8_2.mainHorn = SHX9_2
    else
      SHX8_2 = SHX7_2.name
      if "SrnTone1" == SHX8_2 then
        SHX8_2 = SHX0_2.sounds
        SHX9_2 = {}
        SHX10_2 = SHX7_2.attr
        SHX10_2 = SHX10_2.AudioString
        SHX9_2.audioString = SHX10_2
        SHX8_2.srnTone1 = SHX9_2
      else
        SHX8_2 = SHX7_2.name
        if "SrnTone2" == SHX8_2 then
          SHX8_2 = SHX0_2.sounds
          SHX9_2 = {}
          SHX10_2 = SHX7_2.attr
          SHX10_2 = SHX10_2.AudioString
          SHX9_2.audioString = SHX10_2
          SHX8_2.srnTone2 = SHX9_2
        else
          SHX8_2 = SHX7_2.name
          if "SrnTone3" == SHX8_2 then
            SHX8_2 = SHX0_2.sounds
            SHX9_2 = {}
            SHX10_2 = SHX7_2.attr
            SHX10_2 = SHX10_2.AudioString
            SHX9_2.audioString = SHX10_2
            SHX8_2.srnTone3 = SHX9_2
          else
            SHX8_2 = SHX7_2.name
            if "SrnTone4" == SHX8_2 then
              SHX8_2 = SHX0_2.sounds
              SHX9_2 = {}
              SHX10_2 = SHX7_2.attr
              SHX10_2 = SHX10_2.AudioString
              SHX9_2.audioString = SHX10_2
              SHX8_2.srnTone4 = SHX9_2
            end
          end
        end
      end
    end
  end
end
function SHX20_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = {}
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2 .. SHX4_2
  SHX4_2 = SHX3_2
  SHX3_2 = SHX3_2.gmatch
  SHX5_2 = "(.-)"
  SHX6_2 = SHX1_2
  SHX5_2 = SHX5_2 .. SHX6_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2)
  for SHX7_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX8_2 = table
    SHX8_2 = SHX8_2.insert
    SHX9_2 = SHX2_2
    SHX10_2 = SHX7_2
    SHX8_2(SHX9_2, SHX10_2)
  end
  return SHX2_2
end
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = SHX20_1
  SHX2_2 = SHX0_2
  SHX3_2 = ","
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = {}
  SHX3_2 = ipairs
  SHX4_2 = SHX1_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = tonumber
    SHX10_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2)
    if SHX9_2 then
      SHX10_2 = table
      SHX10_2 = SHX10_2.insert
      SHX11_2 = SHX2_2
      SHX12_2 = SHX9_2
      SHX10_2(SHX11_2, SHX12_2)
    end
  end
  return SHX2_2
end
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = {}
  SHX2_2 = ipairs
  SHX3_2 = SHX0_2.el
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = {}
    SHX9_2 = tonumber
    SHX10_2 = SHX7_2.attr
    SHX10_2 = SHX10_2.Duration
    SHX9_2 = SHX9_2(SHX10_2)
    SHX8_2.Milliseconds = SHX9_2
    SHX9_2 = SHX21_1
    SHX10_2 = SHX7_2.attr
    SHX10_2 = SHX10_2.Extras
    SHX9_2 = SHX9_2(SHX10_2)
    SHX8_2.Extras = SHX9_2
    SHX9_2 = #SHX1_2
    SHX9_2 = SHX9_2 + 1
    SHX1_2[SHX9_2] = SHX8_2
  end
  return SHX1_2
end
function SHX23_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = ipairs
  SHX3_2 = SHX1_2.kids
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.name
    if "Primary" == SHX8_2 then
      SHX8_2 = SHX0_2.pattern
      SHX9_2 = 303108068
      SHX10_2 = SHX22_1
      SHX11_2 = SHX7_2
      SHX10_2 = SHX10_2(SHX11_2)
      SHX8_2[SHX9_2] = SHX10_2
    else
      SHX8_2 = SHX7_2.name
      if "Secondary" == SHX8_2 then
        SHX8_2 = SHX0_2.pattern
        SHX9_2 = -910931556
        SHX10_2 = SHX22_1
        SHX11_2 = SHX7_2
        SHX10_2 = SHX10_2(SHX11_2)
        SHX8_2[SHX9_2] = SHX10_2
      else
        SHX8_2 = SHX7_2.name
        if "Warning" == SHX8_2 then
          SHX8_2 = SHX0_2.pattern
          SHX9_2 = -383838148
          SHX10_2 = SHX22_1
          SHX11_2 = SHX7_2
          SHX10_2 = SHX10_2(SHX11_2)
          SHX8_2[SHX9_2] = SHX10_2
        end
      end
    end
  end
end
function SHX24_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  if not SHX0_2 then
    SHX2_2 = nil
    return SHX2_2
  end
  SHX2_2 = {}
  SHX3_2 = ipairs
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = {}
    SHX10_2 = ipairs
    SHX11_2 = SHX8_2.Extras
    if not SHX11_2 then
      SHX11_2 = {}
    end
    SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
    for SHX14_2, SHX15_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
      SHX16_2 = SHX1_2[SHX15_2]
      if SHX16_2 then
        SHX16_2 = table
        SHX16_2 = SHX16_2.insert
        SHX17_2 = SHX9_2
        SHX18_2 = SHX15_2
        SHX16_2(SHX17_2, SHX18_2)
      end
    end
    SHX10_2 = #SHX2_2
    SHX10_2 = SHX10_2 + 1
    SHX11_2 = {}
    SHX12_2 = SHX8_2.Milliseconds
    SHX11_2.Milliseconds = SHX12_2
    SHX11_2.Extras = SHX9_2
    SHX2_2[SHX10_2] = SHX11_2
  end
  return SHX2_2
end
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2.pattern
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = ipairs
    SHX8_2 = SHX6_2
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      SHX13_2 = SHX12_2.Milliseconds
      if not SHX13_2 then
        SHX13_2 = false
        SHX14_2 = string
        SHX14_2 = SHX14_2.format
        SHX15_2 = "Unable to convert milliseconds in custom pattern %s"
        SHX16_2 = SHX5_2
        SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX14_2(SHX15_2, SHX16_2)
        return SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
      end
      SHX13_2 = SHX12_2.Extras
      if not SHX13_2 then
        SHX13_2 = false
        SHX14_2 = string
        SHX14_2 = SHX14_2.format
        SHX15_2 = "Unable to convert extras in custom pattern %s"
        SHX16_2 = SHX5_2
        SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX14_2(SHX15_2, SHX16_2)
        return SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
      end
      SHX13_2 = ipairs
      SHX14_2 = SHX12_2.Extras
      SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX13_2(SHX14_2)
      for SHX17_2, SHX18_2 in SHX13_2, SHX14_2, SHX15_2, SHX16_2 do
        if SHX18_2 < 1 or SHX18_2 > 12 then
          SHX19_2 = false
          SHX20_2 = string
          SHX20_2 = SHX20_2.format
          SHX21_2 = "Extra %d out of the range 1 to 12 in custom pattern %s"
          SHX22_2 = SHX18_2
          SHX23_2 = SHX5_2
          SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX20_2(SHX21_2, SHX22_2, SHX23_2)
          return SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
        end
      end
    end
  end
  SHX1_2 = SHX0_2.sounds
  if not SHX1_2 then
    SHX1_2 = false
    SHX2_2 = "Sounds section does not exist"
    return SHX1_2, SHX2_2
  end
  SHX1_2 = {}
  SHX2_2 = SHX0_2.sounds
  SHX2_2 = SHX2_2.srnTone1
  if SHX2_2 then
    SHX2_2 = SHX0_2.sounds
    SHX2_2 = SHX2_2.srnTone1
    SHX2_2 = SHX2_2.audioString
  end
  SHX3_2 = SHX0_2.sounds
  SHX3_2 = SHX3_2.srnTone2
  if SHX3_2 then
    SHX3_2 = SHX0_2.sounds
    SHX3_2 = SHX3_2.srnTone2
    SHX3_2 = SHX3_2.audioString
  end
  SHX4_2 = SHX0_2.sounds
  SHX4_2 = SHX4_2.srnTone3
  if SHX4_2 then
    SHX4_2 = SHX0_2.sounds
    SHX4_2 = SHX4_2.srnTone3
    SHX4_2 = SHX4_2.audioString
  end
  SHX5_2 = SHX0_2.sounds
  SHX5_2 = SHX5_2.srnTone4
  if SHX5_2 then
    SHX5_2 = SHX0_2.sounds
    SHX5_2 = SHX5_2.srnTone4
    SHX5_2 = SHX5_2.audioString
  end
  SHX1_2[1] = SHX2_2
  SHX1_2[2] = SHX3_2
  SHX1_2[3] = SHX4_2
  SHX1_2[4] = SHX5_2
  SHX2_2 = #SHX1_2
  if 4 ~= SHX2_2 then
    SHX2_2 = false
    SHX3_2 = "Unable to find SrnTone1 to SrnTone4"
    return SHX2_2, SHX3_2
  end
  SHX2_2 = 1
  SHX3_2 = #SHX1_2
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = string
    SHX6_2 = SHX6_2.match
    SHX7_2 = SHX1_2[SHX5_2]
    SHX8_2 = "xsiren"
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    if SHX6_2 then
      SHX6_2 = false
      SHX7_2 = "Sirens of type 'xsiren' unsupported"
      return SHX6_2, SHX7_2
    end
  end
  SHX2_2 = true
  return SHX2_2
end
function SHX26_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX2_2 = SHX10_1
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.dom
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = {}
  SHX4_2 = {}
  SHX3_2.extras = SHX4_2
  SHX4_2 = {}
  SHX3_2.sounds = SHX4_2
  SHX4_2 = {}
  SHX3_2.pattern = SHX4_2
  SHX4_2 = ipairs
  SHX5_2 = SHX2_2.root
  SHX5_2 = SHX5_2.el
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX9_2.name
    if "EOVERRIDE" == SHX10_2 then
      SHX10_2 = SHX16_1
      SHX11_2 = SHX3_2
      SHX12_2 = SHX9_2
      SHX10_2(SHX11_2, SHX12_2)
    else
      SHX10_2 = SHX9_2.name
      if "EXTRAS" == SHX10_2 then
        SHX10_2 = SHX18_1
        SHX11_2 = SHX3_2
        SHX12_2 = SHX9_2
        SHX10_2(SHX11_2, SHX12_2)
      else
        SHX10_2 = SHX9_2.name
        if "SOUNDS" == SHX10_2 then
          SHX10_2 = SHX19_1
          SHX11_2 = SHX3_2
          SHX12_2 = SHX9_2
          SHX10_2(SHX11_2, SHX12_2)
        else
          SHX10_2 = SHX9_2.name
          if "PATTERNS" == SHX10_2 then
            SHX10_2 = SHX23_1
            SHX11_2 = SHX3_2
            SHX12_2 = SHX9_2
            SHX10_2(SHX11_2, SHX12_2)
          end
        end
      end
    end
  end
  SHX4_2 = {}
  SHX5_2 = 303108068
  SHX6_2 = -910931556
  SHX7_2 = -383838148
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = ipairs
  SHX6_2 = SHX4_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = SHX3_2.pattern
    SHX11_2 = SHX11_2[SHX10_2]
    if not SHX11_2 then
      SHX11_2 = SHX2_1.Pattern
      SHX11_2 = SHX11_2[SHX10_2]
    end
    if not SHX11_2 then
      SHX12_2 = false
      SHX13_2 = "ELS default pattern missing for "
      SHX14_2 = tostring
      SHX15_2 = SHX10_2
      SHX14_2 = SHX14_2(SHX15_2)
      SHX13_2 = SHX13_2 .. SHX14_2
      return SHX12_2, SHX13_2
    end
    SHX12_2 = SHX3_2.pattern
    SHX13_2 = SHX24_1
    SHX14_2 = SHX11_2
    SHX15_2 = SHX3_2.extras
    SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
    SHX12_2[SHX10_2] = SHX13_2
  end
  SHX5_2 = SHX25_1
  SHX6_2 = SHX3_2
  SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
  if SHX5_2 then
    SHX7_2 = SHX3_2
    SHX8_2 = false
    return SHX7_2, SHX8_2
  else
    SHX7_2 = false
    SHX8_2 = SHX6_2
    return SHX7_2, SHX8_2
  end
end
GetVehicleFromXML = SHX26_1
SHX26_1 = {}
SHX26_1.VERSION = "0.7"
SHX27_1 = {}
function SHX28_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = print
  SHX3_2 = string
  SHX3_2 = SHX3_2.format
  SHX4_2 = "<?%s %s?>"
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX27_1.pi = SHX28_1
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = print
  SHX2_2 = string
  SHX2_2 = SHX2_2.format
  SHX3_2 = "<!-- %s -->"
  SHX4_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
SHX27_1.comment = SHX28_1
function SHX28_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = io
  SHX3_2 = SHX3_2.write
  SHX4_2 = "<"
  SHX3_2(SHX4_2)
  if SHX2_2 then
    SHX3_2 = io
    SHX3_2 = SHX3_2.write
    SHX4_2 = SHX2_2
    SHX5_2 = ":"
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = io
  SHX3_2 = SHX3_2.write
  SHX4_2 = SHX0_2
  SHX3_2(SHX4_2)
  if SHX1_2 then
    SHX3_2 = io
    SHX3_2 = SHX3_2.write
    SHX4_2 = " (ns='"
    SHX5_2 = SHX1_2
    SHX6_2 = "')"
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
  SHX3_2 = print
  SHX4_2 = ">"
  SHX3_2(SHX4_2)
end
SHX27_1.startElement = SHX28_1
function SHX28_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX4_2 = io
  SHX4_2 = SHX4_2.write
  SHX5_2 = "  "
  SHX4_2(SHX5_2)
  if SHX3_2 then
    SHX4_2 = io
    SHX4_2 = SHX4_2.write
    SHX5_2 = SHX3_2
    SHX6_2 = ":"
    SHX4_2(SHX5_2, SHX6_2)
  end
  SHX4_2 = io
  SHX4_2 = SHX4_2.write
  SHX5_2 = SHX0_2
  SHX6_2 = "="
  SHX7_2 = string
  SHX7_2 = SHX7_2.format
  SHX8_2 = "%q"
  SHX9_2 = SHX1_2
  SHX7_2, SHX8_2, SHX9_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  if SHX2_2 then
    SHX4_2 = io
    SHX4_2 = SHX4_2.write
    SHX5_2 = " (ns='"
    SHX6_2 = SHX2_2
    SHX7_2 = "')"
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  end
  SHX4_2 = io
  SHX4_2 = SHX4_2.write
  SHX5_2 = "\n"
  SHX4_2(SHX5_2)
end
SHX27_1.attribute = SHX28_1
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = print
  SHX2_2 = string
  SHX2_2 = SHX2_2.format
  SHX3_2 = "  text: %q"
  SHX4_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
SHX27_1.text = SHX28_1
function SHX28_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = print
  SHX3_2 = string
  SHX3_2 = SHX3_2.format
  SHX4_2 = "</%s>"
  SHX5_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
SHX27_1.closeElement = SHX28_1
SHX26_1._call = SHX27_1
SHX10_1 = SHX26_1
function SHX26_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = {}
  SHX3_2 = SHX1_2 or SHX3_2
  if not SHX1_2 then
    SHX3_2 = SHX0_2._call
  end
  SHX2_2._call = SHX3_2
  SHX3_2 = SHX10_1.parse
  SHX2_2.parse = SHX3_2
  return SHX2_2
end
SHX10_1.parser = SHX26_1
function SHX26_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2, SHX40_2, SHX41_2, SHX42_2
  if not SHX3_2 then
    SHX4_2 = {}
    SHX4_2.stripWhitespace = false
    SHX3_2 = SHX4_2
  end
  SHX4_2 = string
  SHX4_2 = SHX4_2.find
  SHX5_2 = string
  SHX5_2 = SHX5_2.sub
  SHX6_2 = string
  SHX6_2 = SHX6_2.gsub
  SHX7_2 = string
  SHX7_2 = SHX7_2.char
  SHX8_2 = table
  SHX8_2 = SHX8_2.insert
  SHX9_2 = table
  SHX9_2 = SHX9_2.remove
  SHX10_2 = table
  SHX10_2 = SHX10_2.concat
  SHX11_2 = nil
  SHX12_2 = nil
  SHX13_2 = nil
  SHX14_2 = nil
  SHX15_2 = nil
  SHX16_2 = nil
  SHX17_2 = table
  SHX17_2 = SHX17_2.unpack
  SHX18_2 = 1
  SHX19_2 = "text"
  SHX20_2 = 1
  SHX21_2 = {}
  SHX22_2 = {}
  SHX23_2 = nil
  SHX24_2 = {}
  SHX25_2 = {}
  SHX26_2 = {}
  SHX27_2 = 2047
  SHX28_2 = 192
  SHX26_2[1] = SHX27_2
  SHX26_2[2] = SHX28_2
  SHX27_2 = {}
  SHX28_2 = 65535
  SHX29_2 = 224
  SHX27_2[1] = SHX28_2
  SHX27_2[2] = SHX29_2
  SHX28_2 = {}
  SHX29_2 = 2097151
  SHX30_2 = 240
  SHX28_2[1] = SHX29_2
  SHX28_2[2] = SHX30_2
  SHX25_2[1] = SHX26_2
  SHX25_2[2] = SHX27_2
  SHX25_2[3] = SHX28_2
  function SHX26_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3
    if SHX0_3 < 128 then
      SHX1_3 = SHX7_2
      SHX2_3 = SHX0_3
      return SHX1_3(SHX2_3)
    end
    SHX1_3 = {}
    SHX2_3 = ipairs
    SHX3_3 = SHX25_2
    SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3)
    for SHX6_3, SHX7_3 in SHX2_3, SHX3_3, SHX4_3, SHX5_3 do
      SHX8_3 = SHX7_3[1]
      if SHX0_3 <= SHX8_3 then
        SHX8_3 = SHX6_3 + 1
        SHX9_3 = 2
        SHX10_3 = -1
        for SHX11_3 = SHX8_3, SHX9_3, SHX10_3 do
          SHX12_3 = SHX0_3 % 64
          SHX13_3 = SHX0_3 - SHX12_3
          SHX0_3 = SHX13_3 / 64
          SHX13_3 = SHX7_2
          SHX14_3 = 128 + SHX12_3
          SHX13_3 = SHX13_3(SHX14_3)
          SHX1_3[SHX11_3] = SHX13_3
        end
        SHX8_3 = SHX7_2
        SHX9_3 = SHX7_3[2]
        SHX9_3 = SHX9_3 + SHX0_3
        SHX8_3 = SHX8_3(SHX9_3)
        SHX1_3[1] = SHX8_3
        SHX8_3 = SHX10_2
        SHX9_3 = SHX1_3
        SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3 = SHX8_3(SHX9_3)
        return SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3
      end
    end
  end
  SHX27_2 = {}
  SHX27_2.lt = "<"
  SHX27_2.gt = ">"
  SHX27_2.amp = "&"
  SHX27_2.quot = "\""
  SHX27_2.apos = "'"
  function SHX28_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX3_3 = SHX27_2
    SHX3_3 = SHX3_3[SHX2_3]
    if not SHX3_3 then
      if "#" == SHX1_3 then
        SHX3_3 = SHX26_2
        SHX4_3 = tonumber
        SHX5_3 = "0"
        SHX6_3 = SHX2_3
        SHX5_3 = SHX5_3 .. SHX6_3
        SHX4_3, SHX5_3, SHX6_3 = SHX4_3(SHX5_3)
        SHX3_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3)
        if SHX3_3 then
          goto SHX_LABEL_17
        end
      end
      SHX3_3 = SHX0_3
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
    ::SHX_LABEL_17::
    return SHX3_3
  end
  function SHX29_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX1_3 = SHX6_2
    SHX2_3 = SHX0_3
    SHX3_3 = "(&(#?)([%d%a]+);)"
    SHX4_3 = SHX28_2
    return SHX1_3(SHX2_3, SHX3_3, SHX4_3)
  end
  function SHX30_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = SHX11_2
    SHX1_3 = SHX20_2
    if SHX0_3 > SHX1_3 then
      SHX0_3 = SHX0_2._call
      SHX0_3 = SHX0_3.text
      if SHX0_3 then
        SHX0_3 = SHX5_2
        SHX1_3 = SHX1_2
        SHX2_3 = SHX20_2
        SHX3_3 = SHX11_2
        SHX3_3 = SHX3_3 - 1
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
        SHX1_3 = SHX3_2.stripWhitespace
        if SHX1_3 and SHX0_3 then
          SHX1_3 = SHX6_2
          SHX2_3 = SHX0_3
          SHX3_3 = "^%s+"
          SHX4_3 = ""
          SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
          SHX0_3 = SHX1_3
          SHX1_3 = SHX6_2
          SHX2_3 = SHX0_3
          SHX3_3 = "%s+$"
          SHX4_3 = ""
          SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
          SHX0_3 = SHX1_3
          SHX1_3 = #SHX0_3
          if 0 == SHX1_3 then
            SHX0_3 = nil
          end
        end
        if SHX0_3 then
          SHX1_3 = SHX0_2._call
          SHX1_3 = SHX1_3.text
          SHX2_3 = SHX29_2
          SHX3_3 = SHX0_3
          SHX2_3, SHX3_3, SHX4_3 = SHX2_3(SHX3_3)
          SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        end
      end
    end
  end
  function SHX31_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = SHX4_2
    SHX1_3 = SHX1_2
    SHX2_3 = "^<%?([:%a_][:%w_.-]*) ?(.-)%?>"
    SHX3_3 = SHX18_2
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX14_2 = SHX3_3
    SHX13_2 = SHX2_3
    SHX12_2 = SHX1_3
    SHX11_2 = SHX0_3
    SHX0_3 = SHX11_2
    if SHX0_3 then
      SHX0_3 = SHX30_2
      SHX0_3()
      SHX0_3 = SHX0_2._call
      SHX0_3 = SHX0_3.pi
      if SHX0_3 then
        SHX0_3 = SHX0_2._call
        SHX0_3 = SHX0_3.pi
        SHX1_3 = SHX13_2
        SHX2_3 = SHX14_2
        SHX0_3(SHX1_3, SHX2_3)
      end
      SHX0_3 = SHX12_2
      SHX0_3 = SHX0_3 + 1
      SHX18_2 = SHX0_3
      SHX0_3 = SHX18_2
      SHX20_2 = SHX0_3
      SHX0_3 = true
      return SHX0_3
    end
  end
  function SHX32_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = SHX4_2
    SHX1_3 = SHX1_2
    SHX2_3 = "^<!%-%-(.-)%-%->"
    SHX3_3 = SHX18_2
    SHX0_3, SHX1_3, SHX2_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX13_2 = SHX2_3
    SHX12_2 = SHX1_3
    SHX11_2 = SHX0_3
    SHX0_3 = SHX11_2
    if SHX0_3 then
      SHX0_3 = SHX30_2
      SHX0_3()
      SHX0_3 = SHX0_2._call
      SHX0_3 = SHX0_3.comment
      if SHX0_3 then
        SHX0_3 = SHX0_2._call
        SHX0_3 = SHX0_3.comment
        SHX1_3 = SHX13_2
        SHX0_3(SHX1_3)
      end
      SHX0_3 = SHX12_2
      SHX0_3 = SHX0_3 + 1
      SHX18_2 = SHX0_3
      SHX0_3 = SHX18_2
      SHX20_2 = SHX0_3
      SHX0_3 = true
      return SHX0_3
    end
  end
  function SHX33_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    if "xml" == SHX0_3 then
      SHX1_3 = "http://www.w3.org/XML/1998/namespace"
      return SHX1_3
    end
    SHX1_3 = SHX24_2
    SHX1_3 = #SHX1_3
    SHX2_3 = 1
    SHX3_3 = -1
    for SHX4_3 = SHX1_3, SHX2_3, SHX3_3 do
      SHX5_3 = SHX24_2
      SHX5_3 = SHX5_3[SHX4_3]
      SHX5_3 = SHX5_3[SHX0_3]
      if SHX5_3 then
        SHX5_3 = SHX24_2
        SHX5_3 = SHX5_3[SHX4_3]
        SHX5_3 = SHX5_3[SHX0_3]
        return SHX5_3
      end
    end
    SHX1_3 = error
    SHX2_3 = string
    SHX2_3 = SHX2_3.format
    SHX3_3 = "Cannot find namespace for prefix %s"
    SHX4_3 = SHX0_3
    SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3, SHX4_3)
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
  end
  function SHX34_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = SHX4_2
    SHX1_3 = SHX1_2
    SHX2_3 = "^<([%a_][%w_.-]*)"
    SHX3_3 = SHX18_2
    SHX0_3, SHX1_3, SHX2_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX13_2 = SHX2_3
    SHX12_2 = SHX1_3
    SHX11_2 = SHX0_3
    SHX0_3 = SHX11_2
    if SHX0_3 then
      SHX0_3 = SHX21_2
      SHX0_3[2] = nil
      SHX0_3 = SHX21_2
      SHX0_3[3] = nil
      SHX0_3 = SHX30_2
      SHX0_3()
      SHX0_3 = SHX12_2
      SHX0_3 = SHX0_3 + 1
      SHX18_2 = SHX0_3
      SHX0_3 = SHX4_2
      SHX1_3 = SHX1_2
      SHX2_3 = "^:([%a_][%w_.-]*)"
      SHX3_3 = SHX18_2
      SHX0_3, SHX1_3, SHX2_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX14_2 = SHX2_3
      SHX12_2 = SHX1_3
      SHX11_2 = SHX0_3
      SHX0_3 = SHX11_2
      if SHX0_3 then
        SHX0_3 = SHX21_2
        SHX1_3 = SHX14_2
        SHX0_3[1] = SHX1_3
        SHX0_3 = SHX21_2
        SHX1_3 = SHX13_2
        SHX0_3[3] = SHX1_3
        SHX0_3 = SHX14_2
        SHX13_2 = SHX0_3
        SHX0_3 = SHX12_2
        SHX0_3 = SHX0_3 + 1
        SHX18_2 = SHX0_3
      else
        SHX0_3 = SHX21_2
        SHX1_3 = SHX13_2
        SHX0_3[1] = SHX1_3
        SHX0_3 = SHX24_2
        SHX0_3 = #SHX0_3
        SHX1_3 = 1
        SHX2_3 = -1
        for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
          SHX4_3 = SHX24_2
          SHX4_3 = SHX4_3[SHX3_3]
          SHX4_3 = SHX4_3["!"]
          if SHX4_3 then
            SHX4_3 = SHX21_2
            SHX5_3 = SHX24_2
            SHX5_3 = SHX5_3[SHX3_3]
            SHX5_3 = SHX5_3["!"]
            SHX4_3[2] = SHX5_3
            break
          end
        end
      end
      SHX0_3 = 0
      SHX23_2 = SHX0_3
      SHX0_3 = SHX8_2
      SHX1_3 = SHX24_2
      SHX2_3 = {}
      SHX0_3(SHX1_3, SHX2_3)
      SHX0_3 = true
      return SHX0_3
    end
  end
  function SHX35_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = SHX4_2
    SHX1_3 = SHX1_2
    SHX2_3 = "^%s+([:%a_][:%w_.-]*)%s*=%s*"
    SHX3_3 = SHX18_2
    SHX0_3, SHX1_3, SHX2_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX13_2 = SHX2_3
    SHX12_2 = SHX1_3
    SHX11_2 = SHX0_3
    SHX0_3 = SHX11_2
    if SHX0_3 then
      SHX0_3 = SHX12_2
      SHX0_3 = SHX0_3 + 1
      SHX15_2 = SHX0_3
      SHX0_3 = SHX4_2
      SHX1_3 = SHX1_2
      SHX2_3 = "^\"([^<\"]*)\""
      SHX3_3 = SHX15_2
      SHX0_3, SHX1_3, SHX2_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX14_2 = SHX2_3
      SHX12_2 = SHX1_3
      SHX11_2 = SHX0_3
      SHX0_3 = SHX11_2
      if SHX0_3 then
        SHX0_3 = SHX12_2
        SHX0_3 = SHX0_3 + 1
        SHX18_2 = SHX0_3
        SHX0_3 = SHX29_2
        SHX1_3 = SHX14_2
        SHX0_3 = SHX0_3(SHX1_3)
        SHX14_2 = SHX0_3
      else
        SHX0_3 = SHX4_2
        SHX1_3 = SHX1_2
        SHX2_3 = "^'([^<']*)'"
        SHX3_3 = SHX15_2
        SHX0_3, SHX1_3, SHX2_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
        SHX14_2 = SHX2_3
        SHX12_2 = SHX1_3
        SHX11_2 = SHX0_3
        SHX0_3 = SHX11_2
        if SHX0_3 then
          SHX0_3 = SHX12_2
          SHX0_3 = SHX0_3 + 1
          SHX18_2 = SHX0_3
          SHX0_3 = SHX29_2
          SHX1_3 = SHX14_2
          SHX0_3 = SHX0_3(SHX1_3)
          SHX14_2 = SHX0_3
        end
      end
    end
    SHX0_3 = SHX13_2
    if SHX0_3 then
      SHX0_3 = SHX14_2
      if SHX0_3 then
        SHX0_3 = {}
        SHX1_3 = SHX13_2
        SHX2_3 = SHX14_2
        SHX0_3[1] = SHX1_3
        SHX0_3[2] = SHX2_3
        SHX1_3 = string
        SHX1_3 = SHX1_3.match
        SHX2_3 = SHX13_2
        SHX3_3 = "^([^:]+):([^:]+)$"
        SHX1_3, SHX2_3 = SHX1_3(SHX2_3, SHX3_3)
        if SHX1_3 then
          if "xmlns" == SHX1_3 then
            SHX3_3 = SHX24_2
            SHX4_3 = #SHX3_3
            SHX3_3 = SHX24_2
            SHX3_3 = SHX3_3[SHX4_3]
            SHX4_3 = SHX14_2
            SHX3_3[SHX2_3] = SHX4_3
          else
            SHX0_3[1] = SHX2_3
            SHX0_3[4] = SHX1_3
          end
        else
          SHX3_3 = SHX13_2
          if "xmlns" == SHX3_3 then
            SHX3_3 = SHX24_2
            SHX4_3 = #SHX3_3
            SHX3_3 = SHX24_2
            SHX3_3 = SHX3_3[SHX4_3]
            SHX4_3 = SHX14_2
            SHX3_3["!"] = SHX4_3
            SHX3_3 = SHX21_2
            SHX4_3 = SHX14_2
            SHX3_3[2] = SHX4_3
          end
        end
        SHX3_3 = SHX23_2
        SHX3_3 = SHX3_3 + 1
        SHX23_2 = SHX3_3
        SHX4_3 = SHX23_2
        SHX3_3 = SHX22_2
        SHX3_3[SHX4_3] = SHX0_3
        SHX3_3 = true
        return SHX3_3
      end
    end
  end
  function SHX36_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = SHX4_2
    SHX1_3 = SHX1_2
    SHX2_3 = "^<!%[CDATA%[(.-)%]%]>"
    SHX3_3 = SHX18_2
    SHX0_3, SHX1_3, SHX2_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX13_2 = SHX2_3
    SHX12_2 = SHX1_3
    SHX11_2 = SHX0_3
    SHX0_3 = SHX11_2
    if SHX0_3 then
      SHX0_3 = SHX30_2
      SHX0_3()
      SHX0_3 = SHX0_2._call
      SHX0_3 = SHX0_3.text
      if SHX0_3 then
        SHX0_3 = SHX0_2._call
        SHX0_3 = SHX0_3.text
        SHX1_3 = SHX13_2
        SHX0_3(SHX1_3)
      end
      SHX0_3 = SHX12_2
      SHX0_3 = SHX0_3 + 1
      SHX18_2 = SHX0_3
      SHX0_3 = SHX18_2
      SHX20_2 = SHX0_3
      SHX0_3 = true
      return SHX0_3
    end
  end
  function SHX37_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX0_3 = SHX4_2
    SHX1_3 = SHX1_2
    SHX2_3 = "^%s*(/?)>"
    SHX3_3 = SHX18_2
    SHX0_3, SHX1_3, SHX2_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX13_2 = SHX2_3
    SHX12_2 = SHX1_3
    SHX11_2 = SHX0_3
    SHX0_3 = SHX11_2
    if SHX0_3 then
      SHX0_3 = "text"
      SHX19_2 = SHX0_3
      SHX0_3 = SHX12_2
      SHX0_3 = SHX0_3 + 1
      SHX18_2 = SHX0_3
      SHX0_3 = SHX18_2
      SHX20_2 = SHX0_3
      SHX0_3 = SHX21_2
      SHX0_3 = SHX0_3[3]
      if SHX0_3 then
        SHX0_3 = SHX21_2
        SHX1_3 = SHX33_2
        SHX2_3 = SHX21_2
        SHX2_3 = SHX2_3[3]
        SHX1_3 = SHX1_3(SHX2_3)
        SHX0_3[2] = SHX1_3
      end
      SHX0_3 = SHX0_2._call
      SHX0_3 = SHX0_3.startElement
      if SHX0_3 then
        SHX0_3 = SHX0_2._call
        SHX0_3 = SHX0_3.startElement
        SHX1_3 = SHX17_2
        SHX2_3 = SHX21_2
        SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3 = SHX1_3(SHX2_3)
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      end
      SHX0_3 = SHX0_2._call
      SHX0_3 = SHX0_3.attribute
      if SHX0_3 then
        SHX0_3 = 1
        SHX1_3 = SHX23_2
        SHX2_3 = 1
        for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
          SHX4_3 = SHX22_2
          SHX4_3 = SHX4_3[SHX3_3]
          SHX4_3 = SHX4_3[4]
          if SHX4_3 then
            SHX4_3 = SHX22_2
            SHX4_3 = SHX4_3[SHX3_3]
            SHX5_3 = SHX33_2
            SHX6_3 = SHX22_2
            SHX6_3 = SHX6_3[SHX3_3]
            SHX6_3 = SHX6_3[4]
            SHX5_3 = SHX5_3(SHX6_3)
            SHX4_3[3] = SHX5_3
          end
          SHX4_3 = SHX0_2._call
          SHX4_3 = SHX4_3.attribute
          SHX5_3 = SHX17_2
          SHX6_3 = SHX22_2
          SHX6_3 = SHX6_3[SHX3_3]
          SHX5_3, SHX6_3 = SHX5_3(SHX6_3)
          SHX4_3(SHX5_3, SHX6_3)
        end
      end
      SHX0_3 = SHX13_2
      if "/" == SHX0_3 then
        SHX0_3 = SHX9_2
        SHX1_3 = SHX24_2
        SHX0_3(SHX1_3)
        SHX0_3 = SHX0_2._call
        SHX0_3 = SHX0_3.closeElement
        if SHX0_3 then
          SHX0_3 = SHX0_2._call
          SHX0_3 = SHX0_3.closeElement
          SHX1_3 = SHX17_2
          SHX2_3 = SHX21_2
          SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3 = SHX1_3(SHX2_3)
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
        end
      end
      SHX0_3 = true
      return SHX0_3
    end
  end
  function SHX38_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = SHX4_2
    SHX1_3 = SHX1_2
    SHX2_3 = "^</([%a_][%w_.-]*)%s*>"
    SHX3_3 = SHX18_2
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX14_2 = SHX3_3
    SHX13_2 = SHX2_3
    SHX12_2 = SHX1_3
    SHX11_2 = SHX0_3
    SHX0_3 = SHX11_2
    if SHX0_3 then
      SHX0_3 = nil
      SHX16_2 = SHX0_3
      SHX0_3 = SHX24_2
      SHX0_3 = #SHX0_3
      SHX1_3 = 1
      SHX2_3 = -1
      for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
        SHX4_3 = SHX24_2
        SHX4_3 = SHX4_3[SHX3_3]
        SHX4_3 = SHX4_3["!"]
        if SHX4_3 then
          SHX4_3 = SHX24_2
          SHX4_3 = SHX4_3[SHX3_3]
          SHX4_3 = SHX4_3["!"]
          SHX16_2 = SHX4_3
          break
        end
      end
    else
      SHX0_3 = SHX4_2
      SHX1_3 = SHX1_2
      SHX2_3 = "^</([%a_][%w_.-]*):([%a_][%w_.-]*)%s*>"
      SHX3_3 = SHX18_2
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX13_2 = SHX3_3
      SHX14_2 = SHX2_3
      SHX12_2 = SHX1_3
      SHX11_2 = SHX0_3
      SHX0_3 = SHX11_2
      if SHX0_3 then
        SHX0_3 = SHX33_2
        SHX1_3 = SHX14_2
        SHX0_3 = SHX0_3(SHX1_3)
        SHX16_2 = SHX0_3
      end
    end
    SHX0_3 = SHX11_2
    if SHX0_3 then
      SHX0_3 = SHX30_2
      SHX0_3()
      SHX0_3 = SHX0_2._call
      SHX0_3 = SHX0_3.closeElement
      if SHX0_3 then
        SHX0_3 = SHX0_2._call
        SHX0_3 = SHX0_3.closeElement
        SHX1_3 = SHX13_2
        SHX2_3 = SHX16_2
        SHX0_3(SHX1_3, SHX2_3)
      end
      SHX0_3 = SHX12_2
      SHX0_3 = SHX0_3 + 1
      SHX18_2 = SHX0_3
      SHX0_3 = SHX18_2
      SHX20_2 = SHX0_3
      SHX0_3 = SHX9_2
      SHX1_3 = SHX24_2
      SHX0_3(SHX1_3)
      SHX0_3 = true
      return SHX0_3
    end
  end
  while true do
    SHX39_2 = #SHX1_2
    if not (SHX18_2 < SHX39_2) then
      break
    end
    if "text" == SHX19_2 then
      SHX39_2 = SHX31_2
      SHX39_2 = SHX39_2()
      if not SHX39_2 then
        SHX39_2 = SHX32_2
        SHX39_2 = SHX39_2()
        if not SHX39_2 then
          SHX39_2 = SHX36_2
          SHX39_2 = SHX39_2()
          if not SHX39_2 then
            SHX39_2 = SHX38_2
            SHX39_2 = SHX39_2()
            if not SHX39_2 then
              SHX39_2 = SHX34_2
              SHX39_2 = SHX39_2()
              if SHX39_2 then
                SHX19_2 = "attributes"
              else
                SHX39_2 = SHX4_2
                SHX40_2 = SHX1_2
                SHX41_2 = "^[^<]+"
                SHX42_2 = SHX18_2
                SHX39_2, SHX40_2 = SHX39_2(SHX40_2, SHX41_2, SHX42_2)
                SHX12_2 = SHX40_2
                SHX11_2 = SHX39_2
                SHX39_2 = SHX12_2 or SHX39_2
                if not SHX11_2 or not SHX12_2 then
                  SHX39_2 = SHX18_2
                end
                SHX18_2 = SHX39_2 + 1
              end
            end
          end
        end
      end
    elseif "attributes" == SHX19_2 then
      SHX39_2 = SHX35_2
      SHX39_2 = SHX39_2()
      if not SHX39_2 then
        SHX39_2 = SHX37_2
        SHX39_2 = SHX39_2()
        if not SHX39_2 then
          SHX39_2 = print
          SHX40_2 = "Unable to load VCF for "
          SHX41_2 = SHX2_2
          SHX42_2 = " (XML is broken)"
          SHX40_2 = SHX40_2 .. SHX41_2 .. SHX42_2
          SHX39_2(SHX40_2)
          break
        end
      end
    end
  end
end
SHX10_1.parse = SHX26_1
function SHX26_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  if not SHX3_2 then
    SHX4_2 = {}
    SHX3_2 = SHX4_2
  end
  SHX4_2 = SHX3_2.simple
  SHX4_2 = not SHX4_2
  SHX5_2 = table
  SHX5_2 = SHX5_2.insert
  SHX6_2 = table
  SHX6_2 = SHX6_2.remove
  SHX7_2 = {}
  SHX8_2 = {}
  SHX8_2.type = "document"
  SHX8_2.name = "#doc"
  SHX9_2 = {}
  SHX8_2.kids = SHX9_2
  SHX9_2 = SHX8_2
  SHX10_2 = SHX10_1
  SHX11_2 = SHX10_2
  SHX10_2 = SHX10_2.parser
  SHX12_2 = {}
  function SHX13_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX2_3 = {}
    SHX2_3.type = "element"
    SHX2_3.name = SHX0_3
    SHX3_3 = {}
    SHX2_3.kids = SHX3_3
    SHX3_3 = SHX4_2
    if SHX3_3 then
      SHX3_3 = {}
      if SHX3_3 then
        goto SHX_LABEL_16
      end
    end
    SHX3_3 = nil
    -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
    ::SHX_LABEL_16::
    SHX2_3.el = SHX3_3
    SHX3_3 = {}
    SHX2_3.attr = SHX3_3
    SHX2_3.nsURI = SHX1_3
    SHX3_3 = SHX4_2
    if SHX3_3 then
      SHX3_3 = SHX9_2
      if SHX3_3 then
        goto SHX_LABEL_28
      end
    end
    SHX3_3 = nil
    -- [FIX IF ERROR] Move ::SHX_LABEL_28:: outside nested blocks until all 'goto SHX_LABEL_28' can see it
    ::SHX_LABEL_28::
    SHX2_3.parent = SHX3_3
    SHX3_3 = SHX9_2
    SHX4_3 = SHX8_2
    if SHX3_3 == SHX4_3 then
      SHX3_3 = SHX8_2.root
      if SHX3_3 then
        SHX3_3 = error
        SHX4_3 = string
        SHX4_3 = SHX4_3.format
        SHX5_3 = "Encountered element '%s' when the document already has a root '%s' element"
        SHX6_3 = SHX0_3
        SHX7_3 = SHX8_2.root
        SHX7_3 = SHX7_3.name
        SHX4_3, SHX5_3, SHX6_3, SHX7_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3)
        SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      end
      SHX8_2.root = SHX2_3
    end
    SHX3_3 = SHX5_2
    SHX4_3 = SHX9_2.kids
    SHX5_3 = SHX2_3
    SHX3_3(SHX4_3, SHX5_3)
    SHX3_3 = SHX9_2.el
    if SHX3_3 then
      SHX3_3 = SHX5_2
      SHX4_3 = SHX9_2.el
      SHX5_3 = SHX2_3
      SHX3_3(SHX4_3, SHX5_3)
    end
    SHX9_2 = SHX2_3
    SHX3_3 = SHX5_2
    SHX4_3 = SHX7_2
    SHX5_3 = SHX2_3
    SHX3_3(SHX4_3, SHX5_3)
  end
  SHX12_2.startElement = SHX13_2
  function SHX13_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX3_3 = SHX9_2
    if SHX3_3 then
      SHX3_3 = SHX9_2.type
      if "element" == SHX3_3 then
        goto SHX_LABEL_15
      end
    end
    SHX3_3 = error
    SHX4_3 = string
    SHX4_3 = SHX4_3.format
    SHX5_3 = "Encountered an attribute %s=%s but I wasn't inside an element"
    SHX6_3 = SHX0_3
    SHX7_3 = SHX1_3
    SHX4_3, SHX5_3, SHX6_3, SHX7_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3)
    SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
    ::SHX_LABEL_15::
    SHX3_3 = {}
    SHX3_3.type = "attribute"
    SHX3_3.name = SHX0_3
    SHX3_3.nsURI = SHX2_3
    SHX3_3.value = SHX1_3
    SHX4_3 = SHX4_2
    if SHX4_3 then
      SHX4_3 = SHX9_2
      if SHX4_3 then
        goto SHX_LABEL_28
      end
    end
    SHX4_3 = nil
    -- [FIX IF ERROR] Move ::SHX_LABEL_28:: outside nested blocks until all 'goto SHX_LABEL_28' can see it
    ::SHX_LABEL_28::
    SHX3_3.parent = SHX4_3
    SHX4_3 = SHX4_2
    if SHX4_3 then
      SHX4_3 = SHX9_2.attr
      SHX4_3[SHX0_3] = SHX1_3
    end
    SHX4_3 = SHX5_2
    SHX5_3 = SHX9_2.attr
    SHX6_3 = SHX3_3
    SHX4_3(SHX5_3, SHX6_3)
  end
  SHX12_2.attribute = SHX13_2
  function SHX13_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX1_3 = SHX9_2.name
    if SHX1_3 == SHX0_3 then
      SHX1_3 = SHX9_2.type
      if "element" == SHX1_3 then
        goto SHX_LABEL_16
      end
    end
    SHX1_3 = error
    SHX2_3 = string
    SHX2_3 = SHX2_3.format
    SHX3_3 = "Received a close element notification for '%s' but was inside a '%s' %s"
    SHX4_3 = SHX0_3
    SHX5_3 = SHX9_2.name
    SHX6_3 = SHX9_2.type
    SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
    ::SHX_LABEL_16::
    SHX1_3 = SHX6_2
    SHX2_3 = SHX7_2
    SHX1_3(SHX2_3)
    SHX1_3 = SHX7_2
    SHX2_3 = #SHX1_3
    SHX1_3 = SHX7_2
    SHX1_3 = SHX1_3[SHX2_3]
    SHX9_2 = SHX1_3
  end
  SHX12_2.closeElement = SHX13_2
  function SHX13_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX1_3 = SHX9_2.type
    if "document" ~= SHX1_3 then
      SHX1_3 = SHX9_2.type
      if "element" ~= SHX1_3 then
        SHX1_3 = error
        SHX2_3 = string
        SHX2_3 = SHX2_3.format
        SHX3_3 = "Received a text notification '%s' but was inside a %s"
        SHX4_3 = SHX0_3
        SHX5_3 = SHX9_2.type
        SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3)
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      end
      SHX1_3 = SHX5_2
      SHX2_3 = SHX9_2.kids
      SHX3_3 = {}
      SHX3_3.type = "text"
      SHX3_3.name = "#text"
      SHX3_3.value = SHX0_3
      SHX4_3 = SHX4_2
      if SHX4_3 then
        SHX4_3 = SHX9_2
        if SHX4_3 then
          goto SHX_LABEL_29
        end
      end
      SHX4_3 = nil
      -- [FIX IF ERROR] Move ::SHX_LABEL_29:: outside nested blocks until all 'goto SHX_LABEL_29' can see it
      ::SHX_LABEL_29::
      SHX3_3.parent = SHX4_3
      SHX1_3(SHX2_3, SHX3_3)
    end
  end
  SHX12_2.text = SHX13_2
  function SHX13_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX1_3 = SHX5_2
    SHX2_3 = SHX9_2.kids
    SHX3_3 = {}
    SHX3_3.type = "comment"
    SHX3_3.name = "#comment"
    SHX3_3.value = SHX0_3
    SHX4_3 = SHX4_2
    if SHX4_3 then
      SHX4_3 = SHX9_2
      if SHX4_3 then
        goto SHX_LABEL_15
      end
    end
    SHX4_3 = nil
    -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
    ::SHX_LABEL_15::
    SHX3_3.parent = SHX4_3
    SHX1_3(SHX2_3, SHX3_3)
  end
  SHX12_2.comment = SHX13_2
  function SHX13_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX2_3 = SHX5_2
    SHX3_3 = SHX9_2.kids
    SHX4_3 = {}
    SHX4_3.type = "pi"
    SHX4_3.name = SHX0_3
    SHX4_3.value = SHX1_3
    SHX5_3 = SHX4_2
    if SHX5_3 then
      SHX5_3 = SHX9_2
      if SHX5_3 then
        goto SHX_LABEL_15
      end
    end
    SHX5_3 = nil
    -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
    ::SHX_LABEL_15::
    SHX4_3.parent = SHX5_3
    SHX2_3(SHX3_3, SHX4_3)
  end
  SHX12_2.pi = SHX13_2
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
  SHX12_2 = SHX10_2
  SHX11_2 = SHX10_2.parse
  SHX13_2 = SHX1_2
  SHX14_2 = SHX2_2
  SHX15_2 = SHX3_2
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  return SHX8_2
end
SHX10_1.dom = SHX26_1
SHX26_1 = RegisterNetEvent
SHX27_1 = "c3ca765ee5"
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  if SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isDevMode
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      SHX1_2 = ""
      SHX2_2 = pairs
      SHX3_2 = SHX12_1
      SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
      for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
        SHX8_2 = SHX1_2
        SHX9_2 = SHX6_2
        SHX10_2 = ": "
        SHX11_2 = SHX7_2
        SHX12_2 = "\n"
        SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2 .. SHX11_2 .. SHX12_2
        SHX1_2 = SHX8_2
      end
      if "" ~= SHX1_2 then
        SHX2_2 = CMG
        SHX2_2 = SHX2_2.showWarningMessage
        SHX3_2 = "CARDEV WARNINGS"
        SHX4_2 = SHX1_2
        SHX2_2(SHX3_2, SHX4_2)
      end
    end
  end
end
SHX26_1(SHX27_1, SHX28_1)
function SHX26_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX3_1
  if SHX2_2 then
    SHX2_2 = SHX3_1
    SHX2_2 = SHX2_2[SHX1_2]
    if SHX2_2 then
      goto SHX_LABEL_13
    end
  end
  SHX2_2 = ""
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX2_2 = string
  SHX2_2 = SHX2_2.format
  SHX3_2 = "ELS Setup: %s"
  SHX4_2 = DecorGetBool
  SHX5_2 = SHX0_2
  SHX6_2 = "c102c26beb"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  if SHX4_2 then
    SHX4_2 = "Yes"
    if SHX4_2 then
      goto SHX_LABEL_26
    end
  end
  SHX4_2 = "No"
  -- [FIX IF ERROR] Move ::SHX_LABEL_26:: outside nested blocks until all 'goto SHX_LABEL_26' can see it
  ::SHX_LABEL_26::
  return SHX2_2(SHX3_2, SHX4_2)
end
SHX27_1 = CMG
SHX27_1 = SHX27_1.registerDevMenuEntityEditor
SHX28_1 = "Fuel"
SHX29_1 = "vehicle"
SHX30_1 = SHX26_1
function SHX31_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX27_1(SHX28_1, SHX29_1, SHX30_1, SHX31_1)
