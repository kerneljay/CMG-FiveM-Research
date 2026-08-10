--[[
    Beginner Guide: cl_progress.lua
    ===============================

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
    BEGINNER GUIDE — Progress
    =========================

    File: cmg/prod/client/ui/cl_progress.lua
    Purpose: This file contains menu/UI logic.

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

    Named framework/network events found:
      * rprogress:stop
      * rprogress:start
      * rprogress:custom
      * rprogress:linear
      * rprogress:minigame

]]
local dataTable, dataTable4, dataTable5, dataTable6, workValue18, workValue20, workValue22, workValue24, flag3, workValue28, flag, numberValue, workValue2, workValue4, workValue6, workValue7, workValue9, workValue10, workValue12, workValue13, workValue15, textValue2, workValue16
dataTable = {}
dataTable.From = 0
dataTable.To = 100
dataTable.Async = true
dataTable.Duration = 5000
dataTable.Label = "Loading..."
dataTable.LabelPosition = "bottom"
dataTable.Color = "rgba(255, 255, 255, 1.0)"
dataTable.BGColor = "rgba(0, 0, 0, 0.4)"
dataTable.x = 0.5
dataTable.y = 0.5
dataTable.Rotation = 0
dataTable.MaxAngle = 360
dataTable.Radius = 50
dataTable.Stroke = 10
dataTable.Width = 300
dataTable.Height = 40
dataTable.Cap = "butt"
dataTable.Padding = 0
dataTable.CancelKey = 178
dataTable.ShowTimer = true
dataTable.ShowProgress = false
dataTable.Easing = "easeLinear"
dataTable4 = {}
dataTable4.Mouse = false
dataTable4.Player = false
dataTable4.Vehicle = false
dataTable.DisableControls = dataTable4
function dataTable4()
  local arg1, arg2
end
dataTable.onStart = dataTable4
function dataTable4()
  local arg1, arg2
end
dataTable.onComplete = dataTable4
dataTable4 = {}
dataTable4.MaxAngle = 240
dataTable4.Rotation = -120
dataTable4.Radius = 100
dataTable4.Stroke = 30
dataTable5 = {}
dataTable6 = {}
dataTable6.Zone = 40
dataTable6.Duration = 1000
dataTable5.Custom = dataTable6
dataTable6 = {}
dataTable6.Zone = 30
dataTable6.Duration = 500
dataTable5.Easy = dataTable6
dataTable6 = {}
dataTable6.Zone = 20
dataTable6.Duration = 500
dataTable5.Medium = dataTable6
dataTable6 = {}
dataTable6.Zone = 10
dataTable6.Duration = 500
dataTable5.Hard = dataTable6
dataTable6 = {}
dataTable6.Zone = 5
dataTable6.Duration = 400
dataTable5.VeryHard = dataTable6
dataTable4.Difficulty = dataTable5
dataTable.MiniGameOptions = dataTable4
function dataTable4(arg1)
  local arg2, arg3, arg4, workValue19
  arg2 = {}
  function arg3(arg12)
    local workValue14, iterator, workValue17, tableHelper, workValue21, workValue23, workValue26, workValue27, workValue30, workValue
    workValue14 = type
    iterator = arg12
    workValue14 = workValue14(iterator)
    if "table" ~= workValue14 then
      return arg12
    else
      workValue14 = arg2
      workValue14 = workValue14[arg12]
      if workValue14 then
        workValue14 = arg2
        workValue14 = workValue14[arg12]
        return workValue14
      end
    end
    workValue14 = {}
    iterator = arg2
    iterator[arg12] = workValue14
    iterator = pairs
    workValue17 = arg12
    iterator, workValue17, tableHelper, workValue21 = iterator(workValue17)
    for workValue23, workValue26 in iterator, workValue17, tableHelper, workValue21 do
      workValue27 = arg3
      workValue30 = workValue23
      workValue27 = workValue27(workValue30)
      workValue30 = arg3
      workValue = workValue26
      workValue30 = workValue30(workValue)
      workValue14[workValue27] = workValue30
    end
    iterator = setmetatable
    workValue17 = workValue14
    tableHelper = getmetatable
    workValue21 = arg12
    tableHelper, workValue21, workValue23, workValue26, workValue27, workValue30, workValue = tableHelper(workValue21)
    return iterator(workValue17, tableHelper, workValue21, workValue23, workValue26, workValue27, workValue30, workValue)
  end
  arg4 = arg3
  workValue19 = arg1
  return arg4(workValue19)
end
function dataTable5(arg1, arg2)
  local arg3, arg4, workValue19, stringHelper, dataTable7, workValue25, dataTable8, workValue29, flag2, dataTable2
  arg3 = dataTable4
  arg4 = arg1
  arg3 = arg3(arg4)
  arg4 = pairs
  workValue19 = arg2
  arg4, workValue19, stringHelper, dataTable7 = arg4(workValue19)
  for workValue25, dataTable8 in arg4, workValue19, stringHelper, dataTable7 do
    workValue29 = type
    flag2 = dataTable8
    workValue29 = workValue29(flag2)
    if "table" == workValue29 then
      workValue29 = type
      flag2 = arg3[workValue25]
      if not flag2 then
        flag2 = false
      end
      workValue29 = workValue29(flag2)
      if "table" == workValue29 then
        workValue29 = dataTable5
        flag2 = arg3[workValue25]
        if not flag2 then
          flag2 = {}
        end
        dataTable2 = arg2[workValue25]
        if not dataTable2 then
          dataTable2 = {}
        end
        workValue29(flag2, dataTable2)
      else
        arg3[workValue25] = dataTable8
      end
    else
      arg3[workValue25] = dataTable8
    end
  end
  return arg3
end
function dataTable6(arg1)
  local arg2, arg3, arg4, workValue19
  arg2 = "======== RPROGRESS ERROR: "
  arg3 = arg1
  arg4 = " ========"
  arg2 = arg2 .. arg3 .. arg4
  arg1 = arg2
  arg2 = string
  arg2 = arg2.rep
  arg3 = "="
  arg4 = string
  arg4 = arg4.len
  workValue19 = arg1
  arg4, workValue19 = arg4(workValue19)
  arg2 = arg2(arg3, arg4, workValue19)
  arg3 = print
  arg4 = arg2
  arg3(arg4)
  arg3 = print
  arg4 = arg1
  arg3(arg4)
  arg3 = print
  arg4 = arg2
  arg3(arg4)
end
function workValue18(arg1)
  local arg2, arg3, arg4, workValue19, stringHelper, dataTable7, workValue25, dataTable8, workValue29, flag2, dataTable2, workValue3, workValue5, dataTable3, workValue8, textValue, workValue11
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "table" ~= arg2 then
    arg2 = dataTable6
    arg3 = "options must be type:table"
    arg2(arg3)
    arg2 = true
    return arg2
  end
  arg2 = pairs
  arg3 = arg1
  arg2, arg3, arg4, workValue19 = arg2(arg3)
  for stringHelper, dataTable7 in arg2, arg3, arg4, workValue19 do
    workValue25 = nil
    if "onStart" ~= stringHelper and "onComplete" ~= stringHelper and "onTimeout" ~= stringHelper then
      if "ShowTimer" == stringHelper or "ShowProgress" == stringHelper or "Async" == stringHelper or "MiniGame" == stringHelper or "Loop" == stringHelper or "canCancel" == stringHelper then
        dataTable8 = type
        workValue29 = dataTable7
        dataTable8 = dataTable8(workValue29)
        if "boolean" ~= dataTable8 then
          dataTable8 = {}
          dataTable8.prop = stringHelper
          dataTable8.type = "boolean"
          workValue25 = dataTable8
        end
      elseif "Label" == stringHelper or "Color" == stringHelper or "BGColor" == stringHelper or "LabelPosition" == stringHelper or "Easing" == stringHelper or "Cap" == stringHelper or "Type" == stringHelper then
        dataTable8 = type
        workValue29 = dataTable7
        dataTable8 = dataTable8(workValue29)
        if "string" ~= dataTable8 then
          dataTable8 = {}
          dataTable8.prop = stringHelper
          dataTable8.type = "string"
          workValue25 = dataTable8
        end
      elseif "DisableControls" == stringHelper then
        dataTable8 = pairs
        workValue29 = dataTable7
        dataTable8, workValue29, flag2, dataTable2 = dataTable8(workValue29)
        for workValue3, workValue5 in dataTable8, workValue29, flag2, dataTable2 do
          dataTable3 = type
          workValue8 = workValue5
          dataTable3 = dataTable3(workValue8)
          if "boolean" ~= dataTable3 then
            dataTable3 = {}
            workValue8 = stringHelper
            textValue = "."
            workValue11 = workValue3
            workValue8 = workValue8 .. textValue .. workValue11
            dataTable3.prop = workValue8
            dataTable3.type = "boolean"
            workValue25 = dataTable3
          end
        end
      elseif "Animation" == stringHelper then
        dataTable8 = pairs
        workValue29 = dataTable7
        dataTable8, workValue29, flag2, dataTable2 = dataTable8(workValue29)
        for workValue3, workValue5 in dataTable8, workValue29, flag2, dataTable2 do
          if "flag" == workValue3 then
            dataTable3 = tonumber
            workValue8 = workValue5
            dataTable3 = dataTable3(workValue8)
            if nil == dataTable3 then
              dataTable3 = {}
              dataTable3.prop = stringHelper
              dataTable3.type = "number"
              workValue25 = dataTable3
            end
          else
            dataTable3 = type
            workValue8 = workValue5
            dataTable3 = dataTable3(workValue8)
            if "string" ~= dataTable3 then
              dataTable3 = {}
              workValue8 = stringHelper
              textValue = "."
              workValue11 = workValue3
              workValue8 = workValue8 .. textValue .. workValue11
              dataTable3.prop = workValue8
              dataTable3.type = "string"
              workValue25 = dataTable3
            end
          end
        end
      else
        dataTable8 = tonumber
        workValue29 = dataTable7
        dataTable8 = dataTable8(workValue29)
        if nil == dataTable8 then
          dataTable8 = {}
          dataTable8.prop = stringHelper
          dataTable8.type = "number"
          workValue25 = dataTable8
        end
      end
      if nil ~= workValue25 then
        dataTable8 = dataTable6
        workValue29 = "param '"
        flag2 = workValue25.prop
        dataTable2 = "' must be type:"
        workValue3 = workValue25.type
        workValue29 = workValue29 .. flag2 .. dataTable2 .. workValue3
        dataTable8(workValue29)
        dataTable8 = true
        return dataTable8
      end
    end
  end
  arg2 = false
  return arg2
end
workValue20 = nil
workValue22 = nil
workValue24 = nil
flag3 = false
workValue28 = nil
flag = false
numberValue = 0
function workValue2(arg1, arg2, arg3, arg4)
  local workValue19, stringHelper, dataTable7, workValue25
  workValue19 = type
  stringHelper = arg1
  workValue19 = workValue19(stringHelper)
  if "string" ~= workValue19 then
    workValue19 = dataTable6
    stringHelper = "param 'text' must be type:string"
    workValue19(stringHelper)
    return
  end
  if arg4 then
    workValue22 = arg4
  end
  workValue19 = tonumber
  stringHelper = arg2
  workValue19 = workValue19(stringHelper)
  if nil == workValue19 then
    workValue19 = dataTable6
    stringHelper = "param 'duration' must be type:number"
    workValue19(stringHelper)
    return
  end
  workValue19 = dataTable5
  stringHelper = dataTable
  dataTable7 = {}
  dataTable7.display = true
  dataTable7.Duration = arg2
  dataTable7.Label = arg1
  workValue19 = workValue19(stringHelper, dataTable7)
  if nil ~= arg3 then
    workValue19.Type = "linear"
  end
  workValue19.Async = false
  workValue19.MiniGame = false
  workValue19.onStart = nil
  workValue19.onComplete = nil
  stringHelper = SendNUIMessage
  dataTable7 = workValue19
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  stringHelper(dataTable7)
  stringHelper = assert
  dataTable7 = flag3
  dataTable7 = not dataTable7
  workValue25 = "Can not start progress bar whilst an existing bar is still running"
  stringHelper(dataTable7, workValue25)
  stringHelper = true
  flag3 = stringHelper
  while true do
    stringHelper = flag3
    if not stringHelper then
      break
    end
    stringHelper = DisableControls
    dataTable7 = workValue19
    stringHelper(dataTable7)
    stringHelper = Citizen
    stringHelper = stringHelper.Wait
    dataTable7 = 1
    stringHelper(dataTable7)
  end
end
function workValue4()
  local arg1, arg2, arg3, arg4, workValue19, stringHelper
  arg1 = workValue28
  if nil ~= arg1 then
    arg1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    arg2 = DoesEntityExist
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = IsEntityDead
      arg3 = arg1
      arg2 = arg2(arg3)
      if not arg2 then
        arg2 = workValue28.scenario
        if nil ~= arg2 then
          arg2 = ClearPedTasks
          arg3 = arg1
          arg2(arg3)
        else
          arg2 = workValue28.animationDictionary
          if nil ~= arg2 then
            arg2 = workValue28.animationName
            if nil ~= arg2 then
              arg2 = StopAnimTask
              arg3 = arg1
              arg4 = workValue28.animationDictionary
              workValue19 = workValue28.animationName
              stringHelper = 1.0
              arg2(arg3, arg4, workValue19, stringHelper)
            end
          end
        end
      end
    end
  end
end
function workValue6(arg1, arg2)
  local arg3, arg4, workValue19, stringHelper
  arg3 = workValue18
  arg4 = arg1
  arg3 = arg3(arg4)
  if arg3 then
    return
  end
  arg3 = {}
  arg4 = dataTable.DisableControls
  arg4 = arg4.Mouse
  arg3.Mouse = arg4
  arg4 = dataTable.DisableControls
  arg4 = arg4.Player
  arg3.Player = arg4
  arg4 = dataTable.DisableControls
  arg4 = arg4.Vehicle
  arg3.Vehicle = arg4
  arg4 = arg1.DisableControls
  if nil ~= arg4 then
    arg3 = arg1.DisableControls
  end
  arg4 = dataTable5
  workValue19 = dataTable
  stringHelper = arg1
  arg4 = arg4(workValue19, stringHelper)
  arg1 = arg4
  arg4 = dataTable5
  workValue19 = dataTable.DisableControls
  stringHelper = arg3
  arg4 = arg4(workValue19, stringHelper)
  arg1.DisableControls = arg4
  arg1.display = true
  arg4 = arg1.ShowProgress
  if true == arg4 then
    arg1.ShowTimer = false
  end
  arg4 = arg1.onStart
  workValue20 = arg4
  arg4 = arg1.onComplete
  workValue22 = arg4
  arg4 = arg1.onTimeout
  workValue24 = arg4
  arg4 = nil
  workValue28 = arg4
  arg4 = arg1.Animation
  if nil ~= arg4 then
    arg4 = arg1.Animation
    workValue28 = arg4
  end
  arg1.onStart = nil
  arg1.onComplete = nil
  arg1.onTimeout = nil
  if true == arg2 then
    return arg1
  end
  arg4 = arg1.MiniGame
  if arg4 then
    arg4 = SetNuiFocus
    workValue19 = true
    stringHelper = true
    -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
    arg4(workValue19, stringHelper)
  end
  arg4 = SendNUIMessage
  workValue19 = arg1
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg4(workValue19)
  arg4 = assert
  workValue19 = flag3
  workValue19 = not workValue19
  stringHelper = "Can not start progress bar whilst an existing bar is still running"
  arg4(workValue19, stringHelper)
  arg4 = true
  flag3 = arg4
  arg4 = arg1.Async
  if false == arg4 then
    while true do
      arg4 = flag3
      if not arg4 then
        break
      end
      arg4 = IsControlJustPressed
      workValue19 = 0
      stringHelper = dataTable.CancelKey
      arg4 = arg4(workValue19, stringHelper)
      if arg4 then
        arg4 = arg1.canCancel
        if arg4 then
          arg4 = workValue22
          workValue19 = true
          arg4(workValue19)
          arg4 = TriggerEvent
          workValue19 = "rprogress:stop"
          -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "rprogress:stop".
          arg4(workValue19)
        end
      end
      arg4 = DisableControls
      workValue19 = arg1
      arg4(workValue19)
      arg4 = Citizen
      arg4 = arg4.Wait
      workValue19 = 1
      arg4(workValue19)
    end
    arg4 = workValue4
    arg4()
  else
    arg4 = Citizen
    arg4 = arg4.CreateThread
    function workValue19()
      local arg12, workValue14, iterator
      while true do
        arg12 = flag3
        if not arg12 then
          break
        end
        arg12 = IsControlJustPressed
        workValue14 = 0
        iterator = dataTable.CancelKey
        arg12 = arg12(workValue14, iterator)
        if arg12 then
          arg12 = arg1.canCancel
          if arg12 then
            arg12 = workValue22
            workValue14 = true
            arg12(workValue14)
            arg12 = TriggerEvent
            workValue14 = "rprogress:stop"
            -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "rprogress:stop".
            arg12(workValue14)
          end
        end
        arg12 = DisableControls
        workValue14 = arg1
        arg12(workValue14)
        arg12 = Citizen
        arg12 = arg12.Wait
        workValue14 = 0
        arg12(workValue14)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg4(workValue19)
  end
end
function workValue7(arg1, arg2)
  local arg3, arg4, workValue19, stringHelper
  arg3 = workValue2
  arg4 = arg1
  workValue19 = arg2
  stringHelper = true
  arg3(arg4, workValue19, stringHelper)
end
function workValue9()
  local arg1, arg2
  arg1 = SendNUIMessage
  arg2 = {}
  arg2.stop = true
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg1(arg2)
end
function workValue10(arg1)
  local arg2, arg3, arg4
  arg2 = workValue6
  arg3 = arg1
  arg4 = true
  arg2 = arg2(arg3, arg4)
  if not arg2 then
    return
  end
  arg2.display = false
  arg2.static = true
  arg3 = SendNUIMessage
  arg4 = arg2
  arg3(arg4)
  arg3 = {}
  function arg4()
    local arg12, workValue14
    arg2.hide = false
    arg2.show = true
    arg2.progress = false
    arg12 = SendNUIMessage
    workValue14 = arg2
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    arg12(workValue14)
  end
  arg3.Show = arg4
  function arg4(arg12)
    local workValue14, iterator
    arg2.hide = false
    arg2.show = true
    workValue14 = tonumber
    iterator = arg12
    workValue14 = workValue14(iterator)
    arg2.progress = workValue14
    workValue14 = arg2.progress
    if workValue14 < 0 then
      arg2.progress = 0
    else
      workValue14 = arg2.progress
      if workValue14 > 100 then
        arg2.progress = 100
      end
    end
    workValue14 = SendNUIMessage
    iterator = arg2
    workValue14(iterator)
  end
  arg3.SetProgress = arg4
  function arg4()
    local arg12, workValue14
    arg2.show = false
    arg2.hide = true
    arg2.progress = false
    arg12 = SendNUIMessage
    workValue14 = arg2
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    arg12(workValue14)
  end
  arg3.Hide = arg4
  function arg4()
    local arg12, workValue14
    arg2.show = false
    arg2.hide = false
    arg2.progress = false
    arg2.destroy = true
    arg12 = SendNUIMessage
    workValue14 = arg2
    arg12(workValue14)
  end
  arg3.Destroy = arg4
  return arg3
end
function workValue12(arg1)
  local arg2, arg3, arg4, workValue19
  arg2 = flag3
  if arg2 then
    return
  end
  arg2 = false
  flag = arg2
  arg2 = dataTable5
  arg3 = dataTable.MiniGameOptions
  arg4 = arg1
  arg2 = arg2(arg3, arg4)
  arg1 = arg2
  arg2 = arg1.Zone
  if nil == arg2 then
    arg2 = arg1.Duration
    if nil == arg2 then
      arg2 = "Easy"
      arg3 = arg1.Difficulty
      if nil ~= arg3 then
        arg2 = arg1.Difficulty
      end
      arg3 = dataTable.MiniGameOptions
      arg3 = arg3.Difficulty
      arg3 = arg3[arg2]
      arg3 = arg3.Zone
      arg1.Zone = arg3
      arg3 = dataTable.MiniGameOptions
      arg3 = arg3.Difficulty
      arg3 = arg3[arg2]
      arg3 = arg3.Duration
      arg1.Duration = arg3
    end
  end
  arg1.Difficulty = nil
  arg1.MiniGame = true
  arg2 = workValue6
  arg3 = arg1
  arg2(arg3)
  arg2 = arg1.Timeout
  if nil ~= arg2 then
    arg2 = arg1.Timeout
    if arg2 > 0 then
      arg2 = numberValue
      arg2 = arg2 + 1
      numberValue = arg2
      arg3 = Citizen
      arg3 = arg3.SetTimeout
      arg4 = arg1.Timeout
      function workValue19()
        local arg12, workValue14
        arg12 = workValue24
        if nil ~= arg12 then
          arg12 = type
          workValue14 = workValue24
          arg12 = arg12(workValue14)
          if "function" == arg12 then
            arg12 = flag
            if not arg12 then
              arg12 = numberValue
              workValue14 = arg2
              if arg12 == workValue14 then
                arg12 = workValue9
                arg12()
                arg12 = workValue24
                arg12()
              end
            end
          end
        end
      end
      arg3(arg4, workValue19)
    end
  end
end
function workValue13(arg1)
  local arg2, arg3, arg4, workValue19
  arg2 = arg1.DisableControls
  arg2 = arg2.Mouse
  if arg2 then
    arg2 = DisableControlAction
    arg3 = 1
    arg4 = 1
    workValue19 = true
    arg2(arg3, arg4, workValue19)
    arg2 = DisableControlAction
    arg3 = 1
    arg4 = 2
    workValue19 = true
    arg2(arg3, arg4, workValue19)
    arg2 = DisableControlAction
    arg3 = 1
    arg4 = 106
    workValue19 = true
    arg2(arg3, arg4, workValue19)
  end
  arg2 = arg1.DisableControls
  arg2 = arg2.Player
  if arg2 then
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 21
    workValue19 = true
    arg2(arg3, arg4, workValue19)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 30
    workValue19 = true
    arg2(arg3, arg4, workValue19)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 31
    workValue19 = true
    arg2(arg3, arg4, workValue19)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 36
    workValue19 = true
    arg2(arg3, arg4, workValue19)
  end
  arg2 = arg1.DisableControls
  arg2 = arg2.Vehicle
  if arg2 then
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 71
    workValue19 = true
    arg2(arg3, arg4, workValue19)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 72
    workValue19 = true
    arg2(arg3, arg4, workValue19)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 75
    workValue19 = true
    arg2(arg3, arg4, workValue19)
  end
end
DisableControls = workValue13
function workValue13()
  local arg1, arg2, arg3
  arg1 = false
  flag3 = arg1
  arg1 = SetNuiFocus
  arg2 = false
  arg3 = false
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  arg1(arg2, arg3)
end
workValue15 = RegisterNUICallback
textValue2 = "progress_start"
function workValue16(arg1, arg2)
  local arg3, arg4
  arg3 = workValue20
  if nil ~= arg3 then
    arg3 = workValue20
    arg3()
  end
  arg3 = arg2
  arg4 = "ok"
  arg3(arg4)
end
workValue15(textValue2, workValue16)
workValue15 = RegisterNUICallback
textValue2 = "progress_complete"
function workValue16(arg1, arg2)
  local arg3, arg4
  arg3 = workValue13
  arg3()
  arg3 = workValue22
  if nil ~= arg3 then
    arg3 = workValue22
    arg3()
    arg3 = workValue4
    arg3()
  end
  arg3 = arg2
  arg4 = "ok"
  arg3(arg4)
end
workValue15(textValue2, workValue16)
workValue15 = RegisterNUICallback
textValue2 = "progress_stop"
function workValue16(arg1, arg2)
  local arg3, arg4
  arg3 = workValue13
  arg3()
  arg3 = workValue4
  arg3()
  arg3 = arg2
  arg4 = "ok"
  arg3(arg4)
end
workValue15(textValue2, workValue16)
workValue15 = RegisterNUICallback
textValue2 = "progress_minigame_input"
function workValue16(arg1, arg2)
  local arg3, arg4
  arg3 = true
  flag = arg3
  arg3 = workValue22
  if nil ~= arg3 then
    arg3 = workValue22
    arg4 = arg1.success
    arg4 = true == arg4
    arg3(arg4)
  end
  arg3 = workValue4
  arg3()
  arg3 = arg2
  arg4 = "ok"
  arg3(arg4)
end
workValue15(textValue2, workValue16)
workValue15 = RegisterNUICallback
textValue2 = "progress_minigame_complete"
function workValue16(arg1, arg2)
  local arg3, arg4
  arg3 = workValue13
  arg3()
  arg3 = arg2
  arg4 = "ok"
  arg3(arg4)
end
workValue15(textValue2, workValue16)
workValue15 = RegisterNetEvent
textValue2 = "rprogress:start"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "rprogress:start".
workValue15(textValue2)
workValue15 = RegisterNetEvent
textValue2 = "rprogress:stop"
workValue15(textValue2)
workValue15 = RegisterNetEvent
textValue2 = "rprogress:custom"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "rprogress:custom".
workValue15(textValue2)
workValue15 = RegisterNetEvent
textValue2 = "rprogress:linear"
workValue15(textValue2)
workValue15 = RegisterNetEvent
textValue2 = "rprogress:minigame"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "rprogress:minigame".
workValue15(textValue2)
workValue15 = AddEventHandler
textValue2 = "rprogress:start"
workValue16 = workValue2
-- Beginner: Register a client-side event handler. Event/command: "rprogress:start".
workValue15(textValue2, workValue16)
workValue15 = AddEventHandler
textValue2 = "rprogress:stop"
workValue16 = workValue9
workValue15(textValue2, workValue16)
workValue15 = AddEventHandler
textValue2 = "rprogress:custom"
-- Beginner: this function runs when client event "rprogress:custom" fires.
function workValue16(arg1)
  local arg2, arg3
  arg1.Async = false
  arg1.onStart = nil
  arg1.onComplete = nil
  arg2 = workValue6
  arg3 = arg1
  arg2(arg3)
end
-- Beginner: Register a client-side event handler. Event/command: "rprogress:custom".
workValue15(textValue2, workValue16)
workValue15 = AddEventHandler
textValue2 = "rprogress:linear"
workValue16 = workValue7
workValue15(textValue2, workValue16)
workValue15 = AddEventHandler
textValue2 = "rprogress:minigame"
workValue16 = workValue12
-- Beginner: Register a client-side event handler. Event/command: "rprogress:minigame".
workValue15(textValue2, workValue16)
workValue15 = exports
textValue2 = "progressStart"
workValue16 = workValue2
workValue15(textValue2, workValue16)
workValue15 = exports
textValue2 = "progressCustom"
workValue16 = workValue6
workValue15(textValue2, workValue16)
workValue15 = exports
textValue2 = "progressStop"
workValue16 = workValue9
workValue15(textValue2, workValue16)
workValue15 = exports
textValue2 = "progressStatic"
workValue16 = workValue10
workValue15(textValue2, workValue16)
workValue15 = exports
textValue2 = "progressLinear"
workValue16 = workValue7
workValue15(textValue2, workValue16)
workValue15 = exports
textValue2 = "progressMiniGame"
workValue16 = workValue12
workValue15(textValue2, workValue16)
workValue15 = CMG
workValue15.startCircularProgressBar = workValue2
workValue15 = CMG
workValue15.customCircularProgressBar = workValue6
workValue15 = CMG
workValue15.stopCircularProgressBar = workValue9
workValue15 = CMG
workValue15.staticCircularProgressBar = workValue10
workValue15 = CMG
workValue15.linerCircularProgressBar = workValue7
workValue15 = CMG
workValue15.minigameCircularProgressBar = workValue12
workValue15 = CMG
function textValue2()
  local arg1, arg2
  arg1 = flag3
  return arg1
end
workValue15.isProgressBarRunning = textValue2