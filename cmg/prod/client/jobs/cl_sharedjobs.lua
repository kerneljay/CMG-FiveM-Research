--[[
    Beginner Guide: cl_sharedjobs.lua
    =================================

    This file came from decompiled Lua. It has been cleaned so the
    temporary SHX names are replaced with role-based names. Where the
    exact server-side meaning cannot be proven from this client file,
    neutral names such as stateValue/workValue are used instead of
    inventing a misleading meaning.

    Compatibility:
      * Event/hash strings and public framework calls are unchanged.
      * This pass intentionally avoids guessing unknown server meanings.
]]
--[[
    BEGINNER GUIDE — Sharedjobs
    ===========================

    File: cmg/prod/client/jobs/cl_sharedjobs.lua
    Purpose: This file contains job gameplay.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Decompiled-code note:
      This file came from decompiled Lua. The repeated AI-cleanup boilerplate
      has been removed. Any remaining SHX-style values are compiler/decompiler
      temporaries whose meaning changes repeatedly; follow the surrounding API
      call and the comments rather than treating one SHX variable as one concept.

    WARNING:
      The original decompiler output contains broken goto/label structure.
      This file is annotated for reading, but the original control flow should be
      reconstructed/tested before treating it as production-ready Lua.

    Config/data used:
      * cfg/cfg_jobs

    Commands/command-like entries found:
      * jobmenu

    Network/hash identifiers found: 11
      They are intentionally left unchanged because matching server code may use them.

    Example player-facing text in this file:
      * getCurrentJobTheme called but player has no job
      * currentJobTheme is nil in job tutorial start
      * jobMenuStartTutorial
      * jobMenuCancelTutorial
      * jobMenuClosed

]]
local cmgCall, textValue3, workValue13, cmgCall7, textValue5, dataTable7, flag2, textValue6, workValue14, flag3, dataTable, dataTable2, cmgCall2, cmgCall3, cmgCall4, cmgCall5, cmgCall6, textValue, eventRegistration, textValue2, flag, textValue4
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue3 = "cfg/cfg_jobs"
-- Beginner: result below is config.
cmgCall = cmgCall(textValue3)
textValue3 = nil
function workValue13()
  local arg1, arg2, mathHelper, dataTable6
  arg1 = GetActiveScreenResolution
  arg1, arg2 = arg1()
  if 1920 == arg1 then
    mathHelper = 350
    return mathHelper
  elseif 3440 == arg1 and 1440 == arg2 then
    mathHelper = math
    mathHelper = mathHelper.floor
    dataTable6 = arg1 * 0.1
    return mathHelper(dataTable6)
  end
  mathHelper = math
  mathHelper = mathHelper.floor
  dataTable6 = arg1 * 0.135
  return mathHelper(dataTable6)
end
cmgCall7 = CMG
cmgCall7 = cmgCall7.uiRegisterCallback
textValue5 = "questLogClosed"
function dataTable7()
  local arg1, arg2
  arg1 = TriggerEvent
  arg2 = "0140c9970e"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "0140c9970e".
  arg1(arg2)
end
cmgCall7(textValue5, dataTable7)
cmgCall7 = AddEventHandler
textValue5 = "0140c9970e"
-- Beginner: this function runs when client event "0140c9970e" fires.
function dataTable7()
  local arg1, arg2
  arg1 = RageUI
  if arg1 then
    arg1 = RageUI
    arg1.QuestLogXOffset = 0
  end
end
-- Beginner: Register a client-side event handler. Event/command: "0140c9970e".
cmgCall7(textValue5, dataTable7)
cmgCall7 = nil
textValue5 = nil
dataTable7 = {}
flag2 = false
textValue6 = "JOB TUTORIAL"
workValue14 = nil
flag3 = false
dataTable = {}
dataTable["Health Service"] = true
dataTable2 = {}
dataTable2.Trapper = true
dataTable2.Garbage = true
dataTable2.Mechanic = true
cmgCall2 = CMG
function cmgCall3()
  local arg1, arg2, mathHelper
  arg1 = CMG
  arg1 = arg1.getClientJob
  arg1 = arg1()
  if not arg1 then
    arg2 = CMG
    arg2 = arg2.warn
    mathHelper = "getCurrentJobTheme called but player has no job"
    arg2(mathHelper)
    arg2 = {}
    return arg2
  end
  arg2 = cmgCall.jobs
  arg2 = arg2[arg1]
  arg2 = arg2._config
  arg2 = arg2.theme
  return arg2
end
cmgCall2.getCurrentJobTheme = cmgCall3
cmgCall2 = CMG
function cmgCall3()
  local arg1, arg2
  arg1 = cmgCall7
  arg1 = nil ~= arg1
  return arg1
end
cmgCall2.isJobTutorialRunning = cmgCall3
function cmgCall2(arg1)
  local arg2, mathHelper, dataTable6, numberValue7
  arg2 = CMG
  arg2 = arg2.uiSendMessage
  mathHelper = {}
  mathHelper.type = "JOB_MENU_TUTORIAL_RUNNING"
  dataTable6 = {}
  numberValue7 = true == arg1
  dataTable6.running = numberValue7
  mathHelper.info = dataTable6
  arg2(mathHelper)
end
cmgCall3 = CMG
function cmgCall4()
  local arg1, arg2, mathHelper, dataTable6, numberValue7, numberValue8, numberValue9, numberValue10
  arg1 = cmgCall7
  if not arg1 then
    return
  end
  while true do
    arg1 = flag3
    if not arg1 then
      break
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
  arg1 = textValue5
  if arg1 then
    arg1 = tCMG
    arg1 = arg1.removeMarker
    arg2 = textValue5
    arg1(arg2)
    arg1 = nil
    textValue5 = arg1
  end
  arg1 = pairs
  arg2 = dataTable7
  arg1, arg2, mathHelper, dataTable6 = arg1(arg2)
  for numberValue7, numberValue8 in arg1, arg2, mathHelper, dataTable6 do
    numberValue9 = DeleteCheckpoint
    numberValue10 = numberValue8
    numberValue9(numberValue10)
  end
  arg1 = {}
  dataTable7 = arg1
  arg1 = tCMG
  arg1 = arg1.removeArea
  arg2 = "job_tutorial_step_marker"
  arg1(arg2)
  arg1 = nil
  cmgCall7 = arg1
  arg1 = nil
  textValue3 = arg1
  arg1 = nil
  workValue14 = arg1
  arg1 = RageUI
  if arg1 then
    arg1 = RageUI
    arg1.QuestLogXOffset = 0
  end
  arg1 = CMG
  arg1 = arg1.uiSendMessage
  arg2 = {}
  arg2.type = "QUEST_LOG_CLEAR_ALL"
  mathHelper = {}
  arg2.info = mathHelper
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.uiSendMessage
  arg2 = {}
  arg2.type = "QUEST_LOG_SET_OPEN"
  mathHelper = {}
  mathHelper.isOpen = false
  arg2.info = mathHelper
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.uiSendMessage
  arg2 = {}
  arg2.type = "QUEST_LOG_SET_TITLE"
  mathHelper = {}
  mathHelper.title = "QUEST LOG"
  arg2.info = mathHelper
  arg1(arg2)
  arg1 = cmgCall2
  arg2 = false
  arg1(arg2)
  arg1 = TriggerServerEvent
  arg2 = "ca6a8a2b4f"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ca6a8a2b4f".
  arg1(arg2)
end
cmgCall3.cancelJobTutorial = cmgCall4
function cmgCall3(arg1)
  local arg2, mathHelper, dataTable6, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, workValue15, workValue, workValue2, numberValue, numberValue2, tableHelper, workValue3, workValue4, dataTable3, numberValue3, workValue5, numberValue4, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, workValue12, numberValue5, numberValue6
  arg2 = textValue5
  if arg2 then
    arg2 = tCMG
    arg2 = arg2.removeMarker
    mathHelper = textValue5
    arg2(mathHelper)
    arg2 = nil
    textValue5 = arg2
  end
  arg2 = pairs
  mathHelper = dataTable7
  arg2, mathHelper, dataTable6, numberValue7 = arg2(mathHelper)
  for numberValue8, numberValue9 in arg2, mathHelper, dataTable6, numberValue7 do
    numberValue10 = DeleteCheckpoint
    numberValue11 = numberValue9
    numberValue10(numberValue11)
  end
  arg2 = {}
  dataTable7 = arg2
  if arg1 then
    arg2 = arg1.locationMarker
    if arg2 then
      arg2 = arg1.locationMarker
      arg2 = arg2.x
      if nil ~= arg2 then
        arg2 = arg1.locationMarker
        arg2 = arg2.y
        if nil ~= arg2 then
          arg2 = arg1.locationMarker
          arg2 = arg2.z
          if nil ~= arg2 then
            goto flow_label_41
          end
        end
      end
    end
  end
  return
  ::flow_label_41::
  arg2 = CMG
  arg2 = arg2.getCurrentJobTheme
  arg2 = arg2()
  mathHelper = 1.0
  dataTable6 = 1.0
  numberValue7 = 0.4
  numberValue8 = 2.0
  numberValue9 = 2.0
  numberValue10 = 30
  numberValue11 = arg1.markerForVehicle
  if numberValue11 then
    numberValue11 = 4.0
    dataTable6 = 4.0
    mathHelper = numberValue11
    numberValue11 = 8.0
    numberValue9 = 8.0
    numberValue8 = numberValue11
    numberValue10 = 150
  end
  numberValue11 = tCMG
  numberValue11 = numberValue11.addMarker
  workValue15 = arg1.locationMarker
  workValue15 = workValue15.x
  workValue = arg1.locationMarker
  workValue = workValue.y
  workValue2 = arg1.locationMarker
  workValue2 = workValue2.z
  workValue2 = workValue2 - 1.0
  numberValue = mathHelper
  numberValue2 = dataTable6
  tableHelper = numberValue7
  workValue3 = arg2.r
  workValue4 = arg2.g
  dataTable3 = arg2.b
  numberValue3 = 150
  workValue5 = numberValue10
  numberValue4 = 1
  numberValue11 = numberValue11(workValue15, workValue, workValue2, numberValue, numberValue2, tableHelper, workValue3, workValue4, dataTable3, numberValue3, workValue5, numberValue4)
  textValue5 = numberValue11
  numberValue11 = pairs
  workValue15 = arg1.checkpoints
  if not workValue15 then
    workValue15 = {}
  end
  numberValue11, workValue15, workValue, workValue2 = numberValue11(workValue15)
  for numberValue, numberValue2 in numberValue11, workValue15, workValue, workValue2 do
    tableHelper = table
    tableHelper = tableHelper.insert
    workValue3 = dataTable7
    workValue4 = CreateCheckpoint
    dataTable3 = 0
    numberValue3 = numberValue2.x
    workValue5 = numberValue2.y
    numberValue4 = numberValue2.z
    numberValue4 = numberValue4 - 1.0
    workValue6 = arg1.locationMarker
    workValue6 = workValue6.x
    workValue7 = arg1.locationMarker
    workValue7 = workValue7.y
    workValue8 = arg1.locationMarker
    workValue8 = workValue8.z
    workValue9 = numberValue9
    workValue10 = arg2.r
    workValue11 = arg2.g
    workValue12 = arg2.b
    numberValue5 = 100
    numberValue6 = 0
    workValue4, dataTable3, numberValue3, workValue5, numberValue4, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, workValue12, numberValue5, numberValue6 = workValue4(dataTable3, numberValue3, workValue5, numberValue4, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, workValue12, numberValue5, numberValue6)
    tableHelper(workValue3, workValue4, dataTable3, numberValue3, workValue5, numberValue4, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, workValue12, numberValue5, numberValue6)
  end
  numberValue11 = SetNewWaypoint
  workValue15 = arg1.locationMarker
  workValue15 = workValue15.x
  workValue = arg1.locationMarker
  workValue = workValue.y
  numberValue11(workValue15, workValue)
  numberValue11 = tCMG
  numberValue11 = numberValue11.removeArea
  workValue15 = "job_tutorial_step_marker"
  numberValue11(workValue15)
  numberValue11 = arg1.ignoreAreaCheck
  if not numberValue11 then
    numberValue11 = arg1.markerVisualOnly
  end
  if not numberValue11 then
    workValue15 = CMG
    workValue15 = workValue15.createArea
    workValue = "job_tutorial_step_marker"
    workValue2 = arg1.locationMarker
    numberValue = numberValue8
    numberValue2 = 6
    function tableHelper()
      local gameTime, dataTable4
    end
    function workValue3()
      local gameTime, dataTable4
    end
    function workValue4()
      local gameTime, dataTable4, dataTable5
      gameTime = CMG
      gameTime = gameTime.addJobTutorialProgress
      dataTable4 = arg1.id
      dataTable5 = 1
      gameTime(dataTable4, dataTable5)
    end
    dataTable3 = {}
    -- Beginner: Create an interaction area around a world position.
    workValue15(workValue, workValue2, numberValue, numberValue2, tableHelper, workValue3, workValue4, dataTable3)
  end
end
cmgCall4 = CMG
function cmgCall5(arg1)
  local arg2, mathHelper, dataTable6
  arg2 = cmgCall7
  if arg2 then
    arg2 = textValue3
    if arg2 then
      goto flow_label_8
    end
  end
  return
  ::flow_label_8::
  arg2 = textValue3
  mathHelper = arg2 + 1
  arg2 = cmgCall7
  arg2 = arg2[mathHelper]
  if arg2 then
    arg2.locationMarker = arg1
    mathHelper = cmgCall3
    dataTable6 = arg2
    mathHelper(dataTable6)
  end
end
cmgCall4.setNextStepLocationMarker = cmgCall5
cmgCall4 = CMG
function cmgCall5()
  local arg1, arg2
  arg1 = cmgCall7
  if arg1 then
    arg1 = textValue3
    if arg1 then
      goto flow_label_9
    end
  end
  arg1 = nil
  return arg1
  ::flow_label_9::
  arg2 = textValue3
  arg1 = cmgCall7
  arg1 = arg1[arg2]
  if arg1 then
    arg2 = arg1.id
    if arg2 then
      goto flow_label_18
    end
  end
  arg2 = nil
  ::flow_label_18::
  return arg2
end
cmgCall4.getCurrentQuestStepId = cmgCall5
cmgCall4 = CMG
function cmgCall5(arg1)
  local arg2, mathHelper, dataTable6
  arg2 = cmgCall7
  if arg2 then
    arg2 = textValue3
    if arg2 then
      goto flow_label_8
    end
  end
  return
  ::flow_label_8::
  mathHelper = textValue3
  arg2 = cmgCall7
  arg2 = arg2[mathHelper]
  if arg2 then
    arg2.locationMarker = arg1
    mathHelper = cmgCall3
    dataTable6 = arg2
    mathHelper(dataTable6)
  end
end
cmgCall4.setCurrentStepLocationMarker = cmgCall5
function cmgCall4()
  local arg1, arg2, mathHelper, dataTable6, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, workValue15, workValue, workValue2, numberValue
  arg1 = RequestScaleformMovie
  arg2 = "mp_mission_name_freemode"
  -- Beginner: result below is scaleformHandle.
  arg1 = arg1(arg2)
  while true do
    arg2 = HasScaleformMovieLoaded
    mathHelper = arg1
    arg2 = arg2(mathHelper)
    if arg2 then
      break
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    mathHelper = 0
    arg2(mathHelper)
  end
  arg2 = BeginScaleformMovieMethod
  mathHelper = arg1
  dataTable6 = "SET_MISSION_INFO"
  arg2(mathHelper, dataTable6)
  arg2 = _ENV
  mathHelper = "ScaleformMovieMethodAddParamTextureNameString"
  arg2 = arg2[mathHelper]
  mathHelper = textValue6
  arg2(mathHelper)
  arg2 = _ENV
  mathHelper = "ScaleformMovieMethodAddParamTextureNameString"
  arg2 = arg2[mathHelper]
  mathHelper = "~g~Tutorial Complete"
  arg2(mathHelper)
  arg2 = _ENV
  mathHelper = "ScaleformMovieMethodAddParamTextureNameString"
  arg2 = arg2[mathHelper]
  mathHelper = "0"
  arg2(mathHelper)
  arg2 = _ENV
  mathHelper = "ScaleformMovieMethodAddParamTextureNameString"
  arg2 = arg2[mathHelper]
  mathHelper = ""
  arg2(mathHelper)
  arg2 = _ENV
  mathHelper = "ScaleformMovieMethodAddParamTextureNameString"
  arg2 = arg2[mathHelper]
  mathHelper = ""
  arg2(mathHelper)
  arg2 = _ENV
  mathHelper = "ScaleformMovieMethodAddParamTextureNameString"
  arg2 = arg2[mathHelper]
  mathHelper = ""
  arg2(mathHelper)
  arg2 = _ENV
  mathHelper = "ScaleformMovieMethodAddParamTextureNameString"
  arg2 = arg2[mathHelper]
  mathHelper = ""
  arg2(mathHelper)
  arg2 = _ENV
  mathHelper = "ScaleformMovieMethodAddParamTextureNameString"
  arg2 = arg2[mathHelper]
  mathHelper = "0"
  arg2(mathHelper)
  arg2 = _ENV
  mathHelper = "ScaleformMovieMethodAddParamTextureNameString"
  arg2 = arg2[mathHelper]
  mathHelper = "0"
  arg2(mathHelper)
  arg2 = _ENV
  mathHelper = "ScaleformMovieMethodAddParamTextureNameString"
  arg2 = arg2[mathHelper]
  mathHelper = ""
  arg2(mathHelper)
  arg2 = EndScaleformMovieMethod
  arg2()
  arg2 = SendNUIMessage
  mathHelper = {}
  mathHelper.transactionType = "questcomplete"
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg2(mathHelper)
  arg2 = nil
  workValue14 = arg2
  arg2 = TriggerServerEvent
  mathHelper = "6932434e21"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6932434e21".
  arg2(mathHelper)
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  while true do
    mathHelper = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    mathHelper = mathHelper()
    mathHelper = mathHelper - arg2
    dataTable6 = 7000
    if not (mathHelper < dataTable6) then
      break
    end
    mathHelper = DrawScaleformMovie
    dataTable6 = arg1
    numberValue7 = 0.5
    numberValue8 = 0.35
    numberValue9 = 0.3
    numberValue10 = 0.4615
    numberValue11 = 255
    workValue15 = 255
    workValue = 255
    workValue2 = 255
    numberValue = 0
    mathHelper(dataTable6, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, workValue15, workValue, workValue2, numberValue)
    mathHelper = Citizen
    mathHelper = mathHelper.Wait
    dataTable6 = 0
    mathHelper(dataTable6)
  end
  mathHelper = SetScaleformMovieAsNoLongerNeeded
  dataTable6 = arg1
  mathHelper(dataTable6)
end
cmgCall5 = CMG
function cmgCall6(arg1, arg2)
  local mathHelper, dataTable6, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, workValue15, workValue
  while true do
    mathHelper = flag3
    if not mathHelper then
      break
    end
    mathHelper = Wait
    dataTable6 = 0
    mathHelper(dataTable6)
  end
  mathHelper = true
  flag3 = mathHelper
  mathHelper = cmgCall7
  if mathHelper then
    mathHelper = textValue3
    if mathHelper then
      goto flow_label_19
    end
  end
  mathHelper = false
  flag3 = mathHelper
  return
  ::flow_label_19::
  dataTable6 = textValue3
  mathHelper = cmgCall7
  mathHelper = mathHelper[dataTable6]
  mathHelper = mathHelper.id
  if mathHelper ~= arg1 then
    mathHelper = false
    flag3 = mathHelper
    return
  end
  mathHelper = CMG
  mathHelper = mathHelper.getCurrentJobTheme
  mathHelper = mathHelper()
  if not mathHelper then
    mathHelper = CMG
    mathHelper = mathHelper.warn
    dataTable6 = "currentJobTheme is nil in job tutorial start"
    numberValue7 = arg1
    numberValue8 = arg2
    mathHelper(dataTable6, numberValue7, numberValue8)
    mathHelper = false
    flag3 = mathHelper
    return
  end
  dataTable6 = textValue3
  mathHelper = cmgCall7
  mathHelper = mathHelper[dataTable6]
  dataTable6 = mathHelper.current
  dataTable6 = dataTable6 + arg2
  mathHelper.current = dataTable6
  dataTable6 = CMG
  dataTable6 = dataTable6.uiSendMessage
  numberValue7 = {}
  numberValue7.type = "QUEST_LOG_UPDATE_PROGRESS"
  numberValue8 = {}
  numberValue9 = mathHelper.current
  numberValue8.current = numberValue9
  numberValue7.info = numberValue8
  dataTable6(numberValue7)
  dataTable6 = Wait
  numberValue7 = 500
  dataTable6(numberValue7)
  dataTable6 = mathHelper.current
  numberValue7 = mathHelper.required
  if dataTable6 >= numberValue7 then
    dataTable6 = textValue3
    dataTable6 = dataTable6 + 1
    textValue3 = dataTable6
    dataTable6 = CMG
    dataTable6 = dataTable6.uiSendMessage
    numberValue7 = {}
    numberValue7.type = "QUEST_LOG_COMPLETE_CURRENT"
    numberValue8 = {}
    numberValue8.completedAt = "\226\156\133"
    numberValue7.info = numberValue8
    dataTable6(numberValue7)
    numberValue7 = textValue3
    dataTable6 = cmgCall7
    dataTable6 = dataTable6[numberValue7]
    if dataTable6 then
      numberValue7 = textValue3
      dataTable6 = cmgCall7
      dataTable6 = dataTable6[numberValue7]
      numberValue7 = CMG
      numberValue7 = numberValue7.uiSendMessage
      numberValue8 = {}
      numberValue8.type = "QUEST_LOG_SET_CURRENT"
      numberValue9 = {}
      numberValue10 = {}
      numberValue11 = dataTable6.id
      numberValue10.id = numberValue11
      numberValue11 = dataTable6.title
      numberValue10.title = numberValue11
      numberValue11 = dataTable6.description
      numberValue10.description = numberValue11
      numberValue10.current = 0
      numberValue11 = dataTable6.required
      numberValue10.required = numberValue11
      numberValue9.quest = numberValue10
      numberValue8.info = numberValue9
      numberValue7(numberValue8)
      numberValue7 = RageUI
      if numberValue7 then
        numberValue7 = RageUI
        numberValue8 = workValue13
        numberValue8 = numberValue8()
        numberValue7.QuestLogXOffset = numberValue8
      end
      numberValue7 = cmgCall3
      numberValue8 = dataTable6
      numberValue7(numberValue8)
    else
      dataTable6 = textValue5
      if dataTable6 then
        dataTable6 = tCMG
        dataTable6 = dataTable6.removeMarker
        numberValue7 = textValue5
        dataTable6(numberValue7)
        dataTable6 = nil
        textValue5 = dataTable6
      end
      dataTable6 = pairs
      numberValue7 = dataTable7
      dataTable6, numberValue7, numberValue8, numberValue9 = dataTable6(numberValue7)
      for numberValue10, numberValue11 in dataTable6, numberValue7, numberValue8, numberValue9 do
        workValue15 = DeleteCheckpoint
        workValue = numberValue11
        workValue15(workValue)
      end
      dataTable6 = {}
      dataTable7 = dataTable6
      dataTable6 = tCMG
      dataTable6 = dataTable6.removeArea
      numberValue7 = "job_tutorial_step_marker"
      dataTable6(numberValue7)
      dataTable6 = CMG
      dataTable6 = dataTable6.uiSendMessage
      numberValue7 = {}
      numberValue7.type = "QUEST_LOG_QUEST_FULLY_COMPLETE"
      numberValue8 = {}
      numberValue7.info = numberValue8
      dataTable6(numberValue7)
      dataTable6 = cmgCall4
      dataTable6()
      dataTable6 = nil
      cmgCall7 = dataTable6
      dataTable6 = nil
      textValue3 = dataTable6
      dataTable6 = cmgCall2
      numberValue7 = false
      dataTable6(numberValue7)
    end
  end
  dataTable6 = cmgCall7
  if dataTable6 then
    dataTable6 = textValue3
    if dataTable6 then
      dataTable6 = workValue14
      if dataTable6 then
        dataTable6 = TriggerServerEvent
        numberValue7 = "75b4c18f3c"
        numberValue8 = workValue14
        numberValue9 = textValue3
        numberValue11 = textValue3
        numberValue10 = cmgCall7
        numberValue10 = numberValue10[numberValue11]
        numberValue10 = numberValue10.current
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "75b4c18f3c".
        dataTable6(numberValue7, numberValue8, numberValue9, numberValue10)
      end
    end
  end
  dataTable6 = false
  flag3 = dataTable6
end
cmgCall5.addJobTutorialProgress = cmgCall6
function cmgCall5()
  local arg1, arg2, mathHelper, dataTable6
  arg1 = false
  flag2 = arg1
  arg1 = CMG
  arg1 = arg1.uiSendMessage
  arg2 = {}
  arg2.type = "APP_TOGGLE"
  arg2.app = ""
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.uiSetFocus
  arg2 = false
  mathHelper = false
  dataTable6 = false
  arg1(arg2, mathHelper, dataTable6)
  arg1 = TriggerScreenblurFadeOut
  arg2 = 0.0
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.showAllDisplays
  arg2 = "jobterminal"
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.showHud
  arg1()
end
cmgCall6 = RegisterNetEvent
textValue = "08da92f592"
-- Beginner: this function handles network event "08da92f592".
function eventRegistration(arg1, arg2)
  local mathHelper, dataTable6, numberValue7
  mathHelper = CMG
  mathHelper = mathHelper.addJobTutorialProgress
  dataTable6 = arg1
  numberValue7 = arg2 or numberValue7
  if not arg2 then
    numberValue7 = 1
  end
  mathHelper(dataTable6, numberValue7)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "08da92f592".
cmgCall6(textValue, eventRegistration)
cmgCall6 = CMG
cmgCall6 = cmgCall6.uiRegisterCallback
textValue = "jobMenuStartTutorial"
function eventRegistration(arg1)
  local arg2, mathHelper, dataTable6, numberValue7
  arg2 = cmgCall5
  arg2()
  if arg1 then
    arg2 = arg1.job
    if arg2 then
      goto flow_label_11
    end
  end
  arg2 = CMG
  arg2 = arg2.getClientJob
  arg2 = arg2()
  ::flow_label_11::
  mathHelper = TriggerServerEvent
  dataTable6 = "e9f6f243dd"
  numberValue7 = arg2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e9f6f243dd".
  mathHelper(dataTable6, numberValue7)
end
cmgCall6(textValue, eventRegistration)
cmgCall6 = CMG
cmgCall6 = cmgCall6.uiRegisterCallback
textValue = "jobMenuCancelTutorial"
function eventRegistration()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.cancelJobTutorial
  arg1()
end
cmgCall6(textValue, eventRegistration)
cmgCall6 = RegisterNetEvent
textValue = "e9f6f243dd"
-- Beginner: this function handles network event "e9f6f243dd".
function eventRegistration(arg1, arg2)
  local mathHelper, dataTable6, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, workValue15, workValue, workValue2, numberValue
  mathHelper = CMG
  mathHelper = mathHelper.getCurrentJobTheme
  mathHelper = mathHelper()
  if not mathHelper then
    mathHelper = CMG
    mathHelper = mathHelper.warn
    dataTable6 = "currentJobTheme is nil in job tutorial start"
    mathHelper(dataTable6)
    return
  end
  mathHelper = CMG
  mathHelper = mathHelper.uiSendMessage
  dataTable6 = {}
  dataTable6.type = "QUEST_LOG_CLEAR_ALL"
  numberValue7 = {}
  dataTable6.info = numberValue7
  mathHelper(dataTable6)
  mathHelper = type
  dataTable6 = arg1
  mathHelper = mathHelper(dataTable6)
  if "table" == mathHelper then
    mathHelper = arg1.tutorial
    if mathHelper then
      mathHelper = arg1.tutorial
      cmgCall7 = mathHelper
      mathHelper = arg1.title
      if not mathHelper then
        mathHelper = textValue6
      end
      textValue6 = mathHelper
      mathHelper = arg1.title
      if not mathHelper then
        mathHelper = "JOB TUTORIAL"
      end
      workValue14 = mathHelper
  end
  else
    cmgCall7 = arg1
    mathHelper = "TRAPPER TUTORIAL"
    textValue6 = mathHelper
    mathHelper = "Trapper"
    workValue14 = mathHelper
  end
  mathHelper = arg2 or mathHelper
  if arg2 then
    mathHelper = arg2.stepIndex
    if mathHelper then
      dataTable6 = arg2.stepIndex
      mathHelper = cmgCall7
      mathHelper = mathHelper[dataTable6]
      mathHelper = nil ~= mathHelper
    end
  end
  if mathHelper then
    dataTable6 = arg2.stepIndex
    textValue3 = dataTable6
    numberValue7 = textValue3
    dataTable6 = cmgCall7
    dataTable6 = dataTable6[numberValue7]
    numberValue7 = arg2.currentStepProgress
    if not numberValue7 then
      numberValue7 = 0
    end
    dataTable6.current = numberValue7
    dataTable6 = 1
    numberValue7 = textValue3
    numberValue7 = numberValue7 - 1
    numberValue8 = 1
    for numberValue9 = dataTable6, numberValue7, numberValue8 do
      numberValue10 = cmgCall7
      numberValue10 = numberValue10[numberValue9]
      numberValue11 = CMG
      numberValue11 = numberValue11.uiSendMessage
      workValue15 = {}
      workValue15.type = "QUEST_LOG_SET_CURRENT"
      workValue = {}
      workValue2 = {}
      numberValue = numberValue10.id
      workValue2.id = numberValue
      numberValue = numberValue10.title
      workValue2.title = numberValue
      numberValue = numberValue10.description
      workValue2.description = numberValue
      workValue2.current = 0
      numberValue = numberValue10.required
      workValue2.required = numberValue
      workValue.quest = workValue2
      workValue15.info = workValue
      numberValue11(workValue15)
      numberValue11 = CMG
      numberValue11 = numberValue11.uiSendMessage
      workValue15 = {}
      workValue15.type = "QUEST_LOG_COMPLETE_CURRENT"
      workValue = {}
      workValue.completedAt = "\226\156\133"
      workValue15.info = workValue
      numberValue11(workValue15)
    end
    numberValue7 = textValue3
    dataTable6 = cmgCall7
    dataTable6 = dataTable6[numberValue7]
    numberValue7 = CMG
    numberValue7 = numberValue7.uiSendMessage
    numberValue8 = {}
    numberValue8.type = "QUEST_LOG_SET_CURRENT"
    numberValue9 = {}
    numberValue10 = {}
    numberValue11 = dataTable6.id
    numberValue10.id = numberValue11
    numberValue11 = dataTable6.title
    numberValue10.title = numberValue11
    numberValue11 = dataTable6.description
    numberValue10.description = numberValue11
    numberValue11 = dataTable6.current
    numberValue10.current = numberValue11
    numberValue11 = dataTable6.required
    numberValue10.required = numberValue11
    numberValue9.quest = numberValue10
    numberValue8.info = numberValue9
    numberValue7(numberValue8)
    numberValue7 = dataTable6.current
    if numberValue7 > 0 then
      numberValue7 = CMG
      numberValue7 = numberValue7.uiSendMessage
      numberValue8 = {}
      numberValue8.type = "QUEST_LOG_UPDATE_PROGRESS"
      numberValue9 = {}
      numberValue10 = dataTable6.current
      numberValue9.current = numberValue10
      numberValue8.info = numberValue9
      numberValue7(numberValue8)
    end
  else
    dataTable6 = 1
    textValue3 = dataTable6
    numberValue7 = textValue3
    dataTable6 = cmgCall7
    dataTable6 = dataTable6[numberValue7]
    numberValue7 = CMG
    numberValue7 = numberValue7.uiSendMessage
    numberValue8 = {}
    numberValue8.type = "QUEST_LOG_SET_CURRENT"
    numberValue9 = {}
    numberValue10 = {}
    numberValue11 = dataTable6.id
    numberValue10.id = numberValue11
    numberValue11 = dataTable6.title
    numberValue10.title = numberValue11
    numberValue11 = dataTable6.description
    numberValue10.description = numberValue11
    numberValue10.current = 0
    numberValue11 = dataTable6.required
    numberValue10.required = numberValue11
    numberValue9.quest = numberValue10
    numberValue8.info = numberValue9
    numberValue7(numberValue8)
  end
  dataTable6 = RageUI
  if dataTable6 then
    dataTable6 = RageUI
    numberValue7 = workValue13
    numberValue7 = numberValue7()
    dataTable6.QuestLogXOffset = numberValue7
  end
  dataTable6 = cmgCall3
  numberValue8 = textValue3
  numberValue7 = cmgCall7
  numberValue7 = numberValue7[numberValue8]
  dataTable6(numberValue7)
  dataTable6 = CMG
  dataTable6 = dataTable6.uiSendMessage
  numberValue7 = {}
  numberValue7.type = "QUEST_LOG_SET_TITLE"
  numberValue8 = {}
  numberValue9 = textValue6
  numberValue8.title = numberValue9
  numberValue7.info = numberValue8
  dataTable6(numberValue7)
  dataTable6 = cmgCall2
  numberValue7 = true
  dataTable6(numberValue7)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e9f6f243dd".
cmgCall6(textValue, eventRegistration)
cmgCall6 = CMG
cmgCall6 = cmgCall6.uiRegisterCallback
textValue = "jobMenuClosed"
function eventRegistration()
  local arg1, arg2
  arg1 = cmgCall5
  arg1()
end
cmgCall6(textValue, eventRegistration)
cmgCall6 = AddEventHandler
textValue = "b4fcca60d5"
-- Beginner: this function runs when client event "b4fcca60d5" fires.
function eventRegistration()
  local arg1, arg2
  arg1 = false
  flag2 = arg1
  arg1 = cmgCall5
  arg1()
end
-- Beginner: Register a client-side event handler. Event/command: "b4fcca60d5".
cmgCall6(textValue, eventRegistration)
cmgCall6 = CMG
-- Beginner: this function runs when client event "b4fcca60d5" fires.
function textValue(arg1)
  local arg2, mathHelper, dataTable6, numberValue7, numberValue8, numberValue9, numberValue10
  arg2 = true
  flag2 = arg2
  arg2 = TriggerScreenblurFadeIn
  mathHelper = 0.0
  arg2(mathHelper)
  arg2 = CMG
  arg2 = arg2.uiSetFocus
  mathHelper = true
  dataTable6 = true
  numberValue7 = false
  arg2(mathHelper, dataTable6, numberValue7)
  arg2 = CMG
  arg2 = arg2.hideAllDisplays
  mathHelper = "jobterminal"
  arg2(mathHelper)
  arg2 = CMG
  arg2 = arg2.hideHud
  arg2()
  arg2 = CMG
  arg2 = arg2.getClientJob
  arg2 = arg2()
  mathHelper = CMG
  mathHelper = mathHelper.getClientFaction
  mathHelper = mathHelper()
  if mathHelper then
    dataTable6 = dataTable
    dataTable6 = dataTable6[mathHelper]
    if dataTable6 and mathHelper then
      goto flow_label_34
      dataTable6 = mathHelper or dataTable6
    end
  end
  dataTable6 = arg2
  ::flow_label_34::
  numberValue7 = CMG
  numberValue7 = numberValue7.uiSendMessage
  numberValue8 = {}
  numberValue8.type = "APP_TOGGLE"
  numberValue8.app = dataTable6
  numberValue9 = dataTable2
  numberValue9 = numberValue9[arg2]
  numberValue9 = numberValue9 and true == arg1 or numberValue9
  numberValue8.atWarehouseSeller = numberValue9
  numberValue7(numberValue8)
  if "Trapper" == arg2 then
    numberValue7 = TriggerServerEvent
    numberValue8 = "2319d6cab8"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2319d6cab8".
    numberValue7(numberValue8)
    numberValue7 = cmgCall2
    numberValue8 = CMG
    numberValue8 = numberValue8.isJobTutorialRunning
    numberValue8, numberValue9, numberValue10 = numberValue8()
    numberValue7(numberValue8, numberValue9, numberValue10)
  end
  if "Mechanic" == arg2 then
    numberValue7 = TriggerServerEvent
    numberValue8 = "5c8eb44f1a"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5c8eb44f1a".
    numberValue7(numberValue8)
  end
  numberValue7 = TriggerEvent
  numberValue8 = "a68d3374be"
  numberValue9 = arg2
  numberValue10 = arg1
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "a68d3374be".
  numberValue7(numberValue8, numberValue9, numberValue10)
end
cmgCall6.openJobTerminal = textValue
function cmgCall6()
  local arg1, arg2, mathHelper, dataTable6
  arg1 = CMG
  arg1 = arg1.isHudVehicleCursorEnabled
  arg1 = arg1()
  if arg1 then
    return
  end
  arg1 = flag2
  arg1 = not arg1
  flag2 = arg1
  arg1 = CMG
  arg1 = arg1.getClientJob
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.getClientFaction
  arg2 = arg2()
  mathHelper = nil
  if arg1 and not mathHelper then
    dataTable6 = dataTable2
    mathHelper = dataTable6[arg1]
  end
  if arg2 and not mathHelper then
    dataTable6 = dataTable
    mathHelper = dataTable6[arg2]
  end
  if mathHelper then
    dataTable6 = flag2
    if dataTable6 then
      dataTable6 = CMG
      dataTable6 = dataTable6.openJobTerminal
      dataTable6()
    else
      dataTable6 = cmgCall5
      dataTable6()
    end
  end
end
textValue = RegisterCommand
eventRegistration = "jobmenu"
textValue2 = cmgCall6
flag = false
-- Beginner: Register a chat/console command. Event/command: "jobmenu".
textValue(eventRegistration, textValue2, flag)
textValue = RegisterKeyMapping
eventRegistration = "jobmenu"
textValue2 = "Open Job Menu"
flag = "KEYBOARD"
textValue4 = "F6"
-- Beginner: Bind a command to a keyboard/controller key.
textValue(eventRegistration, textValue2, flag, textValue4)
textValue = CMG
-- Beginner: this function is the command handler for "jobmenu".
function eventRegistration()
  local arg1, arg2
  arg1 = flag2
  return arg1
end
textValue.isJobTerminalOpen = eventRegistration
textValue = 0
eventRegistration = RegisterNetEvent
textValue2 = "45916a0093"
-- Beginner: this function handles network event "45916a0093".
function flag(arg1)
  local arg2, mathHelper, dataTable6, numberValue7, numberValue8, numberValue9
  arg2 = arg1 or nil
  if not arg1 then
    arg2 = 120
  end
  mathHelper = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  mathHelper = mathHelper()
  dataTable6 = arg2 * 1000
  dataTable6 = mathHelper + dataTable6
  numberValue7 = textValue
  if dataTable6 <= numberValue7 then
    return
  end
  textValue = dataTable6
  numberValue7 = CMG
  numberValue7 = numberValue7.uiSendMessage
  numberValue8 = {}
  numberValue8.type = "QUEST_LOG_DISPATCH_VISIBLE"
  numberValue9 = {}
  numberValue9.visible = true
  numberValue8.info = numberValue9
  numberValue7(numberValue8)
  numberValue7 = SetTimeout
  numberValue8 = arg2 * 1000
  function numberValue9()
    local gameTime, dataTable4, dataTable5
    gameTime = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    gameTime = gameTime()
    dataTable4 = textValue
    if gameTime >= dataTable4 then
      gameTime = CMG
      gameTime = gameTime.uiSendMessage
      dataTable4 = {}
      dataTable4.type = "QUEST_LOG_DISPATCH_VISIBLE"
      dataTable5 = {}
      dataTable5.visible = false
      dataTable4.info = dataTable5
      gameTime(dataTable4)
    end
  end
  numberValue7(numberValue8, numberValue9)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "45916a0093".
eventRegistration(textValue2, flag)