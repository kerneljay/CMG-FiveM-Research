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
local cmgOperation, cmgOperation2, dataCollection, dataCollection2, workingValue19, number22, dataCollection3, number24, number26, cmgOperation8, number, number2, number4, workingValue3, workingValue4, workingValue5, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, workingValue12, cmgOperation3, text3, workingValue13, number16, cmgOperation4, text4, text5, workingValue14
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
cmgOperation2 = "cfg/weapons"
-- Beginner: result below is config.
cmgOperation = cmgOperation(cmgOperation2)
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.registerDevMenuState
dataCollection = "Dev Misc"
dataCollection2 = {}
dataCollection2.selectingCrosshairPosition = false
dataCollection2.selectCrosshairDistance = 0.1
cmgOperation2 = cmgOperation2(dataCollection, dataCollection2)
dataCollection = {}
dataCollection2 = false
workingValue19 = nil
number22 = 0
dataCollection3 = {}
number24 = 0
number26 = 30000
cmgOperation8 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
function number()
  local localValue1, localValue2, localValue3, coords, gameTime2, iterator, workingValue21, text6, cmgOperation7, createVector32, labelValue, number3, workingValue, number5, createVector3, modelHash, number7, number8, number9, number10, number11, number13, stateFlag4, stateFlag6, stateFlag8, number17, stateFlag10, stateFlag11, stateFlag12, stateFlag14, stateFlag15, workingValue15, stateFlag18
  while true do
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
        localValue2 = dataCollection3
        localValue2 = #localValue2
        if localValue2 > 0 then
          localValue2 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          localValue2 = localValue2()
          localValue3 = number24
          if localValue2 < localValue3 then
            localValue2 = ipairs
            localValue3 = dataCollection3
            localValue2, localValue3, coords, gameTime2 = localValue2(localValue3)
            for iterator, workingValue21 in localValue2, localValue3, coords, gameTime2 do
              text6 = workingValue21.coords
              cmgOperation7 = DrawMarker
              createVector32 = 28
              labelValue = text6.x
              number3 = text6.y
              workingValue = text6.z
              number5 = 0.0
              createVector3 = 0.0
              modelHash = 0.0
              number7 = 0.0
              number8 = 0.0
              number9 = 0.0
              number10 = 0.35
              number11 = 0.35
              number13 = 0.5
              stateFlag4 = 255
              stateFlag6 = 200
              stateFlag8 = 0
              number17 = 180
              stateFlag10 = false
              stateFlag11 = false
              stateFlag12 = 2
              stateFlag14 = false
              stateFlag15 = nil
              workingValue15 = nil
              stateFlag18 = false
              cmgOperation7(createVector32, labelValue, number3, workingValue, number5, createVector3, modelHash, number7, number8, number9, number10, number11, number13, stateFlag4, stateFlag6, stateFlag8, number17, stateFlag10, stateFlag11, stateFlag12, stateFlag14, stateFlag15, workingValue15, stateFlag18)
              cmgOperation7 = CMG
              cmgOperation7 = cmgOperation7.DrawText3D
              createVector32 = vector3
              labelValue = text6.x
              number3 = text6.y
              workingValue = text6.z
              workingValue = workingValue + 0.6
              createVector32 = createVector32(labelValue, number3, workingValue)
              labelValue = workingValue21.label
              number3 = 0.35
              workingValue = 4
              cmgOperation7(createVector32, labelValue, number3, workingValue)
            end
        end
        else
          localValue2 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          localValue2 = localValue2()
          localValue3 = number24
          if localValue2 >= localValue3 then
            localValue2 = dataCollection3
            localValue2 = #localValue2
            if localValue2 > 0 then
              localValue2 = {}
              dataCollection3 = localValue2
            end
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
cmgOperation8(number)
cmgOperation8 = CMG

-- === HELPER FUNCTION (decompiler name: number; parameters: localValue1, localValue2) ===
function number(localValue1, localValue2)
  local localValue3, coords, gameTime2, iterator, workingValue21, text6, cmgOperation7, createVector32, labelValue, number3, workingValue, number5, createVector3, modelHash, number7, number8, number9, number10, number11, number13
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  coords = GetEntityCoords
  gameTime2 = localValue3
  -- Beginner: result below is entityCoords.
  coords = coords(gameTime2)
  if not localValue1 then
    localValue1 = 15.0
  end
  if localValue2 then
    dataCollection3 = localValue2
  else
    gameTime2 = {}
    iterator = ipairs
    workingValue21 = GetGamePool
    text6 = "CObject"
    workingValue21, text6, cmgOperation7, createVector32, labelValue, number3, workingValue, number5, createVector3, modelHash, number7, number8, number9, number10, number11, number13 = workingValue21(text6)
    iterator, workingValue21, text6, cmgOperation7 = iterator(workingValue21, text6, cmgOperation7, createVector32, labelValue, number3, workingValue, number5, createVector3, modelHash, number7, number8, number9, number10, number11, number13)
    for createVector32, labelValue in iterator, workingValue21, text6, cmgOperation7 do
      number3 = DoesEntityExist
      workingValue = labelValue
      number3 = number3(workingValue)
      if not number3 then
      else
        number3 = GetEntityCoords
        workingValue = labelValue
        -- Beginner: result below is entityCoords.
        number3 = number3(workingValue)
        workingValue = coords - number3
        workingValue = #workingValue
        if localValue1 >= workingValue then
          number5 = #gameTime2
          number5 = number5 + 1
          createVector3 = {}
          createVector3.coords = number3
          modelHash = GetEntityHeading
          number7 = labelValue
          -- Beginner: result below is heading.
          modelHash = modelHash(number7)
          createVector3.heading = modelHash
          createVector3.dist = workingValue
          modelHash = GetEntityModel
          number7 = labelValue
          -- Beginner: result below is modelHash.
          modelHash = modelHash(number7)
          createVector3.hash = modelHash
          gameTime2[number5] = createVector3
        end
      end
    end
    iterator = table
    iterator = iterator.sort
    workingValue21 = gameTime2

    -- === HELPER FUNCTION (decompiler name: text6; parameters: localValue12, localValue22) ===
    function text6(localValue12, localValue22)
      local localValue32, localValue4
      localValue32 = localValue12.dist
      localValue4 = localValue22.dist
      localValue32 = localValue32 < localValue4
      return localValue32
    end
    iterator(workingValue21, text6)
    iterator = {}
    dataCollection3 = iterator
    iterator = ipairs
    workingValue21 = gameTime2
    iterator, workingValue21, text6, cmgOperation7 = iterator(workingValue21)
    for createVector32, labelValue in iterator, workingValue21, text6, cmgOperation7 do
      number3 = labelValue.coords
      workingValue = dataCollection3
      workingValue = #workingValue
      number5 = workingValue + 1
      workingValue = dataCollection3
      createVector3 = {}
      createVector3.coords = number3
      modelHash = string
      modelHash = modelHash.format
      number7 = "#%d hash %d (%.1fm)"
      number8 = createVector32
      number9 = labelValue.hash
      number10 = labelValue.dist
      modelHash = modelHash(number7, number8, number9, number10)
      createVector3.label = modelHash
      workingValue[number5] = createVector3
    end
    iterator = print
    workingValue21 = "[devmenu] Nearby objects within "
    text6 = localValue1
    cmgOperation7 = "m (check F8 for list):"
    workingValue21 = workingValue21 .. text6 .. cmgOperation7
    iterator(workingValue21)
    iterator = ipairs
    workingValue21 = gameTime2
    iterator, workingValue21, text6, cmgOperation7 = iterator(workingValue21)
    for createVector32, labelValue in iterator, workingValue21, text6, cmgOperation7 do
      number3 = labelValue.coords
      workingValue = print
      number5 = string
      number5 = number5.format
      createVector3 = "  %d: hash %d  coords vector3(%.4f, %.4f, %.4f)  heading %.2f  (%.1fm)"
      modelHash = createVector32
      number7 = labelValue.hash
      number8 = number3.x
      number9 = number3.y
      number10 = number3.z
      number11 = labelValue.heading
      number13 = labelValue.dist
      number5, createVector3, modelHash, number7, number8, number9, number10, number11, number13 = number5(createVector3, modelHash, number7, number8, number9, number10, number11, number13)
      workingValue(number5, createVector3, modelHash, number7, number8, number9, number10, number11, number13)
    end
    iterator = #gameTime2
    if 0 == iterator then
      iterator = print
      workingValue21 = "[devmenu] No objects in range."
      iterator(workingValue21)
    else
      iterator = print
      workingValue21 = "[devmenu] Markers shown in-world for "
      text6 = number26
      text6 = text6 / 1000
      cmgOperation7 = "s."
      workingValue21 = workingValue21 .. text6 .. cmgOperation7
      iterator(workingValue21)
    end
  end
  gameTime2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  gameTime2 = gameTime2()
  iterator = number26
  gameTime2 = gameTime2 + iterator
  number24 = gameTime2
end
cmgOperation8.showNearbyObjectMarkers = number
cmgOperation8 = 0.25
number = 0.05
number2 = 5.0
number4 = 1.0

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1) ===
function workingValue3(localValue1)
  local localValue2, localValue3, coords
  localValue2 = IsModelInCdimage
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = IsModelValid
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      goto continueAtStep13
    end
  end
  localValue2 = false
  return localValue2
  ::continueAtStep13::
  localValue2 = RequestModel
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  while true do
    localValue3 = HasModelLoaded
    coords = localValue1
    localValue3 = localValue3(coords)
    if localValue3 then
      break
    end
    localValue3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue3 = localValue3()
    localValue3 = localValue3 - localValue2
    coords = 5000
    if localValue3 > coords then
      localValue3 = false
      return localValue3
    end
    localValue3 = Wait
    coords = 0
    localValue3(coords)
  end
  localValue3 = true
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, localValue2, localValue3, coords, gameTime2, iterator, workingValue21, text6, cmgOperation7
  localValue1 = GetGameplayCamRot
  localValue2 = 2
  localValue1 = localValue1(localValue2)
  localValue2 = math
  localValue2 = localValue2.rad
  localValue3 = localValue1.x
  localValue2 = localValue2(localValue3)
  localValue3 = math
  localValue3 = localValue3.rad
  coords = localValue1.z
  localValue3 = localValue3(coords)
  coords = math
  coords = coords.cos
  gameTime2 = localValue2
  coords = coords(gameTime2)
  gameTime2 = vector3
  iterator = math
  iterator = iterator.sin
  workingValue21 = localValue3
  iterator = iterator(workingValue21)
  iterator = -iterator
  iterator = iterator * coords
  workingValue21 = math
  workingValue21 = workingValue21.cos
  text6 = localValue3
  workingValue21 = workingValue21(text6)
  workingValue21 = workingValue21 * coords
  text6 = math
  text6 = text6.sin
  cmgOperation7 = localValue2
  text6, cmgOperation7 = text6(cmgOperation7)
  gameTime2 = gameTime2(iterator, workingValue21, text6, cmgOperation7)
  iterator = vector3
  workingValue21 = gameTime2.y
  workingValue21 = -workingValue21
  text6 = gameTime2.x
  cmgOperation7 = 0.0
  iterator = iterator(workingValue21, text6, cmgOperation7)
  workingValue21 = gameTime2
  text6 = iterator
  return workingValue21, text6
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local localValue2, localValue3, coords, gameTime2, iterator, workingValue21, text6, cmgOperation7, createVector32, labelValue, number3, workingValue, number5
  localValue2 = 0.78
  localValue3 = 0.985
  coords = ipairs
  gameTime2 = localValue1
  coords, gameTime2, iterator, workingValue21 = coords(gameTime2)
  for text6, cmgOperation7 in coords, gameTime2, iterator, workingValue21 do
    createVector32 = SetTextFont
    labelValue = 0
    createVector32(labelValue)
    createVector32 = SetTextScale
    labelValue = 0.3
    number3 = 0.3
    createVector32(labelValue, number3)
    createVector32 = SetTextColour
    labelValue = 255
    number3 = 255
    workingValue = 255
    number5 = 200
    createVector32(labelValue, number3, workingValue, number5)
    createVector32 = SetTextOutline
    createVector32()
    createVector32 = SetTextRightJustify
    labelValue = true
    createVector32(labelValue)
    createVector32 = SetTextWrap
    labelValue = 0.0
    number3 = localValue3
    createVector32(labelValue, number3)
    createVector32 = BeginTextCommandDisplayText
    labelValue = "STRING"
    createVector32(labelValue)
    createVector32 = AddTextComponentSubstringPlayerName
    labelValue = cmgOperation7
    createVector32(labelValue)
    createVector32 = EndTextCommandDisplayText
    labelValue = localValue3
    number3 = localValue2
    createVector32(labelValue, number3)
    localValue2 = localValue2 + 0.02
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1) ===
function workingValue7(localValue1)
  local localValue2, localValue3, coords, gameTime2, iterator, workingValue21, text6, cmgOperation7, createVector32, labelValue, number3, workingValue, number5
  localValue2 = GetGameplayCamCoord
  localValue2 = localValue2()
  localValue3 = select
  coords = 1
  gameTime2 = workingValue4
  gameTime2, iterator, workingValue21, text6, cmgOperation7, createVector32, labelValue, number3, workingValue, number5 = gameTime2()
  localValue3 = localValue3(coords, gameTime2, iterator, workingValue21, text6, cmgOperation7, createVector32, labelValue, number3, workingValue, number5)
  coords = localValue3 * localValue1
  coords = localValue2 + coords
  gameTime2 = StartShapeTestRay
  iterator = localValue2.x
  workingValue21 = localValue2.y
  text6 = localValue2.z
  cmgOperation7 = coords.x
  createVector32 = coords.y
  labelValue = coords.z
  number3 = -1
  workingValue = -1
  number5 = 0
  gameTime2 = gameTime2(iterator, workingValue21, text6, cmgOperation7, createVector32, labelValue, number3, workingValue, number5)
  iterator = GetShapeTestResult
  workingValue21 = gameTime2
  iterator, workingValue21, text6, cmgOperation7, createVector32 = iterator(workingValue21)
  if 1 == workingValue21 then
    return text6
  else
    return coords
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1, localValue2) ===
function workingValue8(localValue1, localValue2)
  local localValue3, coords, gameTime2, iterator, workingValue21, text6, cmgOperation7, createVector32
  localValue3 = CreateObjectNoOffset
  coords = localValue2
  gameTime2 = localValue1.x
  iterator = localValue1.y
  workingValue21 = localValue1.z
  text6 = false
  cmgOperation7 = false
  createVector32 = false
  -- Beginner: result below is objectEntity.
  localValue3 = localValue3(coords, gameTime2, iterator, workingValue21, text6, cmgOperation7, createVector32)
  coords = SetEntityAlpha
  gameTime2 = localValue3
  iterator = 120
  workingValue21 = false
  coords(gameTime2, iterator, workingValue21)
  coords = SetEntityCollision
  gameTime2 = localValue3
  iterator = false
  workingValue21 = false
  coords(gameTime2, iterator, workingValue21)
  coords = SetEntityCompletelyDisableCollision
  gameTime2 = localValue3
  iterator = true
  workingValue21 = false
  coords(gameTime2, iterator, workingValue21)
  coords = SetEntityHasGravity
  gameTime2 = localValue3
  iterator = false
  coords(gameTime2, iterator)
  coords = SetEntityDynamic
  gameTime2 = localValue3
  iterator = false
  coords(gameTime2, iterator)
  coords = FreezeEntityPosition
  gameTime2 = localValue3
  iterator = true
  -- Beginner: Freeze or unfreeze an entity in place.
  coords(gameTime2, iterator)
  coords = SetCanClimbOnEntity
  gameTime2 = localValue3
  iterator = false
  coords(gameTime2, iterator)
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2, localValue3, coords, gameTime2, iterator, workingValue21, text6, cmgOperation7, createVector32
  localValue1 = workingValue19
  if not localValue1 then
    return
  end
  localValue1 = GetEntityCoords
  localValue2 = workingValue19
  localValue3 = true
  -- Beginner: result below is entityCoords.
  localValue1 = localValue1(localValue2, localValue3)
  localValue2 = GetEntityHeading
  localValue3 = workingValue19
  -- Beginner: result below is heading.
  localValue2 = localValue2(localValue3)
  localValue3 = CreateObjectNoOffset
  coords = number22
  gameTime2 = localValue1.x
  iterator = localValue1.y
  workingValue21 = localValue1.z
  text6 = true
  cmgOperation7 = true
  createVector32 = false
  -- Beginner: result below is objectEntity.
  localValue3 = localValue3(coords, gameTime2, iterator, workingValue21, text6, cmgOperation7, createVector32)
  coords = SetEntityHeading
  gameTime2 = localValue3
  iterator = localValue2
  -- Beginner: Change the direction an entity is facing.
  coords(gameTime2, iterator)
  coords = PlaceObjectOnGroundProperly
  gameTime2 = localValue3
  coords(gameTime2)
  coords = FreezeEntityPosition
  gameTime2 = localValue3
  iterator = false
  -- Beginner: Freeze or unfreeze an entity in place.
  coords(gameTime2, iterator)
  coords = ResetEntityAlpha
  gameTime2 = localValue3
  coords(gameTime2)
  coords = SetEntityCollision
  gameTime2 = localValue3
  iterator = true
  workingValue21 = true
  coords(gameTime2, iterator, workingValue21)
  coords = string
  coords = coords.format
  gameTime2 = "Placed object: model=%d at vector3(%.3f, %.3f, %.3f), heading=%.2f"
  iterator = number22
  workingValue21 = localValue1.x
  text6 = localValue1.y
  cmgOperation7 = localValue1.z
  createVector32 = localValue2
  coords = coords(gameTime2, iterator, workingValue21, text6, cmgOperation7, createVector32)
  gameTime2 = print
  iterator = coords
  gameTime2(iterator)
  gameTime2 = TriggerEvent
  iterator = "chat:addMessage"
  workingValue21 = {}
  text6 = {}
  cmgOperation7 = "placer"
  createVector32 = coords
  text6[1] = cmgOperation7
  text6[2] = createVector32
  workingValue21.args = text6
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addMessage".
  gameTime2(iterator, workingValue21)
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
function workingValue10()
  local localValue1, localValue2
  localValue1 = workingValue19
  if not localValue1 then
    return
  end
  localValue1 = DoesEntityExist
  localValue2 = workingValue19
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = DeleteObject
    localValue2 = workingValue19
    localValue1(localValue2)
  end
  localValue1 = SetModelAsNoLongerNeeded
  localValue2 = number22
  localValue1(localValue2)
  localValue1 = nil
  workingValue19 = localValue1
  localValue1 = false
  dataCollection2 = localValue1
  localValue1 = 0
  number22 = localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1) ===
function workingValue11(localValue1)
  local localValue2
  localValue1 = localValue1 % 360.0
  if localValue1 < 0.0 then
    localValue1 = localValue1 + 360.0
  end
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
function workingValue12()
  local localValue1, localValue2, localValue3, coords
  localValue1 = DisableAllControlActions
  localValue2 = 0
  localValue1(localValue2)
  localValue1 = EnableControlAction
  localValue2 = 0
  localValue3 = 1
  coords = true
  localValue1(localValue2, localValue3, coords)
  localValue1 = EnableControlAction
  localValue2 = 0
  localValue3 = 2
  coords = true
  localValue1(localValue2, localValue3, coords)
  localValue1 = EnableControlAction
  localValue2 = 0
  localValue3 = 21
  coords = true
  localValue1(localValue2, localValue3, coords)
  localValue1 = EnableControlAction
  localValue2 = 0
  localValue3 = 172
  coords = true
  localValue1(localValue2, localValue3, coords)
  localValue1 = EnableControlAction
  localValue2 = 0
  localValue3 = 173
  coords = true
  localValue1(localValue2, localValue3, coords)
  localValue1 = EnableControlAction
  localValue2 = 0
  localValue3 = 174
  coords = true
  localValue1(localValue2, localValue3, coords)
  localValue1 = EnableControlAction
  localValue2 = 0
  localValue3 = 175
  coords = true
  localValue1(localValue2, localValue3, coords)
  localValue1 = EnableControlAction
  localValue2 = 0
  localValue3 = 10
  coords = true
  localValue1(localValue2, localValue3, coords)
  localValue1 = EnableControlAction
  localValue2 = 0
  localValue3 = 11
  coords = true
  localValue1(localValue2, localValue3, coords)
  localValue1 = EnableControlAction
  localValue2 = 0
  localValue3 = 45
  coords = true
  localValue1(localValue2, localValue3, coords)
  localValue1 = EnableControlAction
  localValue2 = 0
  localValue3 = 74
  coords = true
  localValue1(localValue2, localValue3, coords)
  localValue1 = EnableControlAction
  localValue2 = 0
  localValue3 = 44
  coords = true
  localValue1(localValue2, localValue3, coords)
  localValue1 = EnableControlAction
  localValue2 = 0
  localValue3 = 38
  coords = true
  localValue1(localValue2, localValue3, coords)
  localValue1 = EnableControlAction
  localValue2 = 0
  localValue3 = 47
  coords = true
  localValue1(localValue2, localValue3, coords)
  localValue1 = EnableControlAction
  localValue2 = 0
  localValue3 = 29
  coords = true
  localValue1(localValue2, localValue3, coords)
  localValue1 = EnableControlAction
  localValue2 = 0
  localValue3 = 23
  coords = true
  localValue1(localValue2, localValue3, coords)
  localValue1 = EnableControlAction
  localValue2 = 0
  localValue3 = 177
  coords = true
  localValue1(localValue2, localValue3, coords)
end
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3, coords, gameTime2, iterator, workingValue21, text6
  localValue2 = dataCollection2
  if localValue2 then
    localValue2 = TriggerEvent
    localValue3 = "chat:addMessage"
    coords = {}
    gameTime2 = {}
    iterator = "placer"
    workingValue21 = "^3Already placing. Press ^7Backspace ^3to cancel or ^7F ^3to confirm."
    gameTime2[1] = iterator
    gameTime2[2] = workingValue21
    coords.args = gameTime2
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addMessage".
    localValue2(localValue3, coords)
    return
  end
  localValue2 = localValue1
  localValue3 = tonumber
  coords = localValue2
  localValue3 = localValue3(coords)
  if localValue3 then
    localValue3 = tonumber
    coords = localValue2
    localValue3 = localValue3(coords)
    number22 = localValue3
  else
    localValue3 = GetHashKey
    coords = localValue2
    -- Beginner: result below is hash.
    localValue3 = localValue3(coords)
    number22 = localValue3
  end
  localValue3 = workingValue3
  coords = number22
  localValue3 = localValue3(coords)
  if not localValue3 then
    localValue3 = TriggerEvent
    coords = "chat:addMessage"
    gameTime2 = {}
    iterator = {}
    workingValue21 = "placer"
    text6 = "^1Failed to load model."
    iterator[1] = workingValue21
    iterator[2] = text6
    gameTime2.args = iterator
    localValue3(coords, gameTime2)
    return
  end
  localValue3 = workingValue7
  coords = 5.0
  localValue3 = localValue3(coords)
  coords = workingValue8
  gameTime2 = localValue3
  iterator = number22
  coords = coords(gameTime2, iterator)
  workingValue19 = coords
  coords = true
  dataCollection2 = coords
  coords = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: gameTime2() ===
  function gameTime2()
    local localValue12, localValue22, localValue32, localValue4, cmgOperation5, waitCall2, number23, number25, workingValue22, heading2, hashValue, waitCall, workingValue2, text, number6, workingValue6, text2, stateFlag, stateFlag2, stateFlag3, number12, number14, stateFlag5, stateFlag7, number15, stateFlag9, number18, number19, stateFlag13, number20, stateFlag16, stateFlag17, number21, stateFlag20, workingValue16, workingValue17, stateFlag21
    localValue12 = cmgOperation8
    localValue22 = 90
    localValue32 = 140
    localValue4 = {}
    -- Beginner: this function is the body of a background FiveM thread.

    -- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue13, localValue23) ===
    function cmgOperation5(localValue13, localValue23)
      local gameTime, workingValue18, workingValue20, stateFlag22
      gameTime = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      gameTime = gameTime()
      if localValue23 then
        workingValue18 = localValue32
        if workingValue18 then
          goto continueAtStep9
        end
      end
      workingValue18 = localValue22
      ::continueAtStep9::
      workingValue20 = localValue4
      workingValue20 = workingValue20[localValue13]
      if workingValue20 then
        workingValue20 = localValue4
        workingValue20 = workingValue20[localValue13]
        if not (gameTime >= workingValue20) then
          goto continueAtStep23
        end
      end
      workingValue20 = localValue4
      stateFlag22 = gameTime + workingValue18
      workingValue20[localValue13] = stateFlag22
      workingValue20 = true
      return workingValue20
      ::continueAtStep23::
      workingValue20 = false
      return workingValue20
    end
    while true do
      waitCall2 = dataCollection2
      if not waitCall2 then
        break
      end
      waitCall2 = Wait
      number23 = 0
      waitCall2(number23)
      waitCall2 = workingValue12
      waitCall2()
      waitCall2 = IsControlPressed
      number23 = 0
      number25 = 21
      waitCall2 = waitCall2(number23, number25)
      if waitCall2 then
        number23 = number
        if number23 then
          goto continueAtStep25
        end
      end
      number23 = localValue12
      ::continueAtStep25::
      if waitCall2 then
        number25 = number4
        if number25 then
          goto continueAtStep31
        end
      end
      number25 = number2
      ::continueAtStep31::
      workingValue22 = workingValue19
      if workingValue22 then
        workingValue22 = DoesEntityExist
        heading2 = workingValue19
        workingValue22 = workingValue22(heading2)
        if workingValue22 then
          goto continueAtStep42
        end
      end
      workingValue22 = workingValue10
      workingValue22()
      do break end
      ::continueAtStep42::
      workingValue22 = GetEntityCoords
      heading2 = workingValue19
      hashValue = true
      -- Beginner: result below is entityCoords.
      workingValue22 = workingValue22(heading2, hashValue)
      heading2 = GetEntityHeading
      hashValue = workingValue19
      -- Beginner: result below is heading.
      heading2 = heading2(hashValue)
      hashValue = workingValue4
      hashValue, waitCall = hashValue()
      workingValue2 = IsControlPressed
      text = 0
      number6 = 172
      workingValue2 = workingValue2(text, number6)
      if workingValue2 then
        workingValue2 = cmgOperation5
        text = "mf"
        number6 = waitCall2
        workingValue2 = workingValue2(text, number6)
        if workingValue2 then
          workingValue2 = hashValue * number23
          workingValue22 = workingValue22 + workingValue2
        end
      end
      workingValue2 = IsControlPressed
      text = 0
      number6 = 173
      workingValue2 = workingValue2(text, number6)
      if workingValue2 then
        workingValue2 = cmgOperation5
        text = "mb"
        number6 = waitCall2
        workingValue2 = workingValue2(text, number6)
        if workingValue2 then
          workingValue2 = hashValue * number23
          workingValue22 = workingValue22 - workingValue2
        end
      end
      workingValue2 = IsControlPressed
      text = 0
      number6 = 174
      workingValue2 = workingValue2(text, number6)
      if workingValue2 then
        workingValue2 = cmgOperation5
        text = "ml"
        number6 = waitCall2
        workingValue2 = workingValue2(text, number6)
        if workingValue2 then
          workingValue2 = waitCall * number23
          workingValue22 = workingValue22 - workingValue2
        end
      end
      workingValue2 = IsControlPressed
      text = 0
      number6 = 175
      workingValue2 = workingValue2(text, number6)
      if workingValue2 then
        workingValue2 = cmgOperation5
        text = "mr"
        number6 = waitCall2
        workingValue2 = workingValue2(text, number6)
        if workingValue2 then
          workingValue2 = waitCall * number23
          workingValue22 = workingValue22 + workingValue2
        end
      end
      workingValue2 = IsControlPressed
      text = 0
      number6 = 10
      workingValue2 = workingValue2(text, number6)
      if workingValue2 then
        workingValue2 = cmgOperation5
        text = "mz+"
        number6 = waitCall2
        workingValue2 = workingValue2(text, number6)
        if workingValue2 then
          workingValue2 = vector3
          text = 0.0
          number6 = 0.0
          workingValue6 = number23
          workingValue2 = workingValue2(text, number6, workingValue6)
          workingValue22 = workingValue22 + workingValue2
        end
      end
      workingValue2 = IsControlPressed
      text = 0
      number6 = 11
      workingValue2 = workingValue2(text, number6)
      if workingValue2 then
        workingValue2 = cmgOperation5
        text = "mz-"
        number6 = waitCall2
        workingValue2 = workingValue2(text, number6)
        if workingValue2 then
          workingValue2 = vector3
          text = 0.0
          number6 = 0.0
          workingValue6 = number23
          workingValue2 = workingValue2(text, number6, workingValue6)
          workingValue22 = workingValue22 - workingValue2
        end
      end
      workingValue2 = IsControlJustPressed
      text = 0
      number6 = 45
      workingValue2 = workingValue2(text, number6)
      if workingValue2 then
        workingValue2 = workingValue7
        text = 10.0
        workingValue2 = workingValue2(text)
        workingValue22 = workingValue2
      end
      workingValue2 = IsControlJustPressed
      text = 0
      number6 = 74
      workingValue2 = workingValue2(text, number6)
      if workingValue2 then
        workingValue2 = SetEntityCoordsNoOffset
        text = workingValue19
        number6 = workingValue22.x
        workingValue6 = workingValue22.y
        text2 = workingValue22.z
        stateFlag = true
        stateFlag2 = true
        stateFlag3 = true
        -- Beginner: Move/teleport an entity to new coordinates.
        workingValue2(text, number6, workingValue6, text2, stateFlag, stateFlag2, stateFlag3)
        workingValue2 = PlaceObjectOnGroundProperly
        text = workingValue19
        workingValue2(text)
        workingValue2 = GetEntityCoords
        text = workingValue19
        number6 = true
        -- Beginner: result below is entityCoords.
        workingValue2 = workingValue2(text, number6)
        workingValue22 = workingValue2
      end
      workingValue2 = IsControlPressed
      text = 0
      number6 = 44
      workingValue2 = workingValue2(text, number6)
      if workingValue2 then
        workingValue2 = cmgOperation5
        text = "rq"
        number6 = waitCall2
        workingValue2 = workingValue2(text, number6)
        if workingValue2 then
          heading2 = heading2 - number25
        end
      end
      workingValue2 = IsControlPressed
      text = 0
      number6 = 38
      workingValue2 = workingValue2(text, number6)
      if workingValue2 then
        workingValue2 = cmgOperation5
        text = "re"
        number6 = waitCall2
        workingValue2 = workingValue2(text, number6)
        if workingValue2 then
          heading2 = heading2 + number25
        end
      end
      workingValue2 = workingValue11
      text = heading2
      workingValue2 = workingValue2(text)
      heading2 = workingValue2
      workingValue2 = IsControlJustPressed
      text = 0
      number6 = 47
      workingValue2 = workingValue2(text, number6)
      if workingValue2 then
        workingValue2 = math
        workingValue2 = workingValue2.max
        text = 0.01
        number6 = localValue12 / 2.0
        workingValue2 = workingValue2(text, number6)
        localValue12 = workingValue2
        workingValue2 = TriggerEvent
        text = "chat:addMessage"
        number6 = {}
        workingValue6 = {}
        text2 = "placer"
        stateFlag = "Grid step: %.3f"
        stateFlag2 = stateFlag
        stateFlag = stateFlag.format
        stateFlag3 = localValue12
        stateFlag, stateFlag2, stateFlag3, number12, number14, stateFlag5, stateFlag7, number15, stateFlag9, number18, number19, stateFlag13, number20, stateFlag16, stateFlag17, number21, stateFlag20, workingValue16, workingValue17, stateFlag21 = stateFlag(stateFlag2, stateFlag3)
        workingValue6[1] = text2
        workingValue6[2] = stateFlag
        workingValue6[3] = stateFlag2
        workingValue6[4] = stateFlag3
        workingValue6[5] = number12
        workingValue6[6] = number14
        workingValue6[7] = stateFlag5
        workingValue6[8] = stateFlag7
        workingValue6[9] = number15
        workingValue6[10] = stateFlag9
        workingValue6[11] = number18
        workingValue6[12] = number19
        workingValue6[13] = stateFlag13
        workingValue6[14] = number20
        workingValue6[15] = stateFlag16
        workingValue6[16] = stateFlag17
        workingValue6[17] = number21
        workingValue6[18] = stateFlag20
        workingValue6[19] = workingValue16
        workingValue6[20] = workingValue17
        workingValue6[21] = stateFlag21
        number6.args = workingValue6
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addMessage".
        workingValue2(text, number6)
      end
      workingValue2 = IsControlJustPressed
      text = 0
      number6 = 29
      workingValue2 = workingValue2(text, number6)
      if workingValue2 then
        workingValue2 = math
        workingValue2 = workingValue2.min
        text = 10.0
        number6 = localValue12 * 2.0
        workingValue2 = workingValue2(text, number6)
        localValue12 = workingValue2
        workingValue2 = TriggerEvent
        text = "chat:addMessage"
        number6 = {}
        workingValue6 = {}
        text2 = "placer"
        stateFlag = "Grid step: %.3f"
        stateFlag2 = stateFlag
        stateFlag = stateFlag.format
        stateFlag3 = localValue12
        stateFlag, stateFlag2, stateFlag3, number12, number14, stateFlag5, stateFlag7, number15, stateFlag9, number18, number19, stateFlag13, number20, stateFlag16, stateFlag17, number21, stateFlag20, workingValue16, workingValue17, stateFlag21 = stateFlag(stateFlag2, stateFlag3)
        workingValue6[1] = text2
        workingValue6[2] = stateFlag
        workingValue6[3] = stateFlag2
        workingValue6[4] = stateFlag3
        workingValue6[5] = number12
        workingValue6[6] = number14
        workingValue6[7] = stateFlag5
        workingValue6[8] = stateFlag7
        workingValue6[9] = number15
        workingValue6[10] = stateFlag9
        workingValue6[11] = number18
        workingValue6[12] = number19
        workingValue6[13] = stateFlag13
        workingValue6[14] = number20
        workingValue6[15] = stateFlag16
        workingValue6[16] = stateFlag17
        workingValue6[17] = number21
        workingValue6[18] = stateFlag20
        workingValue6[19] = workingValue16
        workingValue6[20] = workingValue17
        workingValue6[21] = stateFlag21
        number6.args = workingValue6
        workingValue2(text, number6)
      end
      workingValue2 = IsControlJustPressed
      text = 0
      number6 = 23
      workingValue2 = workingValue2(text, number6)
      if workingValue2 then
        workingValue2 = workingValue9
        workingValue2()
        workingValue2 = workingValue10
        workingValue2()
        break
      end
      workingValue2 = IsControlJustPressed
      text = 0
      number6 = 177
      workingValue2 = workingValue2(text, number6)
      if workingValue2 then
        workingValue2 = workingValue10
        workingValue2()
        workingValue2 = TriggerEvent
        text = "chat:addMessage"
        number6 = {}
        workingValue6 = {}
        text2 = "placer"
        stateFlag = "^3Placement cancelled."
        workingValue6[1] = text2
        workingValue6[2] = stateFlag
        number6.args = workingValue6
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addMessage".
        workingValue2(text, number6)
        break
      end
      workingValue2 = SetEntityCoordsNoOffset
      text = workingValue19
      number6 = workingValue22.x
      workingValue6 = workingValue22.y
      text2 = workingValue22.z
      stateFlag = true
      stateFlag2 = true
      stateFlag3 = true
      -- Beginner: Move/teleport an entity to new coordinates.
      workingValue2(text, number6, workingValue6, text2, stateFlag, stateFlag2, stateFlag3)
      workingValue2 = SetEntityHeading
      text = workingValue19
      number6 = heading2
      -- Beginner: Change the direction an entity is facing.
      workingValue2(text, number6)
      workingValue2 = DrawMarker
      text = 28
      number6 = workingValue22.x
      workingValue6 = workingValue22.y
      text2 = workingValue22.z
      text2 = text2 - 0.02
      stateFlag = 0.0
      stateFlag2 = 0.0
      stateFlag3 = 0.0
      number12 = 0.0
      number14 = 0.0
      stateFlag5 = 0.0
      stateFlag7 = 0.12
      number15 = 0.12
      stateFlag9 = 0.12
      number18 = 255
      number19 = 255
      stateFlag13 = 255
      number20 = 120
      stateFlag16 = false
      stateFlag17 = true
      number21 = 2
      stateFlag20 = false
      workingValue16 = nil
      workingValue17 = nil
      stateFlag21 = false
      workingValue2(text, number6, workingValue6, text2, stateFlag, stateFlag2, stateFlag3, number12, number14, stateFlag5, stateFlag7, number15, stateFlag9, number18, number19, stateFlag13, number20, stateFlag16, stateFlag17, number21, stateFlag20, workingValue16, workingValue17, stateFlag21)
      workingValue2 = workingValue5
      text = {}
      number6 = "~b~Object Placer~s~  (Step: %.3f | Rot: %.1f)"
      workingValue6 = number6
      number6 = number6.format
      text2 = number23
      stateFlag = number25
      number6 = number6(workingValue6, text2, stateFlag)
      workingValue6 = "Arrows: move  |  PgUp/PgDn: Z"
      text2 = "Q/E: rotate   |  H: snap to ground  |  R: snap to aim"
      stateFlag = "G/B: grid step +/-"
      stateFlag2 = "F: confirm    |  Backspace: cancel"
      text[1] = number6
      text[2] = workingValue6
      text[3] = text2
      text[4] = stateFlag
      text[5] = stateFlag2
      workingValue2(text)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  coords(gameTime2)
end
cmgOperation3.placeObject = text3
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.registerDevMenuItems
text3 = "Spawning"

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, localValue2, localValue3, coords, gameTime2
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Spawn Vehicle By Name"
  localValue3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5, waitCall2, number23, number25
    if localValue32 then
      localValue4 = CMG
      localValue4 = localValue4.getPlayerCoords
      -- Beginner: result below is playerCoords.
      localValue4 = localValue4()
      cmgOperation5 = CMG
      cmgOperation5 = cmgOperation5.clientPrompt
      waitCall2 = "Spawn Code"
      number23 = ""

      -- === HELPER FUNCTION (decompiler name: number25; parameters: localValue13) ===
      function number25(localValue13)
        local localValue23, gameTime, workingValue18, workingValue20, stateFlag22, heading, cmgOperation6, stateFlag23, stateFlag24
        localValue23 = CMG
        localValue23 = localValue23.requestEntitySpawn
        gameTime = "devmenu"
        workingValue18 = localValue13
        localValue23(gameTime, workingValue18)
        localValue23 = CMG
        localValue23 = localValue23.spawnVehicle
        gameTime = localValue13
        workingValue18 = localValue4.x
        workingValue20 = localValue4.y
        stateFlag22 = localValue4.z
        heading = GetEntityHeading
        cmgOperation6 = CMG
        cmgOperation6 = cmgOperation6.getPlayerPed
        cmgOperation6, stateFlag23, stateFlag24 = cmgOperation6()
        -- Beginner: result below is heading.
        heading = heading(cmgOperation6, stateFlag23, stateFlag24)
        cmgOperation6 = true
        stateFlag23 = true
        stateFlag24 = true
        localValue23 = localValue23(gameTime, workingValue18, workingValue20, stateFlag22, heading, cmgOperation6, stateFlag23, stateFlag24)
        gameTime = CMG
        gameTime = gameTime.applyMaxDefaultModsToVehicle
        workingValue18 = localValue23
        gameTime(workingValue18)
      end
      cmgOperation5(waitCall2, number23, number25)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Spawn Object By Name"
  localValue3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5, waitCall2, number23
    if localValue32 then
      localValue4 = CMG
      localValue4 = localValue4.clientPrompt
      cmgOperation5 = "Object Name"
      waitCall2 = ""

      -- === HELPER FUNCTION (decompiler name: number23; parameters: localValue13) ===
      function number23(localValue13)
        local localValue23, gameTime
        localValue23 = CMG
        localValue23 = localValue23.placeObject
        gameTime = localValue13
        localValue23(gameTime)
        localValue23 = RageUI
        localValue23 = localValue23.CloseAll
        localValue23()
      end
      localValue4(cmgOperation5, waitCall2, number23)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Spawn Object By Hash"
  localValue3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5, waitCall2, number23
    if localValue32 then
      localValue4 = CMG
      localValue4 = localValue4.clientPrompt
      cmgOperation5 = "Object Name"
      waitCall2 = ""

      -- === HELPER FUNCTION (decompiler name: number23; parameters: localValue13) ===
      function number23(localValue13)
        local localValue23, gameTime
        localValue23 = CMG
        localValue23 = localValue23.placeObject
        gameTime = localValue13
        localValue23(gameTime)
        localValue23 = RageUI
        localValue23 = localValue23.CloseAll
        localValue23()
      end
      localValue4(cmgOperation5, waitCall2, number23)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Spawn Weapon"
  localValue3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5, waitCall2, number23
    if localValue32 then
      localValue4 = CMG
      localValue4 = localValue4.clientPrompt
      cmgOperation5 = "Weapon:"
      waitCall2 = ""

      -- === HELPER FUNCTION (decompiler name: number23; parameters: localValue13) ===
      function number23(localValue13)
        local localValue23, gameTime, workingValue18, workingValue20, stateFlag22, heading
        if nil ~= localValue13 and "" ~= localValue13 then
          localValue23 = GiveWeaponToPed
          gameTime = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          gameTime = gameTime()
          workingValue18 = GetHashKey
          workingValue20 = localValue13
          -- Beginner: result below is hash.
          workingValue18 = workingValue18(workingValue20)
          workingValue20 = 250
          stateFlag22 = false
          heading = false
          localValue23(gameTime, workingValue18, workingValue20, stateFlag22, heading)
        end
      end
      localValue4(cmgOperation5, waitCall2, number23)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Clear Vehicles"
  localValue3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5
    if localValue32 then
      localValue4 = ExecuteCommand
      cmgOperation5 = "clearvehicles"
      localValue4(cmgOperation5)
      localValue4 = notify
      cmgOperation5 = "~g~Triggered clear vehicles"
      -- Beginner: Show a notification to the player.
      localValue4(cmgOperation5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Clear Objects"
  localValue3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5
    if localValue32 then
      localValue4 = ExecuteCommand
      cmgOperation5 = "clearobjects"
      localValue4(cmgOperation5)
      localValue4 = notify
      cmgOperation5 = "~g~Triggered clear objects"
      -- Beginner: Show a notification to the player.
      localValue4(cmgOperation5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Clear Peds"
  localValue3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5
    if localValue32 then
      localValue4 = ExecuteCommand
      cmgOperation5 = "clearpeds"
      localValue4(cmgOperation5)
      localValue4 = notify
      cmgOperation5 = "~g~Triggered clear peds"
      -- Beginner: Show a notification to the player.
      localValue4(cmgOperation5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Clear Weapons"
  localValue3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5, waitCall2
    if localValue32 then
      localValue4 = RemoveAllPedWeapons
      cmgOperation5 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      cmgOperation5 = cmgOperation5()
      waitCall2 = false
      localValue4(cmgOperation5, waitCall2)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
end
cmgOperation3(text3, workingValue13)
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3, coords, gameTime2, iterator, workingValue21
  localValue2 = CMG
  localValue2 = localValue2.getVehicleIdFromModel
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue3 = "Vehicle"
    coords = localValue2
    return localValue3, coords
  end
  localValue3 = cmgOperation.weaponHashToModels
  localValue3 = localValue3[localValue1]
  if localValue3 then
    coords = "Weapon"
    gameTime2 = localValue3
    return coords, gameTime2
  end
  coords = GetLabelText
  gameTime2 = localValue1
  coords = coords(gameTime2)
  if coords and "NULL" ~= coords then
    gameTime2 = "LabelText"
    iterator = coords
    return gameTime2, iterator
  end
  gameTime2 = "Unknown"
  iterator = tostring
  workingValue21 = localValue1
  iterator, workingValue21 = iterator(workingValue21)
  return gameTime2, iterator, workingValue21
end
cmgOperation3.resolveHash = text3
cmgOperation3 = nil

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local localValue12, localValue22, localValue32, localValue4, cmgOperation5, waitCall2, number23, number25, workingValue22
    while true do
      localValue12 = cmgOperation3
      if not localValue12 then
        break
      end
      localValue12 = ipairs
      localValue22 = GetGamePool
      localValue32 = "CObject"
      localValue22, localValue32, localValue4, cmgOperation5, waitCall2, number23, number25, workingValue22 = localValue22(localValue32)
      localValue12, localValue22, localValue32, localValue4 = localValue12(localValue22, localValue32, localValue4, cmgOperation5, waitCall2, number23, number25, workingValue22)
      for cmgOperation5, waitCall2 in localValue12, localValue22, localValue32, localValue4 do
        number23 = GetEntityModel
        number25 = waitCall2
        -- Beginner: result below is modelHash.
        number23 = number23(number25)
        number25 = cmgOperation3
        if number23 == number25 then
          number23 = SetEntityDrawOutline
          number25 = waitCall2
          workingValue22 = true
          number23(number25, workingValue22)
        end
      end
      localValue12 = Citizen
      localValue12 = localValue12.Wait
      localValue22 = 0
      localValue12(localValue22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, localValue2, localValue3, coords
  localValue1 = CMG
  localValue1 = localValue1.clientPrompt
  localValue2 = "Enter Model List"
  localValue3 = ""

  -- === HELPER FUNCTION: coords(localValue12) ===
  function coords(localValue12)
    local localValue22, localValue32, localValue4, cmgOperation5, waitCall2, number23, number25, workingValue22, heading2, hashValue, waitCall, workingValue2
    localValue22 = CMG
    localValue22 = localValue22.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue22 = localValue22()
    localValue32 = GetEntityForwardVector
    localValue4 = PlayerPedId
    localValue4, cmgOperation5, waitCall2, number23, number25, workingValue22, heading2, hashValue, waitCall, workingValue2 = localValue4()
    localValue32 = localValue32(localValue4, cmgOperation5, waitCall2, number23, number25, workingValue22, heading2, hashValue, waitCall, workingValue2)
    localValue32 = localValue32 * 5.0
    localValue22 = localValue22 + localValue32
    localValue32 = 0
    localValue4 = splitString
    cmgOperation5 = localValue12
    waitCall2 = "\n"
    localValue4 = localValue4(cmgOperation5, waitCall2)
    cmgOperation5 = pairs
    waitCall2 = localValue4
    cmgOperation5, waitCall2, number23, number25 = cmgOperation5(waitCall2)
    for workingValue22, heading2 in cmgOperation5, waitCall2, number23, number25 do
      hashValue = GetHashKey
      waitCall = heading2
      -- Beginner: result below is hash.
      hashValue = hashValue(waitCall)
      waitCall = IsModelValid
      workingValue2 = hashValue
      waitCall = waitCall(workingValue2)
      if waitCall then
        while localValue32 > 15 do
          waitCall = Wait
          workingValue2 = 0
          waitCall(workingValue2)
        end
        localValue32 = localValue32 + 1
        waitCall = Citizen
        waitCall = waitCall.CreateThread

        -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
        function workingValue2()
          local localValue13, localValue23, gameTime, workingValue18, workingValue20, stateFlag22, heading, cmgOperation6, stateFlag23, stateFlag24
          localValue13 = CMG
          localValue13 = localValue13.loadModel
          localValue23 = hashValue
          localValue13 = localValue13(localValue23)
          if localValue13 then
            localValue23 = 0
            gameTime = IsModelAVehicle
            workingValue18 = hashValue
            gameTime = gameTime(workingValue18)
            if gameTime then
              gameTime = CreateVehicle
              workingValue18 = hashValue
              workingValue20 = localValue22.x
              stateFlag22 = localValue22.y
              heading = localValue22.z
              cmgOperation6 = 0.0
              stateFlag23 = false
              stateFlag24 = false
              -- Beginner: result below is vehicleEntity.
              gameTime = gameTime(workingValue18, workingValue20, stateFlag22, heading, cmgOperation6, stateFlag23, stateFlag24)
              localValue23 = gameTime
              gameTime = CMG
              gameTime = gameTime.initLocalVehicle
              workingValue18 = localValue23
              gameTime(workingValue18)
            else
              gameTime = CreateObjectNoOffset
              workingValue18 = hashValue
              workingValue20 = localValue22.x
              stateFlag22 = localValue22.y
              heading = localValue22.z
              cmgOperation6 = false
              stateFlag23 = false
              stateFlag24 = false
              -- Beginner: result below is objectEntity.
              gameTime = gameTime(workingValue18, workingValue20, stateFlag22, heading, cmgOperation6, stateFlag23, stateFlag24)
              localValue23 = gameTime
            end
            gameTime = Wait
            workingValue18 = 2000
            gameTime(workingValue18)
            gameTime = DeleteEntity
            workingValue18 = localValue23
            -- Beginner: Delete a GTA entity.
            gameTime(workingValue18)
          end
          localValue23 = localValue32
          localValue23 = localValue23 - 1
          localValue32 = localValue23
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        waitCall(workingValue2)
      end
    end
  end
  localValue1(localValue2, localValue3, coords)
end
number16 = 0
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, coords, gameTime2
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Get Customization [JSON]"
  localValue3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5, waitCall2, number23
    if localValue32 then
      localValue4 = CMG
      localValue4 = localValue4.clientPrompt
      cmgOperation5 = "Customization [JSON]"
      waitCall2 = json
      waitCall2 = waitCall2.encode
      number23 = tCMG
      number23 = number23.getCustomization
      number23 = number23()
      waitCall2 = waitCall2(number23)
      if not waitCall2 then
        waitCall2 = ""
      end

      -- === HELPER FUNCTION (decompiler name: number23; parameters: none) ===
      function number23()
        local localValue13, localValue23
      end
      localValue4(cmgOperation5, waitCall2, number23)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Set Customization [JSON]"
  localValue3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5, waitCall2, number23
    if localValue32 then
      localValue4 = CMG
      localValue4 = localValue4.clientPrompt
      cmgOperation5 = "Customization [JSON]"
      waitCall2 = ""

      -- === HELPER FUNCTION (decompiler name: number23; parameters: localValue13) ===
      function number23(localValue13)
        local localValue23, gameTime, workingValue18
        localValue23 = tCMG
        localValue23 = localValue23.setCustomization
        gameTime = json
        gameTime = gameTime.decode
        workingValue18 = localValue13
        gameTime, workingValue18 = gameTime(workingValue18)
        localValue23(gameTime, workingValue18)
      end
      localValue4(cmgOperation5, waitCall2, number23)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
end
cmgOperation4.drawCustomisationDebugButtons = text4
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.registerDevMenuItems
text4 = "Customisation"

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.drawCustomisationDebugButtons
  localValue1()
end
cmgOperation4(text4, text5)
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.registerDevMenuItems
text4 = "Miscellaneous"

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, localValue3, coords, gameTime2, iterator
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Show nearby objects"
  localValue3 = "Lists all objects within 15m and draws markers with hash/distance. Check F8."
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5
    if localValue32 then
      localValue4 = CMG
      localValue4 = localValue4.showNearbyObjectMarkers
      cmgOperation5 = 15.0
      localValue4(cmgOperation5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Drop Lootbag"
  localValue3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5
    if localValue32 then
      localValue4 = TriggerServerEvent
      cmgOperation5 = "e968644885"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e968644885".
      localValue4(cmgOperation5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Preview Daily Reward Crate"
  localValue3 = "Opens the loot box animation without granting a reward."
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5
    if localValue32 then
      localValue4 = TriggerServerEvent
      cmgOperation5 = "d3ffce18f5"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d3ffce18f5".
      localValue4(cmgOperation5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Reset Daily Reward"
  localValue3 = "Sets last claim to yesterday so you can claim again today."
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5
    if localValue32 then
      localValue4 = TriggerServerEvent
      cmgOperation5 = "1ca287f0e0"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1ca287f0e0".
      localValue4(cmgOperation5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Open Scene Menu (RP)"
  localValue3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5
    if localValue32 then
      localValue4 = TriggerEvent
      cmgOperation5 = "acaf25d389"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "acaf25d389".
      localValue4(cmgOperation5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Preview Marker"
  localValue3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5, waitCall2, number23, number25, workingValue22, heading2, hashValue, waitCall, workingValue2, text, number6, workingValue6, text2, stateFlag, stateFlag2, stateFlag3, number12, number14, stateFlag5, stateFlag7, number15, stateFlag9, number18, number19, stateFlag13
    localValue4 = number16
    if localValue4 then
      localValue4 = number16
      if localValue4 > 0 then
        localValue4 = CMG
        localValue4 = localValue4.getPlayerCoords
        -- Beginner: result below is playerCoords.
        localValue4 = localValue4()
        cmgOperation5 = GetEntityForwardVector
        waitCall2 = PlayerPedId
        waitCall2, number23, number25, workingValue22, heading2, hashValue, waitCall, workingValue2, text, number6, workingValue6, text2, stateFlag, stateFlag2, stateFlag3, number12, number14, stateFlag5, stateFlag7, number15, stateFlag9, number18, number19, stateFlag13 = waitCall2()
        cmgOperation5 = cmgOperation5(waitCall2, number23, number25, workingValue22, heading2, hashValue, waitCall, workingValue2, text, number6, workingValue6, text2, stateFlag, stateFlag2, stateFlag3, number12, number14, stateFlag5, stateFlag7, number15, stateFlag9, number18, number19, stateFlag13)
        cmgOperation5 = cmgOperation5 * 2.0
        localValue4 = localValue4 + cmgOperation5
        cmgOperation5 = DrawMarker
        waitCall2 = number16
        number23 = localValue4.x
        number25 = localValue4.y
        workingValue22 = localValue4.z
        heading2 = 0.0
        hashValue = 0.0
        waitCall = 0.0
        workingValue2 = 0.0
        text = 0.0
        number6 = 0.0
        workingValue6 = 1.0
        text2 = 1.0
        stateFlag = 1.0
        stateFlag2 = 0
        stateFlag3 = 255
        number12 = 125
        number14 = 125
        stateFlag5 = false
        stateFlag7 = false
        number15 = 2
        stateFlag9 = false
        number18 = nil
        number19 = nil
        stateFlag13 = false
        cmgOperation5(waitCall2, number23, number25, workingValue22, heading2, hashValue, waitCall, workingValue2, text, number6, workingValue6, text2, stateFlag, stateFlag2, stateFlag3, number12, number14, stateFlag5, stateFlag7, number15, stateFlag9, number18, number19, stateFlag13)
      end
    end
    if localValue32 then
      localValue4 = CMG
      localValue4 = localValue4.clientPrompt
      cmgOperation5 = "Enter ID"
      waitCall2 = ""

      -- === HELPER FUNCTION (decompiler name: number23; parameters: localValue13) ===
      function number23(localValue13)
        local localValue23, gameTime
        localValue23 = tonumber
        gameTime = localValue13
        localValue23 = localValue23(gameTime)
        if not localValue23 then
          localValue23 = 0
        end
        number16 = localValue23
      end
      localValue4(cmgOperation5, waitCall2, number23)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Get Camera Pos & Rot"
  localValue3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5, waitCall2, number23, number25, workingValue22, heading2, hashValue, waitCall, workingValue2, text, number6
    if localValue32 then
      localValue4 = GetFinalRenderedCamCoord
      localValue4 = localValue4()
      cmgOperation5 = GetFinalRenderedCamRot
      waitCall2 = 2
      cmgOperation5 = cmgOperation5(waitCall2)
      waitCall2 = CMG
      waitCall2 = waitCall2.clientPrompt
      number23 = "Pos & Rot"
      number25 = string
      number25 = number25.format
      workingValue22 = "vector3(%s, %s, %s), vector3(%s, %s, %s)"
      heading2 = localValue4.x
      hashValue = localValue4.y
      waitCall = localValue4.z
      workingValue2 = cmgOperation5.x
      text = cmgOperation5.y
      number6 = cmgOperation5.z
      number25 = number25(workingValue22, heading2, hashValue, waitCall, workingValue2, text, number6)

      -- === HELPER FUNCTION (decompiler name: workingValue22; parameters: none) ===
      function workingValue22()
        local localValue13, localValue23
      end
      waitCall2(number23, number25, workingValue22)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Clear Watchlist Of Old Staff"
  localValue3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5
    if localValue32 then
      localValue4 = TriggerServerEvent
      cmgOperation5 = "5f546e002c"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5f546e002c".
      localValue4(cmgOperation5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Test Models"
  localValue3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4
    if localValue32 then
      localValue4 = workingValue13
      localValue4()
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Resolve Hash"
  localValue3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5, waitCall2, number23
    if localValue32 then
      localValue4 = CMG
      localValue4 = localValue4.clientPrompt
      cmgOperation5 = "Enter Number"
      waitCall2 = ""

      -- === HELPER FUNCTION (decompiler name: number23; parameters: localValue13) ===
      function number23(localValue13)
        local localValue23, gameTime, workingValue18, workingValue20, stateFlag22, heading, cmgOperation6, stateFlag23
        localValue23 = tonumber
        gameTime = localValue13
        localValue23 = localValue23(gameTime)
        if not localValue23 then
          gameTime = notify
          workingValue18 = "~r~This is not a number dumbass."
          -- Beginner: Show a notification to the player.
          gameTime(workingValue18)
          return
        end
        gameTime = CMG
        gameTime = gameTime.resolveHash
        workingValue18 = localValue23 & 4294967295
        gameTime, workingValue18 = gameTime(workingValue18)
        if "Unknown" == gameTime then
          workingValue20 = CMG
          workingValue20 = workingValue20.resolveHash
          stateFlag22 = localValue23
          workingValue20, stateFlag22 = workingValue20(stateFlag22)
          workingValue18 = stateFlag22
          gameTime = workingValue20
        end
        workingValue20 = notify
        stateFlag22 = string
        stateFlag22 = stateFlag22.format
        heading = [[
~y~Resolved Information:
Type: %s
Name: %s]]
        cmgOperation6 = gameTime
        stateFlag23 = workingValue18
        stateFlag22, heading, cmgOperation6, stateFlag23 = stateFlag22(heading, cmgOperation6, stateFlag23)
        workingValue20(stateFlag22, heading, cmgOperation6, stateFlag23)
      end
      localValue4(cmgOperation5, waitCall2, number23)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Highlight Object"
  localValue3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5, waitCall2, number23
    if localValue32 then
      localValue4 = CMG
      localValue4 = localValue4.clientPrompt
      cmgOperation5 = "Object Name / Hash"
      waitCall2 = ""

      -- === HELPER FUNCTION (decompiler name: number23; parameters: localValue13) ===
      function number23(localValue13)
        local localValue23, gameTime, workingValue18, workingValue20, stateFlag22
        if "" == localValue13 then
          localValue23 = nil
          cmgOperation3 = localValue23
        else
          localValue23 = tonumber
          gameTime = localValue13
          localValue23 = localValue23(gameTime)
          if not localValue23 then
            gameTime = GetHashKey
            workingValue18 = localValue13
            -- Beginner: result below is hash.
            gameTime = gameTime(workingValue18)
            localValue23 = gameTime
          end
          gameTime = IsModelInCdimage
          workingValue18 = localValue23
          gameTime = gameTime(workingValue18)
          if gameTime then
            gameTime = IsModelValid
            workingValue18 = localValue23
            gameTime = gameTime(workingValue18)
            if gameTime then
              goto continueAtStep33
            end
          end
          gameTime = notify
          workingValue18 = string
          workingValue18 = workingValue18.format
          workingValue20 = "Model %s is not valid"
          stateFlag22 = localValue13
          workingValue18, workingValue20, stateFlag22 = workingValue18(workingValue20, stateFlag22)
          -- Beginner: Show a notification to the player.
          gameTime(workingValue18, workingValue20, stateFlag22)
          return
          ::continueAtStep33::
          gameTime = cmgOperation3
          if not gameTime then
            gameTime = text3
            gameTime()
          end
          cmgOperation3 = localValue23
        end
      end
      localValue4(cmgOperation5, waitCall2, number23)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
  localValue1 = RageUI
  localValue1 = localValue1.Checkbox
  localValue2 = "Select Position In Crosshair"
  localValue3 = ""
  coords = cmgOperation2.selectingCrosshairPosition
  gameTime2 = {}

  -- === HELPER FUNCTION: iterator(localValue12, localValue22, localValue32, localValue4) ===
  function iterator(localValue12, localValue22, localValue32, localValue4)
    cmgOperation2.selectingCrosshairPosition = localValue4
  end
  -- Beginner: Draw a RageUI checkbox.
  localValue1(localValue2, localValue3, coords, gameTime2, iterator)
  localValue1 = RageUI
  localValue1 = localValue1.ButtonWithStyle
  localValue2 = "Select Crosshair Distance"
  localValue3 = ""
  coords = {}
  gameTime2 = cmgOperation2.selectCrosshairDistance
  coords.RightLabel = gameTime2
  gameTime2 = true

  -- === HELPER FUNCTION: iterator(localValue12, localValue22, localValue32) ===
  function iterator(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5, waitCall2, number23
    if localValue32 then
      localValue4 = CMG
      localValue4 = localValue4.clientPrompt
      cmgOperation5 = "Enter Value:"
      waitCall2 = ""

      -- === HELPER FUNCTION (decompiler name: number23; parameters: localValue13) ===
      function number23(localValue13)
        local localValue23, gameTime
        localValue23 = tonumber
        gameTime = localValue13
        localValue23 = localValue23(gameTime)
        if localValue23 then
          cmgOperation2.selectCrosshairDistance = localValue23
        end
      end
      localValue4(cmgOperation5, waitCall2, number23)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2, iterator)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Get Camera Position"
  localValue3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5, waitCall2, number23, number25, workingValue22, heading2, hashValue
    if localValue32 then
      localValue4 = GetFinalRenderedCamCoord
      localValue4 = localValue4()
      cmgOperation5 = CMG
      cmgOperation5 = cmgOperation5.clientPrompt
      waitCall2 = ""
      number23 = string
      number23 = number23.format
      number25 = "vector3(%s, %s, %s)"
      workingValue22 = localValue4.x
      heading2 = localValue4.y
      hashValue = localValue4.z
      number23 = number23(number25, workingValue22, heading2, hashValue)

      -- === HELPER FUNCTION (decompiler name: number25; parameters: none) ===
      function number25()
        local localValue13, localValue23
      end
      cmgOperation5(waitCall2, number23, number25)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Get Camera Rotation"
  localValue3 = nil
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5, waitCall2, number23, number25, workingValue22, heading2, hashValue
    if localValue32 then
      localValue4 = GetFinalRenderedCamRot
      cmgOperation5 = 2
      localValue4 = localValue4(cmgOperation5)
      cmgOperation5 = CMG
      cmgOperation5 = cmgOperation5.clientPrompt
      waitCall2 = ""
      number23 = string
      number23 = number23.format
      number25 = "vector3(%s, %s, %s)"
      workingValue22 = localValue4.x
      heading2 = localValue4.y
      hashValue = localValue4.z
      number23 = number23(number25, workingValue22, heading2, hashValue)

      -- === HELPER FUNCTION (decompiler name: number25; parameters: none) ===
      function number25()
        local localValue13, localValue23
      end
      cmgOperation5(waitCall2, number23, number25)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
end
cmgOperation4(text4, text5)
cmgOperation4 = RegisterNetEvent
text4 = "351e7015f2"
-- Beginner: this function handles network event "351e7015f2".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2, localValue3, coords, gameTime2, iterator, workingValue21, text6, cmgOperation7, createVector32, labelValue, number3, workingValue, number5, createVector3, modelHash, number7
  localValue2 = CMG
  localValue2 = localValue2.getClientUserId
  -- Beginner: result below is userId.
  localValue2 = localValue2()
  if localValue2 then
    localValue3 = CMG
    localValue3 = localValue3.isDeveloper
    coords = localValue2
    localValue3 = localValue3(coords)
    if localValue3 and localValue1 then
      localValue3 = ""
      coords = load
      gameTime2 = "return "
      iterator = localValue1
      gameTime2 = gameTime2 .. iterator
      coords, gameTime2 = coords(gameTime2)
      if gameTime2 then
        iterator = load
        workingValue21 = localValue1
        iterator, workingValue21 = iterator(workingValue21)
        gameTime2 = workingValue21
        coords = iterator
      end
      if gameTime2 then
        iterator = TriggerEvent
        workingValue21 = "chatMessage"
        text6 = "[SS-RunCode]"
        cmgOperation7 = {}
        createVector32 = 187
        labelValue = 0
        number3 = 0
        cmgOperation7[1] = createVector32
        cmgOperation7[2] = labelValue
        cmgOperation7[3] = number3
        createVector32 = "CRun Error: "
        labelValue = tostring
        number3 = gameTime2
        labelValue = labelValue(number3)
        createVector32 = createVector32 .. labelValue
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chatMessage".
        iterator(workingValue21, text6, cmgOperation7, createVector32)
        iterator = false
        return iterator
      end
      iterator = {}
      workingValue21 = pcall
      text6 = coords
      workingValue21, text6, cmgOperation7, createVector32, labelValue, number3, workingValue, number5, createVector3, modelHash, number7 = workingValue21(text6)
      iterator[1] = workingValue21
      iterator[2] = text6
      iterator[3] = cmgOperation7
      iterator[4] = createVector32
      iterator[5] = labelValue
      iterator[6] = number3
      iterator[7] = workingValue
      iterator[8] = number5
      iterator[9] = createVector3
      iterator[10] = modelHash
      iterator[11] = number7
      workingValue21 = iterator[1]
      if not workingValue21 then
        workingValue21 = TriggerEvent
        text6 = "chatMessage"
        cmgOperation7 = "[SS-RunCode]"
        createVector32 = {}
        labelValue = 187
        number3 = 0
        workingValue = 0
        createVector32[1] = labelValue
        createVector32[2] = number3
        createVector32[3] = workingValue
        labelValue = "CRun Error: "
        number3 = tostring
        workingValue = iterator[2]
        number3 = number3(workingValue)
        labelValue = labelValue .. number3
        workingValue21(text6, cmgOperation7, createVector32, labelValue)
        workingValue21 = false
        return workingValue21
      end
      workingValue21 = 2
      text6 = #iterator
      cmgOperation7 = 1
      for createVector32 = workingValue21, text6, cmgOperation7 do
        labelValue = localValue3
        number3 = ", "
        labelValue = labelValue .. number3
        localValue3 = labelValue
        labelValue = type
        number3 = iterator[createVector32]
        labelValue = labelValue(number3)
        number3 = iterator[createVector32]
        workingValue = type
        number5 = number3
        workingValue = workingValue(number5)
        if "number" == workingValue then
          workingValue = IsAnEntity
          number5 = number3
          workingValue = workingValue(number5)
          if workingValue then
            workingValue = "entity:"
            number5 = tostring
            createVector3 = GetEntityType
            modelHash = number3
            createVector3, modelHash, number7 = createVector3(modelHash)
            number5 = number5(createVector3, modelHash, number7)
            workingValue = workingValue .. number5
            labelValue = workingValue
          end
        end
        workingValue = localValue3
        number5 = tostring
        createVector3 = iterator[createVector32]
        number5 = number5(createVector3)
        createVector3 = " ["
        modelHash = labelValue
        number7 = "]"
        workingValue = workingValue .. number5 .. createVector3 .. modelHash .. number7
        localValue3 = workingValue
      end
      workingValue21 = #iterator
      if workingValue21 > 1 then
        workingValue21 = TriggerEvent
        text6 = "chatMessage"
        cmgOperation7 = "[SS-RunCode]"
        createVector32 = {}
        labelValue = 187
        number3 = 0
        workingValue = 0
        createVector32[1] = labelValue
        createVector32[2] = number3
        createVector32[3] = workingValue
        labelValue = "CRun Command Result: "
        number3 = tostring
        workingValue = localValue3
        number3 = number3(workingValue)
        labelValue = labelValue .. number3
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chatMessage".
        workingValue21(text6, cmgOperation7, createVector32, labelValue)
        workingValue21 = true
        return workingValue21
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "351e7015f2".
cmgOperation4(text4, text5)
cmgOperation4 = RegisterNetEvent
text4 = "0f125feacd"
-- Beginner: this function handles network event "0f125feacd".

-- === HELPER FUNCTION (decompiler name: text5; parameters: ...) ===
function text5(...)
  local localValue1, localValue2
  localValue1 = print
  localValue2 = ...
  localValue1(localValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0f125feacd".
cmgOperation4(text4, text5)
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.registerDevMenuThread
text4 = "Dev Misc"
-- Beginner: this function handles network event "0f125feacd".

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, localValue3, coords, gameTime2, iterator, workingValue21, text6, cmgOperation7, createVector32, labelValue, number3, workingValue, number5, createVector3, modelHash, number7, number8, number9, number10, number11, number13, stateFlag4, stateFlag6, stateFlag8, number17, stateFlag10, stateFlag11, stateFlag12, stateFlag14, stateFlag15, workingValue15, stateFlag18, stateFlag19
  localValue1 = cmgOperation2.selectingCrosshairPosition
  if localValue1 then
    localValue1 = GetGameplayCamCoords
    localValue1 = localValue1()
    localValue2 = GetGameplayCamRot
    localValue3 = 2
    localValue2 = localValue2(localValue3)
    localValue3 = CMG
    localValue3 = localValue3.rotationToDirection
    coords = localValue2
    localValue3 = localValue3(coords)
    localValue3 = localValue3 * 100.0
    localValue3 = localValue1 + localValue3
    coords = _ENV
    gameTime2 = "StartExpensiveSynchronousShapeTestLosProbe"
    coords = coords[gameTime2]
    gameTime2 = localValue1.x
    iterator = localValue1.y
    workingValue21 = localValue1.z
    text6 = localValue3.x
    cmgOperation7 = localValue3.y
    createVector32 = localValue3.z
    labelValue = -1
    number3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    number3 = number3()
    workingValue = 7
    coords = coords(gameTime2, iterator, workingValue21, text6, cmgOperation7, createVector32, labelValue, number3, workingValue)
    gameTime2 = GetShapeTestResult
    iterator = coords
    gameTime2, iterator, workingValue21, text6 = gameTime2(iterator)
    cmgOperation7 = DisableControlAction
    createVector32 = 0
    labelValue = 26
    number3 = true
    cmgOperation7(createVector32, labelValue, number3)
    if iterator then
      cmgOperation7 = cmgOperation2.selectCrosshairDistance
      cmgOperation7 = text6 * cmgOperation7
      cmgOperation7 = workingValue21 + cmgOperation7
      createVector32 = DrawMarker
      labelValue = 28
      number3 = cmgOperation7.x
      workingValue = cmgOperation7.y
      number5 = cmgOperation7.z
      createVector3 = 0.0
      modelHash = 0.0
      number7 = 0.0
      number8 = 0.0
      number9 = 0.0
      number10 = 0.0
      number11 = 0.05
      number13 = 0.05
      stateFlag4 = 0.05
      stateFlag6 = 255
      stateFlag8 = 0
      number17 = 0
      stateFlag10 = 255
      stateFlag11 = false
      stateFlag12 = false
      stateFlag14 = 2
      stateFlag15 = false
      workingValue15 = nil
      stateFlag18 = nil
      stateFlag19 = false
      createVector32(labelValue, number3, workingValue, number5, createVector3, modelHash, number7, number8, number9, number10, number11, number13, stateFlag4, stateFlag6, stateFlag8, number17, stateFlag10, stateFlag11, stateFlag12, stateFlag14, stateFlag15, workingValue15, stateFlag18, stateFlag19)
      createVector32 = text6 * 5.0
      createVector32 = workingValue21 + createVector32
      labelValue = DrawLine
      number3 = workingValue21.x
      workingValue = workingValue21.y
      number5 = workingValue21.z
      createVector3 = createVector32.x
      modelHash = createVector32.y
      number7 = createVector32.z
      number8 = 255
      number9 = 255
      number10 = 255
      number11 = 255
      labelValue(number3, workingValue, number5, createVector3, modelHash, number7, number8, number9, number10, number11)
      labelValue = IsDisabledControlPressed
      number3 = 0
      workingValue = 36
      labelValue = labelValue(number3, workingValue)
      if labelValue then
        labelValue = IsDisabledControlJustPressed
        number3 = 0
        workingValue = 26
        labelValue = labelValue(number3, workingValue)
        if labelValue then
          labelValue = CMG
          labelValue = labelValue.copyToClipboard
          number3 = string
          number3 = number3.gsub
          workingValue = tostring
          number5 = cmgOperation7
          workingValue = workingValue(number5)
          number5 = "vec3"
          createVector3 = "vector3"
          number3, workingValue, number5, createVector3, modelHash, number7, number8, number9, number10, number11, number13, stateFlag4, stateFlag6, stateFlag8, number17, stateFlag10, stateFlag11, stateFlag12, stateFlag14, stateFlag15, workingValue15, stateFlag18, stateFlag19 = number3(workingValue, number5, createVector3)
          labelValue(number3, workingValue, number5, createVector3, modelHash, number7, number8, number9, number10, number11, number13, stateFlag4, stateFlag6, stateFlag8, number17, stateFlag10, stateFlag11, stateFlag12, stateFlag14, stateFlag15, workingValue15, stateFlag18, stateFlag19)
          labelValue = notify
          number3 = "~g~Copied coordinates to clipboard"
          -- Beginner: Show a notification to the player.
          labelValue(number3)
        end
      end
    end
  end
  localValue1 = pairs
  localValue2 = dataCollection
  localValue1, localValue2, localValue3, coords = localValue1(localValue2)
  for gameTime2, iterator in localValue1, localValue2, localValue3, coords do
    workingValue21 = CMG
    workingValue21 = workingValue21.DrawText
    text6 = 0.05
    cmgOperation7 = gameTime2 * 0.025
    cmgOperation7 = 0.1 + cmgOperation7
    createVector32 = iterator
    labelValue = 0.4
    number3 = nil
    workingValue = nil
    number5 = {}
    createVector3 = 255
    modelHash = 0
    number7 = 0
    number8 = 255
    number5[1] = createVector3
    number5[2] = modelHash
    number5[3] = number7
    number5[4] = number8
    createVector3 = true
    workingValue21(text6, cmgOperation7, createVector32, labelValue, number3, workingValue, number5, createVector3)
  end
  localValue1 = table
  localValue1 = localValue1.clear
  localValue2 = dataCollection
  localValue1(localValue2)
end
cmgOperation4(text4, text5)
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1, localValue2) ===
function text4(localValue1, localValue2)
  local localValue3, coords, gameTime2, iterator, workingValue21, text6, cmgOperation7, createVector32, labelValue, number3, workingValue
  localValue3 = DrawLine
  coords = localValue1.x
  coords = coords - localValue2
  gameTime2 = localValue1.y
  iterator = localValue1.z
  workingValue21 = localValue1.x
  workingValue21 = workingValue21 + localValue2
  text6 = localValue1.y
  cmgOperation7 = localValue1.z
  createVector32 = 255
  labelValue = 0
  number3 = 0
  workingValue = 255
  localValue3(coords, gameTime2, iterator, workingValue21, text6, cmgOperation7, createVector32, labelValue, number3, workingValue)
  localValue3 = DrawLine
  coords = localValue1.x
  gameTime2 = localValue1.y
  gameTime2 = gameTime2 - localValue2
  iterator = localValue1.z
  workingValue21 = localValue1.x
  text6 = localValue1.y
  text6 = text6 + localValue2
  cmgOperation7 = localValue1.z
  createVector32 = 0
  labelValue = 255
  number3 = 0
  workingValue = 255
  localValue3(coords, gameTime2, iterator, workingValue21, text6, cmgOperation7, createVector32, labelValue, number3, workingValue)
  localValue3 = DrawLine
  coords = localValue1.x
  gameTime2 = localValue1.y
  iterator = localValue1.z
  iterator = iterator - localValue2
  workingValue21 = localValue1.x
  text6 = localValue1.y
  cmgOperation7 = localValue1.z
  cmgOperation7 = cmgOperation7 + localValue2
  createVector32 = 0
  labelValue = 0
  number3 = 255
  workingValue = 255
  localValue3(coords, gameTime2, iterator, workingValue21, text6, cmgOperation7, createVector32, labelValue, number3, workingValue)
end
cmgOperation4.drawAxisOnPoint = text4
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1, localValue2, localValue3) ===
function text4(localValue1, localValue2, localValue3)
  local coords, gameTime2, iterator, workingValue21, text6, cmgOperation7, createVector32, labelValue, number3, workingValue, number5, createVector3
  coords = vector3
  gameTime2 = localValue1.x
  iterator = math
  iterator = iterator.sin
  workingValue21 = localValue2
  iterator = iterator(workingValue21)
  iterator = localValue3 * iterator
  gameTime2 = gameTime2 + iterator
  iterator = localValue1.y
  workingValue21 = math
  workingValue21 = workingValue21.cos
  text6 = localValue2
  workingValue21 = workingValue21(text6)
  workingValue21 = localValue3 * workingValue21
  iterator = iterator + workingValue21
  workingValue21 = localValue1.z
  coords = coords(gameTime2, iterator, workingValue21)
  gameTime2 = DrawLine
  iterator = localValue1.x
  workingValue21 = localValue1.y
  text6 = localValue1.z
  cmgOperation7 = coords.x
  createVector32 = coords.y
  labelValue = coords.z
  number3 = 255
  workingValue = 255
  number5 = 255
  createVector3 = 255
  gameTime2(iterator, workingValue21, text6, cmgOperation7, createVector32, labelValue, number3, workingValue, number5, createVector3)
end
cmgOperation4.drawHeadingFromPoint = text4
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1, ...) ===
function text4(localValue1, ...)
  local localValue2, localValue3, coords, gameTime2, iterator
  localValue2 = table
  localValue2 = localValue2.insert
  localValue3 = dataCollection
  coords = string
  coords = coords.format
  gameTime2 = localValue1
  iterator = ...
  coords, gameTime2, iterator = coords(gameTime2, iterator)
  localValue2(localValue3, coords, gameTime2, iterator)
end
cmgOperation4.drawDebugText = text4
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1, localValue2) ===
function text4(localValue1, localValue2)
  local localValue3, coords, gameTime2, iterator, workingValue21, text6, cmgOperation7, createVector32, labelValue, number3, workingValue, number5, createVector3, modelHash, number7, number8, number9, number10, number11, number13, stateFlag4, stateFlag6, stateFlag8
  if not localValue2 then
    localValue2 = 2.5
  end
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  coords = GetEntityCoords
  gameTime2 = localValue3
  -- Beginner: result below is entityCoords.
  coords = coords(gameTime2)
  gameTime2 = GetEntityForwardVector
  iterator = localValue3
  gameTime2 = gameTime2(iterator)
  iterator = vector3
  workingValue21 = gameTime2.y
  workingValue21 = -workingValue21
  text6 = gameTime2.x
  cmgOperation7 = 0.0
  iterator = iterator(workingValue21, text6, cmgOperation7)
  workingValue21 = gameTime2 * 5.0
  workingValue21 = coords + workingValue21
  text6 = #localValue1
  text6 = text6 - 1
  text6 = text6 / 2
  cmgOperation7 = ipairs
  createVector32 = localValue1
  cmgOperation7, createVector32, labelValue, number3 = cmgOperation7(createVector32)
  for workingValue, number5 in cmgOperation7, createVector32, labelValue, number3 do
    createVector3 = tonumber
    modelHash = number5
    createVector3 = createVector3(modelHash)
    if not createVector3 then
      createVector3 = GetHashKey
      modelHash = number5
      -- Beginner: result below is hash.
      createVector3 = createVector3(modelHash)
    end
    modelHash = IsModelInCdimage
    number7 = createVector3
    modelHash = modelHash(number7)
    if modelHash then
      modelHash = IsModelValid
      number7 = createVector3
      modelHash = modelHash(number7)
      if modelHash then
        goto continueAtStep56
      end
    end
    modelHash = print
    number7 = "Invalid model skipped: %s"
    number8 = number7
    number7 = number7.format
    number9 = number5
    number7, number8, number9, number10, number11, number13, stateFlag4, stateFlag6, stateFlag8 = number7(number8, number9)
    modelHash(number7, number8, number9, number10, number11, number13, stateFlag4, stateFlag6, stateFlag8)
    goto continueAtStep107
    ::continueAtStep56::
    modelHash = workingValue3
    number7 = createVector3
    modelHash = modelHash(number7)
    if not modelHash then
      modelHash = print
      number7 = "Failed to load model: %s"
      number8 = number7
      number7 = number7.format
      number9 = number5
      number7, number8, number9, number10, number11, number13, stateFlag4, stateFlag6, stateFlag8 = number7(number8, number9)
      modelHash(number7, number8, number9, number10, number11, number13, stateFlag4, stateFlag6, stateFlag8)
    else
      modelHash = workingValue - 1
      modelHash = modelHash - text6
      modelHash = modelHash * localValue2
      number7 = iterator * modelHash
      number7 = workingValue21 + number7
      number8 = CreateObjectNoOffset
      number9 = createVector3
      number10 = number7.x
      number11 = number7.y
      number13 = number7.z
      stateFlag4 = false
      stateFlag6 = false
      stateFlag8 = false
      -- Beginner: result below is objectEntity.
      number8 = number8(number9, number10, number11, number13, stateFlag4, stateFlag6, stateFlag8)
      number9 = PlaceObjectOnGroundProperly
      number10 = number8
      number9(number10)
      number9 = FreezeEntityPosition
      number10 = number8
      number11 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      number9(number10, number11)
      number9 = SetModelAsNoLongerNeeded
      number10 = createVector3
      number9(number10)
      number9 = CMG
      number9 = number9.add3DTextForCoord
      number10 = number5
      number11 = number7.x
      number13 = number7.y
      stateFlag4 = number7.z
      stateFlag4 = stateFlag4 + 1.0
      stateFlag6 = 5.0
      number9(number10, number11, number13, stateFlag4, stateFlag6)
    end
    ::continueAtStep107::
  end
  cmgOperation7 = notify
  createVector32 = "~g~Spawned %d objects in a row"
  labelValue = createVector32
  createVector32 = createVector32.format
  number3 = #localValue1
  createVector32, labelValue, number3, workingValue, number5, createVector3, modelHash, number7, number8, number9, number10, number11, number13, stateFlag4, stateFlag6, stateFlag8 = createVector32(labelValue, number3)
  -- Beginner: Show a notification to the player.
  cmgOperation7(createVector32, labelValue, number3, workingValue, number5, createVector3, modelHash, number7, number8, number9, number10, number11, number13, stateFlag4, stateFlag6, stateFlag8)
end
cmgOperation4.spawnObjectRow = text4
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.loadModule
text4 = "cfg/heists/cfg_heist"
-- Beginner: result below is config.
cmgOperation4 = cmgOperation4(text4)
text4 = CMG
text4 = text4.registerDevMenuItems
text5 = "Bank Heists"

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2, localValue3, coords, gameTime2, iterator, workingValue21, text6, cmgOperation7, createVector32, labelValue
  localValue1 = ipairs
  localValue2 = cmgOperation4.setups
  localValue1, localValue2, localValue3, coords = localValue1(localValue2)
  for gameTime2, iterator in localValue1, localValue2, localValue3, coords do
    workingValue21 = RageUI
    workingValue21 = workingValue21.Button
    text6 = iterator.title
    cmgOperation7 = iterator.description
    createVector32 = [[


Starts this setup instantly (dev only, no cost).]]
    cmgOperation7 = cmgOperation7 .. createVector32
    createVector32 = true

    -- === HELPER FUNCTION: labelValue(localValue12, localValue22, localValue32) ===
    function labelValue(localValue12, localValue22, localValue32)
      local localValue4, cmgOperation5, waitCall2
      if localValue32 then
        localValue4 = TriggerServerEvent
        cmgOperation5 = "7177498edd"
        waitCall2 = gameTime2
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7177498edd".
        localValue4(cmgOperation5, waitCall2)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    workingValue21(text6, cmgOperation7, createVector32, labelValue)
  end
end
text4(text5, workingValue14)
text4 = CMG
text4 = text4.registerDevMenuItems
text5 = "Events/Chat Mini-Event"

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2, localValue3, coords, gameTime2
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Trigger Now"
  localValue3 = "Immediately starts a random chat mini-event round (dev only)."
  coords = true

  -- === HELPER FUNCTION: gameTime2(localValue12, localValue22, localValue32) ===
  function gameTime2(localValue12, localValue22, localValue32)
    local localValue4, cmgOperation5
    if localValue32 then
      localValue4 = TriggerServerEvent
      cmgOperation5 = "95d9175710"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "95d9175710".
      localValue4(cmgOperation5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, coords, gameTime2)
end
text4(text5, workingValue14)
