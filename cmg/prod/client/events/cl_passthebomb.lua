--[[
    LEVEL 1 BEGINNER GUIDE — Passthebomb
    =========================================

    File: cmg/prod/client/events/cl_passthebomb.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: server event/minigame gameplay, specifically the Passthebomb feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 32
      * Background threads: 0
      * Always-running loops: 9
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
local cmgCall, dataTable, cmgCall2, workValue10, workValue11, workValue13, workValue15, workValue17, workValue19, workValue20, workValue, eventRegistration, textValue, workValue2, workValue3, workValue4, workValue5, workValue6, eventRegistration2, textValue2, workValue7
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable = "cfg/events/cfg_passthebomb"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable)
dataTable = {}
cmgCall2 = CMG
cmgCall2 = cmgCall2.createTimerBars
-- Beginner: result below is timerBars.
cmgCall2 = cmgCall2()

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
function workValue10()
  local arg1, arg2, arg3, flag11
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 23
  flag11 = true
  arg1(arg2, arg3, flag11)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 75
  flag11 = true
  arg1(arg2, arg3, flag11)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 24
  flag11 = true
  arg1(arg2, arg3, flag11)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 25
  flag11 = true
  arg1(arg2, arg3, flag11)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 37
  flag11 = true
  arg1(arg2, arg3, flag11)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 12
  flag11 = true
  arg1(arg2, arg3, flag11)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 13
  flag11 = true
  arg1(arg2, arg3, flag11)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 14
  flag11 = true
  arg1(arg2, arg3, flag11)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 15
  flag11 = true
  arg1(arg2, arg3, flag11)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 16
  flag11 = true
  arg1(arg2, arg3, flag11)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 17
  flag11 = true
  arg1(arg2, arg3, flag11)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 53
  flag11 = true
  arg1(arg2, arg3, flag11)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 54
  flag11 = true
  arg1(arg2, arg3, flag11)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 99
  flag11 = true
  arg1(arg2, arg3, flag11)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 100
  flag11 = true
  arg1(arg2, arg3, flag11)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 261
  flag11 = true
  arg1(arg2, arg3, flag11)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 262
  flag11 = true
  arg1(arg2, arg3, flag11)
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg1, arg2) ===
function workValue11(arg1, arg2)
  local arg3, flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2, flag3, mathHelper
  arg3 = arg1.updated
  arg3 = arg2 - arg3
  flag11 = 5000
  if arg3 > flag11 then
    arg1.updated = arg2
    arg3 = UseParticleFxAsset
    flag11 = arg1.asset
    arg3(flag11)
    arg3 = StartParticleFxNonLoopedAtCoord
    flag11 = arg1.name
    flag12 = arg1.pos
    flag12 = flag12.x
    numberValue12 = arg1.pos
    numberValue12 = numberValue12.y
    numberValue13 = arg1.pos
    numberValue13 = numberValue13.z
    numberValue14 = 0.0
    flag13 = 0.0
    numberValue15 = 0.0
    numberValue = 1.0
    flag2 = false
    flag3 = false
    mathHelper = false
    arg3(flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2, flag3, mathHelper)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: arg1, arg2) ===
function workValue13(arg1, arg2)
  local arg3, flag11
  arg3 = arg1.updated
  arg3 = arg2 - arg3
  flag11 = 5000
  if arg3 > flag11 then
    arg1.updated = arg2
    arg3 = Citizen
    arg3 = arg3.CreateThread

    -- === HELPER FUNCTION (decompiler name: flag11; parameters: none) ===
    function flag11()
      local arg12, waitCall, numberValue11, nameValue, workValue12, workValue14, workValue16, workValue18, flag14, numberValue16, flag
      arg12 = GetSoundId
      -- Beginner: result below is soundHandle.
      arg12 = arg12()
      waitCall = PlaySoundFromCoord
      numberValue11 = arg12
      nameValue = arg1.name
      workValue12 = arg1.pos
      workValue12 = workValue12.x
      workValue14 = arg1.pos
      workValue14 = workValue14.y
      workValue16 = arg1.pos
      workValue16 = workValue16.z
      workValue18 = arg1.soundset
      flag14 = false
      numberValue16 = 0
      flag = false
      waitCall(numberValue11, nameValue, workValue12, workValue14, workValue16, workValue18, flag14, numberValue16, flag)
      waitCall = Citizen
      waitCall = waitCall.Wait
      numberValue11 = 5000
      waitCall(numberValue11)
      waitCall = StopSound
      numberValue11 = arg12
      waitCall(numberValue11)
      waitCall = ReleaseSoundId
      numberValue11 = arg12
      waitCall(numberValue11)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg3(flag11)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1) ===
function workValue15(arg1)
  local arg2, arg3, flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  arg3 = GetEntityCoords
  flag11 = arg1
  flag12 = true
  -- Beginner: result below is entityCoords.
  arg3 = arg3(flag11, flag12)
  flag11 = dataTable.particles
  if flag11 then
    flag11 = ipairs
    flag12 = dataTable.particles
    flag11, flag12, numberValue12, numberValue13 = flag11(flag12)
    for numberValue14, flag13 in flag11, flag12, numberValue12, numberValue13 do
      numberValue15 = flag13.pos
      numberValue15 = numberValue15 - arg3
      numberValue15 = #numberValue15
      numberValue = flag13.range
      if numberValue15 < numberValue then
        numberValue15 = workValue11
        numberValue = flag13
        flag2 = arg2
        numberValue15(numberValue, flag2)
      end
    end
  end
  flag11 = dataTable.sounds
  if flag11 then
    flag11 = ipairs
    flag12 = dataTable.sounds
    flag11, flag12, numberValue12, numberValue13 = flag11(flag12)
    for numberValue14, flag13 in flag11, flag12, numberValue12, numberValue13 do
      numberValue15 = flag13.pos
      numberValue15 = numberValue15 - arg3
      numberValue15 = #numberValue15
      numberValue = flag13.range
      if numberValue15 < numberValue then
        numberValue15 = workValue13
        numberValue = flag13
        flag2 = arg2
        numberValue15(numberValue, flag2)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1, arg2) ===
function workValue17(arg1, arg2)
  local arg3, flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2, flag3, mathHelper, flag4
  if arg1 then
    arg3 = Entity
    flag11 = arg2
    arg3 = arg3(flag11)
    arg3 = arg3.state
    arg3 = arg3.particle
    if not arg3 then
      arg3 = UseParticleFxAsset
      flag11 = "scr_ar_planes"
      arg3(flag11)
      arg3 = StartParticleFxLoopedOnEntity
      flag11 = "scr_ar_trail_smoke"
      flag12 = arg2
      numberValue12 = 0.0
      numberValue13 = -1.0
      numberValue14 = 0.0
      flag13 = 0.0
      numberValue15 = 0.0
      numberValue = 0.0
      flag2 = 1.0
      flag3 = false
      mathHelper = false
      flag4 = false
      arg3 = arg3(flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2, flag3, mathHelper, flag4)
      flag11 = SetParticleFxLoopedScale
      flag12 = arg3
      numberValue12 = 0.5
      flag11(flag12, numberValue12)
      flag11 = SetParticleFxLoopedFarClipDist
      flag12 = arg3
      numberValue12 = 1000.0
      flag11(flag12, numberValue12)
      flag11 = SetParticleFxLoopedColour
      flag12 = arg3
      numberValue12 = 1.0
      numberValue13 = 0.0
      numberValue14 = 0.0
      flag13 = false
      flag11(flag12, numberValue12, numberValue13, numberValue14, flag13)
      flag11 = Entity
      flag12 = arg2
      flag11 = flag11(flag12)
      flag11 = flag11.state
      flag11.particle = arg3
    end
  else
    arg3 = Entity
    flag11 = arg2
    arg3 = arg3(flag11)
    arg3 = arg3.state
    arg3 = arg3.particle
    if arg3 then
      flag11 = StopParticleFxLooped
      flag12 = arg3
      numberValue12 = false
      flag11(flag12, numberValue12)
      flag11 = Entity
      flag12 = arg2
      flag11 = flag11(flag12)
      flag11 = flag11.state
      flag11.particle = nil
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue19; parameters: arg1) ===
function workValue19(arg1)
  local arg2, arg3, flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2, flag3, mathHelper, flag4, numberValue2, numberValue3, numberValue4, numberValue5, flag5, flag6, numberValue6, numberValue7, numberValue8, numberValue9, flag7, flag8, numberValue10, flag9, workValue8, workValue9, flag10
  arg2 = dataTable.boxes
  if not arg2 then
    return
  end
  arg2 = ipairs
  arg3 = dataTable.boxes
  arg2, arg3, flag11, flag12 = arg2(arg3)
  for numberValue12, numberValue13 in arg2, arg3, flag11, flag12 do
    numberValue14 = numberValue13.visible
    if numberValue14 then
      numberValue14 = DrawMarker
      flag13 = 32
      numberValue15 = numberValue13.pos
      numberValue15 = numberValue15.x
      numberValue = numberValue13.pos
      numberValue = numberValue.y
      flag2 = numberValue13.pos
      flag2 = flag2.z
      flag2 = flag2 + 2.0
      flag3 = 0.0
      mathHelper = 0.0
      flag4 = 0.0
      numberValue2 = 0.0
      numberValue3 = 0.0
      numberValue4 = 0.0
      numberValue5 = 5.0
      flag5 = 5.0
      flag6 = 5.0
      numberValue6 = 0
      numberValue7 = 255
      numberValue8 = 0
      numberValue9 = 255
      flag7 = true
      flag8 = true
      numberValue10 = 2
      flag9 = false
      workValue8 = nil
      workValue9 = nil
      flag10 = false
      numberValue14(flag13, numberValue15, numberValue, flag2, flag3, mathHelper, flag4, numberValue2, numberValue3, numberValue4, numberValue5, flag5, flag6, numberValue6, numberValue7, numberValue8, numberValue9, flag7, flag8, numberValue10, flag9, workValue8, workValue9, flag10)
      numberValue14 = numberValue13.pos
      numberValue14 = numberValue14 - arg1
      numberValue14 = #numberValue14
      if numberValue14 < 5.0 then
        numberValue14 = dataTable.hasBoost
        if not numberValue14 then
          numberValue14 = TriggerServerEvent
          flag13 = "a300517b73"
          numberValue15 = numberValue12
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a300517b73".
          numberValue14(flag13, numberValue15)
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue20; parameters: arg1) ===
function workValue20(arg1)
  local arg2, arg3, flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2
  arg2 = cmgCall.locations
  arg2 = arg2[arg1]
  dataTable.colour = 1
  arg3 = arg2.vehicles
  dataTable.vehicles = arg3
  arg3 = arg2.bounds
  dataTable.bounds = arg3
  dataTable.confirmedCharacter = false
  arg3 = arg2.particles
  if arg3 then
    arg3 = json
    arg3 = arg3.decode
    flag11 = json
    flag11 = flag11.encode
    flag12 = arg2.particles
    flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2 = flag11(flag12)
    arg3 = arg3(flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2)
    dataTable.particles = arg3
    arg3 = ipairs
    flag11 = dataTable.particles
    arg3, flag11, flag12, numberValue12 = arg3(flag11)
    for numberValue13, numberValue14 in arg3, flag11, flag12, numberValue12 do
      flag13 = vector3
      numberValue15 = numberValue14.pos
      numberValue15 = numberValue15.x
      numberValue = numberValue14.pos
      numberValue = numberValue.y
      flag2 = numberValue14.pos
      flag2 = flag2.z
      flag13 = flag13(numberValue15, numberValue, flag2)
      numberValue14.pos = flag13
      numberValue14.updated = 0
    end
  end
  arg3 = arg2.sounds
  if arg3 then
    arg3 = json
    arg3 = arg3.decode
    flag11 = json
    flag11 = flag11.encode
    flag12 = arg2.sounds
    flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2 = flag11(flag12)
    arg3 = arg3(flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2)
    dataTable.sounds = arg3
    arg3 = ipairs
    flag11 = dataTable.sounds
    arg3, flag11, flag12, numberValue12 = arg3(flag11)
    for numberValue13, numberValue14 in arg3, flag11, flag12, numberValue12 do
      flag13 = vector3
      numberValue15 = numberValue14.pos
      numberValue15 = numberValue15.x
      numberValue = numberValue14.pos
      numberValue = numberValue.y
      flag2 = numberValue14.pos
      flag2 = flag2.z
      flag13 = flag13(numberValue15, numberValue, flag2)
      numberValue14.pos = flag13
      numberValue14.updated = 0
    end
  end
  arg3 = arg2.boxes
  if arg3 then
    arg3 = json
    arg3 = arg3.decode
    flag11 = json
    flag11 = flag11.encode
    flag12 = arg2.boxes
    flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2 = flag11(flag12)
    arg3 = arg3(flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2)
    dataTable.boxes = arg3
    arg3 = ipairs
    flag11 = dataTable.boxes
    arg3, flag11, flag12, numberValue12 = arg3(flag11)
    for numberValue13, numberValue14 in arg3, flag11, flag12, numberValue12 do
      flag13 = vector3
      numberValue15 = numberValue14.pos
      numberValue15 = numberValue15.x
      numberValue = numberValue14.pos
      numberValue = numberValue.y
      flag2 = numberValue14.pos
      flag2 = flag2.z
      flag13 = flag13(numberValue15, numberValue, flag2)
      numberValue14.pos = flag13
      numberValue14.visible = true
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2, arg3, flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2
  arg1 = SetPedIntoVehicle
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = dataTable.vehicle
  flag11 = -1
  arg1(arg2, arg3, flag11)
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  arg2 = dataTable
  while true do
    arg3 = NetworkHasControlOfEntity
    flag11 = dataTable.vehicle
    arg3 = arg3(flag11)
    if arg3 then
      break
    end
    arg3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg3 = arg3()
    arg3 = arg3 - arg1
    flag11 = 2000
    if not (arg3 < flag11) then
      break
    end
    arg3 = Citizen
    arg3 = arg3.Wait
    flag11 = 0
    arg3(flag11)
    arg3 = dataTable
    if arg2 ~= arg3 then
      return
    end
  end
  arg3 = dataTable.position
  if nil == arg3 then
    arg3 = print
    flag11 = "[Pass The Bomb] Deleting vehicle on spawn, no position was set."
    arg3(flag11)
    arg3 = DeleteEntity
    flag11 = dataTable.vehicle
    -- Beginner: Delete a GTA entity.
    arg3(flag11)
    return
  end
  arg3 = SetEntityCoordsNoOffset
  flag11 = dataTable.vehicle
  flag12 = dataTable.position
  flag12 = flag12.x
  numberValue12 = dataTable.position
  numberValue12 = numberValue12.y
  numberValue13 = dataTable.position
  numberValue13 = numberValue13.z
  numberValue14 = true
  flag13 = false
  numberValue15 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg3(flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15)
  arg3 = SetVehicleOnGroundProperly
  flag11 = dataTable.vehicle
  arg3(flag11)
  arg3 = FreezeEntityPosition
  flag11 = dataTable.vehicle
  flag12 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg3(flag11, flag12)
  arg3 = SetVehRadioStation
  flag11 = dataTable.vehicle
  flag12 = "OFF"
  arg3(flag11, flag12)
  arg3 = SetVehicleRadioEnabled
  flag11 = dataTable.vehicle
  flag12 = false
  arg3(flag11, flag12)
  arg3 = SetEntityProofs
  flag11 = dataTable.vehicle
  flag12 = false
  numberValue12 = false
  numberValue13 = false
  numberValue14 = false
  flag13 = false
  numberValue15 = false
  numberValue = false
  flag2 = false
  arg3(flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2)
  arg3 = Citizen
  arg3 = arg3.CreateThreadNow

  -- === HELPER FUNCTION (decompiler name: flag11; parameters: none) ===
  function flag11()
    local arg12, waitCall, numberValue11, nameValue, workValue12, workValue14
    arg12 = -1
    waitCall = -1
    while true do
      numberValue11 = dataTable.colour
      if arg12 == numberValue11 then
        numberValue11 = dataTable.colour
        if waitCall == numberValue11 then
          break
        end
      end
      numberValue11 = SetVehicleColours
      nameValue = dataTable.vehicle
      workValue12 = dataTable.colour
      workValue14 = dataTable.colour
      numberValue11(nameValue, workValue12, workValue14)
      numberValue11 = GetVehicleColours
      nameValue = dataTable.vehicle
      numberValue11, nameValue = numberValue11(nameValue)
      waitCall = nameValue
      arg12 = numberValue11
      numberValue11 = Citizen
      numberValue11 = numberValue11.Wait
      nameValue = 0
      numberValue11(nameValue)
    end
  end
  arg3(flag11)
end
eventRegistration = RegisterNetEvent
textValue = "e3df374c4b"
-- Beginner: this function handles network event "e3df374c4b".

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1) ===
function workValue2(arg1)
  local arg2, arg3, flag11, flag12
  arg2 = DoesEntityExist
  arg3 = dataTable.vehicle
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = DeleteEntity
    arg3 = dataTable.vehicle
    -- Beginner: Delete a GTA entity.
    arg2(arg3)
  end
  arg2 = dataTable
  while true do
    arg3 = DoesEntityExist
    flag11 = dataTable.vehicle
    arg3 = arg3(flag11)
    if arg3 then
      break
    end
    arg3 = NetworkDoesEntityExistWithNetworkId
    flag11 = arg1
    arg3 = arg3(flag11)
    if arg3 then
      arg3 = NetworkGetEntityFromNetworkId
      flag11 = arg1
      arg3 = arg3(flag11)
      dataTable.vehicle = arg3
    end
    arg3 = Citizen
    arg3 = arg3.Wait
    flag11 = 0
    arg3(flag11)
    arg3 = dataTable
    if arg2 ~= arg3 then
      return
    end
  end
  while true do
    arg3 = NetworkHasControlOfEntity
    flag11 = dataTable.vehicle
    arg3 = arg3(flag11)
    if arg3 then
      arg3 = GetPedInVehicleSeat
      flag11 = dataTable.vehicle
      flag12 = -1
      arg3 = arg3(flag11, flag12)
      flag11 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      flag11 = flag11()
      if arg3 == flag11 then
        break
      end
    end
    arg3 = Citizen
    arg3 = arg3.Wait
    flag11 = 0
    arg3(flag11)
    arg3 = dataTable
    if arg2 ~= arg3 then
      return
    end
  end
  arg3 = workValue
  arg3()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e3df374c4b".
eventRegistration(textValue, workValue2)

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, arg2, arg3, flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2
  arg1 = {}
  arg2 = ipairs
  arg3 = CMG
  arg3 = arg3.getActiveEventPlayers
  arg3, flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2 = arg3()
  arg2, arg3, flag11, flag12 = arg2(arg3, flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2)
  for numberValue12, numberValue13 in arg2, arg3, flag11, flag12 do
    numberValue14 = numberValue13.hasBomb
    if numberValue14 then
      numberValue14 = GetPlayerFromServerId
      flag13 = numberValue13.source
      -- Beginner: result below is playerIndex.
      numberValue14 = numberValue14(flag13)
      if -1 ~= numberValue14 then
        flag13 = table
        flag13 = flag13.insert
        numberValue15 = arg1
        numberValue = CMG
        numberValue = numberValue.getPlayerName
        flag2 = numberValue14
        numberValue, flag2 = numberValue(flag2)
        flag13(numberValue15, numberValue, flag2)
      end
    end
  end
  arg2 = #arg1
  if 2 == arg2 then
    arg2 = string
    arg2 = arg2.format
    arg3 = "~y~Escape~w~ the ~r~bombers~w~ %s and %s"
    flag11 = arg1[1]
    flag12 = arg1[2]
    return arg2(arg3, flag11, flag12)
  else
    arg2 = #arg1
    if 1 == arg2 then
      arg2 = string
      arg2 = arg2.format
      arg3 = "~y~Escape~w~ %s the ~r~bomber~w~"
      flag11 = arg1[1]
      return arg2(arg3, flag11)
    end
  end
  arg2 = "~y~Escape~w~ the ~r~bomber~w~"
  return arg2
end

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2, arg3, flag11, flag12, numberValue12, numberValue13
  arg1 = DoesEntityExist
  arg2 = dataTable.vehicle
  arg1 = arg1(arg2)
  if not arg1 then
    return
  end
  arg1 = {}
  arg2 = GetVehicleHandlingFloat
  arg3 = dataTable.vehicle
  flag11 = "CHandlingData"
  flag12 = "fDownforceModifier"
  arg2 = arg2(arg3, flag11, flag12)
  arg1.downforce = arg2
  arg2 = GetVehicleHandlingFloat
  arg3 = dataTable.vehicle
  flag11 = "CHandlingData"
  flag12 = "fDriveInertia"
  arg2 = arg2(arg3, flag11, flag12)
  arg1.driveInertia = arg2
  arg2 = GetVehicleHandlingFloat
  arg3 = dataTable.vehicle
  flag11 = "CHandlingData"
  flag12 = "fTractionCurveMin"
  arg2 = arg2(arg3, flag11, flag12)
  arg1.curveMin = arg2
  arg2 = GetVehicleHandlingFloat
  arg3 = dataTable.vehicle
  flag11 = "CHandlingData"
  flag12 = "fTractionCurveMax"
  arg2 = arg2(arg3, flag11, flag12)
  arg1.curveMax = arg2
  arg2 = GetVehicleHandlingFloat
  arg3 = dataTable.vehicle
  flag11 = "CHandlingData"
  flag12 = "fAntiRollBarForce"
  arg2 = arg2(arg3, flag11, flag12)
  arg1.antiRollBarForce = arg2
  arg2 = GetVehicleHandlingFloat
  arg3 = dataTable.vehicle
  flag11 = "CHandlingData"
  flag12 = "fAntiRollBarBiasFront"
  arg2 = arg2(arg3, flag11, flag12)
  arg1.antiRollBarBiasFront = arg2
  arg2 = GetVehicleHandlingFloat
  arg3 = dataTable.vehicle
  flag11 = "CHandlingData"
  flag12 = "fRollCentreHeightFront"
  arg2 = arg2(arg3, flag11, flag12)
  arg1.rollCentreHeightFront = arg2
  arg2 = GetVehicleHandlingFloat
  arg3 = dataTable.vehicle
  flag11 = "CHandlingData"
  flag12 = "fRollCentreHeightRear"
  arg2 = arg2(arg3, flag11, flag12)
  arg1.rollCentreHeightRear = arg2
  dataTable.boostHandling = arg1
  arg1 = GetEntityModel
  arg2 = dataTable.vehicle
  -- Beginner: result below is modelHash.
  arg1 = arg1(arg2)
  arg2 = cmgCall.handlings
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = SetVehicleHandlingFloat
    flag11 = dataTable.vehicle
    flag12 = "CHandlingData"
    numberValue12 = "fDownforceModifier"
    numberValue13 = arg2.fDownforceModifier
    arg3(flag11, flag12, numberValue12, numberValue13)
    arg3 = SetVehicleHandlingFloat
    flag11 = dataTable.vehicle
    flag12 = "CHandlingData"
    numberValue12 = "fDriveInertia"
    numberValue13 = dataTable.boostHandling
    numberValue13 = numberValue13.driveInertia
    numberValue13 = numberValue13 * 1.5
    arg3(flag11, flag12, numberValue12, numberValue13)
    arg3 = SetVehicleHandlingFloat
    flag11 = dataTable.vehicle
    flag12 = "CHandlingData"
    numberValue12 = "fTractionCurveMin"
    numberValue13 = arg2.fTractionCurveMin
    arg3(flag11, flag12, numberValue12, numberValue13)
    arg3 = SetVehicleHandlingFloat
    flag11 = dataTable.vehicle
    flag12 = "CHandlingData"
    numberValue12 = "fTractionCurveMax"
    numberValue13 = arg2.fTractionCurveMax
    arg3(flag11, flag12, numberValue12, numberValue13)
    arg3 = SetVehicleHandlingFloat
    flag11 = dataTable.vehicle
    flag12 = "CHandlingData"
    numberValue12 = "fAntiRollBarForce"
    numberValue13 = arg2.fAntiRollBarForce
    arg3(flag11, flag12, numberValue12, numberValue13)
    arg3 = SetVehicleHandlingFloat
    flag11 = dataTable.vehicle
    flag12 = "CHandlingData"
    numberValue12 = "fAntiRollBarBiasFront"
    numberValue13 = arg2.fAntiRollBarBiasFront
    arg3(flag11, flag12, numberValue12, numberValue13)
    arg3 = SetVehicleHandlingFloat
    flag11 = dataTable.vehicle
    flag12 = "CHandlingData"
    numberValue12 = "fRollCentreHeightFront"
    numberValue13 = arg2.fRollCentreHeightFront
    arg3(flag11, flag12, numberValue12, numberValue13)
    arg3 = SetVehicleHandlingFloat
    flag11 = dataTable.vehicle
    flag12 = "CHandlingData"
    numberValue12 = "fRollCentreHeightRear"
    numberValue13 = arg2.fRollCentreHeightRear
    arg3(flag11, flag12, numberValue12, numberValue13)
  else
    arg3 = SetVehicleHandlingFloat
    flag11 = dataTable.vehicle
    flag12 = "CHandlingData"
    numberValue12 = "fDriveInertia"
    numberValue13 = dataTable.boostHandling
    numberValue13 = numberValue13.driveInertia
    numberValue13 = numberValue13 * 1.5
    arg3(flag11, flag12, numberValue12, numberValue13)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: none) ===
function workValue2()
  local arg1, arg2, arg3, flag11, flag12
  arg1 = SetVehicleHandlingFloat
  arg2 = dataTable.vehicle
  arg3 = "CHandlingData"
  flag11 = "fDownforceModifier"
  flag12 = dataTable.boostHandling
  flag12 = flag12.downforce
  arg1(arg2, arg3, flag11, flag12)
  arg1 = SetVehicleHandlingFloat
  arg2 = dataTable.vehicle
  arg3 = "CHandlingData"
  flag11 = "fDriveInertia"
  flag12 = dataTable.boostHandling
  flag12 = flag12.driveInertia
  arg1(arg2, arg3, flag11, flag12)
  arg1 = SetVehicleHandlingFloat
  arg2 = dataTable.vehicle
  arg3 = "CHandlingData"
  flag11 = "fTractionCurveMin"
  flag12 = dataTable.boostHandling
  flag12 = flag12.curveMin
  arg1(arg2, arg3, flag11, flag12)
  arg1 = SetVehicleHandlingFloat
  arg2 = dataTable.vehicle
  arg3 = "CHandlingData"
  flag11 = "fTractionCurveMax"
  flag12 = dataTable.boostHandling
  flag12 = flag12.curveMax
  arg1(arg2, arg3, flag11, flag12)
  arg1 = SetVehicleHandlingFloat
  arg2 = dataTable.vehicle
  arg3 = "CHandlingData"
  flag11 = "fAntiRollBarForce"
  flag12 = dataTable.boostHandling
  flag12 = flag12.antiRollBarForce
  arg1(arg2, arg3, flag11, flag12)
  arg1 = SetVehicleHandlingFloat
  arg2 = dataTable.vehicle
  arg3 = "CHandlingData"
  flag11 = "fAntiRollBarBiasFront"
  flag12 = dataTable.boostHandling
  flag12 = flag12.antiRollBarBiasFront
  arg1(arg2, arg3, flag11, flag12)
  arg1 = SetVehicleHandlingFloat
  arg2 = dataTable.vehicle
  arg3 = "CHandlingData"
  flag11 = "fRollCentreHeightFront"
  flag12 = dataTable.boostHandling
  flag12 = flag12.rollCentreHeightFront
  arg1(arg2, arg3, flag11, flag12)
  arg1 = SetVehicleHandlingFloat
  arg2 = dataTable.vehicle
  arg3 = "CHandlingData"
  flag11 = "fRollCentreHeightRear"
  flag12 = dataTable.boostHandling
  flag12 = flag12.rollCentreHeightRear
  arg1(arg2, arg3, flag11, flag12)
  dataTable.boostHandling = nil
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, flag11, flag12, numberValue12
  arg3 = HasEntityBeenDamagedByEntity
  flag11 = arg1
  flag12 = arg2
  numberValue12 = true
  arg3 = arg3(flag11, flag12, numberValue12)
  if not arg3 then
    arg3 = HasEntityBeenDamagedByEntity
    flag11 = arg2
    flag12 = arg1
    numberValue12 = true
    arg3 = arg3(flag11, flag12, numberValue12)
    if not arg3 then
      arg3 = IsEntityTouchingEntity
      flag11 = arg1
      flag12 = arg2
      arg3 = arg3(flag11, flag12)
      if not arg3 then
        arg3 = IsEntityTouchingEntity
        flag11 = arg2
        flag12 = arg1
        arg3 = arg3(flag11, flag12)
      end
    end
  end
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1, arg2, arg3) ===
function workValue4(arg1, arg2, arg3)
  local flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue
  flag11 = GetPlayerFromServerId
  flag12 = arg3.source
  -- Beginner: result below is playerIndex.
  flag11 = flag11(flag12)
  if -1 == flag11 then
    return
  end
  flag12 = GetPlayerPed
  numberValue12 = flag11
  -- Beginner: result below is playerPed.
  flag12 = flag12(numberValue12)
  numberValue12 = HasEntityClearLosToEntity
  numberValue13 = arg1
  numberValue14 = flag12
  flag13 = 17
  numberValue12 = numberValue12(numberValue13, numberValue14, flag13)
  numberValue13 = SetMpGamerTagVisibility
  numberValue14 = arg3.tag
  flag13 = 0
  numberValue15 = numberValue12
  numberValue13(numberValue14, flag13, numberValue15)
  numberValue13 = SetMpGamerTagVisibility
  numberValue14 = arg3.tag
  flag13 = 29
  numberValue15 = arg3.hasBomb
  if numberValue15 then
    numberValue15 = numberValue12
  end
  numberValue13(numberValue14, flag13, numberValue15)
  numberValue13 = arg3.blip
  if numberValue13 then
    numberValue13 = arg3.active
    if numberValue13 then
      numberValue13 = GetBlipColour
      numberValue14 = arg3.blip
      numberValue13 = numberValue13(numberValue14)
      numberValue14 = SetBlipSprite
      flag13 = arg3.blip
      numberValue15 = arg3.hasBomb
      if numberValue15 then
        numberValue15 = 486
        if numberValue15 then
          goto flow_label_46
        end
      end
      numberValue15 = 1
      ::flow_label_46::
      numberValue14(flag13, numberValue15)
      numberValue14 = SetBlipScale
      flag13 = arg3.blip
      numberValue15 = arg3.hasBomb
      if numberValue15 then
        numberValue15 = 1.5
        if numberValue15 then
          goto flow_label_56
        end
      end
      numberValue15 = 1.0
      ::flow_label_56::
      numberValue14(flag13, numberValue15)
      numberValue14 = BeginTextCommandSetBlipName
      flag13 = "STRING"
      numberValue14(flag13)
      numberValue14 = AddTextComponentSubstringPlayerName
      flag13 = CMG
      flag13 = flag13.getPlayerName
      numberValue15 = flag11
      flag13, numberValue15, numberValue = flag13(numberValue15)
      numberValue14(flag13, numberValue15, numberValue)
      numberValue14 = EndTextCommandSetBlipName
      flag13 = arg3.blip
      numberValue14(flag13)
      numberValue14 = SetBlipColour
      flag13 = arg3.blip
      numberValue15 = numberValue13
      numberValue14(flag13, numberValue15)
    end
  end
  numberValue13 = GetVehiclePedIsUsing
  numberValue14 = flag12
  numberValue13 = numberValue13(numberValue14)
  if 0 == numberValue13 then
    return
  end
  numberValue14 = workValue17
  flag13 = arg3.hasBomb
  numberValue15 = numberValue13
  numberValue14(flag13, numberValue15)
  numberValue14 = workValue15
  flag13 = numberValue13
  numberValue14(flag13)
  numberValue14 = CMG
  numberValue14 = numberValue14.getEventLocalPlayer
  numberValue14 = numberValue14()
  if numberValue14 then
    flag13 = numberValue14.hasBomb
    if flag13 then
      flag13 = arg3.hasBomb
      if not flag13 then
        flag13 = workValue3
        numberValue15 = numberValue13
        numberValue = arg2
        flag13 = flag13(numberValue15, numberValue)
        if flag13 then
          flag13 = TriggerServerEvent
          numberValue15 = "a6af2d3e26"
          numberValue = arg3.source
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a6af2d3e26".
          flag13(numberValue15, numberValue)
          flag13 = ClearEntityLastDamageEntity
          numberValue15 = numberValue13
          flag13(numberValue15)
          flag13 = ClearEntityLastDamageEntity
          numberValue15 = arg2
          flag13(numberValue15)
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: none) ===
function workValue5()
  local arg1, arg2, arg3, flag11, flag12, numberValue12
  arg1 = CMG
  arg1 = arg1.getActiveEventPlayers
  arg1 = arg1()
  arg1 = #arg1
  arg2 = currentEvent
  arg2 = arg2.players
  arg2 = #arg2
  arg2 = arg2 - arg1
  arg3 = cmgCall2.push
  flag11 = "~y~ELIMINATED~w~"
  flag12 = tostring
  numberValue12 = arg2
  flag12, numberValue12 = flag12(numberValue12)
  arg3(flag11, flag12, numberValue12)
  arg3 = cmgCall2.push
  flag11 = "~y~REMAINING~w~"
  flag12 = tostring
  numberValue12 = arg1
  flag12, numberValue12 = flag12(numberValue12)
  arg3(flag11, flag12, numberValue12)
end

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
function workValue6()
  local arg1, arg2, arg3, flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2, flag3
  arg1 = workValue10
  arg1()
  arg1 = cmgCall2.reset
  arg1()
  arg1 = workValue5
  arg1()
  arg1 = CMG
  arg1 = arg1.getEventLocalPlayer
  arg1 = arg1()
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = GetVehiclePedIsUsing
  flag11 = arg2
  arg3 = arg3(flag11)
  if 0 == arg3 then
    if arg1 then
      flag11 = arg1.active
      if flag11 then
        flag11 = SetPedIntoVehicle
        flag12 = arg2
        numberValue12 = dataTable.vehicle
        numberValue13 = -1
        flag11(flag12, numberValue12, numberValue13)
      end
    end
  else
    flag11 = dataTable.vehicle
    if arg3 ~= flag11 then
      dataTable.vehicle = arg3
    end
  end
  flag11 = 0
  flag12 = 5
  numberValue12 = 1
  for numberValue13 = flag11, flag12, numberValue12 do
    numberValue14 = SetTyreTractionLossMultiplier
    flag13 = dataTable.vehicle
    numberValue15 = numberValue13
    numberValue = 0.0
    numberValue14(flag13, numberValue15, numberValue)
  end
  flag11 = FreezeEntityPosition
  flag12 = dataTable.vehicle
  numberValue12 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  flag11(flag12, numberValue12)
  flag11 = SetVehicleEngineOn
  flag12 = dataTable.vehicle
  numberValue12 = true
  numberValue13 = true
  numberValue14 = false
  flag11(flag12, numberValue12, numberValue13, numberValue14)
  flag11 = SetVehicleColours
  flag12 = dataTable.vehicle
  numberValue12 = dataTable.colour
  numberValue13 = dataTable.colour
  flag11(flag12, numberValue12, numberValue13)
  flag11 = ipairs
  flag12 = currentEvent
  flag12 = flag12.players
  flag11, flag12, numberValue12, numberValue13 = flag11(flag12)
  for numberValue14, flag13 in flag11, flag12, numberValue12, numberValue13 do
    numberValue15 = workValue4
    numberValue = arg2
    flag2 = arg3
    flag3 = flag13
    numberValue15(numberValue, flag2, flag3)
  end
  if arg1 then
    flag11 = arg1.active
    if flag11 then
      flag11 = DoesEntityExist
      flag12 = dataTable.vehicle
      flag11 = flag11(flag12)
      if flag11 then
        flag11 = GetEntityHealth
        flag12 = arg2
        -- Beginner: result below is health.
        flag11 = flag11(flag12)
        if not (flag11 <= 10) then
          flag11 = IsPedDeadOrDying
          flag12 = arg2
          numberValue12 = false
          flag11 = flag11(flag12, numberValue12)
          if not flag11 then
            flag11 = GetEntityHealth
            flag12 = dataTable.vehicle
            -- Beginner: result below is health.
            flag11 = flag11(flag12)
            if not (flag11 <= 50) then
              goto flow_label_100
            end
          end
        end
      end
      flag11 = TriggerServerEvent
      flag12 = "6756dab544"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6756dab544".
      flag11(flag12)
      arg1.active = false
      ::flow_label_100::
      flag11 = GetEntityCoords
      flag12 = arg2
      numberValue12 = true
      -- Beginner: result below is entityCoords.
      flag11 = flag11(flag12, numberValue12)
      flag12 = workValue19
      numberValue12 = flag11
      flag12(numberValue12)
      flag12 = SetPlayerControl
      numberValue12 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      numberValue12 = numberValue12()
      numberValue13 = true
      numberValue14 = 0
      flag12(numberValue12, numberValue13, numberValue14)
      flag12 = arg1.hasBomb
      if not flag12 then
        flag12 = dataTable.hasBoost
        if not flag12 then
          goto flow_label_125
        end
      end
      flag12 = dataTable.boostHandling
      if not flag12 then
        flag12 = textValue
        flag12()
        goto flow_label_130
        ::flow_label_125::
        flag12 = dataTable.boostHandling
        if flag12 then
          flag12 = workValue2
          flag12()
        end
      end
      ::flow_label_130::
      flag12 = arg1.hasBomb
      if flag12 then
        flag12 = drawNativeText
        numberValue12 = "You have the ~r~bomb~w~. Hit another ~y~vehicle~w~ to pass it on"
        -- Beginner: Draw GTA-style text on screen.
        flag12(numberValue12)
      else
        flag12 = drawNativeText
        numberValue12 = eventRegistration
        numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2, flag3 = numberValue12()
        flag12(numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2, flag3)
      end
  end
  else
    flag11 = dataTable.boostCounter
    if flag11 then
      dataTable.boostCounter = 0
    end
    flag11 = drawNativeText
    flag12 = eventRegistration
    flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2, flag3 = flag12()
    -- Beginner: Draw GTA-style text on screen.
    flag11(flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2, flag3)
  end
  flag11 = dataTable.boostCounter
  if flag11 then
    flag11 = dataTable.boostCounter
    if flag11 > 0 then
      flag11 = cmgCall2.push
      flag12 = "~b~BOOST TIME~w~"
      numberValue12 = tostring
      numberValue13 = dataTable.boostCounter
      numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2, flag3 = numberValue12(numberValue13)
      flag11(flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2, flag3)
    end
  end
  flag11 = dataTable.explosionCounter
  if flag11 then
    flag11 = dataTable.explosionCounter
    if flag11 > 0 then
      flag11 = cmgCall2.push
      flag12 = "~r~EXPLOSION IN~w~"
      numberValue12 = tostring
      numberValue13 = dataTable.explosionCounter
      numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2, flag3 = numberValue12(numberValue13)
      flag11(flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2, flag3)
    end
  end
  flag11 = cmgCall2.draw
  flag11()
end
eventRegistration2 = RegisterNetEvent
textValue2 = "5335fd3810"
-- Beginner: this function handles network event "5335fd3810".

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1, arg2, arg3) ===
function workValue7(arg1, arg2, arg3)
  local flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2
  flag11 = currentEvent
  flag11.drawPlayersTimeBar = false
  flag11 = SetPlayerControl
  flag12 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  flag12 = flag12()
  numberValue12 = false
  numberValue13 = 0
  flag11(flag12, numberValue12, numberValue13)
  flag11 = workValue20
  flag12 = arg1
  flag11(flag12)
  flag11 = CMG
  flag11 = flag11.loadClientRockstarMap
  flag12 = arg2
  numberValue12 = false
  numberValue13 = true
  flag11(flag12, numberValue12, numberValue13)
  flag11 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  flag11 = flag11()
  flag12 = SetEntityCoordsNoOffset
  numberValue12 = flag11
  numberValue13 = arg3.x
  numberValue14 = arg3.y
  flag13 = arg3.z
  numberValue15 = true
  numberValue = false
  flag2 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  flag12(numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2)
  flag12 = SetEntityHeading
  numberValue12 = flag11
  numberValue13 = arg3.w
  -- Beginner: Change the direction an entity is facing.
  flag12(numberValue12, numberValue13)
  flag12 = RequestScriptAudioBank
  numberValue12 = "DLC_STUNT/STUNT_RACE_01"
  numberValue13 = false
  flag12(numberValue12, numberValue13)
  flag12 = RequestScriptAudioBank
  numberValue12 = "DLC_STUNT/STUNT_RACE_02"
  numberValue13 = false
  flag12(numberValue12, numberValue13)
  flag12 = RequestScriptAudioBank
  numberValue12 = "DLC_STUNT/STUNT_RACE_03"
  numberValue13 = false
  flag12(numberValue12, numberValue13)
  flag12 = CMG
  flag12 = flag12.setEventMusic
  numberValue12 = "AW_LOBBY_MUSIC_START"
  flag12(numberValue12)
  flag12 = dataTable.particles
  if flag12 then
    flag12 = ipairs
    numberValue12 = dataTable.particles
    flag12, numberValue12, numberValue13, numberValue14 = flag12(numberValue12)
    for flag13, numberValue15 in flag12, numberValue12, numberValue13, numberValue14 do
      numberValue = CMG
      numberValue = numberValue.loadPtfx
      flag2 = numberValue15.asset
      numberValue(flag2)
    end
  end
  flag12 = CMG
  flag12 = flag12.loadPtfx
  numberValue12 = "scr_ar_planes"
  flag12(numberValue12)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5335fd3810".
eventRegistration2(textValue2, workValue7)
eventRegistration2 = RegisterNetEvent
textValue2 = "fa1dcbdb4d"
-- Beginner: this function handles network event "fa1dcbdb4d".

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1) ===
function workValue7(arg1)
  local arg2, arg3, flag11, flag12, numberValue12, numberValue13, numberValue14
  arg2 = CMG
  arg2 = arg2.stopEventSequence
  arg2()
  arg2 = BusyspinnerOff
  arg2()
  arg2 = SetPlayerControl
  arg3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg3 = arg3()
  flag11 = true
  flag12 = 0
  arg2(arg3, flag11, flag12)
  arg2 = SetEntityVisible
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  flag11 = true
  flag12 = false
  arg2(arg3, flag11, flag12)
  arg2 = CMG
  arg2 = arg2.startVehicleSelection
  arg3 = arg1.xyz
  flag11 = arg1.w
  flag12 = dataTable.vehicles
  numberValue12 = 20

  -- === HELPER FUNCTION (decompiler name: numberValue13; parameters: arg12) ===
  function numberValue13(arg12)
    local waitCall, numberValue11, nameValue
    waitCall = TriggerServerEvent
    numberValue11 = "977e3c099a"
    nameValue = arg12
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "977e3c099a".
    waitCall(numberValue11, nameValue)
  end

  -- === HELPER FUNCTION (decompiler name: numberValue14; parameters: arg12) ===
  function numberValue14(arg12)
    local waitCall
    dataTable.colour = arg12
  end
  arg2(arg3, flag11, flag12, numberValue12, numberValue13, numberValue14)
  dataTable.state = "SELECT"
  dataTable.position = arg1
  while true do
    arg2 = dataTable.state
    if "SELECT" ~= arg2 then
      break
    end
    arg2 = GetVehiclePedIsUsing
    arg3 = PlayerPedId
    arg3, flag11, flag12, numberValue12, numberValue13, numberValue14 = arg3()
    arg2 = arg2(arg3, flag11, flag12, numberValue12, numberValue13, numberValue14)
    if 0 ~= arg2 then
      arg3 = FreezeEntityPosition
      flag11 = arg2
      flag12 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      arg3(flag11, flag12)
    end
    arg3 = Citizen
    arg3 = arg3.Wait
    flag11 = 0
    arg3(flag11)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fa1dcbdb4d".
eventRegistration2(textValue2, workValue7)
eventRegistration2 = RegisterNetEvent
textValue2 = "26fbaead36"
-- Beginner: this function handles network event "26fbaead36".

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2, arg3, flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15
  dataTable.state = "BEFORE_START"
  arg1 = DoesEntityExist
  arg2 = dataTable.vehicle
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = DeleteEntity
    arg2 = dataTable.vehicle
    -- Beginner: Delete a GTA entity.
    arg1(arg2)
  end
  arg1 = pairs
  arg2 = GetActivePlayers
  arg2, arg3, flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15 = arg2()
  arg1, arg2, arg3, flag11 = arg1(arg2, arg3, flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15)
  for flag12, numberValue12 in arg1, arg2, arg3, flag11 do
    numberValue13 = SetEntityVisible
    numberValue14 = GetPlayerPed
    flag13 = numberValue12
    -- Beginner: result below is playerPed.
    numberValue14 = numberValue14(flag13)
    flag13 = true
    numberValue15 = false
    numberValue13(numberValue14, flag13, numberValue15)
  end
  arg1 = Citizen
  arg1 = arg1.CreateThreadNow

  -- === HELPER FUNCTION: arg2() ===
  function arg2()
    local arg12, waitCall, numberValue11, nameValue
    while true do
      arg12 = dataTable.state
      if "SELECT" ~= arg12 then
        arg12 = dataTable.state
        if "BEFORE_START" ~= arg12 then
          break
        end
      end
      arg12 = workValue10
      arg12()
      arg12 = GetVehiclePedIsUsing
      waitCall = PlayerPedId
      waitCall, numberValue11, nameValue = waitCall()
      arg12 = arg12(waitCall, numberValue11, nameValue)
      if 0 ~= arg12 then
        waitCall = FreezeEntityPosition
        numberValue11 = arg12
        nameValue = true
        -- Beginner: Freeze or unfreeze an entity in place.
        waitCall(numberValue11, nameValue)
      end
      waitCall = Citizen
      waitCall = waitCall.Wait
      numberValue11 = 0
      waitCall(numberValue11)
    end
  end
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.endVehicleSelection
  arg1()
  arg1 = SetFollowPedCamViewMode
  arg2 = 2
  arg1(arg2)
  arg1 = SetGameplayCamRelativeHeading
  arg2 = GetEntityHeading
  arg3 = dataTable.vehicle
  arg2, arg3, flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15 = arg2(arg3)
  arg1(arg2, arg3, flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15)
  arg1 = CMG
  arg1 = arg1.enableMinigamePlayerBlips
  arg2 = true
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.enableMinigamePlayerTags
  arg2 = true
  arg3 = false
  arg1(arg2, arg3)
  arg1 = CMG
  arg1 = arg1.setMinigameBounds
  arg2 = dataTable.bounds
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.showCountdownTimer
  arg2 = 3
  arg1(arg2)
  arg1 = dataTable.state
  if "BEFORE_START" ~= arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.setPlayerCanOpenLeaderboard
  arg2 = true
  arg1(arg2)
  dataTable.state = "START"
  while true do
    arg1 = dataTable.state
    if "START" ~= arg1 then
      break
    end
    arg1 = workValue6
    arg1()
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 0
    arg1(arg2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "26fbaead36".
eventRegistration2(textValue2, workValue7)
eventRegistration2 = RegisterNetEvent
textValue2 = "263c039cf3"
-- Beginner: this function handles network event "263c039cf3".

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2, arg3, flag11, flag12, numberValue12
  arg1 = 0
  dataTable.explosionCounter = 5
  while true do
    arg2 = dataTable.explosionCounter
    if not arg2 then
      break
    end
    arg2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg2 = arg2()
    arg2 = arg2 - arg1
    arg3 = 1000
    if arg2 > arg3 then
      arg2 = dataTable.explosionCounter
      arg2 = arg2 - 1
      dataTable.explosionCounter = arg2
      arg2 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg2 = arg2()
      arg1 = arg2
      arg2 = dataTable.explosionCounter
      if 0 == arg2 then
        dataTable.explosionCounter = nil
        return
      else
        arg2 = PlaySoundFrontend
        arg3 = -1
        flag11 = "Checkpoint_Buzz"
        flag12 = "DLC_AW_Frontend_Sounds"
        numberValue12 = false
        arg2(arg3, flag11, flag12, numberValue12)
      end
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 0
    arg2(arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "263c039cf3".
eventRegistration2(textValue2, workValue7)
eventRegistration2 = RegisterNetEvent
textValue2 = "134e3e09c1"
-- Beginner: this function handles network event "134e3e09c1".

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1) ===
function workValue7(arg1)
  local arg2, arg3, flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2, flag3, mathHelper, flag4, numberValue2, numberValue3, numberValue4, numberValue5, flag5, flag6, numberValue6
  arg2 = GetPlayerFromServerId
  arg3 = arg1
  -- Beginner: result below is playerIndex.
  arg2 = arg2(arg3)
  if -1 == arg2 then
    return
  end
  arg3 = CMG
  arg3 = arg3.getPlayerColour
  flag11 = arg1
  arg3 = arg3(flag11)
  flag11 = notify
  flag12 = arg3
  numberValue12 = CMG
  numberValue12 = numberValue12.getPlayerName
  numberValue13 = arg2
  numberValue12 = numberValue12(numberValue13)
  numberValue13 = " ~w~has been eliminated!"
  flag12 = flag12 .. numberValue12 .. numberValue13
  -- Beginner: Show a notification to the player.
  flag11(flag12)
  flag11 = ShakeGameplayCam
  flag12 = "MEDIUM_EXPLOSION_SHAKE"
  numberValue12 = 1.0
  flag11(flag12, numberValue12)
  flag11 = GetPlayerPed
  flag12 = arg2
  -- Beginner: result below is playerPed.
  flag11 = flag11(flag12)
  flag12 = SetEntityHealth
  numberValue12 = flag11
  numberValue13 = 0
  flag12(numberValue12, numberValue13)
  flag12 = GetVehiclePedIsUsing
  numberValue12 = flag11
  flag12 = flag12(numberValue12)
  if 0 ~= flag12 then
    numberValue12 = ExplodeVehicle
    numberValue13 = flag12
    numberValue14 = true
    flag13 = false
    numberValue12(numberValue13, numberValue14, flag13)
  end
  numberValue12 = GetEntityCoords
  numberValue13 = flag11
  numberValue14 = true
  -- Beginner: result below is entityCoords.
  numberValue12 = numberValue12(numberValue13, numberValue14)
  numberValue13 = 1
  numberValue14 = 15
  flag13 = 1
  for numberValue15 = numberValue13, numberValue14, flag13 do
    numberValue = numberValue12.x
    flag2 = math
    flag2 = flag2.random
    flag2 = flag2()
    flag2 = flag2 - 0.5
    flag2 = flag2 * 8.0
    numberValue = numberValue + flag2
    flag2 = numberValue12.y
    flag3 = math
    flag3 = flag3.random
    flag3 = flag3()
    flag3 = flag3 - 0.5
    flag3 = flag3 * 8.0
    flag2 = flag2 + flag3
    flag3 = numberValue12.z
    mathHelper = math
    mathHelper = mathHelper.random
    mathHelper = mathHelper()
    mathHelper = mathHelper - 0.5
    mathHelper = mathHelper * 4.0
    flag3 = flag3 + mathHelper
    mathHelper = AddExplosion
    flag4 = numberValue
    numberValue2 = flag2
    numberValue3 = flag3
    numberValue4 = 0
    numberValue5 = 1.0
    flag5 = true
    flag6 = false
    numberValue6 = 5.0
    mathHelper(flag4, numberValue2, numberValue3, numberValue4, numberValue5, flag5, flag6, numberValue6)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "134e3e09c1".
eventRegistration2(textValue2, workValue7)
eventRegistration2 = RegisterNetEvent
textValue2 = "a300517b73"
-- Beginner: this function handles network event "a300517b73".

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1, arg2) ===
function workValue7(arg1, arg2)
  local arg3, flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue
  arg3 = dataTable.boxes
  arg3 = arg3[arg1]
  arg3.visible = false
  flag11 = GetPlayerFromServerId
  flag12 = arg2
  -- Beginner: result below is playerIndex.
  flag11 = flag11(flag12)
  if -1 == flag11 then
    return
  end
  flag12 = GetPlayerPed
  numberValue12 = flag11
  -- Beginner: result below is playerPed.
  flag12 = flag12(numberValue12)
  if 0 == flag12 then
    return
  end
  numberValue12 = GetVehiclePedIsUsing
  numberValue13 = flag12
  numberValue12 = numberValue12(numberValue13)
  if 0 == numberValue12 then
    return
  end
  numberValue13 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  numberValue13 = numberValue13()
  if flag12 == numberValue13 then
    numberValue13 = AnimpostfxPlay
    numberValue14 = "MinigameEndNeutral"
    flag13 = 0
    numberValue15 = false
    numberValue13(numberValue14, flag13, numberValue15)
    numberValue13 = PlaySoundFrontend
    numberValue14 = -1
    flag13 = "Hit_1"
    numberValue15 = "LONG_PLAYER_SWITCH_SOUNDS"
    numberValue = true
    numberValue13(numberValue14, flag13, numberValue15, numberValue)
    numberValue13 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    numberValue13 = numberValue13()
    numberValue14 = numberValue13
    dataTable.hasBoost = true
    dataTable.boostCounter = 20
    while true do
      flag13 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      flag13 = flag13()
      flag13 = flag13 - numberValue13
      numberValue15 = 20000
      if not (flag13 < numberValue15) then
        break
      end
      flag13 = dataTable.state
      if "START" ~= flag13 then
        break
      end
      flag13 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      flag13 = flag13()
      flag13 = flag13 - numberValue14
      numberValue15 = 1000
      if flag13 >= numberValue15 then
        flag13 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        flag13 = flag13()
        numberValue14 = flag13
        flag13 = dataTable.boostCounter
        flag13 = flag13 - 1
        dataTable.boostCounter = flag13
      end
      flag13 = Citizen
      flag13 = flag13.Wait
      numberValue15 = 0
      flag13(numberValue15)
    end
    dataTable.hasBoost = false
    dataTable.boostCounter = nil
    flag13 = SetVehicleCheatPowerIncrease
    numberValue15 = numberValue12
    numberValue = 1.0
    flag13(numberValue15, numberValue)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a300517b73".
eventRegistration2(textValue2, workValue7)
eventRegistration2 = RegisterNetEvent
textValue2 = "de2d0af415"
-- Beginner: this function handles network event "de2d0af415".

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1) ===
function workValue7(arg1)
  local arg2
  arg2 = dataTable.boxes
  arg2 = arg2[arg1]
  arg2.visible = true
end
eventRegistration2(textValue2, workValue7)
eventRegistration2 = RegisterNetEvent
textValue2 = "7d017cf727"
-- Beginner: this function handles network event "7d017cf727".

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1) ===
function workValue7(arg1)
  local arg2, arg3, flag11, flag12, numberValue12, numberValue13, numberValue14, flag13, numberValue15, numberValue, flag2, flag3, mathHelper
  arg2 = ipairs
  arg3 = currentEvent
  arg3 = arg3.players
  arg2, arg3, flag11, flag12 = arg2(arg3)
  for numberValue12, numberValue13 in arg2, arg3, flag11, flag12 do
    numberValue13.hasBomb = false
    numberValue14 = ipairs
    flag13 = arg1
    numberValue14, flag13, numberValue15, numberValue = numberValue14(flag13)
    for flag2, flag3 in numberValue14, flag13, numberValue15, numberValue do
      mathHelper = numberValue13.source
      if mathHelper == flag3 then
        numberValue13.hasBomb = true
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7d017cf727".
eventRegistration2(textValue2, workValue7)
eventRegistration2 = RegisterNetEvent
textValue2 = "4322b11758"
-- Beginner: this function handles network event "4322b11758".

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1, arg2) ===
function workValue7(arg1, arg2)
  local arg3, flag11, flag12, numberValue12
  arg3 = notify
  flag11 = arg1
  flag12 = arg2
  numberValue12 = " ~w~has been eliminated"
  flag11 = flag11 .. flag12 .. numberValue12
  -- Beginner: Show a notification to the player.
  arg3(flag11)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4322b11758".
eventRegistration2(textValue2, workValue7)
eventRegistration2 = Citizen
eventRegistration2 = eventRegistration2.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2, arg3, flag11
  arg1 = "Pass The Bomb"
  arg2 = CMG
  arg2 = arg2.registerMinigameCleanupHandler
  arg3 = arg1

  -- === HELPER FUNCTION (decompiler name: flag11; parameters: none) ===
  function flag11()
    local arg12, waitCall, numberValue11, nameValue, workValue12, workValue14, workValue16, workValue18
    arg12 = CMG
    arg12 = arg12.enableMinigamePlayerBlips
    waitCall = false
    arg12(waitCall)
    arg12 = CMG
    arg12 = arg12.enableMinigamePlayerTags
    waitCall = false
    numberValue11 = false
    arg12(waitCall, numberValue11)
    arg12 = dataTable.boostHandling
    if arg12 then
      arg12 = workValue2
      arg12()
    end
    arg12 = DeleteEntity
    waitCall = dataTable.vehicle
    -- Beginner: Delete a GTA entity.
    arg12(waitCall)
    arg12 = ReleaseNamedScriptAudioBank
    waitCall = "DLC_STUNT/STUNT_RACE_01"
    arg12(waitCall)
    arg12 = ReleaseNamedScriptAudioBank
    waitCall = "DLC_STUNT/STUNT_RACE_02"
    arg12(waitCall)
    arg12 = ReleaseNamedScriptAudioBank
    waitCall = "DLC_STUNT/STUNT_RACE_03"
    arg12(waitCall)
    arg12 = CMG
    arg12 = arg12.setPlayerCanOpenLeaderboard
    waitCall = false
    arg12(waitCall)
    arg12 = dataTable.particles
    if arg12 then
      arg12 = ipairs
      waitCall = dataTable.particles
      arg12, waitCall, numberValue11, nameValue = arg12(waitCall)
      for workValue12, workValue14 in arg12, waitCall, numberValue11, nameValue do
        workValue16 = RemoveNamedPtfxAsset
        workValue18 = workValue14.asset
        workValue16(workValue18)
      end
    end
    arg12 = RemoveNamedPtfxAsset
    waitCall = "scr_ar_planes"
    arg12(waitCall)
    arg12 = CMG
    arg12 = arg12.cleanupRockstarMaps
    arg12()
    arg12 = TriggerMusicEvent
    waitCall = "BST_STOP"
    arg12(waitCall)
    arg12 = BusyspinnerOff
    arg12()
    arg12 = SetPlayerControl
    waitCall = PlayerId
    -- Beginner: result below is localPlayerIndex.
    waitCall = waitCall()
    numberValue11 = true
    nameValue = 0
    arg12(waitCall, numberValue11, nameValue)
    arg12 = {}
    dataTable = arg12
  end
  arg2(arg3, flag11)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration2(textValue2)
