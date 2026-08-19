--[[
    LEVEL 1 BEGINNER GUIDE — Police
    ====================================

    File: cmg/prod/client/police/cl_police.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Police feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 134
      * Background threads: 0
      * Always-running loops: 7
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
local stateFlag, stateFlag10, workingValue5, stateFlag13, workingValue6, stateFlag15, stateFlag16, stateFlag17, cmgOperation6, text21, text, number, number2, text3, text4, dataCollection2, dataCollection3, dataCollection4, text5, rageUiOperation2, text6, text7, rageUiOperation3, rageUiOperation4, text8, rageUiOperation5, rageUiOperation6, text9, text10, rageUiOperation7, rageUiOperation8, cmgOperation3, text12, cmgOperation4, cmgOperation5, rageUiOperation9, rageUiOperation10, text13, text14, rageUiOperation11, rageUiOperation12, createVector3, createVector32, createVector33, createVector34, createVector35, createVector36, createVector37, number6, number7, number8, number9, createVector38, createVector39, createVector310, createVector311, createVector312, number10, rageUiOperation13, text17, text18, rageUiOperation14, rageUiOperation15, text19, text20
stateFlag = false
stateFlag10 = false
workingValue5 = nil
stateFlag13 = false
workingValue6 = nil
stateFlag15 = false
stateFlag16 = false
stateFlag17 = false
cmgOperation6 = CMG

-- === HELPER FUNCTION (decompiler name: text21; parameters: none) ===
function text21()
  local localValue1, localValue2
  localValue1 = stateFlag
  return localValue1
end
cmgOperation6.isKnockedOut = text21
cmgOperation6 = RegisterNetEvent
text21 = "playRussianRoulette"
-- Beginner: this function handles network event "playRussianRoulette".

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = GetEntityCoords
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  localValue3, localValue4, localValue5 = localValue3()
  -- Beginner: result below is entityCoords.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = localValue2 - localValue1
  localValue3 = #localValue3
  if localValue3 <= 15 then
    localValue4 = SendNUIMessage
    localValue5 = {}
    localValue5.transactionType = "playRussianRoulette"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    localValue4(localValue5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "playRussianRoulette".
cmgOperation6(text21, text)
cmgOperation6 = RegisterNetEvent
text21 = "playEmptyGun"
-- Beginner: this function handles network event "playEmptyGun".

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = GetEntityCoords
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  localValue3, localValue4, localValue5 = localValue3()
  -- Beginner: result below is entityCoords.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = localValue2 - localValue1
  localValue3 = #localValue3
  if localValue3 <= 15 then
    localValue4 = SendNUIMessage
    localValue5 = {}
    localValue5.transactionType = "emptygun"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    localValue4(localValue5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "playEmptyGun".
cmgOperation6(text21, text)
cmgOperation6 = CreateTimecycleModifier
text21 = "knockout"
cmgOperation6(text21)
cmgOperation6 = SetTimecycleModifierVar
text21 = "knockout"
text = "postfx_noise"
number = 0.5
number2 = 0.0
cmgOperation6(text21, text, number, number2)
cmgOperation6 = SetTimecycleModifierVar
text21 = "knockout"
text = "postfx_noise_size"
number = 0.5
number2 = 0.0
cmgOperation6(text21, text, number, number2)
cmgOperation6 = SetTimecycleModifierVar
text21 = "knockout"
text = "screen_blur_intensity"
number = 1.0
number2 = 0.0
cmgOperation6(text21, text, number, number2)

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: localValue1) ===
function cmgOperation6(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = GetVehicleClass
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if 18 == localValue2 then
    localValue2 = true
    return localValue2
  end
  localValue2 = GetEntityModel
  localValue3 = localValue1
  -- Beginner: result below is modelHash.
  localValue2 = localValue2(localValue3)
  localValue3 = IsThisModelAHeli
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue3 = true
    return localValue3
  end
  localValue3 = false
  return localValue3
end
text21 = tCMG

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2) ===
function text(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue
  localValue3 = CMG
  localValue3 = localValue3.getClosestVehicle
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue4 = IsEntityAVehicle
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if localValue4 then
      if not localValue2 then
        localValue4 = cmgOperation6
        localValue5 = localValue3
        localValue4 = localValue4(localValue5)
        if not localValue4 then
          goto continueAtStep45
        end
      end
      localValue4 = 1
      localValue5 = math
      localValue5 = localValue5.max
      localValue6 = GetVehicleMaxNumberOfPassengers
      number11 = localValue3
      localValue6 = localValue6(number11)
      number11 = 3
      localValue5 = localValue5(localValue6, number11)
      localValue6 = 1
      for number11 = localValue4, localValue5, localValue6 do
        workingValue7 = IsVehicleSeatFree
        cmgOperation7 = localValue3
        workingValue9 = number11
        workingValue7 = workingValue7(cmgOperation7, workingValue9)
        if workingValue7 then
          workingValue7 = SetPedIntoVehicle
          cmgOperation7 = CMG
          cmgOperation7 = cmgOperation7.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgOperation7 = cmgOperation7()
          workingValue9 = localValue3
          workingValue = number11
          workingValue7(cmgOperation7, workingValue9, workingValue)
          workingValue7 = true
          return workingValue7
        end
      end
    end
  end
  ::continueAtStep45::
  localValue4 = false
  return localValue4
end
text21.putInNearestVehicleAsPassenger = text
text21 = tCMG

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9
  localValue2 = CMG
  localValue2 = localValue2.getObjectId
  localValue3 = localValue1
  localValue4 = "putInNetVehicleAsPassenger"
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue3 = IsEntityAVehicle
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if localValue3 then
      localValue3 = 1
      localValue4 = GetVehicleMaxNumberOfPassengers
      localValue5 = localValue2
      localValue4 = localValue4(localValue5)
      localValue5 = 1
      for localValue6 = localValue3, localValue4, localValue5 do
        number11 = IsVehicleSeatFree
        workingValue7 = localValue2
        cmgOperation7 = localValue6
        number11 = number11(workingValue7, cmgOperation7)
        if number11 then
          number11 = SetPedIntoVehicle
          workingValue7 = CMG
          workingValue7 = workingValue7.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          workingValue7 = workingValue7()
          cmgOperation7 = localValue2
          workingValue9 = localValue6
          number11(workingValue7, cmgOperation7, workingValue9)
          number11 = true
          return number11
        end
      end
    end
  end
  localValue3 = false
  return localValue3
end
text21.putInNetVehicleAsPassenger = text
text21 = tCMG

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2, localValue3) ===
function text(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2
  localValue4 = tCMG
  localValue4 = localValue4.getVehicleAtPosition
  localValue5 = localValue1
  localValue6 = localValue2
  number11 = localValue3
  localValue4 = localValue4(localValue5, localValue6, number11)
  localValue5 = IsEntityAVehicle
  localValue6 = localValue4
  localValue5 = localValue5(localValue6)
  if localValue5 then
    localValue5 = 1
    localValue6 = GetVehicleMaxNumberOfPassengers
    number11 = localValue4
    localValue6 = localValue6(number11)
    number11 = 1
    for workingValue7 = localValue5, localValue6, number11 do
      cmgOperation7 = IsVehicleSeatFree
      workingValue9 = localValue4
      workingValue = workingValue7
      cmgOperation7 = cmgOperation7(workingValue9, workingValue)
      if cmgOperation7 then
        cmgOperation7 = SetPedIntoVehicle
        workingValue9 = CMG
        workingValue9 = workingValue9.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        workingValue9 = workingValue9()
        workingValue = localValue4
        text2 = workingValue7
        cmgOperation7(workingValue9, workingValue, text2)
        cmgOperation7 = true
        return cmgOperation7
      end
    end
  end
  localValue5 = false
  return localValue5
end
text21.putInVehiclePositionAsPassenger = text
text21 = {}
text = {}
number = "switch@franklin@bed"
number2 = "sleep_loop"
text[1] = number
text[2] = number2
number = {}
number2 = "switch@trevor@bed"
text3 = "bed_sleep_floyd"
number[1] = number2
number[2] = text3
text21[1] = text
text21[2] = number

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, localValue3
  localValue1 = math
  localValue1 = localValue1.random
  localValue2 = 1
  localValue3 = text21
  localValue3 = #localValue3
  localValue1 = localValue1(localValue2, localValue3)
  localValue2 = text21
  localValue1 = localValue2[localValue1]
  return localValue1
end
number = RegisterNetEvent
number2 = "8e08db8961"
-- Beginner: this function handles network event "8e08db8961".

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2
  localValue1 = stateFlag
  if not localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.isPurge
    localValue1 = localValue1()
    if not localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.inArena
      localValue1 = localValue1()
      if not localValue1 then
        localValue1 = tCMG
        localValue1 = localValue1.setCanAnim
        localValue2 = false
        localValue1(localValue2)
        localValue1 = SetTimecycleModifier
        localValue2 = "knockout"
        localValue1(localValue2)
        localValue1 = true
        stateFlag = localValue1
        localValue1 = text
        localValue1 = localValue1()
        workingValue5 = localValue1
        localValue1 = TriggerServerEvent
        localValue2 = "f0adea3789"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f0adea3789".
        localValue1(localValue2)
        localValue1 = tCMG
        localValue1 = localValue1.notify
        localValue2 = "~r~You have been knocked out!"
        -- Beginner: Show a notification to the player.
        localValue1(localValue2)
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8e08db8961".
number(number2, text3)
number = RegisterNetEvent
number2 = "259d5b120c"
-- Beginner: this function handles network event "259d5b120c".

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = stateFlag
  if localValue1 then
    localValue1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    localValue2 = SetEntityCollision
    localValue3 = localValue1
    localValue4 = true
    localValue5 = true
    localValue2(localValue3, localValue4, localValue5)
    localValue2 = FreezeEntityPosition
    localValue3 = localValue1
    localValue4 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue2(localValue3, localValue4)
    localValue2 = workingValue5
    if localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.getTunableValue
      localValue3 = "ragdoll_knockout"
      localValue2 = localValue2(localValue3)
      if localValue2 then
        localValue2 = ClearPedTasksImmediately
        localValue3 = localValue1
        localValue2(localValue3)
      else
        localValue2 = StopAnimTask
        localValue3 = localValue1
        localValue4 = workingValue5
        localValue4 = localValue4[1]
        localValue5 = workingValue5
        localValue5 = localValue5[2]
        localValue6 = 1.0
        localValue2(localValue3, localValue4, localValue5, localValue6)
      end
    end
    localValue2 = stateFlag10
    if localValue2 then
      localValue2 = TriggerEvent
      localValue3 = "TriggerTazer"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "TriggerTazer".
      localValue2(localValue3)
      localValue2 = false
      stateFlag10 = localValue2
    end
    localValue2 = ClearTimecycleModifier
    localValue2()
    localValue2 = tCMG
    localValue2 = localValue2.setCanAnim
    localValue3 = true
    localValue2(localValue3)
    localValue2 = false
    stateFlag = localValue2
    localValue2 = nil
    workingValue5 = localValue2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "259d5b120c".
number(number2, text3)
number = CMG

-- === HELPER FUNCTION (decompiler name: number2; parameters: localValue1) ===
function number2(localValue1)
  local localValue2
  stateFlag10 = localValue1
end
number.setKnockoutTasersAfter = number2
number = RegisterNetEvent
number2 = "21d21b8eb5"
number(number2)
number = AddEventHandler
number2 = "21d21b8eb5"
-- Beginner: this function runs when client event "21d21b8eb5" fires.

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2
  workingValue6 = localValue1
  localValue2 = stateFlag15
  localValue2 = not localValue2
  stateFlag15 = localValue2
end
-- Beginner: Register a client-side event handler. Event/command: "21d21b8eb5".
number(number2, text3)
number = RegisterNetEvent
number2 = "2ce9e6535d"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2ce9e6535d".
number(number2)
number = AddEventHandler
number2 = "2ce9e6535d"
-- Beginner: this function runs when client event "2ce9e6535d" fires.

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2
  localValue1 = false
  stateFlag15 = localValue1
end
-- Beginner: Register a client-side event handler. Event/command: "2ce9e6535d".
number(number2, text3)
number = RegisterNetEvent
number2 = "ccbe891b9b"
-- Beginner: this function handles network event "ccbe891b9b".

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = false
  localValue2 = SetTimeout
  localValue3 = 10000
  -- Beginner: this function handles network event "ccbe891b9b".

  -- === HELPER FUNCTION: localValue4() ===
  function localValue4()
    local localValue12, cmgOperation2
    localValue12 = true
    localValue1 = localValue12
  end
  localValue2(localValue3, localValue4)
  localValue2 = CMG
  localValue2 = localValue2.setDrawingInventoryUI
  localValue3 = false
  localValue2(localValue3)
  while not localValue1 do
    localValue2 = CMG
    localValue2 = localValue2.isDrawingInventoryUI
    localValue2 = localValue2()
    if localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.setDrawingInventoryUI
      localValue3 = false
      localValue2(localValue3)
    end
    localValue2 = Wait
    localValue3 = 0
    localValue2(localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ccbe891b9b".
number(number2, text3)

-- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
function number()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "8c66af1a00"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8c66af1a00".
  localValue1(localValue2)
end
GetFounderPerks = number
number = TriggerEvent
number2 = "chat:addSuggestion"
text3 = "/s60"
text4 = "Authorise a new Section 60 order"
dataCollection2 = {}
dataCollection3 = {}
dataCollection3.name = "Radius"
dataCollection3.help = "In metres"
dataCollection4 = {}
dataCollection4.name = "Duration"
dataCollection4.help = "In Minutes"
dataCollection2[1] = dataCollection3
dataCollection2[2] = dataCollection4
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
number(number2, text3, text4, dataCollection2)
number = {}
number2 = RegisterNetEvent
text3 = "63d1315723"
-- Beginner: this function handles network event "63d1315723".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1, localValue2, localValue3) ===
function text4(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3
  localValue4 = AddBlipForCoord
  localValue5 = localValue1.x
  localValue6 = localValue1.y
  number11 = localValue1.z
  -- Beginner: result below is blipHandle.
  localValue4 = localValue4(localValue5, localValue6, number11)
  localValue5 = AddBlipForRadius
  localValue6 = localValue1.x
  number11 = localValue1.y
  workingValue7 = localValue1.z
  cmgOperation7 = localValue2 + 0.0
  -- Beginner: result below is blipHandle.
  localValue5 = localValue5(localValue6, number11, workingValue7, cmgOperation7)
  localValue6 = 61
  number11 = SetBlipSprite
  workingValue7 = localValue4
  cmgOperation7 = 526
  number11(workingValue7, cmgOperation7)
  number11 = SetBlipColour
  workingValue7 = localValue4
  cmgOperation7 = localValue6
  number11(workingValue7, cmgOperation7)
  number11 = SetBlipScale
  workingValue7 = localValue4
  cmgOperation7 = 1.0
  number11(workingValue7, cmgOperation7)
  number11 = BeginTextCommandSetBlipName
  workingValue7 = "STRING"
  number11(workingValue7)
  number11 = AddTextComponentSubstringPlayerName
  workingValue7 = "Section 60"
  number11(workingValue7)
  number11 = EndTextCommandSetBlipName
  workingValue7 = localValue4
  number11(workingValue7)
  number11 = SetBlipAlpha
  workingValue7 = localValue5
  cmgOperation7 = 80
  number11(workingValue7, cmgOperation7)
  number11 = SetBlipColour
  workingValue7 = localValue5
  cmgOperation7 = localValue6
  number11(workingValue7, cmgOperation7)
  number11 = number
  workingValue7 = {}
  cmgOperation7 = localValue5
  workingValue9 = localValue4
  workingValue7[1] = cmgOperation7
  workingValue7[2] = workingValue9
  number11[localValue3] = workingValue7
  number11 = GetStreetNameAtCoord
  workingValue7 = localValue1.x
  cmgOperation7 = localValue1.y
  workingValue9 = localValue1.z
  number11 = number11(workingValue7, cmgOperation7, workingValue9)
  workingValue7 = GetStreetNameFromHashKey
  cmgOperation7 = number11
  workingValue7 = workingValue7(cmgOperation7)
  cmgOperation7 = TriggerEvent
  workingValue9 = "371eab1d3a"
  workingValue = {}
  text2 = "Metropolitan Police: <br/>A Section 60 has been authorised for the area of"
  stateFlag2 = workingValue7
  stateFlag3 = ".<br/><br/>This gives officers the power to search any person or vehicle in the area, without any grounds. <br/><br/>This has been authorised in line with legislation."
  text2 = text2 .. stateFlag2 .. stateFlag3
  workingValue.text = text2
  workingValue.height = "auto"
  workingValue.width = "auto"
  workingValue.colour = "#FFF"
  workingValue.background = "#3287cd"
  workingValue.pos = "bottom-right"
  workingValue.icon = "success"
  text2 = 100000
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
  cmgOperation7(workingValue9, workingValue, text2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "63d1315723".
number2(text3, text4)
number2 = RegisterNetEvent
text3 = "0e40bd25ed"
-- Beginner: this function handles network event "0e40bd25ed".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = number
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue2 = number
    localValue2 = localValue2[localValue1]
    localValue3 = localValue2[2]
    localValue4 = localValue2[1]
    localValue5 = RemoveBlip
    localValue6 = localValue3
    localValue5(localValue6)
    localValue5 = RemoveBlip
    localValue6 = localValue4
    localValue5(localValue6)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0e40bd25ed".
number2(text3, text4)
number2 = false
text3 = CMG
text3 = text3.registerCommand
text4 = "+handsup"

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: none) ===
function dataCollection2()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.isSittingOnChair
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = true
    number2 = localValue1
  end
end
dataCollection3 = false
text3(text4, dataCollection2, dataCollection3)
text3 = CMG
text3 = text3.registerCommand
text4 = "-handsup"

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: none) ===
function dataCollection2()
  local localValue1, localValue2
  localValue1 = false
  number2 = localValue1
end
dataCollection3 = false
text3(text4, dataCollection2, dataCollection3)
text3 = RegisterKeyMapping
text4 = "+handsup"
dataCollection2 = "Hands Up"
dataCollection3 = "KEYBOARD"
dataCollection4 = "X"
-- Beginner: Bind a command to a keyboard/controller key.
text3(text4, dataCollection2, dataCollection3, dataCollection4)
text3 = 0

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = IsPedReloading
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = GetIsTaskActive
    localValue3 = localValue1
    localValue4 = 298
    localValue2 = localValue2(localValue3, localValue4)
    if not localValue2 then
      localValue2 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue2 = localValue2()
      localValue3 = text3
      localValue2 = localValue2 - localValue3
      localValue2 = localValue2 < 100
    end
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: none) ===
function dataCollection2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag11
  localValue1 = stateFlag15
  if localValue1 then
    localValue1 = workingValue6
    if nil ~= localValue1 then
      localValue1 = DisableControlAction
      localValue2 = 0
      localValue3 = 21
      localValue4 = true
      localValue1(localValue2, localValue3, localValue4)
      localValue1 = GetPlayerPed
      localValue2 = GetPlayerFromServerId
      localValue3 = workingValue6
      localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag11 = localValue2(localValue3)
      -- Beginner: result below is playerPed.
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag11)
      localValue2 = CMG
      localValue2 = localValue2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      if 0 ~= localValue1 and 0 ~= localValue2 and localValue2 ~= localValue1 then
        localValue3 = GetEntityHealth
        localValue4 = localValue2
        -- Beginner: result below is health.
        localValue3 = localValue3(localValue4)
        if not (localValue3 <= 102) then
          localValue3 = GetEntityHealth
          localValue4 = localValue1
          -- Beginner: result below is health.
          localValue3 = localValue3(localValue4)
          if not (localValue3 <= 102) then
            goto continueAtStep40
          end
        end
        localValue3 = TriggerEvent
        localValue4 = "2ce9e6535d"
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "2ce9e6535d".
        localValue3(localValue4)
        goto continueAtStep57
        ::continueAtStep40::
        localValue3 = AttachEntityToEntity
        localValue4 = localValue2
        localValue5 = localValue1
        localValue6 = 4103
        number11 = 11816
        workingValue7 = 0.48
        cmgOperation7 = 0.0
        workingValue9 = 0.0
        workingValue = 0.0
        text2 = 0.0
        stateFlag2 = false
        stateFlag3 = false
        stateFlag4 = false
        stateFlag5 = false
        stateFlag6 = 0
        stateFlag7 = false
        -- Beginner: Attach one entity to another entity.
        localValue3(localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7)
      end
      ::continueAtStep57::
      localValue3 = true
      stateFlag16 = localValue3
  end
  else
    localValue1 = stateFlag16
    if localValue1 then
      localValue1 = DetachEntity
      localValue2 = CMG
      localValue2 = localValue2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      localValue3 = true
      localValue4 = false
      localValue1(localValue2, localValue3, localValue4)
      localValue1 = false
      stateFlag16 = localValue1
    end
  end
  localValue1 = IsControlPressed
  localValue2 = 0
  localValue3 = 45
  localValue1 = localValue1(localValue2, localValue3)
  if localValue1 then
    localValue1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue1 = localValue1()
    text3 = localValue1
  end
  localValue1 = number2
  if not localValue1 then
    localValue1 = IsControlPressed
    localValue2 = 0
    localValue3 = 27
    localValue1 = localValue1(localValue2, localValue3)
    if not localValue1 then
      goto continueAtStep174
    end
    localValue1 = CMG
    localValue1 = localValue1.isUsingKeyboard
    localValue2 = 2
    localValue1 = localValue1(localValue2)
    if localValue1 then
      goto continueAtStep174
    end
  end
  localValue1 = CMG
  localValue1 = localValue1.isSurrendering
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = tCMG
    localValue1 = localValue1.isInComa
    localValue1 = localValue1()
    if not localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.isHandcuffed
      localValue1 = localValue1()
      if not localValue1 then
        localValue1 = CMG
        localValue1 = localValue1.isPlayingEmote
        localValue1 = localValue1()
        if localValue1 then
          localValue1 = IsPedUsingAnyScenario
          localValue2 = PlayerPedId
          localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag11 = localValue2()
          localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag11)
          if localValue1 then
            goto continueAtStep174
          end
        end
        localValue1 = tCMG
        localValue1 = localValue1.canAnim
        localValue1 = localValue1()
        if not localValue1 then
          localValue1 = CMG
          localValue1 = localValue1.isTazedByRevive
          localValue1 = localValue1()
          if not localValue1 then
            goto continueAtStep174
          end
        end
        localValue1 = DisablePlayerFiring
        localValue2 = PlayerId
        -- Beginner: result below is localPlayerIndex.
        localValue2 = localValue2()
        localValue3 = true
        localValue1(localValue2, localValue3)
        localValue1 = DisableControlAction
        localValue2 = 0
        localValue3 = 22
        localValue4 = true
        localValue1(localValue2, localValue3, localValue4)
        localValue1 = DisableControlAction
        localValue2 = 0
        localValue3 = 25
        localValue4 = true
        localValue1(localValue2, localValue3, localValue4)
        localValue1 = DisableControlAction
        localValue2 = 0
        localValue3 = 154
        localValue4 = true
        localValue1(localValue2, localValue3, localValue4)
        localValue1 = IsEntityDead
        localValue2 = CMG
        localValue2 = localValue2.getPlayerPed
        localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag11 = localValue2()
        localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag11)
        if not localValue1 then
          localValue1 = stateFlag13
          if not localValue1 then
            localValue1 = text4
            localValue2 = PlayerPedId
            localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag11 = localValue2()
            localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag11)
            if not localValue1 then
              localValue1 = true
              stateFlag13 = localValue1
              localValue1 = Citizen
              localValue1 = localValue1.CreateThread

              -- === HELPER FUNCTION: localValue2() ===
              function localValue2()
                local localValue12, cmgOperation2, text11, stateFlag14, text15, modelHash, number12, number14, stateFlag19, cmgOperation8, rageUiOperation, cmgOperation
                localValue12 = CMG
                localValue12 = localValue12.loadAnimDict
                cmgOperation2 = "missminuteman_1ig_2"
                -- Beginner: Load a GTA animation dictionary before using it.
                localValue12(cmgOperation2)
                localValue12 = TaskPlayAnim
                cmgOperation2 = CMG
                cmgOperation2 = cmgOperation2.getPlayerPed
                -- Beginner: result below is localPlayerPed.
                cmgOperation2 = cmgOperation2()
                text11 = "missminuteman_1ig_2"
                stateFlag14 = "handsup_enter"
                text15 = 7.0
                modelHash = 1.0
                number12 = -1
                number14 = 50
                stateFlag19 = 0
                cmgOperation8 = false
                rageUiOperation = false
                cmgOperation = false
                -- Beginner: Play an animation on a ped.
                localValue12(cmgOperation2, text11, stateFlag14, text15, modelHash, number12, number14, stateFlag19, cmgOperation8, rageUiOperation, cmgOperation)
                localValue12 = RemoveAnimDict
                cmgOperation2 = "missminuteman_1ig_2"
                localValue12(cmgOperation2)
              end
              -- Beginner: Start a separate FiveM thread so this code can run independently.
              localValue1(localValue2)
            end
          end
        end
      end
    end
  end
  ::continueAtStep174::
  localValue1 = IsControlJustReleased
  localValue2 = 1
  localValue3 = 323
  localValue1 = localValue1(localValue2, localValue3)
  if not localValue1 then
    localValue1 = IsControlJustReleased
    localValue2 = 1
    localValue3 = 27
    localValue1 = localValue1(localValue2, localValue3)
    if not localValue1 then
      goto continueAtStep256
    end
  end
  localValue1 = CMG
  localValue1 = localValue1.isSurrendering
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = stateFlag13
    if localValue1 then
      localValue1 = tCMG
      localValue1 = localValue1.isInComa
      localValue1 = localValue1()
      if not localValue1 then
        localValue1 = CMG
        localValue1 = localValue1.isHandcuffed
        localValue1 = localValue1()
        if not localValue1 then
          localValue1 = tCMG
          localValue1 = localValue1.canAnim
          localValue1 = localValue1()
          if not localValue1 then
            localValue2 = stateFlag13
            if localValue2 then
              localValue2 = IsEntityPlayingAnim
              localValue3 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              localValue3 = localValue3()
              localValue4 = "missminuteman_1ig_2"
              localValue5 = "handsup_enter"
              localValue6 = 3
              localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
              if localValue2 then
                localValue1 = true
              end
            end
          end
          if localValue1 then
            localValue2 = false
            stateFlag13 = localValue2
            localValue2 = CreateThread
            -- Beginner: this function is the body of a background FiveM thread.

            -- === HELPER FUNCTION: localValue3() ===
            function localValue3()
              local localValue12, cmgOperation2, text11, stateFlag14
              localValue12 = false
              cmgOperation2 = CreateThread
              -- Beginner: this function is the body of a background FiveM thread.

              -- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
              function text11()
                local localValue13, localValue22
                localValue13 = Wait
                localValue22 = 1000
                localValue13(localValue22)
                localValue13 = true
                localValue12 = localValue13
              end
              -- Beginner: Start a separate FiveM thread so this code can run independently.
              cmgOperation2(text11)
              while not localValue12 do
                cmgOperation2 = DisablePlayerFiring
                text11 = PlayerId
                -- Beginner: result below is localPlayerIndex.
                text11 = text11()
                stateFlag14 = true
                cmgOperation2(text11, stateFlag14)
                cmgOperation2 = Wait
                text11 = 0
                cmgOperation2(text11)
              end
            end
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            localValue2(localValue3)
            localValue2 = DisableControlAction
            localValue3 = 0
            localValue4 = 21
            localValue5 = true
            localValue2(localValue3, localValue4, localValue5)
            localValue2 = DisableControlAction
            localValue3 = 0
            localValue4 = 137
            localValue5 = true
            localValue2(localValue3, localValue4, localValue5)
            localValue2 = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            localValue2 = localValue2()
            localValue3 = text4
            localValue4 = localValue2
            localValue3 = localValue3(localValue4)
            if localValue3 then
              localValue3 = StopAnimTask
              localValue4 = localValue2
              localValue5 = "missminuteman_1ig_2"
              localValue6 = "handsup_enter"
              number11 = 1.0
              localValue3(localValue4, localValue5, localValue6, number11)
            else
              localValue3 = ClearPedTasks
              localValue4 = localValue2
              localValue3(localValue4)
            end
          end
        end
      end
    end
  end
  ::continueAtStep256::
  localValue1 = stateFlag
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.isStaffedOnClient
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = TriggerEvent
      localValue2 = "259d5b120c"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "259d5b120c".
      localValue1(localValue2)
    else
      localValue1 = tCMG
      localValue1 = localValue1.isInComa
      localValue1 = localValue1()
      if not localValue1 then
        localValue1 = workingValue5
        if localValue1 then
          localValue1 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          localValue1 = localValue1()
          localValue2 = CMG
          localValue2 = localValue2.getTunableValue
          localValue3 = "ragdoll_knockout"
          localValue2 = localValue2(localValue3)
          if localValue2 then
            localValue2 = SetPedToRagdoll
            localValue3 = localValue1
            localValue4 = -1
            localValue5 = -1
            localValue6 = 0
            number11 = false
            workingValue7 = true
            cmgOperation7 = false
            localValue2(localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7)
          else
            localValue2 = IsEntityPlayingAnim
            localValue3 = localValue1
            localValue4 = workingValue5
            localValue4 = localValue4[1]
            localValue5 = workingValue5
            localValue5 = localValue5[2]
            localValue6 = 3
            localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
            if not localValue2 then
              localValue2 = CMG
              localValue2 = localValue2.loadAnimDict
              localValue3 = workingValue5
              localValue3 = localValue3[1]
              -- Beginner: Load a GTA animation dictionary before using it.
              localValue2(localValue3)
              localValue2 = GetEntityCoords
              localValue3 = localValue1
              localValue4 = true
              -- Beginner: result below is entityCoords.
              localValue2 = localValue2(localValue3, localValue4)
              localValue3 = SetEntityCollision
              localValue4 = localValue1
              localValue5 = false
              localValue6 = false
              localValue3(localValue4, localValue5, localValue6)
              localValue3 = FreezeEntityPosition
              localValue4 = localValue1
              localValue5 = true
              -- Beginner: Freeze or unfreeze an entity in place.
              localValue3(localValue4, localValue5)
              localValue3 = GetGroundZFor_3dCoord
              localValue4 = localValue2.x
              localValue5 = localValue2.y
              localValue6 = localValue2.z
              number11 = 0
              workingValue7 = false
              localValue3, localValue4 = localValue3(localValue4, localValue5, localValue6, number11, workingValue7)
              if localValue3 then
                localValue5 = vector3
                localValue6 = localValue2.x
                number11 = localValue2.y
                workingValue7 = localValue4 + 0.3
                localValue5 = localValue5(localValue6, number11, workingValue7)
                localValue2 = localValue5
              end
              localValue5 = TaskPlayAnimAdvanced
              localValue6 = localValue1
              number11 = workingValue5
              number11 = number11[1]
              workingValue7 = workingValue5
              workingValue7 = workingValue7[2]
              cmgOperation7 = localValue2.x
              workingValue9 = localValue2.y
              workingValue = localValue2.z
              text2 = 0.0
              stateFlag2 = 0.0
              stateFlag3 = 0.0
              stateFlag4 = 3.0
              stateFlag5 = 1.0
              stateFlag6 = -1
              stateFlag7 = 1
              stateFlag8 = 0.0
              stateFlag9 = 0
              stateFlag11 = 0
              localValue5(localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag11)
              localValue5 = RemoveAnimDict
              localValue6 = workingValue5
              localValue6 = localValue6[1]
              localValue5(localValue6)
            end
          end
        end
      end
    end
  end
end
dataCollection3 = CMG
dataCollection3 = dataCollection3.createThreadOnTick
dataCollection4 = dataCollection2
text5 = "Police Drag"
-- Beginner: Run a helper every game frame while this script is active.
dataCollection3(dataCollection4, text5)
dataCollection3 = RMenu
dataCollection3 = dataCollection3.Add
dataCollection4 = "policehandbook"
text5 = "main"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
text6 = "Police Handbook"
text7 = "~b~Officer Handbook"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, text8, rageUiOperation5, rageUiOperation6, text9, text10, rageUiOperation7, rageUiOperation8, cmgOperation3, text12, cmgOperation4, cmgOperation5, rageUiOperation9, rageUiOperation10, text13, text14, rageUiOperation11, rageUiOperation12, createVector3, createVector32, createVector33, createVector34, createVector35, createVector36, createVector37, number6, number7, number8, number9, createVector38, createVector39, createVector310, createVector311, createVector312, number10, rageUiOperation13, text17, text18, rageUiOperation14, rageUiOperation15, text19, text20 = rageUiOperation4()
rageUiOperation2, text6, text7, rageUiOperation3, rageUiOperation4, text8, rageUiOperation5, rageUiOperation6, text9, text10, rageUiOperation7, rageUiOperation8, cmgOperation3, text12, cmgOperation4, cmgOperation5, rageUiOperation9, rageUiOperation10, text13, text14, rageUiOperation11, rageUiOperation12, createVector3, createVector32, createVector33, createVector34, createVector35, createVector36, createVector37, number6, number7, number8, number9, createVector38, createVector39, createVector310, createVector311, createVector312, number10, rageUiOperation13, text17, text18, rageUiOperation14, rageUiOperation15, text19, text20 = rageUiOperation2(text6, text7, rageUiOperation3, rageUiOperation4, text8, rageUiOperation5, rageUiOperation6, text9, text10, rageUiOperation7, rageUiOperation8, cmgOperation3, text12, cmgOperation4, cmgOperation5, rageUiOperation9, rageUiOperation10, text13, text14, rageUiOperation11, rageUiOperation12, createVector3, createVector32, createVector33, createVector34, createVector35, createVector36, createVector37, number6, number7, number8, number9, createVector38, createVector39, createVector310, createVector311, createVector312, number10, rageUiOperation13, text17, text18, rageUiOperation14, rageUiOperation15, text19, text20)
dataCollection3(dataCollection4, text5, rageUiOperation2, text6, text7, rageUiOperation3, rageUiOperation4, text8, rageUiOperation5, rageUiOperation6, text9, text10, rageUiOperation7, rageUiOperation8, cmgOperation3, text12, cmgOperation4, cmgOperation5, rageUiOperation9, rageUiOperation10, text13, text14, rageUiOperation11, rageUiOperation12, createVector3, createVector32, createVector33, createVector34, createVector35, createVector36, createVector37, number6, number7, number8, number9, createVector38, createVector39, createVector310, createVector311, createVector312, number10, rageUiOperation13, text17, text18, rageUiOperation14, rageUiOperation15, text19, text20)
dataCollection3 = RageUI
dataCollection3 = dataCollection3.CreateWhile
dataCollection4 = 1.0
text5 = RMenu
rageUiOperation2 = text5
text5 = text5.Get
text6 = "policehandbook"
text7 = "main"
-- Beginner: result below is menu.
text5 = text5(rageUiOperation2, text6, text7)
rageUiOperation2 = nil

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, number11
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "policehandbook"
  localValue5 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, cmgOperation2, text11, stateFlag14, text15
    localValue12 = RageUI
    localValue12 = localValue12.Button
    cmgOperation2 = "Arrest"
    text11 = nil
    stateFlag14 = true

    -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue13, localValue22, localValue32) ===
    function text15(localValue13, localValue22, localValue32)
      local localValue42, text16, dataCollection5, number13
      if localValue32 then
        localValue42 = TriggerEvent
        text16 = "371eab1d3a"
        dataCollection5 = {}
        dataCollection5.text = "The time now is ___. <br/>You are currently under arrest on suspision of ___. <br/>You do not have to say anything. But, it may harm your defence if you do not mention when questioned something which you later rely on in court. <br/>Anything you do say may be given in evidence. <br/>Do you understand?. <br/>The necessities for your arrest are to ___."
        dataCollection5.height = "auto"
        dataCollection5.width = "auto"
        dataCollection5.colour = "#FFF"
        dataCollection5.background = "#3287cd"
        dataCollection5.pos = "bottom-right"
        dataCollection5.icon = "success"
        number13 = 100000
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
        localValue42(text16, dataCollection5, number13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(cmgOperation2, text11, stateFlag14, text15)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    cmgOperation2 = "Search - GOWISELY"
    text11 = nil
    stateFlag14 = true

    -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue13, localValue22, localValue32) ===
    function text15(localValue13, localValue22, localValue32)
      local localValue42, text16, dataCollection5, number13
      if localValue32 then
        localValue42 = TriggerEvent
        text16 = "371eab1d3a"
        dataCollection5 = {}
        dataCollection5.text = "Before you stop and search someone you must remember GO-WISELY. <br/>You do not have to use this after arrest. <br/>Grounds: for the search. <br/>Object: of the search. <br/>Warrant card: If not in uniform. <br/>Identity: I am PC ___. <br/>Station: attached to ___ Police Station. <br/>Entitlement: Entitled to a copy of this search up to ___ months. <br/>Legal power: Searching under s1 PACE (1984) / s23 MODA (1971). <br/>You: You are currently detained for the purpose of a search."
        dataCollection5.height = "auto"
        dataCollection5.width = "auto"
        dataCollection5.colour = "#FFF"
        dataCollection5.background = "#3287cd"
        dataCollection5.pos = "bottom-right"
        dataCollection5.icon = "success"
        number13 = 100000
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
        localValue42(text16, dataCollection5, number13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(cmgOperation2, text11, stateFlag14, text15)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    cmgOperation2 = "PACE - Key Legislation"
    text11 = nil
    stateFlag14 = true

    -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue13, localValue22, localValue32) ===
    function text15(localValue13, localValue22, localValue32)
      local localValue42, text16, dataCollection5, number13
      if localValue32 then
        localValue42 = TriggerEvent
        text16 = "371eab1d3a"
        dataCollection5 = {}
        dataCollection5.text = "Police and Criminal Evidence Act 1984  - PACE.<br/> Section 1 - Stop and search (Stolen property, prohibited articles, weapons, articles used to commit an offence.<br/>Section 17 - Entry for the purpose of life and arrest<br/> Section 18 - Entry to search after an arrest <br/>Section 19 - Power of seizure<br/> Section 24 - Power of arrest <br/> Section 32 - Search after an arrest"
        dataCollection5.height = "auto"
        dataCollection5.width = "auto"
        dataCollection5.colour = "#FFF"
        dataCollection5.background = "#3287cd"
        dataCollection5.pos = "bottom-right"
        dataCollection5.icon = "success"
        number13 = 100000
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
        localValue42(text16, dataCollection5, number13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(cmgOperation2, text11, stateFlag14, text15)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    cmgOperation2 = "Identify Codes"
    text11 = nil
    stateFlag14 = true

    -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue13, localValue22, localValue32) ===
    function text15(localValue13, localValue22, localValue32)
      local localValue42, text16, dataCollection5, number13
      if localValue32 then
        localValue42 = TriggerEvent
        text16 = "371eab1d3a"
        dataCollection5 = {}
        dataCollection5.text = "IC1:~s~ White - North European. <br/>IC2: White - South European. <br/>IC3: Black. <br/>IC4: Asian. <br/>IC5: Chinese, Japanese or other South East Asian. <br/>IC6: Arabic or North African. <br/>IC9: Unknown"
        dataCollection5.height = "auto"
        dataCollection5.width = "auto"
        dataCollection5.colour = "#FFF"
        dataCollection5.background = "#3287cd"
        dataCollection5.pos = "bottom-right"
        dataCollection5.icon = "success"
        number13 = 100000
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
        localValue42(text16, dataCollection5, number13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(cmgOperation2, text11, stateFlag14, text15)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    cmgOperation2 = "Traffic Offence Report"
    text11 = nil
    stateFlag14 = true

    -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue13, localValue22, localValue32) ===
    function text15(localValue13, localValue22, localValue32)
      local localValue42, text16, dataCollection5, number13
      if localValue32 then
        localValue42 = TriggerEvent
        text16 = "371eab1d3a"
        dataCollection5 = {}
        dataCollection5.text = "I am reporting you for consideration of the question of prosecuting you for the offence(s) of ___. <br/><br/>You do not have to say anything but it may harm your defence if you do not mention NOW something which you may later rely on in court. Anything you do say may be given in evidence. <br/><br/>You are not under arrest - you are entitled to legal advice and you are not obliged to remain with me."
        dataCollection5.height = "auto"
        dataCollection5.width = "auto"
        dataCollection5.colour = "#FFF"
        dataCollection5.background = "#3287cd"
        dataCollection5.pos = "bottom-right"
        dataCollection5.icon = "success"
        number13 = 100000
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
        localValue42(text16, dataCollection5, number13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(cmgOperation2, text11, stateFlag14, text15)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    cmgOperation2 = "Initial Phase Pursuit"
    text11 = nil
    stateFlag14 = true

    -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue13, localValue22, localValue32) ===
    function text15(localValue13, localValue22, localValue32)
      local localValue42, text16, dataCollection5, number13
      if localValue32 then
        localValue42 = TriggerEvent
        text16 = "371eab1d3a"
        dataCollection5 = {}
        dataCollection5.text = "VEHICLE DESCRIPTION: MAKE/MODEL/VRM. <br/>LOCATION & DIRECTION: ___. <br/>SPEED: ___. <br/>VEHICLE DENSITY: LOW/MED/HIGH. <br/>PEDESTRIAN DENSITY: LOW/MED/HIGH. <br/>ROAD CONDITIONS: WET/DRY/DIRT. <br/>WEATHER: CLEAR/LIGHT/DARK. <br/>VISIBILITY: CLEAR/MED/LOW. <br/>DRIVER CLASSIFICATION: IPP/ADV/TPAC. <br/>POLICE VEHICLE: MARKED/UNMARKED"
        dataCollection5.height = "auto"
        dataCollection5.width = "auto"
        dataCollection5.colour = "#FFF"
        dataCollection5.background = "#3287cd"
        dataCollection5.pos = "bottom-right"
        dataCollection5.icon = "success"
        number13 = 100000
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
        localValue42(text16, dataCollection5, number13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(cmgOperation2, text11, stateFlag14, text15)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    cmgOperation2 = "Warning Markers"
    text11 = nil
    stateFlag14 = true

    -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue13, localValue22, localValue32) ===
    function text15(localValue13, localValue22, localValue32)
      local localValue42, text16, dataCollection5, number13
      if localValue32 then
        localValue42 = TriggerEvent
        text16 = "371eab1d3a"
        dataCollection5 = {}
        dataCollection5.text = "FI: FIREARMS. <br/>WE: WEAPONS. <br/>XP: EXPLOSIVES. <br/>VI: VIOLENT. <br/>CO: CONTAGIOUS. <br/>ES: ESCAPER. <br/>AG: ALLEGES. <br/>AT: AILMENT. <br/>SU: SUICIDAL. <br/>MH: MENTAL HEALTH. <br/>DR: DRUGS. <br/>IM: MALE IMPERSONATOR. <br/>IF: FEMALE IMPERSONATOR"
        dataCollection5.height = "auto"
        dataCollection5.width = "auto"
        dataCollection5.colour = "#FFF"
        dataCollection5.background = "#3287cd"
        dataCollection5.pos = "bottom-right"
        dataCollection5.icon = "success"
        number13 = 100000
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
        localValue42(text16, dataCollection5, number13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(cmgOperation2, text11, stateFlag14, text15)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    cmgOperation2 = "s136 - Mental Healt Act"
    text11 = nil
    stateFlag14 = true

    -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue13, localValue22, localValue32) ===
    function text15(localValue13, localValue22, localValue32)
      local localValue42, text16, dataCollection5, number13
      if localValue32 then
        localValue42 = TriggerEvent
        text16 = "371eab1d3a"
        dataCollection5 = {}
        dataCollection5.text = "A constable may take a person to (or keep at) a place of a safety. <br/>This can be done without a warrant if: The individual appears to have a mental disorder, and they are in any place other than a house, flat or room where a person is living, or garden or garage that only one household has access to, and they are in need of immediate care or control. <br/><br/>A registered medical practitioner/healthcare professional must be consulted if practicable to do so."
        dataCollection5.height = "auto"
        dataCollection5.width = "auto"
        dataCollection5.colour = "#FFF"
        dataCollection5.background = "#3287cd"
        dataCollection5.pos = "bottom-right"
        dataCollection5.icon = "success"
        number13 = 100000
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
        localValue42(text16, dataCollection5, number13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(cmgOperation2, text11, stateFlag14, text15)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    cmgOperation2 = "Arrest Necessities"
    text11 = nil
    stateFlag14 = true

    -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue13, localValue22, localValue32) ===
    function text15(localValue13, localValue22, localValue32)
      local localValue42, text16, dataCollection5, number13
      if localValue32 then
        localValue42 = TriggerEvent
        text16 = "371eab1d3a"
        dataCollection5 = {}
        dataCollection5.text = "You require at least two of the following necessities to arrest a suspect: <br/><br/>Investigation: conduct a prompt and effective. <br/>Disappearance: prevent the prosecution being hindered. <br/>Child or Vulnerable person: to protect a. <br/>Obstruction: of the highway unlawfully (preventing). <br/>Physical Injury: prevent to themselves or other person. <br/>Public Decency: prevent an offence being committed against. <br/>Loss or Damage: prevent to property. <br/>Address: enable to be ascertained (not readily available). <br/>Name: enable to be ascertained (not readily available)."
        dataCollection5.height = "auto"
        dataCollection5.width = "auto"
        dataCollection5.colour = "#FFF"
        dataCollection5.background = "#3287cd"
        dataCollection5.pos = "bottom-right"
        dataCollection5.icon = "success"
        number13 = 100000
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
        localValue42(text16, dataCollection5, number13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(cmgOperation2, text11, stateFlag14, text15)
  end

  -- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
  function number11()
    local localValue12, cmgOperation2
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, number11)
end
dataCollection3(dataCollection4, text5, rageUiOperation2, text6)
dataCollection3 = TriggerEvent
dataCollection4 = "chat:addSuggestion"
text5 = "/handbook"
rageUiOperation2 = "Toggle the Police Handbook"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
dataCollection3(dataCollection4, text5, rageUiOperation2)
dataCollection3 = RegisterNetEvent
dataCollection4 = "1e098f4492"
-- Beginner: this function handles network event "1e098f4492".

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "policehandbook"
  localValue5 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue1(localValue2, localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1e098f4492".
dataCollection3(dataCollection4, text5)
dataCollection3 = RegisterNetEvent
dataCollection4 = "playBreathalyserSound"
-- Beginner: this function handles network event "playBreathalyserSound".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = Citizen
  localValue2 = localValue2.SetTimeout
  localValue3 = 10000
  -- Beginner: this function handles network event "playBreathalyserSound".

  -- === HELPER FUNCTION: localValue4() ===
  function localValue4()
    local localValue12, cmgOperation2, text11, stateFlag14
    localValue12 = CMG
    localValue12 = localValue12.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue12 = localValue12()
    cmgOperation2 = localValue1
    cmgOperation2 = localValue12 - cmgOperation2
    cmgOperation2 = #cmgOperation2
    if cmgOperation2 <= 15 then
      text11 = SendNUIMessage
      stateFlag14 = {}
      stateFlag14.transactionType = "breathalyser"
      -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
      text11(stateFlag14)
    end
  end
  localValue2(localValue3, localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "playBreathalyserSound".
dataCollection3(dataCollection4, text5)
dataCollection3 = TriggerEvent
dataCollection4 = "chat:addSuggestion"
text5 = "/breathalyse"
rageUiOperation2 = "Breathalyse the nearest person"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
dataCollection3(dataCollection4, text5, rageUiOperation2)
dataCollection3 = RegisterNetEvent
dataCollection4 = "a9f0d96ed7"
-- Beginner: this function handles network event "a9f0d96ed7".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4
  localValue3 = localValue2
  localValue4 = RequestAnimDict
  localValue5 = "weapons@first_person@aim_rng@generic@projectile@shared@core"
  localValue4(localValue5)
  while true do
    localValue4 = HasAnimDictLoaded
    localValue5 = "weapons@first_person@aim_rng@generic@projectile@shared@core"
    localValue4 = localValue4(localValue5)
    if localValue4 then
      break
    end
    localValue4 = Wait
    localValue5 = 0
    localValue4(localValue5)
  end
  localValue4 = TaskPlayAnim
  localValue5 = CMG
  localValue5 = localValue5.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue5 = localValue5()
  localValue6 = "weapons@first_person@aim_rng@generic@projectile@shared@core"
  number11 = "idlerng_med"
  workingValue7 = 1.0
  cmgOperation7 = -1
  workingValue9 = 10000
  workingValue = 50
  text2 = 0
  stateFlag2 = false
  stateFlag3 = false
  stateFlag4 = false
  -- Beginner: Play an animation on a ped.
  localValue4(localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4)
  localValue4 = RemoveAnimDict
  localValue5 = "weapons@first_person@aim_rng@generic@projectile@shared@core"
  localValue4(localValue5)
  localValue4 = RageUI
  localValue4 = localValue4.Text
  localValue5 = {}
  localValue6 = "~w~You are now ~b~breathalysing ~b~"
  number11 = localValue3
  workingValue7 = "~w~, please wait for the results."
  localValue6 = localValue6 .. number11 .. workingValue7
  localValue5.message = localValue6
  localValue4(localValue5)
  localValue4 = Citizen
  localValue4 = localValue4.SetTimeout
  localValue5 = 10000

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, cmgOperation2, text11, stateFlag14, text15
    localValue12 = localValue1
    if localValue12 < 36 then
      localValue12 = RageUI
      localValue12 = localValue12.Text
      cmgOperation2 = {}
      text11 = "~w~The suspect has provided a legal breathalyser sample of ~b~"
      stateFlag14 = localValue1
      text15 = " ~w~\194\181g/100ml."
      text11 = text11 .. stateFlag14 .. text15
      cmgOperation2.message = text11
      localValue12(cmgOperation2)
    else
      localValue12 = RageUI
      localValue12 = localValue12.Text
      cmgOperation2 = {}
      text11 = "~w~The suspect has provided an illegal breathalyser sample of ~b~"
      stateFlag14 = localValue1
      text15 = " ~w~\194\181g/100ml."
      text11 = text11 .. stateFlag14 .. text15
      cmgOperation2.message = text11
      localValue12(cmgOperation2)
    end
  end
  localValue4(localValue5, localValue6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a9f0d96ed7".
dataCollection3(dataCollection4, text5)
dataCollection3 = RegisterNetEvent
dataCollection4 = "a1907f9798"
-- Beginner: this function handles network event "a1907f9798".

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2
  localValue1 = RageUI
  localValue1 = localValue1.Text
  localValue2 = {}
  localValue2.message = "~w~You are currently being ~b~breathalysed ~w~by a police officer."
  localValue1(localValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a1907f9798".
dataCollection3(dataCollection4, text5)
dataCollection3 = RegisterNetEvent
dataCollection4 = "13984c04c7"
-- Beginner: this function handles network event "13984c04c7".

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = IsPedInAnyVehicle
  localValue3 = localValue1
  localValue4 = true
  localValue2 = localValue2(localValue3, localValue4)
  if not localValue2 then
    localValue2 = GetEntityCoords
    localValue3 = localValue1
    -- Beginner: result below is entityCoords.
    localValue2 = localValue2(localValue3)
    localValue3 = GetActivePlayers
    localValue3 = localValue3()
    localValue4 = pairs
    localValue5 = localValue3
    localValue4, localValue5, localValue6, number11 = localValue4(localValue5)
    for workingValue7, cmgOperation7 in localValue4, localValue5, localValue6, number11 do
      workingValue9 = GetPlayerPed
      workingValue = cmgOperation7
      -- Beginner: result below is playerPed.
      workingValue9 = workingValue9(workingValue)
      if workingValue9 ~= localValue1 then
        workingValue9 = GetEntityCoords
        workingValue = GetPlayerPed
        text2 = cmgOperation7
        workingValue, text2, stateFlag2, stateFlag3, stateFlag4 = workingValue(text2)
        -- Beginner: result below is entityCoords.
        workingValue9 = workingValue9(workingValue, text2, stateFlag2, stateFlag3, stateFlag4)
        workingValue = localValue2 - workingValue9
        workingValue = #workingValue
        if workingValue < 3.0 then
          text2 = GetPlayerServerId
          stateFlag2 = cmgOperation7
          -- Beginner: result below is serverId.
          text2 = text2(stateFlag2)
          stateFlag2 = TriggerServerEvent
          stateFlag3 = "191ff5f709"
          stateFlag4 = text2
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "191ff5f709".
          stateFlag2(stateFlag3, stateFlag4)
          break
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "13984c04c7".
dataCollection3(dataCollection4, text5)
dataCollection3 = TriggerEvent
dataCollection4 = "chat:addSuggestion"
text5 = "/wc"
rageUiOperation2 = "Flash your police warrant card."
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
dataCollection3(dataCollection4, text5, rageUiOperation2)
dataCollection3 = TriggerEvent
dataCollection4 = "chat:addSuggestion"
text5 = "/wca"
rageUiOperation2 = "Flash your police warrant card."
dataCollection3(dataCollection4, text5, rageUiOperation2)
dataCollection3 = RegisterNetEvent
dataCollection4 = "2fa574f29e"
-- Beginner: this function handles network event "2fa574f29e".

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = CMG
  localValue2 = localValue2.loadModel
  localValue3 = 1409747695
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue3 = CMG
  localValue3 = localValue3.requestEntitySpawn
  localValue4 = "warrant_card_object"
  localValue3(localValue4)
  localValue3 = CreateObject
  localValue4 = localValue2
  localValue5 = 0
  localValue6 = 0
  number11 = 0
  workingValue7 = true
  cmgOperation7 = true
  workingValue9 = true
  -- Beginner: result below is objectEntity.
  localValue3 = localValue3(localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9)
  while true do
    localValue4 = DoesEntityExist
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if localValue4 then
      break
    end
    localValue4 = Wait
    localValue5 = 0
    localValue4(localValue5)
  end
  localValue4 = SetModelAsNoLongerNeeded
  localValue5 = localValue2
  localValue4(localValue5)
  localValue4 = FreezeEntityPosition
  localValue5 = localValue3
  localValue6 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue4(localValue5, localValue6)
  localValue4 = AttachEntityToEntity
  localValue5 = localValue3
  localValue6 = localValue1
  number11 = GetPedBoneIndex
  workingValue7 = localValue1
  cmgOperation7 = 58866
  number11 = number11(workingValue7, cmgOperation7)
  workingValue7 = 0.03
  cmgOperation7 = -0.05
  workingValue9 = -0.044
  workingValue = 0.0
  text2 = 90.0
  stateFlag2 = 25.0
  stateFlag3 = true
  stateFlag4 = true
  stateFlag5 = false
  stateFlag6 = true
  stateFlag7 = 1
  stateFlag8 = true
  -- Beginner: Attach one entity to another entity.
  localValue4(localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8)
  localValue4 = Wait
  localValue5 = 3000
  localValue4(localValue5)
  localValue4 = DeleteObject
  localValue5 = localValue3
  localValue4(localValue5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2fa574f29e".
dataCollection3(dataCollection4, text5)
dataCollection3 = vector3
dataCollection4 = 463.30804443359
text5 = -1007.4953613281
rageUiOperation2 = 35.930892944336
dataCollection3 = dataCollection3(dataCollection4, text5, rageUiOperation2)
dataCollection4 = {}
text5 = "Commander"
rageUiOperation2 = "Dep. Asst. Commissioner"
text6 = "Assistant Commissioner"
text7 = "Deputy Commissioner"
rageUiOperation3 = "Commissioner"
rageUiOperation4 = "ctcommand"
dataCollection4[1] = text5
dataCollection4[2] = rageUiOperation2
dataCollection4[3] = text6
dataCollection4[4] = text7
dataCollection4[5] = rageUiOperation3
dataCollection4[6] = rageUiOperation4

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = 1
  localValue2 = dataCollection4
  localValue2 = #localValue2
  localValue3 = 1
  for localValue4 = localValue1, localValue2, localValue3 do
    localValue5 = CMG
    localValue5 = localValue5.hasClientGroup
    localValue6 = dataCollection4
    localValue6 = localValue6[localValue4]
    localValue5 = localValue5(localValue6)
    if localValue5 then
      localValue5 = true
      return localValue5
    end
  end
  localValue1 = false
  return localValue1
end
rageUiOperation2 = RMenu
rageUiOperation2 = rageUiOperation2.Add
text6 = "goldcommandwarrants"
text7 = "main"
rageUiOperation3 = RageUI
rageUiOperation3 = rageUiOperation3.CreateMenu
rageUiOperation4 = ""
text8 = "Gold Command: Warrants"
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuWidth
rageUiOperation5 = rageUiOperation5()
rageUiOperation6 = CMG
rageUiOperation6 = rageUiOperation6.getRageUIMenuHeight
rageUiOperation6 = rageUiOperation6()
text9 = "cmg_jobselectorui"
text10 = "metpd"
rageUiOperation3, rageUiOperation4, text8, rageUiOperation5, rageUiOperation6, text9, text10, rageUiOperation7, rageUiOperation8, cmgOperation3, text12, cmgOperation4, cmgOperation5, rageUiOperation9, rageUiOperation10, text13, text14, rageUiOperation11, rageUiOperation12, createVector3, createVector32, createVector33, createVector34, createVector35, createVector36, createVector37, number6, number7, number8, number9, createVector38, createVector39, createVector310, createVector311, createVector312, number10, rageUiOperation13, text17, text18, rageUiOperation14, rageUiOperation15, text19, text20 = rageUiOperation3(rageUiOperation4, text8, rageUiOperation5, rageUiOperation6, text9, text10)
rageUiOperation2(text6, text7, rageUiOperation3, rageUiOperation4, text8, rageUiOperation5, rageUiOperation6, text9, text10, rageUiOperation7, rageUiOperation8, cmgOperation3, text12, cmgOperation4, cmgOperation5, rageUiOperation9, rageUiOperation10, text13, text14, rageUiOperation11, rageUiOperation12, createVector3, createVector32, createVector33, createVector34, createVector35, createVector36, createVector37, number6, number7, number8, number9, createVector38, createVector39, createVector310, createVector311, createVector312, number10, rageUiOperation13, text17, text18, rageUiOperation14, rageUiOperation15, text19, text20)
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateWhile
text6 = 1.0
text7 = RMenu
rageUiOperation3 = text7
text7 = text7.Get
rageUiOperation4 = "goldcommandwarrants"
text8 = "main"
-- Beginner: result below is menu.
text7 = text7(rageUiOperation3, rageUiOperation4, text8)
rageUiOperation3 = nil

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
function rageUiOperation4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "goldcommandwarrants"
  localValue5 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, cmgOperation2, text11, stateFlag14, text15, modelHash
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    cmgOperation2 = "Take UK GOV Warrant"
    text11 = "House raid warrant (one per use)."
    stateFlag14 = {}
    stateFlag14.RightLabel = "\226\134\146"
    text15 = true

    -- === HELPER FUNCTION: modelHash(localValue13, localValue22, localValue32) ===
    function modelHash(localValue13, localValue22, localValue32)
      local localValue42, text16
      if localValue32 then
        localValue42 = TriggerServerEvent
        text16 = "864baba06d"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "864baba06d".
        localValue42(text16)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(cmgOperation2, text11, stateFlag14, text15, modelHash)
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
end
rageUiOperation2(text6, text7, rageUiOperation3, rageUiOperation4)
rageUiOperation2 = TriggerEvent
text6 = "chat:addSuggestion"
text7 = "/warrants"
rageUiOperation3 = "Open Gold Command warrant menu (on duty)."
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
rageUiOperation2(text6, text7, rageUiOperation3)
rageUiOperation2 = RegisterCommand
text6 = "warrants"
-- Beginner: this function is the command handler for "warrants".

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = text5
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = tCMG
    localValue1 = localValue1.notify
    localValue2 = "~r~You are not authorised to use this."
    -- Beginner: Show a notification to the player.
    localValue1(localValue2)
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "police.onduty.permission"
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue1 = tCMG
    localValue1 = localValue1.notify
    localValue2 = "~r~You must be on duty."
    localValue1(localValue2)
    return
  end
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "goldcommandwarrants"
  localValue5 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue1(localValue2, localValue3)
end
rageUiOperation3 = false
-- Beginner: Register a chat/console command. Event/command: "warrants".
rageUiOperation2(text6, text7, rageUiOperation3)
rageUiOperation2 = false

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag11, stateFlag12, number3, number4, number5

  -- === HELPER FUNCTION: localValue1() ===
  function localValue1()
    local localValue12, cmgOperation2
    localValue12 = drawNativeNotification
    cmgOperation2 = "Press ~INPUT_PICKUP~ for Gold Command warrants"
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue12(cmgOperation2)
  end

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local localValue12, cmgOperation2, text11, stateFlag14, text15
    localValue12 = RageUI
    localValue12 = localValue12.Visible
    cmgOperation2 = RMenu
    text11 = cmgOperation2
    cmgOperation2 = cmgOperation2.Get
    stateFlag14 = "goldcommandwarrants"
    text15 = "main"
    -- Beginner: result below is menu.
    cmgOperation2 = cmgOperation2(text11, stateFlag14, text15)
    text11 = false
    localValue12(cmgOperation2, text11)
  end

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, cmgOperation2, text11, stateFlag14, text15
    localValue12 = IsControlJustPressed
    cmgOperation2 = 1
    text11 = 51
    localValue12 = localValue12(cmgOperation2, text11)
    if localValue12 then
      localValue12 = CMG
      localValue12 = localValue12.hasClientPermission
      cmgOperation2 = "police.onduty.permission"
      localValue12 = localValue12(cmgOperation2)
      if not localValue12 then
        localValue12 = tCMG
        localValue12 = localValue12.notify
        cmgOperation2 = "~r~You must be on duty."
        -- Beginner: Show a notification to the player.
        localValue12(cmgOperation2)
        return
      end
      localValue12 = RageUI
      localValue12 = localValue12.Visible
      cmgOperation2 = RMenu
      text11 = cmgOperation2
      cmgOperation2 = cmgOperation2.Get
      stateFlag14 = "goldcommandwarrants"
      text15 = "main"
      -- Beginner: result below is menu.
      cmgOperation2 = cmgOperation2(text11, stateFlag14, text15)
      text11 = true
      localValue12(cmgOperation2, text11)
    end
  end
  localValue4 = CMG
  localValue4 = localValue4.createArea
  localValue5 = "goldcommand_warrant_pickup"
  localValue6 = dataCollection3
  number11 = 1.5
  workingValue7 = 6
  cmgOperation7 = localValue1
  workingValue9 = localValue2
  workingValue = localValue3
  -- Beginner: Create an interaction area around a world position.
  localValue4(localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue)
  localValue4 = tCMG
  localValue4 = localValue4.setNamedMarker
  localValue5 = "goldcommand_warrant_pickup"
  localValue6 = dataCollection3.x
  number11 = dataCollection3.y
  workingValue7 = dataCollection3.z
  workingValue7 = workingValue7 - 0.98
  cmgOperation7 = 1.0001
  workingValue9 = 1.0001
  workingValue = 0.5001
  text2 = 215
  stateFlag2 = 190
  stateFlag3 = 120
  stateFlag4 = 200
  stateFlag5 = 20.0
  stateFlag6 = 27
  stateFlag7 = true
  stateFlag8 = false
  stateFlag9 = false
  stateFlag11 = nil
  stateFlag12 = nil
  number3 = 0.0
  number4 = 0.0
  number5 = 0.0
  localValue4(localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag11, stateFlag12, number3, number4, number5)
end

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = tCMG
  localValue1 = localValue1.removeArea
  localValue2 = "goldcommand_warrant_pickup"
  localValue1(localValue2)
  localValue1 = tCMG
  localValue1 = localValue1.removeNamedMarker
  localValue2 = "goldcommand_warrant_pickup"
  localValue1(localValue2)
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "goldcommandwarrants"
  localValue5 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = false
  localValue1(localValue2, localValue3)
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2
  localValue1 = text5
  localValue1 = localValue1()
  if localValue1 then
    localValue1 = rageUiOperation2
    if not localValue1 then
      localValue1 = text6
      localValue1()
      localValue1 = true
      rageUiOperation2 = localValue1
    end
  else
    localValue1 = rageUiOperation2
    if localValue1 then
      localValue1 = text7
      localValue1()
      localValue1 = false
      rageUiOperation2 = localValue1
    end
  end
end
rageUiOperation4 = RMenu
rageUiOperation4 = rageUiOperation4.Add
text8 = "vehicleExtraMenu"
rageUiOperation5 = "main"
rageUiOperation6 = RageUI
rageUiOperation6 = rageUiOperation6.CreateMenu
text9 = "Vehicle Extra Menu"
text10 = "~b~Development"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8, cmgOperation3, text12, cmgOperation4, cmgOperation5, rageUiOperation9, rageUiOperation10, text13, text14, rageUiOperation11, rageUiOperation12, createVector3, createVector32, createVector33, createVector34, createVector35, createVector36, createVector37, number6, number7, number8, number9, createVector38, createVector39, createVector310, createVector311, createVector312, number10, rageUiOperation13, text17, text18, rageUiOperation14, rageUiOperation15, text19, text20 = rageUiOperation8()
rageUiOperation6, text9, text10, rageUiOperation7, rageUiOperation8, cmgOperation3, text12, cmgOperation4, cmgOperation5, rageUiOperation9, rageUiOperation10, text13, text14, rageUiOperation11, rageUiOperation12, createVector3, createVector32, createVector33, createVector34, createVector35, createVector36, createVector37, number6, number7, number8, number9, createVector38, createVector39, createVector310, createVector311, createVector312, number10, rageUiOperation13, text17, text18, rageUiOperation14, rageUiOperation15, text19, text20 = rageUiOperation6(text9, text10, rageUiOperation7, rageUiOperation8, cmgOperation3, text12, cmgOperation4, cmgOperation5, rageUiOperation9, rageUiOperation10, text13, text14, rageUiOperation11, rageUiOperation12, createVector3, createVector32, createVector33, createVector34, createVector35, createVector36, createVector37, number6, number7, number8, number9, createVector38, createVector39, createVector310, createVector311, createVector312, number10, rageUiOperation13, text17, text18, rageUiOperation14, rageUiOperation15, text19, text20)
rageUiOperation4(text8, rageUiOperation5, rageUiOperation6, text9, text10, rageUiOperation7, rageUiOperation8, cmgOperation3, text12, cmgOperation4, cmgOperation5, rageUiOperation9, rageUiOperation10, text13, text14, rageUiOperation11, rageUiOperation12, createVector3, createVector32, createVector33, createVector34, createVector35, createVector36, createVector37, number6, number7, number8, number9, createVector38, createVector39, createVector310, createVector311, createVector312, number10, rageUiOperation13, text17, text18, rageUiOperation14, rageUiOperation15, text19, text20)
rageUiOperation4 = RegisterCommand
text8 = "extras"
-- Beginner: this function is the command handler for "extras".

-- === HELPER FUNCTION (decompiler name: rageUiOperation5; parameters: none) ===
function rageUiOperation5()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = CMG
  localValue1 = localValue1.getClientUserId
  -- Beginner: result below is userId.
  localValue1 = localValue1()
  if localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.isDeveloper
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = RageUI
      localValue2 = localValue2.Visible
      localValue3 = RMenu
      localValue4 = localValue3
      localValue3 = localValue3.Get
      localValue5 = "vehicleExtraMenu"
      localValue6 = "main"
      -- Beginner: result below is menu.
      localValue3 = localValue3(localValue4, localValue5, localValue6)
      localValue4 = true
      localValue2(localValue3, localValue4)
    end
  end
end
rageUiOperation6 = false
-- Beginner: Register a chat/console command. Event/command: "extras".
rageUiOperation4(text8, rageUiOperation5, rageUiOperation6)
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateWhile
text8 = 1.0
rageUiOperation5 = RMenu
rageUiOperation6 = rageUiOperation5
rageUiOperation5 = rageUiOperation5.Get
text9 = "vehicleExtraMenu"
text10 = "main"
-- Beginner: result below is menu.
rageUiOperation5 = rageUiOperation5(rageUiOperation6, text9, text10)
rageUiOperation6 = nil

-- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
function text9()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, number11
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "vehicleExtraMenu"
  localValue5 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, cmgOperation2, text11, stateFlag14, text15, modelHash, number12, number14, stateFlag19, cmgOperation8
    localValue12 = CMG
    localValue12 = localValue12.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    localValue12 = localValue12()
    if 0 ~= localValue12 then
      cmgOperation2 = RMenu
      text11 = cmgOperation2
      cmgOperation2 = cmgOperation2.Get
      stateFlag14 = "vehicleExtraMenu"
      text15 = "main"
      -- Beginner: result below is menu.
      cmgOperation2 = cmgOperation2(text11, stateFlag14, text15)
      text11 = cmgOperation2
      cmgOperation2 = cmgOperation2.SetSubtitle
      stateFlag14 = "Vehicle Model: "
      text15 = GetDisplayNameFromVehicleModel
      modelHash = GetEntityModel
      number12 = localValue12
      modelHash, number12, number14, stateFlag19, cmgOperation8 = modelHash(number12)
      text15 = text15(modelHash, number12, number14, stateFlag19, cmgOperation8)
      stateFlag14 = stateFlag14 .. text15
      cmgOperation2(text11, stateFlag14)
      cmgOperation2 = 1
      text11 = 12
      stateFlag14 = 1
      for text15 = cmgOperation2, text11, stateFlag14 do
        modelHash = DoesExtraExist
        number12 = localValue12
        number14 = text15
        modelHash = modelHash(number12, number14)
        if modelHash then
          modelHash = IsVehicleExtraTurnedOn
          number12 = localValue12
          number14 = text15
          modelHash = modelHash(number12, number14)
          if modelHash then
            modelHash = RageUI
            modelHash = modelHash.Button
            number12 = "Disable Extra "
            number14 = text15
            number12 = number12 .. number14
            number14 = nil
            stateFlag19 = true

            -- === HELPER FUNCTION (decompiler name: cmgOperation8; parameters: localValue13, localValue22, localValue32) ===
            function cmgOperation8(localValue13, localValue22, localValue32)
              local localValue42, text16, dataCollection5, number13
              if localValue32 then
                localValue42 = SetVehicleExtra
                text16 = localValue12
                dataCollection5 = text15
                number13 = true
                localValue42(text16, dataCollection5, number13)
              end
            end
            -- Beginner: Draw a selectable RageUI menu button.
            modelHash(number12, number14, stateFlag19, cmgOperation8)
          else
            modelHash = RageUI
            modelHash = modelHash.Button
            number12 = "Enable Extra "
            number14 = text15
            number12 = number12 .. number14
            number14 = nil
            stateFlag19 = true

            -- === HELPER FUNCTION (decompiler name: cmgOperation8; parameters: localValue13, localValue22, localValue32) ===
            function cmgOperation8(localValue13, localValue22, localValue32)
              local localValue42, text16, dataCollection5, number13
              if localValue32 then
                localValue42 = SetVehicleExtra
                text16 = localValue12
                dataCollection5 = text15
                number13 = false
                localValue42(text16, dataCollection5, number13)
              end
            end
            -- Beginner: Draw a selectable RageUI menu button.
            modelHash(number12, number14, stateFlag19, cmgOperation8)
          end
        end
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
  function number11()
    local localValue12, cmgOperation2
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, number11)
end
rageUiOperation4(text8, rageUiOperation5, rageUiOperation6, text9)
rageUiOperation4 = RMenu
rageUiOperation4 = rageUiOperation4.Add
text8 = "incidentsupportunit"
rageUiOperation5 = "main"
rageUiOperation6 = RageUI
rageUiOperation6 = rageUiOperation6.CreateMenu
text9 = "Incident Support Unit"
text10 = "~b~Control Panel"
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuWidth
rageUiOperation7 = rageUiOperation7()
rageUiOperation8 = CMG
rageUiOperation8 = rageUiOperation8.getRageUIMenuHeight
rageUiOperation8, cmgOperation3, text12, cmgOperation4, cmgOperation5, rageUiOperation9, rageUiOperation10, text13, text14, rageUiOperation11, rageUiOperation12, createVector3, createVector32, createVector33, createVector34, createVector35, createVector36, createVector37, number6, number7, number8, number9, createVector38, createVector39, createVector310, createVector311, createVector312, number10, rageUiOperation13, text17, text18, rageUiOperation14, rageUiOperation15, text19, text20 = rageUiOperation8()
rageUiOperation6, text9, text10, rageUiOperation7, rageUiOperation8, cmgOperation3, text12, cmgOperation4, cmgOperation5, rageUiOperation9, rageUiOperation10, text13, text14, rageUiOperation11, rageUiOperation12, createVector3, createVector32, createVector33, createVector34, createVector35, createVector36, createVector37, number6, number7, number8, number9, createVector38, createVector39, createVector310, createVector311, createVector312, number10, rageUiOperation13, text17, text18, rageUiOperation14, rageUiOperation15, text19, text20 = rageUiOperation6(text9, text10, rageUiOperation7, rageUiOperation8, cmgOperation3, text12, cmgOperation4, cmgOperation5, rageUiOperation9, rageUiOperation10, text13, text14, rageUiOperation11, rageUiOperation12, createVector3, createVector32, createVector33, createVector34, createVector35, createVector36, createVector37, number6, number7, number8, number9, createVector38, createVector39, createVector310, createVector311, createVector312, number10, rageUiOperation13, text17, text18, rageUiOperation14, rageUiOperation15, text19, text20)
rageUiOperation4(text8, rageUiOperation5, rageUiOperation6, text9, text10, rageUiOperation7, rageUiOperation8, cmgOperation3, text12, cmgOperation4, cmgOperation5, rageUiOperation9, rageUiOperation10, text13, text14, rageUiOperation11, rageUiOperation12, createVector3, createVector32, createVector33, createVector34, createVector35, createVector36, createVector37, number6, number7, number8, number9, createVector38, createVector39, createVector310, createVector311, createVector312, number10, rageUiOperation13, text17, text18, rageUiOperation14, rageUiOperation15, text19, text20)
rageUiOperation4 = {}
rageUiOperation4.active = false
rageUiOperation4.signUp = false
rageUiOperation4.flashing = false
rageUiOperation4.accidentSign = false
rageUiOperation4.aheadSign = false
text8 = RageUI
text8 = text8.CreateWhile
rageUiOperation5 = 1.0
rageUiOperation6 = RMenu
text9 = rageUiOperation6
rageUiOperation6 = rageUiOperation6.Get
text10 = "incidentsupportunit"
rageUiOperation7 = "main"
-- Beginner: result below is menu.
rageUiOperation6 = rageUiOperation6(text9, text10, rageUiOperation7)
text9 = nil

-- === HELPER FUNCTION (decompiler name: text10; parameters: none) ===
function text10()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, number11
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "incidentsupportunit"
  localValue5 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, cmgOperation2, text11, stateFlag14, text15, modelHash, number12
    localValue12 = CMG
    localValue12 = localValue12.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    localValue12 = localValue12()
    cmgOperation2 = GetEntityModel
    text11 = localValue12
    -- Beginner: result below is modelHash.
    cmgOperation2 = cmgOperation2(text11)
    if 1462516421 == cmgOperation2 then
      rageUiOperation4.active = true
      cmgOperation2 = RageUI
      cmgOperation2 = cmgOperation2.Checkbox
      text11 = "Vehicle Sign Up"
      stateFlag14 = "Toggle the vehicle sign on/off"
      text15 = rageUiOperation4.signUp
      modelHash = {}
      number12 = RageUI
      number12 = number12.CheckboxStyle
      number12 = number12.Car
      modelHash.Style = number12

      -- === HELPER FUNCTION (decompiler name: number12; parameters: localValue13, localValue22, localValue32, localValue42) ===
      function number12(localValue13, localValue22, localValue32, localValue42)
        local text16, dataCollection5, number13, stateFlag18
        if localValue22 then
          text16 = rageUiOperation4.signUp
          if text16 then
            text16 = RageUI
            text16 = text16.Text
            dataCollection5 = {}
            number13 = string
            number13 = number13.format
            stateFlag18 = "~w~Sign is now ~g~~h~up"
            number13 = number13(stateFlag18)
            dataCollection5.message = number13
            text16(dataCollection5)
            text16 = SetVehicleExtra
            dataCollection5 = localValue12
            number13 = 12
            stateFlag18 = false
            text16(dataCollection5, number13, stateFlag18)
            text16 = SetVehicleExtra
            dataCollection5 = localValue12
            number13 = 11
            stateFlag18 = true
            text16(dataCollection5, number13, stateFlag18)
            text16 = SetVehicleExtra
            dataCollection5 = localValue12
            number13 = 5
            stateFlag18 = true
            text16(dataCollection5, number13, stateFlag18)
            text16 = SetVehicleExtra
            dataCollection5 = localValue12
            number13 = 6
            stateFlag18 = true
            text16(dataCollection5, number13, stateFlag18)
          else
            text16 = RageUI
            text16 = text16.Text
            dataCollection5 = {}
            number13 = string
            number13 = number13.format
            stateFlag18 = "~w~Sign is now ~g~~h~down"
            number13 = number13(stateFlag18)
            dataCollection5.message = number13
            text16(dataCollection5)
            text16 = SetVehicleExtra
            dataCollection5 = localValue12
            number13 = 12
            stateFlag18 = true
            text16(dataCollection5, number13, stateFlag18)
            text16 = SetVehicleExtra
            dataCollection5 = localValue12
            number13 = 5
            stateFlag18 = true
            text16(dataCollection5, number13, stateFlag18)
            text16 = SetVehicleExtra
            dataCollection5 = localValue12
            number13 = 6
            stateFlag18 = true
            text16(dataCollection5, number13, stateFlag18)
            text16 = SetVehicleExtra
            dataCollection5 = localValue12
            number13 = 11
            stateFlag18 = false
            text16(dataCollection5, number13, stateFlag18)
          end
        end
        rageUiOperation4.signUp = localValue42
      end
      -- Beginner: Draw a RageUI checkbox.
      cmgOperation2(text11, stateFlag14, text15, modelHash, number12)
      cmgOperation2 = rageUiOperation4.signUp
      if cmgOperation2 then
        cmgOperation2 = RageUI
        cmgOperation2 = cmgOperation2.Checkbox
        text11 = "Accident Message"
        stateFlag14 = "Toggle the vehicle accident sign on/off"
        text15 = rageUiOperation4.accidentSign
        modelHash = {}
        number12 = RageUI
        number12 = number12.CheckboxStyle
        number12 = number12.Car
        modelHash.Style = number12

        -- === HELPER FUNCTION (decompiler name: number12; parameters: localValue13, localValue22, localValue32, localValue42) ===
        function number12(localValue13, localValue22, localValue32, localValue42)
          local text16, dataCollection5, number13, stateFlag18
          if localValue22 then
            text16 = rageUiOperation4.accidentSign
            if text16 then
              text16 = RageUI
              text16 = text16.Text
              dataCollection5 = {}
              number13 = string
              number13 = number13.format
              stateFlag18 = "~w~Accident Message is now ~g~~h~on"
              number13 = number13(stateFlag18)
              dataCollection5.message = number13
              text16(dataCollection5)
              text16 = SetVehicleExtra
              dataCollection5 = localValue12
              number13 = 6
              stateFlag18 = false
              text16(dataCollection5, number13, stateFlag18)
            else
              text16 = RageUI
              text16 = text16.Text
              dataCollection5 = {}
              number13 = string
              number13 = number13.format
              stateFlag18 = "~w~Accident Message now ~g~~h~off"
              number13 = number13(stateFlag18)
              dataCollection5.message = number13
              text16(dataCollection5)
              text16 = SetVehicleExtra
              dataCollection5 = localValue12
              number13 = 6
              stateFlag18 = true
              text16(dataCollection5, number13, stateFlag18)
              rageUiOperation4.flashing = false
            end
          end
          rageUiOperation4.accidentSign = localValue42
        end
        -- Beginner: Draw a RageUI checkbox.
        cmgOperation2(text11, stateFlag14, text15, modelHash, number12)
        cmgOperation2 = RageUI
        cmgOperation2 = cmgOperation2.Checkbox
        text11 = "Ahead Message"
        stateFlag14 = "Toggle the vehicle ahead sign on/off"
        text15 = rageUiOperation4.aheadSign
        modelHash = {}
        number12 = RageUI
        number12 = number12.CheckboxStyle
        number12 = number12.Car
        modelHash.Style = number12

        -- === HELPER FUNCTION (decompiler name: number12; parameters: localValue13, localValue22, localValue32, localValue42) ===
        function number12(localValue13, localValue22, localValue32, localValue42)
          local text16, dataCollection5, number13, stateFlag18
          if localValue22 then
            text16 = rageUiOperation4.aheadSign
            if text16 then
              text16 = RageUI
              text16 = text16.Text
              dataCollection5 = {}
              number13 = string
              number13 = number13.format
              stateFlag18 = "~w~Ahead Message is now ~g~~h~on"
              number13 = number13(stateFlag18)
              dataCollection5.message = number13
              text16(dataCollection5)
              text16 = SetVehicleExtra
              dataCollection5 = localValue12
              number13 = 5
              stateFlag18 = false
              text16(dataCollection5, number13, stateFlag18)
            else
              text16 = RageUI
              text16 = text16.Text
              dataCollection5 = {}
              number13 = string
              number13 = number13.format
              stateFlag18 = "~w~Ahead Message now ~g~~h~off"
              number13 = number13(stateFlag18)
              dataCollection5.message = number13
              text16(dataCollection5)
              text16 = SetVehicleExtra
              dataCollection5 = localValue12
              number13 = 5
              stateFlag18 = true
              text16(dataCollection5, number13, stateFlag18)
            end
          end
          rageUiOperation4.aheadSign = localValue42
        end
        -- Beginner: Draw a RageUI checkbox.
        cmgOperation2(text11, stateFlag14, text15, modelHash, number12)
        cmgOperation2 = RageUI
        cmgOperation2 = cmgOperation2.Checkbox
        text11 = "Matrix Flash"
        stateFlag14 = "Toggle the flashing of the matrix sign ahead sign on/off"
        text15 = rageUiOperation4.flashing
        modelHash = {}
        number12 = RageUI
        number12 = number12.CheckboxStyle
        number12 = number12.Car
        modelHash.Style = number12

        -- === HELPER FUNCTION (decompiler name: number12; parameters: localValue13, localValue22, localValue32, localValue42) ===
        function number12(localValue13, localValue22, localValue32, localValue42)
          local text16, dataCollection5, number13, stateFlag18
          if localValue22 then
            text16 = rageUiOperation4.flashing
            if text16 then
              text16 = RageUI
              text16 = text16.Text
              dataCollection5 = {}
              number13 = string
              number13 = number13.format
              stateFlag18 = "~w~Flashing is now ~g~~h~enabled"
              number13 = number13(stateFlag18)
              dataCollection5.message = number13
              text16(dataCollection5)
              rageUiOperation4.flashing = true
              rageUiOperation4.active = true
            else
              text16 = RageUI
              text16 = text16.Text
              dataCollection5 = {}
              number13 = string
              number13 = number13.format
              stateFlag18 = "~w~Flashing now ~g~~h~disabled"
              number13 = number13(stateFlag18)
              dataCollection5.message = number13
              text16(dataCollection5)
            end
          end
          rageUiOperation4.flashing = localValue42
        end
        -- Beginner: Draw a RageUI checkbox.
        cmgOperation2(text11, stateFlag14, text15, modelHash, number12)
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
  function number11()
    local localValue12, cmgOperation2
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, number11)
end
text8(rageUiOperation5, rageUiOperation6, text9, text10)
text8 = RegisterCommand
rageUiOperation5 = "isu"
-- Beginner: this function is the command handler for "isu".

-- === HELPER FUNCTION (decompiler name: rageUiOperation6; parameters: none) ===
function rageUiOperation6()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "incidentsupportunit"
  localValue5 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue1(localValue2, localValue3)
end
text9 = false
-- Beginner: Register a chat/console command. Event/command: "isu".
text8(rageUiOperation5, rageUiOperation6, text9)
text8 = RegisterNetEvent
rageUiOperation5 = "a3b5d904fa"
-- Beginner: this function handles network event "a3b5d904fa".

-- === HELPER FUNCTION (decompiler name: rageUiOperation6; parameters: none) ===
function rageUiOperation6()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2
  localValue1 = tCMG
  localValue1 = localValue1.setCanAnim
  localValue2 = false
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.loadAnimDict
  localValue2 = "custom@police"
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue1(localValue2)
  localValue1 = TaskPlayAnim
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = "custom@police"
  localValue4 = "police"
  localValue5 = 8.0
  localValue6 = 8.0
  number11 = -1
  workingValue7 = 0
  cmgOperation7 = 0.0
  workingValue9 = false
  workingValue = false
  text2 = false
  -- Beginner: Play an animation on a ped.
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2)
  localValue1 = RemoveAnimDict
  localValue2 = "custom@police"
  localValue1(localValue2)
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  while true do
    localValue2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue2 = localValue2()
    localValue2 = localValue2 - localValue1
    localValue3 = 10000
    if not (localValue2 < localValue3) then
      break
    end
    localValue2 = IsDisabledControlJustPressed
    localValue3 = 0
    localValue4 = 73
    localValue2 = localValue2(localValue3, localValue4)
    if localValue2 then
      localValue2 = TriggerServerEvent
      localValue3 = "9593b2d7eb"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9593b2d7eb".
      localValue2(localValue3)
      return
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 0
    localValue2(localValue3)
  end
  localValue2 = tCMG
  localValue2 = localValue2.setCanAnim
  localValue3 = true
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a3b5d904fa".
text8(rageUiOperation5, rageUiOperation6)
text8 = false
rageUiOperation5 = RegisterNetEvent
rageUiOperation6 = "a31306b7df"
-- Beginner: this function handles network event "a31306b7df".

-- === HELPER FUNCTION (decompiler name: text9; parameters: localValue1) ===
function text9(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag11
  localValue2 = GetPlayerFromServerId
  localValue3 = localValue1
  -- Beginner: result below is playerIndex.
  localValue2 = localValue2(localValue3)
  if -1 == localValue2 then
    return
  end
  localValue3 = GetPlayerPed
  localValue4 = localValue2
  -- Beginner: result below is playerPed.
  localValue3 = localValue3(localValue4)
  if 0 == localValue3 then
    return
  end
  localValue4 = CMG
  localValue4 = localValue4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue4 = localValue4()
  localValue5 = true
  text8 = localValue5
  localValue5 = tCMG
  localValue5 = localValue5.setCanAnim
  localValue6 = false
  localValue5(localValue6)
  localValue5 = CMG
  localValue5 = localValue5.loadAnimDict
  localValue6 = "custom@suspect"
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue5(localValue6)
  localValue5 = CMG
  localValue5 = localValue5.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue5 = localValue5()
  localValue6 = AttachEntityToEntity
  number11 = localValue5
  workingValue7 = localValue3
  cmgOperation7 = -1
  workingValue9 = -0.05
  workingValue = 0.5
  text2 = 0.0
  stateFlag2 = 0.0
  stateFlag3 = 0.0
  stateFlag4 = 0.0
  stateFlag5 = false
  stateFlag6 = false
  stateFlag7 = false
  stateFlag8 = false
  stateFlag9 = 2
  stateFlag11 = false
  -- Beginner: Attach one entity to another entity.
  localValue6(number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag11)
  localValue6 = TaskPlayAnim
  number11 = localValue5
  workingValue7 = "custom@suspect"
  cmgOperation7 = "suspect"
  workingValue9 = 8.0
  workingValue = 8.0
  text2 = -1
  stateFlag2 = 2
  stateFlag3 = 0.0
  stateFlag4 = false
  stateFlag5 = false
  stateFlag6 = false
  -- Beginner: Play an animation on a ped.
  localValue6(number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6)
  localValue6 = RemoveAnimDict
  number11 = "custom@suspect"
  localValue6(number11)
  localValue6 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue6 = localValue6()
  while true do
    number11 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    number11 = number11()
    number11 = number11 - localValue6
    workingValue7 = 10000
    if not (number11 < workingValue7) then
      break
    end
    number11 = text8
    if not number11 then
      number11 = SetEntityCoordsNoOffset
      workingValue7 = localValue5
      cmgOperation7 = localValue4.x
      workingValue9 = localValue4.y
      workingValue = localValue4.z
      text2 = true
      stateFlag2 = false
      stateFlag3 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      number11(workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3)
      return
    end
    number11 = Citizen
    number11 = number11.Wait
    workingValue7 = 0
    number11(workingValue7)
  end
  number11 = SetEntityCoordsNoOffset
  workingValue7 = localValue5
  cmgOperation7 = localValue4.x
  workingValue9 = localValue4.y
  workingValue = localValue4.z
  text2 = true
  stateFlag2 = false
  stateFlag3 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  number11(workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3)
  number11 = false
  text8 = number11
  number11 = tCMG
  number11 = number11.setCanAnim
  workingValue7 = true
  number11(workingValue7)
  number11 = DetachEntity
  workingValue7 = localValue5
  cmgOperation7 = false
  workingValue9 = false
  number11(workingValue7, cmgOperation7, workingValue9)
  number11 = ClearPedTasks
  workingValue7 = localValue5
  number11(workingValue7)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a31306b7df".
rageUiOperation5(rageUiOperation6, text9)
rageUiOperation5 = RegisterNetEvent
rageUiOperation6 = "9593b2d7eb"
-- Beginner: this function handles network event "9593b2d7eb".

-- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
function text9()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = false
  text8 = localValue1
  localValue1 = tCMG
  localValue1 = localValue1.setCanAnim
  localValue2 = true
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = DetachEntity
  localValue3 = localValue1
  localValue4 = false
  localValue5 = false
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = ClearPedTasks
  localValue3 = localValue1
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9593b2d7eb".
rageUiOperation5(rageUiOperation6, text9)
rageUiOperation5 = ""
rageUiOperation6 = ""
text9 = false
text10 = ""
rageUiOperation7 = ""
rageUiOperation8 = false
cmgOperation3 = RegisterNetEvent
text12 = "93866d3aa7"
-- Beginner: this function handles network event "93866d3aa7".

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2) ===
function cmgOperation4(localValue1, localValue2)
  local localValue3
  rageUiOperation5 = localValue2
  rageUiOperation6 = localValue1
  localValue3 = true
  text9 = localValue3
end
cmgOperation3(text12, cmgOperation4)
cmgOperation3 = RegisterNetEvent
text12 = "7c137db0a7"
-- Beginner: this function handles network event "7c137db0a7".

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2) ===
function cmgOperation4(localValue1, localValue2)
  local localValue3
  text10 = localValue2
  rageUiOperation7 = localValue1
  localValue3 = true
  rageUiOperation8 = localValue3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7c137db0a7".
cmgOperation3(text12, cmgOperation4)
cmgOperation3 = CMG
-- Beginner: this function handles network event "7c137db0a7".

-- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
function text12()
  local localValue1, localValue2
  localValue1 = rageUiOperation6
  return localValue1
end
cmgOperation3.getPoliceCallsign = text12
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
function text12()
  local localValue1, localValue2
  localValue1 = rageUiOperation5
  return localValue1
end
cmgOperation3.getPoliceRank = text12
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
function text12()
  local localValue1, localValue2
  localValue1 = text9
  return localValue1
end
cmgOperation3.hasPoliceCallsign = text12
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
function text12()
  local localValue1, localValue2
  localValue1 = rageUiOperation7
  return localValue1
end
cmgOperation3.getHmpCallsign = text12
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
function text12()
  local localValue1, localValue2
  localValue1 = text10
  return localValue1
end
cmgOperation3.getHmpRank = text12
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
function text12()
  local localValue1, localValue2
  localValue1 = rageUiOperation8
  return localValue1
end
cmgOperation3.hasHmpCallsign = text12
cmgOperation3 = 0

-- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
function text12()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = IsPedShooting
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = GetSelectedPedWeapon
    localValue3 = localValue1
    -- Beginner: result below is weaponHash.
    localValue2 = localValue2(localValue3)
    localValue3 = GetMaxAmmo
    localValue4 = localValue1
    localValue5 = localValue2
    localValue3, localValue4 = localValue3(localValue4, localValue5)
    localValue5 = GetWeapontypeGroup
    localValue6 = localValue2
    localValue5 = localValue5(localValue6)
    if localValue4 >= 1 and -728555052 ~= localValue5 and 1548507267 ~= localValue5 then
      localValue6 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue6 = localValue6()
      cmgOperation3 = localValue6
    end
  end
end
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.createThreadOnTick
cmgOperation5 = text12
rageUiOperation9 = "GSR Logging"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation4(cmgOperation5, rageUiOperation9)
cmgOperation4 = tCMG

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2
  localValue1 = cmgOperation3
  localValue1 = 0 ~= localValue1
  return localValue1
end
cmgOperation4.hasRecentlyShotGun = cmgOperation5
cmgOperation4 = AddEventHandler
cmgOperation5 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: rageUiOperation9; parameters: none) ===
function rageUiOperation9()
  local localValue1, localValue2
  localValue1 = 0
  cmgOperation3 = localValue1
  localValue1 = rageUiOperation3
  localValue1()
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
cmgOperation4(cmgOperation5, rageUiOperation9)
cmgOperation4 = RMenu
cmgOperation4 = cmgOperation4.Add
cmgOperation5 = "trainingWorlds"
rageUiOperation9 = "mainmenu"
rageUiOperation10 = RageUI
rageUiOperation10 = rageUiOperation10.CreateMenu
text13 = "Training Worlds"
text14 = "Main Menu"
rageUiOperation11 = CMG
rageUiOperation11 = rageUiOperation11.getRageUIMenuWidth
rageUiOperation11 = rageUiOperation11()
rageUiOperation12 = CMG
rageUiOperation12 = rageUiOperation12.getRageUIMenuHeight
rageUiOperation12, createVector3, createVector32, createVector33, createVector34, createVector35, createVector36, createVector37, number6, number7, number8, number9, createVector38, createVector39, createVector310, createVector311, createVector312, number10, rageUiOperation13, text17, text18, rageUiOperation14, rageUiOperation15, text19, text20 = rageUiOperation12()
rageUiOperation10, text13, text14, rageUiOperation11, rageUiOperation12, createVector3, createVector32, createVector33, createVector34, createVector35, createVector36, createVector37, number6, number7, number8, number9, createVector38, createVector39, createVector310, createVector311, createVector312, number10, rageUiOperation13, text17, text18, rageUiOperation14, rageUiOperation15, text19, text20 = rageUiOperation10(text13, text14, rageUiOperation11, rageUiOperation12, createVector3, createVector32, createVector33, createVector34, createVector35, createVector36, createVector37, number6, number7, number8, number9, createVector38, createVector39, createVector310, createVector311, createVector312, number10, rageUiOperation13, text17, text18, rageUiOperation14, rageUiOperation15, text19, text20)
cmgOperation4(cmgOperation5, rageUiOperation9, rageUiOperation10, text13, text14, rageUiOperation11, rageUiOperation12, createVector3, createVector32, createVector33, createVector34, createVector35, createVector36, createVector37, number6, number7, number8, number9, createVector38, createVector39, createVector310, createVector311, createVector312, number10, rageUiOperation13, text17, text18, rageUiOperation14, rageUiOperation15, text19, text20)
cmgOperation4 = {}
cmgOperation5 = false
rageUiOperation9 = RegisterNetEvent
rageUiOperation10 = "2ea6f8c095"
-- Beginner: this function handles network event "2ea6f8c095".

-- === HELPER FUNCTION (decompiler name: text13; parameters: localValue1) ===
function text13(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  cmgOperation5 = localValue1
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  localValue3 = RMenu
  localValue4 = localValue3
  localValue3 = localValue3.Get
  localValue5 = "trainingWorlds"
  localValue6 = "mainmenu"
  -- Beginner: result below is menu.
  localValue3 = localValue3(localValue4, localValue5, localValue6)
  localValue4 = true
  localValue2(localValue3, localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2ea6f8c095".
rageUiOperation9(rageUiOperation10, text13)
rageUiOperation9 = RageUI
rageUiOperation9 = rageUiOperation9.CreateWhile
rageUiOperation10 = 1.0
text13 = RMenu
text14 = text13
text13 = text13.Get
rageUiOperation11 = "trainingWorlds"
rageUiOperation12 = "mainmenu"
-- Beginner: result below is menu.
text13 = text13(text14, rageUiOperation11, rageUiOperation12)
text14 = nil

-- === HELPER FUNCTION (decompiler name: rageUiOperation11; parameters: none) ===
function rageUiOperation11()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, number11
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "trainingWorlds"
  localValue5 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, cmgOperation2, text11, stateFlag14, text15, modelHash, number12, number14, stateFlag19, cmgOperation8, rageUiOperation, cmgOperation, workingValue2, workingValue3, dataCollection, workingValue4
    localValue12 = false
    cmgOperation2 = pairs
    text11 = cmgOperation4
    cmgOperation2, text11, stateFlag14, text15 = cmgOperation2(text11)
    for modelHash, number12 in cmgOperation2, text11, stateFlag14, text15 do
      number14 = string
      number14 = number14.format
      stateFlag19 = "Created by %s (%s) - Bucket %s"
      cmgOperation8 = number12.ownerName
      rageUiOperation = number12.ownerUserId
      cmgOperation = number12.bucket
      number14 = number14(stateFlag19, cmgOperation8, rageUiOperation, cmgOperation)
      stateFlag19 = number12.bucket
      cmgOperation8 = CMG
      cmgOperation8 = cmgOperation8.getPlayerBucket
      cmgOperation8 = cmgOperation8()
      stateFlag19 = stateFlag19 == cmgOperation8
      if stateFlag19 then
        cmgOperation8 = {}
        cmgOperation8.RightLabel = "(Joined)"
        if cmgOperation8 then
          goto continueAtStep30
        end
      end
      cmgOperation8 = {}
      ::continueAtStep30::
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.ButtonWithStyle
      cmgOperation = number12.name
      workingValue2 = number14
      workingValue3 = cmgOperation8
      dataCollection = true

      -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue13, localValue22, localValue32) ===
      function workingValue4(localValue13, localValue22, localValue32)
        local localValue42, text16, dataCollection5
        if localValue22 then
          localValue42 = cmgOperation5
          if localValue42 then
            localValue42 = drawNativeNotification
            text16 = "Press ~INPUT_FRONTEND_DELETE~ to delete this world"
            -- Beginner: Show a GTA-style notification/help prompt.
            localValue42(text16)
            localValue42 = IsControlJustPressed
            text16 = 0
            dataCollection5 = 214
            localValue42 = localValue42(text16, dataCollection5)
            if localValue42 then
              localValue42 = TriggerServerEvent
              text16 = "4604d8f037"
              dataCollection5 = modelHash
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4604d8f037".
              localValue42(text16, dataCollection5)
            end
          end
        end
        if localValue32 then
          localValue42 = TriggerServerEvent
          text16 = "aca49a8fe3"
          dataCollection5 = modelHash
          localValue42(text16, dataCollection5)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation(cmgOperation, workingValue2, workingValue3, dataCollection, workingValue4)
      if stateFlag19 then
        localValue12 = stateFlag19
      end
    end
    if localValue12 then
      cmgOperation2 = RageUI
      cmgOperation2 = cmgOperation2.ButtonWithStyle
      text11 = "~r~Leave Training World"
      stateFlag14 = nil
      text15 = {}
      modelHash = true

      -- === HELPER FUNCTION (decompiler name: number12; parameters: localValue13, localValue22, localValue32) ===
      function number12(localValue13, localValue22, localValue32)
        local localValue42, text16
        if localValue32 then
          localValue42 = TriggerServerEvent
          text16 = "069d0e3824"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "069d0e3824".
          localValue42(text16)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      cmgOperation2(text11, stateFlag14, text15, modelHash, number12)
    end
    cmgOperation2 = cmgOperation5
    if cmgOperation2 then
      cmgOperation2 = RageUI
      cmgOperation2 = cmgOperation2.ButtonWithStyle
      text11 = "~b~Create Training World"
      stateFlag14 = nil
      text15 = {}
      modelHash = true

      -- === HELPER FUNCTION (decompiler name: number12; parameters: localValue13, localValue22, localValue32) ===
      function number12(localValue13, localValue22, localValue32)
        local localValue42, text16
        if localValue32 then
          localValue42 = TriggerServerEvent
          text16 = "e8f086540e"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e8f086540e".
          localValue42(text16)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      cmgOperation2(text11, stateFlag14, text15, modelHash, number12)
    end
  end

  -- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
  function number11()
    local localValue12, cmgOperation2
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, number11)
end
rageUiOperation9(rageUiOperation10, text13, text14, rageUiOperation11)
rageUiOperation9 = RegisterNetEvent
rageUiOperation10 = "d8e38d17a0"
-- Beginner: this function handles network event "d8e38d17a0".

-- === HELPER FUNCTION (decompiler name: text13; parameters: localValue1, localValue2) ===
function text13(localValue1, localValue2)
  local localValue3
  localValue3 = cmgOperation4
  localValue3[localValue1] = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d8e38d17a0".
rageUiOperation9(rageUiOperation10, text13)
rageUiOperation9 = RegisterNetEvent
rageUiOperation10 = "059d49db3b"
-- Beginner: this function handles network event "059d49db3b".

-- === HELPER FUNCTION (decompiler name: text13; parameters: localValue1) ===
function text13(localValue1)
  local localValue2
  cmgOperation4 = localValue1
end
rageUiOperation9(rageUiOperation10, text13)
rageUiOperation9 = RegisterNetEvent
rageUiOperation10 = "4604d8f037"
-- Beginner: this function handles network event "4604d8f037".

-- === HELPER FUNCTION (decompiler name: text13; parameters: localValue1) ===
function text13(localValue1)
  local localValue2
  localValue2 = cmgOperation4
  localValue2[localValue1] = nil
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4604d8f037".
rageUiOperation9(rageUiOperation10, text13)
rageUiOperation9 = RegisterNetEvent
rageUiOperation10 = "f2c7fa6207"
-- Beginner: this function handles network event "f2c7fa6207".

-- === HELPER FUNCTION (decompiler name: text13; parameters: none) ===
function text13()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = {}
  cmgOperation4 = localValue1
  localValue1 = false
  cmgOperation5 = localValue1
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "trainingWorlds"
  localValue5 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = false
  localValue1(localValue2, localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f2c7fa6207".
rageUiOperation9(rageUiOperation10, text13)
rageUiOperation9 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation10; parameters: none) ===
function rageUiOperation10()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7
  localValue1 = pairs
  localValue2 = cmgOperation4
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    number11 = localValue6.bucket
    workingValue7 = CMG
    workingValue7 = workingValue7.getPlayerBucket
    workingValue7 = workingValue7()
    if number11 == workingValue7 then
      number11 = true
      return number11
    end
  end
  localValue1 = false
  return localValue1
end
rageUiOperation9.isInTrainingWorld = rageUiOperation10
rageUiOperation9 = false
rageUiOperation10 = 0

-- === HELPER FUNCTION (decompiler name: text13; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6) ===
function text13(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6)
  local number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5
  number11 = localValue6 / 100
  number11 = localValue3 * number11
  workingValue7 = localValue6 / 100
  workingValue7 = localValue3 * workingValue7
  workingValue7 = workingValue7 / 2
  workingValue7 = localValue1 - workingValue7
  cmgOperation7 = localValue3 / 2
  localValue1 = workingValue7 - cmgOperation7
  workingValue7 = DrawRect
  cmgOperation7 = localValue1 + number11
  workingValue9 = localValue2
  workingValue = number11
  text2 = localValue4
  stateFlag2 = localValue5[1]
  stateFlag3 = localValue5[2]
  stateFlag4 = localValue5[3]
  stateFlag5 = localValue5[4]
  workingValue7(cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5)
end

-- === HELPER FUNCTION (decompiler name: text14; parameters: none) ===
function text14()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "police.onduty.permission"
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.hasClientPermission
    localValue2 = "prisonguard.onduty.permission"
    localValue1 = localValue1(localValue2)
  end
  if localValue1 then
    localValue2 = IsControlPressed
    localValue3 = 0
    localValue4 = 19
    localValue2 = localValue2(localValue3, localValue4)
    if localValue2 then
      localValue2 = IsControlJustPressed
      localValue3 = 0
      localValue4 = 47
      localValue2 = localValue2(localValue3, localValue4)
      if localValue2 then
        localValue2 = rageUiOperation9
        if not localValue2 then
          localValue2 = tCMG
          localValue2 = localValue2.canAnim
          localValue2 = localValue2()
          if localValue2 then
            localValue2 = CMG
            localValue2 = localValue2.getPlayerVehicle
            -- Beginner: result below is currentVehicle.
            localValue2 = localValue2()
            if 0 == localValue2 then
              localValue2 = CMG
              localValue2 = localValue2.getClosestVehicleIncludingPed
              localValue3 = 3.5
              localValue4 = true
              localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3, localValue4)
              if 0 ~= localValue2 and 0 ~= localValue3 then
                if -1 == localValue4 or 0 == localValue4 then
                  localValue6 = 1.5
                  if localValue5 < localValue6 then
                    localValue6 = NetworkGetPlayerIndexFromPed
                    number11 = localValue3
                    localValue6 = localValue6(number11)
                    if localValue6 >= 0 then
                      number11 = GetPlayerServerId
                      workingValue7 = localValue6
                      -- Beginner: result below is serverId.
                      number11 = number11(workingValue7)
                      if number11 > 0 then
                        workingValue7 = TriggerServerEvent
                        cmgOperation7 = "e435663fa4"
                        workingValue9 = number11
                        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e435663fa4".
                        workingValue7(cmgOperation7, workingValue9)
                      end
                    end
                  else
                    localValue6 = notify
                    number11 = "~r~Closest player is too far away."
                    -- Beginner: Show a notification to the player.
                    localValue6(number11)
                  end
                else
                  localValue6 = notify
                  number11 = "~r~Closest player is not in the front seats."
                  localValue6(number11)
                end
              else
                localValue6 = notify
                number11 = "~r~No vehicle found with a player."
                -- Beginner: Show a notification to the player.
                localValue6(number11)
              end
            end
          end
        end
      end
    end
  end
  localValue2 = rageUiOperation10
  if 0 ~= localValue2 then
    localValue2 = text13
    localValue3 = 0.475
    localValue4 = 0.8
    localValue5 = 0.138
    localValue6 = 0.012750000000000001
    number11 = {}
    workingValue7 = 255
    cmgOperation7 = 47
    workingValue9 = 27
    workingValue = 255
    number11[1] = workingValue7
    number11[2] = cmgOperation7
    number11[3] = workingValue9
    number11[4] = workingValue
    workingValue7 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workingValue7 = workingValue7()
    cmgOperation7 = rageUiOperation10
    workingValue7 = workingValue7 - cmgOperation7
    workingValue7 = workingValue7 / 1500
    workingValue7 = workingValue7 * 100
    localValue2(localValue3, localValue4, localValue5, localValue6, number11, workingValue7)
  end
end
rageUiOperation11 = CMG
rageUiOperation11 = rageUiOperation11.createThreadOnTick
rageUiOperation12 = text14
createVector3 = "Pull Civ Out Vehicle"
-- Beginner: Run a helper every game frame while this script is active.
rageUiOperation11(rageUiOperation12, createVector3)
rageUiOperation11 = RegisterNetEvent
rageUiOperation12 = "464de6911c"
-- Beginner: this function handles network event "464de6911c".

-- === HELPER FUNCTION (decompiler name: createVector3; parameters: none) ===
function createVector3()
  local localValue1, localValue2
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  rageUiOperation10 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "464de6911c".
rageUiOperation11(rageUiOperation12, createVector3)
rageUiOperation11 = RegisterNetEvent
rageUiOperation12 = "70fe1c273d"
-- Beginner: this function handles network event "70fe1c273d".

-- === HELPER FUNCTION (decompiler name: createVector3; parameters: none) ===
function createVector3()
  local localValue1, localValue2
  localValue1 = 0
  rageUiOperation10 = localValue1
end
rageUiOperation11(rageUiOperation12, createVector3)
rageUiOperation11 = RegisterNetEvent
rageUiOperation12 = "d61cf70cd5"
-- Beginner: this function handles network event "d61cf70cd5".

-- === HELPER FUNCTION (decompiler name: createVector3; parameters: none) ===
function createVector3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  rageUiOperation10 = localValue1
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = ClearPedTasksImmediately
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = Citizen
  localValue2 = localValue2.Wait
  localValue3 = 0
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.loadAnimDict
  localValue3 = "veh@break_in@0h@p_m_zero@"
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue2(localValue3)
  localValue2 = TaskPlayAnim
  localValue3 = localValue1
  localValue4 = "veh@break_in@0h@p_m_zero@"
  localValue5 = "std_force_entry_ds"
  localValue6 = 8.0
  number11 = -8.0
  workingValue7 = -1
  cmgOperation7 = 48
  workingValue9 = 0
  workingValue = false
  text2 = false
  stateFlag2 = false
  -- Beginner: Play an animation on a ped.
  localValue2(localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2)
  localValue2 = RemoveAnimDict
  localValue3 = "veh@break_in@0h@p_m_zero@"
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d61cf70cd5".
rageUiOperation11(rageUiOperation12, createVector3)
rageUiOperation11 = RegisterNetEvent
rageUiOperation12 = "66ca0790fb"
-- Beginner: this function handles network event "66ca0790fb".

-- === HELPER FUNCTION (decompiler name: createVector3; parameters: none) ===
function createVector3()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = StopAnimTask
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = "veh@break_in@0h@p_m_zero@"
  localValue4 = "std_force_entry_ds"
  localValue5 = 1.0
  localValue1(localValue2, localValue3, localValue4, localValue5)
  localValue1 = 0
  rageUiOperation10 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "66ca0790fb".
rageUiOperation11(rageUiOperation12, createVector3)
rageUiOperation11 = RegisterNetEvent
rageUiOperation12 = "02fd20c813"
-- Beginner: this function handles network event "02fd20c813".

-- === HELPER FUNCTION (decompiler name: createVector3; parameters: localValue1) ===
function createVector3(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6
  localValue2 = GetPlayerFromServerId
  localValue3 = localValue1
  -- Beginner: result below is playerIndex.
  localValue2 = localValue2(localValue3)
  if -1 == localValue2 then
    return
  end
  localValue3 = GetPlayerPed
  localValue4 = localValue2
  -- Beginner: result below is playerPed.
  localValue3 = localValue3(localValue4)
  if 0 == localValue3 then
    return
  end
  localValue4 = GetVehiclePedIsUsing
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if 0 == localValue4 then
    return
  end
  localValue5 = true
  rageUiOperation9 = localValue5
  localValue5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue5 = localValue5()
  localValue6 = GetPedRelationshipGroupHash
  number11 = localValue5
  localValue6 = localValue6(number11)
  number11 = GetPedRelationshipGroupHash
  workingValue7 = localValue3
  number11 = number11(workingValue7)
  workingValue7 = GetRelationshipBetweenGroups
  cmgOperation7 = localValue6
  workingValue9 = number11
  workingValue7 = workingValue7(cmgOperation7, workingValue9)
  cmgOperation7 = GetRelationshipBetweenGroups
  workingValue9 = number11
  workingValue = localValue6
  cmgOperation7 = cmgOperation7(workingValue9, workingValue)
  workingValue9 = SetRelationshipBetweenGroups
  workingValue = 5
  text2 = localValue6
  stateFlag2 = number11
  workingValue9(workingValue, text2, stateFlag2)
  workingValue9 = SetRelationshipBetweenGroups
  workingValue = 5
  text2 = number11
  stateFlag2 = localValue6
  workingValue9(workingValue, text2, stateFlag2)
  workingValue9 = SetPedCanBeDraggedOut
  workingValue = localValue3
  text2 = true
  workingValue9(workingValue, text2)
  workingValue9 = TaskEnterVehicle
  workingValue = localValue5
  text2 = localValue4
  stateFlag2 = -1
  stateFlag3 = 0
  stateFlag4 = 1.0
  stateFlag5 = 524288
  stateFlag6 = 0
  workingValue9(workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6)
  workingValue9 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  workingValue9 = workingValue9()
  while true do
    workingValue = GetVehiclePedIsIn
    text2 = localValue3
    stateFlag2 = false
    -- Beginner: result below is currentVehicle.
    workingValue = workingValue(text2, stateFlag2)
    if 0 == workingValue then
      break
    end
    workingValue = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workingValue = workingValue()
    workingValue = workingValue - workingValue9
    text2 = 2500
    if workingValue > text2 then
      break
    end
    workingValue = Citizen
    workingValue = workingValue.Wait
    text2 = 0
    workingValue(text2)
  end
  workingValue = SetPedCanBeDraggedOut
  text2 = localValue3
  stateFlag2 = false
  workingValue(text2, stateFlag2)
  workingValue = SetRelationshipBetweenGroups
  text2 = workingValue7
  stateFlag2 = localValue6
  stateFlag3 = number11
  workingValue(text2, stateFlag2, stateFlag3)
  workingValue = SetRelationshipBetweenGroups
  text2 = cmgOperation7
  stateFlag2 = number11
  stateFlag3 = localValue6
  workingValue(text2, stateFlag2, stateFlag3)
  workingValue = false
  rageUiOperation9 = workingValue
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "02fd20c813".
rageUiOperation11(rageUiOperation12, createVector3)
rageUiOperation11 = RegisterNetEvent
rageUiOperation12 = "188c2532af"
-- Beginner: this function handles network event "188c2532af".

-- === HELPER FUNCTION (decompiler name: createVector3; parameters: localValue1) ===
function createVector3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = SetNewWaypoint
  localValue3 = localValue1.x
  localValue4 = localValue1.y
  localValue2(localValue3, localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "188c2532af".
rageUiOperation11(rageUiOperation12, createVector3)
rageUiOperation11 = false
rageUiOperation12 = RegisterNetEvent
createVector3 = "e0ea4a3f43"
-- Beginner: this function handles network event "e0ea4a3f43".

-- === HELPER FUNCTION (decompiler name: createVector32; parameters: none) ===
function createVector32()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag11, stateFlag12
  localValue1 = rageUiOperation11
  if localValue1 then
    localValue1 = false
    rageUiOperation11 = localValue1
    return
  end
  localValue1 = true
  rageUiOperation11 = localValue1
  localValue1 = "amb@world_human_paparazzi@male@base"
  localValue2 = "base"
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = 0
  localValue5 = CMG
  localValue5 = localValue5.hasClientGroup
  localValue6 = "CID"
  localValue5 = localValue5(localValue6)
  if not localValue5 then
    localValue5 = CMG
    localValue5 = localValue5.loadModel
    localValue6 = 680380202
    -- Beginner: Request/load a GTA model before spawning or applying it.
    localValue5(localValue6)
    localValue5 = CMG
    localValue5 = localValue5.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue5 = localValue5()
    localValue6 = CMG
    localValue6 = localValue6.requestEntitySpawn
    number11 = "police_camera"
    localValue6(number11)
    localValue6 = CreateObject
    number11 = 680380202
    workingValue7 = localValue5.x
    cmgOperation7 = localValue5.y
    workingValue9 = localValue5.z
    workingValue = true
    text2 = false
    stateFlag2 = false
    -- Beginner: result below is objectEntity.
    localValue6 = localValue6(number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2)
    localValue4 = localValue6
    localValue6 = AttachEntityToEntity
    number11 = localValue4
    workingValue7 = localValue3
    cmgOperation7 = GetPedBoneIndex
    workingValue9 = localValue3
    workingValue = 28422
    cmgOperation7 = cmgOperation7(workingValue9, workingValue)
    workingValue9 = 0.0
    workingValue = 0.0
    text2 = 0.0
    stateFlag2 = 0.0
    stateFlag3 = 0.0
    stateFlag4 = 0.0
    stateFlag5 = true
    stateFlag6 = true
    stateFlag7 = false
    stateFlag8 = true
    stateFlag9 = 1
    stateFlag11 = true
    -- Beginner: Attach one entity to another entity.
    localValue6(number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag11)
    localValue6 = SetModelAsNoLongerNeeded
    number11 = 680380202
    localValue6(number11)
  end
  localValue5 = false
  localValue6 = 0
  number11 = false
  workingValue7 = 0
  cmgOperation7 = 0

  -- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
  function workingValue9()
    local localValue12, cmgOperation2, text11, stateFlag14, text15, modelHash
    localValue12 = SetCamViewModeForContext
    cmgOperation2 = 0
    text11 = localValue6
    localValue12(cmgOperation2, text11)
    localValue12 = CMG
    localValue12 = localValue12.showAllDisplays
    cmgOperation2 = "policecamera"
    localValue12(cmgOperation2)
    localValue12 = SetPedPropIndex
    cmgOperation2 = localValue3
    text11 = 0
    stateFlag14 = workingValue7
    text15 = cmgOperation7
    modelHash = false
    localValue12(cmgOperation2, text11, stateFlag14, text15, modelHash)
  end
  while true do
    workingValue = rageUiOperation11
    if not workingValue then
      break
    end
    workingValue = tCMG
    workingValue = workingValue.canAnim
    workingValue = workingValue()
    if not workingValue then
      break
    end
    workingValue = CMG
    workingValue = workingValue.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    workingValue = workingValue()
    if 0 ~= workingValue then
      break
    end
    workingValue = IsEntityPlayingAnim
    text2 = localValue3
    stateFlag2 = localValue1
    stateFlag3 = localValue2
    stateFlag4 = 3
    workingValue = workingValue(text2, stateFlag2, stateFlag3, stateFlag4)
    if not workingValue then
      workingValue = CMG
      workingValue = workingValue.hasClientGroup
      text2 = "CID"
      workingValue = workingValue(text2)
      if not workingValue then
        workingValue = CMG
        workingValue = workingValue.loadAnimDict
        text2 = localValue1
        -- Beginner: Load a GTA animation dictionary before using it.
        workingValue(text2)
        workingValue = TaskPlayAnim
        text2 = localValue3
        stateFlag2 = localValue1
        stateFlag3 = localValue2
        stateFlag4 = 2.0
        stateFlag5 = 2.0
        stateFlag6 = -1
        stateFlag7 = 51
        stateFlag8 = 0
        stateFlag9 = false
        stateFlag11 = false
        stateFlag12 = false
        -- Beginner: Play an animation on a ped.
        workingValue(text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag11, stateFlag12)
        workingValue = RemoveAnimDict
        text2 = localValue1
        workingValue(text2)
      end
    end
    if localValue5 then
      if not number11 then
        workingValue = drawNativeNotification
        text2 = [[
Press ~INPUT_THROW_GRENADE~ to exit camera
Press ~INPUT_CONTEXT~ to take photograph]]
        -- Beginner: Show a GTA-style notification/help prompt.
        workingValue(text2)
      else
        workingValue = ClearHelp
        text2 = true
        workingValue(text2)
        workingValue = HideHudNotificationsThisFrame
        workingValue()
      end
      workingValue = SetEntityLocallyInvisible
      text2 = localValue3
      workingValue(text2)
      if 0 ~= localValue4 then
        workingValue = SetEntityLocallyInvisible
        text2 = localValue4
        workingValue(text2)
      end
      workingValue = SetCamViewModeForContext
      text2 = 0
      stateFlag2 = 4
      workingValue(text2, stateFlag2)
      workingValue = IsControlJustPressed
      text2 = 0
      stateFlag2 = 51
      workingValue = workingValue(text2, stateFlag2)
      if workingValue and not number11 then
        number11 = true
        workingValue = Citizen
        workingValue = workingValue.CreateThread

        -- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
        function text2()
          local localValue12, cmgOperation2, text11, stateFlag14
          localValue12 = Citizen
          localValue12 = localValue12.Wait
          cmgOperation2 = 250
          localValue12(cmgOperation2)
          localValue12 = CMG
          localValue12 = localValue12.requestScreenshotUpload
          cmgOperation2 = "https://cdn.cmgstudios.net/content/upld/upload2.php"
          text11 = "files[]"

          -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue13) ===
          function stateFlag14(localValue13)
            local localValue22, localValue32, localValue42
            localValue22 = false
            number11 = localValue22
            localValue22 = TriggerServerEvent
            localValue32 = "025a5e7ea1"
            localValue42 = localValue13
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "025a5e7ea1".
            localValue22(localValue32, localValue42)
          end
          localValue12(cmgOperation2, text11, stateFlag14)
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        workingValue(text2)
      end
    else
      workingValue = drawNativeNotification
      text2 = "Press ~INPUT_THROW_GRENADE~ to enter camera"
      -- Beginner: Show a GTA-style notification/help prompt.
      workingValue(text2)
    end
    workingValue = IsControlJustPressed
    text2 = 0
    stateFlag2 = 58
    workingValue = workingValue(text2, stateFlag2)
    if workingValue then
      localValue5 = not localValue5
      if localValue5 then
        workingValue = GetCamViewModeForContext
        text2 = 0
        workingValue = workingValue(text2)
        localValue6 = workingValue
        workingValue = CMG
        workingValue = workingValue.hideAllDisplays
        text2 = "policecamera"
        workingValue(text2)
        workingValue = GetPedPropIndex
        text2 = localValue3
        stateFlag2 = 0
        workingValue = workingValue(text2, stateFlag2)
        workingValue7 = workingValue
        workingValue = GetPedPropTextureIndex
        text2 = localValue3
        stateFlag2 = 0
        workingValue = workingValue(text2, stateFlag2)
        cmgOperation7 = workingValue
        workingValue = ClearPedProp
        text2 = localValue3
        stateFlag2 = 0
        workingValue(text2, stateFlag2)
      else
        workingValue = workingValue9
        workingValue()
      end
    end
    workingValue = Citizen
    workingValue = workingValue.Wait
    text2 = 0
    workingValue(text2)
  end
  if localValue5 then
    workingValue = workingValue9
    workingValue()
  end
  workingValue = StopAnimTask
  text2 = localValue3
  stateFlag2 = localValue1
  stateFlag3 = localValue2
  stateFlag4 = 1.0
  workingValue(text2, stateFlag2, stateFlag3, stateFlag4)
  workingValue = DeleteEntity
  text2 = localValue4
  -- Beginner: Delete a GTA entity.
  workingValue(text2)
  workingValue = false
  rageUiOperation11 = workingValue
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e0ea4a3f43".
rageUiOperation12(createVector3, createVector32)
rageUiOperation12 = {}
createVector3 = {}
createVector32 = vector3
createVector33 = 450.529144
createVector34 = -1028.21094
createVector35 = 32.74495
createVector32 = createVector32(createVector33, createVector34, createVector35)
createVector3.position = createVector32
createVector3.heading = 187.0
createVector32 = {}
createVector33 = vector3
createVector34 = 459.051819
createVector35 = -1027.14771
createVector36 = 32.74495
createVector33 = createVector33(createVector34, createVector35, createVector36)
createVector32.position = createVector33
createVector32.heading = 187.0
createVector33 = {}
createVector34 = vector3
createVector35 = 467.526
createVector36 = -1026.09058
createVector37 = 32.74495
createVector34 = createVector34(createVector35, createVector36, createVector37)
createVector33.position = createVector34
createVector33.heading = 187.0
createVector34 = {}
createVector35 = vector3
createVector36 = 484.770721
createVector37 = -1024.14661
number6 = 32.9292374
createVector35 = createVector35(createVector36, createVector37, number6)
createVector34.position = createVector35
createVector34.heading = 187.0
createVector35 = {}
createVector36 = vector3
createVector37 = 493.179
number6 = -1023.09766
number7 = 32.9292374
createVector36 = createVector36(createVector37, number6, number7)
createVector35.position = createVector36
createVector35.heading = 187.0
createVector36 = {}
createVector37 = vector3
number6 = 476.2486
number7 = -1025.19336
number8 = 32.876
createVector37 = createVector37(number6, number7, number8)
createVector36.position = createVector37
createVector36.heading = 187.0
rageUiOperation12[1] = createVector3
rageUiOperation12[2] = createVector32
rageUiOperation12[3] = createVector33
rageUiOperation12[4] = createVector34
rageUiOperation12[5] = createVector35
rageUiOperation12[6] = createVector36
createVector3 = vector3
createVector32 = 461.96771240234
createVector33 = -1028.4676513672
createVector34 = 33.133514404297
createVector3 = createVector3(createVector32, createVector33, createVector34)
createVector32 = {}

-- === HELPER FUNCTION (decompiler name: createVector33; parameters: none) ===
function createVector33()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3
  localValue1 = pairs
  localValue2 = rageUiOperation12
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    number11 = CreateObjectNoOffset
    workingValue7 = -911526563
    cmgOperation7 = localValue6.position
    cmgOperation7 = cmgOperation7.x
    workingValue9 = localValue6.position
    workingValue9 = workingValue9.y
    workingValue = localValue6.position
    workingValue = workingValue.z
    text2 = false
    stateFlag2 = false
    stateFlag3 = false
    -- Beginner: result below is objectEntity.
    number11 = number11(workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3)
    workingValue7 = SetEntityHeading
    cmgOperation7 = number11
    workingValue9 = localValue6.heading
    -- Beginner: Change the direction an entity is facing.
    workingValue7(cmgOperation7, workingValue9)
    workingValue7 = FreezeEntityPosition
    cmgOperation7 = number11
    workingValue9 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    workingValue7(cmgOperation7, workingValue9)
    workingValue7 = SetEntityVisible
    cmgOperation7 = number11
    workingValue9 = false
    workingValue = false
    workingValue7(cmgOperation7, workingValue9, workingValue)
    workingValue7 = table
    workingValue7 = workingValue7.insert
    cmgOperation7 = createVector32
    workingValue9 = number11
    workingValue7(cmgOperation7, workingValue9)
  end
end

-- === HELPER FUNCTION (decompiler name: createVector34; parameters: none) ===
function createVector34()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7
  localValue1 = pairs
  localValue2 = createVector32
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    number11 = DeleteEntity
    workingValue7 = localValue6
    -- Beginner: Delete a GTA entity.
    number11(workingValue7)
  end
  localValue1 = {}
  createVector32 = localValue1
end
createVector35 = CMG
createVector35 = createVector35.createArea
createVector36 = "fake_fences"
createVector37 = createVector3
number6 = 100.0
number7 = 50.0
number8 = createVector33
number9 = createVector34

-- === HELPER FUNCTION (decompiler name: createVector38; parameters: none) ===
function createVector38()
  local localValue1, localValue2
end
createVector39 = {}
-- Beginner: Create an interaction area around a world position.
createVector35(createVector36, createVector37, number6, number7, number8, number9, createVector38, createVector39)
createVector35 = 678
createVector36 = 679
createVector37 = 0
number6 = vector3
number7 = -2196.599609375
number8 = 3068.681640625
number9 = 32.955951690674
number6 = number6(number7, number8, number9)
number7 = CMG

-- === HELPER FUNCTION (decompiler name: number8; parameters: none) ===
function number8()
  local localValue1, localValue2
  localValue1 = createVector35
  return localValue1
end
number7.getTrainingGroundsBucket = number8
number7 = CMG

-- === HELPER FUNCTION (decompiler name: number8; parameters: none) ===
function number8()
  local localValue1, localValue2
  localValue1 = createVector36
  return localValue1
end
number7.getHMPTrainingGroundsBucket = number8
number7 = AddEventHandler
number8 = "62fa42ee34"
-- Beginner: this function runs when client event "62fa42ee34" fires.

-- === HELPER FUNCTION (decompiler name: number9; parameters: localValue1) ===
function number9(localValue1)
  local localValue2, localValue3
  if "SCO19 Training Grounds" == localValue1 then
    localValue2 = TriggerServerEvent
    localValue3 = "b88749a675"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b88749a675".
    localValue2(localValue3)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "62fa42ee34".
number7(number8, number9)
number7 = AddEventHandler
number8 = "919aefda0c"
-- Beginner: this function runs when client event "919aefda0c" fires.

-- === HELPER FUNCTION (decompiler name: number9; parameters: localValue1) ===
function number9(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7
  localValue2 = createVector35
  if localValue1 == localValue2 then
    localValue2 = 0
    createVector37 = localValue2
  end
  localValue2 = CMG
  localValue2 = localValue2.isInTrainingGrounds
  localValue2 = localValue2()
  if not localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.isInTrainingWorld
    localValue2 = localValue2()
  end
  if localValue2 then
    localValue3 = stateFlag17
    if not localValue3 then
      localValue3 = CMG
      localValue3 = localValue3.createGunStore
      localValue4 = "Training Large Arms"
      localValue5 = "policeLargeArms"
      localValue6 = vector3
      number11 = -1948.7639160156
      workingValue7 = 3019.4665527344
      cmgOperation7 = 31.820279846191
      localValue6, number11, workingValue7, cmgOperation7 = localValue6(number11, workingValue7, cmgOperation7)
      localValue3(localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7)
      localValue3 = CMG
      localValue3 = localValue3.createGunStore
      localValue4 = "Training Small Arms"
      localValue5 = "policeSmallArms"
      localValue6 = vector3
      number11 = -1952.6622314453
      workingValue7 = 3021.583984375
      cmgOperation7 = 31.820279846191
      localValue6, number11, workingValue7, cmgOperation7 = localValue6(number11, workingValue7, cmgOperation7)
      localValue3(localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7)
      localValue3 = true
      stateFlag17 = localValue3
    end
  else
    localValue3 = stateFlag17
    if localValue3 then
      localValue3 = CMG
      localValue3 = localValue3.deleteGunStore
      localValue4 = "Training Large Arms"
      localValue3(localValue4)
      localValue3 = CMG
      localValue3 = localValue3.deleteGunStore
      localValue4 = "Training Small Arms"
      localValue3(localValue4)
      localValue3 = false
      stateFlag17 = localValue3
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "919aefda0c".
number7(number8, number9)

-- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
function number7()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.getPlayerBucket
  localValue1 = localValue1()
  localValue2 = createVector35
  if localValue1 ~= localValue2 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue1 = localValue1()
  localValue2 = number6
  localValue1 = localValue1 - localValue2
  localValue1 = #localValue1
  localValue2 = 750.0
  if localValue1 < localValue2 then
    localValue2 = 0
    createVector37 = localValue2
    return
  end
  localValue2 = createVector37
  if 0 == localValue2 then
    localValue2 = notify
    localValue3 = "~y~You will be kicked from training grounds in 5 seconds. Please return."
    -- Beginner: Show a notification to the player.
    localValue2(localValue3)
    localValue2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue2 = localValue2()
    createVector37 = localValue2
    return
  end
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  localValue3 = createVector37
  localValue2 = localValue2 - localValue3
  localValue3 = 5000
  if localValue2 > localValue3 then
    localValue2 = notify
    localValue3 = "~r~You have been kicked from training grounds for going too far away."
    localValue2(localValue3)
    localValue2 = TriggerServerEvent
    localValue3 = "ee2c49d787"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ee2c49d787".
    localValue2(localValue3)
    localValue2 = 0
    createVector37 = localValue2
  end
end
number8 = CMG
number8 = number8.createThreadOnTick
number9 = number7
createVector38 = "Training Grounds"
-- Beginner: Run a helper every game frame while this script is active.
number8(number9, createVector38)
number8 = CMG

-- === HELPER FUNCTION (decompiler name: number9; parameters: none) ===
function number9()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.getPlayerBucket
  localValue1 = localValue1()
  localValue2 = createVector35
  localValue1 = localValue1 == localValue2
  return localValue1
end
number8.isInTrainingGrounds = number9
number8 = AddEventHandler
number9 = "b51e08118b"
-- Beginner: this function runs when client event "b51e08118b" fires.

-- === HELPER FUNCTION (decompiler name: createVector38; parameters: none) ===
function createVector38()
  local localValue1, localValue2
  localValue1 = rageUiOperation3
  localValue1()
end
-- Beginner: Register a client-side event handler. Event/command: "b51e08118b".
number8(number9, createVector38)
number8 = {}
number9 = vector3
createVector38 = 472.66070556641
createVector39 = -985.42517089844
createVector310 = 24.914979934692
number9 = number9(createVector38, createVector39, createVector310)
createVector38 = vector3
createVector39 = -1074.2965087891
createVector310 = -823.36840820312
createVector311 = 11.035833358765
createVector38 = createVector38(createVector39, createVector310, createVector311)
createVector39 = vector3
createVector310 = 1858.0747070312
createVector311 = 3697.7080078125
createVector312 = 34.26692199707
createVector39 = createVector39(createVector310, createVector311, createVector312)
createVector310 = vector3
createVector311 = -448.13220214844
createVector312 = 6008.2236328125
number10 = 31.716361999512
createVector310 = createVector310(createVector311, createVector312, number10)
createVector311 = vector3
createVector312 = 1784.0445556641
number10 = 2543.3447265625
rageUiOperation13 = 45.797943115234
createVector311 = createVector311(createVector312, number10, rageUiOperation13)
createVector312 = vector3
number10 = 1557.6273193359
rageUiOperation13 = 810.14892578125
text17 = 78.693084716797
createVector312, number10, rageUiOperation13, text17, text18, rageUiOperation14, rageUiOperation15, text19, text20 = createVector312(number10, rageUiOperation13, text17)
number8[1] = number9
number8[2] = createVector38
number8[3] = createVector39
number8[4] = createVector310
number8[5] = createVector311
number8[6] = createVector312
number8[7] = number10
number8[8] = rageUiOperation13
number8[9] = text17
number8[10] = text18
number8[11] = rageUiOperation14
number8[12] = rageUiOperation15
number8[13] = text19
number8[14] = text20

-- === HELPER FUNCTION (decompiler name: number9; parameters: none) ===
function number9()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "police.onduty.permission"
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.hasClientPermission
    localValue2 = "prisonguard.onduty.permission"
    localValue1 = localValue1(localValue2)
    if not localValue1 then
      return
    end
  end
  localValue1 = drawNativeNotification
  localValue2 = "Press ~INPUT_CONTEXT_SECONDARY~ to drop off any evidence bags."
  -- Beginner: Show a GTA-style notification/help prompt.
  localValue1(localValue2)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 44
  localValue4 = true
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 52
  localValue4 = true
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = IsDisabledControlJustPressed
  localValue2 = 0
  localValue3 = 52
  localValue1 = localValue1(localValue2, localValue3)
  if localValue1 then
    localValue1 = TriggerServerEvent
    localValue2 = "dcb45454ac"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "dcb45454ac".
    localValue1(localValue2)
  end
end
createVector38 = Citizen
createVector38 = createVector38.CreateThread

-- === HELPER FUNCTION (decompiler name: createVector39; parameters: none) ===
function createVector39()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8
  localValue1 = pairs
  localValue2 = number8
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    number11 = CMG
    number11 = number11.createArea
    workingValue7 = string
    workingValue7 = workingValue7.format
    cmgOperation7 = "evidencebag_dropoff_%s"
    workingValue9 = localValue5
    workingValue7 = workingValue7(cmgOperation7, workingValue9)
    cmgOperation7 = localValue6
    workingValue9 = 2.0
    workingValue = 2.5

    -- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
    function text2()
      local localValue12, cmgOperation2
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: none) ===
    function stateFlag2()
      local localValue12, cmgOperation2
    end
    stateFlag3 = number9
    -- Beginner: Create an interaction area around a world position.
    number11(workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3)
    number11 = tCMG
    number11 = number11.addMarker
    workingValue7 = localValue6.x
    cmgOperation7 = localValue6.y
    workingValue9 = localValue6.z
    workingValue9 = workingValue9 - 1.0
    workingValue = 1.0
    text2 = 1.0
    stateFlag2 = 1.0
    stateFlag3 = 255
    stateFlag4 = 165
    stateFlag5 = 0
    stateFlag6 = 170
    stateFlag7 = 50
    stateFlag8 = 27
    -- Beginner: Create a world marker.
    number11(workingValue7, cmgOperation7, workingValue9, workingValue, text2, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
createVector38(createVector39)
createVector38 = RegisterNetEvent
createVector39 = "678da4b471"
-- Beginner: this function handles network event "678da4b471".

-- === HELPER FUNCTION (decompiler name: createVector310; parameters: none) ===
function createVector310()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7
  localValue1 = true
  localValue2 = false
  localValue3 = Citizen
  localValue3 = localValue3.CreateThread
  -- Beginner: this function handles network event "678da4b471".

  -- === HELPER FUNCTION: localValue4() ===
  function localValue4()
    local localValue12, cmgOperation2
    while true do
      localValue12 = localValue2
      if localValue12 then
        break
      end
      localValue12 = drawNativeNotification
      cmgOperation2 = "Press ~INPUT_JUMP~ in the correct area to unseal the bag."
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue12(cmgOperation2)
      localValue12 = Citizen
      localValue12 = localValue12.Wait
      cmgOperation2 = 0
      localValue12(cmgOperation2)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue3(localValue4)
  localValue3 = true
  localValue4 = CMG
  localValue4 = localValue4.minigameCircularProgressBar
  localValue5 = {}
  localValue5.Difficulty = "Medium"
  localValue5.Timeout = 25000

  -- === HELPER FUNCTION: localValue6(localValue12) ===
  function localValue6(localValue12)
    local cmgOperation2
    localValue1 = localValue12
    cmgOperation2 = false
    localValue3 = cmgOperation2
  end
  localValue5.onComplete = localValue6

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, cmgOperation2
    localValue12 = false
    localValue1 = localValue12
    localValue12 = false
    localValue3 = localValue12
  end
  localValue5.onTimeout = localValue6
  localValue4(localValue5)
  while localValue3 do
    localValue4 = drawNativeText
    localValue5 = "Unseal the bag."
    -- Beginner: Draw GTA-style text on screen.
    localValue4(localValue5)
    localValue4 = Citizen
    localValue4 = localValue4.Wait
    localValue5 = 0
    localValue4(localValue5)
  end
  localValue2 = true
  if localValue1 then
    localValue4 = PlaySoundFrontend
    localValue5 = -1
    localValue6 = "HACKING_CLICK_BAD"
    number11 = ""
    workingValue7 = false
    localValue4(localValue5, localValue6, number11, workingValue7)
    localValue4 = notify
    localValue5 = "~g~You succesfully unsealed the evidence bag."
    -- Beginner: Show a notification to the player.
    localValue4(localValue5)
  else
    localValue4 = PlaySoundFrontend
    localValue5 = -1
    localValue6 = "HACKING_SUCCESS"
    number11 = ""
    workingValue7 = true
    localValue4(localValue5, localValue6, number11, workingValue7)
    localValue4 = notify
    localValue5 = "~r~You failed to unseal the evidence bag."
    -- Beginner: Show a notification to the player.
    localValue4(localValue5)
  end
  localValue4 = TriggerServerEvent
  localValue5 = "c5002dc873"
  localValue6 = localValue1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c5002dc873".
  localValue4(localValue5, localValue6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "678da4b471".
createVector38(createVector39, createVector310)
createVector38 = {}
createVector39 = 3
createVector310 = nil
createVector311 = RMenu
createVector311 = createVector311.Add
createVector312 = "police"
number10 = "selectofficers"
rageUiOperation13 = RageUI
rageUiOperation13 = rageUiOperation13.CreateMenu
text17 = ""
text18 = "~b~Officers Involved"
rageUiOperation14 = CMG
rageUiOperation14 = rageUiOperation14.getRageUIMenuWidth
rageUiOperation14 = rageUiOperation14()
rageUiOperation15 = CMG
rageUiOperation15 = rageUiOperation15.getRageUIMenuHeight
rageUiOperation15 = rageUiOperation15()
text19 = "cmg_jobselectorui"
text20 = "metpd"
rageUiOperation13, text17, text18, rageUiOperation14, rageUiOperation15, text19, text20 = rageUiOperation13(text17, text18, rageUiOperation14, rageUiOperation15, text19, text20)
createVector311(createVector312, number10, rageUiOperation13, text17, text18, rageUiOperation14, rageUiOperation15, text19, text20)

-- === HELPER FUNCTION (decompiler name: createVector311; parameters: none) ===
function createVector311()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7
  localValue1 = createVector310
  if localValue1 then
    return
  end
  localValue1 = true
  createVector310 = localValue1
  localValue1 = {}
  localValue2 = pairs
  localValue3 = createVector38
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, number11 in localValue2, localValue3, localValue4, localValue5 do
    if number11 then
      workingValue7 = tonumber
      cmgOperation7 = localValue6
      workingValue7 = workingValue7(cmgOperation7)
      if workingValue7 then
        cmgOperation7 = #localValue1
        cmgOperation7 = cmgOperation7 + 1
        localValue1[cmgOperation7] = workingValue7
      end
    end
  end
  localValue2 = TriggerServerEvent
  localValue3 = "6710146a17"
  localValue4 = localValue1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6710146a17".
  localValue2(localValue3, localValue4)
  localValue2 = RageUI
  localValue2 = localValue2.CloseAll
  localValue2()
end
createVector312 = RageUI
createVector312 = createVector312.CreateWhile
number10 = 1.0
rageUiOperation13 = RMenu
text17 = rageUiOperation13
rageUiOperation13 = rageUiOperation13.Get
text18 = "police"
rageUiOperation14 = "selectofficers"
-- Beginner: result below is menu.
rageUiOperation13 = rageUiOperation13(text17, text18, rageUiOperation14)
text17 = nil

-- === HELPER FUNCTION (decompiler name: text18; parameters: none) ===
function text18()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, number11
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "police"
  localValue5 = "selectofficers"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, cmgOperation2, text11, stateFlag14, text15, modelHash, number12, number14, stateFlag19, cmgOperation8, rageUiOperation, cmgOperation, workingValue2, workingValue3, dataCollection, workingValue4
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    cmgOperation2 = string
    cmgOperation2 = cmgOperation2.format
    text11 = "~y~Pick up to %s helping officers to share XP / arrests with."
    stateFlag14 = createVector39
    cmgOperation2, text11, stateFlag14, text15, modelHash, number12, number14, stateFlag19, cmgOperation8, rageUiOperation, cmgOperation, workingValue2, workingValue3, dataCollection, workingValue4 = cmgOperation2(text11, stateFlag14)
    localValue12(cmgOperation2, text11, stateFlag14, text15, modelHash, number12, number14, stateFlag19, cmgOperation8, rageUiOperation, cmgOperation, workingValue2, workingValue3, dataCollection, workingValue4)
    localValue12 = 0
    cmgOperation2 = pairs
    text11 = createVector38
    cmgOperation2, text11, stateFlag14, text15 = cmgOperation2(text11)
    for modelHash, number12 in cmgOperation2, text11, stateFlag14, text15 do
      if number12 then
        localValue12 = localValue12 + 1
      end
    end
    cmgOperation2 = pairs
    text11 = createVector38
    cmgOperation2, text11, stateFlag14, text15 = cmgOperation2(text11)
    for modelHash, number12 in cmgOperation2, text11, stateFlag14, text15 do
      number14 = GetPlayerFromServerId
      stateFlag19 = tonumber
      cmgOperation8 = modelHash
      stateFlag19 = stateFlag19(cmgOperation8)
      if not stateFlag19 then
        stateFlag19 = 0
      end
      -- Beginner: result below is playerIndex.
      number14 = number14(stateFlag19)
      if number14 >= 0 then
        stateFlag19 = createVector39
        stateFlag19 = localValue12 >= stateFlag19 and stateFlag19
        cmgOperation8 = string
        cmgOperation8 = cmgOperation8.format
        rageUiOperation = "%s [%s]"
        cmgOperation = CMG
        cmgOperation = cmgOperation.getPlayerName
        workingValue2 = number14
        cmgOperation = cmgOperation(workingValue2)
        workingValue2 = modelHash
        cmgOperation8 = cmgOperation8(rageUiOperation, cmgOperation, workingValue2)
        rageUiOperation = RageUI
        rageUiOperation = rageUiOperation.Checkbox
        cmgOperation = cmgOperation8
        workingValue2 = ""
        workingValue3 = number12
        dataCollection = {}
        workingValue4 = not stateFlag19
        dataCollection.Enabled = workingValue4

        -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue13, localValue22, localValue32, localValue42) ===
        function workingValue4(localValue13, localValue22, localValue32, localValue42)
          local text16, dataCollection5
          text16 = number12
          if localValue42 ~= text16 then
            if localValue42 then
              text16 = localValue12
              dataCollection5 = createVector39
              if text16 >= dataCollection5 then
                return
              end
            end
            dataCollection5 = modelHash
            text16 = createVector38
            text16[dataCollection5] = localValue42
          end
        end
        -- Beginner: Draw a RageUI checkbox.
        rageUiOperation(cmgOperation, workingValue2, workingValue3, dataCollection, workingValue4)
      end
    end
    cmgOperation2 = localValue12 + 1
    text11 = string
    text11 = text11.format
    stateFlag14 = "Confirm, XP/arrests split %s ways."
    text15 = cmgOperation2
    text11 = text11(stateFlag14, text15)
    stateFlag14 = RageUI
    stateFlag14 = stateFlag14.ButtonWithStyle
    text15 = "~g~Confirm"
    modelHash = text11
    number12 = {}
    number12.RightLabel = "\226\134\146\226\134\146\226\134\146"
    number14 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag19; parameters: localValue13, localValue22, localValue32) ===
    function stateFlag19(localValue13, localValue22, localValue32)
      local localValue42
      if localValue32 then
        localValue42 = createVector311
        localValue42()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    stateFlag14(text15, modelHash, number12, number14, stateFlag19)
    stateFlag14 = RageUI
    stateFlag14 = stateFlag14.ButtonWithStyle
    text15 = "~b~Skip, keep XP to myself"
    modelHash = "Award full XP and arrest stat to you only."
    number12 = {}
    number12.RightLabel = "\226\134\146\226\134\146\226\134\146"
    number14 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag19; parameters: localValue13, localValue22, localValue32) ===
    function stateFlag19(localValue13, localValue22, localValue32)
      local localValue42, text16, dataCollection5, number13, stateFlag18, workingValue8, workingValue10
      if localValue32 then
        localValue42 = pairs
        text16 = createVector38
        localValue42, text16, dataCollection5, number13 = localValue42(text16)
        for stateFlag18 in localValue42, text16, dataCollection5, number13 do
          workingValue8 = createVector38
          workingValue8[stateFlag18] = false
        end
        localValue42 = createVector311
        localValue42()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    stateFlag14(text15, modelHash, number12, number14, stateFlag19)
  end

  -- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
  function number11()
    local localValue12, cmgOperation2
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, number11)
end
createVector312(number10, rageUiOperation13, text17, text18)
createVector312 = RegisterNetEvent
number10 = "0d3ff1e19d"
-- Beginner: this function handles network event "0d3ff1e19d".

-- === HELPER FUNCTION (decompiler name: rageUiOperation13; parameters: localValue1, localValue2) ===
function rageUiOperation13(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, number11, workingValue7, cmgOperation7, workingValue9, workingValue
  localValue3 = {}
  createVector38 = localValue3
  localValue3 = type
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if "table" == localValue3 then
    localValue3 = pairs
    localValue4 = localValue1
    localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
    for number11, workingValue7 in localValue3, localValue4, localValue5, localValue6 do
      cmgOperation7 = tonumber
      workingValue9 = workingValue7
      cmgOperation7 = cmgOperation7(workingValue9)
      if cmgOperation7 then
        workingValue9 = tostring
        workingValue = cmgOperation7
        workingValue9 = workingValue9(workingValue)
        workingValue = createVector38
        workingValue[workingValue9] = false
      end
    end
  end
  localValue3 = tonumber
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue3 = 3
  end
  createVector39 = localValue3
  localValue3 = false
  createVector310 = localValue3
  localValue3 = RageUI
  localValue3 = localValue3.Visible
  localValue4 = RMenu
  localValue5 = localValue4
  localValue4 = localValue4.Get
  localValue6 = "police"
  number11 = "selectofficers"
  -- Beginner: result below is menu.
  localValue4 = localValue4(localValue5, localValue6, number11)
  localValue5 = true
  localValue3(localValue4, localValue5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0d3ff1e19d".
createVector312(number10, rageUiOperation13)
