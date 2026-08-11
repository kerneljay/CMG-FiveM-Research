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
local cmgCall, cmgCall2, dataTable2, numberValue18, dataTable3, vector3Builder4, iterator2, vector3Builder5, vector3Builder6, vector3Builder7, numberValue, dataTable, numberValue2, workValue2, vector3Builder2, numberValue3, numberValue4, numberValue5, workValue6, workValue8, workValue10, workValue11, cmgCall3, workValue12, cmgCall4, textValue2, workValue13, threadCall, vector3Builder3, cmgCall5, textValue3, numberValue10, numberValue11, numberValue12, iterator, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue19, stringHelper, flag11, flag12, flag13, workValue15, workValue16, workValue17, workValue18, workValue19
cmgCall = CMG
cmgCall = cmgCall.loadModule
cmgCall2 = "cfg/cfg_garages"
-- Beginner: result below is config.
cmgCall = cmgCall(cmgCall2)
cmgCall2 = CMG
cmgCall2 = cmgCall2.loadModule
dataTable2 = "cfg/cfg_mechanic"
-- Beginner: result below is config.
cmgCall2 = cmgCall2(dataTable2)
dataTable2 = {}
numberValue18 = 52945046
dataTable3 = {}
dataTable3.type = "tow"
vector3Builder4 = {}
iterator2 = {}
vector3Builder5 = vector3
vector3Builder6 = 0.1
vector3Builder7 = -3.42
numberValue = 1.13
vector3Builder5 = vector3Builder5(vector3Builder6, vector3Builder7, numberValue)
vector3Builder6 = true
iterator2[1] = vector3Builder5
iterator2[2] = vector3Builder6
vector3Builder5 = {}
vector3Builder6 = vector3
vector3Builder7 = -0.1
numberValue = -3.42
dataTable = 1.13
vector3Builder6 = vector3Builder6(vector3Builder7, numberValue, dataTable)
vector3Builder7 = true
vector3Builder5[1] = vector3Builder6
vector3Builder5[2] = vector3Builder7
vector3Builder6 = {}
vector3Builder7 = vector3
numberValue = 0.0
dataTable = -2.6
numberValue2 = 0.2
vector3Builder7 = vector3Builder7(numberValue, dataTable, numberValue2)
numberValue = false
vector3Builder6[1] = vector3Builder7
vector3Builder6[2] = numberValue
vector3Builder4[1] = iterator2
vector3Builder4[2] = vector3Builder5
vector3Builder4[3] = vector3Builder6
dataTable3.offsets = vector3Builder4
dataTable2[numberValue18] = dataTable3
numberValue18 = 1355922771
dataTable3 = {}
dataTable3.type = "flatbed"
dataTable3.bone = 20
vector3Builder4 = vector3
iterator2 = -0.7
vector3Builder5 = -6.0
vector3Builder6 = -0.46
vector3Builder4 = vector3Builder4(iterator2, vector3Builder5, vector3Builder6)
dataTable3.offset = vector3Builder4
dataTable3.heading = -10.0
dataTable2[numberValue18] = dataTable3

-- === HELPER FUNCTION (decompiler name: numberValue18; parameters: arg1) ===
function numberValue18(arg1)
  local arg2, arg3, workValue14, workValue20, numberValue20
  arg2 = {}
  arg2.type = "flatbed"
  arg3 = arg1.bone
  arg2.bone = arg3
  arg3 = vector3
  workValue14 = arg1.offset
  workValue14 = workValue14.x
  workValue20 = arg1.offset
  workValue20 = workValue20.y
  numberValue20 = arg1.offset
  numberValue20 = numberValue20.z
  arg3 = arg3(workValue14, workValue20, numberValue20)
  arg2.offset = arg3
  arg3 = arg1.heading
  arg2.heading = arg3
  return arg2
end

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: arg1) ===
function dataTable3(arg1)
  local arg2, arg3, workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder, textValue, workValue, workValue3
  arg2 = {}
  arg3 = ipairs
  workValue14 = arg1.offsets
  arg3, workValue14, workValue20, numberValue20 = arg3(workValue14)
  for workValue21, flag14 in arg3, workValue14, workValue20, numberValue20 do
    cmgCall6 = flag14[1]
    stringHelper2 = {}
    vector3Builder = vector3
    textValue = cmgCall6.x
    workValue = cmgCall6.y
    workValue3 = cmgCall6.z
    vector3Builder = vector3Builder(textValue, workValue, workValue3)
    textValue = flag14[2]
    stringHelper2[1] = vector3Builder
    stringHelper2[2] = textValue
    arg2[workValue21] = stringHelper2
  end
  arg3 = {}
  arg3.type = "tow"
  arg3.offsets = arg2
  return arg3
end
vector3Builder4 = {}
iterator2 = pairs
vector3Builder5 = dataTable2
iterator2, vector3Builder5, vector3Builder6, vector3Builder7 = iterator2(vector3Builder5)
for numberValue, dataTable in iterator2, vector3Builder5, vector3Builder6, vector3Builder7 do
  vector3Builder4[numberValue] = dataTable
end
iterator2 = 1355922771
iterator2 = dataTable2[iterator2]
vector3Builder5 = 52945046
vector3Builder5 = dataTable2[vector3Builder5]
vector3Builder6 = pairs
vector3Builder7 = cmgCall2.mechanicFlatbedModelHashes
vector3Builder6, vector3Builder7, numberValue, dataTable = vector3Builder6(vector3Builder7)
for numberValue2 in vector3Builder6, vector3Builder7, numberValue, dataTable do
  workValue2 = vector3Builder4[numberValue2]
  if not workValue2 then
    workValue2 = numberValue18
    vector3Builder2 = iterator2
    workValue2 = workValue2(vector3Builder2)
    vector3Builder4[numberValue2] = workValue2
  end
end
vector3Builder6 = pairs
vector3Builder7 = cmgCall2.mechanicTowTruckModelHashes
vector3Builder6, vector3Builder7, numberValue, dataTable = vector3Builder6(vector3Builder7)
for numberValue2 in vector3Builder6, vector3Builder7, numberValue, dataTable do
  workValue2 = vector3Builder4[numberValue2]
  if not workValue2 then
    workValue2 = dataTable3
    vector3Builder2 = vector3Builder5
    workValue2 = workValue2(vector3Builder2)
    vector3Builder4[numberValue2] = workValue2
  end
end
vector3Builder6 = {}
vector3Builder6[13] = true
vector3Builder6[14] = true
vector3Builder6[15] = true
vector3Builder6[16] = true
vector3Builder6[21] = true
vector3Builder7 = {}
numberValue = {}
dataTable = {}
numberValue2 = 0
workValue2 = 0
vector3Builder2 = vector3
numberValue3 = 389.40829467773
numberValue4 = -1622.1922607422
numberValue5 = 29.28772354126
vector3Builder2 = vector3Builder2(numberValue3, numberValue4, numberValue5)
numberValue3 = 0

-- === HELPER FUNCTION (decompiler name: numberValue4; parameters: arg1, arg2) ===
function numberValue4(arg1, arg2)
  local arg3, workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder, textValue
  arg3 = GetVehicleClass
  workValue14 = arg1
  arg3 = arg3(workValue14)
  workValue14 = vector3Builder6
  workValue14 = workValue14[arg3]
  if workValue14 then
    workValue14 = false
    return workValue14
  end
  workValue14 = pairs
  workValue20 = cmgCall.garages
  workValue14, workValue20, numberValue20, workValue21 = workValue14(workValue20)
  for flag14, cmgCall6 in workValue14, workValue20, numberValue20, workValue21 do
    stringHelper2 = cmgCall6[arg2]
    if stringHelper2 then
      stringHelper2 = string
      stringHelper2 = stringHelper2.match
      vector3Builder = flag14
      textValue = "Aircraft"
      stringHelper2 = stringHelper2(vector3Builder, textValue)
      if not stringHelper2 then
        stringHelper2 = string
        stringHelper2 = stringHelper2.match
        vector3Builder = flag14
        textValue = "Helicopters"
        stringHelper2 = stringHelper2(vector3Builder, textValue)
        if not stringHelper2 then
          stringHelper2 = string
          stringHelper2 = stringHelper2.match
          vector3Builder = flag14
          textValue = "Boats"
          stringHelper2 = stringHelper2(vector3Builder, textValue)
          if not stringHelper2 then
            goto flow_label_40
          end
        end
      end
      stringHelper2 = false
      return stringHelper2
    end
    ::flow_label_40::
  end
  workValue14 = true
  return workValue14
end

-- === HELPER FUNCTION (decompiler name: numberValue5; parameters: arg1) ===
function numberValue5(arg1)
  local arg2, arg3, workValue14, workValue20
  arg2 = GetEntityModel
  arg3 = arg1
  -- Beginner: result below is modelHash.
  arg2 = arg2(arg3)
  arg3 = GetModelDimensions
  workValue14 = arg2
  arg3, workValue14 = arg3(workValue14)
  workValue20 = arg3 - workValue14
  workValue20 = #workValue20
  workValue20 = workValue20 > 10.0
  return workValue20
end

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, arg3, workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2
  arg2 = GetEntityModel
  arg3 = arg1
  -- Beginner: result below is modelHash.
  arg2 = arg2(arg3)
  arg3 = GetVehicleModelNumberOfSeats
  workValue14 = arg2
  arg3 = arg3(workValue14)
  if arg3 > 0 then
    workValue14 = 1
    workValue20 = arg3
    numberValue20 = 1
    for workValue21 = workValue14, workValue20, numberValue20 do
      flag14 = GetPedInVehicleSeat
      cmgCall6 = arg1
      stringHelper2 = workValue21 - 2
      flag14 = flag14(cmgCall6, stringHelper2)
      if 0 ~= flag14 then
        flag14 = false
        return flag14
      end
    end
  end
  workValue14 = true
  return workValue14
end

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1) ===
function workValue8(arg1)
  local arg2, arg3, workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder
  arg2 = GetEntityCoords
  arg3 = arg1
  workValue14 = true
  -- Beginner: result below is entityCoords.
  arg2 = arg2(arg3, workValue14)
  arg3 = CMG
  arg3 = arg3.getGrindingAreas
  arg3 = arg3()
  workValue14 = pairs
  workValue20 = arg3
  workValue14, workValue20, numberValue20, workValue21 = workValue14(workValue20)
  for flag14, cmgCall6 in workValue14, workValue20, numberValue20, workValue21 do
    stringHelper2 = cmgCall6.position
    stringHelper2 = arg2 - stringHelper2
    stringHelper2 = #stringHelper2
    vector3Builder = cmgCall6.radius
    if stringHelper2 < vector3Builder then
      stringHelper2 = true
      return stringHelper2
    end
  end
  workValue14 = false
  return workValue14
end

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: arg1) ===
function workValue10(arg1)
  local arg2, arg3, workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6
  arg2 = pairs
  arg3 = CMG
  arg3 = arg3.getAllVehicles
  arg3, workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6 = arg3()
  arg2, arg3, workValue14, workValue20 = arg2(arg3, workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6)
  for numberValue20, workValue21 in arg2, arg3, workValue14, workValue20 do
    flag14 = GetEntityAttachedTo
    cmgCall6 = workValue21
    flag14 = flag14(cmgCall6)
    if flag14 == arg1 then
      return workValue21
    end
  end
  arg2 = 0
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg1, arg2) ===
function workValue11(arg1, arg2)
  local arg3, workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder, textValue, workValue, workValue3, workValue4, coords, workValue5, flag, workValue7, workValue9
  arg3 = GetEntityCoords
  workValue14 = arg1
  workValue20 = true
  -- Beginner: result below is entityCoords.
  arg3 = arg3(workValue14, workValue20)
  workValue14 = GetEntityCoords
  workValue20 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue20 = workValue20()
  numberValue20 = true
  -- Beginner: result below is entityCoords.
  workValue14 = workValue14(workValue20, numberValue20)
  workValue20 = 18.0
  numberValue20 = 0
  workValue21 = arg2 + 0.01
  flag14 = pairs
  cmgCall6 = CMG
  cmgCall6 = cmgCall6.getAllVehicles
  cmgCall6, stringHelper2, vector3Builder, textValue, workValue, workValue3, workValue4, coords, workValue5, flag, workValue7, workValue9 = cmgCall6()
  flag14, cmgCall6, stringHelper2, vector3Builder = flag14(cmgCall6, stringHelper2, vector3Builder, textValue, workValue, workValue3, workValue4, coords, workValue5, flag, workValue7, workValue9)
  for textValue, workValue in flag14, cmgCall6, stringHelper2, vector3Builder do
    if workValue ~= arg1 then
      workValue3 = DoesEntityExist
      workValue4 = workValue
      workValue3 = workValue3(workValue4)
      if workValue3 then
        workValue3 = IsEntityAVehicle
        workValue4 = workValue
        workValue3 = workValue3(workValue4)
        if workValue3 then
          workValue3 = GetEntityModel
          workValue4 = workValue
          -- Beginner: result below is modelHash.
          workValue3 = workValue3(workValue4)
          workValue4 = vector3Builder4
          workValue4 = workValue4[workValue3]
          if workValue4 then
            coords = GetEntityCoords
            workValue5 = workValue
            flag = true
            -- Beginner: result below is entityCoords.
            coords = coords(workValue5, flag)
            workValue5 = coords - workValue14
            workValue5 = #workValue5
            if workValue20 >= workValue5 then
              workValue5 = coords - arg3
              workValue5 = #workValue5
              if workValue21 > workValue5 then
                flag = false
                workValue7 = workValue4.type
                if "flatbed" == workValue7 then
                  workValue7 = workValue10
                  workValue9 = workValue
                  workValue7 = workValue7(workValue9)
                  flag = 0 == workValue7
                else
                  workValue7 = Entity
                  workValue9 = workValue
                  workValue7 = workValue7(workValue9)
                  workValue7 = workValue7.state
                  workValue9 = workValue7.towPlayer
                  workValue9 = workValue7.towVehicle
                  flag = not workValue9 and flag
                end
                if flag then
                  workValue21 = workValue5
                  numberValue20 = workValue
                end
              end
            end
          end
        end
      end
    end
  end
  return numberValue20
end
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: workValue12; parameters: arg1) ===
function workValue12(arg1)
  local arg2, arg3, workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder, textValue
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  arg3 = "aa.onduty.permission"
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = notify
    arg3 = "~r~Clock on as mechanic first."
    -- Beginner: Show a notification to the player.
    arg2(arg3)
    return
  end
  if arg1 and 0 ~= arg1 then
    arg2 = DoesEntityExist
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = IsEntityAVehicle
      arg3 = arg1
      arg2 = arg2(arg3)
      if arg2 then
        goto flow_label_26
      end
    end
  end
  return
  ::flow_label_26::
  arg2 = GetEntityModel
  arg3 = arg1
  -- Beginner: result below is modelHash.
  arg2 = arg2(arg3)
  arg3 = vector3Builder4
  arg2 = arg3[arg2]
  if arg2 then
    arg2 = notify
    arg3 = "~b~Use this on the vehicle you want to tow, not on your flatbed or tow truck."
    arg2(arg3)
    return
  end
  arg2 = GetEntityModel
  arg3 = arg1
  -- Beginner: result below is modelHash.
  arg2 = arg2(arg3)
  arg3 = CMG
  arg3 = arg3.getVehicleIdFromModel
  workValue14 = arg2
  arg3 = arg3(workValue14)
  workValue14 = numberValue4
  workValue20 = arg1
  numberValue20 = arg3
  workValue14 = workValue14(workValue20, numberValue20)
  if workValue14 then
    workValue14 = workValue6
    workValue20 = arg1
    workValue14 = workValue14(workValue20)
    if workValue14 then
      workValue14 = numberValue5
      workValue20 = arg1
      workValue14 = workValue14(workValue20)
      if not workValue14 then
        goto flow_label_64
      end
    end
  end
  workValue14 = notify
  workValue20 = "~r~This vehicle cannot be towed."
  -- Beginner: Show a notification to the player.
  workValue14(workValue20)
  return
  ::flow_label_64::
  workValue14 = workValue8
  workValue20 = arg1
  workValue14 = workValue14(workValue20)
  if workValue14 then
    workValue14 = notify
    workValue20 = "~r~You can not tow vehicles near a grinding area."
    workValue14(workValue20)
    return
  end
  workValue14 = GetVehicleEngineHealth
  workValue20 = arg1
  workValue14 = workValue14(workValue20)
  workValue20 = 925.0
  if workValue14 >= workValue20 then
    workValue14 = GetVehicleBodyHealth
    workValue20 = arg1
    workValue14 = workValue14(workValue20)
    workValue20 = 925.0
    if workValue14 >= workValue20 then
      workValue14 = notify
      workValue20 = "~r~Only vehicles which are damaged can be towed."
      -- Beginner: Show a notification to the player.
      workValue14(workValue20)
      return
    end
  end
  workValue14 = workValue11
  workValue20 = arg1
  numberValue20 = 10.0
  workValue14 = workValue14(workValue20, numberValue20)
  if 0 == workValue14 then
    workValue20 = notify
    numberValue20 = "~r~No free flatbed/tow truck found. Park yours within ~10m of this car and stand near your rig."
    workValue20(numberValue20)
    return
  end
  workValue20 = NetworkGetNetworkIdFromEntity
  numberValue20 = workValue14
  workValue20 = workValue20(numberValue20)
  numberValue20 = NetworkGetNetworkIdFromEntity
  workValue21 = arg1
  numberValue20 = numberValue20(workValue21)
  if 0 == workValue20 or 0 == numberValue20 then
    workValue21 = notify
    flag14 = "~r~Couldn't sync the hook. Try again."
    -- Beginner: Show a notification to the player.
    workValue21(flag14)
    return
  end
  workValue21 = GetEntityModel
  flag14 = workValue14
  -- Beginner: result below is modelHash.
  workValue21 = workValue21(flag14)
  flag14 = vector3Builder4
  flag14 = flag14[workValue21]
  cmgCall6 = TriggerServerEvent
  stringHelper2 = "53b5afb511"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "53b5afb511".
  cmgCall6(stringHelper2)
  cmgCall6 = flag14.type
  if "flatbed" == cmgCall6 then
    cmgCall6 = TriggerServerEvent
    stringHelper2 = "3853938b46"
    vector3Builder = workValue20
    textValue = numberValue20
    cmgCall6(stringHelper2, vector3Builder, textValue)
    cmgCall6 = notify
    stringHelper2 = "~g~On the bed."
    -- Beginner: Show a notification to the player.
    cmgCall6(stringHelper2)
  else
    cmgCall6 = notify
    stringHelper2 = "This requires a flat bed truck, not a tow truck"
    cmgCall6(stringHelper2)
  end
end
cmgCall3.tryMechanicAttachFromTargetVehicle = workValue12

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg1) ===
function cmgCall3(arg1)
  local arg2, arg3, workValue14, workValue20, numberValue20
  arg2 = workValue10
  arg3 = arg1
  arg2 = arg2(arg3)
  if 0 == arg2 then
    arg3 = notify
    workValue14 = "~r~Bed's empty."
    -- Beginner: Show a notification to the player.
    arg3(workValue14)
    return
  end
  arg3 = NetworkGetNetworkIdFromEntity
  workValue14 = arg2
  arg3 = arg3(workValue14)
  if 0 ~= arg3 then
    workValue14 = TriggerServerEvent
    workValue20 = "af80ba4ef6"
    numberValue20 = arg3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "af80ba4ef6".
    workValue14(workValue20, numberValue20)
    workValue14 = TriggerServerEvent
    workValue20 = "53b5afb511"
    workValue14(workValue20)
    workValue14 = notify
    workValue20 = "~g~Off the bed."
    -- Beginner: Show a notification to the player.
    workValue14(workValue20)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue12; parameters: arg1) ===
function workValue12(arg1)
  local arg2, arg3, workValue14, workValue20
  arg2 = Entity
  arg3 = arg1
  arg2 = arg2(arg3)
  arg2 = arg2.state
  arg2 = arg2.towVehicle
  if not arg2 then
    arg2 = notify
    arg3 = "~r~Nothing on the hook."
    arg2(arg3)
    return
  end
  arg2 = NetworkGetNetworkIdFromEntity
  arg3 = arg1
  arg2 = arg2(arg3)
  if 0 ~= arg2 then
    arg3 = TriggerServerEvent
    workValue14 = "0caaa03da5"
    workValue20 = arg2
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0caaa03da5".
    arg3(workValue14, workValue20)
    arg3 = TriggerServerEvent
    workValue14 = "53b5afb511"
    arg3(workValue14)
    arg3 = notify
    workValue14 = "~g~Off the hook."
    -- Beginner: Show a notification to the player.
    arg3(workValue14)
  end
end
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1) ===
function textValue2(arg1)
  local arg2, arg3, workValue14, workValue20
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  arg3 = "aa.onduty.permission"
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = notify
    arg3 = "~r~Clock on as mechanic first."
    arg2(arg3)
    return
  end
  arg2 = GetEntityModel
  arg3 = arg1
  -- Beginner: result below is modelHash.
  arg2 = arg2(arg3)
  arg3 = vector3Builder4
  arg3 = arg3[arg2]
  if not arg3 then
    workValue14 = notify
    workValue20 = "~r~That's not a job tow rig."
    -- Beginner: Show a notification to the player.
    workValue14(workValue20)
    return
  end
  workValue14 = arg3.type
  if "tow" == workValue14 then
    workValue14 = workValue12
    workValue20 = arg1
    workValue14(workValue20)
  else
    workValue14 = cmgCall3
    workValue20 = arg1
    workValue14(workValue20)
  end
end
cmgCall4.detachTowedVehicle = textValue2
cmgCall4 = RegisterNetEvent
textValue2 = "3853938b46"
-- Beginner: this function handles network event "3853938b46".

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: arg1, arg2) ===
function workValue13(arg1, arg2)
  local arg3, workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder, textValue, workValue, workValue3, workValue4, coords, workValue5, flag, workValue7, workValue9, flag2, flag3, numberValue6, flag4
  arg3 = NetworkDoesNetworkIdExist
  workValue14 = arg1
  arg3 = arg3(workValue14)
  if arg3 then
    arg3 = NetworkDoesNetworkIdExist
    workValue14 = arg2
    arg3 = arg3(workValue14)
    if arg3 then
      goto flow_label_12
    end
  end
  return
  ::flow_label_12::
  arg3 = NetworkGetEntityFromNetworkId
  workValue14 = arg1
  arg3 = arg3(workValue14)
  workValue14 = NetworkGetEntityFromNetworkId
  workValue20 = arg2
  workValue14 = workValue14(workValue20)
  if 0 == arg3 or 0 == workValue14 then
    return
  end
  workValue20 = GetEntityModel
  numberValue20 = arg3
  -- Beginner: result below is modelHash.
  workValue20 = workValue20(numberValue20)
  numberValue20 = vector3Builder4
  numberValue20 = numberValue20[workValue20]
  if not numberValue20 then
    return
  end
  workValue21 = NetworkHasControlOfEntity
  flag14 = workValue14
  workValue21 = workValue21(flag14)
  if workValue21 then
    workValue21 = GetEntityAttachedTo
    flag14 = workValue14
    workValue21 = workValue21(flag14)
    if workValue21 ~= arg3 then
      workValue21 = DecorSetBool
      flag14 = workValue14
      cmgCall6 = "6b6dade745"
      stringHelper2 = true
      workValue21(flag14, cmgCall6, stringHelper2)
      workValue21 = GetModelDimensions
      flag14 = workValue20
      workValue21 = workValue21(flag14)
      flag14 = numberValue20.heading
      if not flag14 then
        flag14 = 0.0
      end
      cmgCall6 = AttachEntityToEntity
      stringHelper2 = workValue14
      vector3Builder = arg3
      textValue = numberValue20.bone
      workValue = numberValue20.offset
      workValue = workValue.x
      workValue3 = numberValue20.offset
      workValue3 = workValue3.y
      workValue4 = math
      workValue4 = workValue4.abs
      coords = workValue21.z
      workValue4 = workValue4(coords)
      coords = numberValue20.offset
      coords = coords.z
      workValue4 = workValue4 + coords
      coords = 0.0
      workValue5 = 0.0
      flag = flag14
      workValue7 = false
      workValue9 = false
      flag2 = false
      flag3 = false
      numberValue6 = 0
      flag4 = true
      -- Beginner: Attach one entity to another entity.
      cmgCall6(stringHelper2, vector3Builder, textValue, workValue, workValue3, workValue4, coords, workValue5, flag, workValue7, workValue9, flag2, flag3, numberValue6, flag4)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3853938b46".
cmgCall4(textValue2, workValue13)
cmgCall4 = RegisterNetEvent
textValue2 = "af80ba4ef6"
-- Beginner: this function handles network event "af80ba4ef6".

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: arg1) ===
function workValue13(arg1)
  local arg2, arg3, workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder, textValue
  arg2 = NetworkDoesNetworkIdExist
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg2 = NetworkGetEntityFromNetworkId
  arg3 = arg1
  arg2 = arg2(arg3)
  if 0 == arg2 then
    return
  end
  arg3 = GetEntityAttachedTo
  workValue14 = arg2
  arg3 = arg3(workValue14)
  if 0 == arg3 then
    return
  end
  workValue14 = GetOffsetFromEntityInWorldCoords
  workValue20 = arg3
  numberValue20 = 3.5
  workValue21 = 0.0
  flag14 = 0.0
  workValue14 = workValue14(workValue20, numberValue20, workValue21, flag14)
  workValue20 = DetachEntity
  numberValue20 = arg2
  workValue21 = true
  flag14 = true
  workValue20(numberValue20, workValue21, flag14)
  workValue20 = SetEntityCoordsNoOffset
  numberValue20 = arg2
  workValue21 = workValue14.x
  flag14 = workValue14.y
  cmgCall6 = workValue14.z
  stringHelper2 = false
  vector3Builder = false
  textValue = false
  -- Beginner: Move/teleport an entity to new coordinates.
  workValue20(numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder, textValue)
  workValue20 = SetVehicleOnGroundProperly
  numberValue20 = arg2
  workValue20(numberValue20)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "af80ba4ef6".
cmgCall4(textValue2, workValue13)

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1, arg2, arg3) ===
function cmgCall4(arg1, arg2, arg3)
  local workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder, textValue, workValue, workValue3, workValue4, coords, workValue5, flag, workValue7, workValue9, flag2, flag3, numberValue6, flag4, numberValue7, numberValue8, numberValue9, flag5, flag6, flag7, flag8, flag9, flag10
  workValue14 = vector3Builder7
  workValue14 = workValue14[arg1]
  if workValue14 then
    return
  end
  workValue14 = GetEntityModel
  workValue20 = arg1
  -- Beginner: result below is modelHash.
  workValue14 = workValue14(workValue20)
  workValue20 = vector3Builder4
  workValue20 = workValue20[workValue14]
  if not workValue20 then
    return
  end
  numberValue20 = CMG
  numberValue20 = numberValue20.clientGetUserIdFromSource
  workValue21 = arg2
  -- Beginner: result below is userId.
  numberValue20 = numberValue20(workValue21)
  if not numberValue20 then
    return
  end
  workValue21 = CMG
  workValue21 = workValue21.getJobType
  flag14 = numberValue20
  workValue21, flag14 = workValue21(flag14)
  if "Mechanic" ~= flag14 then
    return
  end
  cmgCall6 = {}
  stringHelper2 = pairs
  vector3Builder = workValue20.offsets
  stringHelper2, vector3Builder, textValue, workValue = stringHelper2(vector3Builder)
  for workValue3, workValue4 in stringHelper2, vector3Builder, textValue, workValue do
    coords = AddRope
    workValue5 = 0.0
    flag = 0.0
    workValue7 = 0.0
    workValue9 = 0.0
    flag2 = 0.0
    flag3 = 0.0
    numberValue6 = 4.0
    flag4 = 1
    numberValue7 = 20.0
    numberValue8 = 0.0
    numberValue9 = 0.0
    flag5 = false
    flag6 = true
    flag7 = false
    flag8 = 1.0
    flag9 = false
    coords = coords(workValue5, flag, workValue7, workValue9, flag2, flag3, numberValue6, flag4, numberValue7, numberValue8, numberValue9, flag5, flag6, flag7, flag8, flag9)
    workValue5 = workValue4[2]
    if not workValue5 then
      workValue5 = Citizen
      workValue5 = workValue5.InvokeNative
      flag = 4253485061045133164
      workValue7 = Citizen
      workValue7 = workValue7.PointerValueIntInitialized
      workValue9 = coords
      workValue7 = workValue7(workValue9)
      workValue9 = false
      workValue5(flag, workValue7, workValue9)
      workValue5 = RopeDrawShadowEnabled
      flag = coords
      workValue7 = false
      workValue5(flag, workValue7)
    end
    workValue5 = GetWorldPositionOfEntityBone
    flag = arg3
    workValue7 = GetPedBoneIndex
    workValue9 = arg3
    flag2 = 57005
    workValue7, workValue9, flag2, flag3, numberValue6, flag4, numberValue7, numberValue8, numberValue9, flag5, flag6, flag7, flag8, flag9, flag10 = workValue7(workValue9, flag2)
    workValue5 = workValue5(flag, workValue7, workValue9, flag2, flag3, numberValue6, flag4, numberValue7, numberValue8, numberValue9, flag5, flag6, flag7, flag8, flag9, flag10)
    flag = GetOffsetFromEntityInWorldCoords
    workValue7 = arg1
    workValue9 = workValue4[1]
    workValue9 = workValue9.x
    flag2 = workValue4[1]
    flag2 = flag2.y
    flag3 = workValue4[1]
    flag3 = flag3.z
    flag = flag(workValue7, workValue9, flag2, flag3)
    workValue7 = AttachEntitiesToRope
    workValue9 = coords
    flag2 = arg3
    flag3 = arg1
    numberValue6 = workValue5.x
    flag4 = workValue5.y
    numberValue7 = workValue5.z
    numberValue8 = flag.x
    numberValue9 = flag.y
    flag5 = flag.z
    flag6 = 20.0
    flag7 = true
    flag8 = true
    flag9 = nil
    flag10 = nil
    workValue7(workValue9, flag2, flag3, numberValue6, flag4, numberValue7, numberValue8, numberValue9, flag5, flag6, flag7, flag8, flag9, flag10)
    workValue7 = table
    workValue7 = workValue7.insert
    workValue9 = cmgCall6
    flag2 = coords
    workValue7(workValue9, flag2)
  end
  stringHelper2 = vector3Builder7
  stringHelper2[arg1] = cmgCall6
end

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1, arg2, arg3) ===
function textValue2(arg1, arg2, arg3)
  local workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder, textValue, workValue, workValue3, workValue4, coords, workValue5, flag, workValue7, workValue9, flag2, flag3, numberValue6, flag4, numberValue7, numberValue8, numberValue9, flag5, flag6, flag7, flag8, flag9, flag10
  workValue14 = numberValue
  workValue14 = workValue14[arg1]
  if workValue14 then
    return
  end
  workValue14 = GetEntityModel
  workValue20 = arg1
  -- Beginner: result below is modelHash.
  workValue14 = workValue14(workValue20)
  workValue20 = vector3Builder4
  workValue20 = workValue20[workValue14]
  if not workValue20 then
    return
  end
  numberValue20 = DecorExistOn
  workValue21 = arg2
  flag14 = "6b6dade745"
  numberValue20 = numberValue20(workValue21, flag14)
  if not numberValue20 then
    numberValue20 = NetworkHasControlOfEntity
    workValue21 = arg2
    numberValue20 = numberValue20(workValue21)
    if numberValue20 then
      numberValue20 = DecorSetBool
      workValue21 = arg2
      flag14 = "6b6dade745"
      cmgCall6 = true
      numberValue20(workValue21, flag14, cmgCall6)
    end
  end
  numberValue20 = {}
  workValue21 = pairs
  flag14 = workValue20.offsets
  workValue21, flag14, cmgCall6, stringHelper2 = workValue21(flag14)
  for vector3Builder, textValue in workValue21, flag14, cmgCall6, stringHelper2 do
    workValue = GetOffsetFromEntityInWorldCoords
    workValue3 = arg2
    workValue4 = arg3.x
    coords = arg3.y
    workValue5 = arg3.z
    workValue = workValue(workValue3, workValue4, coords, workValue5)
    workValue3 = GetOffsetFromEntityInWorldCoords
    workValue4 = arg1
    coords = textValue[1]
    coords = coords.x
    workValue5 = textValue[1]
    workValue5 = workValue5.y
    flag = textValue[1]
    flag = flag.z
    workValue3 = workValue3(workValue4, coords, workValue5, flag)
    workValue4 = workValue - workValue3
    workValue4 = #workValue4
    coords = textValue[2]
    if coords then
      coords = 0.6
      if coords then
        goto flow_label_61
      end
    end
    coords = 1.2
    ::flow_label_61::
    workValue5 = AddRope
    flag = 0.0
    workValue7 = 0.0
    workValue9 = 0.0
    flag2 = 0.0
    flag3 = 0.0
    numberValue6 = 0.0
    flag4 = 4.0
    numberValue7 = 1
    numberValue8 = workValue4
    numberValue9 = coords
    flag5 = 0.2
    flag6 = false
    flag7 = true
    flag8 = false
    flag9 = 1.0
    flag10 = false
    workValue5 = workValue5(flag, workValue7, workValue9, flag2, flag3, numberValue6, flag4, numberValue7, numberValue8, numberValue9, flag5, flag6, flag7, flag8, flag9, flag10)
    flag = Citizen
    flag = flag.InvokeNative
    workValue7 = 8620873403488097103
    workValue9 = workValue5
    flag2 = true
    flag(workValue7, workValue9, flag2)
    flag = textValue[2]
    if not flag then
      flag = Citizen
      flag = flag.InvokeNative
      workValue7 = 4253485061045133164
      workValue9 = Citizen
      workValue9 = workValue9.PointerValueIntInitialized
      flag2 = workValue5
      workValue9 = workValue9(flag2)
      flag2 = false
      flag(workValue7, workValue9, flag2)
      flag = RopeDrawShadowEnabled
      workValue7 = workValue5
      workValue9 = false
      flag(workValue7, workValue9)
    end
    flag = AttachEntitiesToRope
    workValue7 = workValue5
    workValue9 = arg2
    flag2 = arg1
    flag3 = workValue.x
    numberValue6 = workValue.y
    flag4 = workValue.z
    numberValue7 = workValue3.x
    numberValue8 = workValue3.y
    numberValue9 = workValue3.z
    flag5 = workValue4
    flag6 = true
    flag7 = true
    flag8 = nil
    flag9 = nil
    flag(workValue7, workValue9, flag2, flag3, numberValue6, flag4, numberValue7, numberValue8, numberValue9, flag5, flag6, flag7, flag8, flag9)
    flag = StartRopeWinding
    workValue7 = workValue5
    flag(workValue7)
    flag = table
    flag = flag.insert
    workValue7 = numberValue20
    workValue9 = workValue5
    flag(workValue7, workValue9)
  end
  workValue21 = numberValue
  workValue21[arg1] = numberValue20
end

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: arg1, arg2) ===
function workValue13(arg1, arg2)
  local arg3, workValue14, workValue20, numberValue20
  arg3 = numberValue2
  workValue14 = dataTable
  workValue14[arg2] = arg3
  workValue14 = numberValue2
  workValue14 = workValue14 + 1
  numberValue2 = workValue14
  workValue14 = Citizen
  workValue14 = workValue14.Wait
  workValue20 = 0
  workValue14(workValue20)
  while true do
    workValue14 = dataTable
    workValue14 = workValue14[arg2]
    if workValue14 ~= arg3 then
      break
    end
    workValue14 = DoesEntityExist
    workValue20 = arg2
    workValue14 = workValue14(workValue20)
    if workValue14 then
      workValue14 = Entity
      workValue20 = arg2
      workValue14 = workValue14(workValue20)
      workValue14 = workValue14.state
      workValue14 = workValue14[arg1]
      if workValue14 then
        goto flow_label_31
      end
    end
    workValue14 = false
    return workValue14
    goto flow_label_50
    ::flow_label_31::
    workValue14 = GetEntityCoords
    workValue20 = arg2
    numberValue20 = true
    -- Beginner: result below is entityCoords.
    workValue14 = workValue14(workValue20, numberValue20)
    workValue20 = CMG
    workValue20 = workValue20.getPlayerCoords
    -- Beginner: result below is playerCoords.
    workValue20 = workValue20()
    workValue14 = workValue14 - workValue20
    workValue14 = #workValue14
    if workValue14 < 50.0 then
      workValue14 = HasCollisionLoadedAroundEntity
      workValue20 = arg2
      workValue14 = workValue14(workValue20)
      if workValue14 then
        workValue14 = true
        return workValue14
      end
    end
    ::flow_label_50::
    workValue14 = Citizen
    workValue14 = workValue14.Wait
    workValue20 = 0
    workValue14(workValue20)
  end
  workValue14 = false
  return workValue14
end
threadCall = AddStateBagChangeHandler
vector3Builder3 = "towPlayer"
cmgCall5 = nil

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1, arg2, arg3) ===
function textValue3(arg1, arg2, arg3)
  local workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder, textValue, workValue, workValue3
  workValue14 = tonumber
  workValue20 = stringsplit
  numberValue20 = arg1
  workValue21 = ":"
  workValue20 = workValue20(numberValue20, workValue21)
  workValue20 = workValue20[2]
  workValue14 = workValue14(workValue20)
  if not workValue14 then
    return
  end
  workValue20 = 0
  while true do
    if workValue20 > 25 then
      return
    else
      numberValue20 = NetworkDoesEntityExistWithNetworkId
      workValue21 = workValue14
      numberValue20 = numberValue20(workValue21)
      if numberValue20 then
        numberValue20 = NetworkGetEntityFromNetworkId
        workValue21 = workValue14
        numberValue20 = numberValue20(workValue21)
        if 0 ~= numberValue20 then
          if arg3 then
            workValue21 = GetPlayerFromServerId
            flag14 = arg3
            -- Beginner: result below is playerIndex.
            workValue21 = workValue21(flag14)
            if -1 == workValue21 then
              goto flow_label_68
            end
            flag14 = GetPlayerPed
            cmgCall6 = workValue21
            -- Beginner: result below is playerPed.
            flag14 = flag14(cmgCall6)
            if 0 == flag14 then
              goto flow_label_68
            end
            cmgCall6 = workValue13
            stringHelper2 = "towPlayer"
            vector3Builder = numberValue20
            cmgCall6 = cmgCall6(stringHelper2, vector3Builder)
            if cmgCall6 then
              cmgCall6 = cmgCall4
              stringHelper2 = numberValue20
              vector3Builder = arg3
              textValue = flag14
              -- Beginner: Register a network event handler that the server/other clients can trigger.
              cmgCall6(stringHelper2, vector3Builder, textValue)
            end
            break
          else
            workValue21 = vector3Builder7
            workValue21 = workValue21[numberValue20]
            if workValue21 then
              workValue21 = pairs
              flag14 = vector3Builder7
              flag14 = flag14[numberValue20]
              workValue21, flag14, cmgCall6, stringHelper2 = workValue21(flag14)
              for vector3Builder, textValue in workValue21, flag14, cmgCall6, stringHelper2 do
                workValue = DeleteRope
                workValue3 = textValue
                workValue(workValue3)
              end
              workValue21 = vector3Builder7
              workValue21[numberValue20] = nil
            end
          end
        end
      end
    end
    ::flow_label_68::
    workValue20 = workValue20 + 1
    numberValue20 = Citizen
    numberValue20 = numberValue20.Wait
    workValue21 = 200
    numberValue20(workValue21)
  end
end
threadCall(vector3Builder3, cmgCall5, textValue3)
threadCall = AddStateBagChangeHandler
vector3Builder3 = "towVehicle"
cmgCall5 = nil

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1, arg2, arg3) ===
function textValue3(arg1, arg2, arg3)
  local workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder, textValue, workValue, workValue3
  workValue14 = tonumber
  workValue20 = stringsplit
  numberValue20 = arg1
  workValue21 = ":"
  workValue20 = workValue20(numberValue20, workValue21)
  workValue20 = workValue20[2]
  workValue14 = workValue14(workValue20)
  if not workValue14 then
    return
  end
  workValue20 = 0
  while true do
    if workValue20 > 25 then
      return
    else
      numberValue20 = NetworkDoesEntityExistWithNetworkId
      workValue21 = workValue14
      numberValue20 = numberValue20(workValue21)
      if numberValue20 then
        numberValue20 = NetworkGetEntityFromNetworkId
        workValue21 = workValue14
        numberValue20 = numberValue20(workValue21)
        if 0 ~= numberValue20 then
          if arg3 then
            workValue21 = vector3Builder7
            workValue21 = workValue21[numberValue20]
            if workValue21 then
              workValue21 = pairs
              flag14 = vector3Builder7
              flag14 = flag14[numberValue20]
              workValue21, flag14, cmgCall6, stringHelper2 = workValue21(flag14)
              for vector3Builder, textValue in workValue21, flag14, cmgCall6, stringHelper2 do
                workValue = DeleteRope
                workValue3 = textValue
                workValue(workValue3)
              end
              workValue21 = vector3Builder7
              workValue21[numberValue20] = nil
            end
            workValue21 = NetworkDoesNetworkIdExist
            flag14 = arg3.targetNetId
            workValue21 = workValue21(flag14)
            if not workValue21 then
              goto flow_label_85
            end
            workValue21 = NetworkGetEntityFromNetworkId
            flag14 = arg3.targetNetId
            workValue21 = workValue21(flag14)
            if 0 == workValue21 then
              goto flow_label_85
            end
            flag14 = workValue13
            cmgCall6 = "towVehicle"
            stringHelper2 = numberValue20
            flag14 = flag14(cmgCall6, stringHelper2)
            if flag14 then
              flag14 = textValue2
              cmgCall6 = numberValue20
              stringHelper2 = workValue21
              vector3Builder = arg3.targetOffset
              flag14(cmgCall6, stringHelper2, vector3Builder)
            end
            break
          else
            workValue21 = numberValue
            workValue21 = workValue21[numberValue20]
            if workValue21 then
              workValue21 = pairs
              flag14 = numberValue
              flag14 = flag14[numberValue20]
              workValue21, flag14, cmgCall6, stringHelper2 = workValue21(flag14)
              for vector3Builder, textValue in workValue21, flag14, cmgCall6, stringHelper2 do
                workValue = DeleteRope
                workValue3 = textValue
                workValue(workValue3)
              end
              workValue21 = numberValue
              workValue21[numberValue20] = nil
            end
          end
        end
      end
    end
    ::flow_label_85::
    workValue20 = workValue20 + 1
    numberValue20 = Citizen
    numberValue20 = numberValue20.Wait
    workValue21 = 200
    numberValue20(workValue21)
  end
end
threadCall(vector3Builder3, cmgCall5, textValue3)
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: vector3Builder3; parameters: none) ===
function vector3Builder3()
  local arg1, arg2, arg3, workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder, textValue, workValue, workValue3
  arg1 = DecorRegister
  arg2 = "6b6dade745"
  arg3 = 2
  arg1(arg2, arg3)
  while true do
    arg1 = CMG
    arg1 = arg1.hasClientPermission
    arg2 = "aa.onduty.permission"
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = false
      arg2 = CMG
      arg2 = arg2.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      arg2 = arg2()
      if 0 ~= arg2 then
        arg3 = GetEntityModel
        workValue14 = arg2
        -- Beginner: result below is modelHash.
        arg3 = arg3(workValue14)
        workValue14 = vector3Builder4
        workValue14 = workValue14[arg3]
        if workValue14 then
          workValue14 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          workValue14 = workValue14()
          workValue20 = numberValue3
          workValue14 = workValue14 - workValue20
          workValue20 = 60000
          if workValue14 > workValue20 then
            workValue14 = GetEntitySpeed
            workValue20 = arg2
            -- Beginner: result below is speed.
            workValue14 = workValue14(workValue20)
            workValue20 = 2.5
            if workValue14 > workValue20 then
              workValue14 = TriggerServerEvent
              workValue20 = "53b5afb511"
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "53b5afb511".
              workValue14(workValue20)
              workValue14 = GetGameTimer
              -- Beginner: result below is gameTimeMs.
              workValue14 = workValue14()
              numberValue3 = workValue14
            end
          end
          workValue14 = workValue10
          workValue20 = arg2
          workValue14 = workValue14(workValue20)
          if 0 == workValue14 then
            workValue14 = Entity
            workValue20 = arg2
            workValue14 = workValue14(workValue20)
            workValue14 = workValue14.state
            workValue14 = workValue14.towVehicle
            if not workValue14 then
              goto flow_label_57
            end
          end
          arg1 = true
        end
      end
      ::flow_label_57::
      if arg1 then
        arg3 = workValue2
        if 0 == arg3 then
          arg3 = TriggerServerEvent
          workValue14 = "53b5afb511"
          arg3(workValue14)
          arg3 = AddBlipForCoord
          workValue14 = vector3Builder2.x
          workValue20 = vector3Builder2.y
          numberValue20 = vector3Builder2.z
          -- Beginner: result below is blipHandle.
          arg3 = arg3(workValue14, workValue20, numberValue20)
          workValue2 = arg3
          arg3 = SetBlipRoute
          workValue14 = workValue2
          workValue20 = true
          arg3(workValue14, workValue20)
      end
      elseif not arg1 then
        arg3 = workValue2
        if 0 ~= arg3 then
          arg3 = TriggerServerEvent
          workValue14 = "53b5afb511"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "53b5afb511".
          arg3(workValue14)
          arg3 = RemoveBlip
          workValue14 = workValue2
          arg3(workValue14)
          arg3 = 0
          workValue2 = arg3
        end
      end
    end
    arg1 = pairs
    arg2 = vector3Builder7
    arg1, arg2, arg3, workValue14 = arg1(arg2)
    for workValue20, numberValue20 in arg1, arg2, arg3, workValue14 do
      workValue21 = DoesEntityExist
      flag14 = workValue20
      workValue21 = workValue21(flag14)
      if not workValue21 then
        workValue21 = pairs
        flag14 = numberValue20
        workValue21, flag14, cmgCall6, stringHelper2 = workValue21(flag14)
        for vector3Builder, textValue in workValue21, flag14, cmgCall6, stringHelper2 do
          workValue = DeleteRope
          workValue3 = textValue
          workValue(workValue3)
        end
        workValue21 = vector3Builder7
        workValue21[workValue20] = nil
      end
    end
    arg1 = pairs
    arg2 = numberValue
    arg1, arg2, arg3, workValue14 = arg1(arg2)
    for workValue20, numberValue20 in arg1, arg2, arg3, workValue14 do
      workValue21 = DoesEntityExist
      flag14 = workValue20
      workValue21 = workValue21(flag14)
      if not workValue21 then
        workValue21 = pairs
        flag14 = numberValue20
        workValue21, flag14, cmgCall6, stringHelper2 = workValue21(flag14)
        for vector3Builder, textValue in workValue21, flag14, cmgCall6, stringHelper2 do
          workValue = DeleteRope
          workValue3 = textValue
          workValue(workValue3)
        end
        workValue21 = numberValue
        workValue21[workValue20] = nil
      end
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 5000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(vector3Builder3)
threadCall = RegisterNetEvent
vector3Builder3 = "e3a2b4bde0"
-- Beginner: this function handles network event "e3a2b4bde0".

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: arg1) ===
function cmgCall5(arg1)
  local arg2
  if "AA" ~= arg1 then
    return
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e3a2b4bde0".
threadCall(vector3Builder3, cmgCall5)
-- Beginner: this function handles network event "e3a2b4bde0".

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: none) ===
function threadCall()
  local arg1, arg2, arg3, workValue14
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "aa.onduty.permission"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = drawNativeNotification
    arg2 = "Press ~INPUT_CONTEXT~ to purchase mechanic flatbed"
    -- Beginner: Show a GTA-style notification/help prompt.
    arg1(arg2)
    arg1 = IsControlJustPressed
    arg2 = 0
    arg3 = 51
    arg1 = arg1(arg2, arg3)
    if arg1 then
      arg1 = TriggerServerEvent
      arg2 = "0f93bb7bac"
      arg3 = "Mechanics"
      workValue14 = "caracaraptorfb"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0f93bb7bac".
      arg1(arg2, arg3, workValue14)
    end
  end
end
vector3Builder3 = vector3
cmgCall5 = 485.83279418945
textValue3 = -1329.8332519531
numberValue10 = 29.22008895874
vector3Builder3 = vector3Builder3(cmgCall5, textValue3, numberValue10)
cmgCall5 = tCMG
cmgCall5 = cmgCall5.addMarker
textValue3 = vector3Builder3.x
numberValue10 = vector3Builder3.y
numberValue11 = vector3Builder3.z
numberValue11 = numberValue11 - 1.0
numberValue12 = 0.7
iterator = 0.7
numberValue13 = 0.5
numberValue14 = 255
numberValue15 = 255
numberValue16 = 0
numberValue17 = 180
numberValue19 = 10.0
stringHelper = 1
flag11 = false
flag12 = false
flag13 = false
workValue15 = nil
workValue16 = nil
workValue17 = nil
workValue18 = nil
workValue19 = nil
-- Beginner: Create a world marker.
cmgCall5(textValue3, numberValue10, numberValue11, numberValue12, iterator, numberValue13, numberValue14, numberValue15, numberValue16, numberValue17, numberValue19, stringHelper, flag11, flag12, flag13, workValue15, workValue16, workValue17, workValue18, workValue19)
cmgCall5 = CMG
cmgCall5 = cmgCall5.createArea
textValue3 = "aa_buy_vehicle"
numberValue10 = vector3Builder3
numberValue11 = 2.0
numberValue12 = 2.0

-- === HELPER FUNCTION: iterator() ===
function iterator()
  local arg1, arg2
end

-- === HELPER FUNCTION (decompiler name: numberValue13; parameters: none) ===
function numberValue13()
  local arg1, arg2
end
numberValue14 = threadCall
-- Beginner: Create an interaction area around a world position.
cmgCall5(textValue3, numberValue10, numberValue11, numberValue12, iterator, numberValue13, numberValue14)
cmgCall5 = CMG
cmgCall5 = cmgCall5.registerDevMenuState
textValue3 = "Mechanic/Flatbed attach"
numberValue10 = {}
numberValue10.ox = 0.0
numberValue10.oy = -6.0
numberValue10.oz = -0.36
numberValue10.rx = 0.0
numberValue10.ry = 0.0
numberValue10.rz = 0.0
numberValue10.nudgeStepIdx = 3
cmgCall5 = cmgCall5(textValue3, numberValue10)
textValue3 = 0
numberValue10 = 0
numberValue11 = {}
numberValue12 = 0.02
iterator = 0.05
numberValue13 = 0.1
numberValue14 = 0.25
numberValue15 = 0.5
numberValue16 = 1.0
numberValue17 = 5.0
numberValue19 = 10.0
numberValue11[1] = numberValue12
numberValue11[2] = iterator
numberValue11[3] = numberValue13
numberValue11[4] = numberValue14
numberValue11[5] = numberValue15
numberValue11[6] = numberValue16
numberValue11[7] = numberValue17
numberValue11[8] = numberValue19
numberValue12 = {}
iterator = ipairs
numberValue13 = numberValue11
iterator, numberValue13, numberValue14, numberValue15 = iterator(numberValue13)
for numberValue16, numberValue17 in iterator, numberValue13, numberValue14, numberValue15 do
  numberValue19 = #numberValue12
  numberValue19 = numberValue19 + 1
  stringHelper = tostring
  flag11 = numberValue17
  stringHelper = stringHelper(flag11)
  numberValue12[numberValue19] = stringHelper
end

-- === HELPER FUNCTION: iterator() ===
function iterator()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.getClientUserId
  -- Beginner: result below is userId.
  arg1 = arg1()
  arg2 = arg1 or arg2
  if arg1 then
    arg2 = CMG
    arg2 = arg2.isDeveloper
    arg3 = arg1
    arg2 = arg2(arg3)
  end
  return arg2
end

-- === HELPER FUNCTION (decompiler name: numberValue13; parameters: none) ===
function numberValue13()
  local arg1, arg2, arg3, workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder, textValue, workValue, workValue3, workValue4, coords, workValue5, flag, workValue7, workValue9
  arg1 = numberValue10
  arg2 = textValue3
  if 0 ~= arg1 then
    arg3 = DoesEntityExist
    workValue14 = arg1
    arg3 = arg3(workValue14)
    if arg3 and 0 ~= arg2 then
      arg3 = DoesEntityExist
      workValue14 = arg2
      arg3 = arg3(workValue14)
      if arg3 then
        goto flow_label_18
      end
    end
  end
  return
  ::flow_label_18::
  arg3 = DetachEntity
  workValue14 = arg2
  workValue20 = true
  numberValue20 = true
  arg3(workValue14, workValue20, numberValue20)
  arg3 = GetEntityModel
  workValue14 = arg1
  -- Beginner: result below is modelHash.
  arg3 = arg3(workValue14)
  workValue14 = GetModelDimensions
  workValue20 = arg3
  workValue14 = workValue14(workValue20)
  workValue20 = AttachEntityToEntity
  numberValue20 = arg2
  workValue21 = arg1
  flag14 = 20
  cmgCall6 = cmgCall5.ox
  stringHelper2 = cmgCall5.oy
  vector3Builder = math
  vector3Builder = vector3Builder.abs
  textValue = workValue14.z
  vector3Builder = vector3Builder(textValue)
  textValue = cmgCall5.oz
  vector3Builder = vector3Builder + textValue
  textValue = cmgCall5.rx
  workValue = cmgCall5.ry
  workValue3 = cmgCall5.rz
  workValue4 = false
  coords = false
  workValue5 = false
  flag = false
  workValue7 = 0
  workValue9 = true
  -- Beginner: Attach one entity to another entity.
  workValue20(numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder, textValue, workValue, workValue3, workValue4, coords, workValue5, flag, workValue7, workValue9)
  workValue20 = print
  numberValue20 = "entity"
  workValue21 = arg2
  workValue20(numberValue20, workValue21)
end

-- === HELPER FUNCTION (decompiler name: numberValue14; parameters: none) ===
function numberValue14()
  local arg1, arg2, arg3, workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder, textValue, workValue, workValue3
  arg1 = iterator
  arg1 = arg1()
  if not arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetVehiclePedIsIn
  arg3 = arg1
  workValue14 = false
  -- Beginner: result below is currentVehicle.
  arg2 = arg2(arg3, workValue14)
  if 0 ~= arg2 then
    arg3 = DoesEntityExist
    workValue14 = arg2
    arg3 = arg3(workValue14)
    if arg3 then
      goto flow_label_25
    end
  end
  arg3 = tCMG
  arg3 = arg3.notify
  workValue14 = "~r~Sit in the flatbed driver seat first."
  -- Beginner: Show a notification to the player.
  arg3(workValue14)
  return
  ::flow_label_25::
  arg3 = GetEntityModel
  workValue14 = arg2
  -- Beginner: result below is modelHash.
  arg3 = arg3(workValue14)
  workValue14 = vector3Builder4
  workValue14 = workValue14[arg3]
  if workValue14 then
    workValue14 = vector3Builder4
    workValue14 = workValue14[arg3]
    workValue14 = workValue14.type
    if "flatbed" == workValue14 then
      goto flow_label_42
    end
  end
  workValue14 = tCMG
  workValue14 = workValue14.notify
  workValue20 = "~r~You must be in a flatbed."
  workValue14(workValue20)
  return
  ::flow_label_42::
  workValue14 = textValue3
  if 0 ~= workValue14 then
    workValue14 = DoesEntityExist
    workValue20 = textValue3
    workValue14 = workValue14(workValue20)
    if workValue14 then
      workValue14 = DetachEntity
      workValue20 = textValue3
      numberValue20 = true
      workValue21 = true
      workValue14(workValue20, numberValue20, workValue21)
      workValue14 = SetEntityAsMissionEntity
      workValue20 = textValue3
      numberValue20 = true
      workValue21 = true
      workValue14(workValue20, numberValue20, workValue21)
      workValue14 = DeleteEntity
      workValue20 = textValue3
      -- Beginner: Delete a GTA entity.
      workValue14(workValue20)
    end
  end
  workValue14 = 0
  textValue3 = workValue14
  numberValue10 = arg2
  workValue14 = vector3Builder4
  workValue14 = workValue14[arg3]
  workValue20 = workValue14.offset
  workValue20 = workValue20.x
  cmgCall5.ox = workValue20
  workValue20 = workValue14.offset
  workValue20 = workValue20.y
  cmgCall5.oy = workValue20
  workValue20 = workValue14.offset
  workValue20 = workValue20.z
  cmgCall5.oz = workValue20
  cmgCall5.rx = 0.0
  cmgCall5.ry = 0.0
  workValue20 = workValue14.heading
  if not workValue20 then
    workValue20 = 0.0
  end
  cmgCall5.rz = workValue20
  workValue20 = GetHashKey
  numberValue20 = "premier"
  -- Beginner: result below is hash.
  workValue20 = workValue20(numberValue20)
  numberValue20 = CMG
  numberValue20 = numberValue20.loadModel
  workValue21 = workValue20
  -- Beginner: Request/load a GTA model before spawning or applying it.
  numberValue20(workValue21)
  numberValue20 = GetEntityCoords
  workValue21 = arg2
  flag14 = true
  -- Beginner: result below is entityCoords.
  numberValue20 = numberValue20(workValue21, flag14)
  workValue21 = CreateVehicle
  flag14 = workValue20
  cmgCall6 = numberValue20.x
  stringHelper2 = numberValue20.y
  vector3Builder = numberValue20.z
  vector3Builder = vector3Builder + 2.0
  textValue = 0.0
  workValue = false
  workValue3 = false
  -- Beginner: result below is vehicleEntity.
  workValue21 = workValue21(flag14, cmgCall6, stringHelper2, vector3Builder, textValue, workValue, workValue3)
  if 0 ~= workValue21 then
    flag14 = DoesEntityExist
    cmgCall6 = workValue21
    flag14 = flag14(cmgCall6)
    if flag14 then
      flag14 = SetEntityAsMissionEntity
      cmgCall6 = workValue21
      stringHelper2 = true
      vector3Builder = true
      flag14(cmgCall6, stringHelper2, vector3Builder)
      flag14 = CMG
      flag14 = flag14.initLocalVehicle
      cmgCall6 = workValue21
      flag14(cmgCall6)
      textValue3 = workValue21
      flag14 = numberValue13
      flag14()
    end
  end
  flag14 = SetModelAsNoLongerNeeded
  cmgCall6 = workValue20
  flag14(cmgCall6)
  flag14 = tCMG
  flag14 = flag14.notify
  cmgCall6 = "~g~Test vehicle spawned on flatbed. Nudge to tune."
  -- Beginner: Show a notification to the player.
  flag14(cmgCall6)
end

-- === HELPER FUNCTION (decompiler name: numberValue15; parameters: none) ===
function numberValue15()
  local arg1, arg2, arg3, workValue14
  arg1 = textValue3
  if 0 ~= arg1 then
    arg1 = DoesEntityExist
    arg2 = textValue3
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = DetachEntity
      arg2 = textValue3
      arg3 = true
      workValue14 = true
      arg1(arg2, arg3, workValue14)
      arg1 = SetEntityAsMissionEntity
      arg2 = textValue3
      arg3 = true
      workValue14 = true
      arg1(arg2, arg3, workValue14)
      arg1 = DeleteEntity
      arg2 = textValue3
      -- Beginner: Delete a GTA entity.
      arg1(arg2)
    end
  end
  arg1 = 0
  textValue3 = arg1
  arg1 = 0
  numberValue10 = arg1
end

-- === HELPER FUNCTION (decompiler name: numberValue16; parameters: arg1, arg2) ===
function numberValue16(arg1, arg2)
  local arg3, workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6
  arg3 = math
  arg3 = arg3.max
  workValue14 = 1
  workValue20 = math
  workValue20 = workValue20.min
  numberValue20 = numberValue11
  numberValue20 = #numberValue20
  workValue21 = math
  workValue21 = workValue21.floor
  flag14 = tonumber
  cmgCall6 = cmgCall5.nudgeStepIdx
  flag14 = flag14(cmgCall6)
  if not flag14 then
    flag14 = 3
  end
  workValue21, flag14, cmgCall6 = workValue21(flag14)
  workValue20, numberValue20, workValue21, flag14, cmgCall6 = workValue20(numberValue20, workValue21, flag14, cmgCall6)
  arg3 = arg3(workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6)
  workValue14 = numberValue11
  workValue14 = workValue14[arg3]
  workValue20 = cmgCall5
  numberValue20 = cmgCall5
  numberValue20 = numberValue20[arg1]
  if not numberValue20 then
    numberValue20 = 0.0
  end
  workValue21 = arg2 * workValue14
  numberValue20 = numberValue20 + workValue21
  workValue20[arg1] = numberValue20
  workValue20 = numberValue13
  workValue20()
end

-- === HELPER FUNCTION (decompiler name: numberValue17; parameters: none) ===
function numberValue17()
  local arg1, arg2, arg3, workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6
  arg1 = string
  arg1 = arg1.format
  arg2 = [[
offset = vector3(%.4f, %.4f, %.4f),
        heading = %.2f
        -- rx=%.4f ry=%.4f rz=%.4f]]
  arg3 = cmgCall5.ox
  workValue14 = cmgCall5.oy
  workValue20 = cmgCall5.oz
  numberValue20 = cmgCall5.rz
  workValue21 = cmgCall5.rx
  flag14 = cmgCall5.ry
  cmgCall6 = cmgCall5.rz
  arg1 = arg1(arg2, arg3, workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6)
  arg2 = print
  arg3 = "[flatbed-dev] aaVehicles[`caracaraptorfb`]:"
  arg2(arg3)
  arg2 = print
  arg3 = arg1
  arg2(arg3)
  arg2 = tCMG
  arg2 = arg2.notify
  arg3 = "~g~Printed to F8 console."
  -- Beginner: Show a notification to the player.
  arg2(arg3)
end
numberValue19 = CMG
numberValue19 = numberValue19.registerDevMenuItems
stringHelper = "Mechanic/Flatbed attach"

-- === HELPER FUNCTION (decompiler name: flag11; parameters: none) ===
function flag11()
  local arg1, arg2, arg3, workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder
  arg1 = RageUI
  arg1 = arg1.Separator
  arg2 = "Flatbed vehicle attach tuning"
  arg1(arg2)
  arg1 = textValue3
  arg1 = DoesEntityExist
  arg2 = textValue3
  arg1 = 0 ~= arg1 and arg1
  arg2 = RageUI
  arg2 = arg2.Button
  arg3 = "Spawn test vehicle on flatbed"
  workValue14 = "Sit in flatbed driver seat first. Spawns a premier."
  workValue20 = true

  -- === HELPER FUNCTION (decompiler name: numberValue20; parameters: arg12, arg22, arg32) ===
  function numberValue20(arg12, arg22, arg32)
    local arg4
    if arg32 then
      arg4 = numberValue14
      arg4()
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg2(arg3, workValue14, workValue20, numberValue20)
  arg2 = RageUI
  arg2 = arg2.Button
  arg3 = "Delete test vehicle"
  workValue14 = ""
  workValue20 = arg1

  -- === HELPER FUNCTION (decompiler name: numberValue20; parameters: arg12, arg22, arg32) ===
  function numberValue20(arg12, arg22, arg32)
    local arg4, textValue4
    if arg32 then
      arg4 = numberValue15
      arg4()
      arg4 = tCMG
      arg4 = arg4.notify
      textValue4 = "~y~Cleaned up."
      -- Beginner: Show a notification to the player.
      arg4(textValue4)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg2(arg3, workValue14, workValue20, numberValue20)
  arg2 = math
  arg2 = arg2.max
  arg3 = 1
  workValue14 = math
  workValue14 = workValue14.min
  workValue20 = numberValue11
  workValue20 = #workValue20
  numberValue20 = math
  numberValue20 = numberValue20.floor
  workValue21 = tonumber
  flag14 = cmgCall5.nudgeStepIdx
  workValue21 = workValue21(flag14)
  if not workValue21 then
    workValue21 = 3
  end
  numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder = numberValue20(workValue21)
  workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder = workValue14(workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder)
  arg2 = arg2(arg3, workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder)
  cmgCall5.nudgeStepIdx = arg2
  arg3 = RageUI
  arg3 = arg3.List
  workValue14 = "Nudge step"
  workValue20 = numberValue12
  numberValue20 = arg2
  workValue21 = "Step size per nudge."
  flag14 = {}
  cmgCall6 = true

  -- === HELPER FUNCTION: stringHelper2(arg12, arg22, arg32, arg4) ===
  function stringHelper2(arg12, arg22, arg32, arg4)
    cmgCall5.nudgeStepIdx = arg4
  end

  -- === HELPER FUNCTION (decompiler name: vector3Builder; parameters: none) ===
  function vector3Builder()
    local arg12, arg22
  end
  -- Beginner: Draw a RageUI list selector.
  arg3(workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder)
  arg3 = RageUI
  arg3 = arg3.Separator
  workValue14 = string
  workValue14 = workValue14.format
  workValue20 = "Position: ox=%.3f oy=%.3f oz=%.3f"
  numberValue20 = cmgCall5.ox
  workValue21 = cmgCall5.oy
  flag14 = cmgCall5.oz
  workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder = workValue14(workValue20, numberValue20, workValue21, flag14)
  arg3(workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder)
  arg3 = RageUI
  arg3 = arg3.Button
  workValue14 = "ox + (right)"
  workValue20 = ""
  numberValue20 = arg1

  -- === HELPER FUNCTION (decompiler name: workValue21; parameters: arg12, arg22, arg32) ===
  function workValue21(arg12, arg22, arg32)
    local arg4, textValue4, numberValue21
    if arg32 then
      arg4 = numberValue16
      textValue4 = "ox"
      numberValue21 = 1
      arg4(textValue4, numberValue21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg3(workValue14, workValue20, numberValue20, workValue21)
  arg3 = RageUI
  arg3 = arg3.Button
  workValue14 = "ox - (left)"
  workValue20 = ""
  numberValue20 = arg1

  -- === HELPER FUNCTION (decompiler name: workValue21; parameters: arg12, arg22, arg32) ===
  function workValue21(arg12, arg22, arg32)
    local arg4, textValue4, numberValue21
    if arg32 then
      arg4 = numberValue16
      textValue4 = "ox"
      numberValue21 = -1
      arg4(textValue4, numberValue21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg3(workValue14, workValue20, numberValue20, workValue21)
  arg3 = RageUI
  arg3 = arg3.Button
  workValue14 = "oy + (forward)"
  workValue20 = ""
  numberValue20 = arg1

  -- === HELPER FUNCTION (decompiler name: workValue21; parameters: arg12, arg22, arg32) ===
  function workValue21(arg12, arg22, arg32)
    local arg4, textValue4, numberValue21
    if arg32 then
      arg4 = numberValue16
      textValue4 = "oy"
      numberValue21 = 1
      arg4(textValue4, numberValue21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg3(workValue14, workValue20, numberValue20, workValue21)
  arg3 = RageUI
  arg3 = arg3.Button
  workValue14 = "oy - (back)"
  workValue20 = ""
  numberValue20 = arg1

  -- === HELPER FUNCTION (decompiler name: workValue21; parameters: arg12, arg22, arg32) ===
  function workValue21(arg12, arg22, arg32)
    local arg4, textValue4, numberValue21
    if arg32 then
      arg4 = numberValue16
      textValue4 = "oy"
      numberValue21 = -1
      arg4(textValue4, numberValue21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg3(workValue14, workValue20, numberValue20, workValue21)
  arg3 = RageUI
  arg3 = arg3.Button
  workValue14 = "oz + (up)"
  workValue20 = ""
  numberValue20 = arg1

  -- === HELPER FUNCTION (decompiler name: workValue21; parameters: arg12, arg22, arg32) ===
  function workValue21(arg12, arg22, arg32)
    local arg4, textValue4, numberValue21
    if arg32 then
      arg4 = numberValue16
      textValue4 = "oz"
      numberValue21 = 1
      arg4(textValue4, numberValue21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg3(workValue14, workValue20, numberValue20, workValue21)
  arg3 = RageUI
  arg3 = arg3.Button
  workValue14 = "oz - (down)"
  workValue20 = ""
  numberValue20 = arg1

  -- === HELPER FUNCTION (decompiler name: workValue21; parameters: arg12, arg22, arg32) ===
  function workValue21(arg12, arg22, arg32)
    local arg4, textValue4, numberValue21
    if arg32 then
      arg4 = numberValue16
      textValue4 = "oz"
      numberValue21 = -1
      arg4(textValue4, numberValue21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg3(workValue14, workValue20, numberValue20, workValue21)
  arg3 = RageUI
  arg3 = arg3.Separator
  workValue14 = string
  workValue14 = workValue14.format
  workValue20 = "Rotation: rx=%.2f ry=%.2f rz=%.2f"
  numberValue20 = cmgCall5.rx
  workValue21 = cmgCall5.ry
  flag14 = cmgCall5.rz
  workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder = workValue14(workValue20, numberValue20, workValue21, flag14)
  arg3(workValue14, workValue20, numberValue20, workValue21, flag14, cmgCall6, stringHelper2, vector3Builder)
  arg3 = RageUI
  arg3 = arg3.Button
  workValue14 = "rz + (heading CW)"
  workValue20 = ""
  numberValue20 = arg1

  -- === HELPER FUNCTION (decompiler name: workValue21; parameters: arg12, arg22, arg32) ===
  function workValue21(arg12, arg22, arg32)
    local arg4, textValue4, numberValue21
    if arg32 then
      arg4 = numberValue16
      textValue4 = "rz"
      numberValue21 = 1
      arg4(textValue4, numberValue21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg3(workValue14, workValue20, numberValue20, workValue21)
  arg3 = RageUI
  arg3 = arg3.Button
  workValue14 = "rz - (heading CCW)"
  workValue20 = ""
  numberValue20 = arg1

  -- === HELPER FUNCTION (decompiler name: workValue21; parameters: arg12, arg22, arg32) ===
  function workValue21(arg12, arg22, arg32)
    local arg4, textValue4, numberValue21
    if arg32 then
      arg4 = numberValue16
      textValue4 = "rz"
      numberValue21 = -1
      arg4(textValue4, numberValue21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg3(workValue14, workValue20, numberValue20, workValue21)
  arg3 = RageUI
  arg3 = arg3.Button
  workValue14 = "rx +"
  workValue20 = ""
  numberValue20 = arg1

  -- === HELPER FUNCTION (decompiler name: workValue21; parameters: arg12, arg22, arg32) ===
  function workValue21(arg12, arg22, arg32)
    local arg4, textValue4, numberValue21
    if arg32 then
      arg4 = numberValue16
      textValue4 = "rx"
      numberValue21 = 1
      arg4(textValue4, numberValue21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg3(workValue14, workValue20, numberValue20, workValue21)
  arg3 = RageUI
  arg3 = arg3.Button
  workValue14 = "rx -"
  workValue20 = ""
  numberValue20 = arg1

  -- === HELPER FUNCTION (decompiler name: workValue21; parameters: arg12, arg22, arg32) ===
  function workValue21(arg12, arg22, arg32)
    local arg4, textValue4, numberValue21
    if arg32 then
      arg4 = numberValue16
      textValue4 = "rx"
      numberValue21 = -1
      arg4(textValue4, numberValue21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg3(workValue14, workValue20, numberValue20, workValue21)
  arg3 = RageUI
  arg3 = arg3.Button
  workValue14 = "ry +"
  workValue20 = ""
  numberValue20 = arg1

  -- === HELPER FUNCTION (decompiler name: workValue21; parameters: arg12, arg22, arg32) ===
  function workValue21(arg12, arg22, arg32)
    local arg4, textValue4, numberValue21
    if arg32 then
      arg4 = numberValue16
      textValue4 = "ry"
      numberValue21 = 1
      arg4(textValue4, numberValue21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg3(workValue14, workValue20, numberValue20, workValue21)
  arg3 = RageUI
  arg3 = arg3.Button
  workValue14 = "ry -"
  workValue20 = ""
  numberValue20 = arg1

  -- === HELPER FUNCTION (decompiler name: workValue21; parameters: arg12, arg22, arg32) ===
  function workValue21(arg12, arg22, arg32)
    local arg4, textValue4, numberValue21
    if arg32 then
      arg4 = numberValue16
      textValue4 = "ry"
      numberValue21 = -1
      arg4(textValue4, numberValue21)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg3(workValue14, workValue20, numberValue20, workValue21)
  arg3 = RageUI
  arg3 = arg3.Separator
  workValue14 = ""
  arg3(workValue14)
  arg3 = RageUI
  arg3 = arg3.Button
  workValue14 = "Print cfg snippet (F8)"
  workValue20 = ""
  numberValue20 = arg1

  -- === HELPER FUNCTION (decompiler name: workValue21; parameters: arg12, arg22, arg32) ===
  function workValue21(arg12, arg22, arg32)
    local arg4
    if arg32 then
      arg4 = numberValue17
      arg4()
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg3(workValue14, workValue20, numberValue20, workValue21)
end
numberValue19(stringHelper, flag11)
numberValue19 = AddEventHandler
stringHelper = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: flag11; parameters: arg1) ===
function flag11(arg1)
  local arg2
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 ~= arg2 then
    return
  end
  arg2 = numberValue15
  arg2()
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
numberValue19(stringHelper, flag11)
