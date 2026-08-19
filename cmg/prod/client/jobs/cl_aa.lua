--[[
    LEVEL 1 BEGINNER GUIDE — Aa
    ================================

    File: cmg/prod/client/jobs/cl_aa.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: civilian/job gameplay, specifically the Aa feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 49
      * Background threads: 0
      * Always-running loops: 4
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
local cmgOperation, cmgOperation2, dataCollection2, number18, dataCollection3, createVector34, iterator2, createVector35, createVector36, createVector37, number, dataCollection, number2, workingValue2, createVector32, number3, number4, number5, workingValue6, workingValue8, workingValue10, workingValue11, cmgOperation3, workingValue12, cmgOperation4, text2, workingValue13, backgroundThread, createVector33, cmgOperation5, text3, number10, number11, number12, iterator, number13, number14, number15, number16, number17, number19, stringHelper, stateFlag11, stateFlag12, stateFlag13, workingValue15, workingValue16, workingValue17, workingValue18, workingValue19
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
cmgOperation2 = "cfg/cfg_garages"
-- Beginner: result below is config.
cmgOperation = cmgOperation(cmgOperation2)
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.loadModule
dataCollection2 = "cfg/cfg_mechanic"
-- Beginner: result below is config.
cmgOperation2 = cmgOperation2(dataCollection2)
dataCollection2 = {}
number18 = 52945046
dataCollection3 = {}
dataCollection3.type = "tow"
createVector34 = {}
iterator2 = {}
createVector35 = vector3
createVector36 = 0.1
createVector37 = -3.42
number = 1.13
createVector35 = createVector35(createVector36, createVector37, number)
createVector36 = true
iterator2[1] = createVector35
iterator2[2] = createVector36
createVector35 = {}
createVector36 = vector3
createVector37 = -0.1
number = -3.42
dataCollection = 1.13
createVector36 = createVector36(createVector37, number, dataCollection)
createVector37 = true
createVector35[1] = createVector36
createVector35[2] = createVector37
createVector36 = {}
createVector37 = vector3
number = 0.0
dataCollection = -2.6
number2 = 0.2
createVector37 = createVector37(number, dataCollection, number2)
number = false
createVector36[1] = createVector37
createVector36[2] = number
createVector34[1] = iterator2
createVector34[2] = createVector35
createVector34[3] = createVector36
dataCollection3.offsets = createVector34
dataCollection2[number18] = dataCollection3
number18 = 1355922771
dataCollection3 = {}
dataCollection3.type = "flatbed"
dataCollection3.bone = 20
createVector34 = vector3
iterator2 = -0.7
createVector35 = -6.0
createVector36 = -0.46
createVector34 = createVector34(iterator2, createVector35, createVector36)
dataCollection3.offset = createVector34
dataCollection3.heading = -10.0
dataCollection2[number18] = dataCollection3

-- === HELPER FUNCTION (decompiler name: number18; parameters: localValue1) ===
function number18(localValue1)
  local localValue2, localValue3, workingValue14, workingValue20, number20
  localValue2 = {}
  localValue2.type = "flatbed"
  localValue3 = localValue1.bone
  localValue2.bone = localValue3
  localValue3 = vector3
  workingValue14 = localValue1.offset
  workingValue14 = workingValue14.x
  workingValue20 = localValue1.offset
  workingValue20 = workingValue20.y
  number20 = localValue1.offset
  number20 = number20.z
  localValue3 = localValue3(workingValue14, workingValue20, number20)
  localValue2.offset = localValue3
  localValue3 = localValue1.heading
  localValue2.heading = localValue3
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: localValue1) ===
function dataCollection3(localValue1)
  local localValue2, localValue3, workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3, text, workingValue, workingValue3
  localValue2 = {}
  localValue3 = ipairs
  workingValue14 = localValue1.offsets
  localValue3, workingValue14, workingValue20, number20 = localValue3(workingValue14)
  for workingValue21, stateFlag14 in localValue3, workingValue14, workingValue20, number20 do
    cmgOperation6 = stateFlag14[1]
    stringHelper2 = {}
    createVector3 = vector3
    text = cmgOperation6.x
    workingValue = cmgOperation6.y
    workingValue3 = cmgOperation6.z
    createVector3 = createVector3(text, workingValue, workingValue3)
    text = stateFlag14[2]
    stringHelper2[1] = createVector3
    stringHelper2[2] = text
    localValue2[workingValue21] = stringHelper2
  end
  localValue3 = {}
  localValue3.type = "tow"
  localValue3.offsets = localValue2
  return localValue3
end
createVector34 = {}
iterator2 = pairs
createVector35 = dataCollection2
iterator2, createVector35, createVector36, createVector37 = iterator2(createVector35)
for number, dataCollection in iterator2, createVector35, createVector36, createVector37 do
  createVector34[number] = dataCollection
end
iterator2 = 1355922771
iterator2 = dataCollection2[iterator2]
createVector35 = 52945046
createVector35 = dataCollection2[createVector35]
createVector36 = pairs
createVector37 = cmgOperation2.mechanicFlatbedModelHashes
createVector36, createVector37, number, dataCollection = createVector36(createVector37)
for number2 in createVector36, createVector37, number, dataCollection do
  workingValue2 = createVector34[number2]
  if not workingValue2 then
    workingValue2 = number18
    createVector32 = iterator2
    workingValue2 = workingValue2(createVector32)
    createVector34[number2] = workingValue2
  end
end
createVector36 = pairs
createVector37 = cmgOperation2.mechanicTowTruckModelHashes
createVector36, createVector37, number, dataCollection = createVector36(createVector37)
for number2 in createVector36, createVector37, number, dataCollection do
  workingValue2 = createVector34[number2]
  if not workingValue2 then
    workingValue2 = dataCollection3
    createVector32 = createVector35
    workingValue2 = workingValue2(createVector32)
    createVector34[number2] = workingValue2
  end
end
createVector36 = {}
createVector36[13] = true
createVector36[14] = true
createVector36[15] = true
createVector36[16] = true
createVector36[21] = true
createVector37 = {}
number = {}
dataCollection = {}
number2 = 0
workingValue2 = 0
createVector32 = vector3
number3 = 389.40829467773
number4 = -1622.1922607422
number5 = 29.28772354126
createVector32 = createVector32(number3, number4, number5)
number3 = 0

-- === HELPER FUNCTION (decompiler name: number4; parameters: localValue1, localValue2) ===
function number4(localValue1, localValue2)
  local localValue3, workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3, text
  localValue3 = GetVehicleClass
  workingValue14 = localValue1
  localValue3 = localValue3(workingValue14)
  workingValue14 = createVector36
  workingValue14 = workingValue14[localValue3]
  if workingValue14 then
    workingValue14 = false
    return workingValue14
  end
  workingValue14 = pairs
  workingValue20 = cmgOperation.garages
  workingValue14, workingValue20, number20, workingValue21 = workingValue14(workingValue20)
  for stateFlag14, cmgOperation6 in workingValue14, workingValue20, number20, workingValue21 do
    stringHelper2 = cmgOperation6[localValue2]
    if stringHelper2 then
      stringHelper2 = string
      stringHelper2 = stringHelper2.match
      createVector3 = stateFlag14
      text = "Aircraft"
      stringHelper2 = stringHelper2(createVector3, text)
      if not stringHelper2 then
        stringHelper2 = string
        stringHelper2 = stringHelper2.match
        createVector3 = stateFlag14
        text = "Helicopters"
        stringHelper2 = stringHelper2(createVector3, text)
        if not stringHelper2 then
          stringHelper2 = string
          stringHelper2 = stringHelper2.match
          createVector3 = stateFlag14
          text = "Boats"
          stringHelper2 = stringHelper2(createVector3, text)
          if not stringHelper2 then
            goto continueAtStep40
          end
        end
      end
      stringHelper2 = false
      return stringHelper2
    end
    ::continueAtStep40::
  end
  workingValue14 = true
  return workingValue14
end

-- === HELPER FUNCTION (decompiler name: number5; parameters: localValue1) ===
function number5(localValue1)
  local localValue2, localValue3, workingValue14, workingValue20
  localValue2 = GetEntityModel
  localValue3 = localValue1
  -- Beginner: result below is modelHash.
  localValue2 = localValue2(localValue3)
  localValue3 = GetModelDimensions
  workingValue14 = localValue2
  localValue3, workingValue14 = localValue3(workingValue14)
  workingValue20 = localValue3 - workingValue14
  workingValue20 = #workingValue20
  workingValue20 = workingValue20 > 10.0
  return workingValue20
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, localValue3, workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2
  localValue2 = GetEntityModel
  localValue3 = localValue1
  -- Beginner: result below is modelHash.
  localValue2 = localValue2(localValue3)
  localValue3 = GetVehicleModelNumberOfSeats
  workingValue14 = localValue2
  localValue3 = localValue3(workingValue14)
  if localValue3 > 0 then
    workingValue14 = 1
    workingValue20 = localValue3
    number20 = 1
    for workingValue21 = workingValue14, workingValue20, number20 do
      stateFlag14 = GetPedInVehicleSeat
      cmgOperation6 = localValue1
      stringHelper2 = workingValue21 - 2
      stateFlag14 = stateFlag14(cmgOperation6, stringHelper2)
      if 0 ~= stateFlag14 then
        stateFlag14 = false
        return stateFlag14
      end
    end
  end
  workingValue14 = true
  return workingValue14
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1) ===
function workingValue8(localValue1)
  local localValue2, localValue3, workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3
  localValue2 = GetEntityCoords
  localValue3 = localValue1
  workingValue14 = true
  -- Beginner: result below is entityCoords.
  localValue2 = localValue2(localValue3, workingValue14)
  localValue3 = CMG
  localValue3 = localValue3.getGrindingAreas
  localValue3 = localValue3()
  workingValue14 = pairs
  workingValue20 = localValue3
  workingValue14, workingValue20, number20, workingValue21 = workingValue14(workingValue20)
  for stateFlag14, cmgOperation6 in workingValue14, workingValue20, number20, workingValue21 do
    stringHelper2 = cmgOperation6.position
    stringHelper2 = localValue2 - stringHelper2
    stringHelper2 = #stringHelper2
    createVector3 = cmgOperation6.radius
    if stringHelper2 < createVector3 then
      stringHelper2 = true
      return stringHelper2
    end
  end
  workingValue14 = false
  return workingValue14
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1) ===
function workingValue10(localValue1)
  local localValue2, localValue3, workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6
  localValue2 = pairs
  localValue3 = CMG
  localValue3 = localValue3.getAllVehicles
  localValue3, workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6 = localValue3()
  localValue2, localValue3, workingValue14, workingValue20 = localValue2(localValue3, workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6)
  for number20, workingValue21 in localValue2, localValue3, workingValue14, workingValue20 do
    stateFlag14 = GetEntityAttachedTo
    cmgOperation6 = workingValue21
    stateFlag14 = stateFlag14(cmgOperation6)
    if stateFlag14 == localValue1 then
      return workingValue21
    end
  end
  localValue2 = 0
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1, localValue2) ===
function workingValue11(localValue1, localValue2)
  local localValue3, workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3, text, workingValue, workingValue3, workingValue4, coords, workingValue5, stateFlag, workingValue7, workingValue9
  localValue3 = GetEntityCoords
  workingValue14 = localValue1
  workingValue20 = true
  -- Beginner: result below is entityCoords.
  localValue3 = localValue3(workingValue14, workingValue20)
  workingValue14 = GetEntityCoords
  workingValue20 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue20 = workingValue20()
  number20 = true
  -- Beginner: result below is entityCoords.
  workingValue14 = workingValue14(workingValue20, number20)
  workingValue20 = 18.0
  number20 = 0
  workingValue21 = localValue2 + 0.01
  stateFlag14 = pairs
  cmgOperation6 = CMG
  cmgOperation6 = cmgOperation6.getAllVehicles
  cmgOperation6, stringHelper2, createVector3, text, workingValue, workingValue3, workingValue4, coords, workingValue5, stateFlag, workingValue7, workingValue9 = cmgOperation6()
  stateFlag14, cmgOperation6, stringHelper2, createVector3 = stateFlag14(cmgOperation6, stringHelper2, createVector3, text, workingValue, workingValue3, workingValue4, coords, workingValue5, stateFlag, workingValue7, workingValue9)
  for text, workingValue in stateFlag14, cmgOperation6, stringHelper2, createVector3 do
    if workingValue ~= localValue1 then
      workingValue3 = DoesEntityExist
      workingValue4 = workingValue
      workingValue3 = workingValue3(workingValue4)
      if workingValue3 then
        workingValue3 = IsEntityAVehicle
        workingValue4 = workingValue
        workingValue3 = workingValue3(workingValue4)
        if workingValue3 then
          workingValue3 = GetEntityModel
          workingValue4 = workingValue
          -- Beginner: result below is modelHash.
          workingValue3 = workingValue3(workingValue4)
          workingValue4 = createVector34
          workingValue4 = workingValue4[workingValue3]
          if workingValue4 then
            coords = GetEntityCoords
            workingValue5 = workingValue
            stateFlag = true
            -- Beginner: result below is entityCoords.
            coords = coords(workingValue5, stateFlag)
            workingValue5 = coords - workingValue14
            workingValue5 = #workingValue5
            if workingValue20 >= workingValue5 then
              workingValue5 = coords - localValue3
              workingValue5 = #workingValue5
              if workingValue21 > workingValue5 then
                stateFlag = false
                workingValue7 = workingValue4.type
                if "flatbed" == workingValue7 then
                  workingValue7 = workingValue10
                  workingValue9 = workingValue
                  workingValue7 = workingValue7(workingValue9)
                  stateFlag = 0 == workingValue7
                else
                  workingValue7 = Entity
                  workingValue9 = workingValue
                  workingValue7 = workingValue7(workingValue9)
                  workingValue7 = workingValue7.state
                  workingValue9 = workingValue7.towPlayer
                  workingValue9 = workingValue7.towVehicle
                  stateFlag = not workingValue9 and stateFlag
                end
                if stateFlag then
                  workingValue21 = workingValue5
                  number20 = workingValue
                end
              end
            end
          end
        end
      end
    end
  end
  return number20
end
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue1) ===
function workingValue12(localValue1)
  local localValue2, localValue3, workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3, text
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  localValue3 = "aa.onduty.permission"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = notify
    localValue3 = "~r~Clock on as mechanic first."
    -- Beginner: Show a notification to the player.
    localValue2(localValue3)
    return
  end
  if localValue1 and 0 ~= localValue1 then
    localValue2 = DoesEntityExist
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = IsEntityAVehicle
      localValue3 = localValue1
      localValue2 = localValue2(localValue3)
      if localValue2 then
        goto continueAtStep26
      end
    end
  end
  return
  ::continueAtStep26::
  localValue2 = GetEntityModel
  localValue3 = localValue1
  -- Beginner: result below is modelHash.
  localValue2 = localValue2(localValue3)
  localValue3 = createVector34
  localValue2 = localValue3[localValue2]
  if localValue2 then
    localValue2 = notify
    localValue3 = "~b~Use this on the vehicle you want to tow, not on your flatbed or tow truck."
    localValue2(localValue3)
    return
  end
  localValue2 = GetEntityModel
  localValue3 = localValue1
  -- Beginner: result below is modelHash.
  localValue2 = localValue2(localValue3)
  localValue3 = CMG
  localValue3 = localValue3.getVehicleIdFromModel
  workingValue14 = localValue2
  localValue3 = localValue3(workingValue14)
  workingValue14 = number4
  workingValue20 = localValue1
  number20 = localValue3
  workingValue14 = workingValue14(workingValue20, number20)
  if workingValue14 then
    workingValue14 = workingValue6
    workingValue20 = localValue1
    workingValue14 = workingValue14(workingValue20)
    if workingValue14 then
      workingValue14 = number5
      workingValue20 = localValue1
      workingValue14 = workingValue14(workingValue20)
      if not workingValue14 then
        goto continueAtStep64
      end
    end
  end
  workingValue14 = notify
  workingValue20 = "~r~This vehicle cannot be towed."
  -- Beginner: Show a notification to the player.
  workingValue14(workingValue20)
  return
  ::continueAtStep64::
  workingValue14 = workingValue8
  workingValue20 = localValue1
  workingValue14 = workingValue14(workingValue20)
  if workingValue14 then
    workingValue14 = notify
    workingValue20 = "~r~You can not tow vehicles near a grinding area."
    workingValue14(workingValue20)
    return
  end
  workingValue14 = GetVehicleEngineHealth
  workingValue20 = localValue1
  workingValue14 = workingValue14(workingValue20)
  workingValue20 = 925.0
  if workingValue14 >= workingValue20 then
    workingValue14 = GetVehicleBodyHealth
    workingValue20 = localValue1
    workingValue14 = workingValue14(workingValue20)
    workingValue20 = 925.0
    if workingValue14 >= workingValue20 then
      workingValue14 = notify
      workingValue20 = "~r~Only vehicles which are damaged can be towed."
      -- Beginner: Show a notification to the player.
      workingValue14(workingValue20)
      return
    end
  end
  workingValue14 = workingValue11
  workingValue20 = localValue1
  number20 = 10.0
  workingValue14 = workingValue14(workingValue20, number20)
  if 0 == workingValue14 then
    workingValue20 = notify
    number20 = "~r~No free flatbed/tow truck found. Park yours within ~10m of this car and stand near your rig."
    workingValue20(number20)
    return
  end
  workingValue20 = NetworkGetNetworkIdFromEntity
  number20 = workingValue14
  workingValue20 = workingValue20(number20)
  number20 = NetworkGetNetworkIdFromEntity
  workingValue21 = localValue1
  number20 = number20(workingValue21)
  if 0 == workingValue20 or 0 == number20 then
    workingValue21 = notify
    stateFlag14 = "~r~Couldn't sync the hook. Try again."
    -- Beginner: Show a notification to the player.
    workingValue21(stateFlag14)
    return
  end
  workingValue21 = GetEntityModel
  stateFlag14 = workingValue14
  -- Beginner: result below is modelHash.
  workingValue21 = workingValue21(stateFlag14)
  stateFlag14 = createVector34
  stateFlag14 = stateFlag14[workingValue21]
  cmgOperation6 = TriggerServerEvent
  stringHelper2 = "53b5afb511"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "53b5afb511".
  cmgOperation6(stringHelper2)
  cmgOperation6 = stateFlag14.type
  if "flatbed" == cmgOperation6 then
    cmgOperation6 = TriggerServerEvent
    stringHelper2 = "3853938b46"
    createVector3 = workingValue20
    text = number20
    cmgOperation6(stringHelper2, createVector3, text)
    cmgOperation6 = notify
    stringHelper2 = "~g~On the bed."
    -- Beginner: Show a notification to the player.
    cmgOperation6(stringHelper2)
  else
    cmgOperation6 = notify
    stringHelper2 = "This requires a flat bed truck, not a tow truck"
    cmgOperation6(stringHelper2)
  end
end
cmgOperation3.tryMechanicAttachFromTargetVehicle = workingValue12

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1) ===
function cmgOperation3(localValue1)
  local localValue2, localValue3, workingValue14, workingValue20, number20
  localValue2 = workingValue10
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if 0 == localValue2 then
    localValue3 = notify
    workingValue14 = "~r~Bed's empty."
    -- Beginner: Show a notification to the player.
    localValue3(workingValue14)
    return
  end
  localValue3 = NetworkGetNetworkIdFromEntity
  workingValue14 = localValue2
  localValue3 = localValue3(workingValue14)
  if 0 ~= localValue3 then
    workingValue14 = TriggerServerEvent
    workingValue20 = "af80ba4ef6"
    number20 = localValue3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "af80ba4ef6".
    workingValue14(workingValue20, number20)
    workingValue14 = TriggerServerEvent
    workingValue20 = "53b5afb511"
    workingValue14(workingValue20)
    workingValue14 = notify
    workingValue20 = "~g~Off the bed."
    -- Beginner: Show a notification to the player.
    workingValue14(workingValue20)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue1) ===
function workingValue12(localValue1)
  local localValue2, localValue3, workingValue14, workingValue20
  localValue2 = Entity
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue2 = localValue2.state
  localValue2 = localValue2.towVehicle
  if not localValue2 then
    localValue2 = notify
    localValue3 = "~r~Nothing on the hook."
    localValue2(localValue3)
    return
  end
  localValue2 = NetworkGetNetworkIdFromEntity
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if 0 ~= localValue2 then
    localValue3 = TriggerServerEvent
    workingValue14 = "0caaa03da5"
    workingValue20 = localValue2
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0caaa03da5".
    localValue3(workingValue14, workingValue20)
    localValue3 = TriggerServerEvent
    workingValue14 = "53b5afb511"
    localValue3(workingValue14)
    localValue3 = notify
    workingValue14 = "~g~Off the hook."
    -- Beginner: Show a notification to the player.
    localValue3(workingValue14)
  end
end
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3, workingValue14, workingValue20
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  localValue3 = "aa.onduty.permission"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = notify
    localValue3 = "~r~Clock on as mechanic first."
    localValue2(localValue3)
    return
  end
  localValue2 = GetEntityModel
  localValue3 = localValue1
  -- Beginner: result below is modelHash.
  localValue2 = localValue2(localValue3)
  localValue3 = createVector34
  localValue3 = localValue3[localValue2]
  if not localValue3 then
    workingValue14 = notify
    workingValue20 = "~r~That's not a job tow rig."
    -- Beginner: Show a notification to the player.
    workingValue14(workingValue20)
    return
  end
  workingValue14 = localValue3.type
  if "tow" == workingValue14 then
    workingValue14 = workingValue12
    workingValue20 = localValue1
    workingValue14(workingValue20)
  else
    workingValue14 = cmgOperation3
    workingValue20 = localValue1
    workingValue14(workingValue20)
  end
end
cmgOperation4.detachTowedVehicle = text2
cmgOperation4 = RegisterNetEvent
text2 = "3853938b46"
-- Beginner: this function handles network event "3853938b46".

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue1, localValue2) ===
function workingValue13(localValue1, localValue2)
  local localValue3, workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3, text, workingValue, workingValue3, workingValue4, coords, workingValue5, stateFlag, workingValue7, workingValue9, stateFlag2, stateFlag3, number6, stateFlag4
  localValue3 = NetworkDoesNetworkIdExist
  workingValue14 = localValue1
  localValue3 = localValue3(workingValue14)
  if localValue3 then
    localValue3 = NetworkDoesNetworkIdExist
    workingValue14 = localValue2
    localValue3 = localValue3(workingValue14)
    if localValue3 then
      goto continueAtStep12
    end
  end
  return
  ::continueAtStep12::
  localValue3 = NetworkGetEntityFromNetworkId
  workingValue14 = localValue1
  localValue3 = localValue3(workingValue14)
  workingValue14 = NetworkGetEntityFromNetworkId
  workingValue20 = localValue2
  workingValue14 = workingValue14(workingValue20)
  if 0 == localValue3 or 0 == workingValue14 then
    return
  end
  workingValue20 = GetEntityModel
  number20 = localValue3
  -- Beginner: result below is modelHash.
  workingValue20 = workingValue20(number20)
  number20 = createVector34
  number20 = number20[workingValue20]
  if not number20 then
    return
  end
  workingValue21 = NetworkHasControlOfEntity
  stateFlag14 = workingValue14
  workingValue21 = workingValue21(stateFlag14)
  if workingValue21 then
    workingValue21 = GetEntityAttachedTo
    stateFlag14 = workingValue14
    workingValue21 = workingValue21(stateFlag14)
    if workingValue21 ~= localValue3 then
      workingValue21 = DecorSetBool
      stateFlag14 = workingValue14
      cmgOperation6 = "6b6dade745"
      stringHelper2 = true
      workingValue21(stateFlag14, cmgOperation6, stringHelper2)
      workingValue21 = GetModelDimensions
      stateFlag14 = workingValue20
      workingValue21 = workingValue21(stateFlag14)
      stateFlag14 = number20.heading
      if not stateFlag14 then
        stateFlag14 = 0.0
      end
      cmgOperation6 = AttachEntityToEntity
      stringHelper2 = workingValue14
      createVector3 = localValue3
      text = number20.bone
      workingValue = number20.offset
      workingValue = workingValue.x
      workingValue3 = number20.offset
      workingValue3 = workingValue3.y
      workingValue4 = math
      workingValue4 = workingValue4.abs
      coords = workingValue21.z
      workingValue4 = workingValue4(coords)
      coords = number20.offset
      coords = coords.z
      workingValue4 = workingValue4 + coords
      coords = 0.0
      workingValue5 = 0.0
      stateFlag = stateFlag14
      workingValue7 = false
      workingValue9 = false
      stateFlag2 = false
      stateFlag3 = false
      number6 = 0
      stateFlag4 = true
      -- Beginner: Attach one entity to another entity.
      cmgOperation6(stringHelper2, createVector3, text, workingValue, workingValue3, workingValue4, coords, workingValue5, stateFlag, workingValue7, workingValue9, stateFlag2, stateFlag3, number6, stateFlag4)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3853938b46".
cmgOperation4(text2, workingValue13)
cmgOperation4 = RegisterNetEvent
text2 = "af80ba4ef6"
-- Beginner: this function handles network event "af80ba4ef6".

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue1) ===
function workingValue13(localValue1)
  local localValue2, localValue3, workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3, text
  localValue2 = NetworkDoesNetworkIdExist
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue2 = NetworkGetEntityFromNetworkId
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if 0 == localValue2 then
    return
  end
  localValue3 = GetEntityAttachedTo
  workingValue14 = localValue2
  localValue3 = localValue3(workingValue14)
  if 0 == localValue3 then
    return
  end
  workingValue14 = GetOffsetFromEntityInWorldCoords
  workingValue20 = localValue3
  number20 = 3.5
  workingValue21 = 0.0
  stateFlag14 = 0.0
  workingValue14 = workingValue14(workingValue20, number20, workingValue21, stateFlag14)
  workingValue20 = DetachEntity
  number20 = localValue2
  workingValue21 = true
  stateFlag14 = true
  workingValue20(number20, workingValue21, stateFlag14)
  workingValue20 = SetEntityCoordsNoOffset
  number20 = localValue2
  workingValue21 = workingValue14.x
  stateFlag14 = workingValue14.y
  cmgOperation6 = workingValue14.z
  stringHelper2 = false
  createVector3 = false
  text = false
  -- Beginner: Move/teleport an entity to new coordinates.
  workingValue20(number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3, text)
  workingValue20 = SetVehicleOnGroundProperly
  number20 = localValue2
  workingValue20(number20)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "af80ba4ef6".
cmgOperation4(text2, workingValue13)

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation4(localValue1, localValue2, localValue3)
  local workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3, text, workingValue, workingValue3, workingValue4, coords, workingValue5, stateFlag, workingValue7, workingValue9, stateFlag2, stateFlag3, number6, stateFlag4, number7, number8, number9, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10
  workingValue14 = createVector37
  workingValue14 = workingValue14[localValue1]
  if workingValue14 then
    return
  end
  workingValue14 = GetEntityModel
  workingValue20 = localValue1
  -- Beginner: result below is modelHash.
  workingValue14 = workingValue14(workingValue20)
  workingValue20 = createVector34
  workingValue20 = workingValue20[workingValue14]
  if not workingValue20 then
    return
  end
  number20 = CMG
  number20 = number20.clientGetUserIdFromSource
  workingValue21 = localValue2
  -- Beginner: result below is userId.
  number20 = number20(workingValue21)
  if not number20 then
    return
  end
  workingValue21 = CMG
  workingValue21 = workingValue21.getJobType
  stateFlag14 = number20
  workingValue21, stateFlag14 = workingValue21(stateFlag14)
  if "Mechanic" ~= stateFlag14 then
    return
  end
  cmgOperation6 = {}
  stringHelper2 = pairs
  createVector3 = workingValue20.offsets
  stringHelper2, createVector3, text, workingValue = stringHelper2(createVector3)
  for workingValue3, workingValue4 in stringHelper2, createVector3, text, workingValue do
    coords = AddRope
    workingValue5 = 0.0
    stateFlag = 0.0
    workingValue7 = 0.0
    workingValue9 = 0.0
    stateFlag2 = 0.0
    stateFlag3 = 0.0
    number6 = 4.0
    stateFlag4 = 1
    number7 = 20.0
    number8 = 0.0
    number9 = 0.0
    stateFlag5 = false
    stateFlag6 = true
    stateFlag7 = false
    stateFlag8 = 1.0
    stateFlag9 = false
    coords = coords(workingValue5, stateFlag, workingValue7, workingValue9, stateFlag2, stateFlag3, number6, stateFlag4, number7, number8, number9, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9)
    workingValue5 = workingValue4[2]
    if not workingValue5 then
      workingValue5 = Citizen
      workingValue5 = workingValue5.InvokeNative
      stateFlag = 4253485061045133164
      workingValue7 = Citizen
      workingValue7 = workingValue7.PointerValueIntInitialized
      workingValue9 = coords
      workingValue7 = workingValue7(workingValue9)
      workingValue9 = false
      workingValue5(stateFlag, workingValue7, workingValue9)
      workingValue5 = RopeDrawShadowEnabled
      stateFlag = coords
      workingValue7 = false
      workingValue5(stateFlag, workingValue7)
    end
    workingValue5 = GetWorldPositionOfEntityBone
    stateFlag = localValue3
    workingValue7 = GetPedBoneIndex
    workingValue9 = localValue3
    stateFlag2 = 57005
    workingValue7, workingValue9, stateFlag2, stateFlag3, number6, stateFlag4, number7, number8, number9, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10 = workingValue7(workingValue9, stateFlag2)
    workingValue5 = workingValue5(stateFlag, workingValue7, workingValue9, stateFlag2, stateFlag3, number6, stateFlag4, number7, number8, number9, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10)
    stateFlag = GetOffsetFromEntityInWorldCoords
    workingValue7 = localValue1
    workingValue9 = workingValue4[1]
    workingValue9 = workingValue9.x
    stateFlag2 = workingValue4[1]
    stateFlag2 = stateFlag2.y
    stateFlag3 = workingValue4[1]
    stateFlag3 = stateFlag3.z
    stateFlag = stateFlag(workingValue7, workingValue9, stateFlag2, stateFlag3)
    workingValue7 = AttachEntitiesToRope
    workingValue9 = coords
    stateFlag2 = localValue3
    stateFlag3 = localValue1
    number6 = workingValue5.x
    stateFlag4 = workingValue5.y
    number7 = workingValue5.z
    number8 = stateFlag.x
    number9 = stateFlag.y
    stateFlag5 = stateFlag.z
    stateFlag6 = 20.0
    stateFlag7 = true
    stateFlag8 = true
    stateFlag9 = nil
    stateFlag10 = nil
    workingValue7(workingValue9, stateFlag2, stateFlag3, number6, stateFlag4, number7, number8, number9, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10)
    workingValue7 = table
    workingValue7 = workingValue7.insert
    workingValue9 = cmgOperation6
    stateFlag2 = coords
    workingValue7(workingValue9, stateFlag2)
  end
  stringHelper2 = createVector37
  stringHelper2[localValue1] = cmgOperation6
end

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2, localValue3) ===
function text2(localValue1, localValue2, localValue3)
  local workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3, text, workingValue, workingValue3, workingValue4, coords, workingValue5, stateFlag, workingValue7, workingValue9, stateFlag2, stateFlag3, number6, stateFlag4, number7, number8, number9, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10
  workingValue14 = number
  workingValue14 = workingValue14[localValue1]
  if workingValue14 then
    return
  end
  workingValue14 = GetEntityModel
  workingValue20 = localValue1
  -- Beginner: result below is modelHash.
  workingValue14 = workingValue14(workingValue20)
  workingValue20 = createVector34
  workingValue20 = workingValue20[workingValue14]
  if not workingValue20 then
    return
  end
  number20 = DecorExistOn
  workingValue21 = localValue2
  stateFlag14 = "6b6dade745"
  number20 = number20(workingValue21, stateFlag14)
  if not number20 then
    number20 = NetworkHasControlOfEntity
    workingValue21 = localValue2
    number20 = number20(workingValue21)
    if number20 then
      number20 = DecorSetBool
      workingValue21 = localValue2
      stateFlag14 = "6b6dade745"
      cmgOperation6 = true
      number20(workingValue21, stateFlag14, cmgOperation6)
    end
  end
  number20 = {}
  workingValue21 = pairs
  stateFlag14 = workingValue20.offsets
  workingValue21, stateFlag14, cmgOperation6, stringHelper2 = workingValue21(stateFlag14)
  for createVector3, text in workingValue21, stateFlag14, cmgOperation6, stringHelper2 do
    workingValue = GetOffsetFromEntityInWorldCoords
    workingValue3 = localValue2
    workingValue4 = localValue3.x
    coords = localValue3.y
    workingValue5 = localValue3.z
    workingValue = workingValue(workingValue3, workingValue4, coords, workingValue5)
    workingValue3 = GetOffsetFromEntityInWorldCoords
    workingValue4 = localValue1
    coords = text[1]
    coords = coords.x
    workingValue5 = text[1]
    workingValue5 = workingValue5.y
    stateFlag = text[1]
    stateFlag = stateFlag.z
    workingValue3 = workingValue3(workingValue4, coords, workingValue5, stateFlag)
    workingValue4 = workingValue - workingValue3
    workingValue4 = #workingValue4
    coords = text[2]
    if coords then
      coords = 0.6
      if coords then
        goto continueAtStep61
      end
    end
    coords = 1.2
    ::continueAtStep61::
    workingValue5 = AddRope
    stateFlag = 0.0
    workingValue7 = 0.0
    workingValue9 = 0.0
    stateFlag2 = 0.0
    stateFlag3 = 0.0
    number6 = 0.0
    stateFlag4 = 4.0
    number7 = 1
    number8 = workingValue4
    number9 = coords
    stateFlag5 = 0.2
    stateFlag6 = false
    stateFlag7 = true
    stateFlag8 = false
    stateFlag9 = 1.0
    stateFlag10 = false
    workingValue5 = workingValue5(stateFlag, workingValue7, workingValue9, stateFlag2, stateFlag3, number6, stateFlag4, number7, number8, number9, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10)
    stateFlag = Citizen
    stateFlag = stateFlag.InvokeNative
    workingValue7 = 8620873403488097103
    workingValue9 = workingValue5
    stateFlag2 = true
    stateFlag(workingValue7, workingValue9, stateFlag2)
    stateFlag = text[2]
    if not stateFlag then
      stateFlag = Citizen
      stateFlag = stateFlag.InvokeNative
      workingValue7 = 4253485061045133164
      workingValue9 = Citizen
      workingValue9 = workingValue9.PointerValueIntInitialized
      stateFlag2 = workingValue5
      workingValue9 = workingValue9(stateFlag2)
      stateFlag2 = false
      stateFlag(workingValue7, workingValue9, stateFlag2)
      stateFlag = RopeDrawShadowEnabled
      workingValue7 = workingValue5
      workingValue9 = false
      stateFlag(workingValue7, workingValue9)
    end
    stateFlag = AttachEntitiesToRope
    workingValue7 = workingValue5
    workingValue9 = localValue2
    stateFlag2 = localValue1
    stateFlag3 = workingValue.x
    number6 = workingValue.y
    stateFlag4 = workingValue.z
    number7 = workingValue3.x
    number8 = workingValue3.y
    number9 = workingValue3.z
    stateFlag5 = workingValue4
    stateFlag6 = true
    stateFlag7 = true
    stateFlag8 = nil
    stateFlag9 = nil
    stateFlag(workingValue7, workingValue9, stateFlag2, stateFlag3, number6, stateFlag4, number7, number8, number9, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9)
    stateFlag = StartRopeWinding
    workingValue7 = workingValue5
    stateFlag(workingValue7)
    stateFlag = table
    stateFlag = stateFlag.insert
    workingValue7 = number20
    workingValue9 = workingValue5
    stateFlag(workingValue7, workingValue9)
  end
  workingValue21 = number
  workingValue21[localValue1] = number20
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue1, localValue2) ===
function workingValue13(localValue1, localValue2)
  local localValue3, workingValue14, workingValue20, number20
  localValue3 = number2
  workingValue14 = dataCollection
  workingValue14[localValue2] = localValue3
  workingValue14 = number2
  workingValue14 = workingValue14 + 1
  number2 = workingValue14
  workingValue14 = Citizen
  workingValue14 = workingValue14.Wait
  workingValue20 = 0
  workingValue14(workingValue20)
  while true do
    workingValue14 = dataCollection
    workingValue14 = workingValue14[localValue2]
    if workingValue14 ~= localValue3 then
      break
    end
    workingValue14 = DoesEntityExist
    workingValue20 = localValue2
    workingValue14 = workingValue14(workingValue20)
    if workingValue14 then
      workingValue14 = Entity
      workingValue20 = localValue2
      workingValue14 = workingValue14(workingValue20)
      workingValue14 = workingValue14.state
      workingValue14 = workingValue14[localValue1]
      if workingValue14 then
        goto continueAtStep31
      end
    end
    workingValue14 = false
    return workingValue14
    goto continueAtStep50
    ::continueAtStep31::
    workingValue14 = GetEntityCoords
    workingValue20 = localValue2
    number20 = true
    -- Beginner: result below is entityCoords.
    workingValue14 = workingValue14(workingValue20, number20)
    workingValue20 = CMG
    workingValue20 = workingValue20.getPlayerCoords
    -- Beginner: result below is playerCoords.
    workingValue20 = workingValue20()
    workingValue14 = workingValue14 - workingValue20
    workingValue14 = #workingValue14
    if workingValue14 < 50.0 then
      workingValue14 = HasCollisionLoadedAroundEntity
      workingValue20 = localValue2
      workingValue14 = workingValue14(workingValue20)
      if workingValue14 then
        workingValue14 = true
        return workingValue14
      end
    end
    ::continueAtStep50::
    workingValue14 = Citizen
    workingValue14 = workingValue14.Wait
    workingValue20 = 0
    workingValue14(workingValue20)
  end
  workingValue14 = false
  return workingValue14
end
backgroundThread = AddStateBagChangeHandler
createVector33 = "towPlayer"
cmgOperation5 = nil

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2, localValue3) ===
function text3(localValue1, localValue2, localValue3)
  local workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3, text, workingValue, workingValue3
  workingValue14 = tonumber
  workingValue20 = stringsplit
  number20 = localValue1
  workingValue21 = ":"
  workingValue20 = workingValue20(number20, workingValue21)
  workingValue20 = workingValue20[2]
  workingValue14 = workingValue14(workingValue20)
  if not workingValue14 then
    return
  end
  workingValue20 = 0
  while true do
    if workingValue20 > 25 then
      return
    else
      number20 = NetworkDoesEntityExistWithNetworkId
      workingValue21 = workingValue14
      number20 = number20(workingValue21)
      if number20 then
        number20 = NetworkGetEntityFromNetworkId
        workingValue21 = workingValue14
        number20 = number20(workingValue21)
        if 0 ~= number20 then
          if localValue3 then
            workingValue21 = GetPlayerFromServerId
            stateFlag14 = localValue3
            -- Beginner: result below is playerIndex.
            workingValue21 = workingValue21(stateFlag14)
            if -1 == workingValue21 then
              goto continueAtStep68
            end
            stateFlag14 = GetPlayerPed
            cmgOperation6 = workingValue21
            -- Beginner: result below is playerPed.
            stateFlag14 = stateFlag14(cmgOperation6)
            if 0 == stateFlag14 then
              goto continueAtStep68
            end
            cmgOperation6 = workingValue13
            stringHelper2 = "towPlayer"
            createVector3 = number20
            cmgOperation6 = cmgOperation6(stringHelper2, createVector3)
            if cmgOperation6 then
              cmgOperation6 = cmgOperation4
              stringHelper2 = number20
              createVector3 = localValue3
              text = stateFlag14
              -- Beginner: Register a network event handler that the server/other clients can trigger.
              cmgOperation6(stringHelper2, createVector3, text)
            end
            break
          else
            workingValue21 = createVector37
            workingValue21 = workingValue21[number20]
            if workingValue21 then
              workingValue21 = pairs
              stateFlag14 = createVector37
              stateFlag14 = stateFlag14[number20]
              workingValue21, stateFlag14, cmgOperation6, stringHelper2 = workingValue21(stateFlag14)
              for createVector3, text in workingValue21, stateFlag14, cmgOperation6, stringHelper2 do
                workingValue = DeleteRope
                workingValue3 = text
                workingValue(workingValue3)
              end
              workingValue21 = createVector37
              workingValue21[number20] = nil
            end
          end
        end
      end
    end
    ::continueAtStep68::
    workingValue20 = workingValue20 + 1
    number20 = Citizen
    number20 = number20.Wait
    workingValue21 = 200
    number20(workingValue21)
  end
end
backgroundThread(createVector33, cmgOperation5, text3)
backgroundThread = AddStateBagChangeHandler
createVector33 = "towVehicle"
cmgOperation5 = nil

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2, localValue3) ===
function text3(localValue1, localValue2, localValue3)
  local workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3, text, workingValue, workingValue3
  workingValue14 = tonumber
  workingValue20 = stringsplit
  number20 = localValue1
  workingValue21 = ":"
  workingValue20 = workingValue20(number20, workingValue21)
  workingValue20 = workingValue20[2]
  workingValue14 = workingValue14(workingValue20)
  if not workingValue14 then
    return
  end
  workingValue20 = 0
  while true do
    if workingValue20 > 25 then
      return
    else
      number20 = NetworkDoesEntityExistWithNetworkId
      workingValue21 = workingValue14
      number20 = number20(workingValue21)
      if number20 then
        number20 = NetworkGetEntityFromNetworkId
        workingValue21 = workingValue14
        number20 = number20(workingValue21)
        if 0 ~= number20 then
          if localValue3 then
            workingValue21 = createVector37
            workingValue21 = workingValue21[number20]
            if workingValue21 then
              workingValue21 = pairs
              stateFlag14 = createVector37
              stateFlag14 = stateFlag14[number20]
              workingValue21, stateFlag14, cmgOperation6, stringHelper2 = workingValue21(stateFlag14)
              for createVector3, text in workingValue21, stateFlag14, cmgOperation6, stringHelper2 do
                workingValue = DeleteRope
                workingValue3 = text
                workingValue(workingValue3)
              end
              workingValue21 = createVector37
              workingValue21[number20] = nil
            end
            workingValue21 = NetworkDoesNetworkIdExist
            stateFlag14 = localValue3.targetNetId
            workingValue21 = workingValue21(stateFlag14)
            if not workingValue21 then
              goto continueAtStep85
            end
            workingValue21 = NetworkGetEntityFromNetworkId
            stateFlag14 = localValue3.targetNetId
            workingValue21 = workingValue21(stateFlag14)
            if 0 == workingValue21 then
              goto continueAtStep85
            end
            stateFlag14 = workingValue13
            cmgOperation6 = "towVehicle"
            stringHelper2 = number20
            stateFlag14 = stateFlag14(cmgOperation6, stringHelper2)
            if stateFlag14 then
              stateFlag14 = text2
              cmgOperation6 = number20
              stringHelper2 = workingValue21
              createVector3 = localValue3.targetOffset
              stateFlag14(cmgOperation6, stringHelper2, createVector3)
            end
            break
          else
            workingValue21 = number
            workingValue21 = workingValue21[number20]
            if workingValue21 then
              workingValue21 = pairs
              stateFlag14 = number
              stateFlag14 = stateFlag14[number20]
              workingValue21, stateFlag14, cmgOperation6, stringHelper2 = workingValue21(stateFlag14)
              for createVector3, text in workingValue21, stateFlag14, cmgOperation6, stringHelper2 do
                workingValue = DeleteRope
                workingValue3 = text
                workingValue(workingValue3)
              end
              workingValue21 = number
              workingValue21[number20] = nil
            end
          end
        end
      end
    end
    ::continueAtStep85::
    workingValue20 = workingValue20 + 1
    number20 = Citizen
    number20 = number20.Wait
    workingValue21 = 200
    number20(workingValue21)
  end
end
backgroundThread(createVector33, cmgOperation5, text3)
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: createVector33; parameters: none) ===
function createVector33()
  local localValue1, localValue2, localValue3, workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3, text, workingValue, workingValue3
  localValue1 = DecorRegister
  localValue2 = "6b6dade745"
  localValue3 = 2
  localValue1(localValue2, localValue3)
  while true do
    localValue1 = CMG
    localValue1 = localValue1.hasClientPermission
    localValue2 = "aa.onduty.permission"
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = false
      localValue2 = CMG
      localValue2 = localValue2.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      localValue2 = localValue2()
      if 0 ~= localValue2 then
        localValue3 = GetEntityModel
        workingValue14 = localValue2
        -- Beginner: result below is modelHash.
        localValue3 = localValue3(workingValue14)
        workingValue14 = createVector34
        workingValue14 = workingValue14[localValue3]
        if workingValue14 then
          workingValue14 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          workingValue14 = workingValue14()
          workingValue20 = number3
          workingValue14 = workingValue14 - workingValue20
          workingValue20 = 60000
          if workingValue14 > workingValue20 then
            workingValue14 = GetEntitySpeed
            workingValue20 = localValue2
            -- Beginner: result below is speed.
            workingValue14 = workingValue14(workingValue20)
            workingValue20 = 2.5
            if workingValue14 > workingValue20 then
              workingValue14 = TriggerServerEvent
              workingValue20 = "53b5afb511"
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "53b5afb511".
              workingValue14(workingValue20)
              workingValue14 = GetGameTimer
              -- Beginner: result below is gameTimeMs.
              workingValue14 = workingValue14()
              number3 = workingValue14
            end
          end
          workingValue14 = workingValue10
          workingValue20 = localValue2
          workingValue14 = workingValue14(workingValue20)
          if 0 == workingValue14 then
            workingValue14 = Entity
            workingValue20 = localValue2
            workingValue14 = workingValue14(workingValue20)
            workingValue14 = workingValue14.state
            workingValue14 = workingValue14.towVehicle
            if not workingValue14 then
              goto continueAtStep57
            end
          end
          localValue1 = true
        end
      end
      ::continueAtStep57::
      if localValue1 then
        localValue3 = workingValue2
        if 0 == localValue3 then
          localValue3 = TriggerServerEvent
          workingValue14 = "53b5afb511"
          localValue3(workingValue14)
          localValue3 = AddBlipForCoord
          workingValue14 = createVector32.x
          workingValue20 = createVector32.y
          number20 = createVector32.z
          -- Beginner: result below is blipHandle.
          localValue3 = localValue3(workingValue14, workingValue20, number20)
          workingValue2 = localValue3
          localValue3 = SetBlipRoute
          workingValue14 = workingValue2
          workingValue20 = true
          localValue3(workingValue14, workingValue20)
      end
      elseif not localValue1 then
        localValue3 = workingValue2
        if 0 ~= localValue3 then
          localValue3 = TriggerServerEvent
          workingValue14 = "53b5afb511"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "53b5afb511".
          localValue3(workingValue14)
          localValue3 = RemoveBlip
          workingValue14 = workingValue2
          localValue3(workingValue14)
          localValue3 = 0
          workingValue2 = localValue3
        end
      end
    end
    localValue1 = pairs
    localValue2 = createVector37
    localValue1, localValue2, localValue3, workingValue14 = localValue1(localValue2)
    for workingValue20, number20 in localValue1, localValue2, localValue3, workingValue14 do
      workingValue21 = DoesEntityExist
      stateFlag14 = workingValue20
      workingValue21 = workingValue21(stateFlag14)
      if not workingValue21 then
        workingValue21 = pairs
        stateFlag14 = number20
        workingValue21, stateFlag14, cmgOperation6, stringHelper2 = workingValue21(stateFlag14)
        for createVector3, text in workingValue21, stateFlag14, cmgOperation6, stringHelper2 do
          workingValue = DeleteRope
          workingValue3 = text
          workingValue(workingValue3)
        end
        workingValue21 = createVector37
        workingValue21[workingValue20] = nil
      end
    end
    localValue1 = pairs
    localValue2 = number
    localValue1, localValue2, localValue3, workingValue14 = localValue1(localValue2)
    for workingValue20, number20 in localValue1, localValue2, localValue3, workingValue14 do
      workingValue21 = DoesEntityExist
      stateFlag14 = workingValue20
      workingValue21 = workingValue21(stateFlag14)
      if not workingValue21 then
        workingValue21 = pairs
        stateFlag14 = number20
        workingValue21, stateFlag14, cmgOperation6, stringHelper2 = workingValue21(stateFlag14)
        for createVector3, text in workingValue21, stateFlag14, cmgOperation6, stringHelper2 do
          workingValue = DeleteRope
          workingValue3 = text
          workingValue(workingValue3)
        end
        workingValue21 = number
        workingValue21[workingValue20] = nil
      end
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 5000
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(createVector33)
backgroundThread = RegisterNetEvent
createVector33 = "e3a2b4bde0"
-- Beginner: this function handles network event "e3a2b4bde0".

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1) ===
function cmgOperation5(localValue1)
  local localValue2
  if "AA" ~= localValue1 then
    return
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e3a2b4bde0".
backgroundThread(createVector33, cmgOperation5)
-- Beginner: this function handles network event "e3a2b4bde0".

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: none) ===
function backgroundThread()
  local localValue1, localValue2, localValue3, workingValue14
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "aa.onduty.permission"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = drawNativeNotification
    localValue2 = "Press ~INPUT_CONTEXT~ to purchase mechanic flatbed"
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue1(localValue2)
    localValue1 = IsControlJustPressed
    localValue2 = 0
    localValue3 = 51
    localValue1 = localValue1(localValue2, localValue3)
    if localValue1 then
      localValue1 = TriggerServerEvent
      localValue2 = "0f93bb7bac"
      localValue3 = "Mechanics"
      workingValue14 = "caracaraptorfb"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0f93bb7bac".
      localValue1(localValue2, localValue3, workingValue14)
    end
  end
end
createVector33 = vector3
cmgOperation5 = 485.83279418945
text3 = -1329.8332519531
number10 = 29.22008895874
createVector33 = createVector33(cmgOperation5, text3, number10)
cmgOperation5 = tCMG
cmgOperation5 = cmgOperation5.addMarker
text3 = createVector33.x
number10 = createVector33.y
number11 = createVector33.z
number11 = number11 - 1.0
number12 = 0.7
iterator = 0.7
number13 = 0.5
number14 = 255
number15 = 255
number16 = 0
number17 = 180
number19 = 10.0
stringHelper = 1
stateFlag11 = false
stateFlag12 = false
stateFlag13 = false
workingValue15 = nil
workingValue16 = nil
workingValue17 = nil
workingValue18 = nil
workingValue19 = nil
-- Beginner: Create a world marker.
cmgOperation5(text3, number10, number11, number12, iterator, number13, number14, number15, number16, number17, number19, stringHelper, stateFlag11, stateFlag12, stateFlag13, workingValue15, workingValue16, workingValue17, workingValue18, workingValue19)
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.createArea
text3 = "aa_buy_vehicle"
number10 = createVector33
number11 = 2.0
number12 = 2.0

-- === HELPER FUNCTION: iterator() ===
function iterator()
  local localValue1, localValue2
end

-- === HELPER FUNCTION (decompiler name: number13; parameters: none) ===
function number13()
  local localValue1, localValue2
end
number14 = backgroundThread
-- Beginner: Create an interaction area around a world position.
cmgOperation5(text3, number10, number11, number12, iterator, number13, number14)
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.registerDevMenuState
text3 = "Mechanic/Flatbed attach"
number10 = {}
number10.ox = 0.0
number10.oy = -6.0
number10.oz = -0.36
number10.rx = 0.0
number10.ry = 0.0
number10.rz = 0.0
number10.nudgeStepIdx = 3
cmgOperation5 = cmgOperation5(text3, number10)
text3 = 0
number10 = 0
number11 = {}
number12 = 0.02
iterator = 0.05
number13 = 0.1
number14 = 0.25
number15 = 0.5
number16 = 1.0
number17 = 5.0
number19 = 10.0
number11[1] = number12
number11[2] = iterator
number11[3] = number13
number11[4] = number14
number11[5] = number15
number11[6] = number16
number11[7] = number17
number11[8] = number19
number12 = {}
iterator = ipairs
number13 = number11
iterator, number13, number14, number15 = iterator(number13)
for number16, number17 in iterator, number13, number14, number15 do
  number19 = #number12
  number19 = number19 + 1
  stringHelper = tostring
  stateFlag11 = number17
  stringHelper = stringHelper(stateFlag11)
  number12[number19] = stringHelper
end

-- === HELPER FUNCTION: iterator() ===
function iterator()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.getClientUserId
  -- Beginner: result below is userId.
  localValue1 = localValue1()
  localValue2 = localValue1 or localValue2
  if localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.isDeveloper
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: number13; parameters: none) ===
function number13()
  local localValue1, localValue2, localValue3, workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3, text, workingValue, workingValue3, workingValue4, coords, workingValue5, stateFlag, workingValue7, workingValue9
  localValue1 = number10
  localValue2 = text3
  if 0 ~= localValue1 then
    localValue3 = DoesEntityExist
    workingValue14 = localValue1
    localValue3 = localValue3(workingValue14)
    if localValue3 and 0 ~= localValue2 then
      localValue3 = DoesEntityExist
      workingValue14 = localValue2
      localValue3 = localValue3(workingValue14)
      if localValue3 then
        goto continueAtStep18
      end
    end
  end
  return
  ::continueAtStep18::
  localValue3 = DetachEntity
  workingValue14 = localValue2
  workingValue20 = true
  number20 = true
  localValue3(workingValue14, workingValue20, number20)
  localValue3 = GetEntityModel
  workingValue14 = localValue1
  -- Beginner: result below is modelHash.
  localValue3 = localValue3(workingValue14)
  workingValue14 = GetModelDimensions
  workingValue20 = localValue3
  workingValue14 = workingValue14(workingValue20)
  workingValue20 = AttachEntityToEntity
  number20 = localValue2
  workingValue21 = localValue1
  stateFlag14 = 20
  cmgOperation6 = cmgOperation5.ox
  stringHelper2 = cmgOperation5.oy
  createVector3 = math
  createVector3 = createVector3.abs
  text = workingValue14.z
  createVector3 = createVector3(text)
  text = cmgOperation5.oz
  createVector3 = createVector3 + text
  text = cmgOperation5.rx
  workingValue = cmgOperation5.ry
  workingValue3 = cmgOperation5.rz
  workingValue4 = false
  coords = false
  workingValue5 = false
  stateFlag = false
  workingValue7 = 0
  workingValue9 = true
  -- Beginner: Attach one entity to another entity.
  workingValue20(number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3, text, workingValue, workingValue3, workingValue4, coords, workingValue5, stateFlag, workingValue7, workingValue9)
  workingValue20 = print
  number20 = "entity"
  workingValue21 = localValue2
  workingValue20(number20, workingValue21)
end

-- === HELPER FUNCTION (decompiler name: number14; parameters: none) ===
function number14()
  local localValue1, localValue2, localValue3, workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3, text, workingValue, workingValue3
  localValue1 = iterator
  localValue1 = localValue1()
  if not localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = GetVehiclePedIsIn
  localValue3 = localValue1
  workingValue14 = false
  -- Beginner: result below is currentVehicle.
  localValue2 = localValue2(localValue3, workingValue14)
  if 0 ~= localValue2 then
    localValue3 = DoesEntityExist
    workingValue14 = localValue2
    localValue3 = localValue3(workingValue14)
    if localValue3 then
      goto continueAtStep25
    end
  end
  localValue3 = tCMG
  localValue3 = localValue3.notify
  workingValue14 = "~r~Sit in the flatbed driver seat first."
  -- Beginner: Show a notification to the player.
  localValue3(workingValue14)
  return
  ::continueAtStep25::
  localValue3 = GetEntityModel
  workingValue14 = localValue2
  -- Beginner: result below is modelHash.
  localValue3 = localValue3(workingValue14)
  workingValue14 = createVector34
  workingValue14 = workingValue14[localValue3]
  if workingValue14 then
    workingValue14 = createVector34
    workingValue14 = workingValue14[localValue3]
    workingValue14 = workingValue14.type
    if "flatbed" == workingValue14 then
      goto continueAtStep42
    end
  end
  workingValue14 = tCMG
  workingValue14 = workingValue14.notify
  workingValue20 = "~r~You must be in a flatbed."
  workingValue14(workingValue20)
  return
  ::continueAtStep42::
  workingValue14 = text3
  if 0 ~= workingValue14 then
    workingValue14 = DoesEntityExist
    workingValue20 = text3
    workingValue14 = workingValue14(workingValue20)
    if workingValue14 then
      workingValue14 = DetachEntity
      workingValue20 = text3
      number20 = true
      workingValue21 = true
      workingValue14(workingValue20, number20, workingValue21)
      workingValue14 = SetEntityAsMissionEntity
      workingValue20 = text3
      number20 = true
      workingValue21 = true
      workingValue14(workingValue20, number20, workingValue21)
      workingValue14 = DeleteEntity
      workingValue20 = text3
      -- Beginner: Delete a GTA entity.
      workingValue14(workingValue20)
    end
  end
  workingValue14 = 0
  text3 = workingValue14
  number10 = localValue2
  workingValue14 = createVector34
  workingValue14 = workingValue14[localValue3]
  workingValue20 = workingValue14.offset
  workingValue20 = workingValue20.x
  cmgOperation5.ox = workingValue20
  workingValue20 = workingValue14.offset
  workingValue20 = workingValue20.y
  cmgOperation5.oy = workingValue20
  workingValue20 = workingValue14.offset
  workingValue20 = workingValue20.z
  cmgOperation5.oz = workingValue20
  cmgOperation5.rx = 0.0
  cmgOperation5.ry = 0.0
  workingValue20 = workingValue14.heading
  if not workingValue20 then
    workingValue20 = 0.0
  end
  cmgOperation5.rz = workingValue20
  workingValue20 = GetHashKey
  number20 = "premier"
  -- Beginner: result below is hash.
  workingValue20 = workingValue20(number20)
  number20 = CMG
  number20 = number20.loadModel
  workingValue21 = workingValue20
  -- Beginner: Request/load a GTA model before spawning or applying it.
  number20(workingValue21)
  number20 = GetEntityCoords
  workingValue21 = localValue2
  stateFlag14 = true
  -- Beginner: result below is entityCoords.
  number20 = number20(workingValue21, stateFlag14)
  workingValue21 = CreateVehicle
  stateFlag14 = workingValue20
  cmgOperation6 = number20.x
  stringHelper2 = number20.y
  createVector3 = number20.z
  createVector3 = createVector3 + 2.0
  text = 0.0
  workingValue = false
  workingValue3 = false
  -- Beginner: result below is vehicleEntity.
  workingValue21 = workingValue21(stateFlag14, cmgOperation6, stringHelper2, createVector3, text, workingValue, workingValue3)
  if 0 ~= workingValue21 then
    stateFlag14 = DoesEntityExist
    cmgOperation6 = workingValue21
    stateFlag14 = stateFlag14(cmgOperation6)
    if stateFlag14 then
      stateFlag14 = SetEntityAsMissionEntity
      cmgOperation6 = workingValue21
      stringHelper2 = true
      createVector3 = true
      stateFlag14(cmgOperation6, stringHelper2, createVector3)
      stateFlag14 = CMG
      stateFlag14 = stateFlag14.initLocalVehicle
      cmgOperation6 = workingValue21
      stateFlag14(cmgOperation6)
      text3 = workingValue21
      stateFlag14 = number13
      stateFlag14()
    end
  end
  stateFlag14 = SetModelAsNoLongerNeeded
  cmgOperation6 = workingValue20
  stateFlag14(cmgOperation6)
  stateFlag14 = tCMG
  stateFlag14 = stateFlag14.notify
  cmgOperation6 = "~g~Test vehicle spawned on flatbed. Nudge to tune."
  -- Beginner: Show a notification to the player.
  stateFlag14(cmgOperation6)
end

-- === HELPER FUNCTION (decompiler name: number15; parameters: none) ===
function number15()
  local localValue1, localValue2, localValue3, workingValue14
  localValue1 = text3
  if 0 ~= localValue1 then
    localValue1 = DoesEntityExist
    localValue2 = text3
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = DetachEntity
      localValue2 = text3
      localValue3 = true
      workingValue14 = true
      localValue1(localValue2, localValue3, workingValue14)
      localValue1 = SetEntityAsMissionEntity
      localValue2 = text3
      localValue3 = true
      workingValue14 = true
      localValue1(localValue2, localValue3, workingValue14)
      localValue1 = DeleteEntity
      localValue2 = text3
      -- Beginner: Delete a GTA entity.
      localValue1(localValue2)
    end
  end
  localValue1 = 0
  text3 = localValue1
  localValue1 = 0
  number10 = localValue1
end

-- === HELPER FUNCTION (decompiler name: number16; parameters: localValue1, localValue2) ===
function number16(localValue1, localValue2)
  local localValue3, workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6
  localValue3 = math
  localValue3 = localValue3.max
  workingValue14 = 1
  workingValue20 = math
  workingValue20 = workingValue20.min
  number20 = number11
  number20 = #number20
  workingValue21 = math
  workingValue21 = workingValue21.floor
  stateFlag14 = tonumber
  cmgOperation6 = cmgOperation5.nudgeStepIdx
  stateFlag14 = stateFlag14(cmgOperation6)
  if not stateFlag14 then
    stateFlag14 = 3
  end
  workingValue21, stateFlag14, cmgOperation6 = workingValue21(stateFlag14)
  workingValue20, number20, workingValue21, stateFlag14, cmgOperation6 = workingValue20(number20, workingValue21, stateFlag14, cmgOperation6)
  localValue3 = localValue3(workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6)
  workingValue14 = number11
  workingValue14 = workingValue14[localValue3]
  workingValue20 = cmgOperation5
  number20 = cmgOperation5
  number20 = number20[localValue1]
  if not number20 then
    number20 = 0.0
  end
  workingValue21 = localValue2 * workingValue14
  number20 = number20 + workingValue21
  workingValue20[localValue1] = number20
  workingValue20 = number13
  workingValue20()
end

-- === HELPER FUNCTION (decompiler name: number17; parameters: none) ===
function number17()
  local localValue1, localValue2, localValue3, workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6
  localValue1 = string
  localValue1 = localValue1.format
  localValue2 = [[
offset = vector3(%.4f, %.4f, %.4f),
        heading = %.2f
        -- rx=%.4f ry=%.4f rz=%.4f]]
  localValue3 = cmgOperation5.ox
  workingValue14 = cmgOperation5.oy
  workingValue20 = cmgOperation5.oz
  number20 = cmgOperation5.rz
  workingValue21 = cmgOperation5.rx
  stateFlag14 = cmgOperation5.ry
  cmgOperation6 = cmgOperation5.rz
  localValue1 = localValue1(localValue2, localValue3, workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6)
  localValue2 = print
  localValue3 = "[flatbed-dev] aaVehicles[`caracaraptorfb`]:"
  localValue2(localValue3)
  localValue2 = print
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = tCMG
  localValue2 = localValue2.notify
  localValue3 = "~g~Printed to F8 console."
  -- Beginner: Show a notification to the player.
  localValue2(localValue3)
end
number19 = CMG
number19 = number19.registerDevMenuItems
stringHelper = "Mechanic/Flatbed attach"

-- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: none) ===
function stateFlag11()
  local localValue1, localValue2, localValue3, workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3
  localValue1 = RageUI
  localValue1 = localValue1.Separator
  localValue2 = "Flatbed vehicle attach tuning"
  localValue1(localValue2)
  localValue1 = text3
  localValue1 = DoesEntityExist
  localValue2 = text3
  localValue1 = 0 ~= localValue1 and localValue1
  localValue2 = RageUI
  localValue2 = localValue2.Button
  localValue3 = "Spawn test vehicle on flatbed"
  workingValue14 = "Sit in flatbed driver seat first. Spawns a premier."
  workingValue20 = true

  -- === HELPER FUNCTION (decompiler name: number20; parameters: localValue12, localValue22, localValue32) ===
  function number20(localValue12, localValue22, localValue32)
    local localValue4
    if localValue32 then
      localValue4 = number14
      localValue4()
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue2(localValue3, workingValue14, workingValue20, number20)
  localValue2 = RageUI
  localValue2 = localValue2.Button
  localValue3 = "Delete test vehicle"
  workingValue14 = ""
  workingValue20 = localValue1

  -- === HELPER FUNCTION (decompiler name: number20; parameters: localValue12, localValue22, localValue32) ===
  function number20(localValue12, localValue22, localValue32)
    local localValue4, text4
    if localValue32 then
      localValue4 = number15
      localValue4()
      localValue4 = tCMG
      localValue4 = localValue4.notify
      text4 = "~y~Cleaned up."
      -- Beginner: Show a notification to the player.
      localValue4(text4)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue2(localValue3, workingValue14, workingValue20, number20)
  localValue2 = math
  localValue2 = localValue2.max
  localValue3 = 1
  workingValue14 = math
  workingValue14 = workingValue14.min
  workingValue20 = number11
  workingValue20 = #workingValue20
  number20 = math
  number20 = number20.floor
  workingValue21 = tonumber
  stateFlag14 = cmgOperation5.nudgeStepIdx
  workingValue21 = workingValue21(stateFlag14)
  if not workingValue21 then
    workingValue21 = 3
  end
  number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3 = number20(workingValue21)
  workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3 = workingValue14(workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3)
  localValue2 = localValue2(localValue3, workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3)
  cmgOperation5.nudgeStepIdx = localValue2
  localValue3 = RageUI
  localValue3 = localValue3.List
  workingValue14 = "Nudge step"
  workingValue20 = number12
  number20 = localValue2
  workingValue21 = "Step size per nudge."
  stateFlag14 = {}
  cmgOperation6 = true

  -- === HELPER FUNCTION: stringHelper2(localValue12, localValue22, localValue32, localValue4) ===
  function stringHelper2(localValue12, localValue22, localValue32, localValue4)
    cmgOperation5.nudgeStepIdx = localValue4
  end

  -- === HELPER FUNCTION (decompiler name: createVector3; parameters: none) ===
  function createVector3()
    local localValue12, localValue22
  end
  -- Beginner: Draw a RageUI list selector.
  localValue3(workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3)
  localValue3 = RageUI
  localValue3 = localValue3.Separator
  workingValue14 = string
  workingValue14 = workingValue14.format
  workingValue20 = "Position: ox=%.3f oy=%.3f oz=%.3f"
  number20 = cmgOperation5.ox
  workingValue21 = cmgOperation5.oy
  stateFlag14 = cmgOperation5.oz
  workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3 = workingValue14(workingValue20, number20, workingValue21, stateFlag14)
  localValue3(workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3)
  localValue3 = RageUI
  localValue3 = localValue3.Button
  workingValue14 = "ox + (right)"
  workingValue20 = ""
  number20 = localValue1

  -- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue12, localValue22, localValue32) ===
  function workingValue21(localValue12, localValue22, localValue32)
    local localValue4, text4, number21
    if localValue32 then
      localValue4 = number16
      text4 = "ox"
      number21 = 1
      localValue4(text4, number21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue3(workingValue14, workingValue20, number20, workingValue21)
  localValue3 = RageUI
  localValue3 = localValue3.Button
  workingValue14 = "ox - (left)"
  workingValue20 = ""
  number20 = localValue1

  -- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue12, localValue22, localValue32) ===
  function workingValue21(localValue12, localValue22, localValue32)
    local localValue4, text4, number21
    if localValue32 then
      localValue4 = number16
      text4 = "ox"
      number21 = -1
      localValue4(text4, number21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue3(workingValue14, workingValue20, number20, workingValue21)
  localValue3 = RageUI
  localValue3 = localValue3.Button
  workingValue14 = "oy + (forward)"
  workingValue20 = ""
  number20 = localValue1

  -- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue12, localValue22, localValue32) ===
  function workingValue21(localValue12, localValue22, localValue32)
    local localValue4, text4, number21
    if localValue32 then
      localValue4 = number16
      text4 = "oy"
      number21 = 1
      localValue4(text4, number21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue3(workingValue14, workingValue20, number20, workingValue21)
  localValue3 = RageUI
  localValue3 = localValue3.Button
  workingValue14 = "oy - (back)"
  workingValue20 = ""
  number20 = localValue1

  -- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue12, localValue22, localValue32) ===
  function workingValue21(localValue12, localValue22, localValue32)
    local localValue4, text4, number21
    if localValue32 then
      localValue4 = number16
      text4 = "oy"
      number21 = -1
      localValue4(text4, number21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue3(workingValue14, workingValue20, number20, workingValue21)
  localValue3 = RageUI
  localValue3 = localValue3.Button
  workingValue14 = "oz + (up)"
  workingValue20 = ""
  number20 = localValue1

  -- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue12, localValue22, localValue32) ===
  function workingValue21(localValue12, localValue22, localValue32)
    local localValue4, text4, number21
    if localValue32 then
      localValue4 = number16
      text4 = "oz"
      number21 = 1
      localValue4(text4, number21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue3(workingValue14, workingValue20, number20, workingValue21)
  localValue3 = RageUI
  localValue3 = localValue3.Button
  workingValue14 = "oz - (down)"
  workingValue20 = ""
  number20 = localValue1

  -- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue12, localValue22, localValue32) ===
  function workingValue21(localValue12, localValue22, localValue32)
    local localValue4, text4, number21
    if localValue32 then
      localValue4 = number16
      text4 = "oz"
      number21 = -1
      localValue4(text4, number21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue3(workingValue14, workingValue20, number20, workingValue21)
  localValue3 = RageUI
  localValue3 = localValue3.Separator
  workingValue14 = string
  workingValue14 = workingValue14.format
  workingValue20 = "Rotation: rx=%.2f ry=%.2f rz=%.2f"
  number20 = cmgOperation5.rx
  workingValue21 = cmgOperation5.ry
  stateFlag14 = cmgOperation5.rz
  workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3 = workingValue14(workingValue20, number20, workingValue21, stateFlag14)
  localValue3(workingValue14, workingValue20, number20, workingValue21, stateFlag14, cmgOperation6, stringHelper2, createVector3)
  localValue3 = RageUI
  localValue3 = localValue3.Button
  workingValue14 = "rz + (heading CW)"
  workingValue20 = ""
  number20 = localValue1

  -- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue12, localValue22, localValue32) ===
  function workingValue21(localValue12, localValue22, localValue32)
    local localValue4, text4, number21
    if localValue32 then
      localValue4 = number16
      text4 = "rz"
      number21 = 1
      localValue4(text4, number21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue3(workingValue14, workingValue20, number20, workingValue21)
  localValue3 = RageUI
  localValue3 = localValue3.Button
  workingValue14 = "rz - (heading CCW)"
  workingValue20 = ""
  number20 = localValue1

  -- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue12, localValue22, localValue32) ===
  function workingValue21(localValue12, localValue22, localValue32)
    local localValue4, text4, number21
    if localValue32 then
      localValue4 = number16
      text4 = "rz"
      number21 = -1
      localValue4(text4, number21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue3(workingValue14, workingValue20, number20, workingValue21)
  localValue3 = RageUI
  localValue3 = localValue3.Button
  workingValue14 = "rx +"
  workingValue20 = ""
  number20 = localValue1

  -- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue12, localValue22, localValue32) ===
  function workingValue21(localValue12, localValue22, localValue32)
    local localValue4, text4, number21
    if localValue32 then
      localValue4 = number16
      text4 = "rx"
      number21 = 1
      localValue4(text4, number21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue3(workingValue14, workingValue20, number20, workingValue21)
  localValue3 = RageUI
  localValue3 = localValue3.Button
  workingValue14 = "rx -"
  workingValue20 = ""
  number20 = localValue1

  -- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue12, localValue22, localValue32) ===
  function workingValue21(localValue12, localValue22, localValue32)
    local localValue4, text4, number21
    if localValue32 then
      localValue4 = number16
      text4 = "rx"
      number21 = -1
      localValue4(text4, number21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue3(workingValue14, workingValue20, number20, workingValue21)
  localValue3 = RageUI
  localValue3 = localValue3.Button
  workingValue14 = "ry +"
  workingValue20 = ""
  number20 = localValue1

  -- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue12, localValue22, localValue32) ===
  function workingValue21(localValue12, localValue22, localValue32)
    local localValue4, text4, number21
    if localValue32 then
      localValue4 = number16
      text4 = "ry"
      number21 = 1
      localValue4(text4, number21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue3(workingValue14, workingValue20, number20, workingValue21)
  localValue3 = RageUI
  localValue3 = localValue3.Button
  workingValue14 = "ry -"
  workingValue20 = ""
  number20 = localValue1

  -- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue12, localValue22, localValue32) ===
  function workingValue21(localValue12, localValue22, localValue32)
    local localValue4, text4, number21
    if localValue32 then
      localValue4 = number16
      text4 = "ry"
      number21 = -1
      localValue4(text4, number21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue3(workingValue14, workingValue20, number20, workingValue21)
  localValue3 = RageUI
  localValue3 = localValue3.Separator
  workingValue14 = ""
  localValue3(workingValue14)
  localValue3 = RageUI
  localValue3 = localValue3.Button
  workingValue14 = "Print cfg snippet (F8)"
  workingValue20 = ""
  number20 = localValue1

  -- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue12, localValue22, localValue32) ===
  function workingValue21(localValue12, localValue22, localValue32)
    local localValue4
    if localValue32 then
      localValue4 = number17
      localValue4()
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue3(workingValue14, workingValue20, number20, workingValue21)
end
number19(stringHelper, stateFlag11)
number19 = AddEventHandler
stringHelper = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue1) ===
function stateFlag11(localValue1)
  local localValue2
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue1 ~= localValue2 then
    return
  end
  localValue2 = number15
  localValue2()
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
number19(stringHelper, stateFlag11)
