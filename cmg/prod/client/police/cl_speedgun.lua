--[[
    Beginner Guide: cl_speedgun.lua
    ===============================

    This file came from decompiled Lua. It has been cleaned so the
    temporary SHX names are replaced with role-based names. Where the
    exact server-side meaning cannot be proven from this client file,
    neutral names such as stateValue/workValue are used instead of
    inventing a misleading meaning.

    Compatibility:
      * Event/hash strings and public framework calls are unchanged.
      * This pass intentionally avoids guessing unknown server meanings.
]]
--[[
    BEGINNER GUIDE — Speedgun
    =========================

    File: cmg/prod/client/police/cl_speedgun.lua
    Purpose: This file contains police gameplay.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Decompiled-code note:
      This file came from decompiled Lua. The repeated AI-cleanup boilerplate
      has been removed. Any remaining SHX-style values are compiler/decompiler
      temporaries whose meaning changes repeatedly; follow the surrounding API
      call and the comments rather than treating one SHX variable as one concept.

    Commands/command-like entries found:
      * /setspeed
      * setspeed

    Network/hash identifiers found: 7
      They are intentionally left unchanged because matching server code may use them.
      * 360cdf53ab
      * afdc0dfb3a
      * 42d0ce93ae
      * 61c3394e09
      * e6db29c00c
      * e59660d1d1
      * a25b88c6cc

    Named framework/network events found:
      * chat:addSuggestion

    Example player-facing text in this file:
      * ~h~~r~Vehicle Flagged:~s~~n~Plate %s is flagged for:~n~%s
      * MissionFailedSounds

]]
local numberValue, numberValue5, flag4, numberValue6, textValue3, textValue4, numberValue7, textValue6, dataTable2, dataTable3, dataTable, localEventCall, cmgCall, flag2, flag3, eventRegistration, eventRegistration2, textValue, workValue4
numberValue = 1953687840
numberValue5 = -2076048660
flag4 = false
numberValue6 = 101
textValue3 = "N/A"
textValue4 = "N/A"
numberValue7 = 0.0
textValue6 = ""
dataTable2 = {}
dataTable3 = {}
dataTable = {}
localEventCall = TriggerEvent
cmgCall = "chat:addSuggestion"
flag2 = "/setspeed"
flag3 = "Sets speed gun capture speed"
eventRegistration = {}
eventRegistration2 = {}
eventRegistration2.name = "Speed"
eventRegistration2.help = "minimum 101"
eventRegistration[1] = eventRegistration2
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
localEventCall(cmgCall, flag2, flag3, eventRegistration)
localEventCall = RegisterCommand
cmgCall = "setspeed"
-- Beginner: this function is the command handler for "setspeed".
function flag2(arg1, arg2)
  local cmgCall2, textValue2, stringHelper, textValue5, numberValue8, textValue7
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.hasClientPermission
  textValue2 = "police.onduty.permission"
  cmgCall2 = cmgCall2(textValue2)
  if cmgCall2 then
    cmgCall2 = arg2[1]
    if cmgCall2 then
      textValue2 = tonumber
      stringHelper = cmgCall2
      textValue2 = textValue2(stringHelper)
      if textValue2 and cmgCall2 <= 101 then
        textValue2 = tonumber
        stringHelper = cmgCall2
        textValue2 = textValue2(stringHelper)
        if not textValue2 then
          textValue2 = 101
        end
        numberValue6 = textValue2
        textValue2 = tCMG
        textValue2 = textValue2.notify
        stringHelper = string
        stringHelper = stringHelper.format
        textValue5 = "~g~Maximum speed set to %smph"
        numberValue8 = tonumber
        textValue7 = arg2[1]
        numberValue8, textValue7 = numberValue8(textValue7)
        stringHelper, textValue5, numberValue8, textValue7 = stringHelper(textValue5, numberValue8, textValue7)
        -- Beginner: Show a notification to the player.
        textValue2(stringHelper, textValue5, numberValue8, textValue7)
    end
    else
      textValue2 = tCMG
      textValue2 = textValue2.notify
      stringHelper = "~r~Minimum speed you can set is 101mph!"
      textValue2(stringHelper)
    end
  else
    cmgCall2 = tCMG
    cmgCall2 = cmgCall2.notify
    textValue2 = "~r~Speed gun is not enabled!"
    -- Beginner: Show a notification to the player.
    cmgCall2(textValue2)
  end
end
flag3 = false
-- Beginner: Register a chat/console command. Event/command: "setspeed".
localEventCall(cmgCall, flag2, flag3)
function localEventCall()
  local arg1, arg2, cmgCall2, textValue2, stringHelper, textValue5, numberValue8, textValue7, numberValue9, textValue8, numberValue2, numberValue3, numberValue4
  arg1 = flag4
  if arg1 then
    arg1 = CMG
    arg1 = arg1.isUsingDelGun
    arg1 = arg1()
    if not arg1 then
      arg1 = DisableControlAction
      arg2 = 1
      cmgCall2 = 18
      textValue2 = true
      arg1(arg2, cmgCall2, textValue2)
      arg1 = DisablePlayerFiring
      arg2 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      arg2 = arg2()
      cmgCall2 = true
      arg1(arg2, cmgCall2)
      arg1 = DrawRect
      arg2 = 0.5
      cmgCall2 = 0.91
      textValue2 = 0.13
      stringHelper = 0.125
      textValue5 = 0
      numberValue8 = 0
      textValue7 = 0
      numberValue9 = 128
      arg1(arg2, cmgCall2, textValue2, stringHelper, textValue5, numberValue8, textValue7, numberValue9)
      arg1 = DrawAdvancedText
      arg2 = 0.5
      cmgCall2 = 0.68
      textValue2 = 0.1
      stringHelper = 0.2
      textValue5 = 0.4
      numberValue8 = textValue6
      textValue7 = "PLATE:  "
      numberValue9 = textValue3
      numberValue8 = numberValue8 .. textValue7 .. numberValue9
      textValue7 = 255
      numberValue9 = 255
      textValue8 = 255
      numberValue2 = 255
      numberValue3 = 4
      numberValue4 = 0
      arg1(arg2, cmgCall2, textValue2, stringHelper, textValue5, numberValue8, textValue7, numberValue9, textValue8, numberValue2, numberValue3, numberValue4)
      arg1 = DrawAdvancedText
      arg2 = 0.5
      cmgCall2 = 0.715
      textValue2 = 0.1
      stringHelper = 0.2
      textValue5 = 0.4
      numberValue8 = textValue6
      textValue7 = "SPEED:  "
      numberValue9 = numberValue7
      textValue8 = " MPH"
      numberValue8 = numberValue8 .. textValue7 .. numberValue9 .. textValue8
      textValue7 = 255
      numberValue9 = 255
      textValue8 = 255
      numberValue2 = 255
      numberValue3 = 4
      numberValue4 = 0
      arg1(arg2, cmgCall2, textValue2, stringHelper, textValue5, numberValue8, textValue7, numberValue9, textValue8, numberValue2, numberValue3, numberValue4)
      arg1 = DrawAdvancedText
      arg2 = 0.5
      cmgCall2 = 0.75
      textValue2 = 0.1
      stringHelper = 0.2
      textValue5 = 0.4
      numberValue8 = textValue6
      textValue7 = "MODEL:  "
      numberValue9 = textValue4
      numberValue8 = numberValue8 .. textValue7 .. numberValue9
      textValue7 = 255
      numberValue9 = 255
      textValue8 = 255
      numberValue2 = 255
      numberValue3 = 4
      numberValue4 = 0
      arg1(arg2, cmgCall2, textValue2, stringHelper, textValue5, numberValue8, textValue7, numberValue9, textValue8, numberValue2, numberValue3, numberValue4)
    end
  end
end
cmgCall = CMG
cmgCall = cmgCall.createThreadOnTick
flag2 = localEventCall
flag3 = "Speedgun Radar UI"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall(flag2, flag3)
function cmgCall(arg1, arg2)
  local cmgCall2, textValue2, stringHelper
  cmgCall2 = arg2 or nil
  if not arg2 then
    cmgCall2 = 0
  end
  textValue2 = 10
  cmgCall2 = textValue2 ^ cmgCall2
  textValue2 = math
  textValue2 = textValue2.floor
  stringHelper = 0.5 * cmgCall2
  stringHelper = arg1 + stringHelper
  return textValue2(stringHelper)
end
flag2 = false
flag3 = Citizen
flag3 = flag3.CreateThread
function eventRegistration()
  local arg1, arg2, cmgCall2, textValue2, stringHelper, textValue5, numberValue8, textValue7, numberValue9, textValue8, numberValue2, numberValue3
  while true do
    arg1 = CMG
    arg1 = arg1.hasClientPermission
    arg2 = "police.onduty.permission"
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = CMG
      arg1 = arg1.isUsingDelGun
      arg1 = arg1()
      if not arg1 then
        arg1 = GetSelectedPedWeapon
        arg2 = CMG
        arg2 = arg2.getPlayerPed
        arg2, cmgCall2, textValue2, stringHelper, textValue5, numberValue8, textValue7, numberValue9, textValue8, numberValue2, numberValue3 = arg2()
        -- Beginner: result below is weaponHash.
        arg1 = arg1(arg2, cmgCall2, textValue2, stringHelper, textValue5, numberValue8, textValue7, numberValue9, textValue8, numberValue2, numberValue3)
        arg2 = numberValue
        if arg1 ~= arg2 then
          arg2 = numberValue5
          if arg1 ~= arg2 then
            goto flow_label_26
          end
        end
        arg2 = true
        flag4 = arg2
        goto flow_label_28
        ::flow_label_26::
        arg2 = false
        flag4 = arg2
        ::flow_label_28::
        arg2 = flag4
        if arg2 then
          arg2 = CMG
          arg2 = arg2.getPlayerVehicle
          -- Beginner: result below is currentVehicle.
          arg2 = arg2()
          if 0 == arg2 then
            arg2 = CMG
            arg2 = arg2.getPlayerId
            -- Beginner: result below is localPlayerIndex.
            arg2 = arg2()
            cmgCall2 = IsPlayerFreeAiming
            textValue2 = arg2
            cmgCall2 = cmgCall2(textValue2)
            if cmgCall2 then
              cmgCall2 = GetEntityPlayerIsFreeAimingAt
              textValue2 = arg2
              cmgCall2, textValue2 = cmgCall2(textValue2)
              stringHelper = GetVehiclePedIsIn
              textValue5 = textValue2
              numberValue8 = false
              -- Beginner: result below is currentVehicle.
              stringHelper = stringHelper(textValue5, numberValue8)
              if 0 ~= stringHelper then
                textValue5 = GetPedInVehicleSeat
                numberValue8 = stringHelper
                textValue7 = -1
                textValue5 = textValue5(numberValue8, textValue7)
                if textValue5 == textValue2 then
                  textValue5 = IsPedInAnyPlane
                  numberValue8 = textValue2
                  textValue5 = textValue5(numberValue8)
                  if not textValue5 then
                    textValue5 = IsPedInAnyHeli
                    numberValue8 = textValue2
                    textValue5 = textValue5(numberValue8)
                    if not textValue5 then
                      textValue5 = stringHelper
                      numberValue8 = CMG
                      numberValue8 = numberValue8.getFlatLicensePlate
                      textValue7 = GetVehicleNumberPlateText
                      numberValue9 = textValue5
                      textValue7, numberValue9, textValue8, numberValue2, numberValue3 = textValue7(numberValue9)
                      numberValue8 = numberValue8(textValue7, numberValue9, textValue8, numberValue2, numberValue3)
                      if not numberValue8 then
                        numberValue8 = "N/A"
                      end
                      textValue3 = numberValue8
                      numberValue8 = GetLabelText
                      textValue7 = GetDisplayNameFromVehicleModel
                      numberValue9 = GetEntityModel
                      textValue8 = textValue5
                      numberValue9, textValue8, numberValue2, numberValue3 = numberValue9(textValue8)
                      textValue7, numberValue9, textValue8, numberValue2, numberValue3 = textValue7(numberValue9, textValue8, numberValue2, numberValue3)
                      numberValue8 = numberValue8(textValue7, numberValue9, textValue8, numberValue2, numberValue3)
                      if not numberValue8 then
                        numberValue8 = "N/A"
                      end
                      textValue4 = numberValue8
                      numberValue8 = cmgCall
                      textValue7 = GetEntitySpeed
                      numberValue9 = stringHelper
                      -- Beginner: result below is speed.
                      textValue7 = textValue7(numberValue9)
                      textValue7 = textValue7 * 2.236936
                      numberValue9 = 1
                      numberValue8 = numberValue8(textValue7, numberValue9)
                      numberValue8 = numberValue8 - 5
                      numberValue7 = numberValue8
                      textValue7 = textValue3
                      numberValue8 = dataTable3
                      numberValue8 = numberValue8[textValue7]
                      if nil ~= numberValue8 then
                        textValue7 = textValue3
                        numberValue8 = dataTable3
                        numberValue8 = numberValue8[textValue7]
                        textValue7 = flag2
                        if not textValue7 then
                          textValue7 = PlaySoundFrontend
                          numberValue9 = -1
                          textValue8 = "BEEP_GREEN"
                          numberValue2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
                          numberValue3 = true
                          textValue7(numberValue9, textValue8, numberValue2, numberValue3)
                        end
                        textValue7 = tCMG
                        textValue7 = textValue7.notify
                        numberValue9 = string
                        numberValue9 = numberValue9.format
                        textValue8 = "~h~~r~Vehicle Flagged:~s~~n~Plate %s is flagged for:~n~%s"
                        numberValue2 = textValue3
                        numberValue3 = numberValue8
                        numberValue9, textValue8, numberValue2, numberValue3 = numberValue9(textValue8, numberValue2, numberValue3)
                        -- Beginner: Show a notification to the player.
                        textValue7(numberValue9, textValue8, numberValue2, numberValue3)
                        textValue7 = true
                        flag2 = textValue7
                        textValue7 = SetTimeout
                        numberValue9 = 10000
                        function textValue8()
                          local flag, workValue5
                          flag = false
                          flag2 = flag
                        end
                        textValue7(numberValue9, textValue8)
                      end
                      numberValue8 = numberValue7
                      textValue7 = numberValue6
                      if numberValue8 > textValue7 then
                        numberValue8 = numberValue7
                        if numberValue8 > 101 then
                          numberValue8 = "~r~"
                          textValue6 = numberValue8
                          numberValue8 = dataTable2
                          numberValue8 = numberValue8[textValue5]
                          if not numberValue8 then
                            numberValue8 = dataTable2
                            numberValue8[textValue5] = true
                            numberValue8 = SetTimeout
                            textValue7 = 30000
                            function numberValue9()
                              local flag, workValue5
                              flag = textValue5
                              workValue5 = dataTable2
                              workValue5[flag] = nil
                            end
                            numberValue8(textValue7, numberValue9)
                            numberValue8 = TriggerServerEvent
                            textValue7 = "360cdf53ab"
                            numberValue9 = GetPlayerServerId
                            textValue8 = NetworkGetPlayerIndexFromPed
                            numberValue2 = textValue2
                            textValue8, numberValue2, numberValue3 = textValue8(numberValue2)
                            -- Beginner: result below is serverId.
                            numberValue9 = numberValue9(textValue8, numberValue2, numberValue3)
                            textValue8 = numberValue7
                            numberValue2 = numberValue6
                            textValue8 = textValue8 - numberValue2
                            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "360cdf53ab".
                            numberValue8(textValue7, numberValue9, textValue8)
                            numberValue8 = Citizen
                            numberValue8 = numberValue8.Wait
                            textValue7 = 3000
                            numberValue8(textValue7)
                          else
                            numberValue8 = tCMG
                            numberValue8 = numberValue8.notify
                            textValue7 = "~r~This vehicle has been fined recently!"
                            -- Beginner: Show a notification to the player.
                            numberValue8(textValue7)
                          end
                      end
                      else
                        numberValue8 = "~w~"
                        textValue6 = numberValue8
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
    arg1 = Wait
    arg2 = 50
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
flag3(eventRegistration)
flag3 = RegisterNetEvent
eventRegistration = "afdc0dfb3a"
-- Beginner: this function handles network event "afdc0dfb3a".
function eventRegistration2()
  local arg1, arg2, cmgCall2, textValue2, stringHelper
  arg1 = PlaySoundFrontend
  arg2 = -1
  cmgCall2 = "ScreenFlash"
  textValue2 = "MissionFailedSounds"
  stringHelper = true
  arg1(arg2, cmgCall2, textValue2, stringHelper)
  arg1 = AnimpostfxPlay
  arg2 = "FocusOut"
  cmgCall2 = 0
  textValue2 = false
  arg1(arg2, cmgCall2, textValue2)
  arg1 = Wait
  arg2 = 2000
  arg1(arg2)
  arg1 = AnimpostfxStop
  arg2 = "FocusOut"
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "afdc0dfb3a".
flag3(eventRegistration, eventRegistration2)
flag3 = AddEventHandler
eventRegistration = "42d0ce93ae"
-- Beginner: this function runs when client event "42d0ce93ae" fires.
function eventRegistration2(arg1)
  local arg2
  dataTable3 = arg1
end
-- Beginner: Register a client-side event handler. Event/command: "42d0ce93ae".
flag3(eventRegistration, eventRegistration2)
-- Beginner: this function runs when client event "42d0ce93ae" fires.
function flag3(arg1, arg2)
  local cmgCall2, textValue2, stringHelper, textValue5
  cmgCall2 = dataTable
  cmgCall2 = cmgCall2[arg1]
  if not cmgCall2 then
    cmgCall2 = dataTable
    textValue2 = {}
    cmgCall2[arg1] = textValue2
  end
  cmgCall2 = AddBlipForCoord
  textValue2 = arg2.x
  stringHelper = arg2.y
  textValue5 = arg2.z
  -- Beginner: result below is blipHandle.
  cmgCall2 = cmgCall2(textValue2, stringHelper, textValue5)
  textValue2 = SetBlipSprite
  stringHelper = cmgCall2
  textValue5 = 419
  textValue2(stringHelper, textValue5)
  textValue2 = SetBlipColour
  stringHelper = cmgCall2
  textValue5 = 3
  textValue2(stringHelper, textValue5)
  textValue2 = SetBlipScale
  stringHelper = cmgCall2
  textValue5 = 2.0
  textValue2(stringHelper, textValue5)
  textValue2 = table
  textValue2 = textValue2.insert
  stringHelper = dataTable
  stringHelper = stringHelper[arg1]
  textValue5 = cmgCall2
  textValue2(stringHelper, textValue5)
end
eventRegistration = RegisterNetEvent
eventRegistration2 = "61c3394e09"
textValue = flag3
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "61c3394e09".
eventRegistration(eventRegistration2, textValue)
eventRegistration = RegisterNetEvent
eventRegistration2 = "e6db29c00c"
-- Beginner: this function handles network event "e6db29c00c".
function textValue(arg1)
  local arg2, cmgCall2, textValue2, stringHelper, textValue5, numberValue8, textValue7, numberValue9, textValue8, numberValue2, numberValue3, numberValue4, workValue, workValue2, workValue3
  arg2 = pairs
  cmgCall2 = arg1
  arg2, cmgCall2, textValue2, stringHelper = arg2(cmgCall2)
  for textValue5, numberValue8 in arg2, cmgCall2, textValue2, stringHelper do
    textValue7 = pairs
    numberValue9 = numberValue8
    textValue7, numberValue9, textValue8, numberValue2 = textValue7(numberValue9)
    for numberValue3, numberValue4 in textValue7, numberValue9, textValue8, numberValue2 do
      workValue = flag3
      workValue2 = textValue5
      workValue3 = numberValue4
      -- Beginner: Register a client-side event handler.
      workValue(workValue2, workValue3)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e6db29c00c".
eventRegistration(eventRegistration2, textValue)
function eventRegistration(arg1)
  local arg2, cmgCall2, textValue2, stringHelper, textValue5, numberValue8, textValue7, numberValue9, textValue8
  arg2 = dataTable
  arg2 = arg2[arg1]
  if not arg2 then
    return
  end
  cmgCall2 = pairs
  textValue2 = arg2
  cmgCall2, textValue2, stringHelper, textValue5 = cmgCall2(textValue2)
  for numberValue8, textValue7 in cmgCall2, textValue2, stringHelper, textValue5 do
    numberValue9 = RemoveBlip
    textValue8 = textValue7
    numberValue9(textValue8)
  end
  cmgCall2 = dataTable
  cmgCall2[arg1] = nil
end
eventRegistration2 = RegisterNetEvent
textValue = "e59660d1d1"
workValue4 = eventRegistration
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e59660d1d1".
eventRegistration2(textValue, workValue4)
eventRegistration2 = RegisterNetEvent
textValue = "a25b88c6cc"
-- Beginner: this function handles network event "a25b88c6cc".
function workValue4()
  local arg1, arg2, cmgCall2, textValue2, stringHelper, textValue5, numberValue8
  arg1 = pairs
  arg2 = dataTable
  arg1, arg2, cmgCall2, textValue2 = arg1(arg2)
  for stringHelper in arg1, arg2, cmgCall2, textValue2 do
    textValue5 = eventRegistration
    numberValue8 = stringHelper
    textValue5(numberValue8)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a25b88c6cc".
eventRegistration2(textValue, workValue4)