--[[
    LEVEL 1 BEGINNER GUIDE — Bankrob
    =====================================

    File: cmg/prod/client/crime/cl_bankrob.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: crime, robbery, gang, and criminal gameplay, specifically the Bankrob feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 39
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
local cmgOperation, dataCollection2, number16, workingValue8, workingValue9, workingValue10, workingValue11, workingValue12, workingValue13, workingValue14, workingValue, workingValue2, workingValue3, workingValue4, eventHandler, text, workingValue5, number3, number4, dataCollection, cmgOperation3, number5, number6, number7, number8, number10
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection2 = "cfg/cfg_bankrob"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection2)
dataCollection2 = {}
number16 = 0

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1) ===
function workingValue8(localValue1)
  local localValue2, localValue3, stateFlag15
  localValue2 = TriggerServerEvent
  localValue3 = "946c287b9d"
  stateFlag15 = localValue1.index
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "946c287b9d".
  localValue2(localValue3, stateFlag15)
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3, stateFlag15
  localValue2 = localValue1.handles
  if localValue2 then
    localValue2 = DeleteEntity
    localValue3 = localValue1.handles
    localValue3 = localValue3.object
    -- Beginner: Delete a GTA entity.
    localValue2(localValue3)
    localValue2 = StopParticleFxLooped
    localValue3 = localValue1.handles
    localValue3 = localValue3.particle
    stateFlag15 = false
    localValue2(localValue3, stateFlag15)
    localValue2 = localValue1.handles
    localValue2 = localValue2.soundId
    if -1 ~= localValue2 then
      localValue2 = StopSound
      localValue3 = localValue1.handles
      localValue3 = localValue3.soundId
      localValue2(localValue3)
      localValue2 = ReleaseSoundId
      localValue3 = localValue1.handles
      localValue3 = localValue3.soundId
      localValue2(localValue3)
    end
    localValue1.handles = nil
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1) ===
function workingValue10(localValue1)
  local localValue2, localValue3, stateFlag15, text3, position, number21, modelValue, stateFlag17, stateFlag18
  localValue3 = localValue1.index
  localValue2 = dataCollection2
  localValue2 = localValue2[localValue3]
  if localValue2 then
    localValue3 = pairs
    stateFlag15 = localValue2.safes
    localValue3, stateFlag15, text3, position = localValue3(stateFlag15)
    for number21, modelValue in localValue3, stateFlag15, text3, position do
      stateFlag17 = workingValue9
      stateFlag18 = modelValue
      stateFlag17(stateFlag18)
    end
    stateFlag15 = localValue1.index
    localValue3 = dataCollection2
    localValue3[stateFlag15] = nil
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1, localValue2) ===
function workingValue11(localValue1, localValue2)
  local localValue3, stateFlag15, text3, position
  localValue3 = CMG
  localValue3 = localValue3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue3 = localValue3()
  stateFlag15 = localValue2.uiPosition
  localValue3 = localValue3 - stateFlag15
  localValue3 = #localValue3
  if localValue3 > 1.0 then
    return
  end
  localValue3 = CMG
  localValue3 = localValue3.isEmergencyService
  localValue3 = localValue3()
  if localValue3 then
    return
  end
  localValue3 = drawNativeNotification
  stateFlag15 = "Press ~INPUT_CONTEXT~ to hack the "
  text3 = localValue2.type
  if "terminal" == text3 then
    text3 = "Gate"
    if text3 then
      goto continueAtStep26
    end
  end
  text3 = "Vault"
  ::continueAtStep26::
  stateFlag15 = stateFlag15 .. text3
  -- Beginner: Show a GTA-style notification/help prompt.
  localValue3(stateFlag15)
  localValue3 = IsControlJustPressed
  stateFlag15 = 0
  text3 = 51
  localValue3 = localValue3(stateFlag15, text3)
  if localValue3 then
    localValue3 = TriggerServerEvent
    stateFlag15 = "9ff6fe9b05"
    text3 = localValue1.index
    position = localValue2.index
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9ff6fe9b05".
    localValue3(stateFlag15, text3, position)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue1, localValue2) ===
function workingValue12(localValue1, localValue2)
  local localValue3, stateFlag15, text3
  localValue3 = nil
  stateFlag15 = nil
  if localValue2 < localValue1 then
    localValue3 = localValue1 - localValue2
    text3 = 360.0
    stateFlag15 = text3 - localValue3
  else
    stateFlag15 = localValue2 - localValue1
    text3 = 360.0
    localValue3 = text3 - stateFlag15
  end
  if stateFlag15 < localValue3 then
    text3 = -1.0
    if text3 then
      goto continueAtStep21
    end
  end
  text3 = 1.0
  ::continueAtStep21::
  return text3
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue1, localValue2) ===
function workingValue13(localValue1, localValue2)
  local localValue3, stateFlag15, text3, position, number21, modelValue, stateFlag17, stateFlag18, stateFlag
  localValue3 = GetClosestObjectOfType
  stateFlag15 = localValue1.position
  stateFlag15 = stateFlag15.x
  text3 = localValue1.position
  text3 = text3.y
  position = localValue1.position
  position = position.z
  number21 = 2.0
  modelValue = localValue1.model
  stateFlag17 = false
  stateFlag18 = false
  stateFlag = false
  -- Beginner: result below is objectEntity.
  localValue3 = localValue3(stateFlag15, text3, position, number21, modelValue, stateFlag17, stateFlag18, stateFlag)
  if 0 == localValue3 then
    return
  end
  stateFlag15 = FreezeEntityPosition
  text3 = localValue3
  position = localValue2.isHacked
  position = not position
  -- Beginner: Freeze or unfreeze an entity in place.
  stateFlag15(text3, position)
  stateFlag15 = false
  text3 = localValue1.type
  if "vault" == text3 then
    text3 = GetEntityHeading
    position = localValue3
    -- Beginner: result below is heading.
    text3 = text3(position)
    position = localValue2.isHacked
    if position then
      position = math
      position = position.abs
      number21 = localValue1.openHeading
      number21 = number21 - text3
      position = position(number21)
      if position > 2.0 then
        position = SetEntityHeading
        number21 = localValue3
        modelValue = GetFrameTime
        modelValue = modelValue()
        modelValue = 15.0 * modelValue
        stateFlag17 = workingValue12
        stateFlag18 = localValue1.closedHeading
        stateFlag = text3
        stateFlag17 = stateFlag17(stateFlag18, stateFlag)
        modelValue = modelValue * stateFlag17
        modelValue = text3 - modelValue
        -- Beginner: Change the direction an entity is facing.
        position(number21, modelValue)
        stateFlag15 = true
      end
    else
      position = math
      position = position.abs
      number21 = localValue1.closedHeading
      number21 = number21 - text3
      position = position(number21)
      if position > 2.0 then
        position = SetEntityHeading
        number21 = localValue3
        modelValue = GetFrameTime
        modelValue = modelValue()
        modelValue = 15.0 * modelValue
        stateFlag17 = workingValue12
        stateFlag18 = localValue1.closedHeading
        stateFlag = text3
        stateFlag17 = stateFlag17(stateFlag18, stateFlag)
        modelValue = modelValue * stateFlag17
        modelValue = text3 + modelValue
        position(number21, modelValue)
        stateFlag15 = true
      end
    end
  end
  if stateFlag15 then
    text3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    text3 = text3()
    position = number16
    text3 = text3 - position
    position = 1750
    if text3 > position then
      text3 = PlaySoundFrontend
      position = -1
      number21 = "OPENING"
      modelValue = "MP_PROPERTIES_ELEVATOR_DOORS"
      stateFlag17 = true
      text3(position, number21, modelValue, stateFlag17)
      text3 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      text3 = text3()
      number16 = text3
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue1, localValue2) ===
function workingValue14(localValue1, localValue2)
  local localValue3, stateFlag15, text3, position, number21, modelValue, stateFlag17, stateFlag18, stateFlag, stateFlag2, stateFlag3
  localValue3 = false
  stateFlag15 = pairs
  text3 = localValue1.doors
  stateFlag15, text3, position, number21 = stateFlag15(text3)
  for modelValue, stateFlag17 in stateFlag15, text3, position, number21 do
    stateFlag18 = localValue2.doors
    stateFlag18 = stateFlag18[modelValue]
    stateFlag = stateFlag18.isHacked
    if not stateFlag and not localValue3 then
      stateFlag = stateFlag18.hackingUserId
      if 0 == stateFlag then
        stateFlag = workingValue11
        stateFlag2 = localValue1
        stateFlag3 = stateFlag17
        stateFlag(stateFlag2, stateFlag3)
      end
      localValue3 = true
    end
    stateFlag = workingValue13
    stateFlag2 = stateFlag17
    stateFlag3 = stateFlag18
    stateFlag(stateFlag2, stateFlag3)
  end
  stateFlag15 = not localValue3
  return stateFlag15
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1, localValue2) ===
function workingValue(localValue1, localValue2)
  local localValue3, stateFlag15, text3, position
  localValue3 = CMG
  localValue3 = localValue3.isEmergencyService
  localValue3 = localValue3()
  if localValue3 then
    return
  end
  localValue3 = drawNativeNotification
  stateFlag15 = "Press ~INPUT_CONTEXT~ to break open the safe"
  -- Beginner: Show a GTA-style notification/help prompt.
  localValue3(stateFlag15)
  localValue3 = IsControlJustPressed
  stateFlag15 = 0
  text3 = 51
  localValue3 = localValue3(stateFlag15, text3)
  if localValue3 then
    localValue3 = TriggerServerEvent
    stateFlag15 = "8792ec1a1b"
    text3 = localValue1.index
    position = localValue2.index
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8792ec1a1b".
    localValue3(stateFlag15, text3, position)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, stateFlag15, text3, position, number21, modelValue, stateFlag17, stateFlag18, stateFlag, stateFlag2, stateFlag3, stateFlag4, number, stringHelper, number2, stateFlag5, tableHelper, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10
  localValue2 = localValue1.handles
  if localValue2 then
    return
  end
  localValue2 = fullPlayerListData
  localValue3 = localValue1.lootingUserId
  localValue2 = localValue2[localValue3]
  if not localValue2 then
    return
  end
  localValue3 = localValue2[1]
  if not localValue3 then
    return
  end
  stateFlag15 = GetPlayerFromServerId
  text3 = localValue3
  -- Beginner: result below is playerIndex.
  stateFlag15 = stateFlag15(text3)
  if -1 == stateFlag15 then
    return
  end
  text3 = GetPlayerPed
  position = stateFlag15
  -- Beginner: result below is playerPed.
  text3 = text3(position)
  if 0 == text3 then
    return
  end
  position = CMG
  position = position.loadModel
  number21 = -443429795
  -- Beginner: Request/load a GTA model before spawning or applying it.
  position(number21)
  position = CMG
  position = position.getPlayerCoords
  -- Beginner: result below is playerCoords.
  position = position()
  number21 = CreateObject
  modelValue = -443429795
  stateFlag17 = position.x
  stateFlag18 = position.y
  stateFlag = position.z
  stateFlag2 = false
  stateFlag3 = false
  stateFlag4 = false
  -- Beginner: result below is objectEntity.
  number21 = number21(modelValue, stateFlag17, stateFlag18, stateFlag, stateFlag2, stateFlag3, stateFlag4)
  modelValue = AttachEntityToEntity
  stateFlag17 = number21
  stateFlag18 = text3
  stateFlag = GetPedBoneIndex
  stateFlag2 = text3
  stateFlag3 = 28422
  stateFlag = stateFlag(stateFlag2, stateFlag3)
  stateFlag2 = 0.0
  stateFlag3 = 0.0
  stateFlag4 = 0.0
  number = 0.0
  stringHelper = 0.0
  number2 = 0.0
  stateFlag5 = true
  tableHelper = true
  stateFlag6 = false
  stateFlag7 = false
  stateFlag8 = 2
  stateFlag9 = true
  -- Beginner: Attach one entity to another entity.
  modelValue(stateFlag17, stateFlag18, stateFlag, stateFlag2, stateFlag3, stateFlag4, number, stringHelper, number2, stateFlag5, tableHelper, stateFlag6, stateFlag7, stateFlag8, stateFlag9)
  modelValue = {}
  stateFlag17 = "DLC_HEIST_FLEECA_SOUNDSET"
  stateFlag18 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL"
  stateFlag = "DLC_MPHEIST\\HEIST_FLEECA_DRILL_2"
  modelValue[1] = stateFlag17
  modelValue[2] = stateFlag18
  modelValue[3] = stateFlag
  stateFlag17 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  stateFlag17 = stateFlag17()
  stateFlag18 = false
  while not stateFlag18 do
    stateFlag = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    stateFlag = stateFlag()
    stateFlag = stateFlag - stateFlag17
    stateFlag2 = 2000
    if stateFlag > stateFlag2 then
      break
    end
    stateFlag18 = true
    stateFlag = pairs
    stateFlag2 = modelValue
    stateFlag, stateFlag2, stateFlag3, stateFlag4 = stateFlag(stateFlag2)
    for number, stringHelper in stateFlag, stateFlag2, stateFlag3, stateFlag4 do
      number2 = RequestAmbientAudioBank
      stateFlag5 = stringHelper
      tableHelper = false
      number2 = number2(stateFlag5, tableHelper)
      if not number2 then
        stateFlag18 = false
      end
    end
    stateFlag = Citizen
    stateFlag = stateFlag.Wait
    stateFlag2 = 0
    stateFlag(stateFlag2)
  end
  stateFlag = GetSoundId
  -- Beginner: result below is soundHandle.
  stateFlag = stateFlag()
  stateFlag2 = PlaySoundFromEntity
  stateFlag3 = stateFlag
  stateFlag4 = "Drill"
  number = number21
  stringHelper = "DLC_HEIST_FLEECA_SOUNDSET"
  number2 = false
  stateFlag5 = 0
  stateFlag2(stateFlag3, stateFlag4, number, stringHelper, number2, stateFlag5)
  stateFlag2 = CMG
  stateFlag2 = stateFlag2.loadPtfx
  stateFlag3 = "core"
  stateFlag2(stateFlag3)
  stateFlag2 = UseParticleFxAsset
  stateFlag3 = "core"
  stateFlag2(stateFlag3)
  stateFlag2 = StartParticleFxLoopedOnEntity
  stateFlag3 = "ent_anim_pneumatic_drill"
  stateFlag4 = number21
  number = 0.0
  stringHelper = -0.5
  number2 = 0.0
  stateFlag5 = 0.0
  tableHelper = 0.0
  stateFlag6 = 0.0
  stateFlag7 = 0.9
  stateFlag8 = false
  stateFlag9 = false
  stateFlag10 = false
  stateFlag2 = stateFlag2(stateFlag3, stateFlag4, number, stringHelper, number2, stateFlag5, tableHelper, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10)
  stateFlag3 = RemoveNamedPtfxAsset
  stateFlag4 = "ent_anim_pneumatic_drill"
  stateFlag3(stateFlag4)
  stateFlag3 = {}
  stateFlag3.object = number21
  stateFlag3.soundId = stateFlag
  stateFlag3.particle = stateFlag2
  localValue1.handles = stateFlag3
  stateFlag3 = localValue1.lootingUserId
  if 0 == stateFlag3 then
    stateFlag3 = workingValue9
    stateFlag4 = localValue1
    stateFlag3(stateFlag4)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1, localValue2) ===
function workingValue3(localValue1, localValue2)
  local localValue3, stateFlag15, text3, position, number21, modelValue, stateFlag17, stateFlag18, stateFlag, stateFlag2, stateFlag3, stateFlag4, number, stringHelper, number2, stateFlag5, tableHelper, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number9, number11, number12, number13, number14, number15, number17, number18, stateFlag11, stateFlag12, number19, stateFlag13, workingValue6, workingValue7, stateFlag14
  localValue3 = localValue2.delayStartTime
  if localValue3 then
    localValue3 = localValue2.delayStartTime
    if 0 ~= localValue3 then
      goto continueAtStep9
    end
  end
  localValue3 = false
  return localValue3
  ::continueAtStep9::
  localValue3 = GetNetworkTime
  -- Beginner: result below is networkTime.
  localValue3 = localValue3()
  stateFlag15 = localValue2.delayStartTime
  localValue3 = localValue3 - stateFlag15
  stateFlag15 = math
  stateFlag15 = stateFlag15.ceil
  text3 = cmgOperation.delayBetweenSafeLoots
  text3 = localValue3 / text3
  stateFlag15 = stateFlag15(text3)
  text3 = nil
  position = 1.0
  number21 = pairs
  modelValue = localValue1.safes
  number21, modelValue, stateFlag17, stateFlag18 = number21(modelValue)
  for stateFlag, stateFlag2 in number21, modelValue, stateFlag17, stateFlag18 do
    if stateFlag > stateFlag15 then
      stateFlag3 = CMG
      stateFlag3 = stateFlag3.createTimerBars
      -- Beginner: result below is timerBars.
      stateFlag3 = stateFlag3()
      stateFlag4 = stateFlag3.push
      number = "~y~FOUND SAFES"
      stringHelper = tostring
      number2 = stateFlag15
      stringHelper = stringHelper(number2)
      number2 = "/"
      stateFlag5 = tostring
      tableHelper = table
      tableHelper = tableHelper.count
      stateFlag6 = localValue1.safes
      tableHelper, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number9, number11, number12, number13, number14, number15, number17, number18, stateFlag11, stateFlag12, number19, stateFlag13, workingValue6, workingValue7, stateFlag14 = tableHelper(stateFlag6)
      stateFlag5 = stateFlag5(tableHelper, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number9, number11, number12, number13, number14, number15, number17, number18, stateFlag11, stateFlag12, number19, stateFlag13, workingValue6, workingValue7, stateFlag14)
      stringHelper = stringHelper .. number2 .. stateFlag5
      stateFlag4(number, stringHelper)
      stateFlag4 = stateFlag3.draw
      stateFlag4()
      break
    end
    stateFlag3 = localValue2.safes
    stateFlag3 = stateFlag3[stateFlag]
    stateFlag4 = stateFlag3.isLooted
    if not stateFlag4 then
      stateFlag4 = stateFlag3.lootingUserId
      if 0 == stateFlag4 then
        stateFlag4 = CMG
        stateFlag4 = stateFlag4.getPlayerCoords
        -- Beginner: result below is playerCoords.
        stateFlag4 = stateFlag4()
        number = stateFlag2.position
        stateFlag4 = stateFlag4 - number
        stateFlag4 = #stateFlag4
        if position > stateFlag4 then
          text3 = stateFlag2
          position = stateFlag4
        end
        if stateFlag4 < 10.0 then
          number = DrawMarker
          stringHelper = 28
          number2 = stateFlag2.position
          number2 = number2.x
          stateFlag5 = stateFlag2.position
          stateFlag5 = stateFlag5.y
          tableHelper = stateFlag2.position
          tableHelper = tableHelper.z
          stateFlag6 = 0.0
          stateFlag7 = 0.0
          stateFlag8 = 0.0
          stateFlag9 = 0.0
          stateFlag10 = 0.0
          number9 = 0.0
          number11 = 0.3
          number12 = 0.3
          number13 = 0.3
          number14 = 255
          number15 = 255
          number17 = 0
          number18 = 40
          stateFlag11 = false
          stateFlag12 = false
          number19 = 2
          stateFlag13 = false
          workingValue6 = nil
          workingValue7 = nil
          stateFlag14 = false
          number(stringHelper, number2, stateFlag5, tableHelper, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, number9, number11, number12, number13, number14, number15, number17, number18, stateFlag11, stateFlag12, number19, stateFlag13, workingValue6, workingValue7, stateFlag14)
        end
      else
        stateFlag4 = workingValue2
        number = stateFlag3
        stateFlag4(number)
      end
    end
  end
  if text3 then
    number21 = workingValue
    modelValue = localValue1
    stateFlag17 = text3
    number21(modelValue, stateFlag17)
  end
  number21 = nil ~= text3
  return number21
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local localValue2, localValue3, stateFlag15, text3
  localValue3 = localValue1.index
  localValue2 = dataCollection2
  localValue2 = localValue2[localValue3]
  if localValue2 then
    localValue3 = workingValue14
    stateFlag15 = localValue1
    text3 = localValue2
    localValue3 = localValue3(stateFlag15, text3)
    if localValue3 then
      localValue3 = workingValue3
      stateFlag15 = localValue1
      text3 = localValue2
      localValue3(stateFlag15, text3)
    end
  end
end
eventHandler = RegisterNetEvent
text = "4824ef5e69"
-- Beginner: this function handles network event "4824ef5e69".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2) ===
function workingValue5(localValue1, localValue2)
  local localValue3
  localValue3 = dataCollection2
  localValue3[localValue1] = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4824ef5e69".
eventHandler(text, workingValue5)
eventHandler = RegisterNetEvent
text = "6f8b6da635"
-- Beginner: this function handles network event "6f8b6da635".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2, localValue3) ===
function workingValue5(localValue1, localValue2, localValue3)
  local stateFlag15, text3
  stateFlag15 = dataCollection2
  stateFlag15 = stateFlag15[localValue1]
  if stateFlag15 then
    text3 = stateFlag15.doors
    text3 = text3[localValue2]
    if text3 then
      text3.hackingUserId = localValue3
    end
  end
end
eventHandler(text, workingValue5)
eventHandler = RegisterNetEvent
text = "be099ec876"
-- Beginner: this function handles network event "be099ec876".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2, localValue3) ===
function workingValue5(localValue1, localValue2, localValue3)
  local stateFlag15, text3
  stateFlag15 = dataCollection2
  stateFlag15 = stateFlag15[localValue1]
  if stateFlag15 then
    text3 = stateFlag15.doors
    text3 = text3[localValue2]
    if text3 then
      text3.isHacked = true
      text3.hackingUserId = 0
    end
    stateFlag15.delayStartTime = localValue3
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "be099ec876".
eventHandler(text, workingValue5)
eventHandler = RegisterNetEvent
text = "9ff6fe9b05"
-- Beginner: this function handles network event "9ff6fe9b05".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2) ===
function workingValue5(localValue1, localValue2)
  local localValue3, stateFlag15, text3, position, number21
  localValue3 = cmgOperation.locations
  localValue3 = localValue3[localValue1]
  localValue3 = localValue3.doors
  localValue3 = localValue3[localValue2]
  stateFlag15 = localValue3.type
  if "vault" == stateFlag15 then
    stateFlag15 = CMG
    stateFlag15 = stateFlag15.hideAllDisplays
    text3 = "bankrob"
    stateFlag15(text3)
    stateFlag15 = SetPlayerControl
    text3 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    text3 = text3()
    position = false
    number21 = 0
    stateFlag15(text3, position, number21)
    stateFlag15 = FreezeEntityPosition
    text3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    text3 = text3()
    position = true
    -- Beginner: Freeze or unfreeze an entity in place.
    stateFlag15(text3, position)
    stateFlag15 = CMG
    stateFlag15 = stateFlag15.startDataCrackMinigame
    text3 = 5

    -- === HELPER FUNCTION: position(localValue12) ===
    function position(localValue12)
      local cmgOperation2, text2, stateFlag16, number20
      if localValue12 then
        cmgOperation2 = TriggerServerEvent
        text2 = "a51f426b65"
        stateFlag16 = localValue1
        number20 = localValue2
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a51f426b65".
        cmgOperation2(text2, stateFlag16, number20)
      else
        cmgOperation2 = TriggerServerEvent
        text2 = "341b26095f"
        stateFlag16 = localValue1
        number20 = localValue2
        cmgOperation2(text2, stateFlag16, number20)
      end
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.showAllDisplays
      text2 = "bankrob"
      cmgOperation2(text2)
      cmgOperation2 = SetPlayerControl
      text2 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      text2 = text2()
      stateFlag16 = true
      number20 = 0
      cmgOperation2(text2, stateFlag16, number20)
      cmgOperation2 = FreezeEntityPosition
      text2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      text2 = text2()
      stateFlag16 = false
      -- Beginner: Freeze or unfreeze an entity in place.
      cmgOperation2(text2, stateFlag16)
    end
    stateFlag15(text3, position)
  else
    stateFlag15 = localValue3.type
    if "terminal" == stateFlag15 then
      stateFlag15 = CMG
      stateFlag15 = stateFlag15.hideAllDisplays
      text3 = "bankrob"
      stateFlag15(text3)
      stateFlag15 = SetPlayerControl
      text3 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      text3 = text3()
      position = false
      number21 = 0
      stateFlag15(text3, position, number21)
      stateFlag15 = FreezeEntityPosition
      text3 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      text3 = text3()
      position = true
      -- Beginner: Freeze or unfreeze an entity in place.
      stateFlag15(text3, position)
      stateFlag15 = TriggerEvent
      text3 = "ultra-voltlab"
      position = 60

      -- === HELPER FUNCTION (decompiler name: number21; parameters: localValue12) ===
      function number21(localValue12)
        local cmgOperation2, text2, stateFlag16, number20
        if 1 == localValue12 then
          cmgOperation2 = TriggerServerEvent
          text2 = "a51f426b65"
          stateFlag16 = localValue1
          number20 = localValue2
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a51f426b65".
          cmgOperation2(text2, stateFlag16, number20)
        else
          cmgOperation2 = TriggerServerEvent
          text2 = "341b26095f"
          stateFlag16 = localValue1
          number20 = localValue2
          cmgOperation2(text2, stateFlag16, number20)
        end
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.showAllDisplays
        text2 = "bankrob"
        cmgOperation2(text2)
        cmgOperation2 = SetPlayerControl
        text2 = PlayerId
        -- Beginner: result below is localPlayerIndex.
        text2 = text2()
        stateFlag16 = true
        number20 = 0
        cmgOperation2(text2, stateFlag16, number20)
        cmgOperation2 = FreezeEntityPosition
        text2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        text2 = text2()
        stateFlag16 = false
        -- Beginner: Freeze or unfreeze an entity in place.
        cmgOperation2(text2, stateFlag16)
      end
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "ultra-voltlab".
      stateFlag15(text3, position, number21)
    end
  end
  stateFlag15 = CMG
  stateFlag15 = stateFlag15.setPlayerCombatTimer
  text3 = 300
  position = false
  stateFlag15(text3, position)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9ff6fe9b05".
eventHandler(text, workingValue5)
eventHandler = RegisterNetEvent
text = "36280d9b8c"
-- Beginner: this function handles network event "36280d9b8c".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2, localValue3) ===
function workingValue5(localValue1, localValue2, localValue3)
  local stateFlag15, text3, position, number21
  stateFlag15 = dataCollection2
  stateFlag15 = stateFlag15[localValue1]
  if stateFlag15 then
    text3 = stateFlag15.safes
    text3 = text3[localValue2]
    if text3 then
      text3.lootingUserId = localValue3
      position = workingValue9
      number21 = text3
      position(number21)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "36280d9b8c".
eventHandler(text, workingValue5)
eventHandler = RegisterNetEvent
text = "8d7a05103b"
-- Beginner: this function handles network event "8d7a05103b".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2) ===
function workingValue5(localValue1, localValue2)
  local localValue3, stateFlag15, text3, position
  localValue3 = dataCollection2
  localValue3 = localValue3[localValue1]
  if localValue3 then
    stateFlag15 = localValue3.safes
    stateFlag15 = stateFlag15[localValue2]
    if stateFlag15 then
      stateFlag15.isLooted = true
      stateFlag15.lootingUserId = 0
      text3 = workingValue9
      position = stateFlag15
      text3(position)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8d7a05103b".
eventHandler(text, workingValue5)
eventHandler = RegisterNetEvent
text = "8792ec1a1b"
-- Beginner: this function handles network event "8792ec1a1b".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2) ===
function workingValue5(localValue1, localValue2)
  local localValue3, stateFlag15, text3, position, number21, modelValue, stateFlag17, stateFlag18, stateFlag, stateFlag2, stateFlag3, stateFlag4, number, stringHelper, number2, stateFlag5, tableHelper, stateFlag6, stateFlag7, stateFlag8
  localValue3 = cmgOperation.locations
  localValue3 = localValue3[localValue1]
  localValue3 = localValue3.safes
  localValue3 = localValue3[localValue2]
  stateFlag15 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  stateFlag15 = stateFlag15()
  text3 = CMG
  text3 = text3.setWeapon
  position = stateFlag15
  number21 = -1569615261
  modelValue = true
  text3(position, number21, modelValue)
  text3 = FreezeEntityPosition
  position = stateFlag15
  number21 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  text3(position, number21)
  text3 = tCMG
  text3 = text3.setCanAnim
  position = false
  text3(position)
  text3 = SetPlayerControl
  position = PlayerId
  -- Beginner: result below is localPlayerIndex.
  position = position()
  number21 = false
  modelValue = 0
  text3(position, number21, modelValue)
  text3 = CMG
  text3 = text3.loadAnimDict
  position = "anim@heists@fleeca_bank@drilling"
  -- Beginner: Load a GTA animation dictionary before using it.
  text3(position)
  text3 = localValue3.animPosition
  position = TaskPlayAnimAdvanced
  number21 = stateFlag15
  modelValue = "anim@heists@fleeca_bank@drilling"
  stateFlag17 = "drill_straight_idle"
  stateFlag18 = text3.x
  stateFlag = text3.y
  stateFlag2 = text3.z
  stateFlag3 = 0.0
  stateFlag4 = 0.0
  number = text3.w
  stringHelper = 3.0
  number2 = -4.0
  stateFlag5 = -1
  tableHelper = 2
  stateFlag6 = 0
  stateFlag7 = 0
  stateFlag8 = 0
  position(number21, modelValue, stateFlag17, stateFlag18, stateFlag, stateFlag2, stateFlag3, stateFlag4, number, stringHelper, number2, stateFlag5, tableHelper, stateFlag6, stateFlag7, stateFlag8)
  position = RemoveAnimDict
  number21 = "anim@heists@fleeca_bank@drilling"
  position(number21)
  position = CMG
  position = position.setPlayerCombatTimer
  number21 = 300
  modelValue = false
  position(number21, modelValue)
  position = CMG
  position = position.startDrillingUI

  -- === HELPER FUNCTION (decompiler name: number21; parameters: localValue12) ===
  function number21(localValue12)
    local cmgOperation2, text2, stateFlag16, number20
    if 1 == localValue12 then
      cmgOperation2 = TriggerServerEvent
      text2 = "7a0004831f"
      stateFlag16 = localValue1
      number20 = localValue2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7a0004831f".
      cmgOperation2(text2, stateFlag16, number20)
    elseif 2 == localValue12 then
      cmgOperation2 = TriggerServerEvent
      text2 = "0585ae58be"
      stateFlag16 = localValue1
      number20 = localValue2
      cmgOperation2(text2, stateFlag16, number20)
    elseif 3 == localValue12 then
      cmgOperation2 = TriggerServerEvent
      text2 = "0585ae58be"
      stateFlag16 = localValue1
      number20 = localValue2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0585ae58be".
      cmgOperation2(text2, stateFlag16, number20)
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.stopDrillingUI
      cmgOperation2()
    end
    cmgOperation2 = ClearPedTasksImmediately
    text2 = stateFlag15
    cmgOperation2(text2)
    cmgOperation2 = StopGameplayCamShaking
    text2 = true
    cmgOperation2(text2)
    cmgOperation2 = FreezeEntityPosition
    text2 = stateFlag15
    stateFlag16 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    cmgOperation2(text2, stateFlag16)
    cmgOperation2 = tCMG
    cmgOperation2 = cmgOperation2.setCanAnim
    text2 = true
    cmgOperation2(text2)
    cmgOperation2 = SetPlayerControl
    text2 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    text2 = text2()
    stateFlag16 = true
    number20 = 0
    cmgOperation2(text2, stateFlag16, number20)
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.setPlayerCombatTimer
    text2 = 300
    stateFlag16 = false
    cmgOperation2(text2, stateFlag16)
  end
  position(number21)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8792ec1a1b".
eventHandler(text, workingValue5)
eventHandler = Citizen
eventHandler = eventHandler.CreateThread

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, localValue3, stateFlag15, text3, position, number21, modelValue, stateFlag17, stateFlag18, stateFlag, stateFlag2, stateFlag3, stateFlag4, number
  localValue1 = pairs
  localValue2 = cmgOperation.locations
  localValue1, localValue2, localValue3, stateFlag15 = localValue1(localValue2)
  for text3, position in localValue1, localValue2, localValue3, stateFlag15 do
    number21 = CMG
    number21 = number21.createArea
    modelValue = "bankrob_"
    stateFlag17 = tostring
    stateFlag18 = text3
    stateFlag17 = stateFlag17(stateFlag18)
    modelValue = modelValue .. stateFlag17
    stateFlag17 = position.doors
    stateFlag17 = stateFlag17[1]
    stateFlag17 = stateFlag17.position
    stateFlag18 = 50.0
    stateFlag = 100.0
    stateFlag2 = workingValue8
    stateFlag3 = workingValue10
    stateFlag4 = workingValue4
    number = position
    -- Beginner: Create an interaction area around a world position.
    number21(modelValue, stateFlag17, stateFlag18, stateFlag, stateFlag2, stateFlag3, stateFlag4, number)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler(text)
eventHandler = RegisterNetEvent
text = "6241081128"
-- Beginner: this function handles network event "6241081128".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local localValue2, localValue3, stateFlag15, text3, position, number21, modelValue, stateFlag17, stateFlag18, stateFlag, stateFlag2
  while true do
    localValue2 = RequestScriptAudioBank
    localValue3 = "Alarms"
    stateFlag15 = false
    localValue2 = localValue2(localValue3, stateFlag15)
    if localValue2 then
      break
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 0
    localValue2(localValue3)
  end
  localValue2 = GetSoundId
  -- Beginner: result below is soundHandle.
  localValue2 = localValue2()
  localValue3 = PlaySoundFromCoord
  stateFlag15 = localValue2
  text3 = "Burglar_Bell"
  position = localValue1.x
  number21 = localValue1.y
  modelValue = localValue1.z
  stateFlag17 = "Generic_Alarms"
  stateFlag18 = false
  stateFlag = 0.05
  stateFlag2 = false
  localValue3(stateFlag15, text3, position, number21, modelValue, stateFlag17, stateFlag18, stateFlag, stateFlag2)
  localValue3 = Citizen
  localValue3 = localValue3.Wait
  stateFlag15 = 300000
  localValue3(stateFlag15)
  localValue3 = StopSound
  stateFlag15 = localValue2
  localValue3(stateFlag15)
  localValue3 = ReleaseSoundId
  stateFlag15 = localValue2
  localValue3(stateFlag15)
  localValue3 = ReleaseNamedScriptAudioBank
  stateFlag15 = "Alarms"
  localValue3(stateFlag15)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6241081128".
eventHandler(text, workingValue5)
eventHandler = {}
text = {}
workingValue5 = vector2
number3 = 0.21359223
number4 = 0.3446602
workingValue5 = workingValue5(number3, number4)
number3 = vector2
number4 = 0.5048544
dataCollection = 0.6359223
number3 = number3(number4, dataCollection)
number4 = vector2
dataCollection = 0.79611653
cmgOperation3 = 0.92718446
number4, dataCollection, cmgOperation3, number5, number6, number7, number8, number10 = number4(dataCollection, cmgOperation3)
text[1] = workingValue5
text[2] = number3
text[3] = number4
text[4] = dataCollection
text[5] = cmgOperation3
text[6] = number5
text[7] = number6
text[8] = number7
text[9] = number8
text[10] = number10

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local localValue2, localValue3
  localValue2 = BeginTextCommandScaleformString
  localValue3 = "STRING"
  localValue2(localValue3)
  localValue2 = AddTextComponentScaleform
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = EndTextCommandScaleformString
  localValue2()
end

-- === HELPER FUNCTION (decompiler name: number3; parameters: localValue1) ===
function number3(localValue1)
  local localValue2, localValue3
  localValue2 = N_0xe83a3e3557a56640
  localValue3 = localValue1
  localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: number4; parameters: localValue1) ===
function number4(localValue1)
  local localValue2, localValue3, stateFlag15, text3, position, number21
  localValue2 = RequestScaleformMovie
  localValue3 = localValue1
  -- Beginner: result below is scaleformHandle.
  localValue2 = localValue2(localValue3)
  while true do
    localValue3 = HasScaleformMovieLoaded
    stateFlag15 = localValue2
    localValue3 = localValue3(stateFlag15)
    if localValue3 then
      break
    end
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    stateFlag15 = 0
    localValue3(stateFlag15)
  end
  localValue3 = PushScaleformMovieFunction
  stateFlag15 = localValue2
  text3 = "CLEAR_ALL"
  localValue3(stateFlag15, text3)
  localValue3 = PopScaleformMovieFunctionVoid
  localValue3()
  localValue3 = PushScaleformMovieFunction
  stateFlag15 = localValue2
  text3 = "SET_CLEAR_SPACE"
  localValue3(stateFlag15, text3)
  localValue3 = PushScaleformMovieFunctionParameterInt
  stateFlag15 = 200
  localValue3(stateFlag15)
  localValue3 = PopScaleformMovieFunctionVoid
  localValue3()
  localValue3 = PushScaleformMovieFunction
  stateFlag15 = localValue2
  text3 = "SET_DATA_SLOT"
  localValue3(stateFlag15, text3)
  localValue3 = PushScaleformMovieFunctionParameterInt
  stateFlag15 = 0
  localValue3(stateFlag15)
  localValue3 = number3
  stateFlag15 = GetControlInstructionalButton
  text3 = 2
  position = 172
  number21 = true
  stateFlag15, text3, position, number21 = stateFlag15(text3, position, number21)
  localValue3(stateFlag15, text3, position, number21)
  localValue3 = workingValue5
  stateFlag15 = "Drill Forward"
  localValue3(stateFlag15)
  localValue3 = PopScaleformMovieFunctionVoid
  localValue3()
  localValue3 = PushScaleformMovieFunction
  stateFlag15 = localValue2
  text3 = "SET_DATA_SLOT"
  localValue3(stateFlag15, text3)
  localValue3 = PushScaleformMovieFunctionParameterInt
  stateFlag15 = 1
  localValue3(stateFlag15)
  localValue3 = number3
  stateFlag15 = GetControlInstructionalButton
  text3 = 2
  position = 173
  number21 = true
  stateFlag15, text3, position, number21 = stateFlag15(text3, position, number21)
  localValue3(stateFlag15, text3, position, number21)
  localValue3 = workingValue5
  stateFlag15 = "Drill Backward"
  localValue3(stateFlag15)
  localValue3 = PopScaleformMovieFunctionVoid
  localValue3()
  localValue3 = PushScaleformMovieFunction
  stateFlag15 = localValue2
  text3 = "SET_DATA_SLOT"
  localValue3(stateFlag15, text3)
  localValue3 = PushScaleformMovieFunctionParameterInt
  stateFlag15 = 2
  localValue3(stateFlag15)
  localValue3 = number3
  stateFlag15 = GetControlInstructionalButton
  text3 = 2
  position = 175
  number21 = true
  stateFlag15, text3, position, number21 = stateFlag15(text3, position, number21)
  localValue3(stateFlag15, text3, position, number21)
  localValue3 = workingValue5
  stateFlag15 = "Drill Faster"
  localValue3(stateFlag15)
  localValue3 = PopScaleformMovieFunctionVoid
  localValue3()
  localValue3 = PushScaleformMovieFunction
  stateFlag15 = localValue2
  text3 = "SET_DATA_SLOT"
  localValue3(stateFlag15, text3)
  localValue3 = PushScaleformMovieFunctionParameterInt
  stateFlag15 = 3
  localValue3(stateFlag15)
  localValue3 = number3
  stateFlag15 = GetControlInstructionalButton
  text3 = 2
  position = 174
  number21 = true
  stateFlag15, text3, position, number21 = stateFlag15(text3, position, number21)
  localValue3(stateFlag15, text3, position, number21)
  localValue3 = workingValue5
  stateFlag15 = "Drill Slower"
  localValue3(stateFlag15)
  localValue3 = PopScaleformMovieFunctionVoid
  localValue3()
  localValue3 = PushScaleformMovieFunction
  stateFlag15 = localValue2
  text3 = "SET_DATA_SLOT"
  localValue3(stateFlag15, text3)
  localValue3 = PushScaleformMovieFunctionParameterInt
  stateFlag15 = 4
  localValue3(stateFlag15)
  localValue3 = number3
  stateFlag15 = GetControlInstructionalButton
  text3 = 2
  position = 202
  number21 = true
  stateFlag15, text3, position, number21 = stateFlag15(text3, position, number21)
  localValue3(stateFlag15, text3, position, number21)
  localValue3 = workingValue5
  stateFlag15 = "Stop Drilling"
  localValue3(stateFlag15)
  localValue3 = PopScaleformMovieFunctionVoid
  localValue3()
  localValue3 = PushScaleformMovieFunction
  stateFlag15 = localValue2
  text3 = "DRAW_INSTRUCTIONAL_BUTTONS"
  localValue3(stateFlag15, text3)
  localValue3 = PopScaleformMovieFunctionVoid
  localValue3()
  localValue3 = PushScaleformMovieFunction
  stateFlag15 = localValue2
  text3 = "SET_BACKGROUND_COLOUR"
  localValue3(stateFlag15, text3)
  localValue3 = PushScaleformMovieFunctionParameterInt
  stateFlag15 = 0
  localValue3(stateFlag15)
  localValue3 = PushScaleformMovieFunctionParameterInt
  stateFlag15 = 0
  localValue3(stateFlag15)
  localValue3 = PushScaleformMovieFunctionParameterInt
  stateFlag15 = 0
  localValue3(stateFlag15)
  localValue3 = PushScaleformMovieFunctionParameterInt
  stateFlag15 = 80
  localValue3(stateFlag15)
  localValue3 = PopScaleformMovieFunctionVoid
  localValue3()
  return localValue2
end
dataCollection = {}
cmgOperation3 = 30
number5 = 31
number6 = 32
number7 = 33
number8 = 34
number10 = 35
dataCollection[1] = cmgOperation3
dataCollection[2] = number5
dataCollection[3] = number6
dataCollection[4] = number7
dataCollection[5] = number8
dataCollection[6] = number10
eventHandler.DisabledControls = dataCollection

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue1) ===
function dataCollection(localValue1)
  local localValue2, localValue3
  localValue2 = eventHandler.Active
  if not localValue2 then
    eventHandler.Active = true
    localValue2 = eventHandler.Pause
    if not localValue2 then
      localValue2 = eventHandler.Init
      localValue2()
    end
    localValue2 = eventHandler.Update
    localValue3 = localValue1
    localValue2(localValue3)
  end
end
eventHandler.Start = dataCollection

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
function dataCollection()
  local localValue1, localValue2
  localValue1 = eventHandler.Active
  if localValue1 then
    eventHandler.Active = false
    eventHandler.Result = 3
    eventHandler.Pause = true
  end
end
eventHandler.Stop = dataCollection

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
function dataCollection()
  local localValue1, localValue2, localValue3
  localValue1 = eventHandler.Scaleform
  if localValue1 then
    localValue1 = SetScaleformMovieAsNoLongerNeeded
    localValue2 = eventHandler.Scaleform
    localValue1(localValue2)
  end
  localValue1 = RequestScaleformMovie
  localValue2 = "VAULT_DRILL"
  -- Beginner: result below is scaleformHandle.
  localValue1 = localValue1(localValue2)
  eventHandler.Scaleform = localValue1
  while true do
    localValue1 = HasScaleformMovieLoaded
    localValue2 = eventHandler.Scaleform
    localValue1 = localValue1(localValue2)
    if localValue1 then
      break
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 0
    localValue1(localValue2)
  end
  eventHandler.DrillSpeed = 0.0
  eventHandler.DrillPos = 0.0
  eventHandler.DrillTemp = 0.0
  eventHandler.HoleDepth = 0.0
  localValue1 = PushScaleformMovieFunction
  localValue2 = eventHandler.Scaleform
  localValue3 = "REVEAL"
  localValue1(localValue2, localValue3)
  localValue1 = PopScaleformMovieFunctionVoid
  localValue1()
  localValue1 = PushScaleformMovieFunction
  localValue2 = eventHandler.Scaleform
  localValue3 = "SET_SPEED"
  localValue1(localValue2, localValue3)
  localValue1 = PushScaleformMovieFunctionParameterFloat
  localValue2 = 0.0
  localValue1(localValue2)
  localValue1 = PopScaleformMovieFunctionVoid
  localValue1()
  localValue1 = PushScaleformMovieFunction
  localValue2 = eventHandler.Scaleform
  localValue3 = "SET_DRILL_POSITION"
  localValue1(localValue2, localValue3)
  localValue1 = PushScaleformMovieFunctionParameterFloat
  localValue2 = 0.0
  localValue1(localValue2)
  localValue1 = PopScaleformMovieFunctionVoid
  localValue1()
  localValue1 = PushScaleformMovieFunction
  localValue2 = eventHandler.Scaleform
  localValue3 = "SET_TEMPERATURE"
  localValue1(localValue2, localValue3)
  localValue1 = PushScaleformMovieFunctionParameterFloat
  localValue2 = 0.0
  localValue1(localValue2)
  localValue1 = PopScaleformMovieFunctionVoid
  localValue1()
  localValue1 = PushScaleformMovieFunction
  localValue2 = eventHandler.Scaleform
  localValue3 = "SET_HOLE_DEPTH"
  localValue1(localValue2, localValue3)
  localValue1 = PushScaleformMovieFunctionParameterFloat
  localValue2 = 0.0
  localValue1(localValue2)
  localValue1 = PopScaleformMovieFunctionVoid
  localValue1()
  localValue1 = PushScaleformMovieFunction
  localValue2 = eventHandler.Scaleform
  localValue3 = "SET_NUM_DISCS"
  localValue1(localValue2, localValue3)
  localValue1 = PushScaleformMovieFunctionParameterInt
  localValue2 = 3
  localValue1(localValue2)
  localValue1 = PopScaleformMovieFunctionVoid
  localValue1()
end
eventHandler.Init = dataCollection

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue1) ===
function dataCollection(localValue1)
  local localValue2, localValue3, stateFlag15, text3, position, number21, modelValue, stateFlag17
  localValue2 = number4
  localValue3 = "instructional_buttons"
  localValue2 = localValue2(localValue3)
  while true do
    localValue3 = eventHandler.Active
    if not localValue3 then
      break
    end
    localValue3 = eventHandler.Draw
    localValue3()
    localValue3 = eventHandler.DisableControls
    localValue3()
    localValue3 = eventHandler.HandleControls
    localValue3()
    localValue3 = DrawScaleformMovieFullscreen
    stateFlag15 = localValue2
    text3 = 255
    position = 255
    number21 = 255
    modelValue = 255
    stateFlag17 = 0
    localValue3(stateFlag15, text3, position, number21, modelValue, stateFlag17)
    localValue3 = Wait
    stateFlag15 = 0
    localValue3(stateFlag15)
  end
  localValue3 = localValue1
  stateFlag15 = eventHandler.Result
  localValue3(stateFlag15)
end
eventHandler.Update = dataCollection

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
function dataCollection()
  local localValue1, localValue2, localValue3, stateFlag15, text3, position, number21
  localValue1 = DrawScaleformMovieFullscreen
  localValue2 = eventHandler.Scaleform
  localValue3 = 255
  stateFlag15 = 255
  text3 = 255
  position = 255
  number21 = 255
  localValue1(localValue2, localValue3, stateFlag15, text3, position, number21)
end
eventHandler.Draw = dataCollection

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
function dataCollection()
  local localValue1, localValue2, localValue3, stateFlag15, text3, position, number21, modelValue
  localValue1 = pairs
  localValue2 = text
  localValue1, localValue2, localValue3, stateFlag15 = localValue1(localValue2)
  for text3, position in localValue1, localValue2, localValue3, stateFlag15 do
    number21 = eventHandler.DrillPos
    modelValue = position.x
    if number21 >= modelValue then
      number21 = eventHandler.DrillPos
      modelValue = position.y
      if number21 <= modelValue then
        number21 = true
        return number21
      end
    end
  end
  localValue1 = false
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, localValue3, stateFlag15, text3, position, number21, modelValue, stateFlag17, stateFlag18
  localValue1 = eventHandler.DrillPos
  localValue2 = IsDisabledControlJustPressed
  localValue3 = 0
  stateFlag15 = 172
  localValue2 = localValue2(localValue3, stateFlag15)
  if localValue2 then
    localValue2 = math
    localValue2 = localValue2.min
    localValue3 = 1.0
    stateFlag15 = eventHandler.DrillPos
    stateFlag15 = stateFlag15 + 0.01
    localValue2 = localValue2(localValue3, stateFlag15)
    eventHandler.DrillPos = localValue2
  else
    localValue2 = IsDisabledControlPressed
    localValue3 = 0
    stateFlag15 = 172
    localValue2 = localValue2(localValue3, stateFlag15)
    if localValue2 then
      localValue2 = math
      localValue2 = localValue2.min
      localValue3 = 1.0
      stateFlag15 = eventHandler.DrillPos
      text3 = GetFrameTime
      text3 = text3()
      text3 = 0.1 * text3
      position = math
      position = position.max
      number21 = 0.1
      modelValue = eventHandler.DrillTemp
      position = position(number21, modelValue)
      position = position * 10
      text3 = text3 / position
      stateFlag15 = stateFlag15 + text3
      localValue2 = localValue2(localValue3, stateFlag15)
      eventHandler.DrillPos = localValue2
    else
      localValue2 = IsDisabledControlJustPressed
      localValue3 = 0
      stateFlag15 = 173
      localValue2 = localValue2(localValue3, stateFlag15)
      if localValue2 then
        localValue2 = math
        localValue2 = localValue2.max
        localValue3 = 0.0
        stateFlag15 = eventHandler.DrillPos
        stateFlag15 = stateFlag15 - 0.01
        localValue2 = localValue2(localValue3, stateFlag15)
        eventHandler.DrillPos = localValue2
      else
        localValue2 = IsDisabledControlPressed
        localValue3 = 0
        stateFlag15 = 173
        localValue2 = localValue2(localValue3, stateFlag15)
        if localValue2 then
          localValue2 = math
          localValue2 = localValue2.max
          localValue3 = 0.0
          stateFlag15 = eventHandler.DrillPos
          text3 = GetFrameTime
          text3 = text3()
          text3 = 0.1 * text3
          stateFlag15 = stateFlag15 - text3
          localValue2 = localValue2(localValue3, stateFlag15)
          eventHandler.DrillPos = localValue2
        end
      end
    end
  end
  localValue2 = eventHandler.DrillSpeed
  localValue3 = IsDisabledControlJustPressed
  stateFlag15 = 0
  text3 = 175
  localValue3 = localValue3(stateFlag15, text3)
  if localValue3 then
    localValue3 = math
    localValue3 = localValue3.min
    stateFlag15 = 1.0
    text3 = eventHandler.DrillSpeed
    text3 = text3 + 0.05
    localValue3 = localValue3(stateFlag15, text3)
    eventHandler.DrillSpeed = localValue3
  else
    localValue3 = IsDisabledControlPressed
    stateFlag15 = 0
    text3 = 175
    localValue3 = localValue3(stateFlag15, text3)
    if localValue3 then
      localValue3 = math
      localValue3 = localValue3.min
      stateFlag15 = 1.0
      text3 = eventHandler.DrillSpeed
      position = GetFrameTime
      position = position()
      position = 0.5 * position
      text3 = text3 + position
      localValue3 = localValue3(stateFlag15, text3)
      eventHandler.DrillSpeed = localValue3
    else
      localValue3 = IsControlJustPressed
      stateFlag15 = 0
      text3 = 174
      localValue3 = localValue3(stateFlag15, text3)
      if localValue3 then
        localValue3 = math
        localValue3 = localValue3.max
        stateFlag15 = 0.0
        text3 = eventHandler.DrillSpeed
        text3 = text3 - 0.05
        localValue3 = localValue3(stateFlag15, text3)
        eventHandler.DrillSpeed = localValue3
      else
        localValue3 = IsDisabledControlPressed
        stateFlag15 = 0
        text3 = 174
        localValue3 = localValue3(stateFlag15, text3)
        if localValue3 then
          localValue3 = math
          localValue3 = localValue3.max
          stateFlag15 = 0.0
          text3 = eventHandler.DrillSpeed
          position = GetFrameTime
          position = position()
          position = 0.5 * position
          text3 = text3 - position
          localValue3 = localValue3(stateFlag15, text3)
          eventHandler.DrillSpeed = localValue3
        end
      end
    end
  end
  localValue3 = IsDisabledControlJustPressed
  stateFlag15 = 0
  text3 = 202
  localValue3 = localValue3(stateFlag15, text3)
  if localValue3 then
    eventHandler.Active = false
    eventHandler.Result = 3
  end
  localValue3 = eventHandler.DrillTemp
  stateFlag15 = eventHandler.DrillPos
  if localValue1 < stateFlag15 then
    stateFlag15 = eventHandler.DrillSpeed
    text3 = 0.4
    if stateFlag15 > text3 then
      stateFlag15 = dataCollection
      stateFlag15 = stateFlag15()
      if stateFlag15 then
        stateFlag15 = math
        stateFlag15 = stateFlag15.min
        text3 = 1.0
        position = eventHandler.DrillTemp
        number21 = GetFrameTime
        number21 = number21()
        number21 = 0.05 * number21
        modelValue = eventHandler.DrillSpeed
        modelValue = modelValue * 10
        number21 = number21 * modelValue
        position = position + number21
        stateFlag15 = stateFlag15(text3, position)
        eventHandler.DrillTemp = stateFlag15
      end
      stateFlag15 = PushScaleformMovieFunction
      text3 = eventHandler.Scaleform
      position = "SET_DRILL_POSITION"
      stateFlag15(text3, position)
      stateFlag15 = PushScaleformMovieFunctionParameterFloat
      text3 = eventHandler.DrillPos
      stateFlag15(text3)
      stateFlag15 = PopScaleformMovieFunctionVoid
      stateFlag15()
    else
      stateFlag15 = eventHandler.DrillPos
      text3 = 0.1
      if not (stateFlag15 < text3) then
        stateFlag15 = eventHandler.DrillPos
        text3 = eventHandler.HoleDepth
        if not (stateFlag15 < text3) then
          goto continueAtStep211
        end
      end
      stateFlag15 = PushScaleformMovieFunction
      text3 = eventHandler.Scaleform
      position = "SET_DRILL_POSITION"
      stateFlag15(text3, position)
      stateFlag15 = PushScaleformMovieFunctionParameterFloat
      text3 = eventHandler.DrillPos
      stateFlag15(text3)
      stateFlag15 = PopScaleformMovieFunctionVoid
      stateFlag15()
      goto continueAtStep269
      ::continueAtStep211::
      eventHandler.DrillPos = localValue1
      stateFlag15 = dataCollection
      stateFlag15 = stateFlag15()
      if stateFlag15 then
        stateFlag15 = math
        stateFlag15 = stateFlag15.min
        text3 = 1.0
        position = eventHandler.DrillTemp
        number21 = GetFrameTime
        number21 = number21()
        number21 = 0.01 * number21
        position = position + number21
        stateFlag15 = stateFlag15(text3, position)
        eventHandler.DrillTemp = stateFlag15
      end
    end
  else
    stateFlag15 = eventHandler.DrillPos
    text3 = eventHandler.HoleDepth
    if stateFlag15 < text3 then
      stateFlag15 = math
      stateFlag15 = stateFlag15.max
      text3 = 0.0
      position = eventHandler.DrillTemp
      number21 = GetFrameTime
      number21 = number21()
      number21 = 0.05 * number21
      modelValue = math
      modelValue = modelValue.max
      stateFlag17 = 0.005
      stateFlag18 = eventHandler.DrillSpeed
      stateFlag18 = stateFlag18 * 10
      stateFlag18 = stateFlag18 / 2
      modelValue = modelValue(stateFlag17, stateFlag18)
      number21 = number21 * modelValue
      position = position - number21
      stateFlag15 = stateFlag15(text3, position)
      eventHandler.DrillTemp = stateFlag15
    end
    stateFlag15 = eventHandler.DrillPos
    text3 = eventHandler.HoleDepth
    if stateFlag15 ~= text3 then
      stateFlag15 = PushScaleformMovieFunction
      text3 = eventHandler.Scaleform
      position = "SET_DRILL_POSITION"
      stateFlag15(text3, position)
      stateFlag15 = PushScaleformMovieFunctionParameterFloat
      text3 = eventHandler.DrillPos
      stateFlag15(text3)
      stateFlag15 = PopScaleformMovieFunctionVoid
      stateFlag15()
    end
  end
  ::continueAtStep269::
  stateFlag15 = eventHandler.DrillSpeed
  if localValue2 ~= stateFlag15 then
    stateFlag15 = PushScaleformMovieFunction
    text3 = eventHandler.Scaleform
    position = "SET_SPEED"
    stateFlag15(text3, position)
    stateFlag15 = PushScaleformMovieFunctionParameterFloat
    text3 = eventHandler.DrillSpeed
    stateFlag15(text3)
    stateFlag15 = PopScaleformMovieFunctionVoid
    stateFlag15()
  end
  stateFlag15 = eventHandler.DrillTemp
  if localValue3 ~= stateFlag15 then
    stateFlag15 = PushScaleformMovieFunction
    text3 = eventHandler.Scaleform
    position = "SET_TEMPERATURE"
    stateFlag15(text3, position)
    stateFlag15 = PushScaleformMovieFunctionParameterFloat
    text3 = eventHandler.DrillTemp
    stateFlag15(text3)
    stateFlag15 = PopScaleformMovieFunctionVoid
    stateFlag15()
  end
  stateFlag15 = eventHandler.DrillTemp
  if stateFlag15 >= 1.0 then
    eventHandler.Result = 2
    eventHandler.Active = false
    eventHandler.Pause = false
    stateFlag15 = PushScaleformMovieFunction
    text3 = eventHandler.Scaleform
    position = "RESET"
    stateFlag15(text3, position)
    stateFlag15 = PopScaleformMovieFunctionVoid
    stateFlag15()
  else
    stateFlag15 = eventHandler.DrillPos
    if stateFlag15 >= 1.0 then
      eventHandler.Result = 1
      eventHandler.Active = false
      eventHandler.Pause = false
      stateFlag15 = PushScaleformMovieFunction
      text3 = eventHandler.Scaleform
      position = "RESET"
      stateFlag15(text3, position)
      stateFlag15 = PopScaleformMovieFunctionVoid
      stateFlag15()
    end
  end
  stateFlag15 = eventHandler.DrillPos
  text3 = eventHandler.HoleDepth
  if stateFlag15 > text3 then
    stateFlag15 = eventHandler.DrillPos
    if stateFlag15 then
      goto continueAtStep326
    end
  end
  stateFlag15 = eventHandler.HoleDepth
  ::continueAtStep326::
  eventHandler.HoleDepth = stateFlag15
end
eventHandler.HandleControls = cmgOperation3

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, localValue3, stateFlag15, text3, position, number21, modelValue, stateFlag17, stateFlag18
  localValue1 = ipairs
  localValue2 = eventHandler.DisabledControls
  localValue1, localValue2, localValue3, stateFlag15 = localValue1(localValue2)
  for text3, position in localValue1, localValue2, localValue3, stateFlag15 do
    number21 = DisableControlAction
    modelValue = 0
    stateFlag17 = position
    stateFlag18 = true
    number21(modelValue, stateFlag17, stateFlag18)
  end
end
eventHandler.DisableControls = cmgOperation3

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, localValue3, stateFlag15, text3, position, number21, modelValue, stateFlag17, stateFlag18
  localValue1 = ipairs
  localValue2 = eventHandler.DisabledControls
  localValue1, localValue2, localValue3, stateFlag15 = localValue1(localValue2)
  for text3, position in localValue1, localValue2, localValue3, stateFlag15 do
    number21 = DisableControlAction
    modelValue = 0
    stateFlag17 = position
    stateFlag18 = true
    number21(modelValue, stateFlag17, stateFlag18)
  end
end
eventHandler.EnableControls = cmgOperation3
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: number5; parameters: localValue1) ===
function number5(localValue1)
  local localValue2, localValue3
  localValue2 = Citizen
  localValue2 = localValue2.CreateThread

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, cmgOperation2
    localValue12 = eventHandler.Start
    cmgOperation2 = localValue1
    localValue12(cmgOperation2)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(localValue3)
end
cmgOperation3.startDrillingUI = number5
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: number5; parameters: none) ===
function number5()
  local localValue1, localValue2
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local localValue12, cmgOperation2
    localValue12 = eventHandler.Stop
    localValue12()
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
end
cmgOperation3.stopDrillingUI = number5
