--[[
    LEVEL 1 BEGINNER GUIDE — Speedgun
    ======================================

    File: cmg/prod/client/police/cl_speedgun.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Speedgun feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 12
      * Background threads: 0
      * Always-running loops: 1
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: none found by static scan

    Read it in this order:
      1. Top-level config/state variables.
      2. Helper functions (small reusable pieces of logic).
      3. Commands/events/UI callbacks (what starts the logic).
      4. Threads/loops last (what keeps checking in the background).

    IMPORTANT — decompiler temporary names have been normalized for readability.
      Names like workingValue12, text4, dataCollection7, stateFlag3, cmgOperation2,
      localValue1/localValue2, or flow_label_* are NOT meaningful original developer names.
      A decompiler invented them while rebuilding source code.

      For a beginner, read the API call on the right-hand side first.
      Example:
        workingValue = GetEntityCoords
        dataCollection2 = workingValue(playerPed)
      means roughly:
        local playerCoords = GetEntityCoords(playerPed)

      Temporary variables use conservative plain-English fallback names.
      Decompiled code can reuse one temporary for several purposes, so API calls
      and nearby comments explain the exact role at each point.

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
local number, number5, stateFlag4, number6, text3, text4, number7, text6, dataCollection2, dataCollection3, dataCollection, localEventCall, cmgOperation, stateFlag2, stateFlag3, eventHandler, eventHandler2, text, workingValue4
number = 1953687840
number5 = -2076048660
stateFlag4 = false
number6 = 101
text3 = "N/A"
text4 = "N/A"
number7 = 0.0
text6 = ""
dataCollection2 = {}
dataCollection3 = {}
dataCollection = {}
localEventCall = TriggerEvent
cmgOperation = "chat:addSuggestion"
stateFlag2 = "/setspeed"
stateFlag3 = "Sets speed gun capture speed"
eventHandler = {}
eventHandler2 = {}
eventHandler2.name = "Speed"
eventHandler2.help = "minimum 101"
eventHandler[1] = eventHandler2
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
localEventCall(cmgOperation, stateFlag2, stateFlag3, eventHandler)
localEventCall = RegisterCommand
cmgOperation = "setspeed"
-- Beginner: this function is the command handler for "setspeed".

-- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: localValue1, localValue2) ===
function stateFlag2(localValue1, localValue2)
  local cmgOperation2, text2, stringHelper, text5, number8, text7
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.hasClientPermission
  text2 = "police.onduty.permission"
  cmgOperation2 = cmgOperation2(text2)
  if cmgOperation2 then
    cmgOperation2 = localValue2[1]
    if cmgOperation2 then
      text2 = tonumber
      stringHelper = cmgOperation2
      text2 = text2(stringHelper)
      if text2 and cmgOperation2 <= 101 then
        text2 = tonumber
        stringHelper = cmgOperation2
        text2 = text2(stringHelper)
        if not text2 then
          text2 = 101
        end
        number6 = text2
        text2 = tCMG
        text2 = text2.notify
        stringHelper = string
        stringHelper = stringHelper.format
        text5 = "~g~Maximum speed set to %smph"
        number8 = tonumber
        text7 = localValue2[1]
        number8, text7 = number8(text7)
        stringHelper, text5, number8, text7 = stringHelper(text5, number8, text7)
        -- Beginner: Show a notification to the player.
        text2(stringHelper, text5, number8, text7)
    end
    else
      text2 = tCMG
      text2 = text2.notify
      stringHelper = "~r~Minimum speed you can set is 101mph!"
      text2(stringHelper)
    end
  else
    cmgOperation2 = tCMG
    cmgOperation2 = cmgOperation2.notify
    text2 = "~r~Speed gun is not enabled!"
    -- Beginner: Show a notification to the player.
    cmgOperation2(text2)
  end
end
stateFlag3 = false
-- Beginner: Register a chat/console command. Event/command: "setspeed".
localEventCall(cmgOperation, stateFlag2, stateFlag3)

-- === HELPER FUNCTION: localEventCall() ===
function localEventCall()
  local localValue1, localValue2, cmgOperation2, text2, stringHelper, text5, number8, text7, number9, text8, number2, number3, number4
  localValue1 = stateFlag4
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.isUsingDelGun
    localValue1 = localValue1()
    if not localValue1 then
      localValue1 = DisableControlAction
      localValue2 = 1
      cmgOperation2 = 18
      text2 = true
      localValue1(localValue2, cmgOperation2, text2)
      localValue1 = DisablePlayerFiring
      localValue2 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      localValue2 = localValue2()
      cmgOperation2 = true
      localValue1(localValue2, cmgOperation2)
      localValue1 = DrawRect
      localValue2 = 0.5
      cmgOperation2 = 0.91
      text2 = 0.13
      stringHelper = 0.125
      text5 = 0
      number8 = 0
      text7 = 0
      number9 = 128
      localValue1(localValue2, cmgOperation2, text2, stringHelper, text5, number8, text7, number9)
      localValue1 = DrawAdvancedText
      localValue2 = 0.5
      cmgOperation2 = 0.68
      text2 = 0.1
      stringHelper = 0.2
      text5 = 0.4
      number8 = text6
      text7 = "PLATE:  "
      number9 = text3
      number8 = number8 .. text7 .. number9
      text7 = 255
      number9 = 255
      text8 = 255
      number2 = 255
      number3 = 4
      number4 = 0
      localValue1(localValue2, cmgOperation2, text2, stringHelper, text5, number8, text7, number9, text8, number2, number3, number4)
      localValue1 = DrawAdvancedText
      localValue2 = 0.5
      cmgOperation2 = 0.715
      text2 = 0.1
      stringHelper = 0.2
      text5 = 0.4
      number8 = text6
      text7 = "SPEED:  "
      number9 = number7
      text8 = " MPH"
      number8 = number8 .. text7 .. number9 .. text8
      text7 = 255
      number9 = 255
      text8 = 255
      number2 = 255
      number3 = 4
      number4 = 0
      localValue1(localValue2, cmgOperation2, text2, stringHelper, text5, number8, text7, number9, text8, number2, number3, number4)
      localValue1 = DrawAdvancedText
      localValue2 = 0.5
      cmgOperation2 = 0.75
      text2 = 0.1
      stringHelper = 0.2
      text5 = 0.4
      number8 = text6
      text7 = "MODEL:  "
      number9 = text4
      number8 = number8 .. text7 .. number9
      text7 = 255
      number9 = 255
      text8 = 255
      number2 = 255
      number3 = 4
      number4 = 0
      localValue1(localValue2, cmgOperation2, text2, stringHelper, text5, number8, text7, number9, text8, number2, number3, number4)
    end
  end
end
cmgOperation = CMG
cmgOperation = cmgOperation.createThreadOnTick
stateFlag2 = localEventCall
stateFlag3 = "Speedgun Radar UI"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation(stateFlag2, stateFlag3)

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: localValue1, localValue2) ===
function cmgOperation(localValue1, localValue2)
  local cmgOperation2, text2, stringHelper
  cmgOperation2 = localValue2 or nil
  if not localValue2 then
    cmgOperation2 = 0
  end
  text2 = 10
  cmgOperation2 = text2 ^ cmgOperation2
  text2 = math
  text2 = text2.floor
  stringHelper = 0.5 * cmgOperation2
  stringHelper = localValue1 + stringHelper
  return text2(stringHelper)
end
stateFlag2 = false
stateFlag3 = Citizen
stateFlag3 = stateFlag3.CreateThread

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, cmgOperation2, text2, stringHelper, text5, number8, text7, number9, text8, number2, number3
  while true do
    localValue1 = CMG
    localValue1 = localValue1.hasClientPermission
    localValue2 = "police.onduty.permission"
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.isUsingDelGun
      localValue1 = localValue1()
      if not localValue1 then
        localValue1 = GetSelectedPedWeapon
        localValue2 = CMG
        localValue2 = localValue2.getPlayerPed
        localValue2, cmgOperation2, text2, stringHelper, text5, number8, text7, number9, text8, number2, number3 = localValue2()
        -- Beginner: result below is weaponHash.
        localValue1 = localValue1(localValue2, cmgOperation2, text2, stringHelper, text5, number8, text7, number9, text8, number2, number3)
        localValue2 = number
        if localValue1 ~= localValue2 then
          localValue2 = number5
          if localValue1 ~= localValue2 then
            goto continueAtStep26
          end
        end
        localValue2 = true
        stateFlag4 = localValue2
        goto continueAtStep28
        ::continueAtStep26::
        localValue2 = false
        stateFlag4 = localValue2
        ::continueAtStep28::
        localValue2 = stateFlag4
        if localValue2 then
          localValue2 = CMG
          localValue2 = localValue2.getPlayerVehicle
          -- Beginner: result below is currentVehicle.
          localValue2 = localValue2()
          if 0 == localValue2 then
            localValue2 = CMG
            localValue2 = localValue2.getPlayerId
            -- Beginner: result below is localPlayerIndex.
            localValue2 = localValue2()
            cmgOperation2 = IsPlayerFreeAiming
            text2 = localValue2
            cmgOperation2 = cmgOperation2(text2)
            if cmgOperation2 then
              cmgOperation2 = GetEntityPlayerIsFreeAimingAt
              text2 = localValue2
              cmgOperation2, text2 = cmgOperation2(text2)
              stringHelper = GetVehiclePedIsIn
              text5 = text2
              number8 = false
              -- Beginner: result below is currentVehicle.
              stringHelper = stringHelper(text5, number8)
              if 0 ~= stringHelper then
                text5 = GetPedInVehicleSeat
                number8 = stringHelper
                text7 = -1
                text5 = text5(number8, text7)
                if text5 == text2 then
                  text5 = IsPedInAnyPlane
                  number8 = text2
                  text5 = text5(number8)
                  if not text5 then
                    text5 = IsPedInAnyHeli
                    number8 = text2
                    text5 = text5(number8)
                    if not text5 then
                      text5 = stringHelper
                      number8 = CMG
                      number8 = number8.getFlatLicensePlate
                      text7 = GetVehicleNumberPlateText
                      number9 = text5
                      text7, number9, text8, number2, number3 = text7(number9)
                      number8 = number8(text7, number9, text8, number2, number3)
                      if not number8 then
                        number8 = "N/A"
                      end
                      text3 = number8
                      number8 = GetLabelText
                      text7 = GetDisplayNameFromVehicleModel
                      number9 = GetEntityModel
                      text8 = text5
                      number9, text8, number2, number3 = number9(text8)
                      text7, number9, text8, number2, number3 = text7(number9, text8, number2, number3)
                      number8 = number8(text7, number9, text8, number2, number3)
                      if not number8 then
                        number8 = "N/A"
                      end
                      text4 = number8
                      number8 = cmgOperation
                      text7 = GetEntitySpeed
                      number9 = stringHelper
                      -- Beginner: result below is speed.
                      text7 = text7(number9)
                      text7 = text7 * 2.236936
                      number9 = 1
                      number8 = number8(text7, number9)
                      number8 = number8 - 5
                      number7 = number8
                      text7 = text3
                      number8 = dataCollection3
                      number8 = number8[text7]
                      if nil ~= number8 then
                        text7 = text3
                        number8 = dataCollection3
                        number8 = number8[text7]
                        text7 = stateFlag2
                        if not text7 then
                          text7 = PlaySoundFrontend
                          number9 = -1
                          text8 = "BEEP_GREEN"
                          number2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
                          number3 = true
                          text7(number9, text8, number2, number3)
                        end
                        text7 = tCMG
                        text7 = text7.notify
                        number9 = string
                        number9 = number9.format
                        text8 = "~h~~r~Vehicle Flagged:~s~~n~Plate %s is flagged for:~n~%s"
                        number2 = text3
                        number3 = number8
                        number9, text8, number2, number3 = number9(text8, number2, number3)
                        -- Beginner: Show a notification to the player.
                        text7(number9, text8, number2, number3)
                        text7 = true
                        stateFlag2 = text7
                        text7 = SetTimeout
                        number9 = 10000

                        -- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
                        function text8()
                          local stateFlag, workingValue5
                          stateFlag = false
                          stateFlag2 = stateFlag
                        end
                        text7(number9, text8)
                      end
                      number8 = number7
                      text7 = number6
                      if number8 > text7 then
                        number8 = number7
                        if number8 > 101 then
                          number8 = "~r~"
                          text6 = number8
                          number8 = dataCollection2
                          number8 = number8[text5]
                          if not number8 then
                            number8 = dataCollection2
                            number8[text5] = true
                            number8 = SetTimeout
                            text7 = 30000

                            -- === HELPER FUNCTION (decompiler name: number9; parameters: none) ===
                            function number9()
                              local stateFlag, workingValue5
                              stateFlag = text5
                              workingValue5 = dataCollection2
                              workingValue5[stateFlag] = nil
                            end
                            number8(text7, number9)
                            number8 = TriggerServerEvent
                            text7 = "360cdf53ab"
                            number9 = GetPlayerServerId
                            text8 = NetworkGetPlayerIndexFromPed
                            number2 = text2
                            text8, number2, number3 = text8(number2)
                            -- Beginner: result below is serverId.
                            number9 = number9(text8, number2, number3)
                            text8 = number7
                            number2 = number6
                            text8 = text8 - number2
                            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "360cdf53ab".
                            number8(text7, number9, text8)
                            number8 = Citizen
                            number8 = number8.Wait
                            text7 = 3000
                            number8(text7)
                          else
                            number8 = tCMG
                            number8 = number8.notify
                            text7 = "~r~This vehicle has been fined recently!"
                            -- Beginner: Show a notification to the player.
                            number8(text7)
                          end
                      end
                      else
                        number8 = "~w~"
                        text6 = number8
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
    localValue1 = Wait
    localValue2 = 50
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
stateFlag3(eventHandler)
stateFlag3 = RegisterNetEvent
eventHandler = "afdc0dfb3a"
-- Beginner: this function handles network event "afdc0dfb3a".

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: none) ===
function eventHandler2()
  local localValue1, localValue2, cmgOperation2, text2, stringHelper
  localValue1 = PlaySoundFrontend
  localValue2 = -1
  cmgOperation2 = "ScreenFlash"
  text2 = "MissionFailedSounds"
  stringHelper = true
  localValue1(localValue2, cmgOperation2, text2, stringHelper)
  localValue1 = AnimpostfxPlay
  localValue2 = "FocusOut"
  cmgOperation2 = 0
  text2 = false
  localValue1(localValue2, cmgOperation2, text2)
  localValue1 = Wait
  localValue2 = 2000
  localValue1(localValue2)
  localValue1 = AnimpostfxStop
  localValue2 = "FocusOut"
  localValue1(localValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "afdc0dfb3a".
stateFlag3(eventHandler, eventHandler2)
stateFlag3 = AddEventHandler
eventHandler = "42d0ce93ae"
-- Beginner: this function runs when client event "42d0ce93ae" fires.

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1) ===
function eventHandler2(localValue1)
  local localValue2
  dataCollection3 = localValue1
end
-- Beginner: Register a client-side event handler. Event/command: "42d0ce93ae".
stateFlag3(eventHandler, eventHandler2)
-- Beginner: this function runs when client event "42d0ce93ae" fires.

-- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: localValue1, localValue2) ===
function stateFlag3(localValue1, localValue2)
  local cmgOperation2, text2, stringHelper, text5
  cmgOperation2 = dataCollection
  cmgOperation2 = cmgOperation2[localValue1]
  if not cmgOperation2 then
    cmgOperation2 = dataCollection
    text2 = {}
    cmgOperation2[localValue1] = text2
  end
  cmgOperation2 = AddBlipForCoord
  text2 = localValue2.x
  stringHelper = localValue2.y
  text5 = localValue2.z
  -- Beginner: result below is blipHandle.
  cmgOperation2 = cmgOperation2(text2, stringHelper, text5)
  text2 = SetBlipSprite
  stringHelper = cmgOperation2
  text5 = 419
  text2(stringHelper, text5)
  text2 = SetBlipColour
  stringHelper = cmgOperation2
  text5 = 3
  text2(stringHelper, text5)
  text2 = SetBlipScale
  stringHelper = cmgOperation2
  text5 = 2.0
  text2(stringHelper, text5)
  text2 = table
  text2 = text2.insert
  stringHelper = dataCollection
  stringHelper = stringHelper[localValue1]
  text5 = cmgOperation2
  text2(stringHelper, text5)
end
eventHandler = RegisterNetEvent
eventHandler2 = "61c3394e09"
text = stateFlag3
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "61c3394e09".
eventHandler(eventHandler2, text)
eventHandler = RegisterNetEvent
eventHandler2 = "e6db29c00c"
-- Beginner: this function handles network event "e6db29c00c".

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, cmgOperation2, text2, stringHelper, text5, number8, text7, number9, text8, number2, number3, number4, workingValue, workingValue2, workingValue3
  localValue2 = pairs
  cmgOperation2 = localValue1
  localValue2, cmgOperation2, text2, stringHelper = localValue2(cmgOperation2)
  for text5, number8 in localValue2, cmgOperation2, text2, stringHelper do
    text7 = pairs
    number9 = number8
    text7, number9, text8, number2 = text7(number9)
    for number3, number4 in text7, number9, text8, number2 do
      workingValue = stateFlag3
      workingValue2 = text5
      workingValue3 = number4
      -- Beginner: Register a client-side event handler.
      workingValue(workingValue2, workingValue3)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e6db29c00c".
eventHandler(eventHandler2, text)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2, cmgOperation2, text2, stringHelper, text5, number8, text7, number9, text8
  localValue2 = dataCollection
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    return
  end
  cmgOperation2 = pairs
  text2 = localValue2
  cmgOperation2, text2, stringHelper, text5 = cmgOperation2(text2)
  for number8, text7 in cmgOperation2, text2, stringHelper, text5 do
    number9 = RemoveBlip
    text8 = text7
    number9(text8)
  end
  cmgOperation2 = dataCollection
  cmgOperation2[localValue1] = nil
end
eventHandler2 = RegisterNetEvent
text = "e59660d1d1"
workingValue4 = eventHandler
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e59660d1d1".
eventHandler2(text, workingValue4)
eventHandler2 = RegisterNetEvent
text = "a25b88c6cc"
-- Beginner: this function handles network event "a25b88c6cc".

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, localValue2, cmgOperation2, text2, stringHelper, text5, number8
  localValue1 = pairs
  localValue2 = dataCollection
  localValue1, localValue2, cmgOperation2, text2 = localValue1(localValue2)
  for stringHelper in localValue1, localValue2, cmgOperation2, text2 do
    text5 = eventHandler
    number8 = stringHelper
    text5(number8)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a25b88c6cc".
eventHandler2(text, workingValue4)
