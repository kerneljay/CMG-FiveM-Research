-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1
SHX0_1 = false
SHX1_1 = CMG
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX0_1
  SHX0_2 = not SHX0_2
  SHX0_1 = SHX0_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = "enabled"
    if SHX0_2 then
      goto SHX_LABEL_11
    end
  end
  SHX0_2 = "disabled"
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX1_2 = print
  SHX2_2 = "[CMG] debug mode "
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX1_2(SHX2_2)
end
SHX1_1.toggleDebugMode = SHX2_1
SHX1_1 = CMG
function SHX2_1(...)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = print
    SHX1_2 = "[CMG DEBUG] "
    SHX2_2 = ...
    SHX0_2(SHX1_2, SHX2_2)
  end
end
SHX1_1.debugLog = SHX2_1
SHX1_1 = CMG
function SHX2_1(SHX0_2, ...)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_1
  if SHX1_2 then
    SHX1_2 = string
    SHX1_2 = SHX1_2.format
    SHX2_2 = "[CMG DEBUG : %s]"
    SHX3_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX2_2 = print
    SHX3_2 = SHX1_2
    SHX4_2 = ...
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX1_1.debugLog_export = SHX2_1
SHX1_1 = CMG
SHX1_1 = SHX1_1.registerCommand
SHX2_1 = "debugmode"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.toggleDebugMode
  SHX0_2()
end
SHX4_1 = false
SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX1_1 = exports
SHX2_1 = "debugLog"
function SHX3_1(...)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = GetInvokingResource
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.debugLog_export
  SHX2_2 = SHX0_2
  SHX3_2 = ...
  SHX1_2(SHX2_2, SHX3_2)
end
SHX1_1(SHX2_1, SHX3_1)
