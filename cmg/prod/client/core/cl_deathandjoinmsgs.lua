-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1
SHX0_1 = RegisterCommand
SHX1_1 = "togglekillfeed"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isDisplayVisible
  SHX1_2 = "killfeed"
  SHX2_2 = "user"
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hideDisplay
    SHX1_2 = "killfeed"
    SHX2_2 = "user"
    SHX0_2(SHX1_2, SHX2_2)
  else
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.showDisplay
    SHX1_2 = "killfeed"
    SHX2_2 = "user"
    SHX0_2(SHX1_2, SHX2_2)
  end
end
SHX3_1 = false
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = AddEventHandler
SHX1_1 = "CMG:onDisplayVisiblityChange"
function SHX2_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  if "killfeed" == SHX0_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.uiSendMessage
    SHX3_2 = {}
    if SHX1_2 then
      SHX4_2 = "KILLFEED_ENABLE"
      if SHX4_2 then
        goto SHX_LABEL_13
      end
    end
    SHX4_2 = "KILLFEED_DISABLE"
    -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
    ::SHX_LABEL_13::
    SHX3_2.type = SHX4_2
    SHX2_2(SHX3_2)
  end
end
SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = RegisterNetEvent
SHX1_1 = "4c1a6c17f7"
function SHX2_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX10_2 = GetIsLoadingScreenActive
  SHX10_2 = SHX10_2()
  if not SHX10_2 then
    SHX10_2 = CMG
    SHX10_2 = SHX10_2.isDisplayVisible
    SHX11_2 = "killfeed"
    SHX10_2 = SHX10_2(SHX11_2)
    if SHX10_2 then
      goto SHX_LABEL_12
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX10_2 = "other"
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.getClientUserId
  SHX11_2 = SHX11_2()
  if SHX8_2 and SHX8_2 == SHX11_2 or SHX9_2 and SHX9_2 == SHX11_2 then
    SHX10_2 = "self"
  end
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.generateUUID
  SHX13_2 = "kill"
  SHX14_2 = 10
  SHX15_2 = "alphabet"
  SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2)
  SHX13_2 = CMG
  SHX13_2 = SHX13_2.uiSendMessage
  SHX14_2 = {}
  SHX14_2.type = "KILLFEED_ADD_KILL"
  SHX15_2 = {}
  SHX15_2.type = "addKill"
  SHX15_2.victim = SHX1_2
  SHX15_2.killer = SHX0_2
  SHX15_2.weapon = SHX2_2
  SHX15_2.suicide = SHX3_2
  SHX15_2.victimGroup = SHX5_2
  SHX15_2.killerGroup = SHX6_2
  SHX15_2.range = SHX4_2
  SHX15_2.uuid = SHX12_2
  SHX15_2.category = SHX10_2
  SHX15_2.wasHeadshot = SHX7_2
  SHX14_2.info = SHX15_2
  SHX13_2(SHX14_2)
  SHX13_2 = Citizen
  SHX13_2 = SHX13_2.Wait
  SHX14_2 = 10000
  SHX13_2(SHX14_2)
  SHX13_2 = CMG
  SHX13_2 = SHX13_2.uiSendMessage
  SHX14_2 = {}
  SHX14_2.type = "KILLFEED_REMOVE_KILL"
  SHX15_2 = {}
  SHX15_2.uuid = SHX12_2
  SHX14_2.info = SHX15_2
  SHX13_2(SHX14_2)
end
SHX0_1(SHX1_1, SHX2_1)
