--[[
    LEVEL 1 BEGINNER GUIDE — Seatbelt
    ======================================

    File: cmg/prod/client/hud/cl_seatbelt.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: HUD and on-screen player information, specifically the Seatbelt feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 17
      * Background threads: 0
      * Always-running loops: 2
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

    IMPORTANT — this file still contains decompiler temporary names.
      Names like workValue12, textValue4, dataTable7, flag3, cmgCall2,
      arg1/arg2, or flow_label_* are NOT meaningful original developer names.
      A decompiler invented them while rebuilding source code.

      For a beginner, read the API call on the right-hand side first.
      Example:
        workValue = GetEntityCoords
        dataTable2 = workValue(playerPed)
      means roughly:
        local playerCoords = GetEntityCoords(playerPed)

      I have deliberately NOT mass-renamed these reused temporary variables:
      doing that without full control-flow reconstruction can silently change
      behaviour. Comments/section labels below explain the code safely.

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
local cmgCall, flag7, numberValue3, vector3Builder, numberValue6, flag8, numberValue7, eventHandlerRegistration, textValue3, workValue10, workValue, textValue, eventRegistration, flag, textValue2, workValue4
cmgCall = CMG
cmgCall = cmgCall.loadModule
flag7 = "cfg/cfg_hud"
-- Beginner: result below is config.
cmgCall = cmgCall(flag7)
flag7 = true
numberValue3 = 0
vector3Builder = vector3
numberValue6 = 0
flag8 = 0
numberValue7 = 0
vector3Builder = vector3Builder(numberValue6, flag8, numberValue7)

-- === HELPER FUNCTION (decompiler name: numberValue6; parameters: none) ===
function numberValue6()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.isClientClockedOnOrganisation
  arg1 = arg1()
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.isEmergencyService
    arg1 = arg1()
  end
  return arg1
end
flag8 = false

-- === HELPER FUNCTION (decompiler name: numberValue7; parameters: none) ===
function numberValue7()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.sendHudNuiMessage
  arg2 = "SET_SEATBELT"
  arg3 = flag7
  arg1(arg2, arg3)
end
eventHandlerRegistration = AddEventHandler
textValue3 = "f7b3a54a8f"
-- Beginner: this function runs when client event "f7b3a54a8f" fires.

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
function workValue10()
  local arg1, arg2, arg3
  arg1 = false
  flag7 = arg1
  arg1 = CMG
  arg1 = arg1.sendHudNuiMessage
  arg2 = "SET_SEATBELT"
  arg3 = flag7
  arg1(arg2, arg3)
end
-- Beginner: Register a client-side event handler. Event/command: "f7b3a54a8f".
eventHandlerRegistration(textValue3, workValue10)
eventHandlerRegistration = AddEventHandler
textValue3 = "e892eba4b7"
-- Beginner: this function runs when client event "e892eba4b7" fires.

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
function workValue10()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.isEmergencyService
  arg1 = arg1()
  if arg1 then
    arg1 = false
    flag7 = arg1
  else
    arg1 = true
    flag7 = arg1
  end
  arg1 = numberValue7
  arg1()
end
-- Beginner: Register a client-side event handler. Event/command: "e892eba4b7".
eventHandlerRegistration(textValue3, workValue10)
eventHandlerRegistration = AddEventHandler
textValue3 = "b51e08118b"
-- Beginner: this function runs when client event "b51e08118b" fires.

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
function workValue10()
  local arg1, arg2, arg3, workValue6
  arg1 = CMG
  arg1 = arg1.isEmergencyService
  arg1 = arg1()
  if arg1 then
    arg2 = flag8
    if not arg2 then
      arg2 = false
      flag7 = arg2
      arg2 = CMG
      arg2 = arg2.sendHudNuiMessage
      arg3 = "SET_SEATBELT"
      workValue6 = flag7
      arg2(arg3, workValue6)
  end
  else
    arg2 = flag8
    if arg2 and not arg1 then
      arg2 = CMG
      arg2 = arg2.isClientClockedOnOrganisation
      arg2 = arg2()
      if arg2 then
        arg2 = false
        flag7 = arg2
      else
        arg2 = true
        flag7 = arg2
      end
      arg2 = numberValue7
      arg2()
    end
  end
  flag8 = arg1
  arg2 = numberValue6
  arg2 = arg2()
  if not arg2 then
    arg2 = true
    flag7 = arg2
    arg2 = numberValue7
    arg2()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "b51e08118b".
eventHandlerRegistration(textValue3, workValue10)
eventHandlerRegistration = {}
eventHandlerRegistration[0] = true
eventHandlerRegistration[1] = true
eventHandlerRegistration[2] = true
eventHandlerRegistration[3] = true
eventHandlerRegistration[4] = true
eventHandlerRegistration[5] = true
eventHandlerRegistration[6] = true
eventHandlerRegistration[7] = true
eventHandlerRegistration[9] = true
eventHandlerRegistration[12] = true
eventHandlerRegistration[20] = true
eventHandlerRegistration[22] = true
eventHandlerRegistration[17] = true
eventHandlerRegistration[18] = true

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1) ===
function textValue3(arg1)
  local arg2, arg3
  arg2 = GetVehicleClass
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = eventHandlerRegistration
  arg3 = arg3[arg2]
  if not arg3 then
    arg3 = false
  end
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
function workValue10()
  local arg1, arg2, arg3, workValue6
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg1 = arg1()
  if 0 ~= arg1 then
    arg2 = textValue3
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = flag7
      arg2 = not arg2
      flag7 = arg2
      arg2 = flag7
      if arg2 then
        arg2 = cmgCall.Notification
        arg3 = cmgCall.Notifications
        arg3 = arg3.TOOK_SEATBELT
        arg3 = arg3.message
        workValue6 = cmgCall.Notifications
        workValue6 = workValue6.TOOK_SEATBELT
        workValue6 = workValue6.type
        arg2(arg3, workValue6)
      else
        arg2 = cmgCall.Notification
        arg3 = cmgCall.Notifications
        arg3 = arg3.TOOK_OFF_SEATBELT
        arg3 = arg3.message
        workValue6 = cmgCall.Notifications
        workValue6 = workValue6.TOOK_OFF_SEATBELT
        workValue6 = workValue6.type
        arg2(arg3, workValue6)
      end
      arg2 = numberValue7
      arg2()
    end
  end
end
workValue = RegisterCommand
textValue = "seatbelt"
-- Beginner: this function is the command handler for "seatbelt".

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, arg2, arg3, workValue6
  arg1 = numberValue6
  arg1 = arg1()
  if not arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg2 = arg2()
  arg3 = IsPedInAnyVehicle
  workValue6 = arg1
  arg3 = arg3(workValue6)
  if arg3 then
    arg3 = textValue3
    workValue6 = arg2
    arg3 = arg3(workValue6)
    if arg3 then
      arg3 = workValue10
      arg3()
    end
  end
end
flag = false
-- Beginner: Register a chat/console command. Event/command: "seatbelt".
workValue(textValue, eventRegistration, flag)
workValue = RegisterKeyMapping
textValue = "seatbelt"
eventRegistration = "Toggle Seatbelt"
flag = "keyboard"
textValue2 = cmgCall.SeatbeltKey
-- Beginner: Bind a command to a keyboard/controller key.
workValue(textValue, eventRegistration, flag, textValue2)

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local arg2, arg3, workValue6, vehicle
  arg2 = GetEntityHeading
  arg3 = arg1
  -- Beginner: result below is heading.
  arg2 = arg2(arg3)
  arg2 = arg2 + 90.0
  if arg2 < 0.0 then
    arg2 = 360.0 + arg2
  end
  arg2 = arg2 * 0.0174533
  arg3 = {}
  workValue6 = math
  workValue6 = workValue6.cos
  vehicle = arg2
  workValue6 = workValue6(vehicle)
  workValue6 = workValue6 * 2.0
  arg3.x = workValue6
  workValue6 = math
  workValue6 = workValue6.sin
  vehicle = arg2
  workValue6 = workValue6(vehicle)
  workValue6 = workValue6 * 2.0
  arg3.y = workValue6
  return arg3
end

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1, arg2, arg3) ===
function textValue(arg1, arg2, arg3)
  local workValue6, vehicle, vehicle2, flag9, flag10, modelHash, workValue11, workValue2, workValue3, waitCall2, flag2, mathHelper, flag3, numberValue, flag4, flag5, flag6
  workValue6 = numberValue6
  workValue6 = workValue6()
  if not workValue6 then
    return
  end
  workValue6 = flag7
  if workValue6 then
    return
  end
  workValue6 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue6 = workValue6()
  vehicle = GetVehiclePedIsIn
  vehicle2 = workValue6
  flag9 = false
  -- Beginner: result below is currentVehicle.
  vehicle = vehicle(vehicle2, flag9)
  if 0 == vehicle then
    vehicle2 = GetVehiclePedIsIn
    flag9 = workValue6
    flag10 = true
    -- Beginner: result below is currentVehicle.
    vehicle2 = vehicle2(flag9, flag10)
    vehicle = vehicle2
  end
  vehicle2 = type
  flag9 = arg1
  vehicle2 = vehicle2(flag9)
  if "number" == vehicle2 then
    vehicle2 = type
    flag9 = arg2
    vehicle2 = vehicle2(flag9)
    if "number" == vehicle2 then
      vehicle2 = type
      flag9 = arg3
      vehicle2 = vehicle2(flag9)
      if "number" == vehicle2 then
        goto flow_label_54
      end
    end
  end
  if 0 ~= vehicle then
    vehicle2 = GetEntityVelocity
    flag9 = vehicle
    vehicle2 = vehicle2(flag9)
    flag9 = vehicle2.x
    flag10 = vehicle2.y
    arg3 = vehicle2.z
    arg2 = flag10
    arg1 = flag9
  else
    vehicle2 = 0.0
    flag9 = 0.0
    arg3 = 0.0
    arg2 = flag9
    arg1 = vehicle2
  end
  ::flow_label_54::
  vehicle2 = GetEntityCoords
  flag9 = workValue6
  -- Beginner: result below is entityCoords.
  vehicle2 = vehicle2(flag9)
  flag9 = workValue
  flag10 = workValue6
  flag9 = flag9(flag10)
  flag10 = SetEntityCoords
  modelHash = workValue6
  workValue11 = vehicle2.x
  workValue2 = flag9.x
  workValue11 = workValue11 + workValue2
  workValue2 = vehicle2.y
  workValue3 = flag9.y
  workValue2 = workValue2 + workValue3
  workValue3 = vehicle2.z
  workValue3 = workValue3 - 0.47
  waitCall2 = true
  flag2 = true
  mathHelper = true
  flag3 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  flag10(modelHash, workValue11, workValue2, workValue3, waitCall2, flag2, mathHelper, flag3)
  flag10 = cmgCall.seatbeltEjectVelocityScale
  modelHash = cmgCall.seatbeltEjectUpwardImpulse
  workValue11 = arg1 * flag10
  workValue2 = arg2 * flag10
  workValue3 = arg3 * flag10
  workValue3 = workValue3 + modelHash
  waitCall2 = SetEntityVelocity
  flag2 = workValue6
  mathHelper = workValue11
  flag3 = workValue2
  numberValue = workValue3
  waitCall2(flag2, mathHelper, flag3, numberValue)
  waitCall2 = Wait
  flag2 = 0
  waitCall2(flag2)
  waitCall2 = SetEntityVelocity
  flag2 = workValue6
  mathHelper = workValue11
  flag3 = workValue2
  numberValue = workValue3
  waitCall2(flag2, mathHelper, flag3, numberValue)
  waitCall2 = ApplyDamageToPed
  flag2 = workValue6
  mathHelper = math
  mathHelper = mathHelper.random
  flag3 = 10
  numberValue = 30
  mathHelper = mathHelper(flag3, numberValue)
  flag3 = false
  waitCall2(flag2, mathHelper, flag3)
  waitCall2 = SetPedToRagdoll
  flag2 = workValue6
  mathHelper = 1000
  flag3 = 1000
  numberValue = 0
  flag4 = false
  flag5 = false
  flag6 = false
  waitCall2(flag2, mathHelper, flag3, numberValue, flag4, flag5, flag6)
  waitCall2 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION (decompiler name: flag2; parameters: none) ===
  function flag2()
    local waitCall, numberValue2, numberValue4, numberValue5, workValue7, waitCall3, numberValue8, workValue8, workValue9, workValue12
    waitCall = workValue6
    numberValue2 = 1
    numberValue4 = 15
    numberValue5 = 1
    for workValue7 = numberValue2, numberValue4, numberValue5 do
      waitCall3 = Wait
      numberValue8 = 0
      waitCall3(numberValue8)
      waitCall3 = DoesEntityExist
      numberValue8 = waitCall
      waitCall3 = waitCall3(numberValue8)
      if waitCall3 then
        waitCall3 = SetEntityVelocity
        numberValue8 = waitCall
        workValue8 = workValue11
        workValue9 = workValue2
        workValue12 = workValue3
        waitCall3(numberValue8, workValue8, workValue9, workValue12)
      end
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  waitCall2(flag2)
end
eventRegistration = RegisterNetEvent
flag = "86e5b246ad"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "86e5b246ad".
eventRegistration(flag)
eventRegistration = AddEventHandler
flag = "86e5b246ad"
-- Beginner: this function runs when client event "86e5b246ad" fires.

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1, arg2, arg3) ===
function textValue2(arg1, arg2, arg3)
  local workValue6, vehicle, vehicle2, flag9
  workValue6 = textValue
  vehicle = arg1
  vehicle2 = arg2
  flag9 = arg3
  workValue6(vehicle, vehicle2, flag9)
end
-- Beginner: Register a client-side event handler. Event/command: "86e5b246ad".
eventRegistration(flag, textValue2)
-- Beginner: this function runs when client event "86e5b246ad" fires.

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, arg2
  arg1 = flag7
  if not arg1 then
    return
  end
  arg1 = false
  flag7 = arg1
  arg1 = numberValue7
  arg1()
  arg1 = 0
  numberValue3 = arg1
end
flag = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2, arg3, workValue6, vehicle
  while true do
    arg1 = numberValue6
    arg1 = arg1()
    if arg1 then
      arg1 = flag7
      if arg1 then
        arg1 = CMG
        arg1 = arg1.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        arg1 = arg1()
        if 0 ~= arg1 then
          arg2 = textValue3
          arg3 = arg1
          arg2 = arg2(arg3)
          if arg2 then
            arg2 = DisableControlAction
            arg3 = 0
            workValue6 = 75
            vehicle = true
            arg2(arg3, workValue6, vehicle)
            arg2 = IsDisabledControlJustPressed
            arg3 = 0
            workValue6 = 75
            arg2 = arg2(arg3, workValue6)
            if arg2 then
              arg2 = eventRegistration
              -- Beginner: Register a client-side event handler.
              arg2()
            end
            arg2 = Wait
            arg3 = 0
            arg2(arg3)
        end
        else
          arg2 = Wait
          arg3 = 150
          arg2(arg3)
        end
    end
    else
      arg1 = Wait
      arg2 = 500
      arg1(arg2)
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
flag(textValue2)
flag = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2, arg3, workValue6, vehicle, vehicle2, flag9, flag10, modelHash, workValue11, workValue2, workValue3, waitCall2, flag2, mathHelper, flag3, numberValue, flag4, flag5, flag6, workValue5
  while true do
    arg1 = numberValue6
    arg1 = arg1()
    if arg1 then
      arg1 = CMG
      arg1 = arg1.getPlayerVehicle
      arg1, arg2 = arg1()
      if 0 ~= arg1 then
        arg3 = textValue3
        workValue6 = arg1
        arg3 = arg3(workValue6)
        if arg3 then
          if arg2 then
            arg3 = GetEntitySpeed
            workValue6 = arg1
            -- Beginner: result below is speed.
            arg3 = arg3(workValue6)
            arg3 = arg3 * 3.6
            workValue6 = numberValue3
            workValue6 = workValue6 - arg3
            vehicle = arg3 * 1.7
            workValue6 = workValue6 > vehicle
            vehicle = numberValue3
            vehicle2 = cmgCall.SeatbeltEjectSpeed
            vehicle = vehicle > vehicle2
            if vehicle and workValue6 then
              vehicle2 = {}
              flag9 = 1
              flag10 = GetVehicleModelNumberOfSeats
              modelHash = GetEntityModel
              workValue11 = arg1
              modelHash, workValue11, workValue2, workValue3, waitCall2, flag2, mathHelper, flag3, numberValue, flag4, flag5, flag6, workValue5 = modelHash(workValue11)
              flag10 = flag10(modelHash, workValue11, workValue2, workValue3, waitCall2, flag2, mathHelper, flag3, numberValue, flag4, flag5, flag6, workValue5)
              modelHash = 1
              for workValue11 = flag9, flag10, modelHash do
                workValue2 = IsVehicleSeatFree
                workValue3 = arg1
                waitCall2 = workValue11 - 2
                workValue2 = workValue2(workValue3, waitCall2)
                if not workValue2 then
                  workValue2 = GetPedInVehicleSeat
                  workValue3 = arg1
                  waitCall2 = workValue11 - 2
                  workValue2 = workValue2(workValue3, waitCall2)
                  workValue3 = NetworkGetPlayerIndexFromPed
                  waitCall2 = workValue2
                  workValue3 = workValue3(waitCall2)
                  waitCall2 = GetPlayerServerId
                  flag2 = workValue3
                  -- Beginner: result below is serverId.
                  waitCall2 = waitCall2(flag2)
                  flag2 = table
                  flag2 = flag2.insert
                  mathHelper = vehicle2
                  flag3 = waitCall2
                  flag2(mathHelper, flag3)
                end
              end
              flag9 = GetEntityVelocity
              flag10 = arg1
              flag9 = flag9(flag10)
              flag10 = flag9.x
              modelHash = flag9.y
              workValue11 = flag9.z
              workValue2 = flag10 * flag10
              workValue3 = modelHash * modelHash
              workValue2 = workValue2 + workValue3
              workValue3 = workValue11 * workValue11
              workValue2 = workValue2 + workValue3
              if workValue2 < 1.0 then
                flag10 = vector3Builder.x
                modelHash = vector3Builder.y
                workValue11 = vector3Builder.z
              end
              workValue3 = flag7
              if not workValue3 then
                workValue3 = textValue
                waitCall2 = flag10
                flag2 = modelHash
                mathHelper = workValue11
                workValue3(waitCall2, flag2, mathHelper)
              end
              workValue3 = GetPlayerServerId
              waitCall2 = PlayerId
              waitCall2, flag2, mathHelper, flag3, numberValue, flag4, flag5, flag6, workValue5 = waitCall2()
              -- Beginner: result below is serverId.
              workValue3 = workValue3(waitCall2, flag2, mathHelper, flag3, numberValue, flag4, flag5, flag6, workValue5)
              waitCall2 = {}
              flag2 = ipairs
              mathHelper = vehicle2
              flag2, mathHelper, flag3, numberValue = flag2(mathHelper)
              for flag4, flag5 in flag2, mathHelper, flag3, numberValue do
                flag6 = tonumber
                workValue5 = flag5
                flag6 = flag6(workValue5)
                if 0 ~= flag6 and flag5 ~= workValue3 then
                  flag6 = #waitCall2
                  flag6 = flag6 + 1
                  waitCall2[flag6] = flag5
                end
              end
              flag2 = #waitCall2
              if flag2 > 0 then
                flag2 = TriggerServerEvent
                mathHelper = "86e5b246ad"
                flag3 = waitCall2
                numberValue = flag10
                flag4 = modelHash
                flag5 = workValue11
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "86e5b246ad".
                flag2(mathHelper, flag3, numberValue, flag4, flag5)
              end
            end
            numberValue3 = arg3
            vehicle2 = GetEntityVelocity
            flag9 = arg1
            vehicle2 = vehicle2(flag9)
            vector3Builder = vehicle2
          end
      end
      else
        arg3 = flag7
        if arg3 then
          arg3 = eventRegistration
          -- Beginner: Register a client-side event handler.
          arg3()
        end
        arg3 = Wait
        workValue6 = 2000
        arg3(workValue6)
      end
    end
    arg1 = Wait
    arg2 = 150
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
flag(textValue2)
flag = AddEventHandler
textValue2 = "onClientResourceStart"
-- Beginner: this function runs when client event "onClientResourceStart" fires.

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1) ===
function workValue4(arg1)
  local arg2, arg3, workValue6
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 ~= arg2 then
    return
  end
  arg2 = CMG
  arg2 = arg2.sendHudNuiMessage
  arg3 = "SEATBELT_RESET_SOUND_STATE"
  workValue6 = true
  arg2(arg3, workValue6)
  arg2 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: arg3() ===
  function arg3()
    local waitCall, numberValue2
    waitCall = Wait
    numberValue2 = 250
    waitCall(numberValue2)
    waitCall = numberValue6
    waitCall = waitCall()
    if not waitCall then
      waitCall = true
      flag7 = waitCall
      waitCall = numberValue7
      waitCall()
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
end
-- Beginner: Register a client-side event handler. Event/command: "onClientResourceStart".
flag(textValue2, workValue4)
