--[[
    LEVEL 1 BEGINNER GUIDE — Sharedjobs
    ========================================

    File: cmg/prod/client/jobs/cl_sharedjobs.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: civilian/job gameplay, specifically the Sharedjobs feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 28
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
local cmgOperation, text3, workingValue13, cmgOperation7, text5, dataCollection7, stateFlag2, text6, workingValue14, stateFlag3, dataCollection, dataCollection2, cmgOperation2, cmgOperation3, cmgOperation4, cmgOperation5, cmgOperation6, text, eventHandler, text2, stateFlag, text4
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
text3 = "cfg/cfg_jobs"
-- Beginner: result below is config.
cmgOperation = cmgOperation(text3)
text3 = nil

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, localValue2, mathHelper, dataCollection6
  localValue1 = GetActiveScreenResolution
  localValue1, localValue2 = localValue1()
  if 1920 == localValue1 then
    mathHelper = 350
    return mathHelper
  elseif 3440 == localValue1 and 1440 == localValue2 then
    mathHelper = math
    mathHelper = mathHelper.floor
    dataCollection6 = localValue1 * 0.1
    return mathHelper(dataCollection6)
  end
  mathHelper = math
  mathHelper = mathHelper.floor
  dataCollection6 = localValue1 * 0.135
  return mathHelper(dataCollection6)
end
cmgOperation7 = CMG
cmgOperation7 = cmgOperation7.uiRegisterCallback
text5 = "questLogClosed"

-- === HELPER FUNCTION (decompiler name: dataCollection7; parameters: none) ===
function dataCollection7()
  local localValue1, localValue2
  localValue1 = TriggerEvent
  localValue2 = "0140c9970e"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "0140c9970e".
  localValue1(localValue2)
end
cmgOperation7(text5, dataCollection7)
cmgOperation7 = AddEventHandler
text5 = "0140c9970e"
-- Beginner: this function runs when client event "0140c9970e" fires.

-- === HELPER FUNCTION (decompiler name: dataCollection7; parameters: none) ===
function dataCollection7()
  local localValue1, localValue2
  localValue1 = RageUI
  if localValue1 then
    localValue1 = RageUI
    localValue1.QuestLogXOffset = 0
  end
end
-- Beginner: Register a client-side event handler. Event/command: "0140c9970e".
cmgOperation7(text5, dataCollection7)
cmgOperation7 = nil
text5 = nil
dataCollection7 = {}
stateFlag2 = false
text6 = "JOB TUTORIAL"
workingValue14 = nil
stateFlag3 = false
dataCollection = {}
dataCollection["Health Service"] = true
dataCollection2 = {}
dataCollection2.Trapper = true
dataCollection2.Garbage = true
dataCollection2.Mechanic = true
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, mathHelper
  localValue1 = CMG
  localValue1 = localValue1.getClientJob
  localValue1 = localValue1()
  if not localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.warn
    mathHelper = "getCurrentJobTheme called but player has no job"
    localValue2(mathHelper)
    localValue2 = {}
    return localValue2
  end
  localValue2 = cmgOperation.jobs
  localValue2 = localValue2[localValue1]
  localValue2 = localValue2._config
  localValue2 = localValue2.theme
  return localValue2
end
cmgOperation2.getCurrentJobTheme = cmgOperation3
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2
  localValue1 = cmgOperation7
  localValue1 = nil ~= localValue1
  return localValue1
end
cmgOperation2.isJobTutorialRunning = cmgOperation3

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, mathHelper, dataCollection6, number7
  localValue2 = CMG
  localValue2 = localValue2.uiSendMessage
  mathHelper = {}
  mathHelper.type = "JOB_MENU_TUTORIAL_RUNNING"
  dataCollection6 = {}
  number7 = true == localValue1
  dataCollection6.running = number7
  mathHelper.info = dataCollection6
  localValue2(mathHelper)
end
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, mathHelper, dataCollection6, number7, number8, number9, number10
  localValue1 = cmgOperation7
  if not localValue1 then
    return
  end
  while true do
    localValue1 = stateFlag3
    if not localValue1 then
      break
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
  localValue1 = text5
  if localValue1 then
    localValue1 = tCMG
    localValue1 = localValue1.removeMarker
    localValue2 = text5
    localValue1(localValue2)
    localValue1 = nil
    text5 = localValue1
  end
  localValue1 = pairs
  localValue2 = dataCollection7
  localValue1, localValue2, mathHelper, dataCollection6 = localValue1(localValue2)
  for number7, number8 in localValue1, localValue2, mathHelper, dataCollection6 do
    number9 = DeleteCheckpoint
    number10 = number8
    number9(number10)
  end
  localValue1 = {}
  dataCollection7 = localValue1
  localValue1 = tCMG
  localValue1 = localValue1.removeArea
  localValue2 = "job_tutorial_step_marker"
  localValue1(localValue2)
  localValue1 = nil
  cmgOperation7 = localValue1
  localValue1 = nil
  text3 = localValue1
  localValue1 = nil
  workingValue14 = localValue1
  localValue1 = RageUI
  if localValue1 then
    localValue1 = RageUI
    localValue1.QuestLogXOffset = 0
  end
  localValue1 = CMG
  localValue1 = localValue1.uiSendMessage
  localValue2 = {}
  localValue2.type = "QUEST_LOG_CLEAR_ALL"
  mathHelper = {}
  localValue2.info = mathHelper
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.uiSendMessage
  localValue2 = {}
  localValue2.type = "QUEST_LOG_SET_OPEN"
  mathHelper = {}
  mathHelper.isOpen = false
  localValue2.info = mathHelper
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.uiSendMessage
  localValue2 = {}
  localValue2.type = "QUEST_LOG_SET_TITLE"
  mathHelper = {}
  mathHelper.title = "QUEST LOG"
  localValue2.info = mathHelper
  localValue1(localValue2)
  localValue1 = cmgOperation2
  localValue2 = false
  localValue1(localValue2)
  localValue1 = TriggerServerEvent
  localValue2 = "ca6a8a2b4f"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ca6a8a2b4f".
  localValue1(localValue2)
end
cmgOperation3.cancelJobTutorial = cmgOperation4

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1) ===
function cmgOperation3(localValue1)
  local localValue2, mathHelper, dataCollection6, number7, number8, number9, number10, number11, workingValue15, workingValue, workingValue2, number, number2, tableHelper, workingValue3, workingValue4, dataCollection3, number3, workingValue5, number4, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, workingValue12, number5, number6
  localValue2 = text5
  if localValue2 then
    localValue2 = tCMG
    localValue2 = localValue2.removeMarker
    mathHelper = text5
    localValue2(mathHelper)
    localValue2 = nil
    text5 = localValue2
  end
  localValue2 = pairs
  mathHelper = dataCollection7
  localValue2, mathHelper, dataCollection6, number7 = localValue2(mathHelper)
  for number8, number9 in localValue2, mathHelper, dataCollection6, number7 do
    number10 = DeleteCheckpoint
    number11 = number9
    number10(number11)
  end
  localValue2 = {}
  dataCollection7 = localValue2
  if localValue1 then
    localValue2 = localValue1.locationMarker
    if localValue2 then
      localValue2 = localValue1.locationMarker
      localValue2 = localValue2.x
      if nil ~= localValue2 then
        localValue2 = localValue1.locationMarker
        localValue2 = localValue2.y
        if nil ~= localValue2 then
          localValue2 = localValue1.locationMarker
          localValue2 = localValue2.z
          if nil ~= localValue2 then
            goto continueAtStep41
          end
        end
      end
    end
  end
  return
  ::continueAtStep41::
  localValue2 = CMG
  localValue2 = localValue2.getCurrentJobTheme
  localValue2 = localValue2()
  mathHelper = 1.0
  dataCollection6 = 1.0
  number7 = 0.4
  number8 = 2.0
  number9 = 2.0
  number10 = 30
  number11 = localValue1.markerForVehicle
  if number11 then
    number11 = 4.0
    dataCollection6 = 4.0
    mathHelper = number11
    number11 = 8.0
    number9 = 8.0
    number8 = number11
    number10 = 150
  end
  number11 = tCMG
  number11 = number11.addMarker
  workingValue15 = localValue1.locationMarker
  workingValue15 = workingValue15.x
  workingValue = localValue1.locationMarker
  workingValue = workingValue.y
  workingValue2 = localValue1.locationMarker
  workingValue2 = workingValue2.z
  workingValue2 = workingValue2 - 1.0
  number = mathHelper
  number2 = dataCollection6
  tableHelper = number7
  workingValue3 = localValue2.r
  workingValue4 = localValue2.g
  dataCollection3 = localValue2.b
  number3 = 150
  workingValue5 = number10
  number4 = 1
  number11 = number11(workingValue15, workingValue, workingValue2, number, number2, tableHelper, workingValue3, workingValue4, dataCollection3, number3, workingValue5, number4)
  text5 = number11
  number11 = pairs
  workingValue15 = localValue1.checkpoints
  if not workingValue15 then
    workingValue15 = {}
  end
  number11, workingValue15, workingValue, workingValue2 = number11(workingValue15)
  for number, number2 in number11, workingValue15, workingValue, workingValue2 do
    tableHelper = table
    tableHelper = tableHelper.insert
    workingValue3 = dataCollection7
    workingValue4 = CreateCheckpoint
    dataCollection3 = 0
    number3 = number2.x
    workingValue5 = number2.y
    number4 = number2.z
    number4 = number4 - 1.0
    workingValue6 = localValue1.locationMarker
    workingValue6 = workingValue6.x
    workingValue7 = localValue1.locationMarker
    workingValue7 = workingValue7.y
    workingValue8 = localValue1.locationMarker
    workingValue8 = workingValue8.z
    workingValue9 = number9
    workingValue10 = localValue2.r
    workingValue11 = localValue2.g
    workingValue12 = localValue2.b
    number5 = 100
    number6 = 0
    workingValue4, dataCollection3, number3, workingValue5, number4, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, workingValue12, number5, number6 = workingValue4(dataCollection3, number3, workingValue5, number4, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, workingValue12, number5, number6)
    tableHelper(workingValue3, workingValue4, dataCollection3, number3, workingValue5, number4, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, workingValue12, number5, number6)
  end
  number11 = SetNewWaypoint
  workingValue15 = localValue1.locationMarker
  workingValue15 = workingValue15.x
  workingValue = localValue1.locationMarker
  workingValue = workingValue.y
  number11(workingValue15, workingValue)
  number11 = tCMG
  number11 = number11.removeArea
  workingValue15 = "job_tutorial_step_marker"
  number11(workingValue15)
  number11 = localValue1.ignoreAreaCheck
  if not number11 then
    number11 = localValue1.markerVisualOnly
  end
  if not number11 then
    workingValue15 = CMG
    workingValue15 = workingValue15.createArea
    workingValue = "job_tutorial_step_marker"
    workingValue2 = localValue1.locationMarker
    number = number8
    number2 = 6

    -- === HELPER FUNCTION: tableHelper() ===
    function tableHelper()
      local gameTime, dataCollection4
    end

    -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
    function workingValue3()
      local gameTime, dataCollection4
    end

    -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
    function workingValue4()
      local gameTime, dataCollection4, dataCollection5
      gameTime = CMG
      gameTime = gameTime.addJobTutorialProgress
      dataCollection4 = localValue1.id
      dataCollection5 = 1
      gameTime(dataCollection4, dataCollection5)
    end
    dataCollection3 = {}
    -- Beginner: Create an interaction area around a world position.
    workingValue15(workingValue, workingValue2, number, number2, tableHelper, workingValue3, workingValue4, dataCollection3)
  end
end
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1) ===
function cmgOperation5(localValue1)
  local localValue2, mathHelper, dataCollection6
  localValue2 = cmgOperation7
  if localValue2 then
    localValue2 = text3
    if localValue2 then
      goto continueAtStep8
    end
  end
  return
  ::continueAtStep8::
  localValue2 = text3
  mathHelper = localValue2 + 1
  localValue2 = cmgOperation7
  localValue2 = localValue2[mathHelper]
  if localValue2 then
    localValue2.locationMarker = localValue1
    mathHelper = cmgOperation3
    dataCollection6 = localValue2
    mathHelper(dataCollection6)
  end
end
cmgOperation4.setNextStepLocationMarker = cmgOperation5
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2
  localValue1 = cmgOperation7
  if localValue1 then
    localValue1 = text3
    if localValue1 then
      goto continueAtStep9
    end
  end
  localValue1 = nil
  return localValue1
  ::continueAtStep9::
  localValue2 = text3
  localValue1 = cmgOperation7
  localValue1 = localValue1[localValue2]
  if localValue1 then
    localValue2 = localValue1.id
    if localValue2 then
      goto continueAtStep18
    end
  end
  localValue2 = nil
  ::continueAtStep18::
  return localValue2
end
cmgOperation4.getCurrentQuestStepId = cmgOperation5
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1) ===
function cmgOperation5(localValue1)
  local localValue2, mathHelper, dataCollection6
  localValue2 = cmgOperation7
  if localValue2 then
    localValue2 = text3
    if localValue2 then
      goto continueAtStep8
    end
  end
  return
  ::continueAtStep8::
  mathHelper = text3
  localValue2 = cmgOperation7
  localValue2 = localValue2[mathHelper]
  if localValue2 then
    localValue2.locationMarker = localValue1
    mathHelper = cmgOperation3
    dataCollection6 = localValue2
    mathHelper(dataCollection6)
  end
end
cmgOperation4.setCurrentStepLocationMarker = cmgOperation5

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, mathHelper, dataCollection6, number7, number8, number9, number10, number11, workingValue15, workingValue, workingValue2, number
  localValue1 = RequestScaleformMovie
  localValue2 = "mp_mission_name_freemode"
  -- Beginner: result below is scaleformHandle.
  localValue1 = localValue1(localValue2)
  while true do
    localValue2 = HasScaleformMovieLoaded
    mathHelper = localValue1
    localValue2 = localValue2(mathHelper)
    if localValue2 then
      break
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    mathHelper = 0
    localValue2(mathHelper)
  end
  localValue2 = BeginScaleformMovieMethod
  mathHelper = localValue1
  dataCollection6 = "SET_MISSION_INFO"
  localValue2(mathHelper, dataCollection6)
  localValue2 = _ENV
  mathHelper = "ScaleformMovieMethodAddParamTextureNameString"
  localValue2 = localValue2[mathHelper]
  mathHelper = text6
  localValue2(mathHelper)
  localValue2 = _ENV
  mathHelper = "ScaleformMovieMethodAddParamTextureNameString"
  localValue2 = localValue2[mathHelper]
  mathHelper = "~g~Tutorial Complete"
  localValue2(mathHelper)
  localValue2 = _ENV
  mathHelper = "ScaleformMovieMethodAddParamTextureNameString"
  localValue2 = localValue2[mathHelper]
  mathHelper = "0"
  localValue2(mathHelper)
  localValue2 = _ENV
  mathHelper = "ScaleformMovieMethodAddParamTextureNameString"
  localValue2 = localValue2[mathHelper]
  mathHelper = ""
  localValue2(mathHelper)
  localValue2 = _ENV
  mathHelper = "ScaleformMovieMethodAddParamTextureNameString"
  localValue2 = localValue2[mathHelper]
  mathHelper = ""
  localValue2(mathHelper)
  localValue2 = _ENV
  mathHelper = "ScaleformMovieMethodAddParamTextureNameString"
  localValue2 = localValue2[mathHelper]
  mathHelper = ""
  localValue2(mathHelper)
  localValue2 = _ENV
  mathHelper = "ScaleformMovieMethodAddParamTextureNameString"
  localValue2 = localValue2[mathHelper]
  mathHelper = ""
  localValue2(mathHelper)
  localValue2 = _ENV
  mathHelper = "ScaleformMovieMethodAddParamTextureNameString"
  localValue2 = localValue2[mathHelper]
  mathHelper = "0"
  localValue2(mathHelper)
  localValue2 = _ENV
  mathHelper = "ScaleformMovieMethodAddParamTextureNameString"
  localValue2 = localValue2[mathHelper]
  mathHelper = "0"
  localValue2(mathHelper)
  localValue2 = _ENV
  mathHelper = "ScaleformMovieMethodAddParamTextureNameString"
  localValue2 = localValue2[mathHelper]
  mathHelper = ""
  localValue2(mathHelper)
  localValue2 = EndScaleformMovieMethod
  localValue2()
  localValue2 = SendNUIMessage
  mathHelper = {}
  mathHelper.transactionType = "questcomplete"
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  localValue2(mathHelper)
  localValue2 = nil
  workingValue14 = localValue2
  localValue2 = TriggerServerEvent
  mathHelper = "6932434e21"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6932434e21".
  localValue2(mathHelper)
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  while true do
    mathHelper = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    mathHelper = mathHelper()
    mathHelper = mathHelper - localValue2
    dataCollection6 = 7000
    if not (mathHelper < dataCollection6) then
      break
    end
    mathHelper = DrawScaleformMovie
    dataCollection6 = localValue1
    number7 = 0.5
    number8 = 0.35
    number9 = 0.3
    number10 = 0.4615
    number11 = 255
    workingValue15 = 255
    workingValue = 255
    workingValue2 = 255
    number = 0
    mathHelper(dataCollection6, number7, number8, number9, number10, number11, workingValue15, workingValue, workingValue2, number)
    mathHelper = Citizen
    mathHelper = mathHelper.Wait
    dataCollection6 = 0
    mathHelper(dataCollection6)
  end
  mathHelper = SetScaleformMovieAsNoLongerNeeded
  dataCollection6 = localValue1
  mathHelper(dataCollection6)
end
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: localValue1, localValue2) ===
function cmgOperation6(localValue1, localValue2)
  local mathHelper, dataCollection6, number7, number8, number9, number10, number11, workingValue15, workingValue
  while true do
    mathHelper = stateFlag3
    if not mathHelper then
      break
    end
    mathHelper = Wait
    dataCollection6 = 0
    mathHelper(dataCollection6)
  end
  mathHelper = true
  stateFlag3 = mathHelper
  mathHelper = cmgOperation7
  if mathHelper then
    mathHelper = text3
    if mathHelper then
      goto continueAtStep19
    end
  end
  mathHelper = false
  stateFlag3 = mathHelper
  return
  ::continueAtStep19::
  dataCollection6 = text3
  mathHelper = cmgOperation7
  mathHelper = mathHelper[dataCollection6]
  mathHelper = mathHelper.id
  if mathHelper ~= localValue1 then
    mathHelper = false
    stateFlag3 = mathHelper
    return
  end
  mathHelper = CMG
  mathHelper = mathHelper.getCurrentJobTheme
  mathHelper = mathHelper()
  if not mathHelper then
    mathHelper = CMG
    mathHelper = mathHelper.warn
    dataCollection6 = "currentJobTheme is nil in job tutorial start"
    number7 = localValue1
    number8 = localValue2
    mathHelper(dataCollection6, number7, number8)
    mathHelper = false
    stateFlag3 = mathHelper
    return
  end
  dataCollection6 = text3
  mathHelper = cmgOperation7
  mathHelper = mathHelper[dataCollection6]
  dataCollection6 = mathHelper.current
  dataCollection6 = dataCollection6 + localValue2
  mathHelper.current = dataCollection6
  dataCollection6 = CMG
  dataCollection6 = dataCollection6.uiSendMessage
  number7 = {}
  number7.type = "QUEST_LOG_UPDATE_PROGRESS"
  number8 = {}
  number9 = mathHelper.current
  number8.current = number9
  number7.info = number8
  dataCollection6(number7)
  dataCollection6 = Wait
  number7 = 500
  dataCollection6(number7)
  dataCollection6 = mathHelper.current
  number7 = mathHelper.required
  if dataCollection6 >= number7 then
    dataCollection6 = text3
    dataCollection6 = dataCollection6 + 1
    text3 = dataCollection6
    dataCollection6 = CMG
    dataCollection6 = dataCollection6.uiSendMessage
    number7 = {}
    number7.type = "QUEST_LOG_COMPLETE_CURRENT"
    number8 = {}
    number8.completedAt = "\226\156\133"
    number7.info = number8
    dataCollection6(number7)
    number7 = text3
    dataCollection6 = cmgOperation7
    dataCollection6 = dataCollection6[number7]
    if dataCollection6 then
      number7 = text3
      dataCollection6 = cmgOperation7
      dataCollection6 = dataCollection6[number7]
      number7 = CMG
      number7 = number7.uiSendMessage
      number8 = {}
      number8.type = "QUEST_LOG_SET_CURRENT"
      number9 = {}
      number10 = {}
      number11 = dataCollection6.id
      number10.id = number11
      number11 = dataCollection6.title
      number10.title = number11
      number11 = dataCollection6.description
      number10.description = number11
      number10.current = 0
      number11 = dataCollection6.required
      number10.required = number11
      number9.quest = number10
      number8.info = number9
      number7(number8)
      number7 = RageUI
      if number7 then
        number7 = RageUI
        number8 = workingValue13
        number8 = number8()
        number7.QuestLogXOffset = number8
      end
      number7 = cmgOperation3
      number8 = dataCollection6
      number7(number8)
    else
      dataCollection6 = text5
      if dataCollection6 then
        dataCollection6 = tCMG
        dataCollection6 = dataCollection6.removeMarker
        number7 = text5
        dataCollection6(number7)
        dataCollection6 = nil
        text5 = dataCollection6
      end
      dataCollection6 = pairs
      number7 = dataCollection7
      dataCollection6, number7, number8, number9 = dataCollection6(number7)
      for number10, number11 in dataCollection6, number7, number8, number9 do
        workingValue15 = DeleteCheckpoint
        workingValue = number11
        workingValue15(workingValue)
      end
      dataCollection6 = {}
      dataCollection7 = dataCollection6
      dataCollection6 = tCMG
      dataCollection6 = dataCollection6.removeArea
      number7 = "job_tutorial_step_marker"
      dataCollection6(number7)
      dataCollection6 = CMG
      dataCollection6 = dataCollection6.uiSendMessage
      number7 = {}
      number7.type = "QUEST_LOG_QUEST_FULLY_COMPLETE"
      number8 = {}
      number7.info = number8
      dataCollection6(number7)
      dataCollection6 = cmgOperation4
      dataCollection6()
      dataCollection6 = nil
      cmgOperation7 = dataCollection6
      dataCollection6 = nil
      text3 = dataCollection6
      dataCollection6 = cmgOperation2
      number7 = false
      dataCollection6(number7)
    end
  end
  dataCollection6 = cmgOperation7
  if dataCollection6 then
    dataCollection6 = text3
    if dataCollection6 then
      dataCollection6 = workingValue14
      if dataCollection6 then
        dataCollection6 = TriggerServerEvent
        number7 = "75b4c18f3c"
        number8 = workingValue14
        number9 = text3
        number11 = text3
        number10 = cmgOperation7
        number10 = number10[number11]
        number10 = number10.current
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "75b4c18f3c".
        dataCollection6(number7, number8, number9, number10)
      end
    end
  end
  dataCollection6 = false
  stateFlag3 = dataCollection6
end
cmgOperation5.addJobTutorialProgress = cmgOperation6

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2, mathHelper, dataCollection6
  localValue1 = false
  stateFlag2 = localValue1
  localValue1 = CMG
  localValue1 = localValue1.uiSendMessage
  localValue2 = {}
  localValue2.type = "APP_TOGGLE"
  localValue2.app = ""
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.uiSetFocus
  localValue2 = false
  mathHelper = false
  dataCollection6 = false
  localValue1(localValue2, mathHelper, dataCollection6)
  localValue1 = TriggerScreenblurFadeOut
  localValue2 = 0.0
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.showAllDisplays
  localValue2 = "jobterminal"
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.showHud
  localValue1()
end
cmgOperation6 = RegisterNetEvent
text = "08da92f592"
-- Beginner: this function handles network event "08da92f592".

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1, localValue2) ===
function eventHandler(localValue1, localValue2)
  local mathHelper, dataCollection6, number7
  mathHelper = CMG
  mathHelper = mathHelper.addJobTutorialProgress
  dataCollection6 = localValue1
  number7 = localValue2 or number7
  if not localValue2 then
    number7 = 1
  end
  mathHelper(dataCollection6, number7)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "08da92f592".
cmgOperation6(text, eventHandler)
cmgOperation6 = CMG
cmgOperation6 = cmgOperation6.uiRegisterCallback
text = "jobMenuStartTutorial"

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2, mathHelper, dataCollection6, number7
  localValue2 = cmgOperation5
  localValue2()
  if localValue1 then
    localValue2 = localValue1.job
    if localValue2 then
      goto continueAtStep11
    end
  end
  localValue2 = CMG
  localValue2 = localValue2.getClientJob
  localValue2 = localValue2()
  ::continueAtStep11::
  mathHelper = TriggerServerEvent
  dataCollection6 = "e9f6f243dd"
  number7 = localValue2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e9f6f243dd".
  mathHelper(dataCollection6, number7)
end
cmgOperation6(text, eventHandler)
cmgOperation6 = CMG
cmgOperation6 = cmgOperation6.uiRegisterCallback
text = "jobMenuCancelTutorial"

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.cancelJobTutorial
  localValue1()
end
cmgOperation6(text, eventHandler)
cmgOperation6 = RegisterNetEvent
text = "e9f6f243dd"
-- Beginner: this function handles network event "e9f6f243dd".

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1, localValue2) ===
function eventHandler(localValue1, localValue2)
  local mathHelper, dataCollection6, number7, number8, number9, number10, number11, workingValue15, workingValue, workingValue2, number
  mathHelper = CMG
  mathHelper = mathHelper.getCurrentJobTheme
  mathHelper = mathHelper()
  if not mathHelper then
    mathHelper = CMG
    mathHelper = mathHelper.warn
    dataCollection6 = "currentJobTheme is nil in job tutorial start"
    mathHelper(dataCollection6)
    return
  end
  mathHelper = CMG
  mathHelper = mathHelper.uiSendMessage
  dataCollection6 = {}
  dataCollection6.type = "QUEST_LOG_CLEAR_ALL"
  number7 = {}
  dataCollection6.info = number7
  mathHelper(dataCollection6)
  mathHelper = type
  dataCollection6 = localValue1
  mathHelper = mathHelper(dataCollection6)
  if "table" == mathHelper then
    mathHelper = localValue1.tutorial
    if mathHelper then
      mathHelper = localValue1.tutorial
      cmgOperation7 = mathHelper
      mathHelper = localValue1.title
      if not mathHelper then
        mathHelper = text6
      end
      text6 = mathHelper
      mathHelper = localValue1.title
      if not mathHelper then
        mathHelper = "JOB TUTORIAL"
      end
      workingValue14 = mathHelper
  end
  else
    cmgOperation7 = localValue1
    mathHelper = "TRAPPER TUTORIAL"
    text6 = mathHelper
    mathHelper = "Trapper"
    workingValue14 = mathHelper
  end
  mathHelper = localValue2 or mathHelper
  if localValue2 then
    mathHelper = localValue2.stepIndex
    if mathHelper then
      dataCollection6 = localValue2.stepIndex
      mathHelper = cmgOperation7
      mathHelper = mathHelper[dataCollection6]
      mathHelper = nil ~= mathHelper
    end
  end
  if mathHelper then
    dataCollection6 = localValue2.stepIndex
    text3 = dataCollection6
    number7 = text3
    dataCollection6 = cmgOperation7
    dataCollection6 = dataCollection6[number7]
    number7 = localValue2.currentStepProgress
    if not number7 then
      number7 = 0
    end
    dataCollection6.current = number7
    dataCollection6 = 1
    number7 = text3
    number7 = number7 - 1
    number8 = 1
    for number9 = dataCollection6, number7, number8 do
      number10 = cmgOperation7
      number10 = number10[number9]
      number11 = CMG
      number11 = number11.uiSendMessage
      workingValue15 = {}
      workingValue15.type = "QUEST_LOG_SET_CURRENT"
      workingValue = {}
      workingValue2 = {}
      number = number10.id
      workingValue2.id = number
      number = number10.title
      workingValue2.title = number
      number = number10.description
      workingValue2.description = number
      workingValue2.current = 0
      number = number10.required
      workingValue2.required = number
      workingValue.quest = workingValue2
      workingValue15.info = workingValue
      number11(workingValue15)
      number11 = CMG
      number11 = number11.uiSendMessage
      workingValue15 = {}
      workingValue15.type = "QUEST_LOG_COMPLETE_CURRENT"
      workingValue = {}
      workingValue.completedAt = "\226\156\133"
      workingValue15.info = workingValue
      number11(workingValue15)
    end
    number7 = text3
    dataCollection6 = cmgOperation7
    dataCollection6 = dataCollection6[number7]
    number7 = CMG
    number7 = number7.uiSendMessage
    number8 = {}
    number8.type = "QUEST_LOG_SET_CURRENT"
    number9 = {}
    number10 = {}
    number11 = dataCollection6.id
    number10.id = number11
    number11 = dataCollection6.title
    number10.title = number11
    number11 = dataCollection6.description
    number10.description = number11
    number11 = dataCollection6.current
    number10.current = number11
    number11 = dataCollection6.required
    number10.required = number11
    number9.quest = number10
    number8.info = number9
    number7(number8)
    number7 = dataCollection6.current
    if number7 > 0 then
      number7 = CMG
      number7 = number7.uiSendMessage
      number8 = {}
      number8.type = "QUEST_LOG_UPDATE_PROGRESS"
      number9 = {}
      number10 = dataCollection6.current
      number9.current = number10
      number8.info = number9
      number7(number8)
    end
  else
    dataCollection6 = 1
    text3 = dataCollection6
    number7 = text3
    dataCollection6 = cmgOperation7
    dataCollection6 = dataCollection6[number7]
    number7 = CMG
    number7 = number7.uiSendMessage
    number8 = {}
    number8.type = "QUEST_LOG_SET_CURRENT"
    number9 = {}
    number10 = {}
    number11 = dataCollection6.id
    number10.id = number11
    number11 = dataCollection6.title
    number10.title = number11
    number11 = dataCollection6.description
    number10.description = number11
    number10.current = 0
    number11 = dataCollection6.required
    number10.required = number11
    number9.quest = number10
    number8.info = number9
    number7(number8)
  end
  dataCollection6 = RageUI
  if dataCollection6 then
    dataCollection6 = RageUI
    number7 = workingValue13
    number7 = number7()
    dataCollection6.QuestLogXOffset = number7
  end
  dataCollection6 = cmgOperation3
  number8 = text3
  number7 = cmgOperation7
  number7 = number7[number8]
  dataCollection6(number7)
  dataCollection6 = CMG
  dataCollection6 = dataCollection6.uiSendMessage
  number7 = {}
  number7.type = "QUEST_LOG_SET_TITLE"
  number8 = {}
  number9 = text6
  number8.title = number9
  number7.info = number8
  dataCollection6(number7)
  dataCollection6 = cmgOperation2
  number7 = true
  dataCollection6(number7)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e9f6f243dd".
cmgOperation6(text, eventHandler)
cmgOperation6 = CMG
cmgOperation6 = cmgOperation6.uiRegisterCallback
text = "jobMenuClosed"

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2
  localValue1 = cmgOperation5
  localValue1()
end
cmgOperation6(text, eventHandler)
cmgOperation6 = AddEventHandler
text = "b4fcca60d5"
-- Beginner: this function runs when client event "b4fcca60d5" fires.

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2
  localValue1 = false
  stateFlag2 = localValue1
  localValue1 = cmgOperation5
  localValue1()
end
-- Beginner: Register a client-side event handler. Event/command: "b4fcca60d5".
cmgOperation6(text, eventHandler)
cmgOperation6 = CMG
-- Beginner: this function runs when client event "b4fcca60d5" fires.

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, mathHelper, dataCollection6, number7, number8, number9, number10
  localValue2 = true
  stateFlag2 = localValue2
  localValue2 = TriggerScreenblurFadeIn
  mathHelper = 0.0
  localValue2(mathHelper)
  localValue2 = CMG
  localValue2 = localValue2.uiSetFocus
  mathHelper = true
  dataCollection6 = true
  number7 = false
  localValue2(mathHelper, dataCollection6, number7)
  localValue2 = CMG
  localValue2 = localValue2.hideAllDisplays
  mathHelper = "jobterminal"
  localValue2(mathHelper)
  localValue2 = CMG
  localValue2 = localValue2.hideHud
  localValue2()
  localValue2 = CMG
  localValue2 = localValue2.getClientJob
  localValue2 = localValue2()
  mathHelper = CMG
  mathHelper = mathHelper.getClientFaction
  mathHelper = mathHelper()
  if mathHelper then
    dataCollection6 = dataCollection
    dataCollection6 = dataCollection6[mathHelper]
    if dataCollection6 and mathHelper then
      goto continueAtStep34
      dataCollection6 = mathHelper or dataCollection6
    end
  end
  dataCollection6 = localValue2
  ::continueAtStep34::
  number7 = CMG
  number7 = number7.uiSendMessage
  number8 = {}
  number8.type = "APP_TOGGLE"
  number8.app = dataCollection6
  number9 = dataCollection2
  number9 = number9[localValue2]
  number9 = number9 and true == localValue1 or number9
  number8.atWarehouseSeller = number9
  number7(number8)
  if "Trapper" == localValue2 then
    number7 = TriggerServerEvent
    number8 = "2319d6cab8"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2319d6cab8".
    number7(number8)
    number7 = cmgOperation2
    number8 = CMG
    number8 = number8.isJobTutorialRunning
    number8, number9, number10 = number8()
    number7(number8, number9, number10)
  end
  if "Mechanic" == localValue2 then
    number7 = TriggerServerEvent
    number8 = "5c8eb44f1a"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5c8eb44f1a".
    number7(number8)
  end
  number7 = TriggerEvent
  number8 = "a68d3374be"
  number9 = localValue2
  number10 = localValue1
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "a68d3374be".
  number7(number8, number9, number10)
end
cmgOperation6.openJobTerminal = text

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
function cmgOperation6()
  local localValue1, localValue2, mathHelper, dataCollection6
  localValue1 = CMG
  localValue1 = localValue1.isHudVehicleCursorEnabled
  localValue1 = localValue1()
  if localValue1 then
    return
  end
  localValue1 = stateFlag2
  localValue1 = not localValue1
  stateFlag2 = localValue1
  localValue1 = CMG
  localValue1 = localValue1.getClientJob
  localValue1 = localValue1()
  localValue2 = CMG
  localValue2 = localValue2.getClientFaction
  localValue2 = localValue2()
  mathHelper = nil
  if localValue1 and not mathHelper then
    dataCollection6 = dataCollection2
    mathHelper = dataCollection6[localValue1]
  end
  if localValue2 and not mathHelper then
    dataCollection6 = dataCollection
    mathHelper = dataCollection6[localValue2]
  end
  if mathHelper then
    dataCollection6 = stateFlag2
    if dataCollection6 then
      dataCollection6 = CMG
      dataCollection6 = dataCollection6.openJobTerminal
      dataCollection6()
    else
      dataCollection6 = cmgOperation5
      dataCollection6()
    end
  end
end
text = RegisterCommand
eventHandler = "jobmenu"
text2 = cmgOperation6
stateFlag = false
-- Beginner: Register a chat/console command. Event/command: "jobmenu".
text(eventHandler, text2, stateFlag)
text = RegisterKeyMapping
eventHandler = "jobmenu"
text2 = "Open Job Menu"
stateFlag = "KEYBOARD"
text4 = "F6"
-- Beginner: Bind a command to a keyboard/controller key.
text(eventHandler, text2, stateFlag, text4)
text = CMG
-- Beginner: this function is the command handler for "jobmenu".

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2
  localValue1 = stateFlag2
  return localValue1
end
text.isJobTerminalOpen = eventHandler
text = 0
eventHandler = RegisterNetEvent
text2 = "45916a0093"
-- Beginner: this function handles network event "45916a0093".

-- === HELPER FUNCTION (decompiler name: stateFlag; parameters: localValue1) ===
function stateFlag(localValue1)
  local localValue2, mathHelper, dataCollection6, number7, number8, number9
  localValue2 = localValue1 or nil
  if not localValue1 then
    localValue2 = 120
  end
  mathHelper = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  mathHelper = mathHelper()
  dataCollection6 = localValue2 * 1000
  dataCollection6 = mathHelper + dataCollection6
  number7 = text
  if dataCollection6 <= number7 then
    return
  end
  text = dataCollection6
  number7 = CMG
  number7 = number7.uiSendMessage
  number8 = {}
  number8.type = "QUEST_LOG_DISPATCH_VISIBLE"
  number9 = {}
  number9.visible = true
  number8.info = number9
  number7(number8)
  number7 = SetTimeout
  number8 = localValue2 * 1000

  -- === HELPER FUNCTION (decompiler name: number9; parameters: none) ===
  function number9()
    local gameTime, dataCollection4, dataCollection5
    gameTime = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    gameTime = gameTime()
    dataCollection4 = text
    if gameTime >= dataCollection4 then
      gameTime = CMG
      gameTime = gameTime.uiSendMessage
      dataCollection4 = {}
      dataCollection4.type = "QUEST_LOG_DISPATCH_VISIBLE"
      dataCollection5 = {}
      dataCollection5.visible = false
      dataCollection4.info = dataCollection5
      gameTime(dataCollection4)
    end
  end
  number7(number8, number9)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "45916a0093".
eventHandler(text2, stateFlag)
