-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1
SHX0_1 = false
SHX1_1 = false
SHX2_1 = false
SHX3_1 = RegisterNetEvent
SHX4_1 = "49d43c2655"
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX0_1
  if not SHX0_2 then
    SHX0_2 = true
    SHX0_1 = SHX0_2
    SHX0_2 = TriggerEvent
    SHX1_2 = "62acadffbf"
    SHX0_2(SHX1_2)
    SHX0_2 = Wait
    SHX1_2 = 5000
    SHX0_2(SHX1_2)
    SHX0_2 = 0
    while SHX0_2 <= 100 do
      SHX1_2 = GetEntityHealth
      SHX2_2 = PlayerPedId
      SHX2_2 = SHX2_2()
      SHX1_2 = SHX1_2(SHX2_2)
      SHX2_2 = 200
      if SHX1_2 <= SHX2_2 then
        SHX1_2 = GetEntityHealth
        SHX2_2 = PlayerPedId
        SHX2_2 = SHX2_2()
        SHX1_2 = SHX1_2(SHX2_2)
        if SHX1_2 > 102 then
          SHX1_2 = tCMG
          SHX1_2 = SHX1_2.varyHealth
          SHX2_2 = 1
          SHX1_2(SHX2_2)
        end
      end
      SHX0_2 = SHX0_2 + 1
      SHX1_2 = Wait
      SHX2_2 = 250
      SHX1_2(SHX2_2)
    end
    SHX1_2 = false
    SHX0_1 = SHX1_2
  end
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "30b690a8dd"
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX0_1
  if not SHX0_2 then
    SHX0_2 = true
    SHX0_1 = SHX0_2
    SHX0_2 = TriggerEvent
    SHX1_2 = "62acadffbf"
    SHX0_2(SHX1_2)
    SHX0_2 = Wait
    SHX1_2 = 5000
    SHX0_2(SHX1_2)
    SHX0_2 = 0
    while SHX0_2 <= 100 do
      SHX1_2 = GetEntityHealth
      SHX2_2 = PlayerPedId
      SHX2_2 = SHX2_2()
      SHX1_2 = SHX1_2(SHX2_2)
      SHX2_2 = 200
      if SHX1_2 <= SHX2_2 then
        SHX1_2 = GetEntityHealth
        SHX2_2 = PlayerPedId
        SHX2_2 = SHX2_2()
        SHX1_2 = SHX1_2(SHX2_2)
        if SHX1_2 > 102 then
          SHX1_2 = tCMG
          SHX1_2 = SHX1_2.varyHealth
          SHX2_2 = 1
          SHX1_2(SHX2_2)
        end
      end
      SHX0_2 = SHX0_2 + 1
      SHX1_2 = Wait
      SHX2_2 = 250
      SHX1_2(SHX2_2)
    end
    SHX1_2 = false
    SHX0_1 = SHX1_2
  else
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.notify
    SHX1_2 = "~r~fuck, I don't feel too good..."
    SHX0_2(SHX1_2)
    SHX0_2 = TriggerEvent
    SHX1_2 = "62acadffbf"
    SHX0_2(SHX1_2)
    SHX0_2 = Wait
    SHX1_2 = 5000
    SHX0_2(SHX1_2)
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.playScreenEffect
    SHX1_2 = "DrugsMichaelAliensFight"
    SHX2_2 = 30
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = 0
    while SHX0_2 <= 100 do
      SHX1_2 = GetEntityHealth
      SHX2_2 = PlayerPedId
      SHX2_2 = SHX2_2()
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 > 102 then
        SHX1_2 = tCMG
        SHX1_2 = SHX1_2.varyHealth
        SHX2_2 = -2
        SHX1_2(SHX2_2)
      end
      SHX0_2 = SHX0_2 + 1
      SHX1_2 = Wait
      SHX2_2 = 250
      SHX1_2(SHX2_2)
    end
  end
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "e010359692"
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = SHX2_1
  if not SHX0_2 then
    SHX0_2 = true
    SHX2_1 = SHX0_2
    SHX0_2 = PlayerPedId
    SHX0_2 = SHX0_2()
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerCoords
    SHX1_2 = SHX1_2()
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.loadModel
    SHX3_2 = 1368637848
    SHX2_2(SHX3_2)
    SHX2_2 = GetEntityForwardVector
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX2_2 = SHX2_2 * 0.5
    SHX2_2 = SHX1_2 + SHX2_2
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.requestEntitySpawn
    SHX4_2 = "apply_bandage_object"
    SHX3_2(SHX4_2)
    SHX3_2 = CreateObject
    SHX4_2 = 1368637848
    SHX5_2 = SHX2_2.x
    SHX6_2 = SHX2_2.y
    SHX7_2 = SHX2_2.z
    SHX8_2 = true
    SHX9_2 = true
    SHX10_2 = false
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX4_2 = PlaceObjectOnGroundProperly
    SHX5_2 = SHX3_2
    SHX4_2(SHX5_2)
    SHX4_2 = SetModelAsNoLongerNeeded
    SHX5_2 = 1368637848
    SHX4_2(SHX5_2)
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.loadAnimDict
    SHX5_2 = "anim@heists@box_carry@"
    SHX4_2(SHX5_2)
    SHX4_2 = TaskPlayAnim
    SHX5_2 = SHX0_2
    SHX6_2 = "anim@heists@box_carry@"
    SHX7_2 = "base"
    SHX8_2 = 8.0
    SHX9_2 = 8.0
    SHX10_2 = -1
    SHX11_2 = 3
    SHX12_2 = 1.0
    SHX13_2 = false
    SHX14_2 = false
    SHX15_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX4_2 = RemoveAnimDict
    SHX5_2 = "anim@heists@box_carry@"
    SHX4_2(SHX5_2)
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.loadClipSet
    SHX5_2 = "move_ped_crouched"
    SHX4_2(SHX5_2)
    SHX4_2 = RemoveAnimSet
    SHX5_2 = "move_ped_crouched"
    SHX4_2(SHX5_2)
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.CreateThread
    function SHX5_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.startCircularProgressBar
      SHX1_3 = ""
      SHX2_3 = 3000
      SHX3_3 = nil
      function SHX4_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    end
    SHX4_2(SHX5_2)
    SHX4_2 = GetSelectedPedWeapon
    SHX5_2 = SHX0_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.setWeapon
    SHX6_2 = SHX0_2
    SHX7_2 = -1569615261
    SHX8_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = GetGameTimer
    SHX5_2 = SHX5_2()
    while true do
      SHX6_2 = GetGameTimer
      SHX6_2 = SHX6_2()
      SHX6_2 = SHX6_2 - SHX5_2
      SHX7_2 = 3000
      if not (SHX6_2 < SHX7_2) then
        break
      end
      SHX6_2 = GetEntityHealth
      SHX7_2 = SHX0_2
      SHX6_2 = SHX6_2(SHX7_2)
      if not (SHX6_2 > 102) then
        break
      end
      SHX6_2 = DisablePlayerFiring
      SHX7_2 = PlayerId
      SHX7_2 = SHX7_2()
      SHX8_2 = true
      SHX6_2(SHX7_2, SHX8_2)
      SHX6_2 = SetPedMovementClipset
      SHX7_2 = SHX0_2
      SHX8_2 = "move_ped_crouched"
      SHX9_2 = 0.6
      SHX6_2(SHX7_2, SHX8_2, SHX9_2)
      SHX6_2 = SetPedStrafeClipset
      SHX7_2 = SHX0_2
      SHX8_2 = "move_ped_crouched_strafing"
      SHX6_2(SHX7_2, SHX8_2)
      SHX6_2 = Citizen
      SHX6_2 = SHX6_2.Wait
      SHX7_2 = 0
      SHX6_2(SHX7_2)
    end
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.stopCircularProgressBar
    SHX6_2()
    SHX6_2 = ResetPedStrafeClipset
    SHX7_2 = SHX0_2
    SHX6_2(SHX7_2)
    SHX6_2 = ResetPedWeaponMovementClipset
    SHX7_2 = SHX0_2
    SHX6_2(SHX7_2)
    SHX6_2 = ResetPedMovementClipset
    SHX7_2 = SHX0_2
    SHX8_2 = 0.5
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = DeleteEntity
    SHX7_2 = SHX3_2
    SHX6_2(SHX7_2)
    SHX6_2 = ClearPedTasks
    SHX7_2 = SHX0_2
    SHX6_2(SHX7_2)
    SHX6_2 = GetEntityHealth
    SHX7_2 = SHX0_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 > 102 then
      SHX7_2 = SetEntityHealth
      SHX8_2 = SHX0_2
      SHX9_2 = math
      SHX9_2 = SHX9_2.min
      SHX10_2 = SHX6_2 + 25
      SHX11_2 = 200
      SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX9_2(SHX10_2, SHX11_2)
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    end
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.setWeapon
    SHX8_2 = SHX0_2
    SHX9_2 = SHX4_2
    SHX10_2 = true
    SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX7_2 = false
    SHX2_1 = SHX7_2
  end
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "49921b1e25"
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX1_1
  if not SHX0_2 then
    SHX0_2 = true
    SHX1_1 = SHX0_2
    SHX0_2 = {}
    SHX1_2 = {}
    SHX2_2 = "mp_player_inteat@burger"
    SHX3_2 = "mp_player_int_eat_burger_enter"
    SHX4_2 = 1
    SHX1_2[1] = SHX2_2
    SHX1_2[2] = SHX3_2
    SHX1_2[3] = SHX4_2
    SHX2_2 = {}
    SHX3_2 = "mp_player_inteat@burger"
    SHX4_2 = "mp_player_int_eat_burger"
    SHX5_2 = 1
    SHX2_2[1] = SHX3_2
    SHX2_2[2] = SHX4_2
    SHX2_2[3] = SHX5_2
    SHX3_2 = {}
    SHX4_2 = "mp_player_inteat@burger"
    SHX5_2 = "mp_player_int_eat_burger_fp"
    SHX6_2 = 1
    SHX3_2[1] = SHX4_2
    SHX3_2[2] = SHX5_2
    SHX3_2[3] = SHX6_2
    SHX4_2 = {}
    SHX5_2 = "mp_player_inteat@burger"
    SHX6_2 = "mp_player_int_eat_exit_burger"
    SHX7_2 = 1
    SHX4_2[1] = SHX5_2
    SHX4_2[2] = SHX6_2
    SHX4_2[3] = SHX7_2
    SHX0_2[1] = SHX1_2
    SHX0_2[2] = SHX2_2
    SHX0_2[3] = SHX3_2
    SHX0_2[4] = SHX4_2
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.playAnim
    SHX2_2 = true
    SHX3_2 = SHX0_2
    SHX4_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = Wait
    SHX2_2 = 2500
    SHX1_2(SHX2_2)
    SHX1_2 = 0
    while SHX1_2 <= 25 do
      SHX2_2 = GetEntityHealth
      SHX3_2 = PlayerPedId
      SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX3_2()
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX3_2 = 200
      if SHX2_2 <= SHX3_2 then
        SHX2_2 = GetEntityHealth
        SHX3_2 = PlayerPedId
        SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX3_2()
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
        if SHX2_2 > 102 then
          SHX2_2 = tCMG
          SHX2_2 = SHX2_2.varyHealth
          SHX3_2 = 1
          SHX2_2(SHX3_2)
        end
      end
      SHX1_2 = SHX1_2 + 1
      SHX2_2 = Wait
      SHX3_2 = 125
      SHX2_2(SHX3_2)
    end
    SHX2_2 = false
    SHX1_1 = SHX2_2
  else
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.notify
    SHX1_2 = "~r~You dropped the taco on the floor trying to stuff it in your mouth!"
    SHX0_2(SHX1_2)
  end
end
SHX3_1(SHX4_1, SHX5_1)
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.setCanAnim
  SHX3_2 = false
  SHX2_2(SHX3_2)
  SHX2_2 = SetTimecycleModifier
  SHX3_2 = "spectator5"
  SHX2_2(SHX3_2)
  SHX2_2 = SetPedMotionBlur
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadClipSet
  SHX3_2 = "move_m@drunk@verydrunk"
  SHX2_2(SHX3_2)
  SHX2_2 = SetPedMovementClipset
  SHX3_2 = SHX1_2
  SHX4_2 = "move_m@drunk@verydrunk"
  SHX5_2 = 1.0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = RemoveClipSet
  SHX3_2 = "move_m@drunk@verydrunk"
  SHX2_2(SHX3_2)
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 8000
  SHX2_2(SHX3_2)
  SHX2_2 = DoScreenFadeOut
  SHX3_2 = 3500
  SHX2_2(SHX3_2)
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  while true do
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX3_2 = SHX3_2 - SHX2_2
    SHX4_2 = 12000
    if not (SHX3_2 < SHX4_2) then
      break
    end
    SHX3_2 = SetPedToRagdoll
    SHX4_2 = SHX1_2
    SHX5_2 = 5000
    SHX6_2 = 5000
    SHX7_2 = 0
    SHX8_2 = false
    SHX9_2 = false
    SHX10_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  if SHX0_2 then
    SHX3_2 = DoScreenFadeIn
    SHX4_2 = 2000
    SHX3_2(SHX4_2)
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 2000
    SHX3_2(SHX4_2)
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.setCanAnim
    SHX4_2 = true
    SHX3_2(SHX4_2)
  end
  SHX3_2 = ClearTimecycleModifier
  SHX3_2()
  SHX3_2 = SetPedMotionBlur
  SHX4_2 = SHX1_2
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = ResetPedMovementClipset
  SHX4_2 = SHX1_2
  SHX5_2 = 0.0
  SHX3_2(SHX4_2, SHX5_2)
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = {}
  SHX1_2 = vector4
  SHX2_2 = -803.1484375
  SHX3_2 = 168.69989013672
  SHX4_2 = 76.740577697754
  SHX5_2 = 117.35
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = vector4
  SHX3_2 = 1971.0661621094
  SHX4_2 = 3819.2163085938
  SHX5_2 = 33.428691864014
  SHX6_2 = 301.21
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = vector4
  SHX4_2 = 951.93359375
  SHX5_2 = 459.44088745117
  SHX6_2 = 126.2303237915
  SHX7_2 = 161.45
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = vector4
  SHX5_2 = 973.404296875
  SHX6_2 = -208.77210998535
  SHX7_2 = 76.168434143066
  SHX8_2 = 63.13
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = vector4
  SHX6_2 = 1350.5997314453
  SHX7_2 = -535.03851318359
  SHX8_2 = 74.035507202148
  SHX9_2 = 253.63
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = vector4
  SHX7_2 = -17.932209014893
  SHX8_2 = -1436.7879638672
  SHX9_2 = 31.101530075073
  SHX10_2 = 174.58
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX0_2[1] = SHX1_2
  SHX0_2[2] = SHX2_2
  SHX0_2[3] = SHX3_2
  SHX0_2[4] = SHX4_2
  SHX0_2[5] = SHX5_2
  SHX0_2[6] = SHX6_2
  SHX0_2[7] = SHX7_2
  SHX0_2[8] = SHX8_2
  SHX0_2[9] = SHX9_2
  SHX0_2[10] = SHX10_2
  SHX0_2[11] = SHX11_2
  SHX0_2[12] = SHX12_2
  SHX0_2[13] = SHX13_2
  SHX0_2[14] = SHX14_2
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = math
  SHX2_2 = SHX2_2.random
  SHX3_2 = 1
  SHX4_2 = #SHX0_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX0_2[SHX2_2]
  SHX3_2 = FreezeEntityPosition
  SHX4_2 = SHX1_2
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetEntityCoordsNoOffset
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX8_2 = true
  SHX9_2 = false
  SHX10_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX3_2 = SetEntityHeading
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2.w
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadAnimDict
  SHX4_2 = "anim@amb@nightclub@lazlow@lo_toilet@"
  SHX3_2(SHX4_2)
  SHX3_2 = TaskPlayAnim
  SHX4_2 = SHX1_2
  SHX5_2 = "anim@amb@nightclub@lazlow@lo_toilet@"
  SHX6_2 = "lowtoilet_base_laz"
  SHX7_2 = 800.0
  SHX8_2 = 8.0
  SHX9_2 = -1
  SHX10_2 = 49
  SHX11_2 = 0
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX3_2 = RemoveAnimDict
  SHX4_2 = "anim@amb@nightclub@lazlow@lo_toilet@"
  SHX3_2(SHX4_2)
  while true do
    SHX3_2 = HasAnimSetLoaded
    SHX4_2 = "move_ped_crouched"
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = RequestAnimSet
    SHX4_2 = "move_ped_crouched"
    SHX3_2(SHX4_2)
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = SetPedMovementClipset
  SHX4_2 = SHX1_2
  SHX5_2 = "move_ped_crouched"
  SHX6_2 = 0.35
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = RemoveAnimSet
  SHX4_2 = "move_ped_crouched"
  SHX3_2(SHX4_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.Wait
  SHX4_2 = 2000
  SHX3_2(SHX4_2)
  SHX3_2 = DoScreenFadeIn
  SHX4_2 = 1000
  SHX3_2(SHX4_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.Wait
  SHX4_2 = 5000
  SHX3_2(SHX4_2)
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.setCanAnim
  SHX4_2 = true
  SHX3_2(SHX4_2)
  SHX3_2 = StopAnimTask
  SHX4_2 = SHX1_2
  SHX5_2 = "anim@amb@nightclub@lazlow@lo_toilet@"
  SHX6_2 = "lowtoilet_base_laz"
  SHX7_2 = 1.0
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = ResetPedMovementClipset
  SHX4_2 = SHX1_2
  SHX5_2 = 0.55
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = FreezeEntityPosition
  SHX4_2 = SHX1_2
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
end
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  while true do
    SHX1_2 = GetGameTimer
    SHX1_2 = SHX1_2()
    SHX1_2 = SHX1_2 - SHX0_2
    SHX2_2 = 1000
    if SHX1_2 > SHX2_2 then
      break
    end
    SHX2_2 = 1000
    SHX2_2 = SHX2_2 - SHX1_2
    SHX2_2 = SHX2_2 / 1000
    SHX3_2 = SetTimecycleModifierStrength
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX1_2 = ClearTimecycleModifier
  SHX1_2()
end
function SHX6_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadModel
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadModel
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_2 = GetNthClosestVehicleNode
  SHX4_2 = SHX2_2.x
  SHX5_2 = SHX2_2.y
  SHX6_2 = SHX2_2.z
  SHX7_2 = 6
  SHX3_2, SHX4_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  if SHX3_2 then
    SHX5_2 = CreatePed
    SHX6_2 = 0
    SHX7_2 = SHX0_2
    SHX8_2 = SHX4_2.x
    SHX9_2 = SHX4_2.y
    SHX10_2 = SHX4_2.z
    SHX11_2 = 0.0
    SHX12_2 = false
    SHX13_2 = true
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX6_2 = CreateObject
    SHX7_2 = SHX1_2
    SHX8_2 = SHX2_2.x
    SHX9_2 = SHX2_2.y
    SHX10_2 = SHX2_2.z
    SHX11_2 = false
    SHX12_2 = true
    SHX13_2 = false
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX7_2 = AttachEntityToEntity
    SHX8_2 = SHX6_2
    SHX9_2 = SHX5_2
    SHX10_2 = GetPedBoneIndex
    SHX11_2 = SHX5_2
    SHX12_2 = 17188
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
    SHX11_2 = 0.12
    SHX12_2 = 0.01
    SHX13_2 = 0.01
    SHX14_2 = 5.0
    SHX15_2 = 150.0
    SHX16_2 = 0.0
    SHX17_2 = true
    SHX18_2 = true
    SHX19_2 = false
    SHX20_2 = true
    SHX21_2 = 1
    SHX22_2 = true
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
    SHX7_2 = TaskGoToCoordAnyMeans
    SHX8_2 = SHX5_2
    SHX9_2 = SHX2_2.x
    SHX10_2 = SHX2_2.y
    SHX11_2 = SHX2_2.z
    SHX12_2 = 5.0
    SHX13_2 = 0.0
    SHX14_2 = false
    SHX15_2 = 786603
    SHX16_2 = 3212836864
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX7_2 = CreateCam
    SHX8_2 = "DEFAULT_SCRIPTED_CAMERA"
    SHX9_2 = true
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    SHX8_2 = GetGameplayCamCoord
    SHX8_2 = SHX8_2()
    SHX9_2 = SetCamCoord
    SHX10_2 = SHX7_2
    SHX11_2 = SHX8_2.x
    SHX12_2 = SHX8_2.y
    SHX13_2 = SHX8_2.z
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX9_2 = GetGameplayCamRot
    SHX10_2 = 2
    SHX9_2 = SHX9_2(SHX10_2)
    SHX10_2 = SetCamRot
    SHX11_2 = SHX7_2
    SHX12_2 = SHX9_2.x
    SHX13_2 = SHX9_2.y
    SHX14_2 = SHX9_2.z
    SHX15_2 = 2
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX10_2 = SetCamActive
    SHX11_2 = SHX7_2
    SHX12_2 = true
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = RenderScriptCams
    SHX11_2 = true
    SHX12_2 = true
    SHX13_2 = 0
    SHX14_2 = true
    SHX15_2 = true
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX10_2 = PointCamAtEntity
    SHX11_2 = SHX7_2
    SHX12_2 = SHX5_2
    SHX13_2 = 0.0
    SHX14_2 = 0.0
    SHX15_2 = 0.0
    SHX16_2 = true
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX10_2 = SetCamFov
    SHX11_2 = SHX7_2
    SHX12_2 = 30.0
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = AddBlipForEntity
    SHX11_2 = SHX5_2
    SHX10_2 = SHX10_2(SHX11_2)
    SHX11_2 = SetBlipSprite
    SHX12_2 = SHX10_2
    SHX13_2 = 141
    SHX11_2(SHX12_2, SHX13_2)
    SHX11_2 = SetBlipColour
    SHX12_2 = SHX10_2
    SHX13_2 = 2
    SHX11_2(SHX12_2, SHX13_2)
    SHX11_2 = GetGameTimer
    SHX11_2 = SHX11_2()
    while true do
      SHX12_2 = GetEntityCoords
      SHX13_2 = SHX5_2
      SHX14_2 = true
      SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
      SHX12_2 = SHX12_2 - SHX2_2
      SHX12_2 = #SHX12_2
      if not (SHX12_2 > 2.0) then
        break
      end
      SHX12_2 = GetGameTimer
      SHX12_2 = SHX12_2()
      SHX12_2 = SHX12_2 - SHX11_2
      SHX13_2 = 10000
      if not (SHX12_2 < SHX13_2) then
        break
      end
      SHX12_2 = Citizen
      SHX12_2 = SHX12_2.Wait
      SHX13_2 = 0
      SHX12_2(SHX13_2)
    end
    SHX12_2 = SetCamActive
    SHX13_2 = SHX7_2
    SHX14_2 = false
    SHX12_2(SHX13_2, SHX14_2)
    SHX12_2 = RenderScriptCams
    SHX13_2 = false
    SHX14_2 = false
    SHX15_2 = 0
    SHX16_2 = false
    SHX17_2 = false
    SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX12_2 = DestroyCam
    SHX13_2 = SHX7_2
    SHX14_2 = false
    SHX12_2(SHX13_2, SHX14_2)
    SHX12_2 = DetachEntity
    SHX13_2 = SHX6_2
    SHX14_2 = false
    SHX15_2 = false
    SHX12_2(SHX13_2, SHX14_2, SHX15_2)
    SHX12_2 = Citizen
    SHX12_2 = SHX12_2.Wait
    SHX13_2 = 30000
    SHX12_2(SHX13_2)
    SHX12_2 = DeleteEntity
    SHX13_2 = SHX5_2
    SHX12_2(SHX13_2)
    SHX12_2 = DeleteEntity
    SHX13_2 = SHX6_2
    SHX12_2(SHX13_2)
  end
  SHX5_2 = SetModelAsNoLongerNeeded
  SHX6_2 = SHX0_2
  SHX5_2(SHX6_2)
  SHX5_2 = SetModelAsNoLongerNeeded
  SHX6_2 = SHX1_2
  SHX5_2(SHX6_2)
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = GetNthClosestVehicleNode
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.y
  SHX4_2 = SHX0_2.z
  SHX5_2 = 6
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  if not SHX1_2 then
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadModel
  SHX4_2 = -835930287
  SHX3_2(SHX4_2)
  SHX3_2 = CreatePed
  SHX4_2 = 0
  SHX5_2 = -835930287
  SHX6_2 = SHX2_2.x
  SHX7_2 = SHX2_2.y
  SHX8_2 = SHX2_2.z
  SHX9_2 = 0.0
  SHX10_2 = false
  SHX11_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX4_2 = TaskTurnPedToFaceEntity
  SHX5_2 = SHX3_2
  SHX6_2 = PlayerPedId
  SHX6_2 = SHX6_2()
  SHX7_2 = -1
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SetModelAsNoLongerNeeded
  SHX5_2 = -835930287
  SHX4_2(SHX5_2)
  SHX4_2 = SetTimecycleModifier
  SHX5_2 = "Kifflom"
  SHX4_2(SHX5_2)
  SHX4_2 = CreateCam
  SHX5_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX6_2 = true
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = GetGameplayCamCoord
  SHX5_2 = SHX5_2()
  SHX6_2 = SetCamCoord
  SHX7_2 = SHX4_2
  SHX8_2 = SHX5_2.x
  SHX9_2 = SHX5_2.y
  SHX10_2 = SHX5_2.z
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX6_2 = GetGameplayCamRot
  SHX7_2 = 2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = SetCamRot
  SHX8_2 = SHX4_2
  SHX9_2 = SHX6_2.x
  SHX10_2 = SHX6_2.y
  SHX11_2 = SHX6_2.z
  SHX12_2 = 2
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX7_2 = SetCamActive
  SHX8_2 = SHX4_2
  SHX9_2 = true
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = RenderScriptCams
  SHX8_2 = true
  SHX9_2 = true
  SHX10_2 = 0
  SHX11_2 = true
  SHX12_2 = true
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX7_2 = PointCamAtEntity
  SHX8_2 = SHX4_2
  SHX9_2 = SHX3_2
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = true
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX7_2 = notify
  SHX8_2 = "~y~Is that... jesus?"
  SHX7_2(SHX8_2)
  SHX7_2 = GetCamFov
  SHX8_2 = SHX4_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = 30.0
  SHX7_2 = SHX8_2 - SHX7_2
  SHX8_2 = GetGameTimer
  SHX8_2 = SHX8_2()
  while true do
    SHX9_2 = GetGameTimer
    SHX9_2 = SHX9_2()
    SHX9_2 = SHX9_2 - SHX8_2
    SHX10_2 = 10000
    if SHX9_2 > SHX10_2 then
      break
    end
    SHX10_2 = SHX9_2 / 15000
    SHX11_2 = SHX7_2 * SHX10_2
    SHX12_2 = SetCamFov
    SHX13_2 = SHX4_2
    SHX14_2 = 30.0 + SHX11_2
    SHX12_2(SHX13_2, SHX14_2)
    SHX12_2 = Citizen
    SHX12_2 = SHX12_2.Wait
    SHX13_2 = 0
    SHX12_2(SHX13_2)
  end
  SHX9_2 = SetCamActive
  SHX10_2 = SHX4_2
  SHX11_2 = false
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = RenderScriptCams
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = 0
  SHX13_2 = false
  SHX14_2 = false
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX9_2 = DestroyCam
  SHX10_2 = SHX4_2
  SHX11_2 = false
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = DeleteEntity
  SHX10_2 = SHX3_2
  SHX9_2(SHX10_2)
  SHX9_2 = SHX5_1
  SHX9_2()
end
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadModel
  SHX1_2 = 1814532926
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = CreateObject
  SHX2_2 = 1814532926
  SHX3_2 = SHX0_2.x
  SHX4_2 = SHX0_2.y
  SHX5_2 = SHX0_2.z
  SHX6_2 = false
  SHX7_2 = false
  SHX8_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX2_2 = PlaceObjectOnGroundProperly
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = SetModelAsNoLongerNeeded
  SHX3_2 = 1814532926
  SHX2_2(SHX3_2)
end
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadModel
  SHX1_2 = -290617598
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadModel
  SHX1_2 = -413447396
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.overrideTime
  SHX1_2 = 0
  SHX2_2 = 0
  SHX3_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setWeather
  SHX1_2 = "THUNDER"
  SHX0_2(SHX1_2)
  SHX0_2 = CreateVehicle
  SHX1_2 = -290617598
  SHX2_2 = 1578.0584716797
  SHX3_2 = 4051.5563964844
  SHX4_2 = 1084.2967529297
  SHX5_2 = 78.9
  SHX6_2 = false
  SHX7_2 = false
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.initLocalVehicle
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = CreatePedInsideVehicle
  SHX2_2 = SHX0_2
  SHX3_2 = 0
  SHX4_2 = -413447396
  SHX5_2 = -1
  SHX6_2 = false
  SHX7_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = SetModelAsNoLongerNeeded
  SHX3_2 = -290617598
  SHX2_2(SHX3_2)
  SHX2_2 = SetModelAsNoLongerNeeded
  SHX3_2 = -413447396
  SHX2_2(SHX3_2)
  SHX2_2 = CreateCam
  SHX3_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = AttachCamToPedBone
  SHX4_2 = SHX2_2
  SHX5_2 = SHX1_2
  SHX6_2 = GetPedBoneIndex
  SHX7_2 = SHX1_2
  SHX8_2 = 12844
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 0.7
  SHX10_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX3_2 = SetCamActive
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = RenderScriptCams
  SHX4_2 = true
  SHX5_2 = true
  SHX6_2 = 0
  SHX7_2 = true
  SHX8_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX3_2 = SetFocusEntity
  SHX4_2 = SHX0_2
  SHX3_2(SHX4_2)
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = math
    SHX0_3 = SHX0_3.random
    SHX1_3 = -2
    SHX2_3 = 2
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = SHX0_3 + 0.0
    return SHX0_3
  end
  SHX4_2 = DoScreenFadeIn
  SHX5_2 = 1000
  SHX4_2(SHX5_2)
  SHX4_2 = 0
  while true do
    SHX5_2 = IsEntityDead
    SHX6_2 = SHX0_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      break
    end
    SHX5_2 = GetGameTimer
    SHX5_2 = SHX5_2()
    SHX5_2 = SHX5_2 - SHX4_2
    SHX6_2 = 200
    if SHX5_2 > SHX6_2 then
      SHX5_2 = ApplyForceToEntity
      SHX6_2 = SHX0_2
      SHX7_2 = 1
      SHX8_2 = SHX3_2
      SHX8_2 = SHX8_2()
      SHX9_2 = SHX3_2
      SHX9_2 = SHX9_2()
      SHX10_2 = SHX3_2
      SHX10_2 = SHX10_2()
      SHX11_2 = 0.0
      SHX12_2 = 0.0
      SHX13_2 = 0.0
      SHX14_2 = -1
      SHX15_2 = true
      SHX16_2 = false
      SHX17_2 = true
      SHX18_2 = false
      SHX19_2 = false
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX5_2 = GetGameTimer
      SHX5_2 = SHX5_2()
      SHX4_2 = SHX5_2
    end
    SHX5_2 = GetEntityRotation
    SHX6_2 = SHX0_2
    SHX7_2 = 2
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX6_2 = SetCamRot
    SHX7_2 = SHX2_2
    SHX8_2 = SHX5_2.x
    SHX9_2 = SHX5_2.y
    SHX10_2 = SHX5_2.z
    SHX11_2 = 2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = SetPedToRagdoll
    SHX7_2 = PlayerPedId
    SHX7_2 = SHX7_2()
    SHX8_2 = 1000
    SHX9_2 = 1000
    SHX10_2 = 0
    SHX11_2 = false
    SHX12_2 = false
    SHX13_2 = false
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX6_2 = Citizen
    SHX6_2 = SHX6_2.Wait
    SHX7_2 = 0
    SHX6_2(SHX7_2)
  end
  SHX5_2 = ClearFocus
  SHX5_2()
  SHX5_2 = SetCamActive
  SHX6_2 = SHX2_2
  SHX7_2 = false
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = RenderScriptCams
  SHX6_2 = false
  SHX7_2 = false
  SHX8_2 = 0
  SHX9_2 = false
  SHX10_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX5_2 = DestroyCam
  SHX6_2 = SHX2_2
  SHX7_2 = false
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = DeleteEntity
  SHX6_2 = SHX1_2
  SHX5_2(SHX6_2)
  SHX5_2 = DeleteEntity
  SHX6_2 = SHX0_2
  SHX5_2(SHX6_2)
  SHX5_2 = tCMG
  SHX5_2 = SHX5_2.setCanAnim
  SHX6_2 = true
  SHX5_2(SHX6_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.cancelOverrideTimeWeather
  SHX5_2()
end
SHX10_1 = RegisterNetEvent
SHX11_1 = "46214fe8ae"
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadAnimDict
  SHX1_2 = "mp_safehousebeer@"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadModel
  SHX1_2 = 883645854
  SHX0_2(SHX1_2)
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = CreateObject
  SHX2_2 = 883645854
  SHX3_2 = 0.0
  SHX4_2 = 0.0
  SHX5_2 = 0.0
  SHX6_2 = false
  SHX7_2 = false
  SHX8_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX2_2 = AttachEntityToEntity
  SHX3_2 = SHX1_2
  SHX4_2 = SHX0_2
  SHX5_2 = GetPedBoneIndex
  SHX6_2 = SHX0_2
  SHX7_2 = 28422
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 180.0
  SHX12_2 = true
  SHX13_2 = true
  SHX14_2 = false
  SHX15_2 = true
  SHX16_2 = 1
  SHX17_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX2_2 = TaskPlayAnim
  SHX3_2 = SHX0_2
  SHX4_2 = "mp_safehousebeer@"
  SHX5_2 = "drink_2"
  SHX6_2 = 800.0
  SHX7_2 = 8.0
  SHX8_2 = -1
  SHX9_2 = 49
  SHX10_2 = 0
  SHX11_2 = false
  SHX12_2 = false
  SHX13_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 5000
  SHX2_2(SHX3_2)
  SHX2_2 = DeleteEntity
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = TaskPlayAnim
  SHX3_2 = SHX0_2
  SHX4_2 = "mp_safehousebeer@"
  SHX5_2 = "exit"
  SHX6_2 = 8.0
  SHX7_2 = 1.0
  SHX8_2 = -1
  SHX9_2 = 49
  SHX10_2 = 0
  SHX11_2 = false
  SHX12_2 = false
  SHX13_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 500
  SHX2_2(SHX3_2)
  SHX2_2 = math
  SHX2_2 = SHX2_2.random
  SHX3_2 = 1
  SHX4_2 = 20
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if 1 == SHX2_2 then
    SHX3_2 = DoScreenFadeOut
    SHX4_2 = 1000
    SHX3_2(SHX4_2)
    SHX3_2 = SetEntityHealth
    SHX4_2 = SHX0_2
    SHX5_2 = 200
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 2000
    SHX3_2(SHX4_2)
    SHX3_2 = DoScreenFadeIn
    SHX4_2 = 1000
    SHX3_2(SHX4_2)
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 1000
    SHX3_2(SHX4_2)
    SHX3_2 = notify
    SHX4_2 = "~g~You suddenly feel a lot better."
    SHX3_2(SHX4_2)
  elseif 2 == SHX2_2 then
    SHX3_2 = TriggerEvent
    SHX4_2 = "770ce54c02"
    SHX3_2(SHX4_2)
    SHX3_2 = notify
    SHX4_2 = "~r~That wasn't sugar..."
    SHX3_2(SHX4_2)
  elseif 3 == SHX2_2 then
    SHX3_2 = TriggerEvent
    SHX4_2 = "631801299a"
    SHX3_2(SHX4_2)
    SHX3_2 = notify
    SHX4_2 = "~r~What liquid was that?"
    SHX3_2(SHX4_2)
  elseif 4 == SHX2_2 then
    SHX3_2 = TriggerEvent
    SHX4_2 = "2155168724"
    SHX3_2(SHX4_2)
    SHX3_2 = notify
    SHX4_2 = "~r~..."
    SHX3_2(SHX4_2)
  elseif 5 == SHX2_2 then
    SHX3_2 = SHX3_1
    SHX4_2 = true
    SHX3_2(SHX4_2)
  elseif 6 == SHX2_2 then
    SHX3_2 = notify
    SHX4_2 = "~y~You witness a flash of light."
    SHX3_2(SHX4_2)
    SHX3_2 = ForceLightningFlash
    SHX3_2()
    SHX3_2 = SetTimecycleModifier
    SHX4_2 = "glasses_purple"
    SHX3_2(SHX4_2)
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 1000
    SHX3_2(SHX4_2)
    SHX3_2 = SHX5_1
    SHX3_2()
  elseif 7 == SHX2_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.hideAllDisplays
    SHX4_2 = "candyeffect"
    SHX3_2(SHX4_2)
    SHX3_2 = SHX3_1
    SHX4_2 = false
    SHX3_2(SHX4_2)
    SHX3_2 = SHX4_1
    SHX3_2()
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.showAllDisplays
    SHX4_2 = "candyeffect"
    SHX3_2(SHX4_2)
  elseif 8 == SHX2_2 then
    SHX3_2 = SHX3_1
    SHX4_2 = false
    SHX3_2(SHX4_2)
    SHX3_2 = SHX9_1
    SHX3_2()
    SHX3_2 = notify
    SHX4_2 = "~r~Okay..."
    SHX3_2(SHX4_2)
  elseif 9 == SHX2_2 then
    SHX3_2 = notify
    SHX4_2 = "~g~Tastes sweet."
    SHX3_2(SHX4_2)
  elseif 10 == SHX2_2 then
    SHX3_2 = notify
    SHX4_2 = "~g~Tastes like dark chocolate."
    SHX3_2(SHX4_2)
  elseif 11 == SHX2_2 then
    SHX3_2 = notify
    SHX4_2 = "~y~You notice rocks on the ground whilst eating."
    SHX3_2(SHX4_2)
  elseif 12 == SHX2_2 then
    SHX3_2 = SHX3_1
    SHX4_2 = true
    SHX3_2(SHX4_2)
    SHX3_2 = notify
    SHX4_2 = "~r~You start coughing up blood..."
    SHX3_2(SHX4_2)
    while true do
      SHX3_2 = IsEntityDead
      SHX4_2 = SHX0_2
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        break
      end
      SHX3_2 = GetEntityHealth
      SHX4_2 = SHX0_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not (SHX3_2 > 102) then
        break
      end
      SHX3_2 = SetEntityHealth
      SHX4_2 = SHX0_2
      SHX5_2 = GetEntityHealth
      SHX6_2 = SHX0_2
      SHX5_2 = SHX5_2(SHX6_2)
      SHX5_2 = SHX5_2 - 1
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = Citizen
      SHX3_2 = SHX3_2.Wait
      SHX4_2 = 200
      SHX3_2(SHX4_2)
    end
  elseif 13 == SHX2_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.hideAllDisplays
    SHX4_2 = "candyeffect"
    SHX3_2(SHX4_2)
    SHX3_2 = SHX7_1
    SHX3_2()
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.showAllDisplays
    SHX4_2 = "candyeffect"
    SHX3_2(SHX4_2)
  elseif 14 == SHX2_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.setCanAnim
    SHX4_2 = false
    SHX3_2(SHX4_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.loadAnimDict
    SHX4_2 = "misscarsteal2peeing"
    SHX3_2(SHX4_2)
    SHX3_2 = TaskPlayAnim
    SHX4_2 = SHX0_2
    SHX5_2 = "misscarsteal2peeing"
    SHX6_2 = "peeing_loop"
    SHX7_2 = 8.0
    SHX8_2 = 1.0
    SHX9_2 = -1
    SHX10_2 = 49
    SHX11_2 = 0
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX3_2 = RemoveAnimDict
    SHX4_2 = "misscarsteal2peeing"
    SHX3_2(SHX4_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.loadPtfx
    SHX4_2 = "scr_amb_chop"
    SHX3_2(SHX4_2)
    SHX3_2 = UseParticleFxAsset
    SHX4_2 = "scr_amb_chop"
    SHX3_2(SHX4_2)
    SHX3_2 = _ENV
    SHX4_2 = "StartNetworkedParticleFxLoopedOnEntityBone"
    SHX3_2 = SHX3_2[SHX4_2]
    SHX4_2 = "ent_anim_dog_peeing"
    SHX5_2 = SHX0_2
    SHX6_2 = -0.05
    SHX7_2 = 0.3
    SHX8_2 = 0.0
    SHX9_2 = 0.0
    SHX10_2 = 90.0
    SHX11_2 = 90.0
    SHX12_2 = GetEntityBoneIndexByName
    SHX13_2 = SHX0_2
    SHX14_2 = "ent_anim_dog_peeing"
    SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
    SHX13_2 = 1065353216
    SHX14_2 = false
    SHX15_2 = false
    SHX16_2 = false
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = 10000
    SHX4_2(SHX5_2)
    SHX4_2 = StopParticleFxLooped
    SHX5_2 = SHX3_2
    SHX6_2 = false
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = tCMG
    SHX4_2 = SHX4_2.setCanAnim
    SHX5_2 = true
    SHX4_2(SHX5_2)
  elseif 15 == SHX2_2 then
    SHX3_2 = notify
    SHX4_2 = "~g~You notice you're standing on a \194\1635 note."
    SHX3_2(SHX4_2)
    SHX3_2 = SHX8_1
    SHX3_2()
  elseif 16 == SHX2_2 then
    SHX3_2 = SetTimecycleModifier
    SHX4_2 = "hud_def_Trevor"
    SHX3_2(SHX4_2)
    SHX3_2 = notify
    SHX4_2 = "~g~You feel a sudden burst of energy."
    SHX3_2(SHX4_2)
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    while true do
      SHX4_2 = GetGameTimer
      SHX4_2 = SHX4_2()
      SHX4_2 = SHX4_2 - SHX3_2
      SHX5_2 = 20000
      if not (SHX4_2 < SHX5_2) then
        break
      end
      SHX4_2 = SetRunSprintMultiplierForPlayer
      SHX5_2 = PlayerId
      SHX5_2 = SHX5_2()
      SHX6_2 = 1.4
      SHX4_2(SHX5_2, SHX6_2)
      SHX4_2 = Citizen
      SHX4_2 = SHX4_2.Wait
      SHX5_2 = 0
      SHX4_2(SHX5_2)
    end
    SHX4_2 = SetRunSprintMultiplierForPlayer
    SHX5_2 = PlayerId
    SHX5_2 = SHX5_2()
    SHX6_2 = 1.0
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = SHX5_1
    SHX4_2()
  elseif 17 == SHX2_2 then
    SHX3_2 = notify
    SHX4_2 = "~y~That didn't taste of anything."
    SHX3_2(SHX4_2)
  elseif 18 == SHX2_2 then
    SHX3_2 = notify
    SHX4_2 = "~r~**chokes**"
    SHX3_2(SHX4_2)
    SHX3_2 = SetPedToRagdoll
    SHX4_2 = SHX0_2
    SHX5_2 = 1000
    SHX6_2 = 1000
    SHX7_2 = 0
    SHX8_2 = false
    SHX9_2 = false
    SHX10_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  elseif 19 == SHX2_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.hideAllDisplays
    SHX4_2 = "candyeffect"
    SHX3_2(SHX4_2)
    SHX3_2 = notify
    SHX4_2 = "~g~A stray cat brings you a thrown away burger."
    SHX3_2(SHX4_2)
    SHX3_2 = SHX6_1
    SHX4_2 = 1462895032
    SHX5_2 = 308173360
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.showAllDisplays
    SHX4_2 = "candyeffect"
    SHX3_2(SHX4_2)
  elseif 20 == SHX2_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.hideAllDisplays
    SHX4_2 = "candyeffect"
    SHX3_2(SHX4_2)
    SHX3_2 = notify
    SHX4_2 = "~g~A stray dog brings you a ball."
    SHX3_2(SHX4_2)
    SHX3_2 = SHX6_1
    SHX4_2 = 882848737
    SHX5_2 = -1720813907
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.showAllDisplays
    SHX4_2 = "candyeffect"
    SHX3_2(SHX4_2)
  end
end
SHX10_1(SHX11_1, SHX12_1)
