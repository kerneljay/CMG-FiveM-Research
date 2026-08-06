-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1
SHX0_1 = RageUI
function SHX1_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX3_2 = nil
  if not SHX2_2 then
    SHX4_2 = PlaySoundFrontend
    SHX5_2 = -1
    SHX6_2 = SHX1_2
    SHX7_2 = SHX0_2
    SHX8_2 = true
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  elseif not SHX3_2 then
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.CreateThread
    function SHX5_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = GetSoundId
      SHX0_3 = SHX0_3()
      SHX3_2 = SHX0_3
      SHX0_3 = PlaySoundFrontend
      SHX1_3 = SHX3_2
      SHX2_3 = SHX1_2
      SHX3_3 = SHX0_2
      SHX4_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      SHX0_3 = Citizen
      SHX0_3 = SHX0_3.Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
      SHX0_3 = StopSound
      SHX1_3 = SHX3_2
      SHX0_3(SHX1_3)
      SHX0_3 = ReleaseSoundId
      SHX1_3 = SHX3_2
      SHX0_3(SHX1_3)
      SHX0_3 = nil
      SHX3_2 = SHX0_3
    end
    SHX4_2(SHX5_2)
  end
end
SHX0_1.PlaySound = SHX1_1
