-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_bloodmoney"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.loadModule
SHX2_1 = "cfg/cfg_redzones"
SHX1_1 = SHX1_1(SHX2_1)
SHX2_1 = nil
SHX3_1 = 0
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isPlayerInRedZone
  SHX0_2, SHX1_2 = SHX0_2()
  if SHX0_2 then
    SHX2_2 = SHX2_1
    if SHX1_2 == SHX2_2 then
      goto SHX_LABEL_10
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCombatTimer
  SHX2_2 = SHX2_2()
  if SHX2_2 > 0 and SHX2_2 <= 25 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setPlayerCombatTimer
    SHX4_2 = 30
    SHX5_2 = false
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = SHX1_1.locations
  SHX4_2 = SHX2_1
  SHX3_2 = SHX3_2[SHX4_2]
  SHX4_2 = assert
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerCoords
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX3_2.bloodMoney
  SHX4_2 = SHX4_2 - SHX5_2
  SHX5_2 = 0.0
  SHX6_2 = SHX4_2.x
  if SHX6_2 > 0.0 then
    SHX6_2 = math
    SHX6_2 = SHX6_2.atan
    SHX7_2 = SHX4_2.y
    SHX8_2 = SHX4_2.x
    SHX7_2 = SHX7_2 / SHX8_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = math
    SHX7_2 = SHX7_2.pi
    SHX8_2 = 180.0
    SHX7_2 = SHX8_2 / SHX7_2
    SHX7_2 = SHX6_2 * SHX7_2
    SHX8_2 = 270.0
    SHX5_2 = SHX8_2 - SHX7_2
  else
    SHX6_2 = SHX4_2.x
    if SHX6_2 < 0.0 then
      SHX6_2 = math
      SHX6_2 = SHX6_2.atan
      SHX7_2 = SHX4_2.y
      SHX8_2 = SHX4_2.x
      SHX8_2 = -SHX8_2
      SHX7_2 = SHX7_2 / SHX8_2
      SHX6_2 = SHX6_2(SHX7_2)
      SHX7_2 = math
      SHX7_2 = SHX7_2.pi
      SHX8_2 = 180.0
      SHX7_2 = SHX8_2 / SHX7_2
      SHX7_2 = SHX6_2 * SHX7_2
      SHX5_2 = SHX7_2 + 90.0
    end
  end
  SHX6_2 = SHX3_1
  SHX7_2 = SHX0_1.durationMsec
  SHX6_2 = SHX6_2 + SHX7_2
  SHX7_2 = math
  SHX7_2 = SHX7_2.floor
  SHX8_2 = GetNetworkTime
  SHX8_2 = SHX8_2()
  SHX8_2 = SHX6_2 - SHX8_2
  SHX8_2 = SHX8_2 / 1000.0
  SHX7_2 = SHX7_2(SHX8_2)
  if SHX7_2 <= 0 then
    return
  end
  SHX8_2 = SHX7_2 % 60
  SHX9_2 = math
  SHX9_2 = SHX9_2.floor
  SHX10_2 = SHX7_2 / 60
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = string
  SHX10_2 = SHX10_2.format
  SHX11_2 = "Time Left: %s:%s"
  SHX12_2 = string
  SHX12_2 = SHX12_2.rpad
  SHX13_2 = tostring
  SHX14_2 = SHX9_2
  SHX13_2 = SHX13_2(SHX14_2)
  SHX14_2 = 2
  SHX15_2 = "0"
  SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2)
  SHX13_2 = string
  SHX13_2 = SHX13_2.rpad
  SHX14_2 = tostring
  SHX15_2 = SHX8_2
  SHX14_2 = SHX14_2(SHX15_2)
  SHX15_2 = 2
  SHX16_2 = "0"
  SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
  SHX11_2 = 0
  SHX12_2 = pairs
  SHX13_2 = GetActivePlayers
  SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2 = SHX13_2()
  SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
  for SHX16_2, SHX17_2 in SHX12_2, SHX13_2, SHX14_2, SHX15_2 do
    SHX18_2 = GetPlayerPed
    SHX19_2 = SHX17_2
    SHX18_2 = SHX18_2(SHX19_2)
    if 0 ~= SHX18_2 then
      SHX19_2 = IsEntityVisible
      SHX20_2 = SHX18_2
      SHX19_2 = SHX19_2(SHX20_2)
      if SHX19_2 then
        SHX11_2 = SHX11_2 + 1
      end
    end
  end
  SHX12_2 = Scaleform
  SHX13_2 = "mp_mission_name_freemode"
  SHX12_2 = SHX12_2(SHX13_2)
  SHX13_2 = SHX12_2.RunFunction
  SHX14_2 = "SET_MISSION_INFO"
  SHX15_2 = {}
  SHX16_2 = SHX10_2
  SHX17_2 = "Blood Money"
  SHX18_2 = ""
  SHX19_2 = ""
  SHX20_2 = ""
  SHX21_2 = ""
  SHX22_2 = SHX11_2
  SHX23_2 = "0"
  SHX24_2 = ""
  SHX25_2 = ""
  SHX15_2[1] = SHX16_2
  SHX15_2[2] = SHX17_2
  SHX15_2[3] = SHX18_2
  SHX15_2[4] = SHX19_2
  SHX15_2[5] = SHX20_2
  SHX15_2[6] = SHX21_2
  SHX15_2[7] = SHX22_2
  SHX15_2[8] = SHX23_2
  SHX15_2[9] = SHX24_2
  SHX15_2[10] = SHX25_2
  SHX13_2(SHX14_2, SHX15_2)
  SHX13_2 = SHX12_2.Render3D
  SHX14_2 = SHX3_2.bloodMoney
  SHX15_2 = vector3
  SHX16_2 = 0
  SHX17_2 = 0
  SHX18_2 = SHX5_2
  SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2)
  SHX16_2 = vector2
  SHX17_2 = 6.0
  SHX18_2 = 6.0
  SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2 = SHX16_2(SHX17_2, SHX18_2)
  SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
end
SHX5_1 = RegisterNetEvent
SHX6_1 = "3aba363f0a"
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_1 = SHX0_2
  SHX3_1 = SHX1_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.createThreadOnTick
  SHX3_2 = SHX4_1
  SHX4_2 = "Blood Money"
  SHX2_2(SHX3_2, SHX4_2)
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "4f69347c6e"
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = nil
  SHX2_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.deleteThreadOnTick
  SHX1_2 = SHX4_1
  SHX0_2(SHX1_2)
end
SHX5_1(SHX6_1, SHX7_1)
