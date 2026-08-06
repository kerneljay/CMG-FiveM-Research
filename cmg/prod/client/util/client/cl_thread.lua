-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = false
SHX4_1 = 250
SHX5_1 = 3000
SHX6_1 = 5000
SHX7_1 = 250
SHX8_1 = 0
SHX9_1 = nil
SHX10_1 = 0
SHX11_1 = 0
SHX12_1 = Citizen
SHX12_1 = SHX12_1.CreateThread
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isDevMode
  SHX0_2 = SHX0_2()
  SHX3_1 = SHX0_2
end
SHX12_1(SHX13_1)
SHX12_1 = Citizen
SHX12_1 = SHX12_1.CreateThread
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX8_1 = SHX0_2
  while true do
    SHX0_2 = 0
    SHX1_2 = SHX3_1
    if SHX1_2 then
      SHX1_2 = GetFrameCount
      SHX1_2 = SHX1_2()
      SHX0_2 = SHX1_2
    end
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2 = SHX1_2()
    SHX2_1.playerPed = SHX1_2
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerCoords
    SHX1_2 = SHX1_2()
    SHX2_1.playerCoords = SHX1_2
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerId
    SHX1_2 = SHX1_2()
    SHX2_1.playerId = SHX1_2
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerVehicle
    SHX1_2 = SHX1_2()
    SHX2_1.vehicle = SHX1_2
    SHX1_2 = GetSelectedPedWeapon
    SHX2_2 = SHX2_1.playerPed
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_1.weapon = SHX1_2
    SHX1_2 = 1
    SHX2_2 = SHX0_1
    SHX2_2 = #SHX2_2
    SHX3_2 = 1
    for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
      SHX5_2 = SHX0_1
      SHX5_2 = SHX5_2[SHX4_2]
      SHX6_2 = SHX1_1
      SHX6_2 = SHX6_2[SHX4_2]
      SHX9_1 = SHX6_2
      SHX6_2 = GetGameTimer
      SHX6_2 = SHX6_2()
      SHX10_1 = SHX6_2
      SHX6_2 = SHX10_1
      SHX7_2 = pcall
      SHX8_2 = SHX5_2
      SHX9_2 = SHX2_1
      SHX7_2, SHX8_2 = SHX7_2(SHX8_2, SHX9_2)
      SHX9_2 = GetGameTimer
      SHX9_2 = SHX9_2()
      SHX9_2 = SHX9_2 - SHX6_2
      SHX10_2 = nil
      SHX9_1 = SHX10_2
      if not SHX7_2 then
        SHX10_2 = print
        SHX11_2 = SHX8_2
        SHX10_2(SHX11_2)
      else
        SHX10_2 = SHX3_1
        if SHX10_2 then
          SHX10_2 = SHX7_1
          if SHX9_2 >= SHX10_2 then
            SHX10_2 = debug
            SHX10_2 = SHX10_2.getinfo
            SHX11_2 = SHX5_2
            SHX12_2 = "S"
            SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
            SHX11_2 = print
            SHX12_2 = string
            SHX12_2 = SHX12_2.format
            SHX13_2 = "CMG.createThreadOnTick SLOW: %q took %d ms (%s:%s)"
            SHX14_2 = SHX1_1
            SHX14_2 = SHX14_2[SHX4_2]
            SHX15_2 = SHX9_2
            SHX16_2 = SHX10_2.short_src
            SHX17_2 = tostring
            SHX18_2 = SHX10_2.linedefined
            SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX17_2(SHX18_2)
            SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
            SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
          end
          SHX10_2 = GetFrameCount
          SHX10_2 = SHX10_2()
          SHX11_2 = SHX10_2 - SHX0_2
          if SHX11_2 > 0 then
            SHX12_2 = debug
            SHX12_2 = SHX12_2.getinfo
            SHX13_2 = SHX5_2
            SHX12_2 = SHX12_2(SHX13_2)
            SHX13_2 = print
            SHX14_2 = "CMG.createThreadOnTick ERROR: "
            SHX15_2 = SHX12_2.short_src
            SHX16_2 = ":"
            SHX17_2 = SHX12_2.linedefined
            SHX18_2 = " was called asyncronously! (took "
            SHX19_2 = SHX11_2
            SHX20_2 = " frames)"
            SHX14_2 = SHX14_2 .. SHX15_2 .. SHX16_2 .. SHX17_2 .. SHX18_2 .. SHX19_2 .. SHX20_2
            SHX13_2(SHX14_2)
            SHX0_2 = SHX10_2
          end
        end
      end
    end
    SHX1_2 = GetGameTimer
    SHX1_2 = SHX1_2()
    SHX8_1 = SHX1_2
    SHX1_2 = Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
end
SHX12_1(SHX13_1)
SHX12_1 = Citizen
SHX12_1 = SHX12_1.CreateThread
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  while true do
    SHX0_2 = Wait
    SHX1_2 = SHX4_1
    SHX0_2(SHX1_2)
    SHX0_2 = SHX9_1
    if nil ~= SHX0_2 then
      SHX0_2 = GetGameTimer
      SHX0_2 = SHX0_2()
      SHX1_2 = SHX10_1
      SHX1_2 = SHX0_2 - SHX1_2
      SHX2_2 = SHX5_1
      if SHX1_2 >= SHX2_2 then
        SHX2_2 = SHX11_1
        SHX2_2 = SHX0_2 - SHX2_2
        SHX3_2 = SHX6_1
        if SHX2_2 >= SHX3_2 then
          SHX11_1 = SHX0_2
          SHX2_2 = print
          SHX3_2 = string
          SHX3_2 = SHX3_2.format
          SHX4_2 = "CMG.createThreadOnTick WATCHDOG: callback %q has run synchronously for ~%d ms without returning (possible hang)."
          SHX5_2 = SHX9_1
          SHX6_2 = SHX1_2
          SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
          SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        end
      end
    end
  end
end
SHX12_1(SHX13_1)
SHX12_1 = CMG
function SHX13_1()
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
SHX12_1.getThreadOnTickExecutingDebugName = SHX13_1
SHX12_1 = CMG
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX8_1
  SHX0_2 = SHX0_2 - SHX1_2
  return SHX0_2
end
SHX12_1.getThreadOnTickMsSinceFullLoopCompleted = SHX13_1
SHX12_1 = CMG
function SHX13_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = assert
  SHX4_2 = type
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX4_2 = "function" == SHX4_2
  SHX3_2(SHX4_2)
  SHX3_2 = assert
  SHX4_2 = type
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX4_2 = "string" == SHX4_2
  SHX3_2(SHX4_2)
  if SHX2_2 then
    SHX3_2 = table
    SHX3_2 = SHX3_2.insert
    SHX4_2 = SHX0_1
    SHX5_2 = 1
    SHX6_2 = SHX0_2
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = table
    SHX3_2 = SHX3_2.insert
    SHX4_2 = SHX1_1
    SHX5_2 = 1
    SHX6_2 = SHX1_2
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  else
    SHX3_2 = table
    SHX3_2 = SHX3_2.insert
    SHX4_2 = SHX0_1
    SHX5_2 = SHX0_2
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = table
    SHX3_2 = SHX3_2.insert
    SHX4_2 = SHX1_1
    SHX5_2 = SHX1_2
    SHX3_2(SHX4_2, SHX5_2)
  end
end
SHX12_1.createThreadOnTick = SHX13_1
SHX12_1 = CMG
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.find
  SHX2_2 = SHX0_1
  SHX3_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX2_2 = table
    SHX2_2 = SHX2_2.remove
    SHX3_2 = SHX0_1
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX12_1.deleteThreadOnTick = SHX13_1
