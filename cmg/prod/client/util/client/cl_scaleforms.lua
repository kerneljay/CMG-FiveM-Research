-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1
function SHX0_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = {}
  SHX2_2 = RequestScaleformMovie
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  while true do
    SHX3_2 = HasScaleformMovieLoaded
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  function SHX3_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX2_3 = BeginScaleformMovieMethod
    SHX3_3 = SHX2_2
    SHX4_3 = SHX0_3
    SHX2_3(SHX3_3, SHX4_3)
    SHX2_3 = 1
    SHX3_3 = #SHX1_3
    SHX4_3 = 1
    for SHX5_3 = SHX2_3, SHX3_3, SHX4_3 do
      SHX6_3 = SHX1_3[SHX5_3]
      SHX7_3 = type
      SHX8_3 = SHX6_3
      SHX7_3 = SHX7_3(SHX8_3)
      if "string" == SHX7_3 then
        SHX7_3 = BeginTextCommandScaleformString
        SHX8_3 = "STRING"
        SHX7_3(SHX8_3)
        SHX7_3 = AddTextComponentSubstringPlayerName
        SHX8_3 = SHX6_3
        SHX7_3(SHX8_3)
        SHX7_3 = EndTextCommandScaleformString
        SHX7_3()
      else
        SHX7_3 = type
        SHX8_3 = SHX6_3
        SHX7_3 = SHX7_3(SHX8_3)
        if "number" == SHX7_3 then
          SHX7_3 = ScaleformMovieMethodAddParamInt
          SHX8_3 = SHX6_3
          SHX7_3(SHX8_3)
        else
          SHX7_3 = type
          SHX8_3 = SHX6_3
          SHX7_3 = SHX7_3(SHX8_3)
          if "boolean" == SHX7_3 then
            SHX7_3 = ScaleformMovieMethodAddParamBool
            SHX8_3 = SHX6_3
            SHX7_3(SHX8_3)
          else
            SHX7_3 = type
            SHX8_3 = SHX6_3
            SHX7_3 = SHX7_3(SHX8_3)
            if "float" == SHX7_3 then
              SHX7_3 = ScaleformMovieMethodAddParamFloat
              SHX8_3 = SHX6_3
              SHX7_3(SHX8_3)
            else
              SHX7_3 = type
              SHX8_3 = SHX6_3
              SHX7_3 = SHX7_3(SHX8_3)
              if "function" == SHX7_3 then
                SHX7_3 = SHX6_3
                SHX7_3()
              end
            end
          end
        end
      end
    end
    SHX2_3 = EndScaleformMovieMethod
    SHX2_3()
  end
  SHX1_2.RunFunction = SHX3_2
  function SHX3_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
    if SHX0_3 then
      SHX1_3 = DrawScaleformMovie
      SHX2_3 = SHX2_2
      SHX3_3 = SHX0_3.x
      SHX4_3 = SHX0_3.y
      SHX5_3 = 0.8
      SHX6_3 = 0.8
      SHX7_3 = 255
      SHX8_3 = 255
      SHX9_3 = 255
      SHX10_3 = 255
      SHX11_3 = 0
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
    else
      SHX1_3 = DrawScaleformMovieFullscreen
      SHX2_3 = SHX2_2
      SHX3_3 = 255
      SHX4_3 = 255
      SHX5_3 = 255
      SHX6_3 = 255
      SHX7_3 = 0
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    end
  end
  SHX1_2.Render2D = SHX3_2
  function SHX3_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3
    SHX3_3 = DrawScaleformMovie_3dSolid
    SHX4_3 = SHX2_2
    SHX5_3 = SHX0_3.x
    SHX6_3 = SHX0_3.y
    SHX7_3 = SHX0_3.z
    SHX8_3 = SHX1_3.x
    SHX9_3 = SHX1_3.y
    SHX10_3 = SHX1_3.z
    SHX11_3 = 2.0
    SHX12_3 = 2.0
    SHX13_3 = 1.0
    SHX14_3 = SHX2_3.x
    SHX15_3 = SHX2_3.x
    SHX16_3 = SHX2_3.x
    SHX17_3 = 2
    SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
  end
  SHX1_2.Render3D = SHX3_2
  SHX1_2.Handle = SHX2_2
  return SHX1_2
end
Scaleform = SHX0_1
