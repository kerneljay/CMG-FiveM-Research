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
local numberValue, numberValue4, localEventCall, cmgCall3, textValue2, textValue3, threadCall, threadCall2, eventRegistration, textValue4, workValue2, cmgCall, workValue3, textValue
numberValue = 948655685
numberValue4 = 190.0
localEventCall = TriggerEvent
cmgCall3 = "chat:addSuggestion"
textValue2 = "/drone"
textValue3 = "Create or delete a remote controlled drone"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
localEventCall(cmgCall3, textValue2, textValue3)
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
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, workValue4
  arg1 = localEventCall.active
  return arg1
end
cmgCall3.isPlayerInDrone = textValue2

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
function cmgCall3()
  local arg1, workValue4, cmgCall2, coords, flag11, tableHelper, flag13, flag14, flag15, flag16, flag, flag3, flag5, flag7, flag8, flag9, heading, numberValue2, flag10
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  workValue4 = localEventCall.cameraEnabled
  if workValue4 then
    workValue4 = DoesEntityExist
    cmgCall2 = localEventCall.tablet
    workValue4 = workValue4(cmgCall2)
    if workValue4 then
      workValue4 = DeleteEntity
      cmgCall2 = localEventCall.tablet
      -- Beginner: Delete a GTA entity.
      workValue4(cmgCall2)
      workValue4 = ClearPedTasks
      cmgCall2 = arg1
      workValue4(cmgCall2)
    end
    workValue4 = math
    workValue4 = workValue4.ceil
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.getPlayerCoords
    -- Beginner: result below is playerCoords.
    cmgCall2 = cmgCall2()
    coords = GetEntityCoords
    flag11 = localEventCall.vehicleHandle
    -- Beginner: result below is entityCoords.
    coords = coords(flag11)
    cmgCall2 = cmgCall2 - coords
    cmgCall2 = #cmgCall2
    cmgCall2 = cmgCall2 / 10
    workValue4 = workValue4(cmgCall2)
    workValue4 = 500 * workValue4
    cmgCall2 = RenderScriptCams
    coords = false
    flag11 = false
    tableHelper = workValue4
    flag13 = true
    flag14 = false
    cmgCall2(coords, flag11, tableHelper, flag13, flag14)
    cmgCall2 = ClearTimecycleModifier
    cmgCall2()
    cmgCall2 = DoesCamExist
    coords = localEventCall.cameraHandle
    cmgCall2 = cmgCall2(coords)
    if cmgCall2 then
      cmgCall2 = DestroyCam
      coords = localEventCall.cameraHandle
      flag11 = false
      cmgCall2(coords, flag11)
    end
    localEventCall.cameraEnabled = false
    cmgCall2 = localEventCall.nightVisionEnabled
    if cmgCall2 then
      cmgCall2 = SetNightvision
      coords = false
      cmgCall2(coords)
      localEventCall.nightVisionEnabled = false
    end
    cmgCall2 = localEventCall.thermalEnabled
    if cmgCall2 then
      cmgCall2 = SetSeethrough
      coords = false
      cmgCall2(coords)
      localEventCall.thermalEnabled = false
    end
    cmgCall2 = FreezeEntityPosition
    coords = arg1
    flag11 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    cmgCall2(coords, flag11)
  else
    workValue4 = CMG
    workValue4 = workValue4.loadModel
    cmgCall2 = -1585232418
    workValue4 = workValue4(cmgCall2)
    if not workValue4 then
      return
    end
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.getPlayerCoords
    -- Beginner: result below is playerCoords.
    cmgCall2 = cmgCall2()
    coords = CMG
    coords = coords.requestEntitySpawn
    flag11 = "drone_tablet"
    coords(flag11)
    coords = CreateObject
    flag11 = workValue4
    tableHelper = cmgCall2.x
    flag13 = cmgCall2.y
    flag14 = cmgCall2.z
    flag15 = true
    flag16 = false
    flag = false
    -- Beginner: result below is objectEntity.
    coords = coords(flag11, tableHelper, flag13, flag14, flag15, flag16, flag)
    localEventCall.tablet = coords
    coords = SetModelAsNoLongerNeeded
    flag11 = workValue4
    coords(flag11)
    coords = AttachEntityToEntity
    flag11 = localEventCall.tablet
    tableHelper = arg1
    flag13 = GetPedBoneIndex
    flag14 = arg1
    flag15 = 28422
    flag13 = flag13(flag14, flag15)
    flag14 = -0.03
    flag15 = 0.0
    flag16 = 0.0
    flag = 0.0
    flag3 = 0.0
    flag5 = 0.0
    flag7 = true
    flag8 = true
    flag9 = false
    heading = true
    numberValue2 = 1
    flag10 = true
    -- Beginner: Attach one entity to another entity.
    coords(flag11, tableHelper, flag13, flag14, flag15, flag16, flag, flag3, flag5, flag7, flag8, flag9, heading, numberValue2, flag10)
    coords = CMG
    coords = coords.loadAnimDict
    flag11 = "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a"
    -- Beginner: Load a GTA animation dictionary before using it.
    coords(flag11)
    coords = TaskPlayAnim
    flag11 = arg1
    tableHelper = "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a"
    flag13 = "idle_a"
    flag14 = 3.0
    flag15 = -8
    flag16 = -1
    flag = 63
    flag3 = 0
    flag5 = false
    flag7 = false
    flag8 = false
    -- Beginner: Play an animation on a ped.
    coords(flag11, tableHelper, flag13, flag14, flag15, flag16, flag, flag3, flag5, flag7, flag8)
    localEventCall.cameraEnabled = true
    coords = CreateCam
    flag11 = "DEFAULT_SCRIPTED_CAMERA"
    tableHelper = true
    -- Beginner: result below is cameraHandle.
    coords = coords(flag11, tableHelper)
    localEventCall.cameraHandle = coords
    coords = {}
    coords.x = 0.0
    coords.z = 0.0
    flag11 = 70.0
    tableHelper = AttachCamToEntity
    flag13 = localEventCall.cameraHandle
    flag14 = localEventCall.vehicleHandle
    flag15 = 0.0
    flag16 = 0.1
    flag = -0.1
    flag3 = true
    tableHelper(flag13, flag14, flag15, flag16, flag, flag3)
    tableHelper = Citizen
    tableHelper = tableHelper.CreateThread

    -- === HELPER FUNCTION (decompiler name: flag13; parameters: none) ===
    function flag13()
      local workValue, workValue5, numberValue6, numberValue7, flag12, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, flag2, flag4, flag6
      while true do
        workValue = DoesCamExist
        workValue5 = localEventCall.cameraHandle
        workValue = workValue(workValue5)
        if not workValue then
          break
        end
        workValue = GetEntityRotation
        workValue5 = localEventCall.vehicleHandle
        numberValue6 = 2
        workValue = workValue(workValue5, numberValue6)
        workValue5 = DisableControlAction
        numberValue6 = 0
        numberValue7 = 32
        flag12 = true
        workValue5(numberValue6, numberValue7, flag12)
        workValue5 = DisableControlAction
        numberValue6 = 0
        numberValue7 = 33
        flag12 = true
        workValue5(numberValue6, numberValue7, flag12)
        workValue5 = DisableControlAction
        numberValue6 = 0
        numberValue7 = 34
        flag12 = true
        workValue5(numberValue6, numberValue7, flag12)
        workValue5 = DisableControlAction
        numberValue6 = 0
        numberValue7 = 35
        flag12 = true
        workValue5(numberValue6, numberValue7, flag12)
        workValue5 = DisableControlAction
        numberValue6 = 0
        numberValue7 = 157
        flag12 = true
        workValue5(numberValue6, numberValue7, flag12)
        workValue5 = DisableControlAction
        numberValue6 = 0
        numberValue7 = 158
        flag12 = true
        workValue5(numberValue6, numberValue7, flag12)
        workValue5 = IsDisabledControlPressed
        numberValue6 = 0
        numberValue7 = 32
        workValue5 = workValue5(numberValue6, numberValue7)
        if workValue5 then
          workValue5 = coords.x
          workValue5 = workValue5 + 1.0
          coords.x = workValue5
        end
        workValue5 = IsDisabledControlPressed
        numberValue6 = 0
        numberValue7 = 33
        workValue5 = workValue5(numberValue6, numberValue7)
        if workValue5 then
          workValue5 = coords.x
          workValue5 = workValue5 - 1.0
          coords.x = workValue5
        end
        workValue5 = IsDisabledControlPressed
        numberValue6 = 0
        numberValue7 = 34
        workValue5 = workValue5(numberValue6, numberValue7)
        if workValue5 then
          workValue5 = coords.z
          workValue5 = workValue5 + 1.0
          coords.z = workValue5
        end
        workValue5 = IsDisabledControlPressed
        numberValue6 = 0
        numberValue7 = 35
        workValue5 = workValue5(numberValue6, numberValue7)
        if workValue5 then
          workValue5 = coords.z
          workValue5 = workValue5 - 1.0
          coords.z = workValue5
        end
        workValue5 = DisableControlAction
        numberValue6 = 0
        numberValue7 = 45
        flag12 = true
        workValue5(numberValue6, numberValue7, flag12)
        workValue5 = DisableControlAction
        numberValue6 = 0
        numberValue7 = 51
        flag12 = true
        workValue5(numberValue6, numberValue7, flag12)
        workValue5 = IsDisabledControlPressed
        numberValue6 = 0
        numberValue7 = 45
        workValue5 = workValue5(numberValue6, numberValue7)
        if workValue5 then
          workValue5 = math
          workValue5 = workValue5.max
          numberValue6 = 20.0
          numberValue7 = flag11
          flag12 = GetFrameTime
          flag12 = flag12()
          flag12 = 100.0 * flag12
          numberValue7 = numberValue7 - flag12
          workValue5 = workValue5(numberValue6, numberValue7)
          flag11 = workValue5
        end
        workValue5 = IsDisabledControlPressed
        numberValue6 = 0
        numberValue7 = 49
        workValue5 = workValue5(numberValue6, numberValue7)
        if workValue5 then
          workValue5 = math
          workValue5 = workValue5.min
          numberValue6 = 70.0
          numberValue7 = flag11
          flag12 = GetFrameTime
          flag12 = flag12()
          flag12 = 100.0 * flag12
          numberValue7 = numberValue7 + flag12
          workValue5 = workValue5(numberValue6, numberValue7)
          flag11 = workValue5
        end
        workValue5 = SetCamRot
        numberValue6 = localEventCall.cameraHandle
        numberValue7 = workValue.x
        flag12 = coords.x
        numberValue7 = numberValue7 + flag12
        flag12 = workValue.y
        numberValue8 = workValue.z
        numberValue9 = coords.z
        numberValue8 = numberValue8 + numberValue9
        numberValue9 = 2
        workValue5(numberValue6, numberValue7, flag12, numberValue8, numberValue9)
        workValue5 = SetCamFov
        numberValue6 = localEventCall.cameraHandle
        numberValue7 = flag11
        workValue5(numberValue6, numberValue7)
        workValue5 = IsEntityPlayingAnim
        numberValue6 = arg1
        numberValue7 = "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a"
        flag12 = "idle_a"
        numberValue8 = 3
        workValue5 = workValue5(numberValue6, numberValue7, flag12, numberValue8)
        if not workValue5 then
          workValue5 = TaskPlayAnim
          numberValue6 = arg1
          numberValue7 = "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a"
          flag12 = "idle_a"
          numberValue8 = 3.0
          numberValue9 = -8
          numberValue10 = -1
          numberValue11 = 63
          numberValue12 = 0
          flag2 = false
          flag4 = false
          flag6 = false
          -- Beginner: Play an animation on a ped.
          workValue5(numberValue6, numberValue7, flag12, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, flag2, flag4, flag6)
        end
        workValue5 = Citizen
        workValue5 = workValue5.Wait
        numberValue6 = 0
        workValue5(numberValue6)
      end
      workValue = RemoveAnimDict
      workValue5 = "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a"
      workValue(workValue5)
      workValue = ClearPedTasks
      workValue5 = arg1
      workValue(workValue5)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    tableHelper(flag13)
    tableHelper = math
    tableHelper = tableHelper.ceil
    flag13 = CMG
    flag13 = flag13.getPlayerCoords
    -- Beginner: result below is playerCoords.
    flag13 = flag13()
    flag14 = GetEntityCoords
    flag15 = localEventCall.vehicleHandle
    -- Beginner: result below is entityCoords.
    flag14 = flag14(flag15)
    flag13 = flag13 - flag14
    flag13 = #flag13
    flag13 = flag13 / 10
    tableHelper = tableHelper(flag13)
    tableHelper = 500 * tableHelper
    flag13 = RenderScriptCams
    flag14 = true
    flag15 = true
    flag16 = tableHelper
    flag = true
    flag3 = true
    flag13(flag14, flag15, flag16, flag, flag3)
    flag13 = Wait
    flag14 = tableHelper
    flag13(flag14)
    flag13 = FreezeEntityPosition
    flag14 = arg1
    flag15 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    flag13(flag14, flag15)
    flag13 = SetTimecycleModifier
    flag14 = "scanline_cam_cheap"
    flag13(flag14)
    flag13 = SetTimecycleModifierStrength
    flag14 = 0.7
    flag13(flag14)
  end
end

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, workValue4, cmgCall2, coords
  arg1 = Wait
  workValue4 = 500
  arg1(workValue4)
  localEventCall.active = false
  arg1 = DeletePed
  workValue4 = localEventCall.driverHandle
  arg1(workValue4)
  arg1 = SetEntityAsMissionEntity
  workValue4 = localEventCall.vehicleHandle
  cmgCall2 = false
  coords = false
  arg1(workValue4, cmgCall2, coords)
  arg1 = DeleteEntity
  workValue4 = localEventCall.vehicleHandle
  -- Beginner: Delete a GTA entity.
  arg1(workValue4)
  arg1 = SetModelAsNoLongerNeeded
  workValue4 = numberValue
  arg1(workValue4)
  arg1 = localEventCall.cameraEnabled
  if arg1 then
    arg1 = cmgCall3
    arg1()
  end
  arg1 = tCMG
  arg1 = arg1.notify
  workValue4 = "Drone ~b~removed~w~."
  -- Beginner: Show a notification to the player.
  arg1(workValue4)
end

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1) ===
function textValue3(arg1)
  local workValue4, cmgCall2, coords, flag11, tableHelper, flag13
  workValue4 = RequestScaleformMovie
  cmgCall2 = arg1
  -- Beginner: result below is scaleformHandle.
  workValue4 = workValue4(cmgCall2)
  while true do
    cmgCall2 = HasScaleformMovieLoaded
    coords = workValue4
    cmgCall2 = cmgCall2(coords)
    if cmgCall2 then
      break
    end
    cmgCall2 = Citizen
    cmgCall2 = cmgCall2.Wait
    coords = 0
    cmgCall2(coords)
  end
  cmgCall2 = BeginScaleformMovieMethod
  coords = workValue4
  flag11 = "CLEAR_ALL"
  cmgCall2(coords, flag11)
  cmgCall2 = EndScaleformMovieMethod
  cmgCall2()
  cmgCall2 = BeginScaleformMovieMethod
  coords = workValue4
  flag11 = "SET_CLEAR_SPACE"
  cmgCall2(coords, flag11)
  cmgCall2 = ScaleformMovieMethodAddParamInt
  coords = 200
  cmgCall2(coords)
  cmgCall2 = EndScaleformMovieMethod
  cmgCall2()
  cmgCall2 = BeginScaleformMovieMethod
  coords = workValue4
  flag11 = "SET_DATA_SLOT"
  cmgCall2(coords, flag11)
  cmgCall2 = ScaleformMovieMethodAddParamInt
  coords = 0
  cmgCall2(coords)
  cmgCall2 = Button
  coords = GetControlInstructionalButton
  flag11 = 0
  tableHelper = 44
  flag13 = true
  coords, flag11, tableHelper, flag13 = coords(flag11, tableHelper, flag13)
  cmgCall2(coords, flag11, tableHelper, flag13)
  cmgCall2 = ButtonMessage
  coords = "Up"
  cmgCall2(coords)
  cmgCall2 = EndScaleformMovieMethod
  cmgCall2()
  cmgCall2 = BeginScaleformMovieMethod
  coords = workValue4
  flag11 = "SET_DATA_SLOT"
  cmgCall2(coords, flag11)
  cmgCall2 = ScaleformMovieMethodAddParamInt
  coords = 1
  cmgCall2(coords)
  cmgCall2 = Button
  coords = GetControlInstructionalButton
  flag11 = 0
  tableHelper = 175
  flag13 = true
  coords, flag11, tableHelper, flag13 = coords(flag11, tableHelper, flag13)
  cmgCall2(coords, flag11, tableHelper, flag13)
  cmgCall2 = ButtonMessage
  coords = "Right"
  cmgCall2(coords)
  cmgCall2 = EndScaleformMovieMethod
  cmgCall2()
  cmgCall2 = BeginScaleformMovieMethod
  coords = workValue4
  flag11 = "SET_DATA_SLOT"
  cmgCall2(coords, flag11)
  cmgCall2 = ScaleformMovieMethodAddParamInt
  coords = 2
  cmgCall2(coords)
  cmgCall2 = Button
  coords = GetControlInstructionalButton
  flag11 = 0
  tableHelper = 174
  flag13 = true
  coords, flag11, tableHelper, flag13 = coords(flag11, tableHelper, flag13)
  cmgCall2(coords, flag11, tableHelper, flag13)
  cmgCall2 = ButtonMessage
  coords = "Left"
  cmgCall2(coords)
  cmgCall2 = EndScaleformMovieMethod
  cmgCall2()
  cmgCall2 = BeginScaleformMovieMethod
  coords = workValue4
  flag11 = "SET_DATA_SLOT"
  cmgCall2(coords, flag11)
  cmgCall2 = ScaleformMovieMethodAddParamInt
  coords = 3
  cmgCall2(coords)
  cmgCall2 = Button
  coords = GetControlInstructionalButton
  flag11 = 0
  tableHelper = 173
  flag13 = true
  coords, flag11, tableHelper, flag13 = coords(flag11, tableHelper, flag13)
  cmgCall2(coords, flag11, tableHelper, flag13)
  cmgCall2 = ButtonMessage
  coords = "Backward"
  cmgCall2(coords)
  cmgCall2 = EndScaleformMovieMethod
  cmgCall2()
  cmgCall2 = BeginScaleformMovieMethod
  coords = workValue4
  flag11 = "SET_DATA_SLOT"
  cmgCall2(coords, flag11)
  cmgCall2 = ScaleformMovieMethodAddParamInt
  coords = 4
  cmgCall2(coords)
  cmgCall2 = Button
  coords = GetControlInstructionalButton
  flag11 = 0
  tableHelper = 172
  flag13 = true
  coords, flag11, tableHelper, flag13 = coords(flag11, tableHelper, flag13)
  cmgCall2(coords, flag11, tableHelper, flag13)
  cmgCall2 = ButtonMessage
  coords = "Forward"
  cmgCall2(coords)
  cmgCall2 = EndScaleformMovieMethod
  cmgCall2()
  cmgCall2 = BeginScaleformMovieMethod
  coords = workValue4
  flag11 = "SET_DATA_SLOT"
  cmgCall2(coords, flag11)
  cmgCall2 = ScaleformMovieMethodAddParamInt
  coords = 5
  cmgCall2(coords)
  cmgCall2 = Button
  coords = GetControlInstructionalButton
  flag11 = 0
  tableHelper = 191
  flag13 = true
  coords, flag11, tableHelper, flag13 = coords(flag11, tableHelper, flag13)
  cmgCall2(coords, flag11, tableHelper, flag13)
  cmgCall2 = ButtonMessage
  coords = "Camera"
  cmgCall2(coords)
  cmgCall2 = EndScaleformMovieMethod
  cmgCall2()
  cmgCall2 = BeginScaleformMovieMethod
  coords = workValue4
  flag11 = "SET_DATA_SLOT"
  cmgCall2(coords, flag11)
  cmgCall2 = ScaleformMovieMethodAddParamInt
  coords = 6
  cmgCall2(coords)
  cmgCall2 = Button
  coords = GetControlInstructionalButton
  flag11 = 0
  tableHelper = 158
  flag13 = true
  coords, flag11, tableHelper, flag13 = coords(flag11, tableHelper, flag13)
  cmgCall2(coords, flag11, tableHelper, flag13)
  cmgCall2 = ButtonMessage
  coords = "Night Vision"
  cmgCall2(coords)
  cmgCall2 = EndScaleformMovieMethod
  cmgCall2()
  cmgCall2 = BeginScaleformMovieMethod
  coords = workValue4
  flag11 = "SET_DATA_SLOT"
  cmgCall2(coords, flag11)
  cmgCall2 = ScaleformMovieMethodAddParamInt
  coords = 7
  cmgCall2(coords)
  cmgCall2 = Button
  coords = GetControlInstructionalButton
  flag11 = 0
  tableHelper = 157
  flag13 = true
  coords, flag11, tableHelper, flag13 = coords(flag11, tableHelper, flag13)
  cmgCall2(coords, flag11, tableHelper, flag13)
  cmgCall2 = ButtonMessage
  coords = "Thermal"
  cmgCall2(coords)
  cmgCall2 = EndScaleformMovieMethod
  cmgCall2()
  cmgCall2 = BeginScaleformMovieMethod
  coords = workValue4
  flag11 = "SET_DATA_SLOT"
  cmgCall2(coords, flag11)
  cmgCall2 = ScaleformMovieMethodAddParamInt
  coords = 8
  cmgCall2(coords)
  cmgCall2 = Button
  coords = GetControlInstructionalButton
  flag11 = 0
  tableHelper = 45
  flag13 = true
  coords, flag11, tableHelper, flag13 = coords(flag11, tableHelper, flag13)
  cmgCall2(coords, flag11, tableHelper, flag13)
  cmgCall2 = ButtonMessage
  coords = "Zoom In"
  cmgCall2(coords)
  cmgCall2 = EndScaleformMovieMethod
  cmgCall2()
  cmgCall2 = BeginScaleformMovieMethod
  coords = workValue4
  flag11 = "SET_DATA_SLOT"
  cmgCall2(coords, flag11)
  cmgCall2 = ScaleformMovieMethodAddParamInt
  coords = 9
  cmgCall2(coords)
  cmgCall2 = Button
  coords = GetControlInstructionalButton
  flag11 = 0
  tableHelper = 49
  flag13 = true
  coords, flag11, tableHelper, flag13 = coords(flag11, tableHelper, flag13)
  cmgCall2(coords, flag11, tableHelper, flag13)
  cmgCall2 = ButtonMessage
  coords = "Zoom Out"
  cmgCall2(coords)
  cmgCall2 = EndScaleformMovieMethod
  cmgCall2()
  cmgCall2 = BeginScaleformMovieMethod
  coords = workValue4
  flag11 = "SET_DATA_SLOT"
  cmgCall2(coords, flag11)
  cmgCall2 = ScaleformMovieMethodAddParamInt
  coords = 10
  cmgCall2(coords)
  cmgCall2 = Button
  coords = GetControlInstructionalButton
  flag11 = 0
  tableHelper = 121
  flag13 = true
  coords, flag11, tableHelper, flag13 = coords(flag11, tableHelper, flag13)
  cmgCall2(coords, flag11, tableHelper, flag13)
  cmgCall2 = ButtonMessage
  coords = "Land"
  cmgCall2(coords)
  cmgCall2 = EndScaleformMovieMethod
  cmgCall2()
  cmgCall2 = BeginScaleformMovieMethod
  coords = workValue4
  flag11 = "DRAW_INSTRUCTIONAL_BUTTONS"
  cmgCall2(coords, flag11)
  cmgCall2 = EndScaleformMovieMethod
  cmgCall2()
  cmgCall2 = BeginScaleformMovieMethod
  coords = workValue4
  flag11 = "SET_BACKGROUND_COLOUR"
  cmgCall2(coords, flag11)
  cmgCall2 = ScaleformMovieMethodAddParamInt
  coords = 0
  cmgCall2(coords)
  cmgCall2 = ScaleformMovieMethodAddParamInt
  coords = 0
  cmgCall2(coords)
  cmgCall2 = ScaleformMovieMethodAddParamInt
  coords = 0
  cmgCall2(coords)
  cmgCall2 = ScaleformMovieMethodAddParamInt
  coords = 80
  cmgCall2(coords)
  cmgCall2 = EndScaleformMovieMethod
  cmgCall2()
  return workValue4
end
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: threadCall2; parameters: none) ===
function threadCall2()
  local arg1, workValue4, cmgCall2, coords, flag11, tableHelper, flag13, flag14, flag15, flag16, flag, flag3, flag5, flag7, flag8, flag9, heading, numberValue2, flag10, numberValue3, numberValue5
  arg1 = textValue3
  workValue4 = "instructional_buttons"
  arg1 = arg1(workValue4)
  while true do
    workValue4 = localEventCall.active
    if workValue4 then
      workValue4 = DrawScaleformMovieFullscreen
      cmgCall2 = arg1
      coords = 255
      flag11 = 255
      tableHelper = 255
      flag13 = 255
      flag14 = 0
      workValue4(cmgCall2, coords, flag11, tableHelper, flag13, flag14)
      workValue4 = NetworkHasControlOfEntity
      cmgCall2 = localEventCall.driverHandle
      workValue4 = workValue4(cmgCall2)
      if workValue4 then
        workValue4 = NetworkHasControlOfEntity
        cmgCall2 = localEventCall.vehicleHandle
        workValue4 = workValue4(cmgCall2)
        if workValue4 then
          goto flow_label_31
        end
      end
      workValue4 = tCMG
      workValue4 = workValue4.notify
      cmgCall2 = "You have ~b~lost control ~w~of the drone, after going out of range"
      -- Beginner: Show a notification to the player.
      workValue4(cmgCall2)
      workValue4 = textValue2
      workValue4()
      ::flow_label_31::
      workValue4 = DisableControlAction
      cmgCall2 = 0
      coords = 172
      flag11 = true
      workValue4(cmgCall2, coords, flag11)
      workValue4 = DisableControlAction
      cmgCall2 = 1
      coords = 172
      flag11 = true
      workValue4(cmgCall2, coords, flag11)
      workValue4 = DisableControlAction
      cmgCall2 = 0
      coords = 300
      flag11 = true
      workValue4(cmgCall2, coords, flag11)
      workValue4 = DisableControlAction
      cmgCall2 = 0
      coords = 27
      flag11 = true
      workValue4(cmgCall2, coords, flag11)
      workValue4 = DisableControlAction
      cmgCall2 = 1
      coords = 27
      flag11 = true
      workValue4(cmgCall2, coords, flag11)
      workValue4 = DisableControlAction
      cmgCall2 = 0
      coords = 188
      flag11 = true
      workValue4(cmgCall2, coords, flag11)
      workValue4 = DisableControlAction
      cmgCall2 = 1
      coords = 188
      flag11 = true
      workValue4(cmgCall2, coords, flag11)
      workValue4 = DisableControlAction
      cmgCall2 = 0
      coords = 191
      flag11 = true
      workValue4(cmgCall2, coords, flag11)
      workValue4 = DisableControlAction
      cmgCall2 = 0
      coords = 208
      flag11 = true
      workValue4(cmgCall2, coords, flag11)
      workValue4 = DisableControlAction
      cmgCall2 = 0
      coords = 207
      flag11 = true
      workValue4(cmgCall2, coords, flag11)
      workValue4 = DisableControlAction
      cmgCall2 = 0
      coords = 174
      flag11 = true
      workValue4(cmgCall2, coords, flag11)
      workValue4 = DisableControlAction
      cmgCall2 = 0
      coords = 175
      flag11 = true
      workValue4(cmgCall2, coords, flag11)
      workValue4 = DisableControlAction
      cmgCall2 = 0
      coords = 173
      flag11 = true
      workValue4(cmgCall2, coords, flag11)
      workValue4 = DisableControlAction
      cmgCall2 = 0
      coords = 121
      flag11 = true
      workValue4(cmgCall2, coords, flag11)
      workValue4 = GetEntityHeading
      cmgCall2 = localEventCall.vehicleHandle
      -- Beginner: result below is heading.
      workValue4 = workValue4(cmgCall2)
      cmgCall2 = GetEntityCoords
      coords = localEventCall.vehicleHandle
      -- Beginner: result below is entityCoords.
      cmgCall2 = cmgCall2(coords)
      coords = 0
      flag11 = IsDisabledControlPressed
      tableHelper = 0
      flag13 = 44
      flag11 = flag11(tableHelper, flag13)
      if flag11 then
        localEventCall.landing = false
        coords = 3.0
      end
      flag11 = IsDisabledControlPressed
      tableHelper = 0
      flag13 = 48
      flag11 = flag11(tableHelper, flag13)
      if flag11 then
        coords = -3.0
      end
      flag11 = IsDisabledControlPressed
      tableHelper = 0
      flag13 = 46
      flag11 = flag11(tableHelper, flag13)
      if flag11 then
        coords = -3.0
      end
      flag11 = IsDisabledControlPressed
      tableHelper = 0
      flag13 = 172
      flag11 = flag11(tableHelper, flag13)
      if flag11 then
        flag11 = GetOffsetFromEntityInWorldCoords
        tableHelper = localEventCall.vehicleHandle
        flag13 = 0.0
        flag14 = 5.0
        flag15 = 0.0
        flag11 = flag11(tableHelper, flag13, flag14, flag15)
        cmgCall2 = flag11
      end
      flag11 = IsDisabledControlPressed
      tableHelper = 0
      flag13 = 173
      flag11 = flag11(tableHelper, flag13)
      if flag11 then
        flag11 = GetOffsetFromEntityInWorldCoords
        tableHelper = localEventCall.vehicleHandle
        flag13 = 0.0
        flag14 = -5.0
        flag15 = 0.0
        flag11 = flag11(tableHelper, flag13, flag14, flag15)
        cmgCall2 = flag11
      end
      flag11 = IsDisabledControlPressed
      tableHelper = 0
      flag13 = 174
      flag11 = flag11(tableHelper, flag13)
      if flag11 then
        workValue4 = workValue4 + 45.0
      end
      flag11 = IsDisabledControlPressed
      tableHelper = 0
      flag13 = 175
      flag11 = flag11(tableHelper, flag13)
      if flag11 then
        workValue4 = workValue4 - 45.0
        if workValue4 < 0.0 then
          workValue4 = 360.0
        end
      end
      flag11 = localEventCall.landing
      if not flag11 then
        flag11 = TaskHeliMission
        tableHelper = localEventCall.driverHandle
        flag13 = localEventCall.vehicleHandle
        flag14 = nil
        flag15 = nil
        flag16 = cmgCall2.x
        flag = cmgCall2.y
        flag3 = cmgCall2.z
        flag3 = flag3 + coords
        flag5 = 4
        flag7 = numberValue4
        flag8 = 1.0
        flag9 = workValue4
        heading = -1
        numberValue2 = -1
        flag10 = -1
        numberValue3 = 0
        flag11(tableHelper, flag13, flag14, flag15, flag16, flag, flag3, flag5, flag7, flag8, flag9, heading, numberValue2, flag10, numberValue3)
      end
      flag11 = IsDisabledControlJustPressed
      tableHelper = 0
      flag13 = 121
      flag11 = flag11(tableHelper, flag13)
      if flag11 then
        localEventCall.landing = true
        flag11 = GetOffsetFromEntityInWorldCoords
        tableHelper = localEventCall.driverHandle
        flag13 = 0.0
        flag14 = 3.0
        flag15 = 0.0
        flag11 = flag11(tableHelper, flag13, flag14, flag15)
        tableHelper = TaskHeliMission
        flag13 = localEventCall.driverHandle
        flag14 = localEventCall.vehicleHandle
        flag15 = 0
        flag16 = 0
        flag = flag11.x
        flag3 = flag11.y
        flag5 = flag11.z
        flag5 = flag5 + 2.0
        flag7 = 20
        flag8 = numberValue4
        flag9 = 10.0
        heading = GetEntityHeading
        numberValue2 = localEventCall.driverHandle
        -- Beginner: result below is heading.
        heading = heading(numberValue2)
        numberValue2 = -1
        flag10 = -1
        numberValue3 = -1
        numberValue5 = 32
        tableHelper(flag13, flag14, flag15, flag16, flag, flag3, flag5, flag7, flag8, flag9, heading, numberValue2, flag10, numberValue3, numberValue5)
      end
      flag11 = IsDisabledControlJustPressed
      tableHelper = 0
      flag13 = 158
      flag11 = flag11(tableHelper, flag13)
      if flag11 then
        flag11 = localEventCall.cameraEnabled
        if flag11 then
          flag11 = localEventCall.nightVisionEnabled
          if flag11 then
            flag11 = SetNightvision
            tableHelper = false
            flag11(tableHelper)
            localEventCall.nightVisionEnabled = false
          else
            flag11 = SetNightvision
            tableHelper = true
            flag11(tableHelper)
            localEventCall.nightVisionEnabled = true
          end
        end
      end
      flag11 = IsDisabledControlJustPressed
      tableHelper = 0
      flag13 = 157
      flag11 = flag11(tableHelper, flag13)
      if flag11 then
        flag11 = localEventCall.cameraEnabled
        if flag11 then
          flag11 = localEventCall.thermalEnabled
          if flag11 then
            flag11 = SetSeethrough
            tableHelper = false
            flag11(tableHelper)
            localEventCall.thermalEnabled = false
          else
            flag11 = SetSeethrough
            tableHelper = true
            flag11(tableHelper)
            localEventCall.thermalEnabled = true
          end
        end
      end
      flag11 = IsDisabledControlJustPressed
      tableHelper = 0
      flag13 = 191
      flag11 = flag11(tableHelper, flag13)
      if flag11 then
        flag11 = cmgCall3
        flag11()
      end
    end
    workValue4 = Wait
    cmgCall2 = 0
    workValue4(cmgCall2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(threadCall2)
threadCall = 0
threadCall2 = Citizen
threadCall2 = threadCall2.CreateThread

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, workValue4, cmgCall2, coords, flag11, tableHelper, flag13, flag14, flag15, flag16, flag, flag3, flag5
  while true do
    arg1 = CMG
    arg1 = arg1.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    arg1 = arg1()
    if 0 ~= arg1 then
      workValue4 = GetEntityModel
      cmgCall2 = arg1
      -- Beginner: result below is modelHash.
      workValue4 = workValue4(cmgCall2)
      cmgCall2 = numberValue
      if workValue4 == cmgCall2 then
        cmgCall2 = threadCall
        cmgCall2 = cmgCall2 + 1
        threadCall = cmgCall2
        cmgCall2 = threadCall
        if cmgCall2 > 3 then
          cmgCall2 = tCMG
          cmgCall2 = cmgCall2.notify
          coords = "~r~Access Denied~w~: Engaging defences in 3, 2, 1..."
          -- Beginner: Show a notification to the player.
          cmgCall2(coords)
          cmgCall2 = Wait
          coords = 500
          cmgCall2(coords)
          cmgCall2 = CMG
          cmgCall2 = cmgCall2.getPlayerCoords
          -- Beginner: result below is playerCoords.
          cmgCall2 = cmgCall2()
          coords = AddOwnedExplosion
          flag11 = CMG
          flag11 = flag11.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          flag11 = flag11()
          tableHelper = cmgCall2.x
          flag13 = cmgCall2.y
          flag14 = cmgCall2.z
          flag15 = 4
          flag16 = 17.0
          flag = true
          flag3 = false
          flag5 = 10.0
          coords(flag11, tableHelper, flag13, flag14, flag15, flag16, flag, flag3, flag5)
          coords = ExplodeVehicle
          flag11 = arg1
          tableHelper = true
          flag13 = false
          coords(flag11, tableHelper, flag13)
          coords = PlaySoundFrontend
          flag11 = -1
          tableHelper = "EMP_Blast"
          flag13 = "DLC_HEISTS_BIOLAB_FINALE_SOUNDS"
          flag14 = true
          coords(flag11, tableHelper, flag13, flag14)
          coords = Wait
          flag11 = 2000
          coords(flag11)
          coords = PlaySoundFrontend
          flag11 = -1
          tableHelper = "Beep_Red"
          flag13 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
          flag14 = true
          coords(flag11, tableHelper, flag13, flag14)
          coords = Wait
          flag11 = 2000
          coords(flag11)
          coords = PlaySoundFrontend
          flag11 = -1
          tableHelper = "Bed"
          flag13 = "WastedSounds"
          flag14 = true
          coords(flag11, tableHelper, flag13, flag14)
          coords = CMG
          coords = coords.getPlayerVehicle
          -- Beginner: result below is currentVehicle.
          coords = coords()
          if nil ~= coords then
            coords = DoesEntityExist
            flag11 = CMG
            flag11 = flag11.getPlayerVehicle
            flag11, tableHelper, flag13, flag14, flag15, flag16, flag, flag3, flag5 = flag11()
            coords = coords(flag11, tableHelper, flag13, flag14, flag15, flag16, flag, flag3, flag5)
            if coords then
              coords = DeleteEntity
              flag11 = CMG
              flag11 = flag11.getPlayerVehicle
              flag11, tableHelper, flag13, flag14, flag15, flag16, flag, flag3, flag5 = flag11()
              -- Beginner: Delete a GTA entity.
              coords(flag11, tableHelper, flag13, flag14, flag15, flag16, flag, flag3, flag5)
            end
          end
        end
      end
    end
    workValue4 = Wait
    cmgCall2 = 5000
    workValue4(cmgCall2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall2(eventRegistration)

-- === HELPER FUNCTION (decompiler name: threadCall2; parameters: arg1) ===
function threadCall2(arg1)
  local workValue4, cmgCall2
  workValue4 = BeginTextCommandScaleformString
  cmgCall2 = "STRING"
  workValue4(cmgCall2)
  workValue4 = AddTextComponentSubstringKeyboardDisplay
  cmgCall2 = arg1
  workValue4(cmgCall2)
  workValue4 = EndTextCommandScaleformString
  workValue4()
end
ButtonMessage = threadCall2

-- === HELPER FUNCTION (decompiler name: threadCall2; parameters: arg1) ===
function threadCall2(arg1)
  local workValue4, cmgCall2
  workValue4 = _ENV
  cmgCall2 = "ScaleformMovieMethodAddParamPlayerNameString"
  workValue4 = workValue4[cmgCall2]
  cmgCall2 = arg1
  workValue4(cmgCall2)
end
Button = threadCall2

-- === HELPER FUNCTION (decompiler name: threadCall2; parameters: none) ===
function threadCall2()
  local arg1, workValue4, cmgCall2, coords, flag11, tableHelper, flag13, flag14, flag15, flag16, flag, flag3, flag5, flag7, flag8
  arg1 = CMG
  arg1 = arg1.loadModel
  workValue4 = numberValue
  arg1 = arg1(workValue4)
  if not arg1 then
    return
  end
  workValue4 = CMG
  workValue4 = workValue4.loadModel
  cmgCall2 = -1613485779
  workValue4 = workValue4(cmgCall2)
  if not workValue4 then
    return
  end
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgCall2 = cmgCall2()
  coords = GetOffsetFromEntityInWorldCoords
  flag11 = cmgCall2
  tableHelper = 0.0
  flag13 = 4.0
  flag14 = 0.0
  coords = coords(flag11, tableHelper, flag13, flag14)
  flag11 = GetEntityHeading
  tableHelper = cmgCall2
  -- Beginner: result below is heading.
  flag11 = flag11(tableHelper)
  tableHelper = CMG
  tableHelper = tableHelper.requestEntitySpawn
  flag13 = "policedrone"
  flag14 = coords
  tableHelper(flag13, flag14)
  tableHelper = CMG
  tableHelper = tableHelper.spawnVehicle
  flag13 = numberValue
  flag14 = coords.x
  flag15 = coords.y
  flag16 = coords.z
  flag = flag11
  flag3 = false
  flag5 = true
  tableHelper = tableHelper(flag13, flag14, flag15, flag16, flag, flag3, flag5)
  localEventCall.vehicleHandle = tableHelper
  tableHelper = SetModelAsNoLongerNeeded
  flag13 = arg1
  tableHelper(flag13)
  tableHelper = SetEntityNoCollisionEntity
  flag13 = CMG
  flag13 = flag13.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  flag13 = flag13()
  flag14 = localEventCall.vehicleHandle
  flag15 = true
  tableHelper(flag13, flag14, flag15)
  tableHelper = Wait
  flag13 = 1000
  tableHelper(flag13)
  tableHelper = SetEntityAsMissionEntity
  flag13 = localEventCall.vehicleHandle
  flag14 = true
  flag15 = true
  tableHelper(flag13, flag14, flag15)
  tableHelper = NetworkGetNetworkIdFromEntity
  flag13 = localEventCall.vehicleHandle
  tableHelper = tableHelper(flag13)
  flag13 = NetworkUseHighPrecisionBlending
  flag14 = tableHelper
  flag15 = true
  flag13(flag14, flag15)
  flag13 = SetNetworkIdCanMigrate
  flag14 = tableHelper
  flag15 = true
  flag13(flag14, flag15)
  flag13 = SetNetworkIdExistsOnAllMachines
  flag14 = tableHelper
  flag15 = true
  flag13(flag14, flag15)
  flag13 = CMG
  flag13 = flag13.requestEntitySpawn
  flag14 = "policedrone_ped"
  flag15 = coords
  flag13(flag14, flag15)
  flag13 = CreatePed
  flag14 = 4
  flag15 = workValue4
  flag16 = coords.x
  flag = coords.y
  flag3 = coords.z
  flag5 = flag11
  flag7 = true
  flag8 = false
  -- Beginner: result below is pedEntity.
  flag13 = flag13(flag14, flag15, flag16, flag, flag3, flag5, flag7, flag8)
  localEventCall.driverHandle = flag13
  while true do
    flag13 = DoesEntityExist
    flag14 = localEventCall.driverHandle
    flag13 = flag13(flag14)
    if flag13 then
      break
    end
    flag13 = Wait
    flag14 = 0
    flag13(flag14)
  end
  flag13 = SetModelAsNoLongerNeeded
  flag14 = workValue4
  flag13(flag14)
  flag13 = SetEntityInvincible
  flag14 = localEventCall.driverHandle
  flag15 = true
  flag13(flag14, flag15)
  flag13 = SetEntityVisible
  flag14 = localEventCall.driverHandle
  flag15 = false
  flag16 = false
  flag13(flag14, flag15, flag16)
  flag13 = FreezeEntityPosition
  flag14 = localEventCall.driverHandle
  flag15 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  flag13(flag14, flag15)
  flag13 = SetPedAlertness
  flag14 = localEventCall.driverHandle
  flag15 = 0.0
  flag13(flag14, flag15)
  flag13 = TaskWarpPedIntoVehicle
  flag14 = localEventCall.driverHandle
  flag15 = localEventCall.vehicleHandle
  flag16 = -1
  flag13(flag14, flag15, flag16)
  flag13 = SetVehicleDoorsLocked
  flag14 = localEventCall.vehicleHandle
  flag15 = 2
  flag13(flag14, flag15)
  while true do
    flag13 = IsPedInVehicle
    flag14 = localEventCall.driverHandle
    flag15 = localEventCall.vehicleHandle
    flag16 = false
    flag13 = flag13(flag14, flag15, flag16)
    if flag13 then
      break
    end
    flag13 = Wait
    flag14 = 0
    flag13(flag14)
  end
  localEventCall.active = true
  flag13 = tCMG
  flag13 = flag13.notify
  flag14 = "Drone ~b~created~w~."
  -- Beginner: Show a notification to the player.
  flag13(flag14)
  flag13 = Wait
  flag14 = 1000
  flag13(flag14)
  flag13 = tCMG
  flag13 = flag13.notify
  flag14 = "To remove your drone, use ~b~/drone"
  -- Beginner: Show a notification to the player.
  flag13(flag14)
end
eventRegistration = RegisterNetEvent
textValue4 = "toggleDrone"
-- Beginner: this function handles network event "toggleDrone".

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: none) ===
function workValue2()
  local arg1, workValue4, cmgCall2
  arg1 = localEventCall.active
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    arg1 = arg1()
    if 0 == arg1 then
      arg1 = tCMG
      arg1 = arg1.isInComa
      arg1 = arg1()
      if not arg1 then
        arg1 = TriggerServerEvent
        workValue4 = "2af187bc60"
        cmgCall2 = "Powered on their DJI Inspire Drone"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2af187bc60".
        arg1(workValue4, cmgCall2)
        arg1 = threadCall2
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        arg1()
    end
    else
      arg1 = tCMG
      arg1 = arg1.notify
      workValue4 = "You are not able to use a drone right now."
      -- Beginner: Show a notification to the player.
      arg1(workValue4)
    end
  else
    arg1 = TriggerServerEvent
    workValue4 = "2af187bc60"
    cmgCall2 = "Powered off their DJI Inspire Drone"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2af187bc60".
    arg1(workValue4, cmgCall2)
    arg1 = textValue2
    arg1()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "toggleDrone".
eventRegistration(textValue4, workValue2)
eventRegistration = nil
textValue4 = nil

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: none) ===
function workValue2()
  local arg1, workValue4, cmgCall2, coords, flag11, tableHelper, flag13, flag14, flag15, flag16
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg1 = arg1()
  if 0 == arg1 then
    workValue4 = eventRegistration
    if workValue4 then
      workValue4 = eventRegistration
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.getPlayerCoords
      -- Beginner: result below is playerCoords.
      cmgCall2 = cmgCall2()
      workValue4 = workValue4 - cmgCall2
      workValue4 = #workValue4
      if workValue4 > 20.0 then
        workValue4 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        workValue4 = workValue4()
        cmgCall2 = SetEntityCoordsNoOffset
        coords = workValue4
        flag11 = eventRegistration.x
        tableHelper = eventRegistration.y
        flag13 = eventRegistration.z
        flag14 = false
        flag15 = false
        flag16 = false
        -- Beginner: Move/teleport an entity to new coordinates.
        cmgCall2(coords, flag11, tableHelper, flag13, flag14, flag15, flag16)
        cmgCall2 = ClearPedTasksImmediately
        coords = workValue4
        cmgCall2(coords)
      end
      workValue4 = SetEntityVisible
      cmgCall2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      cmgCall2 = cmgCall2()
      coords = true
      flag11 = false
      workValue4(cmgCall2, coords, flag11)
      workValue4 = nil
      eventRegistration = workValue4
      workValue4 = RemoveBlip
      cmgCall2 = textValue4
      workValue4(cmgCall2)
    end
    return
  end
  workValue4 = GetEntityModel
  cmgCall2 = arg1
  -- Beginner: result below is modelHash.
  workValue4 = workValue4(cmgCall2)
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.isVehicleRemoteControlled
  coords = workValue4
  cmgCall2 = cmgCall2(coords)
  if not cmgCall2 then
    return
  end
  cmgCall2 = GetEntityCoords
  coords = arg1
  flag11 = true
  -- Beginner: result below is entityCoords.
  cmgCall2 = cmgCall2(coords, flag11)
  coords = eventRegistration
  if not coords then
    eventRegistration = cmgCall2
    coords = SetEntityVisible
    flag11 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    flag11 = flag11()
    tableHelper = false
    flag13 = false
    coords(flag11, tableHelper, flag13)
    coords = AddBlipForRadius
    flag11 = cmgCall2.x
    tableHelper = cmgCall2.y
    flag13 = cmgCall2.z
    flag14 = 20.0
    -- Beginner: result below is blipHandle.
    coords = coords(flag11, tableHelper, flag13, flag14)
    textValue4 = coords
    coords = SetBlipColour
    flag11 = textValue4
    tableHelper = 5
    coords(flag11, tableHelper)
  end
  coords = eventRegistration
  coords = coords - cmgCall2
  coords = #coords
  if coords > 20.0 then
    coords = DisableControlAction
    flag11 = 0
    tableHelper = 23
    flag13 = true
    coords(flag11, tableHelper, flag13)
    coords = DisableControlAction
    flag11 = 0
    tableHelper = 75
    flag13 = true
    coords(flag11, tableHelper, flag13)
    coords = IsDisabledControlJustPressed
    flag11 = 0
    tableHelper = 23
    coords = coords(flag11, tableHelper)
    if not coords then
      coords = IsDisabledControlJustPressed
      flag11 = 0
      tableHelper = 75
      coords = coords(flag11, tableHelper)
      if not coords then
        goto flow_label_110
      end
    end
    coords = notify
    flag11 = "You must be near the ~y~start position~w~ to exit."
    -- Beginner: Show a notification to the player.
    coords(flag11)
  end
  ::flow_label_110::
end
cmgCall = CMG
cmgCall = cmgCall.createThreadOnTick
workValue3 = workValue2
textValue = "Drones"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall(workValue3, textValue)
