-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1
SHX0_1 = CMG
function SHX1_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX1_2 = {}
  SHX0_2.timers = SHX1_2
  function SHX1_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    SHX5_3 = table
    SHX5_3 = SHX5_3.insert
    SHX6_3 = SHX0_2.timers
    SHX7_3 = {}
    SHX8_3 = SHX0_3
    SHX9_3 = SHX1_3
    SHX10_3 = SHX2_3
    SHX11_3 = SHX3_3
    SHX12_3 = SHX4_3
    SHX7_3[1] = SHX8_3
    SHX7_3[2] = SHX9_3
    SHX7_3[3] = SHX10_3
    SHX7_3[4] = SHX11_3
    SHX7_3[5] = SHX12_3
    SHX5_3(SHX6_3, SHX7_3)
  end
  SHX0_2.push = SHX1_2
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    SHX0_3 = ipairs
    SHX1_3 = SHX0_2.timers
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = DrawGTATimerBar
      SHX7_3 = SHX5_3[1]
      SHX8_3 = SHX5_3[2]
      SHX9_3 = SHX4_3
      SHX10_3 = SHX5_3[3]
      SHX11_3 = SHX5_3[4]
      SHX12_3 = SHX5_3[5]
      SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
    end
  end
  SHX0_2.draw = SHX1_2
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = {}
    SHX0_2.timers = SHX0_3
  end
  SHX0_2.reset = SHX1_2
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX0_2.timers
    SHX0_3 = #SHX0_3
    return SHX0_3
  end
  SHX0_2.rowCount = SHX1_2
  return SHX0_2
end
SHX0_1.createTimerBars = SHX1_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = {}
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.max
  SHX2_2 = 0
  SHX3_2 = math
  SHX3_2 = SHX3_2.ceil
  SHX4_2 = SHX0_2 / 1000
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX3_2(SHX4_2)
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = math
  SHX2_2 = SHX2_2.floor
  SHX3_2 = SHX1_2 / 60
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX1_2 % 60
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = "%d:%02d"
  SHX6_2 = SHX2_2
  SHX7_2 = SHX3_2
  return SHX4_2(SHX5_2, SHX6_2, SHX7_2)
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = next
  SHX1_2 = SHX0_1
  SHX0_2 = SHX0_2(SHX1_2)
  if nil ~= SHX0_2 then
    SHX0_2 = true
    return SHX0_2
  end
  SHX0_2 = ipairs
  SHX1_2 = SHX2_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX1_1
    SHX6_2 = SHX6_2[SHX5_2]
    if SHX6_2 then
      SHX7_2 = SHX6_2.enabled
      if SHX7_2 then
        SHX7_2 = true
        return SHX7_2
      end
    end
  end
  SHX0_2 = false
  return SHX0_2
end
SHX5_1 = false
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.createTimerBars
  SHX1_2 = SHX1_2()
  SHX2_2 = {}
  SHX3_2 = {}
  SHX4_2 = pairs
  SHX5_2 = SHX0_1
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX9_2 = #SHX3_2
    SHX9_2 = SHX9_2 + 1
    SHX3_2[SHX9_2] = SHX8_2
  end
  SHX4_2 = table
  SHX4_2 = SHX4_2.sort
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = ipairs
  SHX5_2 = SHX3_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX0_1
    SHX10_2 = SHX10_2[SHX9_2]
    SHX11_2 = SHX10_2.endTime
    SHX11_2 = SHX11_2 - SHX0_2
    if SHX11_2 > 0 then
      SHX12_2 = SHX10_2.label
      if not SHX12_2 then
        SHX12_2 = SHX9_2
      end
      SHX13_2 = SHX3_1
      SHX14_2 = SHX11_2
      SHX13_2 = SHX13_2(SHX14_2)
      SHX14_2 = 60000
      if SHX11_2 < SHX14_2 then
        SHX14_2 = "~r~"
        if SHX14_2 then
          goto SHX_LABEL_50
        end
      end
      SHX14_2 = "~y~"
      -- [FIX IF ERROR] Move ::SHX_LABEL_50:: outside nested blocks until all 'goto SHX_LABEL_50' can see it
      ::SHX_LABEL_50::
      SHX15_2 = SHX1_2.push
      SHX16_2 = SHX14_2
      SHX17_2 = SHX12_2
      SHX18_2 = "~w~"
      SHX16_2 = SHX16_2 .. SHX17_2 .. SHX18_2
      SHX17_2 = SHX13_2
      SHX15_2(SHX16_2, SHX17_2)
    else
      SHX12_2 = #SHX2_2
      SHX12_2 = SHX12_2 + 1
      SHX13_2 = {}
      SHX13_2.timerId = SHX9_2
      SHX14_2 = SHX10_2.onExpire
      SHX13_2.onExpire = SHX14_2
      SHX2_2[SHX12_2] = SHX13_2
    end
  end
  SHX4_2 = ipairs
  SHX5_2 = SHX2_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX11_2 = SHX9_2.timerId
    SHX10_2 = SHX0_1
    SHX10_2[SHX11_2] = nil
    SHX10_2 = SHX9_2.onExpire
    if SHX10_2 then
      SHX10_2 = SHX9_2.onExpire
      SHX10_2()
    end
  end
  SHX4_2 = ipairs
  SHX5_2 = SHX2_1
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX1_1
    SHX10_2 = SHX10_2[SHX9_2]
    if SHX10_2 then
      SHX11_2 = SHX10_2.enabled
      if SHX11_2 then
        SHX11_2 = SHX10_2.build
        SHX12_2 = SHX1_2
        SHX11_2(SHX12_2)
      end
    end
  end
  SHX4_2 = SHX1_2.rowCount
  SHX4_2 = SHX4_2()
  if SHX4_2 > 0 then
    SHX4_2 = SHX1_2.draw
    SHX4_2()
  end
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX5_1
  if SHX0_2 then
    return
  end
  SHX0_2 = SHX4_1
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  SHX0_2 = true
  SHX5_1 = SHX0_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    while true do
      SHX0_3 = SHX5_1
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX4_1
      SHX0_3 = SHX0_3()
      if not SHX0_3 then
        SHX0_3 = false
        SHX5_1 = SHX0_3
        break
      end
      SHX0_3 = SHX6_1
      SHX0_3()
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX0_2(SHX1_2)
end
SHX8_1 = CMG
function SHX9_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    return
  end
  SHX2_2 = SHX1_1
  SHX3_2 = {}
  SHX3_2.build = SHX1_2
  SHX3_2.enabled = false
  SHX2_2[SHX0_2] = SHX3_2
  SHX2_2 = SHX2_1
  SHX2_2 = #SHX2_2
  SHX3_2 = SHX2_2 + 1
  SHX2_2 = SHX2_1
  SHX2_2[SHX3_2] = SHX0_2
end
SHX8_1.registerHudTimerBarProvider = SHX9_1
SHX8_1 = CMG
function SHX9_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2[SHX0_2]
  if not SHX2_2 then
    return
  end
  if SHX1_2 then
    SHX3_2 = true
    if SHX3_2 then
      goto SHX_LABEL_12
    end
  end
  SHX3_2 = false
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX2_2.enabled = SHX3_2
  SHX3_2 = SHX7_1
  SHX3_2()
end
SHX8_1.setHudTimerBarProviderActive = SHX9_1
SHX8_1 = CMG
function SHX9_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX4_2 = math
  SHX4_2 = SHX4_2.max
  SHX5_2 = 0
  SHX6_2 = SHX2_2 or SHX6_2
  if not SHX2_2 then
    SHX6_2 = 0
  end
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = SHX0_1
  SHX6_2 = {}
  SHX7_2 = GetGameTimer
  SHX7_2 = SHX7_2()
  SHX8_2 = SHX4_2 * 1000
  SHX7_2 = SHX7_2 + SHX8_2
  SHX6_2.endTime = SHX7_2
  SHX6_2.label = SHX1_2
  SHX6_2.onExpire = SHX3_2
  SHX5_2[SHX0_2] = SHX6_2
  SHX5_2 = SHX7_1
  SHX5_2()
end
SHX8_1.addHudDurationTimer = SHX9_1
SHX8_1 = CMG
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    return
  end
  SHX2_2 = SHX0_1
  SHX2_2[SHX0_2] = nil
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX1_2.endTime
  if SHX2_2 >= SHX3_2 then
    SHX3_2 = SHX1_2.onExpire
    if SHX3_2 then
      SHX3_2 = SHX1_2.onExpire
      SHX3_2()
    end
  end
end
SHX8_1.removeHudTimer = SHX9_1
SHX8_1 = CMG
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX1_2.endTime
  SHX2_2 = SHX2_2 < SHX3_2
  return SHX2_2
end
SHX8_1.isHudTimerActive = SHX9_1
SHX8_1 = CMG
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX2_2 = nil
    return SHX2_2
  end
  SHX2_2 = SHX1_2.endTime
  SHX3_2 = GetGameTimer
  SHX3_2 = SHX3_2()
  SHX2_2 = SHX2_2 - SHX3_2
  if SHX2_2 <= 0 then
    SHX3_2 = nil
    return SHX3_2
  end
  SHX3_2 = SHX2_2 / 1000
  return SHX3_2
end
SHX8_1.getHudTimerRemainingSeconds = SHX9_1
