-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1
SHX0_1 = nil
SHX1_1 = nil
SHX2_1 = nil
SHX3_1 = nil
SHX4_1 = Citizen
SHX4_1 = SHX4_1.CreateThread
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerPed
    SHX0_2 = SHX0_2()
    SHX1_2 = SetPedCanLosePropsOnDamage
    SHX2_2 = SHX0_2
    SHX3_2 = false
    SHX4_2 = 0
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = GetPedPropIndex
    SHX2_2 = SHX0_2
    SHX3_2 = 0
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if -1 ~= SHX1_2 then
      SHX2_2 = SHX0_1
      if SHX1_2 ~= SHX2_2 then
        SHX0_1 = SHX1_2
      end
      SHX2_2 = GetPedPropTextureIndex
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.getPlayerPed
      SHX3_2 = SHX3_2()
      SHX4_2 = 0
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      SHX3_2 = SHX1_1
      if SHX2_2 ~= SHX3_2 then
        SHX1_1 = SHX2_2
      end
    end
    SHX2_2 = GetPedPropIndex
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerPed
    SHX3_2 = SHX3_2()
    SHX4_2 = 1
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX3_2 = SHX2_1
    if SHX2_2 ~= SHX3_2 and -1 ~= SHX2_2 then
      SHX2_1 = SHX2_2
    end
    SHX3_2 = GetPedDrawableVariation
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getPlayerPed
    SHX4_2 = SHX4_2()
    SHX5_2 = 1
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX4_2 = SHX3_1
    if SHX3_2 ~= SHX4_2 and 0 ~= SHX3_2 then
      SHX3_1 = SHX3_2
    end
    SHX4_2 = Wait
    SHX5_2 = 1000
    SHX4_2(SHX5_2)
  end
end
SHX4_1(SHX5_1)
SHX4_1 = RegisterCommand
SHX5_1 = "putonhat"
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = SHX1_1
    if SHX0_2 then
      goto SHX_LABEL_8
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX0_2 = SetPedPropIndex
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = 0
  SHX3_2 = SHX0_1
  SHX4_2 = SHX1_1
  SHX5_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX7_1 = false
SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX4_1 = RegisterCommand
SHX5_1 = "putonglasses"
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX2_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = SetPedPropIndex
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = 1
  SHX3_2 = SHX2_1
  SHX4_2 = 0
  SHX5_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX7_1 = false
SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX4_1 = RegisterCommand
SHX5_1 = "putonmask"
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX3_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = SetPedComponentVariation
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = 1
  SHX3_2 = SHX3_1
  SHX4_2 = 0
  SHX5_2 = 2
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX7_1 = false
SHX4_1(SHX5_1, SHX6_1, SHX7_1)
