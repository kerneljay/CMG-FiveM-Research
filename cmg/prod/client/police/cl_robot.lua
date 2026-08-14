--[[
    LEVEL 1 BEGINNER GUIDE - Police Robot

    Spawns and controls the small police robot vehicle.

    Events kept unchanged:
      * b1b3d23e07 - local player spawns/registers a robot
      * b7edeadea5 - remote owner should apply a robot drive action
      * 71c20e82b7 - cleanup/reset robot state
]]

local robotVehicle = 0
local robotNetworkId = 0
local robotCamera = -1
local instructionScaleform = -1
local thermalVisionEnabled = false
local lastForwardedAction = nil
local lastForwardedActionAt = 0

function CMG.isUsingPoliceRobot()
  return robotVehicle ~= 0
end

local function addScaleformButton(button)
  ScaleformMovieMethodAddParamPlayerNameString(button)
end

local function addScaleformText(text)
  BeginTextCommandScaleformString("STRING")
  AddTextComponentSubstringKeyboardDisplay(text)
  EndTextCommandScaleformString()
end

local function addInstructionButton(slot, control, label)
  BeginScaleformMovieMethod(instructionScaleform, "SET_DATA_SLOT")
  ScaleformMovieMethodAddParamInt(slot)
  addScaleformButton(GetControlInstructionalButton(0, control, true))
  addScaleformText(label)
  EndScaleformMovieMethod()
end

local function createInstructionScaleform()
  instructionScaleform = RequestScaleformMovie("instructional_buttons")

  while not HasScaleformMovieLoaded(instructionScaleform) do
    Citizen.Wait(0)
  end

  BeginScaleformMovieMethod(instructionScaleform, "CLEAR_ALL")
  EndScaleformMovieMethod()

  BeginScaleformMovieMethod(instructionScaleform, "SET_CLEAR_SPACE")
  ScaleformMovieMethodAddParamInt(200)
  EndScaleformMovieMethod()

  addInstructionButton(1, 121, "Camera Stream")
  addInstructionButton(2, 178, "Thermal Vision")
  addInstructionButton(3, 175, "Right")
  addInstructionButton(4, 174, "Left")
  addInstructionButton(5, 173, "Backwards")
  addInstructionButton(6, 172, "Forward")

  BeginScaleformMovieMethod(instructionScaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
  EndScaleformMovieMethod()

  BeginScaleformMovieMethod(instructionScaleform, "SET_BACKGROUND_COLOUR")
  ScaleformMovieMethodAddParamInt(0)
  ScaleformMovieMethodAddParamInt(0)
  ScaleformMovieMethodAddParamInt(0)
  ScaleformMovieMethodAddParamInt(80)
  EndScaleformMovieMethod()
end

RegisterNetEvent("b1b3d23e07", function()
  local playerPed = PlayerPedId()
  local spawnCoords = GetEntityCoords(playerPed, true) + GetEntityForwardVector(playerPed) * 2.0
  local spawnHeading = GetEntityHeading(playerPed)

  CMG.requestEntitySpawn("policerobot", spawnCoords)
  robotVehicle = CMG.spawnVehicle(1376629136, spawnCoords.x, spawnCoords.y, spawnCoords.z, spawnHeading, false, true, true)

  SetVehicleDoorsLocked(robotVehicle, 2)
  SetVehicleDoorsLockedForAllPlayers(robotVehicle, true)

  CMG.loadModel(-1613485779)
  CMG.requestEntitySpawn("policerobot_ped", spawnCoords)

  local robotDriver = CreatePedInsideVehicle(robotVehicle, 0, -1613485779, -1, true, true)
  SetModelAsNoLongerNeeded(-1613485779)
  SetEntityCanBeDamaged(robotDriver, false)
  SetEntityInvincible(robotDriver, true)
  SetEntityVisible(robotDriver, false, false)
  FreezeEntityPosition(robotDriver, true)
  SetPedAlertness(robotDriver, 0.0)
  SetBlockingOfNonTemporaryEvents(robotDriver, true)

  createInstructionScaleform()

  while not NetworkGetEntityIsNetworked(robotVehicle) or NetworkGetNetworkIdFromEntity(robotVehicle) == 0 do
    Citizen.Wait(0)
  end

  Citizen.Wait(1000)

  robotNetworkId = NetworkGetNetworkIdFromEntity(robotVehicle)
  TriggerServerEvent("b1b3d23e07", robotNetworkId)
end)

local function applyRobotVehicleAction(action, vehicle, fromRemote)
  local duration = fromRemote and 200 or 1
  local driverPed = GetPedInVehicleSeat(vehicle, -1)

  if action == "forward" then
    TaskVehicleTempAction(driverPed, vehicle, 9, duration)
  elseif action == "brake" then
    TaskVehicleTempAction(driverPed, vehicle, 6, 2500)
  elseif action == "reverse" then
    TaskVehicleTempAction(driverPed, vehicle, 22, duration)
  elseif action == "rightReverse" then
    TaskVehicleTempAction(driverPed, vehicle, 13, duration)
  elseif action == "leftReverse" then
    TaskVehicleTempAction(driverPed, vehicle, 14, duration)
  elseif action == "burnout" then
    TaskVehicleTempAction(driverPed, vehicle, 30, fromRemote and 200 or 100)
  elseif action == "leftForward" then
    TaskVehicleTempAction(driverPed, vehicle, 7, duration)
  elseif action == "rightForward" then
    TaskVehicleTempAction(driverPed, vehicle, 8, duration)
  elseif action == "rotateLeft" then
    TaskVehicleTempAction(driverPed, vehicle, 4, duration)
  elseif action == "rotateRight" then
    TaskVehicleTempAction(driverPed, vehicle, 5, duration)
  end
end

RegisterNetEvent("b7edeadea5", function(action, networkId)
  if not NetworkDoesEntityExistWithNetworkId(networkId) then
    return
  end

  local vehicle = NetworkGetEntityFromNetworkId(networkId)

  if vehicle ~= 0 and NetworkHasControlOfEntity(vehicle) then
    applyRobotVehicleAction(action, vehicle, true)
  end
end)

local function sendOrApplyRobotAction(action)
  if NetworkHasControlOfEntity(robotVehicle) then
    applyRobotVehicleAction(action, robotVehicle, false)
    return
  end

  local now = GetGameTimer()
  if now - lastForwardedActionAt <= 150 and lastForwardedAction == action then
    return
  end

  TriggerServerEvent("b7edeadea5", action)
  lastForwardedAction = action
  lastForwardedActionAt = now
end

local function toggleRobotCamera()
  if robotCamera == -1 then
    robotCamera = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
    AttachCamToEntity(robotCamera, robotVehicle, -0.3, 0.0, 0.5, true)
    SetCamActive(robotCamera, true)
    RenderScriptCams(true, true, 0, true, true)
    SetTimecycleModifier("scanline_cam_cheap")
    SetTimecycleModifierStrength(1.0)
  else
    ClearTimecycleModifier()
    SetSeethrough(false)
    RenderScriptCams(false, false, 0, false, false)
    SetCamActive(robotCamera, false)
    DestroyCam(robotCamera, false)
    robotCamera = -1
    thermalVisionEnabled = false
  end
end

RegisterNetEvent("71c20e82b7", function()
  if robotCamera ~= -1 then
    toggleRobotCamera()
  end

  if instructionScaleform ~= -1 then
    SetScaleformMovieAsNoLongerNeeded(instructionScaleform)
    instructionScaleform = -1
  end

  robotVehicle = 0
  robotNetworkId = 0
end)

local function refreshRobotVehicleFromNetworkId()
  if NetworkDoesEntityExistWithNetworkId(robotNetworkId) then
    robotVehicle = NetworkGetEntityFromNetworkId(robotNetworkId)
  end
end

local function updateRobotControls()
  if robotVehicle == 0 then
    return
  end

  if not DoesEntityExist(robotVehicle) then
    if robotCamera ~= -1 then
      toggleRobotCamera()
    else
      refreshRobotVehicleFromNetworkId()
    end

    return
  end

  local forwardPressed = IsControlPressed(0, 172)
  local reversePressed = IsControlPressed(0, 173)
  local leftPressed = IsControlPressed(0, 174)
  local rightPressed = IsControlPressed(0, 175)

  if forwardPressed and not reversePressed then
    sendOrApplyRobotAction("forward")
  end

  if IsControlJustReleased(0, 172) or IsControlJustReleased(0, 173) then
    sendOrApplyRobotAction("brake")
  end

  if reversePressed and not forwardPressed then
    sendOrApplyRobotAction("reverse")
  end

  if leftPressed and reversePressed then
    sendOrApplyRobotAction("leftReverse")
  end

  if rightPressed and reversePressed then
    sendOrApplyRobotAction("rightReverse")
  end

  if forwardPressed and reversePressed then
    sendOrApplyRobotAction("burnout")
  end

  if leftPressed and forwardPressed then
    sendOrApplyRobotAction("leftForward")
  end

  if rightPressed and forwardPressed then
    sendOrApplyRobotAction("rightForward")
  end

  if leftPressed and not forwardPressed and not reversePressed then
    sendOrApplyRobotAction("rotateLeft")
  end

  if rightPressed and not forwardPressed and not reversePressed then
    sendOrApplyRobotAction("rotateRight")
  end

  if IsControlJustPressed(0, 121) then
    toggleRobotCamera()
  end

  if robotCamera ~= -1 then
    local vehicleRotation = GetEntityRotation(robotVehicle)
    SetCamRot(robotCamera, vehicleRotation.x, vehicleRotation.y, vehicleRotation.z, 2)

    if IsControlJustPressed(0, 178) then
      thermalVisionEnabled = not thermalVisionEnabled
      SetSeethrough(thermalVisionEnabled)
    end
  end

  DrawScaleformMovieFullscreen(instructionScaleform, 255, 255, 255, 255, 0)
end

CMG.createThreadOnTick(updateRobotControls, "Robot Controls")
