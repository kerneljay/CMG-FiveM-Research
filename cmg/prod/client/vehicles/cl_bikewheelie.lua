-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1
SHX0_1 = false
function SHX1_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = SHX0_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2, SHX1_2 = SHX0_2()
  if 0 == SHX0_2 or not SHX1_2 then
    return
  end
  SHX2_2 = GetEntityModel
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = IsThisModelABicycle
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = IsThisModelABike
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if not SHX3_2 then
      goto SHX_LABEL_33
    end
  end
  SHX3_2 = GetEntitySpeed
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_2 = SHX3_2 * 3.6
  -- [FIX IF ERROR] Move ::SHX_LABEL_33:: outside nested blocks until all 'goto SHX_LABEL_33' can see it
  ::SHX_LABEL_33::
  if SHX3_2 < 10.0 then
    return
  end
  SHX3_2 = IsControlJustReleased
  SHX4_2 = 0
  SHX5_2 = 172
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.loadAnimDict
    SHX4_2 = "rcmextreme2atv"
    SHX3_2(SHX4_2)
    SHX3_2 = TaskPlayAnim
    SHX4_2 = PlayerPedId
    SHX4_2 = SHX4_2()
    SHX5_2 = "rcmextreme2atv"
    SHX6_2 = "idle_e"
    SHX7_2 = -1
    SHX8_2 = -1
    SHX9_2 = -1
    SHX10_2 = 32
    SHX11_2 = 0
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX3_2 = RemoveAnimDict
    SHX4_2 = "rcmextreme2atv"
    SHX3_2(SHX4_2)
  end
  SHX3_2 = IsControlJustReleased
  SHX4_2 = 0
  SHX5_2 = 173
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.loadAnimDict
    SHX4_2 = "rcmextreme2atv"
    SHX3_2(SHX4_2)
    SHX3_2 = TaskPlayAnim
    SHX4_2 = PlayerPedId
    SHX4_2 = SHX4_2()
    SHX5_2 = "rcmextreme2atv"
    SHX6_2 = "idle_d"
    SHX7_2 = -1
    SHX8_2 = -1
    SHX9_2 = -1
    SHX10_2 = 32
    SHX11_2 = 0
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX3_2 = RemoveAnimDict
    SHX4_2 = "rcmextreme2atv"
    SHX3_2(SHX4_2)
  end
  SHX3_2 = IsControlJustReleased
  SHX4_2 = 0
  SHX5_2 = 174
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.loadAnimDict
    SHX4_2 = "rcmextreme2atv"
    SHX3_2(SHX4_2)
    SHX3_2 = TaskPlayAnim
    SHX4_2 = PlayerPedId
    SHX4_2 = SHX4_2()
    SHX5_2 = "rcmextreme2atv"
    SHX6_2 = "idle_b"
    SHX7_2 = -1
    SHX8_2 = -1
    SHX9_2 = -1
    SHX10_2 = 32
    SHX11_2 = 0
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX3_2 = RemoveAnimDict
    SHX4_2 = "rcmextreme2atv"
    SHX3_2(SHX4_2)
  end
  SHX3_2 = IsControlJustReleased
  SHX4_2 = 0
  SHX5_2 = 175
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.loadAnimDict
    SHX4_2 = "rcmextreme2atv"
    SHX3_2(SHX4_2)
    SHX3_2 = TaskPlayAnim
    SHX4_2 = PlayerPedId
    SHX4_2 = SHX4_2()
    SHX5_2 = "rcmextreme2atv"
    SHX6_2 = "idle_c"
    SHX7_2 = -1
    SHX8_2 = -1
    SHX9_2 = -1
    SHX10_2 = 32
    SHX11_2 = 0
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX3_2 = RemoveAnimDict
    SHX4_2 = "rcmextreme2atv"
    SHX3_2(SHX4_2)
  end
end
SHX2_1 = CMG
SHX2_1 = SHX2_1.createThreadOnTick
SHX3_1 = SHX1_1
SHX4_1 = "Bike Wheelie"
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = CMG
SHX2_1 = SHX2_1.registerCommand
SHX3_1 = "+bikewheelie"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = true
  SHX0_1 = SHX0_2
end
SHX5_1 = false
SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX2_1 = CMG
SHX2_1 = SHX2_1.registerCommand
SHX3_1 = "-bikewheelie"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX0_1 = SHX0_2
end
SHX5_1 = false
SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX2_1 = RegisterKeyMapping
SHX3_1 = "+bikewheelie"
SHX4_1 = "Key to hold to perform wheelie binds"
SHX5_1 = "KEYBOARD"
SHX6_1 = "LSHIFT"
SHX2_1(SHX3_1, SHX4_1, SHX5_1, SHX6_1)
