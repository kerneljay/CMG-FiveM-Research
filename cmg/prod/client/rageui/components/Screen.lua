-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1
function SHX0_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = BusyspinnerIsOn
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    SHX2_2 = BusyspinnerOff
    SHX2_2()
  end
  if nil == SHX0_2 then
    SHX2_2 = BeginTextCommandBusyspinnerOn
    SHX3_2 = nil
    SHX2_2(SHX3_2)
  else
    SHX2_2 = BeginTextCommandBusyspinnerOn
    SHX3_2 = "STRING"
    SHX2_2(SHX3_2)
    SHX2_2 = AddTextComponentSubstringPlayerName
    SHX3_2 = SHX0_2
    SHX2_2(SHX3_2)
  end
  SHX2_2 = EndTextCommandBusyspinnerOn
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
end
LoadingPrompt = SHX0_1
function SHX0_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = BusyspinnerIsOn
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = BusyspinnerOff
    SHX0_2()
  end
end
LoadingPromptHide = SHX0_1
