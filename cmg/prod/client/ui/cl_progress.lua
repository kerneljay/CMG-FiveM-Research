--[[
    LEVEL 1 BEGINNER GUIDE — Progress
    ======================================

    File: cmg/prod/client/ui/cl_progress.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: NUI/menu/interface behaviour, specifically the Progress feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 29
      * Background threads: 0
      * Always-running loops: 3
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
local dataCollection, dataCollection4, dataCollection5, dataCollection6, workingValue18, workingValue20, workingValue22, workingValue24, stateFlag3, workingValue28, stateFlag, number, workingValue2, workingValue4, workingValue6, workingValue7, workingValue9, workingValue10, workingValue12, workingValue13, workingValue15, text2, workingValue16
dataCollection = {}
dataCollection.From = 0
dataCollection.To = 100
dataCollection.Async = true
dataCollection.Duration = 5000
dataCollection.Label = "Loading..."
dataCollection.LabelPosition = "bottom"
dataCollection.Color = "rgba(255, 255, 255, 1.0)"
dataCollection.BGColor = "rgba(0, 0, 0, 0.4)"
dataCollection.x = 0.5
dataCollection.y = 0.5
dataCollection.Rotation = 0
dataCollection.MaxAngle = 360
dataCollection.Radius = 50
dataCollection.Stroke = 10
dataCollection.Width = 300
dataCollection.Height = 40
dataCollection.Cap = "butt"
dataCollection.Padding = 0
dataCollection.CancelKey = 178
dataCollection.ShowTimer = true
dataCollection.ShowProgress = false
dataCollection.Easing = "easeLinear"
dataCollection4 = {}
dataCollection4.Mouse = false
dataCollection4.Player = false
dataCollection4.Vehicle = false
dataCollection.DisableControls = dataCollection4

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: none) ===
function dataCollection4()
  local localValue1, localValue2
end
dataCollection.onStart = dataCollection4

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: none) ===
function dataCollection4()
  local localValue1, localValue2
end
dataCollection.onComplete = dataCollection4
dataCollection4 = {}
dataCollection4.MaxAngle = 240
dataCollection4.Rotation = -120
dataCollection4.Radius = 100
dataCollection4.Stroke = 30
dataCollection5 = {}
dataCollection6 = {}
dataCollection6.Zone = 40
dataCollection6.Duration = 1000
dataCollection5.Custom = dataCollection6
dataCollection6 = {}
dataCollection6.Zone = 30
dataCollection6.Duration = 500
dataCollection5.Easy = dataCollection6
dataCollection6 = {}
dataCollection6.Zone = 20
dataCollection6.Duration = 500
dataCollection5.Medium = dataCollection6
dataCollection6 = {}
dataCollection6.Zone = 10
dataCollection6.Duration = 500
dataCollection5.Hard = dataCollection6
dataCollection6 = {}
dataCollection6.Zone = 5
dataCollection6.Duration = 400
dataCollection5.VeryHard = dataCollection6
dataCollection4.Difficulty = dataCollection5
dataCollection.MiniGameOptions = dataCollection4

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue1) ===
function dataCollection4(localValue1)
  local localValue2, localValue3, localValue4, workingValue19
  localValue2 = {}

  -- === HELPER FUNCTION: localValue3(localValue12) ===
  function localValue3(localValue12)
    local workingValue14, iterator, workingValue17, tableHelper, workingValue21, workingValue23, workingValue26, workingValue27, workingValue30, workingValue
    workingValue14 = type
    iterator = localValue12
    workingValue14 = workingValue14(iterator)
    if "table" ~= workingValue14 then
      return localValue12
    else
      workingValue14 = localValue2
      workingValue14 = workingValue14[localValue12]
      if workingValue14 then
        workingValue14 = localValue2
        workingValue14 = workingValue14[localValue12]
        return workingValue14
      end
    end
    workingValue14 = {}
    iterator = localValue2
    iterator[localValue12] = workingValue14
    iterator = pairs
    workingValue17 = localValue12
    iterator, workingValue17, tableHelper, workingValue21 = iterator(workingValue17)
    for workingValue23, workingValue26 in iterator, workingValue17, tableHelper, workingValue21 do
      workingValue27 = localValue3
      workingValue30 = workingValue23
      workingValue27 = workingValue27(workingValue30)
      workingValue30 = localValue3
      workingValue = workingValue26
      workingValue30 = workingValue30(workingValue)
      workingValue14[workingValue27] = workingValue30
    end
    iterator = setmetatable
    workingValue17 = workingValue14
    tableHelper = getmetatable
    workingValue21 = localValue12
    tableHelper, workingValue21, workingValue23, workingValue26, workingValue27, workingValue30, workingValue = tableHelper(workingValue21)
    return iterator(workingValue17, tableHelper, workingValue21, workingValue23, workingValue26, workingValue27, workingValue30, workingValue)
  end
  localValue4 = localValue3
  workingValue19 = localValue1
  return localValue4(workingValue19)
end

-- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: localValue1, localValue2) ===
function dataCollection5(localValue1, localValue2)
  local localValue3, localValue4, workingValue19, stringHelper, dataCollection7, workingValue25, dataCollection8, workingValue29, stateFlag2, dataCollection2
  localValue3 = dataCollection4
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  localValue4 = pairs
  workingValue19 = localValue2
  localValue4, workingValue19, stringHelper, dataCollection7 = localValue4(workingValue19)
  for workingValue25, dataCollection8 in localValue4, workingValue19, stringHelper, dataCollection7 do
    workingValue29 = type
    stateFlag2 = dataCollection8
    workingValue29 = workingValue29(stateFlag2)
    if "table" == workingValue29 then
      workingValue29 = type
      stateFlag2 = localValue3[workingValue25]
      if not stateFlag2 then
        stateFlag2 = false
      end
      workingValue29 = workingValue29(stateFlag2)
      if "table" == workingValue29 then
        workingValue29 = dataCollection5
        stateFlag2 = localValue3[workingValue25]
        if not stateFlag2 then
          stateFlag2 = {}
        end
        dataCollection2 = localValue2[workingValue25]
        if not dataCollection2 then
          dataCollection2 = {}
        end
        workingValue29(stateFlag2, dataCollection2)
      else
        localValue3[workingValue25] = dataCollection8
      end
    else
      localValue3[workingValue25] = dataCollection8
    end
  end
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: dataCollection6; parameters: localValue1) ===
function dataCollection6(localValue1)
  local localValue2, localValue3, localValue4, workingValue19
  localValue2 = "======== RPROGRESS ERROR: "
  localValue3 = localValue1
  localValue4 = " ========"
  localValue2 = localValue2 .. localValue3 .. localValue4
  localValue1 = localValue2
  localValue2 = string
  localValue2 = localValue2.rep
  localValue3 = "="
  localValue4 = string
  localValue4 = localValue4.len
  workingValue19 = localValue1
  localValue4, workingValue19 = localValue4(workingValue19)
  localValue2 = localValue2(localValue3, localValue4, workingValue19)
  localValue3 = print
  localValue4 = localValue2
  localValue3(localValue4)
  localValue3 = print
  localValue4 = localValue1
  localValue3(localValue4)
  localValue3 = print
  localValue4 = localValue2
  localValue3(localValue4)
end

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue1) ===
function workingValue18(localValue1)
  local localValue2, localValue3, localValue4, workingValue19, stringHelper, dataCollection7, workingValue25, dataCollection8, workingValue29, stateFlag2, dataCollection2, workingValue3, workingValue5, dataCollection3, workingValue8, text, workingValue11
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "table" ~= localValue2 then
    localValue2 = dataCollection6
    localValue3 = "options must be type:table"
    localValue2(localValue3)
    localValue2 = true
    return localValue2
  end
  localValue2 = pairs
  localValue3 = localValue1
  localValue2, localValue3, localValue4, workingValue19 = localValue2(localValue3)
  for stringHelper, dataCollection7 in localValue2, localValue3, localValue4, workingValue19 do
    workingValue25 = nil
    if "onStart" ~= stringHelper and "onComplete" ~= stringHelper and "onTimeout" ~= stringHelper then
      if "ShowTimer" == stringHelper or "ShowProgress" == stringHelper or "Async" == stringHelper or "MiniGame" == stringHelper or "Loop" == stringHelper or "canCancel" == stringHelper then
        dataCollection8 = type
        workingValue29 = dataCollection7
        dataCollection8 = dataCollection8(workingValue29)
        if "boolean" ~= dataCollection8 then
          dataCollection8 = {}
          dataCollection8.prop = stringHelper
          dataCollection8.type = "boolean"
          workingValue25 = dataCollection8
        end
      elseif "Label" == stringHelper or "Color" == stringHelper or "BGColor" == stringHelper or "LabelPosition" == stringHelper or "Easing" == stringHelper or "Cap" == stringHelper or "Type" == stringHelper then
        dataCollection8 = type
        workingValue29 = dataCollection7
        dataCollection8 = dataCollection8(workingValue29)
        if "string" ~= dataCollection8 then
          dataCollection8 = {}
          dataCollection8.prop = stringHelper
          dataCollection8.type = "string"
          workingValue25 = dataCollection8
        end
      elseif "DisableControls" == stringHelper then
        dataCollection8 = pairs
        workingValue29 = dataCollection7
        dataCollection8, workingValue29, stateFlag2, dataCollection2 = dataCollection8(workingValue29)
        for workingValue3, workingValue5 in dataCollection8, workingValue29, stateFlag2, dataCollection2 do
          dataCollection3 = type
          workingValue8 = workingValue5
          dataCollection3 = dataCollection3(workingValue8)
          if "boolean" ~= dataCollection3 then
            dataCollection3 = {}
            workingValue8 = stringHelper
            text = "."
            workingValue11 = workingValue3
            workingValue8 = workingValue8 .. text .. workingValue11
            dataCollection3.prop = workingValue8
            dataCollection3.type = "boolean"
            workingValue25 = dataCollection3
          end
        end
      elseif "Animation" == stringHelper then
        dataCollection8 = pairs
        workingValue29 = dataCollection7
        dataCollection8, workingValue29, stateFlag2, dataCollection2 = dataCollection8(workingValue29)
        for workingValue3, workingValue5 in dataCollection8, workingValue29, stateFlag2, dataCollection2 do
          if "flag" == workingValue3 then
            dataCollection3 = tonumber
            workingValue8 = workingValue5
            dataCollection3 = dataCollection3(workingValue8)
            if nil == dataCollection3 then
              dataCollection3 = {}
              dataCollection3.prop = stringHelper
              dataCollection3.type = "number"
              workingValue25 = dataCollection3
            end
          else
            dataCollection3 = type
            workingValue8 = workingValue5
            dataCollection3 = dataCollection3(workingValue8)
            if "string" ~= dataCollection3 then
              dataCollection3 = {}
              workingValue8 = stringHelper
              text = "."
              workingValue11 = workingValue3
              workingValue8 = workingValue8 .. text .. workingValue11
              dataCollection3.prop = workingValue8
              dataCollection3.type = "string"
              workingValue25 = dataCollection3
            end
          end
        end
      else
        dataCollection8 = tonumber
        workingValue29 = dataCollection7
        dataCollection8 = dataCollection8(workingValue29)
        if nil == dataCollection8 then
          dataCollection8 = {}
          dataCollection8.prop = stringHelper
          dataCollection8.type = "number"
          workingValue25 = dataCollection8
        end
      end
      if nil ~= workingValue25 then
        dataCollection8 = dataCollection6
        workingValue29 = "param '"
        stateFlag2 = workingValue25.prop
        dataCollection2 = "' must be type:"
        workingValue3 = workingValue25.type
        workingValue29 = workingValue29 .. stateFlag2 .. dataCollection2 .. workingValue3
        dataCollection8(workingValue29)
        dataCollection8 = true
        return dataCollection8
      end
    end
  end
  localValue2 = false
  return localValue2
end
workingValue20 = nil
workingValue22 = nil
workingValue24 = nil
stateFlag3 = false
workingValue28 = nil
stateFlag = false
number = 0

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue2(localValue1, localValue2, localValue3, localValue4)
  local workingValue19, stringHelper, dataCollection7, workingValue25
  workingValue19 = type
  stringHelper = localValue1
  workingValue19 = workingValue19(stringHelper)
  if "string" ~= workingValue19 then
    workingValue19 = dataCollection6
    stringHelper = "param 'text' must be type:string"
    workingValue19(stringHelper)
    return
  end
  if localValue4 then
    workingValue22 = localValue4
  end
  workingValue19 = tonumber
  stringHelper = localValue2
  workingValue19 = workingValue19(stringHelper)
  if nil == workingValue19 then
    workingValue19 = dataCollection6
    stringHelper = "param 'duration' must be type:number"
    workingValue19(stringHelper)
    return
  end
  workingValue19 = dataCollection5
  stringHelper = dataCollection
  dataCollection7 = {}
  dataCollection7.display = true
  dataCollection7.Duration = localValue2
  dataCollection7.Label = localValue1
  workingValue19 = workingValue19(stringHelper, dataCollection7)
  if nil ~= localValue3 then
    workingValue19.Type = "linear"
  end
  workingValue19.Async = false
  workingValue19.MiniGame = false
  workingValue19.onStart = nil
  workingValue19.onComplete = nil
  stringHelper = SendNUIMessage
  dataCollection7 = workingValue19
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  stringHelper(dataCollection7)
  stringHelper = assert
  dataCollection7 = stateFlag3
  dataCollection7 = not dataCollection7
  workingValue25 = "Can not start progress bar whilst an existing bar is still running"
  stringHelper(dataCollection7, workingValue25)
  stringHelper = true
  stateFlag3 = stringHelper
  while true do
    stringHelper = stateFlag3
    if not stringHelper then
      break
    end
    stringHelper = DisableControls
    dataCollection7 = workingValue19
    stringHelper(dataCollection7)
    stringHelper = Citizen
    stringHelper = stringHelper.Wait
    dataCollection7 = 1
    stringHelper(dataCollection7)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, localValue2, localValue3, localValue4, workingValue19, stringHelper
  localValue1 = workingValue28
  if nil ~= localValue1 then
    localValue1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    localValue2 = DoesEntityExist
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = IsEntityDead
      localValue3 = localValue1
      localValue2 = localValue2(localValue3)
      if not localValue2 then
        localValue2 = workingValue28.scenario
        if nil ~= localValue2 then
          localValue2 = ClearPedTasks
          localValue3 = localValue1
          localValue2(localValue3)
        else
          localValue2 = workingValue28.animationDictionary
          if nil ~= localValue2 then
            localValue2 = workingValue28.animationName
            if nil ~= localValue2 then
              localValue2 = StopAnimTask
              localValue3 = localValue1
              localValue4 = workingValue28.animationDictionary
              workingValue19 = workingValue28.animationName
              stringHelper = 1.0
              localValue2(localValue3, localValue4, workingValue19, stringHelper)
            end
          end
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2) ===
function workingValue6(localValue1, localValue2)
  local localValue3, localValue4, workingValue19, stringHelper
  localValue3 = workingValue18
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if localValue3 then
    return
  end
  localValue3 = {}
  localValue4 = dataCollection.DisableControls
  localValue4 = localValue4.Mouse
  localValue3.Mouse = localValue4
  localValue4 = dataCollection.DisableControls
  localValue4 = localValue4.Player
  localValue3.Player = localValue4
  localValue4 = dataCollection.DisableControls
  localValue4 = localValue4.Vehicle
  localValue3.Vehicle = localValue4
  localValue4 = localValue1.DisableControls
  if nil ~= localValue4 then
    localValue3 = localValue1.DisableControls
  end
  localValue4 = dataCollection5
  workingValue19 = dataCollection
  stringHelper = localValue1
  localValue4 = localValue4(workingValue19, stringHelper)
  localValue1 = localValue4
  localValue4 = dataCollection5
  workingValue19 = dataCollection.DisableControls
  stringHelper = localValue3
  localValue4 = localValue4(workingValue19, stringHelper)
  localValue1.DisableControls = localValue4
  localValue1.display = true
  localValue4 = localValue1.ShowProgress
  if true == localValue4 then
    localValue1.ShowTimer = false
  end
  localValue4 = localValue1.onStart
  workingValue20 = localValue4
  localValue4 = localValue1.onComplete
  workingValue22 = localValue4
  localValue4 = localValue1.onTimeout
  workingValue24 = localValue4
  localValue4 = nil
  workingValue28 = localValue4
  localValue4 = localValue1.Animation
  if nil ~= localValue4 then
    localValue4 = localValue1.Animation
    workingValue28 = localValue4
  end
  localValue1.onStart = nil
  localValue1.onComplete = nil
  localValue1.onTimeout = nil
  if true == localValue2 then
    return localValue1
  end
  localValue4 = localValue1.MiniGame
  if localValue4 then
    localValue4 = SetNuiFocus
    workingValue19 = true
    stringHelper = true
    -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
    localValue4(workingValue19, stringHelper)
  end
  localValue4 = SendNUIMessage
  workingValue19 = localValue1
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  localValue4(workingValue19)
  localValue4 = assert
  workingValue19 = stateFlag3
  workingValue19 = not workingValue19
  stringHelper = "Can not start progress bar whilst an existing bar is still running"
  localValue4(workingValue19, stringHelper)
  localValue4 = true
  stateFlag3 = localValue4
  localValue4 = localValue1.Async
  if false == localValue4 then
    while true do
      localValue4 = stateFlag3
      if not localValue4 then
        break
      end
      localValue4 = IsControlJustPressed
      workingValue19 = 0
      stringHelper = dataCollection.CancelKey
      localValue4 = localValue4(workingValue19, stringHelper)
      if localValue4 then
        localValue4 = localValue1.canCancel
        if localValue4 then
          localValue4 = workingValue22
          workingValue19 = true
          localValue4(workingValue19)
          localValue4 = TriggerEvent
          workingValue19 = "rprogress:stop"
          -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "rprogress:stop".
          localValue4(workingValue19)
        end
      end
      localValue4 = DisableControls
      workingValue19 = localValue1
      localValue4(workingValue19)
      localValue4 = Citizen
      localValue4 = localValue4.Wait
      workingValue19 = 1
      localValue4(workingValue19)
    end
    localValue4 = workingValue4
    localValue4()
  else
    localValue4 = Citizen
    localValue4 = localValue4.CreateThread

    -- === HELPER FUNCTION (decompiler name: workingValue19; parameters: none) ===
    function workingValue19()
      local localValue12, workingValue14, iterator
      while true do
        localValue12 = stateFlag3
        if not localValue12 then
          break
        end
        localValue12 = IsControlJustPressed
        workingValue14 = 0
        iterator = dataCollection.CancelKey
        localValue12 = localValue12(workingValue14, iterator)
        if localValue12 then
          localValue12 = localValue1.canCancel
          if localValue12 then
            localValue12 = workingValue22
            workingValue14 = true
            localValue12(workingValue14)
            localValue12 = TriggerEvent
            workingValue14 = "rprogress:stop"
            -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "rprogress:stop".
            localValue12(workingValue14)
          end
        end
        localValue12 = DisableControls
        workingValue14 = localValue1
        localValue12(workingValue14)
        localValue12 = Citizen
        localValue12 = localValue12.Wait
        workingValue14 = 0
        localValue12(workingValue14)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue4(workingValue19)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2) ===
function workingValue7(localValue1, localValue2)
  local localValue3, localValue4, workingValue19, stringHelper
  localValue3 = workingValue2
  localValue4 = localValue1
  workingValue19 = localValue2
  stringHelper = true
  localValue3(localValue4, workingValue19, stringHelper)
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2
  localValue1 = SendNUIMessage
  localValue2 = {}
  localValue2.stop = true
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1) ===
function workingValue10(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = workingValue6
  localValue3 = localValue1
  localValue4 = true
  localValue2 = localValue2(localValue3, localValue4)
  if not localValue2 then
    return
  end
  localValue2.display = false
  localValue2.static = true
  localValue3 = SendNUIMessage
  localValue4 = localValue2
  localValue3(localValue4)
  localValue3 = {}

  -- === HELPER FUNCTION: localValue4() ===
  function localValue4()
    local localValue12, workingValue14
    localValue2.hide = false
    localValue2.show = true
    localValue2.progress = false
    localValue12 = SendNUIMessage
    workingValue14 = localValue2
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    localValue12(workingValue14)
  end
  localValue3.Show = localValue4

  -- === HELPER FUNCTION: localValue4(localValue12) ===
  function localValue4(localValue12)
    local workingValue14, iterator
    localValue2.hide = false
    localValue2.show = true
    workingValue14 = tonumber
    iterator = localValue12
    workingValue14 = workingValue14(iterator)
    localValue2.progress = workingValue14
    workingValue14 = localValue2.progress
    if workingValue14 < 0 then
      localValue2.progress = 0
    else
      workingValue14 = localValue2.progress
      if workingValue14 > 100 then
        localValue2.progress = 100
      end
    end
    workingValue14 = SendNUIMessage
    iterator = localValue2
    workingValue14(iterator)
  end
  localValue3.SetProgress = localValue4

  -- === HELPER FUNCTION: localValue4() ===
  function localValue4()
    local localValue12, workingValue14
    localValue2.show = false
    localValue2.hide = true
    localValue2.progress = false
    localValue12 = SendNUIMessage
    workingValue14 = localValue2
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    localValue12(workingValue14)
  end
  localValue3.Hide = localValue4

  -- === HELPER FUNCTION: localValue4() ===
  function localValue4()
    local localValue12, workingValue14
    localValue2.show = false
    localValue2.hide = false
    localValue2.progress = false
    localValue2.destroy = true
    localValue12 = SendNUIMessage
    workingValue14 = localValue2
    localValue12(workingValue14)
  end
  localValue3.Destroy = localValue4
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue1) ===
function workingValue12(localValue1)
  local localValue2, localValue3, localValue4, workingValue19
  localValue2 = stateFlag3
  if localValue2 then
    return
  end
  localValue2 = false
  stateFlag = localValue2
  localValue2 = dataCollection5
  localValue3 = dataCollection.MiniGameOptions
  localValue4 = localValue1
  localValue2 = localValue2(localValue3, localValue4)
  localValue1 = localValue2
  localValue2 = localValue1.Zone
  if nil == localValue2 then
    localValue2 = localValue1.Duration
    if nil == localValue2 then
      localValue2 = "Easy"
      localValue3 = localValue1.Difficulty
      if nil ~= localValue3 then
        localValue2 = localValue1.Difficulty
      end
      localValue3 = dataCollection.MiniGameOptions
      localValue3 = localValue3.Difficulty
      localValue3 = localValue3[localValue2]
      localValue3 = localValue3.Zone
      localValue1.Zone = localValue3
      localValue3 = dataCollection.MiniGameOptions
      localValue3 = localValue3.Difficulty
      localValue3 = localValue3[localValue2]
      localValue3 = localValue3.Duration
      localValue1.Duration = localValue3
    end
  end
  localValue1.Difficulty = nil
  localValue1.MiniGame = true
  localValue2 = workingValue6
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = localValue1.Timeout
  if nil ~= localValue2 then
    localValue2 = localValue1.Timeout
    if localValue2 > 0 then
      localValue2 = number
      localValue2 = localValue2 + 1
      number = localValue2
      localValue3 = Citizen
      localValue3 = localValue3.SetTimeout
      localValue4 = localValue1.Timeout

      -- === HELPER FUNCTION (decompiler name: workingValue19; parameters: none) ===
      function workingValue19()
        local localValue12, workingValue14
        localValue12 = workingValue24
        if nil ~= localValue12 then
          localValue12 = type
          workingValue14 = workingValue24
          localValue12 = localValue12(workingValue14)
          if "function" == localValue12 then
            localValue12 = stateFlag
            if not localValue12 then
              localValue12 = number
              workingValue14 = localValue2
              if localValue12 == workingValue14 then
                localValue12 = workingValue9
                localValue12()
                localValue12 = workingValue24
                localValue12()
              end
            end
          end
        end
      end
      localValue3(localValue4, workingValue19)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue1) ===
function workingValue13(localValue1)
  local localValue2, localValue3, localValue4, workingValue19
  localValue2 = localValue1.DisableControls
  localValue2 = localValue2.Mouse
  if localValue2 then
    localValue2 = DisableControlAction
    localValue3 = 1
    localValue4 = 1
    workingValue19 = true
    localValue2(localValue3, localValue4, workingValue19)
    localValue2 = DisableControlAction
    localValue3 = 1
    localValue4 = 2
    workingValue19 = true
    localValue2(localValue3, localValue4, workingValue19)
    localValue2 = DisableControlAction
    localValue3 = 1
    localValue4 = 106
    workingValue19 = true
    localValue2(localValue3, localValue4, workingValue19)
  end
  localValue2 = localValue1.DisableControls
  localValue2 = localValue2.Player
  if localValue2 then
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 21
    workingValue19 = true
    localValue2(localValue3, localValue4, workingValue19)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 30
    workingValue19 = true
    localValue2(localValue3, localValue4, workingValue19)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 31
    workingValue19 = true
    localValue2(localValue3, localValue4, workingValue19)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 36
    workingValue19 = true
    localValue2(localValue3, localValue4, workingValue19)
  end
  localValue2 = localValue1.DisableControls
  localValue2 = localValue2.Vehicle
  if localValue2 then
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 71
    workingValue19 = true
    localValue2(localValue3, localValue4, workingValue19)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 72
    workingValue19 = true
    localValue2(localValue3, localValue4, workingValue19)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 75
    workingValue19 = true
    localValue2(localValue3, localValue4, workingValue19)
  end
end
DisableControls = workingValue13

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, localValue2, localValue3
  localValue1 = false
  stateFlag3 = localValue1
  localValue1 = SetNuiFocus
  localValue2 = false
  localValue3 = false
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  localValue1(localValue2, localValue3)
end
workingValue15 = RegisterNUICallback
text2 = "progress_start"

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: localValue1, localValue2) ===
function workingValue16(localValue1, localValue2)
  local localValue3, localValue4
  localValue3 = workingValue20
  if nil ~= localValue3 then
    localValue3 = workingValue20
    localValue3()
  end
  localValue3 = localValue2
  localValue4 = "ok"
  localValue3(localValue4)
end
workingValue15(text2, workingValue16)
workingValue15 = RegisterNUICallback
text2 = "progress_complete"

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: localValue1, localValue2) ===
function workingValue16(localValue1, localValue2)
  local localValue3, localValue4
  localValue3 = workingValue13
  localValue3()
  localValue3 = workingValue22
  if nil ~= localValue3 then
    localValue3 = workingValue22
    localValue3()
    localValue3 = workingValue4
    localValue3()
  end
  localValue3 = localValue2
  localValue4 = "ok"
  localValue3(localValue4)
end
workingValue15(text2, workingValue16)
workingValue15 = RegisterNUICallback
text2 = "progress_stop"

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: localValue1, localValue2) ===
function workingValue16(localValue1, localValue2)
  local localValue3, localValue4
  localValue3 = workingValue13
  localValue3()
  localValue3 = workingValue4
  localValue3()
  localValue3 = localValue2
  localValue4 = "ok"
  localValue3(localValue4)
end
workingValue15(text2, workingValue16)
workingValue15 = RegisterNUICallback
text2 = "progress_minigame_input"

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: localValue1, localValue2) ===
function workingValue16(localValue1, localValue2)
  local localValue3, localValue4
  localValue3 = true
  stateFlag = localValue3
  localValue3 = workingValue22
  if nil ~= localValue3 then
    localValue3 = workingValue22
    localValue4 = localValue1.success
    localValue4 = true == localValue4
    localValue3(localValue4)
  end
  localValue3 = workingValue4
  localValue3()
  localValue3 = localValue2
  localValue4 = "ok"
  localValue3(localValue4)
end
workingValue15(text2, workingValue16)
workingValue15 = RegisterNUICallback
text2 = "progress_minigame_complete"

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: localValue1, localValue2) ===
function workingValue16(localValue1, localValue2)
  local localValue3, localValue4
  localValue3 = workingValue13
  localValue3()
  localValue3 = localValue2
  localValue4 = "ok"
  localValue3(localValue4)
end
workingValue15(text2, workingValue16)
workingValue15 = RegisterNetEvent
text2 = "rprogress:start"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "rprogress:start".
workingValue15(text2)
workingValue15 = RegisterNetEvent
text2 = "rprogress:stop"
workingValue15(text2)
workingValue15 = RegisterNetEvent
text2 = "rprogress:custom"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "rprogress:custom".
workingValue15(text2)
workingValue15 = RegisterNetEvent
text2 = "rprogress:linear"
workingValue15(text2)
workingValue15 = RegisterNetEvent
text2 = "rprogress:minigame"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "rprogress:minigame".
workingValue15(text2)
workingValue15 = AddEventHandler
text2 = "rprogress:start"
workingValue16 = workingValue2
-- Beginner: Register a client-side event handler. Event/command: "rprogress:start".
workingValue15(text2, workingValue16)
workingValue15 = AddEventHandler
text2 = "rprogress:stop"
workingValue16 = workingValue9
workingValue15(text2, workingValue16)
workingValue15 = AddEventHandler
text2 = "rprogress:custom"
-- Beginner: this function runs when client event "rprogress:custom" fires.

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: localValue1) ===
function workingValue16(localValue1)
  local localValue2, localValue3
  localValue1.Async = false
  localValue1.onStart = nil
  localValue1.onComplete = nil
  localValue2 = workingValue6
  localValue3 = localValue1
  localValue2(localValue3)
end
-- Beginner: Register a client-side event handler. Event/command: "rprogress:custom".
workingValue15(text2, workingValue16)
workingValue15 = AddEventHandler
text2 = "rprogress:linear"
workingValue16 = workingValue7
workingValue15(text2, workingValue16)
workingValue15 = AddEventHandler
text2 = "rprogress:minigame"
workingValue16 = workingValue12
-- Beginner: Register a client-side event handler. Event/command: "rprogress:minigame".
workingValue15(text2, workingValue16)
workingValue15 = exports
text2 = "progressStart"
workingValue16 = workingValue2
workingValue15(text2, workingValue16)
workingValue15 = exports
text2 = "progressCustom"
workingValue16 = workingValue6
workingValue15(text2, workingValue16)
workingValue15 = exports
text2 = "progressStop"
workingValue16 = workingValue9
workingValue15(text2, workingValue16)
workingValue15 = exports
text2 = "progressStatic"
workingValue16 = workingValue10
workingValue15(text2, workingValue16)
workingValue15 = exports
text2 = "progressLinear"
workingValue16 = workingValue7
workingValue15(text2, workingValue16)
workingValue15 = exports
text2 = "progressMiniGame"
workingValue16 = workingValue12
workingValue15(text2, workingValue16)
workingValue15 = CMG
workingValue15.startCircularProgressBar = workingValue2
workingValue15 = CMG
workingValue15.customCircularProgressBar = workingValue6
workingValue15 = CMG
workingValue15.stopCircularProgressBar = workingValue9
workingValue15 = CMG
workingValue15.staticCircularProgressBar = workingValue10
workingValue15 = CMG
workingValue15.linerCircularProgressBar = workingValue7
workingValue15 = CMG
workingValue15.minigameCircularProgressBar = workingValue12
workingValue15 = CMG

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2
  localValue1 = stateFlag3
  return localValue1
end
workingValue15.isProgressBarRunning = text2
