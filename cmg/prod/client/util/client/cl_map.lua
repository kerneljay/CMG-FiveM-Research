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
local dataTable, dataTable6, dataTable7, dataTable8, numberValue8, cmgCall8, cmgCall9, workValue15, dataTable9, dataTable10, dataTable2, dataTable3, cmgCall, dataTable4, cmgCall2, cmgCall3, dataTable5, flag, numberValue, cmgCall4, workValue, threadCall, numberValue2, cmgCall5, cmgCall6, cmgCall7, flag2, workValue5
dataTable = {}
dataTable6 = {}
dataTable7 = {}
dataTable8 = {}
numberValue8 = 250.0
cmgCall8 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall9; parameters: none) ===
function cmgCall9()
  local arg1, arg2
  arg1 = dataTable
  return arg1
end
cmgCall8.getGlobalBlips = cmgCall9
cmgCall8 = tCMG

-- === HELPER FUNCTION (decompiler name: cmgCall9; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) ===
function cmgCall9(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
  local arg9, arg10, arg11, arg122
  arg9 = AddBlipForCoord
  arg10 = arg1 + 0.001
  arg11 = arg2 + 0.001
  arg122 = arg3 + 0.001
  -- Beginner: result below is blipHandle.
  arg9 = arg9(arg10, arg11, arg122)
  arg10 = SetBlipSprite
  arg11 = arg9
  arg122 = arg4
  arg10(arg11, arg122)
  arg10 = SetBlipAsShortRange
  arg11 = arg9
  arg122 = true
  arg10(arg11, arg122)
  arg10 = SetBlipColour
  arg11 = arg9
  arg122 = arg5 or arg122
  if not arg5 then
    arg122 = 0
  end
  arg10(arg11, arg122)
  if 403 == arg4 or 431 == arg4 or 365 == arg4 or 85 == arg4 or 140 == arg4 or 60 == arg4 or 44 == arg4 or 110 == arg4 or 315 == arg4 then
    arg10 = SetBlipScale
    arg11 = arg9
    arg122 = 1.1
    arg10(arg11, arg122)
  elseif 50 == arg4 then
    arg10 = SetBlipScale
    arg11 = arg9
    arg122 = 0.7
    arg10(arg11, arg122)
  else
    arg10 = SetBlipScale
    arg11 = arg9
    arg122 = 0.8
    arg10(arg11, arg122)
  end
  arg10 = SetBlipScale
  arg11 = arg9
  arg122 = arg7 or arg122
  if not arg7 then
    arg122 = 0.8
  end
  arg10(arg11, arg122)
  if arg8 then
    arg10 = SetBlipDisplay
    arg11 = arg9
    arg122 = 5
    arg10(arg11, arg122)
  end
  if nil ~= arg6 then
    arg10 = dataTable6
    arg10 = arg10[arg6]
    if not arg10 then
      arg10 = AddTextEntryByHash
      arg11 = GetHashKey
      arg122 = arg6
      -- Beginner: result below is hash.
      arg11 = arg11(arg122)
      arg122 = arg6
      arg10(arg11, arg122)
      arg10 = dataTable6
      arg10[arg6] = true
    end
    arg10 = BeginTextCommandSetBlipName
    arg11 = arg6
    arg10(arg11)
    arg10 = EndTextCommandSetBlipName
    arg11 = arg9
    arg10(arg11)
  end
  arg10 = table
  arg10 = arg10.insert
  arg11 = dataTable
  arg122 = arg9
  arg10(arg11, arg122)
  return arg9
end
cmgCall8.addBlip = cmgCall9
cmgCall8 = tCMG

-- === HELPER FUNCTION (decompiler name: cmgCall9; parameters: arg1) ===
function cmgCall9(arg1)
  local arg2, arg3
  arg2 = RemoveBlip
  arg3 = arg1
  arg2(arg3)
end
cmgCall8.removeBlip = cmgCall9
cmgCall8 = {}
cmgCall9 = tCMG

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) ===
function workValue15(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
  local arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17
  arg9 = tCMG
  arg9 = arg9.removeNamedBlip
  arg10 = arg1
  arg9(arg10)
  arg9 = cmgCall8
  arg10 = tCMG
  arg10 = arg10.addBlip
  arg11 = arg2
  arg122 = arg3
  arg13 = arg4
  arg14 = arg5
  arg15 = arg6
  arg16 = arg7
  arg17 = arg8
  arg10 = arg10(arg11, arg122, arg13, arg14, arg15, arg16, arg17)
  arg9[arg1] = arg10
  arg9 = cmgCall8
  arg9 = arg9[arg1]
  return arg9
end
cmgCall9.setNamedBlip = workValue15
cmgCall9 = tCMG

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1) ===
function workValue15(arg1)
  local arg2, arg3
  arg2 = cmgCall8
  arg2 = arg2[arg1]
  if nil ~= arg2 then
    arg2 = tCMG
    arg2 = arg2.removeBlip
    arg3 = cmgCall8
    arg3 = arg3[arg1]
    arg2(arg3)
    arg2 = cmgCall8
    arg2[arg1] = nil
  end
end
cmgCall9.removeNamedBlip = workValue15
cmgCall9 = tCMG

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1, arg2) ===
function workValue15(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = SetNewWaypoint
  arg4 = arg1 + 1.0E-4
  arg5 = arg2 + 1.0E-4
  arg3(arg4, arg5)
end
cmgCall9.setGPS = workValue15
cmgCall9 = tCMG

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1) ===
function workValue15(arg1)
  local arg2, arg3, arg4
  arg2 = SetBlipRoute
  arg3 = arg1
  arg4 = true
  arg2(arg3, arg4)
end
cmgCall9.setBlipRoute = workValue15
cmgCall9 = {}
workValue15 = Tools
workValue15 = workValue15.newIDGenerator
workValue15 = workValue15()
dataTable9 = {}
dataTable10 = {}
dataTable2 = {}
dataTable3 = {}
cmgCall = tCMG

-- === HELPER FUNCTION (decompiler name: dataTable4; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20) ===
function dataTable4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20)
  local arg21, vector3Builder, workValue2, workValue3, workValue4
  arg21 = {}
  vector3Builder = vector3
  workValue2 = arg1
  workValue3 = arg2
  workValue4 = arg3
  vector3Builder = vector3Builder(workValue2, workValue3, workValue4)
  arg21.position = vector3Builder
  arg21.sx = arg4
  arg21.sy = arg5
  arg21.sz = arg6
  arg21.r = arg7
  arg21.g = arg8
  arg21.b = arg9
  arg21.a = arg10
  arg21.visible_distance = arg11
  arg21.mtype = arg122
  arg21.faceCamera = arg13
  arg21.bopUpAndDown = arg14
  arg21.rotate = arg15
  arg21.textureDict = arg16
  arg21.textureName = arg17
  arg21.xRot = arg18
  arg21.yRot = arg19
  arg21.zRot = arg20
  vector3Builder = arg21.sx
  if nil == vector3Builder then
    arg21.sx = 2.0
  end
  vector3Builder = arg21.sy
  if nil == vector3Builder then
    arg21.sy = 2.0
  end
  vector3Builder = arg21.sz
  if nil == vector3Builder then
    arg21.sz = 0.7
  end
  vector3Builder = arg21.r
  if nil == vector3Builder then
    arg21.r = 0
  end
  vector3Builder = arg21.g
  if nil == vector3Builder then
    arg21.g = 155
  end
  vector3Builder = arg21.b
  if nil == vector3Builder then
    arg21.b = 255
  end
  vector3Builder = arg21.a
  if nil == vector3Builder then
    arg21.a = 200
  end
  vector3Builder = arg21.sx
  vector3Builder = vector3Builder + 0.001
  arg21.sx = vector3Builder
  vector3Builder = arg21.sy
  vector3Builder = vector3Builder + 0.001
  arg21.sy = vector3Builder
  vector3Builder = arg21.sz
  vector3Builder = vector3Builder + 0.001
  arg21.sz = vector3Builder
  vector3Builder = arg21.visible_distance
  if nil == vector3Builder then
    arg21.visible_distance = 150
  end
  vector3Builder = workValue15
  workValue2 = vector3Builder
  vector3Builder = vector3Builder.gen
  vector3Builder = vector3Builder(workValue2)
  workValue2 = cmgCall9
  workValue2[vector3Builder] = arg21
  workValue2 = dataTable3
  workValue2[vector3Builder] = arg21
  return vector3Builder
end
cmgCall.addMarker = dataTable4
cmgCall = tCMG

-- === HELPER FUNCTION (decompiler name: dataTable4; parameters: arg1, arg2, arg3, arg4, arg5) ===
function dataTable4(arg1, arg2, arg3, arg4, arg5)
  local arg6, arg7, arg8, arg9, arg10
  arg4 = arg4 - 0.2
  arg6 = {}
  arg6.propName = arg1
  arg7 = vector3
  arg8 = arg2
  arg9 = arg3
  arg10 = arg4
  arg7 = arg7(arg8, arg9, arg10)
  arg6.position = arg7
  arg6.visible_distance = arg5
  arg6.mtype = "prop_marker"
  arg7 = workValue15
  arg8 = arg7
  arg7 = arg7.gen
  arg7 = arg7(arg8)
  arg8 = cmgCall9
  arg8[arg7] = arg6
  arg8 = dataTable3
  arg8[arg7] = arg6
  return arg7
end
cmgCall.addPropMarker = dataTable4
cmgCall = tCMG

-- === HELPER FUNCTION (decompiler name: dataTable4; parameters: arg1) ===
function dataTable4(arg1)
  local arg2, arg3, arg4
  arg2 = cmgCall9
  arg2 = arg2[arg1]
  if nil ~= arg2 then
    arg2 = cmgCall9
    arg2[arg1] = nil
    arg2 = workValue15
    arg3 = arg2
    arg2 = arg2.free
    arg4 = arg1
    arg2(arg3, arg4)
  end
  arg2 = dataTable3
  arg2 = arg2[arg1]
  if arg2 then
    arg2 = dataTable3
    arg2[arg1] = nil
  end
  arg2 = dataTable2
  arg2[arg1] = nil
end
cmgCall.removeMarker = dataTable4
cmgCall = tCMG

-- === HELPER FUNCTION (decompiler name: dataTable4; parameters: arg1, arg2, arg3, arg4, arg5, arg6) ===
function dataTable4(arg1, arg2, arg3, arg4, arg5, arg6)
  local arg7, arg8, arg9, arg10, arg11, arg122, arg13
  arg7 = tCMG
  arg7 = arg7.removeNamedPropMarker
  arg8 = arg1
  arg7(arg8)
  arg7 = dataTable10
  arg8 = tCMG
  arg8 = arg8.addPropMarker
  arg9 = arg2
  arg10 = arg3
  arg11 = arg4
  arg122 = arg5
  arg13 = arg6
  arg8 = arg8(arg9, arg10, arg11, arg122, arg13)
  arg7[arg1] = arg8
  arg7 = dataTable10
  arg7 = arg7[arg1]
  return arg7
end
cmgCall.setNamedPropMarker = dataTable4
cmgCall = tCMG

-- === HELPER FUNCTION (decompiler name: dataTable4; parameters: arg1) ===
function dataTable4(arg1)
  local arg2, arg3
  arg2 = dataTable10
  arg2 = arg2[arg1]
  if nil ~= arg2 then
    arg2 = tCMG
    arg2 = arg2.removeMarker
    arg3 = dataTable10
    arg3 = arg3[arg1]
    arg2(arg3)
    arg2 = dataTable10
    arg2[arg1] = nil
  end
end
cmgCall.removeNamedPropMarker = dataTable4
cmgCall = tCMG

-- === HELPER FUNCTION (decompiler name: dataTable4; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20, arg21) ===
function dataTable4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20, arg21)
  local vector3Builder, workValue2, workValue3, workValue4, numberValue3, numberValue4, numberValue5, numberValue6, flag3, flag4, numberValue7, flag5, workValue6, workValue7, flag6, workValue8, workValue9, workValue10, workValue11, workValue12, workValue13, workValue14
  vector3Builder = tCMG
  vector3Builder = vector3Builder.removeNamedMarker
  workValue2 = arg1
  vector3Builder(workValue2)
  vector3Builder = dataTable9
  workValue2 = tCMG
  workValue2 = workValue2.addMarker
  workValue3 = arg2
  workValue4 = arg3
  numberValue3 = arg4
  numberValue4 = arg5
  numberValue5 = arg6
  numberValue6 = arg7
  flag3 = arg8
  flag4 = arg9
  numberValue7 = arg10
  flag5 = arg11
  workValue6 = arg122
  workValue7 = arg13
  flag6 = arg14
  workValue8 = arg15
  workValue9 = arg16
  workValue10 = arg17
  workValue11 = arg18
  workValue12 = arg19
  workValue13 = arg20
  workValue14 = arg21
  workValue2 = workValue2(workValue3, workValue4, numberValue3, numberValue4, numberValue5, numberValue6, flag3, flag4, numberValue7, flag5, workValue6, workValue7, flag6, workValue8, workValue9, workValue10, workValue11, workValue12, workValue13, workValue14)
  vector3Builder[arg1] = workValue2
  vector3Builder = dataTable9
  vector3Builder = vector3Builder[arg1]
  return vector3Builder
end
cmgCall.setNamedMarker = dataTable4
cmgCall = tCMG

-- === HELPER FUNCTION (decompiler name: dataTable4; parameters: arg1) ===
function dataTable4(arg1)
  local arg2, arg3
  arg2 = dataTable9
  arg2 = arg2[arg1]
  if nil ~= arg2 then
    arg2 = tCMG
    arg2 = arg2.removeMarker
    arg3 = dataTable9
    arg3 = arg3[arg1]
    arg2(arg3)
    arg2 = dataTable9
    arg2[arg1] = nil
  end
end
cmgCall.removeNamedMarker = dataTable4
cmgCall = {}
dataTable4 = {}
cmgCall2 = tCMG

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg1, arg2) ===
function cmgCall3(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = cmgCall9
  arg3 = arg3[arg1]
  if not arg3 then
    return
  end
  arg4 = arg2 or arg4
  if not arg2 then
    arg4 = nil
  end
  arg3.hidden = arg4
  if arg2 then
    arg4 = dataTable4
    arg4 = arg4[arg1]
    if arg4 then
      arg4 = DeleteObject
      arg5 = dataTable4
      arg5 = arg5[arg1]
      arg5 = arg5.object
      arg4(arg5)
      arg4 = dataTable4
      arg4[arg1] = nil
    end
  end
end
cmgCall2.setMarkerHidden = cmgCall3

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
function cmgCall2()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20, arg21, vector3Builder, workValue2, workValue3, workValue4, numberValue3, numberValue4, numberValue5, numberValue6, flag3, flag4
  arg1 = pairs
  arg2 = dataTable2
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = arg6.hidden
    if arg7 then
      arg7 = dataTable4
      arg7 = arg7[arg5]
      if arg7 then
        arg7 = DeleteObject
        arg8 = dataTable4
        arg8 = arg8[arg5]
        arg8 = arg8.object
        arg7(arg8)
        arg7 = dataTable4
        arg7[arg5] = nil
      end
    else
      arg7 = cmgCall
      arg7 = arg7[arg5]
      if arg7 then
        arg7 = cmgCall
        arg7 = arg7[arg5]
        arg8 = arg6.visible_distance
        if arg7 <= arg8 then
          arg7 = arg6.mtype
          if nil == arg7 then
            arg6.mtype = 1
          end
          arg7 = type
          arg8 = arg6.mtype
          arg7 = arg7(arg8)
          if "string" == arg7 then
            arg7 = dataTable4
            arg7 = arg7[arg5]
            if nil == arg7 then
              arg7 = CMG
              arg7 = arg7.loadModel
              arg8 = arg6.propName
              arg7 = arg7(arg8)
              if arg7 then
                arg8 = CreateObject
                arg9 = arg7
                arg10 = arg6.position
                arg10 = arg10.x
                arg11 = arg6.position
                arg11 = arg11.y
                arg122 = arg6.position
                arg122 = arg122.z
                arg13 = false
                arg14 = false
                arg15 = false
                -- Beginner: result below is objectEntity.
                arg8 = arg8(arg9, arg10, arg11, arg122, arg13, arg14, arg15)
                arg9 = dataTable4
                arg10 = {}
                arg10.object = arg8
                arg9[arg5] = arg10
              end
            end
          else
            arg7 = DrawMarker
            arg8 = arg6.mtype
            arg9 = arg6.position
            arg9 = arg9.x
            arg10 = arg6.position
            arg10 = arg10.y
            arg11 = arg6.position
            arg11 = arg11.z
            arg122 = 0.0
            arg13 = 0.0
            arg14 = 0.0
            arg15 = arg6.xRot
            arg16 = arg6.yRot
            arg17 = arg6.zRot
            arg18 = arg6.sx
            arg19 = arg6.sy
            arg20 = arg6.sz
            arg21 = arg6.r
            vector3Builder = arg6.g
            workValue2 = arg6.b
            workValue3 = arg6.a
            workValue4 = arg6.bopUpAndDown
            numberValue3 = arg6.faceCamera
            numberValue4 = 2
            numberValue5 = arg6.rotate
            numberValue6 = arg6.textureDict
            flag3 = arg6.textureName
            flag4 = false
            arg7(arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20, arg21, vector3Builder, workValue2, workValue3, workValue4, numberValue3, numberValue4, numberValue5, numberValue6, flag3, flag4)
          end
        end
      end
    end
  end
  arg1 = pairs
  arg2 = dataTable4
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = dataTable2
    arg7 = arg7[arg5]
    if nil == arg7 then
      arg7 = DeleteObject
      arg8 = arg6.object
      arg7(arg8)
      arg7 = dataTable4
      arg7[arg5] = nil
    end
  end
end
cmgCall3 = AddEventHandler
dataTable5 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: flag; parameters: arg1) ===
function flag(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg2 == arg1 then
    arg2 = pairs
    arg3 = dataTable4
    arg2, arg3, arg4, arg5 = arg2(arg3)
    for arg6, arg7 in arg2, arg3, arg4, arg5 do
      arg8 = DeleteObject
      arg9 = arg7.object
      arg8(arg9)
      arg8 = dataTable4
      arg8[arg6] = nil
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgCall3(dataTable5, flag)
cmgCall3 = CMG
cmgCall3 = cmgCall3.createThreadOnTick
dataTable5 = cmgCall2
flag = "Util Markers"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall3(dataTable5, flag)
cmgCall3 = Citizen
cmgCall3 = cmgCall3.CreateThread

-- === HELPER FUNCTION (decompiler name: dataTable5; parameters: none) ===
function dataTable5()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
  while true do
    arg1 = CMG
    arg1 = arg1.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg1 = arg1()
    arg2 = {}
    cmgCall = arg2
    arg2 = pairs
    arg3 = dataTable3
    arg2, arg3, arg4, arg5 = arg2(arg3)
    for arg6, arg7 in arg2, arg3, arg4, arg5 do
      arg8 = cmgCall
      arg9 = arg7.position
      arg9 = arg9 - arg1
      arg9 = #arg9
      arg8[arg6] = arg9
      arg8 = cmgCall
      arg8 = arg8[arg6]
      arg9 = arg7.visible_distance
      if arg8 <= arg9 then
        arg8 = arg7.textureDict
        if arg8 then
          arg8 = HasStreamedTextureDictLoaded
          arg9 = arg7.textureDict
          arg8 = arg8(arg9)
          if not arg8 then
            goto flow_label_33
          end
        end
        arg8 = dataTable2
        arg8[arg6] = arg7
      else
        ::flow_label_33::
        arg8 = dataTable2
        arg8[arg6] = nil
      end
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 250
    arg2(arg3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall3(dataTable5)
cmgCall3 = Citizen
cmgCall3 = cmgCall3.CreateThread

-- === HELPER FUNCTION (decompiler name: dataTable5; parameters: none) ===
function dataTable5()
  local arg1, arg2
  while true do
    arg1 = CMG
    arg1 = arg1.getNearbyMarkers
    arg1 = arg1()
    dataTable3 = arg1
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 10000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall3(dataTable5)
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: dataTable5; parameters: none) ===
function dataTable5()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.getNearbyMarkers
  arg1 = arg1()
  dataTable3 = arg1
end
cmgCall3.refreshNearbyMarkers = dataTable5
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: dataTable5; parameters: none) ===
function dataTable5()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13
  arg1 = {}
  arg2 = CMG
  arg2 = arg2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg2 = arg2()
  arg3 = 0
  arg4 = pairs
  arg5 = cmgCall9
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for arg8, arg9 in arg4, arg5, arg6, arg7 do
    arg10 = arg9.position
    arg10 = arg10 - arg2
    arg10 = #arg10
    arg11 = math
    arg11 = arg11.max
    arg122 = 250.0
    arg13 = arg9.visible_distance
    arg11 = arg11(arg122, arg13)
    if arg10 <= arg11 then
      arg1[arg8] = arg9
    end
    arg3 = arg3 + 1
    arg10 = arg3 % 25
    if 0 == arg10 then
      arg10 = Wait
      arg11 = 0
      arg10(arg11)
    end
  end
  return arg1
end
cmgCall3.getNearbyMarkers = dataTable5
cmgCall3 = {}
dataTable5 = {}
flag = false
numberValue = 0
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13
  arg2 = {}
  arg3 = CMG
  arg3 = arg3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg3 = arg3()
  arg4 = 0
  arg5 = numberValue
  arg5 = arg5 + 1
  numberValue = arg5
  arg5 = numberValue
  arg6 = pairs
  arg7 = cmgCall3
  arg6, arg7, arg8, arg9 = arg6(arg7)
  for arg10, arg11 in arg6, arg7, arg8, arg9 do
    arg122 = arg11.position
    arg122 = arg122 - arg3
    arg122 = #arg122
    arg13 = numberValue8
    if not (arg122 <= arg13) then
      arg122 = arg11.radius
      arg13 = 250
      if not (arg122 > arg13) then
        goto flow_label_28
      end
    end
    arg2[arg10] = arg11
    ::flow_label_28::
    arg4 = arg4 + 1
    arg122 = flag
    if not arg122 and not arg1 then
      arg122 = arg4 % 25
      if 0 == arg122 then
        arg122 = Wait
        arg13 = 0
        arg122(arg13)
      end
    end
  end
  arg6 = numberValue
  if arg6 ~= arg5 then
    arg6 = dataTable5
    return arg6
  end
  return arg2
end
cmgCall4.getNearbyAreas = workValue
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.getNearbyAreas
  arg2 = true
  arg1 = arg1(arg2)
  dataTable5 = arg1
end
cmgCall4.forceNearbyAreasReload = workValue
cmgCall4 = tCMG

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1, arg2, arg3, arg4, arg5, arg6) ===
function workValue(arg1, arg2, arg3, arg4, arg5, arg6)
  local arg7, arg8, arg9, arg10, arg11
  arg7 = {}
  arg8 = vector3
  arg9 = arg2 + 0.001
  arg10 = arg3 + 0.001
  arg11 = arg4 + 0.001
  arg8 = arg8(arg9, arg10, arg11)
  arg7.position = arg8
  arg7.radius = arg5
  arg7.height = arg6
  arg8 = arg7.height
  if nil == arg8 then
    arg7.height = 6
  end
  arg8 = cmgCall3
  arg8[arg1] = arg7
end
cmgCall4.setArea = workValue
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) ===
function workValue(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
  local arg9, arg10
  arg9 = {}
  arg9.position = arg2
  arg10 = arg3 + 0.0
  arg9.radius = arg10
  arg10 = arg4 + 0.0
  arg9.height = arg10
  arg9.enterArea = arg5
  arg9.leaveArea = arg6
  arg9.onTickArea = arg7
  arg9.metaData = arg8
  arg10 = arg9.height
  if nil == arg10 then
    arg9.height = 6
  end
  arg10 = cmgCall3
  arg10[arg1] = arg9
  arg10 = dataTable5
  arg10[arg1] = arg9
  return arg1
end
cmgCall4.createArea = workValue
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local arg2, arg3
  arg2 = cmgCall3
  arg2 = arg2[arg1]
  if not arg2 then
    arg3 = false
    return arg3
  end
  arg3 = arg2.player_in
  arg3 = true == arg3
  return arg3
end
cmgCall4.isPlayerInClientArea = workValue
cmgCall4 = tCMG

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local arg2
  arg2 = cmgCall3
  arg2 = arg2[arg1]
  if arg2 then
    arg2 = cmgCall3
    arg2[arg1] = nil
  end
  arg2 = dataTable5
  arg2 = arg2[arg1]
  if arg2 then
    arg2 = dataTable5
    arg2[arg1] = nil
  end
end
cmgCall4.removeArea = workValue
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1, arg2) ===
function workValue(arg1, arg2)
  local arg3
  arg3 = cmgCall3
  arg3 = arg3[arg1]
  if arg3 then
    arg3 = cmgCall3
    arg3 = arg3[arg1]
    arg3.metaData = arg2
  end
end
cmgCall4.updateAreaMetaData = workValue
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local arg2
  arg2 = cmgCall3
  arg2 = arg2[arg1]
  if arg2 then
    arg2 = true
    return arg2
  end
  arg2 = false
  return arg2
end
cmgCall4.doesAreaExist = workValue
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1, arg2) ===
function workValue(arg1, arg2)
  local arg3
  arg3 = cmgCall3
  arg3 = arg3[arg1]
  if arg3 then
    arg3 = cmgCall3
    arg3 = arg3[arg1]
    arg3.metaData = arg2
  end
end
cmgCall4.setAreaMetaData = workValue
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local arg2
  arg2 = cmgCall3
  arg2 = arg2[arg1]
  if arg2 then
    arg2 = cmgCall3
    arg2 = arg2[arg1]
    arg2 = arg2.metaData
    return arg2
  else
    arg2 = {}
    return arg2
  end
end
cmgCall4.getAreaMetaData = workValue
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local arg2
  flag = arg1
end
cmgCall4.useIncreasedAreaRefreshRate = workValue
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10
  arg2 = pairs
  arg3 = dataTable5
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = string
    arg8 = arg8.find
    arg9 = arg6
    arg10 = arg1
    arg8 = arg8(arg9, arg10)
    if nil ~= arg8 then
      arg8 = arg7.player_in
      if arg8 then
        arg8 = true
        return arg8
      end
    end
  end
  arg2 = false
  return arg2
end
cmgCall4.isInAnyAreaOfType = workValue
cmgCall4 = Citizen
cmgCall4 = cmgCall4.CreateThread

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14
  while true do
    arg1 = CMG
    arg1 = arg1.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg1 = arg1()
    arg2 = {}
    arg3 = pairs
    arg4 = dataTable5
    arg3, arg4, arg5, arg6 = arg3(arg4)
    for arg7 in arg3, arg4, arg5, arg6 do
      arg8 = #arg2
      arg8 = arg8 + 1
      arg2[arg8] = arg7
    end
    arg3 = ipairs
    arg4 = arg2
    arg3, arg4, arg5, arg6 = arg3(arg4)
    for arg7, arg8 in arg3, arg4, arg5, arg6 do
      arg9 = dataTable5
      arg9 = arg9[arg8]
      if arg9 then
        arg10 = arg9.position
        arg10 = arg10 - arg1
        arg10 = #arg10
        arg11 = arg9.radius
        arg11 = arg10 <= arg11
        arg9.distance = arg10
        arg122 = arg9.player_in
        if arg122 and not arg11 then
          arg122 = arg9.leaveArea
          if arg122 then
            arg122 = arg9.metaData
            if nil == arg122 then
              arg122 = {}
              arg9.metaData = arg122
            end
            arg122 = arg9.leaveArea
            arg13 = arg9.metaData
            arg122(arg13)
          else
            arg122 = CMGclient
            arg122 = arg122.leaveArea
            arg13 = {}
            arg14 = arg8
            arg13[1] = arg14
            arg122(arg13)
          end
        else
          arg122 = arg9.player_in
          if not arg122 and arg11 then
            arg122 = arg9.enterArea
            if arg122 then
              arg122 = arg9.metaData
              if nil == arg122 then
                arg122 = {}
                arg9.metaData = arg122
              end
              arg122 = arg9.enterArea
              arg13 = arg9.metaData
              arg122(arg13)
            else
              arg122 = CMGclient
              arg122 = arg122.enterArea
              arg13 = {}
              arg14 = arg8
              arg13[1] = arg14
              arg122(arg13)
            end
          end
        end
        arg9.player_in = arg11
      end
    end
    arg3 = Wait
    arg4 = 0
    arg3(arg4)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall4(workValue)
cmgCall4 = Citizen
cmgCall4 = cmgCall4.CreateThread

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10
  while true do
    arg1 = {}
    arg2 = pairs
    arg3 = dataTable5
    arg2, arg3, arg4, arg5 = arg2(arg3)
    for arg6 in arg2, arg3, arg4, arg5 do
      arg7 = #arg1
      arg7 = arg7 + 1
      arg1[arg7] = arg6
    end
    arg2 = ipairs
    arg3 = arg1
    arg2, arg3, arg4, arg5 = arg2(arg3)
    for arg6, arg7 in arg2, arg3, arg4, arg5 do
      arg8 = dataTable5
      arg8 = arg8[arg7]
      if arg8 then
        arg9 = arg8.player_in
        if arg9 then
          arg9 = arg8.onTickArea
          if arg9 then
            arg9 = arg8.metaData
            if nil == arg9 then
              arg9 = {}
              arg8.metaData = arg9
            end
            arg9 = arg8.metaData
            arg10 = arg8.distance
            arg9.distance = arg10
            arg9 = arg8.onTickArea
            arg10 = arg8.metaData
            arg9(arg10)
          end
        end
      end
    end
    arg2 = Wait
    arg3 = 0
    arg2(arg3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall4(workValue)

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1) ===
function cmgCall4(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11
  arg2 = dataTable7
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = pairs
    arg4 = arg2
    arg3, arg4, arg5, arg6 = arg3(arg4)
    for arg7, arg8 in arg3, arg4, arg5, arg6 do
      arg9 = SetBlipDisplay
      arg10 = arg8
      arg11 = 0
      arg9(arg10, arg11)
    end
  end
  arg3 = dataTable8
  arg3[arg1] = nil
end

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11
  arg2 = dataTable7
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = pairs
    arg4 = arg2
    arg3, arg4, arg5, arg6 = arg3(arg4)
    for arg7, arg8 in arg3, arg4, arg5, arg6 do
      arg9 = SetBlipDisplay
      arg10 = arg8
      arg11 = 2
      arg9(arg10, arg11)
    end
  end
  arg3 = dataTable8
  arg3[arg1] = true
end
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: numberValue2; parameters: none) ===
function numberValue2()
  local arg1, arg2
  while true do
    arg1 = CMG
    arg1 = arg1.isEmergencyService
    arg1 = arg1()
    if arg1 then
      arg1 = dataTable8.Civilian
      if arg1 then
        arg1 = cmgCall4
        arg2 = "Civilian"
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        arg1(arg2)
      end
    else
      arg1 = dataTable8.Civilian
      if not arg1 then
        arg1 = workValue
        arg2 = "Civilian"
        arg1(arg2)
      end
    end
    arg1 = CMG
    arg1 = arg1.hasClientGroup
    arg2 = "Vigilante"
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = dataTable8.Vigilante
      if not arg1 then
        arg1 = workValue
        arg2 = "Vigilante"
        arg1(arg2)
      end
    else
      arg1 = dataTable8.Vigilante
      if arg1 then
        arg1 = cmgCall4
        arg2 = "Vigilante"
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        arg1(arg2)
      end
    end
    arg1 = CMG
    arg1 = arg1.getNearbyAreas
    arg2 = false
    arg1 = arg1(arg2)
    dataTable5 = arg1
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = flag
    if arg2 then
      arg2 = 1000
      if arg2 then
        goto flow_label_52
      end
    end
    arg2 = 5000
    ::flow_label_52::
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(numberValue2)
threadCall = nil
numberValue2 = 617
cmgCall5 = CMG
cmgCall5 = cmgCall5.registerCommand
cmgCall6 = "nextblip"

-- === HELPER FUNCTION (decompiler name: cmgCall7; parameters: none) ===
function cmgCall7()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
  arg1 = numberValue2
  arg1 = arg1 + 1
  numberValue2 = arg1
  arg1 = threadCall
  if arg1 then
    arg1 = tCMG
    arg1 = arg1.removeBlip
    arg2 = threadCall
    arg1(arg2)
  end
  arg1 = print
  arg2 = "creating blip"
  arg3 = numberValue2
  arg1(arg2, arg3)
  arg1 = tCMG
  arg1 = arg1.addBlip
  arg2 = 1103.9739990234
  arg3 = 211.95138549805
  arg4 = -49.440101623535
  arg5 = numberValue2
  arg6 = 0
  arg7 = "Chips Cashier"
  arg8 = 0.8
  arg9 = true
  arg1 = arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
  threadCall = arg1
end
flag2 = false
cmgCall5(cmgCall6, cmgCall7, flag2)
cmgCall5 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: arg1, arg2) ===
function cmgCall6(arg1, arg2)
  local arg3, arg4, arg5, arg6
  arg3 = dataTable7
  arg3 = arg3[arg1]
  if not arg3 then
    arg3 = dataTable7
    arg4 = {}
    arg3[arg1] = arg4
  end
  arg3 = dataTable7
  arg3 = arg3[arg1]
  arg4 = table
  arg4 = arg4.insert
  arg5 = arg3
  arg6 = arg2
  arg4(arg5, arg6)
  arg4 = dataTable8
  arg4 = arg4[arg1]
  if arg4 then
    arg4 = SetBlipDisplay
    arg5 = arg2
    arg6 = 2
    arg4(arg5, arg6)
  else
    arg4 = SetBlipDisplay
    arg5 = arg2
    arg6 = 0
    arg4(arg5, arg6)
  end
end
cmgCall5.addBlipContext = cmgCall6
cmgCall5 = Wait
cmgCall6 = 0
cmgCall5(cmgCall6)
cmgCall5 = CMG
cmgCall5 = cmgCall5.registerDevMenuState
cmgCall6 = "Areas"
cmgCall7 = {}
cmgCall7.enabled = false
cmgCall7.showLargeAreas = false
cmgCall7.showMarkerInside = false
cmgCall7.expandNearbyCheck = false
cmgCall5 = cmgCall5(cmgCall6, cmgCall7)
cmgCall6 = CMG
cmgCall6 = cmgCall6.registerDevMenuItems
cmgCall7 = "Areas"

-- === HELPER FUNCTION (decompiler name: flag2; parameters: none) ===
function flag2()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = RageUI
  arg1 = arg1.Checkbox
  arg2 = "Visual Enabled"
  arg3 = "Whether to display markers and text for areas."
  arg4 = cmgCall5.enabled
  arg5 = {}

  -- === HELPER FUNCTION: arg6(arg12, arg22, arg32, arg42) ===
  function arg6(arg12, arg22, arg32, arg42)
    cmgCall5.enabled = arg42
  end
  -- Beginner: Draw a RageUI checkbox.
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.Separator
  arg2 = "~y~Configurable Options"
  arg1(arg2)
  arg1 = RageUI
  arg1 = arg1.Checkbox
  arg2 = "Show Large Areas"
  arg3 = "Whether to show areas with a radius greater than 250 units."
  arg4 = cmgCall5.showLargeAreas
  arg5 = {}

  -- === HELPER FUNCTION: arg6(arg12, arg22, arg32, arg42) ===
  function arg6(arg12, arg22, arg32, arg42)
    cmgCall5.showLargeAreas = arg42
  end
  -- Beginner: Draw a RageUI checkbox.
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.Checkbox
  arg2 = "Show Marker Whilst Inside"
  arg3 = "Whether to continue drawing the debug sphere when inside of it."
  arg4 = cmgCall5.showMarkerInside
  arg5 = {}

  -- === HELPER FUNCTION: arg6(arg12, arg22, arg32, arg42) ===
  function arg6(arg12, arg22, arg32, arg42)
    cmgCall5.showMarkerInside = arg42
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.Checkbox
  arg2 = "Expand Nearby Check"
  arg3 = "Whether to double the nearby distance check."
  arg4 = cmgCall5.expandNearbyCheck
  arg5 = {}

  -- === HELPER FUNCTION: arg6(arg12, arg22, arg32, arg42) ===
  function arg6(arg12, arg22, arg32, arg42)
    cmgCall5.expandNearbyCheck = arg42
  end
  -- Beginner: Draw a RageUI checkbox.
  arg1(arg2, arg3, arg4, arg5, arg6)
end
cmgCall6(cmgCall7, flag2)

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: none) ===
function cmgCall6()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20, arg21, vector3Builder, workValue2, workValue3, workValue4, numberValue3, numberValue4, numberValue5, numberValue6, flag3, flag4, numberValue7, flag5, workValue6, workValue7, flag6
  arg1 = cmgCall5.expandNearbyCheck
  if arg1 then
    arg1 = 500.0
    if arg1 then
      goto flow_label_8
    end
  end
  arg1 = 250.0
  ::flow_label_8::
  numberValue8 = arg1
  arg1 = cmgCall5.enabled
  if not arg1 then
    return
  end
  arg1 = {}
  arg2 = pairs
  arg3 = table
  arg3 = arg3.copy
  arg4 = dataTable5
  arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20, arg21, vector3Builder, workValue2, workValue3, workValue4, numberValue3, numberValue4, numberValue5, numberValue6, flag3, flag4, numberValue7, flag5, workValue6, workValue7, flag6 = arg3(arg4)
  arg2, arg3, arg4, arg5 = arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20, arg21, vector3Builder, workValue2, workValue3, workValue4, numberValue3, numberValue4, numberValue5, numberValue6, flag3, flag4, numberValue7, flag5, workValue6, workValue7, flag6)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg7.id = arg6
    arg8 = table
    arg8 = arg8.insert
    arg9 = arg1
    arg10 = arg7
    arg8(arg9, arg10)
  end
  arg2 = CMG
  arg2 = arg2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg2 = arg2()
  arg3 = pairs
  arg4 = arg1
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    arg9 = arg8.position
    arg9 = arg2 - arg9
    arg9 = #arg9
    arg8.distance = arg9
  end
  arg3 = table
  arg3 = arg3.sort
  arg4 = arg1

  -- === HELPER FUNCTION: arg5(arg12, arg22) ===
  function arg5(arg12, arg22)
    local arg32, arg42
    arg32 = arg12.distance
    arg42 = arg22.distance
    arg32 = arg32 < arg42
    return arg32
  end
  arg3(arg4, arg5)
  arg3 = 0
  arg4 = pairs
  arg5 = arg1
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for arg8, arg9 in arg4, arg5, arg6, arg7 do
    arg10 = arg9.position
    arg11 = arg9.distance
    arg122 = arg9.radius
    arg11 = arg11 < arg122
    if not arg11 then
      arg122 = CMG
      arg122 = arg122.isSphereOnScreen
      arg13 = arg10
      arg14 = arg9.radius
      arg122 = arg122(arg13, arg14)
      if not arg122 then
        goto flow_label_162
      end
    end
    arg122 = cmgCall5.showLargeAreas
    if not arg122 then
      arg122 = arg9.radius
      arg13 = 250.0
      if not (arg122 < arg13) then
        goto flow_label_162
      end
    end
    if arg11 then
      arg122 = cmgCall5.showMarkerInside
      if not arg122 then
        goto flow_label_116
      end
    end
    arg122 = DrawMarker
    arg13 = 28
    arg14 = arg10.x
    arg15 = arg10.y
    arg16 = arg10.z
    arg17 = 0.0
    arg18 = 0.0
    arg19 = 0.0
    arg20 = 0.0
    arg21 = 0.0
    vector3Builder = 0.0
    workValue2 = arg9.radius
    workValue3 = arg9.radius
    workValue4 = arg9.radius
    if arg11 then
      numberValue3 = 255
      if numberValue3 then
        goto flow_label_104
      end
    end
    numberValue3 = 0
    ::flow_label_104::
    numberValue4 = 255
    numberValue5 = 0
    numberValue6 = 125
    flag3 = false
    flag4 = false
    numberValue7 = 2
    flag5 = false
    workValue6 = nil
    workValue7 = nil
    flag6 = false
    arg122(arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20, arg21, vector3Builder, workValue2, workValue3, workValue4, numberValue3, numberValue4, numberValue5, numberValue6, flag3, flag4, numberValue7, flag5, workValue6, workValue7, flag6)
    arg3 = arg3 + 1
    ::flow_label_116::
    arg122 = arg9.distance
    arg13 = math
    arg13 = arg13.min
    arg14 = 50.0
    arg15 = arg9.radius
    arg15 = arg15 * 5.0
    arg13 = arg13(arg14, arg15)
    if arg122 < arg13 or arg11 then
      arg122 = CMG
      arg122 = arg122.DrawText3D
      arg13 = arg10
      arg14 = string
      arg14 = arg14.format
      arg15 = [[
Name: %s
Radius: %s
Distance: %s]]
      arg16 = arg9.id
      arg17 = math
      arg17 = arg17.round
      arg18 = arg9.radius
      arg19 = 2
      arg17 = arg17(arg18, arg19)
      arg18 = math
      arg18 = arg18.round
      arg19 = arg9.distance
      arg20 = 1
      arg18, arg19, arg20, arg21, vector3Builder, workValue2, workValue3, workValue4, numberValue3, numberValue4, numberValue5, numberValue6, flag3, flag4, numberValue7, flag5, workValue6, workValue7, flag6 = arg18(arg19, arg20)
      arg14 = arg14(arg15, arg16, arg17, arg18, arg19, arg20, arg21, vector3Builder, workValue2, workValue3, workValue4, numberValue3, numberValue4, numberValue5, numberValue6, flag3, flag4, numberValue7, flag5, workValue6, workValue7, flag6)
      arg15 = 0.3
      arg16 = nil
      arg17 = true
      if arg11 then
        arg18 = {}
        arg19 = 255
        arg20 = 255
        arg21 = 0
        vector3Builder = 255
        arg18[1] = arg19
        arg18[2] = arg20
        arg18[3] = arg21
        arg18[4] = vector3Builder
        if arg18 then
          goto flow_label_161
        end
      end
      arg18 = nil
      ::flow_label_161::
      arg122(arg13, arg14, arg15, arg16, arg17, arg18)
    end
    ::flow_label_162::
    if arg3 >= 100 then
      break
    end
  end
end
cmgCall7 = CMG
cmgCall7 = cmgCall7.registerDevMenuThread
flag2 = "Areas"
workValue5 = cmgCall6
cmgCall7(flag2, workValue5)
