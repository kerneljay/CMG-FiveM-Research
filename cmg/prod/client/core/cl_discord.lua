-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1
SHX0_1 = Citizen
SHX0_1 = SHX0_1.CreateThread
function SHX1_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SetDiscordRichPresenceAction
  if SHX0_2 then
    SHX0_2 = SetDiscordRichPresenceAction
    SHX1_2 = 0
    SHX2_2 = "Join CMG"
    SHX3_2 = "fivem://connect/s1.cmg.city"
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  end
end
SHX0_1(SHX1_1)
