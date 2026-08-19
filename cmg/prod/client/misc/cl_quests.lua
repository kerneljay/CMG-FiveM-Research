--[[
    LEVEL 1 BEGINNER GUIDE — Quests
    ====================================

    File: cmg/prod/client/misc/cl_quests.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Quests feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 24
      * Background threads: 0
      * Always-running loops: 1
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
local cmgOperation, dataCollection, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, eventHandler, eventHandler2, eventHandler3, text, workingValue2
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection = "cfg/cfg_quests"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection)
dataCollection = {}
workingValue7 = nil

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2, localValue3, localValue4, localValue5, number3, text4, stringHelper, number4, tableHelper2, cmgOperation2, cmgOperation3
  localValue1 = CMG
  localValue1 = localValue1.loadAnimDict
  localValue2 = "anim@mp_player_intcelebrationfemale@air_guitar"
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue1(localValue2)
  localValue1 = TaskPlayAnim
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = "anim@mp_player_intcelebrationfemale@air_guitar"
  localValue4 = "air_guitar"
  localValue5 = 8.0
  number3 = -8.0
  text4 = -1
  stringHelper = 0
  number4 = 0.0
  tableHelper2 = false
  cmgOperation2 = false
  cmgOperation3 = false
  -- Beginner: Play an animation on a ped.
  localValue1(localValue2, localValue3, localValue4, localValue5, number3, text4, stringHelper, number4, tableHelper2, cmgOperation2, cmgOperation3)
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1, localValue2, localValue3) ===
function workingValue9(localValue1, localValue2, localValue3)
  local localValue4, localValue5
  localValue4 = Citizen
  localValue4 = localValue4.CreateThread

  -- === HELPER FUNCTION: localValue5() ===
  function localValue5()
    local workingValue, text3, waitCall, dataCollection2, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5
    workingValue = Scaleform
    text3 = "MP_BIG_MESSAGE_FREEMODE"
    workingValue = workingValue(text3)
    text3 = workingValue.RunFunction
    waitCall = "SHOW_SHARD_WASTED_MP_MESSAGE"
    dataCollection2 = {}
    stateFlag = localValue1
    stateFlag2 = localValue2
    stateFlag3 = 0
    stateFlag4 = false
    stateFlag5 = false
    dataCollection2[1] = stateFlag
    dataCollection2[2] = stateFlag2
    dataCollection2[3] = stateFlag3
    dataCollection2[4] = stateFlag4
    dataCollection2[5] = stateFlag5
    text3(waitCall, dataCollection2)
    text3 = 0
    while true do
      waitCall = localValue3
      if not (text3 < waitCall) then
        break
      end
      waitCall = Wait
      dataCollection2 = 0
      waitCall(dataCollection2)
      waitCall = workingValue.Render2D
      waitCall()
      text3 = text3 + 1
    end
    waitCall = SetScaleformMovieAsNoLongerNeeded
    dataCollection2 = workingValue.Handle
    waitCall(dataCollection2)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue4(localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function workingValue10(localValue1, localValue2, localValue3, localValue4, localValue5)
  local number3, text4, stringHelper, number4, tableHelper2, cmgOperation2, cmgOperation3, text2, number, tableHelper, number2, workingValue3, workingValue4, workingValue5
  number3 = localValue1
  text4 = "_"
  stringHelper = tostring
  number4 = localValue2
  stringHelper = stringHelper(number4)
  number3 = number3 .. text4 .. stringHelper
  text4 = localValue3.pos

  -- === HELPER FUNCTION: stringHelper() ===
  function stringHelper()
    local workingValue, text3, waitCall, dataCollection2, stateFlag, stateFlag2, stateFlag3, stateFlag4
    text3 = number3
    workingValue = dataCollection
    workingValue = workingValue[text3]
    if not workingValue then
      workingValue = DoesEntityExist
      waitCall = number3
      text3 = dataCollection
      text3 = text3[waitCall]
      workingValue = workingValue(text3)
      if not workingValue then
        workingValue = CMG
        workingValue = workingValue.loadModel
        text3 = localValue3.model
        -- Beginner: Request/load a GTA model before spawning or applying it.
        workingValue(text3)
        workingValue = CreateObject
        text3 = localValue3.model
        waitCall = text4.x
        dataCollection2 = text4.y
        stateFlag = text4.z
        stateFlag2 = false
        stateFlag3 = true
        stateFlag4 = false
        -- Beginner: result below is objectEntity.
        workingValue = workingValue(text3, waitCall, dataCollection2, stateFlag, stateFlag2, stateFlag3, stateFlag4)
        text3 = SetModelAsNoLongerNeeded
        waitCall = localValue3.model
        text3(waitCall)
        text3 = FreezeEntityPosition
        waitCall = workingValue
        dataCollection2 = true
        -- Beginner: Freeze or unfreeze an entity in place.
        text3(waitCall, dataCollection2)
        text3 = SetEntityCollision
        waitCall = workingValue
        dataCollection2 = false
        stateFlag = false
        text3(waitCall, dataCollection2, stateFlag)
        waitCall = number3
        text3 = dataCollection
        text3[waitCall] = workingValue
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: number4; parameters: none) ===
  function number4()
    local workingValue, text3, waitCall
    workingValue = DeleteObject
    waitCall = number3
    text3 = dataCollection
    text3 = text3[waitCall]
    workingValue(text3)
    text3 = number3
    workingValue = dataCollection
    workingValue[text3] = nil
  end

  -- === HELPER FUNCTION: tableHelper2() ===
  function tableHelper2()
    local workingValue, text3, waitCall, dataCollection2, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number5
    workingValue = localValue4
    if "green" == workingValue then
      workingValue = DrawLightWithRangeAndShadow
      text3 = text4.x
      waitCall = text4.y
      dataCollection2 = text4.z
      stateFlag = 52
      stateFlag2 = 235
      stateFlag3 = 55
      stateFlag4 = 1.5
      stateFlag5 = 0.5
      number5 = 1.0
      workingValue(text3, waitCall, dataCollection2, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number5)
    else
      workingValue = localValue4
      if "orange" == workingValue then
        workingValue = DrawLightWithRangeAndShadow
        text3 = text4.x
        waitCall = text4.y
        dataCollection2 = text4.z
        stateFlag = 230
        stateFlag2 = 115
        stateFlag3 = 0
        stateFlag4 = 1.5
        stateFlag5 = 0.5
        number5 = 1.0
        workingValue(text3, waitCall, dataCollection2, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number5)
      else
        workingValue = localValue4
        if "red" == workingValue then
          workingValue = DrawLightWithRangeAndShadow
          text3 = text4.x
          waitCall = text4.y
          dataCollection2 = text4.z
          stateFlag = 230
          stateFlag2 = 0
          stateFlag3 = 0
          stateFlag4 = 1.5
          stateFlag5 = 0.5
          number5 = 1.0
          workingValue(text3, waitCall, dataCollection2, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number5)
        else
          workingValue = localValue4
          if "blue" == workingValue then
            workingValue = DrawLightWithRangeAndShadow
            text3 = text4.x
            waitCall = text4.y
            dataCollection2 = text4.z
            stateFlag = 0
            stateFlag2 = 191
            stateFlag3 = 225
            stateFlag4 = 1.5
            stateFlag5 = 0.5
            number5 = 1.0
            workingValue(text3, waitCall, dataCollection2, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number5)
          end
        end
      end
    end
    text3 = number3
    workingValue = dataCollection
    workingValue = workingValue[text3]
    if workingValue then
      text3 = SetEntityHeading
      waitCall = workingValue
      dataCollection2 = GetEntityHeading
      stateFlag = workingValue
      -- Beginner: result below is heading.
      dataCollection2 = dataCollection2(stateFlag)
      dataCollection2 = dataCollection2 + 1
      -- Beginner: Change the direction an entity is facing.
      text3(waitCall, dataCollection2)
    end
  end
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.createArea
  cmgOperation3 = "quests_prop_"
  text2 = number3
  cmgOperation3 = cmgOperation3 .. text2
  text2 = text4
  number = localValue5 or number
  if not localValue5 then
    number = 50.0
  end
  tableHelper = 50.0
  number2 = stringHelper
  workingValue3 = number4
  workingValue4 = tableHelper2
  -- Beginner: Create an interaction area around a world position.
  cmgOperation2(cmgOperation3, text2, number, tableHelper, number2, workingValue3, workingValue4)

  -- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
  function cmgOperation2()
    local workingValue, text3, waitCall, dataCollection2, stateFlag, stateFlag2
    workingValue = CMG
    workingValue = workingValue.drawFloatingHelpText
    text3 = "Press [E] to collect."
    waitCall = vector3
    dataCollection2 = text4.x
    stateFlag = text4.y
    stateFlag2 = text4.z
    stateFlag2 = stateFlag2 + 0.2
    waitCall, dataCollection2, stateFlag, stateFlag2 = waitCall(dataCollection2, stateFlag, stateFlag2)
    workingValue(text3, waitCall, dataCollection2, stateFlag, stateFlag2)
    workingValue = IsControlJustPressed
    text3 = 0
    waitCall = 38
    workingValue = workingValue(text3, waitCall)
    if workingValue then
      workingValue = localValue1
      if "CHRISTMAS" == workingValue then
        workingValue = SendNUIMessage
        text3 = {}
        text3.transactionType = "christmas_quest"
        -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
        workingValue(text3)
      end
      workingValue = DeleteEntity
      waitCall = number3
      text3 = dataCollection
      text3 = text3[waitCall]
      -- Beginner: Delete a GTA entity.
      workingValue(text3)
      workingValue = TriggerServerEvent
      text3 = "020aa9f2cf"
      waitCall = localValue1
      dataCollection2 = localValue2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "020aa9f2cf".
      workingValue(text3, waitCall, dataCollection2)
      workingValue = workingValue8
      workingValue()
    end
  end
  cmgOperation3 = CMG
  cmgOperation3 = cmgOperation3.createArea
  text2 = "quests_text_"
  number = number3
  text2 = text2 .. number
  number = text4
  tableHelper = 2.0
  number2 = 6

  -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
  function workingValue3()
    local workingValue, text3
  end

  -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
  function workingValue4()
    local workingValue, text3
  end
  workingValue5 = cmgOperation2
  -- Beginner: Create an interaction area around a world position.
  cmgOperation3(text2, number, tableHelper, number2, workingValue3, workingValue4, workingValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1) ===
function workingValue11(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = workingValue7
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = localValue1.year
  if localValue2 then
    localValue2 = localValue1.year
    localValue3 = workingValue7.year
    if localValue2 ~= localValue3 then
      localValue2 = false
      return localValue2
    end
  end
  localValue2 = localValue1.startDate
  if localValue2 then
    localValue2 = table
    localValue2 = localValue2.unpack
    localValue3 = localValue1.startDate
    localValue2, localValue3 = localValue2(localValue3)
    localValue4 = workingValue7.month
    if localValue3 > localValue4 then
      localValue4 = false
      return localValue4
    else
      localValue4 = workingValue7.month
      if localValue4 == localValue3 then
        localValue4 = workingValue7.day
        if localValue2 > localValue4 then
          localValue4 = false
          return localValue4
        end
      end
    end
  end
  localValue2 = localValue1.endDate
  if localValue2 then
    localValue2 = table
    localValue2 = localValue2.unpack
    localValue3 = localValue1.endDate
    localValue2, localValue3 = localValue2(localValue3)
    localValue4 = workingValue7.month
    if localValue3 < localValue4 then
      localValue4 = false
      return localValue4
    else
      localValue4 = workingValue7.month
      if localValue4 == localValue3 then
        localValue4 = workingValue7.day
        if localValue2 <= localValue4 then
          localValue4 = false
          return localValue4
        end
      end
    end
  end
  localValue2 = true
  return localValue2
end
eventHandler = RegisterNetEvent
eventHandler2 = "53c319de7c"
-- Beginner: this function handles network event "53c319de7c".

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: localValue1, localValue2) ===
function eventHandler3(localValue1, localValue2)
  local localValue3, localValue4, localValue5, number3, text4, stringHelper, number4, tableHelper2, cmgOperation2, cmgOperation3, text2, number, tableHelper, number2, workingValue3, workingValue4, workingValue5, workingValue6
  workingValue7 = localValue2
  localValue3 = pairs
  localValue4 = cmgOperation.quests
  localValue3, localValue4, localValue5, number3 = localValue3(localValue4)
  for text4, stringHelper in localValue3, localValue4, localValue5, number3 do
    number4 = workingValue11
    tableHelper2 = stringHelper
    number4 = number4(tableHelper2)
    if number4 then
      number4 = pairs
      tableHelper2 = stringHelper.locations
      number4, tableHelper2, cmgOperation2, cmgOperation3 = number4(tableHelper2)
      for text2, number in number4, tableHelper2, cmgOperation2, cmgOperation3 do
        tableHelper = localValue1[text4]
        if tableHelper then
          tableHelper = table
          tableHelper = tableHelper.has
          number2 = localValue1[text4]
          workingValue3 = text2
          tableHelper = tableHelper(number2, workingValue3)
          if tableHelper then
            goto continueAtStep32
          end
        end
        tableHelper = workingValue10
        number2 = text4
        workingValue3 = text2
        workingValue4 = number
        workingValue5 = stringHelper.lightColour
        workingValue6 = stringHelper.propRenderDistance
        tableHelper(number2, workingValue3, workingValue4, workingValue5, workingValue6)
        ::continueAtStep32::
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "53c319de7c".
eventHandler(eventHandler2, eventHandler3)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1, localValue2) ===
function eventHandler(localValue1, localValue2)
  local localValue3, localValue4, localValue5, number3
  localValue3 = localValue1
  localValue4 = "_"
  localValue5 = tostring
  number3 = localValue2
  localValue5 = localValue5(number3)
  localValue3 = localValue3 .. localValue4 .. localValue5
  localValue4 = tCMG
  localValue4 = localValue4.removeArea
  localValue5 = "quests_prop_"
  number3 = localValue3
  localValue5 = localValue5 .. number3
  localValue4(localValue5)
  localValue4 = tCMG
  localValue4 = localValue4.removeArea
  localValue5 = "quests_text_"
  number3 = localValue3
  localValue5 = localValue5 .. number3
  localValue4(localValue5)
end
eventHandler2 = RegisterNetEvent
eventHandler3 = "a47c883890"
-- Beginner: this function handles network event "a47c883890".

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2, localValue3, localValue4) ===
function text(localValue1, localValue2, localValue3, localValue4)
  local localValue5, number3, text4, stringHelper, number4, tableHelper2, cmgOperation2
  localValue5 = eventHandler
  number3 = localValue2
  text4 = localValue3
  -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: true.
  localValue5(number3, text4)
  if localValue1 then
    if "BIRTHDAY" == localValue2 then
      localValue5 = workingValue9
      number3 = "~g~+5 Year Special Lock"
      text4 = "You collected them all!"
      stringHelper = 600
      localValue5(number3, text4, stringHelper)
    elseif "HALLOWEEN2025" == localValue2 then
      localValue5 = workingValue9
      number3 = "~g~+\194\16310,000,000 earned, happy halloween!"
      text4 = "You collected them all!"
      stringHelper = 600
      localValue5(number3, text4, stringHelper)
    elseif "WORLDCUP2026" == localValue2 then
      localValue5 = workingValue9
      number3 = "~g~England World Cup top unlocked!"
      text4 = "You collected them all!"
      stringHelper = 600
      localValue5(number3, text4, stringHelper)
    else
      localValue5 = workingValue9
      number3 = "~g~+14 Days CMG Club Platinum"
      text4 = "You collected them all!"
      stringHelper = 600
      localValue5(number3, text4, stringHelper)
    end
    localValue5 = PlaySoundFrontend
    number3 = -1
    text4 = "Hack_Success"
    stringHelper = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
    number4 = true
    localValue5(number3, text4, stringHelper, number4)
  else
    localValue5 = workingValue9
    number3 = "Collected ~y~"
    text4 = tostring
    stringHelper = localValue4
    text4 = text4(stringHelper)
    stringHelper = "/"
    number4 = tostring
    tableHelper2 = table
    tableHelper2 = tableHelper2.count
    cmgOperation2 = cmgOperation.quests
    cmgOperation2 = cmgOperation2[localValue2]
    cmgOperation2 = cmgOperation2.locations
    tableHelper2, cmgOperation2 = tableHelper2(cmgOperation2)
    number4 = number4(tableHelper2, cmgOperation2)
    number3 = number3 .. text4 .. stringHelper .. number4
    text4 = "Collect them all to win a prize!"
    stringHelper = 600
    localValue5(number3, text4, stringHelper)
    localValue5 = PlaySoundFrontend
    number3 = -1
    text4 = "Hack_Success"
    stringHelper = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
    number4 = true
    localValue5(number3, text4, stringHelper, number4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a47c883890".
eventHandler2(eventHandler3, text)
eventHandler2 = RegisterNetEvent
eventHandler3 = "886eb8b762"
-- Beginner: this function handles network event "886eb8b762".

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2) ===
function text(localValue1, localValue2)
  local localValue3, localValue4, localValue5, number3, text4
  localValue3 = eventHandler
  localValue4 = localValue1
  localValue5 = localValue2
  localValue3(localValue4, localValue5)
  localValue3 = workingValue9
  localValue4 = "~g~All Sweets Collected"
  localValue5 = "You collected them all!"
  number3 = 600
  localValue3(localValue4, localValue5, number3)
  localValue3 = PlaySoundFrontend
  localValue4 = -1
  localValue5 = "Hack_Success"
  number3 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
  text4 = true
  localValue3(localValue4, localValue5, number3, text4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "886eb8b762".
eventHandler2(eventHandler3, text)
eventHandler2 = AddEventHandler
eventHandler3 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, localValue3, localValue4, localValue5, number3, text4, stringHelper, number4
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue1 == localValue2 then
    localValue2 = pairs
    localValue3 = dataCollection
    localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
    for number3, text4 in localValue2, localValue3, localValue4, localValue5 do
      stringHelper = DeleteObject
      number4 = text4
      stringHelper(number4)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
eventHandler2(eventHandler3, text)
eventHandler2 = {}
eventHandler3 = RegisterNetEvent
text = "4bb1481ea8"
-- Beginner: this function handles network event "4bb1481ea8".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue2(localValue1, localValue2, localValue3, localValue4)
  local localValue5, number3, text4, stringHelper, number4, tableHelper2, cmgOperation2, cmgOperation3, text2, number, tableHelper, number2
  -- Beginner: this function handles network event "4bb1481ea8".

  -- === HELPER FUNCTION: localValue5() ===
  function localValue5()
    local workingValue, text3, waitCall, dataCollection2, stateFlag, stateFlag2, stateFlag3, stateFlag4
    text3 = localValue1
    workingValue = dataCollection
    workingValue = workingValue[text3]
    if not workingValue then
      workingValue = DoesEntityExist
      waitCall = localValue1
      text3 = dataCollection
      text3 = text3[waitCall]
      workingValue = workingValue(text3)
      if not workingValue then
        workingValue = CMG
        workingValue = workingValue.loadModel
        text3 = localValue3
        -- Beginner: Request/load a GTA model before spawning or applying it.
        workingValue(text3)
        workingValue = CreateObject
        text3 = localValue3
        waitCall = localValue2.x
        dataCollection2 = localValue2.y
        stateFlag = localValue2.z
        stateFlag2 = false
        stateFlag3 = true
        stateFlag4 = false
        -- Beginner: result below is objectEntity.
        workingValue = workingValue(text3, waitCall, dataCollection2, stateFlag, stateFlag2, stateFlag3, stateFlag4)
        text3 = SetModelAsNoLongerNeeded
        waitCall = localValue3
        text3(waitCall)
        text3 = FreezeEntityPosition
        waitCall = workingValue
        dataCollection2 = true
        -- Beginner: Freeze or unfreeze an entity in place.
        text3(waitCall, dataCollection2)
        text3 = SetEntityCollision
        waitCall = workingValue
        dataCollection2 = false
        stateFlag = false
        text3(waitCall, dataCollection2, stateFlag)
        waitCall = localValue1
        text3 = dataCollection
        text3[waitCall] = workingValue
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: number3; parameters: none) ===
  function number3()
    local workingValue, text3, waitCall
    workingValue = DeleteObject
    waitCall = localValue1
    text3 = dataCollection
    text3 = text3[waitCall]
    workingValue(text3)
    text3 = localValue1
    workingValue = dataCollection
    workingValue[text3] = nil
  end

  -- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
  function text4()
    local workingValue, text3, waitCall, dataCollection2, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number5
    workingValue = localValue4
    if "green" == workingValue then
      workingValue = DrawLightWithRangeAndShadow
      text3 = localValue2.x
      waitCall = localValue2.y
      dataCollection2 = localValue2.z
      stateFlag = 52
      stateFlag2 = 235
      stateFlag3 = 55
      stateFlag4 = 1.5
      stateFlag5 = 0.5
      number5 = 1.0
      workingValue(text3, waitCall, dataCollection2, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number5)
    else
      workingValue = localValue4
      if "orange" == workingValue then
        workingValue = DrawLightWithRangeAndShadow
        text3 = localValue2.x
        waitCall = localValue2.y
        dataCollection2 = localValue2.z
        stateFlag = 230
        stateFlag2 = 115
        stateFlag3 = 0
        stateFlag4 = 1.5
        stateFlag5 = 0.5
        number5 = 1.0
        workingValue(text3, waitCall, dataCollection2, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number5)
      else
        workingValue = localValue4
        if "red" == workingValue then
          workingValue = DrawLightWithRangeAndShadow
          text3 = localValue2.x
          waitCall = localValue2.y
          dataCollection2 = localValue2.z
          stateFlag = 230
          stateFlag2 = 0
          stateFlag3 = 0
          stateFlag4 = 1.5
          stateFlag5 = 0.5
          number5 = 1.0
          workingValue(text3, waitCall, dataCollection2, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number5)
        else
          workingValue = localValue4
          if "blue" == workingValue then
            workingValue = DrawLightWithRangeAndShadow
            text3 = localValue2.x
            waitCall = localValue2.y
            dataCollection2 = localValue2.z
            stateFlag = 0
            stateFlag2 = 191
            stateFlag3 = 225
            stateFlag4 = 1.5
            stateFlag5 = 0.5
            number5 = 1.0
            workingValue(text3, waitCall, dataCollection2, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number5)
          end
        end
      end
    end
    text3 = localValue1
    workingValue = dataCollection
    workingValue = workingValue[text3]
    if workingValue then
      text3 = SetEntityHeading
      waitCall = workingValue
      dataCollection2 = GetEntityHeading
      stateFlag = workingValue
      -- Beginner: result below is heading.
      dataCollection2 = dataCollection2(stateFlag)
      dataCollection2 = dataCollection2 + 1
      -- Beginner: Change the direction an entity is facing.
      text3(waitCall, dataCollection2)
    end
  end
  stringHelper = CMG
  stringHelper = stringHelper.createArea
  number4 = "quests_prop_"
  tableHelper2 = localValue1
  number4 = number4 .. tableHelper2
  tableHelper2 = localValue2
  cmgOperation2 = 50.0
  cmgOperation3 = 50.0
  text2 = localValue5
  number = number3
  tableHelper = text4
  -- Beginner: Create an interaction area around a world position.
  stringHelper(number4, tableHelper2, cmgOperation2, cmgOperation3, text2, number, tableHelper)

  -- === HELPER FUNCTION: stringHelper() ===
  function stringHelper()
    local workingValue, text3, waitCall, dataCollection2, stateFlag, stateFlag2
    workingValue = CMG
    workingValue = workingValue.drawFloatingHelpText
    text3 = "Press [E] to collect."
    waitCall = vector3
    dataCollection2 = localValue2.x
    stateFlag = localValue2.y
    stateFlag2 = localValue2.z
    stateFlag2 = stateFlag2 + 0.2
    waitCall, dataCollection2, stateFlag, stateFlag2 = waitCall(dataCollection2, stateFlag, stateFlag2)
    workingValue(text3, waitCall, dataCollection2, stateFlag, stateFlag2)
    workingValue = IsControlJustPressed
    text3 = 0
    waitCall = 38
    workingValue = workingValue(text3, waitCall)
    if workingValue then
      workingValue = DeleteEntity
      waitCall = localValue1
      text3 = dataCollection
      text3 = text3[waitCall]
      -- Beginner: Delete a GTA entity.
      workingValue(text3)
      workingValue = TriggerServerEvent
      text3 = "ed960e5660"
      waitCall = localValue1
      dataCollection2 = localValue2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ed960e5660".
      workingValue(text3, waitCall, dataCollection2)
      workingValue = workingValue8
      workingValue()
    end
  end
  number4 = CMG
  number4 = number4.createArea
  tableHelper2 = "quests_text_"
  cmgOperation2 = localValue1
  tableHelper2 = tableHelper2 .. cmgOperation2
  cmgOperation2 = localValue2
  cmgOperation3 = 2.0
  text2 = 6

  -- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
  function number()
    local workingValue, text3
  end

  -- === HELPER FUNCTION: tableHelper() ===
  function tableHelper()
    local workingValue, text3
  end
  number2 = stringHelper
  -- Beginner: Create an interaction area around a world position.
  number4(tableHelper2, cmgOperation2, cmgOperation3, text2, number, tableHelper, number2)
  number4 = AddBlipForRadius
  tableHelper2 = localValue2.x
  cmgOperation2 = localValue2.y
  cmgOperation3 = localValue2.z
  text2 = 100.0
  -- Beginner: result below is blipHandle.
  number4 = number4(tableHelper2, cmgOperation2, cmgOperation3, text2)
  tableHelper2 = SetBlipColour
  cmgOperation2 = number4
  cmgOperation3 = 3
  tableHelper2(cmgOperation2, cmgOperation3)
  tableHelper2 = SetBlipAlpha
  cmgOperation2 = number4
  cmgOperation3 = 180
  tableHelper2(cmgOperation2, cmgOperation3)
  tableHelper2 = table
  tableHelper2 = tableHelper2.insert
  cmgOperation2 = eventHandler2
  cmgOperation3 = number4
  tableHelper2(cmgOperation2, cmgOperation3)
  tableHelper2 = AddBlipForCoord
  cmgOperation2 = localValue2.x
  cmgOperation3 = localValue2.y
  text2 = localValue2.z
  -- Beginner: result below is blipHandle.
  tableHelper2 = tableHelper2(cmgOperation2, cmgOperation3, text2)
  cmgOperation2 = SetBlipSprite
  cmgOperation3 = tableHelper2
  text2 = 93
  cmgOperation2(cmgOperation3, text2)
  cmgOperation2 = SetBlipAsShortRange
  cmgOperation3 = tableHelper2
  text2 = false
  cmgOperation2(cmgOperation3, text2)
  cmgOperation2 = table
  cmgOperation2 = cmgOperation2.insert
  cmgOperation3 = eventHandler2
  text2 = tableHelper2
  cmgOperation2(cmgOperation3, text2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4bb1481ea8".
eventHandler3(text, workingValue2)
eventHandler3 = RegisterNetEvent
text = "8bd9d5cf5c"
-- Beginner: this function handles network event "8bd9d5cf5c".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2) ===
function workingValue2(localValue1, localValue2)
  local localValue3, localValue4, localValue5, number3, text4, stringHelper, number4, tableHelper2
  localValue3 = tCMG
  localValue3 = localValue3.removeArea
  localValue4 = "quests_prop_"
  localValue5 = localValue1
  localValue4 = localValue4 .. localValue5
  localValue3(localValue4)
  localValue3 = tCMG
  localValue3 = localValue3.removeArea
  localValue4 = "quests_text_"
  localValue5 = localValue1
  localValue4 = localValue4 .. localValue5
  localValue3(localValue4)
  localValue3 = pairs
  localValue4 = eventHandler2
  localValue3, localValue4, localValue5, number3 = localValue3(localValue4)
  for text4, stringHelper in localValue3, localValue4, localValue5, number3 do
    number4 = RemoveBlip
    tableHelper2 = stringHelper
    number4(tableHelper2)
  end
  localValue3 = {}
  eventHandler2 = localValue3
  localValue3 = CMG
  localValue3 = localValue3.startFireworksAtCoord
  localValue4 = localValue2
  localValue3(localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8bd9d5cf5c".
eventHandler3(text, workingValue2)
