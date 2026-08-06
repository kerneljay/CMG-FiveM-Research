-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1
SHX0_1 = 0
function SHX1_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetSelectedPedWeapon
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -1569615261 == SHX1_2 then
    return
  end
  SHX2_2 = GetPedBoneIndex
  SHX3_2 = SHX0_1
  SHX4_2 = 57005
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if -1 == SHX2_2 then
    return
  end
  SHX3_2 = GetWorldPositionOfEntityBone
  SHX4_2 = SHX0_1
  SHX5_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerCoords
  SHX4_2 = SHX4_2()
  SHX4_2 = SHX4_2 - SHX3_2
  SHX4_2 = #SHX4_2
  if SHX4_2 > 1.0 then
    return
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.DrawText3D
  SHX5_2 = SHX3_2
  SHX6_2 = "~y~Press [G] to slap phone out of hand"
  SHX7_2 = 0.25
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = IsControlJustPressed
  SHX5_2 = 0
  SHX6_2 = 47
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  if not SHX4_2 then
    return
  end
  SHX4_2 = NetworkGetPlayerIndexFromPed
  SHX5_2 = SHX0_1
  SHX4_2 = SHX4_2(SHX5_2)
  if SHX4_2 < 0 then
    return
  end
  SHX5_2 = GetPlayerServerId
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  if SHX5_2 <= 0 then
    return
  end
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.setSwitchGunEnabled
  SHX7_2 = false
  SHX6_2(SHX7_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.setWeapon
  SHX7_2 = SHX0_2
  SHX8_2 = -1569615261
  SHX9_2 = true
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.playEmote
  SHX7_2 = "slap"
  SHX6_2(SHX7_2)
  SHX6_2 = TriggerServerEvent
  SHX7_2 = "ef297ed60b"
  SHX8_2 = SHX5_2
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = notify
  SHX7_2 = "~y~Slapped phone out of persons hands."
  SHX6_2(SHX7_2)
  SHX6_2 = Wait
  SHX7_2 = 2000
  SHX6_2(SHX7_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.setWeapon
  SHX7_2 = SHX0_2
  SHX8_2 = SHX1_2
  SHX9_2 = true
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.setSwitchGunEnabled
  SHX7_2 = true
  SHX6_2(SHX7_2)
end
SHX2_1 = false
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = true
  SHX2_1 = SHX0_2
  SHX0_2 = SetTimeout
  SHX1_2 = 1000
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX2_1 = SHX0_3
  end
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = SHX2_1
  if SHX0_2 then
    return
  end
  SHX0_2 = IsControlPressed
  SHX1_2 = 1
  SHX2_2 = 19
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 1
    SHX2_2 = 90
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = GetClosestPlayer
      SHX1_2 = 3
      SHX0_2 = SHX0_2(SHX1_2)
      if SHX0_2 then
        SHX1_2 = GetPlayerServerId
        SHX2_2 = SHX0_2
        SHX1_2 = SHX1_2(SHX2_2)
        if SHX1_2 > 0 then
          SHX2_2 = TriggerServerEvent
          SHX3_2 = "c5274515e4"
          SHX4_2 = SHX1_2
          SHX2_2(SHX3_2, SHX4_2)
        end
      end
      SHX1_2 = SHX3_1
      SHX1_2()
    end
  end
  SHX0_2 = IsControlPressed
  SHX1_2 = 1
  SHX2_2 = 19
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = IsDisabledControlJustPressed
    SHX1_2 = 1
    SHX2_2 = 185
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getClosestVehicleIncludingPed
      SHX1_2 = 5.0
      SHX0_2, SHX1_2 = SHX0_2(SHX1_2)
      if 0 ~= SHX0_2 and 0 ~= SHX1_2 then
        SHX2_2 = NetworkGetPlayerIndexFromPed
        SHX3_2 = SHX1_2
        SHX2_2 = SHX2_2(SHX3_2)
        if SHX2_2 >= 0 then
          SHX3_2 = GetPlayerServerId
          SHX4_2 = SHX2_2
          SHX3_2 = SHX3_2(SHX4_2)
          if SHX3_2 > 0 then
            SHX4_2 = TriggerServerEvent
            SHX5_2 = "1fccdc61f1"
            SHX6_2 = SHX3_2
            SHX4_2(SHX5_2, SHX6_2)
          end
        end
      end
      SHX2_2 = SHX3_1
      SHX2_2()
    end
  end
  SHX0_2 = IsControlPressed
  SHX1_2 = 1
  SHX2_2 = 19
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 1
    SHX2_2 = 58
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = IsPedArmed
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerPed
      SHX1_2 = SHX1_2()
      SHX2_2 = 7
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.isPurge
        SHX0_2 = SHX0_2()
        if not SHX0_2 then
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.isPlayerInRedZone
          SHX0_2 = SHX0_2()
          if not SHX0_2 then
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.getPlayerCombatTimer
            SHX0_2 = SHX0_2()
            if 0 == SHX0_2 then
              SHX0_2 = CMG
              SHX0_2 = SHX0_2.hasClientPermission
              SHX1_2 = "police.onduty.permission"
              SHX0_2 = SHX0_2(SHX1_2)
              if not SHX0_2 then
                SHX0_2 = CMG
                SHX0_2 = SHX0_2.inArena
                SHX0_2 = SHX0_2()
                if not SHX0_2 then
                  SHX0_2 = CMG
                  SHX0_2 = SHX0_2.inEvent
                  SHX0_2 = SHX0_2()
                  if not SHX0_2 then
                    SHX0_2 = GetSelectedPedWeapon
                    SHX1_2 = CMG
                    SHX1_2 = SHX1_2.getPlayerPed
                    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2()
                    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
                    if -1569615261 ~= SHX0_2 then
                      SHX1_2 = GetWeapontypeGroup
                      SHX2_2 = SHX0_2
                      SHX1_2 = SHX1_2(SHX2_2)
                      if -1609580060 ~= SHX1_2 and -728555052 ~= SHX1_2 and 1548507267 ~= SHX1_2 then
                        SHX2_2 = TriggerServerEvent
                        SHX3_2 = "42cf043256"
                        SHX2_2(SHX3_2)
                      end
                    end
                    SHX1_2 = SHX3_1
                    SHX1_2()
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  SHX0_2 = IsControlPressed
  SHX1_2 = 1
  SHX2_2 = 19
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 1
    SHX2_2 = 32
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = IsPauseMenuActive
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = IsPedInAnyVehicle
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.getPlayerPed
        SHX1_2 = SHX1_2()
        SHX2_2 = true
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsPedSwimming
          SHX1_2 = CMG
          SHX1_2 = SHX1_2.getPlayerPed
          SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2()
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          if not SHX0_2 then
            SHX0_2 = IsPedSwimmingUnderWater
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.getPlayerPed
            SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2()
            SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
            if not SHX0_2 then
              SHX0_2 = IsPedShooting
              SHX1_2 = CMG
              SHX1_2 = SHX1_2.getPlayerPed
              SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2()
              SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
              if not SHX0_2 then
                SHX0_2 = IsPedDiving
                SHX1_2 = CMG
                SHX1_2 = SHX1_2.getPlayerPed
                SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2()
                SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
                if not SHX0_2 then
                  SHX0_2 = IsPedFalling
                  SHX1_2 = CMG
                  SHX1_2 = SHX1_2.getPlayerPed
                  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2()
                  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
                  if not SHX0_2 then
                    SHX0_2 = GetEntityHealth
                    SHX1_2 = CMG
                    SHX1_2 = SHX1_2.getPlayerPed
                    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2()
                    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
                    if SHX0_2 > 105 then
                      SHX0_2 = CMG
                      SHX0_2 = SHX0_2.isHandcuffed
                      SHX0_2 = SHX0_2()
                      if not SHX0_2 then
                        SHX0_2 = CMG
                        SHX0_2 = SHX0_2.isInRadioChannel
                        SHX0_2 = SHX0_2()
                        if not SHX0_2 then
                          SHX0_2 = tCMG
                          SHX0_2 = SHX0_2.canAnim
                          SHX0_2 = SHX0_2()
                          if SHX0_2 then
                            SHX0_2 = tCMG
                            SHX0_2 = SHX0_2.playAnim
                            SHX1_2 = true
                            SHX2_2 = {}
                            SHX3_2 = {}
                            SHX4_2 = "rcmnigel1c"
                            SHX5_2 = "hailing_whistle_waive_a"
                            SHX3_2[1] = SHX4_2
                            SHX3_2[2] = SHX5_2
                            SHX2_2[1] = SHX3_2
                            SHX3_2 = false
                            SHX0_2(SHX1_2, SHX2_2, SHX3_2)
                            SHX0_2 = CMG
                            SHX0_2 = SHX0_2.setActivePetFollowsPlayer
                            SHX0_2()
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  SHX0_2 = IsControlPressed
  SHX1_2 = 1
  SHX2_2 = 19
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 1
    SHX2_2 = 29
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = IsPedInAnyVehicle
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerPed
      SHX1_2 = SHX1_2()
      SHX2_2 = false
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if not SHX0_2 then
        SHX0_2 = GetClosestPlayer
        SHX1_2 = 4
        SHX0_2 = SHX0_2(SHX1_2)
        if SHX0_2 and SHX0_2 >= 0 then
          SHX1_2 = GetPlayerServerId
          SHX2_2 = SHX0_2
          SHX1_2 = SHX1_2(SHX2_2)
          if SHX1_2 > 0 then
            SHX2_2 = TriggerServerEvent
            SHX3_2 = "a02d917ea8"
            SHX4_2 = SHX1_2
            SHX2_2(SHX3_2, SHX4_2)
          end
        end
      end
    end
  end
  SHX0_2 = SHX0_1
  if 0 ~= SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerVehicle
    SHX0_2 = SHX0_2()
    if 0 == SHX0_2 then
      SHX0_2 = SHX1_1
      SHX0_2()
    end
  end
end
SHX5_1 = CMG
SHX5_1 = SHX5_1.createThreadOnTick
SHX6_1 = SHX4_1
SHX7_1 = "Hotkeys"
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = Citizen
SHX5_1 = SHX5_1.CreateThread
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  while true do
    SHX0_2 = 10.0
    SHX1_2 = 0
    SHX0_1 = SHX1_2
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = pairs
    SHX3_2 = GetGamePool
    SHX4_2 = "CObject"
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX3_2(SHX4_2)
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = GetEntityModel
      SHX9_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2)
      if 108397254 == SHX8_2 then
        SHX8_2 = GetEntityAttachedTo
        SHX9_2 = SHX7_2
        SHX8_2 = SHX8_2(SHX9_2)
        SHX9_2 = DoesEntityExist
        SHX10_2 = SHX8_2
        SHX9_2 = SHX9_2(SHX10_2)
        if SHX9_2 then
          SHX9_2 = IsEntityAPed
          SHX10_2 = SHX8_2
          SHX9_2 = SHX9_2(SHX10_2)
          if SHX9_2 then
            SHX9_2 = IsPedAPlayer
            SHX10_2 = SHX8_2
            SHX9_2 = SHX9_2(SHX10_2)
            if SHX9_2 then
              SHX9_2 = CMG
              SHX9_2 = SHX9_2.getPlayerCoords
              SHX9_2 = SHX9_2()
              SHX10_2 = GetEntityCoords
              SHX11_2 = SHX8_2
              SHX12_2 = true
              SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
              SHX9_2 = SHX9_2 - SHX10_2
              SHX9_2 = #SHX9_2
              if SHX0_2 > SHX9_2 and SHX8_2 ~= SHX1_2 then
                SHX0_1 = SHX8_2
                SHX0_2 = SHX9_2
              end
            end
          end
        end
      end
    end
    SHX2_2 = Wait
    SHX3_2 = 1000
    SHX2_2(SHX3_2)
  end
end
SHX5_1(SHX6_1)
SHX5_1 = 5000
SHX6_1 = RegisterNetEvent
SHX7_1 = "a02d917ea8"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.CreateThread
  function SHX2_2()
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
    SHX2_3 = SHX5_1
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
  SHX1_2(SHX2_2)
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  while true do
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX2_2 = SHX2_2 - SHX1_2
    SHX3_2 = SHX5_1
    if SHX2_2 > SHX3_2 then
      break
    end
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.isInComa
    SHX2_2 = SHX2_2()
    if not SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.getPlayerCombatTimer
      SHX2_2 = SHX2_2()
      if 0 == SHX2_2 then
        goto SHX_LABEL_31
      end
    end
    SHX2_2 = notify
    SHX3_2 = "~r~You can not headbag someone whilst in a coma or have a combat timer."
    SHX2_2(SHX3_2)
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.stopCircularProgressBar
    SHX2_2()
    return
    -- [FIX IF ERROR] Move ::SHX_LABEL_31:: outside nested blocks until all 'goto SHX_LABEL_31' can see it
    ::SHX_LABEL_31::
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "c7887567db"
  SHX4_2 = SHX0_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX6_1(SHX7_1, SHX8_1)
