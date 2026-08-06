-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = 10000
SHX4_1 = 0
SHX5_1 = CMG
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX0_1
  SHX1_2[SHX0_2] = true
end
SHX5_1.setStreamFilePreActivatedClient = SHX6_1
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    return
  end
  SHX1_2 = SHX1_1
  SHX1_2[SHX0_2] = true
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = GetVehiclePedIsIn
  SHX3_2 = SHX1_2
  SHX4_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if 0 ~= SHX2_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getVehicleIdFromModel
    SHX4_2 = GetEntityModel
    SHX5_2 = SHX2_2
    SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2(SHX5_2)
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    if SHX3_2 then
      SHX4_2 = TriggerServerEvent
      SHX5_2 = "02b1617ec9"
      SHX6_2 = SHX3_2
      SHX7_2 = {}
      SHX8_2 = SHX0_2
      SHX7_2[1] = SHX8_2
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    end
  end
  SHX3_2 = GetGameTimer
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX4_1
  SHX4_2 = SHX3_2 - SHX4_2
  SHX5_2 = SHX3_1
  if SHX4_2 < SHX5_2 then
    return
  end
  SHX4_1 = SHX3_2
  SHX4_2 = tCMG
  SHX4_2 = SHX4_2.notify
  SHX5_2 = "~y~This mod will be available from the next server restart."
  SHX4_2(SHX5_2)
end
SHX6_1 = CMG
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if not SHX0_2 then
    return
  end
  SHX1_2 = SHX0_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    return
  end
  SHX1_2 = SHX5_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX6_1.requestStreamFileClient = SHX7_1
SHX6_1 = CMG
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.insert
  SHX2_2 = SHX2_1
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX6_1.registerStreamFileLoadedCallback = SHX7_1
