--[[
    LEVEL 1 BEGINNER GUIDE — Map
    =================================

    File: cmg/prod/client/util/client/cl_map.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: shared utility/framework helper code.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 47
      * Background threads: 0
      * Always-running loops: 5
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
local dataCollection, dataCollection6, dataCollection7, dataCollection8, number8, cmgOperation8, cmgOperation9, workingValue15, dataCollection9, dataCollection10, dataCollection2, dataCollection3, cmgOperation, dataCollection4, cmgOperation2, cmgOperation3, dataCollection5, stateFlag, number, cmgOperation4, workingValue, backgroundThread, number2, cmgOperation5, cmgOperation6, cmgOperation7, stateFlag2, workingValue5
dataCollection = {}
dataCollection6 = {}
dataCollection7 = {}
dataCollection8 = {}
number8 = 250.0
cmgOperation8 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation9; parameters: none) ===
function cmgOperation9()
  local localValue1, localValue2
  localValue1 = dataCollection
  return localValue1
end
cmgOperation8.getGlobalBlips = cmgOperation9
cmgOperation8 = tCMG

-- === HELPER FUNCTION (decompiler name: cmgOperation9; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8) ===
function cmgOperation9(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
  local localValue9, localValue10, localValue11, localValue122
  localValue9 = AddBlipForCoord
  localValue10 = localValue1 + 0.001
  localValue11 = localValue2 + 0.001
  localValue122 = localValue3 + 0.001
  -- Beginner: result below is blipHandle.
  localValue9 = localValue9(localValue10, localValue11, localValue122)
  localValue10 = SetBlipSprite
  localValue11 = localValue9
  localValue122 = localValue4
  localValue10(localValue11, localValue122)
  localValue10 = SetBlipAsShortRange
  localValue11 = localValue9
  localValue122 = true
  localValue10(localValue11, localValue122)
  localValue10 = SetBlipColour
  localValue11 = localValue9
  localValue122 = localValue5 or localValue122
  if not localValue5 then
    localValue122 = 0
  end
  localValue10(localValue11, localValue122)
  if 403 == localValue4 or 431 == localValue4 or 365 == localValue4 or 85 == localValue4 or 140 == localValue4 or 60 == localValue4 or 44 == localValue4 or 110 == localValue4 or 315 == localValue4 then
    localValue10 = SetBlipScale
    localValue11 = localValue9
    localValue122 = 1.1
    localValue10(localValue11, localValue122)
  elseif 50 == localValue4 then
    localValue10 = SetBlipScale
    localValue11 = localValue9
    localValue122 = 0.7
    localValue10(localValue11, localValue122)
  else
    localValue10 = SetBlipScale
    localValue11 = localValue9
    localValue122 = 0.8
    localValue10(localValue11, localValue122)
  end
  localValue10 = SetBlipScale
  localValue11 = localValue9
  localValue122 = localValue7 or localValue122
  if not localValue7 then
    localValue122 = 0.8
  end
  localValue10(localValue11, localValue122)
  if localValue8 then
    localValue10 = SetBlipDisplay
    localValue11 = localValue9
    localValue122 = 5
    localValue10(localValue11, localValue122)
  end
  if nil ~= localValue6 then
    localValue10 = dataCollection6
    localValue10 = localValue10[localValue6]
    if not localValue10 then
      localValue10 = AddTextEntryByHash
      localValue11 = GetHashKey
      localValue122 = localValue6
      -- Beginner: result below is hash.
      localValue11 = localValue11(localValue122)
      localValue122 = localValue6
      localValue10(localValue11, localValue122)
      localValue10 = dataCollection6
      localValue10[localValue6] = true
    end
    localValue10 = BeginTextCommandSetBlipName
    localValue11 = localValue6
    localValue10(localValue11)
    localValue10 = EndTextCommandSetBlipName
    localValue11 = localValue9
    localValue10(localValue11)
  end
  localValue10 = table
  localValue10 = localValue10.insert
  localValue11 = dataCollection
  localValue122 = localValue9
  localValue10(localValue11, localValue122)
  return localValue9
end
cmgOperation8.addBlip = cmgOperation9
cmgOperation8 = tCMG

-- === HELPER FUNCTION (decompiler name: cmgOperation9; parameters: localValue1) ===
function cmgOperation9(localValue1)
  local localValue2, localValue3
  localValue2 = RemoveBlip
  localValue3 = localValue1
  localValue2(localValue3)
end
cmgOperation8.removeBlip = cmgOperation9
cmgOperation8 = {}
cmgOperation9 = tCMG

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8) ===
function workingValue15(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
  local localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17
  localValue9 = tCMG
  localValue9 = localValue9.removeNamedBlip
  localValue10 = localValue1
  localValue9(localValue10)
  localValue9 = cmgOperation8
  localValue10 = tCMG
  localValue10 = localValue10.addBlip
  localValue11 = localValue2
  localValue122 = localValue3
  localValue13 = localValue4
  localValue14 = localValue5
  localValue15 = localValue6
  localValue16 = localValue7
  localValue17 = localValue8
  localValue10 = localValue10(localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17)
  localValue9[localValue1] = localValue10
  localValue9 = cmgOperation8
  localValue9 = localValue9[localValue1]
  return localValue9
end
cmgOperation9.setNamedBlip = workingValue15
cmgOperation9 = tCMG

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1) ===
function workingValue15(localValue1)
  local localValue2, localValue3
  localValue2 = cmgOperation8
  localValue2 = localValue2[localValue1]
  if nil ~= localValue2 then
    localValue2 = tCMG
    localValue2 = localValue2.removeBlip
    localValue3 = cmgOperation8
    localValue3 = localValue3[localValue1]
    localValue2(localValue3)
    localValue2 = cmgOperation8
    localValue2[localValue1] = nil
  end
end
cmgOperation9.removeNamedBlip = workingValue15
cmgOperation9 = tCMG

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1, localValue2) ===
function workingValue15(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = SetNewWaypoint
  localValue4 = localValue1 + 1.0E-4
  localValue5 = localValue2 + 1.0E-4
  localValue3(localValue4, localValue5)
end
cmgOperation9.setGPS = workingValue15
cmgOperation9 = tCMG

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1) ===
function workingValue15(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = SetBlipRoute
  localValue3 = localValue1
  localValue4 = true
  localValue2(localValue3, localValue4)
end
cmgOperation9.setBlipRoute = workingValue15
cmgOperation9 = {}
workingValue15 = Tools
workingValue15 = workingValue15.newIDGenerator
workingValue15 = workingValue15()
dataCollection9 = {}
dataCollection10 = {}
dataCollection2 = {}
dataCollection3 = {}
cmgOperation = tCMG

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, localValue19, localValue20) ===
function dataCollection4(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, localValue19, localValue20)
  local localValue21, createVector3, workingValue2, workingValue3, workingValue4
  localValue21 = {}
  createVector3 = vector3
  workingValue2 = localValue1
  workingValue3 = localValue2
  workingValue4 = localValue3
  createVector3 = createVector3(workingValue2, workingValue3, workingValue4)
  localValue21.position = createVector3
  localValue21.sx = localValue4
  localValue21.sy = localValue5
  localValue21.sz = localValue6
  localValue21.r = localValue7
  localValue21.g = localValue8
  localValue21.b = localValue9
  localValue21.a = localValue10
  localValue21.visible_distance = localValue11
  localValue21.mtype = localValue122
  localValue21.faceCamera = localValue13
  localValue21.bopUpAndDown = localValue14
  localValue21.rotate = localValue15
  localValue21.textureDict = localValue16
  localValue21.textureName = localValue17
  localValue21.xRot = localValue18
  localValue21.yRot = localValue19
  localValue21.zRot = localValue20
  createVector3 = localValue21.sx
  if nil == createVector3 then
    localValue21.sx = 2.0
  end
  createVector3 = localValue21.sy
  if nil == createVector3 then
    localValue21.sy = 2.0
  end
  createVector3 = localValue21.sz
  if nil == createVector3 then
    localValue21.sz = 0.7
  end
  createVector3 = localValue21.r
  if nil == createVector3 then
    localValue21.r = 0
  end
  createVector3 = localValue21.g
  if nil == createVector3 then
    localValue21.g = 155
  end
  createVector3 = localValue21.b
  if nil == createVector3 then
    localValue21.b = 255
  end
  createVector3 = localValue21.a
  if nil == createVector3 then
    localValue21.a = 200
  end
  createVector3 = localValue21.sx
  createVector3 = createVector3 + 0.001
  localValue21.sx = createVector3
  createVector3 = localValue21.sy
  createVector3 = createVector3 + 0.001
  localValue21.sy = createVector3
  createVector3 = localValue21.sz
  createVector3 = createVector3 + 0.001
  localValue21.sz = createVector3
  createVector3 = localValue21.visible_distance
  if nil == createVector3 then
    localValue21.visible_distance = 150
  end
  createVector3 = workingValue15
  workingValue2 = createVector3
  createVector3 = createVector3.gen
  createVector3 = createVector3(workingValue2)
  workingValue2 = cmgOperation9
  workingValue2[createVector3] = localValue21
  workingValue2 = dataCollection3
  workingValue2[createVector3] = localValue21
  return createVector3
end
cmgOperation.addMarker = dataCollection4
cmgOperation = tCMG

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function dataCollection4(localValue1, localValue2, localValue3, localValue4, localValue5)
  local localValue6, localValue7, localValue8, localValue9, localValue10
  localValue4 = localValue4 - 0.2
  localValue6 = {}
  localValue6.propName = localValue1
  localValue7 = vector3
  localValue8 = localValue2
  localValue9 = localValue3
  localValue10 = localValue4
  localValue7 = localValue7(localValue8, localValue9, localValue10)
  localValue6.position = localValue7
  localValue6.visible_distance = localValue5
  localValue6.mtype = "prop_marker"
  localValue7 = workingValue15
  localValue8 = localValue7
  localValue7 = localValue7.gen
  localValue7 = localValue7(localValue8)
  localValue8 = cmgOperation9
  localValue8[localValue7] = localValue6
  localValue8 = dataCollection3
  localValue8[localValue7] = localValue6
  return localValue7
end
cmgOperation.addPropMarker = dataCollection4
cmgOperation = tCMG

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue1) ===
function dataCollection4(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = cmgOperation9
  localValue2 = localValue2[localValue1]
  if nil ~= localValue2 then
    localValue2 = cmgOperation9
    localValue2[localValue1] = nil
    localValue2 = workingValue15
    localValue3 = localValue2
    localValue2 = localValue2.free
    localValue4 = localValue1
    localValue2(localValue3, localValue4)
  end
  localValue2 = dataCollection3
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue2 = dataCollection3
    localValue2[localValue1] = nil
  end
  localValue2 = dataCollection2
  localValue2[localValue1] = nil
end
cmgOperation.removeMarker = dataCollection4
cmgOperation = tCMG

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6) ===
function dataCollection4(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6)
  local localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13
  localValue7 = tCMG
  localValue7 = localValue7.removeNamedPropMarker
  localValue8 = localValue1
  localValue7(localValue8)
  localValue7 = dataCollection10
  localValue8 = tCMG
  localValue8 = localValue8.addPropMarker
  localValue9 = localValue2
  localValue10 = localValue3
  localValue11 = localValue4
  localValue122 = localValue5
  localValue13 = localValue6
  localValue8 = localValue8(localValue9, localValue10, localValue11, localValue122, localValue13)
  localValue7[localValue1] = localValue8
  localValue7 = dataCollection10
  localValue7 = localValue7[localValue1]
  return localValue7
end
cmgOperation.setNamedPropMarker = dataCollection4
cmgOperation = tCMG

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue1) ===
function dataCollection4(localValue1)
  local localValue2, localValue3
  localValue2 = dataCollection10
  localValue2 = localValue2[localValue1]
  if nil ~= localValue2 then
    localValue2 = tCMG
    localValue2 = localValue2.removeMarker
    localValue3 = dataCollection10
    localValue3 = localValue3[localValue1]
    localValue2(localValue3)
    localValue2 = dataCollection10
    localValue2[localValue1] = nil
  end
end
cmgOperation.removeNamedPropMarker = dataCollection4
cmgOperation = tCMG

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, localValue19, localValue20, localValue21) ===
function dataCollection4(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, localValue19, localValue20, localValue21)
  local createVector3, workingValue2, workingValue3, workingValue4, number3, number4, number5, number6, stateFlag3, stateFlag4, number7, stateFlag5, workingValue6, workingValue7, stateFlag6, workingValue8, workingValue9, workingValue10, workingValue11, workingValue12, workingValue13, workingValue14
  createVector3 = tCMG
  createVector3 = createVector3.removeNamedMarker
  workingValue2 = localValue1
  createVector3(workingValue2)
  createVector3 = dataCollection9
  workingValue2 = tCMG
  workingValue2 = workingValue2.addMarker
  workingValue3 = localValue2
  workingValue4 = localValue3
  number3 = localValue4
  number4 = localValue5
  number5 = localValue6
  number6 = localValue7
  stateFlag3 = localValue8
  stateFlag4 = localValue9
  number7 = localValue10
  stateFlag5 = localValue11
  workingValue6 = localValue122
  workingValue7 = localValue13
  stateFlag6 = localValue14
  workingValue8 = localValue15
  workingValue9 = localValue16
  workingValue10 = localValue17
  workingValue11 = localValue18
  workingValue12 = localValue19
  workingValue13 = localValue20
  workingValue14 = localValue21
  workingValue2 = workingValue2(workingValue3, workingValue4, number3, number4, number5, number6, stateFlag3, stateFlag4, number7, stateFlag5, workingValue6, workingValue7, stateFlag6, workingValue8, workingValue9, workingValue10, workingValue11, workingValue12, workingValue13, workingValue14)
  createVector3[localValue1] = workingValue2
  createVector3 = dataCollection9
  createVector3 = createVector3[localValue1]
  return createVector3
end
cmgOperation.setNamedMarker = dataCollection4
cmgOperation = tCMG

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue1) ===
function dataCollection4(localValue1)
  local localValue2, localValue3
  localValue2 = dataCollection9
  localValue2 = localValue2[localValue1]
  if nil ~= localValue2 then
    localValue2 = tCMG
    localValue2 = localValue2.removeMarker
    localValue3 = dataCollection9
    localValue3 = localValue3[localValue1]
    localValue2(localValue3)
    localValue2 = dataCollection9
    localValue2[localValue1] = nil
  end
end
cmgOperation.removeNamedMarker = dataCollection4
cmgOperation = {}
dataCollection4 = {}
cmgOperation2 = tCMG

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1, localValue2) ===
function cmgOperation3(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = cmgOperation9
  localValue3 = localValue3[localValue1]
  if not localValue3 then
    return
  end
  localValue4 = localValue2 or localValue4
  if not localValue2 then
    localValue4 = nil
  end
  localValue3.hidden = localValue4
  if localValue2 then
    localValue4 = dataCollection4
    localValue4 = localValue4[localValue1]
    if localValue4 then
      localValue4 = DeleteObject
      localValue5 = dataCollection4
      localValue5 = localValue5[localValue1]
      localValue5 = localValue5.object
      localValue4(localValue5)
      localValue4 = dataCollection4
      localValue4[localValue1] = nil
    end
  end
end
cmgOperation2.setMarkerHidden = cmgOperation3

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, localValue19, localValue20, localValue21, createVector3, workingValue2, workingValue3, workingValue4, number3, number4, number5, number6, stateFlag3, stateFlag4
  localValue1 = pairs
  localValue2 = dataCollection2
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = localValue6.hidden
    if localValue7 then
      localValue7 = dataCollection4
      localValue7 = localValue7[localValue5]
      if localValue7 then
        localValue7 = DeleteObject
        localValue8 = dataCollection4
        localValue8 = localValue8[localValue5]
        localValue8 = localValue8.object
        localValue7(localValue8)
        localValue7 = dataCollection4
        localValue7[localValue5] = nil
      end
    else
      localValue7 = cmgOperation
      localValue7 = localValue7[localValue5]
      if localValue7 then
        localValue7 = cmgOperation
        localValue7 = localValue7[localValue5]
        localValue8 = localValue6.visible_distance
        if localValue7 <= localValue8 then
          localValue7 = localValue6.mtype
          if nil == localValue7 then
            localValue6.mtype = 1
          end
          localValue7 = type
          localValue8 = localValue6.mtype
          localValue7 = localValue7(localValue8)
          if "string" == localValue7 then
            localValue7 = dataCollection4
            localValue7 = localValue7[localValue5]
            if nil == localValue7 then
              localValue7 = CMG
              localValue7 = localValue7.loadModel
              localValue8 = localValue6.propName
              localValue7 = localValue7(localValue8)
              if localValue7 then
                localValue8 = CreateObject
                localValue9 = localValue7
                localValue10 = localValue6.position
                localValue10 = localValue10.x
                localValue11 = localValue6.position
                localValue11 = localValue11.y
                localValue122 = localValue6.position
                localValue122 = localValue122.z
                localValue13 = false
                localValue14 = false
                localValue15 = false
                -- Beginner: result below is objectEntity.
                localValue8 = localValue8(localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15)
                localValue9 = dataCollection4
                localValue10 = {}
                localValue10.object = localValue8
                localValue9[localValue5] = localValue10
              end
            end
          else
            localValue7 = DrawMarker
            localValue8 = localValue6.mtype
            localValue9 = localValue6.position
            localValue9 = localValue9.x
            localValue10 = localValue6.position
            localValue10 = localValue10.y
            localValue11 = localValue6.position
            localValue11 = localValue11.z
            localValue122 = 0.0
            localValue13 = 0.0
            localValue14 = 0.0
            localValue15 = localValue6.xRot
            localValue16 = localValue6.yRot
            localValue17 = localValue6.zRot
            localValue18 = localValue6.sx
            localValue19 = localValue6.sy
            localValue20 = localValue6.sz
            localValue21 = localValue6.r
            createVector3 = localValue6.g
            workingValue2 = localValue6.b
            workingValue3 = localValue6.a
            workingValue4 = localValue6.bopUpAndDown
            number3 = localValue6.faceCamera
            number4 = 2
            number5 = localValue6.rotate
            number6 = localValue6.textureDict
            stateFlag3 = localValue6.textureName
            stateFlag4 = false
            localValue7(localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, localValue19, localValue20, localValue21, createVector3, workingValue2, workingValue3, workingValue4, number3, number4, number5, number6, stateFlag3, stateFlag4)
          end
        end
      end
    end
  end
  localValue1 = pairs
  localValue2 = dataCollection4
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = dataCollection2
    localValue7 = localValue7[localValue5]
    if nil == localValue7 then
      localValue7 = DeleteObject
      localValue8 = localValue6.object
      localValue7(localValue8)
      localValue7 = dataCollection4
      localValue7[localValue5] = nil
    end
  end
end
cmgOperation3 = AddEventHandler
dataCollection5 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: stateFlag; parameters: localValue1) ===
function stateFlag(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue2 == localValue1 then
    localValue2 = pairs
    localValue3 = dataCollection4
    localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
    for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
      localValue8 = DeleteObject
      localValue9 = localValue7.object
      localValue8(localValue9)
      localValue8 = dataCollection4
      localValue8[localValue6] = nil
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgOperation3(dataCollection5, stateFlag)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.createThreadOnTick
dataCollection5 = cmgOperation2
stateFlag = "Util Markers"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation3(dataCollection5, stateFlag)
cmgOperation3 = Citizen
cmgOperation3 = cmgOperation3.CreateThread

-- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: none) ===
function dataCollection5()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  while true do
    localValue1 = CMG
    localValue1 = localValue1.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue1 = localValue1()
    localValue2 = {}
    cmgOperation = localValue2
    localValue2 = pairs
    localValue3 = dataCollection3
    localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
    for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
      localValue8 = cmgOperation
      localValue9 = localValue7.position
      localValue9 = localValue9 - localValue1
      localValue9 = #localValue9
      localValue8[localValue6] = localValue9
      localValue8 = cmgOperation
      localValue8 = localValue8[localValue6]
      localValue9 = localValue7.visible_distance
      if localValue8 <= localValue9 then
        localValue8 = localValue7.textureDict
        if localValue8 then
          localValue8 = HasStreamedTextureDictLoaded
          localValue9 = localValue7.textureDict
          localValue8 = localValue8(localValue9)
          if not localValue8 then
            goto continueAtStep33
          end
        end
        localValue8 = dataCollection2
        localValue8[localValue6] = localValue7
      else
        ::continueAtStep33::
        localValue8 = dataCollection2
        localValue8[localValue6] = nil
      end
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 250
    localValue2(localValue3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation3(dataCollection5)
cmgOperation3 = Citizen
cmgOperation3 = cmgOperation3.CreateThread

-- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: none) ===
function dataCollection5()
  local localValue1, localValue2
  while true do
    localValue1 = CMG
    localValue1 = localValue1.getNearbyMarkers
    localValue1 = localValue1()
    dataCollection3 = localValue1
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 10000
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation3(dataCollection5)
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: none) ===
function dataCollection5()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.getNearbyMarkers
  localValue1 = localValue1()
  dataCollection3 = localValue1
end
cmgOperation3.refreshNearbyMarkers = dataCollection5
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: none) ===
function dataCollection5()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13
  localValue1 = {}
  localValue2 = CMG
  localValue2 = localValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue2 = localValue2()
  localValue3 = 0
  localValue4 = pairs
  localValue5 = cmgOperation9
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for localValue8, localValue9 in localValue4, localValue5, localValue6, localValue7 do
    localValue10 = localValue9.position
    localValue10 = localValue10 - localValue2
    localValue10 = #localValue10
    localValue11 = math
    localValue11 = localValue11.max
    localValue122 = 250.0
    localValue13 = localValue9.visible_distance
    localValue11 = localValue11(localValue122, localValue13)
    if localValue10 <= localValue11 then
      localValue1[localValue8] = localValue9
    end
    localValue3 = localValue3 + 1
    localValue10 = localValue3 % 25
    if 0 == localValue10 then
      localValue10 = Wait
      localValue11 = 0
      localValue10(localValue11)
    end
  end
  return localValue1
end
cmgOperation3.getNearbyMarkers = dataCollection5
cmgOperation3 = {}
dataCollection5 = {}
stateFlag = false
number = 0
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13
  localValue2 = {}
  localValue3 = CMG
  localValue3 = localValue3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue3 = localValue3()
  localValue4 = 0
  localValue5 = number
  localValue5 = localValue5 + 1
  number = localValue5
  localValue5 = number
  localValue6 = pairs
  localValue7 = cmgOperation3
  localValue6, localValue7, localValue8, localValue9 = localValue6(localValue7)
  for localValue10, localValue11 in localValue6, localValue7, localValue8, localValue9 do
    localValue122 = localValue11.position
    localValue122 = localValue122 - localValue3
    localValue122 = #localValue122
    localValue13 = number8
    if not (localValue122 <= localValue13) then
      localValue122 = localValue11.radius
      localValue13 = 250
      if not (localValue122 > localValue13) then
        goto continueAtStep28
      end
    end
    localValue2[localValue10] = localValue11
    ::continueAtStep28::
    localValue4 = localValue4 + 1
    localValue122 = stateFlag
    if not localValue122 and not localValue1 then
      localValue122 = localValue4 % 25
      if 0 == localValue122 then
        localValue122 = Wait
        localValue13 = 0
        localValue122(localValue13)
      end
    end
  end
  localValue6 = number
  if localValue6 ~= localValue5 then
    localValue6 = dataCollection5
    return localValue6
  end
  return localValue2
end
cmgOperation4.getNearbyAreas = workingValue
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.getNearbyAreas
  localValue2 = true
  localValue1 = localValue1(localValue2)
  dataCollection5 = localValue1
end
cmgOperation4.forceNearbyAreasReload = workingValue
cmgOperation4 = tCMG

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6) ===
function workingValue(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6)
  local localValue7, localValue8, localValue9, localValue10, localValue11
  localValue7 = {}
  localValue8 = vector3
  localValue9 = localValue2 + 0.001
  localValue10 = localValue3 + 0.001
  localValue11 = localValue4 + 0.001
  localValue8 = localValue8(localValue9, localValue10, localValue11)
  localValue7.position = localValue8
  localValue7.radius = localValue5
  localValue7.height = localValue6
  localValue8 = localValue7.height
  if nil == localValue8 then
    localValue7.height = 6
  end
  localValue8 = cmgOperation3
  localValue8[localValue1] = localValue7
end
cmgOperation4.setArea = workingValue
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8) ===
function workingValue(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
  local localValue9, localValue10
  localValue9 = {}
  localValue9.position = localValue2
  localValue10 = localValue3 + 0.0
  localValue9.radius = localValue10
  localValue10 = localValue4 + 0.0
  localValue9.height = localValue10
  localValue9.enterArea = localValue5
  localValue9.leaveArea = localValue6
  localValue9.onTickArea = localValue7
  localValue9.metaData = localValue8
  localValue10 = localValue9.height
  if nil == localValue10 then
    localValue9.height = 6
  end
  localValue10 = cmgOperation3
  localValue10[localValue1] = localValue9
  localValue10 = dataCollection5
  localValue10[localValue1] = localValue9
  return localValue1
end
cmgOperation4.createArea = workingValue
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, localValue3
  localValue2 = cmgOperation3
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    localValue3 = false
    return localValue3
  end
  localValue3 = localValue2.player_in
  localValue3 = true == localValue3
  return localValue3
end
cmgOperation4.isPlayerInClientArea = workingValue
cmgOperation4 = tCMG

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2
  localValue2 = cmgOperation3
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue2 = cmgOperation3
    localValue2[localValue1] = nil
  end
  localValue2 = dataCollection5
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue2 = dataCollection5
    localValue2[localValue1] = nil
  end
end
cmgOperation4.removeArea = workingValue
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1, localValue2) ===
function workingValue(localValue1, localValue2)
  local localValue3
  localValue3 = cmgOperation3
  localValue3 = localValue3[localValue1]
  if localValue3 then
    localValue3 = cmgOperation3
    localValue3 = localValue3[localValue1]
    localValue3.metaData = localValue2
  end
end
cmgOperation4.updateAreaMetaData = workingValue
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2
  localValue2 = cmgOperation3
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue2 = true
    return localValue2
  end
  localValue2 = false
  return localValue2
end
cmgOperation4.doesAreaExist = workingValue
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1, localValue2) ===
function workingValue(localValue1, localValue2)
  local localValue3
  localValue3 = cmgOperation3
  localValue3 = localValue3[localValue1]
  if localValue3 then
    localValue3 = cmgOperation3
    localValue3 = localValue3[localValue1]
    localValue3.metaData = localValue2
  end
end
cmgOperation4.setAreaMetaData = workingValue
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2
  localValue2 = cmgOperation3
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue2 = cmgOperation3
    localValue2 = localValue2[localValue1]
    localValue2 = localValue2.metaData
    return localValue2
  else
    localValue2 = {}
    return localValue2
  end
end
cmgOperation4.getAreaMetaData = workingValue
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2
  stateFlag = localValue1
end
cmgOperation4.useIncreasedAreaRefreshRate = workingValue
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10
  localValue2 = pairs
  localValue3 = dataCollection5
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = string
    localValue8 = localValue8.find
    localValue9 = localValue6
    localValue10 = localValue1
    localValue8 = localValue8(localValue9, localValue10)
    if nil ~= localValue8 then
      localValue8 = localValue7.player_in
      if localValue8 then
        localValue8 = true
        return localValue8
      end
    end
  end
  localValue2 = false
  return localValue2
end
cmgOperation4.isInAnyAreaOfType = workingValue
cmgOperation4 = Citizen
cmgOperation4 = cmgOperation4.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14
  while true do
    localValue1 = CMG
    localValue1 = localValue1.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue1 = localValue1()
    localValue2 = {}
    localValue3 = pairs
    localValue4 = dataCollection5
    localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
    for localValue7 in localValue3, localValue4, localValue5, localValue6 do
      localValue8 = #localValue2
      localValue8 = localValue8 + 1
      localValue2[localValue8] = localValue7
    end
    localValue3 = ipairs
    localValue4 = localValue2
    localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
    for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
      localValue9 = dataCollection5
      localValue9 = localValue9[localValue8]
      if localValue9 then
        localValue10 = localValue9.position
        localValue10 = localValue10 - localValue1
        localValue10 = #localValue10
        localValue11 = localValue9.radius
        localValue11 = localValue10 <= localValue11
        localValue9.distance = localValue10
        localValue122 = localValue9.player_in
        if localValue122 and not localValue11 then
          localValue122 = localValue9.leaveArea
          if localValue122 then
            localValue122 = localValue9.metaData
            if nil == localValue122 then
              localValue122 = {}
              localValue9.metaData = localValue122
            end
            localValue122 = localValue9.leaveArea
            localValue13 = localValue9.metaData
            localValue122(localValue13)
          else
            localValue122 = CMGclient
            localValue122 = localValue122.leaveArea
            localValue13 = {}
            localValue14 = localValue8
            localValue13[1] = localValue14
            localValue122(localValue13)
          end
        else
          localValue122 = localValue9.player_in
          if not localValue122 and localValue11 then
            localValue122 = localValue9.enterArea
            if localValue122 then
              localValue122 = localValue9.metaData
              if nil == localValue122 then
                localValue122 = {}
                localValue9.metaData = localValue122
              end
              localValue122 = localValue9.enterArea
              localValue13 = localValue9.metaData
              localValue122(localValue13)
            else
              localValue122 = CMGclient
              localValue122 = localValue122.enterArea
              localValue13 = {}
              localValue14 = localValue8
              localValue13[1] = localValue14
              localValue122(localValue13)
            end
          end
        end
        localValue9.player_in = localValue11
      end
    end
    localValue3 = Wait
    localValue4 = 0
    localValue3(localValue4)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation4(workingValue)
cmgOperation4 = Citizen
cmgOperation4 = cmgOperation4.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10
  while true do
    localValue1 = {}
    localValue2 = pairs
    localValue3 = dataCollection5
    localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
    for localValue6 in localValue2, localValue3, localValue4, localValue5 do
      localValue7 = #localValue1
      localValue7 = localValue7 + 1
      localValue1[localValue7] = localValue6
    end
    localValue2 = ipairs
    localValue3 = localValue1
    localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
    for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
      localValue8 = dataCollection5
      localValue8 = localValue8[localValue7]
      if localValue8 then
        localValue9 = localValue8.player_in
        if localValue9 then
          localValue9 = localValue8.onTickArea
          if localValue9 then
            localValue9 = localValue8.metaData
            if nil == localValue9 then
              localValue9 = {}
              localValue8.metaData = localValue9
            end
            localValue9 = localValue8.metaData
            localValue10 = localValue8.distance
            localValue9.distance = localValue10
            localValue9 = localValue8.onTickArea
            localValue10 = localValue8.metaData
            localValue9(localValue10)
          end
        end
      end
    end
    localValue2 = Wait
    localValue3 = 0
    localValue2(localValue3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation4(workingValue)

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1) ===
function cmgOperation4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11
  localValue2 = dataCollection7
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = pairs
    localValue4 = localValue2
    localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
    for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
      localValue9 = SetBlipDisplay
      localValue10 = localValue8
      localValue11 = 0
      localValue9(localValue10, localValue11)
    end
  end
  localValue3 = dataCollection8
  localValue3[localValue1] = nil
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11
  localValue2 = dataCollection7
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = pairs
    localValue4 = localValue2
    localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
    for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
      localValue9 = SetBlipDisplay
      localValue10 = localValue8
      localValue11 = 2
      localValue9(localValue10, localValue11)
    end
  end
  localValue3 = dataCollection8
  localValue3[localValue1] = true
end
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
function number2()
  local localValue1, localValue2
  while true do
    localValue1 = CMG
    localValue1 = localValue1.isEmergencyService
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = dataCollection8.Civilian
      if localValue1 then
        localValue1 = cmgOperation4
        localValue2 = "Civilian"
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        localValue1(localValue2)
      end
    else
      localValue1 = dataCollection8.Civilian
      if not localValue1 then
        localValue1 = workingValue
        localValue2 = "Civilian"
        localValue1(localValue2)
      end
    end
    localValue1 = CMG
    localValue1 = localValue1.hasClientGroup
    localValue2 = "Vigilante"
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = dataCollection8.Vigilante
      if not localValue1 then
        localValue1 = workingValue
        localValue2 = "Vigilante"
        localValue1(localValue2)
      end
    else
      localValue1 = dataCollection8.Vigilante
      if localValue1 then
        localValue1 = cmgOperation4
        localValue2 = "Vigilante"
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        localValue1(localValue2)
      end
    end
    localValue1 = CMG
    localValue1 = localValue1.getNearbyAreas
    localValue2 = false
    localValue1 = localValue1(localValue2)
    dataCollection5 = localValue1
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = stateFlag
    if localValue2 then
      localValue2 = 1000
      if localValue2 then
        goto continueAtStep52
      end
    end
    localValue2 = 5000
    ::continueAtStep52::
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(number2)
backgroundThread = nil
number2 = 617
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.registerCommand
cmgOperation6 = "nextblip"

-- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: none) ===
function cmgOperation7()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  localValue1 = number2
  localValue1 = localValue1 + 1
  number2 = localValue1
  localValue1 = backgroundThread
  if localValue1 then
    localValue1 = tCMG
    localValue1 = localValue1.removeBlip
    localValue2 = backgroundThread
    localValue1(localValue2)
  end
  localValue1 = print
  localValue2 = "creating blip"
  localValue3 = number2
  localValue1(localValue2, localValue3)
  localValue1 = tCMG
  localValue1 = localValue1.addBlip
  localValue2 = 1103.9739990234
  localValue3 = 211.95138549805
  localValue4 = -49.440101623535
  localValue5 = number2
  localValue6 = 0
  localValue7 = "Chips Cashier"
  localValue8 = 0.8
  localValue9 = true
  localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
  backgroundThread = localValue1
end
stateFlag2 = false
cmgOperation5(cmgOperation6, cmgOperation7, stateFlag2)
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: localValue1, localValue2) ===
function cmgOperation6(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6
  localValue3 = dataCollection7
  localValue3 = localValue3[localValue1]
  if not localValue3 then
    localValue3 = dataCollection7
    localValue4 = {}
    localValue3[localValue1] = localValue4
  end
  localValue3 = dataCollection7
  localValue3 = localValue3[localValue1]
  localValue4 = table
  localValue4 = localValue4.insert
  localValue5 = localValue3
  localValue6 = localValue2
  localValue4(localValue5, localValue6)
  localValue4 = dataCollection8
  localValue4 = localValue4[localValue1]
  if localValue4 then
    localValue4 = SetBlipDisplay
    localValue5 = localValue2
    localValue6 = 2
    localValue4(localValue5, localValue6)
  else
    localValue4 = SetBlipDisplay
    localValue5 = localValue2
    localValue6 = 0
    localValue4(localValue5, localValue6)
  end
end
cmgOperation5.addBlipContext = cmgOperation6
cmgOperation5 = Wait
cmgOperation6 = 0
cmgOperation5(cmgOperation6)
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.registerDevMenuState
cmgOperation6 = "Areas"
cmgOperation7 = {}
cmgOperation7.enabled = false
cmgOperation7.showLargeAreas = false
cmgOperation7.showMarkerInside = false
cmgOperation7.expandNearbyCheck = false
cmgOperation5 = cmgOperation5(cmgOperation6, cmgOperation7)
cmgOperation6 = CMG
cmgOperation6 = cmgOperation6.registerDevMenuItems
cmgOperation7 = "Areas"

-- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: none) ===
function stateFlag2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = RageUI
  localValue1 = localValue1.Checkbox
  localValue2 = "Visual Enabled"
  localValue3 = "Whether to display markers and text for areas."
  localValue4 = cmgOperation5.enabled
  localValue5 = {}

  -- === HELPER FUNCTION: localValue6(localValue12, localValue22, localValue32, localValue42) ===
  function localValue6(localValue12, localValue22, localValue32, localValue42)
    cmgOperation5.enabled = localValue42
  end
  -- Beginner: Draw a RageUI checkbox.
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.Separator
  localValue2 = "~y~Configurable Options"
  localValue1(localValue2)
  localValue1 = RageUI
  localValue1 = localValue1.Checkbox
  localValue2 = "Show Large Areas"
  localValue3 = "Whether to show areas with a radius greater than 250 units."
  localValue4 = cmgOperation5.showLargeAreas
  localValue5 = {}

  -- === HELPER FUNCTION: localValue6(localValue12, localValue22, localValue32, localValue42) ===
  function localValue6(localValue12, localValue22, localValue32, localValue42)
    cmgOperation5.showLargeAreas = localValue42
  end
  -- Beginner: Draw a RageUI checkbox.
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.Checkbox
  localValue2 = "Show Marker Whilst Inside"
  localValue3 = "Whether to continue drawing the debug sphere when inside of it."
  localValue4 = cmgOperation5.showMarkerInside
  localValue5 = {}

  -- === HELPER FUNCTION: localValue6(localValue12, localValue22, localValue32, localValue42) ===
  function localValue6(localValue12, localValue22, localValue32, localValue42)
    cmgOperation5.showMarkerInside = localValue42
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.Checkbox
  localValue2 = "Expand Nearby Check"
  localValue3 = "Whether to double the nearby distance check."
  localValue4 = cmgOperation5.expandNearbyCheck
  localValue5 = {}

  -- === HELPER FUNCTION: localValue6(localValue12, localValue22, localValue32, localValue42) ===
  function localValue6(localValue12, localValue22, localValue32, localValue42)
    cmgOperation5.expandNearbyCheck = localValue42
  end
  -- Beginner: Draw a RageUI checkbox.
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
end
cmgOperation6(cmgOperation7, stateFlag2)

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
function cmgOperation6()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, localValue19, localValue20, localValue21, createVector3, workingValue2, workingValue3, workingValue4, number3, number4, number5, number6, stateFlag3, stateFlag4, number7, stateFlag5, workingValue6, workingValue7, stateFlag6
  localValue1 = cmgOperation5.expandNearbyCheck
  if localValue1 then
    localValue1 = 500.0
    if localValue1 then
      goto continueAtStep8
    end
  end
  localValue1 = 250.0
  ::continueAtStep8::
  number8 = localValue1
  localValue1 = cmgOperation5.enabled
  if not localValue1 then
    return
  end
  localValue1 = {}
  localValue2 = pairs
  localValue3 = table
  localValue3 = localValue3.copy
  localValue4 = dataCollection5
  localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, localValue19, localValue20, localValue21, createVector3, workingValue2, workingValue3, workingValue4, number3, number4, number5, number6, stateFlag3, stateFlag4, number7, stateFlag5, workingValue6, workingValue7, stateFlag6 = localValue3(localValue4)
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, localValue19, localValue20, localValue21, createVector3, workingValue2, workingValue3, workingValue4, number3, number4, number5, number6, stateFlag3, stateFlag4, number7, stateFlag5, workingValue6, workingValue7, stateFlag6)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue7.id = localValue6
    localValue8 = table
    localValue8 = localValue8.insert
    localValue9 = localValue1
    localValue10 = localValue7
    localValue8(localValue9, localValue10)
  end
  localValue2 = CMG
  localValue2 = localValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue2 = localValue2()
  localValue3 = pairs
  localValue4 = localValue1
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    localValue9 = localValue8.position
    localValue9 = localValue2 - localValue9
    localValue9 = #localValue9
    localValue8.distance = localValue9
  end
  localValue3 = table
  localValue3 = localValue3.sort
  localValue4 = localValue1

  -- === HELPER FUNCTION: localValue5(localValue12, localValue22) ===
  function localValue5(localValue12, localValue22)
    local localValue32, localValue42
    localValue32 = localValue12.distance
    localValue42 = localValue22.distance
    localValue32 = localValue32 < localValue42
    return localValue32
  end
  localValue3(localValue4, localValue5)
  localValue3 = 0
  localValue4 = pairs
  localValue5 = localValue1
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for localValue8, localValue9 in localValue4, localValue5, localValue6, localValue7 do
    localValue10 = localValue9.position
    localValue11 = localValue9.distance
    localValue122 = localValue9.radius
    localValue11 = localValue11 < localValue122
    if not localValue11 then
      localValue122 = CMG
      localValue122 = localValue122.isSphereOnScreen
      localValue13 = localValue10
      localValue14 = localValue9.radius
      localValue122 = localValue122(localValue13, localValue14)
      if not localValue122 then
        goto continueAtStep162
      end
    end
    localValue122 = cmgOperation5.showLargeAreas
    if not localValue122 then
      localValue122 = localValue9.radius
      localValue13 = 250.0
      if not (localValue122 < localValue13) then
        goto continueAtStep162
      end
    end
    if localValue11 then
      localValue122 = cmgOperation5.showMarkerInside
      if not localValue122 then
        goto continueAtStep116
      end
    end
    localValue122 = DrawMarker
    localValue13 = 28
    localValue14 = localValue10.x
    localValue15 = localValue10.y
    localValue16 = localValue10.z
    localValue17 = 0.0
    localValue18 = 0.0
    localValue19 = 0.0
    localValue20 = 0.0
    localValue21 = 0.0
    createVector3 = 0.0
    workingValue2 = localValue9.radius
    workingValue3 = localValue9.radius
    workingValue4 = localValue9.radius
    if localValue11 then
      number3 = 255
      if number3 then
        goto continueAtStep104
      end
    end
    number3 = 0
    ::continueAtStep104::
    number4 = 255
    number5 = 0
    number6 = 125
    stateFlag3 = false
    stateFlag4 = false
    number7 = 2
    stateFlag5 = false
    workingValue6 = nil
    workingValue7 = nil
    stateFlag6 = false
    localValue122(localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, localValue19, localValue20, localValue21, createVector3, workingValue2, workingValue3, workingValue4, number3, number4, number5, number6, stateFlag3, stateFlag4, number7, stateFlag5, workingValue6, workingValue7, stateFlag6)
    localValue3 = localValue3 + 1
    ::continueAtStep116::
    localValue122 = localValue9.distance
    localValue13 = math
    localValue13 = localValue13.min
    localValue14 = 50.0
    localValue15 = localValue9.radius
    localValue15 = localValue15 * 5.0
    localValue13 = localValue13(localValue14, localValue15)
    if localValue122 < localValue13 or localValue11 then
      localValue122 = CMG
      localValue122 = localValue122.DrawText3D
      localValue13 = localValue10
      localValue14 = string
      localValue14 = localValue14.format
      localValue15 = [[
Name: %s
Radius: %s
Distance: %s]]
      localValue16 = localValue9.id
      localValue17 = math
      localValue17 = localValue17.round
      localValue18 = localValue9.radius
      localValue19 = 2
      localValue17 = localValue17(localValue18, localValue19)
      localValue18 = math
      localValue18 = localValue18.round
      localValue19 = localValue9.distance
      localValue20 = 1
      localValue18, localValue19, localValue20, localValue21, createVector3, workingValue2, workingValue3, workingValue4, number3, number4, number5, number6, stateFlag3, stateFlag4, number7, stateFlag5, workingValue6, workingValue7, stateFlag6 = localValue18(localValue19, localValue20)
      localValue14 = localValue14(localValue15, localValue16, localValue17, localValue18, localValue19, localValue20, localValue21, createVector3, workingValue2, workingValue3, workingValue4, number3, number4, number5, number6, stateFlag3, stateFlag4, number7, stateFlag5, workingValue6, workingValue7, stateFlag6)
      localValue15 = 0.3
      localValue16 = nil
      localValue17 = true
      if localValue11 then
        localValue18 = {}
        localValue19 = 255
        localValue20 = 255
        localValue21 = 0
        createVector3 = 255
        localValue18[1] = localValue19
        localValue18[2] = localValue20
        localValue18[3] = localValue21
        localValue18[4] = createVector3
        if localValue18 then
          goto continueAtStep161
        end
      end
      localValue18 = nil
      ::continueAtStep161::
      localValue122(localValue13, localValue14, localValue15, localValue16, localValue17, localValue18)
    end
    ::continueAtStep162::
    if localValue3 >= 100 then
      break
    end
  end
end
cmgOperation7 = CMG
cmgOperation7 = cmgOperation7.registerDevMenuThread
stateFlag2 = "Areas"
workingValue5 = cmgOperation6
cmgOperation7(stateFlag2, workingValue5)
