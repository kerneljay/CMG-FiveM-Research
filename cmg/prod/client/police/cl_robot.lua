--[[
    LEVEL 1 BEGINNER GUIDE — Robot
    ===================================

    File: cmg/prod/client/police/cl_robot.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Robot feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 11
      * Background threads: 0
      * Always-running loops: 2
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
local numberValue, numberValue2, numberValue3, numberValue4, flag3, workValue2, numberValue7, cmgCall2, workValue3, workValue4, eventRegistration, eventRegistration2, textValue, eventRegistration3, cmgCall, workValue, textValue2
numberValue = 0
numberValue2 = 0
numberValue3 = -1
numberValue4 = -1
flag3 = false
workValue2 = nil
numberValue7 = 0
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
function workValue3()
  local arg1, arg2
  arg1 = numberValue
  arg1 = 0 ~= arg1
  return arg1
end
cmgCall2.isUsingPoliceRobot = workValue3

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1) ===
function cmgCall2(arg1)
  local arg2, arg3
  arg2 = _ENV
  arg3 = "ScaleformMovieMethodAddParamPlayerNameString"
  arg2 = arg2[arg3]
  arg3 = arg1
  arg2(arg3)
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1) ===
function workValue3(arg1)
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

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: none) ===
function workValue4()
  local arg1, arg2, arg3, numberValue5, flag4
  arg1 = RequestScaleformMovie
  arg2 = "instructional_buttons"
  -- Beginner: result below is scaleformHandle.
  arg1 = arg1(arg2)
  numberValue4 = arg1
  while true do
    arg1 = HasScaleformMovieLoaded
    arg2 = numberValue4
    arg1 = arg1(arg2)
    if arg1 then
      break
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 0
    arg1(arg2)
  end
  arg1 = BeginScaleformMovieMethod
  arg2 = numberValue4
  arg3 = "CLEAR_ALL"
  arg1(arg2, arg3)
  arg1 = EndScaleformMovieMethod
  arg1()
  arg1 = BeginScaleformMovieMethod
  arg2 = numberValue4
  arg3 = "SET_CLEAR_SPACE"
  arg1(arg2, arg3)
  arg1 = ScaleformMovieMethodAddParamInt
  arg2 = 200
  arg1(arg2)
  arg1 = EndScaleformMovieMethod
  arg1()
  arg1 = BeginScaleformMovieMethod
  arg2 = numberValue4
  arg3 = "SET_DATA_SLOT"
  arg1(arg2, arg3)
  arg1 = ScaleformMovieMethodAddParamInt
  arg2 = 1
  arg1(arg2)
  arg1 = cmgCall2
  arg2 = GetControlInstructionalButton
  arg3 = 0
  numberValue5 = 121
  flag4 = true
  arg2, arg3, numberValue5, flag4 = arg2(arg3, numberValue5, flag4)
  arg1(arg2, arg3, numberValue5, flag4)
  arg1 = workValue3
  arg2 = "Camera Stream"
  arg1(arg2)
  arg1 = EndScaleformMovieMethod
  arg1()
  arg1 = BeginScaleformMovieMethod
  arg2 = numberValue4
  arg3 = "SET_DATA_SLOT"
  arg1(arg2, arg3)
  arg1 = ScaleformMovieMethodAddParamInt
  arg2 = 2
  arg1(arg2)
  arg1 = cmgCall2
  arg2 = GetControlInstructionalButton
  arg3 = 0
  numberValue5 = 178
  flag4 = true
  arg2, arg3, numberValue5, flag4 = arg2(arg3, numberValue5, flag4)
  arg1(arg2, arg3, numberValue5, flag4)
  arg1 = workValue3
  arg2 = "Thermal Vision"
  arg1(arg2)
  arg1 = EndScaleformMovieMethod
  arg1()
  arg1 = BeginScaleformMovieMethod
  arg2 = numberValue4
  arg3 = "SET_DATA_SLOT"
  arg1(arg2, arg3)
  arg1 = ScaleformMovieMethodAddParamInt
  arg2 = 3
  arg1(arg2)
  arg1 = cmgCall2
  arg2 = GetControlInstructionalButton
  arg3 = 0
  numberValue5 = 175
  flag4 = true
  arg2, arg3, numberValue5, flag4 = arg2(arg3, numberValue5, flag4)
  arg1(arg2, arg3, numberValue5, flag4)
  arg1 = workValue3
  arg2 = "Right"
  arg1(arg2)
  arg1 = EndScaleformMovieMethod
  arg1()
  arg1 = BeginScaleformMovieMethod
  arg2 = numberValue4
  arg3 = "SET_DATA_SLOT"
  arg1(arg2, arg3)
  arg1 = ScaleformMovieMethodAddParamInt
  arg2 = 4
  arg1(arg2)
  arg1 = cmgCall2
  arg2 = GetControlInstructionalButton
  arg3 = 0
  numberValue5 = 174
  flag4 = true
  arg2, arg3, numberValue5, flag4 = arg2(arg3, numberValue5, flag4)
  arg1(arg2, arg3, numberValue5, flag4)
  arg1 = workValue3
  arg2 = "Left"
  arg1(arg2)
  arg1 = EndScaleformMovieMethod
  arg1()
  arg1 = BeginScaleformMovieMethod
  arg2 = numberValue4
  arg3 = "SET_DATA_SLOT"
  arg1(arg2, arg3)
  arg1 = ScaleformMovieMethodAddParamInt
  arg2 = 5
  arg1(arg2)
  arg1 = cmgCall2
  arg2 = GetControlInstructionalButton
  arg3 = 0
  numberValue5 = 173
  flag4 = true
  arg2, arg3, numberValue5, flag4 = arg2(arg3, numberValue5, flag4)
  arg1(arg2, arg3, numberValue5, flag4)
  arg1 = workValue3
  arg2 = "Backwards"
  arg1(arg2)
  arg1 = EndScaleformMovieMethod
  arg1()
  arg1 = BeginScaleformMovieMethod
  arg2 = numberValue4
  arg3 = "SET_DATA_SLOT"
  arg1(arg2, arg3)
  arg1 = ScaleformMovieMethodAddParamInt
  arg2 = 6
  arg1(arg2)
  arg1 = cmgCall2
  arg2 = GetControlInstructionalButton
  arg3 = 0
  numberValue5 = 172
  flag4 = true
  arg2, arg3, numberValue5, flag4 = arg2(arg3, numberValue5, flag4)
  arg1(arg2, arg3, numberValue5, flag4)
  arg1 = workValue3
  arg2 = "Forward"
  arg1(arg2)
  arg1 = EndScaleformMovieMethod
  arg1()
  arg1 = BeginScaleformMovieMethod
  arg2 = numberValue4
  arg3 = "DRAW_INSTRUCTIONAL_BUTTONS"
  arg1(arg2, arg3)
  arg1 = EndScaleformMovieMethod
  arg1()
  arg1 = BeginScaleformMovieMethod
  arg2 = numberValue4
  arg3 = "SET_BACKGROUND_COLOUR"
  arg1(arg2, arg3)
  arg1 = ScaleformMovieMethodAddParamInt
  arg2 = 0
  arg1(arg2)
  arg1 = ScaleformMovieMethodAddParamInt
  arg2 = 0
  arg1(arg2)
  arg1 = ScaleformMovieMethodAddParamInt
  arg2 = 0
  arg1(arg2)
  arg1 = ScaleformMovieMethodAddParamInt
  arg2 = 80
  arg1(arg2)
  arg1 = EndScaleformMovieMethod
  arg1()
end
eventRegistration = RegisterNetEvent
eventRegistration2 = "b1b3d23e07"
-- Beginner: this function handles network event "b1b3d23e07".

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2, arg3, numberValue5, flag4, numberValue6, flag5, flag6, flag7, flag8, flag, flag2
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetEntityCoords
  arg3 = arg1
  numberValue5 = true
  -- Beginner: result below is entityCoords.
  arg2 = arg2(arg3, numberValue5)
  arg3 = GetEntityForwardVector
  numberValue5 = arg1
  arg3 = arg3(numberValue5)
  arg3 = arg3 * 2.0
  arg2 = arg2 + arg3
  arg3 = GetEntityHeading
  numberValue5 = arg1
  -- Beginner: result below is heading.
  arg3 = arg3(numberValue5)
  numberValue5 = CMG
  numberValue5 = numberValue5.requestEntitySpawn
  flag4 = "policerobot"
  numberValue6 = arg2
  numberValue5(flag4, numberValue6)
  numberValue5 = CMG
  numberValue5 = numberValue5.spawnVehicle
  flag4 = 1376629136
  numberValue6 = arg2.x
  flag5 = arg2.y
  flag6 = arg2.z
  flag7 = arg3
  flag8 = false
  flag = true
  flag2 = true
  numberValue5 = numberValue5(flag4, numberValue6, flag5, flag6, flag7, flag8, flag, flag2)
  numberValue = numberValue5
  numberValue5 = SetVehicleDoorsLocked
  flag4 = numberValue
  numberValue6 = 2
  numberValue5(flag4, numberValue6)
  numberValue5 = SetVehicleDoorsLockedForAllPlayers
  flag4 = numberValue
  numberValue6 = true
  numberValue5(flag4, numberValue6)
  numberValue5 = CMG
  numberValue5 = numberValue5.loadModel
  flag4 = -1613485779
  -- Beginner: Request/load a GTA model before spawning or applying it.
  numberValue5(flag4)
  numberValue5 = CMG
  numberValue5 = numberValue5.requestEntitySpawn
  flag4 = "policerobot_ped"
  numberValue6 = arg2
  numberValue5(flag4, numberValue6)
  numberValue5 = CreatePedInsideVehicle
  flag4 = numberValue
  numberValue6 = 0
  flag5 = -1613485779
  flag6 = -1
  flag7 = true
  flag8 = true
  numberValue5 = numberValue5(flag4, numberValue6, flag5, flag6, flag7, flag8)
  flag4 = SetModelAsNoLongerNeeded
  numberValue6 = -1613485779
  flag4(numberValue6)
  flag4 = SetEntityCanBeDamaged
  numberValue6 = numberValue5
  flag5 = false
  flag4(numberValue6, flag5)
  flag4 = SetEntityInvincible
  numberValue6 = numberValue5
  flag5 = true
  flag4(numberValue6, flag5)
  flag4 = SetEntityVisible
  numberValue6 = numberValue5
  flag5 = false
  flag6 = false
  flag4(numberValue6, flag5, flag6)
  flag4 = FreezeEntityPosition
  numberValue6 = numberValue5
  flag5 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  flag4(numberValue6, flag5)
  flag4 = SetPedAlertness
  numberValue6 = numberValue5
  flag5 = 0.0
  flag4(numberValue6, flag5)
  flag4 = SetBlockingOfNonTemporaryEvents
  numberValue6 = numberValue5
  flag5 = true
  flag4(numberValue6, flag5)
  flag4 = workValue4
  flag4()
  while true do
    flag4 = NetworkGetEntityIsNetworked
    numberValue6 = numberValue
    flag4 = flag4(numberValue6)
    if flag4 then
      flag4 = NetworkGetNetworkIdFromEntity
      numberValue6 = numberValue
      flag4 = flag4(numberValue6)
      if 0 ~= flag4 then
        break
      end
    end
    flag4 = Citizen
    flag4 = flag4.Wait
    numberValue6 = 0
    flag4(numberValue6)
  end
  flag4 = Citizen
  flag4 = flag4.Wait
  numberValue6 = 1000
  flag4(numberValue6)
  flag4 = NetworkGetNetworkIdFromEntity
  numberValue6 = numberValue
  flag4 = flag4(numberValue6)
  numberValue2 = flag4
  flag4 = TriggerServerEvent
  numberValue6 = "b1b3d23e07"
  flag5 = numberValue2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b1b3d23e07".
  flag4(numberValue6, flag5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b1b3d23e07".
eventRegistration(eventRegistration2, textValue)

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1, arg2, arg3) ===
function eventRegistration(arg1, arg2, arg3)
  local numberValue5, flag4, numberValue6, flag5, flag6, flag7, flag8
  if arg3 then
    numberValue5 = 200
    if numberValue5 then
      goto flow_label_7
    end
  end
  numberValue5 = 1
  ::flow_label_7::
  flag4 = GetPedInVehicleSeat
  numberValue6 = arg2
  flag5 = -1
  flag4 = flag4(numberValue6, flag5)
  if "forward" == arg1 then
    numberValue6 = TaskVehicleTempAction
    flag5 = flag4
    flag6 = arg2
    flag7 = 9
    flag8 = numberValue5
    numberValue6(flag5, flag6, flag7, flag8)
  elseif "brake" == arg1 then
    numberValue6 = TaskVehicleTempAction
    flag5 = flag4
    flag6 = arg2
    flag7 = 6
    flag8 = 2500
    numberValue6(flag5, flag6, flag7, flag8)
  elseif "reverse" == arg1 then
    numberValue6 = TaskVehicleTempAction
    flag5 = flag4
    flag6 = arg2
    flag7 = 22
    flag8 = numberValue5
    numberValue6(flag5, flag6, flag7, flag8)
  elseif "rightReverse" == arg1 then
    numberValue6 = TaskVehicleTempAction
    flag5 = flag4
    flag6 = arg2
    flag7 = 13
    flag8 = numberValue5
    numberValue6(flag5, flag6, flag7, flag8)
  elseif "leftReverse" == arg1 then
    numberValue6 = TaskVehicleTempAction
    flag5 = flag4
    flag6 = arg2
    flag7 = 14
    flag8 = numberValue5
    numberValue6(flag5, flag6, flag7, flag8)
  elseif "burnout" == arg1 then
    numberValue6 = TaskVehicleTempAction
    flag5 = flag4
    flag6 = arg2
    flag7 = 30
    if arg3 then
      flag8 = 200
      if flag8 then
        goto flow_label_68
      end
    end
    flag8 = 100
    ::flow_label_68::
    numberValue6(flag5, flag6, flag7, flag8)
  elseif "leftForward" == arg1 then
    numberValue6 = TaskVehicleTempAction
    flag5 = flag4
    flag6 = arg2
    flag7 = 7
    flag8 = numberValue5
    numberValue6(flag5, flag6, flag7, flag8)
  elseif "rightForward" == arg1 then
    numberValue6 = TaskVehicleTempAction
    flag5 = flag4
    flag6 = arg2
    flag7 = 8
    flag8 = numberValue5
    numberValue6(flag5, flag6, flag7, flag8)
  elseif "rotateLeft" == arg1 then
    numberValue6 = TaskVehicleTempAction
    flag5 = flag4
    flag6 = arg2
    flag7 = 4
    flag8 = numberValue5
    numberValue6(flag5, flag6, flag7, flag8)
  elseif "rotateRight" == arg1 then
    numberValue6 = TaskVehicleTempAction
    flag5 = flag4
    flag6 = arg2
    flag7 = 5
    flag8 = numberValue5
    numberValue6(flag5, flag6, flag7, flag8)
  end
end
eventRegistration2 = RegisterNetEvent
textValue = "b7edeadea5"
-- Beginner: this function handles network event "b7edeadea5".

-- === HELPER FUNCTION (decompiler name: eventRegistration3; parameters: arg1, arg2) ===
function eventRegistration3(arg1, arg2)
  local arg3, numberValue5, flag4, numberValue6, flag5
  arg3 = NetworkDoesEntityExistWithNetworkId
  numberValue5 = arg2
  arg3 = arg3(numberValue5)
  if arg3 then
    arg3 = NetworkGetEntityFromNetworkId
    numberValue5 = arg2
    arg3 = arg3(numberValue5)
    if 0 ~= arg3 then
      numberValue5 = NetworkHasControlOfEntity
      flag4 = arg3
      numberValue5 = numberValue5(flag4)
      if numberValue5 then
        numberValue5 = eventRegistration
        flag4 = arg1
        numberValue6 = arg3
        flag5 = true
        -- Beginner: Register a network event handler that the server/other clients can trigger.
        numberValue5(flag4, numberValue6, flag5)
      end
    end
  end
end
eventRegistration2(textValue, eventRegistration3)

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: arg1) ===
function eventRegistration2(arg1)
  local arg2, arg3, numberValue5, flag4
  arg2 = NetworkHasControlOfEntity
  arg3 = numberValue
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = eventRegistration
    arg3 = arg1
    numberValue5 = numberValue
    flag4 = false
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    arg2(arg3, numberValue5, flag4)
  else
    arg2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg2 = arg2()
    arg3 = numberValue7
    arg3 = arg2 - arg3
    numberValue5 = 150
    if not (arg3 > numberValue5) then
      arg3 = workValue2
      if arg3 == arg1 then
        goto flow_label_29
      end
    end
    arg3 = TriggerServerEvent
    numberValue5 = "b7edeadea5"
    flag4 = arg1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b7edeadea5".
    arg3(numberValue5, flag4)
    workValue2 = arg1
    numberValue7 = arg2
  end
  ::flow_label_29::
end

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2, arg3, numberValue5, flag4, numberValue6, flag5
  arg1 = numberValue3
  if -1 == arg1 then
    arg1 = CreateCam
    arg2 = "DEFAULT_SCRIPTED_CAMERA"
    arg3 = true
    -- Beginner: result below is cameraHandle.
    arg1 = arg1(arg2, arg3)
    numberValue3 = arg1
    arg1 = AttachCamToEntity
    arg2 = numberValue3
    arg3 = numberValue
    numberValue5 = -0.3
    flag4 = 0.0
    numberValue6 = 0.5
    flag5 = true
    arg1(arg2, arg3, numberValue5, flag4, numberValue6, flag5)
    arg1 = SetCamActive
    arg2 = numberValue3
    arg3 = true
    arg1(arg2, arg3)
    arg1 = RenderScriptCams
    arg2 = true
    arg3 = true
    numberValue5 = 0
    flag4 = true
    numberValue6 = true
    arg1(arg2, arg3, numberValue5, flag4, numberValue6)
    arg1 = SetTimecycleModifier
    arg2 = "scanline_cam_cheap"
    arg1(arg2)
    arg1 = SetTimecycleModifierStrength
    arg2 = 1.0
    arg1(arg2)
  else
    arg1 = ClearTimecycleModifier
    arg1()
    arg1 = SetSeethrough
    arg2 = false
    arg1(arg2)
    arg1 = RenderScriptCams
    arg2 = false
    arg3 = false
    numberValue5 = 0
    flag4 = false
    numberValue6 = false
    arg1(arg2, arg3, numberValue5, flag4, numberValue6)
    arg1 = SetCamActive
    arg2 = numberValue3
    arg3 = false
    arg1(arg2, arg3)
    arg1 = DestroyCam
    arg2 = numberValue3
    arg3 = false
    arg1(arg2, arg3)
    arg1 = -1
    numberValue3 = arg1
    arg1 = false
    flag3 = arg1
  end
end
eventRegistration3 = RegisterNetEvent
cmgCall = "71c20e82b7"
-- Beginner: this function handles network event "71c20e82b7".

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2
  arg1 = numberValue3
  if -1 ~= arg1 then
    arg1 = textValue
    arg1()
  end
  arg1 = numberValue4
  if -1 ~= arg1 then
    arg1 = SetScaleformMovieAsNoLongerNeeded
    arg2 = numberValue4
    arg1(arg2)
    arg1 = -1
    numberValue4 = arg1
  end
  arg1 = 0
  numberValue = arg1
  arg1 = 0
  numberValue2 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "71c20e82b7".
eventRegistration3(cmgCall, workValue)

-- === HELPER FUNCTION (decompiler name: eventRegistration3; parameters: none) ===
function eventRegistration3()
  local arg1, arg2, arg3, numberValue5, flag4, numberValue6, flag5
  arg1 = numberValue
  if 0 == arg1 then
    return
  end
  arg1 = DoesEntityExist
  arg2 = numberValue
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = numberValue3
    if -1 ~= arg1 then
      arg1 = textValue
      arg1()
    else
      arg1 = NetworkDoesEntityExistWithNetworkId
      arg2 = numberValue2
      arg1 = arg1(arg2)
      if arg1 then
        arg1 = NetworkGetEntityFromNetworkId
        arg2 = numberValue2
        arg1 = arg1(arg2)
        numberValue = arg1
      end
    end
    return
  end
  arg1 = IsControlPressed
  arg2 = 0
  arg3 = 172
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = IsControlPressed
    arg2 = 0
    arg3 = 173
    arg1 = arg1(arg2, arg3)
    if not arg1 then
      arg1 = eventRegistration2
      arg2 = "forward"
      -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "forward".
      arg1(arg2)
    end
  end
  arg1 = IsControlJustReleased
  arg2 = 0
  arg3 = 172
  arg1 = arg1(arg2, arg3)
  if not arg1 then
    arg1 = IsControlJustReleased
    arg2 = 0
    arg3 = 173
    arg1 = arg1(arg2, arg3)
    if not arg1 then
      goto flow_label_56
    end
  end
  arg1 = eventRegistration2
  arg2 = "brake"
  arg1(arg2)
  ::flow_label_56::
  arg1 = IsControlPressed
  arg2 = 0
  arg3 = 173
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = IsControlPressed
    arg2 = 0
    arg3 = 172
    arg1 = arg1(arg2, arg3)
    if not arg1 then
      arg1 = eventRegistration2
      arg2 = "reverse"
      -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "reverse".
      arg1(arg2)
    end
  end
  arg1 = IsControlPressed
  arg2 = 0
  arg3 = 174
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = IsControlPressed
    arg2 = 0
    arg3 = 173
    arg1 = arg1(arg2, arg3)
    if arg1 then
      arg1 = eventRegistration2
      arg2 = "rightReverse"
      arg1(arg2)
    end
  end
  arg1 = IsControlPressed
  arg2 = 0
  arg3 = 175
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = IsControlPressed
    arg2 = 0
    arg3 = 173
    arg1 = arg1(arg2, arg3)
    if arg1 then
      arg1 = eventRegistration2
      arg2 = "rightReverse"
      -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "rightReverse".
      arg1(arg2)
    end
  end
  arg1 = IsControlPressed
  arg2 = 0
  arg3 = 172
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = IsControlPressed
    arg2 = 0
    arg3 = 173
    arg1 = arg1(arg2, arg3)
    if arg1 then
      arg1 = eventRegistration2
      arg2 = "burnout"
      arg1(arg2)
    end
  end
  arg1 = IsControlPressed
  arg2 = 0
  arg3 = 174
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = IsControlPressed
    arg2 = 0
    arg3 = 172
    arg1 = arg1(arg2, arg3)
    if arg1 then
      arg1 = eventRegistration2
      arg2 = "leftForward"
      -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "leftForward".
      arg1(arg2)
    end
  end
  arg1 = IsControlPressed
  arg2 = 0
  arg3 = 175
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = IsControlPressed
    arg2 = 0
    arg3 = 172
    arg1 = arg1(arg2, arg3)
    if arg1 then
      arg1 = eventRegistration2
      arg2 = "rightForward"
      arg1(arg2)
    end
  end
  arg1 = IsControlPressed
  arg2 = 0
  arg3 = 174
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = IsControlPressed
    arg2 = 0
    arg3 = 172
    arg1 = arg1(arg2, arg3)
    if not arg1 then
      arg1 = IsControlPressed
      arg2 = 0
      arg3 = 173
      arg1 = arg1(arg2, arg3)
      if not arg1 then
        arg1 = eventRegistration2
        arg2 = "rotateLeft"
        -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "rotateLeft".
        arg1(arg2)
      end
    end
  end
  arg1 = IsControlPressed
  arg2 = 0
  arg3 = 175
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = IsControlPressed
    arg2 = 0
    arg3 = 172
    arg1 = arg1(arg2, arg3)
    if not arg1 then
      arg1 = IsControlPressed
      arg2 = 0
      arg3 = 173
      arg1 = arg1(arg2, arg3)
      if not arg1 then
        arg1 = eventRegistration2
        arg2 = "rotateRight"
        arg1(arg2)
      end
    end
  end
  arg1 = IsControlJustPressed
  arg2 = 0
  arg3 = 121
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = textValue
    arg1()
  end
  arg1 = numberValue3
  if -1 ~= arg1 then
    arg1 = GetEntityRotation
    arg2 = numberValue
    arg1 = arg1(arg2)
    arg2 = SetCamRot
    arg3 = numberValue3
    numberValue5 = arg1.x
    flag4 = arg1.y
    numberValue6 = arg1.z
    flag5 = 2
    arg2(arg3, numberValue5, flag4, numberValue6, flag5)
    arg2 = IsControlJustPressed
    arg3 = 0
    numberValue5 = 178
    arg2 = arg2(arg3, numberValue5)
    if arg2 then
      arg2 = flag3
      arg2 = not arg2
      flag3 = arg2
      arg2 = flag3
      if arg2 then
        arg2 = SetSeethrough
        arg3 = true
        arg2(arg3)
      else
        arg2 = SetSeethrough
        arg3 = false
        arg2(arg3)
      end
    end
  end
  arg1 = DrawScaleformMovieFullscreen
  arg2 = numberValue4
  arg3 = 255
  numberValue5 = 255
  flag4 = 255
  numberValue6 = 255
  flag5 = 0
  arg1(arg2, arg3, numberValue5, flag4, numberValue6, flag5)
end
cmgCall = CMG
cmgCall = cmgCall.createThreadOnTick
workValue = eventRegistration3
textValue2 = "Robot Controls"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall(workValue, textValue2)
