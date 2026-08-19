--[[
    LEVEL 1 BEGINNER GUIDE — Events
    ====================================

    File: cmg/prod/client/util/client/cl_events.lua
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
      * Named functions: 87
      * Background threads: 0
      * Always-running loops: 14
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
local dataCollection, dataCollection2, dataCollection4, dataCollection5, text8, stateFlag9, number48, stateFlag12, dataCollection7, stateFlag13, workingValue, text, text3, rageUiOperation, text4, text6, rageUiOperation2, rageUiOperation3, rageUiOperation4, text7, dataCollection3, createVector4, createVector42, createVector43, createVector44, number3, number4, number5, number6, number7, number8, number9, number10, number11, number12, number13, number14, number15, number16, number17, number18, number19, number20, number21, number22, number23, number24, number25, number26, number27, number28, number29, number30, number31, number32, number33, number34, number35, number36, number37, number38, number39, number40, number41, number42, number43, number44, number45, number46, number47, number49, number50, number51, number52, number53, number54
dataCollection = {}
dataCollection2 = {}
dataCollection.players = dataCollection2
dataCollection.isActive = false
dataCollection2 = {}
dataCollection.data = dataCollection2
dataCollection.minigameId = 0
dataCollection.minigameName = ""
dataCollection.drawPlayersTimeBar = true
dataCollection.musicString = ""
dataCollection.playMusic = false
currentEvent = dataCollection
dataCollection = {}
dataCollection2 = {}
dataCollection4 = {}
dataCollection5 = {}
text8 = ""
stateFlag9 = false
number48 = 0
stateFlag12 = false
dataCollection7 = {}
stateFlag13 = false
workingValue = RMenu
workingValue = workingValue.Add
text = "cmgevents"
text3 = "main"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text4 = ""
text6 = "Event Menu"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = "cmg_events"
text7 = "cmg_events"
rageUiOperation, text4, text6, rageUiOperation2, rageUiOperation3, rageUiOperation4, text7, dataCollection3, createVector4, createVector42, createVector43, createVector44, number3, number4, number5, number6, number7, number8, number9, number10, number11, number12, number13, number14, number15, number16, number17, number18, number19, number20, number21, number22, number23, number24, number25, number26, number27, number28, number29, number30, number31, number32, number33, number34, number35, number36, number37, number38, number39, number40, number41, number42, number43, number44, number45, number46, number47, number49, number50, number51, number52, number53, number54 = rageUiOperation(text4, text6, rageUiOperation2, rageUiOperation3, rageUiOperation4, text7)
workingValue(text, text3, rageUiOperation, text4, text6, rageUiOperation2, rageUiOperation3, rageUiOperation4, text7, dataCollection3, createVector4, createVector42, createVector43, createVector44, number3, number4, number5, number6, number7, number8, number9, number10, number11, number12, number13, number14, number15, number16, number17, number18, number19, number20, number21, number22, number23, number24, number25, number26, number27, number28, number29, number30, number31, number32, number33, number34, number35, number36, number37, number38, number39, number40, number41, number42, number43, number44, number45, number46, number47, number49, number50, number51, number52, number53, number54)
workingValue = RMenu
workingValue = workingValue.Add
text = "cmgevents"
text3 = "categoryInfo"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text4 = RMenu
text6 = text4
text4 = text4.Get
rageUiOperation2 = "cmgevents"
rageUiOperation3 = "main"
-- Beginner: result below is menu.
text4 = text4(text6, rageUiOperation2, rageUiOperation3)
text6 = ""
rageUiOperation2 = "Category"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text7 = "cmg_events"
dataCollection3 = "cmg_events"
rageUiOperation, text4, text6, rageUiOperation2, rageUiOperation3, rageUiOperation4, text7, dataCollection3, createVector4, createVector42, createVector43, createVector44, number3, number4, number5, number6, number7, number8, number9, number10, number11, number12, number13, number14, number15, number16, number17, number18, number19, number20, number21, number22, number23, number24, number25, number26, number27, number28, number29, number30, number31, number32, number33, number34, number35, number36, number37, number38, number39, number40, number41, number42, number43, number44, number45, number46, number47, number49, number50, number51, number52, number53, number54 = rageUiOperation(text4, text6, rageUiOperation2, rageUiOperation3, rageUiOperation4, text7, dataCollection3)
workingValue(text, text3, rageUiOperation, text4, text6, rageUiOperation2, rageUiOperation3, rageUiOperation4, text7, dataCollection3, createVector4, createVector42, createVector43, createVector44, number3, number4, number5, number6, number7, number8, number9, number10, number11, number12, number13, number14, number15, number16, number17, number18, number19, number20, number21, number22, number23, number24, number25, number26, number27, number28, number29, number30, number31, number32, number33, number34, number35, number36, number37, number38, number39, number40, number41, number42, number43, number44, number45, number46, number47, number49, number50, number51, number52, number53, number54)
workingValue = RMenu
workingValue = workingValue.Add
text = "cmgevents"
text3 = "secondary"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text4 = RMenu
text6 = text4
text4 = text4.Get
rageUiOperation2 = "cmgevents"
rageUiOperation3 = "main"
-- Beginner: result below is menu.
text4 = text4(text6, rageUiOperation2, rageUiOperation3)
text6 = ""
rageUiOperation2 = "Event Menu"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text7 = "cmg_events"
dataCollection3 = "cmg_events"
rageUiOperation, text4, text6, rageUiOperation2, rageUiOperation3, rageUiOperation4, text7, dataCollection3, createVector4, createVector42, createVector43, createVector44, number3, number4, number5, number6, number7, number8, number9, number10, number11, number12, number13, number14, number15, number16, number17, number18, number19, number20, number21, number22, number23, number24, number25, number26, number27, number28, number29, number30, number31, number32, number33, number34, number35, number36, number37, number38, number39, number40, number41, number42, number43, number44, number45, number46, number47, number49, number50, number51, number52, number53, number54 = rageUiOperation(text4, text6, rageUiOperation2, rageUiOperation3, rageUiOperation4, text7, dataCollection3)
workingValue(text, text3, rageUiOperation, text4, text6, rageUiOperation2, rageUiOperation3, rageUiOperation4, text7, dataCollection3, createVector4, createVector42, createVector43, createVector44, number3, number4, number5, number6, number7, number8, number9, number10, number11, number12, number13, number14, number15, number16, number17, number18, number19, number20, number21, number22, number23, number24, number25, number26, number27, number28, number29, number30, number31, number32, number33, number34, number35, number36, number37, number38, number39, number40, number41, number42, number43, number44, number45, number46, number47, number49, number50, number51, number52, number53, number54)
workingValue = RMenu
workingValue = workingValue.Add
text = "cmgevents"
text3 = "players"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text4 = ""
text6 = "Players"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = "cmg_events"
text7 = "cmg_events"
rageUiOperation, text4, text6, rageUiOperation2, rageUiOperation3, rageUiOperation4, text7, dataCollection3, createVector4, createVector42, createVector43, createVector44, number3, number4, number5, number6, number7, number8, number9, number10, number11, number12, number13, number14, number15, number16, number17, number18, number19, number20, number21, number22, number23, number24, number25, number26, number27, number28, number29, number30, number31, number32, number33, number34, number35, number36, number37, number38, number39, number40, number41, number42, number43, number44, number45, number46, number47, number49, number50, number51, number52, number53, number54 = rageUiOperation(text4, text6, rageUiOperation2, rageUiOperation3, rageUiOperation4, text7)
workingValue(text, text3, rageUiOperation, text4, text6, rageUiOperation2, rageUiOperation3, rageUiOperation4, text7, dataCollection3, createVector4, createVector42, createVector43, createVector44, number3, number4, number5, number6, number7, number8, number9, number10, number11, number12, number13, number14, number15, number16, number17, number18, number19, number20, number21, number22, number23, number24, number25, number26, number27, number28, number29, number30, number31, number32, number33, number34, number35, number36, number37, number38, number39, number40, number41, number42, number43, number44, number45, number46, number47, number49, number50, number51, number52, number53, number54)
workingValue = RMenu
workingValue = workingValue.Add
text = "cmgevents"
text3 = "players2"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text4 = ""
text6 = "Players"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = "cmg_events"
text7 = "cmg_events"
rageUiOperation, text4, text6, rageUiOperation2, rageUiOperation3, rageUiOperation4, text7, dataCollection3, createVector4, createVector42, createVector43, createVector44, number3, number4, number5, number6, number7, number8, number9, number10, number11, number12, number13, number14, number15, number16, number17, number18, number19, number20, number21, number22, number23, number24, number25, number26, number27, number28, number29, number30, number31, number32, number33, number34, number35, number36, number37, number38, number39, number40, number41, number42, number43, number44, number45, number46, number47, number49, number50, number51, number52, number53, number54 = rageUiOperation(text4, text6, rageUiOperation2, rageUiOperation3, rageUiOperation4, text7)
workingValue(text, text3, rageUiOperation, text4, text6, rageUiOperation2, rageUiOperation3, rageUiOperation4, text7, dataCollection3, createVector4, createVector42, createVector43, createVector44, number3, number4, number5, number6, number7, number8, number9, number10, number11, number12, number13, number14, number15, number16, number17, number18, number19, number20, number21, number22, number23, number24, number25, number26, number27, number28, number29, number30, number31, number32, number33, number34, number35, number36, number37, number38, number39, number40, number41, number42, number43, number44, number45, number46, number47, number49, number50, number51, number52, number53, number54)
workingValue = RMenu
workingValue = workingValue.Add
text = "cmgevents"
text3 = "client"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text4 = ""
text6 = "CMG Events"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = "cmg_events"
text7 = "cmg_events"
rageUiOperation, text4, text6, rageUiOperation2, rageUiOperation3, rageUiOperation4, text7, dataCollection3, createVector4, createVector42, createVector43, createVector44, number3, number4, number5, number6, number7, number8, number9, number10, number11, number12, number13, number14, number15, number16, number17, number18, number19, number20, number21, number22, number23, number24, number25, number26, number27, number28, number29, number30, number31, number32, number33, number34, number35, number36, number37, number38, number39, number40, number41, number42, number43, number44, number45, number46, number47, number49, number50, number51, number52, number53, number54 = rageUiOperation(text4, text6, rageUiOperation2, rageUiOperation3, rageUiOperation4, text7)
workingValue(text, text3, rageUiOperation, text4, text6, rageUiOperation2, rageUiOperation3, rageUiOperation4, text7, dataCollection3, createVector4, createVector42, createVector43, createVector44, number3, number4, number5, number6, number7, number8, number9, number10, number11, number12, number13, number14, number15, number16, number17, number18, number19, number20, number21, number22, number23, number24, number25, number26, number27, number28, number29, number30, number31, number32, number33, number34, number35, number36, number37, number38, number39, number40, number41, number42, number43, number44, number45, number46, number47, number49, number50, number51, number52, number53, number54)
workingValue = RegisterNetEvent
text = "ceccc29483"
-- Beginner: this function handles network event "ceccc29483".

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2, tableHelper, stateFlag2, stateFlag3
  localValue2 = table
  localValue2 = localValue2.count
  localValue3 = dataCollection
  -- Beginner: result below is count.
  localValue2 = localValue2(localValue3)
  if 0 == localValue2 then
    dataCollection = localValue1
    localValue2 = pairs
    localValue3 = dataCollection
    localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
    for localValue6, stateFlag10 in localValue2, localValue3, localValue4, localValue5 do
      iterator2 = pairs
      workingValue8 = stateFlag10
      iterator2, workingValue8, stateFlag14, iterator = iterator2(workingValue8)
      for text2, number2 in iterator2, workingValue8, stateFlag14, iterator do
        tableHelper = table
        tableHelper = tableHelper.insert
        stateFlag2 = dataCollection7
        stateFlag3 = number2
        tableHelper(stateFlag2, stateFlag3)
      end
    end
    localValue2 = table
    localValue2 = localValue2.sort
    localValue3 = dataCollection7

    -- === HELPER FUNCTION: localValue4(localValue12, localValue22) ===
    function localValue4(localValue12, localValue22)
      local localValue32, workingValue4
      localValue32 = localValue12.minigameName
      workingValue4 = localValue22.minigameName
      localValue32 = localValue32 < workingValue4
      return localValue32
    end
    localValue2(localValue3, localValue4)
  end
  localValue2 = currentEvent
  localValue2 = localValue2.isManager
  if true == localValue2 then
    localValue2 = RageUI
    localValue2 = localValue2.CloseAll
    localValue2()
    localValue2 = RageUI
    localValue2 = localValue2.Visible
    localValue3 = RMenu
    localValue4 = localValue3
    localValue3 = localValue3.Get
    localValue5 = "cmgevents"
    localValue6 = "players"
    -- Beginner: result below is menu.
    localValue3 = localValue3(localValue4, localValue5, localValue6)
    localValue4 = true
    localValue2(localValue3, localValue4)
  else
    localValue2 = RageUI
    localValue2 = localValue2.Visible
    localValue3 = RMenu
    localValue4 = localValue3
    localValue3 = localValue3.Get
    localValue5 = "cmgevents"
    localValue6 = "main"
    localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2, tableHelper, stateFlag2, stateFlag3 = localValue3(localValue4, localValue5, localValue6)
    -- Beginner: result below is menuVisible.
    localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2, tableHelper, stateFlag2, stateFlag3)
    if localValue2 then
      localValue2 = RageUI
      localValue2 = localValue2.CloseAll
      localValue2()
    else
      localValue2 = RageUI
      localValue2 = localValue2.CloseAll
      localValue2()
      localValue2 = RageUI
      localValue2 = localValue2.Visible
      localValue3 = RMenu
      localValue4 = localValue3
      localValue3 = localValue3.Get
      localValue5 = "cmgevents"
      localValue6 = "main"
      -- Beginner: result below is menu.
      localValue3 = localValue3(localValue4, localValue5, localValue6)
      localValue4 = true
      localValue2(localValue3, localValue4)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ceccc29483".
workingValue(text, text3)

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1, localValue2) ===
function workingValue(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2
  localValue3 = RageUI
  localValue3 = localValue3.ButtonWithStyle
  localValue4 = localValue2.mapName
  localValue5 = localValue2.desc
  localValue6 = {}
  localValue6.RightLabel = "\226\134\146\226\134\146\226\134\146"
  stateFlag10 = true

  -- === HELPER FUNCTION: iterator2(localValue12, localValue22, localValue32) ===
  function iterator2(localValue12, localValue22, localValue32)
    local workingValue4, workingValue5, dataCollection6, tableHelper2
    if localValue32 then
      workingValue4 = localValue1
      text8 = workingValue4
      workingValue4 = RMenu
      workingValue5 = workingValue4
      workingValue4 = workingValue4.Get
      dataCollection6 = "cmgevents"
      tableHelper2 = "secondary"
      -- Beginner: result below is menu.
      workingValue4 = workingValue4(workingValue5, dataCollection6, tableHelper2)
      workingValue5 = localValue2
      workingValue4.MetaData = workingValue5
    end
  end
  workingValue8 = RMenu
  stateFlag14 = workingValue8
  workingValue8 = workingValue8.Get
  iterator = "cmgevents"
  text2 = "secondary"
  workingValue8, stateFlag14, iterator, text2 = workingValue8(stateFlag14, iterator, text2)
  -- Beginner: Draw a selectable RageUI menu button.
  localValue3(localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2)
end
text = RageUI
text = text.CreateWhile
text3 = 1.0
rageUiOperation = RMenu
text4 = rageUiOperation
rageUiOperation = rageUiOperation.Get
text6 = "cmgevents"
rageUiOperation2 = "main"
-- Beginner: result below is menu.
rageUiOperation = rageUiOperation(text4, text6, rageUiOperation2)
text4 = nil

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgevents"
  localValue5 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = false

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, workingValue4, workingValue5, dataCollection6, tableHelper2, workingValue6, stringHelper, dataCollection8, stateFlag, number, workingValue2, workingValue3, text5, stateFlag4
    localValue12 = CMG
    localValue12 = localValue12.drawEventJoinAndInviteButtons
    localValue22 = true
    localValue12(localValue22)
    localValue12 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue12 = localValue12()
    localValue22 = number48
    localValue12 = localValue12 - localValue22
    localValue22 = 1000
    if localValue12 > localValue22 then
      localValue12 = TriggerServerEvent
      localValue22 = "d72273eadd"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d72273eadd".
      localValue12(localValue22)
      localValue12 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue12 = localValue12()
      number48 = localValue12
    end
    localValue12 = stateFlag12
    if localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "~g~There is an event currently running."
      localValue12(localValue22)
    else
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "~r~There are no events currently running."
      localValue12(localValue22)
    end
    localValue12 = pairs
    localValue22 = dataCollection7
    localValue12, localValue22, localValue32, workingValue4 = localValue12(localValue22)
    for workingValue5, dataCollection6 in localValue12, localValue22, localValue32, workingValue4 do
      tableHelper2 = table
      tableHelper2 = tableHelper2.count
      workingValue6 = dataCollection6.maps
      -- Beginner: result below is count.
      tableHelper2 = tableHelper2(workingValue6)
      if tableHelper2 > 1 then
        tableHelper2 = RageUI
        tableHelper2 = tableHelper2.ButtonWithStyle
        workingValue6 = dataCollection6.minigameName
        stringHelper = nil
        dataCollection8 = {}
        dataCollection8.RightLabel = "\226\134\146\226\134\146\226\134\146"
        stateFlag = true

        -- === HELPER FUNCTION (decompiler name: number; parameters: localValue13, localValue23, localValue33) ===
        function number(localValue13, localValue23, localValue33)
          local serverEventCall, text9, text10, stateFlag11
          if localValue33 then
            serverEventCall = RMenu
            text9 = serverEventCall
            serverEventCall = serverEventCall.Get
            text10 = "cmgevents"
            stateFlag11 = "categoryInfo"
            -- Beginner: result below is menu.
            serverEventCall = serverEventCall(text9, text10, stateFlag11)
            text9 = dataCollection6
            serverEventCall.MetaData = text9
          end
        end
        workingValue2 = RMenu
        workingValue3 = workingValue2
        workingValue2 = workingValue2.Get
        text5 = "cmgevents"
        stateFlag4 = "categoryInfo"
        workingValue2, workingValue3, text5, stateFlag4 = workingValue2(workingValue3, text5, stateFlag4)
        -- Beginner: Draw a selectable RageUI menu button.
        tableHelper2(workingValue6, stringHelper, dataCollection8, stateFlag, number, workingValue2, workingValue3, text5, stateFlag4)
      else
        tableHelper2 = pairs
        workingValue6 = dataCollection6.maps
        tableHelper2, workingValue6, stringHelper, dataCollection8 = tableHelper2(workingValue6)
        for stateFlag, number in tableHelper2, workingValue6, stringHelper, dataCollection8 do
          workingValue2 = workingValue
          workingValue3 = dataCollection6.minigameName
          text5 = number
          -- Beginner: Register a network event handler that the server/other clients can trigger.
          workingValue2(workingValue3, text5)
        end
      end
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgevents"
  localValue5 = "categoryInfo"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = false

  -- === HELPER FUNCTION: localValue6(localValue12) ===
  function localValue6(localValue12)
    local localValue22, localValue32, workingValue4, workingValue5, dataCollection6, tableHelper2, workingValue6, stringHelper, dataCollection8
    localValue22 = pairs
    localValue32 = localValue12.maps
    localValue22, localValue32, workingValue4, workingValue5 = localValue22(localValue32)
    for dataCollection6, tableHelper2 in localValue22, localValue32, workingValue4, workingValue5 do
      workingValue6 = workingValue
      stringHelper = localValue12.minigameName
      dataCollection8 = tableHelper2
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      workingValue6(stringHelper, dataCollection8)
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgevents"
  localValue5 = "secondary"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = false

  -- === HELPER FUNCTION: localValue6(localValue12) ===
  function localValue6(localValue12)
    local localValue22, localValue32, workingValue4, workingValue5, dataCollection6, tableHelper2, workingValue6
    localValue22 = RageUI
    localValue22 = localValue22.Separator
    localValue32 = string
    localValue32 = localValue32.format
    workingValue4 = "Minimum Players: %s"
    workingValue5 = localValue12.minPlayers
    localValue32, workingValue4, workingValue5, dataCollection6, tableHelper2, workingValue6 = localValue32(workingValue4, workingValue5)
    localValue22(localValue32, workingValue4, workingValue5, dataCollection6, tableHelper2, workingValue6)
    localValue22 = RageUI
    localValue22 = localValue22.Separator
    localValue32 = string
    localValue32 = localValue32.format
    workingValue4 = "Maximum Players: %s"
    workingValue5 = localValue12.maxPlayers
    localValue32, workingValue4, workingValue5, dataCollection6, tableHelper2, workingValue6 = localValue32(workingValue4, workingValue5)
    localValue22(localValue32, workingValue4, workingValue5, dataCollection6, tableHelper2, workingValue6)
    localValue22 = nil
    workingValue4 = text8
    localValue32 = dataCollection4
    localValue32 = localValue32[workingValue4]
    if localValue32 then
      workingValue4 = text8
      localValue32 = dataCollection4
      localValue32 = localValue32[workingValue4]
      localValue32 = localValue32()
      localValue22 = localValue32
    end
    localValue32 = RageUI
    localValue32 = localValue32.ButtonWithStyle
    workingValue4 = "~g~Start Event"
    workingValue5 = nil
    dataCollection6 = {}
    dataCollection6.RightLabel = "\226\134\146\226\134\146\226\134\146"
    tableHelper2 = true

    -- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue13, localValue23, localValue33) ===
    function workingValue6(localValue13, localValue23, localValue33)
      local serverEventCall, text9, text10, stateFlag11, workingValue7
      if localValue33 then
        serverEventCall = TriggerServerEvent
        text9 = "474d4da41a"
        text10 = text8
        stateFlag11 = localValue12.mapName
        workingValue7 = localValue22
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "474d4da41a".
        serverEventCall(text9, text10, stateFlag11, workingValue7)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue32(workingValue4, workingValue5, dataCollection6, tableHelper2, workingValue6)
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgevents"
  localValue5 = "players"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, workingValue4, workingValue5, dataCollection6, tableHelper2, workingValue6, stringHelper, dataCollection8, stateFlag, number, workingValue2, workingValue3, text5, stateFlag4
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~Admin Options"
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "~g~Start Event"
    localValue32 = "This will start the event with you joining it."
    workingValue4 = {}
    workingValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue5 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection6; parameters: localValue13, localValue23, localValue33) ===
    function dataCollection6(localValue13, localValue23, localValue33)
      local serverEventCall, text9, text10, stateFlag11
      if localValue33 then
        serverEventCall = TriggerServerEvent
        text9 = "5ba79ce411"
        text10 = currentEvent
        text10 = text10.minigameId
        stateFlag11 = false
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5ba79ce411".
        serverEventCall(text9, text10, stateFlag11)
        serverEventCall = RageUI
        serverEventCall = serverEventCall.CloseAll
        serverEventCall()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, workingValue4, workingValue5, dataCollection6)
    localValue12 = CMG
    localValue12 = localValue12.hasClientPermission
    localValue22 = "eventadmin.canleave"
    localValue12 = localValue12(localValue22)
    if localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "~y~Start Event And Leave"
      localValue32 = "This will start the event without you joining it."
      workingValue4 = {}
      workingValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
      workingValue5 = true

      -- === HELPER FUNCTION (decompiler name: dataCollection6; parameters: localValue13, localValue23, localValue33) ===
      function dataCollection6(localValue13, localValue23, localValue33)
        local serverEventCall, text9, text10, stateFlag11
        if localValue33 then
          serverEventCall = TriggerServerEvent
          text9 = "5ba79ce411"
          text10 = currentEvent
          text10 = text10.minigameId
          stateFlag11 = true
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5ba79ce411".
          serverEventCall(text9, text10, stateFlag11)
          serverEventCall = RageUI
          serverEventCall = serverEventCall.CloseAll
          serverEventCall()
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, workingValue4, workingValue5, dataCollection6)
    end
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "~r~Cancel Event"
    localValue32 = nil
    workingValue4 = {}
    workingValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue5 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection6; parameters: localValue13, localValue23, localValue33) ===
    function dataCollection6(localValue13, localValue23, localValue33)
      local serverEventCall, text9, text10
      if localValue33 then
        serverEventCall = TriggerServerEvent
        text9 = "f061d958f2"
        text10 = currentEvent
        text10 = text10.minigameId
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f061d958f2".
        serverEventCall(text9, text10)
        serverEventCall = RageUI
        serverEventCall = serverEventCall.CloseAll
        serverEventCall()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, workingValue4, workingValue5, dataCollection6)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~Players ("
    localValue32 = table
    localValue32 = localValue32.count
    workingValue4 = currentEvent
    workingValue4 = workingValue4.players
    -- Beginner: result below is count.
    localValue32 = localValue32(workingValue4)
    workingValue4 = ")"
    localValue22 = localValue22 .. localValue32 .. workingValue4
    localValue12(localValue22)
    localValue12 = pairs
    localValue22 = currentEvent
    localValue22 = localValue22.players
    localValue12, localValue22, localValue32, workingValue4 = localValue12(localValue22)
    for workingValue5, dataCollection6 in localValue12, localValue22, localValue32, workingValue4 do
      tableHelper2 = RageUI
      tableHelper2 = tableHelper2.ButtonWithStyle
      workingValue6 = string
      workingValue6 = workingValue6.format
      stringHelper = "[%s] %s"
      dataCollection8 = dataCollection6.source
      stateFlag = dataCollection6.name
      workingValue6 = workingValue6(stringHelper, dataCollection8, stateFlag)
      stringHelper = string
      stringHelper = stringHelper.format
      dataCollection8 = "Name: %s Temp ID: %s Perm ID: %s"
      stateFlag = dataCollection6.name
      number = dataCollection6.source
      workingValue2 = dataCollection6.user_id
      stringHelper = stringHelper(dataCollection8, stateFlag, number, workingValue2)
      dataCollection8 = {}
      dataCollection8.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag = true

      -- === HELPER FUNCTION (decompiler name: number; parameters: localValue13, localValue23, localValue33) ===
      function number(localValue13, localValue23, localValue33)
        local serverEventCall, text9, text10, stateFlag11
        if localValue33 then
          serverEventCall = RMenu
          text9 = serverEventCall
          serverEventCall = serverEventCall.Get
          text10 = "cmgevents"
          stateFlag11 = "players2"
          -- Beginner: result below is menu.
          serverEventCall = serverEventCall(text9, text10, stateFlag11)
          text9 = dataCollection6
          serverEventCall.MetaData = text9
        end
      end
      workingValue2 = RMenu
      workingValue3 = workingValue2
      workingValue2 = workingValue2.Get
      text5 = "cmgevents"
      stateFlag4 = "players2"
      workingValue2, workingValue3, text5, stateFlag4 = workingValue2(workingValue3, text5, stateFlag4)
      -- Beginner: Draw a selectable RageUI menu button.
      tableHelper2(workingValue6, stringHelper, dataCollection8, stateFlag, number, workingValue2, workingValue3, text5, stateFlag4)
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgevents"
  localValue5 = "players2"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6(localValue12) ===
  function localValue6(localValue12)
    local localValue22, localValue32, workingValue4, workingValue5, dataCollection6, tableHelper2
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    localValue32 = "Kick Player From Event"
    workingValue4 = nil
    workingValue5 = {}
    workingValue5.RightLabel = "\226\134\146\226\134\146\226\134\146"
    dataCollection6 = true

    -- === HELPER FUNCTION: tableHelper2(localValue13, localValue23, localValue33) ===
    function tableHelper2(localValue13, localValue23, localValue33)
      local serverEventCall, text9, text10, stateFlag11
      if localValue33 then
        serverEventCall = TriggerServerEvent
        text9 = "85f5f18925"
        text10 = localValue12.source
        stateFlag11 = currentEvent
        stateFlag11 = stateFlag11.minigameId
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "85f5f18925".
        serverEventCall(text9, text10, stateFlag11)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue22(localValue32, workingValue4, workingValue5, dataCollection6, tableHelper2)
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgevents"
  localValue5 = "client"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, workingValue4, workingValue5, dataCollection6, tableHelper2, workingValue6, stringHelper, dataCollection8, stateFlag, number, workingValue2
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Leave Event"
    localValue32 = nil
    workingValue4 = {}
    workingValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue5 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection6; parameters: localValue13, localValue23, localValue33) ===
    function dataCollection6(localValue13, localValue23, localValue33)
      local serverEventCall, text9
      if localValue33 then
        serverEventCall = ExecuteCommand
        text9 = "leaveevent"
        serverEventCall(text9)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, workingValue4, workingValue5, dataCollection6)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "~y~Players ("
    localValue32 = table
    localValue32 = localValue32.count
    workingValue4 = currentEvent
    workingValue4 = workingValue4.players
    -- Beginner: result below is count.
    localValue32 = localValue32(workingValue4)
    workingValue4 = ")"
    localValue22 = localValue22 .. localValue32 .. workingValue4
    localValue12(localValue22)
    localValue12 = pairs
    localValue22 = currentEvent
    localValue22 = localValue22.players
    localValue12, localValue22, localValue32, workingValue4 = localValue12(localValue22)
    for workingValue5, dataCollection6 in localValue12, localValue22, localValue32, workingValue4 do
      tableHelper2 = RageUI
      tableHelper2 = tableHelper2.ButtonWithStyle
      workingValue6 = string
      workingValue6 = workingValue6.format
      stringHelper = "[%s] %s"
      dataCollection8 = dataCollection6.source
      stateFlag = dataCollection6.name
      workingValue6 = workingValue6(stringHelper, dataCollection8, stateFlag)
      stringHelper = string
      stringHelper = stringHelper.format
      dataCollection8 = "Name: %s Temp ID: %s Perm ID: %s"
      stateFlag = dataCollection6.name
      number = dataCollection6.source
      workingValue2 = dataCollection6.user_id
      stringHelper = stringHelper(dataCollection8, stateFlag, number, workingValue2)
      dataCollection8 = {}
      dataCollection8.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag = true

      -- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
      function number()
        local localValue13, localValue23
      end
      -- Beginner: Draw a selectable RageUI menu button.
      tableHelper2(workingValue6, stringHelper, dataCollection8, stateFlag, number)
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
end
text(text3, rageUiOperation, text4, text6)
text = CMG

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2) ===
function text3(localValue1, localValue2)
  local localValue3
  localValue3 = dataCollection2
  localValue3[localValue1] = localValue2
end
text.registerMinigameCleanupHandler = text3
text = CMG

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2) ===
function text3(localValue1, localValue2)
  local localValue3
  localValue3 = dataCollection4
  localValue3[localValue1] = localValue2
end
text.registerMinigameOptionsHandler = text3

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, localValue3
  localValue2 = CMG
  localValue2 = localValue2.removeBlipsForPlayer
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.removePlayerFromLeaderboard
  localValue3 = localValue1.source
  localValue2(localValue3)
end
text3 = RegisterNetEvent
rageUiOperation = "42896e207e"
-- Beginner: this function handles network event "42896e207e".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1, localValue2, localValue3) ===
function text4(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2, tableHelper, stateFlag2, stateFlag3, stateFlag5, stateFlag6
  localValue4 = pairs
  localValue5 = currentEvent
  localValue5 = localValue5.players
  localValue4, localValue5, localValue6, stateFlag10 = localValue4(localValue5)
  for iterator2, workingValue8 in localValue4, localValue5, localValue6, stateFlag10 do
    stateFlag14 = true
    iterator = pairs
    text2 = localValue1
    iterator, text2, number2, tableHelper = iterator(text2)
    for stateFlag2, stateFlag3 in iterator, text2, number2, tableHelper do
      stateFlag5 = workingValue8.source
      stateFlag6 = stateFlag3.source
      if stateFlag5 == stateFlag6 then
        stateFlag14 = false
        break
      end
    end
    if stateFlag14 then
      iterator = text
      text2 = workingValue8
      iterator(text2)
    end
  end
  localValue4 = pairs
  localValue5 = localValue1
  localValue4, localValue5, localValue6, stateFlag10 = localValue4(localValue5)
  for iterator2, workingValue8 in localValue4, localValue5, localValue6, stateFlag10 do
    stateFlag14 = {}
    workingValue8.data = stateFlag14
  end
  localValue4 = currentEvent
  localValue4.players = localValue1
  localValue4 = currentEvent
  localValue4.minigameId = localValue2
  localValue4 = currentEvent
  localValue4.minigameName = localValue3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "42896e207e".
text3(rageUiOperation, text4)
text3 = RegisterNetEvent
rageUiOperation = "801f335faa"
-- Beginner: this function handles network event "801f335faa".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = {}
  localValue1.data = localValue2
  localValue2 = table
  localValue2 = localValue2.add
  localValue3 = currentEvent
  localValue3 = localValue3.players
  localValue4 = localValue1
  localValue2(localValue3, localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "801f335faa".
text3(rageUiOperation, text4)
text3 = RegisterNetEvent
rageUiOperation = "39dc35cae6"
-- Beginner: this function handles network event "39dc35cae6".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14
  localValue2 = pairs
  localValue3 = currentEvent
  localValue3 = localValue3.players
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, stateFlag10 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = stateFlag10.source
    workingValue8 = localValue1.source
    if iterator2 == workingValue8 then
      iterator2 = text
      workingValue8 = localValue1
      iterator2(workingValue8)
      iterator2 = table
      iterator2 = iterator2.remove
      workingValue8 = currentEvent
      workingValue8 = workingValue8.players
      stateFlag14 = localValue6
      iterator2(workingValue8, stateFlag14)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "39dc35cae6".
text3(rageUiOperation, text4)
text3 = RegisterNetEvent
rageUiOperation = "5b9d37ca28"
-- Beginner: this function handles network event "5b9d37ca28".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = currentEvent
  localValue1.isManager = true
  localValue1 = RageUI
  localValue1 = localValue1.CloseAll
  localValue1()
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgevents"
  localValue5 = "players"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue1(localValue2, localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5b9d37ca28".
text3(rageUiOperation, text4)
text3 = 0
rageUiOperation = 0

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2
  localValue1 = stateFlag13
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    localValue2 = SetEntityVisible
    localValue3 = localValue1
    localValue4 = false
    localValue5 = false
    localValue2(localValue3, localValue4, localValue5)
    localValue2 = vector3
    localValue3 = -77.84175
    localValue4 = -1104.633
    localValue5 = 33.12158
    localValue2 = localValue2(localValue3, localValue4, localValue5)
    localValue3 = SetFocusPosAndVel
    localValue4 = localValue2.x
    localValue5 = localValue2.y
    localValue6 = localValue2.z
    stateFlag10 = 0.0
    iterator2 = 0.0
    workingValue8 = 0.0
    localValue3(localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8)
    localValue3 = CreateCameraWithParams
    localValue4 = "DEFAULT_SCRIPTED_CAMERA"
    localValue5 = -77.84175
    localValue6 = -1104.633
    stateFlag10 = 33.12158
    iterator2 = 0.0
    workingValue8 = 0.0
    stateFlag14 = 0.0
    iterator = 65.0
    text2 = false
    number2 = 2
    localValue3 = localValue3(localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2)
    text3 = localValue3
    localValue3 = PointCamAtCoord
    localValue4 = text3
    localValue5 = -45.73187
    localValue6 = -1097.881
    stateFlag10 = 26.41541
    localValue3(localValue4, localValue5, localValue6, stateFlag10)
    localValue3 = SetCamActive
    localValue4 = text3
    localValue5 = true
    localValue3(localValue4, localValue5)
    localValue3 = RenderScriptCams
    localValue4 = true
    localValue5 = true
    localValue6 = 0
    stateFlag10 = true
    iterator2 = false
    localValue3(localValue4, localValue5, localValue6, stateFlag10, iterator2)
    localValue3 = CreateCameraWithParams
    localValue4 = "DEFAULT_SCRIPTED_CAMERA"
    localValue5 = -45.2044
    localValue6 = -1128.317
    stateFlag10 = 33.12158
    iterator2 = 0.0
    workingValue8 = 0.0
    stateFlag14 = 0.0
    iterator = 65.0
    text2 = false
    number2 = 2
    localValue3 = localValue3(localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2)
    rageUiOperation = localValue3
    localValue3 = PointCamAtCoord
    localValue4 = rageUiOperation
    localValue5 = -45.73187
    localValue6 = -1097.881
    stateFlag10 = 26.41541
    localValue3(localValue4, localValue5, localValue6, stateFlag10)
    localValue3 = SetCamActiveWithInterp
    localValue4 = rageUiOperation
    localValue5 = text3
    localValue6 = 10000
    stateFlag10 = 5
    iterator2 = 5
    localValue3(localValue4, localValue5, localValue6, stateFlag10, iterator2)
    localValue3 = Wait
    localValue4 = 10000
    localValue3(localValue4)
    localValue3 = stateFlag13
    if localValue3 then
      localValue3 = ClearFocus
      localValue3()
      localValue3 = vector3
      localValue4 = 177.9429
      localValue5 = -901.3582
      localValue6 = 46.75317
      localValue3 = localValue3(localValue4, localValue5, localValue6)
      localValue2 = localValue3
      localValue3 = SetCamCoord
      localValue4 = text3
      localValue5 = localValue2.x
      localValue6 = localValue2.y
      stateFlag10 = localValue2.z
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = vector3
      localValue4 = 178.9451
      localValue5 = -991.0022
      localValue6 = 47.74731
      localValue3 = localValue3(localValue4, localValue5, localValue6)
      localValue2 = localValue3
      localValue3 = SetCamCoord
      localValue4 = rageUiOperation
      localValue5 = localValue2.x
      localValue6 = localValue2.y
      stateFlag10 = localValue2.z
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = vector3
      localValue4 = 177.9429
      localValue5 = -901.3582
      localValue6 = 46.75317
      localValue3 = localValue3(localValue4, localValue5, localValue6)
      localValue2 = localValue3
      localValue3 = SetFocusPosAndVel
      localValue4 = localValue2.x
      localValue5 = localValue2.y
      localValue6 = localValue2.z
      stateFlag10 = 0.0
      iterator2 = 0.0
      workingValue8 = 0.0
      localValue3(localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8)
      localValue3 = PointCamAtCoord
      localValue4 = text3
      localValue5 = 195.1253
      localValue6 = -933.7582
      stateFlag10 = 30.67834
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = PointCamAtCoord
      localValue4 = rageUiOperation
      localValue5 = 195.1253
      localValue6 = -933.7582
      stateFlag10 = 30.67834
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = SetCamActiveWithInterp
      localValue4 = rageUiOperation
      localValue5 = text3
      localValue6 = 25000
      stateFlag10 = 5
      iterator2 = 5
      localValue3(localValue4, localValue5, localValue6, stateFlag10, iterator2)
      localValue3 = Wait
      localValue4 = 25000
      localValue3(localValue4)
    end
    localValue3 = stateFlag13
    if localValue3 then
      localValue3 = ClearFocus
      localValue3()
      localValue3 = vector3
      localValue4 = -3135.257
      localValue5 = 1042.998
      localValue6 = 30.15601
      localValue3 = localValue3(localValue4, localValue5, localValue6)
      localValue2 = localValue3
      localValue3 = SetCamCoord
      localValue4 = text3
      localValue5 = localValue2.x
      localValue6 = localValue2.y
      stateFlag10 = localValue2.z
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = vector3
      localValue4 = -3123.837
      localValue5 = 1133.525
      localValue6 = 30.15601
      localValue3 = localValue3(localValue4, localValue5, localValue6)
      localValue2 = localValue3
      localValue3 = SetCamCoord
      localValue4 = rageUiOperation
      localValue5 = localValue2.x
      localValue6 = localValue2.y
      stateFlag10 = localValue2.z
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = vector3
      localValue4 = -3147.073
      localValue5 = 1088.374
      localValue6 = 20.6864
      localValue3 = localValue3(localValue4, localValue5, localValue6)
      localValue2 = localValue3
      localValue3 = SetFocusPosAndVel
      localValue4 = localValue2.x
      localValue5 = localValue2.y
      localValue6 = localValue2.z
      stateFlag10 = 0.0
      iterator2 = 0.0
      workingValue8 = 0.0
      localValue3(localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8)
      localValue3 = PointCamAtCoord
      localValue4 = text3
      localValue5 = -3147.073
      localValue6 = 1088.374
      stateFlag10 = 20.6864
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = PointCamAtCoord
      localValue4 = rageUiOperation
      localValue5 = -3147.073
      localValue6 = 1088.374
      stateFlag10 = 20.6864
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = SetCamActiveWithInterp
      localValue4 = rageUiOperation
      localValue5 = text3
      localValue6 = 15000
      stateFlag10 = 5
      iterator2 = 5
      localValue3(localValue4, localValue5, localValue6, stateFlag10, iterator2)
      localValue3 = Wait
      localValue4 = 15000
      localValue3(localValue4)
    end
    localValue3 = stateFlag13
    if localValue3 then
      localValue3 = ClearFocus
      localValue3()
      localValue3 = vector3
      localValue4 = 598.4967
      localValue5 = 1122.923
      localValue6 = 364.2878
      localValue3 = localValue3(localValue4, localValue5, localValue6)
      localValue2 = localValue3
      localValue3 = SetCamCoord
      localValue4 = text3
      localValue5 = localValue2.x
      localValue6 = localValue2.y
      stateFlag10 = localValue2.z
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = vector3
      localValue4 = 819.7582
      localValue5 = 1057.543
      localValue6 = 364.2878
      localValue3 = localValue3(localValue4, localValue5, localValue6)
      localValue2 = localValue3
      localValue3 = SetCamCoord
      localValue4 = rageUiOperation
      localValue5 = localValue2.x
      localValue6 = localValue2.y
      stateFlag10 = localValue2.z
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = vector3
      localValue4 = 732.5406
      localValue5 = 1195.807
      localValue6 = 326.359
      localValue3 = localValue3(localValue4, localValue5, localValue6)
      localValue2 = localValue3
      localValue3 = SetFocusPosAndVel
      localValue4 = localValue2.x
      localValue5 = localValue2.y
      localValue6 = localValue2.z
      stateFlag10 = 0.0
      iterator2 = 0.0
      workingValue8 = 0.0
      localValue3(localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8)
      localValue3 = PointCamAtCoord
      localValue4 = text3
      localValue5 = 732.5406
      localValue6 = 1195.807
      stateFlag10 = 326.359
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = PointCamAtCoord
      localValue4 = rageUiOperation
      localValue5 = 732.5406
      localValue6 = 1195.807
      stateFlag10 = 326.359
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = SetCamActiveWithInterp
      localValue4 = rageUiOperation
      localValue5 = text3
      localValue6 = 35000
      stateFlag10 = 5
      iterator2 = 5
      localValue3(localValue4, localValue5, localValue6, stateFlag10, iterator2)
      localValue3 = Wait
      localValue4 = 35000
      localValue3(localValue4)
    end
    localValue3 = stateFlag13
    if localValue3 then
      localValue3 = ClearFocus
      localValue3()
      localValue3 = vector3
      localValue4 = 1658.914
      localValue5 = 2526.369
      localValue6 = 69.68567
      localValue3 = localValue3(localValue4, localValue5, localValue6)
      localValue2 = localValue3
      localValue3 = SetCamCoord
      localValue4 = text3
      localValue5 = localValue2.x
      localValue6 = localValue2.y
      stateFlag10 = localValue2.z
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = vector3
      localValue4 = 1751.934
      localValue5 = 2507.947
      localValue6 = 69.68567
      localValue3 = localValue3(localValue4, localValue5, localValue6)
      localValue2 = localValue3
      localValue3 = SetCamCoord
      localValue4 = rageUiOperation
      localValue5 = localValue2.x
      localValue6 = localValue2.y
      stateFlag10 = localValue2.z
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = vector3
      localValue4 = 1708.629
      localValue5 = 2547.943
      localValue6 = 45.55676
      localValue3 = localValue3(localValue4, localValue5, localValue6)
      localValue2 = localValue3
      localValue3 = SetFocusPosAndVel
      localValue4 = localValue2.x
      localValue5 = localValue2.y
      localValue6 = localValue2.z
      stateFlag10 = 0.0
      iterator2 = 0.0
      workingValue8 = 0.0
      localValue3(localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8)
      localValue3 = PointCamAtCoord
      localValue4 = text3
      localValue5 = 1708.629
      localValue6 = 2547.943
      stateFlag10 = 45.55676
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = PointCamAtCoord
      localValue4 = rageUiOperation
      localValue5 = 1708.629
      localValue6 = 2547.943
      stateFlag10 = 45.55676
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = SetCamActiveWithInterp
      localValue4 = rageUiOperation
      localValue5 = text3
      localValue6 = 35000
      stateFlag10 = 5
      iterator2 = 5
      localValue3(localValue4, localValue5, localValue6, stateFlag10, iterator2)
      localValue3 = Wait
      localValue4 = 35000
      localValue3(localValue4)
    end
    localValue3 = stateFlag13
    if localValue3 then
      localValue3 = ClearFocus
      localValue3()
      localValue3 = vector3
      localValue4 = 1545.191
      localValue5 = 6444.29
      localValue6 = 35.64905
      localValue3 = localValue3(localValue4, localValue5, localValue6)
      localValue2 = localValue3
      localValue3 = SetCamCoord
      localValue4 = text3
      localValue5 = localValue2.x
      localValue6 = localValue2.y
      stateFlag10 = localValue2.z
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = vector3
      localValue4 = 1608.475
      localValue5 = 6413.301
      localValue6 = 35.64905
      localValue3 = localValue3(localValue4, localValue5, localValue6)
      localValue2 = localValue3
      localValue3 = SetCamCoord
      localValue4 = rageUiOperation
      localValue5 = localValue2.x
      localValue6 = localValue2.y
      stateFlag10 = localValue2.z
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = vector3
      localValue4 = 1588.536
      localValue5 = 6456.923
      localValue6 = 29.27991
      localValue3 = localValue3(localValue4, localValue5, localValue6)
      localValue2 = localValue3
      localValue3 = SetFocusPosAndVel
      localValue4 = localValue2.x
      localValue5 = localValue2.y
      localValue6 = localValue2.z
      stateFlag10 = 0.0
      iterator2 = 0.0
      workingValue8 = 0.0
      localValue3(localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8)
      localValue3 = PointCamAtCoord
      localValue4 = text3
      localValue5 = 1588.536
      localValue6 = 6456.923
      stateFlag10 = 29.27991
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = PointCamAtCoord
      localValue4 = rageUiOperation
      localValue5 = 1588.536
      localValue6 = 6456.923
      stateFlag10 = 29.27991
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = SetCamActiveWithInterp
      localValue4 = rageUiOperation
      localValue5 = text3
      localValue6 = 20000
      stateFlag10 = 5
      iterator2 = 5
      localValue3(localValue4, localValue5, localValue6, stateFlag10, iterator2)
      localValue3 = Wait
      localValue4 = 20000
      localValue3(localValue4)
    end
    localValue3 = stateFlag13
    if localValue3 then
      localValue3 = ClearFocus
      localValue3()
      localValue3 = vector3
      localValue4 = -134.1758
      localValue5 = -834.0527
      localValue6 = 321.186
      localValue3 = localValue3(localValue4, localValue5, localValue6)
      localValue2 = localValue3
      localValue3 = SetCamCoord
      localValue4 = text3
      localValue5 = localValue2.x
      localValue6 = localValue2.y
      stateFlag10 = localValue2.z
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = vector3
      localValue4 = -37.60879
      localValue5 = -882.6725
      localValue6 = 321.186
      localValue3 = localValue3(localValue4, localValue5, localValue6)
      localValue2 = localValue3
      localValue3 = SetCamCoord
      localValue4 = rageUiOperation
      localValue5 = localValue2.x
      localValue6 = localValue2.y
      stateFlag10 = localValue2.z
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = vector3
      localValue4 = -73.8989
      localValue5 = -817.5824
      localValue6 = 319.4843
      localValue3 = localValue3(localValue4, localValue5, localValue6)
      localValue2 = localValue3
      localValue3 = SetFocusPosAndVel
      localValue4 = localValue2.x
      localValue5 = localValue2.y
      localValue6 = localValue2.z
      stateFlag10 = 0.0
      iterator2 = 0.0
      workingValue8 = 0.0
      localValue3(localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8)
      localValue3 = PointCamAtCoord
      localValue4 = text3
      localValue5 = -73.8989
      localValue6 = -817.5824
      stateFlag10 = 319.4843
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = PointCamAtCoord
      localValue4 = rageUiOperation
      localValue5 = -73.8989
      localValue6 = -817.5824
      stateFlag10 = 319.4843
      localValue3(localValue4, localValue5, localValue6, stateFlag10)
      localValue3 = SetCamActiveWithInterp
      localValue4 = rageUiOperation
      localValue5 = text3
      localValue6 = 25000
      stateFlag10 = 5
      iterator2 = 5
      localValue3(localValue4, localValue5, localValue6, stateFlag10, iterator2)
      localValue3 = Wait
      localValue4 = 25000
      localValue3(localValue4)
    end
    localValue3 = text4
    localValue3()
  end
end
text6 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: localValue1) ===
function rageUiOperation2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, stateFlag10
  localValue2 = RageUI
  localValue2 = localValue2.CloseAll
  localValue2()
  localValue2 = false
  stateFlag13 = localValue2
  localValue2 = DestroyCam
  localValue3 = text3
  localValue4 = false
  localValue2(localValue3, localValue4)
  localValue2 = DestroyCam
  localValue3 = rageUiOperation
  localValue4 = false
  localValue2(localValue3, localValue4)
  if nil == localValue1 or true == localValue1 then
    localValue2 = RenderScriptCams
    localValue3 = false
    localValue4 = true
    localValue5 = 0
    localValue6 = true
    stateFlag10 = false
    localValue2(localValue3, localValue4, localValue5, localValue6, stateFlag10)
  else
    localValue2 = RenderScriptCams
    localValue3 = false
    localValue4 = false
    localValue5 = 0
    localValue6 = true
    stateFlag10 = false
    localValue2(localValue3, localValue4, localValue5, localValue6, stateFlag10)
  end
  localValue2 = ClearFocus
  localValue2()
  localValue2 = FreezeEntityPosition
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue2(localValue3, localValue4)
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = SetEntityVisible
  localValue4 = localValue2
  localValue5 = true
  localValue6 = true
  localValue3(localValue4, localValue5, localValue6)
end
text6.stopEventSequence = rageUiOperation2
text6 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
function rageUiOperation2()
  local localValue1, localValue2
  localValue1 = stateFlag13
  return localValue1
end
text6.isEventSequenceRunning = rageUiOperation2
text6 = RegisterNetEvent
rageUiOperation2 = "bf52c7582d"
-- Beginner: this function handles network event "bf52c7582d".

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2
  localValue1 = true
  stateFlag13 = localValue1
  localValue1 = text4
  localValue1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bf52c7582d".
text6(rageUiOperation2, rageUiOperation3)
text6 = RegisterNetEvent
rageUiOperation2 = "5ba79ce411"
-- Beginner: this function handles network event "5ba79ce411".

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: localValue1) ===
function rageUiOperation3(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = CMG
  localValue2 = localValue2.setVehicleFailureDisabled
  localValue3 = true
  localValue2(localValue3)
  localValue2 = currentEvent
  localValue2.data = localValue1
  localValue2 = currentEvent
  localValue2.isActive = true
  localValue2 = CMG
  localValue2 = localValue2.setGreenzonesDisabled
  localValue3 = true
  localValue2(localValue3)
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  localValue3 = RMenu
  localValue4 = localValue3
  localValue3 = localValue3.Get
  localValue5 = "cmgevents"
  localValue6 = "client"
  -- Beginner: result below is menu.
  localValue3 = localValue3(localValue4, localValue5, localValue6)
  localValue4 = false
  localValue2(localValue3, localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5ba79ce411".
text6(rageUiOperation2, rageUiOperation3)
text6 = "..."
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.registerHudTimerBarProvider
rageUiOperation3 = "eventSequencePlayers"

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14
  localValue2 = currentEvent
  localValue2 = localValue2.isActive
  if localValue2 then
    localValue2 = currentEvent
    localValue2 = localValue2.drawPlayersTimeBar
    if localValue2 then
      goto continueAtStep10
    end
  end
  return
  ::continueAtStep10::
  localValue2 = 0
  localValue3 = pairs
  localValue4 = currentEvent
  localValue4 = localValue4.players
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for stateFlag10, iterator2 in localValue3, localValue4, localValue5, localValue6 do
    workingValue8 = type
    stateFlag14 = iterator2.active
    workingValue8 = workingValue8(stateFlag14)
    if "nil" ~= workingValue8 then
      workingValue8 = iterator2.active
      if true ~= workingValue8 then
        goto continueAtStep26
      end
    end
    localValue2 = localValue2 + 1
    ::continueAtStep26::
  end
  localValue3 = localValue1.push
  localValue4 = "~y~PLAYERS:"
  localValue5 = tostring
  localValue6 = localValue2
  localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14 = localValue5(localValue6)
  localValue3(localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14)
end
rageUiOperation2(rageUiOperation3, rageUiOperation4)

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
function rageUiOperation2()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = stateFlag13
  if localValue1 then
    localValue1 = drawNativeText
    localValue2 = "~g~Waiting for event to start"
    localValue3 = text6
    localValue2 = localValue2 .. localValue3
    -- Beginner: Draw GTA-style text on screen.
    localValue1(localValue2)
    localValue1 = drawNativeNotification
    localValue2 = "The command /leaveevent can be used at any time to return back to the main world."
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue1(localValue2)
    localValue1 = RageUI
    localValue1 = localValue1.Visible
    localValue2 = RMenu
    localValue3 = localValue2
    localValue2 = localValue2.Get
    localValue4 = "cmgevents"
    localValue5 = "client"
    localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3, localValue4, localValue5)
    -- Beginner: result below is menuVisible.
    localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
    if not localValue1 then
      localValue1 = currentEvent
      localValue1 = localValue1.isManager
      if not localValue1 then
        localValue1 = RageUI
        localValue1 = localValue1.Visible
        localValue2 = RMenu
        localValue3 = localValue2
        localValue2 = localValue2.Get
        localValue4 = "cmgevents"
        localValue5 = "client"
        -- Beginner: result below is menu.
        localValue2 = localValue2(localValue3, localValue4, localValue5)
        localValue3 = true
        localValue1(localValue2, localValue3)
    end
    else
      localValue1 = RageUI
      localValue1 = localValue1.Visible
      localValue2 = RMenu
      localValue3 = localValue2
      localValue2 = localValue2.Get
      localValue4 = "cmgevents"
      localValue5 = "players"
      localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3, localValue4, localValue5)
      -- Beginner: result below is menuVisible.
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if not localValue1 then
        localValue1 = currentEvent
        localValue1 = localValue1.isManager
        if localValue1 then
          localValue1 = RageUI
          localValue1 = localValue1.Visible
          localValue2 = RMenu
          localValue3 = localValue2
          localValue2 = localValue2.Get
          localValue4 = "cmgevents"
          localValue5 = "players"
          -- Beginner: result below is menu.
          localValue2 = localValue2(localValue3, localValue4, localValue5)
          localValue3 = true
          localValue1(localValue2, localValue3)
        end
      end
    end
  end
  localValue1 = CMG
  localValue1 = localValue1.setHudTimerBarProviderActive
  localValue2 = "eventSequencePlayers"
  localValue3 = currentEvent
  localValue3 = localValue3.isActive
  localValue3 = true == localValue3
  localValue1(localValue2, localValue3)
  localValue1 = currentEvent
  localValue1 = localValue1.isActive
  if localValue1 then
    localValue1 = currentEvent
    localValue1 = localValue1.drawPlayersTimeBar
    if localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.setWeather
      localValue2 = "EXTRASUNNY"
      localValue1(localValue2)
    end
  end
end
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.createThreadOnTick
rageUiOperation4 = rageUiOperation2
text7 = "Event Sequence"
-- Beginner: Run a helper every game frame while this script is active.
rageUiOperation3(rageUiOperation4, text7)
rageUiOperation3 = Citizen
rageUiOperation3 = rageUiOperation3.CreateThread

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
function rageUiOperation4()
  local localValue1, localValue2
  while true do
    localValue1 = stateFlag13
    if localValue1 then
      localValue1 = text6
      if "..." == localValue1 then
        localValue1 = "."
        text6 = localValue1
      else
        localValue1 = text6
        localValue2 = "."
        localValue1 = localValue1 .. localValue2
        text6 = localValue1
      end
    end
    localValue1 = Wait
    localValue2 = 500
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
rageUiOperation3(rageUiOperation4)
rageUiOperation3 = RegisterNetEvent
rageUiOperation4 = "e27d89983c"
-- Beginner: this function handles network event "e27d89983c".

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1, localValue2, localValue3, localValue4) ===
function text7(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, stateFlag10, iterator2, workingValue8
  localValue5 = CMG
  localValue5 = localValue5.stopEventSequence
  localValue5()
  localValue5 = RageUI
  localValue5 = localValue5.Visible
  localValue6 = RMenu
  stateFlag10 = localValue6
  localValue6 = localValue6.Get
  iterator2 = "cmgevents"
  workingValue8 = "client"
  -- Beginner: result below is menu.
  localValue6 = localValue6(stateFlag10, iterator2, workingValue8)
  stateFlag10 = false
  localValue5(localValue6, stateFlag10)
  localValue5 = dataCollection2
  localValue5 = localValue5[localValue2]
  if localValue5 then
    localValue5 = dataCollection2
    localValue5 = localValue5[localValue2]
    localValue5()
  end
  localValue5 = CMG
  localValue5 = localValue5.setVehicleFailureDisabled
  localValue6 = false
  localValue5(localValue6)
  localValue5 = CMG
  localValue5 = localValue5.endVehicleSelection
  localValue5()
  localValue5 = CMG
  localValue5 = localValue5.setEventSpectatorMode
  localValue6 = false
  localValue5(localValue6)
  localValue5 = CMG
  localValue5 = localValue5.clearMinigameBounds
  localValue5()
  localValue5 = CMG
  localValue5 = localValue5.enableMinigamePlayerBlips
  localValue6 = false
  localValue5(localValue6)
  localValue5 = CMG
  localValue5 = localValue5.enableMinigamePlayerTags
  localValue6 = false
  stateFlag10 = false
  localValue5(localValue6, stateFlag10)
  localValue5 = CMG
  localValue5 = localValue5.setGreenzonesDisabled
  localValue6 = false
  localValue5(localValue6)
  localValue5 = CMG
  localValue5 = localValue5.setPlayerCanOpenLeaderboard
  localValue6 = false
  localValue5(localValue6)
  localValue5 = CMG
  localValue5 = localValue5.clearLeaderboardData
  localValue5()
  if localValue3 and localValue4 then
    localValue5 = CMG
    localValue5 = localValue5.podiumLeaderboard
    localValue6 = localValue3
    stateFlag10 = localValue4
    localValue5(localValue6, stateFlag10)
  else
    localValue5 = CMG
    localValue5 = localValue5.isPodiumDrawing
    localValue5 = localValue5()
    if localValue5 then
      localValue5 = CMG
      localValue5 = localValue5.callCancelPodium
      localValue5()
    end
  end
  localValue5 = CMG
  localValue5 = localValue5.cancelOverrideTimeWeather
  localValue5()
  localValue5 = {}
  localValue6 = {}
  localValue5.players = localValue6
  localValue5.isActive = false
  localValue6 = {}
  localValue5.data = localValue6
  localValue5.minigameId = 0
  localValue5.drawPlayersTimeBar = true
  localValue5.isManager = false
  localValue5.musicString = ""
  localValue5.playMusic = false
  currentEvent = localValue5
  localValue5 = true
  stateFlag9 = localValue5
  localValue5 = Citizen
  localValue5 = localValue5.Wait
  localValue6 = 5000
  localValue5(localValue6)
  localValue5 = false
  stateFlag9 = localValue5
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e27d89983c".
rageUiOperation3(rageUiOperation4, text7)
rageUiOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = FreezeEntityPosition
  localValue4 = localValue2
  localValue5 = localValue1
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue3(localValue4, localValue5)
  localValue3 = SetEntityInvincible
  localValue4 = localValue2
  localValue5 = localValue1
  localValue3(localValue4, localValue5)
  localValue3 = SetEntityVisible
  localValue4 = localValue2
  localValue5 = not localValue1
  localValue6 = not localValue1
  localValue3(localValue4, localValue5, localValue6)
end
rageUiOperation3.setPlayerInvisible = rageUiOperation4
rageUiOperation3 = RegisterNetEvent
rageUiOperation4 = "bfec1d4544"
-- Beginner: this function handles network event "bfec1d4544".

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1, localValue2) ===
function text7(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator
  localValue3 = CMG
  localValue3 = localValue3.getHideEventAnnouncementFlag
  localValue3 = localValue3()
  localValue4 = CMG
  localValue4 = localValue4.getPlayerCombatTimer
  localValue4 = localValue4()
  if 0 == localValue4 and "Hidden" ~= localValue3 then
    localValue4 = CMG
    localValue4 = localValue4.isInTutorial
    localValue4 = localValue4()
    if not localValue4 then
      localValue4 = PlaySound
      localValue5 = -1
      localValue6 = "CHECKPOINT_PERFECT"
      stateFlag10 = "HUD_MINI_GAME_SOUNDSET"
      iterator2 = false
      workingValue8 = 0
      stateFlag14 = true
      localValue4(localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14)
      localValue4 = nil
      if "Top" == localValue3 then
        localValue5 = vector2
        localValue6 = 0.5
        stateFlag10 = 0.2
        localValue5 = localValue5(localValue6, stateFlag10)
        localValue4 = localValue5
      end
      localValue5 = CMG
      localValue5 = localValue5.announceMpBigMsg
      localValue6 = "~b~"
      stateFlag10 = localValue1
      iterator2 = " event has started!"
      localValue6 = localValue6 .. stateFlag10 .. iterator2
      stateFlag10 = "/joinevent to enter, Win \194\163500,000! - "
      iterator2 = tostring
      workingValue8 = localValue2
      iterator2 = iterator2(workingValue8)
      workingValue8 = " slots available."
      stateFlag10 = stateFlag10 .. iterator2 .. workingValue8
      iterator2 = 5000
      workingValue8 = nil
      stateFlag14 = nil
      iterator = localValue4
      localValue5(localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bfec1d4544".
rageUiOperation3(rageUiOperation4, text7)
rageUiOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6) ===
function rageUiOperation4(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6)
  local stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2, tableHelper, stateFlag2
  if localValue4 then
    stateFlag10 = GetSoundId
    -- Beginner: result below is soundHandle.
    stateFlag10 = stateFlag10()
    iterator2 = PlaySoundFrontend
    workingValue8 = stateFlag10
    stateFlag14 = "Checkpoint_Teammate"
    iterator = "GTAO_Shepherd_Sounds"
    text2 = false
    iterator2(workingValue8, stateFlag14, iterator, text2)
    iterator2 = ReleaseSoundId
    workingValue8 = stateFlag10
    iterator2(workingValue8)
  end
  stateFlag10 = Scaleform
  iterator2 = "MP_BIG_MESSAGE_FREEMODE"
  stateFlag10 = stateFlag10(iterator2)
  iterator2 = stateFlag10.RunFunction
  workingValue8 = "SHOW_SHARD_WASTED_MP_MESSAGE"
  stateFlag14 = {}
  iterator = localValue1
  text2 = localValue2
  number2 = 0
  tableHelper = false
  stateFlag2 = false
  stateFlag14[1] = iterator
  stateFlag14[2] = text2
  stateFlag14[3] = number2
  stateFlag14[4] = tableHelper
  stateFlag14[5] = stateFlag2
  iterator2(workingValue8, stateFlag14)
  if localValue5 then
    iterator2 = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.

    -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
    function workingValue8()
      local localValue12, localValue22, localValue32, workingValue4
      localValue12 = false
      localValue22 = SetTimeout
      localValue32 = localValue3
      -- Beginner: this function is the body of a background FiveM thread.

      -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
      function workingValue4()
        local localValue13, localValue23
        localValue13 = true
        localValue12 = localValue13
      end
      localValue22(localValue32, workingValue4)
      while not localValue12 do
        localValue22 = stateFlag10.Render2D
        localValue32 = localValue6
        localValue22(localValue32)
        localValue22 = Wait
        localValue32 = 0
        localValue22(localValue32)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    iterator2(workingValue8)
  else
    iterator2 = false
    workingValue8 = SetTimeout
    stateFlag14 = localValue3

    -- === HELPER FUNCTION: iterator() ===
    function iterator()
      local localValue12, localValue22
      localValue12 = true
      iterator2 = localValue12
    end
    workingValue8(stateFlag14, iterator)
    while not iterator2 do
      workingValue8 = stateFlag10.Render2D
      stateFlag14 = localValue6
      workingValue8(stateFlag14)
      workingValue8 = Wait
      stateFlag14 = 0
      workingValue8(stateFlag14)
    end
  end
end
rageUiOperation3.announceMpBigMsg = rageUiOperation4
rageUiOperation3 = RegisterNetEvent
rageUiOperation4 = "ac4201c774"
text7 = CMG
text7 = text7.announceMpBigMsg
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ac4201c774".
rageUiOperation3(rageUiOperation4, text7)
rageUiOperation3 = CMG
-- Beginner: this function handles network event "ac4201c774".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, localValue3
  localValue2 = currentEvent
  localValue2.playMusic = true
  localValue2 = currentEvent
  localValue2.musicString = localValue1
  localValue2 = TriggerMusicEvent
  localValue3 = localValue1
  localValue2(localValue3)
end
rageUiOperation3.setEventMusic = rageUiOperation4
rageUiOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
function rageUiOperation4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14
  localValue1 = {}
  localValue2 = pairs
  localValue3 = currentEvent
  localValue3 = localValue3.players
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, stateFlag10 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = stateFlag10.active
    if iterator2 then
      iterator2 = table
      iterator2 = iterator2.insert
      workingValue8 = localValue1
      stateFlag14 = stateFlag10
      iterator2(workingValue8, stateFlag14)
    end
  end
  return localValue1
end
rageUiOperation3.getActiveEventPlayers = rageUiOperation4
rageUiOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
function rageUiOperation4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2
  localValue1 = GetPlayerServerId
  localValue2 = PlayerId
  localValue2, localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2 = localValue2()
  -- Beginner: result below is serverId.
  localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2)
  localValue2 = pairs
  localValue3 = currentEvent
  localValue3 = localValue3.players
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, stateFlag10 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = stateFlag10.source
    if iterator2 == localValue1 then
      return stateFlag10
    end
  end
end
rageUiOperation3.getEventLocalPlayer = rageUiOperation4
rageUiOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2
  localValue2 = pairs
  localValue3 = currentEvent
  localValue3 = localValue3.players
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, stateFlag10 in localValue2, localValue3, localValue4, localValue5 do
    iterator2 = stateFlag10.source
    if iterator2 == localValue1 then
      return stateFlag10
    end
  end
end
rageUiOperation3.getEventPlayerFromSrc = rageUiOperation4
rageUiOperation3 = RegisterNetEvent
rageUiOperation4 = "46bdb82845"
-- Beginner: this function handles network event "46bdb82845".

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1, localValue2) ===
function text7(localValue1, localValue2)
  local localValue3
  localValue3 = currentEvent
  localValue3 = localValue3.players
  localValue3 = localValue3[localValue1]
  if localValue3 then
    localValue3 = currentEvent
    localValue3 = localValue3.players
    localValue3 = localValue3[localValue1]
    localValue3.active = localValue2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "46bdb82845".
rageUiOperation3(rageUiOperation4, text7)
rageUiOperation3 = false
rageUiOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1) ===
function text7(localValue1)
  local localValue2
  rageUiOperation3 = localValue1
end
rageUiOperation4.setEventsUsingNetworkResurrect = text7
rageUiOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2
  localValue1 = rageUiOperation3
  return localValue1
end
rageUiOperation4.isEventUsingNetworkResurrect = text7
rageUiOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1) ===
function text7(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14
  localValue2 = true
  localValue3 = -1
  localValue4 = -1
  localValue5 = localValue1 + 1
  localValue6 = 255
  stateFlag10 = 0
  iterator2 = Citizen
  iterator2 = iterator2.CreateThread

  -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
  function workingValue8()
    local localValue12, localValue22, localValue32, workingValue4, workingValue5
    while true do
      localValue12 = localValue2
      if not localValue12 then
        break
      end
      localValue12 = localValue5
      if -1 ~= localValue12 then
        localValue12 = localValue5
        localValue12 = localValue12 - 1
        localValue5 = localValue12
      end
      localValue12 = localValue5
      if localValue12 > 0 then
        localValue12 = PlaySoundFrontend
        localValue22 = -1
        localValue32 = "3_2_1"
        workingValue4 = "HUD_MINI_GAME_SOUNDSET"
        workingValue5 = true
        localValue12(localValue22, localValue32, workingValue4, workingValue5)
      end
      localValue12 = localValue5
      if 0 == localValue12 then
        localValue12 = PlaySoundFrontend
        localValue22 = -1
        localValue32 = "GO"
        workingValue4 = "HUD_MINI_GAME_SOUNDSET"
        workingValue5 = true
        localValue12(localValue22, localValue32, workingValue4, workingValue5)
      end
      localValue12 = Citizen
      localValue12 = localValue12.Wait
      localValue22 = 1000
      localValue12(localValue22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  iterator2(workingValue8)
  iterator2 = Scaleform
  workingValue8 = "COUNTDOWN"
  iterator2 = iterator2(workingValue8)
  workingValue8 = Citizen
  workingValue8 = workingValue8.CreateThread

  -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: none) ===
  function stateFlag14()
    local localValue12, localValue22, localValue32, workingValue4, workingValue5, dataCollection6, tableHelper2, workingValue6, stringHelper
    while true do
      localValue12 = localValue2
      if not localValue12 then
        break
      end
      localValue12 = localValue5
      if -1 ~= localValue12 then
        localValue12 = localValue5
        if 0 == localValue12 then
          localValue12 = iterator2.RunFunction
          localValue22 = "SET_MESSAGE"
          localValue32 = {}
          workingValue4 = "CNTDWN_GO"
          workingValue5 = 0
          dataCollection6 = 255
          tableHelper2 = 0
          workingValue6 = true
          stringHelper = false
          localValue32[1] = workingValue4
          localValue32[2] = workingValue5
          localValue32[3] = dataCollection6
          localValue32[4] = tableHelper2
          localValue32[5] = workingValue6
          localValue32[6] = stringHelper
          localValue12(localValue22, localValue32)
        else
          localValue12 = localValue5
          if localValue12 > 0 then
            localValue12 = localValue5
            localValue22 = localValue1
            localValue22 = localValue22 / 2
            if localValue12 >= localValue22 then
              localValue12 = math
              localValue12 = localValue12.floor
              localValue22 = localValue3
              localValue32 = localValue4
              localValue22 = localValue22 / localValue32
              localValue32 = 1
              localValue22 = localValue32 - localValue22
              localValue22 = 510 * localValue22
              localValue12 = localValue12(localValue22)
              stateFlag10 = localValue12
            else
              localValue12 = localValue5
              localValue22 = localValue1
              localValue22 = localValue22 / 2
              if localValue12 < localValue22 then
                localValue12 = math
                localValue12 = localValue12.floor
                localValue22 = localValue3
                localValue32 = localValue4
                localValue22 = localValue22 / localValue32
                localValue22 = 510 * localValue22
                localValue12 = localValue12(localValue22)
                localValue6 = localValue12
              end
            end
            localValue12 = iterator2.RunFunction
            localValue22 = "SET_MESSAGE"
            localValue32 = {}
            workingValue4 = tostring
            workingValue5 = localValue5
            workingValue4 = workingValue4(workingValue5)
            workingValue5 = localValue6
            dataCollection6 = stateFlag10
            tableHelper2 = 0
            workingValue6 = true
            stringHelper = false
            localValue32[1] = workingValue4
            localValue32[2] = workingValue5
            localValue32[3] = dataCollection6
            localValue32[4] = tableHelper2
            localValue32[5] = workingValue6
            localValue32[6] = stringHelper
            localValue12(localValue22, localValue32)
          end
        end
        localValue12 = iterator2.Render2D
        localValue12()
      end
      localValue12 = Wait
      localValue22 = 0
      localValue12(localValue22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  workingValue8(stateFlag14)
  while -1 ~= localValue5 do
    workingValue8 = Citizen
    workingValue8 = workingValue8.Wait
    stateFlag14 = 1.0
    workingValue8(stateFlag14)
  end
  localValue2 = false
end
rageUiOperation4.showCountdownTimer = text7
rageUiOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1) ===
function text7(localValue1)
  local localValue2, localValue3
  if localValue1 then
    localValue2 = table
    localValue2 = localValue2.count
    localValue3 = localValue1
    -- Beginner: result below is count.
    localValue2 = localValue2(localValue3)
    if 0 ~= localValue2 then
      localValue2 = currentEvent
      localValue2.bounds = localValue1
    end
  end
end
rageUiOperation4.setMinigameBounds = text7
rageUiOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2
  localValue1 = currentEvent
  localValue1.bounds = nil
end
rageUiOperation4.clearMinigameBounds = text7

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2, tableHelper, stateFlag2, stateFlag3, stateFlag5, stateFlag6
  localValue2 = currentEvent
  localValue2 = localValue2.bounds
  if localValue2 then
    localValue2 = ipairs
    localValue3 = currentEvent
    localValue3 = localValue3.bounds
    localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
    for localValue6, stateFlag10 in localValue2, localValue3, localValue4, localValue5 do
      iterator2 = table
      iterator2 = iterator2.count
      workingValue8 = stateFlag10
      -- Beginner: result below is count.
      iterator2 = iterator2(workingValue8)
      if 2 == iterator2 then
        iterator2 = IsEntityInArea
        workingValue8 = localValue1
        stateFlag14 = stateFlag10[1]
        stateFlag14 = stateFlag14.x
        iterator = stateFlag10[1]
        iterator = iterator.y
        text2 = stateFlag10[1]
        text2 = text2.z
        number2 = stateFlag10[2]
        number2 = number2.x
        tableHelper = stateFlag10[2]
        tableHelper = tableHelper.y
        stateFlag2 = stateFlag10[2]
        stateFlag2 = stateFlag2.z
        stateFlag3 = false
        stateFlag5 = true
        stateFlag6 = 0
        iterator2 = iterator2(workingValue8, stateFlag14, iterator, text2, number2, tableHelper, stateFlag2, stateFlag3, stateFlag5, stateFlag6)
        if not iterator2 then
          iterator2 = true
          return iterator2
        end
      end
    end
  end
  localValue2 = false
  return localValue2
end
text7 = Citizen
text7 = text7.CreateThread

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
function dataCollection3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2
  while true do
    localValue1 = currentEvent
    localValue1 = localValue1.bounds
    if localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.getEventLocalPlayer
      localValue1 = localValue1()
      if localValue1 then
        localValue1 = CMG
        localValue1 = localValue1.getEventLocalPlayer
        localValue1 = localValue1()
        localValue1 = localValue1.active
        if localValue1 then
          localValue1 = CMG
          localValue1 = localValue1.isSpectatingEvent
          localValue1 = localValue1()
          if not localValue1 then
            localValue1 = GetEntityHealth
            localValue2 = PlayerPedId
            localValue2, localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2 = localValue2()
            -- Beginner: result below is health.
            localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2)
            if localValue1 > 0 then
              localValue1 = rageUiOperation4
              localValue2 = PlayerPedId
              localValue2, localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2 = localValue2()
              localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2)
              if localValue1 then
                localValue1 = GetGameTimer
                -- Beginner: result below is gameTimeMs.
                localValue1 = localValue1()
                localValue2 = 5
                localValue3 = AnimpostfxPlay
                localValue4 = "MP_race_crash"
                localValue5 = 5000
                localValue6 = false
                localValue3(localValue4, localValue5, localValue6)
                localValue3 = GetSoundId
                -- Beginner: result below is soundHandle.
                localValue3 = localValue3()
                localValue4 = PlaySound
                localValue5 = localValue3
                localValue6 = "OOB_Timer_Dynamic"
                stateFlag10 = "GTAO_FM_Events_Soundset"
                iterator2 = false
                workingValue8 = false
                stateFlag14 = false
                localValue4(localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14)
                localValue4 = ReleaseSoundId
                localValue5 = localValue3
                localValue4(localValue5)
                while true do
                  localValue4 = rageUiOperation4
                  localValue5 = PlayerPedId
                  localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2 = localValue5()
                  localValue4 = localValue4(localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2)
                  if not localValue4 then
                    break
                  end
                  localValue4 = GetGameTimer
                  -- Beginner: result below is gameTimeMs.
                  localValue4 = localValue4()
                  localValue4 = localValue4 - localValue1
                  localValue5 = 5000
                  if not (localValue4 < localValue5) then
                    break
                  end
                  localValue4 = CMG
                  localValue4 = localValue4.announceMpBigMsg
                  localValue5 = "~r~Out Of Bounds~w~"
                  localValue6 = "Return to the minigame within "
                  stateFlag10 = localValue2
                  iterator2 = " seconds or you will explode."
                  localValue6 = localValue6 .. stateFlag10 .. iterator2
                  stateFlag10 = 1000
                  localValue4(localValue5, localValue6, stateFlag10)
                  localValue2 = localValue2 - 1
                end
                localValue4 = AnimpostfxStopAll
                localValue4()
                localValue4 = StopSound
                localValue5 = localValue3
                localValue4(localValue5)
                localValue4 = rageUiOperation4
                localValue5 = PlayerPedId
                localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2 = localValue5()
                localValue4 = localValue4(localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2)
                if localValue4 then
                  localValue4 = GetEntityCoords
                  localValue5 = PlayerPedId
                  -- Beginner: result below is localPlayerPed.
                  localValue5 = localValue5()
                  localValue6 = true
                  -- Beginner: result below is entityCoords.
                  localValue4 = localValue4(localValue5, localValue6)
                  localValue5 = AddExplosion
                  localValue6 = localValue4.x
                  stateFlag10 = localValue4.y
                  iterator2 = localValue4.z
                  workingValue8 = 1
                  stateFlag14 = 1.0
                  iterator = true
                  text2 = false
                  number2 = 1.0
                  localValue5(localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2)
                  localValue5 = SetEntityHealth
                  localValue6 = PlayerPedId
                  -- Beginner: result below is localPlayerPed.
                  localValue6 = localValue6()
                  stateFlag10 = 0
                  localValue5(localValue6, stateFlag10)
                  localValue5 = Wait
                  localValue6 = 10000
                  localValue5(localValue6)
                else
                  localValue4 = Wait
                  localValue5 = 200
                  localValue4(localValue5)
                  localValue4 = PlaySound
                  localValue5 = -1
                  localValue6 = "OOB_Cancel"
                  stateFlag10 = "GTAO_FM_Events_Soundset"
                  iterator2 = false
                  workingValue8 = 0
                  stateFlag14 = false
                  localValue4(localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14)
                end
              end
            end
          end
        end
      end
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 1000
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
text7(dataCollection3)

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1) ===
function text7(localValue1)
  local localValue2, localValue3
  localValue2 = CMG
  localValue2 = localValue2.loadPtfx
  localValue3 = "proj_indep_firework"
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.loadPtfx
  localValue3 = "proj_indep_firework_v2"
  localValue2(localValue3)
  localValue2 = UseParticleFxAsset
  localValue3 = "proj_indep_firework"
  localValue2(localValue3)
  localValue2 = UseParticleFxAsset
  localValue3 = "proj_indep_firework_v2"
  localValue2(localValue3)
  localValue2 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, localValue22, localValue32, workingValue4, workingValue5, dataCollection6, tableHelper2, workingValue6, stringHelper, dataCollection8, stateFlag, number, workingValue2, workingValue3, text5, stateFlag4
    localValue12 = 1
    localValue22 = 5
    localValue32 = 1
    for workingValue4 = localValue12, localValue22, localValue32 do
      workingValue5 = workingValue4 % 2
      if 0 == workingValue5 then
        workingValue5 = UseParticleFxAsset
        dataCollection6 = "proj_indep_firework_v2"
        workingValue5(dataCollection6)
        workingValue5 = StartParticleFxNonLoopedAtCoord
        dataCollection6 = "scr_firework_indep_repeat_burst_rwb"
        tableHelper2 = localValue1.x
        workingValue6 = localValue1.y
        stringHelper = localValue1.z
        dataCollection8 = 0.0
        stateFlag = 0.0
        number = 0.0
        workingValue2 = 1.0
        workingValue3 = false
        text5 = false
        stateFlag4 = false
        workingValue5(dataCollection6, tableHelper2, workingValue6, stringHelper, dataCollection8, stateFlag, number, workingValue2, workingValue3, text5, stateFlag4)
      else
        workingValue5 = UseParticleFxAsset
        dataCollection6 = "proj_indep_firework"
        workingValue5(dataCollection6)
        workingValue5 = StartParticleFxNonLoopedAtCoord
        dataCollection6 = "scr_indep_firework_air_burst"
        tableHelper2 = localValue1.x
        workingValue6 = localValue1.y
        stringHelper = localValue1.z
        dataCollection8 = 0.0
        stateFlag = 0.0
        number = 0.0
        workingValue2 = 1.0
        workingValue3 = false
        text5 = false
        stateFlag4 = false
        workingValue5(dataCollection6, tableHelper2, workingValue6, stringHelper, dataCollection8, stateFlag, number, workingValue2, workingValue3, text5, stateFlag4)
      end
      workingValue5 = Wait
      dataCollection6 = 1000
      workingValue5(dataCollection6)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.loadPtfx
  localValue3 = "scr_indep_fireworks"
  localValue2(localValue3)
  localValue2 = UseParticleFxAsset
  localValue3 = "scr_indep_fireworks"
  localValue2(localValue3)
  localValue2 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, localValue22, localValue32, workingValue4, workingValue5, dataCollection6, tableHelper2, workingValue6, stringHelper, dataCollection8, stateFlag, number, workingValue2, workingValue3, text5, stateFlag4
    localValue12 = 1
    localValue22 = 5
    localValue32 = 1
    for workingValue4 = localValue12, localValue22, localValue32 do
      workingValue5 = UseParticleFxAsset
      dataCollection6 = "scr_indep_fireworks"
      workingValue5(dataCollection6)
      workingValue5 = StartParticleFxNonLoopedAtCoord
      dataCollection6 = "scr_indep_firework_starburst"
      tableHelper2 = localValue1.x
      workingValue6 = localValue1.y
      stringHelper = localValue1.z
      dataCollection8 = 0.0
      stateFlag = 0.0
      number = 0.0
      workingValue2 = 1.0
      workingValue3 = false
      text5 = false
      stateFlag4 = false
      workingValue5(dataCollection6, tableHelper2, workingValue6, stringHelper, dataCollection8, stateFlag, number, workingValue2, workingValue3, text5, stateFlag4)
      workingValue5 = Wait
      dataCollection6 = 1000
      workingValue5(dataCollection6)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(localValue3)
end
dataCollection3 = {}
createVector4 = vector4
createVector42 = 683.82855224609
createVector43 = 570.56701660156
createVector44 = 130.44616699219
number3 = 155.0
createVector4 = createVector4(createVector42, createVector43, createVector44, number3)
createVector42 = vector4
createVector43 = 682.49670410156
createVector44 = 571.10766601562
number3 = 130.44616699219
number4 = 155.0
createVector42 = createVector42(createVector43, createVector44, number3, number4)
createVector43 = vector4
createVector44 = 685.51647949219
number3 = 570.01318359375
number4 = 130.44616699219
number5 = 155.0
createVector43 = createVector43(createVector44, number3, number4, number5)
createVector44 = vector4
number3 = 687.23077392578
number4 = 569.41979980469
number5 = 130.44616699219
number6 = 155.0
createVector44 = createVector44(number3, number4, number5, number6)
number3 = vector4
number4 = 681.44177246094
number5 = 571.45056152344
number6 = 130.44616699219
number7 = 155.0
number3 = number3(number4, number5, number6, number7)
number4 = vector4
number5 = 680.21539306641
number6 = 573.54724121094
number7 = 130.44616699219
number8 = 155.0
number4 = number4(number5, number6, number7, number8)
number5 = vector4
number6 = 681.73187255859
number7 = 573.17803955078
number8 = 130.44616699219
number9 = 155.0
number5 = number5(number6, number7, number8, number9)
number6 = vector4
number7 = 683.34063720703
number8 = 572.57141113281
number9 = 130.44616699219
number10 = 155.0
number6 = number6(number7, number8, number9, number10)
number7 = vector4
number8 = 685.09448242188
number9 = 571.8857421875
number10 = 130.44616699219
number11 = 155.0
number7 = number7(number8, number9, number10, number11)
number8 = vector4
number9 = 687.23077392578
number10 = 571.39782714844
number11 = 130.44616699219
number12 = 155.0
number8 = number8(number9, number10, number11, number12)
number9 = vector4
number10 = 689.23516845703
number11 = 570.89672851562
number12 = 130.44616699219
number13 = 155.0
number9 = number9(number10, number11, number12, number13)
number10 = vector4
number11 = 690.96264648438
number12 = 571.43737792969
number13 = 130.44616699219
number14 = 155.0
number10 = number10(number11, number12, number13, number14)
number11 = vector4
number12 = 689.63079833984
number13 = 572.94067382812
number14 = 130.44616699219
number15 = 155.0
number11 = number11(number12, number13, number14, number15)
number12 = vector4
number13 = 687.74505615234
number14 = 573.69232177734
number15 = 130.44616699219
number16 = 155.0
number12 = number12(number13, number14, number15, number16)
number13 = vector4
number14 = 686.10986328125
number15 = 574.33843994141
number16 = 130.44616699219
number17 = 155.0
number13 = number13(number14, number15, number16, number17)
number14 = vector4
number15 = 682.44396972656
number16 = 575.78900146484
number17 = 130.44616699219
number18 = 155.0
number14 = number14(number15, number16, number17, number18)
number15 = vector4
number16 = 680.14947509766
number17 = 572.00439453125
number18 = 130.44616699219
number19 = 155.0
number15 = number15(number16, number17, number18, number19)
number16 = vector4
number17 = 678.93627929688
number18 = 572.57141113281
number19 = 130.44616699219
number20 = 155.0
number16 = number16(number17, number18, number19, number20)
number17 = vector4
number18 = 679.23956298828
number19 = 573.876953125
number20 = 130.44616699219
number21 = 155.0
number17 = number17(number18, number19, number20, number21)
number18 = vector4
number19 = 686.22857666016
number20 = 571.75384521484
number21 = 130.44616699219
number22 = 155.0
number18 = number18(number19, number20, number21, number22)
number19 = vector4
number20 = 688.29888916016
number21 = 571.06811523438
number22 = 130.44616699219
number23 = 155.0
number19 = number19(number20, number21, number22, number23)
number20 = vector4
number21 = 688.57580566406
number22 = 568.95825195312
number23 = 130.44616699219
number24 = 155.0
number20 = number20(number21, number22, number23, number24)
number21 = vector4
number22 = 690.54064941406
number23 = 570.19781494141
number24 = 130.44616699219
number25 = 155.0
number21 = number21(number22, number23, number24, number25)
number22 = vector4
number23 = 689.61755371094
number24 = 571.80657958984
number25 = 130.44616699219
number26 = 155.0
number22 = number22(number23, number24, number25, number26)
number23 = vector4
number24 = 688.41760253906
number25 = 572.34722900391
number26 = 130.44616699219
number27 = 155.0
number23 = number23(number24, number25, number26, number27)
number24 = vector4
number25 = 687.38903808594
number26 = 572.71649169922
number27 = 130.44616699219
number28 = 155.0
number24 = number24(number25, number26, number27, number28)
number25 = vector4
number26 = 686.20220947266
number27 = 573.05932617188
number28 = 130.44616699219
number29 = 155.0
number25 = number25(number26, number27, number28, number29)
number26 = vector4
number27 = 684.96264648438
number28 = 573.37585449219
number29 = 130.44616699219
number30 = 155.0
number26 = number26(number27, number28, number29, number30)
number27 = vector4
number28 = 683.96044921875
number29 = 573.86376953125
number30 = 130.44616699219
number31 = 155.0
number27 = number27(number28, number29, number30, number31)
number28 = vector4
number29 = 682.86596679688
number30 = 574.23297119141
number31 = 130.44616699219
number32 = 155.0
number28 = number28(number29, number30, number31, number32)
number29 = vector4
number30 = 681.876953125
number31 = 574.66815185547
number32 = 130.44616699219
number33 = 155.0
number29 = number29(number30, number31, number32, number33)
number30 = vector4
number31 = 680.82196044922
number32 = 574.98461914062
number33 = 130.44616699219
number34 = 155.0
number30 = number30(number31, number32, number33, number34)
number31 = vector4
number32 = 689.48571777344
number33 = 569.67034912109
number34 = 130.44616699219
number35 = 155.0
number31 = number31(number32, number33, number34, number35)
number32 = vector4
number33 = 688.43078613281
number34 = 570.13189697266
number35 = 130.44616699219
number36 = 155.0
number32 = number32(number33, number34, number35, number36)
number33 = vector4
number34 = 687.01977539062
number35 = 570.65936279297
number36 = 130.44616699219
number37 = 155.0
number33 = number33(number34, number35, number36, number37)
number34 = vector4
number35 = 685.75384521484
number36 = 571.00219726562
number37 = 130.44616699219
number38 = 155.0
number34 = number34(number35, number36, number37, number38)
number35 = vector4
number36 = 684.03955078125
number37 = 571.62200927734
number38 = 130.44616699219
number39 = 155.0
number35 = number35(number36, number37, number38, number39)
number36 = vector4
number37 = 682.73406982422
number38 = 571.9384765625
number39 = 130.44616699219
number40 = 155.0
number36 = number36(number37, number38, number39, number40)
number37 = vector4
number38 = 681.65277099609
number39 = 572.47912597656
number40 = 130.44616699219
number41 = 155.0
number37 = number37(number38, number39, number40, number41)
number38 = vector4
number39 = 680.54504394531
number40 = 572.72967529297
number41 = 130.44616699219
number42 = 155.0
number38 = number38(number39, number40, number41, number42)
number39 = vector4
number40 = 679.47692871094
number41 = 573.00659179688
number42 = 130.44616699219
number43 = 155.0
number39 = number39(number40, number41, number42, number43)
number40 = vector4
number41 = 679.63519287109
number42 = 575.47253417969
number43 = 130.44616699219
number44 = 155.0
number40 = number40(number41, number42, number43, number44)
number41 = vector4
number42 = 689.88134765625
number43 = 568.74725341797
number44 = 130.44616699219
number45 = 155.0
number41 = number41(number42, number43, number44, number45)
number42 = vector4
number43 = 690.87036132812
number44 = 572.50549316406
number45 = 130.44616699219
number46 = 155.0
number42 = number42(number43, number44, number45, number46)
number43 = vector4
number44 = 688.70770263672
number45 = 573.27032470703
number46 = 130.44616699219
number47 = 155.0
number43 = number43(number44, number45, number46, number47)
number44 = vector4
number45 = 684.97583007812
number46 = 574.60217285156
number47 = 130.44616699219
number49 = 155.0
number44 = number44(number45, number46, number47, number49)
number45 = vector4
number46 = 683.73626708984
number47 = 575.05053710938
number49 = 130.44616699219
number50 = 155.0
number45 = number45(number46, number47, number49, number50)
number46 = vector4
number47 = 681.27032470703
number49 = 576.06591796875
number50 = 130.44616699219
number51 = 155.0
number46 = number46(number47, number49, number50, number51)
number47 = vector4
number49 = 680.25494384766
number50 = 576.36926269531
number51 = 130.44616699219
number52 = 155.0
number47 = number47(number49, number50, number51, number52)
number49 = vector4
number50 = 691.54284667969
number51 = 573.53405761719
number52 = 130.44616699219
number53 = 155.0
number49 = number49(number50, number51, number52, number53)
dataCollection3[1] = createVector4
dataCollection3[2] = createVector42
dataCollection3[3] = createVector43
dataCollection3[4] = createVector44
dataCollection3[5] = number3
dataCollection3[6] = number4
dataCollection3[7] = number5
dataCollection3[8] = number6
dataCollection3[9] = number7
dataCollection3[10] = number8
dataCollection3[11] = number9
dataCollection3[12] = number10
dataCollection3[13] = number11
dataCollection3[14] = number12
dataCollection3[15] = number13
dataCollection3[16] = number14
dataCollection3[17] = number15
dataCollection3[18] = number16
dataCollection3[19] = number17
dataCollection3[20] = number18
dataCollection3[21] = number19
dataCollection3[22] = number20
dataCollection3[23] = number21
dataCollection3[24] = number22
dataCollection3[25] = number23
dataCollection3[26] = number24
dataCollection3[27] = number25
dataCollection3[28] = number26
dataCollection3[29] = number27
dataCollection3[30] = number28
dataCollection3[31] = number29
dataCollection3[32] = number30
dataCollection3[33] = number31
dataCollection3[34] = number32
dataCollection3[35] = number33
dataCollection3[36] = number34
dataCollection3[37] = number35
dataCollection3[38] = number36
dataCollection3[39] = number37
dataCollection3[40] = number38
dataCollection3[41] = number39
dataCollection3[42] = number40
dataCollection3[43] = number41
dataCollection3[44] = number42
dataCollection3[45] = number43
dataCollection3[46] = number44
dataCollection3[47] = number45
dataCollection3[48] = number46
dataCollection3[49] = number47
dataCollection3[50] = number49
createVector4 = vector4
createVector42 = 690.40881347656
createVector43 = 573.9560546875
createVector44 = 130.44616699219
number3 = 155.0
createVector4 = createVector4(createVector42, createVector43, createVector44, number3)
createVector42 = vector4
createVector43 = 689.52526855469
createVector44 = 574.29888916016
number3 = 130.44616699219
number4 = 155.0
createVector42 = createVector42(createVector43, createVector44, number3, number4)
createVector43 = vector4
createVector44 = 688.58898925781
number3 = 574.62860107422
number4 = 130.44616699219
number5 = 155.0
createVector43 = createVector43(createVector44, number3, number4, number5)
createVector44 = vector4
number3 = 687.46813964844
number4 = 575.07690429688
number5 = 130.44616699219
number6 = 155.0
createVector44 = createVector44(number3, number4, number5, number6)
number3 = vector4
number4 = 686.42639160156
number5 = 575.53845214844
number6 = 130.44616699219
number7 = 155.0
number3 = number3(number4, number5, number6, number7)
number4 = vector4
number5 = 685.31866455078
number6 = 575.80218505859
number7 = 130.44616699219
number8 = 155.0
number4 = number4(number5, number6, number7, number8)
number5 = vector4
number6 = 684.30328369141
number7 = 576.21099853516
number8 = 130.44616699219
number9 = 155.0
number5 = number5(number6, number7, number8, number9)
number6 = vector4
number7 = 683.31427001953
number8 = 576.67254638672
number9 = 130.44616699219
number10 = 155.0
number6 = number6(number7, number8, number9, number10)
number7 = vector4
number8 = 682.28570556641
number9 = 577.12091064453
number10 = 130.44616699219
number11 = 155.0
number7 = number7(number8, number9, number10, number11)
number8 = vector4
number9 = 681.34942626953
number10 = 577.45056152344
number11 = 130.44616699219
number12 = 155.0
number8 = number8(number9, number10, number11, number12)
number9 = vector4
number10 = 680.28131103516
number11 = 577.79339599609
number12 = 130.44616699219
number13 = 155.0
number9 = number9(number10, number11, number12, number13)
number10 = vector4
number11 = 686.38684082031
number12 = 569.78900146484
number13 = 130.44616699219
number14 = 155.0
number10 = number10(number11, number12, number13, number14)
number11 = vector4
number12 = 684.72528076172
number13 = 570.42199707031
number14 = 130.44616699219
number15 = 155.0
number11 = number11(number12, number13, number14, number15)
number12 = vector4
number13 = 686.99340820312
number14 = 574.0615234375
number15 = 130.44616699219
number16 = 155.0
number12, number13, number14, number15, number16, number17, number18, number19, number20, number21, number22, number23, number24, number25, number26, number27, number28, number29, number30, number31, number32, number33, number34, number35, number36, number37, number38, number39, number40, number41, number42, number43, number44, number45, number46, number47, number49, number50, number51, number52, number53, number54 = number12(number13, number14, number15, number16)
dataCollection3[51] = createVector4
dataCollection3[52] = createVector42
dataCollection3[53] = createVector43
dataCollection3[54] = createVector44
dataCollection3[55] = number3
dataCollection3[56] = number4
dataCollection3[57] = number5
dataCollection3[58] = number6
dataCollection3[59] = number7
dataCollection3[60] = number8
dataCollection3[61] = number9
dataCollection3[62] = number10
dataCollection3[63] = number11
dataCollection3[64] = number12
dataCollection3[65] = number13
dataCollection3[66] = number14
dataCollection3[67] = number15
dataCollection3[68] = number16
dataCollection3[69] = number17
dataCollection3[70] = number18
dataCollection3[71] = number19
dataCollection3[72] = number20
dataCollection3[73] = number21
dataCollection3[74] = number22
dataCollection3[75] = number23
dataCollection3[76] = number24
dataCollection3[77] = number25
dataCollection3[78] = number26
dataCollection3[79] = number27
dataCollection3[80] = number28
dataCollection3[81] = number29
dataCollection3[82] = number30
dataCollection3[83] = number31
dataCollection3[84] = number32
dataCollection3[85] = number33
dataCollection3[86] = number34
dataCollection3[87] = number35
dataCollection3[88] = number36
dataCollection3[89] = number37
dataCollection3[90] = number38
dataCollection3[91] = number39
dataCollection3[92] = number40
dataCollection3[93] = number41
dataCollection3[94] = number42
dataCollection3[95] = number43
dataCollection3[96] = number44
dataCollection3[97] = number45
dataCollection3[98] = number46
dataCollection3[99] = number47
dataCollection3[100] = number49
dataCollection3[101] = number50
dataCollection3[102] = number51
dataCollection3[103] = number52
dataCollection3[104] = number53
dataCollection3[105] = number54
createVector4 = {}
createVector42 = vector4
createVector43 = 696.13189697266
createVector44 = 579.70550537109
number3 = 130.44616699219
number4 = 155.0
createVector42 = createVector42(createVector43, createVector44, number3, number4)
createVector43 = vector4
createVector44 = 694.94506835938
number3 = 580.02197265625
number4 = 130.44616699219
number5 = 155.0
createVector43 = createVector43(createVector44, number3, number4, number5)
createVector44 = vector4
number3 = 693.85052490234
number4 = 580.41760253906
number5 = 130.44616699219
number6 = 155.0
createVector44 = createVector44(number3, number4, number5, number6)
number3 = vector4
number4 = 693.42858886719
number5 = 579.25714111328
number6 = 130.44616699219
number7 = 155.0
number3 = number3(number4, number5, number6, number7)
number4 = vector4
number5 = 694.62860107422
number6 = 578.78240966797
number7 = 130.44616699219
number8 = 155.0
number4 = number4(number5, number6, number7, number8)
number5 = vector4
number6 = 695.98681640625
number7 = 578.22857666016
number8 = 130.44616699219
number9 = 155.0
number5 = number5(number6, number7, number8, number9)
number6 = vector4
number7 = 696.27691650391
number8 = 577.21319580078
number9 = 130.44616699219
number10 = 155.0
number6 = number6(number7, number8, number9, number10)
number7 = vector4
number8 = 694.90551757812
number9 = 577.74066162109
number10 = 130.44616699219
number11 = 155.0
number7 = number7(number8, number9, number10, number11)
number8 = vector4
number9 = 696.47473144531
number10 = 577.12091064453
number11 = 130.44616699219
number12 = 155.0
number8 = number8(number9, number10, number11, number12)
number9 = vector4
number10 = 692.51867675781
number11 = 578.22857666016
number12 = 130.44616699219
number13 = 155.0
number9 = number9(number10, number11, number12, number13)
number10 = vector4
number11 = 691.38464355469
number12 = 578.59777832031
number13 = 130.44616699219
number14 = 155.0
number10 = number10(number11, number12, number13, number14)
number11 = vector4
number12 = 692.38684082031
number13 = 579.86376953125
number14 = 130.44616699219
number15 = 155.0
number11 = number11(number12, number13, number14, number15)
number12 = vector4
number13 = 690.98901367188
number14 = 581.01098632812
number15 = 130.44616699219
number16 = 155.0
number12 = number12(number13, number14, number15, number16)
number13 = vector4
number14 = 690.44836425781
number15 = 579.32305908203
number16 = 130.44616699219
number17 = 155.0
number13 = number13(number14, number15, number16, number17)
number14 = vector4
number15 = 697.92529296875
number16 = 581.60437011719
number17 = 130.44616699219
number18 = 155.0
number14 = number14(number15, number16, number17, number18)
number15 = vector4
number16 = 699.16485595703
number17 = 581.02416992188
number18 = 130.44616699219
number19 = 155.0
number15 = number15(number16, number17, number18, number19)
number16 = vector4
number17 = 692.42639160156
number18 = 581.03735351562
number19 = 130.44616699219
number20 = 155.0
number16 = number16(number17, number18, number19, number20)
number17 = vector4
number18 = 690.17144775391
number19 = 581.73626708984
number20 = 130.44616699219
number21 = 155.0
number17 = number17(number18, number19, number20, number21)
number18 = vector4
number19 = 697.17364501953
number20 = 579.21759033203
number21 = 130.44616699219
number22 = 155.0
number18 = number18(number19, number20, number21, number22)
number19 = vector4
number20 = 697.39782714844
number21 = 577.78021240234
number22 = 130.44616699219
number23 = 155.0
number19 = number19(number20, number21, number22, number23)
number20 = vector4
number21 = 697.75384521484
number22 = 576.64617919922
number23 = 130.44616699219
number24 = 155.0
number20 = number20(number21, number22, number23, number24)
number21 = vector4
number22 = 699.24395751953
number23 = 576.0263671875
number24 = 130.44616699219
number25 = 155.0
number21 = number21(number22, number23, number24, number25)
number22 = vector4
number23 = 697.84613037109
number24 = 578.88793945312
number25 = 130.44616699219
number26 = 1155.0
number22 = number22(number23, number24, number25, number26)
number23 = vector4
number24 = 698.92749023438
number25 = 578.58459472656
number26 = 130.44616699219
number27 = 155.0
number23 = number23(number24, number25, number26, number27)
number24 = vector4
number25 = 697.79339599609
number26 = 577.71429443359
number27 = 130.44616699219
number28 = 155.0
number24 = number24(number25, number26, number27, number28)
number25 = vector4
number26 = 699.16485595703
number27 = 577.16046142578
number28 = 130.44616699219
number29 = 155.0
number25 = number25(number26, number27, number28, number29)
number26 = vector4
number27 = 693.66595458984
number28 = 577.89892578125
number29 = 130.44616699219
number30 = 155.0
number26 = number26(number27, number28, number29, number30)
number27 = vector4
number28 = 691.00219726562
number29 = 580.23297119141
number30 = 130.44616699219
number31 = 155.0
number27 = number27(number28, number29, number30, number31)
number28 = vector4
number29 = 689.85498046875
number30 = 580.76043701172
number31 = 130.44616699219
number32 = 155.0
number28 = number28(number29, number30, number31, number32)
number29 = vector4
number30 = 689.47253417969
number31 = 579.66595458984
number32 = 130.44616699219
number33 = 155.0
number29 = number29(number30, number31, number32, number33)
number30 = vector4
number31 = 700.0087890625
number32 = 579.38903808594
number33 = 130.44616699219
number34 = 155.0
number30 = number30(number31, number32, number33, number34)
number31 = vector4
number32 = 698.78240966797
number33 = 579.78460693359
number34 = 130.44616699219
number35 = 155.0
number31 = number31(number32, number33, number34, number35)
number32 = vector4
number33 = 697.912109375
number34 = 580.1142578125
number35 = 130.44616699219
number36 = 155.0
number32 = number32(number33, number34, number35, number36)
number33 = vector4
number34 = 696.97583007812
number35 = 580.50988769531
number36 = 130.44616699219
number37 = 155.0
number33 = number33(number34, number35, number36, number37)
number34 = vector4
number35 = 695.90771484375
number36 = 580.81317138672
number37 = 130.44616699219
number38 = 155.0
number34 = number34(number35, number36, number37, number38)
number35 = vector4
number36 = 694.72088623047
number37 = 581.19561767578
number38 = 130.44616699219
number39 = 155.0
number35 = number35(number36, number37, number38, number39)
number36 = vector4
number37 = 693.59997558594
number38 = 581.61755371094
number39 = 130.44616699219
number40 = 155.0
number36 = number36(number37, number38, number39, number40)
number37 = vector4
number38 = 692.22857666016
number39 = 582.22418212891
number40 = 130.44616699219
number41 = 155.0
number37 = number37(number38, number39, number40, number41)
number38 = vector4
number39 = 690.92309570312
number40 = 582.68572998047
number41 = 130.44616699219
number42 = 155.0
number38 = number38(number39, number40, number41, number42)
number39 = vector4
number40 = 696.83074951172
number41 = 582.0
number42 = 130.44616699219
number43 = 155.0
number39 = number39(number40, number41, number42, number43)
number40 = vector4
number41 = 695.76263427734
number42 = 582.38244628906
number43 = 130.44616699219
number44 = 155.0
number40 = number40(number41, number42, number43, number44)
number41 = vector4
number42 = 694.70770263672
number43 = 582.54064941406
number44 = 130.44616699219
number45 = 155.0
number41 = number41(number42, number43, number44, number45)
number42 = vector4
number43 = 693.30987548828
number44 = 583.01538085938
number45 = 130.44616699219
number46 = 155.0
number42 = number42(number43, number44, number45, number46)
number43 = vector4
number44 = 692.18902587891
number45 = 583.58239746094
number46 = 130.44616699219
number47 = 155.0
number43 = number43(number44, number45, number46, number47)
number44 = vector4
number45 = 690.96264648438
number46 = 583.9912109375
number47 = 130.44616699219
number49 = 155.0
number44 = number44(number45, number46, number47, number49)
number45 = vector4
number46 = 691.41101074219
number47 = 581.78900146484
number49 = 130.44616699219
number50 = 155.0
number45 = number45(number46, number47, number49, number50)
number46 = vector4
number47 = 699.876953125
number49 = 581.67034912109
number50 = 130.44616699219
number51 = 155.0
number46 = number46(number47, number49, number50, number51)
number47 = vector4
number49 = 698.91430664062
number50 = 582.11865234375
number51 = 130.44616699219
number52 = 155.0
number47 = number47(number49, number50, number51, number52)
number49 = vector4
number50 = 697.62200927734
number51 = 582.65936279297
number52 = 130.44616699219
number53 = 155.0
number49 = number49(number50, number51, number52, number53)
number50 = vector4
number51 = 696.52746582031
number52 = 583.06811523438
number53 = 130.44616699219
number54 = 155.0
number50 = number50(number51, number52, number53, number54)
createVector4[1] = createVector42
createVector4[2] = createVector43
createVector4[3] = createVector44
createVector4[4] = number3
createVector4[5] = number4
createVector4[6] = number5
createVector4[7] = number6
createVector4[8] = number7
createVector4[9] = number8
createVector4[10] = number9
createVector4[11] = number10
createVector4[12] = number11
createVector4[13] = number12
createVector4[14] = number13
createVector4[15] = number14
createVector4[16] = number15
createVector4[17] = number16
createVector4[18] = number17
createVector4[19] = number18
createVector4[20] = number19
createVector4[21] = number20
createVector4[22] = number21
createVector4[23] = number22
createVector4[24] = number23
createVector4[25] = number24
createVector4[26] = number25
createVector4[27] = number26
createVector4[28] = number27
createVector4[29] = number28
createVector4[30] = number29
createVector4[31] = number30
createVector4[32] = number31
createVector4[33] = number32
createVector4[34] = number33
createVector4[35] = number34
createVector4[36] = number35
createVector4[37] = number36
createVector4[38] = number37
createVector4[39] = number38
createVector4[40] = number39
createVector4[41] = number40
createVector4[42] = number41
createVector4[43] = number42
createVector4[44] = number43
createVector4[45] = number44
createVector4[46] = number45
createVector4[47] = number46
createVector4[48] = number47
createVector4[49] = number49
createVector4[50] = number50
createVector42 = vector4
createVector43 = 695.51208496094
createVector44 = 583.34503173828
number3 = 130.44616699219
number4 = 155.0
createVector42 = createVector42(createVector43, createVector44, number3, number4)
createVector43 = vector4
createVector44 = 694.28570556641
number3 = 583.68792724609
number4 = 130.44616699219
number5 = 155.0
createVector43 = createVector43(createVector44, number3, number4, number5)
createVector44 = vector4
number3 = 693.11206054688
number4 = 584.0966796875
number5 = 130.44616699219
number6 = 155.0
createVector44 = createVector44(number3, number4, number5, number6)
number3 = vector4
number4 = 691.9384765625
number5 = 584.59777832031
number6 = 130.44616699219
number7 = 155.0
number3 = number3(number4, number5, number6, number7)
number4 = vector4
number5 = 699.83734130859
number6 = 582.71209716797
number7 = 130.44616699219
number8 = 155.0
number4 = number4(number5, number6, number7, number8)
number5 = vector4
number6 = 698.58459472656
number7 = 583.22637939453
number8 = 130.44616699219
number9 = 155.0
number5 = number5(number6, number7, number8, number9)
number6 = vector4
number7 = 697.26593017578
number8 = 583.71429443359
number9 = 130.44616699219
number10 = 155.0
number6 = number6(number7, number8, number9, number10)
number7 = vector4
number8 = 696.22418212891
number9 = 584.03076171875
number10 = 130.49670410156
number11 = 155.0
number7 = number7(number8, number9, number10, number11)
number8 = vector4
number9 = 695.07690429688
number10 = 584.41320800781
number11 = 130.46301269531
number12 = 155.0
number8 = number8(number9, number10, number11, number12)
number9 = vector4
number10 = 693.85052490234
number11 = 584.66375732422
number12 = 130.44616699219
number13 = 155.0
number9 = number9(number10, number11, number12, number13)
number10 = vector4
number11 = 692.78240966797
number12 = 585.11206054688
number13 = 130.44616699219
number14 = 155.0
number10 = number10(number11, number12, number13, number14)
number11 = vector4
number12 = 691.51647949219
number13 = 585.61315917969
number14 = 130.44616699219
number15 = 155.0
number11 = number11(number12, number13, number14, number15)
number12 = vector4
number13 = 699.99560546875
number14 = 578.16265869141
number15 = 130.44616699219
number16 = 155.0
number12 = number12(number13, number14, number15, number16)
number13 = vector4
number14 = 700.15386962891
number15 = 576.75164794922
number16 = 130.44616699219
number17 = 155.0
number13, number14, number15, number16, number17, number18, number19, number20, number21, number22, number23, number24, number25, number26, number27, number28, number29, number30, number31, number32, number33, number34, number35, number36, number37, number38, number39, number40, number41, number42, number43, number44, number45, number46, number47, number49, number50, number51, number52, number53, number54 = number13(number14, number15, number16, number17)
createVector4[51] = createVector42
createVector4[52] = createVector43
createVector4[53] = createVector44
createVector4[54] = number3
createVector4[55] = number4
createVector4[56] = number5
createVector4[57] = number6
createVector4[58] = number7
createVector4[59] = number8
createVector4[60] = number9
createVector4[61] = number10
createVector4[62] = number11
createVector4[63] = number12
createVector4[64] = number13
createVector4[65] = number14
createVector4[66] = number15
createVector4[67] = number16
createVector4[68] = number17
createVector4[69] = number18
createVector4[70] = number19
createVector4[71] = number20
createVector4[72] = number21
createVector4[73] = number22
createVector4[74] = number23
createVector4[75] = number24
createVector4[76] = number25
createVector4[77] = number26
createVector4[78] = number27
createVector4[79] = number28
createVector4[80] = number29
createVector4[81] = number30
createVector4[82] = number31
createVector4[83] = number32
createVector4[84] = number33
createVector4[85] = number34
createVector4[86] = number35
createVector4[87] = number36
createVector4[88] = number37
createVector4[89] = number38
createVector4[90] = number39
createVector4[91] = number40
createVector4[92] = number41
createVector4[93] = number42
createVector4[94] = number43
createVector4[95] = number44
createVector4[96] = number45
createVector4[97] = number46
createVector4[98] = number47
createVector4[99] = number49
createVector4[100] = number50
createVector4[101] = number51
createVector4[102] = number52
createVector4[103] = number53
createVector4[104] = number54
createVector42 = false
createVector43 = _ENV
createVector44 = "CMG"
createVector43 = createVector43[createVector44]
createVector44 = "isPodiumDrawing"

-- === HELPER FUNCTION (decompiler name: number3; parameters: none) ===
function number3()
  local localValue1, localValue2
  localValue1 = createVector42
  return localValue1
end
createVector43[createVector44] = number3
createVector43 = false
createVector44 = _ENV
number3 = "CMG"
createVector44 = createVector44[number3]
number3 = "callCancelPodium"

-- === HELPER FUNCTION (decompiler name: number4; parameters: none) ===
function number4()
  local localValue1, localValue2
  localValue1 = true
  createVector43 = localValue1
end
createVector44[number3] = number4
createVector44 = _ENV
number3 = "CMG"
createVector44 = createVector44[number3]
number3 = "podiumLeaderboard"

-- === HELPER FUNCTION (decompiler name: number4; parameters: localValue1, localValue2) ===
function number4(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2, tableHelper, stateFlag2, stateFlag3, stateFlag5, stateFlag6, stateFlag7, stateFlag8
  localValue3 = SetEntityCoords
  localValue4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue4 = localValue4()
  localValue5 = 686.37365722656
  localValue6 = 576.83074951172
  stateFlag10 = 120.44616699219
  iterator2 = false
  workingValue8 = false
  stateFlag14 = false
  iterator = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue3(localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator)
  localValue3 = true
  createVector42 = localValue3
  localValue3 = CMG
  localValue3 = localValue3.setTime
  localValue4 = 0
  localValue5 = 0
  localValue6 = 0
  localValue3(localValue4, localValue5, localValue6)
  localValue3 = RequestIpl
  localValue4 = "stadium"
  localValue3(localValue4)
  while true do
    localValue3 = IsIplActive
    localValue4 = "stadium"
    localValue3 = localValue3(localValue4)
    if localValue3 then
      break
    end
    localValue3 = print
    localValue4 = "Loading stadium IPL"
    localValue3(localValue4)
    localValue3 = Wait
    localValue4 = 0
    localValue3(localValue4)
  end
  localValue3 = CMG
  localValue3 = localValue3.hideAllDisplays
  localValue4 = "podiumleaderboard"
  localValue3(localValue4)
  localValue3 = CMG
  localValue3 = localValue3.isDevMode
  localValue3 = localValue3()
  if not localValue3 then
    localValue3 = SendNUIMessage
    localValue4 = {}
    localValue4.transactionType = "celebration_music"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    localValue3(localValue4)
  end
  localValue3 = {}
  localValue4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue4 = localValue4()
  localValue5 = FreezeEntityPosition
  localValue6 = localValue4
  stateFlag10 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue5(localValue6, stateFlag10)
  localValue5 = ClearPedBloodDamage
  localValue6 = localValue4
  localValue5(localValue6)
  localValue5 = pairs
  localValue6 = localValue1
  localValue5, localValue6, stateFlag10, iterator2 = localValue5(localValue6)
  for workingValue8, stateFlag14 in localValue5, localValue6, stateFlag10, iterator2 do
    iterator = stateFlag14.source
    text2 = GetPlayerServerId
    number2 = PlayerId
    number2, tableHelper, stateFlag2, stateFlag3, stateFlag5, stateFlag6, stateFlag7, stateFlag8 = number2()
    -- Beginner: result below is serverId.
    text2 = text2(number2, tableHelper, stateFlag2, stateFlag3, stateFlag5, stateFlag6, stateFlag7, stateFlag8)
    if iterator == text2 then
      iterator = dataCollection3
      iterator = iterator[workingValue8]
      if not iterator then
        text2 = vector4
        number2 = 686.37365722656
        tableHelper = 576.83074951172
        stateFlag2 = 130.44616699219
        stateFlag3 = 158.74015808105
        text2 = text2(number2, tableHelper, stateFlag2, stateFlag3)
        iterator = text2
      end
      text2 = SetEntityCoords
      number2 = localValue4
      tableHelper = iterator.x
      stateFlag2 = iterator.y
      stateFlag3 = iterator.z
      stateFlag3 = stateFlag3 - 1
      stateFlag5 = false
      stateFlag6 = false
      stateFlag7 = false
      stateFlag8 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      text2(number2, tableHelper, stateFlag2, stateFlag3, stateFlag5, stateFlag6, stateFlag7, stateFlag8)
      text2 = SetEntityHeading
      number2 = localValue4
      tableHelper = iterator.w
      -- Beginner: Change the direction an entity is facing.
      text2(number2, tableHelper)
      text2 = CreateThread
      -- Beginner: this function is the body of a background FiveM thread.

      -- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
      function number2()
        local localValue12, localValue22, localValue32, workingValue4, workingValue5, dataCollection6, tableHelper2, workingValue6, stringHelper, dataCollection8, stateFlag, number, workingValue2, workingValue3
        localValue12 = "anim@arena@celeb@flat@solo@no_props@"
        localValue22 = "flip_a_player_a"
        localValue32 = CMG
        localValue32 = localValue32.loadAnimDict
        workingValue4 = localValue12
        -- Beginner: Load a GTA animation dictionary before using it.
        localValue32(workingValue4)
        while true do
          localValue32 = createVector42
          if not localValue32 then
            break
          end
          localValue32 = SetFocusPosAndVel
          workingValue4 = 682.94506835938
          workingValue5 = 572.95385742188
          dataCollection6 = 131.08642578125
          tableHelper2 = 0.0
          workingValue6 = 0.0
          stringHelper = 0.0
          localValue32(workingValue4, workingValue5, dataCollection6, tableHelper2, workingValue6, stringHelper)
          localValue32 = FreezeEntityPosition
          workingValue4 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          workingValue4 = workingValue4()
          workingValue5 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          localValue32(workingValue4, workingValue5)
          localValue32 = IsEntityPlayingAnim
          workingValue4 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          workingValue4 = workingValue4()
          workingValue5 = localValue12
          dataCollection6 = localValue22
          tableHelper2 = 3
          localValue32 = localValue32(workingValue4, workingValue5, dataCollection6, tableHelper2)
          if not localValue32 then
            localValue32 = TaskPlayAnim
            workingValue4 = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            workingValue4 = workingValue4()
            workingValue5 = localValue12
            dataCollection6 = localValue22
            tableHelper2 = 8.0
            workingValue6 = 8.0
            stringHelper = -1
            dataCollection8 = 1
            stateFlag = 1.0
            number = false
            workingValue2 = false
            workingValue3 = false
            -- Beginner: Play an animation on a ped.
            localValue32(workingValue4, workingValue5, dataCollection6, tableHelper2, workingValue6, stringHelper, dataCollection8, stateFlag, number, workingValue2, workingValue3)
          end
          localValue32 = Wait
          workingValue4 = 0
          localValue32(workingValue4)
        end
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      text2(number2)
    end
  end
  localValue5 = pairs
  localValue6 = localValue2
  localValue5, localValue6, stateFlag10, iterator2 = localValue5(localValue6)
  for workingValue8, stateFlag14 in localValue5, localValue6, stateFlag10, iterator2 do
    iterator = stateFlag14.source
    text2 = GetPlayerServerId
    number2 = PlayerId
    number2, tableHelper, stateFlag2, stateFlag3, stateFlag5, stateFlag6, stateFlag7, stateFlag8 = number2()
    -- Beginner: result below is serverId.
    text2 = text2(number2, tableHelper, stateFlag2, stateFlag3, stateFlag5, stateFlag6, stateFlag7, stateFlag8)
    if iterator == text2 then
      iterator = createVector4
      iterator = iterator[workingValue8]
      if not iterator then
        text2 = vector4
        number2 = 700.52307128906
        tableHelper = 575.68353271484
        stateFlag2 = 130.44616699219
        stateFlag3 = 158.74015808105
        text2 = text2(number2, tableHelper, stateFlag2, stateFlag3)
        iterator = text2
      end
      text2 = SetEntityCoords
      number2 = localValue4
      tableHelper = iterator.x
      stateFlag2 = iterator.y
      stateFlag3 = iterator.z
      stateFlag3 = stateFlag3 - 1
      stateFlag5 = false
      stateFlag6 = false
      stateFlag7 = false
      stateFlag8 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      text2(number2, tableHelper, stateFlag2, stateFlag3, stateFlag5, stateFlag6, stateFlag7, stateFlag8)
      text2 = SetEntityHeading
      number2 = localValue4
      tableHelper = iterator.w
      -- Beginner: Change the direction an entity is facing.
      text2(number2, tableHelper)
      text2 = CreateThread
      -- Beginner: this function is the body of a background FiveM thread.

      -- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
      function number2()
        local localValue12, localValue22, localValue32, workingValue4, workingValue5, dataCollection6, tableHelper2, workingValue6, stringHelper, dataCollection8, stateFlag, number, workingValue2, workingValue3
        localValue12 = "anim_casino_a@amb@casino@games@arcadecabinet@femaleleft"
        localValue22 = "lose_big"
        localValue32 = CMG
        localValue32 = localValue32.loadAnimDict
        workingValue4 = localValue12
        -- Beginner: Load a GTA animation dictionary before using it.
        localValue32(workingValue4)
        while true do
          localValue32 = createVector42
          if not localValue32 then
            break
          end
          localValue32 = SetFocusPosAndVel
          workingValue4 = 682.94506835938
          workingValue5 = 572.95385742188
          dataCollection6 = 131.08642578125
          tableHelper2 = 0.0
          workingValue6 = 0.0
          stringHelper = 0.0
          localValue32(workingValue4, workingValue5, dataCollection6, tableHelper2, workingValue6, stringHelper)
          localValue32 = FreezeEntityPosition
          workingValue4 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          workingValue4 = workingValue4()
          workingValue5 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          localValue32(workingValue4, workingValue5)
          localValue32 = IsEntityPlayingAnim
          workingValue4 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          workingValue4 = workingValue4()
          workingValue5 = localValue12
          dataCollection6 = localValue22
          tableHelper2 = 3
          localValue32 = localValue32(workingValue4, workingValue5, dataCollection6, tableHelper2)
          if not localValue32 then
            localValue32 = TaskPlayAnim
            workingValue4 = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            workingValue4 = workingValue4()
            workingValue5 = localValue12
            dataCollection6 = localValue22
            tableHelper2 = 8.0
            workingValue6 = 8.0
            stringHelper = -1
            dataCollection8 = 1
            stateFlag = 1.0
            number = false
            workingValue2 = false
            workingValue3 = false
            -- Beginner: Play an animation on a ped.
            localValue32(workingValue4, workingValue5, dataCollection6, tableHelper2, workingValue6, stringHelper, dataCollection8, stateFlag, number, workingValue2, workingValue3)
          end
          localValue32 = Wait
          workingValue4 = 0
          localValue32(workingValue4)
        end
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      text2(number2)
    end
  end
  localValue5 = vector3
  localValue6 = 683.83
  stateFlag10 = 570.57
  iterator2 = 130.46
  localValue5 = localValue5(localValue6, stateFlag10, iterator2)
  localValue6 = CreateCameraWithParams
  stateFlag10 = "DEFAULT_SCRIPTED_CAMERA"
  iterator2 = 681.29
  workingValue8 = 563.62
  stateFlag14 = 141.05
  iterator = 0.0
  text2 = 0.0
  number2 = 0.0
  tableHelper = 65.0
  stateFlag2 = false
  stateFlag3 = 2
  localValue6 = localValue6(stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2, tableHelper, stateFlag2, stateFlag3)
  stateFlag10 = PointCamAtCoord
  iterator2 = localValue6
  workingValue8 = localValue5.x
  stateFlag14 = localValue5.y
  iterator = localValue5.z
  iterator = iterator + 10
  stateFlag10(iterator2, workingValue8, stateFlag14, iterator)
  stateFlag10 = SetCamActive
  iterator2 = localValue6
  workingValue8 = true
  stateFlag10(iterator2, workingValue8)
  stateFlag10 = RenderScriptCams
  iterator2 = true
  workingValue8 = true
  stateFlag14 = 0
  iterator = true
  text2 = false
  stateFlag10(iterator2, workingValue8, stateFlag14, iterator, text2)
  stateFlag10 = CreateCameraWithParams
  iterator2 = "DEFAULT_SCRIPTED_CAMERA"
  workingValue8 = 681.29
  stateFlag14 = 563.62
  iterator = 131.05
  text2 = 0.0
  number2 = 0.0
  tableHelper = 0.0
  stateFlag2 = 65.0
  stateFlag3 = false
  stateFlag5 = 2
  stateFlag10 = stateFlag10(iterator2, workingValue8, stateFlag14, iterator, text2, number2, tableHelper, stateFlag2, stateFlag3, stateFlag5)
  iterator2 = PointCamAtCoord
  workingValue8 = stateFlag10
  stateFlag14 = localValue5.x
  iterator = localValue5.y
  text2 = localValue5.z
  iterator2(workingValue8, stateFlag14, iterator, text2)
  iterator2 = SetCamActiveWithInterp
  workingValue8 = stateFlag10
  stateFlag14 = localValue6
  iterator = 10000
  text2 = 5
  number2 = 5
  iterator2(workingValue8, stateFlag14, iterator, text2, number2)
  iterator2 = IsScreenFadedOut
  iterator2 = iterator2()
  if iterator2 then
    iterator2 = DoScreenFadeIn
    workingValue8 = 800
    iterator2(workingValue8)
  end
  iterator2 = text7
  workingValue8 = vector3
  stateFlag14 = 0
  iterator = 0
  text2 = 5
  workingValue8 = workingValue8(stateFlag14, iterator, text2)
  workingValue8 = localValue5 + workingValue8
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  iterator2(workingValue8)
  iterator2 = text7
  workingValue8 = vector3
  stateFlag14 = 681.34
  iterator = 572.84
  text2 = 130.46
  workingValue8 = workingValue8(stateFlag14, iterator, text2)
  stateFlag14 = vector3
  iterator = 0
  text2 = 0
  number2 = 5
  stateFlag14 = stateFlag14(iterator, text2, number2)
  workingValue8 = workingValue8 + stateFlag14
  iterator2(workingValue8)
  iterator2 = text7
  workingValue8 = vector3
  stateFlag14 = 686.76
  iterator = 570.71
  text2 = 130.46
  workingValue8 = workingValue8(stateFlag14, iterator, text2)
  stateFlag14 = vector3
  iterator = 0
  text2 = 0
  number2 = 5
  stateFlag14 = stateFlag14(iterator, text2, number2)
  workingValue8 = workingValue8 + stateFlag14
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  iterator2(workingValue8)
  iterator2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  iterator2 = iterator2()
  while true do
    workingValue8 = createVector43
    if workingValue8 then
      break
    end
    workingValue8 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workingValue8 = workingValue8()
    workingValue8 = workingValue8 - iterator2
    stateFlag14 = 10000
    if not (workingValue8 < stateFlag14) then
      break
    end
    workingValue8 = ThefeedHideThisFrame
    workingValue8()
    workingValue8 = Wait
    stateFlag14 = 0
    workingValue8(stateFlag14)
  end
  workingValue8 = createVector43
  if not workingValue8 then
    workingValue8 = CreateCameraWithParams
    stateFlag14 = "DEFAULT_SCRIPTED_CAMERA"
    iterator = 696.13189697266
    text2 = 579.70550537109
    number2 = 130.44616699219
    tableHelper = 0.0
    stateFlag2 = 0.0
    stateFlag3 = 0.0
    stateFlag5 = 65.0
    stateFlag6 = false
    stateFlag7 = 2
    workingValue8 = workingValue8(stateFlag14, iterator, text2, number2, tableHelper, stateFlag2, stateFlag3, stateFlag5, stateFlag6, stateFlag7)
    stateFlag14 = vector3
    iterator = 695.947265625
    text2 = 584.84832763672
    number2 = 130.74951171875
    stateFlag14 = stateFlag14(iterator, text2, number2)
    iterator = PointCamAtCoord
    text2 = workingValue8
    number2 = stateFlag14.x
    tableHelper = stateFlag14.y
    stateFlag2 = stateFlag14.z
    iterator(text2, number2, tableHelper, stateFlag2)
    iterator = SetCamActiveWithInterp
    text2 = workingValue8
    number2 = stateFlag10
    tableHelper = 11000
    stateFlag2 = 5
    stateFlag3 = 5
    iterator(text2, number2, tableHelper, stateFlag2, stateFlag3)
  end
  workingValue8 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  workingValue8 = workingValue8()
  iterator2 = workingValue8
  while true do
    workingValue8 = createVector43
    if workingValue8 then
      break
    end
    workingValue8 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workingValue8 = workingValue8()
    workingValue8 = workingValue8 - iterator2
    stateFlag14 = 4000
    if not (workingValue8 < stateFlag14) then
      break
    end
    workingValue8 = ThefeedHideThisFrame
    workingValue8()
    workingValue8 = Wait
    stateFlag14 = 0
    workingValue8(stateFlag14)
  end
  workingValue8 = createVector43
  if not workingValue8 then
    workingValue8 = DoScreenFadeOut
    stateFlag14 = 2000
    workingValue8(stateFlag14)
  end
  workingValue8 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  workingValue8 = workingValue8()
  iterator2 = workingValue8
  while true do
    workingValue8 = createVector43
    if workingValue8 then
      break
    end
    workingValue8 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workingValue8 = workingValue8()
    workingValue8 = workingValue8 - iterator2
    stateFlag14 = 3000
    if not (workingValue8 < stateFlag14) then
      break
    end
    workingValue8 = Wait
    stateFlag14 = 0
    workingValue8(stateFlag14)
  end
  workingValue8 = pairs
  stateFlag14 = localValue3
  workingValue8, stateFlag14, iterator, text2 = workingValue8(stateFlag14)
  for number2, tableHelper in workingValue8, stateFlag14, iterator, text2 do
    stateFlag2 = tCMG
    stateFlag2 = stateFlag2.removeArea
    stateFlag3 = "3dtext_"
    stateFlag5 = tableHelper
    stateFlag3 = stateFlag3 .. stateFlag5
    stateFlag2(stateFlag3)
  end
  workingValue8 = ClearPedTasks
  stateFlag14 = localValue4
  workingValue8(stateFlag14)
  workingValue8 = FreezeEntityPosition
  stateFlag14 = localValue4
  iterator = false
  -- Beginner: Freeze or unfreeze an entity in place.
  workingValue8(stateFlag14, iterator)
  workingValue8 = RenderScriptCams
  stateFlag14 = false
  iterator = false
  text2 = 1
  number2 = true
  tableHelper = true
  workingValue8(stateFlag14, iterator, text2, number2, tableHelper)
  workingValue8 = DestroyCam
  stateFlag14 = localValue6
  iterator = false
  workingValue8(stateFlag14, iterator)
  workingValue8 = DestroyCam
  stateFlag14 = stateFlag10
  iterator = false
  workingValue8(stateFlag14, iterator)
  workingValue8 = DestroyAllCams
  stateFlag14 = true
  workingValue8(stateFlag14)
  workingValue8 = DoScreenFadeIn
  stateFlag14 = 1000
  workingValue8(stateFlag14)
  workingValue8 = CMG
  workingValue8 = workingValue8.setTime
  stateFlag14 = 12
  iterator = 0
  text2 = 0
  workingValue8(stateFlag14, iterator, text2)
  workingValue8 = ClearTimecycleModifier
  workingValue8()
  workingValue8 = false
  createVector42 = workingValue8
  workingValue8 = CMG
  workingValue8 = workingValue8.showAllDisplays
  stateFlag14 = "podiumleaderboard"
  workingValue8(stateFlag14)
  workingValue8 = false
  createVector43 = workingValue8
  workingValue8 = ClearFocus
  workingValue8()
  workingValue8 = RemoveIpl
  stateFlag14 = "stadium"
  workingValue8(stateFlag14)
end
createVector44[number3] = number4
createVector44 = RegisterNetEvent
number3 = "e8f7c0a2e4"
-- Beginner: this function handles network event "e8f7c0a2e4".

-- === HELPER FUNCTION (decompiler name: number4; parameters: localValue1, localValue2) ===
function number4(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2, tableHelper, stateFlag2, stateFlag3, stateFlag5, stateFlag6, stateFlag7, stateFlag8
  localValue3 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: localValue4() ===
  function localValue4()
    local localValue12, localValue22
    localValue12 = CMG
    localValue12 = localValue12.activateSlowMo
    localValue12()
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue3(localValue4)
  localValue3 = {}
  localValue4 = Scaleform
  localValue5 = "MP_CELEBRATION"
  localValue4 = localValue4(localValue5)
  localValue3[1] = localValue4
  localValue4 = Scaleform
  localValue5 = "MP_CELEBRATION_BG"
  localValue4 = localValue4(localValue5)
  localValue3[2] = localValue4
  localValue4 = Scaleform
  localValue5 = "MP_CELEBRATION_FG"
  localValue4 = localValue4(localValue5)
  localValue3[3] = localValue4
  localValue4 = ipairs
  localValue5 = localValue3
  localValue4, localValue5, localValue6, stateFlag10 = localValue4(localValue5)
  for iterator2, workingValue8 in localValue4, localValue5, localValue6, stateFlag10 do
    stateFlag14 = workingValue8.RunFunction
    iterator = "CLEANUP"
    text2 = {}
    number2 = "WINNER"
    text2[1] = number2
    stateFlag14(iterator, text2)
    stateFlag14 = workingValue8.RunFunction
    iterator = "CREATE_STAT_WALL"
    text2 = {}
    number2 = "WINNER"
    tableHelper = "HUD_COLOUR_BLACK"
    stateFlag2 = "70.0"
    text2[1] = number2
    text2[2] = tableHelper
    text2[3] = stateFlag2
    stateFlag14(iterator, text2)
    if localValue2 then
      stateFlag14 = workingValue8.RunFunction
      iterator = "ADD_POSITION_TO_WALL"
      text2 = {}
      number2 = "WINNER"
      tableHelper = localValue2
      stateFlag2 = "1ST"
      stateFlag3 = false
      stateFlag5 = false
      text2[1] = number2
      text2[2] = tableHelper
      text2[3] = stateFlag2
      text2[4] = stateFlag3
      text2[5] = stateFlag5
      stateFlag14(iterator, text2)
    end
    stateFlag14 = workingValue8.RunFunction
    iterator = "ADD_WINNER_TO_WALL"
    text2 = {}
    number2 = "WINNER"
    tableHelper = "CELEB_WINNER"
    stateFlag2 = localValue1
    stateFlag3 = ""
    stateFlag5 = 0
    stateFlag6 = false
    stateFlag7 = ""
    stateFlag8 = false
    text2[1] = number2
    text2[2] = tableHelper
    text2[3] = stateFlag2
    text2[4] = stateFlag3
    text2[5] = stateFlag5
    text2[6] = stateFlag6
    text2[7] = stateFlag7
    text2[8] = stateFlag8
    stateFlag14(iterator, text2)
    stateFlag14 = workingValue8.RunFunction
    iterator = "ADD_BACKGROUND_TO_WALL"
    text2 = {}
    number2 = "WINNER"
    tableHelper = 75
    stateFlag2 = 0
    text2[1] = number2
    text2[2] = tableHelper
    text2[3] = stateFlag2
    stateFlag14(iterator, text2)
    stateFlag14 = workingValue8.RunFunction
    iterator = "SHOW_STAT_WALL"
    text2 = {}
    number2 = "WINNER"
    text2[1] = number2
    stateFlag14(iterator, text2)
  end
  localValue4 = true
  localValue5 = SetTimeout
  localValue6 = 10000

  -- === HELPER FUNCTION (decompiler name: stateFlag10; parameters: none) ===
  function stateFlag10()
    local localValue12, localValue22
    localValue12 = false
    localValue4 = localValue12
  end
  localValue5(localValue6, stateFlag10)
  localValue5 = CMG
  localValue5 = localValue5.hideAllDisplays
  localValue6 = "celebrationscreen"
  localValue5(localValue6)
  while localValue4 do
    localValue5 = DrawScaleformMovieFullscreenMasked
    localValue6 = localValue3[2]
    localValue6 = localValue6.Handle
    stateFlag10 = localValue3[3]
    stateFlag10 = stateFlag10.Handle
    iterator2 = 255
    workingValue8 = 255
    stateFlag14 = 255
    iterator = 255
    localValue5(localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator)
    localValue5 = localValue3[1]
    localValue5 = localValue5.Render2D
    localValue5()
    localValue5 = Citizen
    localValue5 = localValue5.Wait
    localValue6 = 0
    localValue5(localValue6)
  end
  localValue5 = CMG
  localValue5 = localValue5.showAllDisplays
  localValue6 = "celebrationscreen"
  localValue5(localValue6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e8f7c0a2e4".
createVector44(number3, number4)
createVector44 = false
number3 = CMG
number4 = "activateSlowMo"

-- === HELPER FUNCTION (decompiler name: number5; parameters: none) ===
function number5()
  local localValue1, localValue2, localValue3
  localValue1 = true
  createVector44 = localValue1
  localValue1 = SetSpecialAbility
  localValue2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue2 = localValue2()
  localValue3 = 2
  localValue1(localValue2, localValue3)
  localValue1 = SpecialAbilityActivate
  localValue2 = PlayerId
  localValue2, localValue3 = localValue2()
  localValue1(localValue2, localValue3)
  localValue1 = Wait
  localValue2 = 1000
  localValue1(localValue2)
  localValue1 = false
  createVector44 = localValue1
  localValue1 = SpecialAbilityDeplete
  localValue2 = PlayerId
  localValue2, localValue3 = localValue2()
  localValue1(localValue2, localValue3)
  localValue1 = Citizen
  localValue1 = localValue1.InvokeNative
  localValue2 = -4466441394195262849
  localValue3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue3 = localValue3()
  localValue1(localValue2, localValue3)
end
number3[number4] = number5
number3 = CMG
number4 = "isInSlowMo"

-- === HELPER FUNCTION (decompiler name: number5; parameters: none) ===
function number5()
  local localValue1, localValue2
  localValue1 = createVector44
  return localValue1
end
number3[number4] = number5

-- === HELPER FUNCTION (decompiler name: number3; parameters: localValue1) ===
function number3(localValue1)
  local localValue2, localValue3
  localValue2 = localValue1 % 6
  if 0 == localValue2 then
    localValue3 = 3
    return localValue3
  elseif 1 == localValue2 then
    localValue3 = 5
    return localValue3
  elseif 2 == localValue2 then
    localValue3 = 17
    return localValue3
  elseif 3 == localValue2 then
    localValue3 = 11
    return localValue3
  elseif 4 == localValue2 then
    localValue3 = 14
    return localValue3
  elseif 5 == localValue2 then
    localValue3 = 8
    return localValue3
  elseif 6 == localValue2 then
    localValue3 = 1
    return localValue3
  end
end
number4 = nil
number5 = nil
number6 = false
number7 = false
number8 = CMG
number9 = "enableMinigamePlayerBlips"

-- === HELPER FUNCTION (decompiler name: number10; parameters: localValue1, localValue2, localValue3, localValue4) ===
function number10(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2
  number4 = localValue2
  localValue5 = localValue3 or localValue5
  if not localValue3 then

    -- === HELPER FUNCTION: localValue5() ===
    function localValue5()
      local localValue12, localValue22
      localValue12 = true
      return localValue12
    end
  end
  number5 = localValue5
  number6 = localValue1
  if not localValue1 then
    localValue5 = ipairs
    localValue6 = currentEvent
    localValue6 = localValue6.players
    localValue5, localValue6, stateFlag10, iterator2 = localValue5(localValue6)
    for workingValue8, stateFlag14 in localValue5, localValue6, stateFlag10, iterator2 do
      iterator = CMG
      iterator = iterator.removeBlipsForPlayer
      text2 = stateFlag14
      iterator(text2)
    end
  end
  localValue5 = DisplayPlayerNameTagsOnBlips
  localValue6 = localValue1
  localValue5(localValue6)
  localValue5 = localValue4 or localValue5
  if not localValue4 then
    localValue5 = false
  end
  number7 = localValue5
end
number8[number9] = number10
number8 = {}
number9 = _ENV
number10 = "CMG"
number9 = number9[number10]
number10 = "forceCleanupPlayerBlips"

-- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
function number11()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2, tableHelper
  localValue1 = pairs
  localValue2 = number8
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    stateFlag10 = pairs
    iterator2 = localValue6
    stateFlag10, iterator2, workingValue8, stateFlag14 = stateFlag10(iterator2)
    for iterator, text2 in stateFlag10, iterator2, workingValue8, stateFlag14 do
      number2 = DoesBlipExist
      tableHelper = text2
      number2 = number2(tableHelper)
      if number2 then
        number2 = RemoveBlip
        tableHelper = text2
        number2(tableHelper)
      end
    end
  end
end
number9[number10] = number11
number9 = _ENV
number10 = "CMG"
number9 = number9[number10]
number10 = "removeBlipsForPlayer"

-- === HELPER FUNCTION (decompiler name: number11; parameters: localValue1) ===
function number11(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14
  localValue2 = localValue1.blip
  if localValue2 then
    localValue2 = RemoveBlip
    localValue3 = localValue1.blip
    localValue2(localValue3)
  end
  localValue3 = localValue1.source
  localValue2 = number8
  localValue2 = localValue2[localValue3]
  if localValue2 then
    localValue3 = pairs
    localValue4 = localValue2
    localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
    for stateFlag10, iterator2 in localValue3, localValue4, localValue5, localValue6 do
      workingValue8 = RemoveBlip
      stateFlag14 = iterator2
      workingValue8(stateFlag14)
    end
  end
  localValue3 = GetPlayerFromServerId
  localValue4 = localValue1.source
  -- Beginner: result below is playerIndex.
  localValue3 = localValue3(localValue4)
  if -1 == localValue3 then
    return
  end
  localValue4 = GetPlayerPed
  localValue5 = localValue3
  -- Beginner: result below is playerPed.
  localValue4 = localValue4(localValue5)
  if 0 == localValue4 then
    return
  end
  localValue5 = GetBlipFromEntity
  localValue6 = localValue4
  localValue5 = localValue5(localValue6)
  localValue6 = DoesBlipExist
  stateFlag10 = localValue5
  localValue6 = localValue6(stateFlag10)
  if localValue6 then
    localValue6 = RemoveBlip
    stateFlag10 = localValue5
    localValue6(stateFlag10)
  end
end
number9[number10] = number11
number9 = _ENV
number10 = "CreateThread"
number9 = number9[number10]

-- === HELPER FUNCTION (decompiler name: number10; parameters: none) ===
function number10()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2, tableHelper, stateFlag2
  while true do
    localValue1 = number6
    if localValue1 then
      localValue1 = GetActivePlayers
      localValue1 = localValue1()
      localValue2 = ipairs
      localValue3 = currentEvent
      localValue3 = localValue3.players
      localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
      for localValue6, stateFlag10 in localValue2, localValue3, localValue4, localValue5 do
        iterator2 = GetPlayerFromServerId
        workingValue8 = stateFlag10.source
        -- Beginner: result below is playerIndex.
        iterator2 = iterator2(workingValue8)
        if -1 ~= iterator2 then
          workingValue8 = PlayerId
          -- Beginner: result below is localPlayerIndex.
          workingValue8 = workingValue8()
          if iterator2 ~= workingValue8 then
            workingValue8 = table
            workingValue8 = workingValue8.has
            stateFlag14 = localValue1
            iterator = iterator2
            workingValue8 = workingValue8(stateFlag14, iterator)
            if workingValue8 then
              workingValue8 = GetPlayerPed
              stateFlag14 = iterator2
              -- Beginner: result below is playerPed.
              workingValue8 = workingValue8(stateFlag14)
              stateFlag14 = GetBlipFromEntity
              iterator = workingValue8
              stateFlag14 = stateFlag14(iterator)
              iterator = IsEntityVisible
              text2 = workingValue8
              iterator = iterator(text2)
              if iterator then
                iterator = stateFlag10.active
                if iterator then
                  iterator = number5
                  text2 = stateFlag10.source
                  iterator = iterator(text2)
                  if iterator then
                    iterator = stateFlag10.blip
                    if iterator then
                      iterator = stateFlag10.blip
                      if stateFlag14 == iterator then
                        goto continueAtStep131
                      end
                    end
                    iterator = stateFlag10.blip
                    if iterator then
                      iterator = RemoveBlip
                      text2 = stateFlag10.blip
                      iterator(text2)
                    end
                    iterator = DoesBlipExist
                    text2 = stateFlag14
                    iterator = iterator(text2)
                    if iterator then
                      iterator = RemoveBlip
                      text2 = stateFlag14
                      iterator(text2)
                    end
                    iterator = AddBlipForEntity
                    text2 = workingValue8
                    -- Beginner: result below is blipHandle.
                    iterator = iterator(text2)
                    number2 = stateFlag10.source
                    text2 = number8
                    text2 = text2[number2]
                    if not text2 then
                      number2 = stateFlag10.source
                      text2 = number8
                      tableHelper = {}
                      text2[number2] = tableHelper
                    end
                    text2 = table
                    text2 = text2.insert
                    tableHelper = stateFlag10.source
                    number2 = number8
                    number2 = number2[tableHelper]
                    tableHelper = iterator
                    text2(number2, tableHelper)
                    text2 = SetBlipSprite
                    number2 = iterator
                    tableHelper = 1
                    text2(number2, tableHelper)
                    text2 = SetBlipCategory
                    number2 = iterator
                    tableHelper = 7
                    text2(number2, tableHelper)
                    text2 = number4
                    if text2 then
                      text2 = SetBlipColour
                      number2 = iterator
                      tableHelper = number4
                      stateFlag2 = stateFlag10.source
                      tableHelper, stateFlag2 = tableHelper(stateFlag2)
                      text2(number2, tableHelper, stateFlag2)
                    else
                      text2 = SetBlipColour
                      number2 = iterator
                      tableHelper = number3
                      stateFlag2 = stateFlag10.source
                      tableHelper, stateFlag2 = tableHelper(stateFlag2)
                      text2(number2, tableHelper, stateFlag2)
                    end
                    text2 = number7
                    if not text2 then
                      text2 = ShowHeadingIndicatorOnBlip
                      number2 = iterator
                      tableHelper = true
                      text2(number2, tableHelper)
                    end
                    text2 = BeginTextCommandSetBlipName
                    number2 = "STRING"
                    text2(number2)
                    text2 = AddTextComponentSubstringPlayerName
                    number2 = CMG
                    number2 = number2.getPlayerName
                    tableHelper = iterator2
                    number2, tableHelper, stateFlag2 = number2(tableHelper)
                    text2(number2, tableHelper, stateFlag2)
                    text2 = EndTextCommandSetBlipName
                    number2 = iterator
                    text2(number2)
                    stateFlag10.blip = iterator
                    goto continueAtStep193
                    ::continueAtStep131::
                    iterator = IsEntityDead
                    text2 = workingValue8
                    iterator = iterator(text2)
                    if iterator then
                      iterator = 274
                      if iterator then
                        goto continueAtStep140
                      end
                    end
                    iterator = 1
                    ::continueAtStep140::
                    text2 = GetBlipSprite
                    number2 = stateFlag10.blip
                    text2 = text2(number2)
                    if text2 ~= iterator then
                      text2 = SetBlipSprite
                      number2 = stateFlag10.blip
                      tableHelper = iterator
                      text2(number2, tableHelper)
                      text2 = number4
                      if text2 then
                        text2 = SetBlipColour
                        number2 = stateFlag10.blip
                        tableHelper = number4
                        stateFlag2 = stateFlag10.source
                        tableHelper, stateFlag2 = tableHelper(stateFlag2)
                        text2(number2, tableHelper, stateFlag2)
                      else
                        text2 = SetBlipColour
                        number2 = stateFlag10.blip
                        tableHelper = number3
                        stateFlag2 = stateFlag10.source
                        tableHelper, stateFlag2 = tableHelper(stateFlag2)
                        text2(number2, tableHelper, stateFlag2)
                      end
                      text2 = BeginTextCommandSetBlipName
                      number2 = "STRING"
                      text2(number2)
                      text2 = AddTextComponentSubstringPlayerName
                      number2 = CMG
                      number2 = number2.getPlayerName
                      tableHelper = iterator2
                      number2, tableHelper, stateFlag2 = number2(tableHelper)
                      text2(number2, tableHelper, stateFlag2)
                      text2 = EndTextCommandSetBlipName
                      number2 = stateFlag10.blip
                      text2(number2)
                    end
                end
              end
              else
                iterator = stateFlag10.blip
                if iterator then
                  iterator = RemoveBlip
                  text2 = stateFlag10.blip
                  iterator(text2)
                  stateFlag10.blip = nil
                end
                iterator = DoesBlipExist
                text2 = stateFlag14
                iterator = iterator(text2)
                if iterator then
                  iterator = RemoveBlip
                  text2 = stateFlag14
                  iterator(text2)
                end
              end
            end
          end
        end
        ::continueAtStep193::
      end
    end
    localValue1 = Wait
    localValue2 = 100
    localValue1(localValue2)
  end
end
number9(number10)

-- === HELPER FUNCTION (decompiler name: number9; parameters: localValue1) ===
function number9(localValue1)
  local localValue2, localValue3
  localValue2 = localValue1 % 6
  if 0 == localValue2 then
    localValue3 = 9
    return localValue3
  elseif 1 == localValue2 then
    localValue3 = 12
    return localValue3
  elseif 2 == localValue2 then
    localValue3 = 15
    return localValue3
  elseif 3 == localValue2 then
    localValue3 = 18
    return localValue3
  elseif 4 == localValue2 then
    localValue3 = 21
    return localValue3
  elseif 5 == localValue2 then
    localValue3 = 24
    return localValue3
  elseif 6 == localValue2 then
    localValue3 = 6
    return localValue3
  end
end
number10 = nil
number11 = nil
number12 = false
number13 = false
number14 = _ENV
number15 = "CMG"
number14 = number14[number15]
number15 = "enableMinigamePlayerTags"

-- === HELPER FUNCTION (decompiler name: number16; parameters: localValue1, localValue2, localValue3, localValue4) ===
function number16(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2
  number10 = localValue3
  number11 = localValue4
  number13 = localValue2
  number12 = localValue1
  if not localValue1 then
    localValue5 = ipairs
    localValue6 = currentEvent
    localValue6 = localValue6.players
    localValue5, localValue6, stateFlag10, iterator2 = localValue5(localValue6)
    for workingValue8, stateFlag14 in localValue5, localValue6, stateFlag10, iterator2 do
      iterator = stateFlag14.tag
      if iterator then
        iterator = RemoveMpGamerTag
        text2 = stateFlag14.tag
        iterator(text2)
        stateFlag14.tag = nil
      end
    end
  end
end
number14[number15] = number16
number14 = _ENV
number15 = "CMG"
number14 = number14[number15]
number15 = "isEventPlayerTagEnabled"

-- === HELPER FUNCTION (decompiler name: number16; parameters: none) ===
function number16()
  local localValue1, localValue2
  localValue1 = number12
  return localValue1
end
number14[number15] = number16
number14 = _ENV
number15 = "CreateThread"
number14 = number14[number15]

-- === HELPER FUNCTION (decompiler name: number15; parameters: none) ===
function number15()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2, tableHelper, stateFlag2, stateFlag3, stateFlag5, stateFlag6
  while true do
    localValue1 = number12
    if localValue1 then
      localValue1 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue1 = localValue1()
      localValue2 = ipairs
      localValue3 = currentEvent
      localValue3 = localValue3.players
      localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
      for localValue6, stateFlag10 in localValue2, localValue3, localValue4, localValue5 do
        iterator2 = GetPlayerFromServerId
        workingValue8 = stateFlag10.source
        -- Beginner: result below is playerIndex.
        iterator2 = iterator2(workingValue8)
        if -1 ~= iterator2 then
          workingValue8 = PlayerId
          -- Beginner: result below is localPlayerIndex.
          workingValue8 = workingValue8()
          if iterator2 ~= workingValue8 then
            workingValue8 = GetPlayerPed
            stateFlag14 = iterator2
            -- Beginner: result below is playerPed.
            workingValue8 = workingValue8(stateFlag14)
            stateFlag14 = HasEntityClearLosToEntity
            iterator = localValue1
            text2 = workingValue8
            number2 = 17
            stateFlag14 = stateFlag14(iterator, text2, number2)
            if not stateFlag14 then
              stateFlag14 = CMG
              stateFlag14 = stateFlag14.isSpectatingEvent
              stateFlag14 = stateFlag14()
            end
            if stateFlag14 then
              iterator = IsEntityVisible
              text2 = workingValue8
              iterator = iterator(text2)
              if iterator then
                iterator = stateFlag10.active
                if iterator then
                  iterator = stateFlag10.tag
                  if iterator then
                    iterator = IsMpGamerTagActive
                    text2 = stateFlag10.tag
                    iterator = iterator(text2)
                  end
                  if not iterator then
                    iterator = nil
                    text2 = number11
                    if text2 then
                      text2 = CreateFakeMpGamerTag
                      number2 = workingValue8
                      tableHelper = number11
                      stateFlag2 = stateFlag10
                      tableHelper = tableHelper(stateFlag2)
                      stateFlag2 = false
                      stateFlag3 = false
                      stateFlag5 = ""
                      stateFlag6 = 0
                      text2 = text2(number2, tableHelper, stateFlag2, stateFlag3, stateFlag5, stateFlag6)
                      iterator = text2
                    else
                      text2 = CreateFakeMpGamerTag
                      number2 = workingValue8
                      tableHelper = CMG
                      tableHelper = tableHelper.getPlayerName
                      stateFlag2 = iterator2
                      tableHelper = tableHelper(stateFlag2)
                      stateFlag2 = false
                      stateFlag3 = false
                      stateFlag5 = ""
                      stateFlag6 = 0
                      text2 = text2(number2, tableHelper, stateFlag2, stateFlag3, stateFlag5, stateFlag6)
                      iterator = text2
                    end
                    text2 = number10
                    if text2 then
                      text2 = SetMpGamerTagColour
                      number2 = iterator
                      tableHelper = 0
                      stateFlag2 = number10
                      stateFlag3 = stateFlag10.source
                      stateFlag2, stateFlag3, stateFlag5, stateFlag6 = stateFlag2(stateFlag3)
                      text2(number2, tableHelper, stateFlag2, stateFlag3, stateFlag5, stateFlag6)
                    else
                      text2 = SetMpGamerTagColour
                      number2 = iterator
                      tableHelper = 0
                      stateFlag2 = number9
                      stateFlag3 = stateFlag10.source
                      stateFlag2, stateFlag3, stateFlag5, stateFlag6 = stateFlag2(stateFlag3)
                      text2(number2, tableHelper, stateFlag2, stateFlag3, stateFlag5, stateFlag6)
                    end
                    text2 = SetMpGamerTagColour
                    number2 = iterator
                    tableHelper = 29
                    stateFlag2 = 6
                    text2(number2, tableHelper, stateFlag2)
                    text2 = number13
                    if text2 then
                      text2 = SetMpGamerTagHealthBarColour
                      number2 = iterator
                      tableHelper = 18
                      text2(number2, tableHelper)
                      text2 = SetMpGamerTagAlpha
                      number2 = iterator
                      tableHelper = 2
                      stateFlag2 = 255
                      text2(number2, tableHelper, stateFlag2)
                      text2 = SetMpGamerTagVisibility
                      number2 = iterator
                      tableHelper = 2
                      stateFlag2 = true
                      text2(number2, tableHelper, stateFlag2)
                    end
                    stateFlag10.tag = iterator
                  end
              end
            end
            else
              iterator = stateFlag10.tag
              if iterator then
                iterator = RemoveMpGamerTag
                text2 = stateFlag10.tag
                iterator(text2)
                stateFlag10.tag = nil
              end
            end
          end
        end
      end
    end
    localValue1 = Wait
    localValue2 = 100
    localValue1(localValue2)
  end
end
number14(number15)
number14 = _ENV
number15 = "CMG"
number14 = number14[number15]
number15 = "setEventIntroMessage"

-- === HELPER FUNCTION (decompiler name: number16; parameters: localValue1, localValue2, localValue3) ===
function number16(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator, text2, number2, tableHelper, stateFlag2, stateFlag3, stateFlag5, stateFlag6, stateFlag7, stateFlag8
  localValue4 = EnableAllControlActions
  localValue5 = 0
  localValue4(localValue5)
  localValue4 = GetSoundId
  -- Beginner: result below is soundHandle.
  localValue4 = localValue4()
  localValue5 = PlaySoundFrontend
  localValue6 = localValue4
  stateFlag10 = "Frontend_Beast_Freeze_Screen"
  iterator2 = "FM_Events_Sasquatch_Sounds"
  workingValue8 = false
  localValue5(localValue6, stateFlag10, iterator2, workingValue8)
  localValue5 = ReleaseSoundId
  localValue6 = localValue4
  localValue5(localValue6)
  localValue5 = HasStreamedTextureDictLoaded
  localValue6 = "cmgui"
  localValue5 = localValue5(localValue6)
  if not localValue5 then
    localValue5 = RequestStreamedTextureDict
    localValue6 = "cmgui"
    stateFlag10 = false
    localValue5(localValue6, stateFlag10)
    while true do
      localValue5 = HasStreamedTextureDictLoaded
      localValue6 = "cmgui"
      localValue5 = localValue5(localValue6)
      if localValue5 then
        break
      end
      localValue5 = Wait
      localValue6 = 0
      localValue5(localValue6)
    end
  end
  localValue5 = CMG
  localValue5 = localValue5.hideAllDisplays
  localValue6 = "intromessage"
  localValue5(localValue6)
  localValue5 = 0.0
  localValue6 = 0.55
  stateFlag10 = true
  if 0 == localValue3 then
  else
    iterator2 = SetTimeout
    workingValue8 = localValue3 or workingValue8
    if not localValue3 then
      workingValue8 = 5000
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: none) ===
    function stateFlag14()
      local localValue12, localValue22
      localValue12 = false
      stateFlag10 = localValue12
    end
    iterator2(workingValue8, stateFlag14)
    while stateFlag10 do
      iterator2 = Wait
      workingValue8 = 0
      iterator2(workingValue8)
      if localValue5 < localValue6 then
        localValue5 = localValue5 + 0.01
      end
      iterator2 = DrawAdvancedTextNoOutline
      workingValue8 = 0.283
      stateFlag14 = 0.807
      stateFlag14 = stateFlag14 - localValue6
      stateFlag14 = stateFlag14 + localValue5
      iterator = 0.005
      text2 = 0.0028
      number2 = 1.25
      tableHelper = localValue1
      stateFlag2 = 171
      stateFlag3 = 34
      stateFlag5 = 35
      stateFlag6 = 255
      stateFlag7 = CMG
      stateFlag7 = stateFlag7.getFontId
      stateFlag8 = "Akrobat-ExtraBold"
      stateFlag7 = stateFlag7(stateFlag8)
      stateFlag8 = 0
      iterator2(workingValue8, stateFlag14, iterator, text2, number2, tableHelper, stateFlag2, stateFlag3, stateFlag5, stateFlag6, stateFlag7, stateFlag8)
      iterator2 = DrawAdvancedTextNoOutline
      workingValue8 = 0.488
      stateFlag14 = 0.883
      stateFlag14 = stateFlag14 - localValue6
      stateFlag14 = stateFlag14 + localValue5
      iterator = 0.005
      text2 = 0.0028
      number2 = 1.03
      tableHelper = localValue2
      stateFlag2 = 255
      stateFlag3 = 255
      stateFlag5 = 255
      stateFlag6 = 255
      stateFlag7 = 1
      stateFlag8 = 0
      iterator2(workingValue8, stateFlag14, iterator, text2, number2, tableHelper, stateFlag2, stateFlag3, stateFlag5, stateFlag6, stateFlag7, stateFlag8)
      iterator2 = DrawSprite
      workingValue8 = "cmgui"
      stateFlag14 = "slanted_rect"
      iterator = 0.5
      text2 = localValue5
      number2 = 1.0
      tableHelper = 1.0
      stateFlag2 = 0.0
      stateFlag3 = 255
      stateFlag5 = 255
      stateFlag6 = 255
      stateFlag7 = 180
      iterator2(workingValue8, stateFlag14, iterator, text2, number2, tableHelper, stateFlag2, stateFlag3, stateFlag5, stateFlag6, stateFlag7)
    end
  end
  iterator2 = CMG
  iterator2 = iterator2.showAllDisplays
  workingValue8 = "intromessage"
  iterator2(workingValue8)
end
number14[number15] = number16
number14 = _ENV
number15 = "CMG"
number14 = number14[number15]
number15 = "inEvent"

-- === HELPER FUNCTION (decompiler name: number16; parameters: none) ===
function number16()
  local localValue1, localValue2
  localValue1 = currentEvent
  localValue1 = localValue1.isActive
  if not localValue1 then
    localValue1 = stateFlag13
    if not localValue1 then
      localValue1 = stateFlag9
    end
  end
  return localValue1
end
number14[number15] = number16
number14 = RegisterNetEvent
number15 = "86634fecb2"
-- Beginner: this function handles network event "86634fecb2".

-- === HELPER FUNCTION (decompiler name: number16; parameters: localValue1) ===
function number16(localValue1)
  local localValue2
  stateFlag12 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "86634fecb2".
number14(number15, number16)
number14 = _ENV
number15 = "CMG"
number14 = number14[number15]
number15 = "getClientEventData"
-- Beginner: this function handles network event "86634fecb2".

-- === HELPER FUNCTION (decompiler name: number16; parameters: localValue1) ===
function number16(localValue1)
  local localValue2
  localValue2 = currentEvent
  return localValue2
end
number14[number15] = number16

-- === HELPER FUNCTION (decompiler name: number14; parameters: none) ===
function number14()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, stateFlag10, iterator2, workingValue8, stateFlag14, iterator
  localValue1 = currentEvent
  if localValue1 then
    localValue1 = currentEvent
    localValue1 = localValue1.isActive
    if localValue1 then
      goto continueAtStep9
    end
  end
  return
  ::continueAtStep9::
  localValue1 = pairs
  localValue2 = currentEvent
  localValue2 = localValue2.players
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    stateFlag10 = GetPlayerFromServerId
    iterator2 = localValue6.source
    -- Beginner: result below is playerIndex.
    stateFlag10 = stateFlag10(iterator2)
    if -1 ~= stateFlag10 then
      iterator2 = GetPlayerPed
      workingValue8 = stateFlag10
      -- Beginner: result below is playerPed.
      iterator2 = iterator2(workingValue8)
      if -1 ~= iterator2 then
        workingValue8 = IsPedShooting
        stateFlag14 = iterator2
        workingValue8 = workingValue8(stateFlag14)
        if workingValue8 then
          stateFlag14 = localValue6.source
          workingValue8 = dataCollection5
          workingValue8 = workingValue8[stateFlag14]
          if not workingValue8 then
            stateFlag14 = localValue6.source
            workingValue8 = dataCollection5
            workingValue8[stateFlag14] = true
            workingValue8 = SetTimeout
            stateFlag14 = 1000

            -- === HELPER FUNCTION: iterator() ===
            function iterator()
              local localValue12, localValue22
              localValue22 = localValue6.source
              localValue12 = dataCollection5
              localValue12[localValue22] = false
            end
            workingValue8(stateFlag14, iterator)
          end
        end
      end
    end
  end
end
number15 = _ENV
number16 = "CMG"
number15 = number15[number16]
number15 = number15.createThreadOnTick
number16 = number14
number17 = "Event Shots Finder"
number15(number16, number17)
number15 = _ENV
number16 = "CMG"
number15 = number15[number16]
number16 = "hasPlayerShotInEvent"

-- === HELPER FUNCTION (decompiler name: number17; parameters: localValue1) ===
function number17(localValue1)
  local localValue2
  localValue2 = dataCollection5
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    localValue2 = false
  end
  return localValue2
end
number15[number16] = number17
