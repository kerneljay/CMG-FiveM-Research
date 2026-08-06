-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1
SHX0_1 = false
SHX1_1 = 0
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = BeginScaleformMovieMethod
  SHX1_2 = SHX1_1
  SHX2_2 = "SETUP_HEALTH_ARMOUR"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = ScaleformMovieMethodAddParamInt
  SHX1_2 = 3
  SHX0_2(SHX1_2)
  SHX0_2 = EndScaleformMovieMethod
  SHX0_2()
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 20
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isUsingKeyboard
    SHX1_2 = 2
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = SHX0_1
      if not SHX0_2 then
        SHX0_2 = SetRadarZoom
        SHX1_2 = 1350
        SHX0_2(SHX1_2)
        SHX0_2 = GetGameTimer
        SHX0_2 = SHX0_2()
        LastGameTimer = SHX0_2
        SHX0_2 = true
        SHX0_1 = SHX0_2
      else
        SHX0_2 = SHX0_1
        if SHX0_2 then
          SHX0_2 = SetRadarZoom
          SHX1_2 = 1050
          SHX0_2(SHX1_2)
          LastGameTimer = 0
          SHX0_2 = false
          SHX0_1 = SHX0_2
        end
      end
    end
  end
end
SHX3_1 = CMG
SHX3_1 = SHX3_1.createThreadOnTick
SHX4_1 = SHX2_1
SHX5_1 = "Minimap"
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = Citizen
SHX3_1 = SHX3_1.CreateThread
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = RequestScaleformMovie
  SHX1_2 = "minimap"
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_1 = SHX0_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isCallManagerOpen
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = SetBigmapActive
      SHX1_2 = false
      SHX2_2 = false
      SHX0_2(SHX1_2, SHX2_2)
    end
    SHX0_2 = Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
SHX3_1(SHX4_1)
