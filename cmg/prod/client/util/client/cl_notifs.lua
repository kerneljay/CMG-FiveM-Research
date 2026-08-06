-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1
SHX0_1 = {}
SHX1_1 = {}
SHX1_1.top = 10
SHX1_1.right = 1450
SHX0_1["top-left"] = SHX1_1
SHX1_1 = {}
SHX1_1.top = 1000
SHX1_1.right = 1450
SHX0_1["bottom-left"] = SHX1_1
SHX1_1 = {}
SHX1_1.top = 10
SHX1_1.right = 10
SHX0_1["top-right"] = SHX1_1
SHX1_1 = {}
SHX1_1.top = 1000
SHX1_1.right = 10
SHX0_1["bottom-right"] = SHX1_1
SHX1_1 = {}
SHX1_1.success = "fas fa-check"
SHX1_1.bad = "fas fa-times"
function SHX2_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SendNUIMessage
  SHX3_2 = {}
  SHX3_2.show = true
  SHX3_2.options = SHX0_2
  SHX5_2 = SHX0_2.pos
  SHX4_2 = SHX0_1
  SHX4_2 = SHX4_2[SHX5_2]
  SHX3_2.pos = SHX4_2
  SHX5_2 = SHX0_2.icon
  SHX4_2 = SHX1_1
  SHX4_2 = SHX4_2[SHX5_2]
  if not SHX4_2 then
    SHX4_2 = ""
  end
  SHX3_2.icon = SHX4_2
  SHX4_2 = SHX1_2 / 1000
  SHX3_2.delaySeconds = SHX4_2
  SHX2_2(SHX3_2)
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = SHX1_2 or SHX3_2
  if not SHX1_2 then
    SHX3_2 = 15000
  end
  SHX2_2(SHX3_2)
  SHX2_2 = SendNUIMessage
  SHX3_2 = {}
  SHX3_2.show = false
  SHX3_2.options = SHX0_2
  SHX2_2(SHX3_2)
end
SHX3_1 = exports
SHX4_1 = "sendNotification"
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX2_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "371eab1d3a"
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX2_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX3_1(SHX4_1, SHX5_1)
