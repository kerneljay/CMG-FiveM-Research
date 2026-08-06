-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1
function SHX0_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isHalloween
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = "HALLOWEEN"
    return SHX0_2
  else
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isChristmas
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = "XMAS"
      return SHX0_2
    else
      SHX0_2 = "EXTRASUNNY"
      return SHX0_2
    end
  end
end
SHX1_1 = SHX0_1
SHX1_1 = SHX1_1()
SHX2_1 = {}
SHX2_1.h = 12
SHX2_1.m = 0
SHX2_1.s = 0
SHX3_1 = false
SHX4_1 = SHX1_1
SHX5_1 = -1
SHX6_1 = CMG
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX2_1.h
  SHX1_2 = SHX2_1.m
  SHX2_2 = SHX2_1.s
  return SHX0_2, SHX1_2, SHX2_2
end
SHX6_1.getCurrentTime = SHX7_1
SHX6_1 = CMG
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1
  return SHX0_2
end
SHX6_1.getCurrentWeather = SHX7_1
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_1 = SHX0_2
  SHX1_2 = SHX5_1
  if -1 == SHX1_2 then
    SHX1_2 = ClearOverrideWeather
    SHX1_2()
    SHX1_2 = ClearWeatherTypePersist
    SHX1_2()
    SHX1_2 = SetWeatherTypePersist
    SHX2_2 = SHX1_1
    SHX1_2(SHX2_2)
    SHX1_2 = SetWeatherTypeNow
    SHX2_2 = SHX1_1
    SHX1_2(SHX2_2)
    SHX1_2 = SetWeatherTypeNowPersist
    SHX2_2 = SHX1_1
    SHX1_2(SHX2_2)
    SHX1_2 = SHX1_1
    if "XMAS" == SHX1_2 then
      SHX1_2 = SetForceVehicleTrails
      SHX2_2 = true
      SHX1_2(SHX2_2)
      SHX1_2 = SetForcePedFootstepsTracks
      SHX2_2 = true
      SHX1_2(SHX2_2)
    else
      SHX1_2 = SetForceVehicleTrails
      SHX2_2 = false
      SHX1_2(SHX2_2)
      SHX1_2 = SetForcePedFootstepsTracks
      SHX2_2 = false
      SHX1_2(SHX2_2)
    end
  else
    SHX1_2 = GetGameTimer
    SHX1_2 = SHX1_2()
    SHX2_2 = SHX5_1
    SHX1_2 = SHX1_2 - SHX2_2
    SHX1_2 = SHX1_2 / 60000
    if SHX1_2 >= 1.0 then
      SHX2_2 = -1
      SHX5_1 = SHX2_2
    else
      SHX2_2 = SetWeatherTypeTransition
      SHX3_2 = GetHashKey
      SHX4_2 = SHX4_1
      SHX3_2 = SHX3_2(SHX4_2)
      SHX4_2 = GetHashKey
      SHX5_2 = SHX1_1
      SHX4_2 = SHX4_2(SHX5_2)
      SHX5_2 = SHX1_2
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    end
  end
end
SHX7_1 = CMG
function SHX8_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2
  SHX3_2 = {}
  SHX3_2.h = SHX0_2
  SHX3_2.m = SHX1_2
  SHX3_2.s = SHX2_2
  SHX2_1 = SHX3_2
end
SHX7_1.setTime = SHX8_1
SHX7_1 = CMG
function SHX8_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2
  SHX2_1.h = SHX0_2
  SHX2_1.m = SHX1_2
  SHX2_1.s = SHX2_2
  SHX3_2 = true
  SHX3_1 = SHX3_2
end
SHX7_1.overrideTime = SHX8_1
SHX7_1 = CMG
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX3_1 = SHX0_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "1dc4f2e900"
  SHX0_2(SHX1_2)
end
SHX7_1.cancelOverrideTimeWeather = SHX8_1
SHX7_1 = CMG
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX1_1
  SHX4_1 = SHX2_2
  SHX1_1 = SHX0_2
  if SHX1_2 then
    SHX2_2 = SHX1_1
    SHX3_2 = SHX4_1
    if SHX2_2 ~= SHX3_2 then
      SHX2_2 = GetGameTimer
      SHX2_2 = SHX2_2()
      SHX5_1 = SHX2_2
  end
  else
    SHX2_2 = -1
    SHX5_1 = SHX2_2
  end
end
SHX7_1.setWeather = SHX8_1
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = NetworkOverrideClockTime
  SHX1_2 = SHX2_1.h
  SHX2_2 = SHX2_1.m
  SHX3_2 = SHX2_1.s
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX6_1
  SHX1_2 = SHX1_1
  SHX0_2(SHX1_2)
end
SHX8_1 = CMG
SHX8_1 = SHX8_1.createThreadOnTick
SHX9_1 = SHX7_1
SHX10_1 = "Time And Weather"
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "d119eeb42f"
function SHX10_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.inEvent
  SHX3_2 = SHX3_2()
  if not SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setTime
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    SHX6_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "6e6fb36867"
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.inEvent
  SHX2_2 = SHX2_2()
  if not SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.setWeather
    SHX3_2 = SHX0_2
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = false
SHX9_1 = CMG
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX8_1 = SHX0_2
end
SHX9_1.setTimeFrozen = SHX10_1
SHX9_1 = Citizen
SHX9_1 = SHX9_1.CreateThread
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SetWeatherOwnedByNetwork
  SHX1_2 = false
  SHX0_2(SHX1_2)
  while true do
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
    SHX0_2 = SHX8_1
    if SHX0_2 then
    else
      SHX0_2 = SHX2_1.s
      SHX0_2 = SHX0_2 + 10
      SHX2_1.s = SHX0_2
      SHX0_2 = SHX2_1.s
      if 60 == SHX0_2 then
        SHX2_1.s = 0
        SHX0_2 = SHX2_1.m
        SHX0_2 = SHX0_2 + 1
        SHX2_1.m = SHX0_2
      end
      SHX0_2 = SHX2_1.m
      if 60 == SHX0_2 then
        SHX2_1.m = 0
        SHX0_2 = SHX2_1.h
        SHX0_2 = SHX0_2 + 1
        SHX2_1.h = SHX0_2
      end
      SHX0_2 = SHX2_1.h
      if 24 == SHX0_2 then
        SHX2_1.h = 0
      end
      SHX0_2 = SHX3_1
      if not SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.setTime
        SHX1_2 = SHX2_1.h
        SHX2_2 = SHX2_1.m
        SHX3_2 = SHX2_1.s
        SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      end
    end
  end
end
SHX9_1(SHX10_1)
SHX9_1 = false
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX2_2 = SHX9_1
  if SHX2_2 then
    return
  end
  SHX2_2 = true
  SHX9_1 = SHX2_2
  SHX2_2 = false
  SHX3_1 = SHX2_2
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX2_1.h
  SHX4_2 = SHX2_1.m
  SHX5_2 = SHX2_1.s
  SHX6_2 = SHX3_2 * 60
  SHX6_2 = SHX6_2 + SHX4_2
  SHX7_2 = SHX5_2 / 60.0
  SHX6_2 = SHX6_2 + SHX7_2
  SHX7_2 = Citizen
  SHX7_2 = SHX7_2.CreateThread
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    while true do
      SHX0_3 = SHX9_1
      if not SHX0_3 then
        break
      end
      SHX0_3 = GetGameTimer
      SHX0_3 = SHX0_3()
      SHX1_3 = SHX2_2
      SHX1_3 = SHX0_3 - SHX1_3
      SHX2_3 = SHX1_2
      SHX1_3 = SHX1_3 / SHX2_3
      if SHX1_3 >= 1.0 then
        SHX1_3 = 1.0
      end
      SHX2_3 = SHX1_3 * SHX1_3
      SHX3_3 = 2.0 * SHX1_3
      SHX4_3 = 3.0
      SHX3_3 = SHX4_3 - SHX3_3
      SHX2_3 = SHX2_3 * SHX3_3
      SHX3_3 = SHX6_2
      SHX4_3 = SHX0_2
      SHX4_3 = SHX4_3 * SHX2_3
      SHX3_3 = SHX3_3 + SHX4_3
      SHX3_3 = SHX3_3 % 1440
      SHX4_3 = math
      SHX4_3 = SHX4_3.floor
      SHX5_3 = SHX3_3 / 60
      SHX4_3 = SHX4_3(SHX5_3)
      SHX5_3 = math
      SHX5_3 = SHX5_3.floor
      SHX6_3 = SHX3_3 % 60
      SHX5_3 = SHX5_3(SHX6_3)
      SHX6_3 = math
      SHX6_3 = SHX6_3.floor
      SHX7_3 = math
      SHX7_3 = SHX7_3.floor
      SHX8_3 = SHX3_3
      SHX7_3 = SHX7_3(SHX8_3)
      SHX7_3 = SHX3_3 - SHX7_3
      SHX7_3 = SHX7_3 * 60
      SHX6_3 = SHX6_3(SHX7_3)
      SHX2_1.h = SHX4_3
      SHX2_1.m = SHX5_3
      SHX2_1.s = SHX6_3
      if SHX1_3 >= 1.0 then
        SHX7_3 = false
        SHX9_1 = SHX7_3
        break
      end
      SHX7_3 = Citizen
      SHX7_3 = SHX7_3.Wait
      SHX8_3 = 0
      SHX7_3(SHX8_3)
    end
  end
  SHX7_2(SHX8_2)
end
SHX11_1 = CMG
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX10_1
  SHX3_2 = SHX0_2
  SHX4_2 = math
  SHX4_2 = SHX4_2.floor
  SHX5_2 = SHX1_2 * 1000
  SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
SHX11_1.startTimelapse = SHX12_1
SHX11_1 = CMG
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX9_1 = SHX0_2
end
SHX11_1.stopTimelapse = SHX12_1
SHX11_1 = CMG
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX9_1
  return SHX0_2
end
SHX11_1.isTimelapseRunning = SHX12_1
