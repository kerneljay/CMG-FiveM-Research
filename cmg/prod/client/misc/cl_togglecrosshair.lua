-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1
SHX0_1 = true
SHX1_1 = RegisterCommand
SHX2_1 = "togglecrosshair"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  SHX0_2 = not SHX0_2
  SHX0_1 = SHX0_2
end
SHX4_1 = false
SHX1_1(SHX2_1, SHX3_1, SHX4_1)
function SHX1_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  if not SHX0_2 then
    SHX0_2 = HideHudComponentThisFrame
    SHX1_2 = 14
    SHX0_2(SHX1_2)
  end
end
SHX2_1 = CMG
SHX2_1 = SHX2_1.createThreadOnTick
SHX3_1 = SHX1_1
SHX4_1 = "Crosshair Disabling"
SHX2_1(SHX3_1, SHX4_1)
