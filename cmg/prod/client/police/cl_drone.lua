--[[
    LEVEL 1 BEGINNER GUIDE — Drone
    ===================================

    File: cmg/prod/client/police/cl_drone.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Drone feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 12
      * Background threads: 0
      * Always-running loops: 6
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
local number, number4, localEventCall, cmgOperation3, text2, text3, backgroundThread, backgroundThread2, eventHandler, text4, workingValue2, cmgOperation, workingValue3, text
number = 948655685
number4 = 190.0
localEventCall = TriggerEvent
cmgOperation3 = "chat:addSuggestion"
text2 = "/drone"
text3 = "Create or delete a remote controlled drone"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
localEventCall(cmgOperation3, text2, text3)
localEventCall = {}
localEventCall.active = false
localEventCall.vehicleHandle = 0
localEventCall.driverHandle = 0
localEventCall.cameraEnabled = false
localEventCall.cameraHandle = 0
localEventCall.nightVisionEnabled = false
localEventCall.thermalEnabled = false
localEventCall.landing = false
localEventCall.tablet = 0
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, workingValue4
  localValue1 = localEventCall.active
  return localValue1
end
cmgOperation3.isPlayerInDrone = text2

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, workingValue4, cmgOperation2, coords, stateFlag11, tableHelper, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag, stateFlag3, stateFlag5, stateFlag7, stateFlag8, stateFlag9, heading, number2, stateFlag10
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  workingValue4 = localEventCall.cameraEnabled
  if workingValue4 then
    workingValue4 = DoesEntityExist
    cmgOperation2 = localEventCall.tablet
    workingValue4 = workingValue4(cmgOperation2)
    if workingValue4 then
      workingValue4 = DeleteEntity
      cmgOperation2 = localEventCall.tablet
      -- Beginner: Delete a GTA entity.
      workingValue4(cmgOperation2)
      workingValue4 = ClearPedTasks
      cmgOperation2 = localValue1
      workingValue4(cmgOperation2)
    end
    workingValue4 = math
    workingValue4 = workingValue4.ceil
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.getPlayerCoords
    -- Beginner: result below is playerCoords.
    cmgOperation2 = cmgOperation2()
    coords = GetEntityCoords
    stateFlag11 = localEventCall.vehicleHandle
    -- Beginner: result below is entityCoords.
    coords = coords(stateFlag11)
    cmgOperation2 = cmgOperation2 - coords
    cmgOperation2 = #cmgOperation2
    cmgOperation2 = cmgOperation2 / 10
    workingValue4 = workingValue4(cmgOperation2)
    workingValue4 = 500 * workingValue4
    cmgOperation2 = RenderScriptCams
    coords = false
    stateFlag11 = false
    tableHelper = workingValue4
    stateFlag13 = true
    stateFlag14 = false
    cmgOperation2(coords, stateFlag11, tableHelper, stateFlag13, stateFlag14)
    cmgOperation2 = ClearTimecycleModifier
    cmgOperation2()
    cmgOperation2 = DoesCamExist
    coords = localEventCall.cameraHandle
    cmgOperation2 = cmgOperation2(coords)
    if cmgOperation2 then
      cmgOperation2 = DestroyCam
      coords = localEventCall.cameraHandle
      stateFlag11 = false
      cmgOperation2(coords, stateFlag11)
    end
    localEventCall.cameraEnabled = false
    cmgOperation2 = localEventCall.nightVisionEnabled
    if cmgOperation2 then
      cmgOperation2 = SetNightvision
      coords = false
      cmgOperation2(coords)
      localEventCall.nightVisionEnabled = false
    end
    cmgOperation2 = localEventCall.thermalEnabled
    if cmgOperation2 then
      cmgOperation2 = SetSeethrough
      coords = false
      cmgOperation2(coords)
      localEventCall.thermalEnabled = false
    end
    cmgOperation2 = FreezeEntityPosition
    coords = localValue1
    stateFlag11 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    cmgOperation2(coords, stateFlag11)
  else
    workingValue4 = CMG
    workingValue4 = workingValue4.loadModel
    cmgOperation2 = -1585232418
    workingValue4 = workingValue4(cmgOperation2)
    if not workingValue4 then
      return
    end
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.getPlayerCoords
    -- Beginner: result below is playerCoords.
    cmgOperation2 = cmgOperation2()
    coords = CMG
    coords = coords.requestEntitySpawn
    stateFlag11 = "drone_tablet"
    coords(stateFlag11)
    coords = CreateObject
    stateFlag11 = workingValue4
    tableHelper = cmgOperation2.x
    stateFlag13 = cmgOperation2.y
    stateFlag14 = cmgOperation2.z
    stateFlag15 = true
    stateFlag16 = false
    stateFlag = false
    -- Beginner: result below is objectEntity.
    coords = coords(stateFlag11, tableHelper, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag)
    localEventCall.tablet = coords
    coords = SetModelAsNoLongerNeeded
    stateFlag11 = workingValue4
    coords(stateFlag11)
    coords = AttachEntityToEntity
    stateFlag11 = localEventCall.tablet
    tableHelper = localValue1
    stateFlag13 = GetPedBoneIndex
    stateFlag14 = localValue1
    stateFlag15 = 28422
    stateFlag13 = stateFlag13(stateFlag14, stateFlag15)
    stateFlag14 = -0.03
    stateFlag15 = 0.0
    stateFlag16 = 0.0
    stateFlag = 0.0
    stateFlag3 = 0.0
    stateFlag5 = 0.0
    stateFlag7 = true
    stateFlag8 = true
    stateFlag9 = false
    heading = true
    number2 = 1
    stateFlag10 = true
    -- Beginner: Attach one entity to another entity.
    coords(stateFlag11, tableHelper, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag, stateFlag3, stateFlag5, stateFlag7, stateFlag8, stateFlag9, heading, number2, stateFlag10)
    coords = CMG
    coords = coords.loadAnimDict
    stateFlag11 = "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a"
    -- Beginner: Load a GTA animation dictionary before using it.
    coords(stateFlag11)
    coords = TaskPlayAnim
    stateFlag11 = localValue1
    tableHelper = "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a"
    stateFlag13 = "idle_a"
    stateFlag14 = 3.0
    stateFlag15 = -8
    stateFlag16 = -1
    stateFlag = 63
    stateFlag3 = 0
    stateFlag5 = false
    stateFlag7 = false
    stateFlag8 = false
    -- Beginner: Play an animation on a ped.
    coords(stateFlag11, tableHelper, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag, stateFlag3, stateFlag5, stateFlag7, stateFlag8)
    localEventCall.cameraEnabled = true
    coords = CreateCam
    stateFlag11 = "DEFAULT_SCRIPTED_CAMERA"
    tableHelper = true
    -- Beginner: result below is cameraHandle.
    coords = coords(stateFlag11, tableHelper)
    localEventCall.cameraHandle = coords
    coords = {}
    coords.x = 0.0
    coords.z = 0.0
    stateFlag11 = 70.0
    tableHelper = AttachCamToEntity
    stateFlag13 = localEventCall.cameraHandle
    stateFlag14 = localEventCall.vehicleHandle
    stateFlag15 = 0.0
    stateFlag16 = 0.1
    stateFlag = -0.1
    stateFlag3 = true
    tableHelper(stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag, stateFlag3)
    tableHelper = Citizen
    tableHelper = tableHelper.CreateThread

    -- === HELPER FUNCTION (decompiler name: stateFlag13; parameters: none) ===
    function stateFlag13()
      local workingValue, workingValue5, number6, number7, stateFlag12, number8, number9, number10, number11, number12, stateFlag2, stateFlag4, stateFlag6
      while true do
        workingValue = DoesCamExist
        workingValue5 = localEventCall.cameraHandle
        workingValue = workingValue(workingValue5)
        if not workingValue then
          break
        end
        workingValue = GetEntityRotation
        workingValue5 = localEventCall.vehicleHandle
        number6 = 2
        workingValue = workingValue(workingValue5, number6)
        workingValue5 = DisableControlAction
        number6 = 0
        number7 = 32
        stateFlag12 = true
        workingValue5(number6, number7, stateFlag12)
        workingValue5 = DisableControlAction
        number6 = 0
        number7 = 33
        stateFlag12 = true
        workingValue5(number6, number7, stateFlag12)
        workingValue5 = DisableControlAction
        number6 = 0
        number7 = 34
        stateFlag12 = true
        workingValue5(number6, number7, stateFlag12)
        workingValue5 = DisableControlAction
        number6 = 0
        number7 = 35
        stateFlag12 = true
        workingValue5(number6, number7, stateFlag12)
        workingValue5 = DisableControlAction
        number6 = 0
        number7 = 157
        stateFlag12 = true
        workingValue5(number6, number7, stateFlag12)
        workingValue5 = DisableControlAction
        number6 = 0
        number7 = 158
        stateFlag12 = true
        workingValue5(number6, number7, stateFlag12)
        workingValue5 = IsDisabledControlPressed
        number6 = 0
        number7 = 32
        workingValue5 = workingValue5(number6, number7)
        if workingValue5 then
          workingValue5 = coords.x
          workingValue5 = workingValue5 + 1.0
          coords.x = workingValue5
        end
        workingValue5 = IsDisabledControlPressed
        number6 = 0
        number7 = 33
        workingValue5 = workingValue5(number6, number7)
        if workingValue5 then
          workingValue5 = coords.x
          workingValue5 = workingValue5 - 1.0
          coords.x = workingValue5
        end
        workingValue5 = IsDisabledControlPressed
        number6 = 0
        number7 = 34
        workingValue5 = workingValue5(number6, number7)
        if workingValue5 then
          workingValue5 = coords.z
          workingValue5 = workingValue5 + 1.0
          coords.z = workingValue5
        end
        workingValue5 = IsDisabledControlPressed
        number6 = 0
        number7 = 35
        workingValue5 = workingValue5(number6, number7)
        if workingValue5 then
          workingValue5 = coords.z
          workingValue5 = workingValue5 - 1.0
          coords.z = workingValue5
        end
        workingValue5 = DisableControlAction
        number6 = 0
        number7 = 45
        stateFlag12 = true
        workingValue5(number6, number7, stateFlag12)
        workingValue5 = DisableControlAction
        number6 = 0
        number7 = 51
        stateFlag12 = true
        workingValue5(number6, number7, stateFlag12)
        workingValue5 = IsDisabledControlPressed
        number6 = 0
        number7 = 45
        workingValue5 = workingValue5(number6, number7)
        if workingValue5 then
          workingValue5 = math
          workingValue5 = workingValue5.max
          number6 = 20.0
          number7 = stateFlag11
          stateFlag12 = GetFrameTime
          stateFlag12 = stateFlag12()
          stateFlag12 = 100.0 * stateFlag12
          number7 = number7 - stateFlag12
          workingValue5 = workingValue5(number6, number7)
          stateFlag11 = workingValue5
        end
        workingValue5 = IsDisabledControlPressed
        number6 = 0
        number7 = 49
        workingValue5 = workingValue5(number6, number7)
        if workingValue5 then
          workingValue5 = math
          workingValue5 = workingValue5.min
          number6 = 70.0
          number7 = stateFlag11
          stateFlag12 = GetFrameTime
          stateFlag12 = stateFlag12()
          stateFlag12 = 100.0 * stateFlag12
          number7 = number7 + stateFlag12
          workingValue5 = workingValue5(number6, number7)
          stateFlag11 = workingValue5
        end
        workingValue5 = SetCamRot
        number6 = localEventCall.cameraHandle
        number7 = workingValue.x
        stateFlag12 = coords.x
        number7 = number7 + stateFlag12
        stateFlag12 = workingValue.y
        number8 = workingValue.z
        number9 = coords.z
        number8 = number8 + number9
        number9 = 2
        workingValue5(number6, number7, stateFlag12, number8, number9)
        workingValue5 = SetCamFov
        number6 = localEventCall.cameraHandle
        number7 = stateFlag11
        workingValue5(number6, number7)
        workingValue5 = IsEntityPlayingAnim
        number6 = localValue1
        number7 = "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a"
        stateFlag12 = "idle_a"
        number8 = 3
        workingValue5 = workingValue5(number6, number7, stateFlag12, number8)
        if not workingValue5 then
          workingValue5 = TaskPlayAnim
          number6 = localValue1
          number7 = "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a"
          stateFlag12 = "idle_a"
          number8 = 3.0
          number9 = -8
          number10 = -1
          number11 = 63
          number12 = 0
          stateFlag2 = false
          stateFlag4 = false
          stateFlag6 = false
          -- Beginner: Play an animation on a ped.
          workingValue5(number6, number7, stateFlag12, number8, number9, number10, number11, number12, stateFlag2, stateFlag4, stateFlag6)
        end
        workingValue5 = Citizen
        workingValue5 = workingValue5.Wait
        number6 = 0
        workingValue5(number6)
      end
      workingValue = RemoveAnimDict
      workingValue5 = "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a"
      workingValue(workingValue5)
      workingValue = ClearPedTasks
      workingValue5 = localValue1
      workingValue(workingValue5)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    tableHelper(stateFlag13)
    tableHelper = math
    tableHelper = tableHelper.ceil
    stateFlag13 = CMG
    stateFlag13 = stateFlag13.getPlayerCoords
    -- Beginner: result below is playerCoords.
    stateFlag13 = stateFlag13()
    stateFlag14 = GetEntityCoords
    stateFlag15 = localEventCall.vehicleHandle
    -- Beginner: result below is entityCoords.
    stateFlag14 = stateFlag14(stateFlag15)
    stateFlag13 = stateFlag13 - stateFlag14
    stateFlag13 = #stateFlag13
    stateFlag13 = stateFlag13 / 10
    tableHelper = tableHelper(stateFlag13)
    tableHelper = 500 * tableHelper
    stateFlag13 = RenderScriptCams
    stateFlag14 = true
    stateFlag15 = true
    stateFlag16 = tableHelper
    stateFlag = true
    stateFlag3 = true
    stateFlag13(stateFlag14, stateFlag15, stateFlag16, stateFlag, stateFlag3)
    stateFlag13 = Wait
    stateFlag14 = tableHelper
    stateFlag13(stateFlag14)
    stateFlag13 = FreezeEntityPosition
    stateFlag14 = localValue1
    stateFlag15 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    stateFlag13(stateFlag14, stateFlag15)
    stateFlag13 = SetTimecycleModifier
    stateFlag14 = "scanline_cam_cheap"
    stateFlag13(stateFlag14)
    stateFlag13 = SetTimecycleModifierStrength
    stateFlag14 = 0.7
    stateFlag13(stateFlag14)
  end
end

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, workingValue4, cmgOperation2, coords
  localValue1 = Wait
  workingValue4 = 500
  localValue1(workingValue4)
  localEventCall.active = false
  localValue1 = DeletePed
  workingValue4 = localEventCall.driverHandle
  localValue1(workingValue4)
  localValue1 = SetEntityAsMissionEntity
  workingValue4 = localEventCall.vehicleHandle
  cmgOperation2 = false
  coords = false
  localValue1(workingValue4, cmgOperation2, coords)
  localValue1 = DeleteEntity
  workingValue4 = localEventCall.vehicleHandle
  -- Beginner: Delete a GTA entity.
  localValue1(workingValue4)
  localValue1 = SetModelAsNoLongerNeeded
  workingValue4 = number
  localValue1(workingValue4)
  localValue1 = localEventCall.cameraEnabled
  if localValue1 then
    localValue1 = cmgOperation3
    localValue1()
  end
  localValue1 = tCMG
  localValue1 = localValue1.notify
  workingValue4 = "Drone ~b~removed~w~."
  -- Beginner: Show a notification to the player.
  localValue1(workingValue4)
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local workingValue4, cmgOperation2, coords, stateFlag11, tableHelper, stateFlag13
  workingValue4 = RequestScaleformMovie
  cmgOperation2 = localValue1
  -- Beginner: result below is scaleformHandle.
  workingValue4 = workingValue4(cmgOperation2)
  while true do
    cmgOperation2 = HasScaleformMovieLoaded
    coords = workingValue4
    cmgOperation2 = cmgOperation2(coords)
    if cmgOperation2 then
      break
    end
    cmgOperation2 = Citizen
    cmgOperation2 = cmgOperation2.Wait
    coords = 0
    cmgOperation2(coords)
  end
  cmgOperation2 = BeginScaleformMovieMethod
  coords = workingValue4
  stateFlag11 = "CLEAR_ALL"
  cmgOperation2(coords, stateFlag11)
  cmgOperation2 = EndScaleformMovieMethod
  cmgOperation2()
  cmgOperation2 = BeginScaleformMovieMethod
  coords = workingValue4
  stateFlag11 = "SET_CLEAR_SPACE"
  cmgOperation2(coords, stateFlag11)
  cmgOperation2 = ScaleformMovieMethodAddParamInt
  coords = 200
  cmgOperation2(coords)
  cmgOperation2 = EndScaleformMovieMethod
  cmgOperation2()
  cmgOperation2 = BeginScaleformMovieMethod
  coords = workingValue4
  stateFlag11 = "SET_DATA_SLOT"
  cmgOperation2(coords, stateFlag11)
  cmgOperation2 = ScaleformMovieMethodAddParamInt
  coords = 0
  cmgOperation2(coords)
  cmgOperation2 = Button
  coords = GetControlInstructionalButton
  stateFlag11 = 0
  tableHelper = 44
  stateFlag13 = true
  coords, stateFlag11, tableHelper, stateFlag13 = coords(stateFlag11, tableHelper, stateFlag13)
  cmgOperation2(coords, stateFlag11, tableHelper, stateFlag13)
  cmgOperation2 = ButtonMessage
  coords = "Up"
  cmgOperation2(coords)
  cmgOperation2 = EndScaleformMovieMethod
  cmgOperation2()
  cmgOperation2 = BeginScaleformMovieMethod
  coords = workingValue4
  stateFlag11 = "SET_DATA_SLOT"
  cmgOperation2(coords, stateFlag11)
  cmgOperation2 = ScaleformMovieMethodAddParamInt
  coords = 1
  cmgOperation2(coords)
  cmgOperation2 = Button
  coords = GetControlInstructionalButton
  stateFlag11 = 0
  tableHelper = 175
  stateFlag13 = true
  coords, stateFlag11, tableHelper, stateFlag13 = coords(stateFlag11, tableHelper, stateFlag13)
  cmgOperation2(coords, stateFlag11, tableHelper, stateFlag13)
  cmgOperation2 = ButtonMessage
  coords = "Right"
  cmgOperation2(coords)
  cmgOperation2 = EndScaleformMovieMethod
  cmgOperation2()
  cmgOperation2 = BeginScaleformMovieMethod
  coords = workingValue4
  stateFlag11 = "SET_DATA_SLOT"
  cmgOperation2(coords, stateFlag11)
  cmgOperation2 = ScaleformMovieMethodAddParamInt
  coords = 2
  cmgOperation2(coords)
  cmgOperation2 = Button
  coords = GetControlInstructionalButton
  stateFlag11 = 0
  tableHelper = 174
  stateFlag13 = true
  coords, stateFlag11, tableHelper, stateFlag13 = coords(stateFlag11, tableHelper, stateFlag13)
  cmgOperation2(coords, stateFlag11, tableHelper, stateFlag13)
  cmgOperation2 = ButtonMessage
  coords = "Left"
  cmgOperation2(coords)
  cmgOperation2 = EndScaleformMovieMethod
  cmgOperation2()
  cmgOperation2 = BeginScaleformMovieMethod
  coords = workingValue4
  stateFlag11 = "SET_DATA_SLOT"
  cmgOperation2(coords, stateFlag11)
  cmgOperation2 = ScaleformMovieMethodAddParamInt
  coords = 3
  cmgOperation2(coords)
  cmgOperation2 = Button
  coords = GetControlInstructionalButton
  stateFlag11 = 0
  tableHelper = 173
  stateFlag13 = true
  coords, stateFlag11, tableHelper, stateFlag13 = coords(stateFlag11, tableHelper, stateFlag13)
  cmgOperation2(coords, stateFlag11, tableHelper, stateFlag13)
  cmgOperation2 = ButtonMessage
  coords = "Backward"
  cmgOperation2(coords)
  cmgOperation2 = EndScaleformMovieMethod
  cmgOperation2()
  cmgOperation2 = BeginScaleformMovieMethod
  coords = workingValue4
  stateFlag11 = "SET_DATA_SLOT"
  cmgOperation2(coords, stateFlag11)
  cmgOperation2 = ScaleformMovieMethodAddParamInt
  coords = 4
  cmgOperation2(coords)
  cmgOperation2 = Button
  coords = GetControlInstructionalButton
  stateFlag11 = 0
  tableHelper = 172
  stateFlag13 = true
  coords, stateFlag11, tableHelper, stateFlag13 = coords(stateFlag11, tableHelper, stateFlag13)
  cmgOperation2(coords, stateFlag11, tableHelper, stateFlag13)
  cmgOperation2 = ButtonMessage
  coords = "Forward"
  cmgOperation2(coords)
  cmgOperation2 = EndScaleformMovieMethod
  cmgOperation2()
  cmgOperation2 = BeginScaleformMovieMethod
  coords = workingValue4
  stateFlag11 = "SET_DATA_SLOT"
  cmgOperation2(coords, stateFlag11)
  cmgOperation2 = ScaleformMovieMethodAddParamInt
  coords = 5
  cmgOperation2(coords)
  cmgOperation2 = Button
  coords = GetControlInstructionalButton
  stateFlag11 = 0
  tableHelper = 191
  stateFlag13 = true
  coords, stateFlag11, tableHelper, stateFlag13 = coords(stateFlag11, tableHelper, stateFlag13)
  cmgOperation2(coords, stateFlag11, tableHelper, stateFlag13)
  cmgOperation2 = ButtonMessage
  coords = "Camera"
  cmgOperation2(coords)
  cmgOperation2 = EndScaleformMovieMethod
  cmgOperation2()
  cmgOperation2 = BeginScaleformMovieMethod
  coords = workingValue4
  stateFlag11 = "SET_DATA_SLOT"
  cmgOperation2(coords, stateFlag11)
  cmgOperation2 = ScaleformMovieMethodAddParamInt
  coords = 6
  cmgOperation2(coords)
  cmgOperation2 = Button
  coords = GetControlInstructionalButton
  stateFlag11 = 0
  tableHelper = 158
  stateFlag13 = true
  coords, stateFlag11, tableHelper, stateFlag13 = coords(stateFlag11, tableHelper, stateFlag13)
  cmgOperation2(coords, stateFlag11, tableHelper, stateFlag13)
  cmgOperation2 = ButtonMessage
  coords = "Night Vision"
  cmgOperation2(coords)
  cmgOperation2 = EndScaleformMovieMethod
  cmgOperation2()
  cmgOperation2 = BeginScaleformMovieMethod
  coords = workingValue4
  stateFlag11 = "SET_DATA_SLOT"
  cmgOperation2(coords, stateFlag11)
  cmgOperation2 = ScaleformMovieMethodAddParamInt
  coords = 7
  cmgOperation2(coords)
  cmgOperation2 = Button
  coords = GetControlInstructionalButton
  stateFlag11 = 0
  tableHelper = 157
  stateFlag13 = true
  coords, stateFlag11, tableHelper, stateFlag13 = coords(stateFlag11, tableHelper, stateFlag13)
  cmgOperation2(coords, stateFlag11, tableHelper, stateFlag13)
  cmgOperation2 = ButtonMessage
  coords = "Thermal"
  cmgOperation2(coords)
  cmgOperation2 = EndScaleformMovieMethod
  cmgOperation2()
  cmgOperation2 = BeginScaleformMovieMethod
  coords = workingValue4
  stateFlag11 = "SET_DATA_SLOT"
  cmgOperation2(coords, stateFlag11)
  cmgOperation2 = ScaleformMovieMethodAddParamInt
  coords = 8
  cmgOperation2(coords)
  cmgOperation2 = Button
  coords = GetControlInstructionalButton
  stateFlag11 = 0
  tableHelper = 45
  stateFlag13 = true
  coords, stateFlag11, tableHelper, stateFlag13 = coords(stateFlag11, tableHelper, stateFlag13)
  cmgOperation2(coords, stateFlag11, tableHelper, stateFlag13)
  cmgOperation2 = ButtonMessage
  coords = "Zoom In"
  cmgOperation2(coords)
  cmgOperation2 = EndScaleformMovieMethod
  cmgOperation2()
  cmgOperation2 = BeginScaleformMovieMethod
  coords = workingValue4
  stateFlag11 = "SET_DATA_SLOT"
  cmgOperation2(coords, stateFlag11)
  cmgOperation2 = ScaleformMovieMethodAddParamInt
  coords = 9
  cmgOperation2(coords)
  cmgOperation2 = Button
  coords = GetControlInstructionalButton
  stateFlag11 = 0
  tableHelper = 49
  stateFlag13 = true
  coords, stateFlag11, tableHelper, stateFlag13 = coords(stateFlag11, tableHelper, stateFlag13)
  cmgOperation2(coords, stateFlag11, tableHelper, stateFlag13)
  cmgOperation2 = ButtonMessage
  coords = "Zoom Out"
  cmgOperation2(coords)
  cmgOperation2 = EndScaleformMovieMethod
  cmgOperation2()
  cmgOperation2 = BeginScaleformMovieMethod
  coords = workingValue4
  stateFlag11 = "SET_DATA_SLOT"
  cmgOperation2(coords, stateFlag11)
  cmgOperation2 = ScaleformMovieMethodAddParamInt
  coords = 10
  cmgOperation2(coords)
  cmgOperation2 = Button
  coords = GetControlInstructionalButton
  stateFlag11 = 0
  tableHelper = 121
  stateFlag13 = true
  coords, stateFlag11, tableHelper, stateFlag13 = coords(stateFlag11, tableHelper, stateFlag13)
  cmgOperation2(coords, stateFlag11, tableHelper, stateFlag13)
  cmgOperation2 = ButtonMessage
  coords = "Land"
  cmgOperation2(coords)
  cmgOperation2 = EndScaleformMovieMethod
  cmgOperation2()
  cmgOperation2 = BeginScaleformMovieMethod
  coords = workingValue4
  stateFlag11 = "DRAW_INSTRUCTIONAL_BUTTONS"
  cmgOperation2(coords, stateFlag11)
  cmgOperation2 = EndScaleformMovieMethod
  cmgOperation2()
  cmgOperation2 = BeginScaleformMovieMethod
  coords = workingValue4
  stateFlag11 = "SET_BACKGROUND_COLOUR"
  cmgOperation2(coords, stateFlag11)
  cmgOperation2 = ScaleformMovieMethodAddParamInt
  coords = 0
  cmgOperation2(coords)
  cmgOperation2 = ScaleformMovieMethodAddParamInt
  coords = 0
  cmgOperation2(coords)
  cmgOperation2 = ScaleformMovieMethodAddParamInt
  coords = 0
  cmgOperation2(coords)
  cmgOperation2 = ScaleformMovieMethodAddParamInt
  coords = 80
  cmgOperation2(coords)
  cmgOperation2 = EndScaleformMovieMethod
  cmgOperation2()
  return workingValue4
end
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: backgroundThread2; parameters: none) ===
function backgroundThread2()
  local localValue1, workingValue4, cmgOperation2, coords, stateFlag11, tableHelper, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag, stateFlag3, stateFlag5, stateFlag7, stateFlag8, stateFlag9, heading, number2, stateFlag10, number3, number5
  localValue1 = text3
  workingValue4 = "instructional_buttons"
  localValue1 = localValue1(workingValue4)
  while true do
    workingValue4 = localEventCall.active
    if workingValue4 then
      workingValue4 = DrawScaleformMovieFullscreen
      cmgOperation2 = localValue1
      coords = 255
      stateFlag11 = 255
      tableHelper = 255
      stateFlag13 = 255
      stateFlag14 = 0
      workingValue4(cmgOperation2, coords, stateFlag11, tableHelper, stateFlag13, stateFlag14)
      workingValue4 = NetworkHasControlOfEntity
      cmgOperation2 = localEventCall.driverHandle
      workingValue4 = workingValue4(cmgOperation2)
      if workingValue4 then
        workingValue4 = NetworkHasControlOfEntity
        cmgOperation2 = localEventCall.vehicleHandle
        workingValue4 = workingValue4(cmgOperation2)
        if workingValue4 then
          goto continueAtStep31
        end
      end
      workingValue4 = tCMG
      workingValue4 = workingValue4.notify
      cmgOperation2 = "You have ~b~lost control ~w~of the drone, after going out of range"
      -- Beginner: Show a notification to the player.
      workingValue4(cmgOperation2)
      workingValue4 = text2
      workingValue4()
      ::continueAtStep31::
      workingValue4 = DisableControlAction
      cmgOperation2 = 0
      coords = 172
      stateFlag11 = true
      workingValue4(cmgOperation2, coords, stateFlag11)
      workingValue4 = DisableControlAction
      cmgOperation2 = 1
      coords = 172
      stateFlag11 = true
      workingValue4(cmgOperation2, coords, stateFlag11)
      workingValue4 = DisableControlAction
      cmgOperation2 = 0
      coords = 300
      stateFlag11 = true
      workingValue4(cmgOperation2, coords, stateFlag11)
      workingValue4 = DisableControlAction
      cmgOperation2 = 0
      coords = 27
      stateFlag11 = true
      workingValue4(cmgOperation2, coords, stateFlag11)
      workingValue4 = DisableControlAction
      cmgOperation2 = 1
      coords = 27
      stateFlag11 = true
      workingValue4(cmgOperation2, coords, stateFlag11)
      workingValue4 = DisableControlAction
      cmgOperation2 = 0
      coords = 188
      stateFlag11 = true
      workingValue4(cmgOperation2, coords, stateFlag11)
      workingValue4 = DisableControlAction
      cmgOperation2 = 1
      coords = 188
      stateFlag11 = true
      workingValue4(cmgOperation2, coords, stateFlag11)
      workingValue4 = DisableControlAction
      cmgOperation2 = 0
      coords = 191
      stateFlag11 = true
      workingValue4(cmgOperation2, coords, stateFlag11)
      workingValue4 = DisableControlAction
      cmgOperation2 = 0
      coords = 208
      stateFlag11 = true
      workingValue4(cmgOperation2, coords, stateFlag11)
      workingValue4 = DisableControlAction
      cmgOperation2 = 0
      coords = 207
      stateFlag11 = true
      workingValue4(cmgOperation2, coords, stateFlag11)
      workingValue4 = DisableControlAction
      cmgOperation2 = 0
      coords = 174
      stateFlag11 = true
      workingValue4(cmgOperation2, coords, stateFlag11)
      workingValue4 = DisableControlAction
      cmgOperation2 = 0
      coords = 175
      stateFlag11 = true
      workingValue4(cmgOperation2, coords, stateFlag11)
      workingValue4 = DisableControlAction
      cmgOperation2 = 0
      coords = 173
      stateFlag11 = true
      workingValue4(cmgOperation2, coords, stateFlag11)
      workingValue4 = DisableControlAction
      cmgOperation2 = 0
      coords = 121
      stateFlag11 = true
      workingValue4(cmgOperation2, coords, stateFlag11)
      workingValue4 = GetEntityHeading
      cmgOperation2 = localEventCall.vehicleHandle
      -- Beginner: result below is heading.
      workingValue4 = workingValue4(cmgOperation2)
      cmgOperation2 = GetEntityCoords
      coords = localEventCall.vehicleHandle
      -- Beginner: result below is entityCoords.
      cmgOperation2 = cmgOperation2(coords)
      coords = 0
      stateFlag11 = IsDisabledControlPressed
      tableHelper = 0
      stateFlag13 = 44
      stateFlag11 = stateFlag11(tableHelper, stateFlag13)
      if stateFlag11 then
        localEventCall.landing = false
        coords = 3.0
      end
      stateFlag11 = IsDisabledControlPressed
      tableHelper = 0
      stateFlag13 = 48
      stateFlag11 = stateFlag11(tableHelper, stateFlag13)
      if stateFlag11 then
        coords = -3.0
      end
      stateFlag11 = IsDisabledControlPressed
      tableHelper = 0
      stateFlag13 = 46
      stateFlag11 = stateFlag11(tableHelper, stateFlag13)
      if stateFlag11 then
        coords = -3.0
      end
      stateFlag11 = IsDisabledControlPressed
      tableHelper = 0
      stateFlag13 = 172
      stateFlag11 = stateFlag11(tableHelper, stateFlag13)
      if stateFlag11 then
        stateFlag11 = GetOffsetFromEntityInWorldCoords
        tableHelper = localEventCall.vehicleHandle
        stateFlag13 = 0.0
        stateFlag14 = 5.0
        stateFlag15 = 0.0
        stateFlag11 = stateFlag11(tableHelper, stateFlag13, stateFlag14, stateFlag15)
        cmgOperation2 = stateFlag11
      end
      stateFlag11 = IsDisabledControlPressed
      tableHelper = 0
      stateFlag13 = 173
      stateFlag11 = stateFlag11(tableHelper, stateFlag13)
      if stateFlag11 then
        stateFlag11 = GetOffsetFromEntityInWorldCoords
        tableHelper = localEventCall.vehicleHandle
        stateFlag13 = 0.0
        stateFlag14 = -5.0
        stateFlag15 = 0.0
        stateFlag11 = stateFlag11(tableHelper, stateFlag13, stateFlag14, stateFlag15)
        cmgOperation2 = stateFlag11
      end
      stateFlag11 = IsDisabledControlPressed
      tableHelper = 0
      stateFlag13 = 174
      stateFlag11 = stateFlag11(tableHelper, stateFlag13)
      if stateFlag11 then
        workingValue4 = workingValue4 + 45.0
      end
      stateFlag11 = IsDisabledControlPressed
      tableHelper = 0
      stateFlag13 = 175
      stateFlag11 = stateFlag11(tableHelper, stateFlag13)
      if stateFlag11 then
        workingValue4 = workingValue4 - 45.0
        if workingValue4 < 0.0 then
          workingValue4 = 360.0
        end
      end
      stateFlag11 = localEventCall.landing
      if not stateFlag11 then
        stateFlag11 = TaskHeliMission
        tableHelper = localEventCall.driverHandle
        stateFlag13 = localEventCall.vehicleHandle
        stateFlag14 = nil
        stateFlag15 = nil
        stateFlag16 = cmgOperation2.x
        stateFlag = cmgOperation2.y
        stateFlag3 = cmgOperation2.z
        stateFlag3 = stateFlag3 + coords
        stateFlag5 = 4
        stateFlag7 = number4
        stateFlag8 = 1.0
        stateFlag9 = workingValue4
        heading = -1
        number2 = -1
        stateFlag10 = -1
        number3 = 0
        stateFlag11(tableHelper, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag, stateFlag3, stateFlag5, stateFlag7, stateFlag8, stateFlag9, heading, number2, stateFlag10, number3)
      end
      stateFlag11 = IsDisabledControlJustPressed
      tableHelper = 0
      stateFlag13 = 121
      stateFlag11 = stateFlag11(tableHelper, stateFlag13)
      if stateFlag11 then
        localEventCall.landing = true
        stateFlag11 = GetOffsetFromEntityInWorldCoords
        tableHelper = localEventCall.driverHandle
        stateFlag13 = 0.0
        stateFlag14 = 3.0
        stateFlag15 = 0.0
        stateFlag11 = stateFlag11(tableHelper, stateFlag13, stateFlag14, stateFlag15)
        tableHelper = TaskHeliMission
        stateFlag13 = localEventCall.driverHandle
        stateFlag14 = localEventCall.vehicleHandle
        stateFlag15 = 0
        stateFlag16 = 0
        stateFlag = stateFlag11.x
        stateFlag3 = stateFlag11.y
        stateFlag5 = stateFlag11.z
        stateFlag5 = stateFlag5 + 2.0
        stateFlag7 = 20
        stateFlag8 = number4
        stateFlag9 = 10.0
        heading = GetEntityHeading
        number2 = localEventCall.driverHandle
        -- Beginner: result below is heading.
        heading = heading(number2)
        number2 = -1
        stateFlag10 = -1
        number3 = -1
        number5 = 32
        tableHelper(stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag, stateFlag3, stateFlag5, stateFlag7, stateFlag8, stateFlag9, heading, number2, stateFlag10, number3, number5)
      end
      stateFlag11 = IsDisabledControlJustPressed
      tableHelper = 0
      stateFlag13 = 158
      stateFlag11 = stateFlag11(tableHelper, stateFlag13)
      if stateFlag11 then
        stateFlag11 = localEventCall.cameraEnabled
        if stateFlag11 then
          stateFlag11 = localEventCall.nightVisionEnabled
          if stateFlag11 then
            stateFlag11 = SetNightvision
            tableHelper = false
            stateFlag11(tableHelper)
            localEventCall.nightVisionEnabled = false
          else
            stateFlag11 = SetNightvision
            tableHelper = true
            stateFlag11(tableHelper)
            localEventCall.nightVisionEnabled = true
          end
        end
      end
      stateFlag11 = IsDisabledControlJustPressed
      tableHelper = 0
      stateFlag13 = 157
      stateFlag11 = stateFlag11(tableHelper, stateFlag13)
      if stateFlag11 then
        stateFlag11 = localEventCall.cameraEnabled
        if stateFlag11 then
          stateFlag11 = localEventCall.thermalEnabled
          if stateFlag11 then
            stateFlag11 = SetSeethrough
            tableHelper = false
            stateFlag11(tableHelper)
            localEventCall.thermalEnabled = false
          else
            stateFlag11 = SetSeethrough
            tableHelper = true
            stateFlag11(tableHelper)
            localEventCall.thermalEnabled = true
          end
        end
      end
      stateFlag11 = IsDisabledControlJustPressed
      tableHelper = 0
      stateFlag13 = 191
      stateFlag11 = stateFlag11(tableHelper, stateFlag13)
      if stateFlag11 then
        stateFlag11 = cmgOperation3
        stateFlag11()
      end
    end
    workingValue4 = Wait
    cmgOperation2 = 0
    workingValue4(cmgOperation2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(backgroundThread2)
backgroundThread = 0
backgroundThread2 = Citizen
backgroundThread2 = backgroundThread2.CreateThread

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, workingValue4, cmgOperation2, coords, stateFlag11, tableHelper, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag, stateFlag3, stateFlag5
  while true do
    localValue1 = CMG
    localValue1 = localValue1.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    localValue1 = localValue1()
    if 0 ~= localValue1 then
      workingValue4 = GetEntityModel
      cmgOperation2 = localValue1
      -- Beginner: result below is modelHash.
      workingValue4 = workingValue4(cmgOperation2)
      cmgOperation2 = number
      if workingValue4 == cmgOperation2 then
        cmgOperation2 = backgroundThread
        cmgOperation2 = cmgOperation2 + 1
        backgroundThread = cmgOperation2
        cmgOperation2 = backgroundThread
        if cmgOperation2 > 3 then
          cmgOperation2 = tCMG
          cmgOperation2 = cmgOperation2.notify
          coords = "~r~Access Denied~w~: Engaging defences in 3, 2, 1..."
          -- Beginner: Show a notification to the player.
          cmgOperation2(coords)
          cmgOperation2 = Wait
          coords = 500
          cmgOperation2(coords)
          cmgOperation2 = CMG
          cmgOperation2 = cmgOperation2.getPlayerCoords
          -- Beginner: result below is playerCoords.
          cmgOperation2 = cmgOperation2()
          coords = AddOwnedExplosion
          stateFlag11 = CMG
          stateFlag11 = stateFlag11.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          stateFlag11 = stateFlag11()
          tableHelper = cmgOperation2.x
          stateFlag13 = cmgOperation2.y
          stateFlag14 = cmgOperation2.z
          stateFlag15 = 4
          stateFlag16 = 17.0
          stateFlag = true
          stateFlag3 = false
          stateFlag5 = 10.0
          coords(stateFlag11, tableHelper, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag, stateFlag3, stateFlag5)
          coords = ExplodeVehicle
          stateFlag11 = localValue1
          tableHelper = true
          stateFlag13 = false
          coords(stateFlag11, tableHelper, stateFlag13)
          coords = PlaySoundFrontend
          stateFlag11 = -1
          tableHelper = "EMP_Blast"
          stateFlag13 = "DLC_HEISTS_BIOLAB_FINALE_SOUNDS"
          stateFlag14 = true
          coords(stateFlag11, tableHelper, stateFlag13, stateFlag14)
          coords = Wait
          stateFlag11 = 2000
          coords(stateFlag11)
          coords = PlaySoundFrontend
          stateFlag11 = -1
          tableHelper = "Beep_Red"
          stateFlag13 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
          stateFlag14 = true
          coords(stateFlag11, tableHelper, stateFlag13, stateFlag14)
          coords = Wait
          stateFlag11 = 2000
          coords(stateFlag11)
          coords = PlaySoundFrontend
          stateFlag11 = -1
          tableHelper = "Bed"
          stateFlag13 = "WastedSounds"
          stateFlag14 = true
          coords(stateFlag11, tableHelper, stateFlag13, stateFlag14)
          coords = CMG
          coords = coords.getPlayerVehicle
          -- Beginner: result below is currentVehicle.
          coords = coords()
          if nil ~= coords then
            coords = DoesEntityExist
            stateFlag11 = CMG
            stateFlag11 = stateFlag11.getPlayerVehicle
            stateFlag11, tableHelper, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag, stateFlag3, stateFlag5 = stateFlag11()
            coords = coords(stateFlag11, tableHelper, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag, stateFlag3, stateFlag5)
            if coords then
              coords = DeleteEntity
              stateFlag11 = CMG
              stateFlag11 = stateFlag11.getPlayerVehicle
              stateFlag11, tableHelper, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag, stateFlag3, stateFlag5 = stateFlag11()
              -- Beginner: Delete a GTA entity.
              coords(stateFlag11, tableHelper, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag, stateFlag3, stateFlag5)
            end
          end
        end
      end
    end
    workingValue4 = Wait
    cmgOperation2 = 5000
    workingValue4(cmgOperation2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread2(eventHandler)

-- === HELPER FUNCTION (decompiler name: backgroundThread2; parameters: localValue1) ===
function backgroundThread2(localValue1)
  local workingValue4, cmgOperation2
  workingValue4 = BeginTextCommandScaleformString
  cmgOperation2 = "STRING"
  workingValue4(cmgOperation2)
  workingValue4 = AddTextComponentSubstringKeyboardDisplay
  cmgOperation2 = localValue1
  workingValue4(cmgOperation2)
  workingValue4 = EndTextCommandScaleformString
  workingValue4()
end
ButtonMessage = backgroundThread2

-- === HELPER FUNCTION (decompiler name: backgroundThread2; parameters: localValue1) ===
function backgroundThread2(localValue1)
  local workingValue4, cmgOperation2
  workingValue4 = _ENV
  cmgOperation2 = "ScaleformMovieMethodAddParamPlayerNameString"
  workingValue4 = workingValue4[cmgOperation2]
  cmgOperation2 = localValue1
  workingValue4(cmgOperation2)
end
Button = backgroundThread2

-- === HELPER FUNCTION (decompiler name: backgroundThread2; parameters: none) ===
function backgroundThread2()
  local localValue1, workingValue4, cmgOperation2, coords, stateFlag11, tableHelper, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag, stateFlag3, stateFlag5, stateFlag7, stateFlag8
  localValue1 = CMG
  localValue1 = localValue1.loadModel
  workingValue4 = number
  localValue1 = localValue1(workingValue4)
  if not localValue1 then
    return
  end
  workingValue4 = CMG
  workingValue4 = workingValue4.loadModel
  cmgOperation2 = -1613485779
  workingValue4 = workingValue4(cmgOperation2)
  if not workingValue4 then
    return
  end
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgOperation2 = cmgOperation2()
  coords = GetOffsetFromEntityInWorldCoords
  stateFlag11 = cmgOperation2
  tableHelper = 0.0
  stateFlag13 = 4.0
  stateFlag14 = 0.0
  coords = coords(stateFlag11, tableHelper, stateFlag13, stateFlag14)
  stateFlag11 = GetEntityHeading
  tableHelper = cmgOperation2
  -- Beginner: result below is heading.
  stateFlag11 = stateFlag11(tableHelper)
  tableHelper = CMG
  tableHelper = tableHelper.requestEntitySpawn
  stateFlag13 = "policedrone"
  stateFlag14 = coords
  tableHelper(stateFlag13, stateFlag14)
  tableHelper = CMG
  tableHelper = tableHelper.spawnVehicle
  stateFlag13 = number
  stateFlag14 = coords.x
  stateFlag15 = coords.y
  stateFlag16 = coords.z
  stateFlag = stateFlag11
  stateFlag3 = false
  stateFlag5 = true
  tableHelper = tableHelper(stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag, stateFlag3, stateFlag5)
  localEventCall.vehicleHandle = tableHelper
  tableHelper = SetModelAsNoLongerNeeded
  stateFlag13 = localValue1
  tableHelper(stateFlag13)
  tableHelper = SetEntityNoCollisionEntity
  stateFlag13 = CMG
  stateFlag13 = stateFlag13.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  stateFlag13 = stateFlag13()
  stateFlag14 = localEventCall.vehicleHandle
  stateFlag15 = true
  tableHelper(stateFlag13, stateFlag14, stateFlag15)
  tableHelper = Wait
  stateFlag13 = 1000
  tableHelper(stateFlag13)
  tableHelper = SetEntityAsMissionEntity
  stateFlag13 = localEventCall.vehicleHandle
  stateFlag14 = true
  stateFlag15 = true
  tableHelper(stateFlag13, stateFlag14, stateFlag15)
  tableHelper = NetworkGetNetworkIdFromEntity
  stateFlag13 = localEventCall.vehicleHandle
  tableHelper = tableHelper(stateFlag13)
  stateFlag13 = NetworkUseHighPrecisionBlending
  stateFlag14 = tableHelper
  stateFlag15 = true
  stateFlag13(stateFlag14, stateFlag15)
  stateFlag13 = SetNetworkIdCanMigrate
  stateFlag14 = tableHelper
  stateFlag15 = true
  stateFlag13(stateFlag14, stateFlag15)
  stateFlag13 = SetNetworkIdExistsOnAllMachines
  stateFlag14 = tableHelper
  stateFlag15 = true
  stateFlag13(stateFlag14, stateFlag15)
  stateFlag13 = CMG
  stateFlag13 = stateFlag13.requestEntitySpawn
  stateFlag14 = "policedrone_ped"
  stateFlag15 = coords
  stateFlag13(stateFlag14, stateFlag15)
  stateFlag13 = CreatePed
  stateFlag14 = 4
  stateFlag15 = workingValue4
  stateFlag16 = coords.x
  stateFlag = coords.y
  stateFlag3 = coords.z
  stateFlag5 = stateFlag11
  stateFlag7 = true
  stateFlag8 = false
  -- Beginner: result below is pedEntity.
  stateFlag13 = stateFlag13(stateFlag14, stateFlag15, stateFlag16, stateFlag, stateFlag3, stateFlag5, stateFlag7, stateFlag8)
  localEventCall.driverHandle = stateFlag13
  while true do
    stateFlag13 = DoesEntityExist
    stateFlag14 = localEventCall.driverHandle
    stateFlag13 = stateFlag13(stateFlag14)
    if stateFlag13 then
      break
    end
    stateFlag13 = Wait
    stateFlag14 = 0
    stateFlag13(stateFlag14)
  end
  stateFlag13 = SetModelAsNoLongerNeeded
  stateFlag14 = workingValue4
  stateFlag13(stateFlag14)
  stateFlag13 = SetEntityInvincible
  stateFlag14 = localEventCall.driverHandle
  stateFlag15 = true
  stateFlag13(stateFlag14, stateFlag15)
  stateFlag13 = SetEntityVisible
  stateFlag14 = localEventCall.driverHandle
  stateFlag15 = false
  stateFlag16 = false
  stateFlag13(stateFlag14, stateFlag15, stateFlag16)
  stateFlag13 = FreezeEntityPosition
  stateFlag14 = localEventCall.driverHandle
  stateFlag15 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  stateFlag13(stateFlag14, stateFlag15)
  stateFlag13 = SetPedAlertness
  stateFlag14 = localEventCall.driverHandle
  stateFlag15 = 0.0
  stateFlag13(stateFlag14, stateFlag15)
  stateFlag13 = TaskWarpPedIntoVehicle
  stateFlag14 = localEventCall.driverHandle
  stateFlag15 = localEventCall.vehicleHandle
  stateFlag16 = -1
  stateFlag13(stateFlag14, stateFlag15, stateFlag16)
  stateFlag13 = SetVehicleDoorsLocked
  stateFlag14 = localEventCall.vehicleHandle
  stateFlag15 = 2
  stateFlag13(stateFlag14, stateFlag15)
  while true do
    stateFlag13 = IsPedInVehicle
    stateFlag14 = localEventCall.driverHandle
    stateFlag15 = localEventCall.vehicleHandle
    stateFlag16 = false
    stateFlag13 = stateFlag13(stateFlag14, stateFlag15, stateFlag16)
    if stateFlag13 then
      break
    end
    stateFlag13 = Wait
    stateFlag14 = 0
    stateFlag13(stateFlag14)
  end
  localEventCall.active = true
  stateFlag13 = tCMG
  stateFlag13 = stateFlag13.notify
  stateFlag14 = "Drone ~b~created~w~."
  -- Beginner: Show a notification to the player.
  stateFlag13(stateFlag14)
  stateFlag13 = Wait
  stateFlag14 = 1000
  stateFlag13(stateFlag14)
  stateFlag13 = tCMG
  stateFlag13 = stateFlag13.notify
  stateFlag14 = "To remove your drone, use ~b~/drone"
  -- Beginner: Show a notification to the player.
  stateFlag13(stateFlag14)
end
eventHandler = RegisterNetEvent
text4 = "toggleDrone"
-- Beginner: this function handles network event "toggleDrone".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
function workingValue2()
  local localValue1, workingValue4, cmgOperation2
  localValue1 = localEventCall.active
  if not localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    localValue1 = localValue1()
    if 0 == localValue1 then
      localValue1 = tCMG
      localValue1 = localValue1.isInComa
      localValue1 = localValue1()
      if not localValue1 then
        localValue1 = TriggerServerEvent
        workingValue4 = "2af187bc60"
        cmgOperation2 = "Powered on their DJI Inspire Drone"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2af187bc60".
        localValue1(workingValue4, cmgOperation2)
        localValue1 = backgroundThread2
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        localValue1()
    end
    else
      localValue1 = tCMG
      localValue1 = localValue1.notify
      workingValue4 = "You are not able to use a drone right now."
      -- Beginner: Show a notification to the player.
      localValue1(workingValue4)
    end
  else
    localValue1 = TriggerServerEvent
    workingValue4 = "2af187bc60"
    cmgOperation2 = "Powered off their DJI Inspire Drone"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2af187bc60".
    localValue1(workingValue4, cmgOperation2)
    localValue1 = text2
    localValue1()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "toggleDrone".
eventHandler(text4, workingValue2)
eventHandler = nil
text4 = nil

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
function workingValue2()
  local localValue1, workingValue4, cmgOperation2, coords, stateFlag11, tableHelper, stateFlag13, stateFlag14, stateFlag15, stateFlag16
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue1 = localValue1()
  if 0 == localValue1 then
    workingValue4 = eventHandler
    if workingValue4 then
      workingValue4 = eventHandler
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.getPlayerCoords
      -- Beginner: result below is playerCoords.
      cmgOperation2 = cmgOperation2()
      workingValue4 = workingValue4 - cmgOperation2
      workingValue4 = #workingValue4
      if workingValue4 > 20.0 then
        workingValue4 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        workingValue4 = workingValue4()
        cmgOperation2 = SetEntityCoordsNoOffset
        coords = workingValue4
        stateFlag11 = eventHandler.x
        tableHelper = eventHandler.y
        stateFlag13 = eventHandler.z
        stateFlag14 = false
        stateFlag15 = false
        stateFlag16 = false
        -- Beginner: Move/teleport an entity to new coordinates.
        cmgOperation2(coords, stateFlag11, tableHelper, stateFlag13, stateFlag14, stateFlag15, stateFlag16)
        cmgOperation2 = ClearPedTasksImmediately
        coords = workingValue4
        cmgOperation2(coords)
      end
      workingValue4 = SetEntityVisible
      cmgOperation2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      cmgOperation2 = cmgOperation2()
      coords = true
      stateFlag11 = false
      workingValue4(cmgOperation2, coords, stateFlag11)
      workingValue4 = nil
      eventHandler = workingValue4
      workingValue4 = RemoveBlip
      cmgOperation2 = text4
      workingValue4(cmgOperation2)
    end
    return
  end
  workingValue4 = GetEntityModel
  cmgOperation2 = localValue1
  -- Beginner: result below is modelHash.
  workingValue4 = workingValue4(cmgOperation2)
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.isVehicleRemoteControlled
  coords = workingValue4
  cmgOperation2 = cmgOperation2(coords)
  if not cmgOperation2 then
    return
  end
  cmgOperation2 = GetEntityCoords
  coords = localValue1
  stateFlag11 = true
  -- Beginner: result below is entityCoords.
  cmgOperation2 = cmgOperation2(coords, stateFlag11)
  coords = eventHandler
  if not coords then
    eventHandler = cmgOperation2
    coords = SetEntityVisible
    stateFlag11 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    stateFlag11 = stateFlag11()
    tableHelper = false
    stateFlag13 = false
    coords(stateFlag11, tableHelper, stateFlag13)
    coords = AddBlipForRadius
    stateFlag11 = cmgOperation2.x
    tableHelper = cmgOperation2.y
    stateFlag13 = cmgOperation2.z
    stateFlag14 = 20.0
    -- Beginner: result below is blipHandle.
    coords = coords(stateFlag11, tableHelper, stateFlag13, stateFlag14)
    text4 = coords
    coords = SetBlipColour
    stateFlag11 = text4
    tableHelper = 5
    coords(stateFlag11, tableHelper)
  end
  coords = eventHandler
  coords = coords - cmgOperation2
  coords = #coords
  if coords > 20.0 then
    coords = DisableControlAction
    stateFlag11 = 0
    tableHelper = 23
    stateFlag13 = true
    coords(stateFlag11, tableHelper, stateFlag13)
    coords = DisableControlAction
    stateFlag11 = 0
    tableHelper = 75
    stateFlag13 = true
    coords(stateFlag11, tableHelper, stateFlag13)
    coords = IsDisabledControlJustPressed
    stateFlag11 = 0
    tableHelper = 23
    coords = coords(stateFlag11, tableHelper)
    if not coords then
      coords = IsDisabledControlJustPressed
      stateFlag11 = 0
      tableHelper = 75
      coords = coords(stateFlag11, tableHelper)
      if not coords then
        goto continueAtStep110
      end
    end
    coords = notify
    stateFlag11 = "You must be near the ~y~start position~w~ to exit."
    -- Beginner: Show a notification to the player.
    coords(stateFlag11)
  end
  ::continueAtStep110::
end
cmgOperation = CMG
cmgOperation = cmgOperation.createThreadOnTick
workingValue3 = workingValue2
text = "Drones"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation(workingValue3, text)
