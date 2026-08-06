-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1
SHX0_1 = 1953687840
SHX1_1 = -2076048660
SHX2_1 = false
SHX3_1 = 101
SHX4_1 = "N/A"
SHX5_1 = "N/A"
SHX6_1 = 0.0
SHX7_1 = ""
SHX8_1 = {}
SHX9_1 = {}
SHX10_1 = {}
SHX11_1 = TriggerEvent
SHX12_1 = "chat:addSuggestion"
SHX13_1 = "/setspeed"
SHX14_1 = "Sets speed gun capture speed"
SHX15_1 = {}
SHX16_1 = {}
SHX16_1.name = "Speed"
SHX16_1.help = "minimum 101"
SHX15_1[1] = SHX16_1
SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX11_1 = RegisterCommand
SHX12_1 = "setspeed"
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.hasClientPermission
  SHX3_2 = "police.onduty.permission"
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = SHX1_2[1]
    if SHX2_2 then
      SHX3_2 = tonumber
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 and SHX2_2 <= 101 then
        SHX3_2 = tonumber
        SHX4_2 = SHX2_2
        SHX3_2 = SHX3_2(SHX4_2)
        if not SHX3_2 then
          SHX3_2 = 101
        end
        SHX3_1 = SHX3_2
        SHX3_2 = tCMG
        SHX3_2 = SHX3_2.notify
        SHX4_2 = string
        SHX4_2 = SHX4_2.format
        SHX5_2 = "~g~Maximum speed set to %smph"
        SHX6_2 = tonumber
        SHX7_2 = SHX1_2[1]
        SHX6_2, SHX7_2 = SHX6_2(SHX7_2)
        SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
        SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    end
    else
      SHX3_2 = tCMG
      SHX3_2 = SHX3_2.notify
      SHX4_2 = "~r~Minimum speed you can set is 101mph!"
      SHX3_2(SHX4_2)
    end
  else
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.notify
    SHX3_2 = "~r~Speed gun is not enabled!"
    SHX2_2(SHX3_2)
  end
end
SHX14_1 = false
SHX11_1(SHX12_1, SHX13_1, SHX14_1)
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isUsingDelGun
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = DisableControlAction
      SHX1_2 = 1
      SHX2_2 = 18
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisablePlayerFiring
      SHX1_2 = PlayerId
      SHX1_2 = SHX1_2()
      SHX2_2 = true
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = DrawRect
      SHX1_2 = 0.5
      SHX2_2 = 0.91
      SHX3_2 = 0.13
      SHX4_2 = 0.125
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 128
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.5
      SHX2_2 = 0.68
      SHX3_2 = 0.1
      SHX4_2 = 0.2
      SHX5_2 = 0.4
      SHX6_2 = SHX7_1
      SHX7_2 = "PLATE:  "
      SHX8_2 = SHX4_1
      SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.5
      SHX2_2 = 0.715
      SHX3_2 = 0.1
      SHX4_2 = 0.2
      SHX5_2 = 0.4
      SHX6_2 = SHX7_1
      SHX7_2 = "SPEED:  "
      SHX8_2 = SHX6_1
      SHX9_2 = " MPH"
      SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2 .. SHX9_2
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.5
      SHX2_2 = 0.75
      SHX3_2 = 0.1
      SHX4_2 = 0.2
      SHX5_2 = 0.4
      SHX6_2 = SHX7_1
      SHX7_2 = "MODEL:  "
      SHX8_2 = SHX5_1
      SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    end
  end
end
SHX12_1 = CMG
SHX12_1 = SHX12_1.createThreadOnTick
SHX13_1 = SHX11_1
SHX14_1 = "Speedgun Radar UI"
SHX12_1(SHX13_1, SHX14_1)
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX1_2 or nil
  if not SHX1_2 then
    SHX2_2 = 0
  end
  SHX3_2 = 10
  SHX2_2 = SHX3_2 ^ SHX2_2
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = 0.5 * SHX2_2
  SHX4_2 = SHX0_2 + SHX4_2
  return SHX3_2(SHX4_2)
end
SHX13_1 = false
SHX14_1 = Citizen
SHX14_1 = SHX14_1.CreateThread
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "police.onduty.permission"
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isUsingDelGun
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = GetSelectedPedWeapon
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.getPlayerPed
        SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX1_2()
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        SHX1_2 = SHX0_1
        if SHX0_2 ~= SHX1_2 then
          SHX1_2 = SHX1_1
          if SHX0_2 ~= SHX1_2 then
            goto SHX_LABEL_26
          end
        end
        SHX1_2 = true
        SHX2_1 = SHX1_2
        goto SHX_LABEL_28
        -- [FIX IF ERROR] Move ::SHX_LABEL_26:: outside nested blocks until all 'goto SHX_LABEL_26' can see it
        ::SHX_LABEL_26::
        SHX1_2 = false
        SHX2_1 = SHX1_2
        -- [FIX IF ERROR] Move ::SHX_LABEL_28:: outside nested blocks until all 'goto SHX_LABEL_28' can see it
        ::SHX_LABEL_28::
        SHX1_2 = SHX2_1
        if SHX1_2 then
          SHX1_2 = CMG
          SHX1_2 = SHX1_2.getPlayerVehicle
          SHX1_2 = SHX1_2()
          if 0 == SHX1_2 then
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.getPlayerId
            SHX1_2 = SHX1_2()
            SHX2_2 = IsPlayerFreeAiming
            SHX3_2 = SHX1_2
            SHX2_2 = SHX2_2(SHX3_2)
            if SHX2_2 then
              SHX2_2 = GetEntityPlayerIsFreeAimingAt
              SHX3_2 = SHX1_2
              SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
              SHX4_2 = GetVehiclePedIsIn
              SHX5_2 = SHX3_2
              SHX6_2 = false
              SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
              if 0 ~= SHX4_2 then
                SHX5_2 = GetPedInVehicleSeat
                SHX6_2 = SHX4_2
                SHX7_2 = -1
                SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
                if SHX5_2 == SHX3_2 then
                  SHX5_2 = IsPedInAnyPlane
                  SHX6_2 = SHX3_2
                  SHX5_2 = SHX5_2(SHX6_2)
                  if not SHX5_2 then
                    SHX5_2 = IsPedInAnyHeli
                    SHX6_2 = SHX3_2
                    SHX5_2 = SHX5_2(SHX6_2)
                    if not SHX5_2 then
                      SHX5_2 = SHX4_2
                      SHX6_2 = CMG
                      SHX6_2 = SHX6_2.getFlatLicensePlate
                      SHX7_2 = GetVehicleNumberPlateText
                      SHX8_2 = SHX5_2
                      SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX7_2(SHX8_2)
                      SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
                      if not SHX6_2 then
                        SHX6_2 = "N/A"
                      end
                      SHX4_1 = SHX6_2
                      SHX6_2 = GetLabelText
                      SHX7_2 = GetDisplayNameFromVehicleModel
                      SHX8_2 = GetEntityModel
                      SHX9_2 = SHX5_2
                      SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
                      SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
                      SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
                      if not SHX6_2 then
                        SHX6_2 = "N/A"
                      end
                      SHX5_1 = SHX6_2
                      SHX6_2 = SHX12_1
                      SHX7_2 = GetEntitySpeed
                      SHX8_2 = SHX4_2
                      SHX7_2 = SHX7_2(SHX8_2)
                      SHX7_2 = SHX7_2 * 2.236936
                      SHX8_2 = 1
                      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
                      SHX6_2 = SHX6_2 - 5
                      SHX6_1 = SHX6_2
                      SHX7_2 = SHX4_1
                      SHX6_2 = SHX9_1
                      SHX6_2 = SHX6_2[SHX7_2]
                      if nil ~= SHX6_2 then
                        SHX7_2 = SHX4_1
                        SHX6_2 = SHX9_1
                        SHX6_2 = SHX6_2[SHX7_2]
                        SHX7_2 = SHX13_1
                        if not SHX7_2 then
                          SHX7_2 = PlaySoundFrontend
                          SHX8_2 = -1
                          SHX9_2 = "BEEP_GREEN"
                          SHX10_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
                          SHX11_2 = true
                          SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
                        end
                        SHX7_2 = tCMG
                        SHX7_2 = SHX7_2.notify
                        SHX8_2 = string
                        SHX8_2 = SHX8_2.format
                        SHX9_2 = "~h~~r~Vehicle Flagged:~s~~n~Plate %s is flagged for:~n~%s"
                        SHX10_2 = SHX4_1
                        SHX11_2 = SHX6_2
                        SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
                        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
                        SHX7_2 = true
                        SHX13_1 = SHX7_2
                        SHX7_2 = SetTimeout
                        SHX8_2 = 10000
                        function SHX9_2()
                          -- [AI CLEANUP] Decompiled Lua - Fix these:
                          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                          -- 3. Replace goto/label with while/repeat-until where possible
                          -- 4. Remove decompiler comments, add meaningful ones
                          -- 5. Fix indentation and formatting
                          
                          local SHX0_3, SHX1_3
                          SHX0_3 = false
                          SHX13_1 = SHX0_3
                        end
                        SHX7_2(SHX8_2, SHX9_2)
                      end
                      SHX6_2 = SHX6_1
                      SHX7_2 = SHX3_1
                      if SHX6_2 > SHX7_2 then
                        SHX6_2 = SHX6_1
                        if SHX6_2 > 101 then
                          SHX6_2 = "~r~"
                          SHX7_1 = SHX6_2
                          SHX6_2 = SHX8_1
                          SHX6_2 = SHX6_2[SHX5_2]
                          if not SHX6_2 then
                            SHX6_2 = SHX8_1
                            SHX6_2[SHX5_2] = true
                            SHX6_2 = SetTimeout
                            SHX7_2 = 30000
                            function SHX8_2()
                              -- [AI CLEANUP] Decompiled Lua - Fix these:
                              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                              -- 3. Replace goto/label with while/repeat-until where possible
                              -- 4. Remove decompiler comments, add meaningful ones
                              -- 5. Fix indentation and formatting
                              
                              local SHX0_3, SHX1_3
                              SHX0_3 = SHX5_2
                              SHX1_3 = SHX8_1
                              SHX1_3[SHX0_3] = nil
                            end
                            SHX6_2(SHX7_2, SHX8_2)
                            SHX6_2 = TriggerServerEvent
                            SHX7_2 = "360cdf53ab"
                            SHX8_2 = GetPlayerServerId
                            SHX9_2 = NetworkGetPlayerIndexFromPed
                            SHX10_2 = SHX3_2
                            SHX9_2, SHX10_2, SHX11_2 = SHX9_2(SHX10_2)
                            SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
                            SHX9_2 = SHX6_1
                            SHX10_2 = SHX3_1
                            SHX9_2 = SHX9_2 - SHX10_2
                            SHX6_2(SHX7_2, SHX8_2, SHX9_2)
                            SHX6_2 = Citizen
                            SHX6_2 = SHX6_2.Wait
                            SHX7_2 = 3000
                            SHX6_2(SHX7_2)
                          else
                            SHX6_2 = tCMG
                            SHX6_2 = SHX6_2.notify
                            SHX7_2 = "~r~This vehicle has been fined recently!"
                            SHX6_2(SHX7_2)
                          end
                      end
                      else
                        SHX6_2 = "~w~"
                        SHX7_1 = SHX6_2
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
    SHX0_2 = Wait
    SHX1_2 = 50
    SHX0_2(SHX1_2)
  end
end
SHX14_1(SHX15_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "afdc0dfb3a"
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = PlaySoundFrontend
  SHX1_2 = -1
  SHX2_2 = "ScreenFlash"
  SHX3_2 = "MissionFailedSounds"
  SHX4_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = AnimpostfxPlay
  SHX1_2 = "FocusOut"
  SHX2_2 = 0
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = Wait
  SHX1_2 = 2000
  SHX0_2(SHX1_2)
  SHX0_2 = AnimpostfxStop
  SHX1_2 = "FocusOut"
  SHX0_2(SHX1_2)
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = AddEventHandler
SHX15_1 = "42d0ce93ae"
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX9_1 = SHX0_2
end
SHX14_1(SHX15_1, SHX16_1)
function SHX14_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX10_1
  SHX2_2 = SHX2_2[SHX0_2]
  if not SHX2_2 then
    SHX2_2 = SHX10_1
    SHX3_2 = {}
    SHX2_2[SHX0_2] = SHX3_2
  end
  SHX2_2 = AddBlipForCoord
  SHX3_2 = SHX1_2.x
  SHX4_2 = SHX1_2.y
  SHX5_2 = SHX1_2.z
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = SetBlipSprite
  SHX4_2 = SHX2_2
  SHX5_2 = 419
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetBlipColour
  SHX4_2 = SHX2_2
  SHX5_2 = 3
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetBlipScale
  SHX4_2 = SHX2_2
  SHX5_2 = 2.0
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = table
  SHX3_2 = SHX3_2.insert
  SHX4_2 = SHX10_1
  SHX4_2 = SHX4_2[SHX0_2]
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
end
SHX15_1 = RegisterNetEvent
SHX16_1 = "61c3394e09"
SHX17_1 = SHX14_1
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "e6db29c00c"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = pairs
    SHX8_2 = SHX6_2
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      SHX13_2 = SHX14_1
      SHX14_2 = SHX5_2
      SHX15_2 = SHX12_2
      SHX13_2(SHX14_2, SHX15_2)
    end
  end
end
SHX15_1(SHX16_1, SHX17_1)
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = SHX10_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    return
  end
  SHX2_2 = pairs
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = RemoveBlip
    SHX9_2 = SHX7_2
    SHX8_2(SHX9_2)
  end
  SHX2_2 = SHX10_1
  SHX2_2[SHX0_2] = nil
end
SHX16_1 = RegisterNetEvent
SHX17_1 = "e59660d1d1"
SHX18_1 = SHX15_1
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "a25b88c6cc"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = pairs
  SHX1_2 = SHX10_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = SHX15_1
    SHX6_2 = SHX4_2
    SHX5_2(SHX6_2)
  end
end
SHX16_1(SHX17_1, SHX18_1)
