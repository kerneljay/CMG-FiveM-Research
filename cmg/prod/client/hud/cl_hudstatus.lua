-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1
function SHX0_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.sendHudNuiMessage
  SHX3_2 = "SET_STATUS"
  SHX4_2 = {}
  SHX4_2.type = SHX0_2
  SHX4_2.value = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
function SHX1_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.sendHudNuiMessage
  SHX3_2 = "SET_BAR_VISIBILITY"
  SHX4_2 = {}
  SHX4_2.type = SHX0_2
  SHX4_2.value = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX2_1 = nil
SHX3_1 = nil
SHX4_1 = nil
SHX5_1 = CreateThread
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getHunger
    SHX0_2 = SHX0_2()
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getHydration
    SHX1_2 = SHX1_2()
    SHX2_2 = SHX2_1
    if nil ~= SHX2_2 then
      SHX2_2 = SHX2_1
      if SHX0_2 == SHX2_2 then
        goto SHX_LABEL_18
      end
    end
    SHX2_2 = SHX0_1
    SHX3_2 = "hunger"
    SHX4_2 = SHX0_2
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_1 = SHX0_2
    -- [FIX IF ERROR] Move ::SHX_LABEL_18:: outside nested blocks until all 'goto SHX_LABEL_18' can see it
    ::SHX_LABEL_18::
    SHX2_2 = SHX3_1
    if nil ~= SHX2_2 then
      SHX2_2 = SHX3_1
      if SHX1_2 == SHX2_2 then
        goto SHX_LABEL_29
      end
    end
    SHX2_2 = SHX0_1
    SHX3_2 = "thirst"
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
    SHX3_1 = SHX1_2
    -- [FIX IF ERROR] Move ::SHX_LABEL_29:: outside nested blocks until all 'goto SHX_LABEL_29' can see it
    ::SHX_LABEL_29::
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.isBleeding
    if SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.isBleeding
      SHX2_2 = SHX2_2()
    end
    SHX3_2 = SHX4_1
    if nil ~= SHX3_2 then
      SHX3_2 = SHX4_1
      if SHX2_2 == SHX3_2 then
        goto SHX_LABEL_47
      end
    end
    SHX3_2 = SHX1_1
    SHX4_2 = "bleeding"
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
    SHX4_1 = SHX2_2
    -- [FIX IF ERROR] Move ::SHX_LABEL_47:: outside nested blocks until all 'goto SHX_LABEL_47' can see it
    ::SHX_LABEL_47::
    if SHX2_2 then
      SHX3_2 = GetEntityHealth
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.getPlayerPed
      SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2()
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX4_2 = math
      SHX4_2 = SHX4_2.max
      SHX5_2 = 0
      SHX6_2 = math
      SHX6_2 = SHX6_2.min
      SHX7_2 = 100
      SHX8_2 = SHX3_2 - 100
      SHX6_2, SHX7_2, SHX8_2 = SHX6_2(SHX7_2, SHX8_2)
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX5_2 = SHX0_1
      SHX6_2 = "bleeding"
      SHX7_2 = SHX4_2
      SHX5_2(SHX6_2, SHX7_2)
    else
      SHX3_2 = SHX0_1
      SHX4_2 = "bleeding"
      SHX5_2 = 0
      SHX3_2(SHX4_2, SHX5_2)
    end
    SHX3_2 = Wait
    SHX4_2 = 100
    SHX3_2(SHX4_2)
  end
end
SHX5_1(SHX6_1)
SHX5_1 = nil
SHX6_1 = CreateThread
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  while true do
    SHX0_2 = GetClockHours
    SHX0_2 = SHX0_2()
    SHX1_2 = SHX0_2 >= 20 or SHX0_2 < 6
    SHX2_2 = SHX5_1
    if nil ~= SHX2_2 then
      SHX2_2 = SHX5_1
      if SHX1_2 == SHX2_2 then
        goto SHX_LABEL_21
      end
    end
    SHX5_1 = SHX1_2
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.sendHudNuiMessage
    SHX3_2 = "SET_STATUS_GLOW"
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
    -- [FIX IF ERROR] Move ::SHX_LABEL_21:: outside nested blocks until all 'goto SHX_LABEL_21' can see it
    ::SHX_LABEL_21::
    SHX2_2 = Wait
    SHX3_2 = 2000
    SHX2_2(SHX3_2)
  end
end
SHX6_1(SHX7_1)
SHX6_1 = nil
SHX7_1 = CreateThread
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerPed
    SHX0_2 = SHX0_2()
    SHX1_2 = GetEntityHealth
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = SHX6_1
    if SHX2_2 then
      SHX2_2 = SHX6_1
      if SHX2_2 == SHX1_2 then
        goto SHX_LABEL_30
      end
    end
    SHX2_2 = SHX1_2 - 100
    SHX3_2 = math
    SHX3_2 = SHX3_2.max
    SHX4_2 = 0
    SHX5_2 = math
    SHX5_2 = SHX5_2.min
    SHX6_2 = SHX2_2
    SHX7_2 = 100
    SHX5_2, SHX6_2, SHX7_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX2_2 = SHX3_2
    SHX3_2 = SHX0_1
    SHX4_2 = "health"
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
    SHX6_1 = SHX1_2
    -- [FIX IF ERROR] Move ::SHX_LABEL_30:: outside nested blocks until all 'goto SHX_LABEL_30' can see it
    ::SHX_LABEL_30::
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
end
SHX7_1(SHX8_1)
SHX7_1 = nil
SHX8_1 = CreateThread
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isPositionInGreenzone
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isPositionInGreenzone
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerCoords
      SHX1_2, SHX2_2, SHX3_2 = SHX1_2()
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    end
    SHX1_2 = SHX7_1
    if nil ~= SHX1_2 then
      SHX1_2 = SHX7_1
      if SHX0_2 == SHX1_2 then
        goto SHX_LABEL_22
      end
    end
    SHX1_2 = SHX0_1
    SHX2_2 = "inGreenzone"
    SHX3_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2)
    SHX7_1 = SHX0_2
    -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
    ::SHX_LABEL_22::
    SHX1_2 = Wait
    SHX2_2 = 500
    SHX1_2(SHX2_2)
  end
end
SHX8_1(SHX9_1)
SHX8_1 = nil
SHX9_1 = CreateThread
function SHX10_1()
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
    SHX1_2 = GetPedArmour
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = SHX8_1
    if SHX2_2 then
      SHX2_2 = SHX8_1
      if SHX2_2 == SHX1_2 then
        goto SHX_LABEL_19
      end
    end
    SHX2_2 = SHX1_2
    SHX3_2 = SHX0_1
    SHX4_2 = "armor"
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
    SHX8_1 = SHX1_2
    -- [FIX IF ERROR] Move ::SHX_LABEL_19:: outside nested blocks until all 'goto SHX_LABEL_19' can see it
    ::SHX_LABEL_19::
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
end
SHX9_1(SHX10_1)
SHX9_1 = false
SHX10_1 = nil
SHX11_1 = false
SHX12_1 = nil
SHX13_1 = CreateThread
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerPed
    SHX0_2 = SHX0_2()
    SHX1_2 = IsEntityInWater
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = GetPlayerUnderwaterTimeRemaining
      SHX2_2 = PlayerId
      SHX2_2, SHX3_2, SHX4_2 = SHX2_2()
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = SHX1_2 * 10
      SHX2_2 = SHX9_1
      if not SHX2_2 then
        SHX2_2 = SHX11_1
        if not SHX2_2 then
          SHX2_2 = SHX1_1
          SHX3_2 = "oxygen"
          SHX4_2 = true
          SHX2_2(SHX3_2, SHX4_2)
          SHX2_2 = true
          SHX9_1 = SHX2_2
        end
      end
      if SHX1_2 < 0 then
        SHX1_2 = 0
      end
      SHX2_2 = SHX10_1
      if nil ~= SHX2_2 then
        SHX2_2 = SHX10_1
      end
      if SHX2_2 ~= SHX1_2 then
        SHX2_2 = SHX0_1
        SHX3_2 = "oxygen"
        SHX4_2 = SHX1_2
        SHX2_2(SHX3_2, SHX4_2)
        SHX10_1 = SHX1_2
      end
    else
      SHX1_2 = SHX9_1
      if SHX1_2 then
        SHX1_2 = SHX11_1
        if not SHX1_2 then
          SHX1_2 = SHX1_1
          SHX2_2 = "oxygen"
          SHX3_2 = false
          SHX1_2(SHX2_2, SHX3_2)
          SHX1_2 = false
          SHX9_1 = SHX1_2
        end
      end
    end
    SHX1_2 = Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
end
SHX13_1(SHX14_1)
SHX13_1 = CreateThread
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerPed
    SHX0_2 = SHX0_2()
    SHX1_2 = IsPedInAnyHeli
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = IsPedInAnyPlane
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if not SHX1_2 then
        SHX1_2 = GetPedParachuteState
        SHX2_2 = SHX0_2
        SHX1_2 = SHX1_2(SHX2_2)
        if not (SHX1_2 >= 0) then
          goto SHX_LABEL_76
        end
      end
    end
    SHX1_2 = SHX11_1
    if not SHX1_2 then
      SHX1_2 = true
      SHX11_1 = SHX1_2
      SHX1_2 = nil
      SHX12_1 = SHX1_2
      SHX1_2 = SHX1_1
      SHX2_2 = "altitude"
      SHX3_2 = true
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = SHX1_1
      SHX2_2 = "oxygen"
      SHX3_2 = false
      SHX1_2(SHX2_2, SHX3_2)
    end
    SHX1_2 = GetVehiclePedIsUsing
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = nil
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = GetEntityHeightAboveGround
      SHX4_2 = SHX1_2
      SHX3_2 = SHX3_2(SHX4_2)
      SHX2_2 = SHX3_2
    else
      SHX3_2 = GetEntityHeightAboveGround
      SHX4_2 = SHX0_2
      SHX3_2 = SHX3_2(SHX4_2)
      SHX2_2 = SHX3_2
    end
    SHX3_2 = 2483
    if SHX2_2 > SHX3_2 then
      SHX2_2 = 2483
    end
    SHX3_2 = math
    SHX3_2 = SHX3_2.floor
    SHX4_2 = SHX2_2 + 0.5
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = SHX12_1
    if nil ~= SHX4_2 then
      SHX4_2 = SHX12_1
      if SHX4_2 == SHX3_2 then
        goto SHX_LABEL_72
      end
    end
    SHX12_1 = SHX3_2
    SHX4_2 = SHX0_1
    SHX5_2 = "altitude"
    SHX6_2 = SHX2_2
    SHX4_2(SHX5_2, SHX6_2)
    -- [FIX IF ERROR] Move ::SHX_LABEL_72:: outside nested blocks until all 'goto SHX_LABEL_72' can see it
    ::SHX_LABEL_72::
    SHX4_2 = Wait
    SHX5_2 = 100
    SHX4_2(SHX5_2)
    goto SHX_LABEL_106
    -- [FIX IF ERROR] Move ::SHX_LABEL_76:: outside nested blocks until all 'goto SHX_LABEL_76' can see it
    ::SHX_LABEL_76::
    SHX1_2 = SHX11_1
    if SHX1_2 then
      SHX1_2 = SHX9_1
      if SHX1_2 then
        SHX1_2 = SHX1_1
        SHX2_2 = "altitude"
        SHX3_2 = false
        SHX1_2(SHX2_2, SHX3_2)
        SHX1_2 = SHX1_1
        SHX2_2 = "oxygen"
        SHX3_2 = true
        SHX1_2(SHX2_2, SHX3_2)
      else
        SHX1_2 = SHX1_1
        SHX2_2 = "altitude"
        SHX3_2 = false
        SHX1_2(SHX2_2, SHX3_2)
        SHX1_2 = SHX1_1
        SHX2_2 = "oxygen"
        SHX3_2 = false
        SHX1_2(SHX2_2, SHX3_2)
      end
      SHX1_2 = false
      SHX11_1 = SHX1_2
      SHX1_2 = nil
      SHX12_1 = SHX1_2
    end
    SHX1_2 = Wait
    SHX2_2 = 500
    SHX1_2(SHX2_2)
    -- [FIX IF ERROR] Move ::SHX_LABEL_106:: outside nested blocks until all 'goto SHX_LABEL_106' can see it
    ::SHX_LABEL_106::
  end
end
SHX13_1(SHX14_1)
