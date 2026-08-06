-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1
SHX0_1 = {}
SHX0_1.intensity = 4.0
SHX0_1.timeUntilReload = 10.0
SHX0_1.sprayRange = 2.0
SHX0_1.sprayEffectTime = 15
SHX1_1 = false
SHX2_1 = "weapons@first_person@aim_rng@generic@projectile@shared@core"
SHX3_1 = "idlerng_med"
SHX4_1 = "scr_bike_business"
SHX5_1 = "scr_bike_spraybottle_spray"
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = PlayerId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetPlayerPed
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX1_2
  SHX4_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = GetOffsetFromEntityInWorldCoords
  SHX4_2 = SHX1_2
  SHX5_2 = 0.0
  SHX6_2 = SHX0_1.sprayRange
  SHX7_2 = 0.0
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = StartShapeTestCapsule
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX8_2 = SHX3_2.x
  SHX9_2 = SHX3_2.y
  SHX10_2 = SHX3_2.z
  SHX11_2 = 1.0
  SHX12_2 = 12
  SHX13_2 = SHX1_2
  SHX14_2 = 7
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX5_2 = GetShapeTestResult
  SHX6_2 = SHX4_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX5_2(SHX6_2)
  return SHX9_2
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX0_3 = SHX0_1.timeUntilReload
    SHX1_3 = TriggerServerEvent
    SHX2_3 = "3d1541f44f"
    SHX1_3(SHX2_3)
    SHX1_3 = SHX6_1
    SHX1_3 = SHX1_3()
    if 0 ~= SHX1_3 then
      SHX2_3 = IsPedAPlayer
      SHX3_3 = SHX1_3
      SHX2_3 = SHX2_3(SHX3_3)
      if SHX2_3 then
        SHX2_3 = NetworkGetPlayerIndexFromPed
        SHX3_3 = SHX1_3
        SHX2_3 = SHX2_3(SHX3_3)
        if -1 ~= SHX2_3 then
          SHX3_3 = TriggerServerEvent
          SHX4_3 = "fa6b8620ec"
          SHX5_3 = GetPlayerServerId
          SHX6_3 = SHX2_3
          SHX5_3, SHX6_3 = SHX5_3(SHX6_3)
          SHX3_3(SHX4_3, SHX5_3, SHX6_3)
        end
      end
    end
    while true do
      SHX2_3 = IsDisabledControlPressed
      SHX3_3 = 0
      SHX4_3 = 24
      SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
      if not (SHX2_3 and SHX0_3 > 0) then
        break
      end
      SHX2_3 = SHX1_1
      if not SHX2_3 then
        SHX2_3 = TriggerServerEvent
        SHX3_3 = "adc0b1e4ab"
        SHX2_3(SHX3_3)
        return
      end
      SHX2_3 = Citizen
      SHX2_3 = SHX2_3.Wait
      SHX3_3 = 500
      SHX2_3(SHX3_3)
      SHX0_3 = SHX0_3 - 0.5
    end
    SHX2_3 = TriggerServerEvent
    SHX3_3 = "adc0b1e4ab"
    SHX2_3(SHX3_3)
  end
  SHX0_2(SHX1_2)
end
SHX8_1 = Citizen
SHX8_1 = SHX8_1.CreateThread
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  while true do
    SHX0_2 = PlayerPedId
    SHX0_2 = SHX0_2()
    SHX1_2 = GetSelectedPedWeapon
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX1_2 = 561663666 == SHX1_2
    SHX1_1 = SHX1_2
    SHX1_2 = IsEntityPlayingAnim
    SHX2_2 = SHX0_2
    SHX3_2 = SHX2_1
    SHX4_2 = SHX3_1
    SHX5_2 = 3
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = SHX1_1
    if SHX2_2 then
      if not SHX1_2 then
        SHX2_2 = CMG
        SHX2_2 = SHX2_2.loadAnimDict
        SHX3_2 = SHX2_1
        SHX2_2(SHX3_2)
        SHX2_2 = TaskPlayAnim
        SHX3_2 = PlayerPedId
        SHX3_2 = SHX3_2()
        SHX4_2 = SHX2_1
        SHX5_2 = SHX3_1
        SHX6_2 = 1.0
        SHX7_2 = -1
        SHX8_2 = -1
        SHX9_2 = 50
        SHX10_2 = 0
        SHX11_2 = false
        SHX12_2 = false
        SHX13_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = RemoveAnimDict
        SHX3_2 = SHX2_1
        SHX2_2(SHX3_2)
      end
      SHX2_2 = DisableControlAction
      SHX3_2 = 0
      SHX4_2 = 24
      SHX5_2 = true
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX2_2 = DisableControlAction
      SHX3_2 = 0
      SHX4_2 = 140
      SHX5_2 = true
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX2_2 = DisableControlAction
      SHX3_2 = 0
      SHX4_2 = 141
      SHX5_2 = true
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX2_2 = DisableControlAction
      SHX3_2 = 0
      SHX4_2 = 142
      SHX5_2 = true
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX2_2 = DisableControlAction
      SHX3_2 = 0
      SHX4_2 = 257
      SHX5_2 = true
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX2_2 = DisableControlAction
      SHX3_2 = 0
      SHX4_2 = 263
      SHX5_2 = true
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX2_2 = DisableControlAction
      SHX3_2 = 0
      SHX4_2 = 264
      SHX5_2 = true
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX2_2 = IsDisabledControlJustPressed
      SHX3_2 = 0
      SHX4_2 = 24
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if SHX2_2 then
        SHX2_2 = SHX7_1
        SHX2_2()
      end
    elseif SHX1_2 then
      SHX2_2 = StopAnimTask
      SHX3_2 = SHX0_2
      SHX4_2 = SHX2_1
      SHX5_2 = SHX3_1
      SHX6_2 = 1.0
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = SHX1_1
    if SHX3_2 then
      SHX3_2 = 0
      if SHX3_2 then
        goto SHX_LABEL_109
      end
    end
    SHX3_2 = 1000
    -- [FIX IF ERROR] Move ::SHX_LABEL_109:: outside nested blocks until all 'goto SHX_LABEL_109' can see it
    ::SHX_LABEL_109::
    SHX2_2(SHX3_2)
  end
end
SHX8_1(SHX9_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "44abcb0ccb"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = GetPlayerFromServerId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -1 ~= SHX1_2 then
    SHX2_2 = GetPlayerPed
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if 0 ~= SHX2_2 then
      SHX3_2 = GetCurrentPedWeaponEntityIndex
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if 0 ~= SHX3_2 then
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.loadPtfx
        SHX5_2 = SHX4_1
        SHX4_2(SHX5_2)
        SHX4_2 = StartParticleFxLoopedOnEntity
        SHX5_2 = SHX5_1
        SHX6_2 = SHX3_2
        SHX7_2 = -0.2
        SHX8_2 = 0.002
        SHX9_2 = 0.0
        SHX10_2 = 0.0
        SHX11_2 = -95.0
        SHX12_2 = 180.0
        SHX13_2 = SHX0_1.intensity
        SHX14_2 = false
        SHX15_2 = false
        SHX16_2 = false
        SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
        SHX4_2 = RemoveNamedPtfxAsset
        SHX5_2 = SHX4_1
        SHX4_2(SHX5_2)
      end
    end
  end
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "2b5ec979de"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = GetPlayerFromServerId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -1 ~= SHX1_2 then
    SHX2_2 = GetPlayerPed
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if 0 ~= SHX2_2 then
      SHX3_2 = GetCurrentPedWeaponEntityIndex
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if 0 ~= SHX3_2 then
        SHX4_2 = RemoveParticleFxFromEntity
        SHX5_2 = SHX3_2
        SHX4_2(SHX5_2)
      end
    end
  end
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = false
SHX9_1 = RegisterNetEvent
SHX10_1 = "2585ce9e7e"
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX8_1
  if not SHX0_2 then
    SHX0_2 = SetTimecycleModifier
    SHX1_2 = "drunk"
    SHX0_2(SHX1_2)
    SHX0_2 = SetTimecycleModifierStrength
    SHX1_2 = 2.0
    SHX0_2(SHX1_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.loadClipSet
    SHX1_2 = "move_m@drunk@verydrunk"
    SHX0_2(SHX1_2)
    SHX0_2 = SetPedMovementClipset
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = "move_m@drunk@verydrunk"
    SHX3_2 = 1.0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = RemoveClipSet
    SHX1_2 = "move_m@drunk@verydrunk"
    SHX0_2(SHX1_2)
    SHX0_2 = GetGameTimer
    SHX0_2 = SHX0_2()
    while true do
      SHX1_2 = GetGameTimer
      SHX1_2 = SHX1_2()
      SHX1_2 = SHX1_2 - SHX0_2
      SHX2_2 = SHX0_1.sprayEffectTime
      SHX2_2 = SHX2_2 * 1000
      if not (SHX1_2 < SHX2_2) then
        break
      end
      SHX1_2 = DisablePlayerFiring
      SHX2_2 = PlayerId
      SHX2_2 = SHX2_2()
      SHX3_2 = true
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = DisableControlAction
      SHX2_2 = 0
      SHX3_2 = 21
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DisableControlAction
      SHX2_2 = 0
      SHX3_2 = 22
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DisableControlAction
      SHX2_2 = 0
      SHX3_2 = 23
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DisableControlAction
      SHX2_2 = 0
      SHX3_2 = 24
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DisableControlAction
      SHX2_2 = 0
      SHX3_2 = 25
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = Citizen
      SHX1_2 = SHX1_2.Wait
      SHX2_2 = 0
      SHX1_2(SHX2_2)
    end
    SHX1_2 = ClearTimecycleModifier
    SHX1_2()
    SHX1_2 = ResetScenarioTypesEnabled
    SHX1_2()
    SHX1_2 = ResetPedMovementClipset
    SHX2_2 = PlayerPedId
    SHX2_2 = SHX2_2()
    SHX3_2 = 0
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX9_1(SHX10_1, SHX11_1)
