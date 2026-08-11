--[[
    LEVEL 1 BEGINNER GUIDE — Devmisc
    =====================================

    File: cmg/prod/client/developer/cl_devmisc.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: developer/admin testing utilities, specifically the Devmisc feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 74
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
local cmgCall, cmgCall2, dataTable, dataTable2, workValue19, numberValue22, dataTable3, numberValue24, numberValue26, cmgCall8, numberValue, numberValue2, numberValue4, workValue3, workValue4, workValue5, workValue7, workValue8, workValue9, workValue10, workValue11, workValue12, cmgCall3, textValue3, workValue13, numberValue16, cmgCall4, textValue4, textValue5, workValue14
cmgCall = CMG
cmgCall = cmgCall.loadModule
cmgCall2 = "cfg/weapons"
-- Beginner: result below is config.
cmgCall = cmgCall(cmgCall2)
cmgCall2 = CMG
cmgCall2 = cmgCall2.registerDevMenuState
dataTable = "Dev Misc"
dataTable2 = {}
dataTable2.selectingCrosshairPosition = false
dataTable2.selectCrosshairDistance = 0.1
cmgCall2 = cmgCall2(dataTable, dataTable2)
dataTable = {}
dataTable2 = false
workValue19 = nil
numberValue22 = 0
dataTable3 = {}
numberValue24 = 0
numberValue26 = 30000
cmgCall8 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: numberValue; parameters: none) ===
function numberValue()
  local arg1, arg2, arg3, coords, gameTime2, iterator, workValue21, textValue6, cmgCall7, vector3Builder2, labelValue, numberValue3, workValue, numberValue5, vector3Builder, modelHash, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue13, flag4, flag6, flag8, numberValue17, flag10, flag11, flag12, flag14, flag15, workValue15, flag18
  while true do
    arg1 = CMG
    arg1 = arg1.getClientUserId
    -- Beginner: result below is userId.
    arg1 = arg1()
    if arg1 then
      arg2 = CMG
      arg2 = arg2.isDeveloper
      arg3 = arg1
      arg2 = arg2(arg3)
      if arg2 then
        arg2 = dataTable3
        arg2 = #arg2
        if arg2 > 0 then
          arg2 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          arg2 = arg2()
          arg3 = numberValue24
          if arg2 < arg3 then
            arg2 = ipairs
            arg3 = dataTable3
            arg2, arg3, coords, gameTime2 = arg2(arg3)
            for iterator, workValue21 in arg2, arg3, coords, gameTime2 do
              textValue6 = workValue21.coords
              cmgCall7 = DrawMarker
              vector3Builder2 = 28
              labelValue = textValue6.x
              numberValue3 = textValue6.y
              workValue = textValue6.z
              numberValue5 = 0.0
              vector3Builder = 0.0
              modelHash = 0.0
              numberValue7 = 0.0
              numberValue8 = 0.0
              numberValue9 = 0.0
              numberValue10 = 0.35
              numberValue11 = 0.35
              numberValue13 = 0.5
              flag4 = 255
              flag6 = 200
              flag8 = 0
              numberValue17 = 180
              flag10 = false
              flag11 = false
              flag12 = 2
              flag14 = false
              flag15 = nil
              workValue15 = nil
              flag18 = false
              cmgCall7(vector3Builder2, labelValue, numberValue3, workValue, numberValue5, vector3Builder, modelHash, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue13, flag4, flag6, flag8, numberValue17, flag10, flag11, flag12, flag14, flag15, workValue15, flag18)
              cmgCall7 = CMG
              cmgCall7 = cmgCall7.DrawText3D
              vector3Builder2 = vector3
              labelValue = textValue6.x
              numberValue3 = textValue6.y
              workValue = textValue6.z
              workValue = workValue + 0.6
              vector3Builder2 = vector3Builder2(labelValue, numberValue3, workValue)
              labelValue = workValue21.label
              numberValue3 = 0.35
              workValue = 4
              cmgCall7(vector3Builder2, labelValue, numberValue3, workValue)
            end
        end
        else
          arg2 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          arg2 = arg2()
          arg3 = numberValue24
          if arg2 >= arg3 then
            arg2 = dataTable3
            arg2 = #arg2
            if arg2 > 0 then
              arg2 = {}
              dataTable3 = arg2
            end
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
cmgCall8(numberValue)
cmgCall8 = CMG

-- === HELPER FUNCTION (decompiler name: numberValue; parameters: arg1, arg2) ===
function numberValue(arg1, arg2)
  local arg3, coords, gameTime2, iterator, workValue21, textValue6, cmgCall7, vector3Builder2, labelValue, numberValue3, workValue, numberValue5, vector3Builder, modelHash, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue13
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  coords = GetEntityCoords
  gameTime2 = arg3
  -- Beginner: result below is entityCoords.
  coords = coords(gameTime2)
  if not arg1 then
    arg1 = 15.0
  end
  if arg2 then
    dataTable3 = arg2
  else
    gameTime2 = {}
    iterator = ipairs
    workValue21 = GetGamePool
    textValue6 = "CObject"
    workValue21, textValue6, cmgCall7, vector3Builder2, labelValue, numberValue3, workValue, numberValue5, vector3Builder, modelHash, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue13 = workValue21(textValue6)
    iterator, workValue21, textValue6, cmgCall7 = iterator(workValue21, textValue6, cmgCall7, vector3Builder2, labelValue, numberValue3, workValue, numberValue5, vector3Builder, modelHash, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue13)
    for vector3Builder2, labelValue in iterator, workValue21, textValue6, cmgCall7 do
      numberValue3 = DoesEntityExist
      workValue = labelValue
      numberValue3 = numberValue3(workValue)
      if not numberValue3 then
      else
        numberValue3 = GetEntityCoords
        workValue = labelValue
        -- Beginner: result below is entityCoords.
        numberValue3 = numberValue3(workValue)
        workValue = coords - numberValue3
        workValue = #workValue
        if arg1 >= workValue then
          numberValue5 = #gameTime2
          numberValue5 = numberValue5 + 1
          vector3Builder = {}
          vector3Builder.coords = numberValue3
          modelHash = GetEntityHeading
          numberValue7 = labelValue
          -- Beginner: result below is heading.
          modelHash = modelHash(numberValue7)
          vector3Builder.heading = modelHash
          vector3Builder.dist = workValue
          modelHash = GetEntityModel
          numberValue7 = labelValue
          -- Beginner: result below is modelHash.
          modelHash = modelHash(numberValue7)
          vector3Builder.hash = modelHash
          gameTime2[numberValue5] = vector3Builder
        end
      end
    end
    iterator = table
    iterator = iterator.sort
    workValue21 = gameTime2

    -- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg12, arg22) ===
    function textValue6(arg12, arg22)
      local arg32, arg4
      arg32 = arg12.dist
      arg4 = arg22.dist
      arg32 = arg32 < arg4
      return arg32
    end
    iterator(workValue21, textValue6)
    iterator = {}
    dataTable3 = iterator
    iterator = ipairs
    workValue21 = gameTime2
    iterator, workValue21, textValue6, cmgCall7 = iterator(workValue21)
    for vector3Builder2, labelValue in iterator, workValue21, textValue6, cmgCall7 do
      numberValue3 = labelValue.coords
      workValue = dataTable3
      workValue = #workValue
      numberValue5 = workValue + 1
      workValue = dataTable3
      vector3Builder = {}
      vector3Builder.coords = numberValue3
      modelHash = string
      modelHash = modelHash.format
      numberValue7 = "#%d hash %d (%.1fm)"
      numberValue8 = vector3Builder2
      numberValue9 = labelValue.hash
      numberValue10 = labelValue.dist
      modelHash = modelHash(numberValue7, numberValue8, numberValue9, numberValue10)
      vector3Builder.label = modelHash
      workValue[numberValue5] = vector3Builder
    end
    iterator = print
    workValue21 = "[devmenu] Nearby objects within "
    textValue6 = arg1
    cmgCall7 = "m (check F8 for list):"
    workValue21 = workValue21 .. textValue6 .. cmgCall7
    iterator(workValue21)
    iterator = ipairs
    workValue21 = gameTime2
    iterator, workValue21, textValue6, cmgCall7 = iterator(workValue21)
    for vector3Builder2, labelValue in iterator, workValue21, textValue6, cmgCall7 do
      numberValue3 = labelValue.coords
      workValue = print
      numberValue5 = string
      numberValue5 = numberValue5.format
      vector3Builder = "  %d: hash %d  coords vector3(%.4f, %.4f, %.4f)  heading %.2f  (%.1fm)"
      modelHash = vector3Builder2
      numberValue7 = labelValue.hash
      numberValue8 = numberValue3.x
      numberValue9 = numberValue3.y
      numberValue10 = numberValue3.z
      numberValue11 = labelValue.heading
      numberValue13 = labelValue.dist
      numberValue5, vector3Builder, modelHash, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue13 = numberValue5(vector3Builder, modelHash, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue13)
      workValue(numberValue5, vector3Builder, modelHash, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue13)
    end
    iterator = #gameTime2
    if 0 == iterator then
      iterator = print
      workValue21 = "[devmenu] No objects in range."
      iterator(workValue21)
    else
      iterator = print
      workValue21 = "[devmenu] Markers shown in-world for "
      textValue6 = numberValue26
      textValue6 = textValue6 / 1000
      cmgCall7 = "s."
      workValue21 = workValue21 .. textValue6 .. cmgCall7
      iterator(workValue21)
    end
  end
  gameTime2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  gameTime2 = gameTime2()
  iterator = numberValue26
  gameTime2 = gameTime2 + iterator
  numberValue24 = gameTime2
end
cmgCall8.showNearbyObjectMarkers = numberValue
cmgCall8 = 0.25
numberValue = 0.05
numberValue2 = 5.0
numberValue4 = 1.0

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1) ===
function workValue3(arg1)
  local arg2, arg3, coords
  arg2 = IsModelInCdimage
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = IsModelValid
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      goto flow_label_13
    end
  end
  arg2 = false
  return arg2
  ::flow_label_13::
  arg2 = RequestModel
  arg3 = arg1
  arg2(arg3)
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  while true do
    arg3 = HasModelLoaded
    coords = arg1
    arg3 = arg3(coords)
    if arg3 then
      break
    end
    arg3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg3 = arg3()
    arg3 = arg3 - arg2
    coords = 5000
    if arg3 > coords then
      arg3 = false
      return arg3
    end
    arg3 = Wait
    coords = 0
    arg3(coords)
  end
  arg3 = true
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: none) ===
function workValue4()
  local arg1, arg2, arg3, coords, gameTime2, iterator, workValue21, textValue6, cmgCall7
  arg1 = GetGameplayCamRot
  arg2 = 2
  arg1 = arg1(arg2)
  arg2 = math
  arg2 = arg2.rad
  arg3 = arg1.x
  arg2 = arg2(arg3)
  arg3 = math
  arg3 = arg3.rad
  coords = arg1.z
  arg3 = arg3(coords)
  coords = math
  coords = coords.cos
  gameTime2 = arg2
  coords = coords(gameTime2)
  gameTime2 = vector3
  iterator = math
  iterator = iterator.sin
  workValue21 = arg3
  iterator = iterator(workValue21)
  iterator = -iterator
  iterator = iterator * coords
  workValue21 = math
  workValue21 = workValue21.cos
  textValue6 = arg3
  workValue21 = workValue21(textValue6)
  workValue21 = workValue21 * coords
  textValue6 = math
  textValue6 = textValue6.sin
  cmgCall7 = arg2
  textValue6, cmgCall7 = textValue6(cmgCall7)
  gameTime2 = gameTime2(iterator, workValue21, textValue6, cmgCall7)
  iterator = vector3
  workValue21 = gameTime2.y
  workValue21 = -workValue21
  textValue6 = gameTime2.x
  cmgCall7 = 0.0
  iterator = iterator(workValue21, textValue6, cmgCall7)
  workValue21 = gameTime2
  textValue6 = iterator
  return workValue21, textValue6
end

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1) ===
function workValue5(arg1)
  local arg2, arg3, coords, gameTime2, iterator, workValue21, textValue6, cmgCall7, vector3Builder2, labelValue, numberValue3, workValue, numberValue5
  arg2 = 0.78
  arg3 = 0.985
  coords = ipairs
  gameTime2 = arg1
  coords, gameTime2, iterator, workValue21 = coords(gameTime2)
  for textValue6, cmgCall7 in coords, gameTime2, iterator, workValue21 do
    vector3Builder2 = SetTextFont
    labelValue = 0
    vector3Builder2(labelValue)
    vector3Builder2 = SetTextScale
    labelValue = 0.3
    numberValue3 = 0.3
    vector3Builder2(labelValue, numberValue3)
    vector3Builder2 = SetTextColour
    labelValue = 255
    numberValue3 = 255
    workValue = 255
    numberValue5 = 200
    vector3Builder2(labelValue, numberValue3, workValue, numberValue5)
    vector3Builder2 = SetTextOutline
    vector3Builder2()
    vector3Builder2 = SetTextRightJustify
    labelValue = true
    vector3Builder2(labelValue)
    vector3Builder2 = SetTextWrap
    labelValue = 0.0
    numberValue3 = arg3
    vector3Builder2(labelValue, numberValue3)
    vector3Builder2 = BeginTextCommandDisplayText
    labelValue = "STRING"
    vector3Builder2(labelValue)
    vector3Builder2 = AddTextComponentSubstringPlayerName
    labelValue = cmgCall7
    vector3Builder2(labelValue)
    vector3Builder2 = EndTextCommandDisplayText
    labelValue = arg3
    numberValue3 = arg2
    vector3Builder2(labelValue, numberValue3)
    arg2 = arg2 + 0.02
  end
end

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1) ===
function workValue7(arg1)
  local arg2, arg3, coords, gameTime2, iterator, workValue21, textValue6, cmgCall7, vector3Builder2, labelValue, numberValue3, workValue, numberValue5
  arg2 = GetGameplayCamCoord
  arg2 = arg2()
  arg3 = select
  coords = 1
  gameTime2 = workValue4
  gameTime2, iterator, workValue21, textValue6, cmgCall7, vector3Builder2, labelValue, numberValue3, workValue, numberValue5 = gameTime2()
  arg3 = arg3(coords, gameTime2, iterator, workValue21, textValue6, cmgCall7, vector3Builder2, labelValue, numberValue3, workValue, numberValue5)
  coords = arg3 * arg1
  coords = arg2 + coords
  gameTime2 = StartShapeTestRay
  iterator = arg2.x
  workValue21 = arg2.y
  textValue6 = arg2.z
  cmgCall7 = coords.x
  vector3Builder2 = coords.y
  labelValue = coords.z
  numberValue3 = -1
  workValue = -1
  numberValue5 = 0
  gameTime2 = gameTime2(iterator, workValue21, textValue6, cmgCall7, vector3Builder2, labelValue, numberValue3, workValue, numberValue5)
  iterator = GetShapeTestResult
  workValue21 = gameTime2
  iterator, workValue21, textValue6, cmgCall7, vector3Builder2 = iterator(workValue21)
  if 1 == workValue21 then
    return textValue6
  else
    return coords
  end
end

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1, arg2) ===
function workValue8(arg1, arg2)
  local arg3, coords, gameTime2, iterator, workValue21, textValue6, cmgCall7, vector3Builder2
  arg3 = CreateObjectNoOffset
  coords = arg2
  gameTime2 = arg1.x
  iterator = arg1.y
  workValue21 = arg1.z
  textValue6 = false
  cmgCall7 = false
  vector3Builder2 = false
  -- Beginner: result below is objectEntity.
  arg3 = arg3(coords, gameTime2, iterator, workValue21, textValue6, cmgCall7, vector3Builder2)
  coords = SetEntityAlpha
  gameTime2 = arg3
  iterator = 120
  workValue21 = false
  coords(gameTime2, iterator, workValue21)
  coords = SetEntityCollision
  gameTime2 = arg3
  iterator = false
  workValue21 = false
  coords(gameTime2, iterator, workValue21)
  coords = SetEntityCompletelyDisableCollision
  gameTime2 = arg3
  iterator = true
  workValue21 = false
  coords(gameTime2, iterator, workValue21)
  coords = SetEntityHasGravity
  gameTime2 = arg3
  iterator = false
  coords(gameTime2, iterator)
  coords = SetEntityDynamic
  gameTime2 = arg3
  iterator = false
  coords(gameTime2, iterator)
  coords = FreezeEntityPosition
  gameTime2 = arg3
  iterator = true
  -- Beginner: Freeze or unfreeze an entity in place.
  coords(gameTime2, iterator)
  coords = SetCanClimbOnEntity
  gameTime2 = arg3
  iterator = false
  coords(gameTime2, iterator)
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
function workValue9()
  local arg1, arg2, arg3, coords, gameTime2, iterator, workValue21, textValue6, cmgCall7, vector3Builder2
  arg1 = workValue19
  if not arg1 then
    return
  end
  arg1 = GetEntityCoords
  arg2 = workValue19
  arg3 = true
  -- Beginner: result below is entityCoords.
  arg1 = arg1(arg2, arg3)
  arg2 = GetEntityHeading
  arg3 = workValue19
  -- Beginner: result below is heading.
  arg2 = arg2(arg3)
  arg3 = CreateObjectNoOffset
  coords = numberValue22
  gameTime2 = arg1.x
  iterator = arg1.y
  workValue21 = arg1.z
  textValue6 = true
  cmgCall7 = true
  vector3Builder2 = false
  -- Beginner: result below is objectEntity.
  arg3 = arg3(coords, gameTime2, iterator, workValue21, textValue6, cmgCall7, vector3Builder2)
  coords = SetEntityHeading
  gameTime2 = arg3
  iterator = arg2
  -- Beginner: Change the direction an entity is facing.
  coords(gameTime2, iterator)
  coords = PlaceObjectOnGroundProperly
  gameTime2 = arg3
  coords(gameTime2)
  coords = FreezeEntityPosition
  gameTime2 = arg3
  iterator = false
  -- Beginner: Freeze or unfreeze an entity in place.
  coords(gameTime2, iterator)
  coords = ResetEntityAlpha
  gameTime2 = arg3
  coords(gameTime2)
  coords = SetEntityCollision
  gameTime2 = arg3
  iterator = true
  workValue21 = true
  coords(gameTime2, iterator, workValue21)
  coords = string
  coords = coords.format
  gameTime2 = "Placed object: model=%d at vector3(%.3f, %.3f, %.3f), heading=%.2f"
  iterator = numberValue22
  workValue21 = arg1.x
  textValue6 = arg1.y
  cmgCall7 = arg1.z
  vector3Builder2 = arg2
  coords = coords(gameTime2, iterator, workValue21, textValue6, cmgCall7, vector3Builder2)
  gameTime2 = print
  iterator = coords
  gameTime2(iterator)
  gameTime2 = TriggerEvent
  iterator = "chat:addMessage"
  workValue21 = {}
  textValue6 = {}
  cmgCall7 = "placer"
  vector3Builder2 = coords
  textValue6[1] = cmgCall7
  textValue6[2] = vector3Builder2
  workValue21.args = textValue6
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addMessage".
  gameTime2(iterator, workValue21)
end

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
function workValue10()
  local arg1, arg2
  arg1 = workValue19
  if not arg1 then
    return
  end
  arg1 = DoesEntityExist
  arg2 = workValue19
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = DeleteObject
    arg2 = workValue19
    arg1(arg2)
  end
  arg1 = SetModelAsNoLongerNeeded
  arg2 = numberValue22
  arg1(arg2)
  arg1 = nil
  workValue19 = arg1
  arg1 = false
  dataTable2 = arg1
  arg1 = 0
  numberValue22 = arg1
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg1) ===
function workValue11(arg1)
  local arg2
  arg1 = arg1 % 360.0
  if arg1 < 0.0 then
    arg1 = arg1 + 360.0
  end
  return arg1
end

-- === HELPER FUNCTION (decompiler name: workValue12; parameters: none) ===
function workValue12()
  local arg1, arg2, arg3, coords
  arg1 = DisableAllControlActions
  arg2 = 0
  arg1(arg2)
  arg1 = EnableControlAction
  arg2 = 0
  arg3 = 1
  coords = true
  arg1(arg2, arg3, coords)
  arg1 = EnableControlAction
  arg2 = 0
  arg3 = 2
  coords = true
  arg1(arg2, arg3, coords)
  arg1 = EnableControlAction
  arg2 = 0
  arg3 = 21
  coords = true
  arg1(arg2, arg3, coords)
  arg1 = EnableControlAction
  arg2 = 0
  arg3 = 172
  coords = true
  arg1(arg2, arg3, coords)
  arg1 = EnableControlAction
  arg2 = 0
  arg3 = 173
  coords = true
  arg1(arg2, arg3, coords)
  arg1 = EnableControlAction
  arg2 = 0
  arg3 = 174
  coords = true
  arg1(arg2, arg3, coords)
  arg1 = EnableControlAction
  arg2 = 0
  arg3 = 175
  coords = true
  arg1(arg2, arg3, coords)
  arg1 = EnableControlAction
  arg2 = 0
  arg3 = 10
  coords = true
  arg1(arg2, arg3, coords)
  arg1 = EnableControlAction
  arg2 = 0
  arg3 = 11
  coords = true
  arg1(arg2, arg3, coords)
  arg1 = EnableControlAction
  arg2 = 0
  arg3 = 45
  coords = true
  arg1(arg2, arg3, coords)
  arg1 = EnableControlAction
  arg2 = 0
  arg3 = 74
  coords = true
  arg1(arg2, arg3, coords)
  arg1 = EnableControlAction
  arg2 = 0
  arg3 = 44
  coords = true
  arg1(arg2, arg3, coords)
  arg1 = EnableControlAction
  arg2 = 0
  arg3 = 38
  coords = true
  arg1(arg2, arg3, coords)
  arg1 = EnableControlAction
  arg2 = 0
  arg3 = 47
  coords = true
  arg1(arg2, arg3, coords)
  arg1 = EnableControlAction
  arg2 = 0
  arg3 = 29
  coords = true
  arg1(arg2, arg3, coords)
  arg1 = EnableControlAction
  arg2 = 0
  arg3 = 23
  coords = true
  arg1(arg2, arg3, coords)
  arg1 = EnableControlAction
  arg2 = 0
  arg3 = 177
  coords = true
  arg1(arg2, arg3, coords)
end
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1) ===
function textValue3(arg1)
  local arg2, arg3, coords, gameTime2, iterator, workValue21, textValue6
  arg2 = dataTable2
  if arg2 then
    arg2 = TriggerEvent
    arg3 = "chat:addMessage"
    coords = {}
    gameTime2 = {}
    iterator = "placer"
    workValue21 = "^3Already placing. Press ^7Backspace ^3to cancel or ^7F ^3to confirm."
    gameTime2[1] = iterator
    gameTime2[2] = workValue21
    coords.args = gameTime2
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addMessage".
    arg2(arg3, coords)
    return
  end
  arg2 = arg1
  arg3 = tonumber
  coords = arg2
  arg3 = arg3(coords)
  if arg3 then
    arg3 = tonumber
    coords = arg2
    arg3 = arg3(coords)
    numberValue22 = arg3
  else
    arg3 = GetHashKey
    coords = arg2
    -- Beginner: result below is hash.
    arg3 = arg3(coords)
    numberValue22 = arg3
  end
  arg3 = workValue3
  coords = numberValue22
  arg3 = arg3(coords)
  if not arg3 then
    arg3 = TriggerEvent
    coords = "chat:addMessage"
    gameTime2 = {}
    iterator = {}
    workValue21 = "placer"
    textValue6 = "^1Failed to load model."
    iterator[1] = workValue21
    iterator[2] = textValue6
    gameTime2.args = iterator
    arg3(coords, gameTime2)
    return
  end
  arg3 = workValue7
  coords = 5.0
  arg3 = arg3(coords)
  coords = workValue8
  gameTime2 = arg3
  iterator = numberValue22
  coords = coords(gameTime2, iterator)
  workValue19 = coords
  coords = true
  dataTable2 = coords
  coords = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: gameTime2() ===
  function gameTime2()
    local arg12, arg22, arg32, arg4, cmgCall5, waitCall2, numberValue23, numberValue25, workValue22, heading2, hashValue, waitCall, workValue2, textValue, numberValue6, workValue6, textValue2, flag, flag2, flag3, numberValue12, numberValue14, flag5, flag7, numberValue15, flag9, numberValue18, numberValue19, flag13, numberValue20, flag16, flag17, numberValue21, flag20, workValue16, workValue17, flag21
    arg12 = cmgCall8
    arg22 = 90
    arg32 = 140
    arg4 = {}
    -- Beginner: this function is the body of a background FiveM thread.

    -- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: arg13, arg23) ===
    function cmgCall5(arg13, arg23)
      local gameTime, workValue18, workValue20, flag22
      gameTime = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      gameTime = gameTime()
      if arg23 then
        workValue18 = arg32
        if workValue18 then
          goto flow_label_9
        end
      end
      workValue18 = arg22
      ::flow_label_9::
      workValue20 = arg4
      workValue20 = workValue20[arg13]
      if workValue20 then
        workValue20 = arg4
        workValue20 = workValue20[arg13]
        if not (gameTime >= workValue20) then
          goto flow_label_23
        end
      end
      workValue20 = arg4
      flag22 = gameTime + workValue18
      workValue20[arg13] = flag22
      workValue20 = true
      return workValue20
      ::flow_label_23::
      workValue20 = false
      return workValue20
    end
    while true do
      waitCall2 = dataTable2
      if not waitCall2 then
        break
      end
      waitCall2 = Wait
      numberValue23 = 0
      waitCall2(numberValue23)
      waitCall2 = workValue12
      waitCall2()
      waitCall2 = IsControlPressed
      numberValue23 = 0
      numberValue25 = 21
      waitCall2 = waitCall2(numberValue23, numberValue25)
      if waitCall2 then
        numberValue23 = numberValue
        if numberValue23 then
          goto flow_label_25
        end
      end
      numberValue23 = arg12
      ::flow_label_25::
      if waitCall2 then
        numberValue25 = numberValue4
        if numberValue25 then
          goto flow_label_31
        end
      end
      numberValue25 = numberValue2
      ::flow_label_31::
      workValue22 = workValue19
      if workValue22 then
        workValue22 = DoesEntityExist
        heading2 = workValue19
        workValue22 = workValue22(heading2)
        if workValue22 then
          goto flow_label_42
        end
      end
      workValue22 = workValue10
      workValue22()
      do break end
      ::flow_label_42::
      workValue22 = GetEntityCoords
      heading2 = workValue19
      hashValue = true
      -- Beginner: result below is entityCoords.
      workValue22 = workValue22(heading2, hashValue)
      heading2 = GetEntityHeading
      hashValue = workValue19
      -- Beginner: result below is heading.
      heading2 = heading2(hashValue)
      hashValue = workValue4
      hashValue, waitCall = hashValue()
      workValue2 = IsControlPressed
      textValue = 0
      numberValue6 = 172
      workValue2 = workValue2(textValue, numberValue6)
      if workValue2 then
        workValue2 = cmgCall5
        textValue = "mf"
        numberValue6 = waitCall2
        workValue2 = workValue2(textValue, numberValue6)
        if workValue2 then
          workValue2 = hashValue * numberValue23
          workValue22 = workValue22 + workValue2
        end
      end
      workValue2 = IsControlPressed
      textValue = 0
      numberValue6 = 173
      workValue2 = workValue2(textValue, numberValue6)
      if workValue2 then
        workValue2 = cmgCall5
        textValue = "mb"
        numberValue6 = waitCall2
        workValue2 = workValue2(textValue, numberValue6)
        if workValue2 then
          workValue2 = hashValue * numberValue23
          workValue22 = workValue22 - workValue2
        end
      end
      workValue2 = IsControlPressed
      textValue = 0
      numberValue6 = 174
      workValue2 = workValue2(textValue, numberValue6)
      if workValue2 then
        workValue2 = cmgCall5
        textValue = "ml"
        numberValue6 = waitCall2
        workValue2 = workValue2(textValue, numberValue6)
        if workValue2 then
          workValue2 = waitCall * numberValue23
          workValue22 = workValue22 - workValue2
        end
      end
      workValue2 = IsControlPressed
      textValue = 0
      numberValue6 = 175
      workValue2 = workValue2(textValue, numberValue6)
      if workValue2 then
        workValue2 = cmgCall5
        textValue = "mr"
        numberValue6 = waitCall2
        workValue2 = workValue2(textValue, numberValue6)
        if workValue2 then
          workValue2 = waitCall * numberValue23
          workValue22 = workValue22 + workValue2
        end
      end
      workValue2 = IsControlPressed
      textValue = 0
      numberValue6 = 10
      workValue2 = workValue2(textValue, numberValue6)
      if workValue2 then
        workValue2 = cmgCall5
        textValue = "mz+"
        numberValue6 = waitCall2
        workValue2 = workValue2(textValue, numberValue6)
        if workValue2 then
          workValue2 = vector3
          textValue = 0.0
          numberValue6 = 0.0
          workValue6 = numberValue23
          workValue2 = workValue2(textValue, numberValue6, workValue6)
          workValue22 = workValue22 + workValue2
        end
      end
      workValue2 = IsControlPressed
      textValue = 0
      numberValue6 = 11
      workValue2 = workValue2(textValue, numberValue6)
      if workValue2 then
        workValue2 = cmgCall5
        textValue = "mz-"
        numberValue6 = waitCall2
        workValue2 = workValue2(textValue, numberValue6)
        if workValue2 then
          workValue2 = vector3
          textValue = 0.0
          numberValue6 = 0.0
          workValue6 = numberValue23
          workValue2 = workValue2(textValue, numberValue6, workValue6)
          workValue22 = workValue22 - workValue2
        end
      end
      workValue2 = IsControlJustPressed
      textValue = 0
      numberValue6 = 45
      workValue2 = workValue2(textValue, numberValue6)
      if workValue2 then
        workValue2 = workValue7
        textValue = 10.0
        workValue2 = workValue2(textValue)
        workValue22 = workValue2
      end
      workValue2 = IsControlJustPressed
      textValue = 0
      numberValue6 = 74
      workValue2 = workValue2(textValue, numberValue6)
      if workValue2 then
        workValue2 = SetEntityCoordsNoOffset
        textValue = workValue19
        numberValue6 = workValue22.x
        workValue6 = workValue22.y
        textValue2 = workValue22.z
        flag = true
        flag2 = true
        flag3 = true
        -- Beginner: Move/teleport an entity to new coordinates.
        workValue2(textValue, numberValue6, workValue6, textValue2, flag, flag2, flag3)
        workValue2 = PlaceObjectOnGroundProperly
        textValue = workValue19
        workValue2(textValue)
        workValue2 = GetEntityCoords
        textValue = workValue19
        numberValue6 = true
        -- Beginner: result below is entityCoords.
        workValue2 = workValue2(textValue, numberValue6)
        workValue22 = workValue2
      end
      workValue2 = IsControlPressed
      textValue = 0
      numberValue6 = 44
      workValue2 = workValue2(textValue, numberValue6)
      if workValue2 then
        workValue2 = cmgCall5
        textValue = "rq"
        numberValue6 = waitCall2
        workValue2 = workValue2(textValue, numberValue6)
        if workValue2 then
          heading2 = heading2 - numberValue25
        end
      end
      workValue2 = IsControlPressed
      textValue = 0
      numberValue6 = 38
      workValue2 = workValue2(textValue, numberValue6)
      if workValue2 then
        workValue2 = cmgCall5
        textValue = "re"
        numberValue6 = waitCall2
        workValue2 = workValue2(textValue, numberValue6)
        if workValue2 then
          heading2 = heading2 + numberValue25
        end
      end
      workValue2 = workValue11
      textValue = heading2
      workValue2 = workValue2(textValue)
      heading2 = workValue2
      workValue2 = IsControlJustPressed
      textValue = 0
      numberValue6 = 47
      workValue2 = workValue2(textValue, numberValue6)
      if workValue2 then
        workValue2 = math
        workValue2 = workValue2.max
        textValue = 0.01
        numberValue6 = arg12 / 2.0
        workValue2 = workValue2(textValue, numberValue6)
        arg12 = workValue2
        workValue2 = TriggerEvent
        textValue = "chat:addMessage"
        numberValue6 = {}
        workValue6 = {}
        textValue2 = "placer"
        flag = "Grid step: %.3f"
        flag2 = flag
        flag = flag.format
        flag3 = arg12
        flag, flag2, flag3, numberValue12, numberValue14, flag5, flag7, numberValue15, flag9, numberValue18, numberValue19, flag13, numberValue20, flag16, flag17, numberValue21, flag20, workValue16, workValue17, flag21 = flag(flag2, flag3)
        workValue6[1] = textValue2
        workValue6[2] = flag
        workValue6[3] = flag2
        workValue6[4] = flag3
        workValue6[5] = numberValue12
        workValue6[6] = numberValue14
        workValue6[7] = flag5
        workValue6[8] = flag7
        workValue6[9] = numberValue15
        workValue6[10] = flag9
        workValue6[11] = numberValue18
        workValue6[12] = numberValue19
        workValue6[13] = flag13
        workValue6[14] = numberValue20
        workValue6[15] = flag16
        workValue6[16] = flag17
        workValue6[17] = numberValue21
        workValue6[18] = flag20
        workValue6[19] = workValue16
        workValue6[20] = workValue17
        workValue6[21] = flag21
        numberValue6.args = workValue6
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addMessage".
        workValue2(textValue, numberValue6)
      end
      workValue2 = IsControlJustPressed
      textValue = 0
      numberValue6 = 29
      workValue2 = workValue2(textValue, numberValue6)
      if workValue2 then
        workValue2 = math
        workValue2 = workValue2.min
        textValue = 10.0
        numberValue6 = arg12 * 2.0
        workValue2 = workValue2(textValue, numberValue6)
        arg12 = workValue2
        workValue2 = TriggerEvent
        textValue = "chat:addMessage"
        numberValue6 = {}
        workValue6 = {}
        textValue2 = "placer"
        flag = "Grid step: %.3f"
        flag2 = flag
        flag = flag.format
        flag3 = arg12
        flag, flag2, flag3, numberValue12, numberValue14, flag5, flag7, numberValue15, flag9, numberValue18, numberValue19, flag13, numberValue20, flag16, flag17, numberValue21, flag20, workValue16, workValue17, flag21 = flag(flag2, flag3)
        workValue6[1] = textValue2
        workValue6[2] = flag
        workValue6[3] = flag2
        workValue6[4] = flag3
        workValue6[5] = numberValue12
        workValue6[6] = numberValue14
        workValue6[7] = flag5
        workValue6[8] = flag7
        workValue6[9] = numberValue15
        workValue6[10] = flag9
        workValue6[11] = numberValue18
        workValue6[12] = numberValue19
        workValue6[13] = flag13
        workValue6[14] = numberValue20
        workValue6[15] = flag16
        workValue6[16] = flag17
        workValue6[17] = numberValue21
        workValue6[18] = flag20
        workValue6[19] = workValue16
        workValue6[20] = workValue17
        workValue6[21] = flag21
        numberValue6.args = workValue6
        workValue2(textValue, numberValue6)
      end
      workValue2 = IsControlJustPressed
      textValue = 0
      numberValue6 = 23
      workValue2 = workValue2(textValue, numberValue6)
      if workValue2 then
        workValue2 = workValue9
        workValue2()
        workValue2 = workValue10
        workValue2()
        break
      end
      workValue2 = IsControlJustPressed
      textValue = 0
      numberValue6 = 177
      workValue2 = workValue2(textValue, numberValue6)
      if workValue2 then
        workValue2 = workValue10
        workValue2()
        workValue2 = TriggerEvent
        textValue = "chat:addMessage"
        numberValue6 = {}
        workValue6 = {}
        textValue2 = "placer"
        flag = "^3Placement cancelled."
        workValue6[1] = textValue2
        workValue6[2] = flag
        numberValue6.args = workValue6
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addMessage".
        workValue2(textValue, numberValue6)
        break
      end
      workValue2 = SetEntityCoordsNoOffset
      textValue = workValue19
      numberValue6 = workValue22.x
      workValue6 = workValue22.y
      textValue2 = workValue22.z
      flag = true
      flag2 = true
      flag3 = true
      -- Beginner: Move/teleport an entity to new coordinates.
      workValue2(textValue, numberValue6, workValue6, textValue2, flag, flag2, flag3)
      workValue2 = SetEntityHeading
      textValue = workValue19
      numberValue6 = heading2
      -- Beginner: Change the direction an entity is facing.
      workValue2(textValue, numberValue6)
      workValue2 = DrawMarker
      textValue = 28
      numberValue6 = workValue22.x
      workValue6 = workValue22.y
      textValue2 = workValue22.z
      textValue2 = textValue2 - 0.02
      flag = 0.0
      flag2 = 0.0
      flag3 = 0.0
      numberValue12 = 0.0
      numberValue14 = 0.0
      flag5 = 0.0
      flag7 = 0.12
      numberValue15 = 0.12
      flag9 = 0.12
      numberValue18 = 255
      numberValue19 = 255
      flag13 = 255
      numberValue20 = 120
      flag16 = false
      flag17 = true
      numberValue21 = 2
      flag20 = false
      workValue16 = nil
      workValue17 = nil
      flag21 = false
      workValue2(textValue, numberValue6, workValue6, textValue2, flag, flag2, flag3, numberValue12, numberValue14, flag5, flag7, numberValue15, flag9, numberValue18, numberValue19, flag13, numberValue20, flag16, flag17, numberValue21, flag20, workValue16, workValue17, flag21)
      workValue2 = workValue5
      textValue = {}
      numberValue6 = "~b~Object Placer~s~  (Step: %.3f | Rot: %.1f)"
      workValue6 = numberValue6
      numberValue6 = numberValue6.format
      textValue2 = numberValue23
      flag = numberValue25
      numberValue6 = numberValue6(workValue6, textValue2, flag)
      workValue6 = "Arrows: move  |  PgUp/PgDn: Z"
      textValue2 = "Q/E: rotate   |  H: snap to ground  |  R: snap to aim"
      flag = "G/B: grid step +/-"
      flag2 = "F: confirm    |  Backspace: cancel"
      textValue[1] = numberValue6
      textValue[2] = workValue6
      textValue[3] = textValue2
      textValue[4] = flag
      textValue[5] = flag2
      workValue2(textValue)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  coords(gameTime2)
end
cmgCall3.placeObject = textValue3
cmgCall3 = CMG
cmgCall3 = cmgCall3.registerDevMenuItems
textValue3 = "Spawning"

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: none) ===
function workValue13()
  local arg1, arg2, arg3, coords, gameTime2
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Spawn Vehicle By Name"
  arg3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5, waitCall2, numberValue23, numberValue25
    if arg32 then
      arg4 = CMG
      arg4 = arg4.getPlayerCoords
      -- Beginner: result below is playerCoords.
      arg4 = arg4()
      cmgCall5 = CMG
      cmgCall5 = cmgCall5.clientPrompt
      waitCall2 = "Spawn Code"
      numberValue23 = ""

      -- === HELPER FUNCTION (decompiler name: numberValue25; parameters: arg13) ===
      function numberValue25(arg13)
        local arg23, gameTime, workValue18, workValue20, flag22, heading, cmgCall6, flag23, flag24
        arg23 = CMG
        arg23 = arg23.requestEntitySpawn
        gameTime = "devmenu"
        workValue18 = arg13
        arg23(gameTime, workValue18)
        arg23 = CMG
        arg23 = arg23.spawnVehicle
        gameTime = arg13
        workValue18 = arg4.x
        workValue20 = arg4.y
        flag22 = arg4.z
        heading = GetEntityHeading
        cmgCall6 = CMG
        cmgCall6 = cmgCall6.getPlayerPed
        cmgCall6, flag23, flag24 = cmgCall6()
        -- Beginner: result below is heading.
        heading = heading(cmgCall6, flag23, flag24)
        cmgCall6 = true
        flag23 = true
        flag24 = true
        arg23 = arg23(gameTime, workValue18, workValue20, flag22, heading, cmgCall6, flag23, flag24)
        gameTime = CMG
        gameTime = gameTime.applyMaxDefaultModsToVehicle
        workValue18 = arg23
        gameTime(workValue18)
      end
      cmgCall5(waitCall2, numberValue23, numberValue25)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Spawn Object By Name"
  arg3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5, waitCall2, numberValue23
    if arg32 then
      arg4 = CMG
      arg4 = arg4.clientPrompt
      cmgCall5 = "Object Name"
      waitCall2 = ""

      -- === HELPER FUNCTION (decompiler name: numberValue23; parameters: arg13) ===
      function numberValue23(arg13)
        local arg23, gameTime
        arg23 = CMG
        arg23 = arg23.placeObject
        gameTime = arg13
        arg23(gameTime)
        arg23 = RageUI
        arg23 = arg23.CloseAll
        arg23()
      end
      arg4(cmgCall5, waitCall2, numberValue23)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Spawn Object By Hash"
  arg3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5, waitCall2, numberValue23
    if arg32 then
      arg4 = CMG
      arg4 = arg4.clientPrompt
      cmgCall5 = "Object Name"
      waitCall2 = ""

      -- === HELPER FUNCTION (decompiler name: numberValue23; parameters: arg13) ===
      function numberValue23(arg13)
        local arg23, gameTime
        arg23 = CMG
        arg23 = arg23.placeObject
        gameTime = arg13
        arg23(gameTime)
        arg23 = RageUI
        arg23 = arg23.CloseAll
        arg23()
      end
      arg4(cmgCall5, waitCall2, numberValue23)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Spawn Weapon"
  arg3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5, waitCall2, numberValue23
    if arg32 then
      arg4 = CMG
      arg4 = arg4.clientPrompt
      cmgCall5 = "Weapon:"
      waitCall2 = ""

      -- === HELPER FUNCTION (decompiler name: numberValue23; parameters: arg13) ===
      function numberValue23(arg13)
        local arg23, gameTime, workValue18, workValue20, flag22, heading
        if nil ~= arg13 and "" ~= arg13 then
          arg23 = GiveWeaponToPed
          gameTime = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          gameTime = gameTime()
          workValue18 = GetHashKey
          workValue20 = arg13
          -- Beginner: result below is hash.
          workValue18 = workValue18(workValue20)
          workValue20 = 250
          flag22 = false
          heading = false
          arg23(gameTime, workValue18, workValue20, flag22, heading)
        end
      end
      arg4(cmgCall5, waitCall2, numberValue23)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Clear Vehicles"
  arg3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5
    if arg32 then
      arg4 = ExecuteCommand
      cmgCall5 = "clearvehicles"
      arg4(cmgCall5)
      arg4 = notify
      cmgCall5 = "~g~Triggered clear vehicles"
      -- Beginner: Show a notification to the player.
      arg4(cmgCall5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Clear Objects"
  arg3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5
    if arg32 then
      arg4 = ExecuteCommand
      cmgCall5 = "clearobjects"
      arg4(cmgCall5)
      arg4 = notify
      cmgCall5 = "~g~Triggered clear objects"
      -- Beginner: Show a notification to the player.
      arg4(cmgCall5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Clear Peds"
  arg3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5
    if arg32 then
      arg4 = ExecuteCommand
      cmgCall5 = "clearpeds"
      arg4(cmgCall5)
      arg4 = notify
      cmgCall5 = "~g~Triggered clear peds"
      -- Beginner: Show a notification to the player.
      arg4(cmgCall5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Clear Weapons"
  arg3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5, waitCall2
    if arg32 then
      arg4 = RemoveAllPedWeapons
      cmgCall5 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      cmgCall5 = cmgCall5()
      waitCall2 = false
      arg4(cmgCall5, waitCall2)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
end
cmgCall3(textValue3, workValue13)
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1) ===
function textValue3(arg1)
  local arg2, arg3, coords, gameTime2, iterator, workValue21
  arg2 = CMG
  arg2 = arg2.getVehicleIdFromModel
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg3 = "Vehicle"
    coords = arg2
    return arg3, coords
  end
  arg3 = cmgCall.weaponHashToModels
  arg3 = arg3[arg1]
  if arg3 then
    coords = "Weapon"
    gameTime2 = arg3
    return coords, gameTime2
  end
  coords = GetLabelText
  gameTime2 = arg1
  coords = coords(gameTime2)
  if coords and "NULL" ~= coords then
    gameTime2 = "LabelText"
    iterator = coords
    return gameTime2, iterator
  end
  gameTime2 = "Unknown"
  iterator = tostring
  workValue21 = arg1
  iterator, workValue21 = iterator(workValue21)
  return gameTime2, iterator, workValue21
end
cmgCall3.resolveHash = textValue3
cmgCall3 = nil

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: none) ===
function textValue3()
  local arg1, arg2
  arg1 = Citizen
  arg1 = arg1.CreateThread

  -- === HELPER FUNCTION: arg2() ===
  function arg2()
    local arg12, arg22, arg32, arg4, cmgCall5, waitCall2, numberValue23, numberValue25, workValue22
    while true do
      arg12 = cmgCall3
      if not arg12 then
        break
      end
      arg12 = ipairs
      arg22 = GetGamePool
      arg32 = "CObject"
      arg22, arg32, arg4, cmgCall5, waitCall2, numberValue23, numberValue25, workValue22 = arg22(arg32)
      arg12, arg22, arg32, arg4 = arg12(arg22, arg32, arg4, cmgCall5, waitCall2, numberValue23, numberValue25, workValue22)
      for cmgCall5, waitCall2 in arg12, arg22, arg32, arg4 do
        numberValue23 = GetEntityModel
        numberValue25 = waitCall2
        -- Beginner: result below is modelHash.
        numberValue23 = numberValue23(numberValue25)
        numberValue25 = cmgCall3
        if numberValue23 == numberValue25 then
          numberValue23 = SetEntityDrawOutline
          numberValue25 = waitCall2
          workValue22 = true
          numberValue23(numberValue25, workValue22)
        end
      end
      arg12 = Citizen
      arg12 = arg12.Wait
      arg22 = 0
      arg12(arg22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: none) ===
function workValue13()
  local arg1, arg2, arg3, coords
  arg1 = CMG
  arg1 = arg1.clientPrompt
  arg2 = "Enter Model List"
  arg3 = ""

  -- === HELPER FUNCTION: coords(arg12) ===
  function coords(arg12)
    local arg22, arg32, arg4, cmgCall5, waitCall2, numberValue23, numberValue25, workValue22, heading2, hashValue, waitCall, workValue2
    arg22 = CMG
    arg22 = arg22.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg22 = arg22()
    arg32 = GetEntityForwardVector
    arg4 = PlayerPedId
    arg4, cmgCall5, waitCall2, numberValue23, numberValue25, workValue22, heading2, hashValue, waitCall, workValue2 = arg4()
    arg32 = arg32(arg4, cmgCall5, waitCall2, numberValue23, numberValue25, workValue22, heading2, hashValue, waitCall, workValue2)
    arg32 = arg32 * 5.0
    arg22 = arg22 + arg32
    arg32 = 0
    arg4 = splitString
    cmgCall5 = arg12
    waitCall2 = "\n"
    arg4 = arg4(cmgCall5, waitCall2)
    cmgCall5 = pairs
    waitCall2 = arg4
    cmgCall5, waitCall2, numberValue23, numberValue25 = cmgCall5(waitCall2)
    for workValue22, heading2 in cmgCall5, waitCall2, numberValue23, numberValue25 do
      hashValue = GetHashKey
      waitCall = heading2
      -- Beginner: result below is hash.
      hashValue = hashValue(waitCall)
      waitCall = IsModelValid
      workValue2 = hashValue
      waitCall = waitCall(workValue2)
      if waitCall then
        while arg32 > 15 do
          waitCall = Wait
          workValue2 = 0
          waitCall(workValue2)
        end
        arg32 = arg32 + 1
        waitCall = Citizen
        waitCall = waitCall.CreateThread

        -- === HELPER FUNCTION (decompiler name: workValue2; parameters: none) ===
        function workValue2()
          local arg13, arg23, gameTime, workValue18, workValue20, flag22, heading, cmgCall6, flag23, flag24
          arg13 = CMG
          arg13 = arg13.loadModel
          arg23 = hashValue
          arg13 = arg13(arg23)
          if arg13 then
            arg23 = 0
            gameTime = IsModelAVehicle
            workValue18 = hashValue
            gameTime = gameTime(workValue18)
            if gameTime then
              gameTime = CreateVehicle
              workValue18 = hashValue
              workValue20 = arg22.x
              flag22 = arg22.y
              heading = arg22.z
              cmgCall6 = 0.0
              flag23 = false
              flag24 = false
              -- Beginner: result below is vehicleEntity.
              gameTime = gameTime(workValue18, workValue20, flag22, heading, cmgCall6, flag23, flag24)
              arg23 = gameTime
              gameTime = CMG
              gameTime = gameTime.initLocalVehicle
              workValue18 = arg23
              gameTime(workValue18)
            else
              gameTime = CreateObjectNoOffset
              workValue18 = hashValue
              workValue20 = arg22.x
              flag22 = arg22.y
              heading = arg22.z
              cmgCall6 = false
              flag23 = false
              flag24 = false
              -- Beginner: result below is objectEntity.
              gameTime = gameTime(workValue18, workValue20, flag22, heading, cmgCall6, flag23, flag24)
              arg23 = gameTime
            end
            gameTime = Wait
            workValue18 = 2000
            gameTime(workValue18)
            gameTime = DeleteEntity
            workValue18 = arg23
            -- Beginner: Delete a GTA entity.
            gameTime(workValue18)
          end
          arg23 = arg32
          arg23 = arg23 - 1
          arg32 = arg23
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        waitCall(workValue2)
      end
    end
  end
  arg1(arg2, arg3, coords)
end
numberValue16 = 0
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, coords, gameTime2
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Get Customization [JSON]"
  arg3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5, waitCall2, numberValue23
    if arg32 then
      arg4 = CMG
      arg4 = arg4.clientPrompt
      cmgCall5 = "Customization [JSON]"
      waitCall2 = json
      waitCall2 = waitCall2.encode
      numberValue23 = tCMG
      numberValue23 = numberValue23.getCustomization
      numberValue23 = numberValue23()
      waitCall2 = waitCall2(numberValue23)
      if not waitCall2 then
        waitCall2 = ""
      end

      -- === HELPER FUNCTION (decompiler name: numberValue23; parameters: none) ===
      function numberValue23()
        local arg13, arg23
      end
      arg4(cmgCall5, waitCall2, numberValue23)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Set Customization [JSON]"
  arg3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5, waitCall2, numberValue23
    if arg32 then
      arg4 = CMG
      arg4 = arg4.clientPrompt
      cmgCall5 = "Customization [JSON]"
      waitCall2 = ""

      -- === HELPER FUNCTION (decompiler name: numberValue23; parameters: arg13) ===
      function numberValue23(arg13)
        local arg23, gameTime, workValue18
        arg23 = tCMG
        arg23 = arg23.setCustomization
        gameTime = json
        gameTime = gameTime.decode
        workValue18 = arg13
        gameTime, workValue18 = gameTime(workValue18)
        arg23(gameTime, workValue18)
      end
      arg4(cmgCall5, waitCall2, numberValue23)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
end
cmgCall4.drawCustomisationDebugButtons = textValue4
cmgCall4 = CMG
cmgCall4 = cmgCall4.registerDevMenuItems
textValue4 = "Customisation"

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.drawCustomisationDebugButtons
  arg1()
end
cmgCall4(textValue4, textValue5)
cmgCall4 = CMG
cmgCall4 = cmgCall4.registerDevMenuItems
textValue4 = "Miscellaneous"

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2, arg3, coords, gameTime2, iterator
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Show nearby objects"
  arg3 = "Lists all objects within 15m and draws markers with hash/distance. Check F8."
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5
    if arg32 then
      arg4 = CMG
      arg4 = arg4.showNearbyObjectMarkers
      cmgCall5 = 15.0
      arg4(cmgCall5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Drop Lootbag"
  arg3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5
    if arg32 then
      arg4 = TriggerServerEvent
      cmgCall5 = "e968644885"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e968644885".
      arg4(cmgCall5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Preview Daily Reward Crate"
  arg3 = "Opens the loot box animation without granting a reward."
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5
    if arg32 then
      arg4 = TriggerServerEvent
      cmgCall5 = "d3ffce18f5"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d3ffce18f5".
      arg4(cmgCall5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Reset Daily Reward"
  arg3 = "Sets last claim to yesterday so you can claim again today."
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5
    if arg32 then
      arg4 = TriggerServerEvent
      cmgCall5 = "1ca287f0e0"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1ca287f0e0".
      arg4(cmgCall5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Open Scene Menu (RP)"
  arg3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5
    if arg32 then
      arg4 = TriggerEvent
      cmgCall5 = "acaf25d389"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "acaf25d389".
      arg4(cmgCall5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Preview Marker"
  arg3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5, waitCall2, numberValue23, numberValue25, workValue22, heading2, hashValue, waitCall, workValue2, textValue, numberValue6, workValue6, textValue2, flag, flag2, flag3, numberValue12, numberValue14, flag5, flag7, numberValue15, flag9, numberValue18, numberValue19, flag13
    arg4 = numberValue16
    if arg4 then
      arg4 = numberValue16
      if arg4 > 0 then
        arg4 = CMG
        arg4 = arg4.getPlayerCoords
        -- Beginner: result below is playerCoords.
        arg4 = arg4()
        cmgCall5 = GetEntityForwardVector
        waitCall2 = PlayerPedId
        waitCall2, numberValue23, numberValue25, workValue22, heading2, hashValue, waitCall, workValue2, textValue, numberValue6, workValue6, textValue2, flag, flag2, flag3, numberValue12, numberValue14, flag5, flag7, numberValue15, flag9, numberValue18, numberValue19, flag13 = waitCall2()
        cmgCall5 = cmgCall5(waitCall2, numberValue23, numberValue25, workValue22, heading2, hashValue, waitCall, workValue2, textValue, numberValue6, workValue6, textValue2, flag, flag2, flag3, numberValue12, numberValue14, flag5, flag7, numberValue15, flag9, numberValue18, numberValue19, flag13)
        cmgCall5 = cmgCall5 * 2.0
        arg4 = arg4 + cmgCall5
        cmgCall5 = DrawMarker
        waitCall2 = numberValue16
        numberValue23 = arg4.x
        numberValue25 = arg4.y
        workValue22 = arg4.z
        heading2 = 0.0
        hashValue = 0.0
        waitCall = 0.0
        workValue2 = 0.0
        textValue = 0.0
        numberValue6 = 0.0
        workValue6 = 1.0
        textValue2 = 1.0
        flag = 1.0
        flag2 = 0
        flag3 = 255
        numberValue12 = 125
        numberValue14 = 125
        flag5 = false
        flag7 = false
        numberValue15 = 2
        flag9 = false
        numberValue18 = nil
        numberValue19 = nil
        flag13 = false
        cmgCall5(waitCall2, numberValue23, numberValue25, workValue22, heading2, hashValue, waitCall, workValue2, textValue, numberValue6, workValue6, textValue2, flag, flag2, flag3, numberValue12, numberValue14, flag5, flag7, numberValue15, flag9, numberValue18, numberValue19, flag13)
      end
    end
    if arg32 then
      arg4 = CMG
      arg4 = arg4.clientPrompt
      cmgCall5 = "Enter ID"
      waitCall2 = ""

      -- === HELPER FUNCTION (decompiler name: numberValue23; parameters: arg13) ===
      function numberValue23(arg13)
        local arg23, gameTime
        arg23 = tonumber
        gameTime = arg13
        arg23 = arg23(gameTime)
        if not arg23 then
          arg23 = 0
        end
        numberValue16 = arg23
      end
      arg4(cmgCall5, waitCall2, numberValue23)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Get Camera Pos & Rot"
  arg3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5, waitCall2, numberValue23, numberValue25, workValue22, heading2, hashValue, waitCall, workValue2, textValue, numberValue6
    if arg32 then
      arg4 = GetFinalRenderedCamCoord
      arg4 = arg4()
      cmgCall5 = GetFinalRenderedCamRot
      waitCall2 = 2
      cmgCall5 = cmgCall5(waitCall2)
      waitCall2 = CMG
      waitCall2 = waitCall2.clientPrompt
      numberValue23 = "Pos & Rot"
      numberValue25 = string
      numberValue25 = numberValue25.format
      workValue22 = "vector3(%s, %s, %s), vector3(%s, %s, %s)"
      heading2 = arg4.x
      hashValue = arg4.y
      waitCall = arg4.z
      workValue2 = cmgCall5.x
      textValue = cmgCall5.y
      numberValue6 = cmgCall5.z
      numberValue25 = numberValue25(workValue22, heading2, hashValue, waitCall, workValue2, textValue, numberValue6)

      -- === HELPER FUNCTION (decompiler name: workValue22; parameters: none) ===
      function workValue22()
        local arg13, arg23
      end
      waitCall2(numberValue23, numberValue25, workValue22)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Clear Watchlist Of Old Staff"
  arg3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5
    if arg32 then
      arg4 = TriggerServerEvent
      cmgCall5 = "5f546e002c"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5f546e002c".
      arg4(cmgCall5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Test Models"
  arg3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4
    if arg32 then
      arg4 = workValue13
      arg4()
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Resolve Hash"
  arg3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5, waitCall2, numberValue23
    if arg32 then
      arg4 = CMG
      arg4 = arg4.clientPrompt
      cmgCall5 = "Enter Number"
      waitCall2 = ""

      -- === HELPER FUNCTION (decompiler name: numberValue23; parameters: arg13) ===
      function numberValue23(arg13)
        local arg23, gameTime, workValue18, workValue20, flag22, heading, cmgCall6, flag23
        arg23 = tonumber
        gameTime = arg13
        arg23 = arg23(gameTime)
        if not arg23 then
          gameTime = notify
          workValue18 = "~r~This is not a number dumbass."
          -- Beginner: Show a notification to the player.
          gameTime(workValue18)
          return
        end
        gameTime = CMG
        gameTime = gameTime.resolveHash
        workValue18 = arg23 & 4294967295
        gameTime, workValue18 = gameTime(workValue18)
        if "Unknown" == gameTime then
          workValue20 = CMG
          workValue20 = workValue20.resolveHash
          flag22 = arg23
          workValue20, flag22 = workValue20(flag22)
          workValue18 = flag22
          gameTime = workValue20
        end
        workValue20 = notify
        flag22 = string
        flag22 = flag22.format
        heading = [[
~y~Resolved Information:
Type: %s
Name: %s]]
        cmgCall6 = gameTime
        flag23 = workValue18
        flag22, heading, cmgCall6, flag23 = flag22(heading, cmgCall6, flag23)
        workValue20(flag22, heading, cmgCall6, flag23)
      end
      arg4(cmgCall5, waitCall2, numberValue23)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Highlight Object"
  arg3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5, waitCall2, numberValue23
    if arg32 then
      arg4 = CMG
      arg4 = arg4.clientPrompt
      cmgCall5 = "Object Name / Hash"
      waitCall2 = ""

      -- === HELPER FUNCTION (decompiler name: numberValue23; parameters: arg13) ===
      function numberValue23(arg13)
        local arg23, gameTime, workValue18, workValue20, flag22
        if "" == arg13 then
          arg23 = nil
          cmgCall3 = arg23
        else
          arg23 = tonumber
          gameTime = arg13
          arg23 = arg23(gameTime)
          if not arg23 then
            gameTime = GetHashKey
            workValue18 = arg13
            -- Beginner: result below is hash.
            gameTime = gameTime(workValue18)
            arg23 = gameTime
          end
          gameTime = IsModelInCdimage
          workValue18 = arg23
          gameTime = gameTime(workValue18)
          if gameTime then
            gameTime = IsModelValid
            workValue18 = arg23
            gameTime = gameTime(workValue18)
            if gameTime then
              goto flow_label_33
            end
          end
          gameTime = notify
          workValue18 = string
          workValue18 = workValue18.format
          workValue20 = "Model %s is not valid"
          flag22 = arg13
          workValue18, workValue20, flag22 = workValue18(workValue20, flag22)
          -- Beginner: Show a notification to the player.
          gameTime(workValue18, workValue20, flag22)
          return
          ::flow_label_33::
          gameTime = cmgCall3
          if not gameTime then
            gameTime = textValue3
            gameTime()
          end
          cmgCall3 = arg23
        end
      end
      arg4(cmgCall5, waitCall2, numberValue23)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
  arg1 = RageUI
  arg1 = arg1.Checkbox
  arg2 = "Select Position In Crosshair"
  arg3 = ""
  coords = cmgCall2.selectingCrosshairPosition
  gameTime2 = {}

  -- === HELPER FUNCTION: iterator(arg12, arg22, arg32, arg4) ===
  function iterator(arg12, arg22, arg32, arg4)
    cmgCall2.selectingCrosshairPosition = arg4
  end
  -- Beginner: Draw a RageUI checkbox.
  arg1(arg2, arg3, coords, gameTime2, iterator)
  arg1 = RageUI
  arg1 = arg1.ButtonWithStyle
  arg2 = "Select Crosshair Distance"
  arg3 = ""
  coords = {}
  gameTime2 = cmgCall2.selectCrosshairDistance
  coords.RightLabel = gameTime2
  gameTime2 = true

  -- === HELPER FUNCTION: iterator(arg12, arg22, arg32) ===
  function iterator(arg12, arg22, arg32)
    local arg4, cmgCall5, waitCall2, numberValue23
    if arg32 then
      arg4 = CMG
      arg4 = arg4.clientPrompt
      cmgCall5 = "Enter Value:"
      waitCall2 = ""

      -- === HELPER FUNCTION (decompiler name: numberValue23; parameters: arg13) ===
      function numberValue23(arg13)
        local arg23, gameTime
        arg23 = tonumber
        gameTime = arg13
        arg23 = arg23(gameTime)
        if arg23 then
          cmgCall2.selectCrosshairDistance = arg23
        end
      end
      arg4(cmgCall5, waitCall2, numberValue23)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2, iterator)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Get Camera Position"
  arg3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5, waitCall2, numberValue23, numberValue25, workValue22, heading2, hashValue
    if arg32 then
      arg4 = GetFinalRenderedCamCoord
      arg4 = arg4()
      cmgCall5 = CMG
      cmgCall5 = cmgCall5.clientPrompt
      waitCall2 = ""
      numberValue23 = string
      numberValue23 = numberValue23.format
      numberValue25 = "vector3(%s, %s, %s)"
      workValue22 = arg4.x
      heading2 = arg4.y
      hashValue = arg4.z
      numberValue23 = numberValue23(numberValue25, workValue22, heading2, hashValue)

      -- === HELPER FUNCTION (decompiler name: numberValue25; parameters: none) ===
      function numberValue25()
        local arg13, arg23
      end
      cmgCall5(waitCall2, numberValue23, numberValue25)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Get Camera Rotation"
  arg3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5, waitCall2, numberValue23, numberValue25, workValue22, heading2, hashValue
    if arg32 then
      arg4 = GetFinalRenderedCamRot
      cmgCall5 = 2
      arg4 = arg4(cmgCall5)
      cmgCall5 = CMG
      cmgCall5 = cmgCall5.clientPrompt
      waitCall2 = ""
      numberValue23 = string
      numberValue23 = numberValue23.format
      numberValue25 = "vector3(%s, %s, %s)"
      workValue22 = arg4.x
      heading2 = arg4.y
      hashValue = arg4.z
      numberValue23 = numberValue23(numberValue25, workValue22, heading2, hashValue)

      -- === HELPER FUNCTION (decompiler name: numberValue25; parameters: none) ===
      function numberValue25()
        local arg13, arg23
      end
      cmgCall5(waitCall2, numberValue23, numberValue25)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
end
cmgCall4(textValue4, textValue5)
cmgCall4 = RegisterNetEvent
textValue4 = "351e7015f2"
-- Beginner: this function handles network event "351e7015f2".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1) ===
function textValue5(arg1)
  local arg2, arg3, coords, gameTime2, iterator, workValue21, textValue6, cmgCall7, vector3Builder2, labelValue, numberValue3, workValue, numberValue5, vector3Builder, modelHash, numberValue7
  arg2 = CMG
  arg2 = arg2.getClientUserId
  -- Beginner: result below is userId.
  arg2 = arg2()
  if arg2 then
    arg3 = CMG
    arg3 = arg3.isDeveloper
    coords = arg2
    arg3 = arg3(coords)
    if arg3 and arg1 then
      arg3 = ""
      coords = load
      gameTime2 = "return "
      iterator = arg1
      gameTime2 = gameTime2 .. iterator
      coords, gameTime2 = coords(gameTime2)
      if gameTime2 then
        iterator = load
        workValue21 = arg1
        iterator, workValue21 = iterator(workValue21)
        gameTime2 = workValue21
        coords = iterator
      end
      if gameTime2 then
        iterator = TriggerEvent
        workValue21 = "chatMessage"
        textValue6 = "[SS-RunCode]"
        cmgCall7 = {}
        vector3Builder2 = 187
        labelValue = 0
        numberValue3 = 0
        cmgCall7[1] = vector3Builder2
        cmgCall7[2] = labelValue
        cmgCall7[3] = numberValue3
        vector3Builder2 = "CRun Error: "
        labelValue = tostring
        numberValue3 = gameTime2
        labelValue = labelValue(numberValue3)
        vector3Builder2 = vector3Builder2 .. labelValue
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chatMessage".
        iterator(workValue21, textValue6, cmgCall7, vector3Builder2)
        iterator = false
        return iterator
      end
      iterator = {}
      workValue21 = pcall
      textValue6 = coords
      workValue21, textValue6, cmgCall7, vector3Builder2, labelValue, numberValue3, workValue, numberValue5, vector3Builder, modelHash, numberValue7 = workValue21(textValue6)
      iterator[1] = workValue21
      iterator[2] = textValue6
      iterator[3] = cmgCall7
      iterator[4] = vector3Builder2
      iterator[5] = labelValue
      iterator[6] = numberValue3
      iterator[7] = workValue
      iterator[8] = numberValue5
      iterator[9] = vector3Builder
      iterator[10] = modelHash
      iterator[11] = numberValue7
      workValue21 = iterator[1]
      if not workValue21 then
        workValue21 = TriggerEvent
        textValue6 = "chatMessage"
        cmgCall7 = "[SS-RunCode]"
        vector3Builder2 = {}
        labelValue = 187
        numberValue3 = 0
        workValue = 0
        vector3Builder2[1] = labelValue
        vector3Builder2[2] = numberValue3
        vector3Builder2[3] = workValue
        labelValue = "CRun Error: "
        numberValue3 = tostring
        workValue = iterator[2]
        numberValue3 = numberValue3(workValue)
        labelValue = labelValue .. numberValue3
        workValue21(textValue6, cmgCall7, vector3Builder2, labelValue)
        workValue21 = false
        return workValue21
      end
      workValue21 = 2
      textValue6 = #iterator
      cmgCall7 = 1
      for vector3Builder2 = workValue21, textValue6, cmgCall7 do
        labelValue = arg3
        numberValue3 = ", "
        labelValue = labelValue .. numberValue3
        arg3 = labelValue
        labelValue = type
        numberValue3 = iterator[vector3Builder2]
        labelValue = labelValue(numberValue3)
        numberValue3 = iterator[vector3Builder2]
        workValue = type
        numberValue5 = numberValue3
        workValue = workValue(numberValue5)
        if "number" == workValue then
          workValue = IsAnEntity
          numberValue5 = numberValue3
          workValue = workValue(numberValue5)
          if workValue then
            workValue = "entity:"
            numberValue5 = tostring
            vector3Builder = GetEntityType
            modelHash = numberValue3
            vector3Builder, modelHash, numberValue7 = vector3Builder(modelHash)
            numberValue5 = numberValue5(vector3Builder, modelHash, numberValue7)
            workValue = workValue .. numberValue5
            labelValue = workValue
          end
        end
        workValue = arg3
        numberValue5 = tostring
        vector3Builder = iterator[vector3Builder2]
        numberValue5 = numberValue5(vector3Builder)
        vector3Builder = " ["
        modelHash = labelValue
        numberValue7 = "]"
        workValue = workValue .. numberValue5 .. vector3Builder .. modelHash .. numberValue7
        arg3 = workValue
      end
      workValue21 = #iterator
      if workValue21 > 1 then
        workValue21 = TriggerEvent
        textValue6 = "chatMessage"
        cmgCall7 = "[SS-RunCode]"
        vector3Builder2 = {}
        labelValue = 187
        numberValue3 = 0
        workValue = 0
        vector3Builder2[1] = labelValue
        vector3Builder2[2] = numberValue3
        vector3Builder2[3] = workValue
        labelValue = "CRun Command Result: "
        numberValue3 = tostring
        workValue = arg3
        numberValue3 = numberValue3(workValue)
        labelValue = labelValue .. numberValue3
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chatMessage".
        workValue21(textValue6, cmgCall7, vector3Builder2, labelValue)
        workValue21 = true
        return workValue21
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "351e7015f2".
cmgCall4(textValue4, textValue5)
cmgCall4 = RegisterNetEvent
textValue4 = "0f125feacd"
-- Beginner: this function handles network event "0f125feacd".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: ...) ===
function textValue5(...)
  local arg1, arg2
  arg1 = print
  arg2 = ...
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0f125feacd".
cmgCall4(textValue4, textValue5)
cmgCall4 = CMG
cmgCall4 = cmgCall4.registerDevMenuThread
textValue4 = "Dev Misc"
-- Beginner: this function handles network event "0f125feacd".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2, arg3, coords, gameTime2, iterator, workValue21, textValue6, cmgCall7, vector3Builder2, labelValue, numberValue3, workValue, numberValue5, vector3Builder, modelHash, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue13, flag4, flag6, flag8, numberValue17, flag10, flag11, flag12, flag14, flag15, workValue15, flag18, flag19
  arg1 = cmgCall2.selectingCrosshairPosition
  if arg1 then
    arg1 = GetGameplayCamCoords
    arg1 = arg1()
    arg2 = GetGameplayCamRot
    arg3 = 2
    arg2 = arg2(arg3)
    arg3 = CMG
    arg3 = arg3.rotationToDirection
    coords = arg2
    arg3 = arg3(coords)
    arg3 = arg3 * 100.0
    arg3 = arg1 + arg3
    coords = _ENV
    gameTime2 = "StartExpensiveSynchronousShapeTestLosProbe"
    coords = coords[gameTime2]
    gameTime2 = arg1.x
    iterator = arg1.y
    workValue21 = arg1.z
    textValue6 = arg3.x
    cmgCall7 = arg3.y
    vector3Builder2 = arg3.z
    labelValue = -1
    numberValue3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    numberValue3 = numberValue3()
    workValue = 7
    coords = coords(gameTime2, iterator, workValue21, textValue6, cmgCall7, vector3Builder2, labelValue, numberValue3, workValue)
    gameTime2 = GetShapeTestResult
    iterator = coords
    gameTime2, iterator, workValue21, textValue6 = gameTime2(iterator)
    cmgCall7 = DisableControlAction
    vector3Builder2 = 0
    labelValue = 26
    numberValue3 = true
    cmgCall7(vector3Builder2, labelValue, numberValue3)
    if iterator then
      cmgCall7 = cmgCall2.selectCrosshairDistance
      cmgCall7 = textValue6 * cmgCall7
      cmgCall7 = workValue21 + cmgCall7
      vector3Builder2 = DrawMarker
      labelValue = 28
      numberValue3 = cmgCall7.x
      workValue = cmgCall7.y
      numberValue5 = cmgCall7.z
      vector3Builder = 0.0
      modelHash = 0.0
      numberValue7 = 0.0
      numberValue8 = 0.0
      numberValue9 = 0.0
      numberValue10 = 0.0
      numberValue11 = 0.05
      numberValue13 = 0.05
      flag4 = 0.05
      flag6 = 255
      flag8 = 0
      numberValue17 = 0
      flag10 = 255
      flag11 = false
      flag12 = false
      flag14 = 2
      flag15 = false
      workValue15 = nil
      flag18 = nil
      flag19 = false
      vector3Builder2(labelValue, numberValue3, workValue, numberValue5, vector3Builder, modelHash, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue13, flag4, flag6, flag8, numberValue17, flag10, flag11, flag12, flag14, flag15, workValue15, flag18, flag19)
      vector3Builder2 = textValue6 * 5.0
      vector3Builder2 = workValue21 + vector3Builder2
      labelValue = DrawLine
      numberValue3 = workValue21.x
      workValue = workValue21.y
      numberValue5 = workValue21.z
      vector3Builder = vector3Builder2.x
      modelHash = vector3Builder2.y
      numberValue7 = vector3Builder2.z
      numberValue8 = 255
      numberValue9 = 255
      numberValue10 = 255
      numberValue11 = 255
      labelValue(numberValue3, workValue, numberValue5, vector3Builder, modelHash, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11)
      labelValue = IsDisabledControlPressed
      numberValue3 = 0
      workValue = 36
      labelValue = labelValue(numberValue3, workValue)
      if labelValue then
        labelValue = IsDisabledControlJustPressed
        numberValue3 = 0
        workValue = 26
        labelValue = labelValue(numberValue3, workValue)
        if labelValue then
          labelValue = CMG
          labelValue = labelValue.copyToClipboard
          numberValue3 = string
          numberValue3 = numberValue3.gsub
          workValue = tostring
          numberValue5 = cmgCall7
          workValue = workValue(numberValue5)
          numberValue5 = "vec3"
          vector3Builder = "vector3"
          numberValue3, workValue, numberValue5, vector3Builder, modelHash, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue13, flag4, flag6, flag8, numberValue17, flag10, flag11, flag12, flag14, flag15, workValue15, flag18, flag19 = numberValue3(workValue, numberValue5, vector3Builder)
          labelValue(numberValue3, workValue, numberValue5, vector3Builder, modelHash, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue13, flag4, flag6, flag8, numberValue17, flag10, flag11, flag12, flag14, flag15, workValue15, flag18, flag19)
          labelValue = notify
          numberValue3 = "~g~Copied coordinates to clipboard"
          -- Beginner: Show a notification to the player.
          labelValue(numberValue3)
        end
      end
    end
  end
  arg1 = pairs
  arg2 = dataTable
  arg1, arg2, arg3, coords = arg1(arg2)
  for gameTime2, iterator in arg1, arg2, arg3, coords do
    workValue21 = CMG
    workValue21 = workValue21.DrawText
    textValue6 = 0.05
    cmgCall7 = gameTime2 * 0.025
    cmgCall7 = 0.1 + cmgCall7
    vector3Builder2 = iterator
    labelValue = 0.4
    numberValue3 = nil
    workValue = nil
    numberValue5 = {}
    vector3Builder = 255
    modelHash = 0
    numberValue7 = 0
    numberValue8 = 255
    numberValue5[1] = vector3Builder
    numberValue5[2] = modelHash
    numberValue5[3] = numberValue7
    numberValue5[4] = numberValue8
    vector3Builder = true
    workValue21(textValue6, cmgCall7, vector3Builder2, labelValue, numberValue3, workValue, numberValue5, vector3Builder)
  end
  arg1 = table
  arg1 = arg1.clear
  arg2 = dataTable
  arg1(arg2)
end
cmgCall4(textValue4, textValue5)
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1, arg2) ===
function textValue4(arg1, arg2)
  local arg3, coords, gameTime2, iterator, workValue21, textValue6, cmgCall7, vector3Builder2, labelValue, numberValue3, workValue
  arg3 = DrawLine
  coords = arg1.x
  coords = coords - arg2
  gameTime2 = arg1.y
  iterator = arg1.z
  workValue21 = arg1.x
  workValue21 = workValue21 + arg2
  textValue6 = arg1.y
  cmgCall7 = arg1.z
  vector3Builder2 = 255
  labelValue = 0
  numberValue3 = 0
  workValue = 255
  arg3(coords, gameTime2, iterator, workValue21, textValue6, cmgCall7, vector3Builder2, labelValue, numberValue3, workValue)
  arg3 = DrawLine
  coords = arg1.x
  gameTime2 = arg1.y
  gameTime2 = gameTime2 - arg2
  iterator = arg1.z
  workValue21 = arg1.x
  textValue6 = arg1.y
  textValue6 = textValue6 + arg2
  cmgCall7 = arg1.z
  vector3Builder2 = 0
  labelValue = 255
  numberValue3 = 0
  workValue = 255
  arg3(coords, gameTime2, iterator, workValue21, textValue6, cmgCall7, vector3Builder2, labelValue, numberValue3, workValue)
  arg3 = DrawLine
  coords = arg1.x
  gameTime2 = arg1.y
  iterator = arg1.z
  iterator = iterator - arg2
  workValue21 = arg1.x
  textValue6 = arg1.y
  cmgCall7 = arg1.z
  cmgCall7 = cmgCall7 + arg2
  vector3Builder2 = 0
  labelValue = 0
  numberValue3 = 255
  workValue = 255
  arg3(coords, gameTime2, iterator, workValue21, textValue6, cmgCall7, vector3Builder2, labelValue, numberValue3, workValue)
end
cmgCall4.drawAxisOnPoint = textValue4
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1, arg2, arg3) ===
function textValue4(arg1, arg2, arg3)
  local coords, gameTime2, iterator, workValue21, textValue6, cmgCall7, vector3Builder2, labelValue, numberValue3, workValue, numberValue5, vector3Builder
  coords = vector3
  gameTime2 = arg1.x
  iterator = math
  iterator = iterator.sin
  workValue21 = arg2
  iterator = iterator(workValue21)
  iterator = arg3 * iterator
  gameTime2 = gameTime2 + iterator
  iterator = arg1.y
  workValue21 = math
  workValue21 = workValue21.cos
  textValue6 = arg2
  workValue21 = workValue21(textValue6)
  workValue21 = arg3 * workValue21
  iterator = iterator + workValue21
  workValue21 = arg1.z
  coords = coords(gameTime2, iterator, workValue21)
  gameTime2 = DrawLine
  iterator = arg1.x
  workValue21 = arg1.y
  textValue6 = arg1.z
  cmgCall7 = coords.x
  vector3Builder2 = coords.y
  labelValue = coords.z
  numberValue3 = 255
  workValue = 255
  numberValue5 = 255
  vector3Builder = 255
  gameTime2(iterator, workValue21, textValue6, cmgCall7, vector3Builder2, labelValue, numberValue3, workValue, numberValue5, vector3Builder)
end
cmgCall4.drawHeadingFromPoint = textValue4
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1, ...) ===
function textValue4(arg1, ...)
  local arg2, arg3, coords, gameTime2, iterator
  arg2 = table
  arg2 = arg2.insert
  arg3 = dataTable
  coords = string
  coords = coords.format
  gameTime2 = arg1
  iterator = ...
  coords, gameTime2, iterator = coords(gameTime2, iterator)
  arg2(arg3, coords, gameTime2, iterator)
end
cmgCall4.drawDebugText = textValue4
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1, arg2) ===
function textValue4(arg1, arg2)
  local arg3, coords, gameTime2, iterator, workValue21, textValue6, cmgCall7, vector3Builder2, labelValue, numberValue3, workValue, numberValue5, vector3Builder, modelHash, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue13, flag4, flag6, flag8
  if not arg2 then
    arg2 = 2.5
  end
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  coords = GetEntityCoords
  gameTime2 = arg3
  -- Beginner: result below is entityCoords.
  coords = coords(gameTime2)
  gameTime2 = GetEntityForwardVector
  iterator = arg3
  gameTime2 = gameTime2(iterator)
  iterator = vector3
  workValue21 = gameTime2.y
  workValue21 = -workValue21
  textValue6 = gameTime2.x
  cmgCall7 = 0.0
  iterator = iterator(workValue21, textValue6, cmgCall7)
  workValue21 = gameTime2 * 5.0
  workValue21 = coords + workValue21
  textValue6 = #arg1
  textValue6 = textValue6 - 1
  textValue6 = textValue6 / 2
  cmgCall7 = ipairs
  vector3Builder2 = arg1
  cmgCall7, vector3Builder2, labelValue, numberValue3 = cmgCall7(vector3Builder2)
  for workValue, numberValue5 in cmgCall7, vector3Builder2, labelValue, numberValue3 do
    vector3Builder = tonumber
    modelHash = numberValue5
    vector3Builder = vector3Builder(modelHash)
    if not vector3Builder then
      vector3Builder = GetHashKey
      modelHash = numberValue5
      -- Beginner: result below is hash.
      vector3Builder = vector3Builder(modelHash)
    end
    modelHash = IsModelInCdimage
    numberValue7 = vector3Builder
    modelHash = modelHash(numberValue7)
    if modelHash then
      modelHash = IsModelValid
      numberValue7 = vector3Builder
      modelHash = modelHash(numberValue7)
      if modelHash then
        goto flow_label_56
      end
    end
    modelHash = print
    numberValue7 = "Invalid model skipped: %s"
    numberValue8 = numberValue7
    numberValue7 = numberValue7.format
    numberValue9 = numberValue5
    numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue13, flag4, flag6, flag8 = numberValue7(numberValue8, numberValue9)
    modelHash(numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue13, flag4, flag6, flag8)
    goto flow_label_107
    ::flow_label_56::
    modelHash = workValue3
    numberValue7 = vector3Builder
    modelHash = modelHash(numberValue7)
    if not modelHash then
      modelHash = print
      numberValue7 = "Failed to load model: %s"
      numberValue8 = numberValue7
      numberValue7 = numberValue7.format
      numberValue9 = numberValue5
      numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue13, flag4, flag6, flag8 = numberValue7(numberValue8, numberValue9)
      modelHash(numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue13, flag4, flag6, flag8)
    else
      modelHash = workValue - 1
      modelHash = modelHash - textValue6
      modelHash = modelHash * arg2
      numberValue7 = iterator * modelHash
      numberValue7 = workValue21 + numberValue7
      numberValue8 = CreateObjectNoOffset
      numberValue9 = vector3Builder
      numberValue10 = numberValue7.x
      numberValue11 = numberValue7.y
      numberValue13 = numberValue7.z
      flag4 = false
      flag6 = false
      flag8 = false
      -- Beginner: result below is objectEntity.
      numberValue8 = numberValue8(numberValue9, numberValue10, numberValue11, numberValue13, flag4, flag6, flag8)
      numberValue9 = PlaceObjectOnGroundProperly
      numberValue10 = numberValue8
      numberValue9(numberValue10)
      numberValue9 = FreezeEntityPosition
      numberValue10 = numberValue8
      numberValue11 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      numberValue9(numberValue10, numberValue11)
      numberValue9 = SetModelAsNoLongerNeeded
      numberValue10 = vector3Builder
      numberValue9(numberValue10)
      numberValue9 = CMG
      numberValue9 = numberValue9.add3DTextForCoord
      numberValue10 = numberValue5
      numberValue11 = numberValue7.x
      numberValue13 = numberValue7.y
      flag4 = numberValue7.z
      flag4 = flag4 + 1.0
      flag6 = 5.0
      numberValue9(numberValue10, numberValue11, numberValue13, flag4, flag6)
    end
    ::flow_label_107::
  end
  cmgCall7 = notify
  vector3Builder2 = "~g~Spawned %d objects in a row"
  labelValue = vector3Builder2
  vector3Builder2 = vector3Builder2.format
  numberValue3 = #arg1
  vector3Builder2, labelValue, numberValue3, workValue, numberValue5, vector3Builder, modelHash, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue13, flag4, flag6, flag8 = vector3Builder2(labelValue, numberValue3)
  -- Beginner: Show a notification to the player.
  cmgCall7(vector3Builder2, labelValue, numberValue3, workValue, numberValue5, vector3Builder, modelHash, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue13, flag4, flag6, flag8)
end
cmgCall4.spawnObjectRow = textValue4
cmgCall4 = CMG
cmgCall4 = cmgCall4.loadModule
textValue4 = "cfg/heists/cfg_heist"
-- Beginner: result below is config.
cmgCall4 = cmgCall4(textValue4)
textValue4 = CMG
textValue4 = textValue4.registerDevMenuItems
textValue5 = "Bank Heists"

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: none) ===
function workValue14()
  local arg1, arg2, arg3, coords, gameTime2, iterator, workValue21, textValue6, cmgCall7, vector3Builder2, labelValue
  arg1 = ipairs
  arg2 = cmgCall4.setups
  arg1, arg2, arg3, coords = arg1(arg2)
  for gameTime2, iterator in arg1, arg2, arg3, coords do
    workValue21 = RageUI
    workValue21 = workValue21.Button
    textValue6 = iterator.title
    cmgCall7 = iterator.description
    vector3Builder2 = [[


Starts this setup instantly (dev only, no cost).]]
    cmgCall7 = cmgCall7 .. vector3Builder2
    vector3Builder2 = true

    -- === HELPER FUNCTION: labelValue(arg12, arg22, arg32) ===
    function labelValue(arg12, arg22, arg32)
      local arg4, cmgCall5, waitCall2
      if arg32 then
        arg4 = TriggerServerEvent
        cmgCall5 = "7177498edd"
        waitCall2 = gameTime2
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7177498edd".
        arg4(cmgCall5, waitCall2)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    workValue21(textValue6, cmgCall7, vector3Builder2, labelValue)
  end
end
textValue4(textValue5, workValue14)
textValue4 = CMG
textValue4 = textValue4.registerDevMenuItems
textValue5 = "Events/Chat Mini-Event"

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: none) ===
function workValue14()
  local arg1, arg2, arg3, coords, gameTime2
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Trigger Now"
  arg3 = "Immediately starts a random chat mini-event round (dev only)."
  coords = true

  -- === HELPER FUNCTION: gameTime2(arg12, arg22, arg32) ===
  function gameTime2(arg12, arg22, arg32)
    local arg4, cmgCall5
    if arg32 then
      arg4 = TriggerServerEvent
      cmgCall5 = "95d9175710"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "95d9175710".
      arg4(cmgCall5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, coords, gameTime2)
end
textValue4(textValue5, workValue14)
