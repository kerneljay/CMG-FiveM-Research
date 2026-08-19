--[[
    LEVEL 1 BEGINNER GUIDE — Trucking
    ======================================

    File: cmg/prod/client/jobs/cl_trucking.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: civilian/job gameplay, specifically the Trucking feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 46
      * Background threads: 0
      * Always-running loops: 9
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
local cmgOperation, text, dataCollection4, rageUiOperation2, dataCollection6, cmgOperation10, rageUiOperation3, rageUiOperation4, stateFlag14, text16, stateFlag, dataCollection, stateFlag2, number3, cmgOperation3, workingValue, workingValue2, workingValue3, rageUiOperation, cmgOperation4, text2, workingValue4, workingValue5, text5, cmgOperation6, cmgOperation7, text6, workingValue9, text7, text8, cmgOperation8, cmgOperation9, text9, number6, number7, number8, number9, text10, stateFlag8, stateFlag9, text11, text12, number10, number11, stateFlag10, stateFlag11
cmgOperation = RMenu
cmgOperation = cmgOperation.Add
text = "cmgtruckmenu"
dataCollection4 = "job"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
dataCollection6 = ""
cmgOperation10 = "~b~CMG Trucking"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
stateFlag14 = "cmg_truckingjob"
text16 = "cmg_truckingjob"
rageUiOperation2, dataCollection6, cmgOperation10, rageUiOperation3, rageUiOperation4, stateFlag14, text16, stateFlag, dataCollection, stateFlag2, number3, cmgOperation3, workingValue, workingValue2, workingValue3, rageUiOperation, cmgOperation4, text2, workingValue4, workingValue5, text5, cmgOperation6, cmgOperation7, text6, workingValue9, text7, text8, cmgOperation8, cmgOperation9, text9, number6, number7, number8, number9, text10, stateFlag8, stateFlag9, text11, text12, number10, number11, stateFlag10, stateFlag11 = rageUiOperation2(dataCollection6, cmgOperation10, rageUiOperation3, rageUiOperation4, stateFlag14, text16)
cmgOperation(text, dataCollection4, rageUiOperation2, dataCollection6, cmgOperation10, rageUiOperation3, rageUiOperation4, stateFlag14, text16, stateFlag, dataCollection, stateFlag2, number3, cmgOperation3, workingValue, workingValue2, workingValue3, rageUiOperation, cmgOperation4, text2, workingValue4, workingValue5, text5, cmgOperation6, cmgOperation7, text6, workingValue9, text7, text8, cmgOperation8, cmgOperation9, text9, number6, number7, number8, number9, text10, stateFlag8, stateFlag9, text11, text12, number10, number11, stateFlag10, stateFlag11)
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
text = "cfg/cfg_trucking"
-- Beginner: result below is config.
cmgOperation = cmgOperation(text)
text = ""
dataCollection4 = {}
dataCollection4.vehicle = nil
dataCollection4.trailer = nil
dataCollection4.checkpoint = nil
rageUiOperation2 = 1
dataCollection6 = {}
cmgOperation10 = {}
rageUiOperation3 = {}
rageUiOperation4 = false
stateFlag14 = false
text16 = 0
stateFlag = false
dataCollection = {}
stateFlag2 = false
globalTruckingOnDuty = false
number3 = 48
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2
  localValue1 = stateFlag
  return localValue1
end
cmgOperation3.isDoingTruckRoute = workingValue
cmgOperation3 = pairs
workingValue = cmgOperation.jobs
cmgOperation3, workingValue, workingValue2, workingValue3 = cmgOperation3(workingValue)
for rageUiOperation, cmgOperation4 in cmgOperation3, workingValue, workingValue2, workingValue3 do
  text2 = "Illegal" == rageUiOperation
  workingValue4 = cmgOperation4
  workingValue5 = workingValue4.config
  if workingValue5 then
    workingValue5 = workingValue4.config
    workingValue5 = workingValue5[1]
    text5 = workingValue4.config
    text5 = text5[2]
    cmgOperation6 = type
    cmgOperation7 = workingValue5
    cmgOperation6 = cmgOperation6(cmgOperation7)
    if "vector3" == cmgOperation6 then
      cmgOperation6 = tCMG
      cmgOperation6 = cmgOperation6.addBlip
      cmgOperation7 = workingValue5.x
      text6 = workingValue5.y
      workingValue9 = workingValue5.z
      text7 = 67
      text8 = 5
      cmgOperation8 = text5
      cmgOperation6 = cmgOperation6(cmgOperation7, text6, workingValue9, text7, text8, cmgOperation8)
      if text2 then
        cmgOperation7 = CMG
        cmgOperation7 = cmgOperation7.addBlipContext
        text6 = "Civilian"
        workingValue9 = cmgOperation6
        cmgOperation7(text6, workingValue9)
      end
      cmgOperation7 = tCMG
      cmgOperation7 = cmgOperation7.addMarker
      text6 = workingValue5.x
      workingValue9 = workingValue5.y
      text7 = workingValue5.z
      text8 = 0.7
      cmgOperation8 = 0.7
      cmgOperation9 = 0.5
      text9 = 0
      number6 = 255
      number7 = 125
      number8 = 125
      number9 = 50
      text10 = 39
      stateFlag8 = true
      stateFlag9 = true
      -- Beginner: Create a world marker.
      cmgOperation7(text6, workingValue9, text7, text8, cmgOperation8, cmgOperation9, text9, number6, number7, number8, number9, text10, stateFlag8, stateFlag9)
    else
      cmgOperation6 = pairs
      cmgOperation7 = workingValue5
      cmgOperation6, cmgOperation7, text6, workingValue9 = cmgOperation6(cmgOperation7)
      for text7, text8 in cmgOperation6, cmgOperation7, text6, workingValue9 do
        cmgOperation8 = tCMG
        cmgOperation8 = cmgOperation8.addBlip
        cmgOperation9 = text8.x
        text9 = text8.y
        number6 = text8.z
        number7 = 67
        number8 = 5
        number9 = text5
        cmgOperation8 = cmgOperation8(cmgOperation9, text9, number6, number7, number8, number9)
        if text2 then
          cmgOperation9 = CMG
          cmgOperation9 = cmgOperation9.addBlipContext
          text9 = "Civilian"
          number6 = cmgOperation8
          cmgOperation9(text9, number6)
        end
        cmgOperation9 = tCMG
        cmgOperation9 = cmgOperation9.addMarker
        text9 = text8.x
        number6 = text8.y
        number7 = text8.z
        number8 = 0.7
        number9 = 0.7
        text10 = 0.5
        stateFlag8 = 0
        stateFlag9 = 255
        text11 = 125
        text12 = 125
        number10 = 50
        number11 = 39
        stateFlag10 = true
        stateFlag11 = true
        -- Beginner: Create a world marker.
        cmgOperation9(text9, number6, number7, number8, number9, text10, stateFlag8, stateFlag9, text11, text12, number10, number11, stateFlag10, stateFlag11)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1) ===
function cmgOperation3(localValue1)
  local localValue2, localValue3, localValue4, text13, iterator
  text = localValue1
  localValue2 = CMG
  localValue2 = localValue2.TriggerServerCallback
  localValue3 = "9a9cb9e8bf"
  localValue4 = text
  localValue2 = localValue2(localValue3, localValue4)
  text16 = localValue2
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgtruckmenu"
  text13 = "job"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, text13)
  localValue3 = localValue2
  localValue2 = localValue2.SetSubtitle
  localValue4 = cmgOperation.jobs
  localValue4 = localValue4[localValue1]
  localValue4 = localValue4.config
  localValue4 = localValue4[2]
  localValue2(localValue3, localValue4)
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  localValue3 = RMenu
  localValue4 = localValue3
  localValue3 = localValue3.Get
  text13 = "cmgtruckmenu"
  iterator = "job"
  -- Beginner: result below is menu.
  localValue3 = localValue3(localValue4, text13, iterator)
  localValue4 = true
  localValue2(localValue3, localValue4)
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2, localValue3, localValue4, text13
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgtruckmenu"
  text13 = "job"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, text13)
  localValue3 = false
  localValue1(localValue2, localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4, text13, iterator, number13, workingValue11, number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4, stateFlag5, stateFlag6, number4, stateFlag7
  localValue2 = pairs
  localValue3 = localValue1
  localValue2, localValue3, localValue4, text13 = localValue2(localValue3)
  for iterator, number13 in localValue2, localValue3, localValue4, text13 do
    workingValue11 = IsPositionOccupied
    number14 = number13[2]
    number14 = number14.x
    number15 = number13[2]
    number15 = number15.y
    number = number13[2]
    number = number.z
    number2 = 1.8
    stateFlag3 = false
    cmgOperation2 = true
    stateFlag4 = false
    stateFlag5 = false
    stateFlag6 = false
    number4 = 0
    stateFlag7 = false
    workingValue11 = workingValue11(number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4, stateFlag5, stateFlag6, number4, stateFlag7)
    if not workingValue11 then
      workingValue11 = number13[2]
      return workingValue11
    end
  end
  localValue2 = nil
  return localValue2
end
workingValue3 = nil
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateWhile
cmgOperation4 = 1.0
text2 = RMenu
workingValue4 = text2
text2 = text2.Get
workingValue5 = "cmgtruckmenu"
text5 = "job"
-- Beginner: result below is menu.
text2 = text2(workingValue4, workingValue5, text5)
workingValue4 = nil

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, localValue3, localValue4, text13, iterator
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgtruckmenu"
  text13 = "job"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, text13)
  localValue3 = true
  localValue4 = false
  text13 = true

  -- === HELPER FUNCTION: iterator() ===
  function iterator()
    local localValue12, localValue22, localValue32, dataCollection5, stateFlag12, text15, workingValue10
    localValue12 = text
    if "" ~= localValue12 then
      localValue12 = stateFlag
      if false == localValue12 then
        localValue12 = RageUI
        localValue12 = localValue12.ButtonWithStyle
        localValue22 = "Start Job"
        localValue32 = nil
        dataCollection5 = {}
        dataCollection5.RightLabel = "\226\134\146\226\134\146\226\134\146"
        stateFlag12 = true

        -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue13, localValue23, localValue33) ===
        function text15(localValue13, localValue23, localValue33)
          local serverEventCall, text14, number12, stateFlag13
          if localValue33 then
            serverEventCall = GetResourceKvpInt
            text14 = "cmg_trucking_done_cutscene"
            serverEventCall = serverEventCall(text14)
            if 1 == serverEventCall then
              serverEventCall = TriggerServerEvent
              text14 = "881ad8757a"
              number12 = text
              stateFlag13 = false
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "881ad8757a".
              serverEventCall(text14, number12, stateFlag13)
            else
              serverEventCall = workingValue3
              serverEventCall()
              serverEventCall = TriggerServerEvent
              text14 = "881ad8757a"
              number12 = text
              stateFlag13 = false
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "881ad8757a".
              serverEventCall(text14, number12, stateFlag13)
              serverEventCall = SetResourceKvpInt
              text14 = "cmg_trucking_done_cutscene"
              number12 = 1
              serverEventCall(text14, number12)
            end
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        localValue12(localValue22, localValue32, dataCollection5, stateFlag12, text15)
      else
        localValue12 = stateFlag
        if localValue12 then
          localValue12 = RageUI
          localValue12 = localValue12.Separator
          localValue22 = "~r~You are currently doing a job.\n"
          localValue12(localValue22)
          localValue12 = RageUI
          localValue12 = localValue12.Separator
          localValue22 = [[
~r~ Please finish the current one to
start a new one!]]
          localValue12(localValue22)
          localValue12 = RageUI
          localValue12 = localValue12.Separator
          localValue22 = ""
          localValue12(localValue22)
          localValue12 = RageUI
          localValue12 = localValue12.Separator
          localValue22 = ""
          localValue12(localValue22)
          localValue12 = RageUI
          localValue12 = localValue12.ButtonWithStyle
          localValue22 = "End Job"
          localValue32 = nil
          dataCollection5 = {}
          dataCollection5.RightLabel = "\226\134\146\226\134\146\226\134\146"
          stateFlag12 = true

          -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue13, localValue23, localValue33) ===
          function text15(localValue13, localValue23, localValue33)
            local serverEventCall, text14, number12
            if localValue33 then
              serverEventCall = TriggerServerEvent
              text14 = "6f29153e97"
              number12 = "~r~You ended the job"
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6f29153e97".
              serverEventCall(text14, number12)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          localValue12(localValue22, localValue32, dataCollection5, stateFlag12, text15)
        end
      end
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "Current Level: "
      localValue32 = tostring
      dataCollection5 = text16
      dataCollection5 = dataCollection5[1]
      localValue32 = localValue32(dataCollection5)
      localValue22 = localValue22 .. localValue32
      localValue12(localValue22)
      localValue12 = getMoneyStringFormatted
      localValue22 = tostring
      localValue32 = math
      localValue32 = localValue32.floor
      dataCollection5 = text16
      dataCollection5 = dataCollection5[2]
      localValue32, dataCollection5, stateFlag12, text15, workingValue10 = localValue32(dataCollection5)
      localValue22, localValue32, dataCollection5, stateFlag12, text15, workingValue10 = localValue22(localValue32, dataCollection5, stateFlag12, text15, workingValue10)
      localValue12 = localValue12(localValue22, localValue32, dataCollection5, stateFlag12, text15, workingValue10)
      localValue22 = getMoneyStringFormatted
      localValue32 = tostring
      dataCollection5 = math
      dataCollection5 = dataCollection5.floor
      stateFlag12 = text16
      stateFlag12 = stateFlag12[3]
      dataCollection5, stateFlag12, text15, workingValue10 = dataCollection5(stateFlag12)
      localValue32, dataCollection5, stateFlag12, text15, workingValue10 = localValue32(dataCollection5, stateFlag12, text15, workingValue10)
      localValue22 = localValue22(localValue32, dataCollection5, stateFlag12, text15, workingValue10)
      localValue32 = RageUI
      localValue32 = localValue32.Separator
      dataCollection5 = text16
      dataCollection5 = dataCollection5[2]
      stateFlag12 = text16
      stateFlag12 = stateFlag12[3]
      if dataCollection5 ~= stateFlag12 then
        dataCollection5 = "Payout: \194\163"
        stateFlag12 = localValue12
        text15 = "-\194\163"
        workingValue10 = localValue22
        dataCollection5 = dataCollection5 .. stateFlag12 .. text15 .. workingValue10
        if dataCollection5 then
          goto continueAtStep92
        end
      end
      dataCollection5 = "Payout: \194\163"
      stateFlag12 = localValue12
      dataCollection5 = dataCollection5 .. stateFlag12
      ::continueAtStep92::
      localValue32(dataCollection5)
    end
  end
  localValue1(localValue2, localValue3, localValue4, text13, iterator)
end
rageUiOperation(cmgOperation4, text2, workingValue4, workingValue5)
rageUiOperation = AddEventHandler
cmgOperation4 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2) ===
function text2(localValue1, localValue2)
  local localValue3, localValue4, text13, iterator, number13, workingValue11, number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4, stateFlag5, stateFlag6, number4, stateFlag7, cmgOperation5, text3, dataCollection2, text4, number5, workingValue6, workingValue7, workingValue8, dataCollection3
  if localValue2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local localValue12, localValue22
      localValue12 = drawNativeNotification
      localValue22 = "Press ~INPUT_PICKUP~ to open the Trucking menu."
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue12(localValue22)
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION: localValue4() ===
    function localValue4()
      local localValue12, localValue22
      localValue12 = workingValue
      localValue12()
    end

    -- === HELPER FUNCTION (decompiler name: text13; parameters: localValue12) ===
    function text13(localValue12)
      local localValue22, localValue32, dataCollection5
      localValue22 = IsControlJustReleased
      localValue32 = 1
      dataCollection5 = 38
      localValue22 = localValue22(localValue32, dataCollection5)
      if localValue22 then
        localValue22 = CMG
        localValue22 = localValue22.hasClientGroup
        localValue32 = "Trucking"
        localValue22 = localValue22(localValue32)
        if localValue22 then
          localValue22 = cmgOperation3
          localValue32 = localValue12.job
          localValue22(localValue32)
        else
          localValue22 = tCMG
          localValue22 = localValue22.notify
          localValue32 = "~r~You aren't clocked on as a Trucking, head to cityhall to sign up."
          -- Beginner: Show a notification to the player.
          localValue22(localValue32)
        end
      end
    end
    iterator = pairs
    number13 = cmgOperation.jobs
    iterator, number13, workingValue11, number14 = iterator(number13)
    for number15, number in iterator, number13, workingValue11, number14 do
      number2 = number.config
      stateFlag3 = number2[1]
      cmgOperation2 = type
      stateFlag4 = stateFlag3
      cmgOperation2 = cmgOperation2(stateFlag4)
      if "vector3" == cmgOperation2 then
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.createArea
        stateFlag4 = "trucking_"
        stateFlag5 = number15
        stateFlag4 = stateFlag4 .. stateFlag5
        stateFlag5 = number2[1]
        stateFlag6 = 1.15
        number4 = 6
        stateFlag7 = localValue3
        cmgOperation5 = localValue4
        text3 = text13
        dataCollection2 = {}
        dataCollection2.job = number15
        -- Beginner: Create an interaction area around a world position.
        cmgOperation2(stateFlag4, stateFlag5, stateFlag6, number4, stateFlag7, cmgOperation5, text3, dataCollection2)
      else
        cmgOperation2 = pairs
        stateFlag4 = stateFlag3
        cmgOperation2, stateFlag4, stateFlag5, stateFlag6 = cmgOperation2(stateFlag4)
        for number4, stateFlag7 in cmgOperation2, stateFlag4, stateFlag5, stateFlag6 do
          cmgOperation5 = CMG
          cmgOperation5 = cmgOperation5.createArea
          text3 = "trucking_"
          dataCollection2 = number15
          text4 = "_"
          number5 = number4
          text3 = text3 .. dataCollection2 .. text4 .. number5
          dataCollection2 = stateFlag7
          text4 = 1.15
          number5 = 6
          workingValue6 = localValue3
          workingValue7 = localValue4
          workingValue8 = text13
          dataCollection3 = {}
          dataCollection3.job = number15
          cmgOperation5(text3, dataCollection2, text4, number5, workingValue6, workingValue7, workingValue8, dataCollection3)
        end
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
rageUiOperation(cmgOperation4, text2)

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1) ===
function rageUiOperation(localValue1)
  local localValue2, localValue3, localValue4, text13
  localValue2 = math
  localValue2 = localValue2.randomseed
  localValue3 = GetGameTimer
  localValue3, localValue4, text13 = localValue3()
  localValue2(localValue3, localValue4, text13)
  localValue2 = math
  localValue2 = localValue2.random
  localValue3 = 1
  localValue4 = #localValue1
  localValue2 = localValue2(localValue3, localValue4)
  localValue3 = math
  localValue3 = localValue3.random
  localValue4 = 1
  text13 = #localValue1
  localValue3 = localValue3(localValue4, text13)
  localValue2 = localValue3
  localValue3 = math
  localValue3 = localValue3.random
  localValue4 = 1
  text13 = #localValue1
  localValue3 = localValue3(localValue4, text13)
  localValue2 = localValue3
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, localValue3, localValue4, text13, iterator, number13, workingValue11, number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4, stateFlag5, stateFlag6
  localValue1 = dataCollection
  localValue2 = localValue1[2]
  localValue3 = AddBlipForCoord
  localValue4 = localValue2.x
  text13 = localValue2.y
  iterator = localValue2.z
  -- Beginner: result below is blipHandle.
  localValue3 = localValue3(localValue4, text13, iterator)
  dataCollection6.job = localValue3
  localValue3 = false
  stateFlag2 = localValue3
  localValue3 = SetBlipSprite
  localValue4 = dataCollection6.job
  text13 = localValue1.blip
  localValue3(localValue4, text13)
  localValue3 = SetBlipRoute
  localValue4 = dataCollection6.job
  text13 = true
  localValue3(localValue4, text13)
  localValue3 = NetworkGetNetworkIdFromEntity
  localValue4 = GetVehiclePedIsIn
  text13 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  text13 = text13()
  iterator = false
  localValue4, text13, iterator, number13, workingValue11, number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4, stateFlag5, stateFlag6 = localValue4(text13, iterator)
  localValue3 = localValue3(localValue4, text13, iterator, number13, workingValue11, number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4, stateFlag5, stateFlag6)
  localValue4 = TriggerServerEvent
  text13 = "22348440e3"
  iterator = localValue3
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "22348440e3".
  localValue4(text13, iterator)
  localValue4 = DeleteCheckpoint
  text13 = cmgOperation10.trailer
  localValue4(text13)
  localValue4 = GetVehiclePedIsIn
  text13 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  text13 = text13()
  iterator = false
  -- Beginner: result below is currentVehicle.
  localValue4 = localValue4(text13, iterator)
  dataCollection4.vehicle = localValue4
  localValue4 = CreateCheckpoint
  text13 = number3
  iterator = localValue2.x
  number13 = localValue2.y
  workingValue11 = localValue2.z
  workingValue11 = workingValue11 - 1.0
  number14 = 0
  number15 = 0
  number = 0
  number2 = 10.0
  stateFlag3 = 0
  cmgOperation2 = 255
  stateFlag4 = 0
  stateFlag5 = 127
  stateFlag6 = 0
  -- Beginner: result below is checkpointHandle.
  localValue4 = localValue4(text13, iterator, number13, workingValue11, number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4, stateFlag5, stateFlag6)
  dataCollection4.checkpoint = localValue4
  localValue4 = SetCheckpointCylinderHeight
  text13 = dataCollection4.checkpoint
  iterator = 50.0
  number13 = 100.0
  workingValue11 = 25.0
  localValue4(text13, iterator, number13, workingValue11)
end

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2, localValue3, localValue4) ===
function text2(localValue1, localValue2, localValue3, localValue4)
  local text13, iterator, number13, workingValue11, number14, number15, number, number2, stateFlag3
  text13 = CMG
  text13 = text13.requestEntitySpawn
  iterator = "truckjob_trailer"
  number13 = localValue1
  workingValue11 = localValue2
  text13(iterator, number13, workingValue11)
  text13 = CMG
  text13 = text13.spawnVehicle
  iterator = localValue1
  number13 = localValue2.x
  workingValue11 = localValue2.y
  number14 = localValue2.z
  number15 = localValue3
  number = false
  number2 = true
  stateFlag3 = true
  text13 = text13(iterator, number13, workingValue11, number14, number15, number, number2, stateFlag3)
  iterator = TriggerServerEvent
  number13 = "1e0bbaf6cd"
  workingValue11 = localValue1
  number14 = "trucking_job"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1e0bbaf6cd".
  iterator(number13, workingValue11, number14)
  iterator = NetworkGetEntityIsNetworked
  number13 = text13
  iterator = iterator(number13)
  if iterator then
    iterator = NetworkGetNetworkIdFromEntity
    number13 = text13
    iterator = iterator(number13)
    if iterator > 0 then
      number13 = TriggerServerEvent
      workingValue11 = "e32e549079"
      number14 = iterator
      number13(workingValue11, number14)
    end
  end
  if nil ~= localValue4 then
    iterator = 1
    number13 = 9
    workingValue11 = 1
    for number14 = iterator, number13, workingValue11 do
      number15 = SetVehicleExtra
      number = text13
      number2 = number14
      stateFlag3 = true
      number15(number, number2, stateFlag3)
    end
    iterator = SetVehicleExtra
    number13 = text13
    workingValue11 = localValue4
    number14 = false
    iterator(number13, workingValue11, number14)
  end
  iterator = SetTrailerLegsLowered
  iterator()
  return text13
end
workingValue4 = Citizen
workingValue4 = workingValue4.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, localValue3, localValue4, text13, iterator, number13, workingValue11, number14, number15, number
  while true do
    localValue1 = CMG
    localValue1 = localValue1.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    if 0 ~= localValue1 then
      localValue2 = pairs
      localValue3 = CMG
      localValue3 = localValue3.getAllVehicles
      localValue3, localValue4, text13, iterator, number13, workingValue11, number14, number15, number = localValue3()
      localValue2, localValue3, localValue4, text13 = localValue2(localValue3, localValue4, text13, iterator, number13, workingValue11, number14, number15, number)
      for iterator, number13 in localValue2, localValue3, localValue4, text13 do
        workingValue11 = DoesEntityExist
        number14 = number13
        workingValue11 = workingValue11(number14)
        if workingValue11 then
          workingValue11 = Entity
          number14 = number13
          workingValue11 = workingValue11(number14)
          workingValue11 = workingValue11.state
          workingValue11 = workingValue11.truckJob
          if workingValue11 then
            workingValue11 = SetEntityNoCollisionEntity
            number14 = number13
            number15 = localValue1
            number = false
            workingValue11(number14, number15, number)
            workingValue11 = SetEntityNoCollisionEntity
            number14 = localValue1
            number15 = number13
            number = false
            workingValue11(number14, number15, number)
          end
        end
      end
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 500
    localValue2(localValue3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
workingValue4(workingValue5)

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1, localValue2, localValue3) ===
function workingValue4(localValue1, localValue2, localValue3)
  local localValue4, text13, iterator, number13, workingValue11, number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4, stateFlag5
  localValue4 = tCMG
  localValue4 = localValue4.removeArea
  text13 = "trucking_spawn"
  localValue4(text13)
  localValue4 = rageUiOperation3
  localValue4 = #localValue4
  localValue4 = localValue4 + 1
  text13 = rageUiOperation3
  text13[localValue4] = true

  -- === HELPER FUNCTION (decompiler name: text13; parameters: none) ===
  function text13()
    local localValue12, localValue22, localValue32, dataCollection5
    localValue22 = localValue4
    localValue12 = rageUiOperation3
    localValue12 = localValue12[localValue22]
    if localValue12 then
      localValue12 = text2
      localValue22 = localValue2
      localValue32 = localValue1
      dataCollection5 = localValue3
      localValue12 = localValue12(localValue22, localValue32, dataCollection5)
      dataCollection4.trailer = localValue12
      localValue22 = localValue4
      localValue12 = rageUiOperation3
      localValue12[localValue22] = false
    end
  end

  -- === HELPER FUNCTION: iterator() ===
  function iterator()
    local localValue12, localValue22
  end

  -- === HELPER FUNCTION (decompiler name: number13; parameters: none) ===
  function number13()
    local localValue12, localValue22
  end
  workingValue11 = CMG
  workingValue11 = workingValue11.createArea
  number14 = "trucking_spawn"
  number15 = localValue1
  number = 106
  number2 = 6
  stateFlag3 = text13
  cmgOperation2 = iterator
  stateFlag4 = number13
  stateFlag5 = {}
  -- Beginner: Create an interaction area around a world position.
  workingValue11(number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4, stateFlag5)
  return localValue4
end
workingValue5 = RegisterNetEvent
text5 = "3216f44327"
-- Beginner: this function handles network event "3216f44327".

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: localValue1, localValue2) ===
function cmgOperation6(localValue1, localValue2)
  local localValue3, localValue4, text13, iterator, number13, workingValue11, number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4, stateFlag5, stateFlag6, number4, stateFlag7, cmgOperation5
  dataCollection = localValue1
  localValue1 = localValue1[1]
  localValue3 = rageUiOperation
  localValue4 = localValue1.trailers
  localValue3 = localValue3(localValue4)
  if not localValue2 then
    localValue4 = workingValue2
    text13 = localValue1.trailerSpawns
    text13 = text13.docks
    localValue4 = localValue4(text13)
    if localValue4 then
      text13 = notify
      iterator = "~y~Notice: Government regulations have limited trucking to 150 MPH"
      -- Beginner: Show a notification to the player.
      text13(iterator)
      text13 = GetEntityModel
      iterator = CMG
      iterator = iterator.getPlayerPed
      iterator, number13, workingValue11, number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4, stateFlag5, stateFlag6, number4, stateFlag7, cmgOperation5 = iterator()
      -- Beginner: result below is modelHash.
      text13 = text13(iterator, number13, workingValue11, number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4, stateFlag5, stateFlag6, number4, stateFlag7, cmgOperation5)
      if 1885233650 == text13 then
        text13 = CMG
        text13 = text13.loadCustomisationPreset
        iterator = "TruckerMale"
        text13(iterator)
      else
        text13 = GetEntityModel
        iterator = CMG
        iterator = iterator.getPlayerPed
        iterator, number13, workingValue11, number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4, stateFlag5, stateFlag6, number4, stateFlag7, cmgOperation5 = iterator()
        -- Beginner: result below is modelHash.
        text13 = text13(iterator, number13, workingValue11, number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4, stateFlag5, stateFlag6, number4, stateFlag7, cmgOperation5)
        if -1667301416 == text13 then
          text13 = CMG
          text13 = text13.loadCustomisationPreset
          iterator = "TruckerFemale"
          text13(iterator)
        else
          text13 = CMG
          text13 = text13.loadCustomisationPreset
          iterator = "TruckerMale"
          text13(iterator)
        end
      end
      text13 = text2
      iterator = localValue1.trailers
      iterator = iterator[localValue3]
      iterator = iterator[1]
      number13 = localValue4
      workingValue11 = localValue1.trailerSpawns
      workingValue11 = workingValue11.docks
      number14 = rageUiOperation2
      workingValue11 = workingValue11[number14]
      workingValue11 = workingValue11[1]
      number14 = localValue1.trailers
      number14 = number14[localValue3]
      number14 = number14[2]
      text13 = text13(iterator, number13, workingValue11, number14)
      dataCollection4.trailer = text13
      text13 = GetEntityCoords
      iterator = dataCollection4.trailer
      -- Beginner: result below is entityCoords.
      text13 = text13(iterator)
      iterator = AddBlipForCoord
      number13 = text13.x
      workingValue11 = text13.y
      number14 = text13.z
      -- Beginner: result below is blipHandle.
      iterator = iterator(number13, workingValue11, number14)
      dataCollection6.trailer = iterator
      iterator = SetBlipSprite
      number13 = dataCollection6.trailer
      workingValue11 = 479
      iterator(number13, workingValue11)
      iterator = SetBlipRoute
      number13 = dataCollection6.trailer
      workingValue11 = true
      iterator(number13, workingValue11)
      iterator = SetBlipAsShortRange
      number13 = dataCollection6.trailer
      workingValue11 = false
      iterator(number13, workingValue11)
      iterator = CreateCheckpoint
      number13 = number3
      workingValue11 = localValue4.x
      number14 = localValue4.y
      number15 = localValue4.z
      number15 = number15 - 1.0
      number = 0
      number2 = 0
      stateFlag3 = 0
      cmgOperation2 = 10.0
      stateFlag4 = 0
      stateFlag5 = 255
      stateFlag6 = 0
      number4 = 127
      stateFlag7 = 0
      -- Beginner: result below is checkpointHandle.
      iterator = iterator(number13, workingValue11, number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4, stateFlag5, stateFlag6, number4, stateFlag7)
      cmgOperation10.trailer = iterator
      iterator = SetCheckpointCylinderHeight
      number13 = cmgOperation10.trailer
      workingValue11 = 50.0
      number14 = 100.0
      number15 = 25.0
      iterator(number13, workingValue11, number14, number15)
      iterator = Citizen
      iterator = iterator.CreateThread

      -- === HELPER FUNCTION (decompiler name: number13; parameters: none) ===
      function number13()
        local localValue12, localValue22, localValue32
        while true do
          localValue12 = GetVehiclePedIsIn
          localValue22 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          localValue22 = localValue22()
          localValue32 = false
          -- Beginner: result below is currentVehicle.
          localValue12 = localValue12(localValue22, localValue32)
          if 0 ~= localValue12 then
            break
          end
          localValue12 = stateFlag
          if not localValue12 then
            break
          end
          localValue12 = drawNativeText
          localValue22 = "~g~Rent or buy a truck outside then pickup your trailer to complete the job."
          -- Beginner: Draw GTA-style text on screen.
          localValue12(localValue22)
          localValue12 = Wait
          localValue22 = 0
          localValue12(localValue22)
        end
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      iterator(number13)
      iterator = CreateScaleform
      number13 = 2
      workingValue11 = "~y~Job Started!"
      number14 = "Pick up your trailer outside!"
      iterator(number13, workingValue11, number14)
      iterator = true
      stateFlag = iterator
    else
      text13 = TriggerServerEvent
      iterator = "6f29153e97"
      number13 = "Job Cancelled!"
      workingValue11 = "No space for trailers outside!"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6f29153e97".
      text13(iterator, number13, workingValue11)
    end
  else
    localValue4 = rageUiOperation
    text13 = localValue1.trailerSpawns
    text13 = text13.pickup
    localValue4 = localValue4(text13)
    text13 = localValue1.trailerSpawns
    text13 = text13.pickup
    text13 = text13[localValue4]
    text13 = text13[2]
    iterator = workingValue4
    number13 = localValue1.trailerSpawns
    number13 = number13.pickup
    number13 = number13[localValue4]
    number13 = number13[2]
    workingValue11 = localValue1.trailers
    workingValue11 = workingValue11[localValue3]
    workingValue11 = workingValue11[1]
    number14 = localValue1.trailerSpawns
    number14 = number14.pickup
    number14 = number14[localValue4]
    number14 = number14[1]
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    iterator(number13, workingValue11, number14)
    iterator = localValue1.trailerSpawns
    iterator = iterator.pickup
    iterator = iterator[localValue4]
    iterator = iterator[2]
    number13 = AddBlipForCoord
    workingValue11 = iterator.x
    number14 = iterator.y
    number15 = iterator.z
    -- Beginner: result below is blipHandle.
    number13 = number13(workingValue11, number14, number15)
    dataCollection6.trailer = number13
    number13 = SetBlipSprite
    workingValue11 = dataCollection6.trailer
    number14 = 479
    number13(workingValue11, number14)
    number13 = SetBlipRoute
    workingValue11 = dataCollection6.trailer
    number14 = true
    number13(workingValue11, number14)
    number13 = SetBlipAsShortRange
    workingValue11 = dataCollection6.trailer
    number14 = false
    number13(workingValue11, number14)
    number13 = CreateCheckpoint
    workingValue11 = number3
    number14 = text13.x
    number15 = text13.y
    number = text13.z
    number = number - 1.0
    number2 = 0
    stateFlag3 = 0
    cmgOperation2 = 0
    stateFlag4 = 10.0
    stateFlag5 = 0
    stateFlag6 = 255
    number4 = 0
    stateFlag7 = 127
    cmgOperation5 = 0
    -- Beginner: result below is checkpointHandle.
    number13 = number13(workingValue11, number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4, stateFlag5, stateFlag6, number4, stateFlag7, cmgOperation5)
    cmgOperation10.trailer = number13
    number13 = SetCheckpointCylinderHeight
    workingValue11 = cmgOperation10.trailer
    number14 = 50.0
    number15 = 100.0
    number = 25.0
    number13(workingValue11, number14, number15, number)
    number13 = DeleteCheckpoint
    workingValue11 = dataCollection4.checkpoint
    number13(workingValue11)
    number13 = false
    stateFlag14 = number13
    number13 = Citizen
    number13 = number13.CreateThread

    -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
    function workingValue11()
      local localValue12, localValue22, localValue32
      while true do
        localValue12 = GetVehiclePedIsIn
        localValue22 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue22 = localValue22()
        localValue32 = false
        -- Beginner: result below is currentVehicle.
        localValue12 = localValue12(localValue22, localValue32)
        if 0 ~= localValue12 then
          break
        end
        localValue12 = stateFlag
        if not localValue12 then
          break
        end
        localValue12 = drawNativeText
        localValue22 = "~g~Rent or buy a truck outside then pickup your trailer to complete the job."
        -- Beginner: Draw GTA-style text on screen.
        localValue12(localValue22)
        localValue12 = Wait
        localValue22 = 0
        localValue12(localValue22)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    number13(workingValue11)
    number13 = CreateScaleform
    workingValue11 = 2
    number14 = "~y~Job Started!"
    number15 = "Pick up your trailer at the blip on the map!"
    number13(workingValue11, number14, number15)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3216f44327".
workingValue5(text5, cmgOperation6)
workingValue5 = RegisterNetEvent
text5 = "1374215996"
-- Beginner: this function handles network event "1374215996".

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
function cmgOperation6()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = TriggerServerEvent
  localValue2 = "881ad8757a"
  localValue3 = text
  localValue4 = true
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "881ad8757a".
  localValue1(localValue2, localValue3, localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1374215996".
workingValue5(text5, cmgOperation6)
workingValue5 = Citizen
workingValue5 = workingValue5.CreateThread

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, localValue3, localValue4, text13, iterator, number13, workingValue11
  while true do
    localValue1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    localValue2 = IsPedInAnyVehicle
    localValue3 = localValue1
    localValue4 = false
    localValue2 = localValue2(localValue3, localValue4)
    if localValue2 then
      localValue2 = stateFlag14
      if not localValue2 then
        localValue2 = GetVehiclePedIsIn
        localValue3 = localValue1
        localValue4 = false
        -- Beginner: result below is currentVehicle.
        localValue2 = localValue2(localValue3, localValue4)
        localValue3 = GetVehicleTrailerVehicle
        localValue4 = localValue2
        localValue3, localValue4 = localValue3(localValue4)
        text13 = IsVehicleAttachedToTrailer
        iterator = localValue2
        text13 = text13(iterator)
        if text13 then
          text13 = dataCollection4.trailer
          if localValue4 == text13 then
            text13 = true
            stateFlag14 = text13
            text13 = true
            rageUiOperation4 = text13
            text13 = CreateScaleform
            iterator = 2
            number13 = "~g~Trailer Attached!"
            workingValue11 = "Continue to your destination"
            text13(iterator, number13, workingValue11)
            text13 = SetBlipRoute
            iterator = dataCollection6.trailer
            number13 = false
            text13(iterator, number13)
            text13 = RemoveBlip
            iterator = dataCollection6.trailer
            text13(iterator)
            text13 = cmgOperation4
            text13()
          end
        end
      end
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 150
    localValue2(localValue3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
workingValue5(text5)

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2, localValue3) ===
function workingValue5(localValue1, localValue2, localValue3)
  local localValue4, text13, iterator, number13, workingValue11, number14, number15
  localValue4 = true
  text13 = Scaleform
  iterator = "MIDSIZED_MESSAGE"
  text13 = text13(iterator)
  iterator = text13.RunFunction
  number13 = "SHOW_SHARD_MIDSIZED_MESSAGE"
  workingValue11 = {}
  number14 = localValue2
  number15 = localValue3
  workingValue11[1] = number14
  workingValue11[2] = number15
  iterator(number13, workingValue11)
  iterator = Citizen
  iterator = iterator.CreateThread

  -- === HELPER FUNCTION (decompiler name: number13; parameters: none) ===
  function number13()
    local localValue12, localValue22
    while true do
      localValue12 = localValue4
      if not localValue12 then
        break
      end
      localValue12 = text13.Render2D
      localValue12()
      localValue12 = Citizen
      localValue12 = localValue12.Wait
      localValue22 = 0
      localValue12(localValue22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  iterator(number13)
  iterator = SetTimeout
  number13 = localValue1 * 1000

  -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
  function workingValue11()
    local localValue12, localValue22
    localValue12 = false
    localValue4 = localValue12
  end
  iterator(number13, workingValue11)
  return text13
end
CreateScaleform = workingValue5
workingValue5 = Citizen
workingValue5 = workingValue5.CreateThread

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, localValue3, localValue4, text13, iterator, number13
  while true do
    localValue1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    localValue2 = IsPedInAnyVehicle
    localValue3 = localValue1
    localValue4 = false
    localValue2 = localValue2(localValue3, localValue4)
    if localValue2 then
      localValue2 = GetEntityCoords
      localValue3 = dataCollection4.trailer
      -- Beginner: result below is entityCoords.
      localValue2 = localValue2(localValue3)
      localValue3 = GetVehiclePedIsIn
      localValue4 = localValue1
      text13 = false
      -- Beginner: result below is currentVehicle.
      localValue3 = localValue3(localValue4, text13)
      localValue4 = GetEntityCoords
      text13 = localValue3
      -- Beginner: result below is entityCoords.
      localValue4 = localValue4(text13)
      localValue4 = localValue2 - localValue4
      localValue4 = #localValue4
      text13 = 9.75
      if localValue4 <= text13 then
        localValue4 = IsControlPressed
        text13 = 0
        iterator = 74
        localValue4 = localValue4(text13, iterator)
        if not localValue4 then
          localValue4 = IsVehicleAttachedToTrailer
          text13 = localValue3
          localValue4 = localValue4(text13)
          if not localValue4 then
            localValue4 = rageUiOperation4
            if not localValue4 then
              localValue4 = AttachVehicleToTrailer
              text13 = localValue3
              iterator = dataCollection4.trailer
              number13 = 1.0
              localValue4(text13, iterator, number13)
            end
          end
        end
      end
    end
    localValue2 = Wait
    localValue3 = 1000
    localValue2(localValue3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
workingValue5(text5)
workingValue5 = Citizen
workingValue5 = workingValue5.CreateThread

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, localValue3, localValue4
  while true do
    localValue1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    localValue2 = IsPedInAnyVehicle
    localValue3 = localValue1
    localValue4 = false
    localValue2 = localValue2(localValue3, localValue4)
    if localValue2 then
      localValue2 = GetVehiclePedIsIn
      localValue3 = localValue1
      localValue4 = false
      -- Beginner: result below is currentVehicle.
      localValue2 = localValue2(localValue3, localValue4)
      localValue3 = IsVehicleAttachedToTrailer
      localValue4 = localValue2
      localValue3 = localValue3(localValue4)
      if not localValue3 then
        localValue3 = rageUiOperation4
        if localValue3 then
          localValue3 = false
          rageUiOperation4 = localValue3
        end
      end
    end
    localValue2 = Wait
    localValue3 = 1500
    localValue2(localValue3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
workingValue5(text5)
workingValue5 = tCMG

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2, localValue3, localValue4, text13, iterator, number13
  localValue2 = CMG
  localValue2 = localValue2.getObjectId
  localValue3 = localValue1
  localValue4 = "isTrailerAttached"
  localValue2 = localValue2(localValue3, localValue4)
  localValue3 = GetVehicleTrailerVehicle
  localValue4 = localValue2
  localValue3, localValue4 = localValue3(localValue4)
  text13 = 0
  if localValue3 and 0 ~= localValue4 then
    iterator = NetworkGetNetworkIdFromEntity
    number13 = localValue4
    iterator = iterator(number13)
    text13 = iterator
  end
  iterator = localValue3
  number13 = text13
  return iterator, number13
end
workingValue5.isTrailerAttached = text5
workingValue5 = Citizen
workingValue5 = workingValue5.CreateThread

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, localValue3
  while true do
    localValue1 = stateFlag
    if localValue1 then
      localValue1 = dataCollection4.vehicle
      if localValue1 then
        localValue1 = GetVehicleEngineHealth
        localValue2 = dataCollection4.vehicle
        localValue1 = localValue1(localValue2)
        if not (localValue1 < 0.0) then
          localValue1 = DoesEntityExist
          localValue2 = dataCollection4.vehicle
          localValue1 = localValue1(localValue2)
          if localValue1 then
            goto continueAtStep21
          end
        end
        localValue1 = TriggerServerEvent
        localValue2 = "6f29153e97"
        localValue3 = "Truck was destroyed!"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6f29153e97".
        localValue1(localValue2, localValue3)
      end
      ::continueAtStep21::
      localValue1 = globalInPrison
      if localValue1 then
        localValue1 = TriggerServerEvent
        localValue2 = "6f29153e97"
        localValue3 = "You were sent to jail!"
        localValue1(localValue2, localValue3)
      end
    end
    localValue1 = Wait
    localValue2 = 1000
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
workingValue5(text5)
workingValue5 = RegisterNetEvent
text5 = "0db0e450dd"
-- Beginner: this function handles network event "0db0e450dd".

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: localValue1, localValue2) ===
function cmgOperation6(localValue1, localValue2)
  local localValue3, localValue4, text13, iterator, number13
  localValue3 = CMG
  localValue3 = localValue3.hasClientGroup
  localValue4 = "Trucking"
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue3 = DeleteEntity
    localValue4 = dataCollection4.trailer
    -- Beginner: Delete a GTA entity.
    localValue3(localValue4)
    localValue3 = DeleteCheckpoint
    localValue4 = cmgOperation10.trailer
    localValue3(localValue4)
    localValue3 = false
    stateFlag = localValue3
    localValue3 = {}
    dataCollection = localValue3
    localValue3 = true
    stateFlag2 = localValue3
    localValue3 = false
    rageUiOperation4 = localValue3
    localValue3 = false
    stateFlag14 = localValue3
    localValue3 = 1
    localValue4 = rageUiOperation3
    localValue4 = #localValue4
    text13 = 1
    for iterator = localValue3, localValue4, text13 do
      number13 = rageUiOperation3
      number13[iterator] = false
    end
    localValue3 = CreateScaleform
    localValue4 = 2
    text13 = "~r~"
    iterator = localValue1
    text13 = text13 .. iterator
    if not text13 then
      text13 = "JOB ENDED!"
    end
    iterator = localValue2
    localValue3(localValue4, text13, iterator)
    localValue3 = SetBlipRoute
    localValue4 = dataCollection6.job
    text13 = false
    localValue3(localValue4, text13)
    localValue3 = RemoveBlip
    localValue4 = dataCollection6.job
    localValue3(localValue4)
    localValue3 = RemoveBlip
    localValue4 = dataCollection6.trailer
    localValue3(localValue4)
    dataCollection4.vehicle = nil
    dataCollection4.trailer = nil
    localValue3 = dataCollection4.checkpoint
    if localValue3 then
      localValue3 = DeleteCheckpoint
      localValue4 = dataCollection4.checkpoint
      localValue3(localValue4)
      dataCollection4.checkpoint = nil
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0db0e450dd".
workingValue5(text5, cmgOperation6)
workingValue5 = RegisterNetEvent
text5 = "052449cb64"
-- Beginner: this function handles network event "052449cb64".

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: localValue1) ===
function cmgOperation6(localValue1)
  local localValue2
  stateFlag2 = localValue1
end
workingValue5(text5, cmgOperation6)
workingValue5 = Citizen
workingValue5 = workingValue5.CreateThread
-- Beginner: this function handles network event "052449cb64".

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, localValue3, localValue4, text13, iterator
  while true do
    localValue1 = stateFlag2
    if localValue1 then
      break
    end
    localValue1 = IsEntityAVehicle
    localValue2 = dataCollection4.trailer
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue1 = localValue1()
      localValue2 = GetEntityCoords
      localValue3 = localValue1
      -- Beginner: result below is entityCoords.
      localValue2 = localValue2(localValue3)
      localValue3 = GetEntityCoords
      localValue4 = dataCollection4.trailer
      -- Beginner: result below is entityCoords.
      localValue3 = localValue3(localValue4)
      localValue4 = localValue2 - localValue3
      localValue4 = #localValue4
      text13 = 450.0
      if localValue4 > text13 then
        localValue4 = TriggerServerEvent
        text13 = "6f29153e97"
        iterator = "You left the trailer behind"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6f29153e97".
        localValue4(text13, iterator)
      end
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 1000
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
workingValue5(text5)
workingValue5 = RegisterNetEvent
text5 = "6d852a57fc"
-- Beginner: this function handles network event "6d852a57fc".

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: localValue1) ===
function cmgOperation6(localValue1)
  local localValue2
  rageUiOperation2 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6d852a57fc".
workingValue5(text5, cmgOperation6)
workingValue5 = {}
text5 = "trailers"
cmgOperation6 = "trflat"
cmgOperation7 = "heli1"
text6 = "tr4"
workingValue9 = "tr3"
text7 = "docktrailer"
text8 = "bvttanker"
cmgOperation8 = "tanker"
cmgOperation9 = "tanker2"
text9 = "trailers3"
number6 = "trailers2"
number7 = "ArmyTrailer2"
number8 = "TrailerLogs"
number9 = "militaire1"
text10 = "ArmyTanker"
stateFlag8 = "docktrailer"
stateFlag9 = "tr3"
text11 = "tr4"
text12 = "bvttanker"
workingValue5[1] = text5
workingValue5[2] = cmgOperation6
workingValue5[3] = cmgOperation7
workingValue5[4] = text6
workingValue5[5] = workingValue9
workingValue5[6] = text7
workingValue5[7] = text8
workingValue5[8] = cmgOperation8
workingValue5[9] = cmgOperation9
workingValue5[10] = text9
workingValue5[11] = number6
workingValue5[12] = number7
workingValue5[13] = number8
workingValue5[14] = number9
workingValue5[15] = text10
workingValue5[16] = stateFlag8
workingValue5[17] = stateFlag9
workingValue5[18] = text11
workingValue5[19] = text12

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, localValue3, localValue4, text13, iterator, number13, workingValue11, number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4
  localValue1 = 0
  localValue2 = {}
  localValue3 = 1
  localValue4 = 19
  text13 = 1
  for iterator = localValue3, localValue4, text13 do
    number13 = CMG
    number13 = number13.spawnVehicle
    workingValue11 = workingValue5
    workingValue11 = workingValue11[iterator]
    number14 = 896.7 + localValue1
    number15 = -3153.494
    number = 5.892334
    number2 = 177.1
    stateFlag3 = false
    cmgOperation2 = false
    stateFlag4 = false
    number13 = number13(workingValue11, number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4)
    workingValue11 = FreezeEntityPosition
    number14 = number13
    number15 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    workingValue11(number14, number15)
    workingValue11 = table
    workingValue11 = workingValue11.add
    number14 = localValue2
    number15 = number13
    workingValue11(number14, number15)
    localValue1 = localValue1 + 4
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
function cmgOperation6()
  local localValue1, localValue2, localValue3, localValue4, text13, iterator, number13, workingValue11, number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4
  localValue1 = TriggerServerEvent
  localValue2 = "54143cc8e2"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "54143cc8e2".
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.hideAllDisplays
  localValue2 = "trucking_intro"
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = CMG
  localValue2 = localValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue2 = localValue2()
  localValue3 = SetEntityCoords
  localValue4 = localValue1
  text13 = 856.022
  iterator = -3188.11
  number13 = 4.05127
  workingValue11 = false
  number14 = false
  number15 = false
  number = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue3(localValue4, text13, iterator, number13, workingValue11, number14, number15, number)
  localValue3 = SetFocusPosAndVel
  localValue4 = 862.5825
  text13 = -3195.493
  iterator = 6.002151
  number13 = 0.0
  workingValue11 = 0.0
  number14 = 0.0
  localValue3(localValue4, text13, iterator, number13, workingValue11, number14)
  localValue3 = CreateCameraWithParams
  localValue4 = "DEFAULT_SCRIPTED_CAMERA"
  text13 = 866.1363
  iterator = -3191.314
  number13 = 7.14502
  workingValue11 = 0.0
  number14 = 0.0
  number15 = 0.0
  number = 65.0
  number2 = false
  stateFlag3 = 2
  localValue3 = localValue3(localValue4, text13, iterator, number13, workingValue11, number14, number15, number, number2, stateFlag3)
  localValue4 = PointCamAtCoord
  text13 = localValue3
  iterator = 862.5825
  number13 = -3195.493
  workingValue11 = 6.002151
  localValue4(text13, iterator, number13, workingValue11)
  localValue4 = SetCamActive
  text13 = localValue3
  iterator = true
  localValue4(text13, iterator)
  localValue4 = RenderScriptCams
  text13 = true
  iterator = true
  number13 = 0
  workingValue11 = true
  number14 = false
  localValue4(text13, iterator, number13, workingValue11, number14)
  localValue4 = CreateCameraWithParams
  text13 = "DEFAULT_SCRIPTED_CAMERA"
  iterator = 862.5231
  number13 = -3190.259
  workingValue11 = 7.14502
  number14 = 0.0
  number15 = 0.0
  number = 0.0
  number2 = 65.0
  stateFlag3 = false
  cmgOperation2 = 2
  localValue4 = localValue4(text13, iterator, number13, workingValue11, number14, number15, number, number2, stateFlag3, cmgOperation2)
  text13 = PointCamAtCoord
  iterator = localValue4
  number13 = 862.5825
  workingValue11 = -3195.493
  number14 = 6.002151
  text13(iterator, number13, workingValue11, number14)
  text13 = SetCamActiveWithInterp
  iterator = localValue4
  number13 = localValue3
  workingValue11 = 10000
  number14 = 5
  number15 = 5
  text13(iterator, number13, workingValue11, number14, number15)
  text13 = drawNativeNotification
  iterator = "This is where you will start your trucking job. You can also come here to end the shift."
  -- Beginner: Show a GTA-style notification/help prompt.
  text13(iterator)
  text13 = Wait
  iterator = 10000
  text13(iterator)
  text13 = vector3
  iterator = 901.9878
  number13 = -3185.827
  workingValue11 = 5.898679
  text13 = text13(iterator, number13, workingValue11)
  iterator = PointCamAtCoord
  number13 = localValue3
  workingValue11 = text13.x
  number14 = text13.y
  number15 = text13.z
  iterator(number13, workingValue11, number14, number15)
  iterator = vector3
  number13 = 901.9878
  workingValue11 = -3185.827
  number14 = 5.898679
  iterator = iterator(number13, workingValue11, number14)
  text13 = iterator
  iterator = PointCamAtCoord
  number13 = localValue4
  workingValue11 = text13.x
  number14 = text13.y
  number15 = text13.z
  iterator(number13, workingValue11, number14, number15)
  iterator = vector3
  number13 = 897.033
  workingValue11 = -3189.376
  number14 = 5.892334
  iterator = iterator(number13, workingValue11, number14)
  text13 = iterator
  iterator = SetCamCoord
  number13 = localValue3
  workingValue11 = text13.x
  number14 = text13.y
  number15 = text13.z
  iterator(number13, workingValue11, number14, number15)
  iterator = vector3
  number13 = 904.6154
  workingValue11 = -3189.428
  number14 = 5.892334
  iterator = iterator(number13, workingValue11, number14)
  text13 = iterator
  iterator = SetCamCoord
  number13 = localValue4
  workingValue11 = text13.x
  number14 = text13.y
  number15 = text13.z
  iterator(number13, workingValue11, number14, number15)
  iterator = SetCamActiveWithInterp
  number13 = localValue4
  workingValue11 = localValue3
  number14 = 10000
  number15 = 5
  number = 5
  iterator(number13, workingValue11, number14, number15, number)
  iterator = drawNativeNotification
  number13 = "Come here to rent or buy yourself a brand new truck to complete the trucking job with."
  -- Beginner: Show a GTA-style notification/help prompt.
  iterator(number13)
  iterator = Wait
  number13 = 10000
  iterator(number13)
  iterator = text5
  iterator = iterator()
  number13 = vector3
  workingValue11 = 934.8527
  number14 = -3154.536
  number15 = 5.892334
  number13 = number13(workingValue11, number14, number15)
  text13 = number13
  number13 = PointCamAtCoord
  workingValue11 = localValue3
  number14 = text13.x
  number15 = text13.y
  number = text13.z
  number13(workingValue11, number14, number15, number)
  number13 = vector3
  workingValue11 = 934.8527
  number14 = -3154.536
  number15 = 5.892334
  number13 = number13(workingValue11, number14, number15)
  text13 = number13
  number13 = PointCamAtCoord
  workingValue11 = localValue4
  number14 = text13.x
  number15 = text13.y
  number = text13.z
  number13(workingValue11, number14, number15, number)
  number13 = vector3
  workingValue11 = 886.589
  number14 = -3165.547
  number15 = 9.892334
  number13 = number13(workingValue11, number14, number15)
  text13 = number13
  number13 = SetCamCoord
  workingValue11 = localValue3
  number14 = text13.x
  number15 = text13.y
  number = text13.z
  number13(workingValue11, number14, number15, number)
  number13 = vector3
  workingValue11 = 975.2308
  number14 = -3166.602
  number15 = 9.892334
  number13 = number13(workingValue11, number14, number15)
  text13 = number13
  number13 = SetCamCoord
  workingValue11 = localValue4
  number14 = text13.x
  number15 = text13.y
  number = text13.z
  number13(workingValue11, number14, number15, number)
  number13 = SetCamActiveWithInterp
  workingValue11 = localValue4
  number14 = localValue3
  number15 = 25000
  number = 5
  number2 = 5
  number13(workingValue11, number14, number15, number, number2)
  number13 = drawNativeNotification
  workingValue11 = "You will be driving a wide selection of trailers around the city of CMG!"
  -- Beginner: Show a GTA-style notification/help prompt.
  number13(workingValue11)
  number13 = Wait
  workingValue11 = 25000
  number13(workingValue11)
  number13 = 1
  workingValue11 = #iterator
  number14 = 1
  for number15 = number13, workingValue11, number14 do
    number = DeleteEntity
    number2 = iterator[number15]
    -- Beginner: Delete a GTA entity.
    number(number2)
  end
  number13 = DestroyCam
  workingValue11 = localValue3
  number14 = false
  number13(workingValue11, number14)
  number13 = DestroyCam
  workingValue11 = localValue4
  number14 = false
  number13(workingValue11, number14)
  number13 = RenderScriptCams
  workingValue11 = false
  number14 = true
  number15 = 3000
  number = true
  number2 = false
  number13(workingValue11, number14, number15, number, number2)
  number13 = ClearFocus
  number13()
  number13 = FreezeEntityPosition
  workingValue11 = localValue1
  number14 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  number13(workingValue11, number14)
  number13 = TriggerServerEvent
  workingValue11 = "54143cc8e2"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "54143cc8e2".
  number13(workingValue11)
  number13 = SetEntityCoords
  workingValue11 = localValue1
  number14 = localValue2.x
  number15 = localValue2.y
  number = localValue2.z
  number2 = false
  stateFlag3 = false
  cmgOperation2 = false
  stateFlag4 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  number13(workingValue11, number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4)
  number13 = CMG
  number13 = number13.showAllDisplays
  workingValue11 = "trucking_intro"
  number13(workingValue11)
end
workingValue3 = cmgOperation6
cmgOperation6 = RegisterCommand
cmgOperation7 = "setdonecutscene"
-- Beginner: this function is the command handler for "setdonecutscene".

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1, localValue2) ===
function text6(localValue1, localValue2)
  local localValue3, localValue4, text13, iterator, number13
  localValue3 = CMG
  localValue3 = localValue3.getClientUserId
  -- Beginner: result below is userId.
  localValue3 = localValue3()
  if localValue3 then
    localValue4 = CMG
    localValue4 = localValue4.isDeveloper
    text13 = localValue3
    localValue4 = localValue4(text13)
    if localValue4 then
      localValue4 = SetResourceKvpInt
      text13 = "cmg_trucking_done_cutscene"
      iterator = tonumber
      number13 = localValue2[1]
      iterator = iterator(number13)
      if not iterator then
        iterator = 0
      end
      localValue4(text13, iterator)
      localValue4 = print
      text13 = "set cmg_trucking_done_cutscene to "
      iterator = localValue2[1]
      text13 = text13 .. iterator
      localValue4(text13)
    end
  end
end
workingValue9 = false
-- Beginner: Register a chat/console command. Event/command: "setdonecutscene".
cmgOperation6(cmgOperation7, text6, workingValue9)
cmgOperation6 = vector3
cmgOperation7 = 949.37835693359
text6 = -3185.8244628906
workingValue9 = 5.901008605957
cmgOperation6 = cmgOperation6(cmgOperation7, text6, workingValue9)
cmgOperation7 = vector3
text6 = 949.20098876953
workingValue9 = -3154.0915527344
text7 = 5.9010066986084
cmgOperation7 = cmgOperation7(text6, workingValue9, text7)
text6 = {}

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2, localValue3, localValue4, text13, iterator, number13, workingValue11, number14, number15, number, number2
  localValue1 = CMG
  localValue1 = localValue1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue1 = localValue1()
  localValue2 = 25.0
  localValue3 = 0
  localValue4 = pairs
  text13 = CMG
  text13 = text13.getAllVehicles
  text13, iterator, number13, workingValue11, number14, number15, number, number2 = text13()
  localValue4, text13, iterator, number13 = localValue4(text13, iterator, number13, workingValue11, number14, number15, number, number2)
  for workingValue11, number14 in localValue4, text13, iterator, number13 do
    number15 = GetVehicleType
    number = number14
    number15 = number15(number)
    if "trailer" == number15 then
      number15 = GetEntityCoords
      number = number14
      number2 = true
      -- Beginner: result below is entityCoords.
      number15 = number15(number, number2)
      number15 = localValue1 - number15
      number15 = #number15
      if localValue2 > number15 then
        localValue2 = number15
        localValue3 = number14
      end
    end
  end
  if 0 == localValue3 then
    localValue4 = notify
    text13 = "~r~No nearby trailer found."
    -- Beginner: Show a notification to the player.
    localValue4(text13)
    return
  end
  localValue4 = AttachVehicleToTrailer
  text13 = CMG
  text13 = text13.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  text13 = text13()
  iterator = localValue3
  number13 = 1.0
  localValue4(text13, iterator, number13)
  localValue4 = notify
  text13 = "~g~Attached closest trailer."
  -- Beginner: Show a notification to the player.
  localValue4(text13)
end

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3, localValue4, text13, iterator, number13, workingValue11, number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4, stateFlag5, stateFlag6, number4, stateFlag7, cmgOperation5, text3
  localValue1 = 0
  localValue2 = pairs
  localValue3 = cmgOperation.trucks
  localValue2, localValue3, localValue4, text13 = localValue2(localValue3)
  for iterator, number13 in localValue2, localValue3, localValue4, text13 do
    workingValue11 = number13.custom
    if not workingValue11 then
      workingValue11 = CMG
      workingValue11 = workingValue11.spawnVehicle
      number14 = iterator
      number15 = cmgOperation6.x
      number = localValue1 * -4.1
      number15 = number15 + number
      number = cmgOperation6.y
      number2 = cmgOperation6.z
      stateFlag3 = 180.0
      cmgOperation2 = false
      stateFlag4 = false
      stateFlag5 = false
      workingValue11 = workingValue11(number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4, stateFlag5)
      number14 = table
      number14 = number14.insert
      number15 = text6
      number = workingValue11
      number14(number15, number)
      localValue1 = localValue1 + 1
    end
  end
  localValue2 = {}
  localValue3 = pairs
  localValue4 = cmgOperation.jobs
  localValue3, localValue4, text13, iterator = localValue3(localValue4)
  for number13, workingValue11 in localValue3, localValue4, text13, iterator do
    number14 = pairs
    number15 = workingValue11
    number14, number15, number, number2 = number14(number15)
    for stateFlag3, cmgOperation2 in number14, number15, number, number2 do
      stateFlag4 = type
      stateFlag5 = stateFlag3
      stateFlag4 = stateFlag4(stateFlag5)
      if "number" == stateFlag4 then
        stateFlag4 = pairs
        stateFlag5 = cmgOperation2.trailers
        stateFlag4, stateFlag5, stateFlag6, number4 = stateFlag4(stateFlag5)
        for stateFlag7, cmgOperation5 in stateFlag4, stateFlag5, stateFlag6, number4 do
          text3 = cmgOperation5[1]
          localValue2[text3] = true
        end
      end
    end
  end
  localValue1 = 0
  localValue3 = pairs
  localValue4 = localValue2
  localValue3, localValue4, text13, iterator = localValue3(localValue4)
  for number13 in localValue3, localValue4, text13, iterator do
    workingValue11 = CMG
    workingValue11 = workingValue11.spawnVehicle
    number14 = number13
    number15 = cmgOperation7.x
    number = localValue1 * -4.1
    number15 = number15 + number
    number = cmgOperation7.y
    number2 = cmgOperation7.z
    stateFlag3 = 180.0
    cmgOperation2 = false
    stateFlag4 = false
    stateFlag5 = false
    workingValue11 = workingValue11(number14, number15, number, number2, stateFlag3, cmgOperation2, stateFlag4, stateFlag5)
    number14 = table
    number14 = number14.insert
    number15 = text6
    number = workingValue11
    number14(number15, number)
    localValue1 = localValue1 + 1
  end
end

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2, localValue3, localValue4, text13, iterator, number13, workingValue11
  localValue1 = pairs
  localValue2 = text6
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for text13, iterator in localValue1, localValue2, localValue3, localValue4 do
    number13 = DeleteEntity
    workingValue11 = iterator
    -- Beginner: Delete a GTA entity.
    number13(workingValue11)
  end
  localValue1 = table
  localValue1 = localValue1.clear
  localValue2 = text6
  localValue1(localValue2)
end
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.registerDevMenuItems
cmgOperation9 = "Trucking"

-- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
function text9()
  local localValue1, localValue2, localValue3, localValue4, text13
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Attach Closest Trailer"
  localValue3 = ""
  localValue4 = true

  -- === HELPER FUNCTION (decompiler name: text13; parameters: localValue12, localValue22, localValue32) ===
  function text13(localValue12, localValue22, localValue32)
    local dataCollection5
    if localValue32 then
      dataCollection5 = workingValue9
      dataCollection5()
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, localValue4, text13)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Spawn All Trucks & Trailers"
  localValue3 = ""
  localValue4 = true

  -- === HELPER FUNCTION (decompiler name: text13; parameters: localValue12, localValue22, localValue32) ===
  function text13(localValue12, localValue22, localValue32)
    local dataCollection5
    if localValue32 then
      dataCollection5 = text7
      dataCollection5()
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, localValue4, text13)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Delete All Trucks & Trailers"
  localValue3 = ""
  localValue4 = true

  -- === HELPER FUNCTION (decompiler name: text13; parameters: localValue12, localValue22, localValue32) ===
  function text13(localValue12, localValue22, localValue32)
    local dataCollection5
    if localValue32 then
      dataCollection5 = text8
      dataCollection5()
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, localValue4, text13)
end
cmgOperation8(cmgOperation9, text9)
