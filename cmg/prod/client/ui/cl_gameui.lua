-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1
function SHX0_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 3
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 4
  SHX0_2(SHX1_2)
end
SHX1_1 = CMG
SHX1_1 = SHX1_1.createThreadOnTick
SHX2_1 = SHX0_1
SHX3_1 = "Street Names"
SHX1_1(SHX2_1, SHX3_1)
