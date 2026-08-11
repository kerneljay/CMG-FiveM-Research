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
local flag, numberValue5, numberValue10, vector3Builder, flag23, numberValue16, flag27, flag29, workValue11, workValue12, dataTable, textValue2, dataTable2, flag3, dataTable3, flag6, flag8, numberValue2, numberValue4, textValue3, dataTable4, dataTable5, dataTable6, numberValue7, workValue3, workValue4, textValue4, textValue5, rageUiCall, textValue6, textValue7, rageUiCall2, rageUiCall3, textValue8, textValue9, threadCall, numberValue12, numberValue13, flag21, flag22, rageUiCall4, rageUiCall5, workValue7, workValue8, textValue11, eventRegistration, textValue12, workValue9, workValue10
flag = false
numberValue5 = 0
numberValue10 = 0
vector3Builder = vector3
flag23 = -710.4659
numberValue16 = 269.6835
flag27 = 83.13184
vector3Builder = vector3Builder(flag23, numberValue16, flag27)
flag23 = false
numberValue16 = 0
flag27 = false
flag29 = false
workValue11 = nil
workValue12 = nil
dataTable = {}
textValue2 = "g4svan"
dataTable2 = {}
flag3 = false
dataTable3 = {}
flag6 = false
flag8 = false
numberValue2 = 0
numberValue4 = 0
textValue3 = ""
dataTable4 = {}
dataTable4.hackingEngaged = false
dataTable4.netId = 0
dataTable4.entity = 0
dataTable4.src = 0
dataTable4.successful = false
dataTable4.hackingCooldown = false
dataTable4.awaitingResponse = false
dataTable5 = {}
dataTable5.x = -709.134
dataTable5.y = 277.1604
dataTable5.z = 83.89014
dataTable5.heading = 288.89
dataTable6 = {}
dataTable6.active = false
dataTable6.handle = 0
numberValue7 = 0

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
function workValue3()
  local arg1, arg2, arg3, arg4, arg5, flag25, flag28, flag30
  arg1 = math
  arg1 = arg1.ceil
  arg2 = CMG
  arg2 = arg2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg2 = arg2()
  arg3 = GetEntityCoords
  arg4 = numberValue5
  -- Beginner: result below is entityCoords.
  arg3 = arg3(arg4)
  arg2 = arg2 - arg3
  arg2 = #arg2
  arg2 = arg2 / 10
  arg1 = arg1(arg2)
  arg1 = 500 * arg1
  arg2 = flag29
  if arg2 then
    arg2 = RenderScriptCams
    arg3 = false
    arg4 = true
    arg5 = arg1
    flag25 = true
    flag28 = false
    arg2(arg3, arg4, arg5, flag25, flag28)
    arg2 = ClearTimecycleModifier
    arg2()
    arg2 = DoesCamExist
    arg3 = numberValue7
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = DestroyCam
      arg3 = numberValue7
      arg4 = false
      arg2(arg3, arg4)
    end
    arg2 = false
    flag29 = arg2
  else
    arg2 = CreateCam
    arg3 = "DEFAULT_SCRIPTED_CAMERA"
    arg4 = true
    -- Beginner: result below is cameraHandle.
    arg2 = arg2(arg3, arg4)
    numberValue7 = arg2
    arg2 = AttachCamToEntity
    arg3 = numberValue7
    arg4 = numberValue5
    arg5 = 2.5
    flag25 = 5.0
    flag28 = 2.0
    flag30 = true
    arg2(arg3, arg4, arg5, flag25, flag28, flag30)
    arg2 = PointCamAtEntity
    arg3 = numberValue7
    arg4 = numberValue5
    arg5 = 1
    flag25 = 1
    flag28 = 1
    flag30 = true
    arg2(arg3, arg4, arg5, flag25, flag28, flag30)
    arg2 = RenderScriptCams
    arg3 = true
    arg4 = true
    arg5 = arg1
    flag25 = true
    flag28 = true
    arg2(arg3, arg4, arg5, flag25, flag28)
    arg2 = Wait
    arg3 = arg1
    arg2(arg3)
    arg2 = SetTimecycleModifier
    arg3 = "scanline_cam_cheap"
    arg2(arg3)
    arg2 = SetTimecycleModifierStrength
    arg3 = 3.0
    arg2(arg3)
    arg2 = true
    flag29 = arg2
  end
end
workValue4 = RMenu
workValue4 = workValue4.Add
textValue4 = "g4s"
textValue5 = "shiftHandler"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue6 = ""
textValue7 = "Security Company"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
textValue8 = "cmg_g4sjob"
textValue9 = "cmg_g4sjob"
rageUiCall, textValue6, textValue7, rageUiCall2, rageUiCall3, textValue8, textValue9, threadCall, numberValue12, numberValue13, flag21, flag22, rageUiCall4, rageUiCall5, workValue7, workValue8, textValue11, eventRegistration, textValue12, workValue9, workValue10 = rageUiCall(textValue6, textValue7, rageUiCall2, rageUiCall3, textValue8, textValue9)
workValue4(textValue4, textValue5, rageUiCall, textValue6, textValue7, rageUiCall2, rageUiCall3, textValue8, textValue9, threadCall, numberValue12, numberValue13, flag21, flag22, rageUiCall4, rageUiCall5, workValue7, workValue8, textValue11, eventRegistration, textValue12, workValue9, workValue10)
workValue4 = RMenu
textValue4 = workValue4
workValue4 = workValue4.Get
textValue5 = "g4s"
rageUiCall = "shiftHandler"
-- Beginner: result below is menu.
workValue4 = workValue4(textValue4, textValue5, rageUiCall)
textValue4 = workValue4
workValue4 = workValue4.SetSubtitle
textValue5 = "Security Company"
workValue4(textValue4, textValue5)
workValue4 = RMenu
textValue4 = workValue4
workValue4 = workValue4.Get
textValue5 = "g4s"
rageUiCall = "shiftHandler"
-- Beginner: result below is menu.
workValue4 = workValue4(textValue4, textValue5, rageUiCall)
workValue4.Closable = true
workValue4 = RMenu
workValue4 = workValue4.Add
textValue4 = "g4s"
textValue5 = "main"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue6 = ""
textValue7 = "Security Company"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
textValue8 = "cmg_g4sjob"
textValue9 = "cmg_g4sjob"
rageUiCall, textValue6, textValue7, rageUiCall2, rageUiCall3, textValue8, textValue9, threadCall, numberValue12, numberValue13, flag21, flag22, rageUiCall4, rageUiCall5, workValue7, workValue8, textValue11, eventRegistration, textValue12, workValue9, workValue10 = rageUiCall(textValue6, textValue7, rageUiCall2, rageUiCall3, textValue8, textValue9)
workValue4(textValue4, textValue5, rageUiCall, textValue6, textValue7, rageUiCall2, rageUiCall3, textValue8, textValue9, threadCall, numberValue12, numberValue13, flag21, flag22, rageUiCall4, rageUiCall5, workValue7, workValue8, textValue11, eventRegistration, textValue12, workValue9, workValue10)
workValue4 = RMenu
textValue4 = workValue4
workValue4 = workValue4.Get
textValue5 = "g4s"
rageUiCall = "main"
-- Beginner: result below is menu.
workValue4 = workValue4(textValue4, textValue5, rageUiCall)
textValue4 = workValue4
workValue4 = workValue4.SetSubtitle
textValue5 = "Security Company"
workValue4(textValue4, textValue5)
workValue4 = RMenu
textValue4 = workValue4
workValue4 = workValue4.Get
textValue5 = "g4s"
rageUiCall = "main"
-- Beginner: result below is menu.
workValue4 = workValue4(textValue4, textValue5, rageUiCall)
workValue4.Closable = true
workValue4 = TriggerEvent
textValue4 = "chat:addSuggestion"
textValue5 = "/securejob"
rageUiCall = "Toggles your Cash Driver menu."
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
workValue4(textValue4, textValue5, rageUiCall)
workValue4 = tCMG
workValue4 = workValue4.addMarker
textValue4 = vector3Builder.x
textValue5 = vector3Builder.y
rageUiCall = vector3Builder.z
textValue6 = 1.2
textValue7 = 1.2
rageUiCall2 = 1.2
rageUiCall3 = 0
textValue8 = 255
textValue9 = 125
threadCall = 125
numberValue12 = 50
numberValue13 = 0
flag21 = true
flag22 = true
-- Beginner: Create a world marker.
workValue4(textValue4, textValue5, rageUiCall, textValue6, textValue7, rageUiCall2, rageUiCall3, textValue8, textValue9, threadCall, numberValue12, numberValue13, flag21, flag22)
workValue4 = tCMG
workValue4 = workValue4.addBlip
textValue4 = vector3Builder.x
textValue5 = vector3Builder.y
rageUiCall = vector3Builder.z
textValue6 = 457
textValue7 = 18
rageUiCall2 = "Cash Driver Depot"
rageUiCall3 = 1.0
textValue8 = false
-- Beginner: Create a minimap blip.
workValue4(textValue4, textValue5, rageUiCall, textValue6, textValue7, rageUiCall2, rageUiCall3, textValue8)

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: none) ===
function workValue4()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "g4s"
  arg5 = "shiftHandler"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg1(arg2, arg3)
end

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "g4s"
  arg5 = "shiftHandler"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = false
  arg1(arg2, arg3)
end

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2
end
rageUiCall = CMG
rageUiCall = rageUiCall.createArea
textValue6 = "g4sDepot_"
textValue7 = vector3Builder
rageUiCall2 = 1.5
rageUiCall3 = 6
textValue8 = workValue4
textValue9 = textValue4
threadCall = textValue5
-- Beginner: Create an interaction area around a world position.
rageUiCall(textValue6, textValue7, rageUiCall2, rageUiCall3, textValue8, textValue9, threadCall)

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: none) ===
function rageUiCall()
  local arg1, arg2, arg3, arg4, arg5, flag25, flag28, flag30, flag31
  arg1 = CMG
  arg1 = arg1.DrawText
  arg2 = 0.011
  arg3 = 0.55
  arg4 = "Job Number: "
  arg5 = dataTable.totalJobs
  arg5 = arg5 + 1
  arg4 = arg4 .. arg5
  arg5 = 0.5
  flag25 = 6
  arg1(arg2, arg3, arg4, arg5, flag25)
  arg1 = DrawRect
  arg2 = 0.175
  arg3 = 0.51
  arg4 = 0.005
  arg5 = 0.17
  flag25 = 0
  flag28 = 121
  flag30 = 235
  flag31 = 255
  arg1(arg2, arg3, arg4, arg5, flag25, flag28, flag30, flag31)
end

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2, arg3, arg4, arg5, flag25
  arg1 = dataTable.jobActive
  if arg1 then
    arg1 = CMG
    arg1 = arg1.DrawText
    arg2 = 0.011
    arg3 = 0.51
    arg4 = "Destination: "
    arg5 = dataTable.depositName
    arg4 = arg4 .. arg5
    arg5 = 0.5
    flag25 = 4
    arg1(arg2, arg3, arg4, arg5, flag25)
    arg1 = rageUiCall
    -- Beginner: Create an interaction area around a world position.
    arg1()
  end
end

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, arg3, arg4, arg5, flag25
  arg1 = dataTable.jobActive
  if arg1 then
    arg1 = CMG
    arg1 = arg1.DrawText
    arg2 = 0.011
    arg3 = 0.47
    arg4 = "Current Job: "
    arg5 = dataTable.collectionName
    arg4 = arg4 .. arg5
    arg5 = 0.5
    flag25 = 4
    arg1(arg2, arg3, arg4, arg5, flag25)
    arg1 = AddTextComponentSubstringPlayerName
    arg2 = "Current Job: "
    arg3 = dataTable.collectionName
    arg2 = arg2 .. arg3
    arg1(arg2)
  else
    arg1 = CMG
    arg1 = arg1.DrawText
    arg2 = 0.011
    arg3 = 0.47
    arg4 = "Pending"
    arg5 = 4
    arg1(arg2, arg3, arg4, arg5)
  end
  arg1 = textValue6
  arg1()
end

-- === HELPER FUNCTION (decompiler name: rageUiCall2; parameters: none) ===
function rageUiCall2()
  local arg1, arg2, arg3, arg4, arg5, flag25, flag28, flag30, flag31, numberValue19, textValue, flag2
  arg1 = CMG
  arg1 = arg1.DrawText
  arg2 = 0.011
  arg3 = 0.43
  arg4 = "Cash Driver"
  arg5 = 0.7
  flag25 = 4
  flag28 = 1
  flag30 = {}
  flag31 = 0
  numberValue19 = 121
  textValue = 235
  flag2 = 255
  flag30[1] = flag31
  flag30[2] = numberValue19
  flag30[3] = textValue
  flag30[4] = flag2
  flag31 = true
  arg1(arg2, arg3, arg4, arg5, flag25, flag28, flag30, flag31)
  arg1 = DrawRect
  arg2 = 0.0
  arg3 = 0.51
  arg4 = 0.35
  arg5 = 0.17
  flag25 = 0
  flag28 = 0
  flag30 = 0
  flag31 = 150
  arg1(arg2, arg3, arg4, arg5, flag25, flag28, flag30, flag31)
  arg1 = textValue7
  arg1()
end

-- === HELPER FUNCTION (decompiler name: rageUiCall3; parameters: arg1, arg2, arg3, arg4, arg5) ===
function rageUiCall3(arg1, arg2, arg3, arg4, arg5)
  local flag25, flag28, flag30, flag31, numberValue19, textValue, flag2
  if "g4slogo" == arg1 then
    flag25 = HasStreamedTextureDictLoaded
    flag28 = "g4slogo"
    flag25 = flag25(flag28)
    if not flag25 then
      flag25 = RequestStreamedTextureDict
      flag28 = "g4slogo"
      flag30 = true
      flag25(flag28, flag30)
      while true do
        flag25 = HasStreamedTextureDictLoaded
        flag28 = "g4slogo"
        flag25 = flag25(flag28)
        if flag25 then
          break
        end
        flag25 = Wait
        flag28 = 0
        flag25(flag28)
      end
    end
  end
  flag25 = BeginTextCommandThefeedPost
  flag28 = "STRING"
  flag25(flag28)
  flag25 = AddTextComponentSubstringPlayerName
  flag28 = arg3
  flag25(flag28)
  flag25 = EndTextCommandThefeedPostMessagetext
  flag28 = arg1
  flag30 = arg2
  flag31 = false
  numberValue19 = 0
  textValue = arg4
  flag2 = arg5
  flag25(flag28, flag30, flag31, numberValue19, textValue, flag2)
  flag25 = true
  flag28 = false
  flag30 = EndTextCommandThefeedPostTicker
  flag31 = flag28
  numberValue19 = flag25
  flag30(flag31, numberValue19)
  flag30 = PlaySoundFrontend
  flag31 = -1
  numberValue19 = "CHECKPOINT_NORMAL"
  textValue = "HUD_MINI_GAME_SOUNDSET"
  flag2 = true
  flag30(flag31, numberValue19, textValue, flag2)
end

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: none) ===
function textValue8()
  local arg1, arg2, arg3, arg4, arg5, flag25, flag28, flag30, flag31, numberValue19, textValue, flag2, numberValue, flag4, flag5, flag7, flag9, numberValue3, flag10
  arg1 = dataTable6.active
  if arg1 then
    arg1 = DeleteObject
    arg2 = dataTable6.handle
    arg1(arg2)
    dataTable6.active = false
  else
    arg1 = CMG
    arg1 = arg1.loadModel
    arg2 = 355444045
    arg1 = arg1(arg2)
    if not arg1 then
      return
    end
    arg2 = CMG
    arg2 = arg2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = CMG
    arg3 = arg3.requestEntitySpawn
    arg4 = "g4s_cashbox"
    arg3(arg4)
    arg3 = CMG
    arg3 = arg3.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg3 = arg3()
    arg4 = CreateObject
    arg5 = arg1
    flag25 = arg3.x
    flag28 = arg3.y
    flag30 = arg3.z
    flag31 = true
    numberValue19 = true
    textValue = true
    -- Beginner: result below is objectEntity.
    arg4 = arg4(arg5, flag25, flag28, flag30, flag31, numberValue19, textValue)
    dataTable6.handle = arg4
    while true do
      arg4 = DoesEntityExist
      arg5 = dataTable6.handle
      arg4 = arg4(arg5)
      if arg4 then
        break
      end
      arg4 = Wait
      arg5 = 0
      arg4(arg5)
    end
    dataTable6.active = true
    arg4 = AttachEntityToEntity
    arg5 = dataTable6.handle
    flag25 = arg2
    flag28 = GetPedBoneIndex
    flag30 = arg2
    flag31 = 57005
    flag28 = flag28(flag30, flag31)
    flag30 = 0.5
    flag31 = 0
    numberValue19 = 0.03
    textValue = -95.0
    flag2 = 0
    numberValue = 90.0
    flag4 = true
    flag5 = true
    flag7 = false
    flag9 = true
    numberValue3 = 1
    flag10 = true
    -- Beginner: Attach one entity to another entity.
    arg4(arg5, flag25, flag28, flag30, flag31, numberValue19, textValue, flag2, numberValue, flag4, flag5, flag7, flag9, numberValue3, flag10)
    arg4 = SetModelAsNoLongerNeeded
    arg5 = arg1
    arg4(arg5)
  end
end

-- === HELPER FUNCTION (decompiler name: textValue9; parameters: none) ===
function textValue9()
  local arg1, arg2, arg3, arg4, arg5, flag25, flag28
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg1 = arg1()
  if 0 ~= arg1 and nil ~= arg1 then
    arg2 = numberValue5
    if nil ~= arg2 then
      arg2 = numberValue5
      if 0 ~= arg2 then
        arg2 = numberValue5
        if arg1 ~= arg2 then
          arg2 = true
          flag3 = arg2
          arg2 = rageUiCall3
          arg3 = "g4slogo"
          arg4 = "g4slogo"
          arg5 = "Please ensure you are in your private security vehicle."
          flag25 = "Cash Driver Security"
          flag28 = "Human Resources"
          arg2(arg3, arg4, arg5, flag25, flag28)
          arg2 = SetTimeout
          arg3 = 15000

          -- === HELPER FUNCTION: arg4() ===
          function arg4()
            local vehicle, cmgCall, flag17
            vehicle = GetVehiclePedIsIn
            cmgCall = CMG
            cmgCall = cmgCall.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            cmgCall = cmgCall()
            flag17 = false
            -- Beginner: result below is currentVehicle.
            vehicle = vehicle(cmgCall, flag17)
            arg1 = vehicle
            vehicle = arg1
            if 0 ~= vehicle then
              vehicle = arg1
              cmgCall = numberValue5
              if vehicle ~= cmgCall then
                vehicle = TriggerServerEvent
                cmgCall = "2ee6b18cbd"
                flag17 = false
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2ee6b18cbd".
                vehicle(cmgCall, flag17)
                vehicle = tCMG
                vehicle = vehicle.removeBlip
                cmgCall = workValue11
                vehicle(cmgCall)
                vehicle = tCMG
                vehicle = vehicle.removeBlip
                cmgCall = workValue12
                vehicle(cmgCall)
                vehicle = ClearGpsPlayerWaypoint
                vehicle()
              end
            end
            vehicle = false
            flag3 = vehicle
          end
          arg2(arg3, arg4)
        end
      end
    end
  end
end
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: numberValue12; parameters: none) ===
function numberValue12()
  local arg1, arg2, arg3, arg4, arg5, flag25, flag28, flag30, flag31, numberValue19, textValue, flag2, numberValue, flag4, flag5, flag7, flag9, numberValue3, flag10, flag11, numberValue6, flag12, workValue, workValue2, flag13
  while true do
    arg1 = flag
    if arg1 then
      arg1 = flag8
      if not arg1 then
        arg1 = rageUiCall2
        arg1()
      end
      arg1 = dataTable.jobActive
      if arg1 then
        arg1 = dataTable.collected
        if not arg1 then
          arg1 = flag6
          if arg1 then
            arg1 = DrawMarker
            arg2 = 29
            arg3 = dataTable.collectionCoords
            arg3 = arg3.x
            arg4 = dataTable.collectionCoords
            arg4 = arg4.y
            arg5 = dataTable.collectionCoords
            arg5 = arg5.z
            flag25 = 0.0
            flag28 = 0.0
            flag30 = 0.0
            flag31 = 0.0
            numberValue19 = 0.0
            textValue = 0.0
            flag2 = 1.5
            numberValue = 1.5
            flag4 = 1.5
            flag5 = 0
            flag7 = 221
            flag9 = 255
            numberValue3 = 36
            flag10 = false
            flag11 = true
            numberValue6 = 0
            flag12 = false
            workValue = nil
            workValue2 = nil
            flag13 = false
            arg1(arg2, arg3, arg4, arg5, flag25, flag28, flag30, flag31, numberValue19, textValue, flag2, numberValue, flag4, flag5, flag7, flag9, numberValue3, flag10, flag11, numberValue6, flag12, workValue, workValue2, flag13)
          else
            arg1 = DrawMarker
            arg2 = 29
            arg3 = dataTable.collectionCoords
            arg3 = arg3.x
            arg4 = dataTable.collectionCoords
            arg4 = arg4.y
            arg5 = dataTable.collectionCoords
            arg5 = arg5.z
            flag25 = 0.0
            flag28 = 0.0
            flag30 = 0.0
            flag31 = 0.0
            numberValue19 = 0.0
            textValue = 0.0
            flag2 = 1.5
            numberValue = 1.5
            flag4 = 1.5
            flag5 = 0
            flag7 = 255
            flag9 = 36
            numberValue3 = 36
            flag10 = false
            flag11 = true
            numberValue6 = 0
            flag12 = false
            workValue = nil
            workValue2 = nil
            flag13 = false
            arg1(arg2, arg3, arg4, arg5, flag25, flag28, flag30, flag31, numberValue19, textValue, flag2, numberValue, flag4, flag5, flag7, flag9, numberValue3, flag10, flag11, numberValue6, flag12, workValue, workValue2, flag13)
          end
          arg1 = dataTable.collecting
          if arg1 then
            arg1 = dataTable6.active
            if not arg1 then
              arg1 = textValue8
              -- Beginner: Create a minimap blip.
              arg1()
            end
          else
            arg1 = RageUI
            arg1 = arg1.Text
            arg2 = {}
            arg3 = "Drive to ~b~"
            arg4 = dataTable.collectionName
            arg3 = arg3 .. arg4
            arg2.message = arg3
            arg1(arg2)
            arg1 = flag3
            if not arg1 then
              arg1 = textValue9
              arg1()
            end
          end
        else
          arg1 = dataTable.deposited
          if not arg1 then
            arg1 = dataTable.depositing
            if arg1 then
              arg1 = dataTable6.active
              if not arg1 then
                arg1 = textValue8
                -- Beginner: Create a minimap blip.
                arg1()
              end
            else
              arg1 = RageUI
              arg1 = arg1.Text
              arg2 = {}
              arg3 = "Drive to ~b~"
              arg4 = dataTable.depositName
              arg3 = arg3 .. arg4
              arg2.message = arg3
              arg1(arg2)
              arg1 = flag3
              if not arg1 then
                arg1 = textValue9
                arg1()
              end
            end
            arg1 = DrawMarker
            arg2 = 29
            arg3 = dataTable.depositCoords
            arg3 = arg3.x
            arg4 = dataTable.depositCoords
            arg4 = arg4.y
            arg5 = dataTable.depositCoords
            arg5 = arg5.z
            flag25 = 0.0
            flag28 = 0.0
            flag30 = 0.0
            flag31 = 0.0
            numberValue19 = 0.0
            textValue = 0.0
            flag2 = 1.5
            numberValue = 1.5
            flag4 = 1.5
            flag5 = 255
            flag7 = 36
            flag9 = 36
            numberValue3 = 50
            flag10 = true
            flag11 = true
            numberValue6 = 2
            flag12 = false
            workValue = nil
            workValue2 = nil
            flag13 = false
            arg1(arg2, arg3, arg4, arg5, flag25, flag28, flag30, flag31, numberValue19, textValue, flag2, numberValue, flag4, flag5, flag7, flag9, numberValue3, flag10, flag11, numberValue6, flag12, workValue, workValue2, flag13)
          end
        end
      end
      arg1 = flag29
      if arg1 then
        arg1 = RageUI
        arg1 = arg1.Visible
        arg2 = RMenu
        arg3 = arg2
        arg2 = arg2.Get
        arg4 = "g4s"
        arg5 = "shiftHandler"
        -- Beginner: result below is menu.
        arg2 = arg2(arg3, arg4, arg5)
        arg3 = true
        arg1(arg2, arg3)
      else
      end
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(numberValue12)
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: numberValue12; parameters: none) ===
function numberValue12()
  local arg1, arg2, arg3, arg4, arg5, flag25, flag28, flag30, flag31, numberValue19, textValue, flag2, numberValue, flag4, flag5, flag7, flag9, numberValue3, flag10, flag11, numberValue6, flag12, workValue, workValue2, flag13, flag14, numberValue8, numberValue9, flag15, flag16, flag18, numberValue11, flag19, workValue5, workValue6, flag20
  while true do
    arg1 = dataTable4.hackingEngaged
    if not arg1 then
      arg1 = flag
      if not arg1 then
        arg1 = dataTable4.awaitingResponse
        if not arg1 then
          arg1 = table
          arg1 = arg1.count
          arg2 = dataTable3
          -- Beginner: result below is count.
          arg1 = arg1(arg2)
          if arg1 > 0 then
            arg1 = CMG
            arg1 = arg1.getPlayerVehicle
            -- Beginner: result below is currentVehicle.
            arg1 = arg1()
            if 0 == arg1 then
              arg1 = pairs
              arg2 = dataTable3
              arg1, arg2, arg3, arg4 = arg1(arg2)
              for arg5, flag25 in arg1, arg2, arg3, arg4 do
                flag28 = flag25[3]
                flag30 = flag25[2]
                flag31 = flag25[1]
                numberValue19 = table
                numberValue19 = numberValue19.has
                textValue = dataTable2
                flag2 = flag31
                numberValue19 = numberValue19(textValue, flag2)
                if not numberValue19 then
                  numberValue19 = DoesEntityExist
                  textValue = flag30
                  numberValue19 = numberValue19(textValue)
                  if numberValue19 then
                    goto flow_label_43
                  end
                end
                numberValue19 = dataTable3
                numberValue19[arg5] = nil
                goto flow_label_144
                ::flow_label_43::
                numberValue19 = IsVehicleStopped
                textValue = flag30
                numberValue19 = numberValue19(textValue)
                if numberValue19 then
                  numberValue19 = CMG
                  numberValue19 = numberValue19.getPlayerCoords
                  -- Beginner: result below is playerCoords.
                  numberValue19 = numberValue19()
                  textValue = GetEntityCoords
                  flag2 = flag30
                  -- Beginner: result below is entityCoords.
                  textValue = textValue(flag2)
                  numberValue19 = numberValue19 - textValue
                  numberValue19 = #numberValue19
                  textValue = GetOffsetFromEntityInWorldCoords
                  flag2 = numberValue5
                  numberValue = 0.0
                  flag4 = -6.0
                  flag5 = 0.0
                  textValue = textValue(flag2, numberValue, flag4, flag5)
                  if numberValue19 <= 11.0 then
                    flag2 = DrawMarker
                    numberValue = 29
                    flag4 = textValue.x
                    flag5 = textValue.y
                    flag7 = textValue.z
                    flag7 = flag7 + 0.5
                    flag9 = 0.0
                    numberValue3 = 0.0
                    flag10 = 0.0
                    flag11 = 0.0
                    numberValue6 = 0.0
                    flag12 = 0.0
                    workValue = 1.5
                    workValue2 = 1.5
                    flag13 = 1.5
                    flag14 = 255
                    numberValue8 = 36
                    numberValue9 = 36
                    flag15 = 50
                    flag16 = true
                    flag18 = false
                    numberValue11 = 2
                    flag19 = false
                    workValue5 = nil
                    workValue6 = nil
                    flag20 = false
                    flag2(numberValue, flag4, flag5, flag7, flag9, numberValue3, flag10, flag11, numberValue6, flag12, workValue, workValue2, flag13, flag14, numberValue8, numberValue9, flag15, flag16, flag18, numberValue11, flag19, workValue5, workValue6, flag20)
                    flag2 = RageUI
                    flag2 = flag2.Text
                    numberValue = {}
                    numberValue.message = "~b~Cash Driver~w~: Press ENTER to hack."
                    flag2(numberValue)
                    flag2 = IsControlJustPressed
                    numberValue = 1
                    flag4 = 18
                    flag2 = flag2(numberValue, flag4)
                    if flag2 then
                      dataTable4.netId = flag28
                      dataTable4.entity = flag30
                      dataTable4.src = flag31
                      flag2 = TriggerServerEvent
                      numberValue = "370aa47158"
                      flag4 = flag28
                      flag5 = flag31
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "370aa47158".
                      flag2(numberValue, flag4, flag5)
                      dataTable4.awaitingResponse = true
                      break
                    end
                  elseif numberValue19 <= 35.0 then
                    flag2 = DrawMarker
                    numberValue = 29
                    flag4 = textValue.x
                    flag5 = textValue.y
                    flag7 = textValue.z
                    flag7 = flag7 + 0.5
                    flag9 = 0.0
                    numberValue3 = 0.0
                    flag10 = 0.0
                    flag11 = 0.0
                    numberValue6 = 0.0
                    flag12 = 0.0
                    workValue = 1.5
                    workValue2 = 1.5
                    flag13 = 1.5
                    flag14 = 255
                    numberValue8 = 36
                    numberValue9 = 36
                    flag15 = 50
                    flag16 = true
                    flag18 = false
                    numberValue11 = 2
                    flag19 = false
                    workValue5 = nil
                    workValue6 = nil
                    flag20 = false
                    flag2(numberValue, flag4, flag5, flag7, flag9, numberValue3, flag10, flag11, numberValue6, flag12, workValue, workValue2, flag13, flag14, numberValue8, numberValue9, flag15, flag16, flag18, numberValue11, flag19, workValue5, workValue6, flag20)
                  end
                end
                ::flow_label_144::
              end
            end
          end
        end
      end
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(numberValue12)
threadCall = nil
numberValue12 = nil
numberValue13 = 2
flag21 = "HONGKONG"

-- === HELPER FUNCTION (decompiler name: flag22; parameters: none) ===
function flag22()
  local arg1, arg2
  arg1 = Citizen
  arg1 = arg1.CreateThread

  -- === HELPER FUNCTION: arg2() ===
  function arg2()
    local vehicle, cmgCall, flag17, numberValue14, flag24, numberValue17, numberValue18

    -- === HELPER FUNCTION: vehicle(arg12) ===
    function vehicle(arg12)
      local arg22, arg32, textValue10, numberValue15
      arg22 = RequestScaleformMovieInteractive
      arg32 = arg12
      arg22 = arg22(arg32)
      threadCall = arg22
      while true do
        arg22 = HasScaleformMovieLoaded
        arg32 = threadCall
        arg22 = arg22(arg32)
        if arg22 then
          break
        end
        arg22 = Citizen
        arg22 = arg22.Wait
        arg32 = 0
        arg22(arg32)
      end
      arg22 = BeginScaleformMovieMethod
      arg32 = threadCall
      textValue10 = "SET_LABELS"
      arg22(arg32, textValue10)
      arg22 = _ENV
      arg32 = "ScaleformMovieMethodAddParamTextureNameString"
      arg22 = arg22[arg32]
      arg32 = "Local Disk (C:)"
      arg22(arg32)
      arg22 = _ENV
      arg32 = "ScaleformMovieMethodAddParamTextureNameString"
      arg22 = arg22[arg32]
      arg32 = "Cash Driver Network"
      arg22(arg32)
      arg22 = _ENV
      arg32 = "ScaleformMovieMethodAddParamTextureNameString"
      arg22 = arg22[arg32]
      arg32 = "External Device (E:)"
      arg22(arg32)
      arg22 = _ENV
      arg32 = "ScaleformMovieMethodAddParamTextureNameString"
      arg22 = arg22[arg32]
      arg32 = "HackConnect.exe"
      arg22(arg32)
      arg22 = _ENV
      arg32 = "ScaleformMovieMethodAddParamTextureNameString"
      arg22 = arg22[arg32]
      arg32 = "DriverHack.exe"
      arg22(arg32)
      arg22 = EndScaleformMovieMethod
      arg22()
      arg22 = BeginScaleformMovieMethod
      arg32 = threadCall
      textValue10 = "SET_BACKGROUND"
      arg22(arg32, textValue10)
      arg22 = ScaleformMovieMethodAddParamInt
      arg32 = math
      arg32 = arg32.random
      textValue10 = 1
      numberValue15 = 6
      arg32, textValue10, numberValue15 = arg32(textValue10, numberValue15)
      arg22(arg32, textValue10, numberValue15)
      arg22 = EndScaleformMovieMethod
      arg22()
      arg22 = BeginScaleformMovieMethod
      arg32 = threadCall
      textValue10 = "ADD_PROGRAM"
      arg22(arg32, textValue10)
      arg22 = ScaleformMovieMethodAddParamFloat
      arg32 = 1.0
      arg22(arg32)
      arg22 = ScaleformMovieMethodAddParamFloat
      arg32 = 4.0
      arg22(arg32)
      arg22 = _ENV
      arg32 = "ScaleformMovieMethodAddParamTextureNameString"
      arg22 = arg22[arg32]
      arg32 = "Cash Driver Control Panel"
      arg22(arg32)
      arg22 = EndScaleformMovieMethod
      arg22()
      arg22 = BeginScaleformMovieMethod
      arg32 = threadCall
      textValue10 = "ADD_PROGRAM"
      arg22(arg32, textValue10)
      arg22 = ScaleformMovieMethodAddParamFloat
      arg32 = 6.0
      arg22(arg32)
      arg22 = ScaleformMovieMethodAddParamFloat
      arg32 = 6.0
      arg22(arg32)
      arg22 = _ENV
      arg32 = "ScaleformMovieMethodAddParamTextureNameString"
      arg22 = arg22[arg32]
      arg32 = "Power Off"
      arg22(arg32)
      arg22 = EndScaleformMovieMethod
      arg22()
      arg22 = BeginScaleformMovieMethod
      arg32 = threadCall
      textValue10 = "SET_COLUMN_SPEED"
      arg22(arg32, textValue10)
      arg22 = ScaleformMovieMethodAddParamInt
      arg32 = 0
      arg22(arg32)
      arg22 = ScaleformMovieMethodAddParamInt
      arg32 = 255
      arg22(arg32)
      arg22 = EndScaleformMovieMethod
      arg22()
      arg22 = BeginScaleformMovieMethod
      arg32 = threadCall
      textValue10 = "SET_COLUMN_SPEED"
      arg22(arg32, textValue10)
      arg22 = ScaleformMovieMethodAddParamInt
      arg32 = 1
      arg22(arg32)
      arg22 = ScaleformMovieMethodAddParamInt
      arg32 = 255
      arg22(arg32)
      arg22 = EndScaleformMovieMethod
      arg22()
      arg22 = BeginScaleformMovieMethod
      arg32 = threadCall
      textValue10 = "SET_COLUMN_SPEED"
      arg22(arg32, textValue10)
      arg22 = ScaleformMovieMethodAddParamInt
      arg32 = 2
      arg22(arg32)
      arg22 = ScaleformMovieMethodAddParamInt
      arg32 = 255
      arg22(arg32)
      arg22 = EndScaleformMovieMethod
      arg22()
      arg22 = BeginScaleformMovieMethod
      arg32 = threadCall
      textValue10 = "SET_COLUMN_SPEED"
      arg22(arg32, textValue10)
      arg22 = ScaleformMovieMethodAddParamInt
      arg32 = 3
      arg22(arg32)
      arg22 = ScaleformMovieMethodAddParamInt
      arg32 = 255
      arg22(arg32)
      arg22 = EndScaleformMovieMethod
      arg22()
      arg22 = BeginScaleformMovieMethod
      arg32 = threadCall
      textValue10 = "SET_COLUMN_SPEED"
      arg22(arg32, textValue10)
      arg22 = ScaleformMovieMethodAddParamInt
      arg32 = 4
      arg22(arg32)
      arg22 = ScaleformMovieMethodAddParamInt
      arg32 = 255
      arg22(arg32)
      arg22 = EndScaleformMovieMethod
      arg22()
      arg22 = BeginScaleformMovieMethod
      arg32 = threadCall
      textValue10 = "SET_COLUMN_SPEED"
      arg22(arg32, textValue10)
      arg22 = ScaleformMovieMethodAddParamInt
      arg32 = 5
      arg22(arg32)
      arg22 = ScaleformMovieMethodAddParamInt
      arg32 = 255
      arg22(arg32)
      arg22 = EndScaleformMovieMethod
      arg22()
      arg22 = BeginScaleformMovieMethod
      arg32 = threadCall
      textValue10 = "SET_COLUMN_SPEED"
      arg22(arg32, textValue10)
      arg22 = ScaleformMovieMethodAddParamInt
      arg32 = 6
      arg22(arg32)
      arg22 = ScaleformMovieMethodAddParamInt
      arg32 = 255
      arg22(arg32)
      arg22 = EndScaleformMovieMethod
      arg22()
      arg22 = BeginScaleformMovieMethod
      arg32 = threadCall
      textValue10 = "SET_COLUMN_SPEED"
      arg22(arg32, textValue10)
      arg22 = ScaleformMovieMethodAddParamInt
      arg32 = 7
      arg22(arg32)
      arg22 = ScaleformMovieMethodAddParamInt
      arg32 = 255
      arg22(arg32)
      arg22 = EndScaleformMovieMethod
      arg22()
      arg22 = threadCall
      return arg22
    end
    Initialize = vehicle
    vehicle = Initialize
    cmgCall = "HACKING_PC"
    vehicle = vehicle(cmgCall)
    threadCall = vehicle
    while true do
      vehicle = DrawScaleformMovieFullscreen
      cmgCall = threadCall
      flag17 = 255
      numberValue14 = 255
      flag24 = 255
      numberValue17 = 255
      numberValue18 = 0
      vehicle(cmgCall, flag17, numberValue14, flag24, numberValue17, numberValue18)
      vehicle = BeginScaleformMovieMethod
      cmgCall = threadCall
      flag17 = "SET_CURSOR"
      vehicle(cmgCall, flag17)
      vehicle = ScaleformMovieMethodAddParamFloat
      cmgCall = GetControlNormal
      flag17 = 0
      numberValue14 = 239
      cmgCall, flag17, numberValue14, flag24, numberValue17, numberValue18 = cmgCall(flag17, numberValue14)
      vehicle(cmgCall, flag17, numberValue14, flag24, numberValue17, numberValue18)
      vehicle = ScaleformMovieMethodAddParamFloat
      cmgCall = GetControlNormal
      flag17 = 0
      numberValue14 = 240
      cmgCall, flag17, numberValue14, flag24, numberValue17, numberValue18 = cmgCall(flag17, numberValue14)
      vehicle(cmgCall, flag17, numberValue14, flag24, numberValue17, numberValue18)
      vehicle = EndScaleformMovieMethod
      vehicle()
      vehicle = IsDisabledControlJustPressed
      cmgCall = 0
      flag17 = 24
      vehicle = vehicle(cmgCall, flag17)
      if vehicle then
        vehicle = BeginScaleformMovieMethod
        cmgCall = threadCall
        flag17 = "SET_INPUT_EVENT_SELECT"
        vehicle(cmgCall, flag17)
        vehicle = EndScaleformMovieMethodReturnValue
        vehicle = vehicle()
        numberValue12 = vehicle
        vehicle = PlaySoundFrontend
        cmgCall = -1
        flag17 = "HACKING_CLICK"
        numberValue14 = ""
        flag24 = true
        vehicle(cmgCall, flag17, numberValue14, flag24)
      else
        vehicle = IsDisabledControlJustPressed
        cmgCall = 0
        flag17 = 25
        vehicle = vehicle(cmgCall, flag17)
        if vehicle then
          vehicle = BeginScaleformMovieMethod
          cmgCall = threadCall
          flag17 = "SET_INPUT_EVENT_BACK"
          vehicle(cmgCall, flag17)
          vehicle = EndScaleformMovieMethod
          vehicle()
          vehicle = PlaySoundFrontend
          cmgCall = -1
          flag17 = "HACKING_CLICK"
          numberValue14 = ""
          flag24 = true
          vehicle(cmgCall, flag17, numberValue14, flag24)
        end
      end
      cmgCall = dataTable4.netId
      vehicle = dataTable3
      vehicle = vehicle[cmgCall]
      if nil ~= vehicle then
        vehicle = dataTable4.hackingEngaged
        if vehicle then
          goto flow_label_88
        end
      end
      vehicle = SetScaleformMovieAsNoLongerNeeded
      cmgCall = threadCall
      vehicle(cmgCall)
      vehicle = 0
      numberValue13 = vehicle
      vehicle = Wait
      cmgCall = 2000
      vehicle(cmgCall)
      do break end
      ::flow_label_88::
      vehicle = Citizen
      vehicle = vehicle.Wait
      cmgCall = 0
      vehicle(cmgCall)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end
rageUiCall4 = RegisterNetEvent
rageUiCall5 = "c508e140c0"
-- Beginner: this function handles network event "c508e140c0".

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1, arg2, arg3, arg4) ===
function workValue7(arg1, arg2, arg3, arg4)
  local arg5, flag25, flag28, flag30, flag31, numberValue19, textValue, flag2, numberValue, flag4, flag5, flag7, flag9, numberValue3, flag10, flag11, numberValue6
  if arg4 then
    dataTable4.hackingEngaged = true
    dataTable4.awaitingResponse = false
    flag21 = arg3
    arg5 = 2
    numberValue13 = arg5
    arg5 = PlaySoundFrontend
    flag25 = -1
    flag28 = "5s_To_Event_Start_Countdown"
    flag30 = "GTAO_FM_Events_Soundset"
    flag31 = true
    arg5(flag25, flag28, flag30, flag31)
    arg5 = flag22
    arg5()
    arg5 = FreezeEntityPosition
    flag25 = CMG
    flag25 = flag25.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    flag25 = flag25()
    flag28 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    arg5(flag25, flag28)
    arg5 = CMG
    arg5 = arg5.setWeapon
    flag25 = CMG
    flag25 = flag25.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    flag25 = flag25()
    flag28 = -1569615261
    flag30 = true
    arg5(flag25, flag28, flag30)
    arg5 = CMG
    arg5 = arg5.loadModel
    flag25 = -1585232418
    arg5 = arg5(flag25)
    if not arg5 then
      return
    end
    flag25 = CMG
    flag25 = flag25.requestEntitySpawn
    flag28 = "g4s_hack_tablet"
    flag25(flag28)
    flag25 = CreateObject
    flag28 = arg5
    flag30 = 0
    flag31 = 0
    numberValue19 = 0
    textValue = true
    flag2 = true
    numberValue = true
    -- Beginner: result below is objectEntity.
    flag25 = flag25(flag28, flag30, flag31, numberValue19, textValue, flag2, numberValue)
    numberValue2 = flag25
    flag25 = AttachEntityToEntity
    flag28 = numberValue2
    flag30 = CMG
    flag30 = flag30.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    flag30 = flag30()
    flag31 = GetPedBoneIndex
    numberValue19 = CMG
    numberValue19 = numberValue19.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    numberValue19 = numberValue19()
    textValue = 57005
    flag31 = flag31(numberValue19, textValue)
    numberValue19 = 0.17
    textValue = 0.1
    flag2 = -0.13
    numberValue = 24.0
    flag4 = 180.0
    flag5 = 0.0
    flag7 = true
    flag9 = true
    numberValue3 = false
    flag10 = true
    flag11 = 1
    numberValue6 = true
    -- Beginner: Attach one entity to another entity.
    flag25(flag28, flag30, flag31, numberValue19, textValue, flag2, numberValue, flag4, flag5, flag7, flag9, numberValue3, flag10, flag11, numberValue6)
    flag25 = SetModelAsNoLongerNeeded
    flag28 = arg5
    flag25(flag28)
  else
    dataTable4.awaitingResponse = false
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c508e140c0".
rageUiCall4(rageUiCall5, workValue7)
rageUiCall4 = Citizen
rageUiCall4 = rageUiCall4.CreateThread

-- === HELPER FUNCTION (decompiler name: rageUiCall5; parameters: none) ===
function rageUiCall5()
  local arg1, arg2, arg3, arg4, arg5, flag25
  while true do
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 0
    arg1(arg2)
    arg1 = threadCall
    if arg1 then
      arg1 = HasScaleformMovieLoaded
      arg2 = threadCall
      arg1 = arg1(arg2)
      if arg1 then
        arg1 = DisableControlAction
        arg2 = 0
        arg3 = 24
        arg4 = true
        arg1(arg2, arg3, arg4)
        arg1 = DisableControlAction
        arg2 = 0
        arg3 = 25
        arg4 = true
        arg1(arg2, arg3, arg4)
        arg1 = IsScaleformMovieMethodReturnValueReady
        arg2 = numberValue12
        arg1 = arg1(arg2)
        if arg1 then
          arg1 = GetScaleformMovieMethodReturnValueInt
          arg2 = numberValue12
          arg1 = arg1(arg2)
          ProgramID = arg1
          arg1 = ProgramID
          if 82 == arg1 then
            arg1 = PlaySoundFrontend
            arg2 = -1
            arg3 = "HACKING_CLICK_BAD"
            arg4 = ""
            arg5 = false
            arg1(arg2, arg3, arg4, arg5)
          else
            arg1 = ProgramID
            if 83 == arg1 then
              arg1 = BeginScaleformMovieMethod
              arg2 = threadCall
              arg3 = "RUN_PROGRAM"
              arg1(arg2, arg3)
              arg1 = ScaleformMovieMethodAddParamFloat
              arg2 = 83.0
              arg1(arg2)
              arg1 = EndScaleformMovieMethod
              arg1()
              arg1 = BeginScaleformMovieMethod
              arg2 = threadCall
              arg3 = "SET_ROULETTE_WORD"
              arg1(arg2, arg3)
              arg1 = _ENV
              arg2 = "ScaleformMovieMethodAddParamTextureNameString"
              arg1 = arg1[arg2]
              arg2 = flag21
              arg1(arg2)
              arg1 = EndScaleformMovieMethod
              arg1()
            else
              arg1 = ProgramID
              if 87 == arg1 then
                arg1 = 0
                numberValue13 = arg1
                arg1 = BeginScaleformMovieMethod
                arg2 = threadCall
                arg3 = "SET_ROULETTE_WORD"
                arg1(arg2, arg3)
                arg1 = _ENV
                arg2 = "ScaleformMovieMethodAddParamTextureNameString"
                arg1 = arg1[arg2]
                arg2 = flag21
                arg1(arg2)
                arg1 = EndScaleformMovieMethod
                arg1()
                arg1 = Wait
                arg2 = 100
                arg1(arg2)
                arg1 = BeginScaleformMovieMethod
                arg2 = threadCall
                arg3 = "OPEN_ERROR_POPUP"
                arg1(arg2, arg3)
                arg1 = ScaleformMovieMethodAddParamBool
                arg2 = true
                arg1(arg2)
                arg1 = _ENV
                arg2 = "ScaleformMovieMethodAddParamTextureNameString"
                arg1 = arg1[arg2]
                arg2 = "MET POLICE AWARE, DEVICE SHUTTING DOWN"
                arg1(arg2)
                arg1 = EndScaleformMovieMethod
                arg1()
                arg1 = Wait
                arg2 = 100
                arg1(arg2)
                arg1 = SetScaleformMovieAsNoLongerNeeded
                arg2 = threadCall
                arg1(arg2)
                arg1 = EndScaleformMovieMethod
                arg1()
                arg1 = rageUiCall3
                arg2 = "g4slogo"
                arg3 = "g4slogo"
                arg4 = "Our security team have activated the panic for this vehicle."
                arg5 = "Cash Driver Security"
                flag25 = "Police Notified"
                arg1(arg2, arg3, arg4, arg5, flag25)
                arg1 = rageUiCall3
                arg2 = "g4slogo"
                arg3 = "g4slogo"
                arg4 = "You have failed to hack this vehicle."
                arg5 = "Cash Driver Security"
                flag25 = "Police Notified"
                arg1(arg2, arg3, arg4, arg5, flag25)
                arg1 = TriggerServerEvent
                arg2 = "58c97cecd8"
                arg3 = dataTable4.netId
                arg4 = dataTable4.src
                arg5 = flag21
                flag25 = false
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "58c97cecd8".
                arg1(arg2, arg3, arg4, arg5, flag25)
                arg1 = DeleteObject
                arg2 = numberValue2
                arg1(arg2)
                break
              else
                arg1 = ProgramID
                if 92 == arg1 then
                  arg1 = PlaySoundFrontend
                  arg2 = -1
                  arg3 = "HACKING_CLICK_GOOD"
                  arg4 = ""
                  arg5 = false
                  arg1(arg2, arg3, arg4, arg5)
                else
                  arg1 = ProgramID
                  if 86 == arg1 then
                    arg1 = PlaySoundFrontend
                    arg2 = -1
                    arg3 = "HACKING_SUCCESS"
                    arg4 = ""
                    arg5 = true
                    arg1(arg2, arg3, arg4, arg5)
                    arg1 = BeginScaleformMovieMethod
                    arg2 = threadCall
                    arg3 = "SET_ROULETTE_OUTCOME"
                    arg1(arg2, arg3)
                    arg1 = ScaleformMovieMethodAddParamBool
                    arg2 = true
                    arg1(arg2)
                    arg1 = _ENV
                    arg2 = "ScaleformMovieMethodAddParamTextureNameString"
                    arg1 = arg1[arg2]
                    arg2 = "Cash Driver HACK SUCCESSFUL!"
                    arg1(arg2)
                    arg1 = EndScaleformMovieMethod
                    arg1()
                    arg1 = Wait
                    arg2 = 3800
                    arg1(arg2)
                    arg1 = BeginScaleformMovieMethod
                    arg2 = threadCall
                    arg3 = "CLOSE_APP"
                    arg1(arg2, arg3)
                    arg1 = EndScaleformMovieMethod
                    arg1()
                    arg1 = BeginScaleformMovieMethod
                    arg2 = threadCall
                    arg3 = "OPEN_LOADING_PROGRESS"
                    arg1(arg2, arg3)
                    arg1 = ScaleformMovieMethodAddParamBool
                    arg2 = true
                    arg1(arg2)
                    arg1 = EndScaleformMovieMethod
                    arg1()
                    arg1 = BeginScaleformMovieMethod
                    arg2 = threadCall
                    arg3 = "SET_LOADING_PROGRESS"
                    arg1(arg2, arg3)
                    arg1 = ScaleformMovieMethodAddParamInt
                    arg2 = 35
                    arg1(arg2)
                    arg1 = EndScaleformMovieMethod
                    arg1()
                    arg1 = BeginScaleformMovieMethod
                    arg2 = threadCall
                    arg3 = "SET_LOADING_TIME"
                    arg1(arg2, arg3)
                    arg1 = ScaleformMovieMethodAddParamInt
                    arg2 = 35
                    arg1(arg2)
                    arg1 = EndScaleformMovieMethod
                    arg1()
                    arg1 = BeginScaleformMovieMethod
                    arg2 = threadCall
                    arg3 = "SET_LOADING_MESSAGE"
                    arg1(arg2, arg3)
                    arg1 = _ENV
                    arg2 = "ScaleformMovieMethodAddParamTextureNameString"
                    arg1 = arg1[arg2]
                    arg2 = "Writing data to hack.."
                    arg1(arg2)
                    arg1 = ScaleformMovieMethodAddParamFloat
                    arg2 = 4.0
                    arg1(arg2)
                    arg1 = EndScaleformMovieMethod
                    arg1()
                    arg1 = Wait
                    arg2 = 1500
                    arg1(arg2)
                    arg1 = BeginScaleformMovieMethod
                    arg2 = threadCall
                    arg3 = "SET_LOADING_MESSAGE"
                    arg1(arg2, arg3)
                    arg1 = _ENV
                    arg2 = "ScaleformMovieMethodAddParamTextureNameString"
                    arg1 = arg1[arg2]
                    arg2 = "Executing DriverInjection, accessing money.."
                    arg1(arg2)
                    arg1 = ScaleformMovieMethodAddParamFloat
                    arg2 = 2.0
                    arg1(arg2)
                    arg1 = EndScaleformMovieMethod
                    arg1()
                    arg1 = BeginScaleformMovieMethod
                    arg2 = threadCall
                    arg3 = "SET_LOADING_TIME"
                    arg1(arg2, arg3)
                    arg1 = ScaleformMovieMethodAddParamInt
                    arg2 = 15
                    arg1(arg2)
                    arg1 = EndScaleformMovieMethod
                    arg1()
                    arg1 = BeginScaleformMovieMethod
                    arg2 = threadCall
                    arg3 = "SET_LOADING_PROGRESS"
                    arg1(arg2, arg3)
                    arg1 = ScaleformMovieMethodAddParamInt
                    arg2 = 75
                    arg1(arg2)
                    arg1 = EndScaleformMovieMethod
                    arg1()
                    arg1 = Wait
                    arg2 = 1500
                    arg1(arg2)
                    arg1 = BeginScaleformMovieMethod
                    arg2 = threadCall
                    arg3 = "OPEN_LOADING_PROGRESS"
                    arg1(arg2, arg3)
                    arg1 = ScaleformMovieMethodAddParamBool
                    arg2 = false
                    arg1(arg2)
                    arg1 = EndScaleformMovieMethod
                    arg1()
                    arg1 = BeginScaleformMovieMethod
                    arg2 = threadCall
                    arg3 = "OPEN_ERROR_POPUP"
                    arg1(arg2, arg3)
                    arg1 = ScaleformMovieMethodAddParamBool
                    arg2 = true
                    arg1(arg2)
                    arg1 = _ENV
                    arg2 = "ScaleformMovieMethodAddParamTextureNameString"
                    arg1 = arg1[arg2]
                    arg2 = "MET POLICE AWARE - DEVICE SHUTTING DOWN"
                    arg1(arg2)
                    arg1 = EndScaleformMovieMethod
                    arg1()
                    arg1 = Wait
                    arg2 = 3500
                    arg1(arg2)
                    arg1 = SetScaleformMovieAsNoLongerNeeded
                    arg2 = threadCall
                    arg1(arg2)
                    arg1 = EndScaleformMovieMethod
                    arg1()
                    arg1 = rageUiCall3
                    arg2 = "g4slogo"
                    arg3 = "g4slogo"
                    arg4 = "We have notified the Metropolitan Police service. You are on CCTV."
                    arg5 = "Cash Driver Security"
                    flag25 = "Police Notified"
                    arg1(arg2, arg3, arg4, arg5, flag25)
                    arg1 = TriggerServerEvent
                    arg2 = "58c97cecd8"
                    arg3 = dataTable4.netId
                    arg4 = dataTable4.src
                    arg5 = flag21
                    flag25 = true
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "58c97cecd8".
                    arg1(arg2, arg3, arg4, arg5, flag25)
                    arg1 = DeleteObject
                    arg2 = numberValue2
                    arg1(arg2)
                    break
                  else
                    arg1 = ProgramID
                    if 6 == arg1 then
                      arg1 = Wait
                      arg2 = 500
                      arg1(arg2)
                      arg1 = SetScaleformMovieAsNoLongerNeeded
                      arg2 = threadCall
                      arg1(arg2)
                      arg1 = DisableControlAction
                      arg2 = 0
                      arg3 = 24
                      arg4 = false
                      arg1(arg2, arg3, arg4)
                      arg1 = DisableControlAction
                      arg2 = 0
                      arg3 = 25
                      arg4 = false
                      arg1(arg2, arg3, arg4)
                    end
                  end
                end
              end
            end
          end
          arg1 = numberValue13
          if 0 == arg1 then
            arg1 = PlaySoundFrontend
            arg2 = -1
            arg3 = "HACKING_FAILURE"
            arg4 = ""
            arg5 = true
            arg1(arg2, arg3, arg4, arg5)
            arg1 = BeginScaleformMovieMethod
            arg2 = threadCall
            arg3 = "SET_ROULETTE_OUTCOME"
            arg1(arg2, arg3)
            arg1 = ScaleformMovieMethodAddParamBool
            arg2 = false
            arg1(arg2)
            arg1 = _ENV
            arg2 = "ScaleformMovieMethodAddParamTextureNameString"
            arg1 = arg1[arg2]
            arg2 = "DRIVERINJECT - HACK FAILED!"
            arg1(arg2)
            arg1 = EndScaleformMovieMethod
            arg1()
            arg1 = Wait
            arg2 = 3500
            arg1(arg2)
            arg1 = BeginScaleformMovieMethod
            arg2 = threadCall
            arg3 = "CLOSE_APP"
            arg1(arg2, arg3)
            arg1 = EndScaleformMovieMethod
            arg1()
            arg1 = BeginScaleformMovieMethod
            arg2 = threadCall
            arg3 = "OPEN_ERROR_POPUP"
            arg1(arg2, arg3)
            arg1 = ScaleformMovieMethodAddParamBool
            arg2 = true
            arg1(arg2)
            arg1 = _ENV
            arg2 = "ScaleformMovieMethodAddParamTextureNameString"
            arg1 = arg1[arg2]
            arg2 = "POLICE AWARE OF HACK ATTEMPT, DEVICE SHUTTING DOWN"
            arg1(arg2)
            arg1 = EndScaleformMovieMethod
            arg1()
            arg1 = Wait
            arg2 = 2500
            arg1(arg2)
            arg1 = SetScaleformMovieAsNoLongerNeeded
            arg2 = threadCall
            arg1(arg2)
            arg1 = EndScaleformMovieMethod
            arg1()
            arg1 = DisableControlAction
            arg2 = 0
            arg3 = 24
            arg4 = false
            arg1(arg2, arg3, arg4)
            arg1 = DisableControlAction
            arg2 = 0
            arg3 = 25
            arg4 = false
            arg1(arg2, arg3, arg4)
            arg1 = notify
            arg2 = "Hacking Unsuccessful"
            -- Beginner: Show a notification to the player.
            arg1(arg2)
            arg1 = rageUiCall3
            arg2 = "g4slogo"
            arg3 = "g4slogo"
            arg4 = "Please note: The police have been notified."
            arg5 = "Cash Driver Security"
            flag25 = "Police Notified"
            arg1(arg2, arg3, arg4, arg5, flag25)
            arg1 = TriggerServerEvent
            arg2 = "58c97cecd8"
            arg3 = dataTable4.netId
            arg4 = dataTable4.src
            arg5 = flag21
            flag25 = false
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "58c97cecd8".
            arg1(arg2, arg3, arg4, arg5, flag25)
            arg1 = DeleteObject
            arg2 = numberValue2
            arg1(arg2)
            break
          end
        end
      end
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
rageUiCall4(rageUiCall5)
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateWhile
rageUiCall5 = 1
workValue7 = RMenu
workValue8 = workValue7
workValue7 = workValue7.Get
textValue11 = "g4s"
eventRegistration = "shiftHandler"
-- Beginner: result below is menu.
workValue7 = workValue7(workValue8, textValue11, eventRegistration)
workValue8 = nil

-- === HELPER FUNCTION (decompiler name: textValue11; parameters: none) ===
function textValue11()
  local arg1, arg2, arg3, arg4, arg5, flag25
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "g4s"
  arg5 = "shiftHandler"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION (decompiler name: flag25; parameters: none) ===
  function flag25()
    local vehicle, cmgCall, flag17, numberValue14, flag24, numberValue17
    vehicle = flag
    if not vehicle then
      vehicle = RageUI
      vehicle = vehicle.ButtonWithStyle
      cmgCall = "Start Shift"
      flag17 = "Start your shift working for Private Security."
      numberValue14 = {}
      numberValue14.RightLabel = "Cash Driver"
      flag24 = true

      -- === HELPER FUNCTION (decompiler name: numberValue17; parameters: arg12, arg22, arg32) ===
      function numberValue17(arg12, arg22, arg32)
        local textValue10, numberValue15, flag26, textValue13, textValue14
        if arg32 then
          textValue10 = RageUI
          textValue10 = textValue10.Visible
          numberValue15 = RMenu
          flag26 = numberValue15
          numberValue15 = numberValue15.Get
          textValue13 = "g4s"
          textValue14 = "shiftHandler"
          -- Beginner: result below is menu.
          numberValue15 = numberValue15(flag26, textValue13, textValue14)
          flag26 = false
          textValue10(numberValue15, flag26)
          textValue10 = TriggerServerEvent
          numberValue15 = "2ee6b18cbd"
          flag26 = true
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2ee6b18cbd".
          textValue10(numberValue15, flag26)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      vehicle(cmgCall, flag17, numberValue14, flag24, numberValue17)
    else
      vehicle = RageUI
      vehicle = vehicle.ButtonWithStyle
      cmgCall = "End Shift"
      flag17 = "End your shift working for Private Security"
      numberValue14 = {}
      numberValue14.RightLabel = "Cash Driver"
      flag24 = true

      -- === HELPER FUNCTION (decompiler name: numberValue17; parameters: arg12, arg22, arg32) ===
      function numberValue17(arg12, arg22, arg32)
        local textValue10, numberValue15, flag26, textValue13, textValue14
        if arg32 then
          textValue10 = RageUI
          textValue10 = textValue10.Visible
          numberValue15 = RMenu
          flag26 = numberValue15
          numberValue15 = numberValue15.Get
          textValue13 = "g4s"
          textValue14 = "shiftHandler"
          -- Beginner: result below is menu.
          numberValue15 = numberValue15(flag26, textValue13, textValue14)
          flag26 = false
          textValue10(numberValue15, flag26)
          textValue10 = TriggerServerEvent
          numberValue15 = "2ee6b18cbd"
          flag26 = false
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2ee6b18cbd".
          textValue10(numberValue15, flag26)
          textValue10 = false
          flag = textValue10
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      vehicle(cmgCall, flag17, numberValue14, flag24, numberValue17)
    end
  end
  arg1(arg2, arg3, arg4, arg5, flag25)
end
rageUiCall4(rageUiCall5, workValue7, workValue8, textValue11)

-- === HELPER FUNCTION (decompiler name: rageUiCall4; parameters: none) ===
function rageUiCall4()
  local arg1, arg2, arg3, arg4, arg5, flag25, flag28, flag30, flag31, numberValue19
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = DoesEntityExist
  arg3 = numberValue5
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = IsVehicleDriveable
    arg3 = numberValue5
    arg4 = true
    arg2 = arg2(arg3, arg4)
    if not arg2 then
      arg2 = DeleteEntity
      arg3 = numberValue5
      -- Beginner: Delete a GTA entity.
      arg2(arg3)
      arg2 = GetOffsetFromEntityInWorldCoords
      arg3 = arg1
      arg4 = 0.0
      arg5 = 5.0
      flag25 = 0.0
      arg2 = arg2(arg3, arg4, arg5, flag25)
      arg3 = CMG
      arg3 = arg3.requestEntitySpawn
      arg4 = "g4s"
      arg5 = arg2
      arg3(arg4, arg5)
      arg3 = CMG
      arg3 = arg3.spawnVehicle
      arg4 = textValue2
      arg5 = arg2.x
      flag25 = arg2.y
      flag28 = arg2.z
      flag30 = GetEntityHeading
      flag31 = arg1
      -- Beginner: result below is heading.
      flag30 = flag30(flag31)
      flag31 = true
      numberValue19 = true
      arg3 = arg3(arg4, arg5, flag25, flag28, flag30, flag31, numberValue19)
      numberValue5 = arg3
      arg3 = VehToNet
      arg4 = numberValue5
      arg3 = arg3(arg4)
      numberValue10 = arg3
      arg3 = TriggerServerEvent
      arg4 = "be91a889a5"
      arg5 = numberValue10
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "be91a889a5".
      arg3(arg4, arg5)
      arg3 = numberValue4
      arg3 = arg3 + 1
      numberValue4 = arg3
    end
  end
end
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateWhile
workValue7 = 1
workValue8 = RMenu
textValue11 = workValue8
workValue8 = workValue8.Get
eventRegistration = "g4s"
textValue12 = "main"
-- Beginner: result below is menu.
workValue8 = workValue8(textValue11, eventRegistration, textValue12)
textValue11 = nil

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, arg2, arg3, arg4, arg5, flag25
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "g4s"
  arg5 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION (decompiler name: flag25; parameters: none) ===
  function flag25()
    local vehicle, cmgCall, flag17, numberValue14, flag24, numberValue17
    vehicle = flag29
    if not vehicle then
      vehicle = CMG
      vehicle = vehicle.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      vehicle = vehicle()
      if 0 == vehicle then
        vehicle = numberValue4
        if vehicle < 4 then
          vehicle = RageUI
          vehicle = vehicle.ButtonWithStyle
          cmgCall = "New Vehicle"
          flag17 = "Get a new vehicle"
          numberValue14 = {}
          numberValue14.RightLabel = "\226\134\146\226\134\146\226\134\146"
          flag24 = true

          -- === HELPER FUNCTION (decompiler name: numberValue17; parameters: arg12, arg22, arg32) ===
          function numberValue17(arg12, arg22, arg32)
            local textValue10
            if arg32 then
              textValue10 = rageUiCall4
              textValue10()
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          vehicle(cmgCall, flag17, numberValue14, flag24, numberValue17)
        end
      end
      vehicle = RageUI
      vehicle = vehicle.ButtonWithStyle
      cmgCall = "End Shift"
      flag17 = "End your shift"
      numberValue14 = {}
      numberValue14.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag24 = true

      -- === HELPER FUNCTION (decompiler name: numberValue17; parameters: arg12, arg22, arg32) ===
      function numberValue17(arg12, arg22, arg32)
        local textValue10, numberValue15, flag26
        if arg32 then
          textValue10 = TriggerServerEvent
          numberValue15 = "2ee6b18cbd"
          flag26 = false
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2ee6b18cbd".
          textValue10(numberValue15, flag26)
          textValue10 = false
          flag = textValue10
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      vehicle(cmgCall, flag17, numberValue14, flag24, numberValue17)
      vehicle = RageUI
      vehicle = vehicle.ButtonWithStyle
      cmgCall = "Forgot Pin"
      flag17 = "Get a pin reminder"
      numberValue14 = {}
      numberValue14.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag24 = true

      -- === HELPER FUNCTION (decompiler name: numberValue17; parameters: arg12, arg22, arg32) ===
      function numberValue17(arg12, arg22, arg32)
        local textValue10, numberValue15, flag26, textValue13, textValue14, textValue15
        if arg32 then
          textValue10 = rageUiCall3
          numberValue15 = "CHAR_MP_MEX_DOCKS"
          flag26 = "CHAR_MP_MEX_DOCKS"
          textValue13 = "Hey mate, I've got you. Your pin is "
          textValue14 = numberValue16
          textValue15 = "."
          textValue13 = textValue13 .. textValue14 .. textValue15
          textValue14 = "Arthur"
          textValue15 = "07925065325"
          textValue10(numberValue15, flag26, textValue13, textValue14, textValue15)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      vehicle(cmgCall, flag17, numberValue14, flag24, numberValue17)
      vehicle = flag27
      if not vehicle then
        vehicle = RageUI
        vehicle = vehicle.ButtonWithStyle
        cmgCall = "Activate Panic"
        flag17 = "Activate your panic alarm"
        numberValue14 = {}
        numberValue14.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag24 = true

        -- === HELPER FUNCTION (decompiler name: numberValue17; parameters: arg12, arg22, arg32) ===
        function numberValue17(arg12, arg22, arg32)
          local textValue10, numberValue15, flag26, textValue13, textValue14, textValue15
          if arg32 then
            textValue10 = TriggerServerEvent
            numberValue15 = "81fb012b91"
            flag26 = numberValue10
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "81fb012b91".
            textValue10(numberValue15, flag26)
            textValue10 = rageUiCall3
            numberValue15 = "g4slogo"
            flag26 = "g4slogo"
            textValue13 = "You have activated your panic alarm."
            textValue14 = "Cash Driver Security"
            textValue15 = "Panic Activated"
            textValue10(numberValue15, flag26, textValue13, textValue14, textValue15)
            textValue10 = true
            flag27 = textValue10
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        vehicle(cmgCall, flag17, numberValue14, flag24, numberValue17)
      else
      end
    end
  end
  arg1(arg2, arg3, arg4, arg5, flag25)
end
rageUiCall5(workValue7, workValue8, textValue11, eventRegistration)
rageUiCall5 = RegisterNetEvent
workValue7 = "c67322d45d"
-- Beginner: this function handles network event "c67322d45d".

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: none) ===
function workValue8()
  local arg1, arg2
  arg1 = false
  flag27 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c67322d45d".
rageUiCall5(workValue7, workValue8)
rageUiCall5 = RegisterNetEvent
workValue7 = "ad7978cf26"
-- Beginner: this function handles network event "ad7978cf26".

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1) ===
function workValue8(arg1)
  local arg2, arg3, arg4, arg5, flag25, flag28, flag30, flag31, numberValue19
  arg2 = workValue12
  if 0 ~= arg2 then
    arg2 = tCMG
    arg2 = arg2.removeBlip
    arg3 = workValue12
    arg2(arg3)
  end
  arg2 = arg1.jobActive
  if arg2 then
    arg2 = arg1.collected
    if not arg2 then
      arg2 = workValue11
      if 0 ~= arg2 then
        arg2 = tCMG
        arg2 = arg2.removeBlip
        arg3 = workValue11
        arg2(arg3)
      end
      arg2 = tCMG
      arg2 = arg2.addBlip
      arg3 = arg1.collectionCoords
      arg3 = arg3.x
      arg4 = arg1.collectionCoords
      arg4 = arg4.y
      arg5 = arg1.collectionCoords
      arg5 = arg5.z
      flag25 = 500
      flag28 = 18
      flag30 = "Cash Driver Collection"
      flag31 = 1.0
      numberValue19 = false
      arg2 = arg2(arg3, arg4, arg5, flag25, flag28, flag30, flag31, numberValue19)
      workValue11 = arg2
      arg2 = SetBlipRoute
      arg3 = workValue11
      arg4 = true
      arg2(arg3, arg4)
      arg2 = SetBlipRouteColour
      arg3 = workValue11
      arg4 = 18
      arg2(arg3, arg4)
    else
      arg2 = arg1.deposited
      if not arg2 then
        arg2 = tCMG
        arg2 = arg2.removeBlip
        arg3 = workValue11
        arg2(arg3)
        arg2 = tCMG
        arg2 = arg2.addBlip
        arg3 = arg1.depositCoords
        arg3 = arg3.x
        arg4 = arg1.depositCoords
        arg4 = arg4.y
        arg5 = arg1.depositCoords
        arg5 = arg5.z
        flag25 = 500
        flag28 = 47
        flag30 = "Cash Driver Deposit"
        flag31 = 1.0
        numberValue19 = false
        arg2 = arg2(arg3, arg4, arg5, flag25, flag28, flag30, flag31, numberValue19)
        workValue12 = arg2
        arg2 = SetBlipRoute
        arg3 = workValue12
        arg4 = true
        arg2(arg3, arg4)
        arg2 = SetBlipRouteColour
        arg3 = workValue12
        arg4 = 47
        arg2(arg3, arg4)
      end
    end
    dataTable = arg1
    arg2 = PlaySoundFrontend
    arg3 = -1
    arg4 = "Out_Of_Bounds_Timer"
    arg5 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
    flag25 = true
    arg2(arg3, arg4, arg5, flag25)
  else
    arg2 = notify
    arg3 = [[
~b~New job received:~w~
Collection: ]]
    arg4 = arg1.collectionName
    arg5 = [[

Destination: ]]
    flag25 = arg1.depositName
    arg3 = arg3 .. arg4 .. arg5 .. flag25
    -- Beginner: Show a notification to the player.
    arg2(arg3)
    arg2 = Wait
    arg3 = 3000
    arg2(arg3)
    arg2 = TriggerServerEvent
    arg3 = "3c47441080"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3c47441080".
    arg2(arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ad7978cf26".
rageUiCall5(workValue7, workValue8)
rageUiCall5 = RegisterNetEvent
workValue7 = "eb54246956"
-- Beginner: this function handles network event "eb54246956".

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1) ===
function workValue8(arg1)
  local arg2, arg3, arg4, arg5, flag25, flag28, flag30, flag31, numberValue19, textValue, flag2, numberValue, flag4, flag5, flag7, flag9, numberValue3, flag10
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = true
  flag = arg3
  arg3 = CMG
  arg3 = arg3.requestEntitySpawn
  arg4 = "g4s"
  arg5 = vector3
  flag25 = dataTable5.x
  flag28 = dataTable5.y
  flag30 = dataTable5.z
  arg5, flag25, flag28, flag30, flag31, numberValue19, textValue, flag2, numberValue, flag4, flag5, flag7, flag9, numberValue3, flag10 = arg5(flag25, flag28, flag30)
  arg3(arg4, arg5, flag25, flag28, flag30, flag31, numberValue19, textValue, flag2, numberValue, flag4, flag5, flag7, flag9, numberValue3, flag10)
  arg3 = CMG
  arg3 = arg3.spawnVehicle
  arg4 = textValue2
  arg5 = dataTable5.x
  flag25 = dataTable5.y
  flag28 = dataTable5.z
  flag30 = dataTable5.heading
  flag31 = true
  numberValue19 = true
  arg3 = arg3(arg4, arg5, flag25, flag28, flag30, flag31, numberValue19)
  numberValue5 = arg3
  arg3 = VehToNet
  arg4 = numberValue5
  arg3 = arg3(arg4)
  numberValue10 = arg3
  arg3 = TaskWarpPedIntoVehicle
  arg4 = arg2
  arg5 = numberValue5
  flag25 = -1
  arg3(arg4, arg5, flag25)
  numberValue16 = arg1
  arg3 = {}
  arg4 = "Marcus"
  arg5 = "Arthur"
  flag25 = "Rob"
  flag28 = "Thomas"
  flag30 = "Despawned"
  arg3[1] = arg4
  arg3[2] = arg5
  arg3[3] = flag25
  arg3[4] = flag28
  arg3[5] = flag30
  arg4 = math
  arg4 = arg4.random
  arg5 = 1
  flag25 = 5
  arg4 = arg4(arg5, flag25)
  arg5 = arg3[arg4]
  flag25 = rageUiCall3
  flag28 = "CHAR_MP_MEX_DOCKS"
  flag30 = "CHAR_MP_MEX_DOCKS"
  flag31 = "Hey, I'm "
  numberValue19 = arg5
  textValue = " , another agent for Private Security. I'll be here giving you some tips along the way."
  flag31 = flag31 .. numberValue19 .. textValue
  numberValue19 = arg5
  textValue = "07925065325"
  flag25(flag28, flag30, flag31, numberValue19, textValue)
  flag25 = TriggerServerEvent
  flag28 = "be91a889a5"
  flag30 = numberValue10
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "be91a889a5".
  flag25(flag28, flag30)
  flag25 = false
  flag28 = GetEntityModel
  flag30 = arg2
  -- Beginner: result below is modelHash.
  flag28 = flag28(flag30)
  if 1885233650 == flag28 then
    flag25 = true
  else
    flag25 = true
    flag30 = tCMG
    flag30 = flag30.setCustomization
    flag31 = {}
    flag31.modelhash = 1885233650
    flag30(flag31)
  end
  flag30 = json
  flag30 = flag30.encode
  flag31 = tCMG
  flag31 = flag31.getCustomization
  flag31, numberValue19, textValue, flag2, numberValue, flag4, flag5, flag7, flag9, numberValue3, flag10 = flag31()
  flag30 = flag30(flag31, numberValue19, textValue, flag2, numberValue, flag4, flag5, flag7, flag9, numberValue3, flag10)
  if not flag30 then
    flag30 = ""
  end
  textValue3 = flag30
  if flag25 then
    flag30 = CMG
    flag30 = flag30.loadCustomisationPreset
    flag31 = "G4SMale"
    flag30(flag31)
  else
    flag30 = CMG
    flag30 = flag30.loadCustomisationPreset
    flag31 = "G4SFemale"
    flag30(flag31)
  end
  flag30 = Wait
  flag31 = 2000
  flag30(flag31)
  flag30 = TaskVehicleDriveToCoord
  flag31 = CMG
  flag31 = flag31.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  flag31 = flag31()
  numberValue19 = numberValue5
  textValue = -672.356
  flag2 = 282.3297
  numberValue = 81.43005
  flag4 = math
  flag4 = flag4.rad
  flag5 = 250.0
  flag4 = flag4(flag5)
  flag5 = 1
  flag7 = GetHashKey
  flag9 = GetEntityModel
  numberValue3 = numberValue5
  flag9, numberValue3, flag10 = flag9(numberValue3)
  -- Beginner: result below is hash.
  flag7 = flag7(flag9, numberValue3, flag10)
  flag9 = 60
  numberValue3 = 5
  flag10 = 1
  flag30(flag31, numberValue19, textValue, flag2, numberValue, flag4, flag5, flag7, flag9, numberValue3, flag10)
  flag30 = Wait
  flag31 = 5000
  flag30(flag31)
  flag30 = TaskVehicleTempAction
  flag31 = CMG
  flag31 = flag31.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  flag31 = flag31()
  numberValue19 = numberValue5
  textValue = 27
  flag2 = 10.0
  flag30(flag31, numberValue19, textValue, flag2)
  flag30 = Wait
  flag31 = 2000
  flag30(flag31)
  flag30 = rageUiCall3
  flag31 = "CHAR_MP_MEX_DOCKS"
  numberValue19 = "CHAR_MP_MEX_DOCKS"
  textValue = "Use /securejob to access the Cash Driver menu."
  flag2 = arg5
  numberValue = "Cash Driver"
  flag30(flag31, numberValue19, textValue, flag2, numberValue)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "eb54246956".
rageUiCall5(workValue7, workValue8)
rageUiCall5 = RegisterNetEvent
workValue7 = "273e1a7f10"
-- Beginner: this function handles network event "273e1a7f10".

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: none) ===
function workValue8()
  local arg1, arg2, arg3
  arg1 = DoesEntityExist
  arg2 = numberValue5
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = DeleteEntity
    arg2 = numberValue5
    -- Beginner: Delete a GTA entity.
    arg1(arg2)
  end
  dataTable.jobActive = false
  arg1 = false
  flag = arg1
  arg1 = flag29
  if arg1 then
    arg1 = workValue3
    arg1()
  end
  arg1 = tCMG
  arg1 = arg1.setCustomization
  arg2 = json
  arg2 = arg2.decode
  arg3 = textValue3
  arg2, arg3 = arg2(arg3)
  arg1(arg2, arg3)
  arg1 = dataTable6.active
  if arg1 then
    arg1 = textValue8
    -- Beginner: Create a minimap blip.
    arg1()
  end
  arg1 = workValue11
  if 0 ~= arg1 then
    arg1 = tCMG
    arg1 = arg1.removeBlip
    arg2 = workValue11
    arg1(arg2)
  end
  arg1 = workValue12
  if 0 ~= arg1 then
    arg1 = tCMG
    arg1 = arg1.removeBlip
    arg2 = workValue12
    arg1(arg2)
  end
  arg1 = ClearGpsPlayerWaypoint
  arg1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "273e1a7f10".
rageUiCall5(workValue7, workValue8)

-- === HELPER FUNCTION (decompiler name: rageUiCall5; parameters: none) ===
function rageUiCall5()
  local arg1, arg2, arg3, arg4, arg5, flag25, flag28, flag30, flag31, numberValue19, textValue, flag2, numberValue
  arg1 = true
  flag8 = arg1
  arg1 = SetScaleformMovieAsNoLongerNeeded
  arg1()
  arg1 = RequestScaleformMovie
  arg2 = "ATM"
  -- Beginner: result below is scaleformHandle.
  arg1 = arg1(arg2)
  while true do
    arg2 = HasScaleformMovieLoaded
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      break
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 0
    arg2(arg3)
  end
  arg2 = BeginScaleformMovieMethod
  arg3 = arg1
  arg4 = "enterPINanim"
  arg2(arg3, arg4)
  arg2 = EndScaleformMovieMethod
  arg2()
  arg2 = true
  arg3 = SetTimeout
  arg4 = 3000

  -- === HELPER FUNCTION: arg5() ===
  function arg5()
    local vehicle, cmgCall
    vehicle = false
    arg2 = vehicle
  end
  arg3(arg4, arg5)
  while arg2 do
    arg3 = DrawScaleformMovie
    arg4 = arg1
    arg5 = 0.5
    flag25 = 0.5
    flag28 = 0.8
    flag30 = 0.8
    flag31 = 255
    numberValue19 = 255
    textValue = 255
    flag2 = 0
    numberValue = 0
    arg3(arg4, arg5, flag25, flag28, flag30, flag31, numberValue19, textValue, flag2, numberValue)
    arg3 = Citizen
    arg3 = arg3.Wait
    arg4 = 0
    arg3(arg4)
  end
  arg3 = SetScaleformMovieAsNoLongerNeeded
  arg4 = arg1
  arg3(arg4)
  arg3 = EndScaleformMovieMethod
  arg3()
  arg3 = false
  flag8 = arg3
end

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2, arg3, arg4, arg5, flag25, flag28, flag30
  arg1 = true
  arg2 = Citizen
  arg2 = arg2.CreateThread

  -- === HELPER FUNCTION: arg3() ===
  function arg3()
    local vehicle, cmgCall, flag17, numberValue14
    while true do
      vehicle = arg1
      if not vehicle then
        break
      end
      vehicle = RageUI
      vehicle = vehicle.Text
      cmgCall = {}
      flag17 = "Your pin is ~b~"
      numberValue14 = numberValue16
      flag17 = flag17 .. numberValue14
      cmgCall.message = flag17
      vehicle(cmgCall)
      vehicle = Wait
      cmgCall = 0
      vehicle(cmgCall)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.GetRageInputText
  arg3 = "Enter the safe code:"
  arg2 = arg2(arg3)
  arg1 = false
  arg3 = rageUiCall5
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg3()
  arg3 = tostring
  arg4 = arg2
  arg3 = arg3(arg4)
  arg4 = tostring
  arg5 = numberValue16
  arg4 = arg4(arg5)
  if arg3 == arg4 then
    arg3 = rageUiCall3
    arg4 = "g4slogo"
    arg5 = "g4slogo"
    flag25 = "The safe pin has been entered correctly."
    flag28 = "Cash Driver Security"
    flag30 = "Authorised"
    arg3(arg4, arg5, flag25, flag28, flag30)
    arg3 = FreezeEntityPosition
    arg4 = CMG
    arg4 = arg4.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg4 = arg4()
    arg5 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    arg3(arg4, arg5)
    arg3 = true
    return arg3
  else
    arg3 = PlaySoundFrontend
    arg4 = -1
    arg5 = "Hack_Failed"
    flag25 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
    flag28 = true
    arg3(arg4, arg5, flag25, flag28)
    arg3 = Wait
    arg4 = 2000
    arg3(arg4)
    arg3 = FreezeEntityPosition
    arg4 = CMG
    arg4 = arg4.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg4 = arg4()
    arg5 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    arg3(arg4, arg5)
    arg3 = false
    return arg3
  end
end
workValue8 = RegisterNetEvent
textValue11 = "457368e155"
-- Beginner: this function handles network event "457368e155".

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, arg2, arg3, arg4, arg5, flag25, flag28, flag30, flag31, numberValue19, textValue, flag2, numberValue, flag4, flag5, flag7, flag9, numberValue3, flag10, flag11, numberValue6, flag12, workValue, workValue2, flag13, flag14, numberValue8, numberValue9, flag15
  arg1 = math
  arg1 = arg1.random
  arg2 = 1
  arg3 = 4
  arg1 = arg1(arg2, arg3)
  if 1 == arg1 then
    arg2 = rageUiCall3
    arg3 = "g4slogo"
    arg4 = "g4slogo"
    arg5 = "Use /securejob to access your Cash Driver Menu."
    flag25 = "Cash Driver Security"
    flag28 = "Alert"
    arg2(arg3, arg4, arg5, flag25, flag28)
  end
  arg2 = true
  flag6 = arg2
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = IsPedInAnyVehicle
  arg4 = arg2
  arg5 = true
  arg3 = arg3(arg4, arg5)
  if arg3 then
    while true do
      arg3 = IsPedInAnyVehicle
      arg4 = arg2
      arg5 = true
      arg3 = arg3(arg4, arg5)
      if not arg3 then
        break
      end
      arg3 = Wait
      arg4 = 400
      arg3(arg4)
    end
  end
  arg3 = SetVehicleDoorOpen
  arg4 = numberValue5
  arg5 = 3
  flag25 = false
  flag28 = false
  arg3(arg4, arg5, flag25, flag28)
  arg3 = SetVehicleDoorOpen
  arg4 = numberValue5
  arg5 = 4
  flag25 = false
  flag28 = false
  arg3(arg4, arg5, flag25, flag28)
  arg3 = false
  arg4 = GetOffsetFromEntityInWorldCoords
  arg5 = numberValue5
  flag25 = 0.0
  flag28 = -5.0
  flag30 = 0.0
  arg4 = arg4(arg5, flag25, flag28, flag30)
  while true do
    arg5 = flag23
    if arg5 then
      break
    end
    arg5 = DrawMarker
    flag25 = 29
    flag28 = arg4.x
    flag30 = arg4.y
    flag31 = arg4.z
    flag31 = flag31 + 0.5
    numberValue19 = 0.0
    textValue = 0.0
    flag2 = 0.0
    numberValue = 0.0
    flag4 = 0.0
    flag5 = 0.0
    flag7 = 1.5
    flag9 = 1.5
    numberValue3 = 1.5
    flag10 = 255
    flag11 = 36
    numberValue6 = 36
    flag12 = 50
    workValue = true
    workValue2 = false
    flag13 = 2
    flag14 = false
    numberValue8 = nil
    numberValue9 = nil
    flag15 = false
    arg5(flag25, flag28, flag30, flag31, numberValue19, textValue, flag2, numberValue, flag4, flag5, flag7, flag9, numberValue3, flag10, flag11, numberValue6, flag12, workValue, workValue2, flag13, flag14, numberValue8, numberValue9, flag15)
    arg5 = CMG
    arg5 = arg5.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg5 = arg5()
    arg5 = arg5 - arg4
    arg5 = #arg5
    if arg5 <= 1.0 then
      arg3 = true
      flag25 = workValue7
      flag25 = flag25()
      arg3 = false
      if flag25 then
        flag28 = true
        flag23 = flag28
      end
      while arg3 do
        flag28 = Wait
        flag30 = 100
        flag28(flag30)
      end
    end
    flag25 = Wait
    flag28 = 0
    flag25(flag28)
  end
  arg5 = SetVehicleDoorShut
  flag25 = numberValue5
  flag28 = 3
  flag30 = false
  arg5(flag25, flag28, flag30)
  arg5 = SetVehicleDoorShut
  flag25 = numberValue5
  flag28 = 4
  flag30 = false
  arg5(flag25, flag28, flag30)
  dataTable.collecting = false
  arg5 = dataTable6.active
  if arg5 then
    arg5 = textValue8
    -- Beginner: Create a minimap blip.
    arg5()
  end
  arg5 = TriggerServerEvent
  flag25 = "932a3df12c"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "932a3df12c".
  arg5(flag25)
  arg5 = false
  flag6 = arg5
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "457368e155".
workValue8(textValue11, eventRegistration)
workValue8 = RegisterNetEvent
textValue11 = "2f71d37526"
-- Beginner: this function handles network event "2f71d37526".

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, arg2, arg3, arg4, arg5, flag25, flag28, flag30, flag31, numberValue19, textValue, flag2, numberValue, flag4, flag5, flag7, flag9, numberValue3, flag10, flag11, numberValue6, flag12, workValue, workValue2, flag13, flag14, numberValue8, numberValue9
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  while true do
    arg2 = IsPedInAnyVehicle
    arg3 = arg1
    arg4 = true
    arg2 = arg2(arg3, arg4)
    if not arg2 then
      break
    end
    arg2 = Wait
    arg3 = 400
    arg2(arg3)
  end
  arg2 = SetVehicleDoorOpen
  arg3 = numberValue5
  arg4 = 3
  arg5 = false
  flag25 = false
  arg2(arg3, arg4, arg5, flag25)
  arg2 = SetVehicleDoorOpen
  arg3 = numberValue5
  arg4 = 4
  arg5 = false
  flag25 = false
  arg2(arg3, arg4, arg5, flag25)
  dataTable.depositing = true
  arg2 = false
  arg3 = GetOffsetFromEntityInWorldCoords
  arg4 = numberValue5
  arg5 = 0.0
  flag25 = -5.0
  flag28 = 0.0
  arg3 = arg3(arg4, arg5, flag25, flag28)
  while true do
    arg4 = flag23
    if not arg4 then
      break
    end
    arg4 = DrawMarker
    arg5 = 29
    flag25 = arg3.x
    flag28 = arg3.y
    flag30 = arg3.z
    flag30 = flag30 + 0.5
    flag31 = 0.0
    numberValue19 = 0.0
    textValue = 0.0
    flag2 = 0.0
    numberValue = 0.0
    flag4 = 0.0
    flag5 = 1.5
    flag7 = 1.5
    flag9 = 1.5
    numberValue3 = 255
    flag10 = 36
    flag11 = 36
    numberValue6 = 50
    flag12 = true
    workValue = false
    workValue2 = 2
    flag13 = false
    flag14 = nil
    numberValue8 = nil
    numberValue9 = false
    arg4(arg5, flag25, flag28, flag30, flag31, numberValue19, textValue, flag2, numberValue, flag4, flag5, flag7, flag9, numberValue3, flag10, flag11, numberValue6, flag12, workValue, workValue2, flag13, flag14, numberValue8, numberValue9)
    arg4 = CMG
    arg4 = arg4.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg4 = arg4()
    arg4 = arg4 - arg3
    arg4 = #arg4
    if arg4 <= 1.0 then
      arg2 = true
      arg5 = workValue7
      arg5 = arg5()
      arg2 = false
      if arg5 then
        flag25 = false
        flag23 = flag25
      end
      while arg2 do
        flag25 = Wait
        flag28 = 100
        flag25(flag28)
      end
    end
    arg5 = Wait
    flag25 = 0
    arg5(flag25)
  end
  arg4 = SetVehicleDoorShut
  arg5 = numberValue5
  flag25 = 3
  flag28 = false
  arg4(arg5, flag25, flag28)
  arg4 = SetVehicleDoorShut
  arg5 = numberValue5
  flag25 = 4
  flag28 = false
  arg4(arg5, flag25, flag28)
  arg4 = dataTable6.active
  if arg4 then
    arg4 = textValue8
    -- Beginner: Create a minimap blip.
    arg4()
  end
  arg4 = 1
  numberValue4 = arg4
  arg4 = TriggerServerEvent
  arg5 = "6734eb94a6"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6734eb94a6".
  arg4(arg5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2f71d37526".
workValue8(textValue11, eventRegistration)
workValue8 = RegisterNetEvent
textValue11 = "5143298b93"
-- Beginner: this function handles network event "5143298b93".

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "g4s"
  arg5 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg1(arg2, arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5143298b93".
workValue8(textValue11, eventRegistration)
workValue8 = RegisterNetEvent
textValue11 = "285fe4d48d"
-- Beginner: this function handles network event "285fe4d48d".

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1, arg2, arg3, arg4, arg5) ===
function eventRegistration(arg1, arg2, arg3, arg4, arg5)
  local flag25, flag28, flag30, flag31, numberValue19, textValue
  flag25 = rageUiCall3
  flag28 = arg1
  flag30 = arg2
  flag31 = arg3
  numberValue19 = arg4
  textValue = arg5
  flag25(flag28, flag30, flag31, numberValue19, textValue)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "285fe4d48d".
workValue8(textValue11, eventRegistration)

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1) ===
function workValue8(arg1)
  local arg2, arg3
  arg2 = _ENV
  arg3 = "ScaleformMovieMethodAddParamPlayerNameString"
  arg2 = arg2[arg3]
  arg3 = arg1
  arg2(arg3)
end
InstructionButton = workValue8

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1) ===
function workValue8(arg1)
  local arg2, arg3
  arg2 = BeginTextCommandScaleformString
  arg3 = "STRING"
  arg2(arg3)
  arg2 = AddTextComponentSubstringKeyboardDisplay
  arg3 = arg1
  arg2(arg3)
  arg2 = EndTextCommandScaleformString
  arg2()
end
InstructionButtonMessage = workValue8

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1, arg2) ===
function workValue8(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = 0
  while arg2 > arg3 do
    arg4 = RageUI
    arg4 = arg4.Text
    arg5 = {}
    arg5.message = arg1
    arg4(arg5)
    arg4 = Wait
    arg5 = 0
    arg4(arg5)
  end
end
textValue11 = RegisterNetEvent
eventRegistration = "abf15683a3"
-- Beginner: this function handles network event "abf15683a3".

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: arg1, arg2) ===
function textValue12(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = workValue8
  arg4 = arg1
  arg5 = arg2
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg3(arg4, arg5)
end
textValue11(eventRegistration, textValue12)
-- Beginner: this function handles network event "abf15683a3".

-- === HELPER FUNCTION (decompiler name: textValue11; parameters: none) ===
function textValue11()
  local arg1, arg2, arg3, arg4
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  while true do
    arg2 = RequestScriptAudioBank
    arg3 = "DLC_SECURITY\\SIREN_ONE"
    arg4 = false
    arg2 = arg2(arg3, arg4)
    if arg2 then
      break
    end
    arg2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg2 = arg2()
    arg2 = arg2 - arg1
    arg3 = 1500
    if arg2 > arg3 then
      arg2 = print
      arg3 = "Failed to load DLC_SECURITY audio bank"
      arg2(arg3)
      arg2 = ReleaseNamedScriptAudioBank
      arg3 = "DLC_SECURITY\\SIREN_ONE"
      arg2(arg3)
      return
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 0
    arg2(arg3)
  end
end
eventRegistration = RegisterNetEvent
textValue12 = "32e875a544"
-- Beginner: this function handles network event "32e875a544".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2, arg3, arg4, arg5, flag25, flag28, flag30, flag31, numberValue19, textValue, flag2, numberValue, flag4, flag5, flag7
  if 0 ~= arg1 then
    arg2 = NetworkDoesNetworkIdExist
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = GetSoundId
      -- Beginner: result below is soundHandle.
      arg2 = arg2()
      arg3 = CMG
      arg3 = arg3.getObjectId
      arg4 = arg1
      arg5 = "CMG:activatePanicAll (1)"
      arg3 = arg3(arg4, arg5)
      if arg3 then
        arg4 = DoesEntityExist
        arg5 = arg3
        arg4 = arg4(arg5)
        if arg4 then
          arg4 = textValue11
          -- Beginner: Register a network event handler that the server/other clients can trigger.
          arg4()
          arg4 = PlaySoundFromEntity
          arg5 = arg2
          flag25 = "siren_one"
          flag28 = arg3
          flag30 = "dlc_security_soundset"
          flag31 = false
          numberValue19 = 0
          arg4(arg5, flag25, flag28, flag30, flag31, numberValue19)
          arg4 = RequestNamedPtfxAsset
          arg5 = "core"
          arg4(arg5)
          while true do
            arg4 = HasNamedPtfxAssetLoaded
            arg5 = "core"
            arg4 = arg4(arg5)
            if arg4 then
              break
            end
            arg4 = RequestNamedPtfxAsset
            arg5 = "core"
            arg4(arg5)
            arg4 = Wait
            arg5 = 0
            arg4(arg5)
          end
          arg4 = dataTable4.netId
          if arg4 == arg1 then
            dataTable4.hackingEngaged = false
            dataTable4.netId = 0
            dataTable4.entity = 0
            arg4 = 0
            numberValue13 = arg4
            arg4 = FreezeEntityPosition
            arg5 = CMG
            arg5 = arg5.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            arg5 = arg5()
            flag25 = false
            -- Beginner: Freeze or unfreeze an entity in place.
            arg4(arg5, flag25)
            arg4 = rageUiCall3
            arg5 = "g4slogo"
            flag25 = "g4slogo"
            flag28 = "The alarm has been manually activated."
            flag30 = "Cash Driver Security"
            flag31 = "Alarm Activated"
            arg4(arg5, flag25, flag28, flag30, flag31)
          end
          arg4 = UseParticleFxAsset
          arg5 = "core"
          arg4(arg5)
          arg4 = StartParticleFxLoopedOnEntity
          arg5 = "exp_grd_grenade_smoke"
          flag25 = CMG
          flag25 = flag25.getObjectId
          flag28 = arg1
          flag30 = "CMG:activatePanicAll (2)"
          flag25 = flag25(flag28, flag30)
          if not flag25 then
            flag25 = 0
          end
          flag28 = 0.0
          flag30 = 0.0
          flag31 = 0.0
          numberValue19 = 0.0
          textValue = 0.0
          flag2 = 0.0
          numberValue = 1.0
          flag4 = true
          flag5 = true
          flag7 = true
          arg4 = arg4(arg5, flag25, flag28, flag30, flag31, numberValue19, textValue, flag2, numberValue, flag4, flag5, flag7)
          arg5 = RemoveNamedPtfxAsset
          flag25 = "core"
          arg5(flag25)
          arg5 = Citizen
          arg5 = arg5.CreateThread

          -- === HELPER FUNCTION (decompiler name: flag25; parameters: none) ===
          function flag25()
            local vehicle, cmgCall, flag17
            vehicle = Wait
            cmgCall = 100000
            vehicle(cmgCall)
            vehicle = StopSound
            cmgCall = arg2
            vehicle(cmgCall)
            vehicle = ReleaseSoundId
            cmgCall = arg2
            vehicle(cmgCall)
            vehicle = StopParticleFxLooped
            cmgCall = arg4
            flag17 = true
            vehicle(cmgCall, flag17)
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          arg5(flag25)
          arg5 = ReleaseNamedScriptAudioBank
          flag25 = "DLC_SECURITY\\SIREN_ONE"
          arg5(flag25)
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "32e875a544".
eventRegistration(textValue12, workValue9)
eventRegistration = AddStateBagChangeHandler
textValue12 = "activeG4SVan"
workValue9 = nil

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: arg1, arg2, arg3) ===
function workValue10(arg1, arg2, arg3)
  local arg4, arg5, flag25, flag28, flag30, flag31, numberValue19, textValue
  arg4 = tonumber
  arg5 = stringsplit
  flag25 = arg1
  flag28 = ":"
  arg5 = arg5(flag25, flag28)
  arg5 = arg5[2]
  arg4 = arg4(arg5)
  arg5 = 0
  while true do
    if arg5 > 25 then
      return
    elseif arg4 then
      flag25 = NetworkDoesEntityExistWithNetworkId
      flag28 = arg4
      flag25 = flag25(flag28)
      if flag25 then
        flag25 = NetworkGetEntityFromNetworkId
        flag28 = arg4
        flag25 = flag25(flag28)
        if 0 ~= flag25 then
          if arg3 then
            flag28 = table
            flag28 = flag28.has
            flag30 = dataTable3
            flag31 = arg4
            flag28 = flag28(flag30, flag31)
            if not flag28 then
              flag28 = dataTable3
              flag30 = {}
              flag31 = arg3
              numberValue19 = flag25
              textValue = arg4
              flag30[1] = flag31
              flag30[2] = numberValue19
              flag30[3] = textValue
              flag28[arg4] = flag30
            end
            break
          end
          flag28 = dataTable3
          flag28[arg4] = nil
          break
        end
      end
    end
    arg5 = arg5 + 1
    flag25 = Citizen
    flag25 = flag25.Wait
    flag28 = 200
    flag25(flag28)
  end
end
eventRegistration(textValue12, workValue9, workValue10)
eventRegistration = RegisterNetEvent
textValue12 = "5b2a6e23a5"
-- Beginner: this function handles network event "5b2a6e23a5".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1, arg2, arg3) ===
function workValue9(arg1, arg2, arg3)
  local arg4, arg5, flag25, flag28, flag30, flag31, numberValue19
  arg4 = flag
  if not arg4 then
    arg4 = CMG
    arg4 = arg4.getObjectId
    arg5 = arg1
    flag25 = "CMG:activeVansUpdate 1"
    arg4 = arg4(arg5, flag25)
    if 0 ~= arg4 and nil ~= arg4 then
      arg5 = DoesEntityExist
      flag25 = arg4
      arg5 = arg5(flag25)
      if arg5 then
        if arg3 then
          arg5 = dataTable3
          arg5[arg1] = nil
        else
          arg5 = table
          arg5 = arg5.has
          flag25 = dataTable3
          flag28 = arg1
          arg5 = arg5(flag25, flag28)
          if not arg5 then
            arg5 = CMG
            arg5 = arg5.getObjectId
            flag25 = arg1
            flag28 = "5b2a6e23a5"
            arg5 = arg5(flag25, flag28)
            flag25 = dataTable3
            flag28 = {}
            flag30 = arg2
            flag31 = arg5
            numberValue19 = arg1
            flag28[1] = flag30
            flag28[2] = flag31
            flag28[3] = numberValue19
            flag25[arg1] = flag28
          end
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5b2a6e23a5".
eventRegistration(textValue12, workValue9)
eventRegistration = RegisterNetEvent
textValue12 = "139a32a44e"
-- Beginner: this function handles network event "139a32a44e".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
function workValue9()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = PlaySoundFrontend
  arg2 = -1
  arg3 = "FocusIn"
  arg4 = "HintCamSounds"
  arg5 = true
  arg1(arg2, arg3, arg4, arg5)
  dataTable4.hackingEngaged = false
  dataTable4.netId = 0
  dataTable4.entity = 0
  arg1 = 0
  numberValue13 = arg1
  arg1 = FreezeEntityPosition
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg1(arg2, arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "139a32a44e".
eventRegistration(textValue12, workValue9)
