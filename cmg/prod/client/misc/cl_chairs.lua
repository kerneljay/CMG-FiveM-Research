-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_chairs"
SHX0_1, SHX1_1, SHX2_1 = SHX0_1(SHX1_1)
SHX3_1 = {}
SHX3_1.isSitting = false
SHX3_1.isLaying = false
SHX3_1.entity = 0
SHX3_1.poly = false
SHX3_1.type = nil
SHX3_1.lastPos = nil
SHX3_1.targetPos = nil
SHX3_1.teleportOut = false
SHX3_1.frozen = false
SHX3_1.plyFrozen = false
SHX4_1 = {}
SHX3_1.animation = SHX4_1
SHX3_1.scenario = false
SHX3_1.showingPrompt = false
SHX3_1.attAction = false
SHX3_1.lastAttemptTime = 0
SHX4_1 = 0
SHX5_1 = {}
SHX6_1 = "WORLD_HUMAN_SEAT_LEDGE"
SHX7_1 = "WORLD_HUMAN_SEAT_LEDGE_EATING"
SHX8_1 = "WORLD_HUMAN_SEAT_STEPS"
SHX9_1 = "WORLD_HUMAN_SEAT_WALL"
SHX10_1 = "WORLD_HUMAN_SEAT_WALL_EATING"
SHX11_1 = "WORLD_HUMAN_SEAT_WALL_TABLET"
SHX12_1 = "PROP_HUMAN_SEAT_ARMCHAIR"
SHX13_1 = "PROP_HUMAN_SEAT_BAR"
SHX14_1 = "PROP_HUMAN_SEAT_BENCH"
SHX15_1 = "PROP_HUMAN_SEAT_BENCH_FACILITY"
SHX16_1 = "PROP_HUMAN_SEAT_BENCH_DRINK"
SHX17_1 = "PROP_HUMAN_SEAT_BENCH_DRINK_FACILITY"
SHX18_1 = "PROP_HUMAN_SEAT_BENCH_DRINK_BEER"
SHX19_1 = "PROP_HUMAN_SEAT_BENCH_FOOD"
SHX20_1 = "PROP_HUMAN_SEAT_BENCH_FOOD_FACILITY"
SHX21_1 = "PROP_HUMAN_SEAT_BUS_STOP_WAIT"
SHX22_1 = "PROP_HUMAN_SEAT_CHAIR"
SHX23_1 = "PROP_HUMAN_SEAT_CHAIR_DRINK"
SHX24_1 = "PROP_HUMAN_SEAT_CHAIR_DRINK_BEER"
SHX25_1 = "PROP_HUMAN_SEAT_CHAIR_FOOD"
SHX26_1 = "PROP_HUMAN_SEAT_CHAIR_UPRIGHT"
SHX27_1 = "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER"
SHX28_1 = "PROP_HUMAN_SEAT_COMPUTER"
SHX29_1 = "PROP_HUMAN_SEAT_COMPUTER_LOW"
SHX30_1 = "PROP_HUMAN_SEAT_DECKCHAIR"
SHX31_1 = "PROP_HUMAN_SEAT_DECKCHAIR_DRINK"
SHX32_1 = "PROP_HUMAN_SEAT_MUSCLE_BENCH_PRESS"
SHX33_1 = "PROP_HUMAN_SEAT_MUSCLE_BENCH_PRESS_PRISON"
SHX34_1 = "PROP_HUMAN_SEAT_SEWING"
SHX35_1 = "PROP_HUMAN_SEAT_STRIP_WATCH"
SHX36_1 = "PROP_HUMAN_SEAT_SUNLOUNGER"
SHX5_1[1] = SHX6_1
SHX5_1[2] = SHX7_1
SHX5_1[3] = SHX8_1
SHX5_1[4] = SHX9_1
SHX5_1[5] = SHX10_1
SHX5_1[6] = SHX11_1
SHX5_1[7] = SHX12_1
SHX5_1[8] = SHX13_1
SHX5_1[9] = SHX14_1
SHX5_1[10] = SHX15_1
SHX5_1[11] = SHX16_1
SHX5_1[12] = SHX17_1
SHX5_1[13] = SHX18_1
SHX5_1[14] = SHX19_1
SHX5_1[15] = SHX20_1
SHX5_1[16] = SHX21_1
SHX5_1[17] = SHX22_1
SHX5_1[18] = SHX23_1
SHX5_1[19] = SHX24_1
SHX5_1[20] = SHX25_1
SHX5_1[21] = SHX26_1
SHX5_1[22] = SHX27_1
SHX5_1[23] = SHX28_1
SHX5_1[24] = SHX29_1
SHX5_1[25] = SHX30_1
SHX5_1[26] = SHX31_1
SHX5_1[27] = SHX32_1
SHX5_1[28] = SHX33_1
SHX5_1[29] = SHX34_1
SHX5_1[30] = SHX35_1
SHX5_1[31] = SHX36_1
SHX6_1 = CMG
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1.isSitting
  if not SHX0_2 then
    SHX0_2 = SHX3_1.isLaying
  end
  return SHX0_2
end
SHX6_1.isSittingOnChair = SHX7_1
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCombatTimer
  SHX1_2 = SHX1_2()
  if 0 == SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.canAnim
    SHX1_2 = SHX1_2()
    if SHX1_2 then
      SHX1_2 = GetEntityAttachedTo
      SHX2_2 = PlayerPedId
      SHX2_2, SHX3_2 = SHX2_2()
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      if 0 == SHX1_2 then
        SHX1_2 = RageUI
        SHX1_2 = SHX1_2.GetTimeSinceLastMenuToggle
        SHX1_2 = SHX1_2()
        SHX2_2 = 200
        if SHX1_2 > SHX2_2 then
          SHX1_2 = GetGameTimer
          SHX1_2 = SHX1_2()
          SHX2_2 = SHX4_1
          SHX1_2 = SHX1_2 - SHX2_2
          SHX2_2 = 1000
          if SHX1_2 > SHX2_2 then
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.isHandcuffed
            SHX1_2 = SHX1_2()
            if not SHX1_2 then
              SHX1_2 = true
              if not SHX0_2 then
                SHX2_2 = Citizen
                SHX2_2 = SHX2_2.Wait
                SHX3_2 = 0
                SHX2_2(SHX3_2)
                SHX2_2 = SHX6_1
                SHX3_2 = true
                SHX2_2 = SHX2_2(SHX3_2)
                SHX1_2 = SHX2_2
                if SHX1_2 then
                  SHX2_2 = Citizen
                  SHX2_2 = SHX2_2.Wait
                  SHX3_2 = 0
                  SHX2_2(SHX3_2)
                  SHX2_2 = SHX6_1
                  SHX3_2 = true
                  SHX2_2 = SHX2_2(SHX3_2)
                  SHX1_2 = SHX2_2
                end
              end
              return SHX1_2
          end
        end
      end
    end
  end
  else
    SHX1_2 = false
    return SHX1_2
  end
end
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = notify
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_1.UseNativeNotifiactions
  if SHX1_2 then
    SHX1_2 = SHX7_1
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  else
    SHX1_2 = exports
    SHX1_2 = SHX1_2.mythic_notify
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.SendAlert
    SHX3_2 = "error"
    SHX4_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  end
end
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = RequestAnimDict
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  while true do
    SHX1_2 = HasAnimDictLoaded
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      break
    end
    SHX1_2 = Wait
    SHX2_2 = 10
    SHX1_2(SHX2_2)
  end
end
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = SHX1_2.sit
  SHX1_2 = SHX1_2.seats
  SHX1_2 = #SHX1_2
  return SHX1_2
end
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = IsEntityPositionFrozen
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = NetworkRequestControlOfEntity
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
    SHX1_2 = FreezeEntityPosition
    SHX2_2 = SHX0_2
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
    SHX3_1.frozen = true
  end
end
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX3_1.frozen
  if SHX1_2 then
    SHX1_2 = FreezeEntityPosition
    SHX2_2 = SHX0_2
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
    SHX3_1.frozen = false
  end
end
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2
  SHX2_2 = 180.0
  if SHX1_2 > SHX2_2 then
    SHX2_2 = math
    SHX2_2 = SHX2_2.abs
    SHX3_2 = SHX1_2 - 180.0
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = 180.0
    SHX1_2 = SHX3_2 - SHX2_2
    SHX1_2 = SHX1_2 * -1
  end
  return SHX1_2
end
function SHX14_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX3_2 = math
  SHX3_2 = SHX3_2.rad
  SHX4_2 = SHX1_2.x
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = math
  SHX4_2 = SHX4_2.rad
  SHX5_2 = SHX1_2.y
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = math
  SHX5_2 = SHX5_2.rad
  SHX6_2 = SHX1_2.z
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = {}
  SHX7_2 = {}
  SHX6_2[1] = SHX7_2
  SHX7_2 = SHX6_2[1]
  SHX8_2 = math
  SHX8_2 = SHX8_2.cos
  SHX9_2 = SHX5_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = math
  SHX9_2 = SHX9_2.cos
  SHX10_2 = SHX4_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX8_2 = SHX8_2 * SHX9_2
  SHX9_2 = math
  SHX9_2 = SHX9_2.sin
  SHX10_2 = SHX5_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = math
  SHX10_2 = SHX10_2.sin
  SHX11_2 = SHX3_2
  SHX10_2 = SHX10_2(SHX11_2)
  SHX9_2 = SHX9_2 * SHX10_2
  SHX10_2 = math
  SHX10_2 = SHX10_2.sin
  SHX11_2 = SHX4_2
  SHX10_2 = SHX10_2(SHX11_2)
  SHX9_2 = SHX9_2 * SHX10_2
  SHX8_2 = SHX8_2 - SHX9_2
  SHX7_2[1] = SHX8_2
  SHX7_2 = SHX6_2[1]
  SHX8_2 = math
  SHX8_2 = SHX8_2.cos
  SHX9_2 = SHX4_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = math
  SHX9_2 = SHX9_2.sin
  SHX10_2 = SHX5_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX8_2 = SHX8_2 * SHX9_2
  SHX9_2 = math
  SHX9_2 = SHX9_2.cos
  SHX10_2 = SHX5_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = math
  SHX10_2 = SHX10_2.sin
  SHX11_2 = SHX3_2
  SHX10_2 = SHX10_2(SHX11_2)
  SHX9_2 = SHX9_2 * SHX10_2
  SHX10_2 = math
  SHX10_2 = SHX10_2.sin
  SHX11_2 = SHX4_2
  SHX10_2 = SHX10_2(SHX11_2)
  SHX9_2 = SHX9_2 * SHX10_2
  SHX8_2 = SHX8_2 + SHX9_2
  SHX7_2[2] = SHX8_2
  SHX7_2 = SHX6_2[1]
  SHX8_2 = math
  SHX8_2 = SHX8_2.cos
  SHX9_2 = SHX3_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX8_2 = -SHX8_2
  SHX9_2 = math
  SHX9_2 = SHX9_2.sin
  SHX10_2 = SHX4_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX8_2 = SHX8_2 * SHX9_2
  SHX7_2[3] = SHX8_2
  SHX7_2 = SHX6_2[1]
  SHX7_2[4] = 1
  SHX7_2 = {}
  SHX6_2[2] = SHX7_2
  SHX7_2 = SHX6_2[2]
  SHX8_2 = math
  SHX8_2 = SHX8_2.cos
  SHX9_2 = SHX3_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX8_2 = -SHX8_2
  SHX9_2 = math
  SHX9_2 = SHX9_2.sin
  SHX10_2 = SHX5_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX8_2 = SHX8_2 * SHX9_2
  SHX7_2[1] = SHX8_2
  SHX7_2 = SHX6_2[2]
  SHX8_2 = math
  SHX8_2 = SHX8_2.cos
  SHX9_2 = SHX5_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = math
  SHX9_2 = SHX9_2.cos
  SHX10_2 = SHX3_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX8_2 = SHX8_2 * SHX9_2
  SHX7_2[2] = SHX8_2
  SHX7_2 = SHX6_2[2]
  SHX8_2 = math
  SHX8_2 = SHX8_2.sin
  SHX9_2 = SHX3_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX7_2[3] = SHX8_2
  SHX7_2 = SHX6_2[2]
  SHX7_2[4] = 1
  SHX7_2 = {}
  SHX6_2[3] = SHX7_2
  SHX7_2 = SHX6_2[3]
  SHX8_2 = math
  SHX8_2 = SHX8_2.cos
  SHX9_2 = SHX5_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = math
  SHX9_2 = SHX9_2.sin
  SHX10_2 = SHX4_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX8_2 = SHX8_2 * SHX9_2
  SHX9_2 = math
  SHX9_2 = SHX9_2.cos
  SHX10_2 = SHX4_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = math
  SHX10_2 = SHX10_2.sin
  SHX11_2 = SHX5_2
  SHX10_2 = SHX10_2(SHX11_2)
  SHX9_2 = SHX9_2 * SHX10_2
  SHX10_2 = math
  SHX10_2 = SHX10_2.sin
  SHX11_2 = SHX3_2
  SHX10_2 = SHX10_2(SHX11_2)
  SHX9_2 = SHX9_2 * SHX10_2
  SHX8_2 = SHX8_2 + SHX9_2
  SHX7_2[1] = SHX8_2
  SHX7_2 = SHX6_2[3]
  SHX8_2 = math
  SHX8_2 = SHX8_2.sin
  SHX9_2 = SHX5_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = math
  SHX9_2 = SHX9_2.sin
  SHX10_2 = SHX4_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX8_2 = SHX8_2 * SHX9_2
  SHX9_2 = math
  SHX9_2 = SHX9_2.cos
  SHX10_2 = SHX5_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = math
  SHX10_2 = SHX10_2.cos
  SHX11_2 = SHX4_2
  SHX10_2 = SHX10_2(SHX11_2)
  SHX9_2 = SHX9_2 * SHX10_2
  SHX10_2 = math
  SHX10_2 = SHX10_2.sin
  SHX11_2 = SHX3_2
  SHX10_2 = SHX10_2(SHX11_2)
  SHX9_2 = SHX9_2 * SHX10_2
  SHX8_2 = SHX8_2 - SHX9_2
  SHX7_2[2] = SHX8_2
  SHX7_2 = SHX6_2[3]
  SHX8_2 = math
  SHX8_2 = SHX8_2.cos
  SHX9_2 = SHX3_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = math
  SHX9_2 = SHX9_2.cos
  SHX10_2 = SHX4_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX8_2 = SHX8_2 * SHX9_2
  SHX7_2[3] = SHX8_2
  SHX7_2 = SHX6_2[3]
  SHX7_2[4] = 1
  SHX7_2 = {}
  SHX6_2[4] = SHX7_2
  SHX7_2 = SHX6_2[4]
  SHX8_2 = SHX6_2[4]
  SHX9_2 = SHX6_2[4]
  SHX10_2 = SHX0_2.x
  SHX11_2 = SHX0_2.y
  SHX12_2 = SHX0_2.z
  SHX9_2[3] = SHX12_2
  SHX8_2[2] = SHX11_2
  SHX7_2[1] = SHX10_2
  SHX7_2 = SHX6_2[4]
  SHX7_2[4] = 1
  SHX7_2 = SHX2_2.x
  SHX8_2 = SHX6_2[1]
  SHX8_2 = SHX8_2[1]
  SHX7_2 = SHX7_2 * SHX8_2
  SHX8_2 = SHX2_2.y
  SHX9_2 = SHX6_2[2]
  SHX9_2 = SHX9_2[1]
  SHX8_2 = SHX8_2 * SHX9_2
  SHX7_2 = SHX7_2 + SHX8_2
  SHX8_2 = SHX2_2.z
  SHX9_2 = SHX6_2[3]
  SHX9_2 = SHX9_2[1]
  SHX8_2 = SHX8_2 * SHX9_2
  SHX7_2 = SHX7_2 + SHX8_2
  SHX8_2 = SHX6_2[4]
  SHX8_2 = SHX8_2[1]
  SHX7_2 = SHX7_2 + SHX8_2
  SHX8_2 = SHX2_2.x
  SHX9_2 = SHX6_2[1]
  SHX9_2 = SHX9_2[2]
  SHX8_2 = SHX8_2 * SHX9_2
  SHX9_2 = SHX2_2.y
  SHX10_2 = SHX6_2[2]
  SHX10_2 = SHX10_2[2]
  SHX9_2 = SHX9_2 * SHX10_2
  SHX8_2 = SHX8_2 + SHX9_2
  SHX9_2 = SHX2_2.z
  SHX10_2 = SHX6_2[3]
  SHX10_2 = SHX10_2[2]
  SHX9_2 = SHX9_2 * SHX10_2
  SHX8_2 = SHX8_2 + SHX9_2
  SHX9_2 = SHX6_2[4]
  SHX9_2 = SHX9_2[2]
  SHX8_2 = SHX8_2 + SHX9_2
  SHX9_2 = SHX2_2.x
  SHX10_2 = SHX6_2[1]
  SHX10_2 = SHX10_2[3]
  SHX9_2 = SHX9_2 * SHX10_2
  SHX10_2 = SHX2_2.y
  SHX11_2 = SHX6_2[2]
  SHX11_2 = SHX11_2[3]
  SHX10_2 = SHX10_2 * SHX11_2
  SHX9_2 = SHX9_2 + SHX10_2
  SHX10_2 = SHX2_2.z
  SHX11_2 = SHX6_2[3]
  SHX11_2 = SHX11_2[3]
  SHX10_2 = SHX10_2 * SHX11_2
  SHX9_2 = SHX9_2 + SHX10_2
  SHX10_2 = SHX6_2[4]
  SHX10_2 = SHX10_2[3]
  SHX9_2 = SHX9_2 + SHX10_2
  SHX10_2 = vector3
  SHX11_2 = SHX7_2
  SHX12_2 = SHX8_2
  SHX13_2 = SHX9_2
  return SHX10_2(SHX11_2, SHX12_2, SHX13_2)
end
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = SHX0_1.LayTypes
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.animation
    SHX9_2 = SHX8_2.dict
    SHX9_2 = SHX1_2[SHX9_2]
    if not SHX9_2 then
      SHX9_2 = IsEntityPlayingAnim
      SHX10_2 = SHX0_2
      SHX11_2 = SHX8_2.dict
      SHX12_2 = SHX8_2.name
      SHX13_2 = 3
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      if SHX9_2 then
        SHX9_2 = true
        return SHX9_2
      else
        SHX9_2 = SHX8_2.dict
        SHX1_2[SHX9_2] = true
      end
    end
  end
  SHX2_2 = false
  return SHX2_2
end
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = SHX5_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = IsPedUsingScenario
    SHX8_2 = SHX0_2
    SHX9_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX7_2 then
      SHX7_2 = true
      return SHX7_2
    end
  end
  SHX1_2 = false
  return SHX1_2
end
function SHX17_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = pairs
  SHX4_2 = GetGamePool
  SHX5_2 = "CPed"
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX4_2(SHX5_2)
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if SHX8_2 ~= SHX2_2 then
      SHX9_2 = GetEntityCoords
      SHX10_2 = SHX8_2
      SHX9_2 = SHX9_2(SHX10_2)
      SHX9_2 = SHX9_2 - SHX0_2
      SHX9_2 = #SHX9_2
      SHX10_2 = 1.35
      if SHX9_2 < SHX10_2 then
        if "sit" == SHX1_2 then
          SHX10_2 = SHX15_1
          SHX11_2 = SHX8_2
          SHX10_2 = SHX10_2(SHX11_2)
          if not SHX10_2 then
            SHX10_2 = 0.55
          end
          if SHX9_2 < SHX10_2 then
            SHX10_2 = false
            return SHX10_2
          end
        elseif "lay" == SHX1_2 then
          SHX10_2 = SHX15_1
          SHX11_2 = SHX8_2
          SHX10_2 = SHX10_2(SHX11_2)
          if not SHX10_2 then
            SHX10_2 = SHX16_1
            SHX11_2 = SHX8_2
            SHX10_2 = SHX10_2(SHX11_2)
            if not SHX10_2 then
              goto SHX_LABEL_47
            end
          end
          SHX10_2 = false
          return SHX10_2
        end
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_47:: outside nested blocks until all 'goto SHX_LABEL_47' can see it
    ::SHX_LABEL_47::
  end
  SHX3_2 = true
  return SHX3_2
end
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX0_2.dist
  SHX3_2 = SHX1_2.dist
  SHX2_2 = SHX2_2 < SHX3_2
  return SHX2_2
end
function SHX19_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX3_2 = StartShapeTestLosProbe
  SHX4_2 = SHX0_2.x
  SHX5_2 = SHX0_2.y
  SHX6_2 = SHX0_2.z
  SHX7_2 = SHX1_2.x
  SHX8_2 = SHX1_2.y
  SHX9_2 = SHX1_2.z
  SHX10_2 = -1
  SHX11_2 = SHX2_2
  SHX12_2 = 4
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  while true do
    SHX4_2 = GetShapeTestResult
    SHX5_2 = SHX3_2
    SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2(SHX5_2)
    if 1 ~= SHX4_2 then
      SHX9_2 = SHX5_2
      SHX10_2 = SHX6_2
      SHX11_2 = SHX7_2
      SHX12_2 = SHX8_2
      return SHX9_2, SHX10_2, SHX11_2, SHX12_2
    end
    SHX9_2 = Wait
    SHX10_2 = 0
    SHX9_2(SHX10_2)
  end
end
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = GetWorldCoordFromScreenCoord
  SHX1_2 = 0.5
  SHX2_2 = 0.5
  SHX0_2, SHX1_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX2_2 = SHX1_2 * 10
  SHX2_2 = SHX0_2 + SHX2_2
  SHX3_2 = SHX19_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX2_2
  SHX6_2 = PlayerPedId
  SHX6_2 = SHX6_2()
  SHX3_2, SHX4_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  if SHX3_2 then
    return SHX4_2
  else
    SHX5_2 = false
    return SHX5_2
  end
end
function SHX21_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX3_2 = {}
  SHX4_2 = GetEntityCoords
  SHX5_2 = PlayerPedId
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX5_2()
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  if SHX2_2 then
    SHX5_2 = SHX0_1.Target
    if SHX5_2 then
      SHX5_2 = SHX0_1.UseTargetingCoords
      if SHX5_2 then
        SHX5_2 = SHX20_1
        SHX5_2 = SHX5_2()
        if SHX5_2 then
          SHX4_2 = SHX5_2
        end
      end
    end
  end
  SHX5_2 = pairs
  SHX6_2 = SHX1_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = {}
    SHX3_2[SHX9_2] = SHX11_2
    if SHX0_2 then
      SHX11_2 = SHX0_2.w
      SHX12_2 = vector3
      SHX13_2 = 0.0
      SHX14_2 = 0.0
      SHX15_2 = SHX13_1
      SHX16_2 = SHX0_2.w
      SHX15_2, SHX16_2, SHX17_2 = SHX15_2(SHX16_2)
      SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      SHX13_2 = SHX3_2[SHX9_2]
      SHX14_2 = SHX14_1
      SHX15_2 = SHX0_2.xyz
      SHX16_2 = SHX12_2
      SHX17_2 = SHX10_2
      SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2)
      SHX13_2.coords = SHX14_2
      SHX13_2 = SHX10_2.w
      SHX11_2 = SHX11_2 + SHX13_2
      SHX13_2 = 360.0
      if SHX11_2 > SHX13_2 then
        SHX11_2 = SHX11_2 - 360.0
      end
      SHX13_2 = SHX3_2[SHX9_2]
      SHX13_2.heading = SHX11_2
    else
      SHX11_2 = SHX3_2[SHX9_2]
      SHX12_2 = SHX10_2.xyz
      SHX11_2.coords = SHX12_2
      SHX11_2 = SHX3_2[SHX9_2]
      SHX12_2 = SHX10_2.w
      SHX11_2.heading = SHX12_2
    end
    SHX11_2 = SHX3_2[SHX9_2]
    SHX12_2 = SHX3_2[SHX9_2]
    SHX12_2 = SHX12_2.coords
    SHX12_2 = SHX4_2 - SHX12_2
    SHX12_2 = #SHX12_2
    SHX11_2.dist = SHX12_2
  end
  SHX5_2 = table
  SHX5_2 = SHX5_2.sort
  SHX6_2 = SHX3_2
  SHX7_2 = SHX18_1
  SHX5_2(SHX6_2, SHX7_2)
  return SHX3_2
end
function SHX22_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX4_2 = nil
  SHX5_2 = nil
  SHX6_2 = SHX21_1
  SHX7_2 = SHX0_2
  SHX8_2 = SHX1_2
  SHX9_2 = SHX2_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX7_2 = pairs
  SHX8_2 = SHX6_2
  SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
  for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
    if not SHX3_2 then
      SHX13_2 = SHX17_1
      SHX14_2 = SHX12_2.coords
      SHX15_2 = "sit"
      SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
      if not SHX13_2 then
        goto SHX_LABEL_22
      end
    end
    SHX4_2 = SHX12_2.coords
    SHX5_2 = SHX12_2.heading
    do break end
    -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
    ::SHX_LABEL_22::
  end
  SHX7_2 = SHX4_2
  SHX8_2 = SHX5_2
  return SHX7_2, SHX8_2
end
function SHX23_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_1.isSitting = false
  SHX3_1.isLaying = false
  SHX3_1.scenario = false
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX3_1.plyFrozen
  if SHX4_2 then
    SHX4_2 = SetEntityCollision
    SHX5_2 = SHX3_2
    SHX6_2 = true
    SHX7_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = FreezeEntityPosition
    SHX5_2 = SHX3_2
    SHX6_2 = false
    SHX4_2(SHX5_2, SHX6_2)
    SHX3_1.plyFrozen = false
  end
  SHX4_2 = SHX3_1.entity
  if 0 ~= SHX4_2 then
    SHX4_2 = SHX12_1
    SHX5_2 = SHX3_1.entity
    SHX4_2(SHX5_2)
    SHX3_1.entity = 0
  end
  if SHX0_2 or SHX1_2 then
    if SHX2_2 then
      SHX4_2 = CreateThread
      function SHX5_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
        while true do
          SHX0_3 = IsEntityAttachedToAnyPed
          SHX1_3 = PlayerPedId
          SHX1_3 = SHX1_3()
          SHX0_3 = SHX0_3(SHX1_3)
          if not SHX0_3 then
            break
          end
          SHX0_3 = Wait
          SHX1_3 = 200
          SHX0_3(SHX1_3)
        end
        SHX0_3 = ClearPedTasksImmediately
        SHX1_3 = PlayerPedId
        SHX1_3 = SHX1_3()
        SHX0_3(SHX1_3)
      end
      SHX4_2(SHX5_2)
    elseif SHX0_2 then
      SHX4_2 = ClearPedTasks
      SHX5_2 = SHX3_2
      SHX4_2(SHX5_2)
    else
      SHX4_2 = ClearPedTasksImmediately
      SHX5_2 = SHX3_2
      SHX4_2(SHX5_2)
    end
  end
end
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = SHX3_1.lastPos
  if SHX0_2 then
    SHX0_2 = SHX0_1.AlwaysTeleportOutOfSeat
    if not SHX0_2 then
      SHX0_2 = SHX0_1.TeleportToLastPosWhenNoRoute
      if not SHX0_2 then
        SHX0_2 = SHX0_1.SitTypes
        SHX1_2 = SHX3_1.type
        SHX0_2 = SHX0_2[SHX1_2]
        SHX0_2 = SHX0_2.teleportOut
        if not SHX0_2 then
          SHX0_2 = SHX3_1.teleportOut
          if not SHX0_2 then
            goto SHX_LABEL_42
          end
        end
      end
    end
    SHX0_2 = ClearPedTasks
    SHX1_2 = PlayerPedId
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX1_2()
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = Wait
    SHX1_2 = 1500
    SHX0_2(SHX1_2)
    SHX0_2 = SetEntityCoords
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = SHX3_1.lastPos
    SHX2_2 = SHX2_2.x
    SHX3_2 = SHX3_1.lastPos
    SHX3_2 = SHX3_2.y
    SHX4_2 = SHX3_1.lastPos
    SHX4_2 = SHX4_2.z
    SHX4_2 = SHX4_2 - 0.95
    SHX5_2 = false
    SHX6_2 = false
    SHX7_2 = false
    SHX8_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_42:: outside nested blocks until all 'goto SHX_LABEL_42' can see it
  ::SHX_LABEL_42::
  SHX0_2 = SHX23_1
  SHX1_2 = true
  SHX2_2 = false
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX0_1.SitTypes
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = SHX1_2.scenarios
  if not SHX1_2 then
    SHX2_2 = false
    SHX3_2 = vector4
    SHX4_2 = 0.0
    SHX5_2 = 0.0
    SHX6_2 = 0.0
    SHX7_2 = 0.0
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    return SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  end
  SHX2_2 = 1
  SHX3_2 = #SHX1_2
  if SHX3_2 > 1 then
    SHX3_2 = math
    SHX3_2 = SHX3_2.floor
    SHX4_2 = math
    SHX4_2 = SHX4_2.random
    SHX5_2 = 100
    SHX6_2 = #SHX1_2
    SHX6_2 = SHX6_2 * 100
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = SHX4_2 / 100
    SHX4_2 = SHX4_2 + 0.5
    SHX3_2 = SHX3_2(SHX4_2)
    SHX2_2 = SHX3_2
  end
  SHX3_2 = SHX1_2[SHX2_2]
  SHX3_2 = SHX3_2.name
  SHX4_2 = SHX1_2[SHX2_2]
  SHX4_2 = SHX4_2.offset
  if not SHX4_2 then
    SHX4_2 = SHX0_1.SitTypes
    SHX4_2 = SHX4_2.default
    SHX4_2 = SHX4_2.scenarios
    SHX4_2 = SHX4_2[1]
    SHX4_2 = SHX4_2.offset
  end
  return SHX3_2, SHX4_2
end
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = IsPedUsingScenario
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX3_1.scenario
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if not SHX0_2 then
    SHX0_2 = SHX3_1.isSitting
    if not SHX0_2 then
      SHX0_2 = SHX3_1.isLaying
      if not SHX0_2 then
        goto SHX_LABEL_17
      end
    end
  end
  SHX0_2 = true
  return SHX0_2
  goto SHX_LABEL_19
  -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
  ::SHX_LABEL_17::
  SHX0_2 = false
  return SHX0_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_19:: outside nested blocks until all 'goto SHX_LABEL_19' can see it
  ::SHX_LABEL_19::
end
function SHX27_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = GetEntityCoords
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = vector3
  SHX5_2 = SHX3_2.x
  SHX6_2 = SHX3_2.y
  SHX7_2 = SHX3_2.z
  SHX7_2 = SHX7_2 + 0.25
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = SHX19_1
  SHX6_2 = SHX4_2
  SHX7_2 = SHX0_2
  SHX8_2 = SHX2_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  while true do
    SHX9_2 = GetEntityType
    SHX10_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2)
    if 1 ~= SHX9_2 then
      SHX9_2 = SHX6_2 - SHX0_2
      SHX9_2 = #SHX9_2
      SHX10_2 = 0.5
      if not (SHX9_2 < SHX10_2) then
        SHX10_2 = SHX6_2.x
        if 0.0 ~= SHX10_2 and SHX8_2 ~= SHX1_2 then
          goto SHX_LABEL_37
        end
      end
      SHX10_2 = true
      return SHX10_2
      goto SHX_LABEL_51
      -- [FIX IF ERROR] Move ::SHX_LABEL_37:: outside nested blocks until all 'goto SHX_LABEL_37' can see it
      ::SHX_LABEL_37::
      SHX10_2 = false
      return SHX10_2
    else
      SHX9_2 = SHX19_1
      SHX10_2 = GetEntityCoords
      SHX11_2 = SHX8_2
      SHX10_2 = SHX10_2(SHX11_2)
      SHX11_2 = SHX0_2
      SHX12_2 = SHX8_2
      SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
      SHX8_2 = SHX12_2
      SHX7_2 = SHX11_2
      SHX6_2 = SHX10_2
      SHX7_2 = SHX9_2
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_51:: outside nested blocks until all 'goto SHX_LABEL_51' can see it
    ::SHX_LABEL_51::
    SHX9_2 = Wait
    SHX10_2 = 0
    SHX9_2(SHX10_2)
  end
end
function SHX28_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX3_2 = SHX13_1
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX14_1
  SHX5_2 = SHX0_2
  SHX6_2 = vector3
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = SHX3_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX7_2 = vector3
  SHX8_2 = 0.0
  SHX9_2 = 0.25
  SHX10_2 = 0.0
  SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX5_2 = vector3
  SHX6_2 = SHX4_2.x
  SHX7_2 = SHX4_2.y
  SHX8_2 = SHX4_2.z
  SHX8_2 = SHX8_2 + 0.3
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX6_2 = SHX19_1
  SHX7_2 = SHX4_2
  SHX8_2 = SHX5_2
  SHX9_2 = SHX2_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  if 0 == SHX6_2 then
    SHX7_2 = true
    return SHX7_2
  else
    SHX7_2 = false
    return SHX7_2
  end
end
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX3_1.lastAttemptTime
  SHX1_2 = SHX1_2 - SHX2_2
  SHX2_2 = 2500
  if SHX1_2 < SHX2_2 then
    return
  end
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX3_1.lastAttemptTime = SHX1_2
  SHX3_1.attAction = true
  SHX1_2 = SHX0_2.entity
  SHX3_1.entity = SHX1_2
  SHX1_2 = SHX0_2.poly
  SHX3_1.poly = SHX1_2
  SHX1_2 = SHX0_2.sit
  SHX1_2 = SHX1_2.type
  SHX3_1.type = SHX1_2
  SHX1_2 = SHX0_2.sit
  SHX2_2 = SHX0_1.SitTypes
  SHX3_2 = SHX1_2.type
  SHX2_2 = SHX2_2[SHX3_2]
  SHX3_2 = nil
  if not SHX2_2 then
    SHX4_2 = print
    SHX5_2 = "^3Warning: No settings were set for type^2"
    SHX6_2 = SHX1_2.type
    SHX7_2 = "^3 in Config.SitTypes, the default settings were used instead!"
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX1_2.type = "default"
    SHX4_2 = SHX0_1.SitTypes
    SHX2_2 = SHX4_2.default
  end
  SHX4_2 = SHX0_2.entity
  if nil ~= SHX4_2 then
    SHX4_2 = SHX0_2.entity
    if 0 ~= SHX4_2 then
      SHX4_2 = GetEntityRotation
      SHX5_2 = SHX0_2.entity
      SHX4_2 = SHX4_2(SHX5_2)
      SHX5_2 = SHX4_2.x
      SHX6_2 = SHX4_2.y
      if SHX5_2 < 0.0 then
        SHX5_2 = SHX5_2 * -1
      end
      if SHX6_2 < 0.0 then
        SHX6_2 = SHX6_2 * -1
      end
      SHX7_2 = SHX5_2 + SHX6_2
      SHX8_2 = SHX0_1.MaxTilt
      if SHX7_2 > SHX8_2 then
        SHX8_2 = SHX8_1
        SHX9_2 = SHX0_1.Lang
        SHX9_2 = SHX9_2.Notification
        SHX9_2 = SHX9_2.TooTilted
        SHX8_2(SHX9_2)
        SHX3_1.attAction = false
        return
      end
      SHX8_2 = GetEntityCoords
      SHX9_2 = SHX0_2.entity
      SHX8_2 = SHX8_2(SHX9_2)
      SHX9_2 = vector4
      SHX10_2 = SHX8_2.x
      SHX11_2 = SHX8_2.y
      SHX12_2 = SHX8_2.z
      SHX13_2 = GetEntityHeading
      SHX14_2 = SHX0_2.entity
      SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2 = SHX13_2(SHX14_2)
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
      SHX3_2 = SHX9_2
    end
  end
  SHX4_2 = SHX22_1
  SHX5_2 = SHX3_2
  SHX6_2 = SHX1_2.seats
  SHX7_2 = SHX0_2.raycast
  SHX4_2, SHX5_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  if nil == SHX4_2 then
    SHX6_2 = GetEntityModel
    SHX7_2 = SHX0_2.entity
    SHX6_2 = SHX6_2(SHX7_2)
    if 0 ~= SHX6_2 then
      SHX7_2 = SHX10_1
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if 1 ~= SHX7_2 then
        SHX7_2 = SHX8_1
        SHX8_2 = SHX0_1.Lang
        SHX8_2 = SHX8_2.Notification
        SHX8_2 = SHX8_2.NoAvailable
        SHX7_2(SHX8_2)
    end
    else
      SHX7_2 = SHX8_1
      SHX8_2 = SHX0_1.Lang
      SHX8_2 = SHX8_2.Notification
      SHX8_2 = SHX8_2.OccupiedSit
      SHX7_2(SHX8_2)
    end
    SHX3_1.attAction = false
    return
  end
  if nil == SHX5_2 then
    SHX6_2 = SHX8_1
    SHX7_2 = SHX0_1.Lang
    SHX7_2 = SHX7_2.Notification
    SHX7_2 = SHX7_2.NoAvailable
    SHX6_2(SHX7_2)
    SHX6_2 = print
    SHX7_2 = "^1Error: Heading was nil!"
    SHX6_2(SHX7_2)
    SHX3_1.attAction = false
    return
  end
  SHX6_2 = SHX1_2.skipSeeCheck
  if not SHX6_2 then
    SHX6_2 = false
  end
  if not SHX6_2 then
    SHX7_2 = SHX27_1
    SHX8_2 = SHX4_2
    SHX9_2 = SHX0_2.entity
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if not SHX7_2 then
      SHX7_2 = SHX8_1
      SHX8_2 = SHX0_1.Lang
      SHX8_2 = SHX8_2.Notification
      SHX8_2 = SHX8_2.CannotReachSeat
      SHX7_2(SHX8_2)
      SHX3_1.attAction = false
      return
    end
  end
  SHX7_2 = SHX0_2.entity
  if 0 ~= SHX7_2 then
    SHX7_2 = SHX28_1
    SHX8_2 = SHX4_2
    SHX9_2 = SHX5_2
    SHX10_2 = SHX0_2.entity
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    if not SHX7_2 then
      SHX7_2 = SHX8_1
      SHX8_2 = SHX0_1.Lang
      SHX8_2 = SHX8_2.Notification
      SHX8_2 = SHX8_2.CannotSitInSeat
      SHX7_2(SHX8_2)
      SHX3_1.attAction = false
      return
    end
  end
  SHX7_2 = SHX25_1
  SHX8_2 = SHX1_2.type
  SHX7_2, SHX8_2 = SHX7_2(SHX8_2)
  SHX9_2 = SHX8_2.w
  SHX5_2 = SHX5_2 + SHX9_2
  SHX9_2 = 360.0
  if SHX5_2 > SHX9_2 then
    SHX5_2 = SHX5_2 - 360.0
  end
  SHX9_2 = SHX13_1
  SHX10_2 = SHX5_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = SHX14_1
  SHX11_2 = SHX4_2
  SHX12_2 = vector3
  SHX13_2 = 0.0
  SHX14_2 = 0.0
  SHX15_2 = SHX9_2
  SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2)
  SHX13_2 = SHX8_2.xyz
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX4_2 = SHX10_2
  SHX10_2 = PlayerPedId
  SHX10_2 = SHX10_2()
  SHX11_2 = GetEntityCoords
  SHX12_2 = SHX10_2
  SHX11_2 = SHX11_2(SHX12_2)
  SHX3_1.teleportOut = false
  SHX3_1.lastPos = nil
  SHX12_2 = SHX0_1.AlwaysTeleportOutOfSeat
  if not SHX12_2 then
    SHX12_2 = SHX2_2.teleportOut
    if not SHX12_2 then
      SHX12_2 = SHX1_2.teleportOut
      if not SHX12_2 then
        goto SHX_LABEL_199
      end
    end
  end
  SHX3_1.teleportOut = true
  SHX3_1.lastPos = SHX11_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_199:: outside nested blocks until all 'goto SHX_LABEL_199' can see it
  ::SHX_LABEL_199::
  SHX12_2 = SHX3_1.isSitting
  if not SHX12_2 then
    SHX12_2 = SHX3_1.isLaying
    if not SHX12_2 then
      goto SHX_LABEL_235
    end
  end
  SHX12_2 = SHX4_2 - SHX11_2
  SHX12_2 = #SHX12_2
  SHX13_2 = 0.2
  if SHX12_2 < SHX13_2 then
    SHX12_2 = SHX24_1
    SHX12_2()
    SHX3_1.attAction = false
    return
  else
    SHX12_2 = SHX3_1.teleportOut
    if SHX12_2 then
      SHX12_2 = SHX23_1
      SHX13_2 = false
      SHX14_2 = true
      SHX15_2 = false
      SHX12_2(SHX13_2, SHX14_2, SHX15_2)
    else
      SHX12_2 = SHX23_1
      SHX13_2 = true
      SHX14_2 = false
      SHX15_2 = false
      SHX12_2(SHX13_2, SHX14_2, SHX15_2)
      SHX12_2 = Wait
      SHX13_2 = 2000
      SHX12_2(SHX13_2)
    end
    SHX12_2 = SHX0_2.entity
    SHX3_1.entity = SHX12_2
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_235:: outside nested blocks until all 'goto SHX_LABEL_235' can see it
  ::SHX_LABEL_235::
  SHX3_1.scenario = SHX7_2
  SHX3_1.isLaying = false
  SHX12_2 = {}
  SHX3_1.animation = SHX12_2
  SHX12_2 = ClearPedTasks
  SHX13_2 = SHX10_2
  SHX12_2(SHX13_2)
  SHX12_2 = SHX0_2.entity
  if 0 ~= SHX12_2 then
    SHX12_2 = SHX11_1
    SHX13_2 = SHX0_2.entity
    SHX12_2(SHX13_2)
  end
  SHX12_2 = SHX2_2.timeout
  if not SHX12_2 then
    SHX12_2 = SHX0_1.SitTypes
    SHX12_2 = SHX12_2.default
    SHX12_2 = SHX12_2.timeout
  end
  SHX13_2 = SHX2_2.skipGoStraightTask
  SHX14_2 = SHX4_2.xy
  SHX15_2 = GetEntityCoords
  SHX16_2 = SHX10_2
  SHX15_2 = SHX15_2(SHX16_2)
  SHX15_2 = SHX15_2.xy
  SHX14_2 = SHX14_2 - SHX15_2
  SHX14_2 = #SHX14_2
  SHX15_2 = SHX14_2
  SHX16_2 = SHX0_1.AlwaysTeleportToSeat
  if not SHX16_2 then
    SHX16_2 = SHX1_2.teleportIn
    if not SHX16_2 then
      SHX16_2 = SHX2_2.teleportIn
    end
  end
  SHX17_2 = 0
  SHX18_2 = 0
  if not SHX16_2 and not SHX13_2 then
    SHX19_2 = SHX14_1
    SHX20_2 = SHX4_2
    SHX21_2 = vector3
    SHX22_2 = 0.0
    SHX23_2 = 0.0
    SHX24_2 = SHX9_2
    SHX21_2 = SHX21_2(SHX22_2, SHX23_2, SHX24_2)
    SHX22_2 = vector3
    SHX23_2 = 0.0
    SHX24_2 = 0.695
    SHX25_2 = 0.0
    SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2 = SHX22_2(SHX23_2, SHX24_2, SHX25_2)
    SHX19_2 = SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
    SHX20_2 = TaskGoStraightToCoord
    SHX21_2 = SHX10_2
    SHX22_2 = SHX19_2.x
    SHX23_2 = SHX19_2.y
    SHX24_2 = SHX19_2.z
    SHX25_2 = 1
    SHX26_2 = SHX12_2 * 500
    SHX27_2 = SHX5_2
    SHX28_2 = 0.15
    SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
    while true do
      SHX20_2 = Wait
      SHX21_2 = 500
      SHX20_2(SHX21_2)
      SHX20_2 = SHX3_1.attAction
      if not SHX20_2 then
        return
      end
      SHX20_2 = GetEntityCoords
      SHX21_2 = SHX10_2
      SHX20_2 = SHX20_2(SHX21_2)
      SHX21_2 = SHX19_2.xy
      SHX22_2 = SHX20_2.xy
      SHX21_2 = SHX21_2 - SHX22_2
      SHX15_2 = #SHX21_2
      SHX18_2 = SHX18_2 + 1
      if SHX14_2 > SHX15_2 then
        SHX11_2 = SHX20_2
        SHX14_2 = SHX15_2
      end
      SHX21_2 = math
      SHX21_2 = SHX21_2.abs
      SHX22_2 = SHX15_2 - SHX14_2
      SHX21_2 = SHX21_2(SHX22_2)
      SHX22_2 = GetScriptTaskStatus
      SHX23_2 = SHX10_2
      SHX24_2 = "SCRIPT_TASK_GO_STRAIGHT_TO_COORD"
      SHX22_2 = SHX22_2(SHX23_2, SHX24_2)
      if 0 == SHX22_2 or 7 == SHX22_2 or SHX12_2 < SHX18_2 then
        break
      end
      SHX23_2 = SHX14_2 + 0.1
      if SHX15_2 > SHX23_2 then
        SHX23_2 = 0.85
        if SHX15_2 > SHX23_2 then
          SHX17_2 = SHX17_2 + 1
      end
      else
        SHX23_2 = 0.085
        if SHX21_2 <= SHX23_2 then
          SHX23_2 = SHX0_1.MaxInteractionDist
          if SHX15_2 < SHX23_2 then
            SHX23_2 = 0.05
            if SHX15_2 > SHX23_2 and SHX18_2 > 1 then
              SHX17_2 = SHX17_2 + 1
          end
        end
        else
          SHX17_2 = SHX17_2 - 1
          if SHX17_2 < 0 then
            SHX17_2 = 0
          end
        end
      end
      if SHX17_2 > 2 then
        SHX23_2 = SHX1_2.type
        if "sunlounger" ~= SHX23_2 then
          break
        end
      end
    end
    SHX20_2 = 0.5
    SHX16_2 = SHX15_2 > SHX20_2 or SHX16_2
    SHX18_2 = 0
  end
  SHX19_2 = SHX3_1.scenario
  if SHX19_2 then
    SHX3_1.targetPos = SHX4_2
    SHX19_2 = TaskStartScenarioAtPosition
    SHX20_2 = SHX10_2
    SHX21_2 = SHX3_1.scenario
    SHX22_2 = SHX4_2.x
    SHX23_2 = SHX4_2.y
    SHX24_2 = SHX4_2.z
    SHX25_2 = SHX5_2
    SHX26_2 = -1
    SHX27_2 = false
    SHX28_2 = SHX16_2
    SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
    while true do
      SHX19_2 = Wait
      SHX20_2 = 500
      SHX19_2(SHX20_2)
      SHX19_2 = GetEntityCoords
      SHX20_2 = SHX10_2
      SHX19_2 = SHX19_2(SHX20_2)
      SHX20_2 = SHX4_2.xy
      SHX21_2 = SHX19_2.xy
      SHX20_2 = SHX20_2 - SHX21_2
      SHX15_2 = #SHX20_2
      SHX18_2 = SHX18_2 + 1
      SHX20_2 = GetScriptTaskStatus
      SHX21_2 = SHX10_2
      SHX22_2 = "SCRIPT_TASK_START_SCENARIO_AT_POSITION"
      SHX20_2 = SHX20_2(SHX21_2, SHX22_2)
      if 0 == SHX20_2 or 7 == SHX20_2 then
        break
      end
      SHX21_2 = IsPedUsingScenario
      SHX22_2 = SHX10_2
      SHX23_2 = SHX3_1.scenario
      SHX21_2 = SHX21_2(SHX22_2, SHX23_2)
      if SHX21_2 then
        SHX21_2 = 0.4
        if SHX15_2 < SHX21_2 then
          SHX3_1.isSitting = true
          break
      end
      else
        if SHX12_2 < SHX18_2 then
          break
        end
        SHX21_2 = IsPedUsingScenario
        SHX22_2 = SHX10_2
        SHX23_2 = SHX3_1.scenario
        SHX21_2 = SHX21_2(SHX22_2, SHX23_2)
        if not SHX21_2 then
          break
        end
      end
    end
  else
    SHX19_2 = SHX2_2.animation
    SHX20_2 = SHX19_2.offset
    if SHX20_2 then
      SHX20_2 = SHX19_2.offset
      SHX20_2 = SHX20_2.xyz
      SHX4_2 = SHX4_2 + SHX20_2
      SHX20_2 = SHX19_2.offset
      SHX20_2 = SHX20_2.w
      SHX5_2 = SHX5_2 + SHX20_2
    end
    SHX3_1.targetPos = SHX4_2
    SHX20_2 = SetEntityCollision
    SHX21_2 = SHX10_2
    SHX22_2 = false
    SHX23_2 = false
    SHX20_2(SHX21_2, SHX22_2, SHX23_2)
    SHX20_2 = FreezeEntityPosition
    SHX21_2 = SHX10_2
    SHX22_2 = true
    SHX20_2(SHX21_2, SHX22_2)
    SHX20_2 = SetEntityCoords
    SHX21_2 = SHX10_2
    SHX22_2 = SHX4_2.x
    SHX23_2 = SHX4_2.y
    SHX24_2 = SHX4_2.z
    SHX25_2 = false
    SHX26_2 = false
    SHX27_2 = false
    SHX28_2 = false
    SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
    SHX20_2 = SetEntityHeading
    SHX21_2 = SHX10_2
    SHX22_2 = SHX5_2
    SHX20_2(SHX21_2, SHX22_2)
    SHX20_2 = SHX9_1
    SHX21_2 = SHX19_2.dict
    SHX20_2(SHX21_2)
    SHX20_2 = TaskPlayAnim
    SHX21_2 = SHX10_2
    SHX22_2 = SHX19_2.dict
    SHX23_2 = SHX19_2.name
    SHX24_2 = 2.0
    SHX25_2 = 2.0
    SHX26_2 = -1
    SHX27_2 = SHX19_2.flag
    if not SHX27_2 then
      SHX27_2 = 1
    end
    SHX28_2 = 0
    SHX29_2 = false
    SHX30_2 = false
    SHX31_2 = false
    SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
    SHX20_2 = RemoveAnimDict
    SHX21_2 = SHX19_2.dict
    SHX20_2(SHX21_2)
    SHX3_1.plyFrozen = true
    SHX3_1.isSitting = true
    SHX3_1.animation = SHX19_2
  end
  SHX19_2 = SHX3_1.isSitting
  if SHX19_2 then
    SHX19_2 = Wait
    SHX20_2 = 350
    SHX19_2(SHX20_2)
    SHX19_2 = SHX0_1.ShowHelpText
    if SHX19_2 then
      SHX19_2 = TriggerEvent
      SHX20_2 = "sit:helpTextThread"
      SHX21_2 = "isSitting"
      SHX19_2(SHX20_2, SHX21_2)
    end
    SHX19_2 = TriggerEvent
    SHX20_2 = "sit:checkThread"
    SHX21_2 = "isSitting"
    SHX19_2(SHX20_2, SHX21_2)
  elseif SHX15_2 <= 2.0 then
    SHX19_2 = TaskStartScenarioAtPosition
    SHX20_2 = SHX10_2
    SHX21_2 = SHX3_1.scenario
    SHX22_2 = SHX4_2.x
    SHX23_2 = SHX4_2.y
    SHX24_2 = SHX4_2.z
    SHX25_2 = SHX5_2
    SHX26_2 = -1
    SHX27_2 = false
    SHX28_2 = true
    SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
    SHX3_1.lastPos = SHX11_2
    SHX3_1.isSitting = true
    SHX19_2 = Wait
    SHX20_2 = 350
    SHX19_2(SHX20_2)
    SHX19_2 = SHX0_1.ShowHelpText
    if SHX19_2 then
      SHX19_2 = TriggerEvent
      SHX20_2 = "sit:helpTextThread"
      SHX21_2 = "isSitting"
      SHX19_2(SHX20_2, SHX21_2)
    end
    SHX19_2 = TriggerEvent
    SHX20_2 = "sit:checkThread"
    SHX21_2 = "isSitting"
    SHX19_2(SHX20_2, SHX21_2)
  else
    SHX19_2 = SHX23_1
    SHX20_2 = true
    SHX21_2 = false
    SHX22_2 = false
    SHX19_2(SHX20_2, SHX21_2, SHX22_2)
  end
  SHX3_1.attAction = false
end
function SHX30_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX0_2 = SHX3_1.attAction
  if SHX0_2 then
    SHX0_2 = SHX8_1
    SHX1_2 = SHX0_1.Lang
    SHX1_2 = SHX1_2.Notification
    SHX1_2 = SHX1_2.AlreadyAttemptingToSit
    SHX0_2(SHX1_2)
    return
  end
  SHX0_2 = GetEntityCoords
  SHX1_2 = PlayerPedId
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX1_2 = {}
  SHX1_2.entity = 0
  SHX2_2 = SHX0_1.MaxInteractionDist
  SHX1_2.dist = SHX2_2
  SHX2_2 = pairs
  SHX3_2 = SHX1_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.sit
    if SHX8_2 then
      SHX8_2 = GetClosestObjectOfType
      SHX9_2 = SHX0_2.x
      SHX10_2 = SHX0_2.y
      SHX11_2 = SHX0_2.z
      SHX12_2 = SHX0_1.MaxInteractionDist
      SHX13_2 = SHX6_2
      SHX14_2 = false
      SHX15_2 = true
      SHX16_2 = true
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      if 0 ~= SHX8_2 then
        SHX9_2 = GetEntityCoords
        SHX10_2 = SHX8_2
        SHX9_2 = SHX9_2(SHX10_2)
        SHX9_2 = SHX9_2 - SHX0_2
        SHX9_2 = #SHX9_2
        SHX10_2 = SHX1_2.dist
        if SHX9_2 < SHX10_2 then
          SHX1_2.entity = SHX8_2
          SHX1_2.dist = SHX9_2
        end
      end
    end
  end
  SHX2_2 = pairs
  SHX3_2 = SHX2_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.enabled
    if SHX8_2 then
      SHX8_2 = SHX7_2.radius
      if SHX8_2 then
        SHX8_2 = SHX7_2.center
        SHX8_2 = SHX8_2.xy
        SHX9_2 = SHX0_2.xy
        SHX8_2 = SHX8_2 - SHX9_2
        SHX8_2 = #SHX8_2
        SHX9_2 = SHX7_2.radius
        if not (SHX8_2 < SHX9_2) then
          goto SHX_LABEL_99
        end
      end
      SHX8_2 = pairs
      SHX9_2 = SHX7_2.polys
      SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
      for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
        SHX14_2 = SHX13_2.sit
        if SHX14_2 then
          SHX14_2 = pairs
          SHX15_2 = SHX13_2.sit
          SHX15_2 = SHX15_2.seats
          SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX14_2(SHX15_2)
          for SHX18_2, SHX19_2 in SHX14_2, SHX15_2, SHX16_2, SHX17_2 do
            SHX20_2 = SHX19_2.xyz
            SHX20_2 = SHX20_2 - SHX0_2
            SHX20_2 = #SHX20_2
            SHX21_2 = SHX1_2.dist
            if SHX20_2 < SHX21_2 then
              SHX1_2.name = SHX12_2
              SHX1_2.group = SHX6_2
              SHX1_2.dist = SHX20_2
            end
          end
        end
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_99:: outside nested blocks until all 'goto SHX_LABEL_99' can see it
    ::SHX_LABEL_99::
  end
  SHX2_2 = SHX1_2.name
  if nil ~= SHX2_2 then
    SHX3_2 = SHX1_2.group
    SHX2_2 = SHX2_1
    SHX2_2 = SHX2_2[SHX3_2]
    SHX2_2 = SHX2_2.polys
    SHX3_2 = SHX1_2.name
    SHX2_2 = SHX2_2[SHX3_2]
    SHX3_2 = SHX29_1
    SHX4_2 = {}
    SHX4_2.entity = 0
    SHX5_2 = SHX1_2.name
    SHX4_2.poly = SHX5_2
    SHX5_2 = SHX2_2.sit
    SHX4_2.sit = SHX5_2
    SHX4_2.raycast = false
    SHX3_2(SHX4_2)
  else
    SHX2_2 = SHX1_2.entity
    if 0 ~= SHX2_2 then
      SHX2_2 = SHX29_1
      SHX3_2 = {}
      SHX4_2 = SHX1_2.entity
      SHX3_2.entity = SHX4_2
      SHX3_2.poly = false
      SHX4_2 = GetEntityModel
      SHX5_2 = SHX1_2.entity
      SHX4_2 = SHX4_2(SHX5_2)
      SHX5_2 = SHX1_1
      SHX4_2 = SHX5_2[SHX4_2]
      SHX4_2 = SHX4_2.sit
      SHX3_2.sit = SHX4_2
      SHX3_2.raycast = false
      SHX2_2(SHX3_2)
    else
      SHX2_2 = SHX8_1
      SHX3_2 = SHX0_1.Lang
      SHX3_2 = SHX3_2.Notification
      SHX3_2 = SHX3_2.NoFound
      SHX2_2(SHX3_2)
    end
  end
end
function SHX31_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX3_1.attAction = true
  SHX3_1.isSitting = false
  SHX3_1.plyFrozen = true
  SHX3_1.scenario = false
  SHX3_1.teleportOut = false
  SHX1_2 = SHX0_2.entity
  SHX3_1.entity = SHX1_2
  SHX1_2 = SHX0_2.poly
  SHX3_1.poly = SHX1_2
  SHX1_2 = SHX0_2.bed
  SHX1_2 = SHX1_2.type
  SHX3_1.type = SHX1_2
  SHX1_2 = SHX0_2.bed
  SHX2_2 = nil
  SHX3_2 = SHX0_2.entity
  if SHX3_2 then
    SHX3_2 = GetEntityRotation
    SHX4_2 = SHX0_2.entity
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = SHX3_2.x
    SHX5_2 = SHX3_2.y
    if SHX4_2 < 0.0 then
      SHX4_2 = SHX4_2 * -1
    end
    if SHX5_2 < 0.0 then
      SHX5_2 = SHX5_2 * -1
    end
    SHX6_2 = SHX4_2 + SHX5_2
    SHX7_2 = SHX0_1.MaxTilt
    if SHX6_2 > SHX7_2 then
      SHX7_2 = SHX8_1
      SHX8_2 = SHX0_1.Lang
      SHX8_2 = SHX8_2.Notification
      SHX8_2 = SHX8_2.TooTilted
      SHX7_2(SHX8_2)
      SHX3_1.attAction = false
      return
    end
    SHX7_2 = GetEntityCoords
    SHX8_2 = SHX0_2.entity
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = vector4
    SHX9_2 = SHX7_2.x
    SHX10_2 = SHX7_2.y
    SHX11_2 = SHX7_2.z
    SHX12_2 = GetEntityHeading
    SHX13_2 = SHX0_2.entity
    SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX12_2(SHX13_2)
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    SHX2_2 = SHX8_2
  end
  SHX3_2 = SHX1_2.skipOccupiedCheck
  if not SHX3_2 then
    SHX3_2 = false
  end
  SHX4_2 = SHX22_1
  SHX5_2 = SHX2_2
  SHX6_2 = SHX1_2.seats
  SHX7_2 = SHX0_2.raycast
  SHX8_2 = SHX3_2
  SHX4_2, SHX5_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  if nil == SHX4_2 then
    SHX6_2 = GetEntityModel
    SHX7_2 = SHX0_2.entity
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = SHX0_1.SitTypes
    SHX8_2 = SHX1_2.type
    SHX7_2 = SHX7_2[SHX8_2]
    if SHX7_2 then
      SHX7_2 = SHX10_1
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if 1 ~= SHX7_2 then
        SHX7_2 = SHX8_1
        SHX8_2 = SHX0_1.Lang
        SHX8_2 = SHX8_2.Notification
        SHX8_2 = SHX8_2.NoAvailable
        SHX7_2(SHX8_2)
    end
    else
      SHX7_2 = SHX8_1
      SHX8_2 = SHX0_1.Lang
      SHX8_2 = SHX8_2.Notification
      SHX8_2 = SHX8_2.OccupiedSit
      SHX7_2(SHX8_2)
    end
    SHX3_1.attAction = false
    return
  end
  if nil == SHX5_2 then
    SHX6_2 = SHX8_1
    SHX7_2 = SHX0_1.Lang
    SHX7_2 = SHX7_2.Notification
    SHX7_2 = SHX7_2.NoAvailable
    SHX6_2(SHX7_2)
    SHX6_2 = print
    SHX7_2 = "^1Error: Heading was nil!"
    SHX8_2 = SHX5_2
    SHX6_2(SHX7_2, SHX8_2)
    SHX3_1.attAction = false
    return
  end
  if not SHX3_2 then
    SHX6_2 = SHX17_1
    SHX7_2 = SHX4_2
    SHX8_2 = "lay"
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    if not SHX6_2 then
      SHX6_2 = SHX8_1
      SHX7_2 = SHX0_1.Lang
      SHX7_2 = SHX7_2.Notification
      SHX7_2 = SHX7_2.OccupiedLay
      SHX6_2(SHX7_2)
      SHX3_1.attAction = false
      return
    end
  end
  SHX6_2 = SHX1_2.skipSeeCheck
  if not SHX6_2 then
    SHX6_2 = false
  end
  if not SHX6_2 then
    SHX7_2 = SHX27_1
    SHX8_2 = SHX4_2
    SHX9_2 = SHX0_2.entity
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if not SHX7_2 then
      SHX7_2 = SHX8_1
      SHX8_2 = SHX0_1.Lang
      SHX8_2 = SHX8_2.Notification
      SHX8_2 = SHX8_2.CannotReachBed
      SHX7_2(SHX8_2)
      SHX3_1.attAction = false
      return
    end
  end
  SHX7_2 = PlayerPedId
  SHX7_2 = SHX7_2()
  SHX8_2 = SHX0_1.AlwaysTeleportOutOfSeat
  if not SHX8_2 then
    SHX8_2 = SHX0_1.LayTypes
    SHX9_2 = SHX1_2.type
    SHX8_2 = SHX8_2[SHX9_2]
    SHX8_2 = SHX8_2.teleportOut
    if not SHX8_2 then
      SHX8_2 = SHX1_2.teleportOut
      if not SHX8_2 then
        goto SHX_LABEL_159
      end
    end
  end
  SHX3_1.teleportOut = true
  SHX8_2 = GetEntityCoords
  SHX9_2 = SHX7_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX3_1.lastPos = SHX8_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_159:: outside nested blocks until all 'goto SHX_LABEL_159' can see it
  ::SHX_LABEL_159::
  SHX8_2 = nil
  SHX9_2 = SHX0_1.LayTypes
  SHX10_2 = SHX1_2.type
  SHX9_2 = SHX9_2[SHX10_2]
  if SHX9_2 then
    SHX9_2 = SHX0_1.LayTypes
    SHX10_2 = SHX1_2.type
    SHX9_2 = SHX9_2[SHX10_2]
    SHX8_2 = SHX9_2.animation
  else
    SHX9_2 = print
    SHX10_2 = "^3Warning: No animation settings were set for type^2"
    SHX11_2 = SHX1_2.type
    SHX12_2 = "^3 in Config.LayTypes, the default animation settings were used instead!"
    SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX9_2 = SHX0_1.LayTypes
    SHX9_2 = SHX9_2.default
    SHX8_2 = SHX9_2.animation
  end
  SHX3_1.animation = SHX8_2
  SHX9_2 = SHX8_2.offset
  if SHX9_2 then
    SHX9_2 = SHX14_1
    SHX10_2 = SHX4_2
    SHX11_2 = vector3
    SHX12_2 = 0.0
    SHX13_2 = 0.0
    SHX14_2 = SHX13_1
    SHX15_2 = SHX5_2
    SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX14_2(SHX15_2)
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    SHX12_2 = SHX8_2.offset
    SHX12_2 = SHX12_2.xyz
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX4_2 = SHX9_2
    SHX9_2 = SHX8_2.offset
    SHX9_2 = SHX9_2.w
    SHX5_2 = SHX5_2 + SHX9_2
    SHX9_2 = 360
    if SHX5_2 > SHX9_2 then
      SHX5_2 = SHX5_2 - 360
    end
  end
  SHX9_2 = SHX9_1
  SHX10_2 = SHX8_2.dict
  SHX9_2(SHX10_2)
  SHX9_2 = ClearPedTasksImmediately
  SHX10_2 = SHX7_2
  SHX9_2(SHX10_2)
  SHX9_2 = SetEntityCollision
  SHX10_2 = SHX7_2
  SHX11_2 = false
  SHX12_2 = false
  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = FreezeEntityPosition
  SHX10_2 = SHX7_2
  SHX11_2 = true
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = SetEntityCoords
  SHX10_2 = SHX7_2
  SHX11_2 = SHX4_2.x
  SHX12_2 = SHX4_2.y
  SHX13_2 = SHX4_2.z
  SHX14_2 = false
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = false
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX9_2 = SetEntityHeading
  SHX10_2 = SHX7_2
  SHX11_2 = SHX5_2
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = TaskPlayAnim
  SHX10_2 = SHX7_2
  SHX11_2 = SHX8_2.dict
  SHX12_2 = SHX8_2.name
  SHX13_2 = 2.0
  SHX14_2 = 2.0
  SHX15_2 = -1
  SHX16_2 = SHX8_2.flag
  if not SHX16_2 then
    SHX16_2 = 1
  end
  SHX17_2 = 0
  SHX18_2 = false
  SHX19_2 = false
  SHX20_2 = false
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX9_2 = RemoveAnimDict
  SHX10_2 = SHX8_2.dict
  SHX9_2(SHX10_2)
  SHX9_2 = Wait
  SHX10_2 = 350
  SHX9_2(SHX10_2)
  SHX3_1.isLaying = true
  SHX3_1.attAction = false
  SHX3_1.targetPos = SHX4_2
  SHX9_2 = SHX0_1.ShowHelpText
  if SHX9_2 then
    SHX9_2 = TriggerEvent
    SHX10_2 = "sit:helpTextThread"
    SHX11_2 = "isLaying"
    SHX9_2(SHX10_2, SHX11_2)
  end
  SHX9_2 = TriggerEvent
  SHX10_2 = "sit:checkThread"
  SHX11_2 = "isLaying"
  SHX9_2(SHX10_2, SHX11_2)
end
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = SHX3_1.attAction
  if SHX0_2 then
    SHX0_2 = SHX8_1
    SHX1_2 = SHX0_1.Lang
    SHX1_2 = SHX1_2.Notification
    SHX1_2 = SHX1_2.AlreadyAttemptingToLay
    SHX0_2(SHX1_2)
    return
  end
  SHX0_2 = GetEntityCoords
  SHX1_2 = PlayerPedId
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX1_2 = {}
  SHX1_2.entity = 0
  SHX2_2 = SHX0_1.MaxInteractionDist
  SHX1_2.dist = SHX2_2
  SHX2_2 = pairs
  SHX3_2 = SHX1_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.lay
    if SHX8_2 then
      SHX8_2 = GetClosestObjectOfType
      SHX9_2 = SHX0_2.x
      SHX10_2 = SHX0_2.y
      SHX11_2 = SHX0_2.z
      SHX12_2 = SHX0_1.MaxInteractionDist
      SHX13_2 = SHX6_2
      SHX14_2 = false
      SHX15_2 = true
      SHX16_2 = true
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      if 0 ~= SHX8_2 then
        SHX9_2 = GetEntityCoords
        SHX10_2 = SHX8_2
        SHX9_2 = SHX9_2(SHX10_2)
        SHX9_2 = SHX9_2 - SHX0_2
        SHX9_2 = #SHX9_2
        SHX10_2 = SHX1_2.dist
        if SHX9_2 < SHX10_2 then
          SHX1_2.entity = SHX8_2
          SHX1_2.dist = SHX9_2
        end
      end
    end
  end
  SHX2_2 = pairs
  SHX3_2 = SHX2_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.enabled
    if SHX8_2 then
      SHX8_2 = SHX7_2.radius
      if SHX8_2 then
        SHX8_2 = SHX7_2.center
        SHX8_2 = SHX8_2.xy
        SHX9_2 = SHX0_2.xy
        SHX8_2 = SHX8_2 - SHX9_2
        SHX8_2 = #SHX8_2
        SHX9_2 = SHX7_2.radius
        if not (SHX8_2 < SHX9_2) then
          goto SHX_LABEL_94
        end
      end
      SHX8_2 = pairs
      SHX9_2 = SHX7_2.polys
      SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
      for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
        SHX14_2 = SHX13_2.lay
        if SHX14_2 then
          SHX14_2 = SHX13_2.lay
          SHX14_2 = SHX14_2.seats
          SHX14_2 = SHX14_2[1]
          SHX14_2 = SHX14_2.xyz
          SHX14_2 = SHX14_2 - SHX0_2
          SHX14_2 = #SHX14_2
          SHX15_2 = SHX1_2.dist
          if SHX14_2 < SHX15_2 then
            SHX1_2.name = SHX12_2
            SHX1_2.group = SHX6_2
            SHX1_2.dist = SHX14_2
          end
        end
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_94:: outside nested blocks until all 'goto SHX_LABEL_94' can see it
    ::SHX_LABEL_94::
  end
  SHX2_2 = SHX1_2.name
  if nil ~= SHX2_2 then
    SHX3_2 = SHX1_2.group
    SHX2_2 = SHX2_1
    SHX2_2 = SHX2_2[SHX3_2]
    SHX2_2 = SHX2_2.polys
    SHX3_2 = SHX1_2.name
    SHX2_2 = SHX2_2[SHX3_2]
    SHX3_2 = SHX31_1
    SHX4_2 = {}
    SHX4_2.entity = 0
    SHX5_2 = SHX1_2.name
    SHX4_2.poly = SHX5_2
    SHX5_2 = SHX2_2.lay
    SHX4_2.bed = SHX5_2
    SHX4_2.raycast = false
    SHX3_2(SHX4_2)
  else
    SHX2_2 = SHX1_2.entity
    if 0 ~= SHX2_2 then
      SHX2_2 = SHX31_1
      SHX3_2 = {}
      SHX4_2 = SHX1_2.entity
      SHX3_2.entity = SHX4_2
      SHX3_2.poly = false
      SHX4_2 = GetEntityModel
      SHX5_2 = SHX1_2.entity
      SHX4_2 = SHX4_2(SHX5_2)
      SHX5_2 = SHX1_1
      SHX4_2 = SHX5_2[SHX4_2]
      SHX4_2 = SHX4_2.lay
      SHX3_2.bed = SHX4_2
      SHX3_2.raycast = false
      SHX2_2(SHX3_2)
    else
      SHX2_2 = SHX8_1
      SHX3_2 = SHX0_1.Lang
      SHX3_2 = SHX3_2.Notification
      SHX3_2 = SHX3_2.NoBedFound
      SHX2_2(SHX3_2)
    end
  end
end
function SHX33_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = true
  SHX1_2 = SHX0_1.LayTypes
  SHX2_2 = SHX3_1.type
  SHX1_2 = SHX1_2[SHX2_2]
  SHX1_2 = SHX1_2.exitAnim
  if not SHX1_2 then
    SHX1_2 = SHX0_1.LayTypes
    SHX1_2 = SHX1_2.default
    SHX1_2 = SHX1_2.exitAnim
  end
  SHX3_1.isLaying = false
  SHX2_2 = SHX3_1.teleportOut
  if SHX2_2 then
    SHX2_2 = ClearPedTasksImmediately
    SHX3_2 = PlayerPedId
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX3_2()
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX2_2 = SetEntityCoords
    SHX3_2 = PlayerPedId
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX3_1.lastPos
    SHX4_2 = SHX4_2.x
    SHX5_2 = SHX3_1.lastPos
    SHX5_2 = SHX5_2.y
    SHX6_2 = SHX3_1.lastPos
    SHX6_2 = SHX6_2.z
    SHX6_2 = SHX6_2 - 0.95
    SHX7_2 = false
    SHX8_2 = false
    SHX9_2 = false
    SHX10_2 = false
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX0_2 = false
  elseif SHX1_2 then
    SHX2_2 = SHX0_1.LayTypes
    SHX3_2 = SHX3_1.type
    SHX2_2 = SHX2_2[SHX3_2]
    SHX2_2 = SHX2_2.exitAnimType
    if not SHX2_2 then
      SHX2_2 = SHX0_1.LayTypes
      SHX2_2 = SHX2_2.default
      SHX2_2 = SHX2_2.exitAnimType
    end
    SHX3_2 = nil
    if 0 == SHX2_2 then
      SHX4_2 = GetGameplayCamRelativeHeading
      SHX4_2 = SHX4_2()
      if SHX4_2 < 0 then
        SHX3_2 = "m_getout_l"
      else
        SHX3_2 = "m_getout_r"
      end
    elseif 1 == SHX2_2 then
      SHX3_2 = "m_getout_l"
    elseif 2 == SHX2_2 then
      SHX3_2 = "m_getout_r"
    else
      SHX4_2 = print
      SHX5_2 = "^1Error: exitAnimType:"
      SHX6_2 = SHX2_2
      SHX7_2 = "was not an expcted type, please correct this, setting type to 1 for this instance (\"m_getout_r\")."
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX3_2 = "m_getout_r"
    end
    SHX4_2 = SHX9_1
    SHX5_2 = "savem_default@"
    SHX4_2(SHX5_2)
    SHX4_2 = TaskPlayAnim
    SHX5_2 = PlayerPedId
    SHX5_2 = SHX5_2()
    SHX6_2 = "savem_default@"
    SHX7_2 = SHX3_2
    SHX8_2 = 1.0
    SHX9_2 = 1.0
    SHX10_2 = 3000
    SHX11_2 = 0
    SHX12_2 = 0
    SHX13_2 = false
    SHX14_2 = false
    SHX15_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX4_2 = RemoveAnimDict
    SHX5_2 = "savem_default@"
    SHX4_2(SHX5_2)
    SHX4_2 = SetEntityCollision
    SHX5_2 = PlayerPedId
    SHX5_2 = SHX5_2()
    SHX6_2 = true
    SHX7_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = FreezeEntityPosition
    SHX5_2 = PlayerPedId
    SHX5_2 = SHX5_2()
    SHX6_2 = false
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = Wait
    SHX5_2 = 1400
    SHX4_2(SHX5_2)
    SHX0_2 = false
  end
  SHX2_2 = {}
  SHX3_1.animation = SHX2_2
  SHX2_2 = SHX23_1
  SHX3_2 = SHX0_2
  SHX4_2 = false
  SHX5_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
function SHX34_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = IsPedUsingScenario
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX3_1.scenario
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if not SHX0_2 then
    SHX0_2 = SHX3_1.isSitting
    if not SHX0_2 then
      goto SHX_LABEL_14
    end
  end
  SHX0_2 = SHX24_1
  SHX0_2()
  goto SHX_LABEL_29
  -- [FIX IF ERROR] Move ::SHX_LABEL_14:: outside nested blocks until all 'goto SHX_LABEL_14' can see it
  ::SHX_LABEL_14::
  SHX0_2 = SHX3_1.isLaying
  if SHX0_2 then
    SHX0_2 = SHX33_1
    SHX0_2()
  else
    SHX0_2 = SHX3_1.attAction
    if SHX0_2 then
      SHX3_1.attAction = false
      SHX0_2 = SHX23_1
      SHX1_2 = true
      SHX2_2 = false
      SHX3_2 = false
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_29:: outside nested blocks until all 'goto SHX_LABEL_29' can see it
  ::SHX_LABEL_29::
end
function SHX35_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX0_1.Target
  if "ox_target" == SHX2_2 then
    SHX2_2 = exports
    SHX2_2 = SHX2_2.ox_target
    SHX3_2 = SHX2_2
    SHX2_2 = SHX2_2.addModel
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  else
    SHX2_2 = exports
    SHX3_2 = SHX0_1.Target
    SHX2_2 = SHX2_2[SHX3_2]
    SHX3_2 = SHX2_2
    SHX2_2 = SHX2_2.AddTargetModel
    SHX4_2 = SHX0_2
    SHX5_2 = {}
    SHX5_2.options = SHX1_2
    SHX6_2 = SHX0_1.MaxInteractionDist
    SHX5_2.distance = SHX6_2
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  end
end
function SHX36_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX9_2 = SHX0_1.Target
  if "ox_target" == SHX9_2 then
    SHX9_2 = exports
    SHX9_2 = SHX9_2.ox_target
    SHX10_2 = SHX9_2
    SHX9_2 = SHX9_2.addSphereZone
    SHX11_2 = {}
    SHX11_2.coords = SHX1_2
    SHX11_2.radius = SHX2_2
    SHX12_2 = SHX0_1.DebugPoly
    if not SHX12_2 then
      SHX12_2 = SHX8_2
    end
    SHX11_2.debug = SHX12_2
    SHX11_2.options = SHX7_2
    SHX9_2(SHX10_2, SHX11_2)
  else
    SHX9_2 = exports
    SHX10_2 = SHX0_1.Target
    SHX9_2 = SHX9_2[SHX10_2]
    SHX10_2 = SHX9_2
    SHX9_2 = SHX9_2.AddCircleZone
    SHX11_2 = SHX0_2
    SHX12_2 = SHX1_2
    SHX13_2 = SHX2_2
    SHX14_2 = {}
    SHX14_2.name = SHX0_2
    SHX14_2.heading = SHX3_2
    SHX15_2 = SHX0_1.DebugPoly
    if not SHX15_2 then
      SHX15_2 = SHX8_2
    end
    SHX14_2.debugPoly = SHX15_2
    SHX14_2.minZ = SHX4_2
    SHX14_2.maxZ = SHX5_2
    SHX14_2.useZ = SHX6_2
    SHX15_2 = {}
    SHX15_2.options = SHX7_2
    SHX16_2 = SHX0_1.MaxInteractionDist
    SHX15_2.distance = SHX16_2
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  end
end
function SHX37_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX11_2 = SHX0_1.Target
  if "ox_target" == SHX11_2 then
    SHX11_2 = exports
    SHX11_2 = SHX11_2.ox_target
    SHX12_2 = SHX11_2
    SHX11_2 = SHX11_2.addBoxZone
    SHX13_2 = {}
    SHX13_2.coords = SHX1_2
    SHX14_2 = vector3
    SHX15_2 = SHX4_2
    SHX16_2 = SHX3_2
    SHX17_2 = SHX5_2
    SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2)
    SHX13_2.size = SHX14_2
    SHX13_2.rotation = SHX2_2
    SHX14_2 = SHX0_1.DebugPoly
    if not SHX14_2 then
      SHX14_2 = SHX10_2
    end
    SHX13_2.debug = SHX14_2
    SHX13_2.options = SHX9_2
    SHX11_2(SHX12_2, SHX13_2)
  else
    SHX11_2 = exports
    SHX12_2 = SHX0_1.Target
    SHX11_2 = SHX11_2[SHX12_2]
    SHX12_2 = SHX11_2
    SHX11_2 = SHX11_2.AddBoxZone
    SHX13_2 = SHX0_2
    SHX14_2 = SHX1_2
    SHX15_2 = SHX3_2
    SHX16_2 = SHX4_2
    SHX17_2 = {}
    SHX17_2.name = SHX0_2
    SHX17_2.heading = SHX2_2
    SHX18_2 = SHX0_1.DebugPoly
    if not SHX18_2 then
      SHX18_2 = SHX10_2
    end
    SHX17_2.debugPoly = SHX18_2
    SHX17_2.minZ = SHX6_2
    SHX17_2.maxZ = SHX7_2
    SHX18_2 = {}
    SHX18_2.options = SHX9_2
    SHX19_2 = SHX0_1.MaxInteractionDist
    SHX18_2.distance = SHX19_2
    SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  end
end
function SHX38_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = SHX3_1.attAction
  if not SHX3_2 then
    SHX3_2 = SHX3_1.isLaying
    if SHX3_2 then
      SHX3_2 = SHX33_1
      SHX3_2()
    else
      SHX3_2 = SHX31_1
      SHX4_2 = {}
      SHX4_2.entity = SHX0_2
      SHX4_2.poly = SHX1_2
      SHX5_2 = SHX2_2.lay
      SHX4_2.bed = SHX5_2
      SHX4_2.raycast = true
      SHX3_2(SHX4_2)
    end
  else
    SHX3_2 = SHX8_1
    SHX4_2 = SHX0_1.Lang
    SHX4_2 = SHX4_2.Notification
    SHX4_2 = SHX4_2.AlreadyAttemptingToLay
    SHX3_2(SHX4_2)
  end
end
function SHX39_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = SHX3_1.attAction
  if not SHX3_2 then
    SHX3_2 = SHX3_1.isSitting
    if not SHX3_2 then
      SHX3_2 = SHX3_1.isLaying
      if not SHX3_2 then
        goto SHX_LABEL_26
      end
    end
    SHX3_2 = SHX3_1.poly
    if SHX1_2 == SHX3_2 then
      SHX3_2 = SHX29_1
      SHX4_2 = {}
      SHX4_2.entity = SHX0_2
      SHX4_2.poly = SHX1_2
      SHX5_2 = SHX2_2.sit
      SHX4_2.sit = SHX5_2
      SHX4_2.raycast = true
      SHX3_2(SHX4_2)
    else
      SHX3_2 = SHX24_1
      SHX3_2()
      goto SHX_LABEL_41
      -- [FIX IF ERROR] Move ::SHX_LABEL_26:: outside nested blocks until all 'goto SHX_LABEL_26' can see it
      ::SHX_LABEL_26::
      SHX3_2 = SHX29_1
      SHX4_2 = {}
      SHX4_2.entity = SHX0_2
      SHX4_2.poly = SHX1_2
      SHX5_2 = SHX2_2.sit
      SHX4_2.sit = SHX5_2
      SHX4_2.raycast = true
      SHX3_2(SHX4_2)
    end
  else
    SHX3_2 = SHX8_1
    SHX4_2 = SHX0_1.Lang
    SHX4_2 = SHX4_2.Notification
    SHX4_2 = SHX4_2.AlreadyAttemptingToSit
    SHX3_2(SHX4_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_41:: outside nested blocks until all 'goto SHX_LABEL_41' can see it
  ::SHX_LABEL_41::
end
function SHX40_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = SHX1_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.lay
    if SHX7_2 then
      SHX7_2 = #SHX0_2
      SHX7_2 = SHX7_2 + 1
      SHX0_2[SHX7_2] = SHX5_2
    end
  end
  SHX1_2 = {}
  SHX2_2 = {}
  SHX3_2 = SHX0_1.Targeting
  SHX3_2 = SHX3_2.LayIcon
  SHX2_2.icon = SHX3_2
  SHX3_2 = SHX0_1.Targeting
  SHX3_2 = SHX3_2.LayLabel
  SHX2_2.label = SHX3_2
  SHX1_2[1] = SHX2_2
  SHX2_2 = SHX0_1.Target
  if "ox_target" == SHX2_2 then
    SHX2_2 = SHX1_2[1]
    SHX3_2 = SHX0_1.MaxInteractionDist
    SHX2_2.distance = SHX3_2
    SHX2_2 = SHX1_2[1]
    function SHX3_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
      SHX1_3 = GetEntityModel
      SHX2_3 = SHX0_3.entity
      SHX1_3 = SHX1_3(SHX2_3)
      SHX2_3 = SHX1_1
      SHX1_3 = SHX2_3[SHX1_3]
      SHX2_3 = SHX38_1
      SHX3_3 = SHX0_3.entity
      SHX4_3 = false
      SHX5_3 = SHX1_3
      SHX2_3(SHX3_3, SHX4_3, SHX5_3)
    end
    SHX2_2.onSelect = SHX3_2
  else
    SHX2_2 = SHX1_2[1]
    function SHX3_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
      SHX1_3 = GetEntityModel
      SHX2_3 = SHX0_3
      SHX1_3 = SHX1_3(SHX2_3)
      SHX2_3 = SHX1_1
      SHX1_3 = SHX2_3[SHX1_3]
      SHX2_3 = SHX38_1
      SHX3_3 = SHX0_3
      SHX4_3 = false
      SHX5_3 = SHX1_3
      SHX2_3(SHX3_3, SHX4_3, SHX5_3)
    end
    SHX2_2.action = SHX3_2
  end
  SHX2_2 = SHX35_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = SHX1_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.sit
    if SHX7_2 then
      SHX7_2 = #SHX0_2
      SHX7_2 = SHX7_2 + 1
      SHX0_2[SHX7_2] = SHX5_2
    end
  end
  SHX1_2 = {}
  SHX2_2 = {}
  SHX3_2 = SHX0_1.Targeting
  SHX3_2 = SHX3_2.SitIcon
  SHX2_2.icon = SHX3_2
  SHX3_2 = SHX0_1.Targeting
  SHX3_2 = SHX3_2.SitLabel
  SHX2_2.label = SHX3_2
  SHX1_2[1] = SHX2_2
  SHX2_2 = SHX0_1.Target
  if "ox_target" == SHX2_2 then
    SHX2_2 = SHX1_2[1]
    SHX3_2 = SHX0_1.MaxInteractionDist
    SHX2_2.distance = SHX3_2
    SHX2_2 = SHX1_2[1]
    function SHX3_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
      SHX1_3 = GetEntityModel
      SHX2_3 = SHX0_3.entity
      SHX1_3 = SHX1_3(SHX2_3)
      SHX2_3 = SHX1_1
      SHX1_3 = SHX2_3[SHX1_3]
      SHX2_3 = SHX39_1
      SHX3_3 = SHX0_3.entity
      SHX4_3 = false
      SHX5_3 = SHX1_3
      SHX2_3(SHX3_3, SHX4_3, SHX5_3)
    end
    SHX2_2.onSelect = SHX3_2
  else
    SHX2_2 = SHX1_2[1]
    function SHX3_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
      SHX1_3 = GetEntityModel
      SHX2_3 = SHX0_3
      SHX1_3 = SHX1_3(SHX2_3)
      SHX2_3 = SHX1_1
      SHX1_3 = SHX2_3[SHX1_3]
      SHX2_3 = SHX39_1
      SHX3_3 = SHX0_3
      SHX4_3 = false
      SHX5_3 = SHX1_3
      SHX2_3(SHX3_3, SHX4_3, SHX5_3)
    end
    SHX2_2.action = SHX3_2
  end
  SHX2_2 = SHX35_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
function SHX42_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2
  SHX0_2 = pairs
  SHX1_2 = SHX2_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.enabled
    if SHX6_2 then
      SHX6_2 = pairs
      SHX7_2 = SHX5_2.polys
      SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
      for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
        SHX12_2 = SHX0_1.Target
        if "ox_target" ~= SHX12_2 then
          SHX12_2 = exports
          SHX13_2 = SHX0_1.Target
          SHX12_2 = SHX12_2[SHX13_2]
          SHX13_2 = SHX12_2
          SHX12_2 = SHX12_2.RemoveZone
          SHX14_2 = SHX10_2
          SHX12_2(SHX13_2, SHX14_2)
        end
        SHX12_2 = SHX11_2.poly
        if nil == SHX12_2 then
          SHX12_2 = print
          SHX13_2 = "^1Error: PolyZone '"
          SHX14_2 = SHX10_2
          SHX15_2 = "' could not be generated! (lacks poly specifications)"
          SHX13_2 = SHX13_2 .. SHX14_2 .. SHX15_2
          SHX12_2(SHX13_2)
        else
          SHX12_2 = SHX11_2.lay
          if nil == SHX12_2 then
            SHX12_2 = SHX11_2.sit
            if nil == SHX12_2 then
              SHX12_2 = print
              SHX13_2 = "^1Error: PolyZone '"
              SHX14_2 = SHX10_2
              SHX15_2 = "' could not be generated! (no action assinged)"
              SHX13_2 = SHX13_2 .. SHX14_2 .. SHX15_2
              SHX12_2(SHX13_2)
          end
          else
            SHX12_2 = "sit"
            SHX13_2 = {}
            SHX14_2 = SHX11_2.lay
            if SHX14_2 then
              SHX12_2 = "lay"
              SHX14_2 = #SHX13_2
              SHX14_2 = SHX14_2 + 1
              SHX15_2 = {}
              SHX16_2 = SHX0_1.Targeting
              SHX16_2 = SHX16_2.LayIcon
              SHX15_2.icon = SHX16_2
              SHX16_2 = SHX0_1.Targeting
              SHX16_2 = SHX16_2.LayLabel
              SHX15_2.label = SHX16_2
              SHX13_2[SHX14_2] = SHX15_2
              SHX14_2 = SHX0_1.Target
              if "ox_target" == SHX14_2 then
                SHX14_2 = #SHX13_2
                SHX14_2 = SHX13_2[SHX14_2]
                SHX15_2 = SHX0_1.MaxInteractionDist
                SHX14_2.distance = SHX15_2
                SHX14_2 = #SHX13_2
                SHX14_2 = SHX13_2[SHX14_2]
                function SHX15_2()
                  -- [AI CLEANUP] Decompiled Lua - Fix these:
                  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                  -- 3. Replace goto/label with while/repeat-until where possible
                  -- 4. Remove decompiler comments, add meaningful ones
                  -- 5. Fix indentation and formatting
                  
                  local SHX0_3, SHX1_3, SHX2_3, SHX3_3
                  SHX0_3 = SHX38_1
                  SHX1_3 = 0
                  SHX2_3 = SHX10_2
                  SHX3_3 = SHX11_2
                  SHX0_3(SHX1_3, SHX2_3, SHX3_3)
                end
                SHX14_2.onSelect = SHX15_2
              else
                SHX14_2 = #SHX13_2
                SHX14_2 = SHX13_2[SHX14_2]
                function SHX15_2()
                  -- [AI CLEANUP] Decompiled Lua - Fix these:
                  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                  -- 3. Replace goto/label with while/repeat-until where possible
                  -- 4. Remove decompiler comments, add meaningful ones
                  -- 5. Fix indentation and formatting
                  
                  local SHX0_3, SHX1_3, SHX2_3, SHX3_3
                  SHX0_3 = SHX38_1
                  SHX1_3 = 0
                  SHX2_3 = SHX10_2
                  SHX3_3 = SHX11_2
                  SHX0_3(SHX1_3, SHX2_3, SHX3_3)
                end
                SHX14_2.action = SHX15_2
              end
            end
            SHX14_2 = SHX11_2.sit
            if SHX14_2 then
              SHX12_2 = "sit"
              SHX14_2 = #SHX13_2
              SHX14_2 = SHX14_2 + 1
              SHX15_2 = {}
              SHX16_2 = SHX0_1.Targeting
              SHX16_2 = SHX16_2.SitIcon
              SHX15_2.icon = SHX16_2
              SHX16_2 = SHX0_1.Targeting
              SHX16_2 = SHX16_2.SitLabel
              SHX15_2.label = SHX16_2
              SHX13_2[SHX14_2] = SHX15_2
              SHX14_2 = SHX0_1.Target
              if "ox_target" == SHX14_2 then
                SHX14_2 = #SHX13_2
                SHX14_2 = SHX13_2[SHX14_2]
                SHX15_2 = SHX0_1.MaxInteractionDist
                SHX14_2.distance = SHX15_2
                SHX14_2 = #SHX13_2
                SHX14_2 = SHX13_2[SHX14_2]
                function SHX15_2()
                  -- [AI CLEANUP] Decompiled Lua - Fix these:
                  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                  -- 3. Replace goto/label with while/repeat-until where possible
                  -- 4. Remove decompiler comments, add meaningful ones
                  -- 5. Fix indentation and formatting
                  
                  local SHX0_3, SHX1_3, SHX2_3, SHX3_3
                  SHX0_3 = SHX39_1
                  SHX1_3 = 0
                  SHX2_3 = SHX10_2
                  SHX3_3 = SHX11_2
                  SHX0_3(SHX1_3, SHX2_3, SHX3_3)
                end
                SHX14_2.onSelect = SHX15_2
              else
                SHX14_2 = #SHX13_2
                SHX14_2 = SHX13_2[SHX14_2]
                function SHX15_2()
                  -- [AI CLEANUP] Decompiled Lua - Fix these:
                  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                  -- 3. Replace goto/label with while/repeat-until where possible
                  -- 4. Remove decompiler comments, add meaningful ones
                  -- 5. Fix indentation and formatting
                  
                  local SHX0_3, SHX1_3, SHX2_3, SHX3_3
                  SHX0_3 = SHX39_1
                  SHX1_3 = 0
                  SHX2_3 = SHX10_2
                  SHX3_3 = SHX11_2
                  SHX0_3(SHX1_3, SHX2_3, SHX3_3)
                end
                SHX14_2.action = SHX15_2
              end
            end
            SHX14_2 = SHX11_2.poly
            SHX14_2 = SHX14_2.minZ
            if not SHX14_2 then
              SHX14_2 = SHX11_2.poly
              SHX14_2 = SHX14_2.center
              if SHX14_2 then
                SHX14_2 = SHX11_2.poly
                SHX14_2 = SHX14_2.center
                SHX14_2 = SHX14_2.z
                SHX15_2 = SHX11_2.poly
                SHX15_2 = SHX15_2.height
                SHX15_2 = SHX15_2 / 2
                SHX14_2 = SHX14_2 - SHX15_2
                if SHX14_2 then
                  goto SHX_LABEL_140
                end
              end
              SHX14_2 = SHX11_2[SHX12_2]
              SHX14_2 = SHX14_2.seats
              SHX14_2 = SHX14_2[1]
              SHX14_2 = SHX14_2.z
              SHX15_2 = SHX11_2.poly
              SHX15_2 = SHX15_2.height
              SHX15_2 = SHX15_2 / 2
              SHX14_2 = SHX14_2 - SHX15_2
            end
            -- [FIX IF ERROR] Move ::SHX_LABEL_140:: outside nested blocks until all 'goto SHX_LABEL_140' can see it
            ::SHX_LABEL_140::
            SHX15_2 = SHX11_2.poly
            SHX15_2 = SHX15_2.maxZ
            if not SHX15_2 then
              SHX15_2 = SHX11_2.poly
              SHX15_2 = SHX15_2.center
              if SHX15_2 then
                SHX15_2 = SHX11_2.poly
                SHX15_2 = SHX15_2.center
                SHX15_2 = SHX15_2.z
                SHX16_2 = SHX11_2.poly
                SHX16_2 = SHX16_2.height
                SHX16_2 = SHX16_2 / 2
                SHX15_2 = SHX15_2 + SHX16_2
                if SHX15_2 then
                  goto SHX_LABEL_169
                end
              end
              SHX15_2 = SHX11_2[SHX12_2]
              SHX15_2 = SHX15_2.seats
              SHX15_2 = SHX15_2[1]
              SHX15_2 = SHX15_2.z
              SHX16_2 = SHX11_2.poly
              SHX16_2 = SHX16_2.height
              SHX16_2 = SHX16_2 / 2
              SHX15_2 = SHX15_2 + SHX16_2
            end
            -- [FIX IF ERROR] Move ::SHX_LABEL_169:: outside nested blocks until all 'goto SHX_LABEL_169' can see it
            ::SHX_LABEL_169::
            SHX16_2 = SHX11_2.poly
            SHX16_2 = SHX16_2.heading
            if not SHX16_2 then
              SHX16_2 = SHX11_2[SHX12_2]
              SHX16_2 = SHX16_2.seats
              SHX16_2 = SHX16_2[1]
              SHX16_2 = SHX16_2.w
            end
            SHX17_2 = SHX11_2.poly
            SHX17_2 = SHX17_2.center
            if not SHX17_2 then
              SHX17_2 = SHX11_2[SHX12_2]
              SHX17_2 = SHX17_2.seats
              SHX17_2 = SHX17_2[1]
              SHX17_2 = SHX17_2.xyz
            end
            SHX18_2 = SHX11_2.poly
            SHX18_2 = SHX18_2.type
            if "circle" == SHX18_2 then
              SHX18_2 = SHX11_2.poly
              SHX18_2 = SHX18_2.radius
              if nil == SHX18_2 then
                SHX19_2 = print
                SHX20_2 = "^3Warning: PolyZone '"
                SHX21_2 = SHX10_2
                SHX22_2 = "' did not have a specified radius! Radius was automatically set to 1.5!"
                SHX20_2 = SHX20_2 .. SHX21_2 .. SHX22_2
                SHX19_2(SHX20_2)
                SHX18_2 = 1.5
              end
              SHX19_2 = SHX36_1
              SHX20_2 = SHX10_2
              SHX21_2 = SHX17_2
              SHX22_2 = SHX18_2
              SHX23_2 = SHX16_2
              SHX24_2 = SHX14_2
              SHX25_2 = SHX15_2
              SHX26_2 = true
              SHX27_2 = SHX13_2
              SHX28_2 = SHX5_2.debug
              SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
            else
              SHX18_2 = SHX37_1
              SHX19_2 = SHX10_2
              SHX20_2 = SHX17_2
              SHX21_2 = SHX16_2
              SHX22_2 = SHX11_2.poly
              SHX22_2 = SHX22_2.length
              SHX23_2 = SHX11_2.poly
              SHX23_2 = SHX23_2.width
              SHX24_2 = SHX11_2.poly
              SHX24_2 = SHX24_2.height
              SHX25_2 = SHX14_2
              SHX26_2 = SHX15_2
              SHX27_2 = true
              SHX28_2 = SHX13_2
              SHX29_2 = SHX5_2.debug
              SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
            end
          end
        end
      end
      SHX6_2 = print
      SHX7_2 = "^2Info: PolyZone group '"
      SHX8_2 = SHX4_2
      SHX9_2 = "' was generated."
      SHX7_2 = SHX7_2 .. SHX8_2 .. SHX9_2
      SHX6_2(SHX7_2)
    else
      SHX6_2 = print
      SHX7_2 = "^3Info: PolyZone group '"
      SHX8_2 = SHX4_2
      SHX9_2 = "' is disabled."
      SHX7_2 = SHX7_2 .. SHX8_2 .. SHX9_2
      SHX6_2(SHX7_2)
    end
  end
end
function SHX43_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = AddTextEntry
  SHX1_2 = "sit_getup_keyboard"
  SHX2_2 = string
  SHX2_2 = SHX2_2.format
  SHX3_2 = SHX0_1.Lang
  SHX3_2 = SHX3_2.KeyMapping
  SHX3_2 = SHX3_2.GetUp
  SHX4_2 = "~INPUT_BA1F4C6D~"
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = AddTextEntry
  SHX1_2 = "sit_getup_controller"
  SHX2_2 = string
  SHX2_2 = SHX2_2.format
  SHX3_2 = SHX0_1.Lang
  SHX3_2 = SHX3_2.KeyMapping
  SHX3_2 = SHX3_2.GetUp
  SHX4_2 = "~INPUT_6ED7AA10~"
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = SHX0_1.UsePrompts
  if SHX0_2 then
    SHX0_2 = AddTextEntry
    SHX1_2 = "sit_on_keyboard"
    SHX2_2 = string
    SHX2_2 = SHX2_2.format
    SHX3_2 = SHX0_1.Lang
    SHX3_2 = SHX3_2.KeyMapping
    SHX3_2 = SHX3_2.SitDown
    SHX4_2 = "~INPUT_7BDD6276~"
    SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX0_2 = AddTextEntry
    SHX1_2 = "sit_down_controller"
    SHX2_2 = string
    SHX2_2 = SHX2_2.format
    SHX3_2 = SHX0_1.Lang
    SHX3_2 = SHX3_2.KeyMapping
    SHX3_2 = SHX3_2.SitDown
    SHX4_2 = "~INPUT_53FA0B5E~"
    SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX0_2 = AddTextEntry
    SHX1_2 = "lay_on_keyboard"
    SHX2_2 = string
    SHX2_2 = SHX2_2.format
    SHX3_2 = SHX0_1.Lang
    SHX3_2 = SHX3_2.KeyMapping
    SHX3_2 = SHX3_2.LayDown
    SHX4_2 = "~INPUT_C5CB4FDE~"
    SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX0_2 = AddTextEntry
    SHX1_2 = "lay_down_controller"
    SHX2_2 = string
    SHX2_2 = SHX2_2.format
    SHX3_2 = SHX0_1.Lang
    SHX3_2 = SHX3_2.KeyMapping
    SHX3_2 = SHX3_2.LayDown
    SHX4_2 = "~INPUT_215CDC8A~"
    SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX0_2 = AddTextEntry
    SHX1_2 = "both_on_keyboard"
    SHX2_2 = string
    SHX2_2 = SHX2_2.format
    SHX3_2 = SHX0_1.Lang
    SHX3_2 = SHX3_2.KeyMapping
    SHX3_2 = SHX3_2.SitDown
    SHX4_2 = "~INPUT_7BDD6276~"
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX3_2 = "\n"
    SHX4_2 = string
    SHX4_2 = SHX4_2.format
    SHX5_2 = SHX0_1.Lang
    SHX5_2 = SHX5_2.KeyMapping
    SHX5_2 = SHX5_2.LayDown
    SHX6_2 = "~INPUT_C5CB4FDE~"
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = AddTextEntry
    SHX1_2 = "both_down_controller"
    SHX2_2 = string
    SHX2_2 = SHX2_2.format
    SHX3_2 = SHX0_1.Lang
    SHX3_2 = SHX3_2.KeyMapping
    SHX3_2 = SHX3_2.SitDown
    SHX4_2 = "~INPUT_53FA0B5E~"
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX3_2 = "\n"
    SHX4_2 = string
    SHX4_2 = SHX4_2.format
    SHX5_2 = SHX0_1.Lang
    SHX5_2 = SHX5_2.KeyMapping
    SHX5_2 = SHX5_2.LayDown
    SHX6_2 = "~INPUT_215CDC8A~"
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2
    SHX0_2(SHX1_2, SHX2_2)
  end
end
function SHX44_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX4_2 = RegisterKeyMapping
  SHX5_2 = "+"
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2 .. SHX6_2
  SHX6_2 = SHX1_2
  SHX7_2 = SHX2_2
  SHX8_2 = SHX3_2
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = RegisterKeyMapping
  SHX5_2 = "-"
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2 .. SHX6_2
  SHX6_2 = SHX1_2
  SHX7_2 = SHX2_2
  SHX8_2 = SHX3_2
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
function SHX45_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX3_2 = 0
  SHX4_2 = 0
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.registerCommand
  SHX6_2 = "+"
  SHX7_2 = SHX0_2
  SHX6_2 = SHX6_2 .. SHX7_2
  function SHX7_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX3_3 = GetGameTimer
    SHX3_3 = SHX3_3()
    SHX3_2 = SHX3_3
    SHX3_3 = 0
    SHX4_2 = SHX3_3
    while true do
      SHX3_3 = SHX3_2
      if 0 == SHX3_3 then
        break
      end
      SHX3_3 = GetGameTimer
      SHX3_3 = SHX3_3()
      SHX4_3 = SHX3_2
      SHX3_3 = SHX3_3 - SHX4_3
      SHX4_3 = 500
      if SHX3_3 > SHX4_3 then
        SHX3_3 = SHX1_2
        SHX4_3 = SHX0_3
        SHX5_3 = SHX1_3
        SHX6_3 = SHX2_3
        SHX3_3(SHX4_3, SHX5_3, SHX6_3)
        return
      end
      SHX3_3 = Wait
      SHX4_3 = 0
      SHX3_3(SHX4_3)
    end
  end
  SHX8_2 = SHX2_2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.registerCommand
  SHX6_2 = "-"
  SHX7_2 = SHX0_2
  SHX6_2 = SHX6_2 .. SHX7_2
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX4_2
    if SHX0_3 > 0 then
      SHX0_3 = 0
      SHX3_2 = SHX0_3
    end
    SHX0_3 = SHX4_2
    SHX0_3 = SHX0_3 + 1
    SHX4_2 = SHX0_3
  end
  SHX8_2 = SHX2_2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
end
function SHX46_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX45_1
  SHX1_2 = "siton"
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX3_1.showingPrompt
    if SHX0_3 then
      SHX0_3 = ExecuteCommand
      SHX1_3 = "sit"
      SHX0_3(SHX1_3)
    end
  end
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX45_1
  SHX1_2 = "sitdown"
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX3_1.showingPrompt
    if SHX0_3 then
      SHX0_3 = ExecuteCommand
      SHX1_3 = "sit"
      SHX0_3(SHX1_3)
    end
  end
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX45_1
  SHX1_2 = "layon"
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX3_1.showingPrompt
    if SHX0_3 then
      SHX0_3 = ExecuteCommand
      SHX1_3 = "lay"
      SHX0_3(SHX1_3)
    end
  end
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX45_1
  SHX1_2 = "laydown"
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX3_1.showingPrompt
    if SHX0_3 then
      SHX0_3 = ExecuteCommand
      SHX1_3 = "lay"
      SHX0_3(SHX1_3)
    end
  end
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX44_1
  SHX1_2 = "siton"
  SHX2_2 = SHX0_1.Lang
  SHX2_2 = SHX2_2.KeyBindingDesc
  SHX2_2 = SHX2_2.Keyboard
  SHX2_2 = SHX2_2.SitDown
  SHX3_2 = "keyboard"
  SHX4_2 = SHX0_1.DefaultKeybinds
  SHX4_2 = SHX4_2.SitDown
  SHX4_2 = SHX4_2.SitKeyboard
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SHX44_1
  SHX1_2 = "sitdown"
  SHX2_2 = SHX0_1.Lang
  SHX2_2 = SHX2_2.KeyBindingDesc
  SHX2_2 = SHX2_2.PadAnalog
  SHX2_2 = SHX2_2.SitDown
  SHX3_2 = "PAD_ANALOGBUTTON"
  SHX4_2 = SHX0_1.DefaultKeybinds
  SHX4_2 = SHX4_2.SitDown
  SHX4_2 = SHX4_2.SitPadAnalog
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SHX44_1
  SHX1_2 = "layon"
  SHX2_2 = SHX0_1.Lang
  SHX2_2 = SHX2_2.KeyBindingDesc
  SHX2_2 = SHX2_2.Keyboard
  SHX2_2 = SHX2_2.LayDown
  SHX3_2 = "keyboard"
  SHX4_2 = SHX0_1.DefaultKeybinds
  SHX4_2 = SHX4_2.SitDown
  SHX4_2 = SHX4_2.LayKeyboard
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SHX44_1
  SHX1_2 = "laydown"
  SHX2_2 = SHX0_1.Lang
  SHX2_2 = SHX2_2.KeyBindingDesc
  SHX2_2 = SHX2_2.PadAnalog
  SHX2_2 = SHX2_2.LayDown
  SHX3_2 = "PAD_ANALOGBUTTON"
  SHX4_2 = SHX0_1.DefaultKeybinds
  SHX4_2 = SHX4_2.SitDown
  SHX4_2 = SHX4_2.LayPadAnalog
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  function SHX0_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX3_1.showingPrompt = true
    SHX1_3 = "sit_on_keyboard"
    SHX2_3 = CMG
    SHX2_3 = SHX2_3.isUsingKeyboard
    SHX3_3 = 1
    SHX2_3 = SHX2_3(SHX3_3)
    if SHX2_3 then
      SHX2_3 = SHX0_3
      SHX3_3 = "_on_keyboard"
      SHX2_3 = SHX2_3 .. SHX3_3
      SHX1_3 = SHX2_3
    else
      SHX2_3 = SHX0_3
      SHX3_3 = "_down_controller"
      SHX2_3 = SHX2_3 .. SHX3_3
      SHX1_3 = SHX2_3
    end
    SHX2_3 = 1
    SHX3_3 = 25
    SHX4_3 = 1
    for SHX5_3 = SHX2_3, SHX3_3, SHX4_3 do
      SHX6_3 = SHX0_1.ShowHelpText
      if SHX6_3 then
        SHX6_3 = SHX6_1
        SHX7_3 = true
        SHX6_3 = SHX6_3(SHX7_3)
        if SHX6_3 then
          SHX6_3 = DisplayHelpTextThisFrame
          SHX7_3 = SHX1_3
          SHX8_3 = false
          SHX6_3(SHX7_3, SHX8_3)
        end
      end
      SHX6_3 = Wait
      SHX7_3 = 0
      SHX6_3(SHX7_3)
    end
  end
  SHX1_2 = CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3
    SHX0_3 = {}
    SHX0_3.distance = 0.0
    SHX0_3.type = ""
    SHX1_3 = vector3
    SHX2_3 = 0.0
    SHX3_3 = 0.0
    SHX4_3 = 0.0
    SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    SHX0_3.coords = SHX1_3
    SHX0_3.entity = 0
    while true do
      SHX1_3 = SHX0_1.MaxPromptDist
      SHX0_3.distance = SHX1_3
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.getPlayerCoords
      SHX1_3 = SHX1_3()
      SHX2_3 = SHX1_3.xy
      SHX3_3 = 500
      SHX4_3 = SHX3_1.isSitting
      if not SHX4_3 then
        SHX4_3 = SHX3_1.isLaying
        if not SHX4_3 then
          SHX4_3 = SHX3_1.attAction
          if not SHX4_3 then
            SHX4_3 = GetGamePool
            SHX5_3 = "CObject"
            SHX4_3 = SHX4_3(SHX5_3)
            SHX5_3 = pairs
            SHX6_3 = SHX4_3
            SHX5_3, SHX6_3, SHX7_3, SHX8_3 = SHX5_3(SHX6_3)
            for SHX9_3, SHX10_3 in SHX5_3, SHX6_3, SHX7_3, SHX8_3 do
              SHX11_3 = GetEntityModel
              SHX12_3 = SHX10_3
              SHX11_3 = SHX11_3(SHX12_3)
              SHX12_3 = SHX1_1
              SHX12_3 = SHX12_3[SHX11_3]
              if SHX12_3 then
                SHX12_3 = GetEntityCoords
                SHX13_3 = SHX10_3
                SHX12_3 = SHX12_3(SHX13_3)
                SHX13_3 = SHX12_3 - SHX1_3
                SHX13_3 = #SHX13_3
                SHX14_3 = SHX0_3.distance
                if SHX13_3 < SHX14_3 then
                  SHX14_3 = SHX1_1
                  SHX14_3 = SHX14_3[SHX11_3]
                  SHX0_3.distance = SHX13_3
                  SHX15_3 = SHX14_3.sit
                  if SHX15_3 then
                    SHX15_3 = SHX14_3.lay
                    if SHX15_3 then
                      SHX15_3 = "both"
                      if SHX15_3 then
                        goto SHX_LABEL_76
                      end
                    end
                  end
                  SHX15_3 = SHX14_3.sit
                  if SHX15_3 then
                    SHX15_3 = "sit"
                    if SHX15_3 then
                      goto SHX_LABEL_76
                    end
                  end
                  SHX15_3 = SHX14_3.lay
                  if SHX15_3 then
                    SHX15_3 = "lay"
                    if SHX15_3 then
                      goto SHX_LABEL_76
                    end
                  end
                  SHX15_3 = nil
                  -- [FIX IF ERROR] Move ::SHX_LABEL_76:: outside nested blocks until all 'goto SHX_LABEL_76' can see it
                  ::SHX_LABEL_76::
                  SHX0_3.type = SHX15_3
                  SHX0_3.coords = SHX12_3
                  SHX0_3.entity = SHX10_3
                end
              end
            end
            SHX5_3 = pairs
            SHX6_3 = SHX2_1
            SHX5_3, SHX6_3, SHX7_3, SHX8_3 = SHX5_3(SHX6_3)
            for SHX9_3, SHX10_3 in SHX5_3, SHX6_3, SHX7_3, SHX8_3 do
              SHX11_3 = SHX10_3.enabled
              if SHX11_3 then
                SHX11_3 = SHX10_3.radius
                if SHX11_3 then
                  SHX11_3 = SHX10_3.center
                  SHX11_3 = SHX11_3.xy
                  SHX11_3 = SHX11_3 - SHX2_3
                  SHX11_3 = #SHX11_3
                  SHX12_3 = SHX10_3.radius
                  if not (SHX11_3 < SHX12_3) then
                    goto SHX_LABEL_159
                  end
                end
                SHX11_3 = pairs
                SHX12_3 = SHX10_3.polys
                SHX11_3, SHX12_3, SHX13_3, SHX14_3 = SHX11_3(SHX12_3)
                for SHX15_3, SHX16_3 in SHX11_3, SHX12_3, SHX13_3, SHX14_3 do
                  SHX17_3 = pairs
                  SHX18_3 = SHX16_3
                  SHX17_3, SHX18_3, SHX19_3, SHX20_3 = SHX17_3(SHX18_3)
                  for SHX21_3, SHX22_3 in SHX17_3, SHX18_3, SHX19_3, SHX20_3 do
                    if "sit" == SHX21_3 or "lay" == SHX21_3 then
                      SHX23_3 = pairs
                      SHX24_3 = SHX22_3.seats
                      SHX23_3, SHX24_3, SHX25_3, SHX26_3 = SHX23_3(SHX24_3)
                      for SHX27_3, SHX28_3 in SHX23_3, SHX24_3, SHX25_3, SHX26_3 do
                        SHX29_3 = SHX28_3.xyz
                        SHX29_3 = SHX1_3 - SHX29_3
                        SHX29_3 = #SHX29_3
                        SHX30_3 = SHX0_3.distance
                        if SHX29_3 < SHX30_3 then
                          SHX0_3.distance = SHX29_3
                          SHX30_3 = SHX16_3.sit
                          if SHX30_3 then
                            SHX30_3 = SHX16_3.lay
                            if SHX30_3 then
                              SHX30_3 = "both"
                              if SHX30_3 then
                                goto SHX_LABEL_146
                              end
                            end
                          end
                          SHX30_3 = SHX16_3.sit
                          if SHX30_3 then
                            SHX30_3 = "sit"
                            if SHX30_3 then
                              goto SHX_LABEL_146
                            end
                          end
                          SHX30_3 = SHX16_3.lay
                          if SHX30_3 then
                            SHX30_3 = "lay"
                            if SHX30_3 then
                              goto SHX_LABEL_146
                            end
                          end
                          SHX30_3 = nil
                          -- [FIX IF ERROR] Move ::SHX_LABEL_146:: outside nested blocks until all 'goto SHX_LABEL_146' can see it
                          ::SHX_LABEL_146::
                          SHX0_3.type = SHX30_3
                          SHX30_3 = SHX28_3.xyz
                          SHX0_3.coords = SHX30_3
                          SHX0_3.entity = 0
                        end
                      end
                    end
                  end
                end
              end
              -- [FIX IF ERROR] Move ::SHX_LABEL_159:: outside nested blocks until all 'goto SHX_LABEL_159' can see it
              ::SHX_LABEL_159::
            end
            SHX5_3 = SHX0_3.distance
            SHX6_3 = SHX0_1.MaxPromptDist
            if SHX5_3 < SHX6_3 then
              SHX5_3 = SHX27_1
              SHX6_3 = SHX0_3.coords
              SHX7_3 = SHX0_3.entity
              SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
              if SHX5_3 then
                SHX5_3 = RageUI
                SHX5_3 = SHX5_3.IsAnyMenuVisible
                SHX5_3 = SHX5_3()
                if not SHX5_3 then
                  SHX5_3 = SHX0_2
                  SHX6_3 = SHX0_3.type
                  SHX5_3(SHX6_3)
                  SHX3_3 = 0
              end
            end
            else
              SHX3_1.showingPrompt = false
            end
        end
      end
      else
        SHX3_3 = 1000
      end
      SHX4_3 = Wait
      SHX5_3 = SHX3_3
      SHX4_3(SHX5_3)
    end
  end
  SHX1_2(SHX2_2)
end
SHX47_1 = RegisterCommand
SHX48_1 = "sit"
function SHX49_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = IsPauseMenuActive
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = SHX6_1
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = SHX26_1
      SHX0_2 = SHX0_2()
      if SHX0_2 then
        SHX0_2 = SHX0_1.UsePrompts
        if not SHX0_2 then
          SHX0_2 = SHX34_1
          SHX0_2()
        end
      else
        SHX0_2 = SHX30_1
        SHX0_2()
      end
    end
  end
end
SHX50_1 = false
SHX47_1(SHX48_1, SHX49_1, SHX50_1)
SHX47_1 = RegisterCommand
SHX48_1 = "lay"
function SHX49_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = IsPauseMenuActive
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = SHX6_1
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = SHX26_1
      SHX0_2 = SHX0_2()
      if SHX0_2 then
        SHX0_2 = SHX0_1.UsePrompts
        if not SHX0_2 then
          SHX0_2 = SHX34_1
          SHX0_2()
        end
      else
        SHX0_2 = SHX32_1
        SHX0_2()
      end
    end
  end
end
SHX50_1 = false
SHX47_1(SHX48_1, SHX49_1, SHX50_1)
SHX47_1 = RegisterCommand
SHX48_1 = "bedcoords"
function SHX49_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isDevMode
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetEntityCoords
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetEntityHeading
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = print
  SHX4_2 = "^2--- Bed coords (copy for cfg_chairs) ---^7"
  SHX3_2(SHX4_2)
  SHX3_2 = print
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = "^3Player position:^7 vector3(%.2f, %.2f, %.2f)"
  SHX6_2 = SHX1_2.x
  SHX7_2 = SHX1_2.y
  SHX8_2 = SHX1_2.z
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX3_2 = print
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = "^3Player position + heading:^7 vector4(%.2f, %.2f, %.2f, %.1f)"
  SHX6_2 = SHX1_2.x
  SHX7_2 = SHX1_2.y
  SHX8_2 = SHX1_2.z
  SHX9_2 = SHX2_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX3_2 = 0
  SHX4_2 = 5.0
  SHX5_2 = pairs
  SHX6_2 = SHX1_1
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = SHX10_2.lay
    if SHX11_2 then
      SHX11_2 = GetClosestObjectOfType
      SHX12_2 = SHX1_2.x
      SHX13_2 = SHX1_2.y
      SHX14_2 = SHX1_2.z
      SHX15_2 = 5.0
      SHX16_2 = SHX9_2
      SHX17_2 = false
      SHX18_2 = true
      SHX19_2 = true
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      if 0 ~= SHX11_2 then
        SHX12_2 = GetEntityCoords
        SHX13_2 = SHX11_2
        SHX12_2 = SHX12_2(SHX13_2)
        SHX13_2 = SHX12_2 - SHX1_2
        SHX13_2 = #SHX13_2
        if SHX4_2 > SHX13_2 then
          SHX4_2 = SHX13_2
          SHX3_2 = SHX11_2
        end
      end
    end
  end
  if 0 ~= SHX3_2 then
    SHX5_2 = GetEntityCoords
    SHX6_2 = SHX3_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = GetEntityHeading
    SHX7_2 = SHX3_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = GetEntityModel
    SHX8_2 = SHX3_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = SHX1_1
    SHX8_2 = SHX8_2[SHX7_2]
    if SHX8_2 then
      SHX8_2 = SHX1_1
      SHX8_2 = SHX8_2[SHX7_2]
      SHX8_2 = SHX8_2.lay
    end
    if SHX8_2 then
      SHX9_2 = SHX8_2.type
      if SHX9_2 then
        goto SHX_LABEL_95
      end
    end
    SHX9_2 = "medical"
    -- [FIX IF ERROR] Move ::SHX_LABEL_95:: outside nested blocks until all 'goto SHX_LABEL_95' can see it
    ::SHX_LABEL_95::
    SHX10_2 = print
    SHX11_2 = string
    SHX11_2 = SHX11_2.format
    SHX12_2 = "^3Closest bed entity (model %d):^7"
    SHX13_2 = SHX7_2
    SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX11_2(SHX12_2, SHX13_2)
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX10_2 = print
    SHX11_2 = string
    SHX11_2 = SHX11_2.format
    SHX12_2 = "  Coords: vector3(%.2f, %.2f, %.2f)"
    SHX13_2 = SHX5_2.x
    SHX14_2 = SHX5_2.y
    SHX15_2 = SHX5_2.z
    SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX10_2 = print
    SHX11_2 = string
    SHX11_2 = SHX11_2.format
    SHX12_2 = "  Heading: %.1f"
    SHX13_2 = SHX6_2
    SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX11_2(SHX12_2, SHX13_2)
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX10_2 = print
    SHX11_2 = string
    SHX11_2 = SHX11_2.format
    SHX12_2 = "^3For PolyZone seat:^7 vector4(%.2f, %.2f, %.2f, %.1f)"
    SHX13_2 = SHX5_2.x
    SHX14_2 = SHX5_2.y
    SHX15_2 = SHX5_2.z
    SHX16_2 = SHX6_2
    SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX10_2 = print
    SHX11_2 = string
    SHX11_2 = SHX11_2.format
    SHX12_2 = "^3For Models config:^7 [%d] = { lay = { type = '%s', seats = {[1] = vector4(0.0, 0.0, 0.5, 180.0)} } },"
    SHX13_2 = SHX7_2
    SHX14_2 = SHX9_2
    SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  else
    SHX5_2 = print
    SHX6_2 = "^3No bed entity within 5m.^7 Stand next to a bed and run /bedcoords again."
    SHX5_2(SHX6_2)
  end
  SHX5_2 = print
  SHX6_2 = "^2----------------------------------------^7"
  SHX5_2(SHX6_2)
end
SHX50_1 = false
SHX47_1(SHX48_1, SHX49_1, SHX50_1)
SHX47_1 = RegisterKeyMapping
SHX48_1 = "getup"
SHX49_1 = SHX0_1.Lang
SHX49_1 = SHX49_1.KeyBindingDesc
SHX49_1 = SHX49_1.Keyboard
SHX49_1 = SHX49_1.GetUp
SHX50_1 = "keyboard"
SHX51_1 = SHX0_1.DefaultKeybinds
SHX51_1 = SHX51_1.GetUp
SHX51_1 = SHX51_1.Keyboard
SHX47_1(SHX48_1, SHX49_1, SHX50_1, SHX51_1)
SHX47_1 = RegisterCommand
SHX48_1 = "getup"
function SHX49_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = IsPauseMenuActive
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = SHX6_1
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = SHX34_1
      SHX0_2()
    end
  end
end
SHX50_1 = false
SHX47_1(SHX48_1, SHX49_1, SHX50_1)
SHX47_1 = RegisterKeyMapping
SHX48_1 = "standup"
SHX49_1 = SHX0_1.Lang
SHX49_1 = SHX49_1.KeyBindingDesc
SHX49_1 = SHX49_1.PadAnalog
SHX49_1 = SHX49_1.GetUp
SHX50_1 = "PAD_ANALOGBUTTON"
SHX51_1 = SHX0_1.DefaultKeybinds
SHX51_1 = SHX51_1.GetUp
SHX51_1 = SHX51_1.PadAnalog
SHX47_1(SHX48_1, SHX49_1, SHX50_1, SHX51_1)
SHX47_1 = RegisterCommand
SHX48_1 = "standup"
function SHX49_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = IsPauseMenuActive
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = SHX6_1
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = SHX34_1
      SHX0_2()
    end
  end
end
SHX50_1 = false
SHX47_1(SHX48_1, SHX49_1, SHX50_1)
SHX47_1 = AddEventHandler
SHX48_1 = "sit:helpTextThread"
function SHX49_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    while true do
      SHX1_3 = SHX0_2
      SHX0_3 = SHX3_1
      SHX0_3 = SHX0_3[SHX1_3]
      if not SHX0_3 then
        break
      end
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.isUsingKeyboard
      SHX1_3 = 1
      SHX0_3 = SHX0_3(SHX1_3)
      if SHX0_3 then
        SHX0_3 = DisplayHelpTextThisFrame
        SHX1_3 = "sit_getup_keyboard"
        SHX2_3 = false
        SHX0_3(SHX1_3, SHX2_3)
      else
        SHX0_3 = DisplayHelpTextThisFrame
        SHX1_3 = "sit_getup_controller"
        SHX2_3 = false
        SHX0_3(SHX1_3, SHX2_3)
      end
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX1_2(SHX2_2)
end
SHX47_1(SHX48_1, SHX49_1)
SHX47_1 = AddEventHandler
SHX48_1 = "sit:checkThread"
function SHX49_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    while true do
      SHX0_3 = Wait
      SHX1_3 = 500
      SHX0_3(SHX1_3)
      SHX1_3 = SHX0_2
      SHX0_3 = SHX3_1
      SHX0_3 = SHX0_3[SHX1_3]
      if not SHX0_3 then
        break
      end
      SHX0_3 = PlayerPedId
      SHX0_3 = SHX0_3()
      SHX1_3 = GetEntityCoords
      SHX2_3 = SHX0_3
      SHX1_3 = SHX1_3(SHX2_3)
      SHX2_3 = SHX1_3.xy
      SHX3_3 = SHX3_1.targetPos
      SHX3_3 = SHX3_3.xy
      SHX2_3 = SHX2_3 - SHX3_3
      SHX2_3 = #SHX2_3
      SHX3_3 = SHX1_3.z
      SHX4_3 = SHX3_1.targetPos
      SHX4_3 = SHX4_3.z
      SHX3_3 = SHX3_3 - SHX4_3
      SHX3_3 = SHX3_3 - 1.25
      if SHX3_3 > 0.0 then
        SHX2_3 = SHX2_3 + SHX3_3
      end
      SHX4_3 = 0.5
      if not (SHX2_3 > SHX4_3) then
        SHX4_3 = SHX3_1.scenario
        if SHX4_3 then
          SHX4_3 = IsPedUsingScenario
          SHX5_3 = SHX0_3
          SHX6_3 = SHX3_1.scenario
          SHX4_3 = SHX4_3(SHX5_3, SHX6_3)
          if not SHX4_3 then
            goto SHX_LABEL_73
          end
        end
        SHX4_3 = SHX3_1.animation
        if SHX4_3 then
          SHX4_3 = SHX3_1.animation
          SHX4_3 = SHX4_3.dict
          if SHX4_3 then
            SHX4_3 = IsEntityPlayingAnim
            SHX5_3 = SHX0_3
            SHX6_3 = SHX3_1.animation
            SHX6_3 = SHX6_3.dict
            SHX7_3 = SHX3_1.animation
            SHX7_3 = SHX7_3.name
            SHX8_3 = 3
            SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3)
            if not SHX4_3 then
              goto SHX_LABEL_73
            end
          end
        end
        SHX4_3 = IsEntityDead
        SHX5_3 = SHX0_3
        SHX4_3 = SHX4_3(SHX5_3)
        if not SHX4_3 then
          SHX4_3 = SHX3_1.entity
          if 0 == SHX4_3 then
            goto SHX_LABEL_91
          end
          SHX4_3 = DoesEntityExist
          SHX5_3 = SHX3_1.entity
          SHX4_3 = SHX4_3(SHX5_3)
          if SHX4_3 then
            goto SHX_LABEL_91
          end
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_73:: outside nested blocks until all 'goto SHX_LABEL_73' can see it
      ::SHX_LABEL_73::
      SHX4_3 = true
      SHX5_3 = IsEntityDead
      SHX6_3 = SHX0_3
      SHX5_3 = SHX5_3(SHX6_3)
      if not SHX5_3 then
        SHX5_3 = IsPedRagdoll
        SHX6_3 = SHX0_3
        SHX5_3 = SHX5_3(SHX6_3)
        if not SHX5_3 then
          goto SHX_LABEL_85
        end
      end
      SHX4_3 = false
      -- [FIX IF ERROR] Move ::SHX_LABEL_85:: outside nested blocks until all 'goto SHX_LABEL_85' can see it
      ::SHX_LABEL_85::
      SHX5_3 = SHX23_1
      SHX6_3 = SHX4_3
      SHX7_3 = false
      SHX8_3 = true
      SHX5_3(SHX6_3, SHX7_3, SHX8_3)
      do break end
      -- [FIX IF ERROR] Move ::SHX_LABEL_91:: outside nested blocks until all 'goto SHX_LABEL_91' can see it
      ::SHX_LABEL_91::
    end
  end
  SHX1_2(SHX2_2)
end
SHX47_1(SHX48_1, SHX49_1)
SHX47_1 = CreateThread
function SHX48_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX43_1
  SHX0_2()
  SHX0_2 = SHX0_1.AddChatSuggestions
  if SHX0_2 then
    SHX0_2 = TriggerEvent
    SHX1_2 = "chat:addSuggestion"
    SHX2_2 = "/sit"
    SHX3_2 = SHX0_1.Lang
    SHX3_2 = SHX3_2.ChatSuggestions
    SHX3_2 = SHX3_2.Sit
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = TriggerEvent
    SHX1_2 = "chat:addSuggestion"
    SHX2_2 = "/lay"
    SHX3_2 = SHX0_1.Lang
    SHX3_2 = SHX3_2.ChatSuggestions
    SHX3_2 = SHX3_2.Lay
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  end
  SHX0_2 = SHX0_1.UsePrompts
  if SHX0_2 then
    SHX0_2 = SHX46_1
    SHX0_2()
  end
  SHX0_2 = SHX0_1.Target
  if "false" == SHX0_2 then
    SHX0_2 = print
    SHX1_2 = "^1ERROR: Config.Target was set to 'false' (string), but it needs to be set to false (boolean).^7"
    SHX0_2(SHX1_2)
    SHX0_1.Target = false
  end
  SHX0_2 = SHX0_1.Target
  if SHX0_2 then
    SHX0_2 = SHX40_1
    SHX0_2()
    SHX0_2 = SHX41_1
    SHX0_2()
    SHX0_2 = SHX42_1
    SHX0_2()
  end
end
SHX47_1(SHX48_1)
SHX47_1 = SHX0_1.Debugmode
if SHX47_1 then
  SHX47_1 = true
  function SHX48_1(SHX0_2, SHX1_2, SHX2_2)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
    SHX3_2 = SetTextColour
    SHX4_2 = SHX2_2.r
    SHX5_2 = SHX2_2.g
    SHX6_2 = SHX2_2.b
    SHX7_2 = 255
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX3_2 = SetTextScale
    SHX4_2 = 0.0
    SHX5_2 = 0.35
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = SetTextFont
    SHX4_2 = 4
    SHX3_2(SHX4_2)
    SHX3_2 = SetTextOutline
    SHX3_2()
    SHX3_2 = SetTextCentre
    SHX4_2 = true
    SHX3_2(SHX4_2)
    SHX3_2 = BeginTextCommandDisplayText
    SHX4_2 = "STRING"
    SHX3_2(SHX4_2)
    SHX3_2 = AddTextComponentSubstringPlayerName
    SHX4_2 = SHX1_2
    SHX3_2(SHX4_2)
    SHX3_2 = SetDrawOrigin
    SHX4_2 = SHX0_2.x
    SHX5_2 = SHX0_2.y
    SHX6_2 = SHX0_2.z
    SHX7_2 = 0
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX3_2 = EndTextCommandDisplayText
    SHX4_2 = 0.0
    SHX5_2 = 0.0
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = ClearDrawOrigin
    SHX3_2()
    SHX3_2 = DrawRect
    SHX4_2 = SHX0_2.x
    SHX5_2 = SHX0_2.y
    SHX6_2 = 1.0
    SHX7_2 = 1.0
    SHX8_2 = 230
    SHX9_2 = 230
    SHX10_2 = 230
    SHX11_2 = 255
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  end
  function SHX49_1(SHX0_2)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
    SHX1_2 = GetEntityCoords
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = GetGamePool
    SHX3_2 = "CObject"
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = {}
    SHX4_2 = 1
    SHX5_2 = #SHX2_2
    SHX6_2 = 1
    for SHX7_2 = SHX4_2, SHX5_2, SHX6_2 do
      SHX8_2 = GetEntityCoords
      SHX9_2 = SHX2_2[SHX7_2]
      SHX8_2 = SHX8_2(SHX9_2)
      SHX9_2 = SHX1_2 - SHX8_2
      SHX9_2 = #SHX9_2
      if SHX9_2 < 8.0 then
        SHX10_2 = {}
        SHX10_2.pos = SHX8_2
        SHX11_2 = SHX2_2[SHX7_2]
        SHX10_2.entity = SHX11_2
        SHX3_2[SHX7_2] = SHX10_2
      end
    end
    return SHX3_2
  end
  function SHX50_1(SHX0_2, SHX1_2)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
    SHX2_2 = pairs
    SHX3_2 = GetGamePool
    SHX4_2 = "CPed"
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX3_2(SHX4_2)
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = GetEntityCoords
      SHX9_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2)
      SHX8_2 = SHX8_2 - SHX0_2
      SHX8_2 = #SHX8_2
      SHX9_2 = 1.35
      if SHX8_2 < SHX9_2 then
        if "sit" == SHX1_2 then
          SHX9_2 = SHX15_1
          SHX10_2 = SHX7_2
          SHX9_2 = SHX9_2(SHX10_2)
          if not SHX9_2 then
            SHX9_2 = 0.55
          end
          if SHX8_2 < SHX9_2 then
            SHX9_2 = false
            return SHX9_2
          end
        elseif "lay" == SHX1_2 then
          SHX9_2 = SHX15_1
          SHX10_2 = SHX7_2
          SHX9_2 = SHX9_2(SHX10_2)
          if not SHX9_2 then
            SHX9_2 = SHX16_1
            SHX10_2 = SHX7_2
            SHX9_2 = SHX9_2(SHX10_2)
            if not SHX9_2 then
              goto SHX_LABEL_43
            end
          end
          SHX9_2 = false
          return SHX9_2
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_43:: outside nested blocks until all 'goto SHX_LABEL_43' can see it
      ::SHX_LABEL_43::
    end
    SHX2_2 = true
    return SHX2_2
  end
  function SHX51_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_2, SHX1_2, SHX2_2, SHX3_2
    SHX0_2 = {}
    SHX1_2 = {}
    SHX2_2 = {}
    SHX2_2.r = 200
    SHX2_2.g = 0
    SHX2_2.b = 0
    SHX1_2.occupied = SHX2_2
    SHX2_2 = {}
    SHX2_2.r = 255
    SHX2_2.g = 255
    SHX2_2.b = 255
    SHX1_2.sit = SHX2_2
    SHX2_2 = {}
    SHX2_2.r = 150
    SHX2_2.g = 150
    SHX2_2.b = 150
    SHX1_2.lay = SHX2_2
    SHX2_2 = {}
    SHX2_2.r = 255
    SHX2_2.g = 0
    SHX2_2.b = 0
    SHX2_2.a = 200
    SHX1_2.sit_line = SHX2_2
    SHX2_2 = {}
    SHX2_2.r = 0
    SHX2_2.g = 102
    SHX2_2.b = 204
    SHX2_2.a = 255
    SHX1_2.lay_line = SHX2_2
    SHX2_2 = CreateThread
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3, SHX37_3
      while true do
        SHX0_3 = SHX47_1
        if not SHX0_3 then
          break
        end
        SHX0_3 = 0
        SHX1_3 = PlayerPedId
        SHX1_3 = SHX1_3()
        SHX2_3 = GetEntityCoords
        SHX3_3 = SHX1_3
        SHX2_3 = SHX2_3(SHX3_3)
        SHX3_3 = {}
        SHX0_2 = SHX3_3
        SHX3_3 = SHX49_1
        SHX4_3 = SHX1_3
        SHX3_3 = SHX3_3(SHX4_3)
        SHX4_3 = pairs
        SHX5_3 = SHX3_3
        SHX4_3, SHX5_3, SHX6_3, SHX7_3 = SHX4_3(SHX5_3)
        for SHX8_3, SHX9_3 in SHX4_3, SHX5_3, SHX6_3, SHX7_3 do
          SHX10_3 = GetEntityModel
          SHX11_3 = SHX9_3.entity
          SHX10_3 = SHX10_3(SHX11_3)
          SHX11_3 = SHX1_1
          SHX11_3 = SHX11_3[SHX10_3]
          if SHX11_3 then
            SHX12_3 = pairs
            SHX13_3 = SHX11_3
            SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX12_3(SHX13_3)
            for SHX16_3, SHX17_3 in SHX12_3, SHX13_3, SHX14_3, SHX15_3 do
              SHX18_3 = pairs
              SHX19_3 = SHX17_3.seats
              SHX18_3, SHX19_3, SHX20_3, SHX21_3 = SHX18_3(SHX19_3)
              for SHX22_3, SHX23_3 in SHX18_3, SHX19_3, SHX20_3, SHX21_3 do
                SHX24_3 = SHX16_3
                SHX25_3 = ": "
                SHX26_3 = SHX10_3
                SHX24_3 = SHX24_3 .. SHX25_3 .. SHX26_3
                SHX25_3 = SHX17_3.seats
                SHX25_3 = #SHX25_3
                if SHX25_3 > 1 then
                  SHX25_3 = SHX24_3
                  SHX26_3 = " ("
                  SHX27_3 = SHX22_3
                  SHX28_3 = ")"
                  SHX25_3 = SHX25_3 .. SHX26_3 .. SHX27_3 .. SHX28_3
                  SHX24_3 = SHX25_3
                end
                SHX25_3 = GetEntityHeading
                SHX26_3 = SHX9_3.entity
                SHX25_3 = SHX25_3(SHX26_3)
                SHX26_3 = nil
                if "lay" == SHX16_3 then
                  SHX27_3 = SHX14_1
                  SHX28_3 = SHX9_3.pos
                  SHX29_3 = vector3
                  SHX30_3 = 0.0
                  SHX31_3 = 0.0
                  SHX32_3 = SHX13_1
                  SHX33_3 = SHX25_3
                  SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3, SHX37_3 = SHX32_3(SHX33_3)
                  SHX29_3 = SHX29_3(SHX30_3, SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3, SHX37_3)
                  SHX30_3 = vector3
                  SHX31_3 = SHX23_3.x
                  SHX32_3 = SHX23_3.y
                  SHX33_3 = SHX23_3.z
                  SHX33_3 = SHX33_3 + 0.25
                  SHX30_3, SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3, SHX37_3 = SHX30_3(SHX31_3, SHX32_3, SHX33_3)
                  SHX27_3 = SHX27_3(SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3, SHX37_3)
                  SHX26_3 = SHX27_3
                else
                  SHX27_3 = SHX14_1
                  SHX28_3 = SHX9_3.pos
                  SHX29_3 = vector3
                  SHX30_3 = 0.0
                  SHX31_3 = 0.0
                  SHX32_3 = SHX13_1
                  SHX33_3 = SHX25_3
                  SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3, SHX37_3 = SHX32_3(SHX33_3)
                  SHX29_3 = SHX29_3(SHX30_3, SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3, SHX37_3)
                  SHX30_3 = SHX23_3.xyz
                  SHX27_3 = SHX27_3(SHX28_3, SHX29_3, SHX30_3)
                  SHX26_3 = SHX27_3
                end
                SHX27_3 = SHX23_3.w
                SHX27_3 = SHX25_3 + SHX27_3
                SHX28_3 = 360
                if SHX27_3 > SHX28_3 then
                  SHX27_3 = SHX27_3 - 360
                end
                SHX28_3 = SHX1_2
                SHX28_3 = SHX28_3[SHX16_3]
                SHX29_3 = SHX50_1
                SHX30_3 = SHX26_3
                SHX31_3 = SHX16_3
                SHX29_3 = SHX29_3(SHX30_3, SHX31_3)
                if not SHX29_3 then
                  SHX28_3 = SHX1_2.occupied
                end
                SHX0_3 = SHX0_3 + 1
                SHX29_3 = SHX0_2
                SHX30_3 = {}
                SHX31_3 = vector4
                SHX32_3 = SHX26_3.x
                SHX33_3 = SHX26_3.y
                SHX34_3 = SHX26_3.z
                SHX35_3 = SHX27_3
                SHX31_3 = SHX31_3(SHX32_3, SHX33_3, SHX34_3, SHX35_3)
                SHX32_3 = SHX24_3
                SHX33_3 = SHX28_3
                SHX34_3 = SHX16_3
                SHX35_3 = "_line"
                SHX34_3 = SHX34_3 .. SHX35_3
                SHX35_3 = SHX1_2
                SHX34_3 = SHX35_3[SHX34_3]
                SHX30_3[1] = SHX31_3
                SHX30_3[2] = SHX32_3
                SHX30_3[3] = SHX33_3
                SHX30_3[4] = SHX34_3
                SHX29_3[SHX0_3] = SHX30_3
              end
            end
          end
        end
        SHX4_3 = pairs
        SHX5_3 = SHX2_1
        SHX4_3, SHX5_3, SHX6_3, SHX7_3 = SHX4_3(SHX5_3)
        for SHX8_3, SHX9_3 in SHX4_3, SHX5_3, SHX6_3, SHX7_3 do
          SHX10_3 = SHX9_3.enabled
          if SHX10_3 then
            SHX10_3 = SHX9_3.radius
            if SHX10_3 then
              SHX10_3 = SHX9_3.center
              SHX10_3 = SHX10_3.xy
              SHX11_3 = SHX2_3.xy
              SHX10_3 = SHX10_3 - SHX11_3
              SHX10_3 = #SHX10_3
              SHX11_3 = SHX9_3.radius
              if not (SHX10_3 < SHX11_3) then
                goto SHX_LABEL_242
              end
            end
            SHX10_3 = pairs
            SHX11_3 = SHX9_3.polys
            SHX10_3, SHX11_3, SHX12_3, SHX13_3 = SHX10_3(SHX11_3)
            for SHX14_3, SHX15_3 in SHX10_3, SHX11_3, SHX12_3, SHX13_3 do
              SHX16_3 = pairs
              SHX17_3 = SHX15_3
              SHX16_3, SHX17_3, SHX18_3, SHX19_3 = SHX16_3(SHX17_3)
              for SHX20_3, SHX21_3 in SHX16_3, SHX17_3, SHX18_3, SHX19_3 do
                if "sit" == SHX20_3 or "lay" == SHX20_3 then
                  SHX22_3 = pairs
                  SHX23_3 = SHX21_3.seats
                  SHX22_3, SHX23_3, SHX24_3, SHX25_3 = SHX22_3(SHX23_3)
                  for SHX26_3, SHX27_3 in SHX22_3, SHX23_3, SHX24_3, SHX25_3 do
                    SHX28_3 = SHX27_3.xyz
                    SHX28_3 = SHX2_3 - SHX28_3
                    SHX28_3 = #SHX28_3
                    if SHX28_3 < 8.0 then
                      SHX28_3 = SHX20_3
                      SHX29_3 = ": "
                      SHX30_3 = SHX14_3
                      SHX28_3 = SHX28_3 .. SHX29_3 .. SHX30_3
                      SHX29_3 = SHX21_3.seats
                      SHX29_3 = #SHX29_3
                      if SHX29_3 > 1 then
                        SHX29_3 = SHX28_3
                        SHX30_3 = " ("
                        SHX31_3 = SHX26_3
                        SHX32_3 = ")"
                        SHX29_3 = SHX29_3 .. SHX30_3 .. SHX31_3 .. SHX32_3
                        SHX28_3 = SHX29_3
                      end
                      SHX29_3 = SHX27_3.xyz
                      if "lay" == SHX20_3 then
                        SHX30_3 = SHX14_1
                        SHX31_3 = SHX27_3
                        SHX32_3 = vector3
                        SHX33_3 = 0.0
                        SHX34_3 = 0.0
                        SHX35_3 = 0.0
                        SHX32_3 = SHX32_3(SHX33_3, SHX34_3, SHX35_3)
                        SHX33_3 = vector3
                        SHX34_3 = 0.0
                        SHX35_3 = 0.0
                        SHX36_3 = 0.25
                        SHX33_3, SHX34_3, SHX35_3, SHX36_3, SHX37_3 = SHX33_3(SHX34_3, SHX35_3, SHX36_3)
                        SHX30_3 = SHX30_3(SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3, SHX37_3)
                        SHX29_3 = SHX30_3
                      end
                      SHX30_3 = SHX1_2
                      SHX30_3 = SHX30_3[SHX20_3]
                      SHX31_3 = SHX50_1
                      SHX32_3 = SHX29_3
                      SHX33_3 = SHX20_3
                      SHX31_3 = SHX31_3(SHX32_3, SHX33_3)
                      if not SHX31_3 then
                        SHX30_3 = SHX1_2.occupied
                      end
                      SHX0_3 = SHX0_3 + 1
                      SHX31_3 = SHX0_2
                      SHX32_3 = {}
                      SHX33_3 = vector4
                      SHX34_3 = SHX29_3.x
                      SHX35_3 = SHX29_3.y
                      SHX36_3 = SHX29_3.z
                      SHX37_3 = SHX27_3.w
                      SHX33_3 = SHX33_3(SHX34_3, SHX35_3, SHX36_3, SHX37_3)
                      SHX34_3 = SHX28_3
                      SHX35_3 = SHX30_3
                      SHX36_3 = SHX20_3
                      SHX37_3 = "_line"
                      SHX36_3 = SHX36_3 .. SHX37_3
                      SHX37_3 = SHX1_2
                      SHX36_3 = SHX37_3[SHX36_3]
                      SHX32_3[1] = SHX33_3
                      SHX32_3[2] = SHX34_3
                      SHX32_3[3] = SHX35_3
                      SHX32_3[4] = SHX36_3
                      SHX31_3[SHX0_3] = SHX32_3
                    end
                  end
                end
              end
            end
          end
          -- [FIX IF ERROR] Move ::SHX_LABEL_242:: outside nested blocks until all 'goto SHX_LABEL_242' can see it
          ::SHX_LABEL_242::
        end
        SHX4_3 = Wait
        SHX5_3 = 1000
        SHX4_3(SHX5_3)
      end
    end
    SHX2_2(SHX3_2)
    SHX2_2 = CreateThread
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
      while true do
        SHX0_3 = SHX47_1
        if not SHX0_3 then
          break
        end
        SHX0_3 = pairs
        SHX1_3 = SHX0_2
        SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
        for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
          SHX6_3 = SHX48_1
          SHX7_3 = SHX5_3[1]
          SHX7_3 = SHX7_3.xyz
          SHX8_3 = SHX5_3[2]
          SHX9_3 = SHX5_3[3]
          SHX6_3(SHX7_3, SHX8_3, SHX9_3)
        end
        SHX0_3 = Wait
        SHX1_3 = 0
        SHX0_3(SHX1_3)
      end
    end
    SHX2_2(SHX3_2)
    SHX2_2 = CreateThread
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3
      while true do
        SHX0_3 = SHX47_1
        if not SHX0_3 then
          break
        end
        SHX0_3 = pairs
        SHX1_3 = SHX0_2
        SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
        for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
          SHX6_3 = SHX5_3[1]
          SHX6_3 = SHX6_3.w
          if nil ~= SHX6_3 then
            SHX6_3 = SHX14_1
            SHX7_3 = SHX5_3[1]
            SHX7_3 = SHX7_3.xyz
            SHX8_3 = vector3
            SHX9_3 = 0.0
            SHX10_3 = 0.0
            SHX11_3 = SHX13_1
            SHX12_3 = SHX5_3[1]
            SHX12_3 = SHX12_3.w
            SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3 = SHX11_3(SHX12_3)
            SHX8_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
            SHX9_3 = vector3
            SHX10_3 = 0.0
            SHX11_3 = 0.5
            SHX12_3 = 0.0
            SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3 = SHX9_3(SHX10_3, SHX11_3, SHX12_3)
            SHX6_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
            SHX7_3 = DrawLine
            SHX8_3 = SHX5_3[1]
            SHX8_3 = SHX8_3.x
            SHX9_3 = SHX5_3[1]
            SHX9_3 = SHX9_3.y
            SHX10_3 = SHX5_3[1]
            SHX10_3 = SHX10_3.z
            SHX11_3 = SHX6_3.x
            SHX12_3 = SHX6_3.y
            SHX13_3 = SHX6_3.z
            SHX14_3 = SHX5_3[4]
            SHX14_3 = SHX14_3.r
            SHX15_3 = SHX5_3[4]
            SHX15_3 = SHX15_3.g
            SHX16_3 = SHX5_3[4]
            SHX16_3 = SHX16_3.b
            SHX17_3 = SHX5_3[4]
            SHX17_3 = SHX17_3.a
            SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
            SHX7_3 = SHX14_1
            SHX8_3 = SHX5_3[1]
            SHX8_3 = SHX8_3.xyz
            SHX9_3 = vector3
            SHX10_3 = 0.0
            SHX11_3 = 0.0
            SHX12_3 = SHX13_1
            SHX13_3 = SHX5_3[1]
            SHX13_3 = SHX13_3.w
            SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3 = SHX12_3(SHX13_3)
            SHX9_3 = SHX9_3(SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
            SHX10_3 = vector3
            SHX11_3 = 0.0
            SHX12_3 = 0.0
            SHX13_3 = 0.2
            SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3 = SHX10_3(SHX11_3, SHX12_3, SHX13_3)
            SHX7_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
            SHX8_3 = DrawLine
            SHX9_3 = SHX5_3[1]
            SHX9_3 = SHX9_3.x
            SHX10_3 = SHX5_3[1]
            SHX10_3 = SHX10_3.y
            SHX11_3 = SHX5_3[1]
            SHX11_3 = SHX11_3.z
            SHX12_3 = SHX7_3.x
            SHX13_3 = SHX7_3.y
            SHX14_3 = SHX7_3.z
            SHX15_3 = SHX5_3[4]
            SHX15_3 = SHX15_3.r
            SHX16_3 = SHX5_3[4]
            SHX16_3 = SHX16_3.g
            SHX17_3 = SHX5_3[4]
            SHX17_3 = SHX17_3.b
            SHX18_3 = SHX5_3[4]
            SHX18_3 = SHX18_3.a
            SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
          end
        end
        SHX0_3 = Wait
        SHX1_3 = 0
        SHX0_3(SHX1_3)
      end
    end
    SHX2_2(SHX3_2)
  end
  SHX52_1 = RegisterKeyMapping
  SHX53_1 = "sit:debug"
  SHX54_1 = "Sit Debuging"
  SHX55_1 = "keyboard"
  SHX56_1 = "G"
  SHX52_1(SHX53_1, SHX54_1, SHX55_1, SHX56_1)
  SHX52_1 = RegisterCommand
  SHX53_1 = "sit:debug"
  function SHX54_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_2, SHX1_2
    SHX0_2 = SHX47_1
    SHX0_2 = not SHX0_2
    SHX47_1 = SHX0_2
    SHX0_2 = SHX47_1
    if SHX0_2 then
      SHX0_2 = SHX51_1
      SHX0_2()
    end
  end
  SHX55_1 = false
  SHX52_1(SHX53_1, SHX54_1, SHX55_1)
  function SHX52_1(SHX0_2)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
    SHX1_2 = 0
    SHX2_2 = pairs
    SHX3_2 = SHX0_2
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX1_2 = SHX1_2 + SHX7_2
    end
    SHX2_2 = #SHX0_2
    SHX2_2 = SHX1_2 / SHX2_2
    return SHX2_2
  end
  SHX53_1 = RegisterCommand
  SHX54_1 = "sit:getcenter"
  function SHX55_1(SHX0_2, SHX1_2)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
    SHX2_2 = SHX1_2[1]
    SHX3_2 = SHX2_1
    SHX3_2 = SHX3_2[SHX2_2]
    if SHX3_2 then
      SHX3_2 = {}
      SHX4_2 = {}
      SHX5_2 = {}
      SHX6_2 = 0
      SHX7_2 = pairs
      SHX8_2 = SHX2_1
      SHX8_2 = SHX8_2[SHX2_2]
      SHX8_2 = SHX8_2.polys
      SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
      for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
        SHX6_2 = SHX6_2 + 1
        SHX13_2 = SHX12_2.poly
        SHX13_2 = SHX13_2.center
        if SHX13_2 then
          SHX13_2 = SHX12_2.poly
          SHX13_2 = SHX13_2.center
          SHX13_2 = SHX13_2.x
          if SHX13_2 then
            goto SHX_LABEL_46
          end
        end
        SHX13_2 = SHX12_2.sit
        if SHX13_2 then
          SHX13_2 = SHX12_2.sit
          SHX13_2 = SHX13_2.seats
          SHX13_2 = SHX13_2[1]
          SHX13_2 = SHX13_2.x
          if SHX13_2 then
            goto SHX_LABEL_46
          end
        end
        SHX13_2 = SHX12_2.lay
        if SHX13_2 then
          SHX13_2 = SHX12_2.lay
          SHX13_2 = SHX13_2.seats
          SHX13_2 = SHX13_2[1]
          SHX13_2 = SHX13_2.x
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_46:: outside nested blocks until all 'goto SHX_LABEL_46' can see it
        ::SHX_LABEL_46::
        SHX3_2[SHX6_2] = SHX13_2
        SHX13_2 = SHX12_2.poly
        SHX13_2 = SHX13_2.center
        if SHX13_2 then
          SHX13_2 = SHX12_2.poly
          SHX13_2 = SHX13_2.center
          SHX13_2 = SHX13_2.y
          if SHX13_2 then
            goto SHX_LABEL_72
          end
        end
        SHX13_2 = SHX12_2.sit
        if SHX13_2 then
          SHX13_2 = SHX12_2.sit
          SHX13_2 = SHX13_2.seats
          SHX13_2 = SHX13_2[1]
          SHX13_2 = SHX13_2.y
          if SHX13_2 then
            goto SHX_LABEL_72
          end
        end
        SHX13_2 = SHX12_2.lay
        if SHX13_2 then
          SHX13_2 = SHX12_2.lay
          SHX13_2 = SHX13_2.seats
          SHX13_2 = SHX13_2[1]
          SHX13_2 = SHX13_2.y
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_72:: outside nested blocks until all 'goto SHX_LABEL_72' can see it
        ::SHX_LABEL_72::
        SHX4_2[SHX6_2] = SHX13_2
        SHX13_2 = SHX12_2.poly
        SHX13_2 = SHX13_2.center
        if SHX13_2 then
          SHX13_2 = SHX12_2.poly
          SHX13_2 = SHX13_2.center
          SHX13_2 = SHX13_2.z
          if SHX13_2 then
            goto SHX_LABEL_98
          end
        end
        SHX13_2 = SHX12_2.sit
        if SHX13_2 then
          SHX13_2 = SHX12_2.sit
          SHX13_2 = SHX13_2.seats
          SHX13_2 = SHX13_2[1]
          SHX13_2 = SHX13_2.z
          if SHX13_2 then
            goto SHX_LABEL_98
          end
        end
        SHX13_2 = SHX12_2.lay
        if SHX13_2 then
          SHX13_2 = SHX12_2.lay
          SHX13_2 = SHX13_2.seats
          SHX13_2 = SHX13_2[1]
          SHX13_2 = SHX13_2.z
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_98:: outside nested blocks until all 'goto SHX_LABEL_98' can see it
        ::SHX_LABEL_98::
        SHX5_2[SHX6_2] = SHX13_2
      end
      SHX7_2 = vector3
      SHX8_2 = SHX52_1
      SHX9_2 = SHX3_2
      SHX8_2 = SHX8_2(SHX9_2)
      SHX9_2 = SHX52_1
      SHX10_2 = SHX4_2
      SHX9_2 = SHX9_2(SHX10_2)
      SHX10_2 = SHX52_1
      SHX11_2 = SHX5_2
      SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX8_2 = print
      SHX9_2 = "average \"center\":"
      SHX10_2 = SHX7_2
      SHX8_2(SHX9_2, SHX10_2)
    else
      SHX3_2 = print
      SHX4_2 = SHX2_2
      SHX5_2 = "is not a valid poly group!"
      SHX3_2(SHX4_2, SHX5_2)
    end
  end
  SHX56_1 = false
  SHX53_1(SHX54_1, SHX55_1, SHX56_1)
  SHX53_1 = RegisterCommand
  SHX54_1 = "sit:getfarthestdist"
  function SHX55_1(SHX0_2, SHX1_2)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
    SHX2_2 = SHX1_2[1]
    SHX3_2 = SHX2_1
    SHX3_2 = SHX3_2[SHX2_2]
    if SHX3_2 then
      SHX3_2 = SHX2_1
      SHX3_2 = SHX3_2[SHX2_2]
      SHX3_2 = SHX3_2.center
      if SHX3_2 then
        SHX3_2 = SHX2_1
        SHX3_2 = SHX3_2[SHX2_2]
        SHX3_2 = SHX3_2.center
        SHX4_2 = {}
        SHX4_2.dist = 0
        SHX4_2.name = "error"
        SHX5_2 = pairs
        SHX6_2 = SHX2_1
        SHX6_2 = SHX6_2[SHX2_2]
        SHX6_2 = SHX6_2.polys
        SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
        for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
          SHX11_2 = SHX10_2.poly
          SHX11_2 = SHX11_2.center
          if not SHX11_2 then
            SHX11_2 = SHX10_2.sit
            if SHX11_2 then
              SHX11_2 = SHX10_2.sit
              SHX11_2 = SHX11_2.seats
              SHX11_2 = SHX11_2[1]
              SHX11_2 = SHX11_2.xyz
              if SHX11_2 then
                goto SHX_LABEL_44
              end
            end
            SHX11_2 = SHX10_2.lay
            if SHX11_2 then
              SHX11_2 = SHX10_2.lay
              SHX11_2 = SHX11_2.seats
              SHX11_2 = SHX11_2[1]
              SHX11_2 = SHX11_2.xyz
            end
          end
          -- [FIX IF ERROR] Move ::SHX_LABEL_44:: outside nested blocks until all 'goto SHX_LABEL_44' can see it
          ::SHX_LABEL_44::
          SHX12_2 = SHX3_2 - SHX11_2
          SHX12_2 = #SHX12_2
          SHX13_2 = SHX4_2.dist
          if SHX12_2 > SHX13_2 then
            SHX4_2.dist = SHX12_2
            SHX4_2.name = SHX9_2
          end
        end
        SHX5_2 = print
        SHX6_2 = SHX4_2.name
        SHX7_2 = SHX4_2.dist
        SHX5_2(SHX6_2, SHX7_2)
    end
    else
      SHX3_2 = print
      SHX4_2 = SHX2_2
      SHX5_2 = "is not a valid poly group!"
      SHX3_2(SHX4_2, SHX5_2)
    end
  end
  SHX56_1 = false
  SHX53_1(SHX54_1, SHX55_1, SHX56_1)
  SHX53_1 = RegisterCommand
  SHX54_1 = "sit:loadGroup"
  function SHX55_1(SHX0_2, SHX1_2)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_2, SHX3_2, SHX4_2, SHX5_2
    SHX2_2 = SHX1_2[1]
    SHX3_2 = SHX2_1
    SHX3_2 = SHX3_2[SHX2_2]
    if SHX3_2 then
      SHX3_2 = SHX2_1
      SHX3_2 = SHX3_2[SHX2_2]
      SHX3_2 = SHX3_2.center
      if SHX3_2 then
        SHX3_2 = SHX2_1
        SHX3_2 = SHX3_2[SHX2_2]
        SHX3_2.enabled = true
        SHX3_2 = SHX42_1
        SHX3_2()
    end
    else
      SHX3_2 = print
      SHX4_2 = SHX2_2
      SHX5_2 = "is not a valid poly group!"
      SHX3_2(SHX4_2, SHX5_2)
    end
  end
  SHX56_1 = false
  SHX53_1(SHX54_1, SHX55_1, SHX56_1)
  SHX53_1 = RegisterCommand
  SHX54_1 = "sit:unloadGroup"
  function SHX55_1(SHX0_2, SHX1_2)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
    SHX2_2 = SHX0_1.Target
    if "ox_target" == SHX2_2 then
      SHX2_2 = print
      SHX3_2 = "ox_target does not support this action!"
      SHX2_2(SHX3_2)
      return
    end
    SHX2_2 = SHX1_2[1]
    SHX3_2 = SHX2_1
    SHX3_2 = SHX3_2[SHX2_2]
    if SHX3_2 then
      SHX3_2 = SHX2_1
      SHX3_2 = SHX3_2[SHX2_2]
      SHX3_2 = SHX3_2.center
      if SHX3_2 then
        SHX3_2 = SHX2_1
        SHX3_2 = SHX3_2[SHX2_2]
        SHX3_2.enabled = false
        SHX3_2 = pairs
        SHX4_2 = SHX2_1
        SHX4_2 = SHX4_2[SHX2_2]
        SHX4_2 = SHX4_2.polys
        SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
        for SHX7_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
          SHX8_2 = exports
          SHX9_2 = SHX0_1.Target
          SHX8_2 = SHX8_2[SHX9_2]
          SHX9_2 = SHX8_2
          SHX8_2 = SHX8_2.RemoveZone
          SHX10_2 = SHX7_2
          SHX8_2(SHX9_2, SHX10_2)
        end
    end
    else
      SHX3_2 = print
      SHX4_2 = SHX2_2
      SHX5_2 = "is not a valid poly group!"
      SHX3_2(SHX4_2, SHX5_2)
    end
  end
  SHX56_1 = false
  SHX53_1(SHX54_1, SHX55_1, SHX56_1)
  SHX53_1 = SHX51_1
  SHX53_1()
end
SHX47_1 = AddEventHandler
SHX48_1 = "5276360f55"
function SHX49_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX32_1
  SHX0_2()
end
SHX47_1(SHX48_1, SHX49_1)
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1.isSitting
  return SHX0_2
end
function SHX48_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1.isLaying
  return SHX0_2
end
SHX49_1 = exports
SHX50_1 = "IsSitting"
SHX51_1 = SHX47_1
SHX49_1(SHX50_1, SHX51_1)
SHX49_1 = exports
SHX50_1 = "IsLaying"
SHX51_1 = SHX48_1
SHX49_1(SHX50_1, SHX51_1)
SHX49_1 = CMG
function SHX50_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX4_1 = SHX0_2
end
SHX49_1.disableSittingOnChairThisFrame = SHX50_1
