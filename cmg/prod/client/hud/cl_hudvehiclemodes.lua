-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1
SHX0_1 = nil
SHX1_1 = CMG
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isWheelchairVehicle
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = "wheelchair"
    return SHX1_2
  end
  SHX1_2 = GetVehicleClass
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX0_1
  if "drift" ~= SHX2_2 then
    SHX2_2 = SHX0_1
    if "sport" ~= SHX2_2 then
      goto SHX_LABEL_32
    end
  end
  SHX2_2 = SHX0_1
  if "drift" == SHX2_2 then
    SHX2_2 = SHX0_1
    SHX3_2 = "mode"
    SHX2_2 = SHX2_2 .. SHX3_2
    return SHX2_2
  end
  SHX2_2 = SHX0_1
  if "sport" == SHX2_2 then
    SHX2_2 = SHX0_1
    SHX3_2 = "mode"
    SHX2_2 = SHX2_2 .. SHX3_2
    return SHX2_2
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_32:: outside nested blocks until all 'goto SHX_LABEL_32' can see it
  ::SHX_LABEL_32::
  if 13 == SHX1_2 then
    SHX2_2 = "bike"
    return SHX2_2
  elseif 16 == SHX1_2 or 15 == SHX1_2 then
    SHX2_2 = "plane"
    return SHX2_2
  else
    SHX2_2 = "electric"
    return SHX2_2
  end
end
SHX1_1.getHudVehicleType = SHX2_1
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = ForceVehicleEngineAudio
  SHX2_2 = SHX0_2
  SHX3_2 = "SULTANRS"
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = ForceVehicleEngineAudio
  SHX2_2 = SHX0_2
  SHX3_2 = nil
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SetDriftTyresEnabled
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
EnableDriftMode = SHX3_1
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SetDriftTyresEnabled
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
end
DisableDriftMode = SHX3_1
SHX3_1 = CMG
SHX3_1 = SHX3_1.uiRegisterCallback
SHX4_1 = "setVehicleMode"
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX0_2.type
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerVehicle
  SHX2_2, SHX3_2 = SHX2_2()
  if 0 == SHX2_2 or not SHX3_2 then
    SHX4_2 = false
    return SHX4_2
  end
  SHX4_2 = SHX0_1
  if SHX4_2 == SHX1_2 then
    SHX4_2 = false
    return SHX4_2
  end
  if "default" == SHX1_2 then
    SHX4_2 = SHX0_1
    if "drift" == SHX4_2 then
      SHX4_2 = DisableDriftMode
      SHX5_2 = SHX2_2
      SHX4_2(SHX5_2)
    end
    SHX4_2 = SHX0_1
    if "sport" == SHX4_2 then
      SHX4_2 = SHX2_1
      SHX5_2 = SHX2_2
      SHX4_2(SHX5_2)
    end
    SHX0_1 = SHX1_2
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getHudVehicleType
    SHX5_2 = SHX2_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.sendHudNuiMessage
    SHX6_2 = "IN_VEHICLE"
    SHX7_2 = {}
    SHX7_2.value = true
    SHX7_2.type = SHX4_2
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = true
    return SHX5_2
  else
    if "sport" == SHX1_2 then
      SHX4_2 = SHX0_1
      if "drift" == SHX4_2 then
        SHX4_2 = DisableDriftMode
        SHX5_2 = SHX2_2
        SHX4_2(SHX5_2)
      end
      SHX4_2 = SHX1_1
      SHX5_2 = SHX2_2
      SHX4_2(SHX5_2)
    end
    if "drift" == SHX1_2 then
      SHX4_2 = SHX0_1
      if "sport" == SHX4_2 then
        SHX4_2 = SHX2_1
        SHX5_2 = SHX2_2
        SHX4_2(SHX5_2)
      end
      SHX4_2 = EnableDriftMode
      SHX5_2 = SHX2_2
      SHX4_2(SHX5_2)
    end
    SHX0_1 = SHX1_2
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getHudVehicleType
    SHX5_2 = SHX2_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.sendHudNuiMessage
    SHX6_2 = "IN_VEHICLE"
    SHX7_2 = {}
    SHX7_2.value = true
    SHX7_2.type = SHX4_2
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = true
    return SHX5_2
  end
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = CMG
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  return SHX0_2
end
SHX3_1.getVehicleMode = SHX4_1
SHX3_1 = CMG
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX0_1
  if "drift" == SHX1_2 then
    SHX1_2 = DisableDriftMode
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
  SHX1_2 = SHX0_1
  if "sport" == SHX1_2 then
    SHX1_2 = SHX2_1
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
  SHX1_2 = nil
  SHX0_1 = SHX1_2
end
SHX3_1.resetVehicleMode = SHX4_1
