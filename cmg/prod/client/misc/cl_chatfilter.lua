-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1
SHX0_1 = false
SHX1_1 = 0
SHX2_1 = RegisterNetEvent
SHX3_1 = "17b65bec14"
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = SHX0_1
  SHX2_2 = not SHX2_2
  SHX0_1 = SHX2_2
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 10
  SHX2_2(SHX3_2)
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2 + 1
  SHX1_1 = SHX2_2
  SHX2_2 = SHX1_1
  if SHX2_2 > 2 then
    SHX2_2 = 2
    SHX1_1 = SHX2_2
  end
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX3_2 = RequestScaleformMovie
  SHX4_2 = "mp_big_message_freemode"
  SHX3_2 = SHX3_2(SHX4_2)
  while true do
    SHX4_2 = HasScaleformMovieLoaded
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      break
    end
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  while true do
    SHX4_2 = GetGameTimer
    SHX4_2 = SHX4_2()
    SHX4_2 = SHX4_2 - SHX2_2
    SHX5_2 = SHX0_2 * 1000
    if not (SHX4_2 < SHX5_2) then
      break
    end
    SHX4_2 = SHX0_1
    if not SHX4_2 then
      SHX4_2 = SHX1_1
      if 2 ~= SHX4_2 then
        break
      end
    end
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
    SHX4_2 = BeginScaleformMovieMethod
    SHX5_2 = SHX3_2
    SHX6_2 = "SHOW_SHARD_WASTED_MP_MESSAGE"
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = _ENV
    SHX5_2 = "ScaleformMovieMethodAddParamTextureNameString"
    SHX4_2 = SHX4_2[SHX5_2]
    SHX5_2 = "~r~WARNING"
    SHX4_2(SHX5_2)
    SHX4_2 = _ENV
    SHX5_2 = "ScaleformMovieMethodAddParamTextureNameString"
    SHX4_2 = SHX4_2[SHX5_2]
    SHX5_2 = SHX1_2
    SHX4_2(SHX5_2)
    SHX4_2 = ScaleformMovieMethodAddParamInt
    SHX5_2 = 5
    SHX4_2(SHX5_2)
    SHX4_2 = EndScaleformMovieMethod
    SHX4_2()
    SHX4_2 = DrawScaleformMovieFullscreen
    SHX5_2 = SHX3_2
    SHX6_2 = 255
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 0
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  end
end
SHX2_1(SHX3_1, SHX4_1)
