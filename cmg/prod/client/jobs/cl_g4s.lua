--[[
    LEVEL 1 BEGINNER GUIDE — G4s
    =================================

    File: cmg/prod/client/jobs/cl_g4s.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: civilian/job gameplay, specifically the G4s feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 52
      * Background threads: 0
      * Always-running loops: 16
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
local stateFlag, number5, number10, createVector3, stateFlag23, number16, stateFlag27, stateFlag29, workingValue11, workingValue12, dataCollection, text2, dataCollection2, stateFlag3, dataCollection3, stateFlag6, stateFlag8, number2, number4, text3, dataCollection4, dataCollection5, dataCollection6, number7, workingValue3, workingValue4, text4, text5, rageUiOperation, text6, text7, rageUiOperation2, rageUiOperation3, text8, text9, backgroundThread, number12, number13, stateFlag21, stateFlag22, rageUiOperation4, rageUiOperation5, workingValue7, workingValue8, text11, eventHandler, text12, workingValue9, workingValue10
stateFlag = false
number5 = 0
number10 = 0
createVector3 = vector3
stateFlag23 = -710.4659
number16 = 269.6835
stateFlag27 = 83.13184
createVector3 = createVector3(stateFlag23, number16, stateFlag27)
stateFlag23 = false
number16 = 0
stateFlag27 = false
stateFlag29 = false
workingValue11 = nil
workingValue12 = nil
dataCollection = {}
text2 = "g4svan"
dataCollection2 = {}
stateFlag3 = false
dataCollection3 = {}
stateFlag6 = false
stateFlag8 = false
number2 = 0
number4 = 0
text3 = ""
dataCollection4 = {}
dataCollection4.hackingEngaged = false
dataCollection4.netId = 0
dataCollection4.entity = 0
dataCollection4.src = 0
dataCollection4.successful = false
dataCollection4.hackingCooldown = false
dataCollection4.awaitingResponse = false
dataCollection5 = {}
dataCollection5.x = -709.134
dataCollection5.y = 277.1604
dataCollection5.z = 83.89014
dataCollection5.heading = 288.89
dataCollection6 = {}
dataCollection6.active = false
dataCollection6.handle = 0
number7 = 0

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30
  localValue1 = math
  localValue1 = localValue1.ceil
  localValue2 = CMG
  localValue2 = localValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue2 = localValue2()
  localValue3 = GetEntityCoords
  localValue4 = number5
  -- Beginner: result below is entityCoords.
  localValue3 = localValue3(localValue4)
  localValue2 = localValue2 - localValue3
  localValue2 = #localValue2
  localValue2 = localValue2 / 10
  localValue1 = localValue1(localValue2)
  localValue1 = 500 * localValue1
  localValue2 = stateFlag29
  if localValue2 then
    localValue2 = RenderScriptCams
    localValue3 = false
    localValue4 = true
    localValue5 = localValue1
    stateFlag25 = true
    stateFlag28 = false
    localValue2(localValue3, localValue4, localValue5, stateFlag25, stateFlag28)
    localValue2 = ClearTimecycleModifier
    localValue2()
    localValue2 = DoesCamExist
    localValue3 = number7
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = DestroyCam
      localValue3 = number7
      localValue4 = false
      localValue2(localValue3, localValue4)
    end
    localValue2 = false
    stateFlag29 = localValue2
  else
    localValue2 = CreateCam
    localValue3 = "DEFAULT_SCRIPTED_CAMERA"
    localValue4 = true
    -- Beginner: result below is cameraHandle.
    localValue2 = localValue2(localValue3, localValue4)
    number7 = localValue2
    localValue2 = AttachCamToEntity
    localValue3 = number7
    localValue4 = number5
    localValue5 = 2.5
    stateFlag25 = 5.0
    stateFlag28 = 2.0
    stateFlag30 = true
    localValue2(localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30)
    localValue2 = PointCamAtEntity
    localValue3 = number7
    localValue4 = number5
    localValue5 = 1
    stateFlag25 = 1
    stateFlag28 = 1
    stateFlag30 = true
    localValue2(localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30)
    localValue2 = RenderScriptCams
    localValue3 = true
    localValue4 = true
    localValue5 = localValue1
    stateFlag25 = true
    stateFlag28 = true
    localValue2(localValue3, localValue4, localValue5, stateFlag25, stateFlag28)
    localValue2 = Wait
    localValue3 = localValue1
    localValue2(localValue3)
    localValue2 = SetTimecycleModifier
    localValue3 = "scanline_cam_cheap"
    localValue2(localValue3)
    localValue2 = SetTimecycleModifierStrength
    localValue3 = 3.0
    localValue2(localValue3)
    localValue2 = true
    stateFlag29 = localValue2
  end
end
workingValue4 = RMenu
workingValue4 = workingValue4.Add
text4 = "g4s"
text5 = "shiftHandler"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text6 = ""
text7 = "Security Company"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
text8 = "cmg_g4sjob"
text9 = "cmg_g4sjob"
rageUiOperation, text6, text7, rageUiOperation2, rageUiOperation3, text8, text9, backgroundThread, number12, number13, stateFlag21, stateFlag22, rageUiOperation4, rageUiOperation5, workingValue7, workingValue8, text11, eventHandler, text12, workingValue9, workingValue10 = rageUiOperation(text6, text7, rageUiOperation2, rageUiOperation3, text8, text9)
workingValue4(text4, text5, rageUiOperation, text6, text7, rageUiOperation2, rageUiOperation3, text8, text9, backgroundThread, number12, number13, stateFlag21, stateFlag22, rageUiOperation4, rageUiOperation5, workingValue7, workingValue8, text11, eventHandler, text12, workingValue9, workingValue10)
workingValue4 = RMenu
text4 = workingValue4
workingValue4 = workingValue4.Get
text5 = "g4s"
rageUiOperation = "shiftHandler"
-- Beginner: result below is menu.
workingValue4 = workingValue4(text4, text5, rageUiOperation)
text4 = workingValue4
workingValue4 = workingValue4.SetSubtitle
text5 = "Security Company"
workingValue4(text4, text5)
workingValue4 = RMenu
text4 = workingValue4
workingValue4 = workingValue4.Get
text5 = "g4s"
rageUiOperation = "shiftHandler"
-- Beginner: result below is menu.
workingValue4 = workingValue4(text4, text5, rageUiOperation)
workingValue4.Closable = true
workingValue4 = RMenu
workingValue4 = workingValue4.Add
text4 = "g4s"
text5 = "main"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text6 = ""
text7 = "Security Company"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
text8 = "cmg_g4sjob"
text9 = "cmg_g4sjob"
rageUiOperation, text6, text7, rageUiOperation2, rageUiOperation3, text8, text9, backgroundThread, number12, number13, stateFlag21, stateFlag22, rageUiOperation4, rageUiOperation5, workingValue7, workingValue8, text11, eventHandler, text12, workingValue9, workingValue10 = rageUiOperation(text6, text7, rageUiOperation2, rageUiOperation3, text8, text9)
workingValue4(text4, text5, rageUiOperation, text6, text7, rageUiOperation2, rageUiOperation3, text8, text9, backgroundThread, number12, number13, stateFlag21, stateFlag22, rageUiOperation4, rageUiOperation5, workingValue7, workingValue8, text11, eventHandler, text12, workingValue9, workingValue10)
workingValue4 = RMenu
text4 = workingValue4
workingValue4 = workingValue4.Get
text5 = "g4s"
rageUiOperation = "main"
-- Beginner: result below is menu.
workingValue4 = workingValue4(text4, text5, rageUiOperation)
text4 = workingValue4
workingValue4 = workingValue4.SetSubtitle
text5 = "Security Company"
workingValue4(text4, text5)
workingValue4 = RMenu
text4 = workingValue4
workingValue4 = workingValue4.Get
text5 = "g4s"
rageUiOperation = "main"
-- Beginner: result below is menu.
workingValue4 = workingValue4(text4, text5, rageUiOperation)
workingValue4.Closable = true
workingValue4 = TriggerEvent
text4 = "chat:addSuggestion"
text5 = "/securejob"
rageUiOperation = "Toggles your Cash Driver menu."
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
workingValue4(text4, text5, rageUiOperation)
workingValue4 = tCMG
workingValue4 = workingValue4.addMarker
text4 = createVector3.x
text5 = createVector3.y
rageUiOperation = createVector3.z
text6 = 1.2
text7 = 1.2
rageUiOperation2 = 1.2
rageUiOperation3 = 0
text8 = 255
text9 = 125
backgroundThread = 125
number12 = 50
number13 = 0
stateFlag21 = true
stateFlag22 = true
-- Beginner: Create a world marker.
workingValue4(text4, text5, rageUiOperation, text6, text7, rageUiOperation2, rageUiOperation3, text8, text9, backgroundThread, number12, number13, stateFlag21, stateFlag22)
workingValue4 = tCMG
workingValue4 = workingValue4.addBlip
text4 = createVector3.x
text5 = createVector3.y
rageUiOperation = createVector3.z
text6 = 457
text7 = 18
rageUiOperation2 = "Cash Driver Depot"
rageUiOperation3 = 1.0
text8 = false
-- Beginner: Create a minimap blip.
workingValue4(text4, text5, rageUiOperation, text6, text7, rageUiOperation2, rageUiOperation3, text8)

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "g4s"
  localValue5 = "shiftHandler"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue1(localValue2, localValue3)
end

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "g4s"
  localValue5 = "shiftHandler"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = false
  localValue1(localValue2, localValue3)
end

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2
end
rageUiOperation = CMG
rageUiOperation = rageUiOperation.createArea
text6 = "g4sDepot_"
text7 = createVector3
rageUiOperation2 = 1.5
rageUiOperation3 = 6
text8 = workingValue4
text9 = text4
backgroundThread = text5
-- Beginner: Create an interaction area around a world position.
rageUiOperation(text6, text7, rageUiOperation2, rageUiOperation3, text8, text9, backgroundThread)

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: none) ===
function rageUiOperation()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31
  localValue1 = CMG
  localValue1 = localValue1.DrawText
  localValue2 = 0.011
  localValue3 = 0.55
  localValue4 = "Job Number: "
  localValue5 = dataCollection.totalJobs
  localValue5 = localValue5 + 1
  localValue4 = localValue4 .. localValue5
  localValue5 = 0.5
  stateFlag25 = 6
  localValue1(localValue2, localValue3, localValue4, localValue5, stateFlag25)
  localValue1 = DrawRect
  localValue2 = 0.175
  localValue3 = 0.51
  localValue4 = 0.005
  localValue5 = 0.17
  stateFlag25 = 0
  stateFlag28 = 121
  stateFlag30 = 235
  stateFlag31 = 255
  localValue1(localValue2, localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31)
end

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag25
  localValue1 = dataCollection.jobActive
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.DrawText
    localValue2 = 0.011
    localValue3 = 0.51
    localValue4 = "Destination: "
    localValue5 = dataCollection.depositName
    localValue4 = localValue4 .. localValue5
    localValue5 = 0.5
    stateFlag25 = 4
    localValue1(localValue2, localValue3, localValue4, localValue5, stateFlag25)
    localValue1 = rageUiOperation
    -- Beginner: Create an interaction area around a world position.
    localValue1()
  end
end

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag25
  localValue1 = dataCollection.jobActive
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.DrawText
    localValue2 = 0.011
    localValue3 = 0.47
    localValue4 = "Current Job: "
    localValue5 = dataCollection.collectionName
    localValue4 = localValue4 .. localValue5
    localValue5 = 0.5
    stateFlag25 = 4
    localValue1(localValue2, localValue3, localValue4, localValue5, stateFlag25)
    localValue1 = AddTextComponentSubstringPlayerName
    localValue2 = "Current Job: "
    localValue3 = dataCollection.collectionName
    localValue2 = localValue2 .. localValue3
    localValue1(localValue2)
  else
    localValue1 = CMG
    localValue1 = localValue1.DrawText
    localValue2 = 0.011
    localValue3 = 0.47
    localValue4 = "Pending"
    localValue5 = 4
    localValue1(localValue2, localValue3, localValue4, localValue5)
  end
  localValue1 = text6
  localValue1()
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
function rageUiOperation2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2
  localValue1 = CMG
  localValue1 = localValue1.DrawText
  localValue2 = 0.011
  localValue3 = 0.43
  localValue4 = "Cash Driver"
  localValue5 = 0.7
  stateFlag25 = 4
  stateFlag28 = 1
  stateFlag30 = {}
  stateFlag31 = 0
  number19 = 121
  text = 235
  stateFlag2 = 255
  stateFlag30[1] = stateFlag31
  stateFlag30[2] = number19
  stateFlag30[3] = text
  stateFlag30[4] = stateFlag2
  stateFlag31 = true
  localValue1(localValue2, localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31)
  localValue1 = DrawRect
  localValue2 = 0.0
  localValue3 = 0.51
  localValue4 = 0.35
  localValue5 = 0.17
  stateFlag25 = 0
  stateFlag28 = 0
  stateFlag30 = 0
  stateFlag31 = 150
  localValue1(localValue2, localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31)
  localValue1 = text7
  localValue1()
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function rageUiOperation3(localValue1, localValue2, localValue3, localValue4, localValue5)
  local stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2
  if "g4slogo" == localValue1 then
    stateFlag25 = HasStreamedTextureDictLoaded
    stateFlag28 = "g4slogo"
    stateFlag25 = stateFlag25(stateFlag28)
    if not stateFlag25 then
      stateFlag25 = RequestStreamedTextureDict
      stateFlag28 = "g4slogo"
      stateFlag30 = true
      stateFlag25(stateFlag28, stateFlag30)
      while true do
        stateFlag25 = HasStreamedTextureDictLoaded
        stateFlag28 = "g4slogo"
        stateFlag25 = stateFlag25(stateFlag28)
        if stateFlag25 then
          break
        end
        stateFlag25 = Wait
        stateFlag28 = 0
        stateFlag25(stateFlag28)
      end
    end
  end
  stateFlag25 = BeginTextCommandThefeedPost
  stateFlag28 = "STRING"
  stateFlag25(stateFlag28)
  stateFlag25 = AddTextComponentSubstringPlayerName
  stateFlag28 = localValue3
  stateFlag25(stateFlag28)
  stateFlag25 = EndTextCommandThefeedPostMessagetext
  stateFlag28 = localValue1
  stateFlag30 = localValue2
  stateFlag31 = false
  number19 = 0
  text = localValue4
  stateFlag2 = localValue5
  stateFlag25(stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2)
  stateFlag25 = true
  stateFlag28 = false
  stateFlag30 = EndTextCommandThefeedPostTicker
  stateFlag31 = stateFlag28
  number19 = stateFlag25
  stateFlag30(stateFlag31, number19)
  stateFlag30 = PlaySoundFrontend
  stateFlag31 = -1
  number19 = "CHECKPOINT_NORMAL"
  text = "HUD_MINI_GAME_SOUNDSET"
  stateFlag2 = true
  stateFlag30(stateFlag31, number19, text, stateFlag2)
end

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2, number, stateFlag4, stateFlag5, stateFlag7, stateFlag9, number3, stateFlag10
  localValue1 = dataCollection6.active
  if localValue1 then
    localValue1 = DeleteObject
    localValue2 = dataCollection6.handle
    localValue1(localValue2)
    dataCollection6.active = false
  else
    localValue1 = CMG
    localValue1 = localValue1.loadModel
    localValue2 = 355444045
    localValue1 = localValue1(localValue2)
    if not localValue1 then
      return
    end
    localValue2 = CMG
    localValue2 = localValue2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue3 = CMG
    localValue3 = localValue3.requestEntitySpawn
    localValue4 = "g4s_cashbox"
    localValue3(localValue4)
    localValue3 = CMG
    localValue3 = localValue3.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue3 = localValue3()
    localValue4 = CreateObject
    localValue5 = localValue1
    stateFlag25 = localValue3.x
    stateFlag28 = localValue3.y
    stateFlag30 = localValue3.z
    stateFlag31 = true
    number19 = true
    text = true
    -- Beginner: result below is objectEntity.
    localValue4 = localValue4(localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text)
    dataCollection6.handle = localValue4
    while true do
      localValue4 = DoesEntityExist
      localValue5 = dataCollection6.handle
      localValue4 = localValue4(localValue5)
      if localValue4 then
        break
      end
      localValue4 = Wait
      localValue5 = 0
      localValue4(localValue5)
    end
    dataCollection6.active = true
    localValue4 = AttachEntityToEntity
    localValue5 = dataCollection6.handle
    stateFlag25 = localValue2
    stateFlag28 = GetPedBoneIndex
    stateFlag30 = localValue2
    stateFlag31 = 57005
    stateFlag28 = stateFlag28(stateFlag30, stateFlag31)
    stateFlag30 = 0.5
    stateFlag31 = 0
    number19 = 0.03
    text = -95.0
    stateFlag2 = 0
    number = 90.0
    stateFlag4 = true
    stateFlag5 = true
    stateFlag7 = false
    stateFlag9 = true
    number3 = 1
    stateFlag10 = true
    -- Beginner: Attach one entity to another entity.
    localValue4(localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2, number, stateFlag4, stateFlag5, stateFlag7, stateFlag9, number3, stateFlag10)
    localValue4 = SetModelAsNoLongerNeeded
    localValue5 = localValue1
    localValue4(localValue5)
  end
end

-- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
function text9()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag25, stateFlag28
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue1 = localValue1()
  if 0 ~= localValue1 and nil ~= localValue1 then
    localValue2 = number5
    if nil ~= localValue2 then
      localValue2 = number5
      if 0 ~= localValue2 then
        localValue2 = number5
        if localValue1 ~= localValue2 then
          localValue2 = true
          stateFlag3 = localValue2
          localValue2 = rageUiOperation3
          localValue3 = "g4slogo"
          localValue4 = "g4slogo"
          localValue5 = "Please ensure you are in your private security vehicle."
          stateFlag25 = "Cash Driver Security"
          stateFlag28 = "Human Resources"
          localValue2(localValue3, localValue4, localValue5, stateFlag25, stateFlag28)
          localValue2 = SetTimeout
          localValue3 = 15000

          -- === HELPER FUNCTION: localValue4() ===
          function localValue4()
            local vehicle, cmgOperation, stateFlag17
            vehicle = GetVehiclePedIsIn
            cmgOperation = CMG
            cmgOperation = cmgOperation.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            cmgOperation = cmgOperation()
            stateFlag17 = false
            -- Beginner: result below is currentVehicle.
            vehicle = vehicle(cmgOperation, stateFlag17)
            localValue1 = vehicle
            vehicle = localValue1
            if 0 ~= vehicle then
              vehicle = localValue1
              cmgOperation = number5
              if vehicle ~= cmgOperation then
                vehicle = TriggerServerEvent
                cmgOperation = "2ee6b18cbd"
                stateFlag17 = false
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2ee6b18cbd".
                vehicle(cmgOperation, stateFlag17)
                vehicle = tCMG
                vehicle = vehicle.removeBlip
                cmgOperation = workingValue11
                vehicle(cmgOperation)
                vehicle = tCMG
                vehicle = vehicle.removeBlip
                cmgOperation = workingValue12
                vehicle(cmgOperation)
                vehicle = ClearGpsPlayerWaypoint
                vehicle()
              end
            end
            vehicle = false
            stateFlag3 = vehicle
          end
          localValue2(localValue3, localValue4)
        end
      end
    end
  end
end
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: number12; parameters: none) ===
function number12()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2, number, stateFlag4, stateFlag5, stateFlag7, stateFlag9, number3, stateFlag10, stateFlag11, number6, stateFlag12, workingValue, workingValue2, stateFlag13
  while true do
    localValue1 = stateFlag
    if localValue1 then
      localValue1 = stateFlag8
      if not localValue1 then
        localValue1 = rageUiOperation2
        localValue1()
      end
      localValue1 = dataCollection.jobActive
      if localValue1 then
        localValue1 = dataCollection.collected
        if not localValue1 then
          localValue1 = stateFlag6
          if localValue1 then
            localValue1 = DrawMarker
            localValue2 = 29
            localValue3 = dataCollection.collectionCoords
            localValue3 = localValue3.x
            localValue4 = dataCollection.collectionCoords
            localValue4 = localValue4.y
            localValue5 = dataCollection.collectionCoords
            localValue5 = localValue5.z
            stateFlag25 = 0.0
            stateFlag28 = 0.0
            stateFlag30 = 0.0
            stateFlag31 = 0.0
            number19 = 0.0
            text = 0.0
            stateFlag2 = 1.5
            number = 1.5
            stateFlag4 = 1.5
            stateFlag5 = 0
            stateFlag7 = 221
            stateFlag9 = 255
            number3 = 36
            stateFlag10 = false
            stateFlag11 = true
            number6 = 0
            stateFlag12 = false
            workingValue = nil
            workingValue2 = nil
            stateFlag13 = false
            localValue1(localValue2, localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2, number, stateFlag4, stateFlag5, stateFlag7, stateFlag9, number3, stateFlag10, stateFlag11, number6, stateFlag12, workingValue, workingValue2, stateFlag13)
          else
            localValue1 = DrawMarker
            localValue2 = 29
            localValue3 = dataCollection.collectionCoords
            localValue3 = localValue3.x
            localValue4 = dataCollection.collectionCoords
            localValue4 = localValue4.y
            localValue5 = dataCollection.collectionCoords
            localValue5 = localValue5.z
            stateFlag25 = 0.0
            stateFlag28 = 0.0
            stateFlag30 = 0.0
            stateFlag31 = 0.0
            number19 = 0.0
            text = 0.0
            stateFlag2 = 1.5
            number = 1.5
            stateFlag4 = 1.5
            stateFlag5 = 0
            stateFlag7 = 255
            stateFlag9 = 36
            number3 = 36
            stateFlag10 = false
            stateFlag11 = true
            number6 = 0
            stateFlag12 = false
            workingValue = nil
            workingValue2 = nil
            stateFlag13 = false
            localValue1(localValue2, localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2, number, stateFlag4, stateFlag5, stateFlag7, stateFlag9, number3, stateFlag10, stateFlag11, number6, stateFlag12, workingValue, workingValue2, stateFlag13)
          end
          localValue1 = dataCollection.collecting
          if localValue1 then
            localValue1 = dataCollection6.active
            if not localValue1 then
              localValue1 = text8
              -- Beginner: Create a minimap blip.
              localValue1()
            end
          else
            localValue1 = RageUI
            localValue1 = localValue1.Text
            localValue2 = {}
            localValue3 = "Drive to ~b~"
            localValue4 = dataCollection.collectionName
            localValue3 = localValue3 .. localValue4
            localValue2.message = localValue3
            localValue1(localValue2)
            localValue1 = stateFlag3
            if not localValue1 then
              localValue1 = text9
              localValue1()
            end
          end
        else
          localValue1 = dataCollection.deposited
          if not localValue1 then
            localValue1 = dataCollection.depositing
            if localValue1 then
              localValue1 = dataCollection6.active
              if not localValue1 then
                localValue1 = text8
                -- Beginner: Create a minimap blip.
                localValue1()
              end
            else
              localValue1 = RageUI
              localValue1 = localValue1.Text
              localValue2 = {}
              localValue3 = "Drive to ~b~"
              localValue4 = dataCollection.depositName
              localValue3 = localValue3 .. localValue4
              localValue2.message = localValue3
              localValue1(localValue2)
              localValue1 = stateFlag3
              if not localValue1 then
                localValue1 = text9
                localValue1()
              end
            end
            localValue1 = DrawMarker
            localValue2 = 29
            localValue3 = dataCollection.depositCoords
            localValue3 = localValue3.x
            localValue4 = dataCollection.depositCoords
            localValue4 = localValue4.y
            localValue5 = dataCollection.depositCoords
            localValue5 = localValue5.z
            stateFlag25 = 0.0
            stateFlag28 = 0.0
            stateFlag30 = 0.0
            stateFlag31 = 0.0
            number19 = 0.0
            text = 0.0
            stateFlag2 = 1.5
            number = 1.5
            stateFlag4 = 1.5
            stateFlag5 = 255
            stateFlag7 = 36
            stateFlag9 = 36
            number3 = 50
            stateFlag10 = true
            stateFlag11 = true
            number6 = 2
            stateFlag12 = false
            workingValue = nil
            workingValue2 = nil
            stateFlag13 = false
            localValue1(localValue2, localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2, number, stateFlag4, stateFlag5, stateFlag7, stateFlag9, number3, stateFlag10, stateFlag11, number6, stateFlag12, workingValue, workingValue2, stateFlag13)
          end
        end
      end
      localValue1 = stateFlag29
      if localValue1 then
        localValue1 = RageUI
        localValue1 = localValue1.Visible
        localValue2 = RMenu
        localValue3 = localValue2
        localValue2 = localValue2.Get
        localValue4 = "g4s"
        localValue5 = "shiftHandler"
        -- Beginner: result below is menu.
        localValue2 = localValue2(localValue3, localValue4, localValue5)
        localValue3 = true
        localValue1(localValue2, localValue3)
      else
      end
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(number12)
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: number12; parameters: none) ===
function number12()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2, number, stateFlag4, stateFlag5, stateFlag7, stateFlag9, number3, stateFlag10, stateFlag11, number6, stateFlag12, workingValue, workingValue2, stateFlag13, stateFlag14, number8, number9, stateFlag15, stateFlag16, stateFlag18, number11, stateFlag19, workingValue5, workingValue6, stateFlag20
  while true do
    localValue1 = dataCollection4.hackingEngaged
    if not localValue1 then
      localValue1 = stateFlag
      if not localValue1 then
        localValue1 = dataCollection4.awaitingResponse
        if not localValue1 then
          localValue1 = table
          localValue1 = localValue1.count
          localValue2 = dataCollection3
          -- Beginner: result below is count.
          localValue1 = localValue1(localValue2)
          if localValue1 > 0 then
            localValue1 = CMG
            localValue1 = localValue1.getPlayerVehicle
            -- Beginner: result below is currentVehicle.
            localValue1 = localValue1()
            if 0 == localValue1 then
              localValue1 = pairs
              localValue2 = dataCollection3
              localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
              for localValue5, stateFlag25 in localValue1, localValue2, localValue3, localValue4 do
                stateFlag28 = stateFlag25[3]
                stateFlag30 = stateFlag25[2]
                stateFlag31 = stateFlag25[1]
                number19 = table
                number19 = number19.has
                text = dataCollection2
                stateFlag2 = stateFlag31
                number19 = number19(text, stateFlag2)
                if not number19 then
                  number19 = DoesEntityExist
                  text = stateFlag30
                  number19 = number19(text)
                  if number19 then
                    goto continueAtStep43
                  end
                end
                number19 = dataCollection3
                number19[localValue5] = nil
                goto continueAtStep144
                ::continueAtStep43::
                number19 = IsVehicleStopped
                text = stateFlag30
                number19 = number19(text)
                if number19 then
                  number19 = CMG
                  number19 = number19.getPlayerCoords
                  -- Beginner: result below is playerCoords.
                  number19 = number19()
                  text = GetEntityCoords
                  stateFlag2 = stateFlag30
                  -- Beginner: result below is entityCoords.
                  text = text(stateFlag2)
                  number19 = number19 - text
                  number19 = #number19
                  text = GetOffsetFromEntityInWorldCoords
                  stateFlag2 = number5
                  number = 0.0
                  stateFlag4 = -6.0
                  stateFlag5 = 0.0
                  text = text(stateFlag2, number, stateFlag4, stateFlag5)
                  if number19 <= 11.0 then
                    stateFlag2 = DrawMarker
                    number = 29
                    stateFlag4 = text.x
                    stateFlag5 = text.y
                    stateFlag7 = text.z
                    stateFlag7 = stateFlag7 + 0.5
                    stateFlag9 = 0.0
                    number3 = 0.0
                    stateFlag10 = 0.0
                    stateFlag11 = 0.0
                    number6 = 0.0
                    stateFlag12 = 0.0
                    workingValue = 1.5
                    workingValue2 = 1.5
                    stateFlag13 = 1.5
                    stateFlag14 = 255
                    number8 = 36
                    number9 = 36
                    stateFlag15 = 50
                    stateFlag16 = true
                    stateFlag18 = false
                    number11 = 2
                    stateFlag19 = false
                    workingValue5 = nil
                    workingValue6 = nil
                    stateFlag20 = false
                    stateFlag2(number, stateFlag4, stateFlag5, stateFlag7, stateFlag9, number3, stateFlag10, stateFlag11, number6, stateFlag12, workingValue, workingValue2, stateFlag13, stateFlag14, number8, number9, stateFlag15, stateFlag16, stateFlag18, number11, stateFlag19, workingValue5, workingValue6, stateFlag20)
                    stateFlag2 = RageUI
                    stateFlag2 = stateFlag2.Text
                    number = {}
                    number.message = "~b~Cash Driver~w~: Press ENTER to hack."
                    stateFlag2(number)
                    stateFlag2 = IsControlJustPressed
                    number = 1
                    stateFlag4 = 18
                    stateFlag2 = stateFlag2(number, stateFlag4)
                    if stateFlag2 then
                      dataCollection4.netId = stateFlag28
                      dataCollection4.entity = stateFlag30
                      dataCollection4.src = stateFlag31
                      stateFlag2 = TriggerServerEvent
                      number = "370aa47158"
                      stateFlag4 = stateFlag28
                      stateFlag5 = stateFlag31
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "370aa47158".
                      stateFlag2(number, stateFlag4, stateFlag5)
                      dataCollection4.awaitingResponse = true
                      break
                    end
                  elseif number19 <= 35.0 then
                    stateFlag2 = DrawMarker
                    number = 29
                    stateFlag4 = text.x
                    stateFlag5 = text.y
                    stateFlag7 = text.z
                    stateFlag7 = stateFlag7 + 0.5
                    stateFlag9 = 0.0
                    number3 = 0.0
                    stateFlag10 = 0.0
                    stateFlag11 = 0.0
                    number6 = 0.0
                    stateFlag12 = 0.0
                    workingValue = 1.5
                    workingValue2 = 1.5
                    stateFlag13 = 1.5
                    stateFlag14 = 255
                    number8 = 36
                    number9 = 36
                    stateFlag15 = 50
                    stateFlag16 = true
                    stateFlag18 = false
                    number11 = 2
                    stateFlag19 = false
                    workingValue5 = nil
                    workingValue6 = nil
                    stateFlag20 = false
                    stateFlag2(number, stateFlag4, stateFlag5, stateFlag7, stateFlag9, number3, stateFlag10, stateFlag11, number6, stateFlag12, workingValue, workingValue2, stateFlag13, stateFlag14, number8, number9, stateFlag15, stateFlag16, stateFlag18, number11, stateFlag19, workingValue5, workingValue6, stateFlag20)
                  end
                end
                ::continueAtStep144::
              end
            end
          end
        end
      end
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(number12)
backgroundThread = nil
number12 = nil
number13 = 2
stateFlag21 = "HONGKONG"

-- === HELPER FUNCTION (decompiler name: stateFlag22; parameters: none) ===
function stateFlag22()
  local localValue1, localValue2
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local vehicle, cmgOperation, stateFlag17, number14, stateFlag24, number17, number18

    -- === HELPER FUNCTION: vehicle(localValue12) ===
    function vehicle(localValue12)
      local localValue22, localValue32, text10, number15
      localValue22 = RequestScaleformMovieInteractive
      localValue32 = localValue12
      localValue22 = localValue22(localValue32)
      backgroundThread = localValue22
      while true do
        localValue22 = HasScaleformMovieLoaded
        localValue32 = backgroundThread
        localValue22 = localValue22(localValue32)
        if localValue22 then
          break
        end
        localValue22 = Citizen
        localValue22 = localValue22.Wait
        localValue32 = 0
        localValue22(localValue32)
      end
      localValue22 = BeginScaleformMovieMethod
      localValue32 = backgroundThread
      text10 = "SET_LABELS"
      localValue22(localValue32, text10)
      localValue22 = _ENV
      localValue32 = "ScaleformMovieMethodAddParamTextureNameString"
      localValue22 = localValue22[localValue32]
      localValue32 = "Local Disk (C:)"
      localValue22(localValue32)
      localValue22 = _ENV
      localValue32 = "ScaleformMovieMethodAddParamTextureNameString"
      localValue22 = localValue22[localValue32]
      localValue32 = "Cash Driver Network"
      localValue22(localValue32)
      localValue22 = _ENV
      localValue32 = "ScaleformMovieMethodAddParamTextureNameString"
      localValue22 = localValue22[localValue32]
      localValue32 = "External Device (E:)"
      localValue22(localValue32)
      localValue22 = _ENV
      localValue32 = "ScaleformMovieMethodAddParamTextureNameString"
      localValue22 = localValue22[localValue32]
      localValue32 = "HackConnect.exe"
      localValue22(localValue32)
      localValue22 = _ENV
      localValue32 = "ScaleformMovieMethodAddParamTextureNameString"
      localValue22 = localValue22[localValue32]
      localValue32 = "DriverHack.exe"
      localValue22(localValue32)
      localValue22 = EndScaleformMovieMethod
      localValue22()
      localValue22 = BeginScaleformMovieMethod
      localValue32 = backgroundThread
      text10 = "SET_BACKGROUND"
      localValue22(localValue32, text10)
      localValue22 = ScaleformMovieMethodAddParamInt
      localValue32 = math
      localValue32 = localValue32.random
      text10 = 1
      number15 = 6
      localValue32, text10, number15 = localValue32(text10, number15)
      localValue22(localValue32, text10, number15)
      localValue22 = EndScaleformMovieMethod
      localValue22()
      localValue22 = BeginScaleformMovieMethod
      localValue32 = backgroundThread
      text10 = "ADD_PROGRAM"
      localValue22(localValue32, text10)
      localValue22 = ScaleformMovieMethodAddParamFloat
      localValue32 = 1.0
      localValue22(localValue32)
      localValue22 = ScaleformMovieMethodAddParamFloat
      localValue32 = 4.0
      localValue22(localValue32)
      localValue22 = _ENV
      localValue32 = "ScaleformMovieMethodAddParamTextureNameString"
      localValue22 = localValue22[localValue32]
      localValue32 = "Cash Driver Control Panel"
      localValue22(localValue32)
      localValue22 = EndScaleformMovieMethod
      localValue22()
      localValue22 = BeginScaleformMovieMethod
      localValue32 = backgroundThread
      text10 = "ADD_PROGRAM"
      localValue22(localValue32, text10)
      localValue22 = ScaleformMovieMethodAddParamFloat
      localValue32 = 6.0
      localValue22(localValue32)
      localValue22 = ScaleformMovieMethodAddParamFloat
      localValue32 = 6.0
      localValue22(localValue32)
      localValue22 = _ENV
      localValue32 = "ScaleformMovieMethodAddParamTextureNameString"
      localValue22 = localValue22[localValue32]
      localValue32 = "Power Off"
      localValue22(localValue32)
      localValue22 = EndScaleformMovieMethod
      localValue22()
      localValue22 = BeginScaleformMovieMethod
      localValue32 = backgroundThread
      text10 = "SET_COLUMN_SPEED"
      localValue22(localValue32, text10)
      localValue22 = ScaleformMovieMethodAddParamInt
      localValue32 = 0
      localValue22(localValue32)
      localValue22 = ScaleformMovieMethodAddParamInt
      localValue32 = 255
      localValue22(localValue32)
      localValue22 = EndScaleformMovieMethod
      localValue22()
      localValue22 = BeginScaleformMovieMethod
      localValue32 = backgroundThread
      text10 = "SET_COLUMN_SPEED"
      localValue22(localValue32, text10)
      localValue22 = ScaleformMovieMethodAddParamInt
      localValue32 = 1
      localValue22(localValue32)
      localValue22 = ScaleformMovieMethodAddParamInt
      localValue32 = 255
      localValue22(localValue32)
      localValue22 = EndScaleformMovieMethod
      localValue22()
      localValue22 = BeginScaleformMovieMethod
      localValue32 = backgroundThread
      text10 = "SET_COLUMN_SPEED"
      localValue22(localValue32, text10)
      localValue22 = ScaleformMovieMethodAddParamInt
      localValue32 = 2
      localValue22(localValue32)
      localValue22 = ScaleformMovieMethodAddParamInt
      localValue32 = 255
      localValue22(localValue32)
      localValue22 = EndScaleformMovieMethod
      localValue22()
      localValue22 = BeginScaleformMovieMethod
      localValue32 = backgroundThread
      text10 = "SET_COLUMN_SPEED"
      localValue22(localValue32, text10)
      localValue22 = ScaleformMovieMethodAddParamInt
      localValue32 = 3
      localValue22(localValue32)
      localValue22 = ScaleformMovieMethodAddParamInt
      localValue32 = 255
      localValue22(localValue32)
      localValue22 = EndScaleformMovieMethod
      localValue22()
      localValue22 = BeginScaleformMovieMethod
      localValue32 = backgroundThread
      text10 = "SET_COLUMN_SPEED"
      localValue22(localValue32, text10)
      localValue22 = ScaleformMovieMethodAddParamInt
      localValue32 = 4
      localValue22(localValue32)
      localValue22 = ScaleformMovieMethodAddParamInt
      localValue32 = 255
      localValue22(localValue32)
      localValue22 = EndScaleformMovieMethod
      localValue22()
      localValue22 = BeginScaleformMovieMethod
      localValue32 = backgroundThread
      text10 = "SET_COLUMN_SPEED"
      localValue22(localValue32, text10)
      localValue22 = ScaleformMovieMethodAddParamInt
      localValue32 = 5
      localValue22(localValue32)
      localValue22 = ScaleformMovieMethodAddParamInt
      localValue32 = 255
      localValue22(localValue32)
      localValue22 = EndScaleformMovieMethod
      localValue22()
      localValue22 = BeginScaleformMovieMethod
      localValue32 = backgroundThread
      text10 = "SET_COLUMN_SPEED"
      localValue22(localValue32, text10)
      localValue22 = ScaleformMovieMethodAddParamInt
      localValue32 = 6
      localValue22(localValue32)
      localValue22 = ScaleformMovieMethodAddParamInt
      localValue32 = 255
      localValue22(localValue32)
      localValue22 = EndScaleformMovieMethod
      localValue22()
      localValue22 = BeginScaleformMovieMethod
      localValue32 = backgroundThread
      text10 = "SET_COLUMN_SPEED"
      localValue22(localValue32, text10)
      localValue22 = ScaleformMovieMethodAddParamInt
      localValue32 = 7
      localValue22(localValue32)
      localValue22 = ScaleformMovieMethodAddParamInt
      localValue32 = 255
      localValue22(localValue32)
      localValue22 = EndScaleformMovieMethod
      localValue22()
      localValue22 = backgroundThread
      return localValue22
    end
    Initialize = vehicle
    vehicle = Initialize
    cmgOperation = "HACKING_PC"
    vehicle = vehicle(cmgOperation)
    backgroundThread = vehicle
    while true do
      vehicle = DrawScaleformMovieFullscreen
      cmgOperation = backgroundThread
      stateFlag17 = 255
      number14 = 255
      stateFlag24 = 255
      number17 = 255
      number18 = 0
      vehicle(cmgOperation, stateFlag17, number14, stateFlag24, number17, number18)
      vehicle = BeginScaleformMovieMethod
      cmgOperation = backgroundThread
      stateFlag17 = "SET_CURSOR"
      vehicle(cmgOperation, stateFlag17)
      vehicle = ScaleformMovieMethodAddParamFloat
      cmgOperation = GetControlNormal
      stateFlag17 = 0
      number14 = 239
      cmgOperation, stateFlag17, number14, stateFlag24, number17, number18 = cmgOperation(stateFlag17, number14)
      vehicle(cmgOperation, stateFlag17, number14, stateFlag24, number17, number18)
      vehicle = ScaleformMovieMethodAddParamFloat
      cmgOperation = GetControlNormal
      stateFlag17 = 0
      number14 = 240
      cmgOperation, stateFlag17, number14, stateFlag24, number17, number18 = cmgOperation(stateFlag17, number14)
      vehicle(cmgOperation, stateFlag17, number14, stateFlag24, number17, number18)
      vehicle = EndScaleformMovieMethod
      vehicle()
      vehicle = IsDisabledControlJustPressed
      cmgOperation = 0
      stateFlag17 = 24
      vehicle = vehicle(cmgOperation, stateFlag17)
      if vehicle then
        vehicle = BeginScaleformMovieMethod
        cmgOperation = backgroundThread
        stateFlag17 = "SET_INPUT_EVENT_SELECT"
        vehicle(cmgOperation, stateFlag17)
        vehicle = EndScaleformMovieMethodReturnValue
        vehicle = vehicle()
        number12 = vehicle
        vehicle = PlaySoundFrontend
        cmgOperation = -1
        stateFlag17 = "HACKING_CLICK"
        number14 = ""
        stateFlag24 = true
        vehicle(cmgOperation, stateFlag17, number14, stateFlag24)
      else
        vehicle = IsDisabledControlJustPressed
        cmgOperation = 0
        stateFlag17 = 25
        vehicle = vehicle(cmgOperation, stateFlag17)
        if vehicle then
          vehicle = BeginScaleformMovieMethod
          cmgOperation = backgroundThread
          stateFlag17 = "SET_INPUT_EVENT_BACK"
          vehicle(cmgOperation, stateFlag17)
          vehicle = EndScaleformMovieMethod
          vehicle()
          vehicle = PlaySoundFrontend
          cmgOperation = -1
          stateFlag17 = "HACKING_CLICK"
          number14 = ""
          stateFlag24 = true
          vehicle(cmgOperation, stateFlag17, number14, stateFlag24)
        end
      end
      cmgOperation = dataCollection4.netId
      vehicle = dataCollection3
      vehicle = vehicle[cmgOperation]
      if nil ~= vehicle then
        vehicle = dataCollection4.hackingEngaged
        if vehicle then
          goto continueAtStep88
        end
      end
      vehicle = SetScaleformMovieAsNoLongerNeeded
      cmgOperation = backgroundThread
      vehicle(cmgOperation)
      vehicle = 0
      number13 = vehicle
      vehicle = Wait
      cmgOperation = 2000
      vehicle(cmgOperation)
      do break end
      ::continueAtStep88::
      vehicle = Citizen
      vehicle = vehicle.Wait
      cmgOperation = 0
      vehicle(cmgOperation)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
end
rageUiOperation4 = RegisterNetEvent
rageUiOperation5 = "c508e140c0"
-- Beginner: this function handles network event "c508e140c0".

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue7(localValue1, localValue2, localValue3, localValue4)
  local localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2, number, stateFlag4, stateFlag5, stateFlag7, stateFlag9, number3, stateFlag10, stateFlag11, number6
  if localValue4 then
    dataCollection4.hackingEngaged = true
    dataCollection4.awaitingResponse = false
    stateFlag21 = localValue3
    localValue5 = 2
    number13 = localValue5
    localValue5 = PlaySoundFrontend
    stateFlag25 = -1
    stateFlag28 = "5s_To_Event_Start_Countdown"
    stateFlag30 = "GTAO_FM_Events_Soundset"
    stateFlag31 = true
    localValue5(stateFlag25, stateFlag28, stateFlag30, stateFlag31)
    localValue5 = stateFlag22
    localValue5()
    localValue5 = FreezeEntityPosition
    stateFlag25 = CMG
    stateFlag25 = stateFlag25.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    stateFlag25 = stateFlag25()
    stateFlag28 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue5(stateFlag25, stateFlag28)
    localValue5 = CMG
    localValue5 = localValue5.setWeapon
    stateFlag25 = CMG
    stateFlag25 = stateFlag25.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    stateFlag25 = stateFlag25()
    stateFlag28 = -1569615261
    stateFlag30 = true
    localValue5(stateFlag25, stateFlag28, stateFlag30)
    localValue5 = CMG
    localValue5 = localValue5.loadModel
    stateFlag25 = -1585232418
    localValue5 = localValue5(stateFlag25)
    if not localValue5 then
      return
    end
    stateFlag25 = CMG
    stateFlag25 = stateFlag25.requestEntitySpawn
    stateFlag28 = "g4s_hack_tablet"
    stateFlag25(stateFlag28)
    stateFlag25 = CreateObject
    stateFlag28 = localValue5
    stateFlag30 = 0
    stateFlag31 = 0
    number19 = 0
    text = true
    stateFlag2 = true
    number = true
    -- Beginner: result below is objectEntity.
    stateFlag25 = stateFlag25(stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2, number)
    number2 = stateFlag25
    stateFlag25 = AttachEntityToEntity
    stateFlag28 = number2
    stateFlag30 = CMG
    stateFlag30 = stateFlag30.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    stateFlag30 = stateFlag30()
    stateFlag31 = GetPedBoneIndex
    number19 = CMG
    number19 = number19.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    number19 = number19()
    text = 57005
    stateFlag31 = stateFlag31(number19, text)
    number19 = 0.17
    text = 0.1
    stateFlag2 = -0.13
    number = 24.0
    stateFlag4 = 180.0
    stateFlag5 = 0.0
    stateFlag7 = true
    stateFlag9 = true
    number3 = false
    stateFlag10 = true
    stateFlag11 = 1
    number6 = true
    -- Beginner: Attach one entity to another entity.
    stateFlag25(stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2, number, stateFlag4, stateFlag5, stateFlag7, stateFlag9, number3, stateFlag10, stateFlag11, number6)
    stateFlag25 = SetModelAsNoLongerNeeded
    stateFlag28 = localValue5
    stateFlag25(stateFlag28)
  else
    dataCollection4.awaitingResponse = false
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c508e140c0".
rageUiOperation4(rageUiOperation5, workingValue7)
rageUiOperation4 = Citizen
rageUiOperation4 = rageUiOperation4.CreateThread

-- === HELPER FUNCTION (decompiler name: rageUiOperation5; parameters: none) ===
function rageUiOperation5()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag25
  while true do
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 0
    localValue1(localValue2)
    localValue1 = backgroundThread
    if localValue1 then
      localValue1 = HasScaleformMovieLoaded
      localValue2 = backgroundThread
      localValue1 = localValue1(localValue2)
      if localValue1 then
        localValue1 = DisableControlAction
        localValue2 = 0
        localValue3 = 24
        localValue4 = true
        localValue1(localValue2, localValue3, localValue4)
        localValue1 = DisableControlAction
        localValue2 = 0
        localValue3 = 25
        localValue4 = true
        localValue1(localValue2, localValue3, localValue4)
        localValue1 = IsScaleformMovieMethodReturnValueReady
        localValue2 = number12
        localValue1 = localValue1(localValue2)
        if localValue1 then
          localValue1 = GetScaleformMovieMethodReturnValueInt
          localValue2 = number12
          localValue1 = localValue1(localValue2)
          ProgramID = localValue1
          localValue1 = ProgramID
          if 82 == localValue1 then
            localValue1 = PlaySoundFrontend
            localValue2 = -1
            localValue3 = "HACKING_CLICK_BAD"
            localValue4 = ""
            localValue5 = false
            localValue1(localValue2, localValue3, localValue4, localValue5)
          else
            localValue1 = ProgramID
            if 83 == localValue1 then
              localValue1 = BeginScaleformMovieMethod
              localValue2 = backgroundThread
              localValue3 = "RUN_PROGRAM"
              localValue1(localValue2, localValue3)
              localValue1 = ScaleformMovieMethodAddParamFloat
              localValue2 = 83.0
              localValue1(localValue2)
              localValue1 = EndScaleformMovieMethod
              localValue1()
              localValue1 = BeginScaleformMovieMethod
              localValue2 = backgroundThread
              localValue3 = "SET_ROULETTE_WORD"
              localValue1(localValue2, localValue3)
              localValue1 = _ENV
              localValue2 = "ScaleformMovieMethodAddParamTextureNameString"
              localValue1 = localValue1[localValue2]
              localValue2 = stateFlag21
              localValue1(localValue2)
              localValue1 = EndScaleformMovieMethod
              localValue1()
            else
              localValue1 = ProgramID
              if 87 == localValue1 then
                localValue1 = 0
                number13 = localValue1
                localValue1 = BeginScaleformMovieMethod
                localValue2 = backgroundThread
                localValue3 = "SET_ROULETTE_WORD"
                localValue1(localValue2, localValue3)
                localValue1 = _ENV
                localValue2 = "ScaleformMovieMethodAddParamTextureNameString"
                localValue1 = localValue1[localValue2]
                localValue2 = stateFlag21
                localValue1(localValue2)
                localValue1 = EndScaleformMovieMethod
                localValue1()
                localValue1 = Wait
                localValue2 = 100
                localValue1(localValue2)
                localValue1 = BeginScaleformMovieMethod
                localValue2 = backgroundThread
                localValue3 = "OPEN_ERROR_POPUP"
                localValue1(localValue2, localValue3)
                localValue1 = ScaleformMovieMethodAddParamBool
                localValue2 = true
                localValue1(localValue2)
                localValue1 = _ENV
                localValue2 = "ScaleformMovieMethodAddParamTextureNameString"
                localValue1 = localValue1[localValue2]
                localValue2 = "MET POLICE AWARE, DEVICE SHUTTING DOWN"
                localValue1(localValue2)
                localValue1 = EndScaleformMovieMethod
                localValue1()
                localValue1 = Wait
                localValue2 = 100
                localValue1(localValue2)
                localValue1 = SetScaleformMovieAsNoLongerNeeded
                localValue2 = backgroundThread
                localValue1(localValue2)
                localValue1 = EndScaleformMovieMethod
                localValue1()
                localValue1 = rageUiOperation3
                localValue2 = "g4slogo"
                localValue3 = "g4slogo"
                localValue4 = "Our security team have activated the panic for this vehicle."
                localValue5 = "Cash Driver Security"
                stateFlag25 = "Police Notified"
                localValue1(localValue2, localValue3, localValue4, localValue5, stateFlag25)
                localValue1 = rageUiOperation3
                localValue2 = "g4slogo"
                localValue3 = "g4slogo"
                localValue4 = "You have failed to hack this vehicle."
                localValue5 = "Cash Driver Security"
                stateFlag25 = "Police Notified"
                localValue1(localValue2, localValue3, localValue4, localValue5, stateFlag25)
                localValue1 = TriggerServerEvent
                localValue2 = "58c97cecd8"
                localValue3 = dataCollection4.netId
                localValue4 = dataCollection4.src
                localValue5 = stateFlag21
                stateFlag25 = false
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "58c97cecd8".
                localValue1(localValue2, localValue3, localValue4, localValue5, stateFlag25)
                localValue1 = DeleteObject
                localValue2 = number2
                localValue1(localValue2)
                break
              else
                localValue1 = ProgramID
                if 92 == localValue1 then
                  localValue1 = PlaySoundFrontend
                  localValue2 = -1
                  localValue3 = "HACKING_CLICK_GOOD"
                  localValue4 = ""
                  localValue5 = false
                  localValue1(localValue2, localValue3, localValue4, localValue5)
                else
                  localValue1 = ProgramID
                  if 86 == localValue1 then
                    localValue1 = PlaySoundFrontend
                    localValue2 = -1
                    localValue3 = "HACKING_SUCCESS"
                    localValue4 = ""
                    localValue5 = true
                    localValue1(localValue2, localValue3, localValue4, localValue5)
                    localValue1 = BeginScaleformMovieMethod
                    localValue2 = backgroundThread
                    localValue3 = "SET_ROULETTE_OUTCOME"
                    localValue1(localValue2, localValue3)
                    localValue1 = ScaleformMovieMethodAddParamBool
                    localValue2 = true
                    localValue1(localValue2)
                    localValue1 = _ENV
                    localValue2 = "ScaleformMovieMethodAddParamTextureNameString"
                    localValue1 = localValue1[localValue2]
                    localValue2 = "Cash Driver HACK SUCCESSFUL!"
                    localValue1(localValue2)
                    localValue1 = EndScaleformMovieMethod
                    localValue1()
                    localValue1 = Wait
                    localValue2 = 3800
                    localValue1(localValue2)
                    localValue1 = BeginScaleformMovieMethod
                    localValue2 = backgroundThread
                    localValue3 = "CLOSE_APP"
                    localValue1(localValue2, localValue3)
                    localValue1 = EndScaleformMovieMethod
                    localValue1()
                    localValue1 = BeginScaleformMovieMethod
                    localValue2 = backgroundThread
                    localValue3 = "OPEN_LOADING_PROGRESS"
                    localValue1(localValue2, localValue3)
                    localValue1 = ScaleformMovieMethodAddParamBool
                    localValue2 = true
                    localValue1(localValue2)
                    localValue1 = EndScaleformMovieMethod
                    localValue1()
                    localValue1 = BeginScaleformMovieMethod
                    localValue2 = backgroundThread
                    localValue3 = "SET_LOADING_PROGRESS"
                    localValue1(localValue2, localValue3)
                    localValue1 = ScaleformMovieMethodAddParamInt
                    localValue2 = 35
                    localValue1(localValue2)
                    localValue1 = EndScaleformMovieMethod
                    localValue1()
                    localValue1 = BeginScaleformMovieMethod
                    localValue2 = backgroundThread
                    localValue3 = "SET_LOADING_TIME"
                    localValue1(localValue2, localValue3)
                    localValue1 = ScaleformMovieMethodAddParamInt
                    localValue2 = 35
                    localValue1(localValue2)
                    localValue1 = EndScaleformMovieMethod
                    localValue1()
                    localValue1 = BeginScaleformMovieMethod
                    localValue2 = backgroundThread
                    localValue3 = "SET_LOADING_MESSAGE"
                    localValue1(localValue2, localValue3)
                    localValue1 = _ENV
                    localValue2 = "ScaleformMovieMethodAddParamTextureNameString"
                    localValue1 = localValue1[localValue2]
                    localValue2 = "Writing data to hack.."
                    localValue1(localValue2)
                    localValue1 = ScaleformMovieMethodAddParamFloat
                    localValue2 = 4.0
                    localValue1(localValue2)
                    localValue1 = EndScaleformMovieMethod
                    localValue1()
                    localValue1 = Wait
                    localValue2 = 1500
                    localValue1(localValue2)
                    localValue1 = BeginScaleformMovieMethod
                    localValue2 = backgroundThread
                    localValue3 = "SET_LOADING_MESSAGE"
                    localValue1(localValue2, localValue3)
                    localValue1 = _ENV
                    localValue2 = "ScaleformMovieMethodAddParamTextureNameString"
                    localValue1 = localValue1[localValue2]
                    localValue2 = "Executing DriverInjection, accessing money.."
                    localValue1(localValue2)
                    localValue1 = ScaleformMovieMethodAddParamFloat
                    localValue2 = 2.0
                    localValue1(localValue2)
                    localValue1 = EndScaleformMovieMethod
                    localValue1()
                    localValue1 = BeginScaleformMovieMethod
                    localValue2 = backgroundThread
                    localValue3 = "SET_LOADING_TIME"
                    localValue1(localValue2, localValue3)
                    localValue1 = ScaleformMovieMethodAddParamInt
                    localValue2 = 15
                    localValue1(localValue2)
                    localValue1 = EndScaleformMovieMethod
                    localValue1()
                    localValue1 = BeginScaleformMovieMethod
                    localValue2 = backgroundThread
                    localValue3 = "SET_LOADING_PROGRESS"
                    localValue1(localValue2, localValue3)
                    localValue1 = ScaleformMovieMethodAddParamInt
                    localValue2 = 75
                    localValue1(localValue2)
                    localValue1 = EndScaleformMovieMethod
                    localValue1()
                    localValue1 = Wait
                    localValue2 = 1500
                    localValue1(localValue2)
                    localValue1 = BeginScaleformMovieMethod
                    localValue2 = backgroundThread
                    localValue3 = "OPEN_LOADING_PROGRESS"
                    localValue1(localValue2, localValue3)
                    localValue1 = ScaleformMovieMethodAddParamBool
                    localValue2 = false
                    localValue1(localValue2)
                    localValue1 = EndScaleformMovieMethod
                    localValue1()
                    localValue1 = BeginScaleformMovieMethod
                    localValue2 = backgroundThread
                    localValue3 = "OPEN_ERROR_POPUP"
                    localValue1(localValue2, localValue3)
                    localValue1 = ScaleformMovieMethodAddParamBool
                    localValue2 = true
                    localValue1(localValue2)
                    localValue1 = _ENV
                    localValue2 = "ScaleformMovieMethodAddParamTextureNameString"
                    localValue1 = localValue1[localValue2]
                    localValue2 = "MET POLICE AWARE - DEVICE SHUTTING DOWN"
                    localValue1(localValue2)
                    localValue1 = EndScaleformMovieMethod
                    localValue1()
                    localValue1 = Wait
                    localValue2 = 3500
                    localValue1(localValue2)
                    localValue1 = SetScaleformMovieAsNoLongerNeeded
                    localValue2 = backgroundThread
                    localValue1(localValue2)
                    localValue1 = EndScaleformMovieMethod
                    localValue1()
                    localValue1 = rageUiOperation3
                    localValue2 = "g4slogo"
                    localValue3 = "g4slogo"
                    localValue4 = "We have notified the Metropolitan Police service. You are on CCTV."
                    localValue5 = "Cash Driver Security"
                    stateFlag25 = "Police Notified"
                    localValue1(localValue2, localValue3, localValue4, localValue5, stateFlag25)
                    localValue1 = TriggerServerEvent
                    localValue2 = "58c97cecd8"
                    localValue3 = dataCollection4.netId
                    localValue4 = dataCollection4.src
                    localValue5 = stateFlag21
                    stateFlag25 = true
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "58c97cecd8".
                    localValue1(localValue2, localValue3, localValue4, localValue5, stateFlag25)
                    localValue1 = DeleteObject
                    localValue2 = number2
                    localValue1(localValue2)
                    break
                  else
                    localValue1 = ProgramID
                    if 6 == localValue1 then
                      localValue1 = Wait
                      localValue2 = 500
                      localValue1(localValue2)
                      localValue1 = SetScaleformMovieAsNoLongerNeeded
                      localValue2 = backgroundThread
                      localValue1(localValue2)
                      localValue1 = DisableControlAction
                      localValue2 = 0
                      localValue3 = 24
                      localValue4 = false
                      localValue1(localValue2, localValue3, localValue4)
                      localValue1 = DisableControlAction
                      localValue2 = 0
                      localValue3 = 25
                      localValue4 = false
                      localValue1(localValue2, localValue3, localValue4)
                    end
                  end
                end
              end
            end
          end
          localValue1 = number13
          if 0 == localValue1 then
            localValue1 = PlaySoundFrontend
            localValue2 = -1
            localValue3 = "HACKING_FAILURE"
            localValue4 = ""
            localValue5 = true
            localValue1(localValue2, localValue3, localValue4, localValue5)
            localValue1 = BeginScaleformMovieMethod
            localValue2 = backgroundThread
            localValue3 = "SET_ROULETTE_OUTCOME"
            localValue1(localValue2, localValue3)
            localValue1 = ScaleformMovieMethodAddParamBool
            localValue2 = false
            localValue1(localValue2)
            localValue1 = _ENV
            localValue2 = "ScaleformMovieMethodAddParamTextureNameString"
            localValue1 = localValue1[localValue2]
            localValue2 = "DRIVERINJECT - HACK FAILED!"
            localValue1(localValue2)
            localValue1 = EndScaleformMovieMethod
            localValue1()
            localValue1 = Wait
            localValue2 = 3500
            localValue1(localValue2)
            localValue1 = BeginScaleformMovieMethod
            localValue2 = backgroundThread
            localValue3 = "CLOSE_APP"
            localValue1(localValue2, localValue3)
            localValue1 = EndScaleformMovieMethod
            localValue1()
            localValue1 = BeginScaleformMovieMethod
            localValue2 = backgroundThread
            localValue3 = "OPEN_ERROR_POPUP"
            localValue1(localValue2, localValue3)
            localValue1 = ScaleformMovieMethodAddParamBool
            localValue2 = true
            localValue1(localValue2)
            localValue1 = _ENV
            localValue2 = "ScaleformMovieMethodAddParamTextureNameString"
            localValue1 = localValue1[localValue2]
            localValue2 = "POLICE AWARE OF HACK ATTEMPT, DEVICE SHUTTING DOWN"
            localValue1(localValue2)
            localValue1 = EndScaleformMovieMethod
            localValue1()
            localValue1 = Wait
            localValue2 = 2500
            localValue1(localValue2)
            localValue1 = SetScaleformMovieAsNoLongerNeeded
            localValue2 = backgroundThread
            localValue1(localValue2)
            localValue1 = EndScaleformMovieMethod
            localValue1()
            localValue1 = DisableControlAction
            localValue2 = 0
            localValue3 = 24
            localValue4 = false
            localValue1(localValue2, localValue3, localValue4)
            localValue1 = DisableControlAction
            localValue2 = 0
            localValue3 = 25
            localValue4 = false
            localValue1(localValue2, localValue3, localValue4)
            localValue1 = notify
            localValue2 = "Hacking Unsuccessful"
            -- Beginner: Show a notification to the player.
            localValue1(localValue2)
            localValue1 = rageUiOperation3
            localValue2 = "g4slogo"
            localValue3 = "g4slogo"
            localValue4 = "Please note: The police have been notified."
            localValue5 = "Cash Driver Security"
            stateFlag25 = "Police Notified"
            localValue1(localValue2, localValue3, localValue4, localValue5, stateFlag25)
            localValue1 = TriggerServerEvent
            localValue2 = "58c97cecd8"
            localValue3 = dataCollection4.netId
            localValue4 = dataCollection4.src
            localValue5 = stateFlag21
            stateFlag25 = false
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "58c97cecd8".
            localValue1(localValue2, localValue3, localValue4, localValue5, stateFlag25)
            localValue1 = DeleteObject
            localValue2 = number2
            localValue1(localValue2)
            break
          end
        end
      end
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
rageUiOperation4(rageUiOperation5)
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateWhile
rageUiOperation5 = 1
workingValue7 = RMenu
workingValue8 = workingValue7
workingValue7 = workingValue7.Get
text11 = "g4s"
eventHandler = "shiftHandler"
-- Beginner: result below is menu.
workingValue7 = workingValue7(workingValue8, text11, eventHandler)
workingValue8 = nil

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag25
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "g4s"
  localValue5 = "shiftHandler"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag25; parameters: none) ===
  function stateFlag25()
    local vehicle, cmgOperation, stateFlag17, number14, stateFlag24, number17
    vehicle = stateFlag
    if not vehicle then
      vehicle = RageUI
      vehicle = vehicle.ButtonWithStyle
      cmgOperation = "Start Shift"
      stateFlag17 = "Start your shift working for Private Security."
      number14 = {}
      number14.RightLabel = "Cash Driver"
      stateFlag24 = true

      -- === HELPER FUNCTION (decompiler name: number17; parameters: localValue12, localValue22, localValue32) ===
      function number17(localValue12, localValue22, localValue32)
        local text10, number15, stateFlag26, text13, text14
        if localValue32 then
          text10 = RageUI
          text10 = text10.Visible
          number15 = RMenu
          stateFlag26 = number15
          number15 = number15.Get
          text13 = "g4s"
          text14 = "shiftHandler"
          -- Beginner: result below is menu.
          number15 = number15(stateFlag26, text13, text14)
          stateFlag26 = false
          text10(number15, stateFlag26)
          text10 = TriggerServerEvent
          number15 = "2ee6b18cbd"
          stateFlag26 = true
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2ee6b18cbd".
          text10(number15, stateFlag26)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      vehicle(cmgOperation, stateFlag17, number14, stateFlag24, number17)
    else
      vehicle = RageUI
      vehicle = vehicle.ButtonWithStyle
      cmgOperation = "End Shift"
      stateFlag17 = "End your shift working for Private Security"
      number14 = {}
      number14.RightLabel = "Cash Driver"
      stateFlag24 = true

      -- === HELPER FUNCTION (decompiler name: number17; parameters: localValue12, localValue22, localValue32) ===
      function number17(localValue12, localValue22, localValue32)
        local text10, number15, stateFlag26, text13, text14
        if localValue32 then
          text10 = RageUI
          text10 = text10.Visible
          number15 = RMenu
          stateFlag26 = number15
          number15 = number15.Get
          text13 = "g4s"
          text14 = "shiftHandler"
          -- Beginner: result below is menu.
          number15 = number15(stateFlag26, text13, text14)
          stateFlag26 = false
          text10(number15, stateFlag26)
          text10 = TriggerServerEvent
          number15 = "2ee6b18cbd"
          stateFlag26 = false
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2ee6b18cbd".
          text10(number15, stateFlag26)
          text10 = false
          stateFlag = text10
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      vehicle(cmgOperation, stateFlag17, number14, stateFlag24, number17)
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, stateFlag25)
end
rageUiOperation4(rageUiOperation5, workingValue7, workingValue8, text11)

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
function rageUiOperation4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = DoesEntityExist
  localValue3 = number5
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = IsVehicleDriveable
    localValue3 = number5
    localValue4 = true
    localValue2 = localValue2(localValue3, localValue4)
    if not localValue2 then
      localValue2 = DeleteEntity
      localValue3 = number5
      -- Beginner: Delete a GTA entity.
      localValue2(localValue3)
      localValue2 = GetOffsetFromEntityInWorldCoords
      localValue3 = localValue1
      localValue4 = 0.0
      localValue5 = 5.0
      stateFlag25 = 0.0
      localValue2 = localValue2(localValue3, localValue4, localValue5, stateFlag25)
      localValue3 = CMG
      localValue3 = localValue3.requestEntitySpawn
      localValue4 = "g4s"
      localValue5 = localValue2
      localValue3(localValue4, localValue5)
      localValue3 = CMG
      localValue3 = localValue3.spawnVehicle
      localValue4 = text2
      localValue5 = localValue2.x
      stateFlag25 = localValue2.y
      stateFlag28 = localValue2.z
      stateFlag30 = GetEntityHeading
      stateFlag31 = localValue1
      -- Beginner: result below is heading.
      stateFlag30 = stateFlag30(stateFlag31)
      stateFlag31 = true
      number19 = true
      localValue3 = localValue3(localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19)
      number5 = localValue3
      localValue3 = VehToNet
      localValue4 = number5
      localValue3 = localValue3(localValue4)
      number10 = localValue3
      localValue3 = TriggerServerEvent
      localValue4 = "be91a889a5"
      localValue5 = number10
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "be91a889a5".
      localValue3(localValue4, localValue5)
      localValue3 = number4
      localValue3 = localValue3 + 1
      number4 = localValue3
    end
  end
end
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateWhile
workingValue7 = 1
workingValue8 = RMenu
text11 = workingValue8
workingValue8 = workingValue8.Get
eventHandler = "g4s"
text12 = "main"
-- Beginner: result below is menu.
workingValue8 = workingValue8(text11, eventHandler, text12)
text11 = nil

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag25
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "g4s"
  localValue5 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag25; parameters: none) ===
  function stateFlag25()
    local vehicle, cmgOperation, stateFlag17, number14, stateFlag24, number17
    vehicle = stateFlag29
    if not vehicle then
      vehicle = CMG
      vehicle = vehicle.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      vehicle = vehicle()
      if 0 == vehicle then
        vehicle = number4
        if vehicle < 4 then
          vehicle = RageUI
          vehicle = vehicle.ButtonWithStyle
          cmgOperation = "New Vehicle"
          stateFlag17 = "Get a new vehicle"
          number14 = {}
          number14.RightLabel = "\226\134\146\226\134\146\226\134\146"
          stateFlag24 = true

          -- === HELPER FUNCTION (decompiler name: number17; parameters: localValue12, localValue22, localValue32) ===
          function number17(localValue12, localValue22, localValue32)
            local text10
            if localValue32 then
              text10 = rageUiOperation4
              text10()
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          vehicle(cmgOperation, stateFlag17, number14, stateFlag24, number17)
        end
      end
      vehicle = RageUI
      vehicle = vehicle.ButtonWithStyle
      cmgOperation = "End Shift"
      stateFlag17 = "End your shift"
      number14 = {}
      number14.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag24 = true

      -- === HELPER FUNCTION (decompiler name: number17; parameters: localValue12, localValue22, localValue32) ===
      function number17(localValue12, localValue22, localValue32)
        local text10, number15, stateFlag26
        if localValue32 then
          text10 = TriggerServerEvent
          number15 = "2ee6b18cbd"
          stateFlag26 = false
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2ee6b18cbd".
          text10(number15, stateFlag26)
          text10 = false
          stateFlag = text10
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      vehicle(cmgOperation, stateFlag17, number14, stateFlag24, number17)
      vehicle = RageUI
      vehicle = vehicle.ButtonWithStyle
      cmgOperation = "Forgot Pin"
      stateFlag17 = "Get a pin reminder"
      number14 = {}
      number14.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag24 = true

      -- === HELPER FUNCTION (decompiler name: number17; parameters: localValue12, localValue22, localValue32) ===
      function number17(localValue12, localValue22, localValue32)
        local text10, number15, stateFlag26, text13, text14, text15
        if localValue32 then
          text10 = rageUiOperation3
          number15 = "CHAR_MP_MEX_DOCKS"
          stateFlag26 = "CHAR_MP_MEX_DOCKS"
          text13 = "Hey mate, I've got you. Your pin is "
          text14 = number16
          text15 = "."
          text13 = text13 .. text14 .. text15
          text14 = "Arthur"
          text15 = "07925065325"
          text10(number15, stateFlag26, text13, text14, text15)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      vehicle(cmgOperation, stateFlag17, number14, stateFlag24, number17)
      vehicle = stateFlag27
      if not vehicle then
        vehicle = RageUI
        vehicle = vehicle.ButtonWithStyle
        cmgOperation = "Activate Panic"
        stateFlag17 = "Activate your panic alarm"
        number14 = {}
        number14.RightLabel = "\226\134\146\226\134\146\226\134\146"
        stateFlag24 = true

        -- === HELPER FUNCTION (decompiler name: number17; parameters: localValue12, localValue22, localValue32) ===
        function number17(localValue12, localValue22, localValue32)
          local text10, number15, stateFlag26, text13, text14, text15
          if localValue32 then
            text10 = TriggerServerEvent
            number15 = "81fb012b91"
            stateFlag26 = number10
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "81fb012b91".
            text10(number15, stateFlag26)
            text10 = rageUiOperation3
            number15 = "g4slogo"
            stateFlag26 = "g4slogo"
            text13 = "You have activated your panic alarm."
            text14 = "Cash Driver Security"
            text15 = "Panic Activated"
            text10(number15, stateFlag26, text13, text14, text15)
            text10 = true
            stateFlag27 = text10
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        vehicle(cmgOperation, stateFlag17, number14, stateFlag24, number17)
      else
      end
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, stateFlag25)
end
rageUiOperation5(workingValue7, workingValue8, text11, eventHandler)
rageUiOperation5 = RegisterNetEvent
workingValue7 = "c67322d45d"
-- Beginner: this function handles network event "c67322d45d".

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2
  localValue1 = false
  stateFlag27 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c67322d45d".
rageUiOperation5(workingValue7, workingValue8)
rageUiOperation5 = RegisterNetEvent
workingValue7 = "ad7978cf26"
-- Beginner: this function handles network event "ad7978cf26".

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1) ===
function workingValue8(localValue1)
  local localValue2, localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19
  localValue2 = workingValue12
  if 0 ~= localValue2 then
    localValue2 = tCMG
    localValue2 = localValue2.removeBlip
    localValue3 = workingValue12
    localValue2(localValue3)
  end
  localValue2 = localValue1.jobActive
  if localValue2 then
    localValue2 = localValue1.collected
    if not localValue2 then
      localValue2 = workingValue11
      if 0 ~= localValue2 then
        localValue2 = tCMG
        localValue2 = localValue2.removeBlip
        localValue3 = workingValue11
        localValue2(localValue3)
      end
      localValue2 = tCMG
      localValue2 = localValue2.addBlip
      localValue3 = localValue1.collectionCoords
      localValue3 = localValue3.x
      localValue4 = localValue1.collectionCoords
      localValue4 = localValue4.y
      localValue5 = localValue1.collectionCoords
      localValue5 = localValue5.z
      stateFlag25 = 500
      stateFlag28 = 18
      stateFlag30 = "Cash Driver Collection"
      stateFlag31 = 1.0
      number19 = false
      localValue2 = localValue2(localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19)
      workingValue11 = localValue2
      localValue2 = SetBlipRoute
      localValue3 = workingValue11
      localValue4 = true
      localValue2(localValue3, localValue4)
      localValue2 = SetBlipRouteColour
      localValue3 = workingValue11
      localValue4 = 18
      localValue2(localValue3, localValue4)
    else
      localValue2 = localValue1.deposited
      if not localValue2 then
        localValue2 = tCMG
        localValue2 = localValue2.removeBlip
        localValue3 = workingValue11
        localValue2(localValue3)
        localValue2 = tCMG
        localValue2 = localValue2.addBlip
        localValue3 = localValue1.depositCoords
        localValue3 = localValue3.x
        localValue4 = localValue1.depositCoords
        localValue4 = localValue4.y
        localValue5 = localValue1.depositCoords
        localValue5 = localValue5.z
        stateFlag25 = 500
        stateFlag28 = 47
        stateFlag30 = "Cash Driver Deposit"
        stateFlag31 = 1.0
        number19 = false
        localValue2 = localValue2(localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19)
        workingValue12 = localValue2
        localValue2 = SetBlipRoute
        localValue3 = workingValue12
        localValue4 = true
        localValue2(localValue3, localValue4)
        localValue2 = SetBlipRouteColour
        localValue3 = workingValue12
        localValue4 = 47
        localValue2(localValue3, localValue4)
      end
    end
    dataCollection = localValue1
    localValue2 = PlaySoundFrontend
    localValue3 = -1
    localValue4 = "Out_Of_Bounds_Timer"
    localValue5 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
    stateFlag25 = true
    localValue2(localValue3, localValue4, localValue5, stateFlag25)
  else
    localValue2 = notify
    localValue3 = [[
~b~New job received:~w~
Collection: ]]
    localValue4 = localValue1.collectionName
    localValue5 = [[

Destination: ]]
    stateFlag25 = localValue1.depositName
    localValue3 = localValue3 .. localValue4 .. localValue5 .. stateFlag25
    -- Beginner: Show a notification to the player.
    localValue2(localValue3)
    localValue2 = Wait
    localValue3 = 3000
    localValue2(localValue3)
    localValue2 = TriggerServerEvent
    localValue3 = "3c47441080"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3c47441080".
    localValue2(localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ad7978cf26".
rageUiOperation5(workingValue7, workingValue8)
rageUiOperation5 = RegisterNetEvent
workingValue7 = "eb54246956"
-- Beginner: this function handles network event "eb54246956".

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1) ===
function workingValue8(localValue1)
  local localValue2, localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2, number, stateFlag4, stateFlag5, stateFlag7, stateFlag9, number3, stateFlag10
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = true
  stateFlag = localValue3
  localValue3 = CMG
  localValue3 = localValue3.requestEntitySpawn
  localValue4 = "g4s"
  localValue5 = vector3
  stateFlag25 = dataCollection5.x
  stateFlag28 = dataCollection5.y
  stateFlag30 = dataCollection5.z
  localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2, number, stateFlag4, stateFlag5, stateFlag7, stateFlag9, number3, stateFlag10 = localValue5(stateFlag25, stateFlag28, stateFlag30)
  localValue3(localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2, number, stateFlag4, stateFlag5, stateFlag7, stateFlag9, number3, stateFlag10)
  localValue3 = CMG
  localValue3 = localValue3.spawnVehicle
  localValue4 = text2
  localValue5 = dataCollection5.x
  stateFlag25 = dataCollection5.y
  stateFlag28 = dataCollection5.z
  stateFlag30 = dataCollection5.heading
  stateFlag31 = true
  number19 = true
  localValue3 = localValue3(localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19)
  number5 = localValue3
  localValue3 = VehToNet
  localValue4 = number5
  localValue3 = localValue3(localValue4)
  number10 = localValue3
  localValue3 = TaskWarpPedIntoVehicle
  localValue4 = localValue2
  localValue5 = number5
  stateFlag25 = -1
  localValue3(localValue4, localValue5, stateFlag25)
  number16 = localValue1
  localValue3 = {}
  localValue4 = "Marcus"
  localValue5 = "Arthur"
  stateFlag25 = "Rob"
  stateFlag28 = "Thomas"
  stateFlag30 = "Despawned"
  localValue3[1] = localValue4
  localValue3[2] = localValue5
  localValue3[3] = stateFlag25
  localValue3[4] = stateFlag28
  localValue3[5] = stateFlag30
  localValue4 = math
  localValue4 = localValue4.random
  localValue5 = 1
  stateFlag25 = 5
  localValue4 = localValue4(localValue5, stateFlag25)
  localValue5 = localValue3[localValue4]
  stateFlag25 = rageUiOperation3
  stateFlag28 = "CHAR_MP_MEX_DOCKS"
  stateFlag30 = "CHAR_MP_MEX_DOCKS"
  stateFlag31 = "Hey, I'm "
  number19 = localValue5
  text = " , another agent for Private Security. I'll be here giving you some tips along the way."
  stateFlag31 = stateFlag31 .. number19 .. text
  number19 = localValue5
  text = "07925065325"
  stateFlag25(stateFlag28, stateFlag30, stateFlag31, number19, text)
  stateFlag25 = TriggerServerEvent
  stateFlag28 = "be91a889a5"
  stateFlag30 = number10
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "be91a889a5".
  stateFlag25(stateFlag28, stateFlag30)
  stateFlag25 = false
  stateFlag28 = GetEntityModel
  stateFlag30 = localValue2
  -- Beginner: result below is modelHash.
  stateFlag28 = stateFlag28(stateFlag30)
  if 1885233650 == stateFlag28 then
    stateFlag25 = true
  else
    stateFlag25 = true
    stateFlag30 = tCMG
    stateFlag30 = stateFlag30.setCustomization
    stateFlag31 = {}
    stateFlag31.modelhash = 1885233650
    stateFlag30(stateFlag31)
  end
  stateFlag30 = json
  stateFlag30 = stateFlag30.encode
  stateFlag31 = tCMG
  stateFlag31 = stateFlag31.getCustomization
  stateFlag31, number19, text, stateFlag2, number, stateFlag4, stateFlag5, stateFlag7, stateFlag9, number3, stateFlag10 = stateFlag31()
  stateFlag30 = stateFlag30(stateFlag31, number19, text, stateFlag2, number, stateFlag4, stateFlag5, stateFlag7, stateFlag9, number3, stateFlag10)
  if not stateFlag30 then
    stateFlag30 = ""
  end
  text3 = stateFlag30
  if stateFlag25 then
    stateFlag30 = CMG
    stateFlag30 = stateFlag30.loadCustomisationPreset
    stateFlag31 = "G4SMale"
    stateFlag30(stateFlag31)
  else
    stateFlag30 = CMG
    stateFlag30 = stateFlag30.loadCustomisationPreset
    stateFlag31 = "G4SFemale"
    stateFlag30(stateFlag31)
  end
  stateFlag30 = Wait
  stateFlag31 = 2000
  stateFlag30(stateFlag31)
  stateFlag30 = TaskVehicleDriveToCoord
  stateFlag31 = CMG
  stateFlag31 = stateFlag31.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  stateFlag31 = stateFlag31()
  number19 = number5
  text = -672.356
  stateFlag2 = 282.3297
  number = 81.43005
  stateFlag4 = math
  stateFlag4 = stateFlag4.rad
  stateFlag5 = 250.0
  stateFlag4 = stateFlag4(stateFlag5)
  stateFlag5 = 1
  stateFlag7 = GetHashKey
  stateFlag9 = GetEntityModel
  number3 = number5
  stateFlag9, number3, stateFlag10 = stateFlag9(number3)
  -- Beginner: result below is hash.
  stateFlag7 = stateFlag7(stateFlag9, number3, stateFlag10)
  stateFlag9 = 60
  number3 = 5
  stateFlag10 = 1
  stateFlag30(stateFlag31, number19, text, stateFlag2, number, stateFlag4, stateFlag5, stateFlag7, stateFlag9, number3, stateFlag10)
  stateFlag30 = Wait
  stateFlag31 = 5000
  stateFlag30(stateFlag31)
  stateFlag30 = TaskVehicleTempAction
  stateFlag31 = CMG
  stateFlag31 = stateFlag31.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  stateFlag31 = stateFlag31()
  number19 = number5
  text = 27
  stateFlag2 = 10.0
  stateFlag30(stateFlag31, number19, text, stateFlag2)
  stateFlag30 = Wait
  stateFlag31 = 2000
  stateFlag30(stateFlag31)
  stateFlag30 = rageUiOperation3
  stateFlag31 = "CHAR_MP_MEX_DOCKS"
  number19 = "CHAR_MP_MEX_DOCKS"
  text = "Use /securejob to access the Cash Driver menu."
  stateFlag2 = localValue5
  number = "Cash Driver"
  stateFlag30(stateFlag31, number19, text, stateFlag2, number)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "eb54246956".
rageUiOperation5(workingValue7, workingValue8)
rageUiOperation5 = RegisterNetEvent
workingValue7 = "273e1a7f10"
-- Beginner: this function handles network event "273e1a7f10".

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2, localValue3
  localValue1 = DoesEntityExist
  localValue2 = number5
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = DeleteEntity
    localValue2 = number5
    -- Beginner: Delete a GTA entity.
    localValue1(localValue2)
  end
  dataCollection.jobActive = false
  localValue1 = false
  stateFlag = localValue1
  localValue1 = stateFlag29
  if localValue1 then
    localValue1 = workingValue3
    localValue1()
  end
  localValue1 = tCMG
  localValue1 = localValue1.setCustomization
  localValue2 = json
  localValue2 = localValue2.decode
  localValue3 = text3
  localValue2, localValue3 = localValue2(localValue3)
  localValue1(localValue2, localValue3)
  localValue1 = dataCollection6.active
  if localValue1 then
    localValue1 = text8
    -- Beginner: Create a minimap blip.
    localValue1()
  end
  localValue1 = workingValue11
  if 0 ~= localValue1 then
    localValue1 = tCMG
    localValue1 = localValue1.removeBlip
    localValue2 = workingValue11
    localValue1(localValue2)
  end
  localValue1 = workingValue12
  if 0 ~= localValue1 then
    localValue1 = tCMG
    localValue1 = localValue1.removeBlip
    localValue2 = workingValue12
    localValue1(localValue2)
  end
  localValue1 = ClearGpsPlayerWaypoint
  localValue1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "273e1a7f10".
rageUiOperation5(workingValue7, workingValue8)

-- === HELPER FUNCTION (decompiler name: rageUiOperation5; parameters: none) ===
function rageUiOperation5()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2, number
  localValue1 = true
  stateFlag8 = localValue1
  localValue1 = SetScaleformMovieAsNoLongerNeeded
  localValue1()
  localValue1 = RequestScaleformMovie
  localValue2 = "ATM"
  -- Beginner: result below is scaleformHandle.
  localValue1 = localValue1(localValue2)
  while true do
    localValue2 = HasScaleformMovieLoaded
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      break
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 0
    localValue2(localValue3)
  end
  localValue2 = BeginScaleformMovieMethod
  localValue3 = localValue1
  localValue4 = "enterPINanim"
  localValue2(localValue3, localValue4)
  localValue2 = EndScaleformMovieMethod
  localValue2()
  localValue2 = true
  localValue3 = SetTimeout
  localValue4 = 3000

  -- === HELPER FUNCTION: localValue5() ===
  function localValue5()
    local vehicle, cmgOperation
    vehicle = false
    localValue2 = vehicle
  end
  localValue3(localValue4, localValue5)
  while localValue2 do
    localValue3 = DrawScaleformMovie
    localValue4 = localValue1
    localValue5 = 0.5
    stateFlag25 = 0.5
    stateFlag28 = 0.8
    stateFlag30 = 0.8
    stateFlag31 = 255
    number19 = 255
    text = 255
    stateFlag2 = 0
    number = 0
    localValue3(localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2, number)
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    localValue4 = 0
    localValue3(localValue4)
  end
  localValue3 = SetScaleformMovieAsNoLongerNeeded
  localValue4 = localValue1
  localValue3(localValue4)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  localValue3 = false
  stateFlag8 = localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30
  localValue1 = true
  localValue2 = Citizen
  localValue2 = localValue2.CreateThread

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local vehicle, cmgOperation, stateFlag17, number14
    while true do
      vehicle = localValue1
      if not vehicle then
        break
      end
      vehicle = RageUI
      vehicle = vehicle.Text
      cmgOperation = {}
      stateFlag17 = "Your pin is ~b~"
      number14 = number16
      stateFlag17 = stateFlag17 .. number14
      cmgOperation.message = stateFlag17
      vehicle(cmgOperation)
      vehicle = Wait
      cmgOperation = 0
      vehicle(cmgOperation)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.GetRageInputText
  localValue3 = "Enter the safe code:"
  localValue2 = localValue2(localValue3)
  localValue1 = false
  localValue3 = rageUiOperation5
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue3()
  localValue3 = tostring
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  localValue4 = tostring
  localValue5 = number16
  localValue4 = localValue4(localValue5)
  if localValue3 == localValue4 then
    localValue3 = rageUiOperation3
    localValue4 = "g4slogo"
    localValue5 = "g4slogo"
    stateFlag25 = "The safe pin has been entered correctly."
    stateFlag28 = "Cash Driver Security"
    stateFlag30 = "Authorised"
    localValue3(localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30)
    localValue3 = FreezeEntityPosition
    localValue4 = CMG
    localValue4 = localValue4.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue4 = localValue4()
    localValue5 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue3(localValue4, localValue5)
    localValue3 = true
    return localValue3
  else
    localValue3 = PlaySoundFrontend
    localValue4 = -1
    localValue5 = "Hack_Failed"
    stateFlag25 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
    stateFlag28 = true
    localValue3(localValue4, localValue5, stateFlag25, stateFlag28)
    localValue3 = Wait
    localValue4 = 2000
    localValue3(localValue4)
    localValue3 = FreezeEntityPosition
    localValue4 = CMG
    localValue4 = localValue4.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue4 = localValue4()
    localValue5 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue3(localValue4, localValue5)
    localValue3 = false
    return localValue3
  end
end
workingValue8 = RegisterNetEvent
text11 = "457368e155"
-- Beginner: this function handles network event "457368e155".

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2, number, stateFlag4, stateFlag5, stateFlag7, stateFlag9, number3, stateFlag10, stateFlag11, number6, stateFlag12, workingValue, workingValue2, stateFlag13, stateFlag14, number8, number9, stateFlag15
  localValue1 = math
  localValue1 = localValue1.random
  localValue2 = 1
  localValue3 = 4
  localValue1 = localValue1(localValue2, localValue3)
  if 1 == localValue1 then
    localValue2 = rageUiOperation3
    localValue3 = "g4slogo"
    localValue4 = "g4slogo"
    localValue5 = "Use /securejob to access your Cash Driver Menu."
    stateFlag25 = "Cash Driver Security"
    stateFlag28 = "Alert"
    localValue2(localValue3, localValue4, localValue5, stateFlag25, stateFlag28)
  end
  localValue2 = true
  stateFlag6 = localValue2
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = IsPedInAnyVehicle
  localValue4 = localValue2
  localValue5 = true
  localValue3 = localValue3(localValue4, localValue5)
  if localValue3 then
    while true do
      localValue3 = IsPedInAnyVehicle
      localValue4 = localValue2
      localValue5 = true
      localValue3 = localValue3(localValue4, localValue5)
      if not localValue3 then
        break
      end
      localValue3 = Wait
      localValue4 = 400
      localValue3(localValue4)
    end
  end
  localValue3 = SetVehicleDoorOpen
  localValue4 = number5
  localValue5 = 3
  stateFlag25 = false
  stateFlag28 = false
  localValue3(localValue4, localValue5, stateFlag25, stateFlag28)
  localValue3 = SetVehicleDoorOpen
  localValue4 = number5
  localValue5 = 4
  stateFlag25 = false
  stateFlag28 = false
  localValue3(localValue4, localValue5, stateFlag25, stateFlag28)
  localValue3 = false
  localValue4 = GetOffsetFromEntityInWorldCoords
  localValue5 = number5
  stateFlag25 = 0.0
  stateFlag28 = -5.0
  stateFlag30 = 0.0
  localValue4 = localValue4(localValue5, stateFlag25, stateFlag28, stateFlag30)
  while true do
    localValue5 = stateFlag23
    if localValue5 then
      break
    end
    localValue5 = DrawMarker
    stateFlag25 = 29
    stateFlag28 = localValue4.x
    stateFlag30 = localValue4.y
    stateFlag31 = localValue4.z
    stateFlag31 = stateFlag31 + 0.5
    number19 = 0.0
    text = 0.0
    stateFlag2 = 0.0
    number = 0.0
    stateFlag4 = 0.0
    stateFlag5 = 0.0
    stateFlag7 = 1.5
    stateFlag9 = 1.5
    number3 = 1.5
    stateFlag10 = 255
    stateFlag11 = 36
    number6 = 36
    stateFlag12 = 50
    workingValue = true
    workingValue2 = false
    stateFlag13 = 2
    stateFlag14 = false
    number8 = nil
    number9 = nil
    stateFlag15 = false
    localValue5(stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2, number, stateFlag4, stateFlag5, stateFlag7, stateFlag9, number3, stateFlag10, stateFlag11, number6, stateFlag12, workingValue, workingValue2, stateFlag13, stateFlag14, number8, number9, stateFlag15)
    localValue5 = CMG
    localValue5 = localValue5.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue5 = localValue5()
    localValue5 = localValue5 - localValue4
    localValue5 = #localValue5
    if localValue5 <= 1.0 then
      localValue3 = true
      stateFlag25 = workingValue7
      stateFlag25 = stateFlag25()
      localValue3 = false
      if stateFlag25 then
        stateFlag28 = true
        stateFlag23 = stateFlag28
      end
      while localValue3 do
        stateFlag28 = Wait
        stateFlag30 = 100
        stateFlag28(stateFlag30)
      end
    end
    stateFlag25 = Wait
    stateFlag28 = 0
    stateFlag25(stateFlag28)
  end
  localValue5 = SetVehicleDoorShut
  stateFlag25 = number5
  stateFlag28 = 3
  stateFlag30 = false
  localValue5(stateFlag25, stateFlag28, stateFlag30)
  localValue5 = SetVehicleDoorShut
  stateFlag25 = number5
  stateFlag28 = 4
  stateFlag30 = false
  localValue5(stateFlag25, stateFlag28, stateFlag30)
  dataCollection.collecting = false
  localValue5 = dataCollection6.active
  if localValue5 then
    localValue5 = text8
    -- Beginner: Create a minimap blip.
    localValue5()
  end
  localValue5 = TriggerServerEvent
  stateFlag25 = "932a3df12c"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "932a3df12c".
  localValue5(stateFlag25)
  localValue5 = false
  stateFlag6 = localValue5
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "457368e155".
workingValue8(text11, eventHandler)
workingValue8 = RegisterNetEvent
text11 = "2f71d37526"
-- Beginner: this function handles network event "2f71d37526".

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2, number, stateFlag4, stateFlag5, stateFlag7, stateFlag9, number3, stateFlag10, stateFlag11, number6, stateFlag12, workingValue, workingValue2, stateFlag13, stateFlag14, number8, number9
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  while true do
    localValue2 = IsPedInAnyVehicle
    localValue3 = localValue1
    localValue4 = true
    localValue2 = localValue2(localValue3, localValue4)
    if not localValue2 then
      break
    end
    localValue2 = Wait
    localValue3 = 400
    localValue2(localValue3)
  end
  localValue2 = SetVehicleDoorOpen
  localValue3 = number5
  localValue4 = 3
  localValue5 = false
  stateFlag25 = false
  localValue2(localValue3, localValue4, localValue5, stateFlag25)
  localValue2 = SetVehicleDoorOpen
  localValue3 = number5
  localValue4 = 4
  localValue5 = false
  stateFlag25 = false
  localValue2(localValue3, localValue4, localValue5, stateFlag25)
  dataCollection.depositing = true
  localValue2 = false
  localValue3 = GetOffsetFromEntityInWorldCoords
  localValue4 = number5
  localValue5 = 0.0
  stateFlag25 = -5.0
  stateFlag28 = 0.0
  localValue3 = localValue3(localValue4, localValue5, stateFlag25, stateFlag28)
  while true do
    localValue4 = stateFlag23
    if not localValue4 then
      break
    end
    localValue4 = DrawMarker
    localValue5 = 29
    stateFlag25 = localValue3.x
    stateFlag28 = localValue3.y
    stateFlag30 = localValue3.z
    stateFlag30 = stateFlag30 + 0.5
    stateFlag31 = 0.0
    number19 = 0.0
    text = 0.0
    stateFlag2 = 0.0
    number = 0.0
    stateFlag4 = 0.0
    stateFlag5 = 1.5
    stateFlag7 = 1.5
    stateFlag9 = 1.5
    number3 = 255
    stateFlag10 = 36
    stateFlag11 = 36
    number6 = 50
    stateFlag12 = true
    workingValue = false
    workingValue2 = 2
    stateFlag13 = false
    stateFlag14 = nil
    number8 = nil
    number9 = false
    localValue4(localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2, number, stateFlag4, stateFlag5, stateFlag7, stateFlag9, number3, stateFlag10, stateFlag11, number6, stateFlag12, workingValue, workingValue2, stateFlag13, stateFlag14, number8, number9)
    localValue4 = CMG
    localValue4 = localValue4.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue4 = localValue4()
    localValue4 = localValue4 - localValue3
    localValue4 = #localValue4
    if localValue4 <= 1.0 then
      localValue2 = true
      localValue5 = workingValue7
      localValue5 = localValue5()
      localValue2 = false
      if localValue5 then
        stateFlag25 = false
        stateFlag23 = stateFlag25
      end
      while localValue2 do
        stateFlag25 = Wait
        stateFlag28 = 100
        stateFlag25(stateFlag28)
      end
    end
    localValue5 = Wait
    stateFlag25 = 0
    localValue5(stateFlag25)
  end
  localValue4 = SetVehicleDoorShut
  localValue5 = number5
  stateFlag25 = 3
  stateFlag28 = false
  localValue4(localValue5, stateFlag25, stateFlag28)
  localValue4 = SetVehicleDoorShut
  localValue5 = number5
  stateFlag25 = 4
  stateFlag28 = false
  localValue4(localValue5, stateFlag25, stateFlag28)
  localValue4 = dataCollection6.active
  if localValue4 then
    localValue4 = text8
    -- Beginner: Create a minimap blip.
    localValue4()
  end
  localValue4 = 1
  number4 = localValue4
  localValue4 = TriggerServerEvent
  localValue5 = "6734eb94a6"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6734eb94a6".
  localValue4(localValue5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2f71d37526".
workingValue8(text11, eventHandler)
workingValue8 = RegisterNetEvent
text11 = "5143298b93"
-- Beginner: this function handles network event "5143298b93".

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "g4s"
  localValue5 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue1(localValue2, localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5143298b93".
workingValue8(text11, eventHandler)
workingValue8 = RegisterNetEvent
text11 = "285fe4d48d"
-- Beginner: this function handles network event "285fe4d48d".

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function eventHandler(localValue1, localValue2, localValue3, localValue4, localValue5)
  local stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text
  stateFlag25 = rageUiOperation3
  stateFlag28 = localValue1
  stateFlag30 = localValue2
  stateFlag31 = localValue3
  number19 = localValue4
  text = localValue5
  stateFlag25(stateFlag28, stateFlag30, stateFlag31, number19, text)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "285fe4d48d".
workingValue8(text11, eventHandler)

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1) ===
function workingValue8(localValue1)
  local localValue2, localValue3
  localValue2 = _ENV
  localValue3 = "ScaleformMovieMethodAddParamPlayerNameString"
  localValue2 = localValue2[localValue3]
  localValue3 = localValue1
  localValue2(localValue3)
end
InstructionButton = workingValue8

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1) ===
function workingValue8(localValue1)
  local localValue2, localValue3
  localValue2 = BeginTextCommandScaleformString
  localValue3 = "STRING"
  localValue2(localValue3)
  localValue2 = AddTextComponentSubstringKeyboardDisplay
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = EndTextCommandScaleformString
  localValue2()
end
InstructionButtonMessage = workingValue8

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1, localValue2) ===
function workingValue8(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = 0
  while localValue2 > localValue3 do
    localValue4 = RageUI
    localValue4 = localValue4.Text
    localValue5 = {}
    localValue5.message = localValue1
    localValue4(localValue5)
    localValue4 = Wait
    localValue5 = 0
    localValue4(localValue5)
  end
end
text11 = RegisterNetEvent
eventHandler = "abf15683a3"
-- Beginner: this function handles network event "abf15683a3".

-- === HELPER FUNCTION (decompiler name: text12; parameters: localValue1, localValue2) ===
function text12(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = workingValue8
  localValue4 = localValue1
  localValue5 = localValue2
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue3(localValue4, localValue5)
end
text11(eventHandler, text12)
-- Beginner: this function handles network event "abf15683a3".

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  while true do
    localValue2 = RequestScriptAudioBank
    localValue3 = "DLC_SECURITY\\SIREN_ONE"
    localValue4 = false
    localValue2 = localValue2(localValue3, localValue4)
    if localValue2 then
      break
    end
    localValue2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue2 = localValue2()
    localValue2 = localValue2 - localValue1
    localValue3 = 1500
    if localValue2 > localValue3 then
      localValue2 = print
      localValue3 = "Failed to load DLC_SECURITY audio bank"
      localValue2(localValue3)
      localValue2 = ReleaseNamedScriptAudioBank
      localValue3 = "DLC_SECURITY\\SIREN_ONE"
      localValue2(localValue3)
      return
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 0
    localValue2(localValue3)
  end
end
eventHandler = RegisterNetEvent
text12 = "32e875a544"
-- Beginner: this function handles network event "32e875a544".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3, localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2, number, stateFlag4, stateFlag5, stateFlag7
  if 0 ~= localValue1 then
    localValue2 = NetworkDoesNetworkIdExist
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = GetSoundId
      -- Beginner: result below is soundHandle.
      localValue2 = localValue2()
      localValue3 = CMG
      localValue3 = localValue3.getObjectId
      localValue4 = localValue1
      localValue5 = "CMG:activatePanicAll (1)"
      localValue3 = localValue3(localValue4, localValue5)
      if localValue3 then
        localValue4 = DoesEntityExist
        localValue5 = localValue3
        localValue4 = localValue4(localValue5)
        if localValue4 then
          localValue4 = text11
          -- Beginner: Register a network event handler that the server/other clients can trigger.
          localValue4()
          localValue4 = PlaySoundFromEntity
          localValue5 = localValue2
          stateFlag25 = "siren_one"
          stateFlag28 = localValue3
          stateFlag30 = "dlc_security_soundset"
          stateFlag31 = false
          number19 = 0
          localValue4(localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19)
          localValue4 = RequestNamedPtfxAsset
          localValue5 = "core"
          localValue4(localValue5)
          while true do
            localValue4 = HasNamedPtfxAssetLoaded
            localValue5 = "core"
            localValue4 = localValue4(localValue5)
            if localValue4 then
              break
            end
            localValue4 = RequestNamedPtfxAsset
            localValue5 = "core"
            localValue4(localValue5)
            localValue4 = Wait
            localValue5 = 0
            localValue4(localValue5)
          end
          localValue4 = dataCollection4.netId
          if localValue4 == localValue1 then
            dataCollection4.hackingEngaged = false
            dataCollection4.netId = 0
            dataCollection4.entity = 0
            localValue4 = 0
            number13 = localValue4
            localValue4 = FreezeEntityPosition
            localValue5 = CMG
            localValue5 = localValue5.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            localValue5 = localValue5()
            stateFlag25 = false
            -- Beginner: Freeze or unfreeze an entity in place.
            localValue4(localValue5, stateFlag25)
            localValue4 = rageUiOperation3
            localValue5 = "g4slogo"
            stateFlag25 = "g4slogo"
            stateFlag28 = "The alarm has been manually activated."
            stateFlag30 = "Cash Driver Security"
            stateFlag31 = "Alarm Activated"
            localValue4(localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31)
          end
          localValue4 = UseParticleFxAsset
          localValue5 = "core"
          localValue4(localValue5)
          localValue4 = StartParticleFxLoopedOnEntity
          localValue5 = "exp_grd_grenade_smoke"
          stateFlag25 = CMG
          stateFlag25 = stateFlag25.getObjectId
          stateFlag28 = localValue1
          stateFlag30 = "CMG:activatePanicAll (2)"
          stateFlag25 = stateFlag25(stateFlag28, stateFlag30)
          if not stateFlag25 then
            stateFlag25 = 0
          end
          stateFlag28 = 0.0
          stateFlag30 = 0.0
          stateFlag31 = 0.0
          number19 = 0.0
          text = 0.0
          stateFlag2 = 0.0
          number = 1.0
          stateFlag4 = true
          stateFlag5 = true
          stateFlag7 = true
          localValue4 = localValue4(localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text, stateFlag2, number, stateFlag4, stateFlag5, stateFlag7)
          localValue5 = RemoveNamedPtfxAsset
          stateFlag25 = "core"
          localValue5(stateFlag25)
          localValue5 = Citizen
          localValue5 = localValue5.CreateThread

          -- === HELPER FUNCTION (decompiler name: stateFlag25; parameters: none) ===
          function stateFlag25()
            local vehicle, cmgOperation, stateFlag17
            vehicle = Wait
            cmgOperation = 100000
            vehicle(cmgOperation)
            vehicle = StopSound
            cmgOperation = localValue2
            vehicle(cmgOperation)
            vehicle = ReleaseSoundId
            cmgOperation = localValue2
            vehicle(cmgOperation)
            vehicle = StopParticleFxLooped
            cmgOperation = localValue4
            stateFlag17 = true
            vehicle(cmgOperation, stateFlag17)
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          localValue5(stateFlag25)
          localValue5 = ReleaseNamedScriptAudioBank
          stateFlag25 = "DLC_SECURITY\\SIREN_ONE"
          localValue5(stateFlag25)
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "32e875a544".
eventHandler(text12, workingValue9)
eventHandler = AddStateBagChangeHandler
text12 = "activeG4SVan"
workingValue9 = nil

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1, localValue2, localValue3) ===
function workingValue10(localValue1, localValue2, localValue3)
  local localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19, text
  localValue4 = tonumber
  localValue5 = stringsplit
  stateFlag25 = localValue1
  stateFlag28 = ":"
  localValue5 = localValue5(stateFlag25, stateFlag28)
  localValue5 = localValue5[2]
  localValue4 = localValue4(localValue5)
  localValue5 = 0
  while true do
    if localValue5 > 25 then
      return
    elseif localValue4 then
      stateFlag25 = NetworkDoesEntityExistWithNetworkId
      stateFlag28 = localValue4
      stateFlag25 = stateFlag25(stateFlag28)
      if stateFlag25 then
        stateFlag25 = NetworkGetEntityFromNetworkId
        stateFlag28 = localValue4
        stateFlag25 = stateFlag25(stateFlag28)
        if 0 ~= stateFlag25 then
          if localValue3 then
            stateFlag28 = table
            stateFlag28 = stateFlag28.has
            stateFlag30 = dataCollection3
            stateFlag31 = localValue4
            stateFlag28 = stateFlag28(stateFlag30, stateFlag31)
            if not stateFlag28 then
              stateFlag28 = dataCollection3
              stateFlag30 = {}
              stateFlag31 = localValue3
              number19 = stateFlag25
              text = localValue4
              stateFlag30[1] = stateFlag31
              stateFlag30[2] = number19
              stateFlag30[3] = text
              stateFlag28[localValue4] = stateFlag30
            end
            break
          end
          stateFlag28 = dataCollection3
          stateFlag28[localValue4] = nil
          break
        end
      end
    end
    localValue5 = localValue5 + 1
    stateFlag25 = Citizen
    stateFlag25 = stateFlag25.Wait
    stateFlag28 = 200
    stateFlag25(stateFlag28)
  end
end
eventHandler(text12, workingValue9, workingValue10)
eventHandler = RegisterNetEvent
text12 = "5b2a6e23a5"
-- Beginner: this function handles network event "5b2a6e23a5".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1, localValue2, localValue3) ===
function workingValue9(localValue1, localValue2, localValue3)
  local localValue4, localValue5, stateFlag25, stateFlag28, stateFlag30, stateFlag31, number19
  localValue4 = stateFlag
  if not localValue4 then
    localValue4 = CMG
    localValue4 = localValue4.getObjectId
    localValue5 = localValue1
    stateFlag25 = "CMG:activeVansUpdate 1"
    localValue4 = localValue4(localValue5, stateFlag25)
    if 0 ~= localValue4 and nil ~= localValue4 then
      localValue5 = DoesEntityExist
      stateFlag25 = localValue4
      localValue5 = localValue5(stateFlag25)
      if localValue5 then
        if localValue3 then
          localValue5 = dataCollection3
          localValue5[localValue1] = nil
        else
          localValue5 = table
          localValue5 = localValue5.has
          stateFlag25 = dataCollection3
          stateFlag28 = localValue1
          localValue5 = localValue5(stateFlag25, stateFlag28)
          if not localValue5 then
            localValue5 = CMG
            localValue5 = localValue5.getObjectId
            stateFlag25 = localValue1
            stateFlag28 = "5b2a6e23a5"
            localValue5 = localValue5(stateFlag25, stateFlag28)
            stateFlag25 = dataCollection3
            stateFlag28 = {}
            stateFlag30 = localValue2
            stateFlag31 = localValue5
            number19 = localValue1
            stateFlag28[1] = stateFlag30
            stateFlag28[2] = stateFlag31
            stateFlag28[3] = number19
            stateFlag25[localValue1] = stateFlag28
          end
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5b2a6e23a5".
eventHandler(text12, workingValue9)
eventHandler = RegisterNetEvent
text12 = "139a32a44e"
-- Beginner: this function handles network event "139a32a44e".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = PlaySoundFrontend
  localValue2 = -1
  localValue3 = "FocusIn"
  localValue4 = "HintCamSounds"
  localValue5 = true
  localValue1(localValue2, localValue3, localValue4, localValue5)
  dataCollection4.hackingEngaged = false
  dataCollection4.netId = 0
  dataCollection4.entity = 0
  localValue1 = 0
  number13 = localValue1
  localValue1 = FreezeEntityPosition
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue1(localValue2, localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "139a32a44e".
eventHandler(text12, workingValue9)
