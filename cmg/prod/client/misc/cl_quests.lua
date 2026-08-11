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
local cmgCall, dataTable, workValue7, workValue8, workValue9, workValue10, workValue11, eventRegistration, eventRegistration2, eventRegistration3, textValue, workValue2
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable = "cfg/cfg_quests"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable)
dataTable = {}
workValue7 = nil

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: none) ===
function workValue8()
  local arg1, arg2, arg3, arg4, arg5, numberValue3, textValue4, stringHelper, numberValue4, tableHelper2, cmgCall2, cmgCall3
  arg1 = CMG
  arg1 = arg1.loadAnimDict
  arg2 = "anim@mp_player_intcelebrationfemale@air_guitar"
  -- Beginner: Load a GTA animation dictionary before using it.
  arg1(arg2)
  arg1 = TaskPlayAnim
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = "anim@mp_player_intcelebrationfemale@air_guitar"
  arg4 = "air_guitar"
  arg5 = 8.0
  numberValue3 = -8.0
  textValue4 = -1
  stringHelper = 0
  numberValue4 = 0.0
  tableHelper2 = false
  cmgCall2 = false
  cmgCall3 = false
  -- Beginner: Play an animation on a ped.
  arg1(arg2, arg3, arg4, arg5, numberValue3, textValue4, stringHelper, numberValue4, tableHelper2, cmgCall2, cmgCall3)
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1, arg2, arg3) ===
function workValue9(arg1, arg2, arg3)
  local arg4, arg5
  arg4 = Citizen
  arg4 = arg4.CreateThread

  -- === HELPER FUNCTION: arg5() ===
  function arg5()
    local workValue, textValue3, waitCall, dataTable2, flag, flag2, flag3, flag4, flag5
    workValue = Scaleform
    textValue3 = "MP_BIG_MESSAGE_FREEMODE"
    workValue = workValue(textValue3)
    textValue3 = workValue.RunFunction
    waitCall = "SHOW_SHARD_WASTED_MP_MESSAGE"
    dataTable2 = {}
    flag = arg1
    flag2 = arg2
    flag3 = 0
    flag4 = false
    flag5 = false
    dataTable2[1] = flag
    dataTable2[2] = flag2
    dataTable2[3] = flag3
    dataTable2[4] = flag4
    dataTable2[5] = flag5
    textValue3(waitCall, dataTable2)
    textValue3 = 0
    while true do
      waitCall = arg3
      if not (textValue3 < waitCall) then
        break
      end
      waitCall = Wait
      dataTable2 = 0
      waitCall(dataTable2)
      waitCall = workValue.Render2D
      waitCall()
      textValue3 = textValue3 + 1
    end
    waitCall = SetScaleformMovieAsNoLongerNeeded
    dataTable2 = workValue.Handle
    waitCall(dataTable2)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg4(arg5)
end

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: arg1, arg2, arg3, arg4, arg5) ===
function workValue10(arg1, arg2, arg3, arg4, arg5)
  local numberValue3, textValue4, stringHelper, numberValue4, tableHelper2, cmgCall2, cmgCall3, textValue2, numberValue, tableHelper, numberValue2, workValue3, workValue4, workValue5
  numberValue3 = arg1
  textValue4 = "_"
  stringHelper = tostring
  numberValue4 = arg2
  stringHelper = stringHelper(numberValue4)
  numberValue3 = numberValue3 .. textValue4 .. stringHelper
  textValue4 = arg3.pos

  -- === HELPER FUNCTION: stringHelper() ===
  function stringHelper()
    local workValue, textValue3, waitCall, dataTable2, flag, flag2, flag3, flag4
    textValue3 = numberValue3
    workValue = dataTable
    workValue = workValue[textValue3]
    if not workValue then
      workValue = DoesEntityExist
      waitCall = numberValue3
      textValue3 = dataTable
      textValue3 = textValue3[waitCall]
      workValue = workValue(textValue3)
      if not workValue then
        workValue = CMG
        workValue = workValue.loadModel
        textValue3 = arg3.model
        -- Beginner: Request/load a GTA model before spawning or applying it.
        workValue(textValue3)
        workValue = CreateObject
        textValue3 = arg3.model
        waitCall = textValue4.x
        dataTable2 = textValue4.y
        flag = textValue4.z
        flag2 = false
        flag3 = true
        flag4 = false
        -- Beginner: result below is objectEntity.
        workValue = workValue(textValue3, waitCall, dataTable2, flag, flag2, flag3, flag4)
        textValue3 = SetModelAsNoLongerNeeded
        waitCall = arg3.model
        textValue3(waitCall)
        textValue3 = FreezeEntityPosition
        waitCall = workValue
        dataTable2 = true
        -- Beginner: Freeze or unfreeze an entity in place.
        textValue3(waitCall, dataTable2)
        textValue3 = SetEntityCollision
        waitCall = workValue
        dataTable2 = false
        flag = false
        textValue3(waitCall, dataTable2, flag)
        waitCall = numberValue3
        textValue3 = dataTable
        textValue3[waitCall] = workValue
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: numberValue4; parameters: none) ===
  function numberValue4()
    local workValue, textValue3, waitCall
    workValue = DeleteObject
    waitCall = numberValue3
    textValue3 = dataTable
    textValue3 = textValue3[waitCall]
    workValue(textValue3)
    textValue3 = numberValue3
    workValue = dataTable
    workValue[textValue3] = nil
  end

  -- === HELPER FUNCTION: tableHelper2() ===
  function tableHelper2()
    local workValue, textValue3, waitCall, dataTable2, flag, flag2, flag3, flag4, flag5, numberValue5
    workValue = arg4
    if "green" == workValue then
      workValue = DrawLightWithRangeAndShadow
      textValue3 = textValue4.x
      waitCall = textValue4.y
      dataTable2 = textValue4.z
      flag = 52
      flag2 = 235
      flag3 = 55
      flag4 = 1.5
      flag5 = 0.5
      numberValue5 = 1.0
      workValue(textValue3, waitCall, dataTable2, flag, flag2, flag3, flag4, flag5, numberValue5)
    else
      workValue = arg4
      if "orange" == workValue then
        workValue = DrawLightWithRangeAndShadow
        textValue3 = textValue4.x
        waitCall = textValue4.y
        dataTable2 = textValue4.z
        flag = 230
        flag2 = 115
        flag3 = 0
        flag4 = 1.5
        flag5 = 0.5
        numberValue5 = 1.0
        workValue(textValue3, waitCall, dataTable2, flag, flag2, flag3, flag4, flag5, numberValue5)
      else
        workValue = arg4
        if "red" == workValue then
          workValue = DrawLightWithRangeAndShadow
          textValue3 = textValue4.x
          waitCall = textValue4.y
          dataTable2 = textValue4.z
          flag = 230
          flag2 = 0
          flag3 = 0
          flag4 = 1.5
          flag5 = 0.5
          numberValue5 = 1.0
          workValue(textValue3, waitCall, dataTable2, flag, flag2, flag3, flag4, flag5, numberValue5)
        else
          workValue = arg4
          if "blue" == workValue then
            workValue = DrawLightWithRangeAndShadow
            textValue3 = textValue4.x
            waitCall = textValue4.y
            dataTable2 = textValue4.z
            flag = 0
            flag2 = 191
            flag3 = 225
            flag4 = 1.5
            flag5 = 0.5
            numberValue5 = 1.0
            workValue(textValue3, waitCall, dataTable2, flag, flag2, flag3, flag4, flag5, numberValue5)
          end
        end
      end
    end
    textValue3 = numberValue3
    workValue = dataTable
    workValue = workValue[textValue3]
    if workValue then
      textValue3 = SetEntityHeading
      waitCall = workValue
      dataTable2 = GetEntityHeading
      flag = workValue
      -- Beginner: result below is heading.
      dataTable2 = dataTable2(flag)
      dataTable2 = dataTable2 + 1
      -- Beginner: Change the direction an entity is facing.
      textValue3(waitCall, dataTable2)
    end
  end
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.createArea
  cmgCall3 = "quests_prop_"
  textValue2 = numberValue3
  cmgCall3 = cmgCall3 .. textValue2
  textValue2 = textValue4
  numberValue = arg5 or numberValue
  if not arg5 then
    numberValue = 50.0
  end
  tableHelper = 50.0
  numberValue2 = stringHelper
  workValue3 = numberValue4
  workValue4 = tableHelper2
  -- Beginner: Create an interaction area around a world position.
  cmgCall2(cmgCall3, textValue2, numberValue, tableHelper, numberValue2, workValue3, workValue4)

  -- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
  function cmgCall2()
    local workValue, textValue3, waitCall, dataTable2, flag, flag2
    workValue = CMG
    workValue = workValue.drawFloatingHelpText
    textValue3 = "Press [E] to collect."
    waitCall = vector3
    dataTable2 = textValue4.x
    flag = textValue4.y
    flag2 = textValue4.z
    flag2 = flag2 + 0.2
    waitCall, dataTable2, flag, flag2 = waitCall(dataTable2, flag, flag2)
    workValue(textValue3, waitCall, dataTable2, flag, flag2)
    workValue = IsControlJustPressed
    textValue3 = 0
    waitCall = 38
    workValue = workValue(textValue3, waitCall)
    if workValue then
      workValue = arg1
      if "CHRISTMAS" == workValue then
        workValue = SendNUIMessage
        textValue3 = {}
        textValue3.transactionType = "christmas_quest"
        -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
        workValue(textValue3)
      end
      workValue = DeleteEntity
      waitCall = numberValue3
      textValue3 = dataTable
      textValue3 = textValue3[waitCall]
      -- Beginner: Delete a GTA entity.
      workValue(textValue3)
      workValue = TriggerServerEvent
      textValue3 = "020aa9f2cf"
      waitCall = arg1
      dataTable2 = arg2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "020aa9f2cf".
      workValue(textValue3, waitCall, dataTable2)
      workValue = workValue8
      workValue()
    end
  end
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.createArea
  textValue2 = "quests_text_"
  numberValue = numberValue3
  textValue2 = textValue2 .. numberValue
  numberValue = textValue4
  tableHelper = 2.0
  numberValue2 = 6

  -- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
  function workValue3()
    local workValue, textValue3
  end

  -- === HELPER FUNCTION (decompiler name: workValue4; parameters: none) ===
  function workValue4()
    local workValue, textValue3
  end
  workValue5 = cmgCall2
  -- Beginner: Create an interaction area around a world position.
  cmgCall3(textValue2, numberValue, tableHelper, numberValue2, workValue3, workValue4, workValue5)
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg1) ===
function workValue11(arg1)
  local arg2, arg3, arg4
  arg2 = workValue7
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg2 = arg1.year
  if arg2 then
    arg2 = arg1.year
    arg3 = workValue7.year
    if arg2 ~= arg3 then
      arg2 = false
      return arg2
    end
  end
  arg2 = arg1.startDate
  if arg2 then
    arg2 = table
    arg2 = arg2.unpack
    arg3 = arg1.startDate
    arg2, arg3 = arg2(arg3)
    arg4 = workValue7.month
    if arg3 > arg4 then
      arg4 = false
      return arg4
    else
      arg4 = workValue7.month
      if arg4 == arg3 then
        arg4 = workValue7.day
        if arg2 > arg4 then
          arg4 = false
          return arg4
        end
      end
    end
  end
  arg2 = arg1.endDate
  if arg2 then
    arg2 = table
    arg2 = arg2.unpack
    arg3 = arg1.endDate
    arg2, arg3 = arg2(arg3)
    arg4 = workValue7.month
    if arg3 < arg4 then
      arg4 = false
      return arg4
    else
      arg4 = workValue7.month
      if arg4 == arg3 then
        arg4 = workValue7.day
        if arg2 <= arg4 then
          arg4 = false
          return arg4
        end
      end
    end
  end
  arg2 = true
  return arg2
end
eventRegistration = RegisterNetEvent
eventRegistration2 = "53c319de7c"
-- Beginner: this function handles network event "53c319de7c".

-- === HELPER FUNCTION (decompiler name: eventRegistration3; parameters: arg1, arg2) ===
function eventRegistration3(arg1, arg2)
  local arg3, arg4, arg5, numberValue3, textValue4, stringHelper, numberValue4, tableHelper2, cmgCall2, cmgCall3, textValue2, numberValue, tableHelper, numberValue2, workValue3, workValue4, workValue5, workValue6
  workValue7 = arg2
  arg3 = pairs
  arg4 = cmgCall.quests
  arg3, arg4, arg5, numberValue3 = arg3(arg4)
  for textValue4, stringHelper in arg3, arg4, arg5, numberValue3 do
    numberValue4 = workValue11
    tableHelper2 = stringHelper
    numberValue4 = numberValue4(tableHelper2)
    if numberValue4 then
      numberValue4 = pairs
      tableHelper2 = stringHelper.locations
      numberValue4, tableHelper2, cmgCall2, cmgCall3 = numberValue4(tableHelper2)
      for textValue2, numberValue in numberValue4, tableHelper2, cmgCall2, cmgCall3 do
        tableHelper = arg1[textValue4]
        if tableHelper then
          tableHelper = table
          tableHelper = tableHelper.has
          numberValue2 = arg1[textValue4]
          workValue3 = textValue2
          tableHelper = tableHelper(numberValue2, workValue3)
          if tableHelper then
            goto flow_label_32
          end
        end
        tableHelper = workValue10
        numberValue2 = textValue4
        workValue3 = textValue2
        workValue4 = numberValue
        workValue5 = stringHelper.lightColour
        workValue6 = stringHelper.propRenderDistance
        tableHelper(numberValue2, workValue3, workValue4, workValue5, workValue6)
        ::flow_label_32::
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "53c319de7c".
eventRegistration(eventRegistration2, eventRegistration3)

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1, arg2) ===
function eventRegistration(arg1, arg2)
  local arg3, arg4, arg5, numberValue3
  arg3 = arg1
  arg4 = "_"
  arg5 = tostring
  numberValue3 = arg2
  arg5 = arg5(numberValue3)
  arg3 = arg3 .. arg4 .. arg5
  arg4 = tCMG
  arg4 = arg4.removeArea
  arg5 = "quests_prop_"
  numberValue3 = arg3
  arg5 = arg5 .. numberValue3
  arg4(arg5)
  arg4 = tCMG
  arg4 = arg4.removeArea
  arg5 = "quests_text_"
  numberValue3 = arg3
  arg5 = arg5 .. numberValue3
  arg4(arg5)
end
eventRegistration2 = RegisterNetEvent
eventRegistration3 = "a47c883890"
-- Beginner: this function handles network event "a47c883890".

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1, arg2, arg3, arg4) ===
function textValue(arg1, arg2, arg3, arg4)
  local arg5, numberValue3, textValue4, stringHelper, numberValue4, tableHelper2, cmgCall2
  arg5 = eventRegistration
  numberValue3 = arg2
  textValue4 = arg3
  -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: true.
  arg5(numberValue3, textValue4)
  if arg1 then
    if "BIRTHDAY" == arg2 then
      arg5 = workValue9
      numberValue3 = "~g~+5 Year Special Lock"
      textValue4 = "You collected them all!"
      stringHelper = 600
      arg5(numberValue3, textValue4, stringHelper)
    elseif "HALLOWEEN2025" == arg2 then
      arg5 = workValue9
      numberValue3 = "~g~+\194\16310,000,000 earned, happy halloween!"
      textValue4 = "You collected them all!"
      stringHelper = 600
      arg5(numberValue3, textValue4, stringHelper)
    elseif "WORLDCUP2026" == arg2 then
      arg5 = workValue9
      numberValue3 = "~g~England World Cup top unlocked!"
      textValue4 = "You collected them all!"
      stringHelper = 600
      arg5(numberValue3, textValue4, stringHelper)
    else
      arg5 = workValue9
      numberValue3 = "~g~+14 Days CMG Club Platinum"
      textValue4 = "You collected them all!"
      stringHelper = 600
      arg5(numberValue3, textValue4, stringHelper)
    end
    arg5 = PlaySoundFrontend
    numberValue3 = -1
    textValue4 = "Hack_Success"
    stringHelper = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
    numberValue4 = true
    arg5(numberValue3, textValue4, stringHelper, numberValue4)
  else
    arg5 = workValue9
    numberValue3 = "Collected ~y~"
    textValue4 = tostring
    stringHelper = arg4
    textValue4 = textValue4(stringHelper)
    stringHelper = "/"
    numberValue4 = tostring
    tableHelper2 = table
    tableHelper2 = tableHelper2.count
    cmgCall2 = cmgCall.quests
    cmgCall2 = cmgCall2[arg2]
    cmgCall2 = cmgCall2.locations
    tableHelper2, cmgCall2 = tableHelper2(cmgCall2)
    numberValue4 = numberValue4(tableHelper2, cmgCall2)
    numberValue3 = numberValue3 .. textValue4 .. stringHelper .. numberValue4
    textValue4 = "Collect them all to win a prize!"
    stringHelper = 600
    arg5(numberValue3, textValue4, stringHelper)
    arg5 = PlaySoundFrontend
    numberValue3 = -1
    textValue4 = "Hack_Success"
    stringHelper = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
    numberValue4 = true
    arg5(numberValue3, textValue4, stringHelper, numberValue4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a47c883890".
eventRegistration2(eventRegistration3, textValue)
eventRegistration2 = RegisterNetEvent
eventRegistration3 = "886eb8b762"
-- Beginner: this function handles network event "886eb8b762".

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1, arg2) ===
function textValue(arg1, arg2)
  local arg3, arg4, arg5, numberValue3, textValue4
  arg3 = eventRegistration
  arg4 = arg1
  arg5 = arg2
  arg3(arg4, arg5)
  arg3 = workValue9
  arg4 = "~g~All Sweets Collected"
  arg5 = "You collected them all!"
  numberValue3 = 600
  arg3(arg4, arg5, numberValue3)
  arg3 = PlaySoundFrontend
  arg4 = -1
  arg5 = "Hack_Success"
  numberValue3 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
  textValue4 = true
  arg3(arg4, arg5, numberValue3, textValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "886eb8b762".
eventRegistration2(eventRegistration3, textValue)
eventRegistration2 = AddEventHandler
eventRegistration3 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1) ===
function textValue(arg1)
  local arg2, arg3, arg4, arg5, numberValue3, textValue4, stringHelper, numberValue4
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 == arg2 then
    arg2 = pairs
    arg3 = dataTable
    arg2, arg3, arg4, arg5 = arg2(arg3)
    for numberValue3, textValue4 in arg2, arg3, arg4, arg5 do
      stringHelper = DeleteObject
      numberValue4 = textValue4
      stringHelper(numberValue4)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
eventRegistration2(eventRegistration3, textValue)
eventRegistration2 = {}
eventRegistration3 = RegisterNetEvent
textValue = "4bb1481ea8"
-- Beginner: this function handles network event "4bb1481ea8".

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1, arg2, arg3, arg4) ===
function workValue2(arg1, arg2, arg3, arg4)
  local arg5, numberValue3, textValue4, stringHelper, numberValue4, tableHelper2, cmgCall2, cmgCall3, textValue2, numberValue, tableHelper, numberValue2
  -- Beginner: this function handles network event "4bb1481ea8".

  -- === HELPER FUNCTION: arg5() ===
  function arg5()
    local workValue, textValue3, waitCall, dataTable2, flag, flag2, flag3, flag4
    textValue3 = arg1
    workValue = dataTable
    workValue = workValue[textValue3]
    if not workValue then
      workValue = DoesEntityExist
      waitCall = arg1
      textValue3 = dataTable
      textValue3 = textValue3[waitCall]
      workValue = workValue(textValue3)
      if not workValue then
        workValue = CMG
        workValue = workValue.loadModel
        textValue3 = arg3
        -- Beginner: Request/load a GTA model before spawning or applying it.
        workValue(textValue3)
        workValue = CreateObject
        textValue3 = arg3
        waitCall = arg2.x
        dataTable2 = arg2.y
        flag = arg2.z
        flag2 = false
        flag3 = true
        flag4 = false
        -- Beginner: result below is objectEntity.
        workValue = workValue(textValue3, waitCall, dataTable2, flag, flag2, flag3, flag4)
        textValue3 = SetModelAsNoLongerNeeded
        waitCall = arg3
        textValue3(waitCall)
        textValue3 = FreezeEntityPosition
        waitCall = workValue
        dataTable2 = true
        -- Beginner: Freeze or unfreeze an entity in place.
        textValue3(waitCall, dataTable2)
        textValue3 = SetEntityCollision
        waitCall = workValue
        dataTable2 = false
        flag = false
        textValue3(waitCall, dataTable2, flag)
        waitCall = arg1
        textValue3 = dataTable
        textValue3[waitCall] = workValue
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: numberValue3; parameters: none) ===
  function numberValue3()
    local workValue, textValue3, waitCall
    workValue = DeleteObject
    waitCall = arg1
    textValue3 = dataTable
    textValue3 = textValue3[waitCall]
    workValue(textValue3)
    textValue3 = arg1
    workValue = dataTable
    workValue[textValue3] = nil
  end

  -- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
  function textValue4()
    local workValue, textValue3, waitCall, dataTable2, flag, flag2, flag3, flag4, flag5, numberValue5
    workValue = arg4
    if "green" == workValue then
      workValue = DrawLightWithRangeAndShadow
      textValue3 = arg2.x
      waitCall = arg2.y
      dataTable2 = arg2.z
      flag = 52
      flag2 = 235
      flag3 = 55
      flag4 = 1.5
      flag5 = 0.5
      numberValue5 = 1.0
      workValue(textValue3, waitCall, dataTable2, flag, flag2, flag3, flag4, flag5, numberValue5)
    else
      workValue = arg4
      if "orange" == workValue then
        workValue = DrawLightWithRangeAndShadow
        textValue3 = arg2.x
        waitCall = arg2.y
        dataTable2 = arg2.z
        flag = 230
        flag2 = 115
        flag3 = 0
        flag4 = 1.5
        flag5 = 0.5
        numberValue5 = 1.0
        workValue(textValue3, waitCall, dataTable2, flag, flag2, flag3, flag4, flag5, numberValue5)
      else
        workValue = arg4
        if "red" == workValue then
          workValue = DrawLightWithRangeAndShadow
          textValue3 = arg2.x
          waitCall = arg2.y
          dataTable2 = arg2.z
          flag = 230
          flag2 = 0
          flag3 = 0
          flag4 = 1.5
          flag5 = 0.5
          numberValue5 = 1.0
          workValue(textValue3, waitCall, dataTable2, flag, flag2, flag3, flag4, flag5, numberValue5)
        else
          workValue = arg4
          if "blue" == workValue then
            workValue = DrawLightWithRangeAndShadow
            textValue3 = arg2.x
            waitCall = arg2.y
            dataTable2 = arg2.z
            flag = 0
            flag2 = 191
            flag3 = 225
            flag4 = 1.5
            flag5 = 0.5
            numberValue5 = 1.0
            workValue(textValue3, waitCall, dataTable2, flag, flag2, flag3, flag4, flag5, numberValue5)
          end
        end
      end
    end
    textValue3 = arg1
    workValue = dataTable
    workValue = workValue[textValue3]
    if workValue then
      textValue3 = SetEntityHeading
      waitCall = workValue
      dataTable2 = GetEntityHeading
      flag = workValue
      -- Beginner: result below is heading.
      dataTable2 = dataTable2(flag)
      dataTable2 = dataTable2 + 1
      -- Beginner: Change the direction an entity is facing.
      textValue3(waitCall, dataTable2)
    end
  end
  stringHelper = CMG
  stringHelper = stringHelper.createArea
  numberValue4 = "quests_prop_"
  tableHelper2 = arg1
  numberValue4 = numberValue4 .. tableHelper2
  tableHelper2 = arg2
  cmgCall2 = 50.0
  cmgCall3 = 50.0
  textValue2 = arg5
  numberValue = numberValue3
  tableHelper = textValue4
  -- Beginner: Create an interaction area around a world position.
  stringHelper(numberValue4, tableHelper2, cmgCall2, cmgCall3, textValue2, numberValue, tableHelper)

  -- === HELPER FUNCTION: stringHelper() ===
  function stringHelper()
    local workValue, textValue3, waitCall, dataTable2, flag, flag2
    workValue = CMG
    workValue = workValue.drawFloatingHelpText
    textValue3 = "Press [E] to collect."
    waitCall = vector3
    dataTable2 = arg2.x
    flag = arg2.y
    flag2 = arg2.z
    flag2 = flag2 + 0.2
    waitCall, dataTable2, flag, flag2 = waitCall(dataTable2, flag, flag2)
    workValue(textValue3, waitCall, dataTable2, flag, flag2)
    workValue = IsControlJustPressed
    textValue3 = 0
    waitCall = 38
    workValue = workValue(textValue3, waitCall)
    if workValue then
      workValue = DeleteEntity
      waitCall = arg1
      textValue3 = dataTable
      textValue3 = textValue3[waitCall]
      -- Beginner: Delete a GTA entity.
      workValue(textValue3)
      workValue = TriggerServerEvent
      textValue3 = "ed960e5660"
      waitCall = arg1
      dataTable2 = arg2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ed960e5660".
      workValue(textValue3, waitCall, dataTable2)
      workValue = workValue8
      workValue()
    end
  end
  numberValue4 = CMG
  numberValue4 = numberValue4.createArea
  tableHelper2 = "quests_text_"
  cmgCall2 = arg1
  tableHelper2 = tableHelper2 .. cmgCall2
  cmgCall2 = arg2
  cmgCall3 = 2.0
  textValue2 = 6

  -- === HELPER FUNCTION (decompiler name: numberValue; parameters: none) ===
  function numberValue()
    local workValue, textValue3
  end

  -- === HELPER FUNCTION: tableHelper() ===
  function tableHelper()
    local workValue, textValue3
  end
  numberValue2 = stringHelper
  -- Beginner: Create an interaction area around a world position.
  numberValue4(tableHelper2, cmgCall2, cmgCall3, textValue2, numberValue, tableHelper, numberValue2)
  numberValue4 = AddBlipForRadius
  tableHelper2 = arg2.x
  cmgCall2 = arg2.y
  cmgCall3 = arg2.z
  textValue2 = 100.0
  -- Beginner: result below is blipHandle.
  numberValue4 = numberValue4(tableHelper2, cmgCall2, cmgCall3, textValue2)
  tableHelper2 = SetBlipColour
  cmgCall2 = numberValue4
  cmgCall3 = 3
  tableHelper2(cmgCall2, cmgCall3)
  tableHelper2 = SetBlipAlpha
  cmgCall2 = numberValue4
  cmgCall3 = 180
  tableHelper2(cmgCall2, cmgCall3)
  tableHelper2 = table
  tableHelper2 = tableHelper2.insert
  cmgCall2 = eventRegistration2
  cmgCall3 = numberValue4
  tableHelper2(cmgCall2, cmgCall3)
  tableHelper2 = AddBlipForCoord
  cmgCall2 = arg2.x
  cmgCall3 = arg2.y
  textValue2 = arg2.z
  -- Beginner: result below is blipHandle.
  tableHelper2 = tableHelper2(cmgCall2, cmgCall3, textValue2)
  cmgCall2 = SetBlipSprite
  cmgCall3 = tableHelper2
  textValue2 = 93
  cmgCall2(cmgCall3, textValue2)
  cmgCall2 = SetBlipAsShortRange
  cmgCall3 = tableHelper2
  textValue2 = false
  cmgCall2(cmgCall3, textValue2)
  cmgCall2 = table
  cmgCall2 = cmgCall2.insert
  cmgCall3 = eventRegistration2
  textValue2 = tableHelper2
  cmgCall2(cmgCall3, textValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4bb1481ea8".
eventRegistration3(textValue, workValue2)
eventRegistration3 = RegisterNetEvent
textValue = "8bd9d5cf5c"
-- Beginner: this function handles network event "8bd9d5cf5c".

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1, arg2) ===
function workValue2(arg1, arg2)
  local arg3, arg4, arg5, numberValue3, textValue4, stringHelper, numberValue4, tableHelper2
  arg3 = tCMG
  arg3 = arg3.removeArea
  arg4 = "quests_prop_"
  arg5 = arg1
  arg4 = arg4 .. arg5
  arg3(arg4)
  arg3 = tCMG
  arg3 = arg3.removeArea
  arg4 = "quests_text_"
  arg5 = arg1
  arg4 = arg4 .. arg5
  arg3(arg4)
  arg3 = pairs
  arg4 = eventRegistration2
  arg3, arg4, arg5, numberValue3 = arg3(arg4)
  for textValue4, stringHelper in arg3, arg4, arg5, numberValue3 do
    numberValue4 = RemoveBlip
    tableHelper2 = stringHelper
    numberValue4(tableHelper2)
  end
  arg3 = {}
  eventRegistration2 = arg3
  arg3 = CMG
  arg3 = arg3.startFireworksAtCoord
  arg4 = arg2
  arg3(arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8bd9d5cf5c".
eventRegistration3(textValue, workValue2)
